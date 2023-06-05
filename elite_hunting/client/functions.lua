Citizen.CreateThread(function()
    for k, v in pairs(Config.Zones) do
        if v["zoneShop"]["blip"]["enable"] then
            blip = AddBlipForCoord(vector3(v["zoneShop"]["coords"][1], v["zoneShop"]["coords"][2], v["zoneShop"]["coords"][3]))
            SetBlipSprite(blip, v["zoneShop"]["blip"]["sprite"])
            SetBlipDisplay(blip, v["zoneShop"]["blip"]["display"])
            SetBlipScale(blip, v["zoneShop"]["blip"]["scale"])
            SetBlipColour(blip, v["zoneShop"]["blip"]["colour"])
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v["zoneShop"]["label"])
            EndTextCommandSetBlipName(blip)
        end

        GetModel(v["zoneShop"]["model"])
        local shopOwner = CreatePed(5, v["zoneShop"]["model"], vector3(v["zoneShop"]["coords"][1], v["zoneShop"]["coords"][2], v["zoneShop"]["coords"][3]), v["zoneShop"]["coords"][4], false)
        PlaceObjectOnGroundProperly(shopOwner)
        SetEntityInvincible(shopOwner, true)
        SetEntityAsMissionEntity(shopOwner, true, true)
        SetBlockingOfNonTemporaryEvents(shopOwner, true)
        FreezeEntityPosition(shopOwner, true)
        SetModelAsNoLongerNeeded(v["zoneShop"]["model"])
    end

    for _, v in ipairs(Config.Restaurants) do
        if v["blip"]["enable"] then
            blip = AddBlipForCoord(vector3(v["coords"][1], v["coords"][2], v["coords"][3]))
            SetBlipSprite(blip, v["blip"]["sprite"])
            SetBlipDisplay(blip, v["blip"]["display"])
            SetBlipScale(blip, v["blip"]["scale"])
            SetBlipColour(blip, v["blip"]["colour"])
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v["label"])
            EndTextCommandSetBlipName(blip)
        end

        GetModel(v["model"])
        local restaurantOwner = CreatePed(5, v["model"], vector3(v["coords"][1], v["coords"][2], v["coords"][3]), v["coords"][4], false)
        PlaceObjectOnGroundProperly(restaurantOwner)
        SetEntityInvincible(restaurantOwner, true)
        SetEntityAsMissionEntity(restaurantOwner, true, true)
        SetBlockingOfNonTemporaryEvents(restaurantOwner, true)
        FreezeEntityPosition(restaurantOwner, true)
        SetModelAsNoLongerNeeded(v["model"])
    end
end)

CreateThread(function()
    for k, v in pairs(Config.Zones) do
        if v["zoneBlip"]["enableBackground"] then
            local huntingArea = AddBlipForRadius(v["zoneCoords"][1], v["zoneCoords"][2], v["zoneCoords"][3], v["zoneRadius"])
            SetBlipAlpha(huntingArea, 50)
            SetBlipColour(huntingArea, 0)
        end
        if v["zoneBlip"]["enableBlip"] then
            local huntingBlip = AddBlipForCoord(v["zoneCoords"][1], v["zoneCoords"][2], v["zoneCoords"][3])
            SetBlipSprite(huntingBlip, 432)
            SetBlipAsShortRange(huntingBlip, true)
            SetBlipScale(huntingBlip, 0.6)
            SetBlipColour(huntingBlip, 5)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v["zoneBlip"]["blipLabel"])
            EndTextCommandSetBlipName(huntingBlip)
        end
    end
end)

function GetModel(model)
    if not IsModelValid(model) then return end
    if not HasModelLoaded(model) then RequestModel(model) end
    while not HasModelLoaded(model) do Citizen.Wait(100) end
end

function LoadAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        RequestAnimDict(animDict)
        Citizen.Wait(100)
    end
end