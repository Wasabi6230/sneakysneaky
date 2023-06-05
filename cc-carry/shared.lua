CarryShared = {}
CarryShared.Keys = { 
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, 
    ["F9"] = 56, ["F10"] = 57,["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, 
    ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,["TAB"] = 37, ["Q"] = 44, ["W"] = 32, 
    ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, 
    [","] = 82, ["."] = 81,["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,["HOME"] = 213, 
    ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

CarryShared.Distance = 2.0 -- Distance check of player from trunk
CarryShared.ScreenFadeOnExitTrunk = true -- Enable/Disable Fade screen when exiting trunk

CarryShared.DrawText3DEnabled = false -- Set "True" if you want to show text on screen
CarryShared.DrawText3DText = {
    puintrunk = 'Press [E] to put in trunk',
    getintrunk = 'Press [E] to get in trunk',
    intrunk = '[F] Climb out | [G] Open/Close trunk'
}

CarryShared.Commands = { -- Set Command names and its suggestion in chat
    [1] = {cmd = "", suggestion = ""},
    [2] = {cmd = "putin", suggestion = "Put inside a Trunk"},
    [3] = {cmd = "getin", suggestion = "Get inside a trunk"}
}

CarryShared.CarryKeyBind = {enabled = false, key = 'G'} -- Set "True" if you want to use keybind to carry player

CarryShared.Lang = { -- Change Languages of notifications
    ["no_one_near"] = "No one nearby to carry",
    ["not_near_vehicle"] = "Not near to a vehicle",
    ["trunk_closed"] = "Trunk is Closed",
    ["not_carry"] = "You are not carrying a person",
    ["trunk_locked"] = "Trunk is locked",
    ["veh_blacklist"] = "Vehicle Not allowed",
}

CarryShared.Animations = {     
    -- / Person Carrying \ --
    MeAnimDic = 'missfinale_c2mcs_1',
    MeAnimPlay = 'fin_c2_mcs_1_camman',
    MeDistance = -0.2,
    MeControlFlag = 49,    
    -- / Person Getting Carried \ --
    TargetAnimDic = 'amb@world_human_bum_slumped@male@laying_on_left_side@base',
    TargetAnimPlay = 'base',
    TargetDistance = -0.68,     
    TargetControlFlag = 33,
    TargetAnimFlag = 1,
    -- / General \ --
    Height = 0.94,
    Spin = 60.0,
    Length = 100000,
    -- / InTrunk \ --
    InTrunkAnimDic = 'timetable@floyd@cryingonbed@base',
    InTrunkAnimPlay = 'base',
}

CarryShared.BlacklistVehicles = { -- List of all blaclisted vehicle for trunks
    "ardent","zentorno"
}

CarryShared.DoChecks = function(player)
    if not IsEntityDead(player) and not IsPedDeadOrDying(player, 1) then return true end 
    return false
end

CarryShared.DisableCarryActions = function()
    DisableControlAction(0, 24, true) -- Attack
    DisableControlAction(0, 257, true) -- Attack 2
    DisableControlAction(0, 25, true) -- Aim
    DisableControlAction(0, 263, true) -- Melee Attack 1
    DisableControlAction(0, 45, true) -- Reload
    DisableControlAction(0, 44, true) -- Cover
    DisableControlAction(0, 37, true) -- Select Weapon
    DisableControlAction(0, 26, true) -- Disable looking behind
    DisableControlAction(0, 73, true) -- Disable clearing animation
    DisableControlAction(2, 199, true) -- Disable pause screen
    DisableControlAction(0, 59, true) -- Disable steering in vehicle
    DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
    DisableControlAction(0, 72, true) -- Disable reversing in vehicle
    DisableControlAction(2, 36, true) -- Disable going stealth
    DisableControlAction(0, 47, true)  -- Disable weapon
    DisableControlAction(0, 264, true) -- Disable melee
    DisableControlAction(0, 257, true) -- Disable melee
    DisableControlAction(0, 140, true) -- Disable melee
    DisableControlAction(0, 141, true) -- Disable melee
    DisableControlAction(0, 142, true) -- Disable melee
    DisableControlAction(0, 143, true) -- Disable melee
    DisableControlAction(0, 29, true) -- B
    DisableControlAction(0, 26, true) -- C
    DisableControlAction(0, 21, true) -- LEFT Shift
    DisableControlAction(0, 23, true) -- F
    DisableControlAction(0, 49, true) -- F
    DisableControlAction(0, 47, true) -- G
    DisableControlAction(0, 74,  true) -- H
    DisableControlAction(0, 311, true) -- K
    DisableControlAction(0, 7, true) -- L
    DisableControlAction(0, 301, true) -- M
    DisableControlAction(0, 199, true) -- P
    DisableControlAction(0, 44, true) -- Q
    DisableControlAction(0, 45, true) -- R
    DisableControlAction(0, 0, true) -- v
    DisableControlAction(0, 77, true) -- X
    DisableControlAction(0, 246, true) -- Y
    DisableControlAction(0, 20, true) -- Z
    DisableControlAction(0, 39, true) -- [
    DisableControlAction(0, 27, true) -- UpArr
    DisableControlAction(0, 173, true) -- DownArr
    DisableControlAction(0, 174, true)  -- LeftArr
    DisableControlAction(0, 175, true) -- RightArr
    DisableControlAction(0, 19, true) -- LftAlt
    DisableControlAction(0, 168, true) -- F7
    DisableControlAction(0, 288, true) -- F1
    DisableControlAction(0, 289, true)  -- F2
    DisableControlAction(0, 170, true)  -- F3
    DisableControlAction(0, 166, true) -- F5
    DisableControlAction(0, 167, true)  -- F6
    DisableControlAction(0, 175, true) -- F7
    DisableControlAction(0, 56, true)  -- F9
    DisableControlAction(0, 57, true) -- F10
    DisableControlAction(0, 344, true) -- F11
    DisableControlAction(26, 37, true) -- TAB
    DisableControlAction(0, 349, true) -- TAB
    DisableControlAction(26, 157, true) -- 1
    DisableControlAction(26, 158, true) -- 2
    DisableControlAction(26, 160, true) -- 3
    DisableControlAction(26, 164, true) -- 4
    DisableControlAction(26, 165, true) -- 5
    DisableControlAction(26, 159, true) -- 6
    DisableControlAction(26, 161, true) -- 7
    DisableControlAction(26, 162, true) -- 8	
end

CarryShared.DisableTrunkActions = function()    
    DisableAllControlActions(0) -- DisableAllControlActions 
	DisableAllControlActions(1) -- DisableAllControlActions
    DisableAllControlActions(2)	-- DisableAllControlActions	 	
    EnableControlAction(0, 0, true) -- V
    EnableControlAction(0, 1, true) -- MOUSE
    EnableControlAction(0, 2, true) -- MOUSE
    EnableControlAction(0, 245, true) -- T
    EnableControlAction(0, 249, true) -- N	
end

CarryShared.DrawText3D = function(coords, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry('STRING')
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(coords.x, coords.y, coords.z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.015 + factor, 0.03, 41, 11, 41, 68)
    ClearDrawOrigin()
end

CarryShared.Notification = function(text)
    SetTextComponentFormat('STRING')
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

---------------------------------
-- / Do not edit below lines \ --
---------------------------------
CarryShared.isCarrying = false
CarryShared.inTrunk = false 

-- / Client Exports \ --
exports('isCarrying', function()
    return CarryShared.isCarrying
end)
exports('IsInTrunk', function()
	return CarryShared.inTrunk
end)
exports('DoCarry', function()
    TriggerEvent("cc-carry:client:DoCarry")
end)
exports('GetInTrunk', function()
    TriggerEvent("cc-carry:client:GetInEvent") 
end)
exports('PutInTrunk', function()
    TriggerEvent("cc-carry:client:PutInEvent") 
end)
