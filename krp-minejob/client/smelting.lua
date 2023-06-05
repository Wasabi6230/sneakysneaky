local isSmelting = false 
local listen = false
local Menus = {
    smeltzone = {
        text = Config.SmeltText
    },
}
function smelting()
    local ped = PlayerPedId()
    Citizen.CreateThread(function()
        TriggerEvent('animations:client:EmoteCommandStart', {"bumbin"})
        Citizen.Wait(Config.SmeltingTime*2000)
        ClearPedTasks(ped)

        Citizen.Wait(100)
        TriggerServerEvent('qb-mining:server:MeltedStone')
    end)
end

local function startListening4Control()
    listen = true
    Citizen.CreateThread(function()
        while listen do
            if IsControlJustReleased(0, 38) then -- E
                if not isSmelting then
                    QBCore.Functions.TriggerCallback('qb-minejob:server:GetItemSmelting', function(hasItem)
                        if hasItem then
                            isSmelting = true
                            smelting() 
                            QBCore.Functions.Progressbar("qb-washing", "Smelting...", Config.SmeltingTime*2000, false, false, {
                                disableMovement = true,
                                disableCarMovement = false,
                                disableMouse = false,
                                disableCombat = true,
                            }, {}, {}, {}, function()
                                Citizen.Wait(100)
                                isSmelting = false
                            end)
                        else 
                            QBCore.Functions.Notify("You need washed stone!", "error", 4500)
                        end
                    end , 'washed_stone')             
                else 
                    QBCore.Functions.Notify("You are already Smelting!", "error", 4500)
                end
            end
            Wait(0)
        end
    end)
end



Citizen.CreateThread(function()
    for k, v in pairs(Config.SmeltingZone) do
        exports["polyzonehelper"]:AddBoxZone("smeltzone", vector3(Config.SmeltingZone[k].polyzone.x, Config.SmeltingZone[k].polyzone.y, Config.SmeltingZone[k].polyzone.z), Config.SmeltingZone[k].polyzone1, Config.SmeltingZone[k].polyzone2, {
            name="smeltzone",
            heading=Config.SmeltingZone[k].heading,
            debugPoly=false,
            minZ = Config.SmeltingZone[k].minZ,
            maxZ = Config.SmeltingZone[k].maxZ
        }) 
    end
end)

AddEventHandler("polyzonehelper:enter", function(zone, data)
    local currentZone = Menus[zone]
    if currentZone then
        exports["fjam-ui"]:showInteraction(Config.MeltText, 'lava')
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