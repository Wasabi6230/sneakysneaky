local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function() -- NPC Interact Spawns
    exports['qb-target']:SpawnPed({ -- Meth
        model = 's_m_y_armymech_01',
        coords = vector4(-2021.21, 3366.23, 31.33, 214.44), 
        minusOne = true, 
        freeze = true, 
        invincible = true, 
        blockevents = true,
		scenario = 'WORLD_HUMAN_SMOKING',
        target = { 
            options = {
                {
					type = "client",
					event = "ps-drugprocessing:EnterMethlab",
					icon = "fas fa-atom",
					label = Lang:t("target.talk_to_walter"),
                }
            },
          distance = 2.5,
        },
    })
    exports['qb-target']:SpawnPed({ -- Coke
        model = 's_m_y_dealer_01',
        coords = vector4(-625.28, -2363.32, 13.95, 296.46), 
        minusOne = true, 
        freeze = true, 
        invincible = true, 
        blockevents = true,
        target = { 
            options = {
                {
					type = "client",
					event = "ps-drugprocessing:EnterCWarehouse",
					icon = "fas fa-key",
					label = Lang:t("target.talk_to_draco"),
                }
            },
          distance = 2.5,
        },
    })
	exports['qb-target']:SpawnPed({ -- Heroin
        model = 's_m_y_construct_02',
        coords = vector4(-1130.42, -981.09, 2.15, 39.42), 
        minusOne = true, 
        freeze = true, 
        invincible = true, 
        blockevents = true,
		scenario = 'WORLD_HUMAN_HAMMERING',
        target = { 
            options = {
                {
					type = "client",
					event = "ps-drugprocessing:EnterHWarehouse",
					icon = "fas fa-key",
					label = Lang:t("target.talk_to_ranui"),
                }
            },
          distance = 2.5,
        },
    })
	exports['qb-target']:SpawnPed({ -- Weed
        model = 'a_m_m_mlcrisis_01',
        coords = vector4(1003.51, -1572.84, 30.76, 344.5), 
        minusOne = true, 
        freeze = true, 
        invincible = true, 
        blockevents = true,
        target = { 
            options = {
                {
					type = "client",
					event = "ps-drugprocessing:EnterWWarehouse",
					icon = "fas fa-key",
					label = Lang:t("target.talk_to_doug"),
                }
            },
          distance = 2.5,
        },
    })
end)

CreateThread(function() -- Location Interacts
    exports["qb-target"]:AddBoxZone("methkeypad", vector3(969.04, -146.17, -46.4), 0.4, 0.2, {
        name = "methkeypad",
        heading = 0,
        debugPoly = false,
        minZ = -46.2,
        maxZ = -45.8,
    }, {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ExitLab",
                icon = "fas fa-lock",
                label = Lang:t("target.keypad"),
                --job = "methcook", -- Remove this line if you do not want a job check.
            },
        },
    distance = 3.5
    })
    exports["qb-target"]:AddBoxZone("cokeleave", vector3(1088.64, -3187.5, -38.99), 1, 1, {
        name = "cokeleave",
        heading = 0,
        debugPoly = false,
        minZ = -39.99,
        maxZ = -37.99,
    }, {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ExitCWarehouse",
                icon = "fas fa-lock",
                label = Lang:t("target.keypad"),
                --job = "cokecutter", -- Remove this line if you do not want a job check.
            },
        },
    distance = 3.5
    })
	exports["qb-target"]:AddBoxZone("weedleave", vector3(1066.3, -3183.42, -39.16), 1, 1, {
        name = "weedleave",
        heading = 271,
        debugPoly = false,
        minZ = -39.0,
        maxZ = -37.0,
    }, {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ExitWWarehouse",
                icon = "fas fa-lock",
                label = Lang:t("target.keypad"),
                --job = "cokecutter", -- Remove this line if you do not want a job check.
            },
        },
    distance = 3.5
    })
	exports["qb-target"]:AddBoxZone("heroinleave", vector3(996.88, -3200.75, -36.39), 1, 1, {
        name = "heroinleave",
        heading = 86.48,
        debugPoly = false,
        minZ = -36.0,
        maxZ = -34.0, -- REMEMBER IN REVERSE AS NEGATIVE VALUE
    }, {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ExitHWarehouse",
                icon = "fas fa-lock",
                label = Lang:t("target.keypad"),
                --job = "cokecutter", -- Remove this line if you do not want a job check.
            },
        },
    distance = 3.5
    })
	exports["qb-target"]:AddBoxZone("gundealerenter", vector3(1580.81, 3361.93, 37.72), 1, 1, {
        name = "gundealerenter",
        heading = 24.33,
        debugPoly = false,
        minZ = 36.61,
        maxZ = 38.61,
    }, {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:EnterGunDealer",
                icon = "fas fa-lock",
                label = Lang:t("target.gunenter"),
                --job = "cokecutter", -- Remove this line if you do not want a job check.
            },
        },
    distance = 3.5
    })
	exports["qb-target"]:AddBoxZone("gundealerleave", vector3(903.2, -3182.32, -97.05), 1, 1, {
        name = "gundealerleave",
        heading = 97.3,
        debugPoly = false,
        minZ = -98.05,
        maxZ = -96.05, -- REMEMBER IN REVERSE AS NEGATIVE VALUE
    }, {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:ExitGunDealer",
                icon = "fas fa-lock",
                label = Lang:t("target.gunexit"),
                --job = "cokecutter", -- Remove this line if you do not want a job check.
            },
        },
    distance = 3.5
    })
end)

CreateThread(function() -- Spawn Materials
	exports['qb-target']:AddTargetModel("custom_prop_bush_cocaplant_01", {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:pickCocaLeaves",
                icon = "fas fa-leaf",
                label = Lang:t("target.pickCocaLeaves"),
            },
        },
        distance = 4.0
    })
	
    exports['qb-target']:AddTargetModel("poppy_resin_plant", {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:pickHeroin",
                icon = "fas fa-leaf",
                label = Lang:t("target.pickHeroin"),
            },
        },
        distance = 4.0
    })
	
	exports['qb-target']:AddTargetModel("prop_rye_plant_01", {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:pickRye",
                icon = "fas fa-leaf",
                label = Lang:t("target.pickRye"),
            },
        },
        distance = 4.0
    })
	
    exports['qb-target']:AddTargetModel("mw_weed_plant", {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:pickWeed",
                icon = "fas fa-leaf",
                label = Lang:t("target.pickWeed"),
            },
        },
        distance = 4.0
    })

	exports['qb-target']:AddTargetModel("prop_stoneshroom1", {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:pickMushroom",
                icon = "fas fa-leaf",
                label = Lang:t("target.pickMushroom"),
            },
        },
        distance = 4.0
    })
	
	exports['qb-target']:AddTargetModel("sassafras_plant", {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:pickPMK",
                icon = "fas fa-leaf",
                label = Lang:t("target.pickPMK"),
            },
        },
        distance = 4.0
    })
	
	exports['qb-target']:AddTargetModel("poppy_plant", {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:pickOxxy",
                icon = "fas fa-leaf",
                label = Lang:t("target.pickOxxy"),
            },
        },
        distance = 4.0
    })
	
	exports['qb-target']:AddTargetModel("meth_pseudoephedrine", {
        options = {
            {
                type = "client",
                event = "ps-drugprocessing:pickAcid",
                icon = "fas fa-box",
                label = Lang:t("target.pickAcid"),
            },
        },
        distance = 4.0
    })
end)
