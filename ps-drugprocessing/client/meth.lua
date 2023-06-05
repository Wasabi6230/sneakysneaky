local QBCore = exports['qb-core']:GetCoreObject()
local spawnedAcid = 0
local acidBarrels = {}
local isPickingUp, inAcidField = false, false
local Methlab = false

local function LoadAnimationDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(1)
    end
end

local function OpenDoorAnimation()
    local ped = PlayerPedId()
    LoadAnimationDict("anim@heists@keycard@") 
    TaskPlayAnim(ped, "anim@heists@keycard@", "exit", 5.0, 1.0, -1, 16, 0, 0, 0, 0)
    Wait(400)
    ClearPedTasks(ped)
end

local function EnterMethlab()
    local ped = PlayerPedId()
    OpenDoorAnimation()
    Methlab = true
    Wait(500)
    DoScreenFadeOut(250)
    Wait(250)
    SetEntityCoords(ped, Config.MethLab["exit"].coords.x, Config.MethLab["exit"].coords.y, Config.MethLab["exit"].coords.z - 0.98)
    SetEntityHeading(ped, Config.MethLab["exit"].coords.w)
    Wait(1000)
    DoScreenFadeIn(250)
end

local function ExitMethlab()
    local ped = PlayerPedId()
    local dict = "mp_heists@keypad@"
    local keypad = {coords = {x = 969.04, y = -146.17, z = -46.4, h = 94.5, r = 1.0}}
    SetEntityCoords(ped, keypad.coords.x, keypad.coords.y, keypad.coords.z - 0.98)
    SetEntityHeading(ped, keypad.coords.h)
	Methlab = true
    LoadAnimationDict(dict) 
    TaskPlayAnim(ped, "mp_heists@keypad@", "idle_a", 8.0, 8.0, -1, 0, 0, false, false, false)
    Wait(2500)
    TaskPlayAnim(ped, "mp_heists@keypad@", "exit", 2.0, 2.0, -1, 0, 0, false, false, false)
    Wait(1000)
    DoScreenFadeOut(250)
    Wait(250)
    SetEntityCoords(ped, Config.MethLab["enter"].coords.x, Config.MethLab["enter"].coords.y, Config.MethLab["enter"].coords.z - 0.98)
    SetEntityHeading(ped, Config.MethLab["enter"].coords.w)
    Methlab = false
    Wait(1000)
    DoScreenFadeIn(250)
end

local function ValidateAcidCoord(acidCoord)
	local validate = true
	if spawnedAcid > 0 then
		for k, v in pairs(acidBarrels) do
			if #(acidCoord - GetEntityCoords(v)) < 5 then
				validate = false
			end
		end
		if not inAcidField then
			validate = false
		end
	end
	return validate
end

local function GetCoordZAcid(x, y)
	local groundCheckHeights = { 50, 51.0, 52.0, 53.0, 54.0, 55.0, 56.0, 57.0, 58.0, 59.0, 60.0 }

	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)

		if foundGround then
			return z
		end
	end

	return 53.85
end

local function GenerateAcidCoords()
	while true do
		Wait(1)
		
		local acidCoordX, acidCoordY
		
		math.randomseed(GetGameTimer())
		local modX = math.random(-20, 20)

		Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-10, 10)

		acidCoordX = Config.CircleZones.AcidFarm.coords.x + modX
		acidCoordY = Config.CircleZones.AcidFarm.coords.y + modY

		local coordZ = GetCoordZAcid(acidCoordX, acidCoordY)
		local coord = vector3(acidCoordX, acidCoordY, coordZ)

		if ValidateAcidCoord(coord) then
			return coord
		end
	end
end

local function SpawnacidBarrels()
	while spawnedAcid < 15 do
		Wait(0)
		local acidCoords = GenerateAcidCoords()
		RequestModel(`meth_pseudoephedrine`)
		while not HasModelLoaded(`meth_pseudoephedrine`) do
			Wait(100)
		end
		local obj = CreateObject(`meth_pseudoephedrine`, acidCoords.x, acidCoords.y, acidCoords.z, false, true, false)
		PlaceObjectOnGroundProperly(obj)
		FreezeEntityPosition(obj, true)
		table.insert(acidBarrels, obj)
		spawnedAcid += 1
	end
end

RegisterNetEvent("ps-drugprocessing:pickAcid", function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local nearbyObject, nearbyID

	for i=1, #acidBarrels, 1 do
		if GetDistanceBetweenCoords(coords, GetEntityCoords(acidBarrels[i]), false) < 2 then
			nearbyObject, nearbyID = acidBarrels[i], i
		end
	end

	if nearbyObject and IsPedOnFoot(playerPed) then
		if not isPickingUp then
			isPickingUp = true
			TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, false)
			QBCore.Functions.Progressbar("search_register", Lang:t("progressbar.collecting"), math.random(8000, 10000), false, true, {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() -- Done
				ClearPedTasks(PlayerPedId())
				SetEntityAsMissionEntity(nearbyObject, false, true)
				DeleteObject(nearbyObject)
				table.remove(acidBarrels, nearbyID)
				spawnedAcid -= 1
				TriggerServerEvent('ps-drugprocessing:pickedUpAcid')
				isPickingUp = false
			end, function()
				ClearPedTasks(PlayerPedId())
				isPickingUp = false
			end)
		end
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(acidBarrels) do
			SetEntityAsMissionEntity(v, false, true)
			DeleteObject(v)
		end
	end
end)

CreateThread(function()
	local acidZone = CircleZone:Create(Config.CircleZones.AcidFarm.coords, 80.0, {
		name = "ps-acidzone",
		debugPoly = false
	})
	acidZone:onPlayerInOut(function(isPointInside, point, zone)
        if isPointInside then
            inAcidField = true
            SpawnacidBarrels()
        else
            inAcidField = false
        end
    end)
end)

RegisterNetEvent('ps-drugprocessing:EnterMethlab', function()
	local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
	local hasitem = QBCore.Functions.HasItem(Config.MethKey)
    local dist = #(pos - vector3(Config.MethLab["enter"].coords.x, Config.MethLab["enter"].coords.y, Config.MethLab["enter"].coords.z))
    if dist < 2 and hasitem then
		EnterMethlab()
		else
		QBCore.Functions.Notify(Lang:t("error.no_key"))
	end
end)

RegisterNetEvent('ps-drugprocessing:ExitMethlab', function()
	local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
    local dist = #(pos - vector3(Config.CokeLab["enter"].coords.x, Config.CokeLab["enter"].coords.y, Config.CokeLab["enter"].coords.z))
    if dist < 2 then
		ExitMethlab()
	end
end)

RegisterNetEvent('ps-drugprocessing:ExitLab', function()
	local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
    local dist = #(pos - vector3(Config.MethLab["exit"].coords.x, Config.MethLab["exit"].coords.y, Config.MethLab["exit"].coords.z))
    if dist < 2 then
		ExitMethlab()
	end
end)
