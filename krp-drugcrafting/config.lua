Config = {}

Config.DrugCrafting = {

	["location"] = {x = 2431.49, y = 4971.1, z = 42.35, h = 46.49, r = 1.0}, -- drug crafting

    ["items"] = {
        [1] = {
            name = "weed_white-widow",
            amount = 50,
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
            amount = 50,
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
            amount = 50,
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
            amount = 50,
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
            amount = 50,
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
            amount = 50,
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
            amount = 50,
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
    }
}