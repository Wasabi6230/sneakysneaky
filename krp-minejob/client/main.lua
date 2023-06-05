QBCore = exports['qb-core']:GetCoreObject()
local isMining = false 
local isSmelting = false
local impacts = 0
local listen = false
local NotMining = false
local Menus = {
    minezone = {
        text = "Clothing Store"
    },
}

local function startListening4Control()
    listen = true
    Citizen.CreateThread(function()
        while listen do
            if IsControlJustReleased(0, 38) then -- E
                if not isMining then
                    QBCore.Functions.TriggerCallback('qb-minejob:server:GetItem', function(hasItem)
                        if hasItem then
                            mining() 
                            QBCore.Functions.Progressbar("qb-washing", "Mining...", Config.MiningTime*1000, false, false, {
                                disableMovement = true,
                                disableCarMovement = false,
                                disableMouse = false,
                                disableCombat = true,
                            }, {}, {}, {}, function()
                            end)
                        else 
                            QBCore.Functions.Notify("You Need a Pickaxe!", "error", 4500)
                        end
                    end , 'pickaxe')             
                else 
                    QBCore.Functions.Notify("You are already Mining", "error", 4500)
                end
            end
            Wait(0)
        end
    end)
end

-- Animation(s)
function mining()
    isMining = true
    Citizen.CreateThread(function()
        while impacts < 3 do
            Citizen.Wait(1)
                local ped = PlayerPedId()
                SetCurrentPedWeapon(ped, GetHashKey('WEAPON_UNARMED'))
                RequestAnimDict("melee@hatchet@streamed_core")
                Citizen.Wait(100)
                TaskPlayAnim((ped), 'melee@hatchet@streamed_core', 'plyr_rear_takedown_b', 12.0, 12.0, -1, 80, 0, 0, 0, 0)
                SetEntityHeading(ped, 270.0)
                if impacts == 0 then
                    pickaxe = CreateObject(GetHashKey("prop_tool_pickaxe"), 0, 0, 0, true, true, true) 
                    AttachEntityToEntity(pickaxe, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.18, -0.02, -0.02, 350.0, 100.00, 140.0, true, true, false, true, 1, true)
                end  
                Citizen.Wait((Config.MiningTime / 3) * 1000)
                impacts = impacts+1
                if impacts == 3 then
                    DetachEntity(pickaxe, 1, true)
                    DeleteEntity(pickaxe)
                    DeleteObject(pickaxe)
                    impacts = 0
                    Citizen.Wait(100)
                    TriggerServerEvent('qb-mining:server:givestone')
                    Citizen.Wait(200)
                    isMining = false
                    break
                end        
        end
    end)
end

-- Ped Shop at mining
RegisterNetEvent('qb-mining:shop')
AddEventHandler('qb-mining:shop', function()
	local ShopItems = {}
	ShopItems.label = "Mining Worker"
	ShopItems.items = Config.MiningItems
	ShopItems.slots = #Config.MiningItems
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "Mineshop_"..math.random(1, 99), ShopItems)
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("Mineshop", vector3(-600.5594, 2089.8645, 131.0617), 1.6, 1.6, {
        name = "Mineshop",
        heading = 347,
        debugPoly = false,
        minZ = 131.0,
        maxZ = 132.9,
    }, {
        options = {
        {
            type = "client",
            event = "qb-mining:shop",
            icon = "fas fa-gem",
            label = "Open Shop",
        }
        },
        distance = 3.0,
    })
end)


Citizen.CreateThread(function()
    for k, v in pairs(Config.MiningZone) do
        exports["polyzonehelper"]:AddBoxZone("minezone", vector3(Config.MiningZone[k].polyzone.x, Config.MiningZone[k].polyzone.y, Config.MiningZone[k].polyzone.z), Config.MiningZone[k].polyzone1, Config.MiningZone[k].polyzone2, {
            name="minezone",
            heading=Config.MiningZone[k].heading,
            debugPoly=false,
            minZ = Config.MiningZone[k].minZ,
            maxZ = Config.MiningZone[k].maxZ
        }) 
    end
end)

AddEventHandler("polyzonehelper:enter", function(zone, data)
    local currentZone = Menus[zone]
    if currentZone then
        exports["fjam-ui"]:showInteraction(Config.MineText, 'grey')
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
