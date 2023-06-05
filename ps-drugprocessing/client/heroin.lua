local QBCore = exports['qb-core']:GetCoreObject()
local spawnedPoppys = 0
local PoppyPlants = {}
local isPickingUp, inHeroinField = false, false

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

local function EnterHWarehouse()
    local ped = PlayerPedId()
    OpenDoorAnimation()
    HWarehouse = true
    Wait(500)
    DoScreenFadeOut(250)
    Wait(250)
    SetEntityCoords(ped, Config.HeroinLab["exit"].coords.x, Config.HeroinLab["exit"].coords.y, Config.HeroinLab["exit"].coords.z - 0.98)
    SetEntityHeading(ped, Config.HeroinLab["exit"].coords.w)
    Wait(1000)
    DoScreenFadeIn(250)
end

local function ExitHWarehouse()
    local ped = PlayerPedId()
    OpenDoorAnimation()
    HWarehouse = true
    Wait(500)
    DoScreenFadeOut(250)
    Wait(250)
    SetEntityCoords(ped, Config.HeroinLab["enter"].coords.x, Config.HeroinLab["enter"].coords.y, Config.HeroinLab["enter"].coords.z - 0.98)
    SetEntityHeading(ped, Config.HeroinLab["enter"].coords.w)
    Wait(1000)
    DoScreenFadeIn(250)
	HWarehouse = false
end


local function ValidateHeroinCoord(plantCoord)
	local validate = true
	if spawnedPoppys > 0 then
		for k, v in pairs(PoppyPlants) do
			if #(plantCoord - GetEntityCoords(v)) < 5 then
				validate = false
			end
		end
		if not inHeroinField then
			validate = false
		end
	end
	return validate
end

local function GetCoordZHeroin(x, y)
	local groundCheckHeights = { 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 50.0, 75.0, 100.0, 110.0, 125.0 }

	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)

		if foundGround then
			return z
		end
	end

	return 12.64
end

local function GenerateHeroinCoords()
	while true do
		Wait(1)

		local heroinCoordX, heroinCoordY

		math.randomseed(GetGameTimer())
		local modX = math.random(-60, 60)

		Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-60, 60)

		heroinCoordX = Config.CircleZones.HeroinField.coords.x + modX
		heroinCoordY = Config.CircleZones.HeroinField.coords.y + modY

		local coordZ = GetCoordZHeroin(heroinCoordX, heroinCoordY)
		local coord = vector3(heroinCoordX, heroinCoordY, coordZ)

		if ValidateHeroinCoord(coord) then
			return coord
		end
	end
end

local function SpawnPoppyPlants()
	while spawnedPoppys < 20 do
		Wait(0)
		local heroinCoords = GenerateHeroinCoords()
		RequestModel(`poppy_resin_plant`)
		while not HasModelLoaded(`poppy_resin_plant`) do
			Wait(100)
		end
		local obj = CreateObject(`poppy_resin_plant`, heroinCoords.x, heroinCoords.y, heroinCoords.z, false, true, false)
		PlaceObjectOnGroundProperly(obj)
		FreezeEntityPosition(obj, true)
		table.insert(PoppyPlants, obj)
		spawnedPoppys += 1
	end
end

RegisterNetEvent('ps-drugprocessing:EnterHWarehouse', function()
	local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
	local hasitem = QBCore.Functions.HasItem(Config.HeroinKey)
    local dist = #(pos - vector3(Config.HeroinLab["enter"].coords.x, Config.HeroinLab["enter"].coords.y, Config.HeroinLab["enter"].coords.z))
    if dist < 2 and hasitem then
		EnterHWarehouse()
		else
		QBCore.Functions.Notify(Lang:t("error.no_key"))
	end
end)

RegisterNetEvent('ps-drugprocessing:ExitHWarehouse', function()
	local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
    local dist = #(pos - vector3(Config.HeroinLab["exit"].coords.x, Config.HeroinLab["exit"].coords.y, Config.HeroinLab["exit"].coords.z))
    if dist < 2 then
		ExitHWarehouse()
	end
end)

RegisterNetEvent("ps-drugprocessing:pickHeroin", function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local nearbyObject, nearbyID

	for i=1, #PoppyPlants, 1 do
		if GetDistanceBetweenCoords(coords, GetEntityCoords(PoppyPlants[i]), false) < 2 then
			nearbyObject, nearbyID = PoppyPlants[i], i
		end
	end

	if nearbyObject and IsPedOnFoot(playerPed) then
		isPickingUp = true
		TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)
		QBCore.Functions.Progressbar("search_register", Lang:t("progressbar.collecting"), 10000, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
			ClearPedTasks(playerPed)
			SetEntityAsMissionEntity(nearbyObject, false, true)
			DeleteObject(nearbyObject)

			table.remove(PoppyPlants, nearbyID)
			spawnedPoppys -= 1

			TriggerServerEvent('ps-drugprocessing:pickedUpPoppy')
			isPickingUp = false

		end, function()
			ClearPedTasks(playerPed)
			isPickingUp = false
		end)
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(PoppyPlants) do
			SetEntityAsMissionEntity(v, false, true)
			DeleteObject(v)
		end
	end
end)

CreateThread(function()
	local heroinZone = CircleZone:Create(Config.CircleZones.HeroinField.coords, 100.0, {
		name = "ps-heroinzone",
		debugPoly = false
	})
	heroinZone:onPlayerInOut(function(isPointInside, point, zone)
        if isPointInside then
            inHeroinField = true
            SpawnPoppyPlants()
        else
            inHeroinField = false
        end
    end)
end)
