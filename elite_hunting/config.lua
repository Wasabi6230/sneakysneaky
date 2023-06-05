Config = {}

Config.LicenseSettings = {
    requireWeaponLicense = false, -- If weapon licenses should be a thing that is needed, just enable this!
    weaponLicense = "weapon", -- The name that is used in PlayerData.metadata.licenses.(licensename, example "weapon")
    licenseShop = false, -- Checks for the weapon license when trying to open shop
    licenseStartHunting = false -- Checks for the weapon license when trying to start hunting
}

Config.Utils = {
    SkinningRadius = 1.5, -- How far away you can skin the animal
    BaitCooldown = 60000, -- How long it should take from placing bait until you are able to place bait again (default 60000 / 60 seconds)
    SkinPercentage = 40, -- Percentage of getting skin item (default 50 / 50%)
    RarePercentage = 15, -- Percentage of getting rare item (default 10 / 10%)
    BaitPlacing = 10 * 1000, -- Time for placing bait. 10 * 1000 = 10 seconds
    IllegalAttackRange = 10.0, -- How far away an illegal animal can be to be able to attack you
    LegalAttackRange = 7.5 -- How far away a legal animal can be to be able to attack you
}

Config.UsedWeapons = {
    weapon = "weapon_m700", -- What weapon you use
    knife = "huntingknife" -- What knife you use
} -- Make sure that these weapons above is included in Config.RemoveWeapons!

Config.RemoveWeapons = { -- Items which should be removed when exiting hunting zone
    weapon_m700 = { -- Item name in QBCore
        enable = true, -- Should it remove?
        label = "Hunting Rifle", -- Label
        price = 1000 -- Price you get for it
    },
    huntingknife = {
        enable = false,
        label = "Hunting Knife",
        price = 650
    },
    snp_ammo = {
        enable = true,
        label = "Hunting Rifle Ammo",
        price = 100
    },
    huntingbait = {
        enable = false,
        label = "Hunting Bait",
        price = 220
    },
}

Config.Items = {
    label = "Hunting Supplies",
    slots = 4,
    items = {
        [1] = {
            name = "weapon_m700",
            price = 1000,
            amount = 1000,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "snp_ammo",
            price = 500,
            amount = 1000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "huntingbait",
            price = 500,
            amount = 1000,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "huntingknife",
            price = 650,
            amount = 1000,
            info = {},
            type = "item",
            slot = 4,
        },
    },
}

Config.Zones = {
    huntingzone1 = {
        zoneDebug = false, -- Enable to debug the zone (showing the zone in green)
        zoneUseZ = true, -- Uses Z in Polyzone
        zoneCoords = vector3(-1309.06, 4633.94, 111.95), -- Zone coords
        zoneRadius = 310.0, -- Zone Radius
        zoneBlip = {
            enableBackground = true, -- Enables / Disables the area background blip
            enableBlip = true, -- Enables / Disables the blip for the area
            blipLabel = "North DOC Hunting Area", -- Label on blip
            sprite = 432, -- Sprite for blip
            scale = 0.6, -- Size of blip
            colour = 5 -- Blip Color
        },
        zoneShop = { -- Shop for zone, don't remove!
            debug = false, -- Enable to debug the shop
            useZ = true, -- Uses Z in Polyzone
            label = "Hunting Supplies", -- Label of hunting shop
            coords = vector4(-1545.73, 4731.85, 51.69, 77.25), -- Coordinates to shop
            radius = 2.0, -- Radius for when to activate shop
            model = "s_f_y_ranger_01", -- Model of NPC in shop
            buttonText = "Buy Supplies", -- Button 1 text
            buttonText2 = "Give back weapon", -- Button 2 text
            buttonText3 = "Start hunting", -- Button 3 text
            blip = { -- Shop blip adjustments
                enable = true,
                sprite = 280,
                display = 4,
                scale = 0.6,
                colour = 5
            }
        },
        spawnAlgoritm = true, -- When having this enabled, the script calculates which coords to spawn at. If disabled, it will randomly take coords inside manualSpawnpoints
        manualSpawnpoints = {
            --[[
                Just add coords for the spawnpoints you want. Make sure they are inside the hunting area you've chosen to use! Use the template vector3 below and change xyz
                vector3(0, 0, 0),
            ]]
        }
    },
    huntingzone2 = {
        zoneDebug = false,
        zoneUseZ = true,
        zoneCoords = vector3(-677.93, 4165.99, 160.12),
        zoneRadius = 260.0,
        zoneBlip = {
            enableBackground = true,
            enableBlip = true,
            blipLabel = "South DOC Hunting Area",
            sprite = 432,
            scale = 0.6,
            colour = 5
        },
        zoneShop = {
            debug = false,
            useZ = true,
            label = "Hunting Supplies",
            coords = vector4(-633.62, 4010.74, 123.70, 148.49),
            radius = 2.0,
            model = "s_f_y_ranger_01",
            buttonText = "Buy Supplies",
            buttonText2 = "Give back weapon",
            buttonText3 = "Start hunting",
            blip = {
                enable = true,
                sprite = 280,
                display = 4,
                scale = 0.6,
                colour = 5
            }
        },
        spawnAlgoritm = true,
        manualSpawnpoints = {}
    }
}

Config.Restaurants = {
    [1] = {
        debug = false,
        useZ = true,
        label = "Wholesale Meat Buyer",
        coords = vector4(1999.26, 3050.25, 46.20, 354.4),
        radius = 2.0,
        model = "s_m_y_chef_01",
        buttonText = "Sell Products",
        blip = {
            enable = true,
            sprite = 434,
            display = 4,
            scale = 0.6,
            colour = 5
        }
    }
}

Config.LegalHuntingAnimals = {
    [1] = {
        model = "a_c_boar",
        skin = "boar_skin",
        rare = nil
    },
    [2] = {
        model = "a_c_deer",
        skin = "deer_skin",
        rare = "antlers"
    }
}

Config.IllegalHuntingAnimals = {
    [1] = {
        model = "a_c_coyote",
        skin = "coyote_skin",
        rare = nil
    },
    [2] = {
        model = "a_c_mtlion",
        skin = "lion_skin",
        rare = "cougar-tooth"
    }
}

-- PRE NERF
-- Config.Prices = {
    -- [1] = {
        -- item = "carcass0",
        -- itemLabel = "Carcass 1 Stars",
        -- price = 250
    -- },
    -- [2] = {
        -- item = "carcass1",
        -- itemLabel = "Carcass 2 Stars",
        -- price = 500
    -- },
    -- [3] = {
        -- item = "carcass2",
        -- itemLabel = "Carcass 3 Stars",
        -- price = 750
    -- },
    -- [4] = {
        -- item = "carcass3",
        -- itemLabel = "Perfect Carcass",
        -- price = 900
    -- },
    -- [5] = {
        -- item = "boar_skin",
        -- itemLabel = "Boar Skin",
        -- price = 2000
    -- },
    -- [6] = {
        -- item = "deer_skin",
        -- itemLabel = "Deer Skin",
        -- price = 2500
    -- },
    -- [7] = {
        -- item = "coyote_skin",
        -- itemLabel = "Coyote Skin",
        -- price = 3000
    -- },
    -- [8] = {
        -- item = "lion_skin",
        -- itemLabel = "Lion Skin",
        -- price = 3850
    -- },
    -- [9] = {
        -- item = "cougar-tooth",
        -- itemLabel = "Cougar Tooth",
        -- price = 5000
    -- },
    -- [10] = {
        -- item = "antlers",
        -- itemLabel = "Antlers",
        -- price = 5000
    -- }
-- }

Config.Prices = {
    [1] = {
        item = "carcass0",
        itemLabel = "Carcass 1 Stars",
        price = 150
    },
    [2] = {
        item = "carcass1",
        itemLabel = "Carcass 2 Stars",
        price = 250
    },
    [3] = {
        item = "carcass2",
        itemLabel = "Carcass 3 Stars",
        price = 350
    },
    [4] = {
        item = "carcass3",
        itemLabel = "Perfect Carcass",
        price = 450
    },
    [5] = {
        item = "boar_skin",
        itemLabel = "Boar Skin",
        price = 900
    },
    [6] = {
        item = "deer_skin",
        itemLabel = "Deer Skin",
        price = 1200
    },
    [7] = {
        item = "coyote_skin",
        itemLabel = "Coyote Skin",
        price = 1500
    },
    [8] = {
        item = "lion_skin",
        itemLabel = "Lion Skin",
        price = 1800
    },
    [9] = {
        item = "cougar-tooth",
        itemLabel = "Cougar Tooth",
        price = 2200
    },
    [10] = {
        item = "antlers",
        itemLabel = "Antlers",
        price = 2500
    }
}

Config.Translations = {
    legal_animal = "Target Species",
    illegal_animal = "Illegal Species",
    already_hunting = "You are already hunting, give back the weapons if you want to stop hunting!",
    heard_animals = "You heard something in the distance, take a look and see what you can find!",
    rifle_error = "You need to buy a hunting rifle before you go out hunting, remember to give it back to the store later!",
    knife_error = "You need a hunting knife to do this...",
    not_hunting = "You are not hunting...",
    skinning = "Skinning",
    abuse = "You left the area, hunting weapons removed.",
    too_far_away = "You are too far away from the hunting area to do this!",
    placing_bait = "Placing bait",
    wait = "Now you just have to wait, try not to scare the animals!",
    place_failed = "You failed to place the bait...",
    something_wrong = "Something seems to be wrong with the spawning method. Contact the server owner!",
    no_license = "You don't have the required weapon license.."
}