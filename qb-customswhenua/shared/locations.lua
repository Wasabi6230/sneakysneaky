--[[
    ['Innocence'] = {
    settings = {
        label = 'Bennys Motorworks', -- Text label for anything that wants it
        welcomeLabel = "Welcome to Benny's Motorworks!", -- Welcome label in the UI
        enabled = true, -- If the location can be used at all
    },
    blip = {
        label = 'Bennys Motorworks',
        coords = vector3(-205.6992, -1312.7377, 31.1588),
        sprite = 72,
        scale = 0.65,
        color = 0,
        display = 4,
        enabled = true,
    },
    categories = { -- Only include the categories you want. A category not listed defaults to FALSE.
        mods = true, -- Performance Mods
        repair = true,
        armor = true,
        respray = true,
        liveries = true,
        wheels = true,
        tint = true,
        plate = true,
        extras = true,
        neons = true,
        xenons = true,
        horn = true,
        turbo = true,
        cosmetics = true, -- Cosmetic Mods
    },
    drawtextui = {
        text = "Bennys Motorworks",
    },
    restrictions = { -- A person must pass ALL the restriction checks. Remove an item below to automatically pass that check.
        job = "any", -- Allowed job. Can be an array of strings for multiple jobs. Any for all jobs
        gang = "any", -- Allowed gang. Can be an array of strings for multiple gangs. Any for all gangs
        allowedClasses = {}, -- Array of allowed classes. Empty will allow any but denied classes.
        deniedClasses = {}, -- Array of denied classes.
    },
    zones = {
        { coords = vector3(-212.55, -1320.56, 31.0), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
        { coords = vector3(-222.47, -1329.73, 31.0), length = 6.0, width = 4.4, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
    }
},

All clases:
        restrictions = { deniedClasses = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 } },

Vehicle Classes:
0: Compacts     1: Sedans       2: SUVs         3: Coupes       4: Muscle       5: Sports Classics
6: Sports       7: Super        8: Motorcycles  9: Off-road     10: Industrial  11: Utility
12: Vans        13: Cycles      14: Boats       15: Helicopters 16: Planes      17: Service
18: Emergency   19: Military    20: Commercial  21: Trains
 ]]

Config = Config or {}

Config.Locations = {
    
	['whenua'] = {
        settings = {
            label = 'Whenua Customs',
            welcomeLabel = "Welcome to Whenua Customs!",
            enabled = true,
        },
        blip = {
            label = 'Whenua Customs',
            coords = vector3(89.62, 6536.64, 31.26),
            sprite = 643,
            scale = 0.60,
            color = 2,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
			armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Whenua Customs"
        },
        restrictions = { deniedClasses = { 14, 15, 16, 18, 19, 21 } },
        zones = {
            { coords = vector3(78.87, 6508.97, 31.26), length = 6.0, width = 4.0, heading = 222.0, minZ = 30.26, maxZ = 32.26 },
            { coords = vector3(67.05, 6521.6, 31.26), length = 6.0, width = 4.0, heading = 47.0, minZ = 30.26, maxZ = 32.26 },
			{ coords = vector3(62.51, 6516.96, 31.26), length = 6.0, width = 4.0, heading = 47.0, minZ = 30.26, maxZ = 32.26 },
			{ coords = vector3(57.75, 6512.38, 31.26), length = 6.0, width = 4.0, heading = 47.0, minZ = 30.26, maxZ = 32.26 },
        }
    },
	
	['whenuarebels'] = {
        settings = {
            label = 'Whenua Customs @ Rebel Kings',
            welcomeLabel = "Welcome to Whenua Customs!",
            enabled = true,
        },
        blip = {
            label = 'Whenua Customs',
            coords = vector3(765.43, -1308.72, 27.01),
            sprite = 643,
            scale = 0.60,
            color = 2,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
			armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Whenua Customs @ Rebel Kings"
        },
        restrictions = { deniedClasses = { 14, 15, 16, 18, 19, 21 } },
        zones = {
            { coords = vector3(765.43, -1308.72, 27.01), length = 6.0, width = 4.0, heading = 94.84, minZ = 26.01, maxZ = 28.01 },
            { coords = vector3(776.69, -1298.14, 27.01), length = 6.0, width = 4.0, heading = 359.83, minZ = 26.01, maxZ = 28.01 },
        }
    },
	
}