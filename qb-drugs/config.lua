Config = Config or {}
Config.Dealers = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.PoliceCallChance = 20 -- 03/08/22 was 40 (nzkfc)

-- Shop Config
Config.Products = {
    [1] = {
        name = "weed_white-widow",
        price = 20,
        amount = 100,
        info = {},
        type = "item",
        slot = 1,
        minrep = 0,
    },
    [2] = {
        name = "weed_skunk",
        price = 30,
        amount = 100,
        info = {},
        type = "item",
        slot = 2,
        minrep = 100,
    },
    [3] = {
        name = "weed_purple-haze",
        price = 40,
        amount = 100,
        info = {},
        type = "item",
        slot = 3,
        minrep = 200,
    },
    [4] = {
        name = "weed_og-kush",
        price = 50,
        amount = 100,
        info = {},
        type = "item",
        slot = 4,
        minrep = 300,
    },
    [5] = {
        name = "weed_amnesia",
        price = 60,
        amount = 100,
        info = {},
        type = "item",
        slot = 5,
        minrep = 400,
    },

}

-- Selling Config
Config.SuccessChance = 50
Config.ScamChance = 25
Config.RobberyChance = 15
Config.MinimumDrugSalePolice = 0

Config.CornerSellingDrugsList = {
    "weed_white-widow",
    "weed_skunk",
    "weed_purple-haze",
    "weed_og-kush",
    "weed_amnesia",
    "weed_ak47",
	-- underworld
	"tinnie",
	"weed_50bag",
	"magicmushroom",
	"baggedmdmapills",
	"bulkoxy",
	"crack_baggy",
	"heroin",
	"lsdtab",
	"lsdsheet",
	"metheightball",
}

Config.DrugsPrice = {
    -- CIVS
    ["weed_white-widow"] = {
        min = 1000,
        max = 1400,
    },
    ["weed_og-kush"] = {
        min = 1000,
        max = 1400,
    },
    ["weed_skunk"] = {
        min = 1000,
        max = 1400,
    },
    ["weed_amnesia"] = {
        min = 1000,
        max = 1400,
    },
    ["weed_purple-haze"] = {
        min = 1000,
        max = 1400,
    },
    ["weed_ak47"] = {
        min = 1000,
        max = 1400,
    },
	-- UW
	["magicmushroom"] = {
        min = 1400,
        max = 1750,
    },
	["tinnie"] = {
        min = 1950,
        max = 2450,
    },
	["lsdtab"] = {
        min = 1950,
        max = 2450,
    },
	["weed_50bag"] = {
        min = 2600,
        max = 2850,
    },
	["bulkoxy"] = {
        min = 2700,
        max = 2950,
    },
	["lsdsheet"] = {
        min = 3000,
        max = 3350,
    },
    ["baggedmdmapills"] = {
        min = 3000,
        max = 3350,
    },
    ["heroin"] = {
        min = 3000,
        max = 3350,
    },
	["metheightball"] = {
        min = 3000,
        max = 3350,
    }, 
	["crack_baggy"] = {
        min = 3000,
        max = 3350,
    },    	
}

-- Delivery Config
Config.UseMarkedBills = true -- true for marked bills, false for cash
Config.DeliveryRepGain = 1 -- amount of rep gained per delivery
Config.DeliveryRepLoss = 1 -- amount of rep lost if delivery wrong or late
Config.PoliceDeliveryModifier = 2 -- amount to multiply active cop count by
Config.WrongAmountFee = 2 -- divide the payout by this value for wrong delivery amount
Config.OverdueDeliveryFee = 4 -- divide the payout by this value for overdue delivery

Config.DeliveryItems = {
    [1] = {
        ["item"] = "weedbrick",
        ["minrep"] = 0,
        ['payout'] = 5000
    },
    [2] = {
        ["item"] = "cokebrick",
        ["minrep"] = 100,
        ['payout'] = 10000
    },
}

Config.DeliveryLocations = {
    [1] = {
        ["label"] = "Stripclub",
        ["coords"] = vector3(106.24, -1280.32, 29.24),
    },
    [2] = {
        ["label"] = "Vinewood Video",
        ["coords"] = vector3(223.98, 121.53, 102.76),
    },
    [3] = {
        ["label"] = "Taxi",
        ["coords"] = vector3(882.67, -160.26, 77.11),
    },
    [4] = {
        ["label"] = "Resort",
        ["coords"] = vector3(-1245.63, 376.21, 75.34),
    },
    [5] = {
        ["label"] = "Bahama Mamas",
        ["coords"] = vector3(-1383.1, -639.99, 28.67),
    },
}
