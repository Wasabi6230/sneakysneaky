local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    if Config.Pedspawn then
        local peds = {}
        for k, v in pairs(Config.PedList) do
            RequestModel(v.model) while not HasModelLoaded(v.model) do Wait(0) end
            peds[#peds+1] = CreatePed(0, v.model, v.coords.x, v.coords.y, (v.coords.z - 1), v.coords.w, false, false)
            SetEntityInvincible(peds[#peds], true)
            SetBlockingOfNonTemporaryEvents(peds[#peds], true)
            FreezeEntityPosition(peds[#peds], true)
            TaskStartScenarioInPlace(peds[#peds], v.scenario, 0, true)
            exports['qb-target']:AddBoxZone("npc"..k, vector3(v.coords.x, v.coords.y, v.coords.z), 0.8, 0.6, {
                name = "npc"..k,
                heading=v.coords.w,
                debugPoly=false,
                minZ=v.coords.z - 2,
                maxZ=v.coords.z + 2,
              }, {
                options = {
                  {
                    type = "client",
                    event = "ik-plate:client:checkbuyplate",
                    icon = 'fas fa-garage',
                    label = Lang:t("target.buy"),
                    item = 'vehplate',
                  }
                },
                distance = 1.5,
              })
        end
    end
end)

RegisterNUICallback("close", function(data, cb)
    SetNuiFocus(false, false)
end)

RegisterNetEvent("ik-plate:client:checkbuyplate", function()
    QBCore.Functions.TriggerCallback("ik-plate:server:checkbuyplate", function(cb)
        if cb then
            SendNUIMessage({ action = "load" })
            SetNuiFocus(true, true)
        end
    end)
end)

RegisterNUICallback("acceptplate", function(data, cb)
    plate = string.upper(data.plate)
	QBCore.Functions.TriggerCallback("ik-plate:server:acceptplate", function(pg)
        cb(pg)
    end, plate:gsub('%s+', ''))
end)

RegisterNetEvent("ik-plate:client:useplate",function(platenr)
    local newplate = string.upper(platenr)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local vehicle = QBCore.Functions.GetClosestVehicle(coords)
    local vehiclecoords = GetEntityCoords(vehicle)
    local vehDistance = GetDistanceBetweenCoords(coords, vehiclecoords, true)
    if DoesEntityExist(vehicle) and (vehDistance <= 3) then
        local curplate = GetVehicleNumberPlateText(vehicle)
        QBCore.Functions.TriggerCallback("ik-plate:server:checkowner",function(cb)
            if cb then
                QBCore.Functions.Progressbar('change_plate', Lang:t("pb.changing"), 5000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    anim = 'machinic_loop_mechandplayer',
                    flags = 1,
                }, {}, {}, function()
                    TriggerServerEvent('ik-plate:server:changeplate', curplate, newplate)
                    SetVehicleNumberPlateText(vehicle, tostring(newplate))
                    TriggerEvent("vehiclekeys:client:SetOwner", tostring(newplate))
                    StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
                end, function()
                    StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
                    QBCore.Functions.Notify(Lang:t("error.cancelled"), 'error')
                end)
            else
                QBCore.Functions.Notify(Lang:t("error.not_yours"), 'error')
            end
        end, curplate)
    else
        QBCore.Functions.Notify(Lang:t("error.not_near"), 'error')
    end
end)

RegisterNetEvent("ik-plate:client:setplate", function(platenumber)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local vehicle = QBCore.Functions.GetClosestVehicle(coords)
    if DoesEntityExist(vehicle) and (vehDistance <= 3) then
        SetVehicleNumberPlateText(vehicle, tostring(platenumber))
        TriggerEvent("vehiclekeys:client:SetOwner", tostring(platenumber))
    else
        QBCore.Functions.Notify(Lang:t("error.not_near"), 'error')
    end
end)