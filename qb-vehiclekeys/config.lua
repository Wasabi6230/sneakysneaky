Config = {}

-- NPC Vehicle Lock States
Config.LockNPCDrivingCars = false -- Lock state for NPC cars being driven by NPCs [true = locked, false = unlocked]
Config.LockNPCParkedCars = true -- Lock state for NPC parked cars [true = locked, false = unlocked]

-- Lockpick Settings
Config.RemoveLockpickNormal = 0.7 -- Chance to remove lockpick on fail
Config.RemoveLockpickAdvanced = 0.5 -- Chance to remove advanced lockpick on fail
Config.LockPickDoorEvent = function() -- This function is called when a player attempts to lock pick a vehicle
    TriggerEvent('qb-lockpick:client:openLockpick', LockpickFinishCallback)
end

-- Carjack Settings
Config.CarJackEnable = true -- True allows for the ability to car jack peds.
Config.CarjackingTime = 7500 -- How long it takes to carjack
Config.DelayBetweenCarjackings = 10000 -- Time before you can carjack again
Config.CarjackChance = {
    ['2685387236'] = 0.0, -- melee
    ['416676503'] = 0.99, -- handguns
    ['-957766203'] = 0.99, -- SMG
    ['860033945'] = 0.99, -- shotgun
    ['970310034'] = 0.99, -- assault
    ['1159398588'] = 0.99, -- LMG
    ['3082541095'] = 0.99, -- sniper
    ['2725924767'] = 0.99, -- heavy
    ['1548507267'] = 0.0, -- throwable
    ['4257178988'] = 0.0, -- misc
}

-- Hotwire Settings
Config.HotwireChance = 0.8 -- Chance for successful hotwire or not
Config.TimeBetweenHotwires = 5000 -- Time in ms between hotwire attempts
Config.minHotwireTime = 20000 -- Minimum hotwire time in ms
Config.maxHotwireTime = 30000 --  Maximum hotwire time in ms

-- Police Alert Settings
Config.AlertCooldown = 10000 -- 10 seconds
Config.PoliceAlertChance = 0.75 -- Chance of alerting police during the day
Config.PoliceNightAlertChance = 0.50 -- Chance of alerting police at night (times:01-06)

-- Job Settings
Config.SharedKeys = { -- Share keys amongst employees. Employees can lock/unlock any job-listed vehicle
    ['police'] = { -- Job name
        requireOnduty = true,
        vehicles = {
	    'r1200rtp', -- Vehicle model
	    'holden_evoke_police', -- Vehicle model
		'holden_zb_police', -- Vehicle model
		'skoda_superb_police', -- Vehicle model
		'holden_colorado_police', -- Vehicle model
		'holden_colorado_unmarked', -- Vehicle model
		'holden_evoke_unmarked', -- Vehicle model
		'holden_zb_unmarked', -- Vehicle model
		'ford_xr6t_unmarked', -- Vehicle model
		'holden_zbs_police', -- Vehicle model
		'18jeep', -- Vehicle model
	}
    },

    ['mechanic'] = {
        requireOnduty = false,
        vehicles = {
            'flatbed',
		}
    }
}

-- These vehicles cannot be jacked
Config.ImmuneVehicles = {
    'stockade',
	--EMS
	'f750',
	'ambulance',
	'Colorado',
	'toyota_tango',
	'maverick2',
	--POLICE
	'polmav',
	'holden_evoke_police',
	'holden_zb_police',
	'skoda_superb_police',
	'holden_equinox_police',
	'holden_colorado_police',
	'holden_colorado_unmarked',
	'holden_evoke_unmarked',
	'holden_zb_unmarked',
	'holden_equinox_unmarked',
	'ford_xr6t_unmarked',
	'18jeep',
	--YELLOWJACKS
	'taco'
}

-- These vehicles will never lock
Config.NoLockVehicles = {}

-- These weapons cannot be used for carjacking
Config.NoCarjackWeapons = {
    "WEAPON_UNARMED",
    "WEAPON_Knife",
    "WEAPON_Nightstick",
    "WEAPON_HAMMER",
    "WEAPON_Bat",
    "WEAPON_Crowbar",
    "WEAPON_Golfclub",
    "WEAPON_Bottle",
    "WEAPON_Dagger",
    "WEAPON_Hatchet",
    "WEAPON_KnuckleDuster",
    "WEAPON_Machete",
    "WEAPON_Flashlight",
    "WEAPON_SwitchBlade",
    "WEAPON_Poolcue",
    "WEAPON_Wrench",
    "WEAPON_Battleaxe",
    "WEAPON_Grenade",
    "WEAPON_StickyBomb",
    "WEAPON_ProximityMine",
    "WEAPON_BZGas",
    "WEAPON_Molotov",
    "WEAPON_FireExtinguisher",
    "WEAPON_PetrolCan",
    "WEAPON_Flare",
    "WEAPON_Ball",
    "WEAPON_Snowball",
    "WEAPON_SmokeGrenade",
}
