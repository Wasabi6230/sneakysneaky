Config = {}

Config.UseESX = false
Config.UseQBCore = true

Config.TrailerShop = {
    [1] ={
        npccoords = vector3(-247.51, 6213.35, 31.94), 
        heading = 120.0, 
        ped = 'mp_m_weapwork_01', 
        job = 'none',
        trailertobuy = {
            {label = 'Boat Trailer', name = 'boattrailer', price = 5000, coordsspawn = vector3(-251.8, 6223.12, 31.49), heading = 311.34}, 
            {label = 'Small Trailer', name = 'trailersmall', price = 4000, coordsspawn = vector3(-251.09, 6223.35, 32.49), heading =  311.34}
        }
    },
	[2] ={
        npccoords = vector3(-1628.91, -812.31, 10.09), 
        heading = 52.79, 
        ped = 'mp_m_weapwork_01', 
        job = 'none',
        trailertobuy = {
            {label = 'Boat Trailer', name = 'boattrailer', price = 5000, coordsspawn = vector3(-1625.09, -803.3, 10.16), heading = 136.29}, 
            {label = 'Small Trailer', name = 'trailersmall', price = 4000, coordsspawn = vector3(-1637.0, -809.42, 10.19), heading =  137.72}
        }
    },
}

Config.VehicleCanTrail = {
    {name = 'GUARDIAN', class = {8}},
    {name = 'SQUADDIE', class = {8}},
    {name = 'BENSON', class = {8}},
    {name = 'EVERON', class = {8}},
    {name = 'TITAN', class = {8}},
    {name = 'SANDKING', class = {8}},
    {name = 'SANDKING2', class = {8}},
    {name = 'DUBSTA3', class = {8}},
    {name = 'rodeo', class = {8}},	
    {name = 'BISON', class = {8}},	
    {name = 'vessvu', class = {8}},
    {name = '19raptor', class = {8}},	
    {name = 'TRX', class = {8}},
    {name = 'MULE', class = {8}},	
    {name = 'BOBCATXL', class = {8}},
    {name = 'BOATTRAILER', class = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}},
    {name = 'TRAILER', class = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}},
    {name = 'WASTLNDR', class = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}},
}

Config.Lang = {    
    ["TrailerNotFind"] = 'Trailer not found',
    ["RampeAlreadySet"] = 'A ramp is already attached',
    ["NoVehicleSet"] = 'No vehicle attached found',
    ["CantSetThisType"] = 'You cannot attach this type of vehicle to this trailer',
    ["NotGoodJob"] = 'You are not in the targeted trade',
    ["PressToOpen"] = 'Press E to open the menu',
    ["YouBuy"] = 'You have rented: ',
    ["For"] = 'For: ',
    ["CantBuy"] = 'You can\'t buy that',
    ["BuyFor"] = 'Rent for: ',
    ["Blip"] = 'Rent a trailer',
    ["TrailerNotFind"] = 'Trailer not found',
    ["NotInVehicle"] = 'You are not in a vehicle'
}

Config.AttachCommand = 'attach'
Config.DetachCommand = 'detach'
