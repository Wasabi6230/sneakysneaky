Config = {}

Config.DefaultVolume = 0.10 -- Accepted values are 0.01 - 1


-- ALSO NEED TO ADD THE TWO CODE BLOCKS TO CLIENT.LUA!
Config.Locations = {
    ['loyalty'] = {
        ['job'] = 'admin', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(-783.0932, -208.5634, 37.152706), -- Where the booth is located
        ['playing'] = false
    },
	
	-- ['tempny'] = {
        -- ['radius'] = 30, -- The radius of the sound from the booth
        -- ['coords'] = vector3(2016.03, 3059.51, 50.23), -- Where the booth is located
        -- ['playing'] = false
    -- },

	['jayhouse'] = {
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(36.55, 459.2, 124.86), -- Where the booth is located
        ['playing'] = false
    },
	
	['cumhouse'] = {
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(2819.67, 1469.13, -2.1), -- Where the booth is located
        ['playing'] = false
    },
	
	-- ['zancudo'] = {
        -- ['radius'] = 30, -- The radius of the sound from the booth
        -- ['coords'] = vector3(-1807.22, 3000.11, 32.81), -- Where the booth is located
        -- ['playing'] = false
    -- },	

	['jayhouse2'] = {
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(-108.1, 992.36, 212.54), -- Where the booth is located
        ['playing'] = false
    },
	
	['WeddingVenue'] = {
        ['job'] = 'burgershot', -- Required job to use booth	
        ['radius'] = 200, -- The radius of the sound from the booth
        ['coords'] = vector3(-2948.34, 2994.43, 7.07), -- Where the booth is located
        ['playing'] = false
    },
	
	['pacificbluffs1'] = {
        ['job'] = 'pacificbluffs', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(-3010.13, 59.53, 12.6), -- Where the booth is located
        ['playing'] = false
    },
	
	['pacificbluffs2'] = {
        ['job'] = 'pacificbluffs', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(-2967.6, -10.01, 9.15), -- Where the booth is located
        ['playing'] = false
    },
	
	['pacificbluffs3'] = {
        ['job'] = 'pacificbluffs', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(-2990.14, -67.46, 1.76), -- Where the booth is located
        ['playing'] = false
    },
	
	['burgershot'] = {
        ['job'] = 'burgershot', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(1244.44, -353.83, 69.21), -- Where the booth is located
        ['playing'] = false
    },
	
	['anzac'] = {
        ['job'] = 'admin', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(-413.47, 1159.68, 325.86), -- Where the booth is located
        ['playing'] = false
    },

	['kavahouse'] = {
        ['radius'] = 20, -- The radius of the sound from the booth
        ['coords'] = vector3(1247.05, -514.5, 41.06), -- Where the booth is located
        ['playing'] = false
    },	
	
	['bennys'] = {
        ['radius'] = 60, -- The radius of the sound from the booth
        ['coords'] = vector3(-214.55, -1313.48, 34.7), -- Where the booth is located
        ['playing'] = false
    },
	
	['studio'] = {
        ['radius'] = 60, -- The radius of the sound from the booth
        ['coords'] = vector3(-996.49, -68.16, -99.0), -- Where the booth is located
        ['playing'] = false
    },
	
	-- ['boxing'] = {
        -- ['job'] = 'admin', -- Required job to use booth
        -- ['radius'] = 60, -- The radius of the sound from the booth
        -- ['coords'] = vector3(196.0, 1171.59, 225.59), -- Where the booth is located
        -- ['playing'] = false
    -- },
	['manaaki'] = {
        ['job'] = 'manaaki', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(-36.76, -584.22, 88.71), -- Where the booth is located
        ['playing'] = false
    },
    ['pdm'] = {
        ['job'] = 'cardealer', -- Required job to use booth
        ['radius'] = 40, -- The radius of the sound from the booth
        ['coords'] = vector3(-1249.32, -353.16, 36.91), -- Where the booth is located
        ['playing'] = false
    },
	['whenua'] = {
        ['job'] = 'whenua', -- Required job to use booth
        ['radius'] = 40, -- The radius of the sound from the booth
        ['coords'] = vector3(69.16, 6503.42, 31.25), -- Where the booth is located
        ['playing'] = false
    },
	['rebelkings'] = {
        ['job'] = 'rebelkings', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(735.6, -1288.44, 26.24), -- Where the booth is located
        ['playing'] = false
    },
    ['mirror'] = {
        ['job'] = 'mirror', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(-1346.85, -1063.23, 6.99), -- Where the booth is located
        ['playing'] = false
    },	
	['samoa'] = {
        ['job'] = 'admin', -- Required job to use booth
        ['radius'] = 80, -- The radius of the sound from the booth
        ['coords'] = vector3(4893.727, -4905.426, 3.4866411), -- Where the booth is located
        ['playing'] = false
    },
	['mirror2'] = {
        ['job'] = 'mirror', -- Required job to use booth
        ['radius'] = 100, -- The radius of the sound from the booth
        ['coords'] = vector3(-1297.35, -1036.98, 13.16), -- Where the booth is located
        ['playing'] = false
    },	
	['poly'] = {
        ['gang'] = 'polynesians', -- Required job to use booth
        ['radius'] = 60, -- The radius of the sound from the booth
        ['coords'] = vector3(-1190.686, -1196.315, 6.1201891), -- Where the booth is located
        ['playing'] = false
    },
	['demons'] = {
        ['gang'] = 'demons', -- Required job to use booth
        ['radius'] = 50, -- The radius of the sound from the booth
        ['coords'] = vector3(990.66, -100.73, 73.98), -- Where the booth is located
        ['playing'] = false
    },
	['mafia'] = {
        ['gang'] = 'mafia', -- Required job to use booth
        ['radius'] = 80, -- The radius of the sound from the booth
        ['coords'] = vector3(-1501.369, 124.80796, 55.658889), -- Where the booth is located
        ['playing'] = false
    },
	['yellowjack'] = {
        ['job'] = 'yellowjack', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(1987.6174, 3051.0634, 47.215129), -- Where the booth is located
        ['playing'] = false
    },
	['vespboat'] = {
        ['job'] = 'admin', -- Required job to use booth
        ['radius'] = 50, -- The radius of the sound from the booth
        ['coords'] = vector3(-2054.52, -1032.43, 8.97), -- Where the booth is located
        ['playing'] = false
    },
	['tuner'] = {
        ['job'] = 'tuner', -- Required job to use booth
        ['radius'] = 50, -- The radius of the sound from the booth
        ['coords'] = vector3(845.10601, -3187.875, 5.9949374), -- Where the booth is located
        ['playing'] = false
    },
	['whenua'] = {
        ['job'] = 'whenua', -- Required job to use booth
        ['radius'] = 50, -- The radius of the sound from the booth
        ['coords'] = vector3(22.35, 6458.36, 31.43), -- Where the booth is located
        ['playing'] = false
    },
	['kingsmen'] = {
        ['gang'] = 'kingsmen', -- Required job to use booth
        ['radius'] = 150, -- The radius of the sound from the booth
        ['coords'] = vector3(3115.83, 2225.12, 5.84), -- Where the booth is located
        ['playing'] = false
    },
	['triads'] = {
        ['gang'] = 'triads', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(468.0802, -1883.718, 22.414779), -- Where the booth is located
        ['playing'] = false
    },
	['motorcyclesshop'] = {
        ['job'] = 'motorcyclesshop', -- Required job to use booth
        ['radius'] = 25, -- The radius of the sound from the booth
        ['coords'] = vector3(626.5, 2765.25, 41.96), -- Where the booth is located
        ['playing'] = false
    },
	['jinx'] = {
        ['job'] = 'jinx', -- Required job to use booth
        ['radius'] = 25, -- The radius of the sound from the booth
        ['coords'] = vector3(591.4, 2769.25, 41.96), -- Where the booth is located
        ['playing'] = false
    },
	-- ['bahama'] = {
        -- ['job'] = 'bahama', --  DO NOT TOUCH! These are setup for two nearby areas!
        -- ['radius'] = 25, -- The radius of the sound from the booth
        -- ['coords'] = vector3(-1390.55, -604.98, 31.53), -- Where the booth is located
        -- ['playing'] = false
    -- },
	-- ['bahama2'] = {
        -- ['job'] = 'bahama', -- DO NOT TOUCH! These are setup for two nearby areas!
        -- ['radius'] = 8, -- The radius of the sound from the booth
        -- ['coords'] = vector3(-1367.22, -618.82, 30.21), -- Where the booth is located
        -- ['playing'] = false
    -- },
	['vanillaunicorn'] = {
        ['gang'] = 'cartel', -- DO NOT TOUCH! These are setup for two nearby areas!
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(110.03, -1284.82, 28.26), -- Where the booth is located
        ['playing'] = false
    },
		['bellas'] = {
        ['job'] = 'bellas', -- DO NOT TOUCH! These are setup for two nearby areas!
        ['radius'] = 15, -- The radius of the sound from the booth
        ['coords'] = vector3(1117.45, -647.56, 56.82), -- Where the booth is located
        ['playing'] = false
    },
	['realestate'] = {
        ['job'] = 'realestate', -- DO NOT TOUCH! These are setup for two nearby areas!
        ['radius'] = 20, -- The radius of the sound from the booth
        ['coords'] = vector3(-713.89, 267.91, 84.1), -- Where the booth is located
        ['playing'] = false
    },
	['lavie'] = {
        ['job'] = 'lavie', -- DO NOT TOUCH! These are setup for two nearby areas!
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(1624.8884, 4837.2871, 33.015174), -- Where the booth is located
        ['playing'] = false
    },
	['disciples'] = {
        ['gang'] = 'disciples', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(52.38, 486.15, 121.29), -- Where the booth is located
        ['playing'] = false
    },
	['valhalla'] = {
        ['job'] = 'valhalla', -- DO NOT TOUCH! These are setup for two nearby areas!
        ['radius'] = 15, -- The radius of the sound from the booth
        ['coords'] = vector3(-140.14, 228.15, 94.99), -- Where the booth is located
        ['playing'] = false
    },
	
}
