local assert = assert
local MenuV = assert(MenuV)

    local QBCore = exports['qb-core']:GetCoreObject()



----Blips---- Top blips are for badge locations

Citizen.CreateThread(function()
    --[[  for k, v in pairs(Config.Badge) do           
          local blip = AddBlipForCoord(v.location)
          SetBlipAsShortRange(blip, true)
          SetBlipSprite(blip, 269)
       --   SetBlipColour(blip, 46)
          SetBlipScale(blip, 0.8)
          SetBlipDisplay(blip, 6)

          BeginTextCommandSetBlipName('STRING')
          AddTextComponentString(v.label)
          EndTextCommandSetBlipName(blip)
      end]]

 for k, v in pairs(Config.CardshopLocation) do
     local blip = AddBlipForCoord(v.location)
     SetBlipAsShortRange(blip, true)
     SetBlipSprite(blip, 484)
     SetBlipColour(blip, 61)
     SetBlipScale(blip, 0.8)
     SetBlipDisplay(blip, 6)
     BeginTextCommandSetBlipName('STRING')
     AddTextComponentString(v.label)
     EndTextCommandSetBlipName(blip)
  end
end)


-- function DisplayTooltip(suffix)
    -- SetTextComponentFormat('STRING')
    -- AddTextComponentString('Press ~INPUT_PICKUP~ To ' .. suffix)
    -- EndTextCommandDisplayHelp(0, 0, 1, -1)
-- end

--- This controls keypress with tooltip cuz FFFF 3dtext
--[[Citizen.CreateThread(function()
    while true do
        Wait(0)
        local sleep = true
        local playerCoords = GetEntityCoords(PlayerPedId())
        
        for k, v in pairs(Config.CardshopLocation) do
            local loc = v.location
            local distance = #(playerCoords - loc)
            if distance < 2.5 then
                sleep = false
                DisplayTooltip('Sell Items')
                if IsControlJustPressed(1, 38) then
                    TriggerEvent('Cards:client:openMenu')
                    end
                end
            end
        
        for k, v in pairs(Config.Badge) do
            local loc = v.location
            local distance = #(playerCoords - loc)
            if distance < 2.5 then
                sleep = false
                DisplayTooltip('Trade for a '..v.label)
                if IsControlJustPressed(1, 38) then
            TriggerServerEvent('Cards:server:badges', k)
                end
            end
        end
    end
end)]]



----PolyZone----
-- CreateThread(function()
    -- exports['qb-target']:AddBoxZone("ashketchum", Config.CardshopLocation['Cardshop'].location, 2.2, 3.0, {
        -- name="ashketchum",
        -- heading=324,
        -- debugPoly=true
          -- }, {
              -- options = {
                --[[{
                event = 'qb-shops:client:open',--- you need to set this up in your shops if you want a shop here or this can stay uncommented for just a sell location
                icon = "fas fa-card",
                label = "Purchase Menu",
                },]]
                -- {
                -- event = 'cards:client:buybox',-- MUST USE THIS EVENT CANNOT GET POKEBOX ANY OTHER WAY
                -- icon = "fas fa-card",
                -- label = "Purchase Poke`Box ($4000)",
                -- },
                -- {
                -- event = 'Cards:client:openMenu',
                -- icon = "fas fa-card",
                -- label = "Sell Menu",
                -- },                    
              -- },
              -- job = {"all"},
              -- distance = 1.7
          -- })
-- end)


-- RegisterNetEvent('cards:client:buybox', function()
    -- TriggerServerEvent('cards:server:buybox')
-- end)

----------------MENU---------------------------------

--Config

-- local menu = MenuV:CreateMenu(false, 'Player Items', 'centerright', 155, 0, 0, 'size-125', 'none', 'menuv', 'test3')
-- local menu2 = menu:InheritMenu({title = false, subtitle = 'Card Shop', theme = 'default' })
-- local menu_button = menu:AddButton({ icon = '🔖', label = 'Sell Cards/Badges', value = menu2, description = 'View List Of Items' })


--------------------------------------------------------------------


-- RegisterNetEvent('Cards:client:openMenu')
-- AddEventHandler('Cards:client:openMenu', function()
    -- MenuV:OpenMenu(menu)
-- end)

-- menu_button:On('select', function(item)
    -- menu2:ClearItems(true)
    -- QBCore.Functions.TriggerCallback('Cards:server:get:drugs:items', function(CardsResult)
        -- for k, v in pairs(CardsResult) do
            -- local itemName = v['Item']
            -- local itemCount = v['Amount']
            -- local price = Config.CardshopItems[itemName]
            -- price = math.ceil(price * itemCount)

            -- local menu_button2 = menu2:AddButton({
                -- label = itemName .. " | Amount : " ..itemCount.." | $" .. price,
                -- name = itemName,
                -- value = {name = itemName, count = itemCount, price = price},

            -- select = function(btn)
                -- local select = btn.Value -- get all the values from v!
                -- TriggerServerEvent('Cards:sellItem', select.name, select.count, select.price)
                -- menu2:ClearItems(false)
                
            -- end})
        -- end
    -- end)
-- end)

---Other Events ---

RegisterNetEvent("Cards:Client:OpenPack")
AddEventHandler("Cards:Client:OpenPack", function(packtype) 
    RequestAnimDict("mp_arresting")
      while (not HasAnimDictLoaded("mp_arresting")) do
      Wait(0)
      end
          TaskPlayAnim(PlayerPedId(), "mp_arresting" ,"a_uncuff" ,8.0, -8.0, -1, 1, 0, false, false, false )
          local PedCoords = GetEntityCoords(PlayerPedId())
          propcards = CreateObject(GetHashKey('prop_boosterpack_01'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
          AttachEntityToEntity(propcards, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.1, 0.0, 70.0, 10.0, 90.0, false, false, false, false, 2, true)
    QBCore.Functions.Progressbar("drink_something", "Opening booster pack..", 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "dealfour", 0.9) 
        Wait(500)
        TriggerEvent('cards:focus', packtype)
        DeleteEntity(propcards)
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent('Cards:Server:RemoveItem', packtype)
    end)
end)

RegisterNetEvent("Cards:Client:OpenCards")
AddEventHandler("Cards:Client:OpenCards", function() 
    RequestAnimDict("mp_arresting")
        while (not HasAnimDictLoaded("mp_arresting")) do
        Wait(0)
        end
        TaskPlayAnim(PlayerPedId(), "mp_arresting" ,"a_uncuff" ,8.0, -8.0, -1, 1, 0, false, false, false )
          local PedCoords = GetEntityCoords(PlayerPedId())
          propbox = CreateObject(GetHashKey('prop_boosterbox_01'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
          AttachEntityToEntity(propbox, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.1, 0.0, 0.0, 10.0, 90.0, false, false, false, false, 2, true)
        Wait(5)
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "boxopen", 0.4)
    QBCore.Functions.Progressbar("drink_something", "Opening booster box..", 9500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        Wait(1)
        DeleteEntity(propbox)
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("Cards:client:UseBox")
AddEventHandler("Cards:client:UseBox", function(BagId)
    RequestAnimDict(Config.Dict)
        while (not HasAnimDictLoaded(Config.Dict)) do
        Wait(0)
        end
    TaskPlayAnim(PlayerPedId(), Config.Dict , Config.Anim ,8.0, -8.0, -1, 1, 0, false, false, false )
    local PedCoords = GetEntityCoords(PlayerPedId())
    deckbox = CreateObject(GetHashKey('prop_deckbox_01'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
    AttachEntityToEntity(deckbox, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.1, 0.0, 0.0, 10.0, 90.0, false, false, false, false, 2, true)
    QBCore.Functions.Notify("Box is being opened...", "success")
    QBCore.Functions.Progressbar("use_bag", "Box is being opened", 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        TriggerEvent('cards:opendeckbox', BagId)
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "snap", 1.2)
        TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Notify("Box has been opened successfully", "success")
        Wait(10000)
        DeleteEntity(deckbox)
        ClearPedTasks(PlayerPedId())
    end)
end)