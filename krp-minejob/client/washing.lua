local isWashing = false 
local listen = false
local Menus = {
    washzone = {
        text = Config.Wash
    },
}
function washing()
    local ped = PlayerPedId()
    Citizen.CreateThread(function()
        TriggerEvent('animations:client:EmoteCommandStart', {"kneel3"})
        Citizen.Wait(200)
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
        Citizen.Wait(Config.WashingTime*1000)
        ClearPedTasks(ped)
        Citizen.Wait(100)
        TriggerServerEvent('qb-mining:server:washedstone')
    end)
end

local function startListening4Control()
    listen = true
    Citizen.CreateThread(function()
        while listen do
            if IsControlJustReleased(0, 38) then -- E
                if not isWashing then
                    QBCore.Functions.TriggerCallback('qb-minejob:server:GetItemWashing', function(hasItem)
                        if hasItem then
                            isWashing = true
                            washing() 
                            QBCore.Functions.Progressbar("qb-washing", "Washing..", Config.WashingTime*1000, false, false, {
                                disableMovement = false,
                                disableCarMovement = false,
                                disableMouse = false,
                                disableCombat = true,
                            }, {}, {}, {}, function()
                                Citizen.Wait(100)
                                isWashing = false
                            end)
                        else 
                            QBCore.Functions.Notify("You have no washing pan!", "error", 4500)
                        end
                    end , 'washing_pan')             
                else 
                    QBCore.Functions.Notify("You are already Washing", "error", 4500)
                end
            end
            Wait(0)
        end
    end)
end



Citizen.CreateThread(function()
    for k, v in pairs(Config.WashingZone) do
        exports["polyzonehelper"]:AddBoxZone("washzone", vector3(Config.WashingZone[k].polyzone.x, Config.WashingZone[k].polyzone.y, Config.WashingZone[k].polyzone.z), Config.WashingZone[k].polyzone1, Config.WashingZone[k].polyzone2, {
            name="washzone",
            heading=Config.WashingZone[k].heading,
            debugPoly=false,
            minZ = Config.WashingZone[k].minZ,
            maxZ = Config.WashingZone[k].maxZ
        }) 
    end
end)

AddEventHandler("polyzonehelper:enter", function(zone, data)
    local currentZone = Menus[zone]
    if currentZone then
        exports["fjam-ui"]:showInteraction(Config.WashText, 'water')
        startListening4Control()
    end
end)

AddEventHandler("polyzonehelper:exit", function(zone)
    local currentZone = Menus[zone]
    if currentZone then
        listen = false
        exports["fjam-ui"]:hideInteraction()
    end
end)