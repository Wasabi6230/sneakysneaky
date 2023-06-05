--[[
RegisterCommand("getweaponhash", function()
    local playerPed = GetPlayerPed(-1)
    local hasWeapon,pedWeapon = GetCurrentPedWeapon(playerPed)

    print("Weapon Hash: " ..pedWeapon)
end)
--]]

