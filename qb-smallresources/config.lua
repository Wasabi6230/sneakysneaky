Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.IdleCamera = true
Config.EnableProne = false
-- Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.DisableAmbience = true -- Disabled distance sirens, distance car alarms, etc

-- KRP CUSTOM START
Config.ParachuteColour = 3 -- Colours: https://vespura.com/fivem/parachutes/
-- KRP CUSTOM END

Config.Disable = {
    disableHudComponents = {1, 2, 3, 4, 7, 9, 13, 17, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true -- false disables ammo display
}

-- Config.Density = { -- (normal KRP settings but testing it out due to recent issues 30/04/23)
    -- ['parked'] = 0.5,
    -- ['vehicle'] = 0.5,
    -- ['multiplier'] = 0.3,
    -- ['peds'] = 0.5,
    -- ['scenario'] = 0.0,
-- }

Config.Density = {
    ['parked'] = 0.8,
    ['vehicle'] = 0.8,
    ['multiplier'] = 0.8,
    ['peds'] = 0.8,
    ['scenario'] = 0.0,
}

ConsumablesEat = {
    ["bigbenpie"] = math.random(10, 15),
    ["tosti"] = math.random(10, 15),
	["anzaccookie"] = math.random(20, 30),
	["colachuppa"] = math.random(70, 90),
    ["twerks_candy"] = math.random(10, 15),
    ["snikkel_candy"] = math.random(10, 15),
	["bacalhaucozido"] = math.random(10, 15),
	["cavalacozida"] = math.random(10, 15),
	["salmaocozido"] = math.random(10, 15),
	["sardinhacozida"] = math.random(10, 15),
	["batatas"] = math.random(10, 15),
	["tomates"] = math.random(10, 15),
	["macas"] = math.random(10, 15),
	["morangos"] = math.random(10, 15),
	["laranjas"] = math.random(10, 15),
    ["cookietime"] = math.random(15, 25),	
	["mussel"] = math.random(20, 30),
	["paua"] = math.random(20, 30),
	["kina"] = math.random(20, 30),
	["oyster"] = math.random(20, 30),
	["apple"] = math.random(10, 20),
    ["beef"] = math.random(35, 50),
    ["slicedpie"] = math.random(10, 20),
    ["corncob"] = math.random(25, 40),
    ["canofcorn"] = math.random(35, 50),
    ["grapes"] = math.random(10, 20),
    ["greenpepper"] = math.random(10, 20),
    ["chillypepper"] = math.random(10, 20),
    ["tomato"] = math.random(10, 20),
    ["tomatopaste"] = math.random(25, 40),
    ["cooked_bacon"] = math.random(50, 55),
    ["cooked_sausage"] = math.random(50, 55),
    ["cooked_pork"] = math.random(50, 55),
    ["cooked_ham"] = math.random(50, 55),
	-- HALLOWEEN
	["hallo_candycorn"] = math.random(25, 35),
	["hallo_teeth"] = math.random(25, 35),
	["hallo_brain"] = math.random(25, 35),
	["hallo_skulls"] = math.random(25, 35),
	["hallo_sourchew"] = math.random(25, 35),
	-- XMAS
	["xmas_faves"] = math.random(25, 35),
	["xmas_candycane"] = math.random(25, 35),
	["xmas_goldcoins"] = math.random(25, 35),

	-- Mirror Restaurant Food
    ["bananachip"] = math.random(50, 55),
    ["bananapoke"] = math.random(50, 55),	
    ["faalifukalo"] = math.random(99, 100),	
    ["faapapa"] = math.random(50, 55),	
    ["faiaieleni"] = math.random(50, 55),
    ["friedbread"] = math.random(50, 55),	
    ["friedchickenandchips"] = math.random(50, 55),	
    ["ikamata"] = math.random(99, 100),	
    ["islanddonuts"] = math.random(50, 55),	
    ["kekepuaa"] = math.random(50, 55),	
    ["kokolaisa"] = math.random(50, 55),
    ["kopai"] = math.random(99, 100),
    ["loihoosi"] = math.random(99, 100),	
    ["minus"] = math.random(99, 100),
    ["panikeke"] = math.random(50, 55),
    ["pisupoandspaghetti"] = math.random(99, 100),	
    ["povimasima"] = math.random(99, 100),	
    ["puligi"] = math.random(50, 55),	
    ["sapasui"] = math.random(99, 100),	
    ["tarochips"] = math.random(50, 55),
    ["suafai"] = math.random(50, 55),	
    ["ulupuaa"] = math.random(99, 100),	
    ["watermelonicecream"] = math.random(99, 100),
	
	-- Yellowjack
	["yj_hangiburger"] = math.random(50, 60),
    ["yj_nachos"] = math.random(30, 45),
    ["yj_sundayroast"] = math.random(40, 50),
    ["yj_loadedfries"] = math.random(20, 30),
	["yj_porkcrack"] = math.random(20, 40),
	["yj_buritto"] = math.random(20, 40),
	["yj_english"] = math.random(20, 40),
	["yj_nuts"] = math.random(20, 40),
	["yj_terry"] = math.random(20, 40),
	["yj_xmasroast"] = math.random(30, 40),
	["yj_venisonburger"] = math.random(30, 40),
	
	-- Bahamas
	-- ["bm_bbqplatter"] = math.random(50, 55),
	-- ["bm_charcuterieboard"] = math.random(25, 35),
	-- ["bm_chickentenders"] = math.random(40, 45),
	-- ["bm_frenchfries"] = math.random(25, 35),
	-- ["bm_seafoodplatter"] = math.random(10, 25),
	
	-- Misc Saussie Sizzle items
	["snag"] = math.random(10, 25),
	["snagdeluxe"] = math.random(20, 35),
	["snagvegan"] = math.random(10, 25),
	["doritos"] = math.random(25, 35),
	
	-- Lowkey Ice Cream
	["lk-demon-time"] = math.random(25, 35),
	["lk-jinx-me-up"] = math.random(25, 35),
	["lk-mafia-madness"] = math.random(25, 35),
	["lk-make-it-rayna"] = math.random(25, 35),
	["lk-shhushhh"] = math.random(25, 35),
	["lk-breezy"] = math.random(25, 35),
	["lk-coldest"] = math.random(25, 35),
	["lk-henry"] = math.random(25, 35),
	["lk-vim"] = math.random(25, 35),
	["lk-mostack"] = math.random(25, 35),
	
	-- Bellas
	["bbc_appleturnover"] = math.random(25, 35),
	["bbc_baconeggpie"] = math.random(25, 35),
	["bbc_badmanspecial"] = math.random(25, 35),
	["bbc_bananabread"] = math.random(25, 35),
	["bbc_birthdaycake"] = math.random(25, 35),
	["bbc_boiluppie"] = math.random(25, 35),
	["bbc_chickenpie"] = math.random(25, 35),
	["bbc_chocolatecupcake"] = math.random(25, 35),
	["bbc_cinnamondonut"] = math.random(25, 35),
	["bbc_creamdonut"] = math.random(25, 35),
	["bbc_creamypauapie"] = math.random(25, 35),
	["bbc_croissants"] = math.random(25, 35),
	["bbc_custardtart"] = math.random(25, 35),
	["bbc_frenchstick"] = math.random(25, 35),
	["bbc_freshbread"] = math.random(25, 35),
	["bbc_highteadessert"] = math.random(25, 35),
	["bbc_highteasandwiches"] = math.random(25, 35),
	["bbc_highteascones"] = math.random(25, 35),
	["bbc_loihoosipie"] = math.random(25, 35),
	["bbc_lusipipie"] = math.random(25, 35),
	["bbc_mincecheesepie"] = math.random(25, 35),
	["bbc_mincepie"] = math.random(25, 35),
	["bbc_palusamipie"] = math.random(25, 35),
	["bbc_potatotoppie"] = math.random(25, 35),
	["bbc_redvelvetcupcake"] = math.random(25, 35),
	["bbc_sausagerolls"] = math.random(25, 35),
	["bbc_smokedfishpie"] = math.random(25, 35),
	["bbc_spinachtofupie"] = math.random(25, 35),
	["bbc_steakcheesepie"] = math.random(25, 35),
	["bbc_steakpie"] = math.random(25, 35),
	-- Bellas Halloween
	["bbc_hallo_ghost"] = math.random(25, 35),
	["bbc_hallo_pop"] = math.random(25, 35),
	["bbc_hallo_cupcake"] = math.random(25, 35),
	["bbc_hallo_megamon"] = math.random(25, 35),
	["bbc_hallo_tiprat"] = math.random(25, 35),
	-- Bellas Xmas
	["bbc_food_xmas_pav"] = math.random(25, 35),
	["bbc_food_xmas_frosty"] = math.random(25, 35),
	["bbc_food_xmas_holy"] = math.random(25, 35),
	["bbc_food_xmas_snowmelt"] = math.random(25, 35),
	["bbc_food_xmas_mrgrinch"] = math.random(25, 35),
	["bbc_food_xmas_olaf"] = math.random(25, 35),
	["bbc_food_xmas_rudolph"] = math.random(25, 35),
	-- Bellas Valentines
	["bbc_food_valentines_willyou"] = math.random(25, 35),	
	["bbc_food_valentines_efflove"] = math.random(25, 35),	
	["bbc_food_valentines_hfdcake"] = math.random(25, 35),	
	["bbc_food_valentines_lovebug"] = math.random(25, 35),	
	["bbc_food_valentines_bearwithme"] = math.random(25, 35),	
	["bbc_food_valentines_nsfw"] = math.random(25, 35),	
	["bbc_food_valentines_xoxoxo"] = math.random(25, 35),	
	["bbc_food_valentines_sweetnessbouquet"] = math.random(25, 35),
	
	-- BURGERSHOT
	["bs_kumarafries"] = math.random(25, 35),
	["bs_onionrings"] = math.random(25, 35),
	["bs_nuggies"] = math.random(25, 35),
	["bs_wangs"] = math.random(25, 35),
	["bs_salad"] = math.random(25, 35),
	["bs_curlyfries"] = math.random(25, 35),
	["bs_wafflefries"] = math.random(25, 35),
	["bs_chillifries"] = math.random(25, 35),
	["bs_classicburger"] = math.random(25, 35),
	["bs_cluckburger"] = math.random(25, 35),
	["bs_vburger"] = math.random(25, 35),
	["bs_lambburger"] = math.random(25, 35),
	["bs_fobburger"] = math.random(25, 35),
	["bs_lowcarbburger"] = math.random(25, 35),
	["bs_cacsundae"] = math.random(25, 35),
	["bs_flakesundae"] = math.random(25, 35),
	["bs_mandmsundae"] = math.random(25, 35),
	["bs_caramelsundae"] = math.random(25, 35),
	["bs_softserve"] = math.random(25, 35),
	["bs_softserve2"] = math.random(25, 35),
	["bs_secondbreakfast"] = math.random(25, 35),
	
	-- PACIFIC BLUFFS RESORT
	["pb_crayfish"] = math.random(25, 35),
	["pb_haupia"] = math.random(25, 35),
	["pb_kaluapork"] = math.random(25, 35),
	["pb_lomilomisalmon"] = math.random(25, 35),
	["pb_malasada"] = math.random(25, 35),
	["pb_manapua"] = math.random(25, 35),
	["pb_musubi"] = math.random(25, 35),
	["pb_oysters"] = math.random(25, 35),
	["pb_seafoodpasta"] = math.random(25, 35),
	["pb_creamypaua"] = math.random(25, 35),
	["pb_frybread"] = math.random(25, 35),
	["pb_kinatoast"] = math.random(25, 35),
	["pb_seafoodchowder"] = math.random(25, 35),
}

ConsumablesDrink = {
    ["water_bottle"] = math.random(10, 15),
    ["bluev"] = math.random(10, 15),
    ["coffee"] = math.random(10, 15),
	["sumodemaca"] = math.random(10, 15),
    ["sumodemorango"] = math.random(10, 15),
    ["sumodelaranja"] = math.random(10, 15),
    ["sumodelaranjaemorango"] = math.random(10, 15),
    ["leite"] = math.random(10, 15),
    ["lnp"] = math.random(10, 15),
    ["apple_juice"] = math.random(25, 45),
    ["grapejuice"] = math.random(25, 45),
    ["hotsauce"] = math.random(10, 15),
    ["mtndew"] = math.random(25, 38),
	["sprite"] = math.random(20, 30),
	["fanta"] = math.random(20, 30),
	["gfuel_dragon"] = math.random(25, 35),
	["prime_icepop"] = math.random(25, 35),
	-- HALLOWEEN
	["hallo_mtdewcan"] = math.random(25, 35),
	["hallo_cokecan"] = math.random(25, 35),
	["hallo_pumpkinspice"] = math.random(25, 35),
	-- XMAS
	["xmas_eggnog"] = math.random(25, 35),

-- Mirror Restaurant Drinks
	["bluetaxi"] = math.random(40, 50),
	["colagp"] = math.random(40, 50),
	["grapejuicegp"] = math.random(40, 50),
	["orangestars"] = math.random(40, 50),	
	["orangetaxi"] = math.random(40, 50),	
	["passionfruitstars"] = math.random(40, 50),
	["starsfeijoa"] = math.random(40, 50),
	["raspberrytaxi"] = math.random(40, 50),	
	
-- Yellowjack
	["yj_drink_coke"] = math.random(25, 35),
	["yj_raro"] = math.random(40, 50),

-- Lowkey Ice Cream
	["lk-dutch"] = math.random(25, 38),
	["lk-10-4"] = math.random(25, 38),
	["lk-alta-ego"] = math.random(25, 38),
	["lk-skull-it-gavin"] = math.random(25, 38),
	["lk-spider-homes"] = math.random(25, 38),
	["lk-yazssirrr"] = math.random(25, 38),
	["lk-ganggang"] = math.random(25, 38),
	["lk-golden"] = math.random(25, 38),
	["lk-swarvay"] = math.random(25, 38),

-- Bellas
	["bbc_drinks_appleamore"] = math.random(25, 38),
	["bbc_drinks_blacktea"] = math.random(25, 38),
	["bbc_drinks_caramelfrappuccino"] = math.random(25, 38),
	["bbc_drinks_chocolatefrappuccino"] = math.random(25, 38),
	["bbc_drinks_espresso"] = math.random(25, 38),
	["bbc_drinks_flatwhite"] = math.random(25, 38),
	["bbc_drinks_greentea"] = math.random(25, 38),
	["bbc_drinks_grindinggrape"] = math.random(25, 38),
	["bbc_drinks_hightea"] = math.random(25, 38),
	["bbc_drinks_hotchocolate"] = math.random(25, 38),
	["bbc_drinks_icedchocolate"] = math.random(25, 38),
	["bbc_drinks_icedcoffee"] = math.random(25, 38),
	["bbc_drinks_latte"] = math.random(25, 38),
	["bbc_drinks_mangootai"] = math.random(25, 38),
	["bbc_drinks_milktea"] = math.random(25, 38),
	["bbc_drinks_mocha"] = math.random(25, 38),
	["bbc_drinks_orangeoppa"] = math.random(25, 38),
	["bbc_drinks_pineapplepapi"] = math.random(25, 38),
	["bbc_drinks_twerkingtropical"] = math.random(25, 38),
	["bbc_drinks_watermelonotai"] = math.random(25, 38),
	-- Bellas Halloween
	["bbc_drinks_hallo_bloodbrew"] = math.random(25, 38),
	["bbc_drinks_hallo_poison"] = math.random(25, 38),
	["bbc_drinks_hallo_potion"] = math.random(25, 38),
	-- Bellas Xmas
	["bbc_drinks_xmas_grinchbew"] = math.random(25, 38),
	["bbc_drinks_xmas_nandn"] = math.random(25, 38),
	["bbc_drinks_xmas_peppunch"] = math.random(25, 38),
	["bbc_drinks_xmas_santa"] = math.random(25, 38),
	["bbc_drinks_xmas_warmhugs"] = math.random(25, 38),
	-- Bellas Valentines
	["bbc_drinks_valentines_friendzoned"] = math.random(25, 38),
	["bbc_drinks_valentines_lovepotion"] = math.random(25, 38),
	["bbc_drinks_valentines_hotchoc"] = math.random(25, 38),

	-- BURGERSHOT
	["bs_coke"] = math.random(25, 38),
	["bs_fanta"] = math.random(25, 38),
	["bs_sprite"] = math.random(25, 38),
	["bs_lnp"] = math.random(25, 38),
	["bs_pasito"] = math.random(25, 38),
	["bs_grape"] = math.random(25, 38),
	["bs_raspberrylemonade"] = math.random(25, 38),
	["bs_frozencoke"] = math.random(25, 38),
	["bs_frozenfanta"] = math.random(25, 38),
	["bs_frozenraspberry"] = math.random(25, 38),
	["bs_cthickshake"] = math.random(25, 38),
	["bs_sthickshake"] = math.random(25, 38),
	["bs_lthickshake"] = math.random(25, 38),
	["bs_carthickshake"] = math.random(25, 38),
	["bs_cacthickshake"] = math.random(25, 38),
	["bs_cokespider"] = math.random(25, 38),
	
	-- PACIFIC BLUFFS RESORT
	["pb_bluehawaii"] = math.random(25, 38),
	["pb_guava"] = math.random(25, 38),
	["pb_icedtea"] = math.random(25, 38),
	["pb_lilikoi"] = math.random(25, 38),
	["pb_maitai"] = math.random(25, 38),
	["pb_mauiislandbreeze"] = math.random(25, 38),
	["pb_passoguava"] = math.random(25, 38),
	["pb_pineappleorange"] = math.random(25, 38),
	
}

-- KRP CUSTOM START
ConsumablesMeals = {
    ["bs_cjspecial"] = math.random(40, 50),
	["bs_fishburger"] = math.random(40, 50),
	["bs_kidsmeal"] = math.random(40, 50),
	["bs_tayskimeal"] = math.random(40, 50),
}
-- KRP CUSTOM END

ConsumablesAlcohol = {
    ["whiskey"] = math.random(10, 15),
    ["beer"] = math.random(10, 15),
    ["vodka"] = math.random(10, 15),
	--Mirror Restaurant booze
	["applesour"] = math.random(20, 30),
	["greygoose"] = math.random(20, 30),
	["kava"] = math.random(20, 30),
	["moscato"] = math.random(20, 30),	
	["sdoubleblack"] = math.random(20, 30),	
	["sraspberry"] = math.random(20, 30),	
	["taula"] = math.random(20, 30),
	["vailima"] = math.random(20, 30),	
	["xohenny"] = math.random(20, 30),	
	["longwhiteraspberry"] = math.random(20, 30),	
	["longwhitesapple"] = math.random(20, 30),	
	-- Yellowjack
	["yj_bigbotlion"] = math.random(20, 30),
    ["yj_bigbotwaikato"] = math.random(20, 30),
    ["yj_bigbottui"] = math.random(20, 30),
	["yj_codys"] = math.random(30, 40),
    ["yj_cruiser"] = math.random(30, 40),
    ["yj_wine"] = math.random(30, 40),
	["yj_hein"] = math.random(30, 40),
	["yj_longwhite"] = math.random(30, 40),
	["yj_corona"] = math.random(30, 40),
	["yj_guinness"] = math.random(30, 40),
	["yj_hotcoco"] = math.random(30, 40),
	-- Bahama
	-- ["bm_bloodymary"] = math.random(20, 30),
	-- ["bm_cosmopolitan"] = math.random(20, 30),
	-- ["bm_darknstormy"] = math.random(20, 30),
	-- ["bm_longislandicedtea"] = math.random(20, 30),
	-- ["bm_martini"] = math.random(20, 30),
	-- ["bm_mimosa"] = math.random(20, 30),
	-- ["bm_mintjulep"] = math.random(20, 30),
	-- ["bm_moscowmule"] = math.random(20, 30),
	-- ["bm_oldfashioned"] = math.random(20, 30),
	-- ["bm_pinacalada"] = math.random(20, 30),
	-- ["bm_screwdriver"] = math.random(20, 30),
	-- ["bm_strawberrymagarita"] = math.random(20, 30),
	-- ["bm_tequilasunrise"] = math.random(20, 30),
	-- Bahama Halloween
	-- ["bm_h_bloodyshake"] = math.random(20, 30),
	-- ["bm_h_eyeballjelly"] = math.random(20, 30), 	
	-- ["bm_h_jackolantern"] = math.random(20, 30), 
	-- ["bm_h_killerjello"] = math.random(20, 30), 
	-- ["bm_h_radioactive"] = math.random(20, 30),
	-- ["bm_h_redskull"] = math.random(20, 30),
	-- ["bm_h_rip"] = math.random(20, 30),
	-- ["bm_h_vampirekiss"] = math.random(20, 30),
	
	--Bellas Valentines
	["bbc_drinks_valentines_bubblybouquet"] = math.random(25, 38),
	
	--PACIFIC BLUFFS RESORT
	["pb_hightide"] = math.random(25, 38),
	["pb_hightide"] = math.random(25, 38),

}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
		"WORLD_VEHICLE_FIRE_TRUCK",
		"WORLD_VEHICLE_HELI_LIFEGUARD",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

-- DON'T REMOVE FROM HERE PLEASE!
Config.BlacklistedVehs = {
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
	[`RIPLEY`] = true,
    [`FIRETRUK`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
	[`BLIMP2`] = true,
    [`BLIMP3`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = false,
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = false,
    [`ruiner2`] = true,
    [`deluxo`] = true,
	[`BARRACKS`] = true,
	[`BARRACKS2`] = true,
	[`BARRACKS3`] = true,
	[`CRUSADER`] = true,
	[`CARGOBOB`] = true,
	[`CARGOBOB2`] = true,
	[`CARGOBOB3`] = true,
	[`CARGOBOB4`] = true,
	[`CUTTER`] = true,
	[`HANDLER`] = true,
	[`BESRA`] = true,
	[`THRUSTER`] = true
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
	-- B.S Associates Lawyer Office
    [2] = {
        [1] = {
            coords = vector4(-1581.06, -558.56, 34.95, 213.22),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter B.S Associates'
        },
        [2] = {
            coords = vector4(-1584.05, -559.84, 108.52, 302.61),
            ["AllowVehicle"] = false,
            drawText = '[E] Exit B.S Associates'
        },

    },
	[3] = {
        [1] = {
            coords = vector4(-1539.09, -574.94, 25.71, 34.14),
            ["AllowVehicle"] = false,
            drawText = '[E] To B.S Associates Lobby'
        },
        [2] = {
            coords = vector4(-1581.49, -557.74, 108.52, 128.51),
            ["AllowVehicle"] = false,
            drawText = '[E] To Staff Parking'
        },

    },
	-- Manaaki-Community
    [4] = {
        [1] = {
            coords = vector4(-47.71, -585.91, 37.95, 71.66),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Manaaki Community Center'
        },
        [2] = {
            coords = vector4(-18.63, -591.56, 90.11, 340.1),
            ["AllowVehicle"] = false,
            drawText = '[E] Exit Manaaki Community Center'
        },

    },
	-- Maze tower TP
    [5] = {
        [1] = {
            coords = vector4(-66.65, -802.61, 44.23, 153.58),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(-75.23, -824.98, 321.29, 153.9),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
	-- Mirror Restaurant
    [6] = {
        [1] = {
            coords = vector4(-1344.13, -1055.35, 11.47, 30.63),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Elevator'
        },
        [2] = {
            coords = vector4(-1344.11, -1055.3, 19.95, 27.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
    [7] = {
        [1] = {
            coords = vector4(-1311.86, -1032.71, 12.47, 23.88),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter VIP Elevator'
        },
        [2] = {
            coords = vector4(-1313.09, -1025.2, 26.88, 207.62),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
	-- Casino/Rooftop bar
	[8] = {
        [1] = {
            coords = vector4(976.42, 33.99, 70.83, 11.73),
            ["AllowVehicle"] = false,
            drawText = '[E] Rooftop Lounge'
        },
        [2] = {
            coords = vector4(965.1, 58.47, 112.55, 63.09),
            ["AllowVehicle"] = false,
            drawText = '[E] Casino'
        },
    },
	-- Casino Boss Lift
	[9] = {
        [1] = {
            coords = vector4(983.44, 56.6, 116.16, 146.3),
            ["AllowVehicle"] = false,
            drawText = '[E] Casino Office'
        },
        [2] = {
            coords = vector4(976.63, 72.5, 75.43, 147.33),
            ["AllowVehicle"] = false,
            drawText = '[E] Penthouse'
        },
    },
	-- Recording Studio
	[10] = {
        [1] = {
            coords = vector4(-1016.13, -265.63, 39.04, 53.53),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Studio'
        },
        [2] = {
            coords = vector4(-1021.77, -92.67, -99.4, 354.44),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave Studio (Temp)'
        },
    },
	-- Temp loyalty TP
	[11] = {
        [1] = {
            coords = vector4(-803.57, -224.16, 37.23, 117.22),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Loyalty'
        },
        [2] = {
            coords = vector4(-799.94, -222.06, 37.15, 296.28),
            ["AllowVehicle"] = false,
            drawText = '[E] Exit Loyalty (Temp)'
        },
    },
}

--KRP CUSTOM START
Config.EMSTeleports = {
    -- Main lobby lift to ward floor
    [1] = {
        [1] = {
            coords = vector4(-452.33, -288.38, 34.95, 111.29),
            ["AllowVehicle"] = false,
            drawText = '[E] Ward Reception'
        },
        [2] = {
            coords = vector4(-490.58, -327.39, 69.51, 168.24),
            ["AllowVehicle"] = false,
            drawText = '[E] ER Lobby'
        },
    },
	-- ward floor to heli
    [2] = {
        [1] = {
            coords = vector4(-493.56, -326.9, 69.51, 204.43),
            ["AllowVehicle"] = false,
            drawText = '[E] Helipad'
        },
        [2] = {
            coords = vector4(-449.54, -338.7, 78.31, 263.49),
            ["AllowVehicle"] = false,
            drawText = '[E] Ward Reception'
        },
    },
	-- PALETO TO MT ZONAH
	[3] = {
        [1] = {
            coords = vector4(-262.59, 6312.62, 32.43, 292.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Mt Zonah Hosptial'
        },
        [2] = {
            coords = vector4(-443.1, -309.68, 34.91, 196.6),
            ["AllowVehicle"] = false,
            drawText = '[E] Paleto Hospital'
        },
    },
}

Config.PoliceTeleports = {
    -- Vinewood to Paleto
    -- [1] = {
        -- [1] = {
            -- coords = vector4(600.15, -6.63, 87.82, 251.83),
            -- ["AllowVehicle"] = false,
            -- drawText = '[E] Paleto PD'
        -- },
        -- [2] = {
            -- coords = vector4(-442.49, 6009.41, 31.74, 229.36),
            -- ["AllowVehicle"] = false,
            -- drawText = '[E] Vinewood PD'
        -- },
    -- },
	
	-- MRPD to Paleto
	[1] = {
        [1] = {
            coords = vector4(432.43, -982.38, 31.03, 266.51),
            ["AllowVehicle"] = false,
            drawText = '[E] Paleto PD'
        },
        [2] = {
            coords = vector4(-437.13, 6005.01, 31.72, 318.42),
            ["AllowVehicle"] = false,
            drawText = '[E] Mission Row PD'
        },
    },
	-- MRPD to basement
	[2] = {
        [1] = {
            coords = vector4(440.37, -980.89, 21.56, 175.87),
            ["AllowVehicle"] = false,
            drawText = '[E] To Lobby'
        },
        [2] = {
            coords = vector4(450.25, -974.49, 31.03, 186.0),
            ["AllowVehicle"] = false,
            drawText = '[E] To Basement Carpark'
        },
    },
	-- MRPD to upstairs
	[3] = {
        [1] = {
            coords = vector4(453.36, -974.41, 31.03, 184.34),
            ["AllowVehicle"] = false,
            drawText = '[E] To Level 1'
        },
        [2] = {
            coords = vector4(450.33, -974.62, 35.8, 176.11),
            ["AllowVehicle"] = false,
            drawText = '[E] To Lobby'
        },
    },
	-- MRPD to roof
	[4] = {
        [1] = {
            coords = vector4(453.42, -974.26, 35.8, 176.94),
            ["AllowVehicle"] = false,
            drawText = '[E] To Roof'
        },
        [2] = {
            coords = vector4(462.56, -995.06, 44.96, 89.88),
            ["AllowVehicle"] = false,
            drawText = '[E] To Level 1'
        },
    },
}
-- KRP CUSTOM END

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [6] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    },
	[7] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(576.28, 2750.57, 41.96),
    }
}
