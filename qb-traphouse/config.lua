Config = Config or {}

-- **** IMPORTANT ****
-- UseTarget should only be set to true when using qb-target
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.MinZOffset = 40
Config.TakeoverPrice = 5000
Config.TrapHouses = {
    [1] = {
        coords = { -- Near davis fire
			["enter"] = vector3(107.76, -1657.79, 29.29), -- lesters
			["interaction"] = vector3(107.11, -1655.82, -9.6), 
        },
        polyzoneBoxData = {
            ["enter"] = {
                heading = 208.24,
                minZ = 29.15,
                maxZ = 30.29,
                debug = false,
                length = 1.5,
                width = 1.5,
                distance = 3.0,
                created = false
            },
            ["interaction"] = {
                heading = 94.13,
                debug = false,
                length = 1,
                width = 1,
                distance = 1.0,
                created = false
            },
            ["exit"] = {
                heading = 84.22,
                debug = false,
                length = 1,
                width = 1,
                distance = 1.0,
                created = false
            }
        },
        keyholders = {},
        pincode = 7584,
        inventory = {},
        opened = false,
        takingover = false,
        money = 0,
    },
	
	[2] = {
        coords = { -- sandy shores west
			["enter"] = vector3(916.44, 3576.87, 33.56), -- lesters
			["interaction"] = vector3(915.71, 3578.77, -5.33), 
        },
        polyzoneBoxData = {
            ["enter"] = {
                heading = 82.68,
                minZ = 33.56,
                maxZ = 34.56,
                debug = false,
                length = 1.5,
                width = 1.5,
                distance = 3.0,
                created = false
            },
            ["interaction"] = {
                heading = 90.27,
                debug = false,
                length = 1,
                width = 1,
                distance = 1.0,
                created = false
            },
            ["exit"] = {
                heading = 90.09,
                debug = false,
                length = 1,
                width = 1,
                distance = 1.0,
                created = false
            }
        },
        keyholders = {},
        pincode = 6247,
        inventory = {},
        opened = false,
        takingover = false,
        money = 0,
    }
	
}

Config.AllowedItems = {
    -- ["metalscrap"] = {
        -- name = "metalscrap",
        -- wait = 500,
        -- reward = 200,
    -- },
    -- ["copper"] = {
        -- name = "copper",
        -- wait = 500,
        -- reward = 150,
    -- },
    -- ["iron"] = {
        -- name = "iron",
        -- wait = 500,
        -- reward = 150,
    -- },
    -- ["aluminum"] = {
        -- name = "aluminum",
        -- wait = 500,
        -- reward = 60,
    -- },
    -- ["steel"] = {
        -- name = "steel",
        -- wait = 500,
        -- reward = 76,
    -- },
    -- ["glass"] = {
        -- name = "glass",
        -- wait = 500,
        -- reward = 30,
    -- },
    ["lockpick"] = {
        name = "lockpick",
        wait = 10000,
        reward = 150,
    },
    ["screwdriverset"] = {
        name = "screwdriverset",
        wait = 10000,
        reward = 300,
    },
    ["electronickit"] = {
        name = "electronickit",
        wait = 10000,
        reward = 300,
    },
	["cryptostick"] = {
        name = "cryptostick",
        wait = 12000,
        reward = 3500,
    },
    ["radioscanner"] = {
        name = "radioscanner",
        wait = 10000,
        reward = 850,
    },
    ["gatecrack"] = {
        name = "gatecrack",
        wait = 10000,
        reward = 600,
    },
    ["trojan_usb"] = {
        name = "trojan_usb",
        wait = 10000,
        reward = 1000,
    },
    ["weed_brick"] = {
        name = "weed_brick",
        wait = 5000,
        reward = 250,
    },
    ["phone"] = {
        name = "phone",
        wait = 2000,
        reward = 750,
    },
    ["radio"] = {
        name = "radio",
        wait = 2000,
        reward = 180,
    },
    ["handcuffs"] = {
        name = "handcuffs",
        wait = 2000,
        reward = 400,
    },
    ["10kgoldchain"] = {
        name = "10kgoldchain",
        wait = 10000,
        reward = 2000,
    },
	["goldchain"] = {
        name = "goldchain",
        wait = 8000,
        reward = 1250,
    },
	["diamond"] = {
        name = "diamond",
        wait = 8000,
        reward = 1000,
    },
	["diamond_ring"] = {
        name = "diamond_ring",
        wait = 10000,
        reward = 800,
    },
	["rolex"] = {
        name = "rolex",
        wait = 11000,
        reward = 1000,
    },
}
