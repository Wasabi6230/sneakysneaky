
--KRP CUSTOM START (turns off console aim assist blocker if using qb-doorlock etc, gotta be in dev mode). other code is in qb-hud client.lua
-- CreateThread(function()
    -- while true do
        -- Wait(4)
        -- if IsPedArmed(PlayerPedId(), 2) and IsPedArmed(PlayerPedId(), 4) then
            -- SetPlayerLockon(PlayerId(), false)
        -- end
    -- end
-- end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        SetPlayerTargetingMode(3) -- or Citizen Native : Citizen.InvokeNative(0xD66A941F401E7302, 3)
    end
end)
-- KRP CUSTOM END

CreateThread(function()
	while true do
		for _, sctyp in next, Config.BlacklistedScenarios['TYPES'] do
			SetScenarioTypeEnabled(sctyp, false)
		end
		for _, scgrp in next, Config.BlacklistedScenarios['GROUPS'] do
			SetScenarioGroupEnabled(scgrp, false)
		end
		Wait(10000)
	end
end)

AddEventHandler("populationPedCreating", function(x, y, z)
	Wait(500)	-- Give the entity some time to be created
	local _, handle = GetClosestPed(x, y, z, 1.0) -- Get the entity handle
	SetPedDropsWeaponsWhenDead(handle, false)
end)

CreateThread(function() -- all these should only need to be called once
	if Config.DisableAmbience then
		StartAudioScene("CHARACTER_CHANGE_IN_SKY_SCENE")
	end
	SetAudioFlag("PoliceScannerDisabled", true)
	SetGarbageTrucks(false)
	SetCreateRandomCops(false)
	SetCreateRandomCopsNotOnScenarios(false)
	SetCreateRandomCopsOnScenarios(false)
	DistantCopCarSirens(false)
	RemoveVehiclesFromGeneratorsInArea(335.2616 - 300.0, -1432.455 - 300.0, 46.51 - 300.0, 335.2616 + 300.0, -1432.455 + 300.0, 46.51 + 300.0) -- central los santos medical center
	RemoveVehiclesFromGeneratorsInArea(441.8465 - 500.0, -987.99 - 500.0, 30.68 -500.0, 441.8465 + 500.0, -987.99 + 500.0, 30.68 + 500.0) -- police station mission row
	RemoveVehiclesFromGeneratorsInArea(316.79 - 300.0, -592.36 - 300.0, 43.28 - 300.0, 316.79 + 300.0, -592.36 + 300.0, 43.28 + 300.0) -- pillbox
	RemoveVehiclesFromGeneratorsInArea(-2150.44 - 500.0, 3075.99 - 500.0, 32.8 - 500.0, -2150.44 + 500.0, -3075.99 + 500.0, 32.8 + 500.0) -- military
	RemoveVehiclesFromGeneratorsInArea(-1108.35 - 300.0, 4920.64 - 300.0, 217.2 - 300.0, -1108.35 + 300.0, 4920.64 + 300.0, 217.2 + 300.0) -- nudist
	RemoveVehiclesFromGeneratorsInArea(-458.24 - 300.0, 6019.81 - 300.0, 31.34 - 300.0, -458.24 + 300.0, 6019.81 + 300.0, 31.34 + 300.0) -- police station paleto
	RemoveVehiclesFromGeneratorsInArea(1854.82 - 300.0, 3679.4 - 300.0, 33.82 - 300.0, 1854.82 + 300.0, 3679.4 + 300.0, 33.82 + 300.0) -- police station sandy
	RemoveVehiclesFromGeneratorsInArea(-724.46 - 300.0, -1444.03 - 300.0, 5.0 - 300.0, -724.46 + 300.0, -1444.03 + 300.0, 5.0 + 300.0) -- REMOVE CHOPPERS WOW
end)

--KRP CUSTOM START
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0) -- prevent crashing

		SetGarbageTrucks(false)
		SetRandomBoats(false)
		
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
	end
end)
-- KRP CUSTOM END

CreateThread(function()
	local sleep
	while true do
		sleep = 1000
		local ped = PlayerPedId()
		if IsPedBeingStunned(ped, 0) then
			sleep = 0
			SetPedMinGroundTimeForStungun(ped, math.random(4000, 7000))
		end
		Wait(sleep)
	end
end)


CreateThread(function()
	for i = 1, 15 do
		EnableDispatchService(i, false)
	end

	SetMaxWantedLevel(0)
end)

if Config.IdleCamera then --Disable Idle Cinamatic Cam
	DisableIdleCamera(true)
end

CreateThread(function()
	local sleep
	while true do
		sleep = 500
		local ped = PlayerPedId()
		local weapon = GetSelectedPedWeapon(ped)
		if weapon ~= `WEAPON_UNARMED` then
			if IsPedArmed(ped, 6) then
				sleep = 0
				DisableControlAction(1, 140, true)
				DisableControlAction(1, 141, true)
				DisableControlAction(1, 142, true)
			end

			if weapon == `WEAPON_FIREEXTINGUISHER` or weapon == `WEAPON_PETROLCAN` then
				if IsPedShooting(ped) then
					SetPedInfiniteAmmo(ped, true, `WEAPON_FIREEXTINGUISHER`)
					SetPedInfiniteAmmo(ped, true, `WEAPON_PETROLCAN`)
				end
			end
		end
		Wait(sleep)
	end
end)

CreateThread(function()
	local pedPool = GetGamePool('CPed')
	for _, v in pairs(pedPool) do
		SetPedDropsWeaponsWhenDead(v, false)
	end
end)

-- KRP CUSTOM START (Stops weapon use from inside a car e.g. drivebys)
local player = PlayerId()
CreateThread(function()
    while true do
        local inVehicle = IsPedSittingInAnyVehicle(PlayerPedId())
        if inVehicle then
            local veh = GetVehiclePedIsUsing(PlayerPedId()) -- Only needed if we want to block for certain cars vehicle class
            local vehClass = GetVehicleClass(veh)
            if vehClass == 0 or vehClass == 1 or vehClass == 2 or vehClass == 3 or vehClass == 4 or vehClass == 5 or vehClass == 6 or vehClass == 7  or vehClass == 8 or vehClass == 9 or vehClass == 10 or vehClass == 11 or vehClass == 12 or vehClass == 13 or vehClass == 14 or vehClass == 15 or vehClass == 16 or vehClass == 17 or vehClass == 18 or vehClass == 19 or vehClass == 20 or vehClass == 21 or vehClass == 22 then

-- CLASSES:
-- 0: Compacts  
-- 1: Sedans  
-- 2: SUVs  
-- 3: Coupes  
-- 4: Muscle  
-- 5: Sports Classics  
-- 6: Sports  
-- 7: Super  
-- 8: Motorcycles  
-- 9: Off-road  
-- 10: Industrial  
-- 11: Utility  
-- 12: Vans  
-- 13: Cycles  
-- 14: Boats  
-- 15: Helicopters  
-- 16: Planes  
-- 17: Service  
-- 18: Emergency  
-- 19: Military  
-- 20: Commercial  
-- 21: Trains  
-- 22: Open Wheel
                SetPlayerCanDoDriveBy(player, false)
            else
                SetPlayerCanDoDriveBy(player, true)
            end
        end
        Wait(1000)
    end
end)
-- KRP CUSTOM END

-- KRP CUSTOM START (Turns off car control mid-air)
CreateThread(function()
    while true do
        local sleep = 1000
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped) and not IsPedInAnyPlane(ped) and not IsPedInAnyHeli(ped) and not IsPedOnAnyBike(ped) then
            local veh = GetVehiclePedIsIn(ped)
            local air = IsEntityInAir(veh)
            sleep = 100
            if air then
                sleep = 0
                DisableControlAction(0, 59, true)
                DisableControlAction(0, 60, true)
            end
        end
        Wait(sleep)
    end
end)
-- KRP CUSTOM END
