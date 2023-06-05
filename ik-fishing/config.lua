-- Configure your key system.
function GiveKeys(plate)
	TriggerEvent("vehiclekeys:client:SetOwner", plate)
	--TriggerEvent('cd_garage:AddKeys', plate)
end

Config = {
    --##### Basic Config #####--

    Debug = false, -- Turn debug on / off
    img = "qb-inventory/html/images/", -- Place of your inventory images
    UseBoatItems = false, -- Put items in the trunk of the boat ?
    fuelsystem = "ps-fuel", -- The fuel system used. Ex: ps-fuel / LegacyFuel etc.
    rentalpaytime = 10, -- Time in minutes for the recurring payment
    duetimes = 3, -- When failed this amount of time, the car will be returned
    waittime = {minTime = 40000, maxTime = 60000}, -- Wait time to catch a fish

    --##### Rental base config #####--

    pedhash = 'ig_cletus', -- Ped thats used for target
    pedlocation = vector4(396.74, -1168.61, 29.29, 1.59), -- Location of the ped
    boatspawnpoint = vector4(383.21, -1153.13, 29.04, 268.74), -- Spanw point of the boat and the trailer
    carspawnpoint = vector4(394.25, -1152.62, 29.29, 266.39), -- Spawn point of the car
    baseblip = {sprite = 404,scale = 0.8,color = 26},
    trailers = { -- Available trailers with boat and car
        [1] = {header = "Boat Trailer", txt = "Trailer + Dinghy", price = 250 , boat = true, trailermodel = `BoatTrailer`, boatmodel = `dinghy`},
        [2] = {header = "Sadler", txt = "Hire a Sadler", price = 350 , boat = false, carmodel = `sadler`},
        [3] = {header = "Bravado Bison", txt = "Hire a Bravado Bison", price = 350 , boat = false, carmodel = `bison`},
    },
    BoatItems = { -- Items to put in the trunk of the boat
        [1] = {name = "fishingrod", amount = 1, info = {}, type = "item", slot = 1,},
        [2] = {name = "fishbait", amount = 10, info = {}, type = "item", slot = 2,},
    },
    products = {
        [1] = { name = "fishingrod", price = 250, amount = 10},
        [2] = { name = "fishbait", price = 45, amount = 50},
        [3] = { name = "anchor", price = 560, amount = 1},
    },

    --##### Fishing config #####--

    skillbar = "qb-skillbar", -- Choose your skillbar, qb-skillbar, ik-skillbar or ps-ui
    psuicircleamt = 2, -- Amount of circles for ps-ui 
    psuims = 20, -- MS amount for ps-ui circle 
    stopbutton = 73, -- Button to stop fishing
    removebaitchance = 70, -- Chance for removing the bait 1 - 100 
    baitname = "fishbait", -- Name of your fishbait from items.lua file
    fishingspots = { -- Fishing spots you need to be in to be able to fish
		[1] = {coords = vector3(-731.74, 6874.02, -0.27),radius = 100, alpha = 150, illegal = false, showblip = true},
        [2] = {coords = vector3(3995.78, 5301.67, -0.75),radius = 100, alpha = 150, illegal = false, showblip = true},
        [3] = {coords = vector3(1097.75, 3974.0, -4.12),radius = 100, alpha = 150, illegal = false, showblip = true},
        [4] = {coords = vector3(1886.01, 68.48, 146.62),radius = 100, alpha = 150, illegal = false, showblip = true}, -- dam
        [5] = {coords = vector3(3537.02, -3342.21, 9.56),radius = 100, alpha = 150, illegal = false, showblip = true},
        [6] = {coords = vector3(-2517.77, -2032.48, 65.38),radius = 100, alpha = 150, illegal = false, showblip = true},
		[7] = {coords = vector3(-2882.05, 2456.12, 12.92),radius = 100, alpha = 150, illegal = false, showblip = true},
		[8] = {coords = vector3(2930.21, -633.55, -17.44),radius = 100, alpha = 150, illegal = false, showblip = true},
    },
    fishblip = {name = "Fishing Spot",sprite = 427,scale = 0.6,color = 0,radius = 100.0,radiuscolor = 26},
    fishes = { -- Fishes that can be catched
        ['killerwhale'] = {luck1 = 100, luck2 = 100, fishhash = 'a_c_fish', isped = true, price = 12000, illegal = true}, --15000
        ['dolphin'] = {luck1 = 97, luck2 = 99, fishhash = 'a_c_fish', isped = true, price = 10000, illegal = true}, --12500
        ['sharkhammer'] = {luck1 = 94, luck2 = 97, fishhash = 'a_c_fish', isped = true, price = 7000, illegal = true}, --10000
        ['sharktiger'] = {luck1 = 90, luck2 = 94, fishhash = 'a_c_fish', isped = true, price = 6500, illegal = true}, --7500
        ['stingray'] = {luck1 = 80, luck2 = 90, fishhash = 'A_C_stingray', isped = true, price = 700, illegal = false}, --700
        ['flounder'] = {luck1 = 68, luck2 = 80, fishhash = 'a_c_fish', isped = true, price = 450, illegal = false}, --500
        ['fishingboot'] = {luck1 = 60, luck2 = 68, fishhash = 'prop_old_boot', isped = false, price = 20, illegal = false}, --20
        ['bass'] = {luck1 = 50, luck2 = 60, fishhash = 'a_c_fish', isped = true, price = 400, illegal = false}, --400
        ['codfish'] = {luck1 = 40, luck2 = 50, fishhash = 'a_c_fish', isped = true, price = 300, illegal = false}, --300
        ['fishingtin'] = {luck1 = 35, luck2 = 40, fishhash = 'ng_proc_sodacan_02d', isped = false, price = 30, illegal = false}, --50
        ['mackerel'] = {luck1 = 0, luck2 = 35, fishhash = 'a_c_fish', isped = true, price = 100, illegal = false}, -- 100
    },

    --##### Market config #####--
    
    marketblip = {name = "Seafood Buyers",sprite = 66,scale = 0.6,color = 24},
    market = {
        [1] = {coords = vector4(-1038.08, -1397.55, 5.55, 46.77), blackmarket = false} , -- normal market
        [2] = {coords = vector4(-2185.54, -399.26, 13.26, 145.87), blackmarket = true} , -- blackmarket
    },
    marketpeds = {
        ["model"] = {
            [1] = `s_m_y_chef_01`,
            -- [2] = `MP_M_Weed_01`,
            -- [3] = `A_M_Y_MethHead_01`,
            -- [4] = `A_F_Y_RurMeth_01`,
            -- [5] = `A_M_M_RurMeth_01`,
            -- [6] = `MP_F_Meth_01`,
            -- [7] = `MP_M_Meth_01`,
        },
    },
    marketscenarios = { "WORLD_HUMAN_AA_SMOKE", "WORLD_HUMAN_AA_COFFEE", "WORLD_HUMAN_SMOKING", },
}