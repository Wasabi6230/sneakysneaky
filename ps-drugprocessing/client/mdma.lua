local spawnedPMK = 0
local PMKbox = {}
local isPickingUp, inPMKField = false, false
local QBCore = exports['qb-core']:GetCoreObject()

local function ValidatePMKCoord(PMKCoord)
	local validate = true
	if spawnedPMK > 0 then
		for k, v in pairs(PMKbox) do
			if #(PMKCoord - GetEntityCoords(v)) < 5 then
				validate = false
			end
		end
		if not inPMKField then
			validate = false
		end
	end
	return validate
end

local function GetCoordZPMK(x, y)
	local groundCheckHeights = { 50, 51.0, 52.0, 53.0, 54.0, 55.0, 56.0, 57.0, 58.0, 59.0, 60.0 }

	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)

		if foundGround then
			return z
		end
	end

	return 53.85
end

local function GeneratePMKCoords()
	while true do
		Wait(1)
		
		local PMKCoordX, PMKCoordY
		
		math.randomseed(GetGameTimer())
		local modX = math.random(-30, 30)

		Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-30, 30)

		PMKCoordX = Config.CircleZones.PMKField.coords.x + modX
		PMKCoordY = Config.CircleZones.PMKField.coords.y + modY

		local coordZ = GetCoordZPMK(PMKCoordX, PMKCoordY)
		local coord = vector3(PMKCoordX, PMKCoordY, coordZ)

		if ValidatePMKCoord(coord) then
			return coord
		end
	end
end

local function SpawnPMKbox()
	while spawnedPMK < 15 do
		Wait(0)
		local PMKCoords = GeneratePMKCoords()
		RequestModel(`sassafras_plant`)
		while not HasModelLoaded(`sassafras_plant`) do
			Wait(100)
		end
		local obj = CreateObject(`sassafras_plant`, PMKCoords.x, PMKCoords.y, PMKCoords.z, false, true, false)
		PlaceObjectOnGroundProperly(obj)
		FreezeEntityPosition(obj, true)
		table.insert(PMKbox, obj)
		spawnedPMK += 1
	end
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(PMKbox) do
			SetEntityAsMissionEntity(v, false, true)
			DeleteObject(v)
		end
	end
end)

RegisterNetEvent("ps-drugprocessing:pickPMK", function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local nearbyObject, nearbyID

	for i=1, #PMKbox, 1 do
		if GetDistanceBetweenCoords(coords, GetEntityCoords(PMKbox[i]), false) < 2 then
			nearbyObject, nearbyID = PMKbox[i], i
		end
	end

	if nearbyObject and IsPedOnFoot(playerPed) then
		if not isPickingUp then
			isPickingUp = true
			TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)
			QBCore.Functions.Progressbar("search_register", Lang:t("progressbar.collecting"), math.random(8000, 10000), false, true, {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() -- Done
				ClearPedTasks(PlayerPedId())
				SetEntityAsMissionEntity(nearbyObject, false, true)
				DeleteObject(nearbyObject)
				table.remove(PMKbox, nearbyID)
				spawnedPMK -= 1
				TriggerServerEvent('ps-drugprocessing:pickedUpPMK')
				isPickingUp = false
			end, function()
				ClearPedTasks(PlayerPedId())
				isPickingUp = false
			end)
		end
	end
end)

CreateThread(function()
	local PMKZone = CircleZone:Create(Config.CircleZones.PMKField.coords, 90.0, {
		name = "ps-pmkzone",
		debugPoly = false
	})
	PMKZone:onPlayerInOut(function(isPointInside, point, zone)
        if isPointInside then
            inPMKField = true
            SpawnPMKbox()
        else
            inPMKField = false
        end
    end)
end)
