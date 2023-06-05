Config = {}
Config.MiningZone = {
    ["1"] = {
        polyzone = vector3(-592.3700, 2081.0273, 132.3640),
        polyzone1 = 1.8, 
        polyzone2 = 15.1,
        heading = 286,  
        minZ=129.06,
        maxZ=134.26
    },
}

Config.WashingZone = {
    ["1"] = {
        polyzone = vector3(-179.7134, 3039.4924, 19.5958),
        polyzone1 = 6.0, 
        polyzone2 = 15.0,
        heading = 69, 
        minZ=18.06,
        maxZ=21.26
    },
}

Config.SmeltingZone = {
    ["1"] = {
        polyzone = vector3(1086.2692, -2004.0164, 33.2378),
        polyzone1 = 5.0, 
        polyzone2 = 5.1,
        heading = 240,  
        minZ=29.06,
        maxZ=33.26
    },
}
Config.MineText = "[E] To Mine"
Config.WashText = "[E] To Wash"
Config.MeltText = "[E] To Smelt"

Config.MiningTime = 15 -- This is in seconds (How long it takes to mine 2-10 stone)
Config.WashingTime = 7 -- This is in seconds (How long it takes to wash 2-10 stone)
Config.SmeltingTime = 3 -- This is in seconds (How long it takes to melt 2-10 stone)

Config.MaxStone = 10 -- Max amount of stone recieved (This is ONLY from mining)
Config.MinStone = 2 -- Minimum amount of stone recieved (This is ONLY from mining)

Config.MaxWash = 10 -- Max amount of Stone washed at a time
Config.MinWash = 1 -- Minimum amount of Stone washed at a time (I would recommed only using 1 to avoide people having stone left overs)

Config.MaxMelt = 10 -- Max amount of Stone Melted at a time
Config.MinMelt = 1 -- Minimum amount of Stone Melted at a time (I would recommed only using 1 to avoide people having stone left overs)

Config.Items = {    -- This is the materials you can get from Melting
    "copper",
    "aluminum",
    "iron",
    "steel",
    "plastic",
    "glass",	
}

Config.Chance = 5 -- How many percent chance to get a rare Item 

Config.Rare = {    -- This is the RARE materials you can get from smelting
    "diamond",
    "emerald",
	"rubber",
	"vc_uru",
}

Config.MiningItems = {
    [1] = {
        name = "pickaxe",
        price = 350,
        amount = 75,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "washing_pan",
        price = 350,
        amount = 75,
        info = {},
        type = "item",
        slot = 2,
    },
}