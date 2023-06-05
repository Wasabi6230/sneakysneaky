Config = {}

Config.WeaponCrafting = {

-- Map is located in KRPMAPS3 under nzkfc misc (Cayo)

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
		[7] = { --weapon_pistol50
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