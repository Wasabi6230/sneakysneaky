Config = {}

Config.Objects = {
    ["cone"] = {model = `prop_roadcone02a`, freeze = false},
    ["barrier"] = {model = `prop_barrier_work06a`, freeze = true},
    ["roadsign"] = {model = `prop_snow_sign_road_06g`, freeze = true},
    ["tent"] = {model = `prop_gazebo_03`, freeze = true},
    ["light"] = {model = `prop_worklight_03b`, freeze = true},
}

--KRP CUSTOM START (Handcuff struggle) THIS IS FOR THE IDRIS VERSION
-- Config.MaxEscapes = 1
-- KRP CUSTOM END

Config.MaxSpikes = 5

Config.HandCuffItem = 'handcuffs'

Config.LicenseRank = 6

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.Locations = {
    ["duty"] = {
        -- [1] = vector3(619.65, 10.65, 87.82), -- Vinewood
        [1] = vector3(-447.59, 6013.51, 31.72), -- Paleto Bay
        [2] = vector3(437.87, -983.05, 31.03), -- MRPD
		[3] = vector3(1789.93, 2548.05, 45.8) -- Mt Eden Prison
    },
    ["vehicle"] = {
        -- [1] = vector4(608.79449, -8.093783, 70.070121, 71.194602), -- Vinewood
        -- [2] = vector4(612.18933, 0.1110675, 70.070716, 73.061744), -- Vinewood
        [1] = vector4(-455.39, 6002.02, 31.34, 87.93), -- Paleto
        [2] = vector4(435.1, -1012.82, 21.34, 354.94), -- MRPD
		[3] = vector4(1753.49, 2606.08, 45.56, 268.14) -- Mt Eden Prison
    },
    ["stash"] = {
        -- [1] = vector3(605.86, -7.91, 87.82), -- Vinewood
        [1] = vector3(-435.93, 6006.46, 31.72), -- Paleto Bay
        [2] = vector3(419.75, -983.1, 21.56), -- MRPD
		[3] = vector3(1779.34, 2549.32, 45.8) -- Mt Eden Prison
    },
    ["impound"] = {
        -- [1] = vector4(604.17, -18.19, 70.63, 251.76), -- Vinewood
        [1] = vector4(-459.79, 6041.48, 31.34, 38.22), -- Paleto Bay
        [2] = vector4(423.41, -991.95, 21.34, 178.29) -- new MRPD
    },
    ["helicopter"] = {
        -- [1] = vector4(632.36, 3.34, 99.42, 73.92), -- Vinewood
        [1] = vector4(-475.43, 5988.353, 31.716, 31.34), -- Paleto Bay
        [2] = vector4(439.71551, -989.5139, 44.926967, 87.502349) -- New MRPD
    },
    ["armory"] = {
        -- [1] = vector3(604.25, 2.89, 87.82), -- Vinewood
        [1] = vector3(-438.26, 5987.84, 31.72), -- Paleto Bay
        [2] = vector3(429.37, -978.2, 21.56), -- MRPD
		[3] = vector3(1779.55, 2542.24, 45.8) -- Mt Eden Prison
    },
    ["trash"] = {
        -- [1] = vector3(605.19, 6.02, 87.82), -- Vinewood
        [1] = vector3(-435.61, 5990.03, 31.72), -- paleto
        [2] = vector3(424.98, -978.26, 21.56), -- MRPD
		[3] = vector3(1788.84, 2544.89, 45.8) -- Mt Eden Prison
    },
    ["fingerprint"] = {
        -- [1] = vector3(625.99, -5.44, 77.5) -- Vinewood
        [1] = vector3(-433.44, 5996.05, 31.72), -- Paleto Bay
        [2] = vector3(482.58407, -985.5446, 21.559511) -- MRPD		
    },
    ["evidence"] = {
        -- [1] = vector3(625.14, 1.72, 77.5), -- Vinewood
        [1] = vector3(-439.91, 5992.03, 31.72), -- Paleto Bay
        [2] = vector3(436.40463, -975.3532, 21.559528), -- MRPD
		[3] = vector3(1786.28, 2542.21, 45.8) -- Mt Eden Prison
    },
    ["stations"] = {
        -- [1] = {label = "NZPD South Auckland", coords = vector4(461.68795, -1000.402, 43.691341, 332.01736)},
        [1] = {label = "NZPD Paleto Bay", coords = vector4(-451.55, 6014.25, 31.716, 223.81)},
        [2] = {label = "NZPD Auckland Central", coords = vector4(436.94763, -989.785, 31.02605, 86.205596)}
    },
 }

Config.ArmoryWhitelist = {}

Config.PoliceHelicopter = "POLMAV"

Config.SecurityCameras = {
    hideradar = false,
    cameras = {
        [1] = {label = "Pacific Bank CAM#1", coords = vector3(257.45, 210.07, 109.08), r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = false, isOnline = true},
        [2] = {label = "Pacific Bank CAM#2", coords = vector3(232.86, 221.46, 107.83), r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = false, isOnline = true},
        [3] = {label = "Pacific Bank CAM#3", coords = vector3(252.27, 225.52, 103.99), r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = false, isOnline = true},
        [4] = {label = "Limited Ltd Grove St. CAM#1", coords = vector3(-53.1433, -1746.714, 31.546), r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
        [5] = {label = "Rob's Liqour Prosperity St. CAM#1", coords = vector3(-1482.9, -380.463, 42.363), r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
        [6] = {label = "Rob's Liqour San Andreas Ave. CAM#1", coords = vector3(-1224.874, -911.094, 14.401), r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
        [7] = {label = "Limited Ltd Ginger St. CAM#1", coords = vector3(-718.153, -909.211, 21.49), r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
        [8] = {label = "24/7 Supermarkt Innocence Blvd. CAM#1", coords = vector3(23.885, -1342.441, 31.672), r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
        [9] = {label = "Rob's Liqour El Rancho Blvd. CAM#1", coords = vector3(1133.024, -978.712, 48.515), r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "Limited Ltd West Mirror Drive CAM#1", coords = vector3(1151.93, -320.389, 71.33), r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "24/7 Supermarkt Clinton Ave CAM#1", coords = vector3(383.402, 328.915, 105.541), r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "Limited Ltd Banham Canyon Dr CAM#1", coords = vector3(-1832.057, 789.389, 140.436), r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "Rob's Liqour Great Ocean Hwy CAM#1", coords = vector3(-2966.15, 387.067, 17.393), r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "24/7 Supermarkt Ineseno Road CAM#1", coords = vector3(-3046.749, 592.491, 9.808), r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "24/7 Supermarkt Barbareno Rd. CAM#1", coords = vector3(-3246.489, 1010.408, 14.705), r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "24/7 Supermarkt Route 68 CAM#1", coords = vector3(539.773, 2664.904, 44.056), r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "Rob's Liqour Route 68 CAM#1", coords = vector3(1169.855, 2711.493, 40.432), r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "24/7 Supermarkt Senora Fwy CAM#1", coords = vector3(2673.579, 3281.265, 57.541), r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "24/7 Supermarkt Alhambra Dr. CAM#1", coords = vector3(1966.24, 3749.545, 34.143), r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "24/7 Supermarkt Senora Fwy CAM#2", coords = vector3(1729.522, 6419.87, 37.262), r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "Fleeca Bank Hawick Ave CAM#1", coords = vector3(309.341, -281.439, 55.88), r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "Fleeca Bank Legion Square CAM#1", coords = vector3(144.871, -1043.044, 31.017), r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [23] = {label = "Fleeca Bank Hawick Ave CAM#2", coords = vector3(-355.7643, -52.506, 50.746), r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [24] = {label = "Fleeca Bank Del Perro Blvd CAM#1", coords = vector3(-1214.226, -335.86, 39.515), r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "Fleeca Bank Great Ocean Hwy CAM#1", coords = vector3(-2958.885, 478.983, 17.406), r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "Paleto Bank CAM#1", coords = vector3(-102.939, 6467.668, 33.424), r = {x = -35.0, y = 0.0, z = 24.66}, canRotate = false, isOnline = true},
        [27] = {label = "Del Vecchio Liquor Paleto Bay", coords = vector3(-163.75, 6323.45, 33.424), r = {x = -35.0, y = 0.0, z = 260.00}, canRotate = false, isOnline = true},
        [28] = {label = "Don's Country Store Paleto Bay CAM#1", coords = vector3(166.42, 6634.4, 33.69), r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = false, isOnline = true},
        [29] = {label = "Don's Country Store Paleto Bay CAM#2", coords = vector3(163.74, 6644.34, 33.69), r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = false, isOnline = true},
        [30] = {label = "Don's Country Store Paleto Bay CAM#3", coords = vector3(169.54, 6640.89, 33.69), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = false, isOnline = true},
        [31] = {label = "Vangelico Jewelery CAM#1", coords = vector3(-627.54, -239.74, 40.33), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "Vangelico Jewelery CAM#2", coords = vector3(-627.51, -229.51, 40.24), r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "Vangelico Jewelery CAM#3", coords = vector3(-620.3, -224.31, 40.23), r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "Vangelico Jewelery CAM#4", coords = vector3(-622.57, -236.3, 40.31), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
    },
}

-- NOTE: If you add more vehicles here, please add them to the lockpick blacklist in qb-vehiclekeys\config.lua
Config.AuthorizedVehicles = {
	-- Prison Recruit
	[0] = {
	-- ["pbus"] = "Corrections Bus",
	-- ["caddy2"] = "Caddy"	
	},
	
	-- Prison Guard
	[1] = {
	["pbus"] = "Corrections Bus",
	["caddy2"] = "Caddy"	
	},
	
	-- Prison Warden
	[2] = {
	["pbus"] = "Corrections Bus",
	["caddy2"] = "Caddy"
	},	
	
	-- Recruit
	[3] = {
	},
	
	--Constable
	[4] = {
		-- ["r1200rtp"] = "BMW R1200RT",
        ["holden_evoke_police"] = "Holden Evoke",
        ["holden_zb_police"] = "Holden ZB Commodore",
        ["skoda_superb_police"] = "Skoda Superb",
        ["holden_colorado_police"] = "Holden Colorado Offroad",
        -- ["holden_colorado_unmarked"] = "Unmarked Holden Colorado Offroad",
        -- ["holden_evoke_unmarked"] = "Unmarked Holden Evoke CIB",
        -- ["holden_zb_unmarked"] = "Unmarked Holden ZB Commodore CIB",
		-- ["ford_xr6t_unmarked"] = "Unmarked Ford Falcon FGX XR6T CIB",
		-- ["holden_zbs_police"] = "Holden ZB Commodore Sedan",
		["18jeep"] = "Jeep Trackhawk"		
	},

	-- Senior Constable
	[5] = {
		-- ["r1200rtp"] = "BMW R1200RT",
        ["holden_evoke_police"] = "Holden Evoke",
        ["holden_zb_police"] = "Holden ZB Commodore",
        ["skoda_superb_police"] = "Skoda Superb",
        ["holden_colorado_police"] = "Holden Colorado Offroad",
        -- ["holden_colorado_unmarked"] = "Unmarked Holden Colorado Offroad",
        -- ["holden_evoke_unmarked"] = "Unmarked Holden Evoke CIB",
        -- ["holden_zb_unmarked"] = "Unmarked Holden ZB Commodore CIB",
		-- ["ford_xr6t_unmarked"] = "Unmarked Ford Falcon FGX XR6T CIB",
		["holden_zbs_police"] = "Holden ZB Commodore Sedan",
		["18jeep"] = "Jeep Trackhawk"		
	},
	
	-- Sargeant
	[6] = {
		-- ["r1200rtp"] = "BMW R1200RT",
        ["holden_evoke_police"] = "Holden Evoke",
        ["holden_zb_police"] = "Holden ZB Commodore",
        ["skoda_superb_police"] = "Skoda Superb",
        ["holden_colorado_police"] = "Holden Colorado Offroad",
        -- ["holden_colorado_unmarked"] = "Unmarked Holden Colorado Offroad",
        -- ["holden_evoke_unmarked"] = "Unmarked Holden Evoke CIB",
        -- ["holden_zb_unmarked"] = "Unmarked Holden ZB Commodore CIB",
		-- ["ford_xr6t_unmarked"] = "Unmarked Ford Falcon FGX XR6T CIB",
		["holden_zbs_police"] = "Holden ZB Commodore Sedan",
		["18jeep"] = "Jeep Trackhawk"		
	},
	
	-- Senior Sargeant
	[7] = {
		["r1200rtp"] = "BMW R1200RT",
        ["holden_evoke_police"] = "Holden Evoke",
        ["holden_zb_police"] = "Holden ZB Commodore",
        ["skoda_superb_police"] = "Skoda Superb",
        ["holden_colorado_police"] = "Holden Colorado Offroad",
        ["holden_colorado_unmarked"] = "Unmarked Holden Colorado Offroad",
        ["holden_evoke_unmarked"] = "Unmarked Holden Evoke CIB",
        ["holden_zb_unmarked"] = "Unmarked Holden ZB Commodore CIB",
		["ford_xr6t_unmarked"] = "Unmarked Ford Falcon FGX XR6T CIB",
		["holden_zbs_police"] = "Holden ZB Commodore Sedan",
		["18jeep"] = "Jeep Trackhawk"
	},
	
	-- Inspector
	[8] = {
		["r1200rtp"] = "BMW R1200RT",
        ["holden_evoke_police"] = "Holden Evoke",
        ["holden_zb_police"] = "Holden ZB Commodore",
        ["skoda_superb_police"] = "Skoda Superb",
        ["holden_colorado_police"] = "Holden Colorado Offroad",
        ["holden_colorado_unmarked"] = "Unmarked Holden Colorado Offroad",
        ["holden_evoke_unmarked"] = "Unmarked Holden Evoke CIB",
        ["holden_zb_unmarked"] = "Unmarked Holden ZB Commodore CIB",
		["ford_xr6t_unmarked"] = "Unmarked Ford Falcon FGX XR6T CIB",
		["holden_zbs_police"] = "Holden ZB Commodore Sedan",
		["18jeep"] = "Jeep Trackhawk"
	},
	
	-- Superintendent
	[9] = {
		["r1200rtp"] = "BMW R1200RT",
        ["holden_evoke_police"] = "Holden Evoke",
        ["holden_zb_police"] = "Holden ZB Commodore",
        ["skoda_superb_police"] = "Skoda Superb",
        ["holden_colorado_police"] = "Holden Colorado Offroad",
        ["holden_colorado_unmarked"] = "Unmarked Holden Colorado Offroad",
        ["holden_evoke_unmarked"] = "Unmarked Holden Evoke CIB",
        ["holden_zb_unmarked"] = "Unmarked Holden ZB Commodore CIB",
		["ford_xr6t_unmarked"] = "Unmarked Ford Falcon FGX XR6T CIB",
		["holden_zbs_police"] = "Holden ZB Commodore Sedan",
		["18jeep"] = "Jeep Trackhawk"
	},
	
	-- Commissioner
	[10] = {
		["r1200rtp"] = "BMW R1200RT",
        ["holden_evoke_police"] = "Holden Evoke",
        ["holden_zb_police"] = "Holden ZB Commodore",
        ["skoda_superb_police"] = "Skoda Superb",
        ["holden_colorado_police"] = "Holden Colorado Offroad",
        ["holden_colorado_unmarked"] = "Unmarked Holden Colorado Offroad",
        ["holden_evoke_unmarked"] = "Unmarked Holden Evoke CIB",
        ["holden_zb_unmarked"] = "Unmarked Holden ZB Commodore CIB",
		["ford_xr6t_unmarked"] = "Unmarked Ford Falcon FGX XR6T CIB",
		["holden_zbs_police"] = "Holden ZB Commodore Sedan",
		["18jeep"] = "Jeep Trackhawk"
	},
	
	-- Minister
	[11] = {
		["r1200rtp"] = "BMW R1200RT",
        ["holden_evoke_police"] = "Holden Evoke",
        ["holden_zb_police"] = "Holden ZB Commodore",
        ["skoda_superb_police"] = "Skoda Superb",
        ["holden_colorado_police"] = "Holden Colorado Offroad",
        ["holden_colorado_unmarked"] = "Unmarked Holden Colorado Offroad",
        ["holden_evoke_unmarked"] = "Unmarked Holden Evoke CIB",
        ["holden_zb_unmarked"] = "Unmarked Holden ZB Commodore CIB",
		["ford_xr6t_unmarked"] = "Unmarked Ford Falcon FGX XR6T CIB",
		["holden_zbs_police"] = "Holden ZB Commodore Sedan",
		["18jeep"] = "Jeep Trackhawk"
	},
}

Config.WhitelistedVehicles = {}

Config.AmmoLabels = {
    ["AMMO_PISTOL"] = "9x19mm parabellum bullet",
    ["AMMO_SMG"] = "9x19mm parabellum bullet",
    ["AMMO_RIFLE"] = "7.62x39mm bullet",
    ["AMMO_MG"] = "7.92x57mm mauser bullet",
    ["AMMO_SHOTGUN"] = "12-gauge bullet",
    ["AMMO_SNIPER"] = "Large caliber bullet",
}

Config.Radars = {
	vector4(-623.44421386719, -823.08361816406, 25.25704574585, 145.0),
	vector4(-652.44421386719, -854.08361816406, 24.55704574585, 325.0),
	vector4(1623.0114746094, 1068.9924316406, 80.903594970703, 84.0),
	vector4(-2604.8994140625, 2996.3391113281, 27.528566360474, 175.0),
	vector4(2136.65234375, -591.81469726563, 94.272926330566, 318.0),
	vector4(2117.5764160156, -558.51013183594, 95.683128356934, 158.0),
	vector4(406.89505004883, -969.06286621094, 29.436267852783, 33.0),
	vector4(657.315, -218.819, 44.06, 320.0),
	vector4(2118.287, 6040.027, 50.928, 172.0),
	vector4(-106.304, -1127.5530, 30.778, 230.0),
	vector4(-823.3688, -1146.980, 8.0, 300.0),
}

Config.CarItems = {
    [1] = {
        name = "empty_evidence_bag",
        amount = 10,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "water_bottle",
        amount = 2,
        info = {},
        type = "item",
        slot = 2,
    },
	[3] = {
        name = "yj_porkcrack",
        amount = 2,
        info = {},
        type = "item",
        slot = 3,
    }
}

Config.Items = {
    label = "Police Armory",
    slots = 31, -- Ensure you update RegisterNetEvent('qb-police:client:openArmoury', function() for slots if you increase this!
    items = {
        [1] = {
            name = "weapon_pistol_mk2",
            price = 1,
            amount = 1,
            info = {
                serie = "POLICE",
                attachments = {
                    {component = "COMPONENT_AT_PI_FLSH", label = "Flashlight"},
                },
				ammo = 250,
            },
            type = "weapon",
            slot = 1,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [2] = {
            name = "weapon_stungun",
            price = 1,
            amount = 1,
            info = {
                serie = "POLICE",
            },
            type = "weapon",
            slot = 2,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [3] = {
            name = "weapon_pumpshotgun_mk2",
            price = 1,
            amount = 1,
            info = {
                serie = "POLICE",
                attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
					{component = "COMPONENT_AT_SIGHTS", label = "1x Scope"},
                }
            },
            type = "weapon",
            slot = 3,
            authorizedJobGrades = {8, 9, 10, 11}
        },
        [4] = {
            name = "weapon_smg",
            price = 1,
            amount = 1,
            info = {
                serie = "POLICE",
                attachments = {
                    {component = "COMPONENT_AT_SCOPE_MACRO_02", label = "1x Scope"},
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 4,
            authorizedJobGrades = {7, 8, 9, 10, 11}
        },
        [5] = {
            name = "weapon_carbinerifle_mk2",
            price = 1,
            amount = 1,
            info = {
                serie = "POLICE",
                attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                    {component = "COMPONENT_AT_SIGHTS", label = "1x Scope"},
					{component = "COMPONENT_AT_AR_AFGRIP_02", label = "Weapon Grip"},
                }
            },
            type = "weapon",
            slot = 5,
            authorizedJobGrades = {8, 9, 10, 11}
        },
        [6] = {
            name = "weapon_nightstick",
            price = 1,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 6,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [7] = {
            name = "pistol_ammo",
            price = 1,
            amount = 5,
            info = {},
            type = "item",
            slot = 7,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [8] = {
            name = "smg_ammo",
            price = 1,
            amount = 5,
            info = {},
            type = "item",
            slot = 8,
            authorizedJobGrades = {8, 9, 10, 11}
        },
        [9] = {
            name = "shotgun_ammo",
            price = 1,
            amount = 5,
            info = {},
            type = "item",
            slot = 9,
            authorizedJobGrades = {0, 1, 2, 6, 7, 8, 9, 10, 11}
        },
        [10] = {
            name = "rifle_ammo",
            price = 1,
            amount = 5,
            info = {},
            type = "item",
            slot = 10,
            authorizedJobGrades = {8, 9, 10, 11}
        },
        [11] = {
            name = "handcuffs",
            price = 1,
            amount = 1,
            info = {},
            type = "item",
            slot = 11,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [12] = {
            name = "weapon_flashlight",
            price = 1,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 12,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [13] = {
            name = "empty_evidence_bag",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 13,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [14] = {
            name = "police_stormram",
            price = 1,
            amount = 1,
            info = {},
            type = "item",
            slot = 14,
            authorizedJobGrades = {8, 9, 10, 11}
        },
        [15] = {
            name = "armor",
            price = 1,
            amount = 1,
            info = {},
            type = "item",
            slot = 15,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [16] = {
            name = "radio",
            price = 1,
            amount = 1,
            info = {},
            type = "item",
            slot = 16,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [17] = {
            name = "heavyarmor",
            price = 1,
            amount = 1,
            info = {},
            type = "item",
            slot = 17,
            authorizedJobGrades = {8, 9, 10, 11}
        },
        [18] = {
            name = "bandage",
            price = 1,
            amount = 5,
            info = {},
            type = "item",
            slot = 18,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [19] = {
            name = "ifaks",
            price = 1,
            amount = 1,
            info = {},
            type = "item",
            slot = 19,
            authorizedJobGrades = {8, 9, 10, 11}
        },
        [20] = {
            name = "phone",
            price = 1,
            amount = 1,
            info = {},
            type = "item",
            slot = 20,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [21] = {
            name = "water_bottle",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 21,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [22] = {
            name = "tosti",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 22,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [23] = {
            name = "binoculars",
            price = 1,
            amount = 1,
            info = {},
            type = "item",
            slot = 23,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [24] = {
            name = "spray_remover",
            price = 1,
            amount = 10,
            info = {},
            type = "item",
            slot = 24,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
		[25] = {
            name = "bodycam",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 25,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [26] = {
            name = "policegunrack",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 26,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11}
        },
        [27] = {
            name = "weapon_beanbag",
            price = 1,
            amount = 1,
            info = {
                serie = "POLICE",
                attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"}
                }
            },
            type = "weapon",
            slot = 27,
            authorizedJobGrades = {0, 1, 2, 6, 7, 8, 9, 10, 11}
        },
        [28] = {
            name = "weapon_grenadelauncher_smoke",
            price = 1,
            amount = 1,
            info = {
                serie = "POLICE",
				attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                    {component = "COMPONENT_AT_SCOPE_SMALL", label = "Scope"},
				}
            },
            type = "weapon",
            slot = 28,
            authorizedJobGrades = {6, 7, 8, 9, 10, 11}
        },
        [29] = {
            name = "gl_ammo",
            price = 1,
            amount = 20,
            info = {},
            type = "item",
            slot = 29,
            authorizedJobGrades = {6, 7, 8, 9, 10, 11}
        },
        [30] = {
            name = "weapon_bzgas",
            price = 1,
            amount = 5,
            info = {
                serie = "POLICE",
				attachments = {}
            },
            type = "weapon",
            slot = 30,
            authorizedJobGrades = {1, 2, 3, 6, 7, 8, 9, 10, 11}
        },
        [31] = {
            name = "uvflashlight",
            price = 1,
            amount = 1,
            info = {},
            type = "item",
            slot = 31,
            authorizedJobGrades = {6, 7, 8, 9, 10, 11}
        },		
    }
}

Config.VehicleSettings = {
    ["r1200rtp"] = { --- Model name
        ["extras"] = {
            ["1"] = true, -- on/off
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 0,
    },
    ["car2"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 1,
    }
}
