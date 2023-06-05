-- Emotes you add in the file will automatically be added to AnimationList.lua
-- If you have multiple custom list files they MUST be added between AnimationList.lua and Emote.lua in fxmanifest.lua!
-- Don't change 'CustomDP' it is local to this file!

local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
CustomDP.Dances = {
	-- ["woowalk"] = {"div@woowalk@test", "woowalk", "Woo Walk", AnimationOptions = {
       -- EmoteLoop = true
   -- }},
   ["drilldance"] = {"div@woowalk@test", "drilldance", "Drill Dance", AnimationOptions = {
       EmoteLoop = true
   }},
   -- ["cripwalk2"] = {"div@woowalk@test", "cripwalk2", "Crip Walk", AnimationOptions = {
       -- EmoteLoop = true
   -- }},
   ["sturdy2"] = {"div@woowalk@test", "sturdy2", "Get Sturdy", AnimationOptions = {
       EmoteLoop = true
   }},
   -- ["bloodwalk2"] = {"div@woowalk@test", "bloodwalk2", "Blood Walk", AnimationOptions = {
       -- EmoteLoop = true
   -- }},
   ["blixkytwirl2"] = {"div@woowalk@test", "blixkytwirl2", "Blixky Twirl", AnimationOptions = {
       EmoteLoop = true
   }},
   ["catdaddy"] = {"div@woowalk@test", "catdaddy", "Cat Daddy", AnimationOptions = {
       EmoteLoop = true
   }},
   ["popdance"] = {"div@woowalk@test", "popdance", "Pop Smoke Dance", AnimationOptions = {
       EmoteLoop = true
   }},
   ["toprock"] = {"div@woowalk@test", "toprock", "Toprock", AnimationOptions = {
       EmoteLoop = true
   }},
   ["ymcadance"] = {"tigerle@custom@dance@ymca", "tigerle_dance_ymca", "YMCA Dance", AnimationOptions = {
       EmoteLoop = true,
       EmoteMoving = false,
   }},
   ["macarena"] = {"tigerle@custom@dance@macarena", "tigerle_dance_macarena", "Macarena", AnimationOptions = {
       EmoteLoop = true,
       EmoteMoving = false,
   }}, 
   ["woowalkinx"] = {"divined@rpack@new", "woowalkinx", "Woo Walk", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["bloodwalk"] = {"divined@rpack@new", "bloodwalk", "Blood Walk", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["cripwalk3"] = {"divined@rpack@new", "cripwalk3", "Crip Walk", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["shootit"] = {"divined@rpack@new", "shootit", "Shoot Dance", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["millyrocks"] = {"divined@rpack@new", "millyrocks", "Milly Rock", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["shmoney"] = {"divined@rpack@new", "shmoney", "Shmoney Dance", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["dougie"] = {"divined@rpack@new", "dougie", "Dougie", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["haiphuthon"] = {"divined@rpack@new", "haiphuthon", "Haiphuthon Tiktok", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["curvette"] = {"divined@rpack@new", "curvette", "Curvette", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["tokyochall"] = {"divined@rpack@new", "tokyochall", "Tokyo Challenge Tiktok", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["thotiana"] = {"divined@rpack@new", "thotiana", "Thotiana Tiktok", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["moodswings"] = {"divined@rpack@new", "moodswings", "Moodswings Dance Tiktok", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["whatyouknowboutlove"] = {"divined@rpack@new", "whatyouknowboutlove", "Pop Love Tiktok", AnimationOptions =
   {
       EmoteLoop = true
   }}, 
}
CustomDP.AnimalEmotes = {}
CustomDP.Exits = {}
CustomDP.Emotes = {
	["mgangsign_2"] = {"mikey@gangsigns@new", "mgangsign_2", "Gangsign 2", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
   ["mgangsign_3"] = {"mikey@gangsigns@new", "mgangsign_3", "Gangsign 3", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
   ["mgangsign_4"] = {"mikey@gangsigns@new", "mgangsign_4", "Gangsign 4", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
   ["mgangsign_5"] = {"mikey@gangsigns@new", "mgangsign_5", "Gangsign 5", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
   ["mgangsign_6"] = {"mikey@gangsigns@new", "mgangsign_6", "Gangsign 6", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
   ["mgangsign_7"] = {"mikey@gangsigns@new", "mgangsign_7", "Gangsign 7", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
   ["mgangsign_8"] = {"mikey@gangsigns@new", "mgangsign_8", "Gangsign 8", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
   ["mgangsign_9"] = {"mikey@gangsigns@new", "mgangsign_9", "Gangsign 9", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
   ["mgangsign_10"] = {"mikey@gangsigns@new", "mgangsign_10", "Gangsign 10", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
		["jgp1"] = {"josh@179@gangposepack@v4_anim01", "josh@179@gangposepackv4_ca1", "Gang Pose 1", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp2"] = {"josh@179@gangposepack@v4_anim03", "josh@179@gangposepackv4_ca3", "Gang Pose 2", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp3"] = {"josh@179@gangposepack@v4_anim05", "josh@179@gangposepackv4_ca5", "Gang Pose 3", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp4"] = {"josh@179@gangposepack@v4_anim06", "josh@179@gangposepackv4_ca6", "Gang Pose 4", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp5"] = {"josh@179@gangposepack@v4_propsanim01", "josh@179@gangposepackv4_pca1", "Gang Pose 5", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
		Prop = "prop_bskball_01",
		PropBone = 60309,
		PropPlacement = {0.0600, -0.0090, 0.1300, 0.0, 0.0, 0.0},
	}},
	["jgp6"] = {"jb179_gangposepackv4@anim003", "jb179gangposev4_c003", "Gang Pose 6", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp7"] = {"jb179_gangposepackv4@anim002", "jb179gangposev4_c002", "Gang Pose 7", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp8"] = {"jb179_gangposepackv4@anim001", "jb179gangposev4_c001", "Gang Pose 8", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp9"] = {"josh@179@gangposepack@v4_anim08", "josh@179@gangposepackv4_ca8", "Gang Pose 9", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp10"] = {"josh@179@gangposepack@v4_anim09", "josh@179@gangposepackv4_ca9", "Gang Pose 10", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp11"] = {"josh@179@gangposepack@v4_anim10", "josh@179@gangposepackv4_ca10", "Gang Pose 11", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp12"] = {"josh@179@gangposepack@v4_anim11", "josh@179@gangposepackv4_ca11", "Gang Pose 12", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
	}},
	["jgp13"] = {"jb179_customgangposev4@anim4", "jb179_cgp@an4", "Gang Pose 13", AnimationOptions =
	{
		EmoteLoop = true,
		EmoteMoving = false,
		Prop = "prop_bskball_01",
		PropBone = 31086,
		PropPlacement = {-0.7970, 0.1290, -0.0110, 0.0030, -180.0, -180.0}, 
	}},
   ["josh1"] = {"joshworks@hand_anim2", "josh_hand_clip2", "Gang 1", AnimationOptions =
   {
       EmoteMoving = true,    
   }},
   ["josh2"] = {"joshworks@hand_anim3", "josh_hand_clips3", "Gang 2", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh3"] = {"joshsworks@hand_anim4", "josh_hand_clip4", "Gang 3", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh4"] = {"joshworks@hand_anim5", "josh_hand_clip5", "Gang 4", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh5"] = {"joshworks@hand_anim6", "josh_hand_clip6", "Gang 5", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh6"] = {"joshworks@hand_anim7", "josh_hand_clip7", "Gang 6", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh7"] = {"joshworks@hand_anim8", "josh_hand_clip8", "Gang 7", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh8"] = {"joshworks@hand_anim9", "josh_hand_clip9", "Gang 8", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh9"] = {"joshworks@hand_anim1", "josh_hand_clip1", "Gang 9", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh10"] = {"joshworks@hand_anim10", "josh_hand_clip10", "Gang 10", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh11"] = {"joshworks@hand_anim11", "josh_hand_clip11", "Gang 11", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh12"] = {"joshworks@hand_anim12", "josh_hand_clip12", "Gang 12", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh13"] = {"joshworks@hand_anim13", "josh_hand_clip13", "Gang 13", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh14"] = {"joshworks@hand_anim14", "josh_hand_clip14", "Gang 14", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh15"] = {"joshworks@hand_anim15", "josh_hand_clip15", "Gang 15", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh16"] = {"joshworks@hand_anim16", "josh_hand_clip16", "Gang 16", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh17"] = {"joshworks@hand_anim18", "josh_hand_clip18", "Gang 17", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh18"] = {"joshworks@hand_anim19", "josh_hand_clip19", "Gang 18", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh19"] = {"joshworks@hand_anim21", "josh_hand_clip21", "Gang 19", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["josh20"] = {"joshworks@hand_anim22", "josh_hand_clip22", "Gang 20", AnimationOptions =
   {
       EmoteMoving = true,
   }},
    ["v2p"] = {"joshworksv2@gang_pose1", "gangposev2c_1", "Gang Pose 1", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},
   ["v3p"] = {"joshworksv2@gang_pose2", "gangposev2c_2", "Gang Pose 2", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},
   ["v4p"] = {"joshworksv2@gang_pose3", "gangposev2c_3", "Gang Pose 3", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},
   ["v5p"] = {"joshworksv2@gang_pose4", "gangposev2c_4", "Gang Pose 4", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},
   ["v6p"] = {"joshworksv2@gang_pose5", "gangposev2c_5", "Gang Pose 5", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},
   ["v7p"] = {"joshworksv2@gang_pose06", "gangposev2c_06", "Gang Pose 6 ", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
   }},
   ["v8p"] = {"joshworksv2@gang_pose7", "gangposev2c_7", "Gang Pose 7", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = "xs_prop_arena_cash_pile_m",
       PropBone = 60309,
       PropPlacement = {0.08, 0.03, 0.010, -33.5, 0.0, 50.5},
   }},
   ["v9p"] = {"joshworksv2@gang_pose8", "gangposev2c_8", "Gang Pose 8", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = "prop_amb_beer_bottle",
       PropBone = 60309,
       PropPlacement = {0.0630, 0.0320, 0.0360, -120.5, -20.0, 0.5},
   }},
   ["v10p"] = {"joshworksv2@gang_pose9", "gangposev2c_9", "Gang Pose 9", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = "prop_cash_pile_02",
       PropBone = 28422,
       PropPlacement = {0.0560, 0.0040, -0.0300, 15.61, -5.9, -30.0},
   }},
   ["v11p"] = {"joshworksv2@gang_pose09", "gangposev2c_09", "Gang Pose 10", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = "w_pi_pistol",
       PropBone = 28422,
       PropPlacement = {0.1150, 0.0190, -0.0090, -75.18, 0.8, -10.0},
   }},
   ["v12p"] = {"joshworksv2@gang_pose010", "gangposev2c_010", "Gang Pose 11", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
   }},
   ["jv3p1"] = {"jb179_gangposepack@v3_prop_anims1", "gangposev3c_props_1", "V3 - Gang Pose 1", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = "ba_prop_club_tonic_bottle",
       PropBone = 60309,
       PropPlacement = {0.0300, 0.0100, 0.3050, -2.20, 169.9, -25.7},       
   }},
   ["jv3p2"] = {"jb179_gangposepack@v3_prop_anims3", "gangposev3c_props_3", "V3 - Gang Pose 2", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = "w_pi_appistol",
       PropBone = 28422,
       PropPlacement = {0.1150, 0.0240, -0.0200, -58.0002, 8.3, 1.5},         
   }},
   ["jv3p3"] = {"jb179_gangposepack@v3_prop_anims2", "gangposev3c_props_2", "V3 - Gang Pose 3", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = "xs_prop_arena_cash_pile_l",
       PropBone = 28422,
       PropPlacement = {0.0659, 0.0101, -0.0360, -30.1800, 40.1430, 100.4220},       
   }},
   ["jv3p4"] = {"jb179_gangposepack@v3_prop_anims4", "gangposev3c_props_4", "V3 - Gang Pose 4", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true, 
       Prop = "h4_prop_h4_pumpshotgunh4",
       PropBone = 28422,
       PropPlacement = {0.0880, 0.0680, -0.0030, -75.1800, -12.1430, 3.4220},     
   }},
   ["jv3p5"] = {"jb179_gangposepack@v3_prop_anims5", "gangposev3c_props_5", "V3 - Gang Pose 5", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,
       Prop = "prop_bskball_01",
       PropBone = 28422,
       PropPlacement = {0.0300, -0.0090, -0.1200, 0.0, 0.0, 0.0},       
   }},
   ["jv3p6"] = {"jb179_gangposepack@v3_static_anims1", "gangposev3c_static_1", "V3 - Gang Pose 6", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},
   ["jv3p7"] = {"jb179_gangposepack@v3_static_anims2", "gangposev3c_static_2", "V3 - Gang Pose 7", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},
   ["jv3p8"] = {"jb179_gangposepack@v3_static_anims3", "gangposev3c_static_3", "V3 - Gang Pose 8", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},
   ["jv3p9"] = {"jb179_gangposepack@v3_static_anims4", "gangposev3c_static_4", "V3 - Gang Pose 9", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},
   ["jv3p10"] = {"jb179_gangposepack@v3_static_anims5", "gangposev3c_static_5", "V3 - Gang Pose 10", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteLoop = true,  
   }},    
   ["mgangsign_11"] = {"mikey@gangsigns@new", "mgangsign_11", "Gangsign 11", AnimationOptions =
   {
       EmoteLoop = true,
	   EmoteMoving = true,
   }},
   ["hump"] = { "timetable@trevor@skull_loving_bear", "skull_loving_bear", "Hump", AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,

    } },
}
CustomDP.PropEmotes = {
-- KRP CUSTOM START (XMAS USE - m-christmas script)
	-- ["giftbox1"] = {"bz@give_love@anim", "bz_give", "Giftbox1", AnimationOptions = {
            -- Prop = "mscripts_gift_box_a",
            -- PropBone = 57005,
            -- PropPlacement = {0.15, -0.08, -0.08, -60.0, -120.0, 40.0},
            -- EmoteLoop = true,
            -- EmoteMoving = true,
    -- } },
    -- ["giftbox2"] = {"anim@heists@box_carry@", "idle", "Giftbox2", AnimationOptions = {
            -- Prop = "mscripts_gift_box_b",
            -- PropBone = 57005,
            -- PropPlacement = {0.15, -0.08, -0.08, -60.0, -120.0, 40.0},
            -- EmoteLoop = true,
            -- EmoteMoving = true,
    -- } },
    -- ["giftbox3"] = {"anim@heists@box_carry@", "idle", "Giftbox3", AnimationOptions = {
            -- Prop = "mscripts_gift_box_c",
            -- PropBone = 57005,
            -- PropPlacement = {0.15, -0.08, -0.08, -60.0, -120.0, 40.0},
            -- EmoteLoop = true,
            -- EmoteMoving = true,
    -- } },
	-- KRP CUSTOM END
}

-----------------------------------------------------------------------------------------
--| I don't think you should change the code below unless you know what you are doing |--
-----------------------------------------------------------------------------------------

-- Add the custom emotes to RPEmotes main array
for arrayName, array in pairs(CustomDP) do
    if RP[arrayName] then
        for emoteName, emoteData in pairs(array) do
            RP[arrayName][emoteName] = emoteData
        end
    end
    -- Free memory
    CustomDP[arrayName] = nil
end
-- Free memory
CustomDP = nil
