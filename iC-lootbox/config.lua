Config = {}

Config.Tier = { --must be 100%
    [1] = 35,
    [2] = 30,
    [3] = 23,
    [4] = 8,
    [5] = 2.9,
    [6] = 1.05,
    [7] = 0.05,
}

Config.KeyItem = 'key' -- item key

Config.Case = {
    ['case_components'] = { -- item name
        {name = "advancedlockpick", type = "item" , count = 5 ,label = "Advanced lockpick"       , tier = 1},
        {name = "trojan_usb", type = "item" , count = 3 , label = "Trojan usb"       , tier = 1},
        {name = "screwdriverset", type = "item" , count = 3 , label = "Screwdriverset"       , tier = 1},
        {name = "painkillers", type = "item" , count = 7 , label = "painkillers"       , tier = 1},

        {name = "loyalty1", type = "item" , count = 1 , label = "Loyalty Tier 1"       , tier = 2},
        {name = "pistol_extendedclip", type = "item" , count = 2 ,label = "Pistol EXT Clip"       , tier = 2},
        {name = "pistol_suppressor", type = "item" , count = 2 , label = "Pistol Suppressor"       , tier = 2},
        {name = "pistol_ammo"     , type = "item", count = 10      , label = "Pistol Ammo"    , tier = 2},

        {name = "weapon_pistol", type = "item" , count = 5 , label = "Walther P99"       , tier = 3},
        {name = "weapon_combatpistol", type = "item" , count = 5 , label = "Combat Pistol"       , tier = 3},
        {name = "smg_extendedclip", type = "item" , count = 2 , label = "SMG EXT Clip"       , tier = 3},
        {name = "smg_suppressor", type = "item" , count = 2 , label = "SMG Suppressor"       , tier = 3},
        {name = "cash"     , type = "money", count = 50000      , label = "Cash"    , tier = 3},

        {name = "weapon_pistol50", type = "item" , count = 2 , label = "Pistol .50 Cal"       , tier = 4},
        {name = "weapon_vintagepistol", type = "item" , count = 2 , label = "Vintage Pistol"       , tier = 4},
        {name = "weapon_heavypistol"     , type = "item", count = 2      , label = "Heavy Pistol"    , tier = 4},
        {name = "loyalty2", type = "item" , count = 1 , label = "Loyalty Tier 2"       , tier = 4},
        {name = "cash", type = "money" , count = 100000 , label = "Cash"       , tier = 4},

        {name = "weapon_smg", type = "item" , count = 1 , label = "SMG"       , tier = 5},
        {name = "weapon_microsmg", type = "item" , count = 1 , label = "Micro SMG"       , tier = 5},
        {name = "metalscrap", type = "item" , count = 150 , label = "Metalscrap"       , tier = 5},
        {name = "smg_ammo", type = "item" , count = 20 , label = "SMG Ammo"       , tier = 5},
        {name = "cash"     , type = "money", count = 250000      , label = "Cash"    , tier = 5},


        {name = "rubber", type = "item" , count = 150 , label = "Rubber"       , tier = 6},
        {name = "loyalty3", type = "item" , count = 1 , label = "Loyalty Tier 3"       , tier = 6},
        {name = "boostinglaptop", type = "item" , count = 1 , label = "Boosting Laptop"       , tier = 6},
        {name = "rifle_ammo", type = "item" , count = 10 , label = "Rifle ammo"       , tier = 6},
        {name = "cash"     , type = "money", count = 500000      , label = "Cash"    , tier = 6},
        

        {name = "weapon_assaultrifle", type = "item" , count = 1 , label = "Assault Rifle"       , tier = 7},
        {name = "weapon_assaultrifle_mk2", type = "item" , count = 1 , label = "Assault Rifle Mk II"       , tier = 7},
        {name = "weapon_carbinerifle_mk2", type = "item" , count = 1 , label = "Carbine Rifle Mk II"       , tier = 7},
        {name = "tunerlaptop", type = "item" , count = 1 , label = "Tuner Chip"       , tier = 7},
        {name = "marketcryptostick", type = "item" , count = 3 , label = "Encrypted Crypto USB Stick"       , tier = 7},
    },
    ['example_case'] = { -- item name
    
    }
}