Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-542.47, -197.19, 38.24),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = "City Services"
        },
        licenses = {
            ["id_card"] = {
                label = "ID Card",
                cost = 50,
            },
            ["driver_license"] = {
                label = "Driver License",
                cost = 50,
                metadata = "driver"
            },
	-- KRP CUSTOM START (Disabled as done via police)
            -- ["weaponlicense"] = {
                -- label = "Weapon License",
                -- cost = 50,
                -- metadata = "weapon"
            -- },
	-- KRP CUSTOM END
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(214.32, -1400.54, 12.58),
        showBlip = false,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = "Driving School"
        },
        instructors = {
            "DJD56142",
            "DXT09752",
            "SRI85140",
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_f_y_business_02',
        coords = vec4(-542.58, -197.08, 37.24, 75.29),
        scenario = 'WORLD_HUMAN_AA_COFFEE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    } --comma
	-- KRP CUSTOM START (Disabled as standalone script managing driving license)
    -- Driving School Ped
    -- {
        -- model = 'a_m_m_eastsa_02',
        -- coords = vec4(214.32, -1400.54, 30.58, 320.65),
        -- scenario = 'WORLD_HUMAN_STAND_MOBILE',
        -- drivingschool = true,
        -- zoneOptions = { -- Used for when UseTarget is false
            -- length = 3.0,
            -- width = 3.0
        -- }
    -- }
	-- KRP CUSTOM END
}
