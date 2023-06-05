local clearPedsAndVehicle = {
	{coords = vector3(1398.55, 1147.87, 114.33), radius = 50.0}, -- Cartel House
	{coords = vector3(-1517.65, 125.44, 55.67), radius = 100.0}, -- Mafia House
	{coords = vector3(937.94055, 33.384204, 71.833656), radius = 60.0}, -- Casino
	{coords = vector3(-1951.89, 348.04, 90.82), radius = 6.0}, -- house 6012 as the AI constantly drives up the driveway
	{coords = vector3(1996.51, 3062.09, 47.05), radius = 50.0}, -- Yellowjack
	{coords = vector3(-1968.43, 458.6, 101.76), radius = 6.0}, -- house 6008 as the AI constantly drives up the driveway
	{coords = vector3(-1944.36, 449.64, 102.7), radius = 6.0}, -- house 6008 as the AI constantly spawns at front door 
	{coords = vector3(893.08, -3170.01, 5.9), radius = 6.0}, -- Skid pad at ports
	{coords = vector3(891.23, -3172.6, 5.9), radius = 3.0}, -- Skid pad at ports
	{coords = vector3(970.51, -3167.62, 7.09), radius = 3.0}, -- Skid pad at ports
	{coords = vector3(970.15, -3196.88, 5.9), radius = 6.0}, -- Skid pad at ports
}

CreateThread(function()
	while true do
		Wait(0)

		for _,v in pairs(clearPedsAndVehicle) do
			ClearAreaOfVehicles(v.coords, v.radius)
			ClearAreaOfPeds(v.coords, v.radius, 1)
		end

	end
end)

