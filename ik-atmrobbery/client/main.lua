function RobberyCall(coords)
    if Config.Dispatch == 'qbcore' then
        local job = QBCore.Functions.GetPlayerData().job
        if job.name == "police" and job.onduty then
            PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0, 0, 1)
            TriggerServerEvent('police:server:policeAlert', Lang:t('info.robbery'))

            local transG = 250
            local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
            SetBlipSprite(blip, 458)
            SetBlipColour(blip, 1)
            SetBlipDisplay(blip, 4)
            SetBlipAlpha(blip, transG)
            SetBlipScale(blip, 1.0)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(Lang:t('info.code'))
            EndTextCommandSetBlipName(blip)
            while transG ~= 0 do
                Wait(180 * 4)
                transG = transG - 1
                SetBlipAlpha(blip, transG)
                if transG == 0 then
                    SetBlipSprite(blip, 2)
                    RemoveBlip(blip)
                    return
                end
            end
        end
    elseif Config.Dispatch == 'ps-dispatch' then
        exports['ps-dispatch']:FleecaBankRobbery()
    elseif Config.Dispatch == 'other' then
        -- Your custom dispatch 
    end
end

Citizen.CreateThread(function()
    for _, v in pairs(Config.models) do
        loadExistModel(v.model)
    end
    local pm = Config.Ped
    RequestModel(pm.hash) while not HasModelLoaded(pm.hash) do Wait(0) end
    local ped = CreatePed(0, pm.hash, pm.loc.x, pm.loc.y, pm.loc.z-1.0, pm.loc.w, false, false)
    -- local scenarios = { "WORLD_HUMAN_WELDING" }
    -- local scenario = math.random(1, #scenarios)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_WELDING", -1, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityNoCollisionEntity(ped, PlayerPedId(), false)
    SetEntityInvincible(ped, true)

    exports['qb-target']:AddCircleZone("atmped", vector3(pm.loc.x, pm.loc.y, pm.loc.z), 2.0, { name="atmped", debugPoly=false, useZ=true, },{ 
        options = {{
            event = "ik-atmrobbery:client:sellConsole",
            icon = "fas fa-recycle",
            label = "Illegal Scrapper",
            item = Config.ATMItemName
        }}, distance = 2.0 })

end)

RegisterNetEvent('ik-atmrobbery:client:sellConsole', function()
    local hasitem = QBCore.Functions.HasItem(Config.ATMItemName)
    if hasitem then
        QBCore.Functions.Progressbar('sell_console', Lang:t('progbar.selling'), math.random(5000,7000), false, true, { -- Name | Label | Time | useWhileDead | canCancel
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerServerEvent('ik-atmrobbery:server:giveConsoleRewards')
        end, function()
            QBCore.Functions.Notify(Lang:t('error.canceled'), 'error', 4500)
        end)
    end
end)