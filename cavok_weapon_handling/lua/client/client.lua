local lockKey = Config.LockKey
local breathing = false
local stamina = false
local staminaval = Config.Stamina 

local sniperRifle    = 100416529
local heavySniper    = 205991906
local heavySniperMk2 = 177293209
local marksmanRifle  = -952879014

local grenade        = -1813897027
local stickybomb     = 741814745
local proxmine       = -1420407917
local pipebomb       = -1169823560

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, false)
end

if Config.UseLindenInventory == false then 
    if Config.AutoReload then 
        SetWeaponsNoAutoreload(false)
    else
        SetWeaponsNoAutoreload(true)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(80)
        local playerPed = GetPlayerPed(-1)
        local player = PlayerId()

        hasWeapon,pedWeapon = GetCurrentPedWeapon(playerPed)
        
        if hasWeapon ~= false then
            while hasWeapon ~= false do 
                Citizen.Wait(1)
                local hasWeapon, pedWeapon = GetCurrentPedWeapon(playerPed)
                local weaponType = GetWeaponDamageType(pedWeapon)
                local weaponShootingType = GetWeapontypeGroup(pedWeapon)
                
                
                while not HasAnimDictLoaded("mp_arresting") do 
                    Citizen.Wait(1)
                    RequestAnimDict("mp_arresting")
                end
                
                if pedWeapon == grenade or pedWeapon == stickybomb or pedWeapon == proxmine or pedWeapon == pipebomb then 
                    break 
                end

                if weaponType == 1 or weaponType == 2 or weaponType == 12 or weaponType == 6 or weaponType == 14 or weaponType == 13 then
                    break
                else
                    if not Config.UseCrosshair then 
                        HideHudComponentThisFrame(14)

                        if pedWeapon == sniperRifle or pedWeapon == heavySniper or pedWeapon == heavySniperMk2 or pedWeapon == marksmanRifle then 
                            ShowHudComponentThisFrame(14)
                        end
                    end
                    
                    if IsControlJustPressed(0, lockKey) and Config.WeaponsNoLock[pedWeapon] == false then
                        if Config.UseWeaponLock == true then 
                            if Config.WeaponLock[pedWeapon] == 0 then
                                if IsPedInAnyVehicle(playerPed, true) then
                                    Config.WeaponLock[pedWeapon] = 1
                                    if Config.WeaponLockMessage then
                                        if Config.UseBigNotify then 
                                            exports['b1g_notify']:Notify('true', str_weapon_locked)
                                            
                                        else
                                            notify(str_weapon_locked)
                                        end
                                    end
                                else
                                    Config.WeaponLock[pedWeapon] = 1
                                    if Config.WeaponLockMessage then
                                        if Config.UseBigNotify then
                                            exports['b1g_notify']:Notify('true', str_weapon_locked)
                                        else
                                            notify(str_weapon_locked)
                                        end
                                    end
                                    RequestAnimDict("mp_arresting")
                                    TaskPlayAnim(playerPed, "mp_arresting", "a_uncuff", 2.0, 2.0, 1000, 52, 0, false, false, false)
                                end
                            else
                                if IsPedInAnyVehicle(playerPed, true) then
                                    Config.WeaponLock[pedWeapon] = 0
                                    if Config.WeaponLockMessage then
                                        if Config.UseBigNotify then
                                            exports['b1g_notify']:Notify('adm', str_weapon_unlocked)
                                        else
                                            notify(str_weapon_unlocked)
                                        end
                                    end
                                else
                                    Config.WeaponLock[pedWeapon] = 0
                                    if Config.WeaponLockMessage then
                                        if Config.UseBigNotify then
                                            exports['b1g_notify']:Notify('adm', str_weapon_unlocked)
                                        else
                                            notify(str_weapon_unlocked)
                                        end
                                    end
                                    RequestAnimDict("mp_arresting")
                                    TaskPlayAnim(playerPed, "mp_arresting", "a_uncuff", 2.0, 2.0, 1000, 52, 0, false, false, false)
                                end
                            end
                        else
                        end
                    end

                    if Config.UseWeaponLock == false or Config.WeaponLock[pedWeapon] == 0 or Config.WeaponsNoLock[pedWeapon] then 

                        if IsPedShooting(playerPed) then 
                            
                            local _,pedWeapon = GetCurrentPedWeapon(playerPed)

                            local pedCamPitch  = GetGameplayCamRelativePitch()
                            local weaponRecoil = Config.WeaponRecoil[pedWeapon]
                            local weaponShake  = Config.WeaponShake[pedWeapon]
                            local recoilSpeed  = Config.WeaponRecoilSpeed
                            ViewMode = GetFollowPedCamViewMode()

                            if ViewMode == 4 then 
                                newWeaponRecoil = weaponRecoil * Config.FirstPersonRecoilFactor
                                SetGameplayCamRelativePitch(pedCamPitch + newWeaponRecoil, recoilSpeed)
                            else
                                SetGameplayCamRelativePitch(pedCamPitch + weaponRecoil, recoilSpeed)
                            end

                            if Config.WeaponShake and stamina == false then 
                                ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", weaponShake)
                            end
                            if Config.UseCustomDamage then 
                                SetWeaponDamageModifierThisFrame(pedWeapon, Config.WeaponDamage[pedWeapon])
                            end

                            if Config.UseScreenEffect then
                                AnimpostfxPlay(Config.ScreenEffect, Config.ScreenEffectLength, Config.ScreenEffectLoop)
                            end

                            if IsPedInAnyVehicle(playerPed, true) then 
                                Citizen.Wait(0)
                                PedVehicle = GetVehiclePedIsIn(playerPed, false)
                                PedVehicleType = GetVehicleClass(PedVehicle)
                                
                                for class, allowed in pairs(Config.VehicleWhitelist) do 
                                    if class == PedVehicleType and allowed == true then 
                                        local vehRecoilVal = Config.VehicleRecoilValue
                                        local vehShakeVal  = Config.VehicleShakeValue

                                        if not Config.UseCrosshair then 
                                            HideHudComponentThisFrame(14)
                                        end

                                        if Config.VehicleRecoil then 
                                            SetGameplayCamRelativePitch(pedCamPitch + weaponRecoil + vehRecoilVal, recoilSpeed)
                                            if Config.VehicleShake then 
                                                ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", weaponShake + vehShakeVal)
                                            end
                                        end
                                    end
                                end

                                
                            end

                            shooting = true
                        end


                        if hasWeapon == false then 
                            break 
                        end
                    else
                        DisablePlayerFiring(player, true)
                        if IsControlJustPressed(0, 237) then 
                            if Config.WeaponLockMessage then
                                if Config.UseBigNotify then
                                    exports['b1g_notify']:Notify('false', str_weapon_still_locked)
                                else
                                    notify(str_weapon_still_locked)
                                end
                            end
                        end

                        
                        if hasWeapon == false then 
                            break 
                        end
                    end

                    --[[STAMINA SYSTEM]]--
                    if Config.UseStaminaSystem then 
                        if shooting and IsControlPressed(0, 25) and staminaval > 0 then
                            
                            if stamina then 
                                shooting = false
                            else
                                shooting = false
                            end
                        end

                        if not IsGameplayCamShaking() and IsControlPressed(0, 25) then
                            ShakeGameplayCam("HAND_SHAKE", Config.BreathingValueNormal) 
                        end

                        if IsControlJustPressed(0, 25) then 
                            ShakeGameplayCam("HAND_SHAKE", Config.BreathingValueNormal)
                            
                            local player = GetPlayerServerId(PlayerId())
                            if IsControlPressed(0, 25) then 
                                if IsPedShooting(playerPed) then 
                                    ShakeGameplayCam("HAND_SHAKE", Config.BreathingValueNormal) 
                                end
                            end
                            breathing = true
                        end

                        if IsControlJustReleased(0, 25) then
                            StopGameplayCamShaking(true)
                            breathing = false
                            stamina = false
                        end

                        if IsControlJustPressed(0, 21) and breathing == true and staminaval ~= 0 then 
                            ShakeGameplayCam("HAND_SHAKE", Config.BreathingValueHoldBreath)
                            stamina = true
                        end
                        
                        if stamina and staminaval >= 0 then 
                            staminaval = staminaval -1
                            if staminaval == 0 then 
                                ShakeGameplayCam("HAND_SHAKE", Config.BreathingValueNormal + Config.BreathingValueNoStamina)
                                DisableControlAction(0, 21, true)
                                AnimpostfxPlay("SwitchHUDIn", 0, false)
                            end
                        else 
                            if staminaval < Config.Stamina then 
                                staminaval = staminaval + 1 
                                
                                if IsControlJustPressed(0, 24) then 
                                    ShakeGameplayCam("HAND_SHAKE", Config.BreathingValueNormal + Config.BreathingValueNoStamina)
                                end

                                if staminaval > Config.StaminaTreshold then 
                                    AnimpostfxStopAll()
                                    DisableControlAction(0, 21, false)
                                    stamina = false
                                end
                            end
                        end
                    end

                    --[[FIRING MODES]]--
                    if Config.UseWeaponFiringMode then 
                        if weaponShootingType == -957766203 or weaponShootingType == 970310034 then 
                            if IsPedInAnyVehicle(playerPed, true) then
                                if IsControlJustPressed(0, Config.WeaponFiringModeKey) then
                                    if Config.WeaponFiringMode[pedWeapon] == 1 then 
                                        Config.WeaponFiringMode[pedWeapon] = 0
                                        if Config.UseBigNotify then
                                            exports['b1g_notify']:Notify('true', str_firing_mode_auto)
                                        else
                                            notify(str_firing_mode_auto)
                                        end
                                    else
                                        Config.WeaponFiringMode[pedWeapon] = 1
                                        if Config.UseBigNotify then
                                            exports['b1g_notify']:Notify('true', str_firing_mode_single)
                                        else
                                            notify(str_firing_mode_single)
                                        end
                                    end
                                end
                                
                                if Config.WeaponFiringMode[pedWeapon] == 1 then
                                    if IsPedDoingDriveby(playerPed) then
                                        local _,pedWeapon = GetCurrentPedWeapon(playerPed)
                                        local pedCamPitch  = GetGameplayCamRelativePitch()
                                        local weaponRecoil = Config.WeaponRecoil[pedWeapon]
                                        local weaponShake  = Config.WeaponShake[pedWeapon]
                                        local recoilSpeed  = Config.WeaponRecoilSpeed
                                        local vehRecoilVal = Config.VehicleRecoilValue
                                        local vehShakeVal  = Config.VehicleShakeValue

                                        while IsControlPressed(0, 24) or IsDisabledControlPressed(0, 24) do
                                            Citizen.Wait(5)
                                            DisablePlayerFiring(player, true)
                                            if not Config.UseCrosshair then 
                                                HideHudComponentThisFrame(14)
                                            end
                                            if Config.VehicleRecoil then 
                                                SetGameplayCamRelativePitch(pedCamPitch + weaponRecoil + vehRecoilVal, recoilSpeed)
                                                if Config.VehicleShake then 
                                                    ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", weaponShake + vehShakeVal)
                                                end
                                            end
                                        end
                                    end
                                end
                                
                            else
                                if IsControlJustPressed(0, Config.WeaponFiringModeKey) then
                                    if Config.WeaponFiringMode[pedWeapon] == 1 then 
                                        Config.WeaponFiringMode[pedWeapon] = 0
                                        if Config.UseBigNotify then
                                            exports['b1g_notify']:Notify('true', str_firing_mode_auto)
                                        else
                                            notify(str_firing_mode_auto)
                                        end
                                    else
                                        Config.WeaponFiringMode[pedWeapon] = 1
                                        if Config.UseBigNotify then
                                            exports['b1g_notify']:Notify('true', str_firing_mode_single)
                                        else
                                            notify(str_firing_mode_single)
                                        end
                                    end
                                end

                                if Config.WeaponFiringMode[pedWeapon] == 1 then 
                                    if IsPedShooting(playerPed) then
                                        while IsControlPressed(0, 24) or IsDisabledControlPressed(0, 24) do
                                            Citizen.Wait(0)
                                            DisablePlayerFiring(player, true)
                                            if not Config.UseCrosshair then 
                                                HideHudComponentThisFrame(14)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end 
        else 
            hasWeapon = false 
        end
    end
end)