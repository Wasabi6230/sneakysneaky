local objects = {
    {x = 266.09, y = -349.35, z = 44.74, model = "prop_sec_barier_02b"},
    {x = 285.28, y = -355.78, z = 45.13, model = "prop_sec_barier_02a"},
	{x = -517.52, y = -2862.1, z = 5.0, model = "prop_truktrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -490.47, y = -2835.38, z = 5.0, model = "prop_truktrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -473.35, y = -2817.94, z = 5.0, model = "prop_truktrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -435.29, y = -2717.41, z = 5.0, model = "prop_tanktrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -440.33, y = -2722.36, z = 5.0, model = "prop_truktrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -425.2, y = -2748.92, z = 5.0, model = "prop_tanktrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -472.84, y = -2767.02, z = 5.0, model = "prop_truktrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -426.3178, y = -2707.92188, z = 5.0, model = "prop_flattrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -445.1186, y = -2726.92773, z = 5.0, model = "prop_flattrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -391.810547, y = -2748.21753, z = 5.0, model = "prop_flattrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -386.510925, y = -2742.53979, z = 5.0, model = "prop_flattrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -469.3889, y = -2762.44775, z = 5.0, model = "prop_flattrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	{x = -488.189667, y = -2781.45361, z = 5.0, model = "prop_flattrailer_01a"}, -- KRP TRUCKING TRAILER REMOVALS
	-- {x = -60.76, y = 6504.07, z = 30.58, model = "prop_elecbox_04a"}, -- Natives MC pad (conflict with new whenua)
	-- {x = -75.44, y = 6476.76, z = 31.75, model = "prop_facgate_03_l"}, -- Natives MC pad (conflict with new whenua)
	-- {x = -68.28, y = 6483.86, z = 31.74, model = "prop_facgate_03_r"}, -- Natives MC pad (conflict with new whenua)
	-- {x = -68.26, y = 6483.89, z = 30.61, model = "prop_fnclink_03a"}, -- Natives MC pad (conflict with new whenua)
	{x = 103.2, y = 6545.96, z = 30.64, model = "prop_woodpile_01a"}, -- New Whenua
	{x = 80.66, y = 6544.29, z = 30.27, model = "prop_rub_carwreck_3"}, -- New Whenua
	{x = 81.44, y = 6545.45, z = 30.59, model = "prop_car_engine_01"}, -- New Whenua
	{x = 82.01, y = 6545.54, z = 30.71, model = "prop_cons_plank"}, -- New Whenua
	{x = 76.28, y = 6539.89, z = 30.57, model = "prop_cratepile_07a"}, -- New Whenua
	{x = 124.99, y = 6548.3, z = 32.12, model = "prop_fnclink_03gate4"}, -- New Whenua
	{x = 116.62, y = 6556.49, z = 32.12, model = "prop_fnclink_03gate4"}, -- New Whenua
	{x = 111.68, y = 6561.42, z = 32.0, model = "prop_fnclink_03gate4"}, -- New Whenua
	{x = 103.32, y = 6569.6, z = 32.15, model = "prop_fnclink_03gate4"}, -- New Whenua
	-- {x = 1001.17, y = -98.64, z = 73.04, model = "prop_streetlight_01"}, -- Demons MLO
	{x = 999.57, y = -96.39, z = 73.19, model = "prop_fnclink_04k"}, -- Demons MLO
	-- {x = 984.93, y = -62.39, z = 73.35, model = "prop_skip_04"}, -- Demons MLO
	-- {x = 983.46, y = -79.88, z = 73.29, model = "prop_streetlight_01"}, -- Demons MLO
	-- {x = 962.28, y = -94.23, z = 73.29, model = "prop_streetlight_01"}, -- Demons MLO
	{x = 995.77, y = -104.44, z = 74.17, model = "prop_pool_rack_02"}, -- Demons MLO
	{x = -1940.5, y = 464.56, z = 101.29, model = "prop_jetski_trailer_01"}, --6008 jetski in driveway scenario bug
	
}

CreateThread(function()
    while true do
        for k in pairs(objects) do
            local ent = GetClosestObjectOfType(objects[k].x, objects[k].y, objects[k].z, 2.0, GetHashKey(objects[k].model), false, false, false)

            SetEntityAsMissionEntity(ent, true, true)
            DeleteObject(ent)
            SetEntityAsNoLongerNeeded(ent)
        end

        Wait(5000)
    end
end)
