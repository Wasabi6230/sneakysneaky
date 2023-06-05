Config = Config or {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.CopsChance = 0.5 -- The chance of the cops getting called when a coral gets picked up, this ranges from 0.0 to 1.0
Config.oxygenlevel = 500 -- this is oxygen level you can change this number as you like 
Config.CoralLocations = {
    [1] = {
        label = "Diving Spot 1", 
        coords = {
            Area = vector3(-2838.8, -376.1, 3.55),
            Coral = {
                [1] = {
                    coords = vector3(-2820.31, -405.97, -39.27),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(-2866.22, -418.03, -37.64),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [3] = {
                    coords = vector3(-2855.97, -448.01, -40.89),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [4] = {
                    coords = vector3(-2922.34, -397.82, -59.94),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [5] = {
                    coords = vector3(-2823.59, -328.92, -36.49),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(-2789.17, -380.84, -27.11),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[7] = {
                    coords = vector3(-2799.3, -449.52, -50.54),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[8] = {
                    coords = vector3(-2865.35, -368.36, -42.38),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
            }
        },
        DefaultCoral = 8,
        TotalCoral = 8,
    },
    [2] = {
        label = "Diving Spot 2", 
        coords = {
            Area = vector3(-333.04, -3214.35, -19.1),
            Coral = {
                [1] = {
                    coords = vector3(-331.49, -3226.33, -23.28),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(-317.15, -3206.02, -20.13),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [3] = {
                    coords = vector3(-281.92, -3168.67, -28.04),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(-261.17, -3226.34, -23.38),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(-297.04, -3283.84, -21.86),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(-372.14, -3280.55, -19.28),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[7] = {
                    coords = vector3(-402.48, -3220.29, -21.59),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[8] = {
                    coords = vector3(-359.16, -3233.23, -23.21),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				
            }
        },
        DefaultCoral = 8,
        TotalCoral = 8,
    },
	[3] = {
        label = "Diving Spot 3",
        coords = {
            Area = vector3(-1882.49, 5182.47, 0.41),
            Coral = {
                [1] = {
                    coords = vector3(-1920.79, 5317.97, -35.48),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(-1901.66, 5329.75, -37.05),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [3] = {
                    coords = vector3(-1887.92, 5315.14, -34.54),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(-1918.92, 5294.67, -36.62),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(-1901.71, 5268.3, -28.72),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(-1959.23, 5289.64, -15.38),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[7] = {
                    coords = vector3(-1845.37, 5344.93, -16.22),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[8] = {
                    coords = vector3(-1864.02, 5381.14, -12.68),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[9] = {
                    coords = vector3(-1933.29, 5380.57, -32.16),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[10] = {
                    coords = vector3(-1948.06, 5374.79, -27.31),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
            }
        },
        DefaultCoral = 10,
        TotalCoral = 10,
    },
	[4] = {
        label = "Diving Spot 4",
        coords = {
            Area = vector3(536.69, 7253.75, 1.69),
            Coral = {
                [1] = {
                    coords = vector3(528.98, 7245.01, -29.02),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[2] = {
                    coords = vector3(529.72, 7169.15, -34.73),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[3] = {
                    coords = vector3(460.7, 7248.58, -19.88),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[4] = {
                    coords = vector3(480.39, 7182.45, -25.05),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(544.53, 7297.9, -37.92),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(509.77, 7326.27, -38.28),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[7] = {
                    coords = vector3(477.11, 7320.47, -35.88),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[8] = {
                    coords = vector3(594.44, 7207.13, -31.12),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[9] = {
                    coords = vector3(533.65, 7264.33, -30.92),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
		    }
        },
        DefaultCoral = 9,
        TotalCoral = 9,
    },
    [5] = {
        label = "Diving Spot 5",
        coords = {
            Area = vector3(3872.16, 5221.71, -47.61),
            Coral = {
                [1] = {
                    coords = vector3(3840.59, 5197.7, -54.12),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(3829.46, 5276.94, -47.82),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [3] = {
                    coords = vector3(3807.11, 5168.61, -49.26),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [4] = {
                    coords = vector3(3899.2, 5168.62, -60.21),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(3923.54, 5237.39, -73.11),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(3931.33, 5271.7, -69.59),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[7] = {
                    coords = vector3(3849.01, 5243.23, -56.49),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
            }
        },
        DefaultCoral = 7,
        TotalCoral = 7,
    },
    [6] = {
        label = "Diving Spot 6",
        coords = {
            Area = vector3(3252.92, 1353.09, -39.13),
            Coral = {
                [1] = {
                    coords = vector3(3247.14, 1360.64, -50.31),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(3213.34, 1344.08, -48.22),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [3] = {
                    coords = vector3(3212.95, 1400.19, -45.86),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [4] = {
                    coords = vector3(3296.52, 1398.09, -47.39),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(3324.39, 1345.91, -63.55),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(3277.73, 1286.06, -56.12),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[7] = {
                    coords = vector3(3238.96, 1271.32, -51.03),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[8] = {
                    coords = vector3(3280.85, 1347.47, -44.62),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[9] = {
                    coords = vector3(3259.6, 1373.41, -49.45),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
            }
        },
        DefaultCoral = 9,
        TotalCoral = 9,
    },
    [7] = {
        label = "Diving Spot 7",
        coords = {
            Area = vector3(2665.95, -1406.89, -8.39),
            Coral = {
                [1] = {
                    coords = vector3(2659.89, -1393.36, -20.71),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(2683.58, -1364.12, -21.95),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [3] = {
                    coords = vector3(2740.41, -1381.45, -13.91),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [4] = {
                    coords = vector3(2702.14, -1443.04, -16.11),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[5] = {
                    coords = vector3(2662.99, -1467.29, -23.98),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[6] = {
                    coords = vector3(2609.08, -1452.8, -18.09),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[7] = {
                    coords = vector3(2603.39, -1398.74, -14.65),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[8] = {
                    coords = vector3(2656.91, -1347.14, -20.8),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[9] = {
                    coords = vector3(2698.05, -1341.8, -23.67),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
				[10] = {
                    coords = vector3(2658.95, -1428.75, -23.7),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
            }
        },
        DefaultCoral = 10,
        TotalCoral = 10,
    },
}

Config.CoralTypes = {
   -- [1] = {
   --     item = "dendrogyra_coral",
    --    maxAmount = math.random(1, 5),
     --   price = math.random(500, 750),
  --  },
  --  [2] = {
      --  item = "antipatharia_coral",
      --  maxAmount = math.random(2, 7),
    --    price = math.random(750, 1000),
   -- },
	[1] = {
        item = "kina",
        maxAmount = math.random(1, 4),
        price = math.random(1000, 1400),
    },
	[2] = {
        item = "mussel",
        maxAmount = math.random(2, 5),
        price = math.random(450, 700),
    },
	[3] = {
        item = "paua",
        maxAmount = math.random(1, 4),
        price = math.random(700, 950),
    },
	[4] = {
        item = "oyster",
        maxAmount = math.random(1, 5),
        price = math.random(800, 1050),
    },
}

-- Amount is amount of coral being sold to be plaed in a bonus tier. (eg. sell 5-10 coral, placed in tier 1.)
-- Bonus is min/max percentage bonus paid for coral sales. (eg. Sell 5 coral with 10% bonus | 1 coral = $100 + $10 bonus.)
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
        coords = vector4(-1037.91, -1396.5, 5.55, 87.29),
        model = 's_m_y_chef_01',
        zoneOptions = { -- Only used when not using the target
            length = 3,
            width = 3
        }
    }
}
