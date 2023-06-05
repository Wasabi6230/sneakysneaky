local A = 34 local B = 29 local C = 26 local D = 30 local E = 38 local F = 23 local G = 47 local H = 74 local I = 0 local J = 0 local K = 311 local L = 182 local M = 244 local N = 249
local O = 0 local P = 199 local Q = 52 local R = 140 local S = 31 local T = 245 local U = 303 local V = 236 local W = 32 local X = 186 local Y = 48 local Z = 246
local ONE = 157 local TWO = 158 local THREE = 160 local FOUR = 164 local FIVE = 165 local SIX = 159 local SEVEN = 161 local EIGHT = 162 local NINE = 163

Config = {}
Config.Locale = "en"                                --Change the language of the script. Possible languages are: "English - en"; "German - de" - Add more if you like. Just copy one of the language files from "locales" in the same folder and replace the language designator with the new one. Now just edit the lines

Config.UseLindenInventory           = false         --If you use linden_inventory/ox_inventory set this to "true"

Config.WeaponRecoilSpeed            = 0.35          --The speed and smoothness at which the weapon will recoil upwards. When using high values the weapon will go straight up, when using lower values the weapon will take some time to raise.
Config.UseCustomDamage              = true         --Set to "true" if you want to use custom weapon damages. You can configure the damages in "Config.WeaponDamage" for each weapon
Config.UseCrosshair                 = false         --Set to "true" if you don't want to hide your crosshair
Config.AutoReload                   = false         --Set to "true" if you want to use the automatic weapon reloading feature from GTA. If set to "false", the player has to press "R" every time the weapon's magazine is empty.
Config.FirstPersonRecoilFactor      = 0.0          --Regulates the recoil in first person. The lower the value, the lower the recoil in first person

Config.WeaponShake                  = true          --Set to "true" if you want to have a shaking effect when firing the weapon
Config.UseWeaponLock                = false          --Set to "true " if you want to use the weapon safety lock system
    Config.LockKey                  = X             --The key for locking the weapon. See line 4 - 6 for applicable keys
Config.WeaponLockMessage            = false          --Set to "true if you want to have a message every time you lock/unlock your weapon"
Config.UseBigNotify                 = false          --Set to "true" if you want to use B1gNotify for the lock/unlock messages. If set to "false", a normal notify will be sent. Requires B1gNotify to work

Config.UseWeaponFiringMode          = false          --Set to "true" if you want to use the weapon firing mode feature (switch between automatic and single shot)
    Config.WeaponFiringModeKey      = B             --The key for switching the mode. See line 4 - 6 for applicable keys

Config.VehicleRecoil                = false          --Set to "true" if you want to have more recoil effects in vehicles
    Config.VehicleRecoilValue       = 0.2           --The value to change the severity of the vehicle recoil 
Config.VehicleShake                 = false          --Set to "true" if you want to have more shake effects in vehicles
    Config.VehicleShakeValue        = 0.1          --The value to change the severity of the vehicle shake
Config.VehicleWhitelist             = {
    [0]  = true, -- Compacts  
    [1]  = true, -- Sedans  
    [2]  = true, -- SUVs  
    [3]  = true, -- Coupes  
    [4]  = true, -- Muscle  
    [5]  = true, -- Sports Classics  
    [6]  = true, -- Sports  
    [7]  = true, -- Super  
    [8]  = true, -- Motorcycles  
    [9]  = true, -- Off-road  
    [10] = true, -- Industrial  
    [11] = true, -- Utility  
    [12] = true, -- Vans  
    [13] = true, -- Cycles  
    [14] = false, -- Boats  
    [15] = false, -- Helicopters  
    [16] = false, -- Planes  
    [17] = true, -- Service  
    [18] = false, -- Emergency  
    [19] = false, -- Military  
    [20] = true, -- Commercial  
    [21] = false, -- Trains  
    [22] = true  -- Open Wheel
}

Config.UseStaminaSystem             = false          --Set to "true" if you want to use the stamina/breathing system
    Config.BreathingValueNormal     = 0.6           --The shaking value of the camera when aiming normally
    Config.BreathingValueNoStamina  = 5.0           --The shaking value of the camera when the player runs out of stamina/breath
    Config.BreathingValueHoldBreath = 0.1           --The shaking value of the camera when the player aims his weapon and holds his breath
    Config.Stamina                  = 250           --The total amount of stamina/breath the player has initially. The higher the value the longer the player can hold his breath
    Config.StaminaTreshold          = 100           --The value at which the player can steadily aim again and the camera effects are gone

--[[Effects]]--
local Effect1 = "SwitchHUDOut"
local Effect2 = "MP_corona_switch"
--[[Effects]]--

Config.UseScreenEffect              = false          --Set to "true" if you want to have a screen effect when shooting
    Config.ScreenEffect             = Effect1       --Select an effect of your desire. See line 26 - 27 for applicable effects. Add more effects from here: https://wiki.gtanet.work/index.php?title=Screen_Effects 
    Config.ScreenEffectLength       = 500          --Set the length of the effect to be shown on the screen (in milliseconds)
    Config.ScreenEffectLoop         = false         --Set to "true" if the effect should be looped. If set to "true" set Config.ScreenEffectLength to 0

--[[
    How to add custom, non-GTA weapons: 
    1. In the game, equip your custom added weapon
    2. Type "/getweaponhash" in your chat or "getweaponhash" in your console    --> !!! By default the command is commented out to prevent user abuse. You can uncomment it in commands.lua
    3. Open your console and look at the printed hash value.
    4. For each Config paragraph, add a new line like in the example:
        [HASH VALUE GOES HERE] = VALUE
    5. Replace "HASH VALUE GOES HERE" with the printed hash value from your console, without the ""
    6. Enter a value and a comma after the equal sign

    If you replaced a default weapon, you can use the same hash key from the default weapon. For example:
        If you replaced "WEAPON_PISTOL" with a non-GTA weapon, you can just change the value from "WEAPON_PISTOL", no need to add a new line.
]]--

------------RECOIL------------
--Configure the recoil of each weapon. The higher the number, the higher the recoil.
--Suggested values: 0.5 - 4.0. Higher Values will result in extremely unrealistic high recoils. But it's up to you

Config.WeaponRecoil = {

  --[GTA Weapon Hash] = Value     --GTA WEAPON NAME

    --HANDGUNS
    [453432689]     = 0.5,        --WEAPON_PISTOL
    [-1045183535]   = 1.0,        --WEAPON_REVOLVER
    [-1075685676]   = 0.5,        --WEAPON_PISTOLMK2
    [1593441988]    = 0.5,        --WEAPON_COMBATPISTOL
    [-1716589765]   = 0.7,       --WEAPON_PISTOL50
    [-1076751822]   = 0.3,        --WEAPON_SNSPISTOL
    [-771403250]    = 0.7,        --WEAPON_HEAVYPISTOL
    [137902532]     = 0.5,        --WEAPON_VINTAGEPISTOL
    [-598887786]    = 1.0,        --WEAPON_MARKSMANPISTOL
    [584646201]     = 0.5,        --WEAPON_APPISTOL
    [911657153]     = 0.0,       --WEAPON_STUNGUN
    [1198879012]    = 0.0,        --WEAPON_FLAREGUN
    [-1746263880]   = 0.7,        --WEAPON_DOUBLEACTION
	[1470379660]	= 0.5, 		--WEAPON_GADGETPISTOL
	[-879347409]	= 1.0,			--WEAPON_REVOLVER_MK2
    [883325847]     = 0.0,      --WEAPON_PETROLCAN
    [101631238]     = 0.0,      --WEAPON_FIREEXTINGUSHER
	[465894841]     = 0.5,      --WEAPON_PISTOLXM3

    --MACHINE GUNS
    [324215364]     = 0.3,        --WEAPON_MICROSMG
    [-619010992]    = 0.3,        --WEAPON_MACHINEPISTOL    
    [736523883]     = 0.3,        --WEAPON_SMG
    [2024373456]    = 0.3,       --WEAPON_SMGMK2
    [-270015777]    = 0.3,        --WEAPON_ASSAULTSMG
    [171789620]     = 0.3,        --WEAPON_COMBATPDW
    [-1660422300]   = 0.3,        --WEAPON_MG
    [2144741730]    = 0.0,        --WEAPON_COMBATMG
    [-608341376]    = 0.1,        --WEAPON_COMBATMGMK2
    [1627465347]    = 0.1,        --WEAPON_GUSENBERG
    [-1121678507]   = 0.5,        --WEAPON_MINISMG

    --ASSAULT RIFLES
    [-1074790547]   = 0.7,        --WEAPON_ASSAULTRIFLE
    [961495388]     = 0.01,        --WEAPON_ASSAULTRIFLEMK2
    [-2084633992]   = 0.7,        --WEAPON_CARBINERIFLE
    [-86904375]     = 0.01,        --WEAPON_CARBINERIFLEMK2
    [-1357824103]   = 0.5,        --WEAPON_ADVANCEDRIFLE
    [-1063057011]   = 0.5,        --WEAPON_SPECIALCARBINE
    [2132975508]    = 0.5,        --WEAPON_BULLPUPRIFLE
	[-2066285827]   = 0.01,        --WEAPON_BULLPUPRIFLEMK2
    [1649403952]    = 0.7,        --WEAPON_COMPACTRIFLE
	[-1768145561]	= 0.3,		  --WEAPON_SPECIALCARBINEMK2
	[-1658906650]	= 0.0,		  --WEAPON_MILITARYRIFLE
    [-1569615261]	= 0.0,		  --WEAPON_PAINTBALLGUN
	[-774507221]	= 0.1,		  --WEAPON_TACTICALRIFLE
	[-947031628]	= 0.01,		  --WEAPON_HEAVYRIFLE
	
    --SNIPER RIFLES
    [100416529]     = 10.0,       --WEAPON_SNIPERRIFLE
    [205991906]     = 5.1,       --WEAPON_HEAVYSNIPER
    [177293209]     = 5.1,       --WEAPON_HEAVYSNIPERMK2
    [-952879014]    = 5.1,       --WEAPON_MARKSMANRIFLE
	[-303773045]	= 0.1,		 --WEAPON_M700
	[1853742572]	= 0.8,		 --WEAPON_PRECISIONRIFLE

    --SHOTGUNS
    [487013001]     = 0.7,        --WEAPON_PUMPSHOTGUN
    [2017895192]    = 0.7,        --WEAPON_SAWNOFFSHOTGUN
    [-1654528753]   = 0.7,        --WEAPON_BULLPUPSHOTGUN
    [-494615087]    = 0.7,        --WEAPON_ASSAULTSHOTGUN
    [-1466123874]   = 0.3,        --WEAPON_MUSKET
    [984333226]     = 0.7,        --WEAPON_HEAVYSHOTGUN
    [-275439685]    = 0.7,        --WEAPON_DOUBLEBARRELSHOTGUN
    [317205821]     = 0.7,        --WEAPON_AUTOSHOTGUN
	[94989220]		= 0.7,		  --WEAPON_COMBATSHOTGUN
	[1432025498]	= 0.7,			--WEAPON_PUMPSHOTGUN_MK2
	[-2017701774]	= 0.0,		--WEAPON_BEANBAGSHOTGUN

    --HEAVY WEAPONS
    [-1568386805]   = 2.5,        --WEAPON_GRENADELAUNCHER
    [-1312131151]   = 4.5,        --WEAPON_RPG
    [1119849093]    = 3.5,        --WEAPON_MINIGUN
    [2138347493]    = 2.0,        --WEAPON_FIREWORK
    [1834241177]    = 1.5,        --WEAPON_RAILGUN
    [1672152130]    = 4.5,        --WEAPON_HOMINGLAUNCHER
    [1305664598]    = 2.5,        --WEAPON_GRENADELAUNCHERSMOKE
    [108959754]     = 3.0,        --WEAPON_COMPACTLAUNCHER
}


------------SHAKE------------
--Configure the shaking effect of each weapon when fired. The higher the number, the higher the effect.
--Suggested values: 0.01 - 0.7. Values higher than 1.0 will result in extremely strong shaking effects

Config.WeaponShake = {
    --HANDGUNS
    [453432689]     = 0.0,        --WEAPON_PISTOL
    [-1045183535]   = 0.0,        --WEAPON_REVOLVER
    [-1075685676]    = 0.0,        --WEAPON_PISTOLMK2
    [1593441988]    = 0.0,        --WEAPON_COMBATPISTOL
    [-1716589765]   = 0.0,       --WEAPON_PISTOL50
    [-1076751822]   = 0.0,       --WEAPON_SNSPISTOL
    [-771403250]    = 0.0,        --WEAPON_HEAVYPISTOL
    [137902532]     = 0.0,        --WEAPON_VINTAGEPISTOL
    [-598887786]    = 0.0,        --WEAPON_MARKSMANPISTOL
    [584646201]     = 0.0,        --WEAPON_APPISTOL
    [911657153]     = 0.0,       --WEAPON_STUNGUN
    [1198879012]    = 0.0,        --WEAPON_FLAREGUN
    [-1746263880]   = 0.0,        --WEAPON_DOUBLEACTION
	[1470379660]	= -0.0, 		--WEAPON_GADGETPISTOL
	[-879347409]	= 0.0,			--WEAPON_REVOLVER_MK2
    [883325847]     = 0.0,      --WEAPON_PETROLCAN
    [101631238]     = 0.0,      --WEAPON_FIREEXTINGUSHER
	[465894841]     = 0.0,      --WEAPON_PISTOLXM3

    --MACHINE GUNS
    [324215364]     = 0.0,        --WEAPON_MICROSMG
    [-619010992]    = 0.0,        --WEAPON_MACHINEPISTOL    
    [736523883]     = 0.0,        --WEAPON_SMG
    [2024373456]    = 0.0,       --WEAPON_SMGMK2
    [-270015777]    = 0.0,        --WEAPON_ASSAULTSMG
    [171789620]     = 0.0,        --WEAPON_COMBATPDW
    [-1660422300]   = 0.03,        --WEAPON_MG
    [2144741730]    = 0.0,        --WEAPON_COMBATMG
    [3686608920]    = 0.0,        --WEAPON_COMBATMGMK2
    [1627465347]    = 0.0,        --WEAPON_GUSENBERG
    [-1121678507]   = 0.0,        --WEAPON_MINISMG

    --ASSAULT RIFLES
    [-1074790547]   = 0.0,        --WEAPON_ASSAULTRIFLE
    [961495388]     = 0.015,        --WEAPON_ASSAULTRIFLEMK2
    [-2084633992]   = 0.0,        --WEAPON_CARBINERIFLE
    [-86904375]     = 0.005,        --WEAPON_CARBINERIFLEMK2
    [-1357824103]   = 0.0,        --WEAPON_ADVANCEDRIFLE
    [-1063057011]   = 0.0,        --WEAPON_SPECIALCARBINE
    [2132975508]    = 0.0,        --WEAPON_BULLPUPRIFLE
	[-2066285827]   = 0.0,        --WEAPON_BULLPUPRIFLEMK2
    [1649403952]    = 0.0,        --WEAPON_COMPACTRIFLE
	[-1768145561]	= 0.005,		  --WEAPON_SPECIALCARBINEMK2
	[-1658906650]	= 0.015,		  --WEAPON_MILITARYRIFLE
    [-1569615261]	= 0.0,		  --WEAPON_PAINTBALLGUN
	[-774507221]	= 0.0,		  --WEAPON_TACTICALRIFLE
	[-947031628]	= 0.0,		  --WEAPON_HEAVYRIFLE

	--SNIPER RIFLES
    [100416529]     = 0.5,       --WEAPON_SNIPERRIFLE
    [205991906]     = 0.5,       --WEAPON_HEAVYSNIPER
    [177293209]     = 0.5,       --WEAPON_HEAVYSNIPERMK2
    [-952879014]    = 0.5,       --WEAPON_MARKSMANRIFLE
	[-303773045]	= 0.5,		 --WEAPON_M700
	[1853742572]	= 0.3,		 --WEAPON_PRECISIONRIFLE

    --SHOTGUNS
    [487013001]     = 0.07,        --WEAPON_PUMPSHOTGUN
    [2017895192]    = 0.07,        --WEAPON_SAWNOFFSHOTGUN
    [-1654528753]   = 0.07,        --WEAPON_BULLPUPSHOTGUN
    [-494615087]    = 0.04,        --WEAPON_ASSAULTSHOTGUN
    [-1466123874]   = 0.04,        --WEAPON_MUSKET
    [984333226]     = 0.04,        --WEAPON_HEAVYSHOTGUN
    [-275439685]    = 0.04,        --WEAPON_DOUBLEBARRELSHOTGUN
    [317205821]     = 0.04,        --WEAPON_AUTOSHOTGUN
	[94989220]		= 0.04,		  --WEAPON_COMBATSHOTGUN
	[1432025498]	= 0.04,		--WEAPON_PUMPSHOTGUN_MK2
	[-2017701774]	= 0.0,		--WEAPON_BEANBAGSHOTGUN

    --HEAVY WEAPONS
    [-1568386805]   = 0.04,        --WEAPON_GRENADELAUNCHER
    [-1312131151]   = 0.08,        --WEAPON_RPG
    [1119849093]    = 0.04,        --WEAPON_MINIGUN
    [2138347493]    = 0.04,        --WEAPON_FIREWORK
    [1834241177]    = 0.04,        --WEAPON_RAILGUN
    [1672152130]    = 0.08,        --WEAPON_HOMINGLAUNCHER
    [1305664598]    = 0.04,        --WEAPON_GRENADELAUNCHERSMOKE
    [108959754]     = 0.04,        --WEAPON_COMPACTLAUNCHER
}



------------DAMAGE------------
--Configure your own custom damage for each weapon. Only works if you have set "Config.UseCustomDamage" to true

Config.WeaponDamage = {
     --HANDGUNS
    [453432689]     = 0.55,        --WEAPON_PISTOL
    [-1045183535]   = 0.55,        --WEAPON_REVOLVER
    [-1075685676]   = 0.65,        --WEAPON_PISTOLMK2
    [1593441988]    = 0.55,        --WEAPON_COMBATPISTOL
    [-1716589765]   = 0.55,       --WEAPON_PISTOL50
    [-1076751822]   = 0.935,       --WEAPON_SNSPISTOL
    [-771403250]    = 0.55,        --WEAPON_HEAVYPISTOL
    [137902532]     = 0.75,        --WEAPON_VINTAGEPISTOL
    [-598887786]    = 0.195,        --WEAPON_MARKSMANPISTOL
    [584646201]     = 0.75,        --WEAPON_APPISTOL
    [911657153]     = 0.0,       --WEAPON_STUNGUN
    [1198879012]    = 0.0,        --WEAPON_FLAREGUN
	[-1746263880]	= 0.545,		 --WEAPON_DOUBLEACTION
	[1470379660]	= 0.75, 		--WEAPON_GADGETPISTOL
	[-879347409]	= 0.515,			--WEAPON_REVOLVER_MK2
    [883325847]     = 0.0,      --WEAPON_PETROLCAN
    [101631238]     = 0.0,      --WEAPON_FIREEXTINGUSHER
	[465894841]     = 0.65,      --WEAPON_PISTOLXM3

    --MACHINE GUNS
    [324215364]     = 0.75,        --WEAPON_MICROSMG
    [-619010992]    = 0.65,        --WEAPON_MACHINEPISTOL    
    [736523883]     = 0.87,        --WEAPON_SMG
    [2024373456]    = 0.85,       --WEAPON_SMGMK2
    [-270015777]    = 0.85,        --WEAPON_ASSAULTSMG
    [171789620]     = 0.75,        --WEAPON_COMBATPDW
    [-1660422300]   = 1.0,        --WEAPON_MG
    [2144741730]    = 1.125,        --WEAPON_COMBATMG
    [3686608920]    = 1.125,        --WEAPON_COMBATMGMK2
    [1627465347]    = 0.85,        --WEAPON_GUSENBERG
    [-1121678507]   = 0.85,        --WEAPON_MINISMG

    --ASSAULT RIFLES
    [-1074790547]   = 0.65,        --WEAPON_ASSAULTRIFLE
    [961495388]     = 0.575,        --WEAPON_ASSAULTRIFLEMK2
    [-2084633992]   = 0.675,        --WEAPON_CARBINERIFLE
    [-86904375]     = 0.625,        --WEAPON_CARBINERIFLEMK2
    [-1357824103]   = 0.65,        --WEAPON_ADVANCEDRIFLE
    [-1063057011]   = 0.60,        --WEAPON_SPECIALCARBINE
    [2132975508]    = 0.625,        --WEAPON_BULLPUPRIFLE
	[-2066285827]   = 0.95,        --WEAPON_BULLPUPRIFLEMK2
    [1649403952]    = 0.60,        --WEAPON_COMPACTRIFLE
	[-1768145561]	= 0.65,		  --WEAPON_SPECIALCARBINEMK2
	[-1658906650]	= 0.725,		  --WEAPON_MILITARYRIFLE
    [-1569615261]	= 0.00,		  --WEAPON_PAINTBALLGUN
	[-774507221]	= 0.675,	  --WEAPON_TACTICALRIFLE
	[-947031628]	= 1.0,		  --WEAPON_HEAVYRIFLE
	
    --SNIPER RIFLES
    [100416529]     = 1.15,       --WEAPON_SNIPERRIFLE
    [205991906]     = 0.7,       --WEAPON_HEAVYSNIPER
    [177293209]     = 0.7,       --WEAPON_HEAVYSNIPERMK2
    [-952879014]    = 0.7,       --WEAPON_MARKSMANRIFLE
	[-303773045]	= 0.0,		 --WEAPON_M700
	[1853742572]	= 1.0,		 --WEAPON_PRECISIONRIFLE

    --SHOTGUNS
    [487013001]     = 0.65,        --WEAPON_PUMPSHOTGUN
    [2017895192]    = 0.68,        --WEAPON_SAWNOFFSHOTGUN
    [-1654528753]   = 1.25,        --WEAPON_BULLPUPSHOTGUN
    [-494615087]    = 0.45,        --WEAPON_ASSAULTSHOTGUN
    [-1466123874]   = 0.0,        --WEAPON_MUSKET
    [984333226]     = 0.45,        --WEAPON_HEAVYSHOTGUN
    [-275439685]    = 0.65,        --WEAPON_DOUBLEBARRELSHOTGUN
    [317205821]     = 0.55,        --WEAPON_AUTOSHOTGUN
	[94989220]		= 0.6,		  --WEAPON_COMBATSHOTGUN
	[1432025498]	= 0.75,			--WEAPON_PUMPSHOTGUN_MK2
	[-2017701774]	= 0.0,		--WEAPON_BEANBAGSHOTGUN

    --HEAVY WEAPONS
    [-1568386805]   = 0.0,        --WEAPON_GRENADELAUNCHER
    [-1312131151]   = 0.0,        --WEAPON_RPG
    [1119849093]    = 0.0,        --WEAPON_MINIGUN
    [2138347493]    = 0.0,        --WEAPON_FIREWORK
    [1834241177]    = 0.0,        --WEAPON_RAILGUN
    [1672152130]    = 0.0,        --WEAPON_HOMINGLAUNCHER
    [1305664598]    = 0.0,        --WEAPON_GRENADELAUNCHERSMOKE
    [108959754]     = 0.0,        --WEAPON_COMPACTLAUNCHER
}


--Set a weapon to "true" if the weapon shall not use the lock system
Config.WeaponsNoLock = {
    [453432689]     =  false,      --WEAPON_PISTOL
    [-1045183535]   =  false,      --WEAPON_REVOLVER
    [-1075685676]    = false,       --WEAPON_PISTOLMK2
    [1593441988]    =  false,      --WEAPON_COMBATPISTOL
    [-1716589765]   =  false,     --WEAPON_PISTOL50
    [-1076751822]   =  false,     --WEAPON_SNSPISTOL
    [-771403250]    =  false,      --WEAPON_HEAVYPISTOL
    [137902532]     =  false,      --WEAPON_VINTAGEPISTOL
    [-598887786]    =  false,      --WEAPON_MARKSMANPISTOL
    [584646201]     =  false,      --WEAPON_APPISTOL
    [911657153]     =  false,     --WEAPON_STUNGUN
    [1198879012]    =  false,      --WEAPON_FLAREGUN

    --MACHINE GUNS
    [324215364]     =  false,      --WEAPON_MICROSMG
    [-619010992]    =  false,      --WEAPON_MACHINEPISTOL    
    [736523883]     =  false,      --WEAPON_SMG
    [2024373456]    =  false,     --WEAPON_SMGMK2
    [-270015777]    =  false,      --WEAPON_ASSAULTSMG
    [171789620]     =  false,      --WEAPON_COMBATPDW
    [-1660422300]   =  false,      --WEAPON_MG
    [2144741730]    =  false,      --WEAPON_COMBATMG
    [3686625920]    =  false,      --WEAPON_COMBATMGMK2
    [1627465347]    =  false,      --WEAPON_GUSENBERG
    [-1121678507]   =  false,      --WEAPON_MINISMG

    --ASSAULT RIFLES
    [-1074790547]   =  false,      --WEAPON_ASSAULTRIFLE
    [961495388]     =  false,      --WEAPON_ASSAULTRIFLEMK2
    [-2084633992]   =  false,      --WEAPON_CARBINERIFLE
    [-86904375]    =   false,     --WEAPON_CARBINERIFLEMK2
    [-1357824103]   =  false,      --WEAPON_ADVANCEDRIFLE
    [-1063057011]   =  false,      --WEAPON_SPECIALCARBINE
    [2132975508]    =  false,      --WEAPON_BULLPUPRIFLE
    [1649403952]    =  false,      --WEAPON_COMPACTRIFLE

    --SNIPER RIFLES
    [100416529]     =  false,     --WEAPON_SNIPERRIFLE
    [205991906]     =  false,     --WEAPON_HEAVYSNIPER
    [177293209]     =  false,     --WEAPON_HEAVYSNIPERMK2
    [-952879014]    =  false,     --WEAPON_MARKSMANRIFLE

    --SHOTGUNS
    [487013001]     =  false,      --WEAPON_PUMPSHOTGUN
    [2017895192]    =  false,      --WEAPON_SAWNOFFSHOTGUN
    [-1654528753]   =  false,      --WEAPON_BULLPUPSHOTGUN
    [-494615257]    =  false,      --WEAPON_ASSAULTSHOTGUN
    [-1466123874]   =  false,      --WEAPON_MUSKET
    [984333226]     =  false,      --WEAPON_HEAVYSHOTGUN
    [-275439685]    =  false,      --WEAPON_DOUBLEBARRELSHOTGUN
    [317205821]     =  false,      --WEAPON_AUTOSHOTGUN

    --HEAVY WEAPONS
    [-1568386805]   =  false,      --WEAPON_GRENADELAUNCHER
    [-1312131151]   =  false,      --WEAPON_RPG
    [1119849093]    =  false,      --WEAPON_MINIGUN
    [2138347493]    =  false,      --WEAPON_FIREWORK
    [1834241177]    =  false,      --WEAPON_RAILGUN
    [1672152130]    =  false,      --WEAPON_HOMINGLAUNCHER
    [1305664598]    =  false,      --WEAPON_GRENADELAUNCHERSMOKE
    [125959754]     =  false,      --WEAPON_COMPACTLAUNCHER
}


------------WEAPON LOCK------------
Config.WeaponLock = {
    --!DO NOT EDIT!--
}


------------WEAPON FIRING MODE------------
Config.WeaponFiringMode = {
    --!DO NOT EDIT!--
}