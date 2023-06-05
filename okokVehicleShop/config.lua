Config = {}

Config.QBPermissionsUpdate = false -- set it to true if you have the latest Permissions update

Config.UseNewStaffCheckMethod = false -- only works if Config.QBPermissionsUpdate is set to true

----------------------------------------
Config.SetVisibility = true -- true = player will be invisible when chosing a vehicle

Config.SetInvincibility = true -- true = player will not die while test driving

Config.CheckForOfflineOrdersEvery = 10 -- In minutes | it'll check every x minutes for offline players with orders accepted, if someone is offline it'll cancel the order

Config.ShowVehicleShopBlip = true -- Activate/Deactivate Vehicle shop blips

Config.ShowOwnerBlip = false -- Activate/Deactivate owner blips

Config.ShowBuyVehicleShopBlip = false -- Activate/Deactivate buy shop blip

Config.ShowHasOwnerShopBlip = false -- Activate/Deactivate blip of shops with "hasOwner = false"

Config.TestDrive = true -- Activate/Deactivate test drive

-- Informations you need before using 'Config.AddVehiclesFromVehiclesFile':

-- All informations will be collected from the 'qb-core/shared/vehicles.lua' file
-- This is how a vehicle is added on that file:
--
-- ['nero'] = {
--	 ['name'] = 'Nero',
--	 ['brand'] = 'Truffade',
--	 ['model'] = 'nero',
--	 ['price'] = 200000,
--	 ['category'] = 'super',
--	 ['hash'] = `nero`,
--	 ['shop'] = 'luxury',
-- },
--
-- the 'shop' is what is set as 'type' in the database, you can either change the shops 'type' or the vehicle 'shop' to match one another
-- the categories may not be the same in the file and the shops so make sure to add/change or remove the ones you need here: 'Config.VehicleshopsCategories'
-- the 'price' will be set as the 'min_price' and the 'max_price' will be calculated this way: 'min_price + Config.MaxPriceAddition'
-- make sure you deactivate it once all the vehicles have been added otherwise it'll try to add them everytime the script is initialized
--
-- after starting the server/script you can check the progress on your server console

Config.AddVehiclesFromVehiclesFile = false -- if true it'll add all the vehicles form 'qb-core/shared/vehicles.lua' (turn off once used)

Config.MaxPriceAddition = 5000 -- This is how much will be added to the vehicle price to create the max_price
----------------------------------------

Config.DevMode = false -- Allows you to restart the script (IMPORTANT: only set this to true if you are configuring the script)

Config.EventPrefix = "okokVehicleshop" -- this will change the prefix of the events name so if Config.EventPrefix = "example" the events will be "example:event"

Config.QBCorePrefix = "QBCore"

Config.qbPrefix = "qb"

Config.TestDrivePlate = "TESTCAR"

Config.UseOkokTextUI = false -- true = okokTextUI (I recommend you using this since it is way more optimized than the default ShowHelpNotification) | false = ShowHelpNotification

Config.Key = 38 -- [E] Key to open the interaction, check here the keys ID: https://docs.fivem.net/docs/game-references/controls/#controls

Config.UseokokRequests = true -- true = use okokRequests for hiring people | false = don't use okokRequests - https://okok.tebex.io/package/4724985

Config.UseSameImageForVehicles = false -- true = use the same image for all vehicles (vehicle.png) | false = use different images for each vehicle (vehicle_id.png)

Config.HideMinimap = true -- If true it'll hide the minimap when the vehicle shop menu is opened

Config.TimeBetweenTransition = 999999 -- how much time it stays in a camera before changing, in miliseconds

Config.TransitionTime = 99999 -- how much time it takes to go from one camera to another (camera movement), in miliseconds

Config.ShakeAmplitude = 0.0 -- camera shake

Config.UseKMh = true -- true = use KM/h | false = use miles/h

Config.MaxVehiclesSpeed = 300 -- Max speed a vehicle can go at (it is only used for UI purposes, it does NOT change the speed of a vehicle)

Config.TestDriveTime = 40 -- In seconds

Config.StopTestDriveCmd = "cancel" -- command to stop the test drive

Config.PlateLetters  = 3 -- How many letters the plate has

Config.PlateNumbers  = 3 -- How many numbers the plate has

Config.PlateUseSpace = true	-- If the plate uses spaces between letters and numbers

Config.OrderCompletedPercentage = 2 -- When a employee completes the misson he will get this percentage as a reward, 10 = 10%

Config.HireRange = 3 -- How close a player needs to be to be in the hiring range

Config.AdminCommand = "vsadmin" -- command to open the admin menu

Config.OwnerBuyVehiclePercentage = 10 -- How much of a discount the owner has to order a vehicle (bases on the min. price)

Config.SellBusinessReceivePercentage = 50 -- How much a player will receive for selling his business (in percentage, 50 = 50%)

Config.ClearMoneyWhenBusinessIsSold = false -- true = remove the money from the society when sold | false = do not remove the money

Config.MaxDealershipsPerPlayer = 1 -- How many vehicle shops a player can own

Config.MaxEmployeesPerDealership = 20 -- How many employees a vehicle shop can hire

Config.EnableSellVehicle = true -- Allows players to sell their vehicles for a percentage of the vehicle's min price

Config.VehicleShopBuyVehicle = false -- true = when selling a bought vehicle the money will be discounted from the vehicle shop and the vehicle added to the stock | false = vehicle shop will not be charged or receive the vehicle

Config.VehicleSellPercentage = 40 -- 40 = seller will receive 40% of the vehicle min. price

Config.EnableOkokBankingTransactions = true -- true = when you buy a vehicle a transaction is added (okokBanking)

Config.AdminGroups = { -- Admin groups that can access the admin menu
	"god",
	"admin"
}

Config.JobRanks = { -- These are the ranks available on the vehicle shops, you can add or remove as many as you want but leave at least 1
	"Newbie",		-- ID: 1
	"Experienced",	-- ID: 2
	"Expert",		-- ID: 3
	"Sub-Owner"		-- ID: 4 
}

Config.SubOwnerRank = 4 -- ID of the rank that will work as a secondary owner

Config.MissionForStock = true -- false = when you order a vehicle, the vehicle shop will instantly receive it without doing any order/mission

Config.VehicleShopBoat = { -- What shops after buying a vehicle add it to the player_boats table in the db
	"water1",
}

Config.TruckBlip = {blipId = 67, blipColor = 2, blipScale = 0.6, blipText = "Truck"} -- Blip of the truck when someone accepts an order

Config.TrailerBlip = {blipId = 515, blipColor = 2, blipScale = 0.6, blipText = "Trailer"} -- Blip of the trailer when someone accepts an order (for vehicle shops with big vehicles)

Config.OrderBlip = {blipId = 478, blipColor = 5, blipText = "Order"}  -- Blip of the ordered vehicle when someone accepts an order

Config.TowMarker = {id = 21, size = {x = 0.5, y = 0.5, z = 0.5}, color = {r = 94, g = 255, b = 155}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0} -- The marker to tow a vehicle when someone accepts an order

Config.SmallTowTruckID = "flatbed"

Config.BigTowTruckID = "Hauler"

Config.TrailerID = "TRFlat"

Config.Stands = { -- Vehicle shops informations
	{
		name = "PDM Vehicles", -- name of the vehicle shop
		licenseType = "", -- if you want to use a license system you'll need to set it up on sv_utils.lua
		currency = "bank", -- used to buy/sell the business and buy vehicle
		hasOwner = true, -- true = this vehicle shop can have a owner and will need maintenance to have stock | false = no owner and with vehicles all the time, price = max_price set on the database
		
		-- coords = {x = -43.65143, y = -1095.18, z = 26.416854}, -- Marker/Shop position  (THIS CONFIG FOR FANCY PDM)
		coords = {x = -1265.82, y = -360.44, z = 36.91}, -- Marker/Shop position (THIS CONFIG FOR DEFAULT PDM)
		
		sellVehicleCoords = {x = -1227.32, y = -342.44, z = -37.62},
		sellVehicleMarker = {id = 1, color = {r = 255, g = 0, b = 0, a = 90}, size = {x = 4.0, y = 4.0, z = 1.5}, radius = 2.5, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0}, -- Marker informations for the sell vehicle marker
		
		-- ownerCoords = {x = -42.82, y = -1092.95, z = 26.42}, -- Marker/Shop position for owner/employees (THIS CONFIG FOR FANCY PDM)
		ownerCoords = {x = -1252.59, y = -348.76, z = 36.91}, -- Marker/Shop position for owner/employees (THIS CONFIG FOR DEFAULT PDM)
		
		-- spawnFlatbedPos = {x = -15.18, y = -1101.42, z = 26.67, h = 341.35}, -- Where the flatbed/truck is spawned for the orders (THIS CONFIG FOR FANCY PDM)
		spawnFlatbedPos = {x = -1301.55, y = -406.2, z = 35.84, h = 298.68}, -- Where the flatbed/truck is spawned for the orders (THIS CONFIG FOR DEFAULT PDM)
		
		towCoords = {bone = 20, xPos = -0.5, yPos = -5.0, zPos = 1.0},
		missionsVehicleSpawn = { -- Locations where someone who accepted an order will have to go (it is random)
			{x = -1528.86, y = -553.6, z = 33.36, h = 213.02},
			{x = -1396.02, y = -654.03, z = 28.67, h = 37.89},
			{x = -1321.58, y = -785.19, z = 19.72, h = 308.86},
			{x = -1186.28, y = -742.66, z = 20.11, h = 307.32},
			{x = -724.51, y = -424.72, z = 35.21, h = 80.39},
			{x = -481.9, y = -452.32, z = 34.2, h = 80.42}
		},
		radius = 1, -- Interaction radius for the markers
		price = 10000, -- Price of the vehicle shop
		blip = {blipId = 225, blipColor = 44, blipScale = 0.6, blipText = "PDM Vehicles"}, -- Blip informations for vehicleshop blip
		ownerBlip = {blipId = 225, blipColor = 2, blipScale = 0.6, blipText = "Vehicleshop Panel"}, -- Blip informations for shops you own/work for (THIS CONFIG FOR FANCY PDM)
		buyBlip = {blipId = 225, blipColor = 9, blipScale = 0.6, blipText = "Vehicleshop to buy"}, -- Blip informations for shop on sale (THIS CONFIG FOR FANCY PDM)
		marker = {id = 20, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0}, -- Marker informations for the vehicle shop
		ownerMarker = {id = 21, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0}, -- Marker informations for the owning menu
		bigVehicles = false, -- Set to true if it's airplanes/helicopters/etc... it'll use a truck instead of a flatbed to get the ordered vehicles
		type = "pdm", -- Type of shop (will change displayed vehicles) | CAN be repeated on other shops
		id = "vehicles1", -- ID of the shop, it's used to get what shop is opened | needs to be DIFFERENT for each shop
	},
	{
		name = "Loyalty Vehicles", -- name of the vehicle shop
		licenseType = "", -- if you want to use a license system you'll need to set it up on sv_utils.lua
		currency = "bank", -- used to buy/sell the business and buy vehicle
		hasOwner = true, -- true = this vehicle shop can have a owner and will need maintenance to have stock | false = no owner and with vehicles all the time, price = max_price set on the database
		coords = {x = -783.17, y = -212.31, z = 37.15}, -- Marker/Shop position
		-- NOTE: The sell coords are at PDM but under the ground, the next two lines are needed but can be hidden by going under the map (nzkfc fixes this issue: https://cdn.discordapp.com/attachments/974893939993743441/974977918080000060/unknown.png)
		sellVehicleCoords = {x = -44.23, y = -1082.43, z = -53.18},
		sellVehicleMarker = {id = 1, color = {r = 255, g = 0, b = 0, a = 90}, size = {x = 4.0, y = 4.0, z = 1.5}, radius = 2.5, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0}, -- Marker informations for the sell vehicle marker
		ownerCoords = {x = -781.2, y = -211.25, z = 37.15}, -- Marker/Shop position for owner/employees		
		missionsVehicleSpawn = { -- Locations where someone who accepted an order will have to go (it is random)
			--{x = -465.99, y = -618.22, z = 31.17, h = 100.0},
			{x = -548.71, y = -1075.94, z = 22.37, h = 100.0},
			{x = 510.52, y = -1131.9, z = 29.32, h = 100.0},
			{x = -166.16, y = -1433.21, z = 31.2, h = 100.0},
			--{x = 218.46, y = -850.71, z = 30.16, h = 100.0},
		},
		radius = 1, -- Interaction radius for the markers
		price = 10000, -- Price of the vehicle shop
		blip = {blipId = 225, blipColor = 46, blipScale = 0.6, blipText = "Loyalty Shop"}, -- Blip informations for vehicleshop blip
		ownerBlip = {blipId = 225, blipColor = 2, blipScale = 0.6, blipText = "Loyaltyshop Panel"}, -- Blip informations for shops you own/work for
		buyBlip = {blipId = 225, blipColor = 1, blipScale = 0.6, blipText = "Loyaltyshop to buy"}, -- Blip informations for shop on sale
		marker = {id = 20, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0}, -- Marker informations for the vehicle shop
		ownerMarker = {id = 21, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0}, -- Marker informations for the owning menu
		bigVehicles = false, -- Set to true if it's airplanes/helicopters/etc... it'll use a truck instead of a flatbed to get the ordered vehicles
		type = "luxury", -- Type of shop (will change displayed vehicles) | CAN be repeated on other shops
		id = "vehicles2", -- ID of the shop, it's used to get what shop is opened | needs to be DIFFERENT for each shop
	},
	{
		name = "Rebellious Kings Motorcycles", -- name of the vehicle shop
		licenseType = "", -- if you want to use a license system you'll need to set it up on sv_utils.lua
		currency = "bank", -- used to buy/sell the business and buy vehicle
		hasOwner = true, -- true = this vehicle shop can have a owner and will need maintenance to have stock | false = no owner and with vehicles all the time, price = max_price set on the database
		coords = {x = 743.12, y = -1281.17, z = 26.25}, -- Marker/Shop position
		-- NOTE: The sell coords are at PDM but under the ground, the next two lines are needed but can be hidden by going under the map (nzkfc fixes this issue: https://cdn.discordapp.com/attachments/974893939993743441/974977918080000060/unknown.png)
		sellVehicleCoords = {x = 654.02, y = 2764.37, z = -41.93},
		sellVehicleMarker = {id = 1, color = {r = 255, g = 0, b = 0, a = 90}, size = {x = 4.0, y = 4.0, z = 1.5}, radius = 2.5, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0}, -- Marker informations for the sell vehicle marker
		ownerCoords = {x = 747.64, y = -1283.96, z = 26.25}, -- Marker/Shop position for owner/employees
		spawnFlatbedPos = {x = 726.39, y = -1317.95, z = 26.29, h = 85.21}, -- Where the flatbed/truck is spawned for the orders
		towCoords = {bone = 20, xPos = -0.5, yPos = -5.0, zPos = 1.0},		
		missionsVehicleSpawn = { -- Locations where someone who accepted an order will have to go (it is random)
			{x = 900.46, y = -1067.04, z = 32.83, h = 359.33},
			{x = 889.48, y = -923.88, z = 26.28, h = 91.81},
			{x = 743.76, y = -532.74, z = 27.0, h = 128.39},
			{x = 886.24, y = -1994.92, z = 30.53, h = 86.54},
			{x = 583.78, y = -2305.27, z = 5.91, h = 84.93},
			{x = 594.69, y = -2773.52, z = 6.06, h = 331.94}
		},
		radius = 1, -- Interaction radius for the markers
		price = 10000, -- Price of the vehicle shop
		blip = {blipId = 226, blipColor = 28, blipScale = 0.8, blipText = "Rebellious Kings Motorcycles"}, -- Blip informations for vehicleshop blip
		ownerBlip = {blipId = 225, blipColor = 2, blipScale = 0.6, blipText = "Staff Computer"}, -- Blip informations for shops you own/work for
		buyBlip = {blipId = 225, blipColor = 1, blipScale = 0.6, blipText = "Catalog"}, -- Blip informations for shop on sale
		marker = {id = 20, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0}, -- Marker informations for the vehicle shop
		ownerMarker = {id = 21, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0}, -- Marker informations for the owning menu
		bigVehicles = false, -- Set to true if it's airplanes/helicopters/etc... it'll use a truck instead of a flatbed to get the ordered vehicles
		type = "motorcycleshop", -- Type of shop (will change displayed vehicles) | CAN be repeated on other shops
		id = "vehicles3", -- ID of the shop, it's used to get what shop is opened | needs to be DIFFERENT for each shop
	},	
	{
		name = "24/7 Vehicles",
		licenseType = "",
		currency = "cash",
		hasOwner = false, -- when this is false you don't need all the config elements but dont forget to add on Config.ShowVehicle and Config.TransitionCamerasOffset
		coords = {x = -1269.38, y = -372.94, z = 36.59},
		
		sellVehicleCoords = {x = -1227.32, y = -342.44, z = -37.62},
		sellVehicleMarker = {id = 1, color = {r = 255, g = 0, b = 0, a = 90}, size = {x = 4.0, y = 4.0, z = 1.5}, radius = 2.5, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0},
		radius = 1,
		blip = {blipId = 225, blipColor = 3, blipScale = 0.6, blipText = "Vehicleshop"},
		marker = {id = 20, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0},
		type = "24hour",
		id = "alwaysshop1",
	},
	-- {
		-- name = "Air Shop",
		-- licenseType = "",
		-- currency = "bank",
		-- hasOwner = true,
		-- coords = {x = -949.5, y = -2946.55, z = 13.95},
		-- sellVehicleCoords = {x = -959.5, y = -2946.55, z = 12.76},
		-- sellVehicleMarker = {id = 1, color = {r = 255, g = 0, b = 0, a = 90}, size = {x = 4.0, y = 4.0, z = 1.5}, radius = 2.5, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0},
		-- ownerCoords = {x = -941.51, y = -2955.03, z = 13.95},
		-- spawnFlatbedPos = {x = -947.62, y = -2976.86, z = 13.95, h = 270.0},
		-- towCoords = {bone = 0, xPos = 0.0, yPos = -2.0, zPos = 1.3},
		-- missionsVehicleSpawn = {
			-- {x = -1835.77, y = 2979.52, z = 32.81, h = 100.0},
		-- },
		-- radius = 1,
		-- price = 99999999999999999999999,
		-- blip = {blipId = 64, blipColor = 3, blipScale = 0.6, blipText = "Air shop"},
		-- ownerBlip = {blipId = 64, blipColor = 2, blipScale = 0.6, blipText = "Air shop Panel"},
		-- buyBlip = {blipId = 64, blipColor = 1, blipScale = 0.6, blipText = "Air shop to buy"},
		-- marker = {id = 20, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0},
		-- ownerMarker = {id = 21, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0},
		-- bigVehicles = true,
		-- type = "air",
		-- id = "air1",
	-- },
	{
		name = "Water Shop",
		licenseType = "",
		currency = "bank",
		hasOwner = true,
		coords = {x = -862.78, y = -1324.04, z = 1.61},
		sellVehicleCoords = {x = -873.69, y = -1339.88, z = -50.07},
		sellVehicleMarker = {id = 1, color = {r = 255, g = 0, b = 0, a = 90}, size = {x = 4.0, y = 4.0, z = 1.5}, radius = 2.5, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0},
		ownerCoords = {x = -815.49, y = -1346.90, z = 5.15},
		spawnFlatbedPos = {x = -719.77, y = -1286.15, z = 5.0, h = 120.0},
		towCoords = {bone = 0, xPos = 0.0, yPos = -2.0, zPos = 0.9},
		missionsVehicleSpawn = {
			{x = -758.15, y = -1488.26, z = 5.0, h = 280.0},
		},
		radius = 1,
		price = 9999999999999999999999999,
		blip = {blipId = 427, blipColor = 3, blipScale = 0.6, blipText = "Boat Shop"},
		ownerBlip = {blipId = 427, blipColor = 2, blipScale = 0.6, blipText = "Boat Shop Panel"},
		buyBlip = {blipId = 427, blipColor = 1, blipScale = 0.6, blipText = "Boat Shop to buy"},
		marker = {id = 20, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0},
		ownerMarker = {id = 21, color = {r = 94, g = 255, b = 155}, size = {x = 0.5, y = 0.5, z = 0.5}, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0},
		bigVehicles = true,
		type = "boats",
		id = "water1",
	},
}

Config.ShowVehicle = { -- Display vehicle
	["vehicles1"] = { -- ID of the vehicle shop
		position = {x = -1250.3, y = -361.07, z = 36.91, h = 74.0}, -- Where to spawn the display vehicles
		noVehicleCam = {x = -1271.82-45.49, y = -368.65-1.65, z = 45.85+1.15}, -- Camera position when there is no vehicle to be displayed
		testDrive = {x = -1733.25, y = -2901.43, z = 13.94, h = 330.0}, -- Where to start the test drive
		vehicleSpawn = { -- Where the vehicle spawns when bought
			{x = -1208.09, y = -374.41, z = 37.29, h = 31.88},
			{x = -1204.31, y = -372.41, z = 37.29, h = 31.88},
			{x = -1200.85, y = -370.57, z = 37.29, h = 31.88},
		},
	},
	["vehicles2"] = { -- ID of the vehicle shop
		position = {x =-791.44, y = -218.04, z = 37.15, h = 117.98}, -- Where to spawn the display vehicles
		noVehicleCam = {x = -788.18-1.49, y = -223.48-7.65, z = 38.57+1.15}, -- Camera position when there is no vehicle to be displayed
		testDrive = {x = -1733.25, y = -2901.43, z = 13.94, h = 330.0}, -- Where to start the test drive
		vehicleSpawn = { -- Where the vehicle spawns when bought
			{x = -773.9729, y = -235.0703, z = 36.854335, h = 214.61225},
			{x = -773.9729, y = -235.0703, z = 36.854335, h = 214.61225},
			{x = -773.9729, y = -235.0703, z = 36.854335, h = 214.61225},
		},
	},
	["alwaysshop1"] = { -- ID of the vehicle shop
		position = {x = -1250.3, y = -361.07, z = 36.91, h = 74.0}, -- Where to spawn the display vehicles
		noVehicleCam = {x = -1271.82-45.49, y = -368.65-1.65, z = 45.85+1.15}, -- Camera position when there is no vehicle to be displayed
		testDrive = {x = -1733.25, y = -2901.43, z = 13.94, h = 330.0}, -- Where to start the test drive
		vehicleSpawn = {
			{x = -1216.34, y = -355.05, z = 37.29, h = 207.16},
			{x = -1212.65, y = -353.3, z = 37.29, h = 207.16}
		},
	},
	-- ["air1"] = {
		-- position = {x = -1652.0, y = -3142.69, z = 13.99, h = 70.0},
		-- noVehicleCam = {x = -1652.0-12.49, y = -3142.69-0.65, z = 13.99+2.15},
		-- testDrive = {x = -1733.25, y = -2901.43, z = 13.94, h = 330.0},
		-- vehicleSpawn = {
			-- {x = -1023.91, y = -3060.6, z = 13.94, h = 70.0},
		-- },
	-- },
	["water1"] = {
		position = {x = -828.54, y = -1448.08, z = -0.5, h = 70.0},
		noVehicleCam = {x = -828.54-12.49, y = -1448.08-0.65, z = -0.5+3.15},
		testDrive = {x = -878.02, y = -1360.32, z = 2.0, h = 199.58},
		vehicleSpawn = {
			{x = -706.78, y = -1333.57, z = 2.0, h = 140.0},
		},
	},
	["vehicles3"] = {
		position = {x = 740.75, y = -1297.05, z = 26.24, h = 316.72},
		noVehicleCam = {x = 739.05, y = -1300.63, z = 31.22, h = 134.65},
		testDrive = {x = -1733.25, y = -2901.43, z = 13.94, h = 330.0},
		vehicleSpawn = {
			{x = 730.07, y = -1298.85, z = 26.29, h = 63.98},
			{x = 729.96, y = -1302.58, z = 26.29, h = 62.40},
			{x = 729.13, y = -1305.51, z = 26.29, h = 74.46},
		},
	},	
}

Config.TransitionCamerasOffset = { -- Cameras positions, you can add as many as you wish
	["vehicles1"] = { -- ID of the vehicle shop
		{x = 5.49, y = 20.65, z = 1.15}, 
		-- {x = 3.49, y = 12.65, z = 1.15}, 
		-- {x = 8.0, y = 5.0, z = 0.6},
		-- {x = 7.0, y = -5.0, z = 1.5},
		-- {x = -9.0, y = -3.0, z = 1.6},
	},
	["vehicles2"] = { -- ID of the vehicle shop
		{x = -4.49, y = 5.65, z = 1.15}, 
		{x = 8.0, y = 5.0, z = 0.6},
		{x = 7.0, y = -5.0, z = 1.5},
		{x = -9.0, y = -3.0, z = 1.6},
	},
	["alwaysshop1"] = { -- ID of the vehicle shop
		{x = 5.49, y = 20.65, z = 1.15}, 
		-- {x = 14.0, y = 5.0, z = 0.6},
		-- {x = 7.0, y = -5.0, z = 1.5},
		-- {x = -15.0, y = -3.0, z = 1.6},
	},
	-- ["air1"] = {
		-- {x = 12.49, y = 0.65, z = 2.15}, 
		-- {x = 9.0, y = 20.0, z = 1.6},
		-- {x = -13.5, y = 8.0, z = 2.5},
		-- {x = -4.0, y = -13.0, z = 2.6},
	-- },
	["water1"] = {
		{x = 12.49, y = 0.65, z = 3.15}, 
		{x = 9.0, y = 20.0, z = 2.6},
		{x = -13.5, y = 8.0, z = 3.5},
		{x = -4.0, y = -13.0, z = 3.6},
	},
	["vehicles3"] = {
		{x = -4.49, y = 5.65, z = 1.15}, 
		{x = 8.0, y = 5.0, z = 0.6},
		{x = 7.0, y = -5.0, z = 1.5},
		{x = -9.0, y = -3.0, z = 1.6},
	},	
}

Config.VehicleshopsCategories = { -- Categories shown on the vehicle shops, this is used to set the vehicles category
	["pdm"] = { -- TYPE of the vehicle shop
		{display = "COMMERCIALS", id = "commercials"},
		{display = "IMPORTS", id = "Imports"},
		{display = "COMPACTS", id = "compacts"},
		{display = "COUPES", id = "coupes"},
		{display = "MUSCLE", id = "muscle"},
		{display = "OFF-ROAD", id = "offroad"},
		{display = "SEDANS", id = "sedans"},
		{display = "SPORTS", id = "sports"},
		{display = "SPORTS CLASSICS", id = "sportsclassics"},
		{display = "SUPER", id = "super"},
		{display = "SUVS", id = "suvs"},
		{display = "VANS", id = "vans"},
	},
	["luxury"] = { -- TYPE of the vehicle shop
		{display = "TIER1", id = "tier1"},
		{display = "TIER2", id = "tier2"},
		{display = "TIER3", id = "tier3"},
	},
	["24hour"] = { -- TYPE of the vehicle shop
		{display = "COMPACTS", id = "compacts"},
		{display = "SEDANS", id = "sedans"},
		{display = "CYCLES", id = "cycles"},
	},
	-- ["air"] = {
		-- {display = "BIG", id = "big"},
		-- {display = "MEDIUM", id = "medium"},
		-- {display = "SMALL", id = "small"},
	-- },
	["boats"] = {
		{display = "BOATS", id = "boats"},
	},
	["motorcycleshop"] = {
		{display = "MOTORCYCLES", id = "motorcycles"},
		{display = "ORGANISATION BIKES", id = "gangbike"},
		{display = "ORGANISATION CARS", id = "gangcars"},
		{display = "IMPORT MOTORCYCLES", id = "importmotorcycles"},
	},	

}

Config.UseColorID = true -- Will set the vehicle color based on the color ID: https://wiki.rage.mp/index.php?title=Vehicle_Colors

Config.colors = { -- The vehicle colors, this will update the UI as well (it needs to be 10 colors, do NOT remove, add or change the color names)
	color1 = {255, 255, 255, id = 134}, -- The 4th number is the color id for the car if Config.UseColorID = true
	color2 = {0, 0, 0, id = 0},
	color3 = {150, 150, 150, id = 4},
	color4 = {255, 0, 0, id = 27},
	color5 = {255, 150, 0, id = 41},
	color6 = {255, 230, 0, id = 89},
	color7 = {0, 255, 0, id = 55},
	color8 = {0, 0, 255, id = 79},
	color9 = {76, 0, 255, id = 145},
	color10 = {255, 0, 255, id = 137},
}

Config.TextUI = { -- Text UI texts
	['open_shop'] = { 			text = '[E] To open ${shop_name}', 										color = 'darkblue', side = 'right'},
	['buy_business'] = { 		text = '[E] to buy ${name} for ${price}', 								color = 'darkblue', side = 'right'},
	['access_business'] = { 	text = '[E] to access ${name}', 										color = 'darkblue', side = 'right'},
	['tow'] = { 				text = '[E] To tow', 													color = 'darkblue', side = 'right'},
	['sell_vehicle'] = { 		text = '[E] To sell vehicle', 											color = 'darkblue', side = 'right'},
}

Config.HelpNotification = { -- Used when Config.UseTextUI = false
	['open_shop'] = { 			text = '[E] To open ${shop_name}',										type = 'success', time = 5000},
	['buy_business'] = { 		text = '[E] to buy ${name} for ${price}',								type = 'success', time = 5000},
	['access_business'] = { 	text = '[E] to access ${name}',											type = 'success', time = 5000},
	['tow'] = { 				text = '[E] To tow',													type = 'success', time = 5000},
	['sell_vehicle'] = { 		text = '[E] To sell vehicle',											type = 'success', time = 5000},
}

Config.NotificationsText = { -- Notifications texts
	['success_cancel'] = {		title = "Vehicle Shop", 		text = "Successfully canceled the order",											time = 5000, type = "success"},
	['fail_cancel'] = {			title = "Vehicle Shop", 		text = "Failed to cancel the order",												time = 5000, type = "error"},
	['cant_access'] = {			title = "Vehicle Shop", 		text = "You don't have permission to access this shop",								time = 5000, type = "error"},
	['no_license'] = {			title = "Vehicle Shop", 		text = "You have no license to buy this vehicle",									time = 5000, type = "error"},
	['all_occupied'] = {		title = "Vehicle Shop", 		text = "All vehicle entrances are occupied",										time = 5000, type = "error"},
	['failed_to_load'] = {		title = "Vehicle Shop", 		text = "Failed to load the vehicle", 												time = 5000, type = "error"},
	['bus_no_money'] = {		title = "Vehicle Shop", 		text = "This business doesn't have enough money", 									time = 5000, type = "error"},
	['success_sell'] = {		title = "Vehicle Shop", 		text = "You sold ${vehicle_name} for ${price} successfully", 						time = 5000, type = "success"},
	['not_in_correct_v'] = {	title = "Vehicle Shop", 		text = "You are not in the correct vehicle", 										time = 5000, type = "error"},
	['dont_sell'] = {			title = "Vehicle Shop", 		text = "This vehicle shop don't buy this vehicle", 									time = 5000, type = "error"},
	['not_your_vehicle'] = {	title = "Vehicle Shop", 		text = "You don't own this vehicle", 												time = 5000, type = "error"},
	['not_in_vehicle'] = {		title = "Vehicle Shop", 		text = "You need to be on a vehicle", 												time = 5000, type = "error"},
	['not_admin'] = {			title = "Vehicle Shop", 		text = "You don't have permission to access the admin menu", 						time = 5000, type = "error"},
	['inside_vehicle'] = {		title = "Vehicle Shop", 		text = "You can't access the vehicle shop inside a vehicle", 						time = 5000, type = "error"},
	['load_vehicle'] = {		title = "Vehicle Shop", 		text = "Loading vehicle, please wait", 												time = 3000, type = "info"},
	['stop_testdrive'] = {		title = "Vehicle Shop", 		text = "Stopping the test drive", 													time = 5000, type = "success"},
	['not_testdriving'] = {		title = "Vehicle Shop", 		text = "You are not on a test drive", 												time = 5000, type = "error"},
	['fill_fields'] = {			title = "Vehicle Shop", 		text = "Please fill the input field", 												time = 5000, type = "error"},
	['already_accepted'] = {	title = "Vehicle Shop", 		text = "You already accepted an order, complete it before accepting another",		time = 5000, type = "error"},
	['not_selected_hire'] = {	title = "Vehicle Shop", 		text = "No one was selected", 														time = 5000, type = "error"},
	['ordered_success'] = {		title = "Vehicle Shop", 		text = "You ordered x${amount} ${vehicle_name} successfully!", 						time = 5000, type = "success"},
	['some_wrong'] = {			title = "Vehicle Shop", 		text = "Something went wrong!", 													time = 5000, type = "error"},
	['not_enough_money'] = {	title = "Vehicle Shop", 		text = "You don't have enough money", 												time = 5000, type = "error"},
	['not_enough_money_s'] = {	title = "Vehicle Shop", 		text = "Your society doesn't have enough money", 									time = 5000, type = "error"},
	['accepted_order'] = {		title = "Vehicle Shop", 		text = "You accepted an order successfully", 										time = 5000, type = "success"},
	['someone_accepted'] = {	title = "Vehicle Shop", 		text = "Someone has already accepted this order", 									time = 5000, type = "error"},
	['finished_order'] = {		title = "Vehicle Shop", 		text = "You successfully finished the order and received ${reward}", 				time = 5000, type = "success"},
	['no_ads_cancel'] = {		title = "Vehicle Shop", 		text = "You don't have any ads to cancel", 											time = 5000, type = "error"},
	['veh_not_available'] = {	title = "Vehicle Shop", 		text = "This vehicle isn't available", 												time = 5000, type = "error"},
	['price_not_valid'] = {		title = "Vehicle Shop", 		text = "This is not a valid price", 												time = 5000, type = "error"},
	['employee_not_exist'] = {	title = "Vehicle Shop", 		text = "This employee does not exist", 												time = 5000, type = "error"},
	['not_enough_to_sell'] = {	title = "Vehicle Shop", 		text = "You don't have enough vehicles to sell", 									time = 5000, type = "error"},
	['got_hired'] = {			title = "Vehicle Shop", 		text = "You got hired by ${shop_name}", 											time = 5000, type = "info"},
	['got_fired'] = {			title = "Vehicle Shop", 		text = "You got fired by ${shop_name}", 											time = 5000, type = "info"},
	['success_hired'] = {		title = "Vehicle Shop", 		text = "You successfully hired ${hired_name}", 										time = 5000, type = "success"},
	['success_fired'] = {		title = "Vehicle Shop", 		text = "You successfully fired ${fired_name}", 										time = 5000, type = "success"},
	['success_added_ad'] = {	title = "Vehicle Shop", 		text = "Added x${amount} ${vehicle_name} ads", 										time = 5000, type = "success"},
	['deposited'] = {			title = "Vehicle Shop", 		text = "Deposited ${amount} successfully", 										time = 5000, type = "success"},
	['withdrawn'] = {			title = "Vehicle Shop", 		text = "Whitdrawn ${amount} successfully", 										time = 5000, type = "success"},
	['bought_veh'] = {			title = "Vehicle Shop", 		text = "Bought ${vehicle_name} for ${vehiclePrice}", 								time = 5000, type = "success"},
	['change_money'] = {		title = "Vehicle Shop", 		text = "Changed the ${shop_name} money to ${money} successfully", 					time = 5000, type = "success"},
	['change_info'] = {			title = "Vehicle Shop", 		text = "Changed the ${vehicle_name} informations successfully", 					time = 5000, type = "success"},
	['remove_veh'] = {			title = "Vehicle Shop", 		text = "Removed the ${vehicle_name} successfully", 									time = 5000, type = "success"},
	['created_veh'] = {			title = "Vehicle Shop", 		text = "Created a ${vehicle_name} successfully", 									time = 5000, type = "success"},
	['cancel_ads'] = {			title = "Vehicle Shop", 		text = "Canceled x${amount} ${vehicle_name} ads", 									time = 5000, type = "success"},
	['updated_price'] = {		title = "Vehicle Shop", 		text = "Updated price of ${vehicle_name} to ${amount}", 							time = 5000, type = "success"},
	['change_rank'] = {			title = "Vehicle Shop", 		text = "${name} is now a ${job}", 													time = 5000, type = "success"},
	['already_rank'] = {		title = "Vehicle Shop", 		text = "${name} is already a ${job}", 												time = 5000, type = "error"},
	['already_employee'] = {	title = "Vehicle Shop", 		text = "${name} is your employee already", 											time = 5000, type = "error"},
	['max_shops'] = {			title = "Vehicle Shop", 		text = "You can't buy more dealerships",											time = 5000, type = "error"},
	['got_to_truck'] = {		title = "Vehicle Shop", 		text = "Go get the order marked in your minimap", 									time = 5000, type = "info"},
	['not_towing'] = {			title = "Vehicle Shop", 		text = "You need to be closer to the ordered vehicle", 								time = 5000, type = "error"},
	['towed'] = {				title = "Vehicle Shop",			text = "You successfully towed the ordered vehicle", 								time = 5000, type = "success"},
	['sold_business'] = {		title = "Vehicle Shop", 		text = "You successfully sold ${shop} for ${amount}", 								time = 5000, type = "success"},
	['leave_business'] = {		title = "Vehicle Shop", 		text = "You successfully left ${shop}", 											time = 5000, type = "success"},
	['min_max_price'] = {		title = "Vehicle Shop", 		text = "The minimum price needs to be less than the maximum price", 				time = 5000, type = "error"},
	['owner_changed'] = {		title = "Vehicle Shop", 		text = "${owner} is now the owner of ${shop}", 										time = 5000, type = "success"},
	['max_employees'] = {		title = "Vehicle Shop", 		text = "You can only hire ${employees} employees", 									time = 5000, type = "error"},
}

-------------------------- DISCORD LOGS

-- To set your Discord Webhook URL go to webhook.lua, line 1

Config.BotName = 'KiwiRP AdminBOT' -- Write the desired bot name

Config.ServerName = 'KiwiRP' -- Write your server's name

Config.IconURL = '' -- Insert your desired image link

Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

-- To change a webhook color you need to set the decimal value of a color, you can use this website to do that - https://www.mathsisfun.com/hexadecimal-decimal-colors.html

Config.BuyBusinessWebhook = true
Config.BuyBusinessWebhookColor = '65280'

Config.SellBusinessWebhook = true
Config.SellBusinessWebhookColor = '16711680'

Config.DepositWebhook = true
Config.DepositWebhookColor = '16776960'

Config.WithdrawWebhook = true
Config.WithdrawWebhookColor = '16776960'

Config.StartOrderWebhook = true
Config.StartOrderWebhookColor = '16742656'

Config.EndOrderWebhook = true
Config.EndOrderWebhookColor = '16742656'

Config.HireWebhook = true
Config.HireWebhookColor = '4223487'

Config.FireWebhook = true
Config.FireWebhookColor = '4223487'

Config.BuyVehicleWebhook = true
Config.BuyVehicleWebhookColor = '65535'

Config.ADStockWebhook = true
Config.ADStockWebhookColor = '7209071'

Config.CancelStockWebhook = true
Config.CancelStockWebhookColor = '7209071'

Config.BuyStockWebhook = true
Config.BuyStockWebhookColor = '7209071'

Config.EditEmployeeRankWebhook = true
Config.EditEmployeeRankWebhookColor = '4223487'

Config.QuitJobWebhook = true
Config.QuitJobWebhookColor = '16711680'