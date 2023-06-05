local IFCore = exports[Config.Core]:GetCoreObject()

No = false

RegisterCommand('jobMenu', function(source, args)
    local Player = IFCore.Functions.GetPlayerData()
    local onDuty = Player.job.onduty
    local job = Player.job.name
    local currentGrade = Player.job.grade.level
    IFCore.Functions.TriggerCallback('IF-multijob:server:getJobs', function(result)
        if result ~= nil and Config.UseKey then 
            openMenu(onDuty, job, result, currentGrade)
        else 
            local ped = PlayerPedId()
            local PlayerCoord = GetEntityCoords(ped)
          local dist = GetDistanceBetweenCoords(PlayerCoord, Config.Coords, true)
                if dist <= Config.Dist1 then
                    openMenu(onDuty, job, result, currentGrade)
                end
        end
    end)
end)

RegisterKeyMapping('jobMenu', "Open Multi-Job menu"  , "keyboard", Config.Keybind)

function openMenu(onDuty, job, jobInfo, currentGrade)
  
    SendNUIMessage({
        action = "open",
        duty = onDuty,
        jobInfo = jobInfo,
        job = job,
        currentGrade = currentGrade
    })
    SetNuiFocus(true, true)

end

Citizen.CreateThread(function()
    while IFCore == nil do
		Wait(200)
	end
    local alreadyEnteredZone = false
while true do
    Wait(10)
    local ped = PlayerPedId()
            local PlayerCoord = GetEntityCoords(ped)
           local inZone = false
           if not Config.UseKey then
          if GetDistanceBetweenCoords(PlayerCoord, Config.Coords, true) < Config.Dist2 then
            inZone = true
            DrawMarker(Config.Mark, Config.Coords.x, Config.Coords.y, Config.Coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.6, 0.6, 0.6, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, Config.MarkerColor.a, false, false, false, 1, false, false, false)

          else
            Wait(500)
        end
    end

    if inZone and not alreadyEnteredZone then
        alreadyEnteredZone = true
        DrawUI(Config.DrawUiText)
    end

    if not inZone and alreadyEnteredZone then
        alreadyEnteredZone = false
        CloseUI()
    end
end


end)






RegisterNUICallback('close', function() 
    SetNuiFocus(false, false)
end)

RegisterNUICallback('deleteJob', function(data)
    TriggerServerEvent('IF-multijob:server:deleteJob', data.job)
end)

RegisterNUICallback('changeJob', function(data) 
    TriggerServerEvent('IF-multijob:server:changeJob', data.job, data.grade)
end)

RegisterNUICallback('toggleDuty', function() 
    local player = IFCore.Functions.GetPlayerData()
    local jobName = player.job.name
    if jobName ~= 'police' and jobName ~= 'ambulance' then 
        TriggerServerEvent(Config.Duty)
    else
        ShowNotification(Lang[Config.Locale]["duty"], "error") 
    end
end)

RegisterNetEvent(Config.JobUpdate)
AddEventHandler(Config.JobUpdate, function(JobInfo)

    TriggerServerEvent('IF-multijob:server:newJob', JobInfo)

end)