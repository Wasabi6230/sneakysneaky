QBCore = exports["qb-core"]:GetCoreObject()
PlayerData = QBCore.Functions.GetPlayerData()
local baitCooldown, insideHuntingArea, huntingArea, activeHunting, legalAnimals, illegalAnimals, animalsSpawned, animalsKilled = 0, false, false, nil, {}, {}, 0, 0

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() PlayerData = QBCore.Functions.GetPlayerData() end)
RegisterNetEvent('QBCore:Client:OnPlayerUnload', function() PlayerData = {} end)
RegisterNetEvent('QBCore:Player:SetPlayerData', function(val) PlayerData = val end)

Citizen.CreateThread(function()
    for k, v in pairs(Config.Zones) do
        k = CircleZone:Create(vector3(v["zoneCoords"][1], v["zoneCoords"][2], v["zoneCoords"][3]), v["zoneRadius"], {
            name = k,
            heading = 328.0,
            debugPoly = v["zoneDebug"],
            useZ = v["zoneUseZ"],
        })

        k:onPlayerInOut(function(isPointInside)
            if isPointInside then
                insideHuntingArea = true
                huntingArea = k.name
            else
                if insideHuntingArea then
                    local data = {abuse = true}
                    TriggerServerEvent("elite_hunting:server:giveBack", data)
                    insideHuntingArea = false
                    huntingArea = nil
                end
            end
        end)
    end
end)

Citizen.CreateThread(function()
    for k, v in pairs(Config.Zones) do
        local insideHuntingShop = CircleZone:Create(vector3(v["zoneShop"]["coords"][1], v["zoneShop"]["coords"][2], v["zoneShop"]["coords"][3]), v["zoneShop"]["radius"], {
            name = "insideHuntingShop",
            heading = 328.0,
            debugPoly = v["zoneShop"]["debug"],
            useZ = v["zoneShop"]["useZ"],
        })

        insideHuntingShop:onPlayerInOut(function(isPointInside)
            if isPointInside then
                exports["qb-target"]:AddTargetModel(v["zoneShop"]["model"], {
                    options = {
                        {
                            type = "client",
                            event = "elite_hunting:client:openShop",
                            icon = "fas fa-cash-register",
                            label = v["zoneShop"]["buttonText"]
                        },
                        {
                            type = "server",
                            event = "elite_hunting:server:giveBack",
                            icon = "fas fa-sack-dollar",
                            label = v["zoneShop"]["buttonText2"],
                            abuse = false
                        },
                        {
                            type = "client",
                            event = "elite_hunting:client:startHunting",
                            icon = "fas fa-bullseye",
                            label = v["zoneShop"]["buttonText3"]
                        }
                    },
                    distance = v["zoneShop"]["radius"]
                })
            else
                exports["qb-menu"]:closeMenu()
            end
        end)
    end
end)

Citizen.CreateThread(function()
    for _, v in ipairs(Config.Restaurants) do
        local insideHuntingRestaurant = CircleZone:Create(vector3(v["coords"][1], v["coords"][2], v["coords"][3]), v["radius"], {
            name = "insideHuntingRestaurant",
            heading = 328.0,
            debugPoly = v["debug"],
            useZ = v["useZ"],
        })

        insideHuntingRestaurant:onPlayerInOut(function(isPointInside)
        if isPointInside then
            exports["qb-target"]:AddTargetModel(v["model"], {
                options = {
                    {
                        type = "server",
                        event = "elite_hunting:server:sell",
                        icon = "fas fa-sack-dollar",
                        label = v["buttonText"]
                    }
                },
                distance = v["radius"]
            })
            else
                exports["qb-menu"]:closeMenu()
            end
        end)
    end
end)

Citizen.CreateThread(function()
    for k, v in pairs(Config.LegalHuntingAnimals) do
        exports["qb-target"]:AddTargetModel(v["model"], {
            options = {
                {
                    type = "client",
                    event = "elite_hunting:client:skinAnimal",
                    icon = "far fa-hand-paper",
                    label = "Skin",
                    legal = true
                }
            },
            job = {"all"},
            distance = Config.Utils["SkinningRadius"]
        })
    end
end)

Citizen.CreateThread(function()
    for k, v in pairs(Config.IllegalHuntingAnimals) do
        exports["qb-target"]:AddTargetModel(v["model"], {
            options = {
                {
                    type = "client",
                    event = "elite_hunting:client:skinAnimal",
                    icon = "far fa-hand-paper",
                    label = "Skin",
                    legal = false
                }
            },
            job = {"all"},
            distance = Config.Utils["SkinningRadius"]
        })
    end
end)

RegisterNetEvent("elite_hunting:client:startBait")
AddEventHandler("elite_hunting:client:startBait", function()
    if insideHuntingArea then
        if baitCooldown == 0 then
            local ped = PlayerPedId()
            LoadAnimDict("amb@medic@standing@kneel@base")
            TaskPlayAnim(ped, "amb@medic@standing@kneel@base", "base" , 8.0, -8.0, -1, 1, 0, false, false, false)
            QBCore.Functions.Progressbar("hunting_bait", Config["Translations"]["placing_bait"], Config.Utils["BaitPlacing"], false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                baitCooldown = Config.Utils["BaitCooldown"]
                ClearPedTasks(PlayerPedId())
                QBCore.Functions.Notify(Config["Translations"]["wait"], "success")
                Citizen.Wait(Config.TimeBeforeBaitStarts)
                SpawnRandomAnimals("illegal")
                CooldownCalculator()
                TriggerServerEvent("elite_hunting:server:baitPlaced")
                if cb then
                    cb()
                end
            end, function()
                ClearPedTasks(ped)
                QBCore.Functions.Notify(Config["Translations"]["place_failed"], "success")
            end)
        end
    else
        QBCore.Functions.Notify(Config["Translations"]["too_far_away"], "error")
    end
end)

RegisterNetEvent("elite_hunting:client:skinAnimal")
AddEventHandler("elite_hunting:client:skinAnimal", function(data)
    local hasItem = QBCore.Functions.HasItem(Config.UsedWeapons["knife"])
    -- QBCore.Functions.TriggerCallback("QBCore:HasItem", function(hasItem) (OLD DEPRECATED CODE, UNCOMMENT AND COMMENT THE LOCAL ABOVE IF USING PREVIOUS QBCORE VERSIONS)
        if hasItem then
            SkinAnimal(data["legal"])
        else
            QBCore.Functions.Notify(Config["Translations"]["knife_error"], "error")
        end
    -- end, Config.UsedWeapons["knife"])
end)

RegisterNetEvent("elite_hunting:client:startHunting")
AddEventHandler("elite_hunting:client:startHunting", function()
    if Config.LicenseSettings["requireWeaponLicense"] then
        if Config.LicenseSettings["licenseStartHunting"] then
            if PlayerData.metadata["licences"][Config.LicenseSettings["weaponLicense"]] then
                local hasItem = QBCore.Functions.HasItem(Config.UsedWeapons["weapon"])
                -- QBCore.Functions.TriggerCallback("QBCore:HasItem", function(hasItem)
                    if hasItem then
                        StartHuntingSession()
                    else
                        QBCore.Functions.Notify(Config["Translations"]["rifle_error"], "error")
                    end
                -- end, Config.UsedWeapons["weapon"])
            else
                QBCore.Functions.Notify(Config["Translations"]["no_license"], "error")
            end
        else
            local hasItem = QBCore.Functions.HasItem(Config.UsedWeapons["weapon"])
            -- QBCore.Functions.TriggerCallback("QBCore:HasItem", function(hasItem)
                if hasItem then
                    StartHuntingSession()
                else
                    QBCore.Functions.Notify(Config["Translations"]["rifle_error"], "error")
                end
            -- end, Config.UsedWeapons["weapon"])
        end
    else
        local hasItem = QBCore.Functions.HasItem(Config.UsedWeapons["weapon"])
        -- QBCore.Functions.TriggerCallback("QBCore:HasItem", function(hasItem)
            if hasItem then
                StartHuntingSession()
            else
                QBCore.Functions.Notify(Config["Translations"]["rifle_error"], "error")
            end
        -- end, Config.UsedWeapons["weapon"])
    end
end)

RegisterNetEvent("elite_hunting:client:stopHunting")
AddEventHandler("elite_hunting:client:stopHunting", function()
    StopHunting()
end)

RegisterNetEvent("elite_hunting:client:openShop")
AddEventHandler("elite_hunting:client:openShop", function()
    if Config.LicenseSettings["requireWeaponLicense"] then
        if Config.LicenseSettings["licenseShop"] then
            if PlayerData.metadata["licences"][Config.LicenseSettings.weaponLicense] then
                TriggerServerEvent("inventory:server:OpenInventory", "shop", "hunting", Config.Items)
            else
                QBCore.Functions.Notify(Config["Translations"]["no_license"], "error")
            end
        else
            TriggerServerEvent("inventory:server:OpenInventory", "shop", "hunting", Config.Items)
        end
    else
        TriggerServerEvent("inventory:server:OpenInventory", "shop", "hunting", Config.Items)
    end
end)

function SpawnRandomAnimals(spawnType)
    if spawnType == "legal" then
        if activeHunting then
            if huntingArea ~= nil then
                QBCore.Functions.Notify(Config["Translations"]["heard_animals"], "success")
                Citizen.CreateThread(function()
                    for k, v in pairs(Config.LegalHuntingAnimals) do
                        if Config.Zones[huntingArea]["spawnAlgoritm"] then
                            local zoneCoords = Config.Zones[huntingArea]["zoneCoords"]
                            local newX, newY, oldZ = zoneCoords[1] + math.random(-300.0, 300.0), zoneCoords[2] + math.random(-100.0, 100.0), zoneCoords[3] + 999.0
                            local ground, newZ = GetGroundZFor_3dCoord(newX, newY, oldZ, 1)
                            if ground then
                                GetModel(v["model"])
                                legalAnimal = CreatePed(28, v["model"], newX, newY, newZ, 0.0, true, false)
                                TaskWanderStandard(legalAnimal, 10.0, 10)
                                legalAnimalBlip = AddBlipForEntity(legalAnimal)
                                SetBlipSprite(legalAnimalBlip, 141)
                                SetBlipColour(legalAnimalBlip, 10)
                                SetBlipScale(legalAnimalBlip, 0.5)
                                BeginTextCommandSetBlipName("STRING")
                                AddTextComponentString(Config["Translations"]["legal_animal"])
                                EndTextCommandSetBlipName(legalAnimalBlip)
                                table.insert(legalAnimals, {animalId = legalAnimal, blipId = legalAnimalBlip, model = v["model"]})
                            end
                        else
                            local zoneCoords = Config.Zones[huntingArea]["manualSpawnpoints"][math.random(#Config.Zones[huntingArea]["manualSpawnpoints"])]
                            GetModel(v["model"])
                            legalAnimal = CreatePed(28, v["model"], zoneCoords[1], zoneCoords[2], zoneCoords[3], 0.0, true, false)
                            TaskWanderStandard(legalAnimal, 10.0, 10)
                            legalAnimalBlip = AddBlipForEntity(legalAnimal)
                            SetBlipSprite(legalAnimalBlip, 141)
                            SetBlipColour(legalAnimalBlip, 10)
                            SetBlipScale(legalAnimalBlip, 0.5)
                            BeginTextCommandSetBlipName("STRING")
                            AddTextComponentString(Config["Translations"]["legal_animal"])
                            EndTextCommandSetBlipName(legalAnimalBlip)
                            table.insert(legalAnimals, {animalId = legalAnimal, blipId = legalAnimalBlip, model = v["model"]})
                        end
                    end
                end)
            else
                print('There was a problem loading which hunting area you were inside, try go in and out the area again!')
            end
        end
    elseif spawnType == "illegal" then
        Citizen.CreateThread(function()
            local randomIllegalAnimal = Config.IllegalHuntingAnimals[math.random(#Config.IllegalHuntingAnimals)]
            local pedCoords = QBCore.Functions.GetCoords(PlayerPedId())
            local newX, newY, oldZ = pedCoords[1] + math.random(-100.0, 100.0), pedCoords[2] + math.random(-100.0, 100.0), pedCoords[3] + 999.0
            local ground, newZ = GetGroundZFor_3dCoord(newX, newY, oldZ, 1)
            if ground then
                GetModel(randomIllegalAnimal["model"])
                illegalAnimal = CreatePed(28, randomIllegalAnimal["model"], newX, newY, newZ, 0.0, true, false)
                TaskWanderStandard(illegalAnimal, 10.0, 10)
                illegalAnimalBlip = AddBlipForEntity(illegalAnimal)
                SetBlipSprite(illegalAnimalBlip, 463)
                SetBlipColour(illegalAnimalBlip, 10)
                SetBlipScale(illegalAnimalBlip, 0.5)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(Config["Translations"]["illegal_animal"])
                EndTextCommandSetBlipName(illegalAnimalBlip)
                table.insert(illegalAnimals, {animalId = illegalAnimal, spawnCoords = vector3(newX, newY, newZ), blipId = illegalAnimalBlip, model = randomIllegalAnimal["model"]})
                TaskGoToCoordAnyMeans(illegalAnimal, vector3(pedCoords[1], pedCoords[2], pedCoords[3]), 2.0, 0, 786603, 0)
                SetModelAsNoLongerNeeded(illegalAnimal)
            end
        end)
    else
        QBCore.Functions.Notify(Config["Translations"]["something_wrong"], "error")
    end
end

function RespawnRandomAnimal(model)
    if activeHunting then
        if huntingArea ~= nil then
            Citizen.CreateThread(function()
                if Config.Zones[huntingArea]["spawnAlgoritm"] then
                    local zoneCoords = Config.Zones[huntingArea]["zoneCoords"]
                    local newX, newY, oldZ = zoneCoords[1] + math.random(-300.0, 300.0), zoneCoords[2] + math.random(-100.0, 100.0), zoneCoords[3] + 999.0
                    --local worked, groundZ, normal = GetGroundZAndNormalFor_3dCoord(newX, newY, 1023.9)
                    local ground, newZ = GetGroundZFor_3dCoord(newX, newY, oldZ, 1)
                    if ground then
                        GetModel(model)
                        legalAnimal = CreatePed(28, model, newX, newY, newZ, 0.0, true, false)
                        TaskWanderStandard(legalAnimal, 10.0, 10)
                        legalAnimalBlip = AddBlipForEntity(legalAnimal)
                        SetBlipSprite(legalAnimalBlip, 141)
                        SetBlipColour(legalAnimalBlip, 10)
                        SetBlipScale(legalAnimalBlip, 0.5)
                        BeginTextCommandSetBlipName("STRING")
                        AddTextComponentString(Config["Translations"]["legal_animal"])
                        EndTextCommandSetBlipName(legalAnimalBlip)
                        table.insert(legalAnimals, {animalId = legalAnimal, blipId = legalAnimalBlip, model = model})
                    end
                else
                    local zoneCoords = Config.Zones[huntingArea]["manualSpawnpoints"][math.random(#Config.Zones[huntingArea]["manualSpawnpoints"])]
                    if zoneCoords then
                        GetModel(model)
                        legalAnimal = CreatePed(28, model, zoneCoords[1], zoneCoords[2], zoneCoords[3], 0.0, true, false)
                        TaskWanderStandard(legalAnimal, 10.0, 10)
                        legalAnimalBlip = AddBlipForEntity(legalAnimal)
                        SetBlipSprite(legalAnimalBlip, 141)
                        SetBlipColour(legalAnimalBlip, 10)
                        SetBlipScale(legalAnimalBlip, 0.5)
                        BeginTextCommandSetBlipName("STRING")
                        AddTextComponentString(Config["Translations"]["legal_animal"])
                        EndTextCommandSetBlipName(legalAnimalBlip)
                        table.insert(legalAnimals, {animalId = legalAnimal, blipId = legalAnimalBlip, model = model})
                    else
                        print("Manual spawning points are not setup correctly, please contact the server owner/developer!")
                    end
                end
            end)
        end
    end
end

function SkinAnimal(data)
    Citizen.CreateThread(function()
        if data then
            if activeHunting then
                for i, v in ipairs(legalAnimals) do
                    if DoesEntityExist(v["animalId"]) then
                        if GetEntityHealth(v["animalId"]) <= 0 then
                            local ped = PlayerPedId()
                            if #(QBCore.Functions.GetCoords(ped).xy - QBCore.Functions.GetCoords(v["animalId"]).xy) <= 3.0 then
                                QBCore.Functions.TriggerCallback('elite_hunting:isGettingSkinned', function(ableToSkin)
                                    if ableToSkin then
                                        TriggerServerEvent('elite_hunting:server:gettingSkinned', v["animalId"], true)
                                        SetBlipSprite(v["blipId"], 310)
                                        SetBlipColour(v["blipId"], 1)
										-- LoadAnimDict("oddjobs@hunter")
                                        -- LoadAnimDict("amb@medic@standing@kneel@exit")
                                        -- LoadAnimDict("anim@gangops@facility@servers@bodysearch@")
                                        -- TaskPlayAnim(ped, "oddjobs@hunter", "enter", 8.0, -8.0, -1, 1, 0, false, false, false)
                                        -- Citizen.Wait(1800)
                                        -- TaskPlayAnim(ped, "oddjobs@hunter", "idle_a", 8.0, -8.0, -1, 1, 0, false, false, false)
                                        -- Citizen.Wait(2500)
                                        TaskPlayAnim(ped, "anim@gangops@facility@servers@bodysearch@", "player_search", 8.0, -8.0, -1, 48, 0, false, false, false)
                                        QBCore.Functions.Progressbar("hunting_skinning", Config["Translations"]["skinning"], math.random(5000, 10000), false, true, {
                                            disableMovement = true,
                                            disableCarMovement = true,
                                            disableMouse = false,
                                            disableCombat = true,
                                        }, {}, {}, {}, function()
                                            table.remove(legalAnimals, i)
                                            SetModelAsNoLongerNeeded(v["animalId"])
                                            DeleteEntity(v["animalId"])
                                            TaskPlayAnim(ped, "amb@medic@standing@kneel@exit", "exit", 8.0, -8.0, -1, 48, 0, false, false, false)
                                            Citizen.Wait(2000)
                                            ClearPedTasks(ped)
                                            TriggerServerEvent("elite_hunting:server:reward", true, v["model"])
                                            RespawnRandomAnimal(v["model"])
                                            TriggerServerEvent('elite_hunting:server:gettingSkinned', v["animalId"], false)
                                            if cb then
                                                cb()
                                            end
                                        end, function()
                                            ClearPedTasks(ped)
                                        end)
                                    end
                                end, v["animalId"])
                            end
                        end
                    end
                end
            else
                QBCore.Functions.Notify(Config["Translations"]["not_hunting"], "error")
            end
        else
            for i, v in ipairs(illegalAnimals) do
                if DoesEntityExist(v["animalId"]) then
                    if GetEntityHealth(v["animalId"]) <= 0 then
                        local ped = PlayerPedId()
                        if #(QBCore.Functions.GetCoords(ped).xy - QBCore.Functions.GetCoords(v["animalId"]).xy) <= 3.0 then
                            SetBlipSprite(v["blipId"], 310)
                            SetBlipColour(v["blipId"], 1)
                            -- LoadAnimDict("oddjobs@hunter")
                            -- LoadAnimDict("amb@medic@standing@kneel@exit")
                            -- LoadAnimDict("anim@gangops@facility@servers@bodysearch@")
                            -- TaskPlayAnim(ped, "oddjobs@hunter", "enter", 8.0, -8.0, -1, 1, 0, false, false, false)
                            -- Citizen.Wait(1800)
                            -- TaskPlayAnim(ped, "oddjobs@hunter", "idle_a", 8.0, -8.0, -1, 1, 0, false, false, false)
                            -- Citizen.Wait(2500)
                            TaskPlayAnim(ped, "anim@gangops@facility@servers@bodysearch@", "player_search", 8.0, -8.0, -1, 48, 0, false, false, false)
                            QBCore.Functions.Progressbar("hunting_skinning", Config["Translations"]["skinning"], math.random(5000, 10000), false, true, {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            }, {}, {}, {}, function()
                                table.remove(illegalAnimals, i)
                                DeleteEntity(v["animalId"])
                                TaskPlayAnim(ped, "amb@medic@standing@kneel@exit", "exit", 8.0, -8.0, -1, 48, 0, false, false, false)
                                Citizen.Wait(2000)
                                ClearPedTasks(ped)
                                TriggerServerEvent("elite_hunting:server:reward", false, v["model"])
                                if cb then
                                    cb()
                                end
                            end, function()
                                ClearPedTasks(ped)
                            end)
                        end
                    end
                end
            end
        end
    end)
end

function StartHuntingSession()
    if not activeHunting then
        activeHunting = true
        SpawnRandomAnimals("legal")
    else
        QBCore.Functions.Notify(Config["Translations"]["already_hunting"], "error")
    end
end

function StopHunting()
    SetCurrentPedWeapon(PlayerPedId(), GetHashKey("WEAPON_UNARMED"), true)
    for i, v in ipairs(legalAnimals) do if DoesEntityExist(v["animalId"]) then DeleteEntity(v["animalId"]) end end
    for i, v in ipairs(illegalAnimals) do if DoesEntityExist(v["animalId"]) then DeleteEntity(v["animalId"]) end end
    legalAnimals = {}
    illegalAnimals = {}
    activeHunting = false
    animalsSpawned = 0
    animalsKilled = 0
end

function CooldownCalculator()
    Citizen.CreateThread(function()
        while baitCooldown > 0 do
            Citizen.Wait(1000)
            baitCooldown = baitCooldown - 1000
        end
        return
    end)
end