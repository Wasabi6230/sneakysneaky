Citizen.CreateThread(function()
    while true do
	    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.25)
    	Wait(0)
	    N_0x4757f00bc6323cfe(GetHashKey("weapon_bat"), 0.40)
    	Wait(0)
	    N_0x4757f00bc6323cfe(GetHashKey("weapon_musket"), 0.0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_candycane22"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_m700"), 0.01)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_battleaxe"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_grenadelauncher_sm"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_vc_kylo"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_vc_minecraft"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_vc_thor"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_vc_zelda"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_vc_shield"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_vc_stormbreaker"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_beanbag"), 0)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_knuckle"), 0.4)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_wrench"), 0.5)
    	Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("weapon_hammer"), 0.5)
    	Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
	local ped = PlayerPedId()
        if IsPedArmed(ped, 6) then
		DisableControlAction(1, 140, true)
       	   DisableControlAction(1, 141, true)
           DisableControlAction(1, 142, true)
        end
    end
end)