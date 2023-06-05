local QBCore = exports['qb-core']:GetCoreObject()
local wearingchain = nil
local wearingflag = nil
local wearingkutte = nil
local wearingring = nil
local wearingjacket = nil
local wearingpants = nil
local flagType = nil

-- Removes player clothing on resource start
AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        local ped = PlayerPedId()
        wearingchain = nil
        wearingflag = nil
        wearingring = nil		
        flagType = nil
        for k, v in pairs(Config.Chains) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.ChainSection, 0)
                RemoveParticleFxFromEntity(ped)
            end
        end
		
        for k, v in pairs(Config.Rings) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.RingSection, 0)
                RemoveParticleFxFromEntity(ped)
            end
        end		

        for k, v in pairs(Config.Flags) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.MaskSection, 0) -- Mask
                SetPedComponentVariation(ped, Config.PocketflagSection, 0) -- Bag/Parachute
                SetPedComponentVariation(ped, Config.ArmbandSection, 15) -- Undershirt
            end
        end

        for k, v in pairs(Config.Kuttes) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.KutteSection, 0) -- Bag/Parachute
            end
        end
		
		for k, v in pairs(Config.Jacket) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.JacketSection, 0) -- Torso 2
            end
        end
		
		for k, v in pairs(Config.Pants) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.PantsSection, 0) -- Torso 2
            end
        end
		
    end
end)

-- Removes clothing when player loads
RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    CreateThread(function()
        Wait(150)
        local ped = PlayerPedId()
        wearingchain = nil
        wearingflag = nil
        flagType = nil
        PlayerLoaded = true
        for k, v in pairs(Config.Chains) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.ChainSection, 0)
                RemoveParticleFxFromEntity(ped)
            end
        end
		
        for k, v in pairs(Config.Rings) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.RingSection, 0)
                RemoveParticleFxFromEntity(ped)
            end
        end		

        for k, v in pairs(Config.Flags) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.MaskSection, 0) -- Mask
                SetPedComponentVariation(ped, Config.PocketflagSection, 0) -- Bag/Parachute
                SetPedComponentVariation(ped, Config.ArmbandSection, 15) -- Undershirt
            end
        end

        for k, v in pairs(Config.Kuttes) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.KutteSection, 0) -- Bag/Parachute
            end
        end
		
		for k, v in pairs(Config.Jacket) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.JacketSection, 0) -- Torso 2
            end
        end
		
		for k, v in pairs(Config.Pants) do
            local hasItem = QBCore.Functions.HasItem(k)
            if hasItem then
                SetPedComponentVariation(ped, Config.PantsSection, 0) -- Torso 2
            end
        end
		
    end)
end)

-- Inventory Check Thread
CreateThread(function()
    while true do
        local sleep = 1000
		if LocalPlayer.state.isLoggedIn then
            -- Chains
            for k, v in pairs(Config.Chains) do
                local hasItem = QBCore.Functions.HasItem(k)
                if not hasItem then
                    if wearingchain == k then
                        wearingchain = nil
                        local ped = PlayerPedId()
                        SetPedComponentVariation(ped, Config.ChainSection, 0)
                        RemoveParticleFxFromEntity(ped)
                        QBCore.Functions.Notify('Your chain was removed!', 'error', 5000)
                    end
                end
            end
            -- Flags
            for k, v in pairs(Config.Flags) do
                local hasItem = QBCore.Functions.HasItem(k)
                if not hasItem then
                    if wearingflag == k then
                        local ped = PlayerPedId()
                        wearingflag = nil
                        if flagType == 'mask' then
                            SetPedComponentVariation(ped, Config.MaskSection, 0)
                        elseif flagType == 'armband' then
                            SetPedComponentVariation(ped, Config.ArmbandSection, 15)
                        elseif flagType == 'pocketflag' then
                            SetPedComponentVariation(ped, Config.PocketflagSection, 0)
                        end
                        QBCore.Functions.Notify('Your flag was removed!', 'error', 5000)
                    end
                end
            end
			-- Rings
            for k, v in pairs(Config.Rings) do
                local hasItem = QBCore.Functions.HasItem(k)
                if not hasItem then
                    if wearingring == k then
                        wearingring = nil
                        local ped = PlayerPedId()
                        SetPedComponentVariation(ped, Config.RingSection, 0)
                        RemoveParticleFxFromEntity(ped)
                        QBCore.Functions.Notify('Your ring/s were removed!', 'error', 5000)
                    end
                end
            end
            -- Flags
            for k, v in pairs(Config.Flags) do
                local hasItem = QBCore.Functions.HasItem(k)
                if not hasItem then
                    if wearingflag == k then
                        local ped = PlayerPedId()
                        wearingflag = nil
                        if flagType == 'mask' then
                            SetPedComponentVariation(ped, Config.MaskSection, 0)
                        elseif flagType == 'armband' then
                            SetPedComponentVariation(ped, Config.ArmbandSection, 15)
                        elseif flagType == 'pocketflag' then
                            SetPedComponentVariation(ped, Config.PocketflagSection, 0)
                        end
                        QBCore.Functions.Notify('Your flag was removed!', 'error', 5000)
                    end
                end
            end			
            -- Kuttes
            for k, v in pairs(Config.Kuttes) do
                local hasItem = QBCore.Functions.HasItem(k)
                if not hasItem then
                    if wearingkutte == k then
                        wearingkutte = nil
                        local ped = PlayerPedId()
                        SetPedComponentVariation(ped, Config.KutteSection, 0)
                        QBCore.Functions.Notify('Your kutte was removed!', 'error', 5000)
                    end
                end
            end
			-- Jacket
			for k, v in pairs(Config.Jacket) do
                local hasItem = QBCore.Functions.HasItem(k)
                if not hasItem then
                    if wearingjacket == k then
                        wearingjacket = nil
                        local ped = PlayerPedId()
                        SetPedComponentVariation(ped, Config.JacketSection, 0)
                        QBCore.Functions.Notify('Your jacket was removed!', 'error', 5000)
                    end
                end
            end
			-- Pants
			for k, v in pairs(Config.Pants) do
                local hasItem = QBCore.Functions.HasItem(k)
                if not hasItem then
                    if wearingpants == k then
                        wearingpants = nil
                        local ped = PlayerPedId()
                        SetPedComponentVariation(ped, Config.PantsSection, 0)
                        QBCore.Functions.Notify('Your pants were removed!', 'error', 5000)
                    end
                end
            end
        end
		Wait(sleep)
    end
end)

local function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(0)
    end
end

-- Chain On/Off
RegisterNetEvent('qb-gangitems:client:chainOn', function(k)
    local gender = QBCore.Functions.GetPlayerData().charinfo.gender
    local ped = PlayerPedId()
    if not wearingchain then
        wearingchain = k
        TriggerEvent('animations:client:EmoteCommandStart', {"adjusttie"})
        QBCore.Functions.Progressbar("chain_misc", "Putting on chain..", 3000, false, false, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            if gender == 0 then
                SetPedComponentVariation(ped, Config.ChainSection, Config.Chains[k]["Male"]["Model"], Config.Chains[k]["Male"]["Texture"])
            else
                SetPedComponentVariation(ped, Config.ChainSection, Config.Chains[k]["Female"]["Model"], Config.Chains[k]["Female"]["Texture"])
            end
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end)
    else
        TriggerEvent('qb-gangitems:client:chainOff', k)
    end
end)

RegisterNetEvent('qb-gangitems:client:chainOff', function(k)
    local ped = PlayerPedId()
    if wearingchain then
        wearingchain = false
        TriggerEvent('animations:client:EmoteCommandStart', {"adjusttie"})
        QBCore.Functions.Progressbar("chain_misc", "Taking off chain..", 3000, false, false, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            SetPedComponentVariation(ped, Config.ChainSection, 0, 0)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            RemoveParticleFxFromEntity(ped)
        end)
    end
end)

-- Rings On/Off
RegisterNetEvent('qb-gangitems:client:ringOn', function(k)
    local gender = QBCore.Functions.GetPlayerData().charinfo.gender
    local ped = PlayerPedId()
    if not wearingring then
        wearingring = k
        TriggerEvent('animations:client:EmoteCommandStart', {"adjusttie"})
        QBCore.Functions.Progressbar("ring_misc", "Putting on ring..", 3000, false, false, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            if gender == 0 then
                SetPedComponentVariation(ped, Config.RingSection, Config.Rings[k]["Male"]["Model"], Config.Rings[k]["Male"]["Texture"])
            else
                SetPedComponentVariation(ped, Config.RingSection, Config.Rings[k]["Female"]["Model"], Config.Rings[k]["Female"]["Texture"])
            end
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end)
    else
        TriggerEvent('qb-gangitems:client:ringOff', k)
    end
end)

RegisterNetEvent('qb-gangitems:client:ringOff', function(k)
    local ped = PlayerPedId()
    if wearingring then
        wearingring = false
        TriggerEvent('animations:client:EmoteCommandStart', {"adjusttie"})
        QBCore.Functions.Progressbar("ring_misc", "Taking off ring..", 3000, false, false, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            SetPedComponentVariation(ped, Config.RingSection, 0, 0)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            RemoveParticleFxFromEntity(ped)
        end)
    end
end)

-- Flag Option Menu
RegisterNetEvent('qb-chain:client:flagMenu', function(k)
    if not wearingflag then
        local flagMenu = {
            {
                header = "Put flag on as Mask",
                params = {
                    event = 'qb-gangitems:client:flagOn',
                    args ={
                        wearingflag = k,
                        flagType = 'mask' 
                    }
                }
            },
            {
                header = "Put flag on as Armband",
                params = {
                    event = 'qb-gangitems:client:flagOn',
                    args ={
                        wearingflag = k,
                        flagType = 'armband'
                    }
                }
            },
            {
                header = "Put flag on as Pocket Flag",
                params = {
                    event = 'qb-gangitems:client:flagOn',
                    args ={
                        wearingflag = k,
                        flagType = 'pocketflag'  
                    }
                }
            },
        }
        exports['qb-menu']:openMenu(flagMenu)
    else
        TriggerEvent('qb-gangitems:client:flagOff', flagType)
    end
end)

-- Flag On/Off
RegisterNetEvent('qb-gangitems:client:flagOn', function(data)
    local gender = QBCore.Functions.GetPlayerData().charinfo.gender
    local ped = PlayerPedId()
    flagType = data.flagType
    if not wearingflag then
        if flagType == 'mask' then
            wearingflag = data.wearingflag
            loadAnimDict("mp_masks@on_foot")
            TaskPlayAnim(ped, 'mp_masks@on_foot', 'put_on_mask', 3.0, 3.0, 600, 51, 0, false, false, false)
            Wait(600)
            if gender == 0 then
                SetPedComponentVariation(ped, Config.MaskSection, Config.Flags[wearingflag]["Male"]['mask']["Model"], Config.Flags[wearingflag]["Male"]['mask']["Texture"])
            else
                SetPedComponentVariation(ped, Config.MaskSection, Config.Flags[wearingflag]["Female"]['mask']["Model"], Config.Flags[wearingflag]["Female"]['mask']["Texture"])
            end
            StopAnimTask(ped, 'missfbi4', 'takeoff_mask', 1.0)
        elseif flagType == 'armband' then
            wearingflag = data.wearingflag
            loadAnimDict("nmt_3_rcm-10")
            TaskPlayAnim(ped, 'nmt_3_rcm-10', 'cs_nigel_dual-10', 3.0, 3.0, 1200, 51, 0, false, false, false)
            Wait(1200)
            if gender == 0 then
                SetPedComponentVariation(ped, Config.ArmbandSection, Config.Flags[wearingflag]["Male"]['armband']["Model"], Config.Flags[wearingflag]["Male"]['armband']["Texture"])
            else
                SetPedComponentVariation(ped, Config.ArmbandSection, Config.Flags[wearingflag]["Female"]['armband']["Model"], Config.Flags[wearingflag]["Female"]['armband']["Texture"])
            end
            StopAnimTask(ped, 'nmt_3_rcm-10', 'cs_nigel_dual-10', 1.0)
        elseif flagType == 'pocketflag' then
            wearingflag = data.wearingflag
            loadAnimDict("re@construction")
            TaskPlayAnim(ped, 're@construction', 'out_of_breath', 3.0, 3.0, 1300, 51, 0, false, false, false)
            Wait(1300)
            if gender == 0 then
                SetPedComponentVariation(ped, Config.PocketflagSection, Config.Flags[wearingflag]["Male"]['flag']["Model"], Config.Flags[wearingflag]["Male"]['flag']["Texture"])
            else
                SetPedComponentVariation(ped, Config.PocketflagSection, Config.Flags[wearingflag]["Female"]['flag']["Model"], Config.Flags[wearingflag]["Female"]['flag']["Texture"])
            end
            StopAnimTask(ped, 're@construction', 'out_of_breath', 1.0)
        end
    else
        TriggerEvent('qb-gangitems:client:flagOff', flagType)
    end
end)

RegisterNetEvent('qb-gangitems:client:flagOff', function(flagType)
    local ped = PlayerPedId()
    if wearingflag then
        wearingflag = nil
        if flagType == 'mask' then
            loadAnimDict("clothingtie")
            TaskPlayAnim(ped, 'clothingtie', 'check_out_a', 3.0, 3.0, 2000, 51, 0, false, false, false)
            Wait(2000)
            SetPedComponentVariation(ped, Config.MaskSection, 0)
            StopAnimTask(ped, 'clothingtie', 'check_out_a', 1.0)
        elseif flagType == 'armband' then
            loadAnimDict("missmic4")
            TaskPlayAnim(ped, 'missmic4', 'michael_tux_fidget', 3.0, 3.0, 1500, 51, 0, false, false, false)
            Wait(1500)
            SetPedComponentVariation(ped, Config.ArmbandSection, 15)
            StopAnimTask(ped, 'missmic4', 'michael_tux_fidget', 1.0)
        elseif flagType == 'pocketflag' then
            loadAnimDict("anim@heists@ornate_bank@grab_cash")
            TaskPlayAnim(ped, 'anim@heists@ornate_bank@grab_cash', 'intro', 3.0, 3.0, 1600, 51, 0, false, false, false)
            Wait(1200)
            SetPedComponentVariation(ped, Config.PocketflagSection, 0)
            StopAnimTask(ped, 'anim@heists@ornate_bank@grab_cash', 'intro', 1.0)
        end
    end
end)

-- Kuttes On/Off
RegisterNetEvent('qb-gangitems:client:kutteOn', function(k)
    local gender = QBCore.Functions.GetPlayerData().charinfo.gender
    local ped = PlayerPedId()
    if not wearingkutte then
        wearingkutte = k
        loadAnimDict("oddjobs@basejump@ig_15")
        TaskPlayAnim(ped, 'oddjobs@basejump@ig_15', 'puton_parachute', 3.0, 3.0, 2000, 51, 0, false, false, false)
        Wait(2000)
        if gender == 0 then
            SetPedComponentVariation(ped, Config.KutteSection, Config.Kuttes[k]["Male"]["Model"], Config.Kuttes[k]["Male"]["Texture"])
        else
            SetPedComponentVariation(ped, Config.KutteSection, Config.Kuttes[k]["Female"]["Model"], Config.Kuttes[k]["Female"]["Texture"])
        end
        StopAnimTask(ped, 'oddjobs@basejump@ig_15', 'puton_parachute', 1.0)
    else
        TriggerEvent('qb-gangitems:client:kutteOff', k)
    end
end)

RegisterNetEvent('qb-gangitems:client:kutteOff', function(k)
    local ped = PlayerPedId()
    if wearingkutte then
        wearingkutte = nil
        TriggerEvent('animations:client:EmoteCommandStart', {"adjusttie"})
        QBCore.Functions.Progressbar("kutte_progress", "Taking off kutte..", 3000, false, false, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            SetPedComponentVariation(ped, Config.KutteSection, 0, 0)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end)
    end
end)

-- Jacket On/Off
RegisterNetEvent('qb-gangitems:client:jacketOn', function(k)
    local gender = QBCore.Functions.GetPlayerData().charinfo.gender
    local ped = PlayerPedId()
    if not wearingjacket then
        wearingjacket = k
        loadAnimDict("oddjobs@basejump@ig_15")
        TaskPlayAnim(ped, 'oddjobs@basejump@ig_15', 'puton_parachute', 3.0, 3.0, 2000, 51, 0, false, false, false)
        Wait(2000)
        if gender == 0 then
            SetPedComponentVariation(ped, Config.JacketSection, Config.Jacket[k]["Male"]["Model"], Config.Jacket[k]["Male"]["Texture"])
        else
            SetPedComponentVariation(ped, Config.JacketSection, Config.Jacket[k]["Female"]["Model"], Config.Jacket[k]["Female"]["Texture"])
        end
        StopAnimTask(ped, 'oddjobs@basejump@ig_15', 'puton_parachute', 1.0)
    else
        TriggerEvent('qb-gangitems:client:jacketOff', k)
    end
end)

RegisterNetEvent('qb-gangitems:client:jacketOff', function(k)
    local ped = PlayerPedId()
    if wearingjacket then
        wearingjacket = nil
        TriggerEvent('animations:client:EmoteCommandStart', {"adjusttie"})
        QBCore.Functions.Progressbar("jacket_progress", "Taking off jacket..", 3000, false, false, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            SetPedComponentVariation(ped, Config.JacketSection, 0, 0)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end)
    end
end)

-- Pants On/Off
RegisterNetEvent('qb-gangitems:client:pantsOn', function(k)
    local gender = QBCore.Functions.GetPlayerData().charinfo.gender
    local ped = PlayerPedId()
    if not wearingpants then
        wearingpants = k
        loadAnimDict("oddjobs@basejump@ig_15")
        TaskPlayAnim(ped, 'oddjobs@basejump@ig_15', 'puton_parachute', 3.0, 3.0, 2000, 51, 0, false, false, false)
        Wait(2000)
        if gender == 0 then
            SetPedComponentVariation(ped, Config.PantsSection, Config.Pants[k]["Male"]["Model"], Config.Pants[k]["Male"]["Texture"])
        else
            SetPedComponentVariation(ped, Config.PantsSection, Config.Pants[k]["Female"]["Model"], Config.Pants[k]["Female"]["Texture"])
        end
        StopAnimTask(ped, 'oddjobs@basejump@ig_15', 'puton_parachute', 1.0)
    else
        TriggerEvent('qb-gangitems:client:pantsOff', k)
    end
end)

RegisterNetEvent('qb-gangitems:client:pantsOff', function(k)
    local ped = PlayerPedId()
    if wearingpants then
        wearingpants = nil
        TriggerEvent('animations:client:EmoteCommandStart', {"adjusttie"})
        QBCore.Functions.Progressbar("pants_progress", "Taking off pants..", 3000, false, false, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            SetPedComponentVariation(ped, Config.PantsSection, 0, 0)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end)
    end
end)

-- Chain Effect
CreateThread(function()
	while true do
        if LocalPlayer.state.isLoggedIn then
            local gender = QBCore.Functions.GetPlayerData().charinfo.gender
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            if gender == 0 then gender = "Male" else gender = "Female" end
            for k,_ in pairs(Config.Chains) do
                if Config.Chains[k][gender]["Effects"] then
                    if wearingchain == k then
                        TriggerServerEvent("qb-gangitems:server:effects", PedToNet(ped), coords, gender, k)
                    end
                end
            end
            Wait(math.random(Config.EffectTimeMin,Config.EffectTimeMax) * 1000)
        end
        Wait(1000)
	end
end)

RegisterNetEvent("qb-gangitems:client:effects", function(ped, coords, gender, k)
	local distance = #(GetEntityCoords(PlayerPedId()) - coords)
	ped = NetToPed(ped)
	if distance <= 300 then
		if DoesEntityExist(ped) and not IsEntityDead(ped) then
			Bling = UseParticleFxAssetNextCall("core")
			Particle = StartParticleFxLoopedOnEntityBone(Config.Chains[k][gender].Particle, ped, Config.Chains[k][gender].xOffset, Config.Chains[k][gender].yOffset, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(ped, 23553), Config.Chains[k][gender].Scale, 0.0, 0.0, 0.0)
			Wait(2800)
			while DoesParticleFxLoopedExist(Bling) do
				StopParticleFxLooped(Bling, 1)
				Wait(0)
			end
			while DoesParticleFxLoopedExist(Particle) do
				StopParticleFxLooped(Particle, 1)
				Wait(0)
			end
			while DoesParticleFxLoopedExist(Config.Chains[k][gender].Particle) do
				StopParticleFxLooped(Config.Chains[k][gender].Particle, 1)
				Wait(0)
			end
			while DoesParticleFxLoopedExist("core" ) do
				StopParticleFxLooped("core" , 1)
				Wait(0)
			end
			Wait(math.random(3, 5) * 1000)
			RemoveParticleFxFromEntity(ped)
		end
	end
end)