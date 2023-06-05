-------------------------------
---------- CASE#2506 ----------
-------------------------------

local pawnShopSpawned = false, false
local pawnNPC

-- Creates blip for pawnshop
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(175.45, -1319.9, 29.36) -- Change blip coords here
	SetBlipSprite(blip, 431)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 30)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Cash Converters") -- Change blip name here
    EndTextCommandSetBlipName(blip)
end)

-- Spawns pawn NPC when you get close, deletes when you leave
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
            local pedCoords = GetEntityCoords(PlayerPedId()) 
            local spawnCoords = vector3(184.48, -1318.71, 28.33) -- Change ped coords here (lower Z by 1 to have ped spawn on floor and not in air)
            local dst = #(spawnCoords - pedCoords)
            
            if dst < 80 and pawnShopSpawned == false then
                TriggerEvent('case:spawnPawnPed',spawnCoords,234.35) -- Ped heading 
                pawnShopSpawned = true
            end
            if dst >= 81  then
                pawnShopSpawned = false
                DeleteEntity(pawnNPC)
            end
    end
end)
-- Spawn NPC
RegisterNetEvent('case:spawnPawnPed')
AddEventHandler('case:spawnPawnPed',function(coords,heading)
    local hash = GetHashKey('g_m_m_armboss_01') -- Change ped here (recommend to use different peds qb-target can go weird)
    if not HasModelLoaded(hash) then
        RequestModel(hash)
        Wait(10)
    end
    while not HasModelLoaded(hash) do 
        Wait(10)
    end

    pawnNPC = CreatePed(5, hash, coords, heading, false, false)
    FreezeEntityPosition(pawnNPC, true)
    SetEntityInvincible(pawnNPC, true)
    SetBlockingOfNonTemporaryEvents(pawnNPC, true)
    SetModelAsNoLongerNeeded(hash)
    exports['qb-target']:AddEntityZone('pawnNPC', pawnNPC, {
            name="pawnNPC",
            debugPoly=false,
            useZ = true
                }, {
                options = {
                    {
                    event = "case:client:pawnshopMenu",
                    icon = "far fa-comment",
                    label = "Cash Converters",
                    },                                     
                },
                    job = {"all"},
                    distance = 2.5
                })  

end) 
-- Pawnshop menu
RegisterNetEvent('case:client:pawnshopMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Cash Converters",
            txt = "We take your money so nobody else can!",
            isMenuHeader = true
        },
        {
            header = "Sell to Shop",
            txt = "See current prices",
            params = {
                event = "case:client:sellPawnItems",
            }
        },
        -- {
            -- header = "Browse Shop",
            -- txt = "See what we have to offer",
            -- params = {
                -- event = "inventory:client:OpenPawnShop",
            -- }
        -- }, -- Add more choices here
        {
            header = "Exit",
            params = {
                event = "qb-menu:closeMenu"
            }
        },
    })
end)
-- Sell pawn items menu
RegisterNetEvent('case:client:sellPawnItems', function()
    exports['qb-menu']:openMenu({
        {
            header = "Cash Converters",
            txt = "Sell us your items!",
            isMenuHeader = true
        },
        {
            header = "$100 per piece of Metal Scrap",
            txt = "Guess your not a scrap collector?",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 1
            }
        },
        {
            header = "$75 per piece of Iron",
            txt = "That must weigh alot!",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 2

            }
        },
        {
            header = "$38 per piece of Steel",
            txt = "But is it stainless?",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 3
            }
        },
		{
            header = "$30 per piece of Aluminum",
            txt = "Nice, now I can make more cans!",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 4
            }
        },
		{
            header = "$75 per piece of Copper",
            txt = "You been stealing house pipes?",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 5
            }
        },
		{
            header = "$25 per piece of Plastic",
            txt = "I guess plastic could be useful..",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 6
            }
        },
		{
            header = "$100 per piece of Rubber",
            txt = "Insert whitty comment here..",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 7
            }
        },
		{
            header = "$625 per Gold Chain",
            txt = "Pretty basic but the weight is okay.",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 8
            }
        },
		{
            header = "$500 per Rolex",
            txt = "All I ever wanted was a Rolly Rolly",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 9
            }
        },
		{
            header = "$1,000 per 10K Gold Chain",
            txt = "Goldie lookin chain..",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 10
            }
        },
		{
            header = "$500 per Diamond",
            txt = "Diamonds are a girls bestfriend!",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 11
            }
        },
		{
            header = "$400 per Diamond Ring",
            txt = "A ring is nicer tho!",
            params = {
                event = "case:server:sellPawnItems",
                isServer = true,
                args = 12
            }
        }, -- Add more choices here
		{

            header = "< Return",
            params = {
                event = "case:client:pawnshopMenu"
            }
        },
    })
end)

-- Open pawnshop
RegisterNetEvent('inventory:client:OpenPawnShop')
AddEventHandler('inventory:client:OpenPawnShop', function()
    local ShopItems = {}
    ShopItems.label = "Cash Converters"
    ShopItems.items = Config.pawnshopItems
    ShopItems.slots = #Config.pawnshopItems
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Cash Converters_", ShopItems)
end)
