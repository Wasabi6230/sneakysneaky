Config = Config or {}
Config.AutoRespawn = false --True == auto respawn cars that are outside into your garage on script restart, false == does not put them into your garage and players have to go to the impound
Config.SharedGarages = false   --True == Gang and job garages are shared, false == Gang and Job garages are personal
Config.VisuallyDamageCars = true --True == Visually damage cars that go out of the garage depending of body damage, false == Do not visually damage cars (damage is still applied to car values)


-- █▀█ █░█ ▀█▀   ▀█▀ █░█ █▀▀   █▀▀ ▄▀█ █▀█ ▄▀█ █▀▀ █▀▀   █ █▄░█   ▀█▀ █░█ █▀▀   █▀█ █ █▀▀ █░█ ▀█▀
-- █▀▀ █▄█ ░█░   ░█░ █▀█ ██▄   █▄█ █▀█ █▀▄ █▀█ █▄█ ██▄   █ █░▀█   ░█░ █▀█ ██▄   █▀▄ █ █▄█ █▀█ ░█░

-- █▀█ █░░ ▄▀█ █▀▀ █▀▀ █
-- █▀▀ █▄▄ █▀█ █▄▄ ██▄ ▄


Config.Garages = {
-- DEFAULT QB:
	--CARS:
    ["motelgarage"] = {
        ["label"] = "Motel Parking",
        ["takeVehicle"] = vector3(273.43, -343.99, 44.91),
        ["spawnPoint"] = vector4(270.94, -342.96, 43.97, 161.5),
        ["putVehicle"] = vector3(276.69, -339.85, 44.91),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["casinoparking"] = {
        ["label"] = "Casino Parking",
        ["takeVehicle"] = vector3(933.04, 31.0, 81.16),
        ["spawnPoint"] = vector4(948.38, 37.65, 80.3, 144.75),
        ["putVehicle"] = vector3(945.33, 22.15, 81.16),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
    ["spanishave"] = {
        ["label"] = "Spanish Ave Parking",
        ["takeVehicle"] = vector3(-1160.86, -741.41, 19.63),
        ["spawnPoint"] = vector4(-1163.88, -749.32, 18.42, 35.5),
        ["putVehicle"] = vector3(-1147.58, -738.11, 19.31),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["caears24"] = {
        ["label"] = "Caears 24 Parking",
        ["takeVehicle"] = vector3(69.84, 12.6, 68.96),
        ["spawnPoint"] = vector4(73.21, 10.72, 68.83, 163.5),
        ["putVehicle"] = vector3(65.43, 21.19, 69.47),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["caears242"] = {
        ["label"] = "Caears 24 Parking",
        ["takeVehicle"] = vector3(-475.31, -818.73, 30.46),
        ["spawnPoint"] = vector4(-472.03, -815.47, 30.5, 177.5),
        ["putVehicle"] = vector3(-453.6, -817.08, 30.61),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["lagunapi"] = {
        ["label"] = "Laguna Parking",
        ["takeVehicle"] = vector3(364.37, 297.83, 103.49),
        ["spawnPoint"] = vector4(367.49, 297.71, 103.43, 340.5),
        ["putVehicle"] = vector3(363.04, 283.51, 103.38),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["airportp"] = {
        ["label"] = "Airport Parking",
        ["takeVehicle"] = vector3(-796.86, -2024.85, 8.88),
        ["spawnPoint"] = vector4(-800.41, -2016.53, 9.32, 48.5),
        ["putVehicle"] = vector3(-804.84, -2023.21, 9.16),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["beachp"] = {
        ["label"] = "Beach Parking",
        ["takeVehicle"] = vector3(-1183.1, -1511.11, 4.36),
        ["spawnPoint"] = vector4(-1181.0, -1505.98, 4.37, 214.5),
        ["putVehicle"] = vector3(-1176.81, -1498.63, 4.37),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["themotorhotel"] = {
        ["label"] = "Jinx Parking",
        ["takeVehicle"] = vector3(569.5, 2740.41, 42.2),            
        ["spawnPoint"] = vector4(568.11, 2734.97, 41.58, 187.01),      
        ["putVehicle"] = vector3(571.28, 2735.43, 41.58),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["liqourparking"] = {
        ["label"] = "Liqour Parking",
        ["takeVehicle"] = vector3(934.95, 3606.59, 32.81),
        ["spawnPoint"] = vector4(941.57, 3619.99, 32.5, 141.5),
        ["putVehicle"] = vector3(939.37, 3612.25, 32.69),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["shoreparking"] = {
        ["label"] = "Shore Parking",
        ["takeVehicle"] = vector3(1726.21, 3707.16, 34.17),
        ["spawnPoint"] = vector4(1730.31, 3711.07, 34.2, 20.5),
        ["putVehicle"] = vector3(1737.13, 3718.91, 34.04),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["haanparking"] = {
        ["label"] = "Bell Farms Parking",
        ["takeVehicle"] = vector3(78.34, 6418.74, 31.28),
        ["spawnPoint"] = vector4(70.71, 6425.16, 30.92, 68.5),
        ["putVehicle"] = vector3(85.3, 6427.52, 31.33),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["dumbogarage"] = {
        ["label"] = "Dumbo Parking",
        ["takeVehicle"] = vector3(157.26, -3240.00, 7.00),
        ["spawnPoint"] = vector4(165.32, -3236.10, 5.93, 268.5),
        ["putVehicle"] = vector3(165.32, -3230.00, 5.93),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["pillboxgarage"] = {
        ["label"] = "Pillbox Garage Parking",
        ["takeVehicle"] = vector3(215.9499, -809.698, 30.731),
        ["spawnPoint"] = vector4(234.1942, -787.066, 30.193, 159.6),
        ["putVehicle"] = vector3(218.0894, -781.370, 30.389),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	-- BOATS
    ["lsymc"] = {
        ["label"] = "Viaduct Marina",               
        ["takeVehicle"] = vector3(-797.3499, -1511.715, 1.5952132),
        ["spawnPoint"] = vector4(-793.58, -1501.4, 0.12, 111.5),
        ["putVehicle"] = vector3(-793.58, -1501.4, 0.12),
        ["showBlip"] = true,
        ["blipName"] = "Boathouse",
        ["blipNumber"] = 356,
		["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "sea",                 --car, air, sea, rig
    },
    ["paleto"] = {
        ["label"] = "Paleto Marina",               
        ["takeVehicle"] = vector3(-277.46, 6637.2, 7.48),
        ["spawnPoint"] = vector4(-289.2, 6637.96, 1.01, 45.5),
        ["putVehicle"] = vector3(-289.2, 6637.96, 1.01),
        ["showBlip"] = true,
        ["blipName"] = "Boathouse",
        ["blipNumber"] = 356,
		["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "sea",                 --car, air, sea, rig
    },
    ["millars"] = {
        ["label"] = "Millars Marina",               
        ["takeVehicle"] = vector3(1299.24, 4216.69, 33.9),
        ["spawnPoint"] = vector4(1297.82, 4209.61, 30.12, 253.5),
        ["putVehicle"] = vector3(1297.82, 4209.61, 30.12),
        ["showBlip"] = true,
        ["blipName"] = "Boathouse",
        ["blipNumber"] = 356,
		["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "sea",                 --car, air, sea, rig
    },
    ["seadepot"] = {
        ["label"] = "Viaduct Depot",               
        ["takeVehicle"] = vector3(-772.98, -1430.76, 1.59),
        ["spawnPoint"] = vector4(-729.77, -1355.49, 1.19, 142.5),
        ["putVehicle"] = vector3(-729.77, -1355.49, 1.19),
        ["showBlip"] = true,
        ["blipName"] = "Boat Depot",
        ["blipNumber"] = 356,
		["blipColor"] = 3,
        ["type"] = "depot",                --public, job, gang, depot
        ["vehicle"] = "sea",                 --car, air, sea, rig
    },

-- KRP CUSTOM:
	-- PUBLIC:
	["prison"] = {
        ["label"] = "Prison Parking",
        ["takeVehicle"] = vector3(1852.93, 2589.15, 45.67),
        ["spawnPoint"] = vector4(1856.05, 2620.61, 45.67, 269.86),
        ["putVehicle"] = vector3(1855.38, 2593.18, 45.67),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	["anzac"] = {
        ["label"] = "Anzac Parking",
        ["takeVehicle"] = vector3(-405.38, 1195.39, 325.91),
        ["spawnPoint"] = vector4(-413.65, 1203.61, 325.64, 163.66),
        ["putVehicle"] = vector3(-406.36, 1191.34, 325.64),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	["alta"] = {
        ["label"] = "Alta Parking",  -- THIS IS THE OLD AT ALTA STREET
        ["takeVehicle"] = vector3(-308.03, -985.69, 31.08),
        ["spawnPoint"] = vector4(-300.93, -988.19, 31.08, 338.81),
        ["putVehicle"] = vector3(-311.94, -984.93, 31.08),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	["presort"] = {
        ["label"] = "Pacific Resort Parking", 
        ["takeVehicle"] = vector3(-3010.62, 83.56, 11.69),
        ["spawnPoint"] = vector4(-3004.89, 83.54, 11.59, 324.66),
        ["putVehicle"] = vector3(-3013.79, 85.7, 11.61),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	-- ["fantastic"] = {
        -- ["label"] = "Fantastic Plaza Parking",  -- THIS IS THE NEW "ALTA"
        -- ["takeVehicle"] = vector3(323.14, -1153.85, 29.29),
        -- ["spawnPoint"] = vector4(315.81, -1158.75, 28.87, 359.8),
        -- ["putVehicle"] = vector3(330.98, -1150.28, 29.29),
        -- ["showBlip"] = true,
        -- ["blipName"] = "Public Parking",
        -- ["blipNumber"] = 357,
        -- ["blipColor"] = 3,
        -- ["type"] = "public",                --public, job, gang, depot
        -- ["vehicle"] = "car"                 --car, air, sea, rig
    -- },
	["loyalty"] = {
        ["label"] = "Loyalty Parking",
        ["takeVehicle"] = vector3(-760.59, -240.22, 37.24),
		["spawnPoint"] = vector4(-761.27, -230.42, 37.28, 29.66),
        ["putVehicle"] = vector3(-763.61, -243.66, 37.24),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	["blvddelperro"] = {
        ["label"] = "Kai Mai Rackz Parking",
        ["takeVehicle"] = vector3(-1550.102, -426.7978, 41.996299),
        ["spawnPoint"] = vector4(-1547.043, -424.9792, 41.389289, 49.761585),
        ["putVehicle"] = vector3(-1544.28, -422.6684, 41.995368),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },    
	["drift"] = {
        ["label"] = "Drift Track Parking",
        ["takeVehicle"] = vector3(969.33, -2340.97, 21.21),
        ["spawnPoint"] = vector4(975.55, -2341.43, 21.22, 174.09),
        ["putVehicle"] = vector3(972.26, -2341.37, 21.21),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	["southside"] = {
        ["label"] = "South Side Parking",
        ["takeVehicle"] = vector3(337.06, -2041.89, 21.13),
        ["spawnPoint"] = vector4(331.56, -2044.51, 20.31, 321.9),
        ["putVehicle"] = vector3(329.54, -2042.52, 20.81),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	["mirrorpark"] = {
        ["label"] = "Mirror Park Garage",
        ["takeVehicle"] = vector3(1037.9788, -764.1857, 57.923149),
        ["spawnPoint"] = vector4(1046.6566, -774.6194, 57.58414, 89.842597),
        ["putVehicle"] = vector3(1040.4885, -771.5795, 58.019317),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
    ["electriciangarage"] = {
        ["label"] = "Electrician Garage",
        ["takeVehicle"] = vector3(930.44354, -1822.299, 30.810422),
        ["spawnPoint"] = vector4(933.61254, -1819.405, 30.297178, 264.15957),
        ["putVehicle"] = vector3(933.6712, -1816.085, 30.821138),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    }, 
    ["taxigarage"] = {
        ["label"] = "Taxi Garage",
        ["takeVehicle"] = vector3(896.64373, -178.0787, 74.700263),
        ["spawnPoint"] = vector4(899.29852, -180.4903, 73.293388, 237.71542),
        ["putVehicle"] = vector3(898.31005, -188.2733, 73.803009),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
    ["grapeseedgarage"] = {
        ["label"] = "Grapeseed Garage",
        ["takeVehicle"] = vector3(1686.1472, 4912.6333, 42.078136),
        ["spawnPoint"] = vector4(1686.254, 4920.5322, 41.539676, 62.128078),
        ["putVehicle"] = vector3(1694.8751, 4915.1049, 42.078144),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
    ["mountzonahgarage"] = {
        ["label"] = "Mount Zonah Garage",
        ["takeVehicle"] = vector3(-497.425, -335.8363, 34.50172),
        ["spawnPoint"] = vector4(-488.5856, -343.5744, 33.826587, 262.75073),
        ["putVehicle"] = vector3(-485.9406, -332.233, 34.360542),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    }, 
    ["garbagegarage"] = {
        ["label"] = "Garbage Depot Garage",
        ["takeVehicle"] = vector3(-318.8561, -1546.555, 27.778751),
        ["spawnPoint"] = vector4(-317.2067, -1542.003, 27.171535, 338.07907),
        ["putVehicle"] = vector3(-314.4914, -1533.005, 27.138818),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
    ["gardenergarage"] = {
        ["label"] = "Gardener Garage",
        ["takeVehicle"] = vector3(-1728.37, -709.6385, 10.081628),
        ["spawnPoint"] = vector4(-1732.841, -712.4345, 9.6108503, 229.79412),
        ["putVehicle"] = vector3(-1734.888, -714.8353, 9.6342287),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
    ["recyclinggarage"] = {
        ["label"] = "Recycling Garage",
        ["takeVehicle"] = vector3(764.13775, -1400.737, 26.50595),
        ["spawnPoint"] = vector4(770.43481, -1413.992, 26.231994, 271.28576),
        ["putVehicle"] = vector3(767.92047, -1408.629, 26.221353),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
	["paletomotel"] = {
        ["label"] = "Paleto Parking",
        ["takeVehicle"] = vector3(-85.97433, 6333.041, 31.490346),
        ["spawnPoint"] = vector4(-85.26609, 6338.8735, 31.030025, 45.634548),
        ["putVehicle"] = vector3(-92.09866, 6312.2075, 31.490377),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
	["eclipse"] = {
        ["label"] = "Eclipse Boulevard",
        ["takeVehicle"] = vector3(-196.27, 278.79, 92.35),
        ["spawnPoint"] = vector4(-209.61, 287.06, 92.93, 268.64),
        ["putVehicle"] = vector3(-194.66, 287.4, 92.99),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
	["boatramp"] = {
        ["label"] = "Boatramp Parking",
        ["takeVehicle"] = vector3(-754.67, -1506.44, 5.01),
        ["spawnPoint"] = vector4(-741.64, -1501.92, 5.0, 354.5),
        ["putVehicle"] = vector3(-749.77, -1503.73, 5.0),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
	["eclipse"] = {
        ["label"] = "Eclipse Boulevard",
        ["takeVehicle"] = vector3(-196.27, 278.79, 92.35),
        ["spawnPoint"] = vector4(-209.61, 287.06, 92.93, 268.64),
        ["putVehicle"] = vector3(-194.66, 287.4, 92.99),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
	["chumash"] = {
        ["label"] = "Chumash Parking",
        ["takeVehicle"] = vector3(-3143.77, 1051.33, 20.68),
        ["spawnPoint"] = vector4(-3143.28, 1055.94, 19.69, 348.6),
        ["putVehicle"] = vector3(-3149.03, 1059.41, 20.59),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
	["paintball"] = {
        ["label"] = "Paintball Arena Parking",
        ["takeVehicle"] = vector3(-249.391, -2059.319, 27.755416),
        ["spawnPoint"] = vector4(-221.2936, -2072.395, 27.337423, 224.76087),
        ["putVehicle"] = vector3(-247.6783, -2083.312, 27.014522),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
	["police_paleto"] = {
        ["label"] = "Paleto Bay Police",
        ["takeVehicle"] = vector3(-443.46, 5996.87, 31.49),
        ["spawnPoint"] = vector4(-448.27, 5994.25, 31.34, 85.65),
        ["putVehicle"] = vector3(-452.21, 5998.2, 31.34),
        ["showBlip"] = false,
        ["blipName"] = "Police",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",              --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "police",
		["jobType"] = "police"
    },
    -- ["police_vinewood"] = {
        -- ["label"] = "Vinewood Police",
        -- ["takeVehicle"] = vector3(613.93, -0.35, 70.63),
        -- ["spawnPoint"] = vector4(587.47, -0.42, 70.63, 61.53),
        -- ["putVehicle"] = vector3(587.47, -0.42, 70.63),
        -- ["showBlip"] = false,
        -- ["blipName"] = "Police",
        -- ["blipNumber"] = 357,
        -- ["blipColor"] = 3,
        -- ["type"] = "job",                --public, job, gang, depot
        -- ["vehicle"] = "car",              --car, air, sea, rig
        -- ["job"] = "police",
		-- ["jobType"] = "police"
    -- },
	["police_mrpd"] = {
        ["label"] = "Mission Row Police",
        ["takeVehicle"] = vector3(425.24, -1002.02, 21.56),
        ["spawnPoint"] = vector4(420.48, -998.08, 21.34, 269.98),
        ["putVehicle"] = vector3(429.93, -997.88, 21.34),
        ["showBlip"] = false,
        ["blipName"] = "Police",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "police",
		["jobType"] = "police"
    },
	
	-- BUSINESS:	
	["autosunset"] = {
        ["label"] = "PDM Parking",
        ["takeVehicle"] = vector3(-1249.69, -395.34, 37.29),
        ["spawnPoint"] = vector4(-1241.86, -392.09, 36.64, 29.63),
        ["putVehicle"] = vector3(-1245.29, -394.34, 37.29),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	["manaaki"] = {
        ["label"] = "Manaaki Parking",
        ["takeVehicle"] = vector3(-3.43, -579.4, 37.75),
        ["spawnPoint"] = vector4(-7.09, -573.53, 37.75, 341.85),
        ["putVehicle"] = vector3(4.25, -577.98, 37.75),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },	
    ["mirrorrest"] = {
        ["label"] = "Mirror Restaurant",
        ["takeVehicle"] = vector3(-1280.32, -1138.58, 6.44),
        ["spawnPoint"] = vector4(-1273.46, -1162.96, 5.98, 113.95),
        ["putVehicle"] = vector3(-1284.39, -1141.81, 6.2),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["yellowjack"] = {
        ["label"] = "Yellow Jack Parking",
        ["takeVehicle"] = vector3(1998.13, 3068.96, 47.05),
        ["spawnPoint"] = vector4(2000.37, 3072.13, 47.05, 57.29),
        ["putVehicle"] = vector3(1992.75, 3070.84, 47.03),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig                
    },
	["yellowjackjob"] = {
        ["label"] = "Yellow Jack Staff",
        ["takeVehicle"] = vector3(1947.93, 3081.3, 47.01),
        ["spawnPoint"] = vector4(1937.98, 3068.04, 46.9, 325.8),
        ["putVehicle"] = vector3(1937.98, 3068.04, 46.9),
        ["showBlip"] = false,
        ["blipName"] = "Yellow Jack Staff Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",             --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "yellowjack",
		["jobType"] = "yellowjack"
    },
	["burgershotstaff"] = {
        ["label"] = "Burgershot Staff",
        ["takeVehicle"] = vector3(1237.0, -332.04, 69.08),
        ["spawnPoint"] = vector4(1265.88, -339.76, 69.08, 114.18),
        ["putVehicle"] = vector3(1242.31, -333.41, 69.08),
        ["showBlip"] = false,
        ["blipName"] = "Burgershot Staff Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",             --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "burgershot",
		["jobType"] = "burgershot"
    },
	["rebelsjob"] = {
        ["label"] = "Rebels Staff",
        ["takeVehicle"] = vector3(696.26, -1303.44, 25.81),
        ["spawnPoint"] = vector4(695.3, -1311.47, 25.76, 285.23),
        ["putVehicle"] = vector3(700.24, -1305.0, 25.81),
        ["showBlip"] = false,
        ["blipName"] = "Rebels Staff Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",             --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "rebelkings",
		["jobType"] = "rebelkings"
    },
	["lawyerstaff"] = {
        ["label"] = "B.S Associates Staff",
        ["takeVehicle"] = vector3(-1543.06, -575.5, 25.71),
        ["spawnPoint"] = vector4(-1555.72, -584.32, 25.71, 303.27),
        ["putVehicle"] = vector3(-1544.08, -582.4, 25.71),
        ["showBlip"] = false,
        ["blipName"] = "B.S Associates Staff Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",             --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "lawyer",
		["jobType"] = "lawyer"
    },
    ["tamikidepot"] = {
        ["label"] = "Tamiki's Depot",
        -- ["takeVehicle"] = vector3(-143.0058, -1169.38, 23.479553), -- Gabz
        -- ["spawnPoint"] = vector4(-143.0058, -1169.38, 23.479553, 176.07632), -- Gabz
		["takeVehicle"] = vector3(408.26, -1627.25, 29.29), -- Davis
        ["spawnPoint"] = vector4(403.66, -1632.62, 29.29, 136.16), -- Davis
        ["showBlip"] = false,
        ["blipName"] = "Impound Lot",
        ["blipNumber"] = 68,
		["blipColor"] = 3,
        ["type"] = "depot",           		--public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
	["mechanic"] = {
        ["label"] = "Mechanic",
        ["takeVehicle"] = vector3(-216.48, -1322.29, 18.46),
        ["spawnPoint"] = vector4(-224.81, -1315.08, 18.46, 270.12),
        ["putVehicle"] = vector3(-216.67, -1317.8, 18.46),
        ["showBlip"] = false,
        ["blipName"] = "Mechanic",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",             --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "mechanic",
		["jobType"] = "mechanic"
    },
	["icecream"] = {
        ["label"] = "Lowkey Staff",
        ["takeVehicle"] = vector3(1026.26, -2380.86, 30.43),
        ["spawnPoint"] = vector4(1014.8, -2375.58, 30.53, 265.02),
        ["putVehicle"] = vector3(1027.18, -2376.94, 30.52),
        ["showBlip"] = false,
        ["blipName"] = "Lowkey Staff",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "icecream",
		["jobType"] = "icecream"
    },
	["trucker"] = {
        ["label"] = "Truckers Garage",
        ["takeVehicle"] = vector3(-394.0684, -2763.987, 6.0003266),
        ["spawnPoint"] = vector4(-401.2306, -2763.004, 5.4507226, 175.35771),
        ["putVehicle"] = vector3(-400.8476, -2763.185, 6.0003213),
        ["showBlip"] = false,
        ["blipName"] = "Truckers Garage",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",               --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "trucker",
		["jobType"] = "trucker"
    },
	
	-- ORGS:
    ["mafia"] = {
        ["label"] = "Auckland Mafias Garage",
        ["takeVehicle"] = vector3(-1547.33, 122.81, 56.78),
        ["spawnPoint"] = vector4(-1552.08, 130.75, 56.79, 136.49),
        ["putVehicle"] = vector3(-1544.14, 126.36, 56.78),
        ["showBlip"] = false,
        ["blipName"] = "Mafia",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "mafia",
		["jobType"] = "mafia"
    },
    -- ["jackals"] = {
        -- ["label"] = "Jackals Garage",
        -- ["takeVehicle"] = vector3(1620.83, 3560.99, 35.41),
        -- ["spawnPoint"] = vector4(1626.78, 3559.93, 34.37, 302.91),
        -- ["putVehicle"] = vector3(1633.28, 3564.59, 35.25),
        -- ["showBlip"] = false,
        -- ["blipName"] = "Jackals",
        -- ["blipNumber"] = 357,
        -- ["blipColor"] = 3,
        -- ["type"] = "gang",                --public, job, gang, depot
        -- ["vehicle"] = "car",              --car, air, sea, rig
        -- ["job"] = "jackals",
		-- ["jobType"] = "jackals"
    -- },	
    ["silverbacks"] = {
        ["label"] = "Silverbacks Garage",
        ["takeVehicle"] = vector3(-3178.17, 1119.3, 20.88),
        ["spawnPoint"] = vector4(-3173.73, 1119.97, 20.05, 337.56),
        ["putVehicle"] = vector3(-3174.29, 1119.74, 20.91),
        ["showBlip"] = false,
        ["blipName"] = "Silverbacks",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "silverbacks",
		["jobType"] = "silverbacks"
    },	
    ["natives"] = {
        ["label"] = "Natives MC Garage",
        ["takeVehicle"] = vector3(287.19, 6653.72, 29.88),
        ["spawnPoint"] = vector4(283.78, 6647.56, 29.77, 180.54),
        ["putVehicle"] = vector3(289.54, 6650.06, 29.77),
        ["showBlip"] = false,
        ["blipName"] = "Natives",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "natives",
		["jobType"] = "natives"
    },
    ["disciples"] = {
        ["label"] = "Panteras MC Garage",
        ["takeVehicle"] = vector3(733.2, 2523.18, 73.22),
        ["spawnPoint"] = vector4(737.11, 2512.6, 73.22, 271.45),
        ["putVehicle"] = vector3(737.22, 2519.51, 73.21),
        ["showBlip"] = false,
        ["blipName"] = "Panteras MC",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "disciples",
		["jobType"] = "disciples"
    },
	["polynesians"] = {
        ["label"] = "Sotias MC Garage",
        ["takeVehicle"] = vector3(1433.9702, -2610.435, 48.344612),
        ["spawnPoint"] = vector4(1426.983, -2613.102, 47.466907, 346.1434),
        ["putVehicle"] = vector3(1421.1387, -2611.636, 47.407737),
        ["showBlip"] = false,
        ["blipName"] = "Sotias MC",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "sotias",
		["jobType"] = "sotias"
    },
    ["triads"] = {
        ["label"] = "91st saints",
        ["takeVehicle"] = vector3(491.95285, -1885.387, 25.91097),
        ["spawnPoint"] = vector4(478.99493, -1911.714, 24.492979, 112.68586),
        ["putVehicle"] = vector3(481.78567, -1898.759, 24.922615),
        ["showBlip"] = false,
        ["blipName"] = "Triads",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "triads",
		["jobType"] = "triads"
    },
    ["demons"] = {
        ["label"] = "Demons MC Garage",
        ["takeVehicle"] = vector3(963.17, -120.91, 74.35),
        ["spawnPoint"] = vector4(952.44, -120.61, 74.35, 222.48),
        ["putVehicle"] = vector3(957.94, -127.44, 74.35),
        ["showBlip"] = false,
        ["blipName"] = "Demons MC Garage",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "demons",
		["jobType"] = "demons"
    },
    ["cartel"] = {
        ["label"] = "Cartel Garage",
        ["takeVehicle"] = vector3(1440.04, 1137.77, 114.34),
        ["spawnPoint"] = vector4(1432.99, 1137.31, 114.27, 0.85),
        ["putVehicle"] = vector3(1437.74, 1148.88, 114.32),
        ["showBlip"] = false,
        ["blipName"] = "Cartel Garage",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "cartel",
		["jobType"] = "cartel"
    },
	
	-- BOATS
	["cayo"] = {
        ["label"] = "Cayo Marina",               
        ["takeVehicle"] = vector3(5094.57, -4655.52, 1.76),
        ["spawnPoint"] = vector4(5104.9, -4643.99, 0.32, 248.73),
        ["putVehicle"] = vector3(5097.56, -4649.37, -0.47),
        ["showBlip"] = true,
        ["blipName"] = "Boathouse",
        ["blipNumber"] = 356,
		["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "sea",                 --car, air, sea, rig
    },
	["pacificboat"] = {
        ["label"] = "Pacific Bluff Resort Marina",               
        ["takeVehicle"] = vector3(-2994.94, -26.99, 0.76),
        ["spawnPoint"] = vector4(-3003.18, -47.23, -0.01, 161.23),
        ["putVehicle"] = vector3(-3012.58, -42.98, -0.36),
        ["showBlip"] = true,
        ["blipName"] = "Boathouse",
        ["blipNumber"] = 356,
		["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "sea",                 --car, air, sea, rig
    },
	
}

Config.HouseGarages = {}
