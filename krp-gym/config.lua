
Config = {}

Config.UpdateFrequency = 3600 
Config.DeleteStats = false 

Config.MmbershipCardPrice = 200

Config.Skills = {
    ["resistance"] = { 
        ["Current"] = 20, ["RemoveAmount"] = -0.3, ["Stat"] = "MP0_STAMINA" 
    },

    ["strength"] = {
        ["Current"] = 10, ["RemoveAmount"] = -0.3, ["Stat"] = "MP0_STRENGTH"
    },

    ["diving"] = {
        ["Current"] = 0, ["RemoveAmount"] = -0.3, ["Stat"] = "MP0_LUNG_CAPACITY"
    },

    ["shooting"] = {
        ["Current"] = 0, ["RemoveAmount"] = -0.1,["Stat"] = "MP0_SHOOTING_ABILITY"
    },

    ["driving"] = {
        ["Current"] = 0, ["RemoveAmount"] = -0.5, ["Stat"] = "MP0_DRIVING_ABILITY"
    },

    ["Raise front wheel"] = {
        ["Current"] = 0, ["RemoveAmount"] = -0.2, ["Stat"] = "MP0_WHEELIE_ABILITY"
    }
}

Config.Locations = {
	-- VESP BEACH
    [1] = {--pull-ups
        coords = vector3(-1200.02, -1571.18, 4.61), heading = 215.53,
        animation = "prop_human_muscle_chin_ups", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do Pull-ups]", viewDistance = 2.5,
    },
    [2] = {--arms
        coords = vector3(-1202.9837, -1565.1718, 4.63115), heading = 212.78,
        animation = "world_human_muscle_free_weights", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Use weights]", viewDistance = 2.5,
    },
    [3] = {--pushup
        coords = vector3(-1203.3242, -1570.6184, 4.631155), heading = 212.78,
        animation = "world_human_push_ups", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do push-ups]", viewDistance = 2.5,
    },
    [4] = {--yoga
        coords = vector3(-1204.7958, -1560.1906, 4.63115), heading = 212.78,
        animation = "world_human_yoga", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 2.5,
    },
    [5] = {--yoga
        coords = vector3(-1221.04, -1545.01, 4.69), heading = 212.78,
        animation = "world_human_yoga", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 2.5,
    },
    [6] = {--yoga
        coords = vector3(-1217.09, -1543.43, 4.72), heading = 212.78,
        animation = "world_human_yoga", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 2.5,
    },
	[7] = {--arms
        coords = vector3(-1217.09, -1543.43, 4.72), heading = 212.78,
        animation = "world_human_muscle_free_weights", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Use weights]", viewDistance = 2.5,
    },
	-- PRISON (REPLACED BY QB-JAIL)
	-- [8] = {--pull-ups 
        -- coords = vector3(1643.16, 2527.99, 45.56), heading = 225.51,
        -- animation = "prop_human_muscle_chin_ups", skill = "resistance", SkillAddQuantity = 1,
        -- Text3D = "~b~E~w~ - [Do Pull-ups]", viewDistance = 2.5,
    -- },
	-- [9] = {--pull-ups 
        -- coords = vector3(1649.23, 2529.58, 45.56), heading = 50.5,
        -- animation = "prop_human_muscle_chin_ups", skill = "resistance", SkillAddQuantity = 1,
        -- Text3D = "~b~E~w~ - [Do Pull-ups]", viewDistance = 2.5,
    -- },
	-- [10] = {--pushup
        -- coords = vector3(1637.03, 2524.02, 45.56), heading = 319.25,
        -- animation = "world_human_push_ups", skill = "strength", SkillAddQuantity = 1,
        -- Text3D = "~b~E~w~ - [Do push-ups]", viewDistance = 2.5,
    -- },
	-- [11] = {--pushup
        -- coords = vector3(1641.6, 2524.6, 45.56), heading = 9.79,
        -- animation = "world_human_push_ups", skill = "strength", SkillAddQuantity = 1,
        -- Text3D = "~b~E~w~ - [Do push-ups]", viewDistance = 2.5,
    -- },
	-- [12] = {--pushup
        -- coords = vector3(1639.16, 2531.686, 45.56), heading = 233.48,
        -- animation = "world_human_push_ups", skill = "strength", SkillAddQuantity = 1,
        -- Text3D = "~b~E~w~ - [Do push-ups]", viewDistance = 2.5,
    -- },
	-- [13] = {--arms
        -- coords = vector3(1645.83, 2524.9, 45.56), heading = 49.28,
        -- animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        -- Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 2.5,
    -- },
	-- [14] = {--arms
        -- coords = vector3(1647.358, 2527.1, 45.56), heading = 49.58,
        -- animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        -- Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 2.5,
    -- },
	-- [15] = {--arms
        -- coords = vector3(1641.21, 2536.83, 45.56), heading = 228.71,
        -- animation = "world_human_muscle_free_weights", skill = "strength", SkillAddQuantity = 1,
        -- Text3D = "~b~E~w~ - [Use weights]", viewDistance = 2.5,
    -- },
	-- [16] = {--arms
        -- coords = vector3(1639.11, 2527.84, 45.56), heading = 19.63,
        -- animation = "world_human_muscle_free_weights", skill = "strength", SkillAddQuantity = 1,
        -- Text3D = "~b~E~w~ - [Use weights]", viewDistance = 2.5,
    -- },
	-- MIRROR PARK
	[8] = {--pull-ups
        coords = vector3(818.98, -257.92, 65.82), heading = 187.73,
        animation = "prop_human_muscle_chin_ups", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do Pull-ups]", viewDistance = 2.5,
    },
	[9] = {--pull-ups
        coords = vector3(807.32, -261.49, 65.89), heading = 212.62,
        animation = "prop_human_muscle_chin_ups", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do Pull-ups]", viewDistance = 2.5,
    },
	[10] = {--arms
        coords = vector3(811.5, -270.62, 65.94), heading = 13.9,
        animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 2.5,
    },
	[11] = {--arms
        coords = vector3(813.01, -270.08, 65.94), heading = 13.94,
        animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 2.5,
    },	
	[12] = {--arms
        coords = vector3(814.84, -269.73, 65.91), heading = 5.75,
        animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 2.5,
    },
	[13] = {--pushup
        coords = vector3(814.74, -260.3, 65.79), heading = 188.47,
        animation = "world_human_push_ups", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do push-ups]", viewDistance = 2.5,
    },
	[14] = {--pushup
        coords = vector3(813.03, -260.7, 65.77), heading = 197.08,
        animation = "world_human_push_ups", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do push-ups]", viewDistance = 2.5,
    },
	[15] = {--pushup
        coords = vector3(811.53, -261.2, 65.76), heading = 198.26,
        animation = "world_human_push_ups", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do push-ups]", viewDistance = 2.5,
    },
	[16] = {--arms
        coords = vector3(817.36, -272.32, 65.96), heading = 280.64,
        animation = "world_human_muscle_free_weights", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Use weights]", viewDistance = 2.5,
    },
	[17] = {--arms
        coords = vector3(813.27, -276.89, 66.29), heading = 185.48,
        animation = "world_human_muscle_free_weights", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Use weights]", viewDistance = 2.5,
    },
	
	-- PALETO BAY
	[18] = {--arms
        coords = vector3(-305.84, 6123.19, 31.5), heading = 43.54,
        animation = "world_human_muscle_free_weights", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Use weights]", viewDistance = 1.5,
    },
	[19] = {--arms
        coords = vector3(-307.91, 6121.06, 31.5), heading = 43.91,
        animation = "world_human_muscle_free_weights", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Use weights]", viewDistance = 1.5,
    },
	[20] = {--pull-ups
        coords = vector3(-306.75, 6109.75, 31.5), heading = 225.87,
        animation = "prop_human_muscle_chin_ups", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do Pull-ups]", viewDistance = 1.5,
    },
	[21] = {--pull-ups
        coords = vector3(-305.19, 6111.28, 31.5), heading = 225.87,
        animation = "prop_human_muscle_chin_ups", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do Pull-ups]", viewDistance = 1.5,
    },
	[22] = {--pull-ups
        coords = vector3(-303.65, 6112.87, 31.5), heading = 225.87,
        animation = "prop_human_muscle_chin_ups", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do Pull-ups]", viewDistance = 1.5,
    },
	[23] = {--pull-ups
        coords = vector3(-302.1, 6114.47, 31.5), heading = 225.87,
        animation = "prop_human_muscle_chin_ups", skill = "resistance", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do Pull-ups]", viewDistance = 1.5,
    },
	[24] = {--arms
        coords = vector3(-301.13, 6117.45, 31.52), heading = 207.51,
        animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 1.2,
    },
	[25] = {--arms
        coords = vector3(-298.33, 6117.91, 31.52), heading = 269.11,
        animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 1.2,
    },
	[26] = {--arms
        coords = vector3(-299.14, 6119.68, 31.52), heading = 266.4,
        animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 1.2,
    },
	[27] = {--arms
        coords = vector3(-298.01, 6121.65, 31.52), heading = 264.42,
        animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 1.2,
    },
	[28] = {--arms
        coords = vector3(-296.47, 6119.67, 31.52), heading = 270.39,
        animation = "world_human_yoga", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do yoga]", viewDistance = 1.2,
    },
	[29] = {--pushup
        coords = vector3(-303.53, 6125.28, 31.5), heading = 222.61,
        animation = "world_human_push_ups", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do push-ups]", viewDistance = 2.0,
    },
	[30] = {--pushup
        coords = vector3(-304.7, 6116.53, 31.5), heading = 320.68,
        animation = "world_human_push_ups", skill = "strength", SkillAddQuantity = 1,
        Text3D = "~b~E~w~ - [Do push-ups]", viewDistance = 1.5,
    },
	
	
}