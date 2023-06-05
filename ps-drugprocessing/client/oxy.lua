local spawnedOxxy = 0
local oxxyPlants = {}
local isPickingUp, inOxxyField = false, false
local QBCore = exports['qb-core']:GetCoreObject()

local function ValidateOxxyCoord(oxxyCoord)
	local validate = true
	if spawnedOxxy > 0 then
		for k, v in pairs(oxxyPlants) do
			if #(oxxyCoord - GetEntityCoords(v)) < 5 then
				validate = false
			end
		end
		if not inOxxyField then
			validate = false
		end
	end
	return validate
end

local function GetCoordZOxxy(x, y)
	local groundCheckHeights = { 50, 51.0, 52.0, 53.0, 54.0, 55.0, 56.0, 57.0, 58.0, 59.0, 60.0 }

	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)

		if foundGround then
			return z
		end
	end

	return 53.85
end

local function GenerateOxxyCoords()
	while true do
		Wait(1)
		
		local oxxyCoordX, oxxyCoordY
		
		math.randomseed(GetGameTimer())
		local modX = math.random(-30, 30)

		Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-30, 30)

		oxxyCoordX = Config.CircleZones.OxxyField.coords.x + modX
		oxxyCoordY = Config.CircleZones.OxxyField.coords.y + modY

		local coordZ = GetCoordZOxxy(oxxyCoordX, oxxyCoordY)
		local coord = vector3(oxxyCoordX, oxxyCoordY, coordZ)

		if ValidateOxxyCoord(coord) then
			return coord
		end
	end
end

local function SpawnoxxyPlants()
	while spawnedOxxy < 15 do
		Wait(0)
		local oxxyCoords = GenerateOxxyCoords()
		RequestModel(`poppy_plant`)
		while not HasModelLoaded(`poppy_plant`) do
			Wait(100)
		end
		local obj = CreateObject(`poppy_plant`, oxxyCoords.x, oxxyCoords.y, oxxyCoords.z, false, true, false)
		PlaceObjectOnGroundProperly(obj)
		FreezeEntityPosition(obj, true)
		table.insert(oxxyPlants, obj)
		spawnedOxxy += 1
	end
end

RegisterNetEvent("ps-drugprocessing:pickOxxy", function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local nearbyObject, nearbyID

	for i=1, #oxxyPlants, 1 do
		if GetDistanceBetweenCoords(coords, GetEntityCoords(oxxyPlants[i]), false) < 2 then
			nearbyObject, nearbyID = oxxyPlants[i], i
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
				table.remove(oxxyPlants, nearbyID)
				spawnedOxxy -= 1
				TriggerServerEvent('ps-drugprocessing:pickedUpPoppyOxxy')
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
		for k, v in pairs(oxxyPlants) do
			SetEntityAsMissionEntity(v, false, true)
			DeleteObject(v)
		end
	end
end)

CreateThread(function()
	local oxxyZone = CircleZone:Create(Config.CircleZones.OxxyField.coords, 130.0, {
		name = "ps-oxxyzone",
		debugPoly = false
	})
	oxxyZone:onPlayerInOut(function(isPointInside, point, zone)
        if isPointInside then
            inOxxyField = true
            SpawnoxxyPlants()
        else
            inOxxyField = false
        end
    end)
end)
