-- Zones for Menues
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'false' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    ['police'] = {
		vector3(430.87, -983.01, 35.8),
    },
    -- ['motorcyclesshop'] = {
        -- vector3(633.77, 2775.04, 42.02),
    -- },
	['pacificbluffs'] = {
		vector3(-3055.3, 98.97, 12.82),
    },
    ['rebelkings'] = {
        vector3(759.4, -1303.08, 29.84),
    },	
    ['ambulance'] = {
        vector3(-430.87, -325.52, 34.91),
    },
    ['realestate'] = {
        vector3(-726.08, 263.62, 84.14),
    },
    ['taxi'] = {
        vector3(903.32, -170.55, 74.0),
    },
    ['mirror'] = {
        vector3(-1357.16, -1056.56, 3.51),
    },	
	-- fancy pdm
    -- ['cardealer'] = {
        -- vector3(-29.39, -1114.93, 26.42),
    -- },
	-- default pdm
	['cardealer'] = {
        vector3(-1249.87, -347.15, 37.33),
    },
    ['mechanic'] = {
        vector3(-196.02, -1340.11, 34.9),
    },
    -- ['tow'] = { -- Gabz tow
        -- vector3(-185.5393, -1165.295, 23.671373),
    -- },
	['tow'] = { -- Davis tow
        vector3(400.82, -1619.01, 0.33),
    },
    ['tuner'] = {
        vector3(855.83, -3188.62, 5.99),
    },
    ['whenua'] = {
        vector3(82.58, 6528.51, 34.87),
    },
	['jinx'] = {
        vector3(594.06915, 2767.5791, 41.959648),
    },
    ['bossmen'] = {
        vector3(-237.46, -834.53, 30.68),
    },
    ['yellowjack'] = {
        vector3(1982.36, 3053.43, 47.22),
    },
    ['lawyer'] = {
        vector3(-1555.39, -572.35, 108.53),
    },
    -- ['reporter'] = {
        -- vector3(-80.73, -802.23, 243.4),
    -- },
    ['admin'] = {
        vector3(-808.6396, -204.149, 37.136734),
    },
	-- ['bahama'] = {
        -- vector3(-1378.14, -625.41, 35.9),
    -- },
	['bellas'] = {
        vector3(1117.13, -636.83, 56.82),
    },
	-- ['akltimes'] = {
        -- vector3(-577.5, -937.66, 28.82),
    -- },
	['valhalla'] = {
        vector3(-145.64, 218.81, 94.99),
    },
	['icecream'] = {
        vector3(1009.94, -2392.6, 30.55),
    },
	['trucker'] = {
        vector3(-423.9304, -2794.541, 9.7142486),
    },
	['manaaki'] = {
        vector3(-23.74, -592.33, 90.11),
    },
	['burgershot'] = {
        vector3(1250.48, -347.19, 69.21),
    },
}


Config.BossMenuZones = {
    ['police'] = {
		{ coords = vector3(430.87, -983.01, 35.8), length = 3.0, width = 3.0, heading = 182.08, minZ = 34.8, maxZ = 36.8 }, -- MRPD
    },
	['pacificbluffs'] = {
		{ coords = vector3(-3055.38, 99.04, 12.82), length = 0.50, width = 0.50, heading = 53.77, minZ = 11.82, maxZ = 13.82 },
    },
    ['ambulance'] = {
        { coords = vector3(-430.7235, -325.1782, 34.910755), length = 1.2, width = 0.6, heading = 341.0, minZ = 43.13, maxZ = 43.73 },
    },
    ['realestate'] = {
        { coords = vector3(-726.08, 263.62, 84.14), length = 1.6, width = 3.0, heading = 25.0, minZ = 82.943, maxZ = 85.74 },
    },
    ['taxi'] = {
        { coords = vector3(907.24, -150.19, 74.17), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['cardealer'] = {
        { coords = vector3(-1249.87, -347.15, 37.33), length = 2.4, width = 1.05, heading = 299.56, minZ = 36.33, maxZ = 38.33 },
    },
    ['mechanic'] = {
        { coords = vector3(-196.02, -1340.11, 34.9), length = 1.15, width = 2.6, heading = 263.95, minZ = 34.0, maxZ = 36.0 },
    },
    ['tow'] = {
        { coords = vector3(-185.5393, -1165.295, 23.671373), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 } ,
    },
    ['tuner'] = {
        { coords = vector3(-430.7235, -325.1782, 34.910755), length = 1.2, width = 0.6, heading = 341.0, minZ = 43.13, maxZ = 43.73 },
    },
    ['whenua'] = {
        { coords = vector3(82.58, 6528.51, 34.87), length = 0.6, width = 1.0, heading = 25.0, minZ = 33.87, maxZ = 35.87 },
    },
	['jinx'] = {
        { coords = vector3(594.06915, 2767.5791, 41.959648), length = 0.6, width = 1.0, heading = 25.0, minZ = 83.943, maxZ = 84.74 },
    },
    ['bossmen'] = {
        { coords = vector3(-237.46, -834.53, 30.68), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['yellowjack'] = {
        { coords = vector3(1987.71, 3046.6, 50.5), length = 2.4, width = 1.05, heading = 340.0, minZ = 27.07, maxZ = 27.67 },
    },
    ['lawyer'] = {
        { coords = vector3(-1555.39, -572.35, 108.53), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    -- ['reporter'] = {
        -- { coords = vector3(-80.73, -802.23, 243.4), length = 2.4, width = 1.05, heading = 340.0, minZ = 27.07, maxZ = 27.67 },
    -- },
    ['admin'] = {
        { coords = vector3(-808.6396, -204.149, 37.136734), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    -- ['motorcyclesshop'] = {
        -- { coords = vector3(633.77, 2775.04, 42.02), length = 1.15, width = 2.6, heading = 6.73, minZ = 40, maxZ = 50 },
    -- },
    ['rebelkings'] = {
        { coords = vector3(759.4, -1303.08, 29.84), length = 1.15, width = 2.6, heading = 6.73, minZ = 29.84, maxZ = 30.84 },
    },
	-- ['bahama'] = {
        -- { coords = vector3(-1378.14, -625.41, 35.9), length = 1.15, width = 2.6, heading = 6.73, minZ = 40, maxZ = 50 },
    -- },
	['bellas'] = {
        { coords = vector3(1117.13, -636.83, 56.82), length = 1.15, width = 2.6, heading = 6.73, minZ = 40, maxZ = 50 },
    },
	-- ['akltimes'] = {
        -- { coords = vector3(-577.5, -937.66, 28.82), length = 1.15, width = 2.6, heading = 6.73, minZ = 40, maxZ = 50 },
    -- },
	['valhalla'] = {
        { coords = vector3(-145.64, 218.81, 94.99), length = 1.15, width = 2.6, heading = 6.73, minZ = 40, maxZ = 50 },
    },
	['icecream'] = {
        { coords = vector3(1009.94, -2392.6, 30.55), length = 1.15, width = 2.6, heading = 6.73, minZ = 40, maxZ = 50 },
    },
	['trucker'] = {
        { coords = vector3(-423.9304, -2794.541, 9.7142486), length = 1.15, width = 2.6, heading = 6.73, minZ = 40, maxZ = 50 },
    },
	['manaaki'] = {
        { coords = vector3(-23.74, -592.33, 90.11), length = 1.15, width = 2.6, heading = 6.73, minZ = 40, maxZ = 50 },
    },
	['burgershot'] = {
        { coords = vector3(1250.48, -347.19, 69.21), length = 1.15, width = 2.6, heading = 6.73, minZ = 68.21, maxZ = 70.21 },
    },
}

Config.GangMenus = {
    ['sotias'] = {
        vector3(1442.5104, -2596.764, 51.810607),
    },
    ['natives'] = {
        vector3(263.75, 6669.84, 29.96),
    },
    -- ['warriors'] = { -- OLD VINEWOOD STRIP
        -- vector3(-381.26, 198.67, 83.6),
    -- },
    -- ['warriors'] = { -- VINEWOOD CORNER
        -- vector3(282.53, 364.57, 110.04),
    -- },
    ['mafia'] = {
        vector3(-1528.156, 150.32421, 60.798011),
    },
    ['triads'] = {
        vector3(474.55029, -1888.214, 26.094615),
    },
    -- ['kingsmen'] = {
        -- vector3(-1876.11, 2062.66, 145.57),
    -- },
    ['cartel'] = {
        vector3(1395.23, 1159.85, 114.34),
    },
	['demons'] = {
        vector3(977.66, -85.18, 78.09),
    },
	['disciples'] = {
        vector3(720.22, 2529.8, 77.65),
    },
	-- ['brotherhood'] = {
        -- vector3(-10.17, -1428.07, 31.1),
    -- },
	['silverbacks'] = {
        vector3(-3262.69, 1070.17, -16.21),
    },
	-- ['jackals'] = {
        -- vector3(1608.03, 3574.29, 38.75),
    -- },	
}

Config.GangMenuZones = {
    ['sotias'] = {
        { coords = vector3(1442.5104, -2596.764, 51.810607), length = 1.15, width = 2.6, heading = 131.0, minZ = 77.0, maxZ = 79.0 },
    },
    ['silverbacks'] = {
        { coords = vector3(-3262.69, 1070.17, -16.21), length = 1.15, width = 2.6, heading = 353.0, minZ = -16.00, maxZ = -21.00 },
    },	
    -- ['brotherhood'] = {
        -- { coords = vector3(-10.17, -1428.07, 31.1), length = 1.15, width = 2.6, heading = 353.0, minZ = 30.00, maxZ = 35.00 },
    -- },	
    ['natives'] = {
        { coords = vector3(-68.14901, 6508.4677, 35.688842), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    -- ['warriors'] = { -- OLD VINEWOOD STRIP
        -- { coords = vector3(-381.26, 198.67, 83.6), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    -- },
    -- ['warriors'] = { -- VINEWOOD CORNER
        -- { coords = vector3(282.53, 364.57, 110.04), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    -- },
    ['mafia'] = {
        { coords = vector3(-1528.156, 150.32421, 60.798011), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    ['triads'] = {
        { coords = vector3(474.55029, -1888.214, 26.094615), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
	-- ['kingsmen'] = {
        -- { coords = vector3(-1876.11, 2062.66, 145.57), length = 1.15, width = 2.6, heading = 353.0, minZ = 65.00, maxZ = 72.99 },
    -- },
	['cartel'] = {
        { coords = vector3(1395.23, 1159.85, 114.34), length = 1.15, width = 2.6, heading = 353.0, minZ = 112.00, maxZ = 115.00 },
    },
	['disciples'] = {
        { coords = vector3(225.04, -1981.52, 19.76), length = 1.15, width = 2.6, heading = 6.73, minZ = 19, maxZ = 29 },
    },	
	['demons'] = {
        { coords = vector3(977.66, -85.18, 78.09), length = 1.15, width = 2.6, heading = 316.94, minZ = 78.0, maxZ = 79.0 },
    },
	-- ['jackals'] = {
        -- { coords = vector3(1608.03, 3574.29, 38.75), length = 1.15, width = 2.6, heading = 316.94, minZ = 38.0, maxZ = 40.0 },
    -- },	
}
