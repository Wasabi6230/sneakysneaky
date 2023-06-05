Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.MaxInventoryWeight = 120000 -- Max weight a player can carry (default 120kg, written in grams)
Config.MaxInventorySlots = 40 -- Max inventory slots for a player

Config.CleanupDropTime = 15 * 60 -- How many seconds it takes for drops to be untouched before being deleted
Config.MaxDropViewDistance = 12.5 -- The distance in GTA Units that a drop can be seen
Config.UseItemDrop = true -- This will enable item object to spawn on drops instead of markers
Config.ItemDropObject = `prop_beach_bag_01b` -- if Config.UseItemDrop is true, this will be the prop that spawns for the item

-- KRP CUSTOM (Adds progress bar to inventory)
Config.Progressbar = {
    Enable = true,         -- True to Enable the progressbar while opening inventory
    minT = 350,             -- Min Time for Inventory to open
    maxT = 550              -- Max Time for Inventory to open
}
-- KRP CUSTOM END

Config.VendingObjects = {
    "prop_vend_soda_01",
    "prop_vend_soda_02",
    "prop_vend_water_01"
}

Config.BinObjects = {
    "prop_bin_05a",
}

Config.CraftingObject = `prop_toolchest_05`

Config.VendingItem = {
    [1] = {
        name = "bluev",
        price = 20,
        amount = 20,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "water_bottle",
        price = 20,
        amount = 20,
        info = {},
        type = "item",
        slot = 2,
    },
    [3] = {
        name = "bigbenpie",
        price = 20,
        amount = 20,
        info = {},
        type = "item",
        slot = 3,
    },
    [4] = {
        name = "tosti",
        price = 20,
        amount = 20,
        info = {},
        type = "item",
        slot = 4,
    },
}

Config.CraftingItems = { -- (IF ADDING ITEMS HERE, NEED TO ADD THEM TO local function ItemsToItemInfo() in client.lua)
    [1] = {--lockpick
        name = "lockpick",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 22,
            ["plastic"] = 32,
        },
        type = "item",
        slot = 1,
        threshold = 0,
        points = 1,
    },
    [2] = {--screwdriverset
        name = "screwdriverset",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 30,
            ["plastic"] = 42,
        },
        type = "item",
        slot = 2,
        threshold = 20,
        points = 2,
    },
	[3] = {--lightarmor
        name = "lightarmor",
        amount = 10,
        info = {},
        costs = {
            ["metalscrap"] = 25,
            ["plastic"] = 35,
            ["steel"] = 50,
        },
        type = "item",
        slot = 3,
        threshold = 30,
        points = 3,
    },
    [4] = {--electronickit
        name = "electronickit",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 30,
            ["plastic"] = 45,
            ["aluminum"] = 28,
        },
        type = "item",
        slot = 4,
        threshold = 35,
        points = 3,
    },
    [5] = {--radioscanner
        name = "radioscanner",
        amount = 50,
        info = {},
        costs = {
            ["electronickit"] = 2,
            ["plastic"] = 52,
            ["steel"] = 40,
        },
        type = "item",
        slot = 5,
        threshold = 40,
        points = 4,
    },
    [6] = {--gatecrack
        name = "gatecrack",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 10,
            ["plastic"] = 50,
            ["aluminum"] = 30,
            ["iron"] = 17,
            ["electronickit"] = 1,
        },
        type = "item",
        slot = 6,
        threshold = 120,
        points = 5,
    },
    [7] = {--handcuffs
        name = "handcuffs",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 36,
            ["steel"] = 24,
            ["aluminum"] = 28,
        },
        type = "item",
        slot = 7,
        threshold = 500,
        points = 2,
    },
    [8] = {--engineadd
        name = "engineadd",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 32,
            ["steel"] = 43,
            ["plastic"] = 61,
        },
        type = "item",
        slot = 8,
        threshold = 550,
        points = 1,
    },
    [9] = {--pistol_ammo
        name = "pistol_ammo",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 15,
            ["steel"] = 15,
            ["copper"] = 15,
        },
        type = "item",
        slot = 9,
        threshold = 750,
        points = 8,
    },
    [10] = {--armor
        name = "armor",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 33,
            ["steel"] = 44,
            ["plastic"] = 55,
            ["aluminum"] = 22,
        },
        type = "item",
        slot = 10,
        threshold = 3500,
        points = 11,
    },
    [11] = {--drill
        name = "drill",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 50,
            ["steel"] = 50,
            ["screwdriverset"] = 3,
            ["advancedlockpick"] = 2,
        },
        type = "item",
        slot = 11,
        threshold = 5000,
        points = 12,
    },
    [12] = { --shotgun_ammo
        name = "shotgun_ammo",
        amount = 10,
        info = {},
        costs = {
			["metalscrap"] = 10,
			["aluminum"] = 15,
			["plastic"] = 20,
        },
        type = "item",
        slot = 12,
        threshold = 8000,
        points = 20,
    },
    [13] = { --heavyarmor
        name = "heavyarmor",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 66,
            ["steel"] = 88,
            ["plastic"] = 110,
            ["aluminum"] = 44,
        },
        type = "item",
        slot = 13,
        threshold = 10000,
        points = 20,
    },
	[14] = { --smg_ammo
        name = "smg_ammo",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 50,
            ["steel"] = 25,
            ["copper"] = 5,
        },
        type = "item",
        slot = 14,
        threshold = 12500,
        points = 25,
    },
} -- (IF ADDING ITEMS HERE, NEED TO ADD THEM TO local function ItemsToItemInfo() in client.lua)

Config.AttachmentCraftingLocation = vector3(88.91, 3743.88, 30.77)

Config.AttachmentCrafting = { -- DISABLED
    ["items"] = {
	    [1] = {
            name = "pistol_extendedclip",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 140,
                ["steel"] = 250,
                ["rubber"] = 60,
            },
            type = "item",
            slot = 1,
            threshold = 0,
            points = 1,
        },
		[2] = {
            name = "pistol_suppressor",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 165,
                ["steel"] = 285,
                ["rubber"] = 75,
            },
            type = "item",
            slot = 2,
            threshold = 50,
            points = 2,
        },
		[3] = {
            name = "smg_extendedclip",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 230,
                ["steel"] = 365,
                ["rubber"] = 130,
            },
            type = "item",
            slot = 3,
            threshold = 2000,
            points = 3,
        },		
        [4] = {
            name = "smg_drum",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 255,
                ["steel"] = 390,
                ["rubber"] = 145,
            },
            type = "item",
            slot = 4,
            threshold = 2500,
            points = 4,
        },		
        [5] = {
            name = "microsmg_scope",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 300,
                ["steel"] = 469,
                ["rubber"] = 170,
            },
            type = "item",
            slot = 5,
            threshold = 3000,
            points = 6,
        },
		[6] = {
            name = "assaultrifle_extendedclip",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 190,
                ["steel"] = 305,
                ["rubber"] = 85,
                ["smg_extendedclip"] = 1,
            },
            type = "item",
            slot = 6,
            threshold = 4000,
            points = 8,
        },
		[7] = {
            name = "assaultrifle_drum",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 205,
                ["steel"] = 340,
                ["rubber"] = 110,
                ["smg_drum"] = 2,
            },
            type = "item",
            slot = 7,
            threshold = 4500,
            points = 8,
        },
	}
}

--NOTE: NEED TO UPDATE CONFIG.LUA IN KRP-WEAPONCRAFTING TOO!
Config.WeaponCrafting = {

	["location"] = {x = 4918.442, y = -5230.75, z = 2.5216, h = 0, r = 1.0}, -- weapon crafting

    ["items"] = {
		[1] = { -- bp_handgun_full
            name = "bp_handgun_full",
            amount = 1,
            info = {},
            costs = {
				["bp_handgun_frag1"] = 1,
				["bp_handgun_frag2"] = 1,
				["bp_handgun_frag3"] = 1,
				["bp_handgun_frag4"] = 1,
				["packingtape"] = 4,
            },
            type = "item",
            slot = 1,
            threshold = 0,
            points = 0,
        },
		[2] = { -- bp_shotgun_full
            name = "bp_shotgun_full",
            amount = 1,
            info = {},
            costs = {
				["bp_shotgun_frag1"] = 1,
				["bp_shotgun_frag2"] = 1,
				["bp_shotgun_frag3"] = 1,
				["bp_shotgun_frag4"] = 1,
				["bp_shotgun_frag5"] = 1,
				["packingtape"] = 6,
            },
            type = "item",
            slot = 2,
            threshold = 0,
            points = 0,
        },
        [3] = { -- weapon_pistol
            name = "weapon_pistol",
            amount = 10,
            info = {},
            costs = {
				-- UW PARTS
				["handgun_mag"] = 1,
				["pistol_body"] = 1,
				-- ["bp_handgun_full"] = 1,
				-- UW PARTS
				["rubber"] = 20,
				["metalscrap"] = 100,
				["aluminum"] = 50,
				["iron"] = 50,
				["steel"] = 20,
				["copper"] = 10,
            },
            type = "weapon",
            slot = 3,
            threshold = 0,
            points = 1,
        },
		[4] = { -- weapon_snspistol
            name = "weapon_snspistol",
            amount = 10,
            info = {},
            costs = {
				-- UW PARTS
				["handgun_mag"] = 1,
				["pistol_body"] = 1,
				-- ["bp_handgun_full"] = 1,
				-- UW PARTS
				["rubber"] = 30,
				["metalscrap"] = 150,
				["aluminum"] = 60,
				["iron"] = 60,
				["steel"] = 30,
				["copper"] = 20,
            },
            type = "weapon",
            slot = 4,
            threshold = 75,
            points = 2,
        },
		[5] = { -- weapon_combatpistol
            name = "weapon_combatpistol",
            amount = 10,
            info = {},
            costs = {
				-- UW PARTS
				["handgun_mag"] = 1,
				["pistol_body"] = 1,
				-- ["bp_handgun_full"] = 1,
				-- UW PARTS
				["rubber"] = 50,
				["metalscrap"] = 200,
				["aluminum"] = 100,
				["iron"] = 50,
				["steel"] = 50,
				["copper"] = 50,
            },
            type = "weapon",
            slot = 5,
            threshold = 100,
            points = 1,
        },
		[6] = { -- weapon_vintagepistol
            name = "weapon_vintagepistol",
            amount = 10,
            info = {},
            costs = {
				-- UW PARTS
				["handgun_mag"] = 1,
				["pistol_body"] = 1,
				-- ["bp_handgun_full"] = 1,
				-- UW PARTS
				["rubber"] = 30,
				["metalscrap"] = 100,
				["aluminum"] = 50,
				["iron"] = 50,
				["steel"] = 30,
				["copper"] = 20,
            },
            type = "weapon",
            slot = 6,
            threshold = 200,
            points = 1,
        },
		[7] = {  --weapon_pistol50
            name = "weapon_pistol50",
            amount = 10,
            info = {},
            costs = {
				-- UW PARTS
				["handgun_mag"] = 1,
				["pistol_body"] = 1,
				-- ["bp_handgun_full"] = 1,
				-- UW PARTS
				["rubber"] = 80,
				["metalscrap"] = 200,
				["aluminum"] = 50,
				["iron"] = 50,
				["steel"] = 30,
				["copper"] = 50,
            },
            type = "weapon",
            slot = 7,
            threshold = 275,
            points = 1,
        },
		[8] = { -- weapon_marksmanpistol
            name = "weapon_marksmanpistol",
            amount = 10,
            info = {},
            costs = {
				-- UW PARTS
				["handgun_mag"] = 1,
				["pistol_body"] = 1,
				-- ["bp_handgun_full"] = 1,
				-- UW PARTS
				["rubber"] = 75,
				["metalscrap"] = 300,
				["aluminum"] = 80,
				["iron"] = 100,
				["steel"] = 80,
				["copper"] = 30,
            },
            type = "weapon",
            slot = 8,
            threshold = 500,
            points = 1,
        },
		[9] = { -- weapon_heavypistol
            name = "weapon_heavypistol",
            amount = 10,
            info = {},
            costs = {
				-- UW PARTS
				["handgun_mag"] = 1,
				["pistol_body"] = 1,
				-- ["bp_handgun_full"] = 1,
				-- UW PARTS
				["rubber"] = 100,
				["metalscrap"] = 300,
				["aluminum"] = 100,
				["iron"] = 50,
				["steel"] = 50,
				["copper"] = 75,
            },
            type = "weapon",
            slot = 9,
            threshold = 750,
            points = 1,
        },
		[10] = { -- weapon_sawnoffshotgun
            name = "weapon_sawnoffshotgun",
            amount = 10,
            info = {},
            costs = {
				-- UW PARTS
				["shotgun_choke"] = 1,
				["shotgun_body"] = 1,
				-- ["bp_shotgun_full"] = 1,
				-- UW PARTS
				["rubber"] = 50,
				["metalscrap"] = 100,
				["aluminum"] = 125,
				["iron"] = 125,
				["steel"] = 100,
				["copper"] = 50,
            },
            type = "weapon",
            slot = 10,
            threshold = 1250,
            points = 1,
        },
		[11] = { -- weapon_combatshotgun
            name = "weapon_combatshotgun",
            amount = 10,
            info = {},
            costs = {
				-- UW PARTS
				["shotgun_choke"] = 1,
				["shotgun_body"] = 1,
				-- ["bp_shotgun_full"] = 1,
				-- UW PARTS
				["rubber"] = 100,
				["metalscrap"] = 100,
				["aluminum"] = 200,
				["iron"] = 200,
				["steel"] = 100,
				["copper"] = 50,
            },
            type = "weapon",
            slot = 11,
            threshold = 1700,
            points = 1,
        },
    }
}

Config.DrugCrafting = { -- DISABLED

	["location"] = {x = 2431.49, y = 4971.1, z = -142.35, h = 46.49, r = 1.0}, -- drug crafting

    ["items"] = {
        [1] = {
            name = "weed_white-widow",
            amount = 200,
            info = {},
            costs = {
                ["weed"] = 1,
                ["empty_weed_bag"] = 1,
				["flv_weed_white-widow"] = 1,
            },
            type = "item",
            slot = 1,
            threshold = 0,
            points = 1,
        },
		[2] = {
            name = "weed_skunk",
            amount = 200,
            info = {},
            costs = {
                ["weed"] = 1,
                ["empty_weed_bag"] = 1,
				["flv_weed_skunk"] = 1,
            },
            type = "item",
            slot = 2,
            threshold = 1000,
            points = 2,
        },
		[3] = {
            name = "weed_purple-haze",
            amount = 200,
            info = {},
            costs = {
                ["weed"] = 1,
                ["empty_weed_bag"] = 1,
				["flv_weed_purple-haze"] = 1,
            },
            type = "item",
            slot = 3,
            threshold = 3500,
            points = 5,
        },
		[4] = {
            name = "weed_og-kush",
            amount = 200,
            info = {},
            costs = {
                ["weed"] = 1,
                ["empty_weed_bag"] = 1,
				["flv_weed_og-kush"] = 1,
            },
            type = "item",
            slot = 4,
            threshold = 5000,
            points = 6,
        },
		[5] = {
            name = "weed_amnesia",
            amount = 200,
            info = {},
            costs = {
                ["weed"] = 1,
                ["empty_weed_bag"] = 1,
				["flv_weed_amnesia"] = 1,
            },
            type = "item",
            slot = 5,
            threshold = 7500,
            points = 8,
        },
		[6] = {
            name = "weed_ak47",
            amount = 200,
            info = {},
            costs = {
                ["weed"] = 1,
                ["empty_weed_bag"] = 1,
				["flv_weed_ak47"] = 1,
            },
            type = "item",
            slot = 6,
            threshold = 10000,
            points = 9,
        },
		[7] = {
            name = "coke_baggie",
            amount = 200,
            info = {},
            costs = {
                ["cocaine"] = 1,
                ["bakingsoda"] = 1,
				["empty_baggie"] = 1,
            },
            type = "item",
            slot = 7,
            threshold = 12500,
            points = 13,
        },
		[8] = {
            name = "crack_baggy",
            amount = 200,
            info = {},
            costs = {
                ["cocaine"] = 1,
                ["bakingsoda"] = 1,
				["water_bottle"] = 1,
				["empty_baggie"] = 1,
            },
            type = "item",
            slot = 8,
            threshold = 15000,
            points = 15,
        },
    }
}

BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`comet3`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`gp1`] = true,
    [`autarch`] = true,
    [`tyrant`] = true
}

Config.MaximumAmmoValues = {
    ["pistol"] = 250,
    ["smg"] = 250,
    ["shotgun"] = 200,
    ["rifle"] = 250,
}
