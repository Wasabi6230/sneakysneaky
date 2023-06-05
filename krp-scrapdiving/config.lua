Config = Config or {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.CopsChance = 0.0 -- The chance of the cops getting called when a scrap site gets picked up, this ranges from 0.0 to 1.0
Config.oxygenlevel = 500 -- this is oxygen level you can change this number as you like 
Config.Propmodel = 'prop_wrecked_buzzard'

Config.ScrapLocations = {
    [1] = {
        label = "Scrap Spot 1", 
        coords = {
            Area = vector3(-2842.83, -469.32, -17.65),
            Scrap = {
                [1] = {
                    coords = vector3(-2364.36, -612.76, -18.28),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(-2823.02, -428.4, -40.18),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[3] = {
                    coords = vector3(-2808.77, -485.84, -58.6),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(-2885.62, -484.77, -64.5),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(-2885.62, -484.77, -64.5),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(-2815.38, -546.0, -67.62),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },				
            }
        },
        DefaultScrap = 8,
        TotalScrap = 8,
    },
	[2] = {
        label = "Scrap Spot 2", 
        coords = {
            Area = vector3(-3186.67, 3027.88, -34.5),
            Scrap = {
                [1] = {
                    coords = vector3(-3181.31, 3018.27, -37.4),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(-3183.96, 2971.67, -38.51),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[3] = {
                    coords = vector3(-3136.46, 3016.98, -23.96),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(-3169.37, 3078.11, -32.32),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(-3261.43, 2981.9, -34.23),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(-3236.54, 3051.65, -46.49),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },				
            }
        },
        DefaultScrap = 8,
        TotalScrap = 8,
    },
	[3] = {
        label = "Scrap Spot 3", 
        coords = {
            Area = vector3(-3367.84, 3714.12, -90.55),
            Scrap = {
                [1] = {
                    coords = vector3(-3364.54, 3728.79, -92.36),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(-3440.36, 3742.09, -74.64),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[3] = {
                    coords = vector3(-3396.01, 3649.41, -75.48),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(-3316.35, 3697.09, -94.89),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(-3312.17, 3789.71, -79.46),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(-3393.16, 3737.5, -82.15),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },				
            }
        },
        DefaultScrap = 8,
        TotalScrap = 8,
    },
	[4] = {
        label = "Scrap Spot 4", 
        coords = {
            Area = vector3(761.14, 7395.83, -109.24),
            Scrap = {
                [1] = {
                    coords = vector3(711.55, 7402.28, -113.46),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(735.62, 7483.82, -143.46),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[3] = {
                    coords = vector3(816.73, 7424.0, -129.61),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(829.3, 7368.28, -133.15),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(791.82, 7410.47, -119.99),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
            }
        },
        DefaultScrap = 8,
        TotalScrap = 8,
    },
	[5] = {
        label = "Scrap Spot 5", 
        coords = {
            Area = vector3(3874.11, 3765.9, -19.88),
            Scrap = {
                [1] = {
                    coords = vector3(3874.11, 3765.9, -19.88),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(3850.22, 3692.81, -24.43),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[3] = {
                    coords = vector3(3935.69, 3820.15, -21.32),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(3822.87, 3825.52, -5.8),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(3795.26, 3723.13, -7.94),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },	
            }
        },
        DefaultScrap = 8,
        TotalScrap = 8,
    },
	[6] = {
        label = "Scrap Spot 6", 
        coords = {
            Area = vector3(3170.22, -343.56, -17.34),
            Scrap = {
                [1] = {
                    coords = vector3(3176.83, -369.2, -26.04),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(3141.5, -301.93, -19.01),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[3] = {
                    coords = vector3(3179.29, -264.65, -14.66),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(3228.67, -356.82, -45.88),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(3122.38, -411.09, -29.91),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },	
            }
        },
        DefaultScrap = 8,
        TotalScrap = 8,
    },
	[7] = {
        label = "Scrap Spot 7", 
        coords = {
            Area = vector3(1820.1, -2944.28, -32.37),
            Scrap = {
                [1] = {
                    coords = vector3(1857.1, -2983.88, -50.04),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(1754.83, -2924.57, -35.71),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[3] = {
                    coords = vector3(1842.77, -2927.25, -45.87),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(1898.79, -2960.97, -39.6),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(1822.14, -3022.5, -40.6),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(1759.41, -2991.07, -49.54),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
			}
        },
        DefaultScrap = 8,
        TotalScrap = 8,
    },
	
}

Config.ScrapTypes = {
	[1] = {
        item = "scrap_sheet",
        maxAmount = math.random(1, 4),
        price = math.random(1000, 1400),
    },
	[2] = {
        item = "scrap_pipe",
        maxAmount = math.random(2, 5),
        price = math.random(450, 700),
    },
	[3] = {
        item = "scrap_bolts",
        maxAmount = math.random(1, 4),
        price = math.random(700, 950),
    },
	[4] = {
        item = "scrap_rubber",
        maxAmount = math.random(1, 5),
        price = math.random(800, 1050),
    },
	[5] = {
        item = "scrap_glass",
        maxAmount = math.random(1, 5),
        price = math.random(800, 1050),
    },
}

-- Amount is amount of scrap being sold to be plaed in a bonus tier. (eg. sell 5-10 scrap, placed in tier 1.)
-- Bonus is min/max percentage bonus paid for scrap sales. (eg. Sell 5 scrap with 10% bonus | 1 scrap = $100 + $10 bonus.)
Config.BonusTiers = {
    [1] = {
        minAmount = 5,
        maxAmount = 10,
        minBonus = 5,
        maxBonus = 10
    },
    [2] = {
        minAmount = 11,
        maxAmount = 15,
        minBonus = 10,
        maxBonus = 15
    },
    [3] = {
        minAmount = 16,
        minBonus = 15,
        maxBonus = 20
    }
}

Config.SellLocations = {
    [1] = {
        coords = vector4(15.29, -2758.74, 6.0, 333.9),
        model = 'cs_floyd',
        zoneOptions = { -- Only used when not using the target
            length = 3,
            width = 3
        }
    }
}
