local spawnedMushrooms = 0
local mushroomPlants = {}
local isPickingUp, inMushroomField = false, false
local QBCore = exports['qb-core']:GetCoreObject()

local function ValidateMushroomCoord(mushroomCoord)
	local validate = true
	if spawnedMushrooms > 0 then
		for k, v in pairs(mushroomPlants) do
			if #(mushroomCoord - GetEntityCoords(v)) < 5 then
				validate = false
			end
		end
		if not inMushroomField then
			validate = false
		end
	end
	return validate
end

local function GetCoordZMushroom(x, y)
	local groundCheckHeights = { 50, 51.0, 52.0, 53.0, 54.0, 55.0, 56.0, 57.0, 58.0, 59.0, 60.0 }

	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)

		if foundGround then
			return z
		end
	end

	return 53.85
end

local function GenerateMushroomCoords()
	while true do
		Wait(1)
		
		local mushroomCoordX, mushroomCoordY
		
		math.randomseed(GetGameTimer())
		local modX = math.random(-30, 30)

		Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-30, 30)

		mushroomCoordX = Config.CircleZones.MushroomField.coords.x + modX
		mushroomCoordY = Config.CircleZones.MushroomField.coords.y + modY

		local coordZ = GetCoordZMushroom(mushroomCoordX, mushroomCoordY)
		local coord = vector3(mushroomCoordX, mushroomCoordY, coordZ)

		if ValidateMushroomCoord(coord) then
			return coord
		end
	end
end

local function SpawnmushroomPlants()
	while spawnedMushrooms < 15 do
		Wait(0)
		local mushroomCoords = GenerateMushroomCoords()
		RequestModel(`prop_stoneshroom1`)
		while not HasModelLoaded(`prop_stoneshroom1`) do
			Wait(100)
		end
		local obj = CreateObject(`prop_stoneshroom1`, mushroomCoords.x, mushroomCoords.y, mushroomCoords.z, false, true, false)
		PlaceObjectOnGroundProperly(obj)
		FreezeEntityPosition(obj, true)
		table.insert(mushroomPlants, obj)
		spawnedMushrooms += 1
	end
end

RegisterNetEvent("ps-drugprocessing:pickMushroom", function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local nearbyObject, nearbyID

	for i=1, #mushroomPlants, 1 do
		if GetDistanceBetweenCoords(coords, GetEntityCoords(mushroomPlants[i]), false) < 2 then
			nearbyObject, nearbyID = mushroomPlants[i], i
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
				table.remove(mushroomPlants, nearbyID)
				spawnedMushrooms -= 1
				TriggerServerEvent('ps-drugprocessing:pickedUpMushroom')
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
		for k, v in pairs(mushroomPlants) do
			SetEntityAsMissionEntity(v, false, true)
			DeleteObject(v)
		end
	end
end)

CreateThread(function()
	local mushroomZone = CircleZone:Create(Config.CircleZones.MushroomField.coords, 75.0, {
		name = "ps-mushroomzone",
		debugPoly = false
	})
	mushroomZone:onPlayerInOut(function(isPointInside, point, zone)
        if isPointInside then
            inMushroomField = true
            SpawnmushroomPlants()
        else
            inMushroomField = false
        end
    end)
end)
