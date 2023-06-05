-------------------------------
---------- CASE#2506 ----------
-------------------------------

local QBCore = exports['qb-core']:GetCoreObject()
local smelterSpawned = false
local smelterNPC

-- Creates blip for pawnshop (uncomment to add the blip)
--[[Citizen.CreateThread(function()
    local blip = AddBlipForCoord(1107.51, -1992.46, 30.97) -- Change blip coords here
	SetBlipSprite(blip, 436)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 6)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Gold Smelter") -- Change blip name here
    EndTextCommandSetBlipName(blip)
end)]]

-- Spawn NPC When you get close, delete when you leave
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
            local pedCoords = GetEntityCoords(PlayerPedId()) 
            local spawnCoords = vector3(1107.32, -1991.72, 29.97)
            local dst = #(spawnCoords - pedCoords)
            
            if dst < 100 and smelterSpawned == false then
                TriggerEvent('case:spawnPed',spawnCoords,198.03)
                smelterSpawned = true
            end
            if dst >= 101  then
                smelterSpawned = false
                DeleteEntity(smelterNPC)
            end
    end
end)
-- Spawn NPC
RegisterNetEvent('case:spawnPed')
AddEventHandler('case:spawnPed',function(coords,heading)
    local hash = GetHashKey('s_m_y_construct_01')
    if not HasModelLoaded(hash) then
        RequestModel(hash)
        Wait(10)
    end
    while not HasModelLoaded(hash) do 
        Wait(10)
    end

    smelterNPC = CreatePed(5, hash, coords, heading, false, false)
    FreezeEntityPosition(smelterNPC, true)
    SetEntityInvincible(smelterNPC, true)
    SetBlockingOfNonTemporaryEvents(smelterNPC, true)
    SetModelAsNoLongerNeeded(hash)
    exports['qb-target']:AddEntityZone('smelterNPC', smelterNPC, {
            name="smelterNPC",
            debugPoly=false,
            useZ = true
                }, {
                options = {
                    {
                    event = "case:client:mainSmeltingMenu",
                    icon = "far fa-comment",
                    label = "Speak to Gary",
                    },                                     
                },
                    job = {"all"},
                    distance = 2.5
                })  

end)

-- Smelter menu
RegisterNetEvent('case:client:mainSmeltingMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Gold Smelter",
            txt = "I can trade your items for gold?</p>I also sell crafting blueprints!",
            isMenuHeader = true
        },
        {
            header = "Trade Items",
            txt = "Trade your items for gold bars.",
            params = {
                event = "case:client:SmeltMenu",
            }
        },
		-- { -- Disabled
            -- header = "Crafting Blueprints",
            -- txt = "Buy crafting blueprints from me.",
            -- params = {
                -- event = "inventory:client:OpenSmeltShop",
            -- }
        -- },
        {
            header = "Exit",
            params = {
                event = "qb-menu:closeMenu"
            }
        },
    })
end)

-- Gold smelting menu
RegisterNetEvent('case:client:SmeltMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Gold Trading",
            txt = "Trade your items for gold bars.",
            isMenuHeader = true
        },
        {
            header = "Trade Rolex's",
            txt = "21 Rolex's per bar.",
            params = {
                event = "case:server:smeltGold",
                isServer = true,
                args = 1
            }
        },
        {
            header = "Trade Gold Chain's",
            txt = "31 Gold Chain's per bar.",
            params = {
                event = "case:server:smeltGold",
                isServer = true,
                args = 2

            }
        },
        {
            header = "Trade 10K Gold Chain's",
            txt = "16 10K Gold Chain's per bar.",
            params = {
                event = "case:server:smeltGold",
                isServer = true,
                args = 3
            }
        },
        {
            header = "< Go Back",
            params = {
                event = "case:client:mainProcessMenu"
            }
        },
    })
end)

RegisterNetEvent('inventory:client:OpenSmeltShop')
AddEventHandler('inventory:client:OpenSmeltShop', function()
    local ShopItems = {}
    ShopItems.label = "Gold Smelter"
    ShopItems.items = Config.smelterItems
    ShopItems.slots = #Config.smelterItems
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Gold Smelter", ShopItems)
end)