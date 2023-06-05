Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.FirearmsLicenseCheck = false -- Whether a arms dealer checks for a firearms license

-- KRP CUSTOM START -- DISABLED FOR RCORE CASINO
-- Config.SellCasinoChips = { 
    -- coords = vector4(967.04113, 29.409078, 71.839828, 120.2426),
    -- radius = 1.5,
    -- ped = 's_m_y_casino_01'
-- }
-- KRP CUSTOM END

Config.Products = {
    ["pacificbluffs"] = {
        [1] = {
            name = "pb_crayfish",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "pacificbluffs" }
        },
        [2] = {
            name = "pb_haupia",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "pacificbluffs" }
        },
        [3] = {
            name = "pb_kaluapork",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "pacificbluffs" }
        },
		[4] = {
            name = "pb_lomilomisalmon",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "pacificbluffs" }
        },
		[5] = {
            name = "pb_malasada",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "pacificbluffs" }
        },
		[6] = {
            name = "pb_manapua",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "pacificbluffs" }
        },
		[7] = {
            name = "pb_oysters",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "pacificbluffs" }
        },
		[8] = {
            name = "pb_seafoodpasta",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "pacificbluffs" }
        },
		[9] = {
            name = "pb_creamypaua",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "pacificbluffs" }
        },
		[10] = {
            name = "pb_frybread",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "pacificbluffs" }
        },
		[11] = {
            name = "pb_kinatoast",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "pacificbluffs" }
        },
		[12] = {
            name = "pb_seafoodchowder",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "pacificbluffs" }
        },
        [13] = {
            name = "pb_bluehawaii",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "pacificbluffs" }
        },
		[14] = {
			name = "pb_guava",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "pacificbluffs" }
        },
		[15] = {
            name = "pb_icedtea",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "pacificbluffs" }
        },
		[16] = {
            name = "pb_lilikoi",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "pacificbluffs" }
        },
		[17] = {
            name = "pb_maitai",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "pacificbluffs" }
        },
		[18] = {
            name = "pb_mauiislandbreeze",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "pacificbluffs" }
        },
		[19] = {
            name = "pb_passoguava",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "pacificbluffs" }
        },
		[20] = {
            name = "pb_pineappleorange",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "pacificbluffs" }
        },
		[21] = {
            name = "pb_hightide",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "pacificbluffs" }
        },
		[22] = {
            name = "pb_lilikoicocktail",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "pacificbluffs" }
        },
		[23] = {
            name = "lighter",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "pacificbluffs" }
        },
		[24] = {
            name = "redw",
            price = 0,
            amount = 25,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "pacificbluffs" }
        },
	},
	["yellowjack"] = {
        [1] = {
            name = "yj_hangiburger",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "yellowjack" }
        },
        [2] = {
            name = "yj_nachos",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "yellowjack" }
        },
        [3] = {
            name = "yj_english",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "yellowjack" }
        },
		[4] = {
            name = "yj_loadedfries",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "yellowjack" }
        },
		[5] = {
            name = "yj_porkcrack",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "yellowjack" }
        },
		[6] = {
            name = "yj_buritto",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "yellowjack" }
        },
		[7] = {
            name = "yj_terry",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "yellowjack" }
        },
		[8] = {
            name = "yj_nuts",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "yellowjack" }
        },
		[9] = {
            name = "yj_drink_coke",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "yellowjack" }
        },
		[10] = {
            name = "sprite",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "yellowjack" }
        },
		[11] = {
            name = "fanta",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "yellowjack" }
        },
		[12] = {
            name = "whiskey",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "yellowjack" }
        },
        [13] = {
            name = "vodka",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "yellowjack" }
        },
		[14] = {
			name = "yj_bigbotlion",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "yellowjack" }
        },
		[15] = {
            name = "yj_bigbotwaikato",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "yellowjack" }
        },
		[16] = {
            name = "yj_bigbottui",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "yellowjack" }
        },
		[17] = {
            name = "yj_codys",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "yellowjack" }
        },
		[18] = {
            name = "yj_cruiser",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "yellowjack" }
        },
		[19] = {
            name = "yj_wine",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "yellowjack" }
        },
		[20] = {
            name = "yj_raro",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "yellowjack" }
        },
		[21] = {
            name = "yj_corona",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "yellowjack" }
        },
		[22] = {
            name = "yj_hein",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "yellowjack" }
        },
		[23] = {
            name = "yj_longwhite",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "yellowjack" }
        },
		[24] = {
            name = "lighter",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "yellowjack" }
        },
		[25] = {
            name = "redw",
            price = 0,
            amount = 25,
            info = {},
            type = "item",
            slot = 25,
			requiredJob = { "yellowjack" }
        },
		[26] = {
            name = "yj_xmasroast",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 26,
			requiredJob = { "yellowjack" }
        },
		[27] = {
            name = "yj_venisonburger",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 27,
			requiredJob = { "yellowjack" }
        },
		[28] = {
            name = "yj_guinness",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 28,
			requiredJob = { "yellowjack" }
        },
		[29] = {
            name = "yj_hotcoco",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 29,
			requiredJob = { "yellowjack" }
        },
	},
	["tow"] = {
        [1] = {
            name = "roadsidekit",
            price = 1,
            amount = 200,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "tow" }
        },
    },	
	["burgershot"] = {
		-- FOOD
        [1] = {
            name = "bs_kumarafries",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "burgershot" }
        },
        [2] = {
            name = "bs_onionrings",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "burgershot" }
        },
        [3] = {
            name = "bs_nuggies",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "burgershot" }
        },
		[4] = {
            name = "bs_wangs",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "burgershot" }
        },
		[5] = {
            name = "bs_salad",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "burgershot" }
        },
		[6] = {
            name = "bs_curlyfries",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "burgershot" }
        },
		[7] = {
            name = "bs_wafflefries",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "burgershot" }
        },
		[8] = {
            name = "bs_chillifries",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "burgershot" }
        },
		[9] = {
            name = "bs_classicburger",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "burgershot" }
        },
		[10] = {
            name = "bs_cluckburger",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "burgershot" }
        },
		[11] = {
            name = "bs_vburger",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "burgershot" }
        },
		[12] = {
            name = "bs_lambburger",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "burgershot" }
        },
        [13] = {
            name = "bs_fobburger",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "burgershot" }
        },
		[14] = {
			name = "bs_lowcarbburger",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "burgershot" }
        },
		-- DRINKS
		[15] = {
            name = "bs_coke",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "burgershot" }
        },
		[16] = {
            name = "bs_fanta",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "burgershot" }
        },
		[17] = {
            name = "bs_sprite",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "burgershot" }
        },
		[18] = {
            name = "bs_lnp",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "burgershot" }
        },
		[19] = {
            name = "bs_pasito",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "burgershot" }
        },
		[20] = {
            name = "bs_grape",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "burgershot" }
        },
		[21] = {
            name = "bs_raspberrylemonade",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "burgershot" }
        },
		[22] = {
            name = "bs_frozencoke",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "burgershot" }
        },
		[23] = {
            name = "bs_frozenfanta",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "burgershot" }
        },
		[24] = {
            name = "bs_frozenraspberry",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "burgershot" }
        },
		[25] = {
            name = "bs_cthickshake",
            price = 0,
            amount = 25,
            info = {},
            type = "item",
            slot = 25,
			requiredJob = { "burgershot" }
        },
		[26] = {
            name = "bs_sthickshake",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 26,
			requiredJob = { "burgershot" }
        },
		[27] = {
            name = "bs_lthickshake",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 27,
			requiredJob = { "burgershot" }
        },
		[28] = {
            name = "bs_carthickshake",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 28,
			requiredJob = { "burgershot" }
        },
		[29] = {
            name = "bs_cacthickshake",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 29,
			requiredJob = { "burgershot" }
        },
		-- BUFF FOOD
		[30] = {
            name = "bs_cacsundae",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 30,
			requiredJob = { "burgershot" }
        },
		[31] = {
            name = "bs_flakesundae",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 31,
			requiredJob = { "burgershot" }
        },
		[32] = {
            name = "bs_mandmsundae",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 32,
			requiredJob = { "burgershot" }
        },
		[33] = {
            name = "bs_caramelsundae",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 33,
			requiredJob = { "burgershot" }
        },
		[34] = {
            name = "bs_softserve",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 34,
			requiredJob = { "burgershot" }
        },
		[35] = {
            name = "bs_softserve2",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 35,
			requiredJob = { "burgershot" }
        },
		[36] = {
            name = "bs_secondbreakfast",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 36,
			requiredJob = { "burgershot" }
        },
		-- BUFF DRINKS
		[37] = {
            name = "bs_cokespider",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 37,
			requiredJob = { "burgershot" }
        },
		-- BUFF MEALS
		[38] = {
            name = "bs_cjspecial",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 38,
			requiredJob = { "burgershot" }
        },
		[39] = {
            name = "bs_fishburger",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 39,
			requiredJob = { "burgershot" }
        },
		[40] = {
            name = "bs_kidsmeal",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 40,
			requiredJob = { "burgershot" }
        },
		[41] = {
            name = "bs_tayskimeal",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 41,
			requiredJob = { "burgershot" }
        },
	},
	["casinobar"] = {
        [1] = {
            name = "tosti",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
        },
		[2] = {
            name = "water_bottle",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "beer",
            price = 30,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "whiskey",
            price = 40,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "vodka",
            price = 35,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "lighter",
            price = 50,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "redw",
            price = 500,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
        },
		[8] = {
            name = "marlboro",
            price = 500,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
        },
		[9] = {
            name = "cubancigar",
            price = 1000,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
        },
	},
	["valhalla"] = {
		[1] = {
            name = "valhalla",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "valhalla" }
        },
		[2] = {
            name = "gfuel_dragon",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "valhalla" }
        },
		[3] = {
            name = "prime_icepop",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "valhalla" }
        },
		[4] = {
            name = "mtndew",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "valhalla" }
        },
        [5] = {
            name = "doritos",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "valhalla" }
        },
		[6] = {
            name = "boosterpack",
            price = 0,
            amount = 2000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "valhalla" }
        },
        [7] = {
            name = "boosterbox",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "valhalla" }
        },
        [8] = {
            name = "pokebox",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "valhalla" }
        },
        [9] = {
            name = "valcard",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "valhalla" }
        },
        [10] = {
            name = "boulderbadge",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "valhalla" }
        },
        [11] = {
            name = "cascadebadge",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "valhalla" }
        },
        [12] = {
            name = "thunderbadge",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "valhalla" }
        },
        [13] = {
            name = "rainbowbadge",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "valhalla" }
        },
        [14] = {
            name = "soulbadge",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "valhalla" }
        },
        [15] = {
            name = "marshbadge",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "valhalla" }
        },
        [16] = {
            name = "volcanobadge",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "valhalla" }
        },
        [17] = {
            name = "earthbadge",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "valhalla" }
        },
		-- HALLOWEEN (ADD ITEMS ABOVE THIS!)
		-- [15] = {
            -- name = "weapon_wirebat",
            -- price = 0,
            -- amount = 1000,
            -- info = {},
            -- type = "item",
            -- slot = 15,
			-- requiredJob = { "valhalla" }
        -- },
		-- [16] = {
            -- name = "weapon_jokerbat",
            -- price = 0,
            -- amount = 1000,
            -- info = {},
            -- type = "item",
            -- slot = 16,
			-- requiredJob = { "valhalla" }
        -- },
 	},
	["icecream"] = {
        [1] = {
            name = "lk-demon-time",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "icecream" }
        },
        [2] = {
            name = "lk-jinx-me-up",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "icecream" }
        },
        [3] = {
            name = "lk-mafia-madness",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "icecream" }
        },
		[4] = {
            name = "lk-make-it-rayna",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "icecream" }
        },
		[5] = {
            name = "lk-shhushhh",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "icecream" }
        },
		[6] = {
            name = "lk-breezy",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "icecream" }
        },
		[7] = {
            name = "lk-coldest",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "icecream" }
        },
		[8] = {
            name = "lk-henry",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "icecream" }
        },
		[9] = {
            name = "lk-vim",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "icecream" }
        },	
		[10] = {
            name = "lk-mostack",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "icecream" }
        },			
		[11] = {
            name = "lk-dutch",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "icecream" }
        },
		[12] = {
            name = "lk-10-4",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "icecream" }
        },
        [13] = {
            name = "lk-alta-ego",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "icecream" }
        },
		[14] = {
			name = "lk-skull-it-gavin",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "icecream" }
        },
		[15] = {
            name = "lk-spider-homes",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "icecream" }
        },
		[16] = {
            name = "lk-yazssirrr",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "icecream" }
        },
		[17] = {
            name = "lk-ganggang",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "icecream" }
        },
		[18] = {
            name = "lk-golden",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "icecream" }
        },
		[19] = {
            name = "lk-swarvay",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "icecream" }
        },
	},
	["bellas"] = {
		[1] = {
            name = "bbc_drinks_flatwhite",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "bellas" }
        },
		[2] = {
			name = "bbc_drinks_hightea",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "bellas" }
        },
		[3] = {
            name = "bbc_drinks_hotchocolate",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "bellas" }
        },
		[4] = {
            name = "bbc_drinks_icedchocolate",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "bellas" }
        },
		[5] = {
            name = "bbc_drinks_icedcoffee",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "bellas" }
        },
		[6] = {
            name = "bbc_drinks_mangootai",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "bellas" }
        },
		[7] = {
            name = "bbc_drinks_mocha",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "bellas" }
        },
		[8] = {
            name = "bbc_drinks_orangeoppa",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "bellas" }
        },
		[9] = {
            name = "bbc_drinks_pineapplepapi",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "bellas" }
        },
		[10] = {
            name = "bbc_drinks_twerkingtropical",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "bellas" }
        },
		[11] = {
            name = "bbc_drinks_watermelonotai",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "bellas" }
        },
		[12] = {
            name = "bbc_badmanspecial",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "bellas" }
        },
		[13] = {
            name = "bbc_bananabread",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "bellas" }
        },
		[14] = {
            name = "bbc_birthdaycake",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "bellas" }
        },
		[15] = {
            name = "bbc_boiluppie",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "bellas" }
        },
		[16] = {
            name = "bbc_chocolatecupcake",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "bellas" }
        },
		[17] = {
            name = "bbc_cinnamondonut",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "bellas" }
        },
		[18] = {
            name = "bbc_creamdonut",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "bellas" }
        },
		[19] = {
            name = "bbc_creamypauapie",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "bellas" }
        },
		[20] = {
            name = "bbc_highteadessert",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "bellas" }
        },
		[21] = {
            name = "bbc_highteasandwiches",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "bellas" }
        },
		[22] = {
            name = "bbc_highteascones",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "bellas" }
        },
		[23] = {
            name = "bbc_loihoosipie",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "bellas" }
        },
		[24] = {
            name = "bbc_lusipipie",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "bellas" }
        },
		[25] = {
            name = "bbc_mincecheesepie",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 25,
			requiredJob = { "bellas" }
        },
		[26] = {
            name = "bbc_palusamipie",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 26,
			requiredJob = { "bellas" }
        },
		[27] = {
            name = "bbc_redvelvetcupcake",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 27,
			requiredJob = { "bellas" }
        },
		[28] = {
            name = "bbc_sausagerolls",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 28,
			requiredJob = { "bellas" }
        },
		[29] = {
            name = "bbc_spinachtofupie",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 29,
			requiredJob = { "bellas" }
        },
		[30] = {
            name = "bbc_steakcheesepie",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 30,
			requiredJob = { "bellas" }
        },
		-- VALENTINES (ADD ITEMS ABOVE THIS!)
		[31] = {
            name = "bbc_drinks_valentines_bubblybouquet",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 31,
			requiredJob = { "bellas" }
        },
		[32] = {
            name = "bbc_drinks_valentines_friendzoned",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 32,
			requiredJob = { "bellas" }
        },
		[33] = {
            name = "bbc_drinks_valentines_hotchoc",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 33,
			requiredJob = { "bellas" }
        },
		[34] = {
            name = "bbc_drinks_valentines_lovepotion",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 34,
			requiredJob = { "bellas" }
        },
		[35] = {
            name = "bbc_food_valentines_bearwithme",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 35,
			requiredJob = { "bellas" }
        },
		[36] = {
            name = "bbc_food_valentines_efflove",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 36,
			requiredJob = { "bellas" }
        },
		[37] = {
            name = "bbc_food_valentines_hfdcake",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 37,
			requiredJob = { "bellas" }
        },
		[38] = {
            name = "bbc_food_valentines_lovebug",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 38,
			requiredJob = { "bellas" }
        },
		[39] = {
            name = "bbc_food_valentines_nsfw",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 39,
			requiredJob = { "bellas" }
        },
		[40] = {
            name = "bbc_food_valentines_sweetnessbouquet",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 40,
			requiredJob = { "bellas" }
        },
		[41] = {
            name = "bbc_food_valentines_willyou",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 41,
			requiredJob = { "bellas" }
        },
		[42] = {
            name = "bbc_food_valentines_xoxoxo",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 42,
			requiredJob = { "bellas" }
        },		
		-- XMAS (ADD ITEMS ABOVE THIS!)
		-- [31] = {
            -- name = "bbc_food_xmas_pav",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 31,
			-- requiredJob = { "bellas" }
        -- },
		-- [32] = {
            -- name = "bbc_food_xmas_frosty",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 32,
			-- requiredJob = { "bellas" }
        -- },
		-- [33] = {
            -- name = "bbc_food_xmas_holy",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 33,
			-- requiredJob = { "bellas" }
        -- },
		-- [34] = {
            -- name = "bbc_food_xmas_snowmelt",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 34,
			-- requiredJob = { "bellas" }
        -- },
		-- [35] = {
            -- name = "bbc_food_xmas_mrgrinch",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 35,
			-- requiredJob = { "bellas" }
        -- },
		-- [36] = {
            -- name = "bbc_food_xmas_olaf",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 36,
			-- requiredJob = { "bellas" }
        -- },
		-- [37] = {
            -- name = "bbc_food_xmas_rudolph",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 37,
			-- requiredJob = { "bellas" }
        -- },
		-- [38] = {
            -- name = "bbc_drinks_xmas_grinchbew",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 38,
			-- requiredJob = { "bellas" }
        -- },
		-- [39] = {
            -- name = "bbc_drinks_xmas_nandn",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 39,
			-- requiredJob = { "bellas" }
        -- },
		-- [40] = {
            -- name = "bbc_drinks_xmas_peppunch",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 40,
			-- requiredJob = { "bellas" }
        -- },
		-- [41] = {
            -- name = "bbc_drinks_xmas_santa",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 41,
			-- requiredJob = { "bellas" }
        -- },
		-- [42] = {
            -- name = "bbc_drinks_xmas_warmhugs",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 42,
			-- requiredJob = { "bellas" }
        -- },
		-- HALLOWEEN (ADD ITEMS ABOVE THIS!)
		-- [31] = {
            -- name = "bbc_drinks_hallo_bloodbrew",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 31,
			-- requiredJob = { "bellas" }
        -- },
		-- [32] = {
            -- name = "bbc_drinks_hallo_poison",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 32,
			-- requiredJob = { "bellas" }
        -- },
		-- [33] = {
            -- name = "bbc_drinks_hallo_potion",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 33,
			-- requiredJob = { "bellas" }
        -- },
		-- [34] = {
            -- name = "bbc_hallo_ghost",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 34,
			-- requiredJob = { "bellas" }
        -- },
		-- [35] = {
            -- name = "bbc_hallo_pop",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 35,
			-- requiredJob = { "bellas" }
        -- },
		-- [36] = {
            -- name = "bbc_hallo_cupcake",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 36,
			-- requiredJob = { "bellas" }
        -- },
		-- [37] = {
            -- name = "bbc_hallo_megamon",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 37,
			-- requiredJob = { "bellas" }
        -- },
		-- [38] = {
            -- name = "bbc_hallo_tiprat",
            -- price = 0,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 38,
			-- requiredJob = { "bellas" }
        -- },
	},
	["normal"] = {
        [1] = {
            name = "tosti",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "water_bottle",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "bluev",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
        },
		[4] = {
            name = "anzaccookie",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "twerks_candy",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "snikkel_candy",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "bigbenpie",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
        },
		[8] = {
            name = "lnp",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "cookietime",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
        },		
        [10] = {
            name = "bandage",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "lighter",
            price = 50,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "rolling_paper",
            price = 10,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "vape",
            price = 5000,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "liquid",
            price = 100,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "redw",
            price = 500,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
        },
		[16] = {
            name = "marlboro",
            price = 500,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
        },
		[17] = {
            name = "cubancigar",
            price = 1000,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
        },
		[18] = {
            name = "davidoffcigar",
            price = 1000,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
        },
		[19] = {
            name = "tinfoil",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 19,
        },
		[20] = {
            name = "gladwrap",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 20,
        },
		[21] = {
            name = "kiwirp_guide",
            price = 0,
            amount = 99999,
            info = {},
            type = "item",
            slot = 21,
        },
		-- XMAS (ADD ITEMS ABOVE THIS!)
		-- [9] = {
            -- name = "xmas_faves",
            -- price = 20,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 9,
        -- },
		-- [10] = {
            -- name = "xmas_eggnog",
            -- price = 20,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 10,
        -- },
		-- [11] = {
            -- name = "xmas_candycane",
            -- price = 20,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 11,
        -- },
		-- [12] = {
            -- name = "xmas_goldcoins",
            -- price = 20,
            -- amount = 5000,
            -- info = {},
            -- type = "item",
            -- slot = 12,
        -- },
		-- HALLOWEEN (ADD ITEMS ABOVE THIS!)
		-- [19] = {
            -- name = "hallo_candycorn",
            -- price = 15,
            -- amount = 99999,
            -- info = {},
            -- type = "item",
            -- slot = 19,
        -- },
		-- [20] = {
            -- name = "hallo_teeth",
            -- price = 15,
            -- amount = 99999,
            -- info = {},
            -- type = "item",
            -- slot = 20,
        -- },
		-- [21] = {
            -- name = "hallo_brain",
            -- price = 15,
            -- amount = 99999,
            -- info = {},
            -- type = "item",
            -- slot = 21,
        -- },
		-- [22] = {
            -- name = "hallo_skulls",
            -- price = 15,
            -- amount = 99999,
            -- info = {},
            -- type = "item",
            -- slot = 22,
        -- },
		-- [23] = {
            -- name = "hallo_sourchew",
            -- price = 15,
            -- amount = 99999,
            -- info = {},
            -- type = "item",
            -- slot = 23,
        -- },
		-- [24] = {
            -- name = "hallo_mtdewcan",
            -- price = 15,
            -- amount = 99999,
            -- info = {},
            -- type = "item",
            -- slot = 24,
        -- },
		-- [25] = {
            -- name = "hallo_cokecan",
            -- price = 15,
            -- amount = 99999,
            -- info = {},
            -- type = "item",
            -- slot = 25,
        -- },
		-- [26] = {
            -- name = "hallo_pumpkinspice",
            -- price = 15,
            -- amount = 99999,
            -- info = {},
            -- type = "item",
            -- slot = 26,
        -- },
	},
    ["liquor"] = {
        [1] = {
            name = "water_bottle",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "beer",
            price = 30,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "whiskey",
            price = 40,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "vodka",
            price = 35,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "lighter",
            price = 50,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "rolling_paper",
            price = 10,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "vape",
            price = 5000,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "liquid",
            price = 100,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
        },
		[9] = {
            name = "scratch_ticket",
            price = 1000,
            amount = 3000,
            info = {},
            type = "item",
            slot = 9,
        },
		[10] = {
            name = "redw",
            price = 500,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
        },
		[11] = {
            name = "marlboro",
            price = 500,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
        },
		[12] = {
            name = "cubancigar",
            price = 1000,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
        },
		[13] = {
            name = "davidoffcigar",
            price = 1000,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
        },			
		
    },
    ["mirrorbar"] = {
        [1] = {
            name = "applesour",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "mirror" }			
        },	
        [2] = {
            name = "kava",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "mirror" }			
        },
        [3] = {
            name = "greygoose",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "mirror" }			
        },
        [4] = {
            name = "longwhiteraspberry",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "mirror" }			
        },
        [5] = {
            name = "longwhitesapple",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "mirror" }			
        },
        [6] = {
            name = "moscato",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "mirror" }			
        },
        [7] = {
            name = "sdoubleblack",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "mirror" }			
        },
        [8] = {
            name = "sraspberry",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "mirror" }			
        },
        [9] = {
            name = "taula",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "mirror" }			
        },
        [10] = {
            name = "vailima",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "mirror" }			
        },
        [11] = {
            name = "xohenny",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "mirror" }			
        },
        [12] = {
            name = "krp_mirror_restaurant",
            price = 0,
            amount = 99999,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "mirror" }			
        },
    },	
    ["mirrorfood"] = {
        [1] = {
            name = "bananachip",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "mirror" }			
        },	
        [2] = {
            name = "bananapoke",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "mirror" }			
        },
        [3] = {
            name = "bluetaxi",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "mirror" }			
        },
        [4] = {
            name = "colagp",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "mirror" }			
        },
        [5] = {
            name = "faalifukalo",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "mirror" }			
        },
        [6] = {
            name = "faapapa",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "mirror" }			
        },
        [7] = {
            name = "faiaieleni",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "mirror" }			
        },
        [8] = {
            name = "friedbread",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "mirror" }			
        },
        [9] = {
            name = "friedchickenandchips",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "mirror" }			
        },
        [10] = {
            name = "grapejuicegp",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "mirror" }			
        },
        [11] = {
            name = "greygoose",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "mirror" }			
        },
        [12] = {
            name = "ikamata",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "mirror" }			
        },
        [13] = {
            name = "islanddonuts",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "mirror" }			
        },
        [14] = {
            name = "kekepuaa",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "mirror" }			
        },
        [15] = {
            name = "kokolaisa",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "mirror" }			
        },
        [16] = {
            name = "kopai",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "mirror" }			
        },	
        [17] = {
            name = "loihoosi",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "mirror" }			
        },
        [18] = {
            name = "minus",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "mirror" }			
        },
        [19] = {
            name = "orangestars",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "mirror" }			
        },
        [20] = {
            name = "orangetaxi",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "mirror" }			
        },	
        [21] = {
            name = "panikeke",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "mirror" }			
        },	
        [22] = {
            name = "passionfruitstars",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "mirror" }			
        },
        [23] = {
            name = "pisupoandspaghetti",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "mirror" }			
        },
        [24] = {
            name = "povimasima",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "mirror" }			
        },
        [25] = {
            name = "puligi",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 25,
			requiredJob = { "mirror" }			
        },
        [26] = {
            name = "raspberrytaxi",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 26,
			requiredJob = { "mirror" }			
        },	
        [27] = {
            name = "sapasui",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 27,
			requiredJob = { "mirror" }			
        },
        [28] = {
            name = "starsfeijoa",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 28,
			requiredJob = { "mirror" }			
        },
        [29] = {
            name = "suafai",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 29,
			requiredJob = { "mirror" }			
        },
        [30] = {
            name = "tarochips",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 30,
			requiredJob = { "mirror" }			
        },
        [31] = {
            name = "ulupuaa",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 31,
			requiredJob = { "mirror" }			
        },	
        [32] = {
            name = "watermelonicecream",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 32,
			requiredJob = { "mirror" }			
        },
        [33] = {
            name = "krp_mirror_restaurant",
            price = 0,
            amount = 9999,
            info = {},
            type = "item",
            slot = 33,
			requiredJob = { "mirror" }			
        },
    },	
    ["orgbar"] = {
        [1] = {
            name = "beer",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },	
        [2] = {
            name = "vodka",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot =2,
        },
        [3] = {
            name = "whiskey",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot =3,
        },
        [4] = {
            name = "redw",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot =4,
        },
    },		
    ["hardware"] = {
        [1] = {
            name = "weapon_wrench",
            price = 250,
            amount = 20,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_hammer",
            price = 250,
            amount = 20,
            info = {},
            type = "item",
            slot = 2,
        },
		[3] = {
            name = "puncturekit",
            price = 500,
            amount = 99999,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "engineadd",
            price = 1500,
            amount = 99999,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "screwdriverset",
            price = 350,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },        
        [6] = {
            name = "cleaningkit",
            price = 150,
            amount = 500,
            info = {},
            type = "item",
            slot = 6,
        },
		[7] = {
            name = "spray",
            price = 5000,
            amount = 30,
            info = {},
            type = "item",
            slot = 7,
        }, 
        [8] = {
            name = "spray_remover",
            price = 150,
            amount = 100,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "pickaxe",
            price = 200,
            amount = 200,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "washing_pan",
            price = 150,
            amount = 200,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "splaka", -- this is fake plate
            price = 5000,
            amount = 15,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "screwdriver",
            price = 5000,
            amount = 50,
            info = {},
            type = "item",
            slot = 12,
        },
		[13] = {
            name = "rope",
            price = 500,
            amount = 25,
            info = {},
            type = "item",
            slot = 13,
        },
		[14] = {
            name = "craftknife",
            price = 500,
            amount = 300,
            info = {},
            type = "item",
            slot = 14,
        },
		[15] = {
            name = "packingtape",
            price = 500,
            amount = 500,
            info = {},
            type = "item",
            slot = 15,
        },
		[16] = {
            name = "bakingsoda",
            price = 500,
            amount = 1000,
            info = {},
            type = "item",
            slot = 16,
        },
		[17] = {
            name = "limeadditive",
            price = 500,
            amount = 1000,
            info = {},
            type = "item",
            slot = 17,
        },
		[18] = {
            name = "hydrochloric_acid",
            price = 500,
            amount = 1000,
            info = {},
            type = "item",
            slot = 18,
        },
		[19] = {
            name = "gascooker",
            price = 500,
            amount = 200,
            info = {},
            type = "item",
            slot = 19,
        },
	},
	["backpackshop"] = {
		 [1] = {
			  name = "backpack1",
			  price = 5,
			  amount = 750,
			  info = {},
			  type = "item",
			  slot = 1,
		 },
		 [2] = {
			  name = "backpack2",
			  price = 2500,
			  amount = 5,
			  info = {},
			  type = "item",
			  slot = 2,
		 },
		 [3] = {
			  name = "briefcase",
			  price = 2500,
			  amount = 5,
			  info = {},
			  type = "item",
			  slot = 3,
		 },
		 [4] = {
			  name = "paramedicbag",
			  price = 5000,
			  amount = 5,
			  info = {},
			  type = "item",
			  slot = 4,
		 },
	},	
    ["weedshop"] = {
        [1] = {
            name = "weapon_poolcue",
            price = 100,
            amount = 1000,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weed_nutrition",
            price = 20,
            amount = 9999,
            info = {},
            type = "item",
            slot = 2,
        },
        -- [3] = {
            -- name = "empty_weed_bag",
            -- price = 2,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 3,
        -- },
        [3] = {
            name = "rolling_paper",
            price = 2,
            amount = 9999,
            info = {},
            type = "item",
            slot = 3,
        },
        -- [5] = {
            -- name = "flv_weed_white-widow",
            -- price = 25,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 5,
        -- },	
        -- [6] = {
            -- name = "flv_weed_skunk",
            -- price = 30,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 6,
        -- },
        -- [7] = {
            -- name = "flv_weed_purple-haze",
            -- price = 35,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 7,
        -- },
        -- [8] = {
            -- name = "flv_weed_og-kush",
            -- price = 40,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 8,
        -- },
        -- [9] = {
            -- name = "flv_weed_amnesia",
            -- price = 45,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 9,
        -- },	
        -- [10] = {
            -- name = "flv_weed_ak47",
            -- price = 50,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 10,
        -- },
        [4] = {
            name = "empty_baggie",
            price = 15,
            amount = 9999,
            info = {},
            type = "item",
            slot = 4,
        },	
        -- [6] = {
            -- name = "cutting_agent",
            -- price = 50,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 6,
        -- },
        [5] = {
            name = "bong",
            price = 500,
            amount = 9999,
            info = {},
            type = "item",
            slot = 5,
        },
	    -- [14] = {
            -- name = "og_kush_weed",
            -- price = 100,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 14,
        -- },
	    -- [15] = {
            -- name = "blue_dream_weed",
            -- price = 100,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 15,
        -- },
	    -- [16] = {
            -- name = "banana_kush_weed",
            -- price = 100,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 16,
        -- },
	    -- [17] = {
            -- name = "purple_haze_weed",
            -- price = 100,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 17,
        -- },
	    -- [18] = {
            -- name = "og_kush_bag",
            -- price = 500,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 18,
        -- },
	    -- [19] = {
            -- name = "blue_dream_bag",
            -- price = 500,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 19,
        -- },
	    -- [20] = {
            -- name = "purple_haze_bag",
            -- price = 500,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 20,
        -- },
	    -- [21] = {
            -- name = "banana_kush_bag",
            -- price = 500,
            -- amount = 9999,
            -- info = {},
            -- type = "item",
            -- slot = 21,
        -- },
		[6] = {
            name = "bakingsoda",
            price = 50,
            amount = 9999,
            info = {},
            type = "item",
            slot = 6,
        },
    },
    ["gearshop"] = {
        [1] = {
            name = "diving_gear",
            price = 1000,
            amount = 100,
            info = {},
            type = "item",
            slot = 1,
        },
		[2] = {
            name = "diving_fill",
            price = 500,
            amount = 100,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "jerry_can",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
    },
    ["leisureshop"] = {
        [1] = {
            name = "parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "binoculars",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "diving_gear",
            price = 1000,
            amount = 2000,
            info = {},
            type = "item",
            slot = 3,
        },
		[4] = {
            name = "diving_fill",
            price = 500,
            amount = 2000,
            info = {},
            type = "item",
            slot = 4,
        },
    },
    ["weapons"] = {
        [1] = {
            name = "weapon_knife",
            price = 12000,
            amount = 250,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_bat",
            price = 5000,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_hatchet",
            price = 8000,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
        },
    },
	["mechanic"] = {
        [1] = {
            name = "chameleonpaint_115",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "mechanic" }
        },
		[2] = {
            name = "chameleonpaint_116",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "mechanic" }
        },
		[3] = {
            name = "chameleonpaint_117",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "mechanic" }
        },
		[4] = {
            name = "chameleonpaint_118",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "mechanic" }
        },
		[5] = {
            name = "chameleonpaint_119",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "mechanic" }
        },
		[6] = {
            name = "chameleonpaint_120",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "mechanic" }
        },
		[7] = {
            name = "chameleonpaint_121",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "mechanic" }
        },
		[8] = {
            name = "chameleonpaint_122",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "mechanic" }
        },
		[9] = {
            name = "chameleonpaint_123",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "mechanic" }
        },
		[10] = {
            name = "chameleonpaint_124",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "mechanic" }
        },
		[11] = {
            name = "chameleonpaint_125",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "mechanic" }
        },
		[12] = {
            name = "chameleonpaint_126",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "mechanic" }
        },
		[13] = {
            name = "chameleonpaint_127",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "mechanic" }
        },
		[14] = {
            name = "chameleonpaint_128",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "mechanic" }
        },
		[15] = {
            name = "chameleonpaint_129",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "mechanic" }
        },
		[16] = {
            name = "chameleonpaint_130",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "mechanic" }
        },
		[17] = {
            name = "chameleonpaint_131",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "mechanic" }
        },
		[18] = {
            name = "chameleonpaint_132",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "mechanic" }
        },
		[19] = {
            name = "chameleonpaint_133",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "mechanic" }
        },
		[20] = {
            name = "chameleonpaint_134",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "mechanic" }
        },
		[21] = {
            name = "chameleonpaint_135",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "mechanic" }
        },
		[22] = {
            name = "chameleonpaint_136",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "mechanic" }
        },
		[23] = {
            name = "chameleonpaint_137",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "mechanic" }
        },
		[24] = {
            name = "chameleonpaint_138",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "mechanic" }
        },
		[25] = {
            name = "chameleonpaint_139",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 25,
			requiredJob = { "mechanic" }
        },
		[26] = {
            name = "chameleonpaint_140",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 26,
			requiredJob = { "mechanic" }
        },
		[27] = {
            name = "chameleonpaint_141",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 27,
			requiredJob = { "mechanic" }
        },
		[28] = {
            name = "chameleonpaint_142",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 28,
			requiredJob = { "mechanic" }
        },
		[29] = {
            name = "chameleonpaint_143",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 29,
			requiredJob = { "mechanic" }
        },
		[30] = {
            name = "chameleonpaint_144",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 30,
			requiredJob = { "mechanic" }
        },
		[31] = {
            name = "chameleonpaint_145",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 31,
			requiredJob = { "mechanic" }
        },
		[32] = {
            name = "chameleonpaint_146",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 32,
			requiredJob = { "mechanic" }
        },
		[33] = {
            name = "chameleonpaint_147",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 33,
			requiredJob = { "mechanic" }
        },
		[34] = {
            name = "chameleonpaint_148",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 34,
			requiredJob = { "mechanic" }
        },
		[35] = {
            name = "chameleonpaint_149",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 35,
			requiredJob = { "mechanic" }
        },
		[36] = {
            name = "chameleonpaint_150",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 36,
			requiredJob = { "mechanic" }
        },
		[37] = {
            name = "chameleonpaint_151",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 37,
			requiredJob = { "mechanic" }
        },
		[38] = {
            name = "chameleonpaint_152",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 38,
			requiredJob = { "mechanic" }
        },
		[39] = {
            name = "chameleonpaint_153",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 39,
			requiredJob = { "mechanic" }
        },
		[40] = {
            name = "chameleonpaint_154",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 40,
			requiredJob = { "mechanic" }
        },
		[41] = {
            name = "chameleonpaint_155",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 41,
			requiredJob = { "mechanic" }
        },
		[42] = {
            name = "chameleonpaint_156",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 42,
			requiredJob = { "mechanic" }
        },
		[43] = {
            name = "chameleonpaint_157",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 43,
			requiredJob = { "mechanic" }
        },
		[44] = {
            name = "chameleonpaint_158",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 44,
			requiredJob = { "mechanic" }
        },
		[45] = {
            name = "chameleonpaint_159",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 45,
			requiredJob = { "mechanic" }
        },
		[46] = {
            name = "chameleonpaint_160",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 46,
			requiredJob = { "mechanic" }
        },
		[47] = {
            name = "chameleonpaint_161",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 47,
			requiredJob = { "mechanic" }
        },
		[48] = {
            name = "chameleonpaint_162",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 48,
			requiredJob = { "mechanic" }
        },
		[49] = {
            name = "chameleonpaint_163",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 49,
			requiredJob = { "mechanic" }
        },
		[50] = {
            name = "chameleonpaint_164",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 50,
			requiredJob = { "mechanic" }
        },
		[51] = {
            name = "chameleonpaint_165",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 51,
			requiredJob = { "mechanic" }
        },
		[52] = {
            name = "chameleonpaint_166",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 52,
			requiredJob = { "mechanic" }
        },
		[53] = {
            name = "chameleonpaint_167",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 53,
			requiredJob = { "mechanic" }
        },
		[54] = {
            name = "chameleonpaint_168",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 54,
			requiredJob = { "mechanic" }
        },
		[55] = {
            name = "chameleonpaint_169",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 55,
			requiredJob = { "mechanic" }
        },
		[56] = {
            name = "chameleonpaint_171",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 56,
			requiredJob = { "mechanic" }
        },
		[57] = {
            name = "chameleonpaint_172",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 57,
			requiredJob = { "mechanic" }
        },
		[58] = {
            name = "chameleonpaint_173",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 58,
			requiredJob = { "mechanic" }
        },
		[59] = {
            name = "chameleonpaint_174",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 59,
			requiredJob = { "mechanic" }
        },
		[60] = {
            name = "chameleonpaint_175",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 60,
			requiredJob = { "mechanic" }
        },
		[61] = {
            name = "chameleonpaint_176",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 61,
			requiredJob = { "mechanic" }
        },
		[62] = {
            name = "chameleonpaint_177",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 62,
			requiredJob = { "mechanic" }
        },
		[63] = {
            name = "chameleonpaint_178",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 63,
			requiredJob = { "mechanic" }
        },
		[64] = {
            name = "harness",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 64,
			requiredJob = { "mechanic" }
        },
	},
	["jinx"] = {
        [1] = {
            name = "chameleonpaint_115",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "jinx" }
        },
		[2] = {
            name = "chameleonpaint_116",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "jinx" }
        },
		[3] = {
            name = "chameleonpaint_117",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "jinx" }
        },
		[4] = {
            name = "chameleonpaint_118",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "jinx" }
        },
		[5] = {
            name = "chameleonpaint_119",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "jinx" }
        },
		[6] = {
            name = "chameleonpaint_120",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "jinx" }
        },
		[7] = {
            name = "chameleonpaint_121",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "jinx" }
        },
		[8] = {
            name = "chameleonpaint_122",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "jinx" }
        },
		[9] = {
            name = "chameleonpaint_123",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "jinx" }
        },
		[10] = {
            name = "chameleonpaint_124",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "jinx" }
        },
		[11] = {
            name = "chameleonpaint_125",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "jinx" }
        },
		[12] = {
            name = "chameleonpaint_126",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "jinx" }
        },
		[13] = {
            name = "chameleonpaint_127",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "jinx" }
        },
		[14] = {
            name = "chameleonpaint_128",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "jinx" }
        },
		[15] = {
            name = "chameleonpaint_129",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "jinx" }
        },
		[16] = {
            name = "chameleonpaint_130",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "jinx" }
        },
		[17] = {
            name = "chameleonpaint_131",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "jinx" }
        },
		[18] = {
            name = "chameleonpaint_132",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "jinx" }
        },
		[19] = {
            name = "chameleonpaint_133",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "jinx" }
        },
		[20] = {
            name = "chameleonpaint_134",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "jinx" }
        },
		[21] = {
            name = "chameleonpaint_135",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "jinx" }
        },
		[22] = {
            name = "chameleonpaint_136",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "jinx" }
        },
		[23] = {
            name = "chameleonpaint_137",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "jinx" }
        },
		[24] = {
            name = "chameleonpaint_138",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "jinx" }
        },
		[25] = {
            name = "chameleonpaint_139",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 25,
			requiredJob = { "jinx" }
        },
		[26] = {
            name = "chameleonpaint_140",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 26,
			requiredJob = { "jinx" }
        },
		[27] = {
            name = "chameleonpaint_141",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 27,
			requiredJob = { "jinx" }
        },
		[28] = {
            name = "chameleonpaint_142",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 28,
			requiredJob = { "jinx" }
        },
		[29] = {
            name = "chameleonpaint_143",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 29,
			requiredJob = { "jinx" }
        },
		[30] = {
            name = "chameleonpaint_144",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 30,
			requiredJob = { "jinx" }
        },
		[31] = {
            name = "chameleonpaint_145",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 31,
			requiredJob = { "jinx" }
        },
		[32] = {
            name = "chameleonpaint_146",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 32,
			requiredJob = { "jinx" }
        },
		[33] = {
            name = "chameleonpaint_147",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 33,
			requiredJob = { "jinx" }
        },
		[34] = {
            name = "chameleonpaint_148",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 34,
			requiredJob = { "jinx" }
        },
		[35] = {
            name = "chameleonpaint_149",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 35,
			requiredJob = { "jinx" }
        },
		[36] = {
            name = "chameleonpaint_150",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 36,
			requiredJob = { "jinx" }
        },
		[37] = {
            name = "chameleonpaint_151",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 37,
			requiredJob = { "jinx" }
        },
		[38] = {
            name = "chameleonpaint_152",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 38,
			requiredJob = { "jinx" }
        },
		[39] = {
            name = "chameleonpaint_153",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 39,
			requiredJob = { "jinx" }
        },
		[40] = {
            name = "chameleonpaint_154",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 40,
			requiredJob = { "jinx" }
        },
		[41] = {
            name = "chameleonpaint_155",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 41,
			requiredJob = { "jinx" }
        },
		[42] = {
            name = "chameleonpaint_156",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 42,
			requiredJob = { "jinx" }
        },
		[43] = {
            name = "chameleonpaint_157",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 43,
			requiredJob = { "jinx" }
        },
		[44] = {
            name = "chameleonpaint_158",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 44,
			requiredJob = { "jinx" }
        },
		[45] = {
            name = "chameleonpaint_159",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 45,
			requiredJob = { "jinx" }
        },
		[46] = {
            name = "chameleonpaint_160",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 46,
			requiredJob = { "jinx" }
        },
		[47] = {
            name = "chameleonpaint_161",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 47,
			requiredJob = { "jinx" }
        },
		[48] = {
            name = "chameleonpaint_162",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 48,
			requiredJob = { "jinx" }
        },
		[49] = {
            name = "chameleonpaint_163",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 49,
			requiredJob = { "jinx" }
        },
		[50] = {
            name = "chameleonpaint_164",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 50,
			requiredJob = { "jinx" }
        },
		[51] = {
            name = "chameleonpaint_165",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 51,
			requiredJob = { "jinx" }
        },
		[52] = {
            name = "chameleonpaint_166",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 52,
			requiredJob = { "jinx" }
        },
		[53] = {
            name = "chameleonpaint_167",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 53,
			requiredJob = { "jinx" }
        },
		[54] = {
            name = "chameleonpaint_168",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 54,
			requiredJob = { "jinx" }
        },
		[55] = {
            name = "chameleonpaint_169",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 55,
			requiredJob = { "jinx" }
        },
		[56] = {
            name = "chameleonpaint_171",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 56,
			requiredJob = { "jinx" }
        },
		[57] = {
            name = "chameleonpaint_172",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 57,
			requiredJob = { "jinx" }
        },
		[58] = {
            name = "chameleonpaint_173",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 58,
			requiredJob = { "jinx" }
        },
		[59] = {
            name = "chameleonpaint_174",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 59,
			requiredJob = { "jinx" }
        },
		[60] = {
            name = "chameleonpaint_175",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 60,
			requiredJob = { "jinx" }
        },
		[61] = {
            name = "chameleonpaint_176",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 61,
			requiredJob = { "jinx" }
        },
		[62] = {
            name = "chameleonpaint_177",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 62,
			requiredJob = { "jinx" }
        },
		[63] = {
            name = "chameleonpaint_178",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 63,
			requiredJob = { "jinx" }
        },
		[64] = {
            name = "harness",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 64,
			requiredJob = { "jinx" }
        },
	},
	["tuner"] = {
        [1] = {
            name = "chameleonpaint_115",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "tuner" }
        },
		[2] = {
            name = "chameleonpaint_116",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "tuner" }
        },
		[3] = {
            name = "chameleonpaint_117",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "tuner" }
        },
		[4] = {
            name = "chameleonpaint_118",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "tuner" }
        },
		[5] = {
            name = "chameleonpaint_119",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "tuner" }
        },
		[6] = {
            name = "chameleonpaint_120",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "tuner" }
        },
		[7] = {
            name = "chameleonpaint_121",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "tuner" }
        },
		[8] = {
            name = "chameleonpaint_122",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "tuner" }
        },
		[9] = {
            name = "chameleonpaint_123",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "tuner" }
        },
		[10] = {
            name = "chameleonpaint_124",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "tuner" }
        },
		[11] = {
            name = "chameleonpaint_125",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "tuner" }
        },
		[12] = {
            name = "chameleonpaint_126",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "tuner" }
        },
		[13] = {
            name = "chameleonpaint_127",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "tuner" }
        },
		[14] = {
            name = "chameleonpaint_128",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "tuner" }
        },
		[15] = {
            name = "chameleonpaint_129",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "tuner" }
        },
		[16] = {
            name = "chameleonpaint_130",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "tuner" }
        },
		[17] = {
            name = "chameleonpaint_131",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "tuner" }
        },
		[18] = {
            name = "chameleonpaint_132",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "tuner" }
        },
		[19] = {
            name = "chameleonpaint_133",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "tuner" }
        },
		[20] = {
            name = "chameleonpaint_134",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "tuner" }
        },
		[21] = {
            name = "chameleonpaint_135",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "tuner" }
        },
		[22] = {
            name = "chameleonpaint_136",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "tuner" }
        },
		[23] = {
            name = "chameleonpaint_137",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "tuner" }
        },
		[24] = {
            name = "chameleonpaint_138",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "tuner" }
        },
		[25] = {
            name = "chameleonpaint_139",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 25,
			requiredJob = { "tuner" }
        },
		[26] = {
            name = "chameleonpaint_140",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 26,
			requiredJob = { "tuner" }
        },
		[27] = {
            name = "chameleonpaint_141",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 27,
			requiredJob = { "tuner" }
        },
		[28] = {
            name = "chameleonpaint_142",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 28,
			requiredJob = { "tuner" }
        },
		[29] = {
            name = "chameleonpaint_143",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 29,
			requiredJob = { "tuner" }
        },
		[30] = {
            name = "chameleonpaint_144",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 30,
			requiredJob = { "tuner" }
        },
		[31] = {
            name = "chameleonpaint_145",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 31,
			requiredJob = { "tuner" }
        },
		[32] = {
            name = "chameleonpaint_146",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 32,
			requiredJob = { "tuner" }
        },
		[33] = {
            name = "chameleonpaint_147",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 33,
			requiredJob = { "tuner" }
        },
		[34] = {
            name = "chameleonpaint_148",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 34,
			requiredJob = { "tuner" }
        },
		[35] = {
            name = "chameleonpaint_149",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 35,
			requiredJob = { "tuner" }
        },
		[36] = {
            name = "chameleonpaint_150",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 36,
			requiredJob = { "tuner" }
        },
		[37] = {
            name = "chameleonpaint_151",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 37,
			requiredJob = { "tuner" }
        },
		[38] = {
            name = "chameleonpaint_152",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 38,
			requiredJob = { "tuner" }
        },
		[39] = {
            name = "chameleonpaint_153",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 39,
			requiredJob = { "tuner" }
        },
		[40] = {
            name = "chameleonpaint_154",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 40,
			requiredJob = { "tuner" }
        },
		[41] = {
            name = "chameleonpaint_155",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 41,
			requiredJob = { "tuner" }
        },
		[42] = {
            name = "chameleonpaint_156",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 42,
			requiredJob = { "tuner" }
        },
		[43] = {
            name = "chameleonpaint_157",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 43,
			requiredJob = { "tuner" }
        },
		[44] = {
            name = "chameleonpaint_158",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 44,
			requiredJob = { "tuner" }
        },
		[45] = {
            name = "chameleonpaint_159",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 45,
			requiredJob = { "tuner" }
        },
		[46] = {
            name = "chameleonpaint_160",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 46,
			requiredJob = { "tuner" }
        },
		[47] = {
            name = "chameleonpaint_161",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 47,
			requiredJob = { "tuner" }
        },
		[48] = {
            name = "chameleonpaint_162",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 48,
			requiredJob = { "tuner" }
        },
		[49] = {
            name = "chameleonpaint_163",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 49,
			requiredJob = { "tuner" }
        },
		[50] = {
            name = "chameleonpaint_164",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 50,
			requiredJob = { "tuner" }
        },
		[51] = {
            name = "chameleonpaint_165",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 51,
			requiredJob = { "tuner" }
        },
		[52] = {
            name = "chameleonpaint_166",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 52,
			requiredJob = { "tuner" }
        },
		[53] = {
            name = "chameleonpaint_167",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 53,
			requiredJob = { "tuner" }
        },
		[54] = {
            name = "chameleonpaint_168",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 54,
			requiredJob = { "tuner" }
        },
		[55] = {
            name = "chameleonpaint_169",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 55,
			requiredJob = { "tuner" }
        },
		[56] = {
            name = "chameleonpaint_171",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 56,
			requiredJob = { "tuner" }
        },
		[57] = {
            name = "chameleonpaint_172",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 57,
			requiredJob = { "tuner" }
        },
		[58] = {
            name = "chameleonpaint_173",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 58,
			requiredJob = { "tuner" }
        },
		[59] = {
            name = "chameleonpaint_174",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 59,
			requiredJob = { "tuner" }
        },
		[60] = {
            name = "chameleonpaint_175",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 60,
			requiredJob = { "tuner" }
        },
		[61] = {
            name = "chameleonpaint_176",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 61,
			requiredJob = { "tuner" }
        },
		[62] = {
            name = "chameleonpaint_177",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 62,
			requiredJob = { "tuner" }
        },
		[63] = {
            name = "chameleonpaint_178",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 63,
			requiredJob = { "tuner" }
        },
		[64] = {
            name = "harness",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 64,
			requiredJob = { "tuner" }
        },
		[65] = {
            name = "nitrous",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 65,
			requiredJob = { "tuner" }
        },
		[66] = {
            name = "nitrous",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 66,
			requiredJob = { "tuner" }
        },
	},
	["whenua"] = {
        [1] = {
            name = "chameleonpaint_115",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "whenua" }
        },
		[2] = {
            name = "chameleonpaint_116",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "whenua" }
        },
		[3] = {
            name = "chameleonpaint_117",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "whenua" }
        },
		[4] = {
            name = "chameleonpaint_118",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "whenua" }
        },
		[5] = {
            name = "chameleonpaint_119",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "whenua" }
        },
		[6] = {
            name = "chameleonpaint_120",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "whenua" }
        },
		[7] = {
            name = "chameleonpaint_121",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "whenua" }
        },
		[8] = {
            name = "chameleonpaint_122",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "whenua" }
        },
		[9] = {
            name = "chameleonpaint_123",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "whenua" }
        },
		[10] = {
            name = "chameleonpaint_124",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "whenua" }
        },
		[11] = {
            name = "chameleonpaint_125",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "whenua" }
        },
		[12] = {
            name = "chameleonpaint_126",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "whenua" }
        },
		[13] = {
            name = "chameleonpaint_127",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "whenua" }
        },
		[14] = {
            name = "chameleonpaint_128",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "whenua" }
        },
		[15] = {
            name = "chameleonpaint_129",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "whenua" }
        },
		[16] = {
            name = "chameleonpaint_130",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "whenua" }
        },
		[17] = {
            name = "chameleonpaint_131",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "whenua" }
        },
		[18] = {
            name = "chameleonpaint_132",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "whenua" }
        },
		[19] = {
            name = "chameleonpaint_133",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "whenua" }
        },
		[20] = {
            name = "chameleonpaint_134",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "whenua" }
        },
		[21] = {
            name = "chameleonpaint_135",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "whenua" }
        },
		[22] = {
            name = "chameleonpaint_136",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "whenua" }
        },
		[23] = {
            name = "chameleonpaint_137",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "whenua" }
        },
		[24] = {
            name = "chameleonpaint_138",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "whenua" }
        },
		[25] = {
            name = "chameleonpaint_139",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 25,
			requiredJob = { "whenua" }
        },
		[26] = {
            name = "chameleonpaint_140",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 26,
			requiredJob = { "whenua" }
        },
		[27] = {
            name = "chameleonpaint_141",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 27,
			requiredJob = { "whenua" }
        },
		[28] = {
            name = "chameleonpaint_142",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 28,
			requiredJob = { "whenua" }
        },
		[29] = {
            name = "chameleonpaint_143",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 29,
			requiredJob = { "whenua" }
        },
		[30] = {
            name = "chameleonpaint_144",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 30,
			requiredJob = { "whenua" }
        },
		[31] = {
            name = "chameleonpaint_145",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 31,
			requiredJob = { "whenua" }
        },
		[32] = {
            name = "chameleonpaint_146",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 32,
			requiredJob = { "whenua" }
        },
		[33] = {
            name = "chameleonpaint_147",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 33,
			requiredJob = { "whenua" }
        },
		[34] = {
            name = "chameleonpaint_148",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 34,
			requiredJob = { "whenua" }
        },
		[35] = {
            name = "chameleonpaint_149",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 35,
			requiredJob = { "whenua" }
        },
		[36] = {
            name = "chameleonpaint_150",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 36,
			requiredJob = { "whenua" }
        },
		[37] = {
            name = "chameleonpaint_151",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 37,
			requiredJob = { "whenua" }
        },
		[38] = {
            name = "chameleonpaint_152",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 38,
			requiredJob = { "whenua" }
        },
		[39] = {
            name = "chameleonpaint_153",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 39,
			requiredJob = { "whenua" }
        },
		[40] = {
            name = "chameleonpaint_154",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 40,
			requiredJob = { "whenua" }
        },
		[41] = {
            name = "chameleonpaint_155",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 41,
			requiredJob = { "whenua" }
        },
		[42] = {
            name = "chameleonpaint_156",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 42,
			requiredJob = { "whenua" }
        },
		[43] = {
            name = "chameleonpaint_157",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 43,
			requiredJob = { "whenua" }
        },
		[44] = {
            name = "chameleonpaint_158",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 44,
			requiredJob = { "whenua" }
        },
		[45] = {
            name = "chameleonpaint_159",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 45,
			requiredJob = { "whenua" }
        },
		[46] = {
            name = "chameleonpaint_160",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 46,
			requiredJob = { "whenua" }
        },
		[47] = {
            name = "chameleonpaint_161",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 47,
			requiredJob = { "whenua" }
        },
		[48] = {
            name = "chameleonpaint_162",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 48,
			requiredJob = { "whenua" }
        },
		[49] = {
            name = "chameleonpaint_163",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 49,
			requiredJob = { "whenua" }
        },
		[50] = {
            name = "chameleonpaint_164",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 50,
			requiredJob = { "whenua" }
        },
		[51] = {
            name = "chameleonpaint_165",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 51,
			requiredJob = { "whenua" }
        },
		[52] = {
            name = "chameleonpaint_166",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 52,
			requiredJob = { "whenua" }
        },
		[53] = {
            name = "chameleonpaint_167",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 53,
			requiredJob = { "whenua" }
        },
		[54] = {
            name = "chameleonpaint_168",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 54,
			requiredJob = { "whenua" }
        },
		[55] = {
            name = "chameleonpaint_169",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 55,
			requiredJob = { "whenua" }
        },
		[56] = {
            name = "chameleonpaint_171",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 56,
			requiredJob = { "whenua" }
        },
		[57] = {
            name = "chameleonpaint_172",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 57,
			requiredJob = { "whenua" }
        },
		[58] = {
            name = "chameleonpaint_173",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 58,
			requiredJob = { "whenua" }
        },
		[59] = {
            name = "chameleonpaint_174",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 59,
			requiredJob = { "whenua" }
        },
		[60] = {
            name = "chameleonpaint_175",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 60,
			requiredJob = { "whenua" }
        },
		[61] = {
            name = "chameleonpaint_176",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 61,
			requiredJob = { "whenua" }
        },
		[62] = {
            name = "chameleonpaint_177",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 62,
			requiredJob = { "whenua" }
        },
		[63] = {
            name = "chameleonpaint_178",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 63,
			requiredJob = { "whenua" }
        },
		[64] = {
            name = "harness",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 64,
			requiredJob = { "whenua" }
        },
	},
	["rebelswhenua"] = {
        [1] = {
            name = "chameleonpaint_115",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 1,
			requiredJob = { "whenua" }
        },
		[2] = {
            name = "chameleonpaint_116",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 2,
			requiredJob = { "whenua" }
        },
		[3] = {
            name = "chameleonpaint_117",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 3,
			requiredJob = { "whenua" }
        },
		[4] = {
            name = "chameleonpaint_118",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 4,
			requiredJob = { "whenua" }
        },
		[5] = {
            name = "chameleonpaint_119",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 5,
			requiredJob = { "whenua" }
        },
		[6] = {
            name = "chameleonpaint_120",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 6,
			requiredJob = { "whenua" }
        },
		[7] = {
            name = "chameleonpaint_121",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 7,
			requiredJob = { "whenua" }
        },
		[8] = {
            name = "chameleonpaint_122",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 8,
			requiredJob = { "whenua" }
        },
		[9] = {
            name = "chameleonpaint_123",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
			requiredJob = { "whenua" }
        },
		[10] = {
            name = "chameleonpaint_124",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
			requiredJob = { "whenua" }
        },
		[11] = {
            name = "chameleonpaint_125",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 11,
			requiredJob = { "whenua" }
        },
		[12] = {
            name = "chameleonpaint_126",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
			requiredJob = { "whenua" }
        },
		[13] = {
            name = "chameleonpaint_127",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
			requiredJob = { "whenua" }
        },
		[14] = {
            name = "chameleonpaint_128",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 14,
			requiredJob = { "whenua" }
        },
		[15] = {
            name = "chameleonpaint_129",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 15,
			requiredJob = { "whenua" }
        },
		[16] = {
            name = "chameleonpaint_130",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 16,
			requiredJob = { "whenua" }
        },
		[17] = {
            name = "chameleonpaint_131",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 17,
			requiredJob = { "whenua" }
        },
		[18] = {
            name = "chameleonpaint_132",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 18,
			requiredJob = { "whenua" }
        },
		[19] = {
            name = "chameleonpaint_133",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 19,
			requiredJob = { "whenua" }
        },
		[20] = {
            name = "chameleonpaint_134",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 20,
			requiredJob = { "whenua" }
        },
		[21] = {
            name = "chameleonpaint_135",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 21,
			requiredJob = { "whenua" }
        },
		[22] = {
            name = "chameleonpaint_136",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 22,
			requiredJob = { "whenua" }
        },
		[23] = {
            name = "chameleonpaint_137",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 23,
			requiredJob = { "whenua" }
        },
		[24] = {
            name = "chameleonpaint_138",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 24,
			requiredJob = { "whenua" }
        },
		[25] = {
            name = "chameleonpaint_139",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 25,
			requiredJob = { "whenua" }
        },
		[26] = {
            name = "chameleonpaint_140",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 26,
			requiredJob = { "whenua" }
        },
		[27] = {
            name = "chameleonpaint_141",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 27,
			requiredJob = { "whenua" }
        },
		[28] = {
            name = "chameleonpaint_142",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 28,
			requiredJob = { "whenua" }
        },
		[29] = {
            name = "chameleonpaint_143",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 29,
			requiredJob = { "whenua" }
        },
		[30] = {
            name = "chameleonpaint_144",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 30,
			requiredJob = { "whenua" }
        },
		[31] = {
            name = "chameleonpaint_145",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 31,
			requiredJob = { "whenua" }
        },
		[32] = {
            name = "chameleonpaint_146",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 32,
			requiredJob = { "whenua" }
        },
		[33] = {
            name = "chameleonpaint_147",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 33,
			requiredJob = { "whenua" }
        },
		[34] = {
            name = "chameleonpaint_148",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 34,
			requiredJob = { "whenua" }
        },
		[35] = {
            name = "chameleonpaint_149",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 35,
			requiredJob = { "whenua" }
        },
		[36] = {
            name = "chameleonpaint_150",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 36,
			requiredJob = { "whenua" }
        },
		[37] = {
            name = "chameleonpaint_151",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 37,
			requiredJob = { "whenua" }
        },
		[38] = {
            name = "chameleonpaint_152",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 38,
			requiredJob = { "whenua" }
        },
		[39] = {
            name = "chameleonpaint_153",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 39,
			requiredJob = { "whenua" }
        },
		[40] = {
            name = "chameleonpaint_154",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 40,
			requiredJob = { "whenua" }
        },
		[41] = {
            name = "chameleonpaint_155",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 41,
			requiredJob = { "whenua" }
        },
		[42] = {
            name = "chameleonpaint_156",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 42,
			requiredJob = { "whenua" }
        },
		[43] = {
            name = "chameleonpaint_157",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 43,
			requiredJob = { "whenua" }
        },
		[44] = {
            name = "chameleonpaint_158",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 44,
			requiredJob = { "whenua" }
        },
		[45] = {
            name = "chameleonpaint_159",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 45,
			requiredJob = { "whenua" }
        },
		[46] = {
            name = "chameleonpaint_160",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 46,
			requiredJob = { "whenua" }
        },
		[47] = {
            name = "chameleonpaint_161",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 47,
			requiredJob = { "whenua" }
        },
		[48] = {
            name = "chameleonpaint_162",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 48,
			requiredJob = { "whenua" }
        },
		[49] = {
            name = "chameleonpaint_163",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 49,
			requiredJob = { "whenua" }
        },
		[50] = {
            name = "chameleonpaint_164",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 50,
			requiredJob = { "whenua" }
        },
		[51] = {
            name = "chameleonpaint_165",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 51,
			requiredJob = { "whenua" }
        },
		[52] = {
            name = "chameleonpaint_166",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 52,
			requiredJob = { "whenua" }
        },
		[53] = {
            name = "chameleonpaint_167",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 53,
			requiredJob = { "whenua" }
        },
		[54] = {
            name = "chameleonpaint_168",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 54,
			requiredJob = { "whenua" }
        },
		[55] = {
            name = "chameleonpaint_169",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 55,
			requiredJob = { "whenua" }
        },
		[56] = {
            name = "chameleonpaint_171",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 56,
			requiredJob = { "whenua" }
        },
		[57] = {
            name = "chameleonpaint_172",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 57,
			requiredJob = { "whenua" }
        },
		[58] = {
            name = "chameleonpaint_173",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 58,
			requiredJob = { "whenua" }
        },
		[59] = {
            name = "chameleonpaint_174",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 59,
			requiredJob = { "whenua" }
        },
		[60] = {
            name = "chameleonpaint_175",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 60,
			requiredJob = { "whenua" }
        },
		[61] = {
            name = "chameleonpaint_176",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 61,
			requiredJob = { "whenua" }
        },
		[62] = {
            name = "chameleonpaint_177",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 62,
			requiredJob = { "whenua" }
        },
		[63] = {
            name = "chameleonpaint_178",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 63,
			requiredJob = { "whenua" }
        },
		[64] = {
            name = "harness",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 64,
			requiredJob = { "whenua" }
        },
		[65] = {
            name = "ww_drif_kit",
            price = 0,
            amount = 5000,
            info = {},
            type = "item",
            slot = 65,
			requiredJob = { "whenua" }
        },
	},
 }

Config.Locations = {
	["pacificbluffs1"] = {
        ["label"] = "Pacific Bluffs Resort",
        ["coords"] = vector4(-3021.11, 39.79, 10.12, 241.99),
        ["ped"] = 's_f_y_bartender_01',
        ["scenario"] = "WORLD_HUMAN_SMOKING",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-drumstick-bite",
        ["targetLabel"] = "Pool Fridge",
        ["products"] = Config.Products["pacificbluffs"],
        ["showblip"] = false,
        ["blipsprite"] = 442,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 5
    },
	
	["pacificbluffs2"] = {
        ["label"] = "Pacific Bluffs Resort",
        ["coords"] = vector4(-3024.1, 57.34, 11.61, 346.42),
        ["ped"] = 's_m_m_bouncer_01',
        ["scenario"] = "WORLD_HUMAN_STAND_GUARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-drumstick-bite",
        ["targetLabel"] = "Bar Fridge",
        ["products"] = Config.Products["pacificbluffs"],
        ["showblip"] = false,
        ["blipsprite"] = 442,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 5
    },
	
	["pacificbluffs3"] = {
        ["label"] = "Pacific Bluffs Resort",
        ["coords"] = vector4(-2960.13, -53.55, 1.76, 248.64),
        ["ped"] = 's_m_y_barman_01',
        ["scenario"] = "WORLD_HUMAN_STAND_IMPATIENT",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-drumstick-bite",
        ["targetLabel"] = "Wharf Fridge",
        ["products"] = Config.Products["pacificbluffs"],
        ["showblip"] = false,
        ["blipsprite"] = 442,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 5
    },
	
	["pacificbluffs4"] = {
        ["label"] = "Pacific Bluffs Resort",
        ["coords"] = vector4(-2978.21, 13.04, 6.97, 59.52),
        ["ped"] = 's_f_y_bartender_01',
        ["scenario"] = "WORLD_HUMAN_STAND_IMPATIENT",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-drumstick-bite",
        ["targetLabel"] = "Beach Fridge",
        ["products"] = Config.Products["pacificbluffs"],
        ["showblip"] = false,
        ["blipsprite"] = 442,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 5
    },
	
	["burgershot"] = {
        ["label"] = "Burgershot",
        ["coords"] = vector4(1247.34, -352.86, 69.21, 256.64),
        ["ped"] = 'u_m_y_burgerdrug_01',
        ["scenario"] = "CODE_HUMAN_CROSS_ROAD_WAIT",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-burger",
        ["targetLabel"] = "Collect items",
        ["products"] = Config.Products["burgershot"],
        ["showblip"] = true,
        ["blipsprite"] = 439,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 1
    },
	
	["towyard"] = {
        ["label"] = "Towyard",
        ["coords"] = vector4(407.45, -1624.83, 29.29, 270.34),
        ["ped"] = 'u_m_y_smugmech_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Tow Supplies",
        ["products"] = Config.Products["tow"],
        ["showblip"] = false,
        ["blipsprite"] = 439,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 1
    },

    -- 24/7 Locations
    ["247supermarket"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(24.47, -1346.62, 29.5, 271.66),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket2"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-3039.54, 584.38, 7.91, 17.27),
        ["ped"] = 'a_f_m_eastsa_02',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket3"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-3242.97, 1000.01, 12.83, 357.57),
        ["ped"] = 'a_f_y_eastsa_03',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket4"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1728.07, 6415.63, 35.04, 242.95),
        ["ped"] = 'a_m_y_eastsa_02',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket5"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1959.82, 3740.48, 32.34, 301.57),
        ["ped"] = 'a_f_m_eastsa_02',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket6"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(549.13, 2670.85, 42.16, 99.39),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket7"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(2677.47, 3279.76, 55.24, 335.08),
        ["ped"] = 'a_f_y_eastsa_03',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket8"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(2556.66, 380.84, 108.62, 356.67),
        ["ped"] = 'a_m_y_eastsa_02',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["247supermarket9"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(372.66, 326.98, 103.57, 253.73),
        ["ped"] = 'a_f_m_eastsa_02',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
	
    ["247supermarket10"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(160.82, 6641.89, 31.71, 224.1),
        ["ped"] = 'a_f_y_eastsa_03',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- LTD Gasoline Locations
    ["ltdgasoline"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-47.02, -1758.23, 29.42, 45.05),
        ["ped"] = 'a_m_y_polynesian_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["ltdgasoline2"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-706.06, -913.97, 19.22, 88.04),
        ["ped"] = 'a_m_y_genstreet_02',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["ltdgasoline3"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-1820.02, 794.03, 138.09, 135.45),
        ["ped"] = 'a_f_m_soucentmc_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["ltdgasoline4"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1164.71, -322.94, 69.21, 101.72),
        ["ped"] = 'a_f_y_soucent_02',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["ltdgasoline5"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1697.87, 4922.96, 42.06, 324.71),
        ["ped"] = 'a_m_y_polynesian_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- Rob's Liquor Locations
    ["robsliquor"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-1221.58, -908.15, 12.33, 35.49),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["orgbar"] = {
        ["label"] = "Beer Fridge",
        ["coords"] = vector4(-1192.57, -1189.04, 6.12, 282.26),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Fridge",
        ["products"] = Config.Products["orgbar"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
	
    ["robsliquor2"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-1486.59, -377.68, 40.16, 139.51),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["robsliquor3"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-2966.39, 391.42, 15.04, 87.48),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["robsliquor4"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1165.17, 2710.88, 38.16, 179.43),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["robsliquor5"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1134.2, -982.91, 46.42, 277.24),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- Hardware Store Locations
    ["hardware"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(45.68, -1749.04, 29.61, 53.13),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Open Hardware Store",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 566,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["hardware2"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(2747.71, 3472.85, 55.67, 255.08),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Open Hardware Store",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 566,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    ["hardware3"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(-10.96, 6499.32, 31.51, 45.97),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Hardware Store",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 566,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- Ammunation Locations
    ["ammunation"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-661.96, -933.53, 21.83, 177.05),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation2"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(809.68, -2159.13, 29.62, 1.43),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation3"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(1692.67, 3761.38, 34.71, 227.65),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation4"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-331.23, 6085.37, 31.45, 228.02),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation5"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(253.63, -51.02, 69.94, 72.91),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation6"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(23.0, -1105.67, 29.8, 162.91),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation7"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(2567.48, 292.59, 108.73, 349.68),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation8"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-1118.59, 2700.05, 18.55, 221.89),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation9"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(841.92, -1035.32, 28.19, 1.56),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation10"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-1304.19, -395.12, 36.7, 75.03),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
    ["ammunation11"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-3173.31, 1088.85, 20.84, 244.18),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
	
    ["casinobar"] = {
        ["label"] = "Casino Bar",
        ["coords"] = vector4(937.66, 27.66, 71.83, 35.83),
        ["ped"] = 's_m_y_waiter_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wine-bottle",
        ["targetLabel"] = "Open Casino Bar",
        ["products"] = Config.Products["casinobar"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- Weedshop Locations
    ["weedshop"] = {
        ["label"] = "Smoke On The Water",
        ["coords"] = vector4(-1171.49, -1572.61, 4.66, 112.3),
        ["ped"] = 'a_m_y_hippy_01',
        ["scenario"] = "WORLD_HUMAN_SMOKING_POT",
        ["radius"] = 0.5,
        ["targetIcon"] = "fas fa-cannabis",
        ["targetLabel"] = "Open Weed Shop",
        ["products"] = Config.Products["weedshop"],
        ["showblip"] = true,
        ["blipsprite"] = 140,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
	
    -- Sea Word Locations
    ["seaword"] = {
        ["label"] = "The Sea Word",
        ["coords"] = vector4(-1687.03, -1072.18, 13.15, 52.93),
        ["ped"] = 'a_f_y_indian_01',
        ["scenario"] = "WORLD_HUMAN_STAND_IMPATIENT",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-fish",
        ["targetLabel"] = "The Sea Word",
        ["products"] = Config.Products["gearshop"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },

    -- Leisure Shop Locations
    ["leisureshop"] = {
        ["label"] = "Leisure Shop",
        ["coords"] = vector4(-1505.91, 1511.95, 115.29, 257.13),
        ["ped"] = 'a_m_y_beach_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-leaf",
        ["targetLabel"] = "Open Leisure Shop",
        ["products"] = Config.Products["leisureshop"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
		["blipscale"] = 0.6,
        ["blipcolor"] = 0
    },
	
    ["yellowjack"] = {
        ["label"] = "Yellow Jack Inn",
        ["coords"] = vector4(1981.1, 3051.29, 47.21, 286.39),
        ["ped"] = 's_m_m_migrant_01',
        ["scenario"] = "WORLD_HUMAN_SMOKING",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-drumstick-bite",
        ["targetLabel"] = "Yellow Jack Fridge",
        ["products"] = Config.Products["yellowjack"],
        ["showblip"] = true,
        ["blipsprite"] = 442,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 5
    },
	
    ["mirrorbar"] = {
        ["label"] = "Mirror Restaurant Bar",
        ["coords"] = vector4(-1350.66, -1062.36, 11.47, 206.86), 
        ["ped"] = 's_m_y_waiter_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-cocktail",
        ["targetLabel"] = "Mirror Restaurant Fridge",
        ["products"] = Config.Products["mirrorbar"],
        ["showblip"] = true,
        ["blipsprite"] = 766,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 27
    },

    ["mirrorbar2"] = {
        ["label"] = "Mirror Restaurant Bar",
        ["coords"] = vector4(-1342.49, -1042.25, 20.03, 121.22),
        ["ped"] = 's_m_y_waiter_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-cocktail",
        ["targetLabel"] = "Mirror Restaurant Fridge",
        ["products"] = Config.Products["mirrorbar"],
        ["showblip"] = false,
        ["blipsprite"] = 766,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 5
    },	

    ["mirrorbar3"] = {
        ["label"] = "Mirror Restaurant Bar",
        ["coords"] = vector4(-1353.35, -1054.98, 3.51, 205.9),
        ["ped"] = 's_m_y_waiter_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-cocktail",
        ["targetLabel"] = "Mirror Restaurant Fridge",
        ["products"] = Config.Products["mirrorbar"],
        ["showblip"] = false,
        ["blipsprite"] = 766,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 5
    },	

    ["mirrorfood"] = {
        ["label"] = "Mirror Restaurant Food",
        ["coords"] = vector4(-1351.93, -1070.65, 6.99, 296.33),
        ["ped"] = 's_m_y_waiter_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-drumstick-bite",
        ["targetLabel"] = "Mirror Bar Food",
        ["products"] = Config.Products["mirrorfood"],
        ["showblip"] = false,
        ["blipsprite"] = 766,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 5
    },	
	
	-- ["bahama"] = {
        -- ["label"] = "Bahama Mamas West Club",
        -- ["coords"] = vector4(-1378.61, -593.68, 30.22, 119.99),
        -- ["ped"] = 's_m_y_barman_01',
        -- ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        -- ["radius"] = 1.5,
        -- ["targetIcon"] = "fas fa-cocktail",
        -- ["targetLabel"] = "Bahama Mamas Fridge",
        -- ["products"] = Config.Products["bahama"],
        -- ["showblip"] = true,
        -- ["blipsprite"] = 106,
        -- ["blipscale"] = 0.6,
        -- ["blipcolor"] = 7
    -- },

	["bellas"] = {
        ["label"] = "Bella's Bakery & Cafe",
        ["coords"] = vector4(1115.2, -634.89, 56.82, 9.29),
        ["ped"] = 's_m_y_chef_01',
        ["scenario"] = "WORLD_HUMAN_AA_COFFEE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Bella's Bakery & Cafe Food Cabinet",
        ["products"] = Config.Products["bellas"],
        ["showblip"] = true,
        ["blipsprite"] = 489,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 34
    },

	["backpackshop"] = {
		 ["label"] = "24/7 Backpack Shop",
		 ["coords"] = vector4(-135.68, 6199.79, 32.38, 64.55),
		 ["ped"] = 'mp_m_waremech_01',
		 ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
		 ["radius"] = 1.5,
		 ["targetIcon"] = "fas fa-shopping-basket",
		 ["targetLabel"] = "Open Shop",
		 ["products"] = Config.Products["backpackshop"],
		 ["showblip"] = true,
		 ["blipsprite"] = 440,
		 ["blipscale"] = 0.6,
		 ["blipcolor"] = 0
	},
	
	["mechanic"] = {
        ["label"] = "Benny's Stock Room",
        ["coords"] = vector4(-196.61, -1317.28, 31.09, 266.59),
        ["ped"] = 's_m_y_xmech_01',
        ["scenario"] = "WORLD_HUMAN_WELDING",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Benny's Stock Room",
        ["products"] = Config.Products["mechanic"],
        ["showblip"] = false,
        ["blipsprite"] = 489,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 34
    },
	
	["whenua"] = {
        ["label"] = "Whenua Stock Room",
        ["coords"] = vector4(88.05, 6539.32, 31.26, 316.01),
        ["ped"] = 's_m_y_xmech_01',
        ["scenario"] = "WORLD_HUMAN_WELDING",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Whenua Stock Room",
        ["products"] = Config.Products["whenua"],
        ["showblip"] = false,
        ["blipsprite"] = 489,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 34
    },
	
	["rebelswhenua"] = {
        ["label"] = "Rebels Whenua Stock Room",
        ["coords"] = vector4(769.14, -1294.87, 26.24, 352.6),
        ["ped"] = 's_m_y_xmech_01',
        ["scenario"] = "WORLD_HUMAN_WELDING",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Rebels Whenua Stock Room",
        ["products"] = Config.Products["whenua"],
        ["showblip"] = false,
        ["blipsprite"] = 489,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 34
    },
	
	["jinx"] = {
        ["label"] = "Jinx Stock Room",
        ["coords"] = vector4(577.92, 2777.65, 41.96, 95.67),
        ["ped"] = 's_m_y_xmech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Jinx Stock Room",
        ["products"] = Config.Products["jinx"],
        ["showblip"] = false,
        ["blipsprite"] = 489,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 34
    },
	
	["tuner"] = {
        ["label"] = "Tuner Stock Room",
        ["coords"] = vector4(839.3, -3185.96, 5.99, 172.9),
        ["ped"] = 's_m_y_xmech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Tuner Stock Room",
        ["products"] = Config.Products["tuner"],
        ["showblip"] = false,
        ["blipsprite"] = 489,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 34
    },	
	
		["valhalla"] = {
        ["label"] = "Valhalla Stock",
        ["coords"] = vector4(-138.93, 225.88, 94.99, 100.82),
        ["ped"] = 'u_m_y_pogo_01',
        ["scenario"] = "WORLD_HUMAN_GUARD_STAND",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Valhalla Stock",
        ["products"] = Config.Products["valhalla"],
        ["showblip"] = false,
        ["blipsprite"] = 489,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 34
    },

		["icecream"] = {
        ["label"] = "Lowkey Ice Cream",
        ["coords"] = vector4(1010.12, -2386.49, 30.55, 70.84),
        ["ped"] = 's_m_m_ccrew_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Stock Freezer",
        ["products"] = Config.Products["icecream"],
        ["showblip"] = false,
        ["blipsprite"] = 489,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 34
    },

	--Jewelery Store added by Jay
    -- ["jewelery"] = {
        -- ["label"] = "Organisation Jewelery Shop",
        -- ["coords"] = vector4(556.57, 2674.04, 42.17, 2.86),
        -- ["ped"] = 'a_m_y_beach_01',
        -- ["scenario"] = "WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE",
        -- ["radius"] = 1.5,
        -- ["targetIcon"] = "fas fa-leaf",
        -- ["targetLabel"] = "Open Org Jewelery Provider",
        -- ["products"] = Config.Products["jewelery"],
        -- ["showblip"] = true,
        -- ["blipsprite"] = 674,
        -- ["blipscale"] = 0.6,
        -- ["blipcolor"] = 0
    -- },	
}
