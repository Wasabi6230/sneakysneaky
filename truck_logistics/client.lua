truck,truck_blip,trailer,trailer_blip,rent_truck,route_blip = nil,nil,nil,nil,nil,nil
menuactive = false
current_location = nil
loading = false
cooldown = nil

-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCATIONS
-----------------------------------------------------------------------------------------------------------------------------------------	
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	local timer = 2
	while true do
		timer = 3000
		for k,mark in pairs(Config.trucker_locations) do
			local x,y,z = table.unpack(mark.menu_location)
			local distance = #(GetEntityCoords(PlayerPedId()) - vector3(x,y,z))
			if not menuactive and distance <= 20.0 then
				timer = 2
				DrawMarker(21,x,y,z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,0,0,50,0,0,0,1)
				if distance <= 2.0 then
					DrawText3D2(x,y,z-0.6, Lang[Config.lang]['open'], 0.40)
					if IsControlJustPressed(0,38) then
						current_location = k
						TriggerServerEvent("truck_logistics:getData") 
					end
				end
			end
		end
		Citizen.Wait(timer)
	end
end)

RegisterNetEvent('truck_logistics:open')
AddEventHandler('truck_logistics:open', function(dados,update)
	SendNUIMessage({ 
		showmenu = true,
		update = update,
		dados = dados
	})
	if update == false then
		menuactive = true
		SetNuiFocus(true,true)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterNUICallback('post', function(data, cb)
	if cooldown == nil then
		cooldown = true
		
		if data.event == "close" then
			closeUI()
		elseif data.event == "startContract" and loading then
			TriggerEvent("truck_logistics:Notify","importante",Lang[Config.lang]['loading_trailer'])
			closeUI()
		elseif data.event == "spawnTruck" and loading then
			TriggerEvent("truck_logistics:Notify","importante",Lang[Config.lang]['loading_truck'])
			closeUI()
		elseif data.event == "repairTruck" and (truck and not rent_truck) then
			TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['store_truck'])
		elseif data.event == "sellTruck" and (truck and not rent_truck) then
			TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['store_truck_2'])
		else
			TriggerServerEvent('truck_logistics:'..data.event,current_location,data.data)
		end
		cb()

		SetTimeout(100,function()
			cooldown = nil
		end)
	end
end)

function closeUI()
	current_location = nil
	menuactive = false
	SetNuiFocus(false,false)
	SendNUIMessage({ hidemenu = true })
	TriggerServerEvent('truck_logistics:closeUI')
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN OWNED TRUCK
-----------------------------------------------------------------------------------------------------------------------------------------
local updateTruckStatus = 0
RegisterNetEvent('truck_logistics:spawnTruck')
AddEventHandler('truck_logistics:spawnTruck', function(truck_data)
	if not IsEntityAVehicle(truck) then
		DeleteVehicle(truck)
		RemoveBlip(truck_blip)
		truck = nil
		truck_blip = nil
		rent_truck = false
	end
	if truck then
		TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['already_has_truck'])
		return
	end
	
	loading = true
	local garagem = Config.trucker_locations[current_location]['garage_location']
	local i = #garagem
	local x,y,z,h
	while i > 0 do
		x,y,z,h = table.unpack(garagem[i])
		local checkPos = IsSpawnPointClear({['x']=x,['y']=y,['z']=z},5.001)
		if checkPos == false then
			if i <= 1 then
				TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['occupied_places'])
				loading = false
				return
			end
		else
			break
		end
		i = i - 1
	end
	truck,truck_blip = spawnVehicle(truck_data.truck_name,x,y,z,h,truck_data.body,truck_data.engine,truck_data.transmission,truck_data.wheels,477,26,Lang[Config.lang]['truck_blip'],truck_data.properties)
	TriggerEvent("truck_logistics:Notify","sucesso",Lang[Config.lang]['already_is_in_garage'])
	loading = false

	local timer = 2
	local engineH = 1000
	while IsEntityAVehicle(truck) do
		timer = 2000
		local ped = PlayerPedId()
		veh = GetVehiclePedIsIn(ped,false)
		if veh == truck then
			engineH = GetVehicleEngineHealth(truck)
			for k,v in pairs(Config.trucker_locations) do
				for k,mark in pairs(v.garage_location) do
					local x,y,z = table.unpack(mark)
					local distance = #(GetEntityCoords(PlayerPedId()) - vector3(x,y,z))
					if distance <= 20.0 then
						timer = 2
						DrawMarker(39,x,y,z,0,0,0,0.0,0,0,2.0,2.0,2.0,255,0,0,50,0,0,0,1)
						if distance <= 5.0 then
							drawTxt(Lang[Config.lang]['press_e_to_store_truck'], 8,0.5,0.95,0.50,255,255,255,180)
							if IsControlJustPressed(0,38) then
								TriggerServerEvent("truck_logistics:updateTruckStatus",truck_data,GetVehicleEngineHealth(truck),GetVehicleBodyHealth(truck),GetVehicleProperties(truck))
								DeleteVehicle(truck)
								RemoveBlip(truck_blip)
								truck = nil
								truck_blip = nil
							end
						end
					else
						if updateTruckStatus == 0 and engineH ~= GetVehicleEngineHealth(truck) then
							updateTruckStatus = 3
							TriggerServerEvent("truck_logistics:updateTruckStatus",truck_data,GetVehicleEngineHealth(truck),GetVehicleBodyHealth(truck))
							engineH = GetVehicleEngineHealth(truck)
						end
					end
				end
			end
		end
		Citizen.Wait(timer)
	end
	DeleteEntity(truck)
	RemoveBlip(truck_blip)
	truck = nil
	truck_blip = nil
end)

Citizen.CreateThread(function()
	while true do
		timer = 10000
		if updateTruckStatus > 0 then
			updateTruckStatus = updateTruckStatus - 1
		end
		Citizen.Wait(timer)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- START CONTRACT
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterNetEvent('truck_logistics:startContract')
AddEventHandler('truck_logistics:startContract', function(key,contract_data,location)
	local is_finished = false
	local trailer_body = 0
	if not IsEntityAVehicle(trailer) then
		DeleteVehicle(trailer)
		RemoveBlip(trailer_blip)
		RemoveBlip(route_blip)
		trailer = nil
		trailer_blip = nil
		route_blip = nil
		rent_truck = false
	end
	if trailer or rent_truck then
		TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['already_has_cargo'])
		TriggerServerEvent('truck_logistics:updateContract',contract_data.contract_id, false)
		return
	end

	if not IsEntityAVehicle(truck) then
		DeleteVehicle(truck)
		RemoveBlip(truck_blip)
		RemoveBlip(route_blip)
		truck = nil
		truck_blip = nil
		route_blip = nil
		rent_truck = false
	end
	if truck and contract_data.contract_type == 0 then
		TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['must_store_truck'])
		TriggerServerEvent('truck_logistics:updateContract',contract_data.contract_id, false)
		return
	end

	Citizen.CreateThreadNow(function()
		resetLoading()
	end)

	loading = true
	local x,y,z,h
	if contract_data.contract_type == 0 then
		local garagem = Config.trucker_locations[key]['garage_location']
		x,y,z,h = table.unpack(garagem[location])
		if not IsSpawnPointClear({['x']=x,['y']=y,['z']=z},5.001) then
			local i = #garagem
			while i > 0 do
				x,y,z,h = table.unpack(garagem[i])
				local checkPos = IsSpawnPointClear({['x']=x,['y']=y,['z']=z},5.001)
				if checkPos == false then
					if i <= 1 then
						TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['occupied_places'])
						TriggerServerEvent('truck_logistics:updateContract',contract_data.contract_id, false)
						loading = false
						return
					end
				else
					break
				end
				i = i - 1
			end
		end
		truck,truck_blip = spawnVehicle(contract_data.truck,x,y,z,h,1000,1000,1000,1000,477,26,Lang[Config.lang]['rented_truck_blip'])
		rent_truck = true
	end
	
	local cargas = Config.trucker_locations[key]['trailer_location']
	x,y,z,h = table.unpack(cargas[location])
	if not IsSpawnPointClear({['x']=x,['y']=y,['z']=z},5.001) then
		i = #cargas
		while i > 0 do
			x,y,z,h = table.unpack(cargas[i])
			local checkPos = IsSpawnPointClear({['x']=x,['y']=y,['z']=z},5.001)
			if checkPos == false then
				if i <= 1 then
					if rent_truck then
						DeleteVehicle(truck)
						RemoveBlip(truck_blip)
						truck = nil
						truck_blip = nil
						rent_truck = false
					end
					TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['occupied_places'])
					TriggerServerEvent('truck_logistics:updateContract',contract_data.contract_id, false)
					loading = false
					return
				end
			else
				break
			end
			i = i - 1
		end
	end
	trailer,trailer_blip = spawnVehicle(contract_data.trailer,x,y,z,h,1000,1000,1000,1000,479,26,Lang[Config.lang]['cargo_blip'])
	TriggerEvent("truck_logistics:Notify","sucesso",Lang[Config.lang]['started_job'])
	loading = false

	Citizen.CreateThreadNow(function()
		createVehicleMarkers()
	end)

	TriggerServerEvent('truck_logistics:updateContract',contract_data.contract_id, true)
	
	if contract_data.external_data then
		x,y,z,h = contract_data.external_data.x,contract_data.external_data.y,contract_data.external_data.z,contract_data.external_data.h
	else
		x,y,z,h = table.unpack(Config.delivery_locations[contract_data.coords_index])
	end

	route_blip = addBlip(x,y,z,1,5,Lang[Config.lang]['destination_blip'],1.0)
	SetBlipRoute(route_blip,true)

	closeUI()

	local timer = 2000
	while IsEntityAVehicle(trailer) do 
		timer = 2000
		local ped = PlayerPedId()
		veh = GetVehiclePedIsIn(ped,false)
		local distance = #(GetEntityCoords(ped) - vector3(x,y,z))

		if distance <= 50.0 then
			timer = 2
			if distance <= 4.0 and GetEntityHeading(veh) + 10 >= h and GetEntityHeading(veh) - 10 <= h and GetEntityHeading(trailer) + 10 >= h and GetEntityHeading(trailer) - 10 <= h and IsEntityAttachedToEntity(veh,trailer) then
				DrawMarker(30,x,y,z-0.6,0,0,0,90.0,h,0.0,3.0,1.0,10.0,0,255,0,50,0,0,0,0)
				drawTxt(Lang[Config.lang]['press_e_to_park'], 8,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					BringVehicleToHalt(truck, 2.5, 1, false)
					Citizen.Wait(10)
					DoScreenFadeOut(500)
					Citizen.Wait(500)
					trailer_body = GetVehicleBodyHealth(trailer)
					DeleteVehicle(trailer)
					RemoveBlip(trailer_blip)
					RemoveBlip(route_blip)
					TriggerServerEvent("truck_logistics:deliveredCargo")
					PlaySoundFrontend(-1, "PROPERTY_PURCHASE", "HUD_AWARDS", 0)
					Citizen.Wait(1000)
					DoScreenFadeIn(1000)
					Citizen.CreateThreadNow(function()
						showScaleform(Lang[Config.lang]['success'], Lang[Config.lang]['finished_job'], 3)
					end)
					trailer = nil
					trailer_blip = nil
					route_blip = nil
					if not Config.jobs.must_bring_truck_back or contract_data.contract_type ~= 0 then
						TriggerServerEvent("truck_logistics:finishContract",GetVehicleEngineHealth(truck),GetVehicleBodyHealth(truck),trailer_body)
					end
					is_finished = true
					break
				end
			else
				drawTxt(Lang[Config.lang]['park_your_truck'], 8,0.5,0.90,0.50,255,255,255,180)
				DrawMarker(30,x,y,z-0.6,0,0,0,90.0,h,0.0,3.0,1.0,10.0,255,0,0,50,0,0,0,0)
			end
		end
		
		local bodyhealth = GetVehicleBodyHealth(trailer)
		local truckhealth = GetVehicleEngineHealth(truck)
		if bodyhealth <= 150 or truckhealth <= 150 then
			PlaySoundFrontend(-1, "PROPERTY_PURCHASE", "HUD_AWARDS", 0)
			TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['failed'])
			
			RemoveBlip(trailer_blip)
			RemoveBlip(route_blip)
			DeleteVehicle(trailer)
			trailer = nil
			trailer_blip = nil
			route_blip = nil
			break
		end

		if IsControlPressed(0,Config.jobs['cancel_job']) then
			DeleteVehicle(trailer)
			RemoveBlip(trailer_blip)
			RemoveBlip(route_blip)
			trailer = nil
			trailer_blip = nil
			route_blip = nil
			rent_truck = false
			if contract_data.contract_type == 0 then
				DeleteVehicle(truck)
				RemoveBlip(truck_blip)
				truck = nil
				truck_blip = nil
			end
			break
		end
		Wait(timer)
	end

	while IsEntityAVehicle(truck) and contract_data.contract_type == 0 do 
		timer = 2000
		local ped = PlayerPedId()
		veh = GetVehiclePedIsIn(ped,false)

		local truckhealth = GetVehicleEngineHealth(truck)
		if truckhealth <= 150 then
			PlaySoundFrontend(-1, "PROPERTY_PURCHASE", "HUD_AWARDS", 0)
			TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['failed'])
			break
		end

		for k,v in pairs(Config.trucker_locations) do
			for k,mark in pairs(v.garage_location) do
				local x,y,z = table.unpack(mark)
				local distance = #(GetEntityCoords(PlayerPedId()) - vector3(x,y,z))
				timer = 2
				if veh == truck and distance <= 20.0 then
					DrawMarker(39,x,y,z,0,0,0,0.0,0,0,2.0,2.0,2.0,255,0,0,50,0,0,0,1)
					if distance <= 5.0 then
						drawTxt(Lang[Config.lang]['press_e_to_store_truck'], 8,0.5,0.95,0.50,255,255,255,180)
						if IsControlJustPressed(0,38) then
							if Config.jobs.must_bring_truck_back and is_finished then
								TriggerServerEvent("truck_logistics:finishContract",GetVehicleEngineHealth(truck),GetVehicleBodyHealth(truck),trailer_body)
							end
							DeleteVehicle(truck)
							RemoveBlip(truck_blip)
							RemoveBlip(route_blip)
							truck = nil
							truck_blip = nil
							route_blip = nil
							rent_truck = false
						end
					end
				else
					drawTxt(Lang[Config.lang]['bring_back'], 8,0.5,0.90,0.50,255,255,255,180)
				end
			end
		end
		Wait(timer)
	end

	DeleteVehicle(trailer)
	RemoveBlip(trailer_blip)
	RemoveBlip(route_blip)
	trailer = nil
	trailer_blip = nil
	route_blip = nil
	rent_truck = false
	if contract_data.contract_type == 0 then
		DeleteVehicle(truck)
		RemoveBlip(truck_blip)
		truck = nil
		truck_blip = nil
	end

	TriggerServerEvent('truck_logistics:updateContract',contract_data.contract_id, false)
end)

RegisterNetEvent('truck_logistics:cancelContract')
AddEventHandler('truck_logistics:cancelContract', function(contract_data)
	DeleteVehicle(trailer)
	RemoveBlip(trailer_blip)
	RemoveBlip(route_blip)
	trailer = nil
	trailer_blip = nil
	route_blip = nil
	rent_truck = false
	if contract_data.contract_type == 0 then
		DeleteVehicle(truck)
		RemoveBlip(truck_blip)
		truck = nil
		truck_blip = nil
	end
end)

function createVehicleMarkers()
	local timer = 2000
	local ped = PlayerPedId()
	while IsEntityAVehicle(truck) or IsEntityAVehicle(trailer) do
		timer = 2000
		local player_coords = GetEntityCoords(ped)
		local truck_coords = GetEntityCoords(truck)
		local trailer_coods = GetEntityCoords(trailer)
		
		local distance_truck = #(player_coords - truck_coords)
		local distance_trailer = #(player_coords - trailer_coods)
		if distance_truck < 50.0 and GetVehiclePedIsIn(ped,false) ~= truck and not IsEntityAttachedToEntity(truck,trailer) then
			timer = 10
			local tx,ty,tz = table.unpack(truck_coords)
			DrawMarker(0,tx,ty,tz+2.5,0,0,0,0.0,0,0,1.0,1.0,1.0,0,100,255,50,1,0,0,1)
		end

		if distance_trailer < 50.0 and (not IsEntityAttachedToEntity(truck,trailer) or GetVehiclePedIsIn(ped,false) ~= truck) then
			timer = 10
			local tx,ty,tz = table.unpack(trailer_coods)
			DrawMarker(0,tx,ty,tz+3.0,0,0,0,0.0,0,0,1.5,1.5,1.0,0,100,255,50,1,0,0,1)
		end
		
		Wait(timer)
	end
end

function resetLoading()
	Citizen.Wait(50000)
	if loading == true then
		TriggerEvent("truck_logistics:Notify","negado",Lang[Config.lang]['loading_fail'])
		loading = false
	end
end

function EnumerateEntitiesWithinDistance(entities, isPlayerEntities, coords, maxDistance)
	local nearbyEntities = {}

	if coords then
		coords = vector3(coords.x, coords.y, coords.z)
	else
		local playerPed = PlayerPedId()
		coords = GetEntityCoords(playerPed)
	end

	for k,entity in pairs(entities) do
		local distance = #(coords - GetEntityCoords(entity))

		if distance <= maxDistance then
			table.insert(nearbyEntities, isPlayerEntities and k or entity)
		end
	end

	return nearbyEntities
end

local entityEnumerator = {
	__gc = function(enum)
		if enum.destructor and enum.handle then
			enum.destructor(enum.handle)
		end

		enum.destructor = nil
		enum.handle = nil
	end
}

function EnumerateEntities(initFunc, moveFunc, disposeFunc)
	return coroutine.wrap(function()
		local iter, id = initFunc()
		if not id or id == 0 then
			disposeFunc(iter)
			return
		end

		local enum = {handle = iter, destructor = disposeFunc}
		setmetatable(enum, entityEnumerator)
		local next = true

		repeat
			coroutine.yield(id)
			next, id = moveFunc(iter)
		until not next

		enum.destructor, enum.handle = nil, nil
		disposeFunc(iter)
	end)
end

function EnumerateVehicles()
	return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

GetVehicles = function()
	local vehicles = {}

	for vehicle in EnumerateVehicles() do
		table.insert(vehicles, vehicle)
	end

	return vehicles
end

GetVehiclesInArea = function(coords, maxDistance) return EnumerateEntitiesWithinDistance(GetVehicles(), false, coords, maxDistance) end
IsSpawnPointClear = function(coords, maxDistance) return #GetVehiclesInArea(coords, maxDistance) == 0 end

function print_table(node)
	if type(node) == "table" then
		-- to make output beautiful
		local function tab(amt)
			local str = ""
			for i=1,amt do
				str = str .. "\t"
			end
			return str
		end
	
		local cache, stack, output = {},{},{}
		local depth = 1
		local output_str = "{\n"
	
		while true do
			local size = 0
			for k,v in pairs(node) do
				size = size + 1
			end
	
			local cur_index = 1
			for k,v in pairs(node) do
				if (cache[node] == nil) or (cur_index >= cache[node]) then
				
					if (string.find(output_str,"}",output_str:len())) then
						output_str = output_str .. ",\n"
					elseif not (string.find(output_str,"\n",output_str:len())) then
						output_str = output_str .. "\n"
					end
	
					-- This is necessary for working with HUGE tables otherwise we run out of memory using concat on huge strings
					table.insert(output,output_str)
					output_str = ""
				
					local key
					if (type(k) == "number" or type(k) == "boolean") then
						key = "["..tostring(k).."]"
					else
						key = "['"..tostring(k).."']"
					end
	
					if (type(v) == "number" or type(v) == "boolean") then
						output_str = output_str .. tab(depth) .. key .. " = "..tostring(v)
					elseif (type(v) == "table") then
						output_str = output_str .. tab(depth) .. key .. " = {\n"
						table.insert(stack,node)
						table.insert(stack,v)
						cache[node] = cur_index+1
						break
					else
						output_str = output_str .. tab(depth) .. key .. " = '"..tostring(v).."'"
					end
	
					if (cur_index == size) then
						output_str = output_str .. "\n" .. tab(depth-1) .. "}"
					else
						output_str = output_str .. ","
					end
				else
					-- close the table
					if (cur_index == size) then
						output_str = output_str .. "\n" .. tab(depth-1) .. "}"
					end
				end
	
				cur_index = cur_index + 1
			end
	
			if (#stack > 0) then
				node = stack[#stack]
				stack[#stack] = nil
				depth = cache[node] == nil and depth + 1 or depth - 1
			else
				break
			end
		end
	
		-- This is necessary for working with HUGE tables otherwise we run out of memory using concat on huge strings
		table.insert(output,output_str)
		output_str = table.concat(output)
	
		print(output_str)
	else
		print(node)
	end
end