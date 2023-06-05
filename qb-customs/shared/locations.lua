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
    
	['bennys'] = {
        settings = {
            label = 'Benny\'s Motorworks',
            welcomeLabel = "Welcome to Benny's Motorworks",
            enabled = true,
        },
        blip = {
            label = 'Benny\'s Motorworks',
            coords = vector3(-202.0, -1318.26, 30.49),
            sprite = 641,
            scale = 0.60,
            color = 1,
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
            text = "Benny's Motorworks"
        },
        restrictions = { deniedClasses = { 14, 15, 16, 18, 19, 21 } },
        zones = {
            -- upstairs
            { coords = vector3(-236.44, -1337.2, 30.48),  length = 6.0, width = 4.0, heading = 355.98, minZ = 30.0, maxZ = 32.0 },
			{ coords = vector3(-233.84, -1319.03, 30.9),  length = 6.0, width = 4.0, heading = 184.87, minZ = 30.0, maxZ = 32.0 },
			{ coords = vector3(-222.08, -1329.65, 30.89),  length = 6.0, width = 4.0, heading = 268.41, minZ = 30.0, maxZ = 32.0 },
			{ coords = vector3(-212.52, -1320.15, 31.1),  length = 6.0, width = 4.0, heading = 270.54, minZ = 30.0, maxZ = 32.0 },
			-- downstairs
			{ coords = vector3(-235.37, -1318.4, 17.84),  length = 6.0, width = 4.0, heading = 88.37, minZ = 16.84, maxZ = 18.84 },
			{ coords = vector3(-233.82, -1310.38, 17.84),  length = 6.0, width = 4.0, heading = 87.86, minZ = 16.84, maxZ = 18.84 },
			{ coords = vector3(-216.35, -1309.8, 17.84),  length = 6.0, width = 4.0, heading = 87.27, minZ = 16.84, maxZ = 18.84 },
        }
    },
	
}
