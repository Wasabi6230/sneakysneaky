Config = Config or {}

--- QBCore Framework related settings
Config.Inventory            = 'player' -- 'exports' for using qb-inventory exports or 'player' for using Player object functions
Config.Phone                = 'GKS' -- 'This script supports standard QBCore, GKS Phone, options: (QBCore/GKS)'

--- Script related settings
Config.Debug                = true  -- Enables or disables extra console prints to the scripts
Config.AntiHelicopter       = false -- Enable or disable the guards that will shoot players if they enter prison with a helicopter to pick up someone
Config.JailBreakCops        = 6     -- Amount of cops on duty required to start a jailbreak
Config.JailBreakDuration    = 60    -- time in minutes that players have to comlete the jailbreak before breaking someone out is impossible
Config.BlipCoords           = vector3(1852.34, 2586.13, 45.67)          -- Bolingbroke Penitentiary blip location
Config.ReceptionPedCoords   = vector4(1836.8227, 2591.1247, 45.952308, 275.81369) -- ped location for reception interaction
--Config.BMXCoords            = vector4(1633.97, 2606.15, 44.56, 245.67)  -- ped location to grab BMX
--Config.SpawnBMX             = vector3(1634.73, 2610.02, 44.56)          -- spawn location of BMX
Config.GardeningPed         = vector4(1694.98, 2541.10, 44.56, 324.13)  -- ped location for farming supplies
Config.InfirmaryPed         = vector4(1779.75, 2565.03, 45.8, 198.65)  -- ped location for infirmary
Config.SlushieSpoonChance   = 1    -- %Chance to receive a spoon after drinking a slushie
Config.KitchenRewardAmount  = 3     -- Amount that a player receives of a random item when doing kitchen jobs, chance per task is in kitchenTasks in sv_jobs
Config.CleaningTaskAmount   = 14    -- Amount of cleaning tasks that are generated per iteration, can't be higher than amount of objects in cleaningSetup (33)
Config.ScrapRewardAmount    = 1     -- Amount that a player receives of a random item when doing scrapyard jobs
Config.ScrapRewardChance    = 0.5    -- %Chance to receive an item when doing a scrapyard job
Config.FarmingLoopInterval  = 4     -- Minutes for the farming loop to increase growth and health based on water and nutrition
Config.FarmingHarvestAmount = 5     -- Amount of prisonfruit a player gets from harvesting a farming patch

Config.ReduceReward = { -- %Chance to reduce the jail sentence after completing a task; Amount of minutes to reduce the jail time with
    gardening   = { chance = 28,    amount = 5 },
    running     = { chance = 24,    amount = 3 },
    scrapyard   = { chance = 14,    amount = 1 },
    cleaning    = { chance = 14,    amount = 7 },
    workout     = { chance = 10,    amount = 3 },
    kitchen     = { chance = 14,    amount = 3 },
    electrical  = { chance = 14,    amount = 5 },
    lockup      = { chance = 0,     amount = 0 }
}

--- Economy
Config.CraftingCost = {
    [1] = {
        item = 'lockpick',
        header = 'Lockpick Set',
        amount = 1,
        duration = 5000,
        durationLabel = 'Short',
        items = {
            [1] = {
                item = 'rubber',
                amount = 7
            },
            [2] = {
                item = 'metalscrap',
                amount = 5
            },
            [3] = {
                item = 'aluminum',
                amount = 2
            }
        }
    },
    [2] = {
        item = 'prisonwine',
        header = 'Pruno',
        amount = 1,
        duration = 12000,
        durationLabel = 'Medium',
        items = {
            [1] = {
                item = 'prisonfruit',
                amount = 5
            },
            [2] = {
                item = 'prisonsugar',
                amount = 8
            },
            [3] = {
                item = 'prisonbag',
                amount = 1
            },
            [4] = {
                item = 'prisonslushie',
                amount = 3
            },
            [5] = {
                item = 'prisonjuice',
                amount = 3
            }
        }
    },
    [3] = {
        item = 'prisonmeth',
        header = 'Crank',
        amount = 3,
        duration = 24000,
        durationLabel = 'Long',
        items = {
            [1] = {
                item = 'prisonchemicals',
                amount = 5
            },
            [2] = {
                item = 'prisonbag',
                amount = 1
            },
            [3] = {
                item = 'prisonfarmnutrition',
                amount = 3
            }
        }
    },
    [4] = {
        item = 'weapon_shank',
        header = 'Prison Shank',
        amount = 1,
        duration = 36000,
        durationLabel = 'Long',
        items = {
            [1] = {
                item = 'prisonspoon',
                amount = 1
            },
            [2] = {
                item = 'prisonrock',
                amount = 2
            }
        }
    }
}

Config.PrisonerPedShop = {
    [1] = {
        item = 'weapon_molotov',
        header = "Molotov",
        text = "This should get a nice riot started.",
        cost = {item = "prisonmeth", amount = 24}
    },
    [2] = {
        item = 'weapon_pistol',
        header = 'Pistol',
        text = "So you can defend yourself in here",
        cost = {item = "prisonmeth", amount = 34}
    },
    [3] = {
        item = 'pistol_ammo',
        header = 'Pistol Clip.',
        text = "In case you cannot get the job done with one clip.",
        cost = {item = "prisonwine", amount = 14}
    },
    [4] = {
        item = 'phone',
        header = 'Phone',
        text = "To make contact with the outside",
        cost = {item = "prisonspoon", amount = 3}
    }
}

--- Coordinates for teleportation
Config.Locations = {
    ['exit']        = vector4(1838.35, 2588.28, 45.95, 273.52),
    ['mugshot']     = vector4(402.87, -996.66, -99.0, 180.29),
    ['services']    = vector3(1782.92, 2589.13, 45.8),
    ['cells'] = { -- You don't really want to this these here
        [1]     = vector4(1768.86, 2585.68, 45.8, 266.1),
        [2]     = vector4(1769.04, 2581.71, 45.8, 269.32),
        [3]     = vector4(1768.75, 2577.85, 45.8, 267.3),
        [4]     = vector4(1768.71, 2573.9, 45.8, 265.15),
        [5]     = vector4(1790.06, 2574.23, 45.8, 87.5),
        [6]     = vector4(1790.09, 2578.09, 45.8, 86.42),
        [7]     = vector4(1790.11, 2581.94, 45.8, 83.12),
        [8]     = vector4(1789.98, 2585.87, 45.8, 83.46),
        [9]     = vector4(1769.08, 2597.53, 50.55, 267.75),
        [10]    = vector4(1769.16, 2593.73, 50.55, 264.08),
        [11]    = vector4(1769.15, 2589.67, 50.55, 263.28),
        [12]    = vector4(1785.33, 2601.49, 50.55, 176.77),
        [13]    = vector4(1789.68, 2598.18, 50.55, 85.73),
        [14]    = vector4(1790.2, 2594.38, 50.55, 89.4),
        [15]    = vector4(1790.13, 2590.36, 50.55, 90.81),
        [16]    = vector4(1790.15, 2586.14, 50.55, 77.4),
        [17]    = vector4(1789.98, 2582.39, 50.55, 94.53),
        [18]    = vector4(1790.26, 2578.53, 50.55, 88.39),
        [19]    = vector4(1789.98, 2574.7, 50.55, 99.27),
        [20]    = vector4(1786.17, 2568.28, 50.55, 358.57),
        [21]    = vector4(1782.14, 2568.11, 50.55, 357.3),
        [22]    = vector4(1777.98, 2568.45, 50.55, 1.73),
        [23]    = vector4(1774.62, 2568.52, 50.55, 0.38),
        [24]    = vector4(1769.99, 2573.7, 50.55, 275.34),
        [25]    = vector4(1769.59, 2577.67, 50.55, 271.57),
        [26]    = vector4(1769.75, 2581.83, 50.55, 270.97),
        [27]    = vector4(1768.76, 2585.31, 50.55, 277.37)
    },
}

Config.Electrical = { -- You don't really want to touch anything here, unless you want to add extra entries (Coords), completed changes dynamically during the script)
    [1] = { coords = vector4(1664.85, 2502.00, 46.00, 0.00),    completed = false },
    [2] = { coords = vector4(1761.52, 2540.80, 46.00, 0.00),    completed = false },
    [3] = { coords = vector4(1718.10, 2527.70, 46.00, 115.00),  completed = false },
    [4] = { coords = vector4(1627.94, 2538.80, 46.00, 0.00),    completed = false },
    [5] = { coords = vector4(1608.04, 2540.13, 45.56, 135.00),  completed = false },
    [6] = { coords = vector4(1652.60, 2564.60, 45.56, 0.00),    completed = false },
    [7] = { coords = vector4(1735.52, 2504.34, 45.56, 165.00),  completed = false },
    [8] = { coords = vector4(1677.74, 2480.77, 45.56, 135.00),  completed = false }
}

--- Prison break related states, these change dynamically during the script
Config.JailBreak = {
    PowerplantHit = false,
    JailBreakActive = false,
    Thermite = {
        [1] = { vector4(1846.73, 2571.49, 45.77, 90.00), vector3(1846.78, 2572.49, 45.67), 'jail-gate1', false },
        [2] = { vector4(1791.95, 2612.11, 45.67, 90.00), vector3(1791.98, 2613.11, 45.57), 'jail-gate3', false },
        [3] = { vector4(1761.14, 2517.25, 45.67, 255.0), vector3(1761.10, 2518.27, 45.57), 'jail-door5', false },
        [4] = { vector4(1791.4987, 2561.3688, 45.564922, 90.642807), vector3(1791.0056, 2562.1115, 46.67575), 'prison-Infirmary-front-door', false },
    },
    VARHack = false
}

--- Settings for the difficulty of the minigames
Config.Minigames = {
    ThermiteSettings = {
        correctBlocks = 18, -- correctBlocks = Number of correct blocks the player needs to click
        incorrectBlocks = 4, -- incorrectBlocks = number of incorrect blocks after which the game will fail
        timetoShow = 5, -- timetoShow = time in secs for which the right blocks will be shown
        timetoLose = 18 -- timetoLose = maximum time after timetoshow expires for player to select the right blocks
    },
    VarSettings = {
        varBlocks = 5, -- Amount of blocks displayed during the VAR Hack minigame
    }
}

--- Doc
-- Config.Armory = {
    -- label = "Police Armory",
    -- slots = 6,
    -- items = {
        -- [1] = {
            -- name = "weapon_stungun",
            -- price = 250,
            -- amount = 1,
            -- info = {
                -- serie = "",            
            -- },
            -- type = "weapon",
            -- slot = 1,
        -- },      
        -- [2] = {
            -- name = "weapon_nightstick",
            -- price = 0,
            -- amount = 1,
            -- info = {},
            -- type = "weapon",
            -- slot = 2
        -- },
        -- [3] = {
            -- name = "weapon_flashlight",
            -- price = 75,
            -- amount = 1,
            -- info = {},
            -- type = "weapon",
            -- slot = 3
        -- },
        -- [4] = {
            -- name = "handcuffs",
            -- price = 25,
            -- amount = 1,
            -- info = {},
            -- type = "item",
            -- slot = 4
        -- },
        -- [5] = {
            -- name = "radio",
            -- price = 34,
            -- amount = 1,
            -- info = {},
            -- type = "item",
            -- slot = 5
        -- },
        -- [6] = {
            -- name = "bandage",
            -- price = 25,
            -- amount = 100,
            -- info = {},
            -- type = "item",
            -- slot = 6
        -- },
    -- }
-- }

Config.PrisonOutfit = {
    Enable = true,
    Outfits = {
        ['male'] = {
            outfitData = {
                ['t-shirt'] = { item = 15, texture = 0 },
                ['torso2']  = { item = 97, texture = 1 },
                ['arms']    = { item = 0, texture = 0 },
                ['pants']   = { item = 5, texture = 1 },
                ['shoes']   = { item = 42, texture = 0 },
            }
        },
        ['female'] = {
             outfitData = {
                ['t-shirt'] = { item = 15, texture = 0 },
                ['torso2']  = { item = 88, texture = 1 },
                ['arms']    = { item = 14, texture = 0 },
                ['pants']   = { item = 66, texture = 8 },
                ['shoes']   = { item = 50, texture = 1 },
             }
        }
    }
}
