-------------------------------
---------- CASE#2506 ----------
-------------------------------

local hardShopSpawned = false, false
local hardNPC

-- Creates blip for pawnshop
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(-671.1337, -869.6361, 48.660037) -- Change blip coords here
	SetBlipSprite(blip, 619) 
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.6)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 5)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Digital Den") -- Change blip name here
    EndTextCommandSetBlipName(blip)
end)

-- Spawns hardware NPC when you get close, deletes when you leave
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
            local pedCoords = GetEntityCoords(PlayerPedId()) 
            local spawnCoords = vector3(-657.4, -859.03, 23.49) -- Change ped coords here (lower Z by 1 to have ped spawn on floor and not in air)
            local dst = #(spawnCoords - pedCoords)
            
            if dst < 100 and hardShopSpawned == false then
                TriggerEvent('case:spawnHardPed',spawnCoords,357.24) -- Ped heading 
                hardShopSpawned = true
            end
            if dst >= 101  then
                hardShopSpawned = false
                DeleteEntity(hardNPC)
            end
    end
end)
-- Spawn Hardware NPC
RegisterNetEvent('case:spawnHardPed')
AddEventHandler('case:spawnHardPed',function(coords,heading)
    local hash = GetHashKey('a_m_m_hasjew_01') -- Change ped here (recommend to use different peds qb-target can go weird)
    if not HasModelLoaded(hash) then
        RequestModel(hash)
        Wait(10)
    end
    while not HasModelLoaded(hash) do 
        Wait(10)
    end
    hardNPC = CreatePed(5, hash, coords, heading, false, false)
    FreezeEntityPosition(hardNPC, true)
    SetEntityInvincible(hardNPC, true)
    SetBlockingOfNonTemporaryEvents(hardNPC, true)
    SetModelAsNoLongerNeeded(hash)
    exports['qb-target']:AddEntityZone('hardNPC', hardNPC, {
            name="hardNPC",
            debugPoly=false,
            useZ = true
                }, {
                options = {
                    {
                    event = "case:client:hardwareshopMenu",
                    icon = "far fa-comment",
                    label = "Talk to Howard",
                    },                                     
                },
                    job = {"all"},
                    distance = 2.5
                })  

end)
-- Hardware pawnshop menu
RegisterNetEvent('case:client:hardwareshopMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Digital Den",
            txt = "The wish Skinny mobile!",
            isMenuHeader = true
        },
        {
            header = "Sell to Shop",
            txt = "See current prices",
            params = {
                event = "case:client:sellHardItems",
            }
        },
        {
            header = "Browse Shop",
            txt = "See what we have to offer",
            params = {
                event = "inventory:client:OpenHardShop",
            }
        }, -- Add more choices here
        {
            header = "Exit",
            params = {
                event = "qb-menu:closeMenu"
            }
        },
    })
end)
-- Sell hardware items menu
RegisterNetEvent('case:client:sellHardItems', function()
    exports['qb-menu']:openMenu({
        {
            header = "Digital Den",
            txt = "Sell us your items!",
            isMenuHeader = true
        },
        {
            header = "$80 per Tablet",
            txt = "Eughhh.. Tablet users...",
            params = {
                event = "case:server:sellHardItems",
                isServer = true,
                args = 1
            }
        },
		{
            header = "$150 per iPhone",
            txt = "Think different, but not too different.",
            params = {
                event = "case:server:sellHardItems",
                isServer = true,
                args = 2
            }
        },
		{
            header = "$120 per Samsung Phone",
            txt = "Feel it, deal with it, then throw it away.",
            params = {
                event = "case:server:sellHardItems",
                isServer = true,
                args = 3
            }
        },
		{
            header = "$125 per Laptop",
            txt = "Who even uses laptops anymore..",
            params = {
                event = "case:server:sellHardItems",
                isServer = true,
                args = 4
            }
        }, -- Add more choices here
		{

            header = "< Return",
            params = {
                event = "case:client:hardwareshopMenu"
            }
        },
    })
end)

-- Open pawnshop
RegisterNetEvent('inventory:client:OpenHardShop')
AddEventHandler('inventory:client:OpenHardShop', function()
    local ShopItems = {}
    ShopItems.label = "Digital Den"
    ShopItems.items = Config.pawnshopItems
    ShopItems.slots = #Config.pawnshopItems
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Digital Den", ShopItems)
end)
