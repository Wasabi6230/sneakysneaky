-------------------------------
---------- CASE#2506 ----------
-------------------------------

Config = {}
-- Shop items (replicate table as follows to build a store with what you want to sell)
Config.pawnshopItems = {
    [1] = { name = "phone",                    price = 700, amount = 100, info = {}, type = "item", slot = 1 },
	[2] = { name = "radio",                    price = 2000, amount = 100, info = {}, type = "item", slot = 2 },
	[3] = { name = "fitbit",                   price = 2000, amount = 100, info = {}, type = "item", slot = 3 },
	[4] = { name = "binoculars",               price = 2000, amount = 100, info = {}, type = "item", slot = 4 },
}
-- Smelter items replicate table as follows to build a store with what you want to sell)
Config.smelterItems = {
    [1] = { name = "blueprint_sapphire_ring",             price = 50, amount = 200, info = {}, type = "item", slot = 1 },
	[2] = { name = "blueprint_opal_necklace",             price = 60, amount = 200, info = {}, type = "item", slot = 2 },
	[3] = { name = "blueprint_black_diamond_ring",        price = 100, amount = 200, info = {}, type = "item", slot = 3 },
	[4] = { name = "blueprint_pink_diamond_ring",         price = 100, amount = 200, info = {}, type = "item", slot = 4 },
}

-- Add items pawnshop buys here (dont forget to also add into menu in `client/pawnshop.lua` also `server/main.lua`)
-- ALSO ADD THE PRICES TO TEXT IN pawnshop.lua!
Config.SellPawnItems = {
		["metalscrap"] = 100,
        ["iron"] = 75,
        ["steel"] = 38,
        ["aluminum"] = 30,
		["copper"] = 75,
        ["plastic"] = 25,
        ["rubber"] = 100,
        ["goldchain"] = 625,
        ["rolex"] = 500,
        ["10kgoldchain"] = 1000,
        ["diamond"] = 500,
        ["diamond_ring"] = 400,     
}	
-- Add items Cash Converters buys here (dont forget to also add into menu in `client/hardware.lua` side file also `server/main.lua`)
Config.SellHardItems = {
		["tablet"] = 80,
		["iphone"] = 150,
		["samsungphone"] = 120,
		["laptop"] = 125,
}   
-- Add items gold dealer buys here (dont forget to also add into menu in `client/gold.lua` side file also `server/main.lua`)
Config.SellGoldItems = {
		["goldbar"] = 10000,
		["emerald"] = 3000,
		["fishingboot"] = 200,
		["fishingtin"] = 100,
}
