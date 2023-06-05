-------------------------------
---------- CASE#2506 ----------
-------------------------------

local goldShopSpawned = false, false
local goldNPC

-- Creates blip for pawnshop (uncomment to add the blip)
--[[Citizen.CreateThread(function()
    local blip = AddBlipForCoord(-110.42, -8.43, 70.52) -- Change blip coords here
	SetBlipSprite(blip, 431)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 6)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Gold Dealer") -- Change blip name here
    EndTextCommandSetBlipName(blip)
end)]]

-- Spawns hardware NPC when you get close, deletes when you leave
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
            local pedCoords = GetEntityCoords(PlayerPedId()) 
            local spawnCoords = vector3(-625.3626, -1618.061, 32.010589) -- Change ped coords here (lower Z by 1 to have ped spawn on floor and not in air)
            local dst = #(spawnCoords - pedCoords)
            
            if dst < 100 and goldShopSpawned == false then
                TriggerEvent('case:spawnGoldPed',spawnCoords,82.471176) -- Ped heading 
                goldShopSpawned = true
            end
            if dst >= 101  then
                goldShopSpawned = false
                DeleteEntity(goldNPC)
            end
    end
end)
-- Spawn Hardware NPC
RegisterNetEvent('case:spawnGoldPed')
AddEventHandler('case:spawnGoldPed',function(coords,heading)
    local hash = GetHashKey('s_m_y_dealer_01') -- Change ped here (recommend to use different peds qb-target can go weird)
    if not HasModelLoaded(hash) then
        RequestModel(hash)
        Wait(10)
    end
    while not HasModelLoaded(hash) do 
        Wait(10)
    end
    goldNPC = CreatePed(5, hash, coords, heading, false, false)
    FreezeEntityPosition(goldNPC, true)
    SetEntityInvincible(goldNPC, true)
    SetBlockingOfNonTemporaryEvents(goldNPC, true)
    SetModelAsNoLongerNeeded(hash)
    exports['qb-target']:AddEntityZone('goldNPC', goldNPC, {
            name="goldNPC",
            debugPoly=false,
            useZ = true
                }, {
                options = {
                    {
                    event = "case:client:goldshopMenu",
                    icon = "far fa-comment",
                    label = "Talk to Leeroy",
                    },                                     
                },
                    job = {"all"},
                    distance = 2.5
                })  

end)

-- Hardware pawnshop menu
RegisterNetEvent('case:client:goldshopMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Gold Dealer",
            txt = "Goldie lookin' chain",
            isMenuHeader = true
        },
        {
            header = "Sell to Shop",
            txt = "See current prices",
            params = {
                event = "case:client:sellGoldItems",
            }
        },
        {
            header = "Browse Shop",
            txt = "See what we have to offer",
            params = {
                event = "inventory:client:OpenGoldShop",
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
RegisterNetEvent('case:client:sellGoldItems', function()
    exports['qb-menu']:openMenu({
        {
            header = "Gold Dealer",
            txt = "Sell me your gold man!",
            isMenuHeader = true
        },
        {
            header = "$4000 per Gold bar",
            txt = "Who doesn't love gold!",
            params = {
                event = "case:server:sellGoldItems",
                isServer = true,
                args = 1
            }
        },
        {
            header = "$3000 per Emerald",
            txt = "Who doesn't love emerald!",
            params = {
                event = "case:server:sellGoldItems",
                isServer = true,
                args = 2
            }
        }, -- Add more choices here
		{
            header = "$200 per Fishing Boot",
            txt = "*snifs*",
            params = {
                event = "case:server:sellGoldItems",
                isServer = true,
                args = 3
			}
        },
		{
            header = "$100 per Fishing Tin",
            txt = "Don't ask me what I do with these!",
            params = {
                event = "case:server:sellGoldItems",
                isServer = true,
                args = 4
			}
        },
		{
            header = "< Return",
            params = {
                event = "case:client:goldshopMenu"
            }
        },
    })
end)

-- Open pawnshop
RegisterNetEvent('inventory:client:OpenGoldShop')
AddEventHandler('inventory:client:OpenGoldShop', function()
    local ShopItems = {}
    ShopItems.label = "Gold Dealer"
    ShopItems.items = Config.pawnshopItems
    ShopItems.slots = #Config.pawnshopItems
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Gold Dealer", ShopItems)
end)
