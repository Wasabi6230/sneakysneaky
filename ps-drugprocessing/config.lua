Config = {}

-- Collect Locations: -- radius = the circle the plants spawn in, the CircleZone:Create in each drug .lua defines the detection range of the player to start spawning them
Config.CircleZones = {
	WeedField = {coords = vector3(-442.92, 3140.45, 42.63), name = ('Weed Farm'), radius = 120.0},
	MushroomField = {coords = vector3(34.9, 4342.42, 42.22), name = ('Wild Mushrooms'), radius = 90.0},
	PMKField = {coords = vector3(80.0, 7009.03, 11.94), name = ('Sassafras Plants'), radius = 100.0},
	OxxyField = {coords = vector3(-2492.21, 2694.7, 1.39), name = ('Wild Poppy'), radius = 120.0},
	CokeField = {coords = vector3(5316.51, -5216.78, 32.11), name = ('Coke'), radius = 100.0},
	HeroinField = {coords = vector3(2269.3, -1927.58, 70.63), name = ('Heroin'), radius = 60.0},
	RyeField = {coords = vector3(1938.84, 4779.8, 43.08), name = ('Rye Farm'), radius = 200.0},
	AcidFarm = {coords = vector3(4687.18, -4658.11, 2.73), name = ('Hydrochloric Acid'), radius = 80.0},
}

-- LAB KEYS
Config.CokeKey = 'uw_cokekey'
Config.HeroinKey = 'uw_heroinkey'
Config.MethKey = 'uw_methkey'
Config.WeedKey = 'uw_weedkey'
Config.GunKey = 'uw_gunkey'

-- Org Lab Locations:
Config.MethLab = {
	["enter"] = {
        coords = vector4(-2022.69, 3366.98, 31.3, 123.31), -- Zancudo River
    },
    ["exit"] = {
        coords = vector4(969.32, -147.11, -46.4, 275.72),  
    },
}

Config.CokeLab = {
	["enter"] = {
        coords = vector4(-624.27, -2364.12, 13.95, 331.6), -- Airport
    },
    ["exit"] = {
        coords = vector4(1088.64, -3187.5, -38.99, 179.05), -- GTA DLC Biker Cocaine Lab -- vector3(1088.68, -3187.68, -38.99)
    },
}

Config.WeedLab = {
	["enter"] = {
        coords = vector4(1004.58, -1572.96, 30.82, 354.11), --Industrial
    },
    ["exit"] = {
        coords = vector4(1066.4, -3183.39, -39.16, 90.08), 
    },
}

Config.HeroinLab = {
	["enter"] = {
        coords = vector4(-1131.21, -981.05, 2.15, 34.0), --Vesp Construction
    },
    ["exit"] = {
        coords = vector4(996.82, -3200.57, -36.39, 270.52), 
    },
}

Config.GunLab = {
	["enter"] = {
        -- coords = vector4(-354.2, 4825.55, 144.29, 139.83), -- Tunnel
		coords = vector4(1580.61, 3360.95, 37.67, 206.46), -- Sandy Sand Trap
    },
    ["exit"] = {
        coords = vector4(903.16, -3182.49, -97.05, 89.72), 
    },
}

