local QBCore = exports['qb-core']:GetCoreObject()
local isLoggedIn = LocalPlayer.state['isLoggedIn']
local zones = {}
local currentArea = 0
local inSellerZone = false
local iswearingsuit = false
local oxgenlevell = 0
local Scrap = {}
local ScrapProp = Config.Propmodel
local peds = {}

local currentScrapLocation = {
    area = 0,
    blip = {
        radius = nil,
        label = nil
    }
}
local currentGear = {
    mask = 0,
    tank = 0,
    oxygen = 0,
    enabled = false
}

-- Functions

function loadScrap()
    RequestModel(ScrapProp)
    while not HasModelLoaded(ScrapProp) do
        RequestModel(ScrapProp)
        Wait(0)
    end
end

local function callCops()
    local call = math.random(1, 3)
    local chance = math.random(1, 3)
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    if call == chance then
        TriggerServerEvent('krp-scrapdiving:server:CallCops', coords)
    end
end
local function deleteGear()
	if currentGear.mask ~= 0 then
        DetachEntity(currentGear.mask, 0, 1)
        DeleteObject(currentGear.mask)
		currentGear.mask = 0
    end
	if currentGear.tank ~= 0 then
        DetachEntity(currentGear.tank, 0, 1)
        DeleteObject(currentGear.tank)
		currentGear.tank = 0
	end

end
local function gearAnim()
    RequestAnimDict("clothingshirt")
    while not HasAnimDictLoaded("clothingshirt") do
        Wait(0)
    end
	TaskPlayAnim(PlayerPedId(), "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
end
local function takeScrap(scrap)
    if Config.ScrapLocations[currentScrapLocation.area].coords.Scrap[scrap].PickedUp then return end
    local ped = PlayerPedId()
    local times = math.random(2, 5)
    if math.random() > Config.CopsChance then callCops() end
    FreezeEntityPosition(ped, true)
    QBCore.Functions.Progressbar("take_scrap", Lang:t("info.collecting_scrap"), times * 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_welding@male@base",
        anim = "base",
        flags = 17,
    }, {}, {}, function() -- Done
        Config.ScrapLocations[currentScrapLocation.area].coords.Scrap[scrap].PickedUp = true
        TriggerServerEvent('krp-scrapdiving:server:TakeScrap', currentScrapLocation.area, scrap, true)
        ClearPedTasks(ped)
        SetEntityDrawOutline(Scrap[scrap], false)
        DeleteObject(Scrap[scrap])
        FreezeEntityPosition(ped, false)
    end, function() -- Cancel
        ClearPedTasks(ped)
        FreezeEntityPosition(ped, false)
    end)
end

local function setScrapLocation(scrapdivingLocation)
    if currentScrapLocation.area ~= 0 then
        exports['qb-target']:RemoveZone('scrap_zone')
        for k in pairs(Config.ScrapLocations[currentScrapLocation.area].coords.Scrap) do
            if Config.UseTarget then
                exports['qb-target']:RemoveZone(k)
            else
                if next(zones) then zones[k]:destroy() end
            end
        end
    end
    currentScrapLocation.area = scrapdivingLocation
    for _, blip in pairs(currentScrapLocation.blip) do if blip then RemoveBlip(blip) end end
    local radiusBlip = AddBlipForRadius(Config.ScrapLocations[currentScrapLocation.area].coords.Area, 120.0)
    SetBlipRotation(radiusBlip, 0)
    SetBlipColour(radiusBlip, 36)
	SetBlipAlpha(radiusBlip, 180)
    currentScrapLocation.blip.radius = radiusBlip
    local labelBlip = AddBlipForCoord(Config.ScrapLocations[currentScrapLocation.area].coords.Area)
    SetBlipSprite(labelBlip, 761)
    SetBlipDisplay(labelBlip, 4)
    SetBlipScale(labelBlip, 0.7)
    SetBlipColour(labelBlip, 0)
    SetBlipAsShortRange(labelBlip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(Lang:t("info.scrapdiving_area"))
    EndTextCommandSetBlipName(labelBlip)
    currentScrapLocation.blip.label = labelBlip
    for k, v in pairs(Config.ScrapLocations[currentScrapLocation.area].coords.Scrap) do
        loadScrap()
        Scrap[k] = CreateObject(ScrapProp, v.coords.x, v.coords.y, v.coords.z, false, false, false)
        PlaceObjectOnGroundProperly(Scrap[k])
        FreezeEntityPosition(Scrap[k], true)
        if Config.UseTarget then
            exports['qb-target']:AddBoxZone('diving_scrap_zone_'..k, v.coords, 5.0, 5.0, {
                name = 'diving_scrap_zone_'..k,
                heading = v.heading,
                debugPoly = false,
                minZ = v.coords.z - 10,
                maxZ = v.coords.z + 2
            }, {
                options = {
                    {
                        label = Lang:t("info.collect_scrap"),
                        icon = 'fa-solid fa-water',
                        action = function()
                            takeScrap(k)
                        end
                    }
                },
                distance = 2.0
            })
        else
            zones[k] = BoxZone:Create(v.coords, 5.0, 5.0, {
                name = 'diving_scrap_zone_'..k,
                heading = v.heading,
                debugPoly = false,
                minZ = v.coords.z - 10,
                maxZ = v.coords.z + 2
            })
            zones[k]:onPlayerInOut(function(inside)
                if inside then
                    currentArea = k
                    exports['qb-core']:DrawText(Lang:t("info.collect_scrap_dt"))
                else
                    currentArea = 0
                    exports['qb-core']:HideText()
                end
            end)
        end
    end
	
    local CircleZone = CircleZone:Create(Config.ScrapLocations[currentScrapLocation.area].coords.Area, 120.0, {
        name="scrap_zone",
        debugPoly=false,
        useZ = true,
    })
    local combo_scrap = ComboZone:Create({CircleZone}, {name="combo_scrap", debugPoly=false})
    combo_scrap:onPlayerInOut(function(isPointInside)
        if isPointInside then
            while isPointInside do
                local coords = GetEntityCoords(PlayerPedId())
                for _,v in pairs(Scrap) do
                    local loc = GetEntityCoords(v)
                    if #(loc - coords) < 25 then
                        SetEntityDrawOutline(v, true)
                        SetEntityDrawOutlineColor(255, 255, 255, 0)
                        SetEntityDrawOutlineShader(1)
                    else
                        SetEntityDrawOutline(v, false)
                    end
                end
                Wait(1000)
            end
        else
            for _,v in pairs(Scrap) do
                SetEntityDrawOutline(v, false)
            end
        end
    end)
end

local function sellScrap()
    local playerPed = PlayerPedId()
    LocalPlayer.state:set("inv_busy", true, true)
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_STAND_IMPATIENT", 0, true)
    QBCore.Functions.Progressbar("sell_scrap_items", Lang:t("info.checking_pockets"), math.random(2000, 4000), false, true, {}, {}, {}, {}, function() -- Done
        ClearPedTasks(playerPed)
        TriggerServerEvent('krp-scrapdiving:server:SellScrap')
        LocalPlayer.state:set("inv_busy", false, true)
    end, function() -- Cancel
        ClearPedTasksImmediately(playerPed)
        QBCore.Functions.Notify(Lang:t("error.canceled"), "error")
        LocalPlayer.state:set("inv_busy", false, true)
    end)
end

local function createSeller()
    for i = 1, #Config.SellLocations do
        local current = Config.SellLocations[i]
        current.model = type(current.model) == 'string' and GetHashKey(current.model) or current.model
        RequestModel(current.model)
        while not HasModelLoaded(current.model) do
            Wait(0)
        end
        local currentCoords = vector4(current.coords.x, current.coords.y, current.coords.z - 1, current.coords.w)
        peds[i] = CreatePed(0, current.model, currentCoords, false, false)
        FreezeEntityPosition(peds[i], true)
        SetEntityInvincible(peds[i], true)
        SetBlockingOfNonTemporaryEvents(peds[i], true)
        if Config.UseTarget then
            exports['qb-target']:AddTargetEntity(peds[i], {
                options = {
                    {
                        label = Lang:t("info.sell_scrap"),
                        icon = 'fa-solid fa-dollar-sign',
                        action = function()
                            sellScrap()
                        end
                    }
                },
                distance = 2.0
            })
        else
            local zone = BoxZone:Create(current.coords.xyz, current.zoneOptions.length, current.zoneOptions.width, {
                name = 'diving_scrap_seller_'..i,
                heading = current.coords.w,
                debugPoly = false,
                minZ = current.coords.z - 1.5,
                maxZ = current.coords.z + 1.5
            })
            zone:onPlayerInOut(function(inside)
                if inside then
                    inSellerZone = true
                    exports['qb-core']:DrawText(Lang:t("info.sell_scrap_dt"))
                else
                    inSellerZone = false
                    exports['qb-core']:HideText()
                end
            end)
        end
    end
end

-- Events

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('krp-scrapdiving:server:GetDivingConfig', function(config, area)
        Config.ScrapLocations = config
        setScrapLocation(area)
        createSeller()
        isLoggedIn = true
    end)
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    isLoggedIn = false
end)

RegisterNetEvent('krp-scrapdiving:client:NewLocations', function()
    QBCore.Functions.TriggerCallback('krp-scrapdiving:server:GetDivingConfig', function(config, area)
        Config.ScrapLocations = config
        setScrapLocation(area)
    end)
end)

RegisterNetEvent('krp-scrapdiving:client:UpdateScrap', function(area, scrap, bool)
    Config.ScrapLocations[area].coords.Scrap[scrap].PickedUp = bool
end)

RegisterNetEvent('krp-scrapdiving:client:CallCops', function(coords, msg)
    PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0, 0, 1)
    TriggerEvent("chatMessage", Lang:t("error.911_chatmessage"), "error", msg)
    local transG = 100
    local blip = AddBlipForRadius(coords.x, coords.y, coords.z, 100.0)
    SetBlipSprite(blip, 9)
    SetBlipColour(blip, 1)
    SetBlipAlpha(blip, transG)
    SetBlipAsShortRange(blip, false)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(Lang:t("info.blip_text"))
    EndTextCommandSetBlipName(blip)
    while transG ~= 0 do
        Wait(180 * 4)
        transG = transG - 1
        SetBlipAlpha(blip, transG)
        if transG == 0 then
            SetBlipSprite(blip, 2)
            RemoveBlip(blip)
            return
        end
    end
end)

RegisterNetEvent("krp-scrapdiving:client:setoxygenlevel", function()
    if oxgenlevell == 0 then
       oxgenlevell = Config.oxygenlevel -- oxygenlevel
       QBCore.Functions.Notify(Lang:t("success.tube_filled"), 'success')
       TriggerServerEvent('krp-scrapdiving:server:removeItemAfterFill')
    else
        QBCore.Functions.Notify(Lang:t("error.oxygenlevel", {oxygenlevel = oxgenlevell}), 'error')
    end
end)
function DrawText2(text)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextScale(0.0, 0.45)
	SetTextDropshadow(1, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
    DrawText(0.45, 0.90)
end

RegisterNetEvent('krp-scrapdiving:client:UseGear', function()
    local ped = PlayerPedId()
    if iswearingsuit == false then
        if oxgenlevell > 0 then
            iswearingsuit = true
            if not IsPedSwimming(ped) and not IsPedInAnyVehicle(ped) then
                gearAnim()
                QBCore.Functions.Progressbar("equip_gear", Lang:t("info.put_suit"), 5000, false, true, {}, {}, {}, {},
                    function() -- Done
                        deleteGear()
                        local maskModel = `p_d_scuba_mask_s`
                        local tankModel = `p_s_scuba_tank_s`
                        RequestModel(tankModel)
                        while not HasModelLoaded(tankModel) do
                            Wait(0)
                        end
                        currentGear.tank = CreateObject(tankModel, 1.0, 1.0, 1.0, 1, 1, 0)
                        local bone1 = GetPedBoneIndex(ped, 24818)
                        AttachEntityToEntity(currentGear.tank, ped, bone1, -0.25, -0.25, 0.0, 180.0, 90.0, 0.0, 1, 1, 0,
                            0, 2, 1)

                        RequestModel(maskModel)
                        while not HasModelLoaded(maskModel) do
                            Wait(0)
                        end
                        currentGear.mask = CreateObject(maskModel, 1.0, 1.0, 1.0, 1, 1, 0)
                        local bone2 = GetPedBoneIndex(ped, 12844)
                        AttachEntityToEntity(currentGear.mask, ped, bone2, 0.0, 0.0, 0.0, 180.0, 90.0, 0.0, 1, 1, 0, 0, 2
                            , 1)
                        SetEnableScuba(ped, true)
                        SetPedMaxTimeUnderwater(ped, 2000.00)
                        currentGear.enabled = true
                        ClearPedTasks(ped)
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                        oxgenlevell = oxgenlevell
                        Citizen.CreateThread(function()
                            while currentGear.enabled do
                                if IsPedSwimmingUnderWater(PlayerPedId()) then
                                    oxgenlevell = oxgenlevell - 1
                                    if oxgenlevell == 90 then
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                                    elseif oxgenlevell == 80 then
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                                    elseif oxgenlevell == 70 then
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                                    elseif oxgenlevell == 60 then
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                                    elseif oxgenlevell == 50 then
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                                    elseif oxgenlevell == 40 then
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                                    elseif oxgenlevell == 30 then
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                                    elseif oxgenlevell == 20 then
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                                    elseif oxgenlevell == 10 then
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "breathdivingsuit", 0.25)
                                    elseif oxgenlevell == 0 then
                                        --   deleteGear()
                                        SetEnableScuba(ped, false)
                                        SetPedMaxTimeUnderwater(ped, 1.00)
                                        currentGear.enabled = false
                                        iswearingsuit = false
                                        TriggerServerEvent("InteractSound_SV:PlayOnSource", nil, 0.25)
                                    end
                                end
                                Wait(1000)
                            end
                        end)
                    end)
            else
                QBCore.Functions.Notify(Lang:t("error.not_standing_up"), 'error')
            end
        else
            QBCore.Functions.Notify(Lang:t("error.need_otube"), 'error')
        end
    elseif iswearingsuit == true then
        gearAnim()
        QBCore.Functions.Progressbar("remove_gear", Lang:t("info.pullout_suit"), 5000, false, true, {}, {}, {}, {},
            function() -- Done
                SetEnableScuba(ped, false)
                SetPedMaxTimeUnderwater(ped, 50.00)
                currentGear.enabled = false
                ClearPedTasks(ped)
                deleteGear()
                QBCore.Functions.Notify(Lang:t("success.took_out"))
                TriggerServerEvent("InteractSound_SV:PlayOnSource", nil, 0.25)
                iswearingsuit = false
                oxgenlevell = oxgenlevell
            end)
    end
end)

-- Threads

CreateThread(function()
    if isLoggedIn then
        QBCore.Functions.TriggerCallback('krp-scrapdiving:server:GetDivingConfig', function(config, area)
            Config.ScrapLocations = config
            setScrapLocation(area)
            createSeller()
        end)
    end
    if Config.UseTarget then return end
    while true do
        local sleep = 1000
        if isLoggedIn then
            if currentArea ~= 0 then
                sleep = 0
                if IsControlJustPressed(0, 51) then -- E
                    takeScrap(currentArea)
                    exports['qb-core']:KeyPressed()
                    Wait(500)
                    exports['qb-core']:HideText()
                    sleep = 3000
                end
            end

            if inSellerZone then
                sleep = 0
                if IsControlJustPressed(0, 51) then -- E
                    sellScrap()
                    exports['qb-core']:KeyPressed()
                    Wait(500)
                    exports['qb-core']:HideText()
                    sleep = 3000
                end
            end
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        Wait(0)
      if currentGear.enabled == true and iswearingsuit == true then
        if IsPedSwimmingUnderWater(PlayerPedId()) then
          DrawText2('Air Time Left:' ..oxgenlevell)
        end
     end
    end
end)