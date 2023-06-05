local spawnedRye = 0
local ryePlants = {}
local isPickingUp, inRyeField = false, false
local QBCore = exports['qb-core']:GetCoreObject()

local function ValidateRyeCoord(plantCoord)
	local validate = true
	if spawnedRye > 0 then
		for k, v in pairs(ryePlants) do
			if #(plantCoord - GetEntityCoords(v)) < 5 then
				validate = false
			end
		end
		if not inRyeField then
			validate = false
		end
	end
	return validate
end

local function GetCoordZRye(x, y)
	local groundCheckHeights = { 50, 51.0, 52.0, 53.0, 54.0, 55.0, 56.0, 57.0, 58.0, 59.0, 60.0 }

	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)

		if foundGround then
			return z
		end
	end

	return 53.85
end

local function GenerateRyeCoords()
	while true do
		Wait(1)

		local ryeCoordX, ryeCoordY

		math.randomseed(GetGameTimer())
		local modX = math.random(-20, 20)

		Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-20, 20)

		ryeCoordX = Config.CircleZones.RyeField.coords.x + modX
		ryeCoordY = Config.CircleZones.RyeField.coords.y + modY

		local coordZ = GetCoordZRye(ryeCoordX, ryeCoordY)
		local coord = vector3(ryeCoordX, ryeCoordY, coordZ)

		if ValidateRyeCoord(coord) then
			return coord
		end
	end
end

local function SpawnRyePlants()
	while spawnedRye < 25 do
		Wait(0)
		local ryeCoords = GenerateRyeCoords()
		RequestModel(`prop_rye_plant_01`)
		while not HasModelLoaded(`prop_rye_plant_01`) do
			Wait(100)
		end
		local obj = CreateObject(`prop_rye_plant_01`, ryeCoords.x, ryeCoords.y, ryeCoords.z, false, true, false)
		PlaceObjectOnGroundProperly(obj)
		FreezeEntityPosition(obj, true)
		table.insert(ryePlants, obj)
		spawnedRye += 1
	end
end

RegisterNetEvent("ps-drugprocessing:pickRye", function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local nearbyObject, nearbyID

	for i=1, #ryePlants, 1 do
		if GetDistanceBetweenCoords(coords, GetEntityCoords(ryePlants[i]), false) < 2 then
			nearbyObject, nearbyID = ryePlants[i], i
		end
	end

	if nearbyObject and IsPedOnFoot(playerPed) then
		if not isPickingUp then
			isPickingUp = true
			TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)
			QBCore.Functions.Progressbar("search_register", Lang:t("progressbar.collecting"), 10000, false, true, {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() -- Done
				ClearPedTasks(PlayerPedId())
				SetEntityAsMissionEntity(nearbyObject, false, true)
				DeleteObject(nearbyObject)
				table.remove(ryePlants, nearbyID)
				spawnedRye -= 1
				TriggerServerEvent('ps-drugprocessing:pickedUpRye')
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
		for k, v in pairs(ryePlants) do
			SetEntityAsMissionEntity(v, false, true)
			DeleteObject(v)
		end
	end
end)

CreateThread(function()
	local ryeZone = CircleZone:Create(Config.CircleZones.RyeField.coords, 50.0, {
		name = "ps-ryezone",
		debugPoly = false
	})
	ryeZone:onPlayerInOut(function(isPointInside, point, zone)
        if isPointInside then
            inRyeField = true
            SpawnRyePlants()
        else
            inRyeField = false
        end
    end)
end)
