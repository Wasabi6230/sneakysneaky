--===============================================
--             Local
--===============================================
local LastAnimDict = ""
local LastAnimPlay = ""
local LastControlFlag = 0
local LastTargetCarried = 0
--===============================================
--             Command
--===============================================
-- / Carry Keybind \ --
if CarryShared.CarryKeyBind.enabled then RegisterKeyMapping(CarryShared.Commands[1].cmd, CarryShared.Commands[1].suggestion, 'keyboard', CarryShared.CarryKeyBind.key) end
-- / Carry \ --
RegisterCommand(CarryShared.Commands[1].cmd, function(source, args)
	local player = PlayerPedId()	
	local closestPlayer = GetClosestPlayerRadius(3)
	local targetid = GetPlayerServerId(closestPlayer)
	if LocalPlayer.state.isbeingcarried then return end
	if closestPlayer ~= nil and targetid >= 1 then
		if not CarryShared.isCarrying then				
			DetachEntity(closestPlayer, true, false)
			ClearPedTasks(closestPlayer)
			CarryShared.isCarrying = true			
			LastTargetCarried = targetid
			CarryShared.inTrunk = false 
			SetEntityCollision(closestPlayer, true, true)
			TriggerServerEvent("cc-carry:server:setstate", targetid, "isbeingcarried", true)
			TriggerServerEvent('cc-carry:server:sync', closestPlayer, CarryShared.Animations.MeAnimDic, CarryShared.Animations.TargetAnimDic, CarryShared.Animations.MeAnimPlay, CarryShared.Animations.TargetAnimPlay, CarryShared.Animations.MeDistance, CarryShared.Animations.TargetDistance, CarryShared.Animations.Height, targetid, CarryShared.Animations.Length, CarryShared.Animations.Spin, CarryShared.Animations.MeControlFlag, CarryShared.Animations.TargetControlFlag, CarryShared.Animations.TargetAnimFlag)					
		else
			CarryShared.isCarrying = false
			ClearPedSecondaryTask(PlayerPedId())
			DetachEntity(PlayerPedId(), true, false)					
			TriggerServerEvent("cc-carry:server:setstate", targetid, "isbeingcarried", false)
			TriggerServerEvent("cc-carry:server:stop", targetid)			
		end
	else									
		CarryShared.Notification(CarryShared.Lang["no_one_near"])
	end
end,false)
-- / Put in Trunk \ --
RegisterCommand(CarryShared.Commands[2].cmd, function()
	if CarryShared.isCarrying then 		
		local vehicle = VehicleinFront()
		local trunk = GetEntityBoneIndexByName(vehicle, 'boot')				
		local coords = GetWorldPositionOfEntityBone(vehicle, trunk)
		local distance  = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), coords, true)	
		if distance < CarryShared.Distance and DoesEntityExist(vehicle) then
			if not isVehicleBlacklist(vehicle) then
				if GetVehicleDoorAngleRatio(vehicle,5) ~= 0 then														
					ClearPedTasks(PlayerPedId())
					CarryShared.isCarrying = false 			
					TriggerServerEvent("cc-carry:server:stop", LastTargetCarried)
					TriggerServerEvent("cc-carry:server:putintrunk", LastTargetCarried)						
				else
					CarryShared.Notification(CarryShared.Lang["trunk_closed"])
				end		
			else
				CarryShared.Notification(CarryShared.Lang["veh_blacklist"])
			end
		else
			CarryShared.Notification(CarryShared.Lang["not_near_vehicle"])
		end
	else
		CarryShared.Notification(CarryShared.Lang["not_carry"])
	end
end, false)
-- / Get in Trunk \ --
RegisterCommand(CarryShared.Commands[3].cmd, function()		
	local vehicle = VehicleinFront()
	local trunk = GetEntityBoneIndexByName(vehicle, 'boot')					
	local coords = GetWorldPositionOfEntityBone(vehicle, trunk)
	local distance  = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), coords, true)	
	if GetVehicleDoorAngleRatio(vehicle,5) ~= 0 and not CarryShared.inTrunk  then
		if not IsEntityAttached(PlayerPedId()) and distance < CarryShared.Distance and DoesEntityExist(vehicle) then	
			if not isVehicleBlacklist(vehicle) then																																		
				AttachEntityToEntity(PlayerPedId(), vehicle, -1, 0.0, -2.2, 0.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)					
				LoadAnimation(CarryShared.Animations.InTrunkAnimDic)			
				if not IsEntityPlayingAnim(PlayerPedId(), CarryShared.Animations.InTrunkAnimDic, CarryShared.Animations.InTrunkAnimPlay, 3) then
					TaskPlayAnim(PlayerPedId(), CarryShared.Animations.InTrunkAnimDic, CarryShared.Animations.InTrunkAnimPlay, 8.0, 8.0, -1, 1, 999.0, 0, 0, 0)
				end		
				CarryShared.inTrunk = true
				Wait(2000)
				SetVehicleDoorShut(vehicle, 5, false,false)				
			else
				CarryShared.Notification(CarryShared.Lang["veh_blacklist"])
			end				
		else
			CarryShared.Notification(CarryShared.Lang["not_near_vehicle"])
		end	
	else
		CarryShared.Notification(CarryShared.Lang["trunk_closed"])			
	end
end, false)
--===============================================
--               EVENTS
--===============================================
-- / Carry \ --
RegisterNetEvent('cc-carry:client:DoCarry', function()	
	local player = PlayerPedId()	
	local closestPlayer = GetClosestPlayerRadius(3)
	local targetid = GetPlayerServerId(closestPlayer)	
	if LocalPlayer.state.isbeingcarried then return end
	if closestPlayer ~= nil and targetid >= 1 then
		if not CarryShared.isCarrying then				
			DetachEntity(closestPlayer, true, false)
			ClearPedTasks(closestPlayer)
			CarryShared.isCarrying = true			
			LastTargetCarried = targetid
			CarryShared.inTrunk = false 
			SetEntityCollision(closestPlayer, true, true)
			TriggerServerEvent("cc-carry:server:setstate", targetid, "isbeingcarried", true)
			TriggerServerEvent('cc-carry:server:sync', closestPlayer, CarryShared.Animations.MeAnimDic, CarryShared.Animations.TargetAnimDic, CarryShared.Animations.MeAnimPlay, CarryShared.Animations.TargetAnimPlay, CarryShared.Animations.MeDistance, CarryShared.Animations.TargetDistance, CarryShared.Animations.Height, targetid, CarryShared.Animations.Length, CarryShared.Animations.Spin, CarryShared.Animations.MeControlFlag, CarryShared.Animations.TargetControlFlag, CarryShared.Animations.TargetAnimFlag)					
		else
			CarryShared.isCarrying = false
			ClearPedSecondaryTask(PlayerPedId())
			DetachEntity(PlayerPedId(), true, false)					
			TriggerServerEvent("cc-carry:server:setstate", targetid, "isbeingcarried", false)
			TriggerServerEvent("cc-carry:server:stop", targetid)			
		end
	else									
		CarryShared.Notification(CarryShared.Lang["no_one_near"])
	end
end)
-- / Put in Trunk \ --
RegisterNetEvent('cc-carry:client:GetInEvent', function()	
	local vehicle = VehicleinFront()
	local trunk = GetEntityBoneIndexByName(vehicle, 'boot')					
	local coords = GetWorldPositionOfEntityBone(vehicle, trunk)
	local distance  = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), coords, true)	
	if GetVehicleDoorAngleRatio(vehicle,5) ~= 0 and not CarryShared.inTrunk  then
		if not IsEntityAttached(PlayerPedId()) and distance < CarryShared.Distance then																																			
			if not isVehicleBlacklist(vehicle) then					
				AttachEntityToEntity(PlayerPedId(), vehicle, -1, 0.0, -2.2, 0.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)					
				LoadAnimation(CarryShared.Animations.InTrunkAnimDic)			
				if not IsEntityPlayingAnim(PlayerPedId(), CarryShared.Animations.InTrunkAnimDic, CarryShared.Animations.InTrunkAnimPlay, 3) then
					TaskPlayAnim(PlayerPedId(), CarryShared.Animations.InTrunkAnimDic, CarryShared.Animations.InTrunkAnimPlay, 8.0, 8.0, -1, 1, 999.0, 0, 0, 0)
				end							
				CarryShared.inTrunk = true
				Wait(2000)
				SetVehicleDoorShut(vehicle, 5, false,false)
			else
				CarryShared.Notification(CarryShared.Lang["veh_blacklist"])
			end
		else
			CarryShared.Notification(CarryShared.Lang["not_near_vehicle"])
		end	
	else
		CarryShared.Notification(CarryShared.Lang["trunk_closed"])			
	end
end)
-- / Get in Trunk \ --
RegisterNetEvent('cc-carry:client:PutInEvent', function()
	if CarryShared.isCarrying then 		
		local vehicle = VehicleinFront()
		local trunk = GetEntityBoneIndexByName(vehicle, 'boot')				
		local coords = GetWorldPositionOfEntityBone(vehicle, trunk)
		local distance  = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), coords, true)	
		if distance < CarryShared.Distance and DoesEntityExist(vehicle) then
			if not isVehicleBlacklist(vehicle) then
				if GetVehicleDoorAngleRatio(vehicle,5) ~= 0 then														
					ClearPedTasks(PlayerPedId())
					CarryShared.isCarrying = false 			
					TriggerServerEvent("cc-carry:server:stop", LastTargetCarried)
					TriggerServerEvent("cc-carry:server:putintrunk", LastTargetCarried)						
				else
					CarryShared.Notification(CarryShared.Lang["trunk_closed"])
				end		
			else
				CarryShared.Notification(CarryShared.Lang["veh_blacklist"])
			end	
		else
			CarryShared.Notification(CarryShared.Lang["not_near_vehicle"])
		end		
	else
		CarryShared.Notification(CarryShared.Lang["not_carry"])
	end
end)
-- / Carry Sync Target \ --	
RegisterNetEvent('cc-carry:client:syncTarget', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag)
	local playerPed = PlayerPedId()
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	CarryShared.inTrunk = false 
	ClearPedTasks(playerPed)
	CarryShared.isCarrying = true
	LoadAnimation(animationLib)
	AttachEntityToEntity(PlayerPedId(), targetPed, 1, distans2, distans, height, 180.0, 180.0, spin, 1, 1, 0, 1, 0, 1)
	Wait(100)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	LastAnimPlay = animation2
	LastAnimDict = animationLib
	LastControlFlag = controlFlag
end)
-- / Carry Sync Me \ --	
RegisterNetEvent('cc-carry:client:syncMe', function(animationLib, animation,length,controlFlag,animFlag)
	local playerPed = PlayerPedId()
	LoadAnimation(animationLib)
	Wait(100)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	LastAnimPlay = animation
	LastAnimDict = animationLib
	LastControlFlag = controlFlag
end)
-- / Carry Stop \ --	
RegisterNetEvent('cc-carry:client:stop', function()
	CarryShared.isCarrying = false
	ClearPedSecondaryTask(PlayerPedId())
	DetachEntity(PlayerPedId(), true, false)
end)
-- / Carry Put in Trunk Target \ --
RegisterNetEvent("cc-carry:client:putintrunk",function(target)
	local ped = GetPlayerPed(GetPlayerFromServerId(target))
	local pos = GetEntityCoords(ped,true)
	local vehicle, distance = GetNearbyVehicle(pos)	
	if not CarryShared.inTrunk then		
		AttachEntityToEntity(ped, vehicle, -1, 0.0, -2.2, 0.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)			
		if IsEntityAttached(ped) then				
			LoadAnimation(CarryShared.Animations.InTrunkAnimDic)				
			if not IsEntityPlayingAnim(ped, CarryShared.Animations.InTrunkAnimDic, CarryShared.Animations.InTrunkAnimPlay, 3) then
				TaskPlayAnim(ped, CarryShared.Animations.InTrunkAnimDic, CarryShared.Animations.InTrunkAnimPlay, 8.0, 8.0, -1, 1, 999.0, 0, 0, 0)
			end
			CarryShared.inTrunk = true
		end   
	end	
	Wait(2000)
	SetVehicleDoorShut(vehicle, 5, false,false)	
end)
--===============================================
--               FUNCTIONS
--===============================================
-- / Get Vehicle Blacklist \ --
function isVehicleBlacklist(vehicle)
	local model = GetEntityModel(vehicle)
	for i = 1, #CarryShared.BlacklistVehicles do
		if model == GetHashKey(CarryShared.BlacklistVehicles[i]) then
			return true
		end
	end
	return false
end
-- / Get Active Players \ --
function GetAllPlayers()
    local players = {}
	for _, player in ipairs(GetActivePlayers()) do
		table.insert(players, player)
	end
    return players
end
-- / Get Closest Player \ --
function GetClosestPlayerRadius(radius)
    local players = GetAllPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
            if (closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end
-- / Get Vehicle in front \ --
function VehicleinFront()
	local pos = GetEntityCoords(PlayerPedId())
	local entityWorld = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 6.0, 0.0)
	local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, PlayerPedId(), 0)
	local _, _, _, _, result = GetRaycastResult(rayHandle)
	return result
end
-- / Get Nearby vehicles \ --
function GetNearbyVehicle(coords)
	local vehicles  = GetGamePool('CVehicle')
	local closestDist = -1
	local closestVehicle  = -1
	local coords = coords

	if coords == nil then
		local playerPed = PlayerPedId()
		coords = GetEntityCoords(playerPed)
	end
	for i=1, #vehicles, 1 do
		local vehicleCoords = GetEntityCoords(vehicles[i])
		local distance      = GetDistanceBetweenCoords(vehicleCoords, coords.x, coords.y, coords.z, true)

		if closestDist == -1 or closestDist > distance then
			closestVehicle  = vehicles[i]
			closestDist = distance
		end
	end
	return closestVehicle
end
-- / Load AnimDic \ --
function LoadAnimation(dict)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Wait(10)
	end
end
--===============================================
--             Threads
--===============================================
-- / inTrunk Loop \ --
CreateThread(function()
    while true do
        local inRun = false
        if CarryShared.inTrunk then								
            local vehicle = GetEntityAttachedTo(PlayerPedId())				
            if DoesEntityExist(vehicle) and CarryShared.DoChecks(PlayerPedId()) and (GetVehicleEngineHealth(vehicle) > 50.0) then
				inRun = true
				local coords = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, 'platelight'))
				SetEntityCollision(PlayerPedId(), false, false)			
				CarryShared.DrawText3D(coords, CarryShared.DrawText3DText.intrunk)					
				if GetVehicleDoorLockStatus(vehicle) == 1 and IsDisabledControlJustReleased(0, CarryShared.Keys["G"]) then
					if GetVehicleDoorAngleRatio(vehicle, 5) > 0.0 then
						SetVehicleDoorShut(vehicle, 5, 1, true)						
					else
						SetVehicleDoorOpen(vehicle, 5, 1, true)					
					end	
				elseif GetVehicleDoorLockStatus(vehicle) == 4 or GetVehicleDoorLockStatus(vehicle) == 2 then
					CarryShared.Notification(CarryShared.Lang["trunk_locked"])	
				end
				if GetVehicleDoorAngleRatio(vehicle, 5) < 0.9 then
                	SetEntityVisible(PlayerPedId(), false, false)
                else
                    if not IsEntityPlayingAnim(PlayerPedId(), CarryShared.Animations.InTrunkAnimDic, 3) then
                        LoadAnimation(CarryShared.Animations.InTrunkAnimDic)
                        TaskPlayAnim(PlayerPedId(), CarryShared.Animations.InTrunkAnimDic, CarryShared.Animations.InTrunkAnimPlay, 8.0, -8.0, -1, 1, 0, false, false, false)
                        SetEntityVisible(PlayerPedId(), true, false)
                    end
                end
                if IsDisabledControlJustReleased(0, CarryShared.Keys["F"]) and CarryShared.inTrunk then
					if GetVehicleDoorAngleRatio(vehicle, 5) ~= 0 then						
						if CarryShared.ScreenFadeOnExitTrunk then
							DoScreenFadeOut(500)
							while IsScreenFadedOut() do
								Wait(500)
							end	
						end
						SetCarBootOpen(vehicle)
						SetEntityCollision(PlayerPedId(), true, true)
						Wait(750)
						CarryShared.inTrunk = false
						DetachEntity(PlayerPedId(), true, true)
						SetEntityVisible(PlayerPedId(), true, false)
						ClearPedTasks(PlayerPedId())														
						SetVehicleDoorShut(vehicle, 5)						
						SetEntityCoords(PlayerPedId(), GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, -0.5, -0.75))							
						Wait(250)
						SetVehicleDoorShut(vehicle, 5)
						if CarryShared.ScreenFadeOnExitTrunk then		
							DoScreenFadeIn(500)
						end
					else
						CarryShared.Notification(CarryShared.Lang["trunk_closed"])
					end					
                end
            else
                SetEntityCollision(PlayerPedId(), true, true)
				CarryShared.inTrunk = false
				DetachEntity(PlayerPedId(), true, true)
				SetEntityVisible(PlayerPedId(), true, false)
				ClearPedTasks(PlayerPedId())			
            end		
        end
		if not inRun then
			Wait(1000)
		end
		Wait(3)
    end
end)   
-- / isCarrying Loop \ --
CreateThread(function()
	while true do			
		local inRun = false		
		if CarryShared.isCarrying then 	
			inRun = true				
			CarryShared.DisableCarryActions()			
			if not IsEntityPlayingAnim(PlayerPedId(), LastAnimDict, LastAnimPlay, 3) then
				TaskPlayAnim(PlayerPedId(), LastAnimDict, LastAnimPlay, 8.0, -8.0, 100000, LastControlFlag, 0, false, false, false)				
			end										
		end
		if not inRun then
			Wait(1000)
		end
		Wait(4)
	end
end)
--===============================================
--             DRAWTEXT THREADS
--===============================================
if CarryShared.DrawText3DEnabled then
	-- / Putin Drawtext \ --
	CreateThread(function() 
		while true do 
			local inRun = false
			if CarryShared.isCarrying then 		
				local vehicle = VehicleinFront()
				local trunk = GetEntityBoneIndexByName(vehicle, 'boot')				
				local coords = GetWorldPositionOfEntityBone(vehicle, trunk)
				local plycoords = GetEntityCoords(PlayerPedId())
				local distance  = #(vector3(plycoords.x, plycoords.y, plycoords.z)-vector3(coords.x,coords.y,coords.z))										
				if distance < CarryShared.Distance and DoesEntityExist(vehicle) then					
					inRun = true	
					if GetVehicleDoorAngleRatio(vehicle,5) ~= 0 then										
						CarryShared.DrawText3D(coords, CarryShared.DrawText3DText.putintrunk)
						if IsControlJustReleased(0, CarryShared.Keys["E"]) then
							if not isVehicleBlacklist(vehicle) then
								ClearPedTasks(PlayerPedId())
								CarryShared.isCarrying = false 
								TriggerServerEvent("cc-carry:server:stop", LastTargetCarried)
								TriggerServerEvent("cc-carry:server:putintrunk", LastTargetCarried)							
							else
								CarryShared.Notification(CarryShared.Lang["veh_blacklist"])
							end	
						end
					else
						CarryShared.Notification(CarryShared.Lang["trunk_closed"])
					end		
				end								
			end 
			if not inRun then
				Wait(1000)
			end
			Wait(4)
		end
	end)
	-- / Getin Drawtext \ --
	CreateThread(function() 
		while true do 
			local inRun = false
			if not CarryShared.isCarrying then
				local vehicle = VehicleinFront()
				local trunk = GetEntityBoneIndexByName(vehicle, 'boot')					
				local coords = GetWorldPositionOfEntityBone(vehicle, trunk)
				local plycoords = GetEntityCoords(PlayerPedId())
				local distance  = #(vector3(plycoords.x, plycoords.y, plycoords.z)-vector3(coords.x,coords.y,coords.z))	
				if GetVehicleDoorAngleRatio(vehicle,5) ~= 0 and not CarryShared.inTrunk then				
					if distance < CarryShared.Distance then
						inRun = true
						if not IsEntityAttached(PlayerPedId()) and distance < CarryShared.Distance then															
							CarryShared.DrawText3D(coords, CarryShared.DrawText3DText.getintrunk)														
							if IsControlJustReleased(0, CarryShared.Keys["E"]) then
								if not isVehicleBlacklist(vehicle) then							
									AttachEntityToEntity(PlayerPedId(), vehicle, -1, 0.0, -2.2, 0.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)										
									LoadAnimation(CarryShared.Animations.InTrunkAnimDic)							
									if not IsEntityPlayingAnim(PlayerPedId(), CarryShared.Animations.InTrunkAnimDic, CarryShared.Animations.InTrunkAnimPlay, 3) then
										TaskPlayAnim(PlayerPedId(), CarryShared.Animations.InTrunkAnimDic, CarryShared.Animations.InTrunkAnimPlay, 8.0, 8.0, -1, 1, 999.0, 0, 0, 0)
									end
									CarryShared.inTrunk = true							
									Wait(2000)
									SetVehicleDoorShut(vehicle, 5, false,false)
								else
									CarryShared.Notification(CarryShared.Lang["veh_blacklist"])
								end	
							end				
						end					
					end
				end
			end
			if not inRun then
				Wait(1000)
			end			
			Wait(4)
		end
	end)
end
--===============================================
--             CHAT SUGGESTIONS
--===============================================
CreateThread(function()	
	TriggerEvent('chat:addSuggestion',  "/"..CarryShared.Commands[1].cmd , CarryShared.Commands[1].suggestion)			
	TriggerEvent('chat:addSuggestion',  "/"..CarryShared.Commands[2].cmd , CarryShared.Commands[2].suggestion)		
	TriggerEvent('chat:addSuggestion',  "/"..CarryShared.Commands[3].cmd , CarryShared.Commands[3].suggestion)		
end)
--===============================================
--                END
--===============================================
