Config = {}

Config.Debug = false

Config.ClothingCost = 100
Config.BarberCost = 500
Config.TattooCost = 1000
Config.SurgeonCost = 200000

Config.ChargePerTattoo = false -- Charge players per tattoo. Config.TattooCost will become the cost of 1 tattoo. The cost can be overridden by adding `cost` key in shared/tattoos.lua for specific tattoos

-- Only set this to true if you're using rcore_tattoos
Config.RCoreTattoosCompatibility = true

Config.AsynchronousLoading = false -- Change this to false if you want the NUI data to load before displaying the appearance UI

Config.TextUIOptions = {
    position = "left-center"
}

Config.NotifyOptions = {
    position = "top-right"
}

Config.OutfitCodeLength = 10

Config.UseTarget = true -- Cannot have Target and radial enabled, one or the other
Config.UseRadialMenu = false -- Cannot have Target and radial enabled, one or the other
Config.UseOxRadial = false -- Set to true to use ox_lib radial menu, both this and UseRadialMenu must be true 

Config.EnablePedsForShops = false
Config.EnablePedsForClothingRooms = false
Config.EnablePedsForPlayerOutfitRooms = false

Config.EnablePedMenu = true
Config.PedMenuGroup = "group.admin"

Config.ShowNearestShopOnly = false
Config.HideRadar = true -- Hides the minimap while the appearance menu is open
Config.NearestShopBlipUpdateDelay = 10000

Config.InvincibleDuringCustomization = true

Config.PreventTrackerRemoval = true -- Disables "Scarf and Chains" section if the player has tracker

Config.NewCharacterSections = {
    Ped = true,
    HeadBlend = true,
    FaceFeatures = true,
    HeadOverlays = true,
    Components = true,
    Props = true,
    Tattoos = false
}

Config.GenderBasedOnPed = true

Config.AlwaysKeepProps = false

Config.PersistUniforms = true -- Keeps Job / Gang Outfits on player reconnects / logout
Config.OnDutyOnlyClothingRooms = false -- Set to `true` to make the clothing rooms accessible only to players who are On Duty

Config.BossManagedOutfits = true -- Allows Job / Gang bosses to manage their own job / gang outfits

Config.ReloadSkinCooldown = 10000

Config.AutomaticFade = false -- Enables automatic fading and hides the Fade section from Hair

-- ACE Permissions Config
Config.EnableACEPermissions = true
Config.ACEResetCooldown = 5000
Config.ACEListCooldown = 60 * 60 * 1000 -- 1 Hour

Config.DisableComponents = {
    Masks = false,
    UpperBody = false,
    LowerBody = false,
    Bags = false,
    Shoes = false,
    ScarfAndChains = false,
    BodyArmor = false,
    Shirts = false,
    Decals = false,
    Jackets = false
}

Config.DisableProps = {
    Hats = false,
    Glasses = false,
    Ear = false,
    Watches = false,
    Bracelets = false
}

Config.Blips = {
    ["clothing"] = {
        Show = true,
        Sprite = 366,
        Color = 47,
        Scale = 0.5,
        Name = "Clothing Store",
    },
	["clothingnoblip"] = {
        Show = false,
        Sprite = 366,
        Color = 1,
        Scale = 0.5,
        Name = "Job Clothing",
    },
    ["barber"] = {
        Show = true,
        Sprite = 71,
        Color = 0,
        Scale = 0.6,
        Name = "Barber",
    },
    ["tattoo"] = {
        Show = true,
        Sprite = 75,
        Color = 4,
        Scale = 0.6,
        Name = "Tattoo Shop",
    },
    ["surgeon"] = {
        Show = true,
        Sprite = 102,
        Color = 4,
        Scale = 0.7,
        Name = "Plastic Surgeon",
    }
}

Config.TargetConfig = {
    ["clothing"] = {
        model = "s_f_m_shop_high",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-tshirt",
        label = "Open Clothing Store",
        distance = 3
    },
    ["barber"] = {
        model = "s_m_m_hairdress_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scissors",
        label = "Open Barber Shop",
        distance = 3
    },
    ["tattoo"] = {
        model = "u_m_y_tattoo_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-pen",
        label = "Open Tattoo Shop",
        distance = 3
    },
    ["surgeon"] = {
        model = "s_m_m_doctor_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scalpel",
        label = "Open Surgeon",
        distance = 3
    },
    ["clothingroom"] = {
        model = "s_f_m_shop_high",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Open Job / Gang Clothes Menu",
        distance = 3
    },
    ["playeroutfitroom"] = {
        model = "s_f_m_shop_high",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Open Outfits Menu",
        distance = 3
    },
}

Config.Stores = {
    {-- 2010 (clothing)
        type = "clothing", 
        coords = vector4(1693.2, 4828.11, 42.07, 188.66),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true, -- false => uses the size + rotation to create the zone | true => uses points to create the zone
        showBlip = true, -- overrides the blip visibilty configured above for the group
        --targetModel = "s_m_m_doctor_01", -- overrides the target ped configured for the group
        --targetScenario = "" -- overrides the target scenario configure for the group
        points = {
            vector3(1686.9018554688, 4829.8330078125, 42.07),
            vector3(1698.8566894531, 4831.4604492188, 42.07),
            vector3(1700.2448730469, 4817.7734375, 42.07),
            vector3(1688.3682861328, 4816.2954101562, 42.07)
        }
    },
    {-- 7228 (clothing)
        type = "clothing",
        coords = vector4(-708.24, -154.55, 37.42, 108.52),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-719.86212158203, -147.83151245117, 37.42),
            vector3(-709.10491943359, -141.53076171875, 37.42),
            vector3(-699.94342041016, -157.44494628906, 37.42),
            vector3(-710.68774414062, -163.64665222168, 37.42)
        }
    },
    {-- 8011 (clothing)
        type = "clothing",
        coords = vector4(-1191.91, -772.24, 17.33, 107.8),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-1206.9552001953, -775.06304931641, 17.32),
            vector3(-1190.6080322266, -764.03198242188, 17.32),
            vector3(-1184.5672607422, -772.16949462891, 17.32),
            vector3(-1199.24609375, -783.07928466797, 17.32)
        }
    },
    {-- 8045 (clothing)
        type = "clothing",
        coords = vector4(425.91, -801.03, 29.49, 177.79),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(419.55020141602, -798.36547851562, 29.49),
            vector3(431.61773681641, -798.31909179688, 29.49),
            vector3(431.19784545898, -812.07122802734, 29.49),
            vector3(419.140625, -812.03594970703, 29.49)
        }
    },
    {-- 7245 (clothing)
        type = "clothing",
        coords = vector4(-163.22, -300.55, 39.73, 236.47),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-160.82145690918, -313.85919189453, 39.73),
            vector3(-172.56513977051, -309.82858276367, 39.73),
            vector3(-166.5775604248, -292.48077392578, 39.73),
            vector3(-154.84906005859, -296.51647949219, 39.73)
        }
    },
    {-- 9072 (clothing)
        type = "clothing",
        coords = vector4(75.39, -1398.28, 29.38, 6.73),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(81.406135559082, -1400.7791748047, 29.38),
            vector3(69.335029602051, -1400.8251953125, 29.38),
            vector3(69.754981994629, -1387.078125, 29.38),
            vector3(81.500122070312, -1387.3002929688, 29.38)
        }
    },
    {-- 8127 (clothing)
        type = "clothing",
        coords = vector4(-827.39, -1075.93, 11.33, 294.31),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-826.26251220703, -1082.6293945312, 11.33),
            vector3(-832.27856445312, -1072.2819824219, 11.33),
            vector3(-820.16442871094, -1065.7727050781, 11.33),
            vector3(-814.08953857422, -1076.1878662109, 11.33)
        }
    },
    {-- 7166 (clothing)
        type = "clothing",
        coords = vector4(-1451.39, -239.59, 49.81, 29.62),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-1448.4829101562, -226.39401245117, 49.82),
            vector3(-1439.2475585938, -234.70428466797, 49.82),
            vector3(-1451.5389404297, -248.33193969727, 49.82),
            vector3(-1460.7554931641, -240.02815246582, 49.82)
        }
    },
    {-- 1060 (clothing)
        type = "clothing",
        coords = vector4(9.22, 6515.74, 31.88, 131.27),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(6.4955291748047, 6522.205078125, 31.88),
            vector3(14.737417221069, 6513.3872070312, 31.88),
            vector3(4.3691010475159, 6504.3452148438, 31.88),
            vector3(-3.5187695026398, 6513.1538085938, 31.88)
        }
    },
    {-- 4020 (clothing)
        type = "clothing",
        coords = vector4(618.67, 2761.75, 42.09, 178.77),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(612.58312988281, 2747.2814941406, 42.09),
            vector3(612.26214599609, 2767.0520019531, 42.09),
            vector3(622.37548828125, 2767.7614746094, 42.09),
            vector3(623.66833496094, 2749.5180664062, 42.09)
        }
    },
    {-- 4024 (clothing)
        type = "clothing",
        coords = vector4(1191.61, 2710.91, 38.22, 269.96),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(1188.7923583984, 2704.2021484375, 38.22),
            vector3(1188.7498779297, 2716.2661132812, 38.22),
            vector3(1202.4979248047, 2715.8479003906, 38.22),
            vector3(1202.3558349609, 2703.9294433594, 38.22)
        }
    },
    {-- 5034 (clothing)
        type = "clothing",
        coords = vector4(-3174.0, 1046.59, 20.86, 319.88),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-3162.0075683594, 1056.7303466797, 20.86),
            vector3(-3170.8247070312, 1039.0412597656, 20.86),
            vector3(-3180.0979003906, 1043.1201171875, 20.86),
            vector3(-3172.7292480469, 1059.8623046875, 20.86)
        }
    },
    {-- 5004 (clothing)
        type = "clothing",
        coords = vector4(-1105.52, 2707.79, 19.11, 317.19),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-1103.3004150391, 2700.8195800781, 19.11),
            vector3(-1111.3771972656, 2709.884765625, 19.11),
            vector3(-1100.8548583984, 2718.638671875, 19.11),
            vector3(-1093.1976318359, 2709.7365722656, 19.11)
        }
    },
    {-- 8211 (Vesp Beach)  (clothing)
        type = "clothing",
        coords = vector4(-1207.37, -1457.85, 4.36, 44.96),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-1205.1, -1456.52, 4.35),
            vector3(-1208.64, -1451.2, 4.38),
            vector3(-1213.61, -1455.06, 4.37),
            vector3(-1210.07, -1460.54, 4.34)
        }
    },
    {-- 7190 (clothing)
        type = "clothing",
        coords = vector4(122.28, -221.35, 54.56, 326.84),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(133.60948181152, -210.31390380859, 54.56),
            vector3(125.8349609375, -228.48097229004, 54.56),
            vector3(116.3140335083, -225.02020263672, 54.56),
            vector3(122.56930541992, -207.83396911621, 54.56)
        }
    },
	{-- CASINO (clothing)
        type = "clothing", 
        coords = vector4(922.21, 27.98, 71.83, 191.51),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(930.78, 19.38, 71.83),
			vector3(928.37, 27.41, 71.83),
			vector3(920.9, 26.94, 71.83),
			vector3(923.45, 18.08, 71.83)			
        }
    },
	{-- MANAAKI (clothingnoblip)
        type = "clothing", 
        coords = vector4(-37.51, -583.66, 83.92, 247.61),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(-35.0, -582.35, 83.91),
			vector3(-36.22, -585.7, 83.91),
			vector3(-40.4, -584.21, 83.91),
			vector3(-39.44, -581.59, 83.91)
        }
    },
	{-- BENNYS (clothingnoblip)
        type = "clothing", 
        coords = vector4(-213.66, -1329.35, 23.14, 176.47),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(-217.45, -1332.52, 23.14),
			vector3(-217.43, -1326.3, 23.13),
			vector3(-209.08, -1326.35, 23.14),
			vector3(-209.03, -1332.11, 23.53)
        }
    },
	{-- KAITIAKI SECURITY (clothingnoblip)
        type = "clothing", 
        coords = vector4(-216.99, -823.37, 30.68, 175.7),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(-217.09, -826.91, 30.68),
			vector3(-221.11, -825.45, 30.68),
			vector3(-218.93, -821.39, 30.68),
			vector3(-214.56, -822.51, 31.74)
        }
    },
	{-- PACIFIC BLUFFS RESORT (clothingnoblip)
        type = "clothing", 
        coords = vector4(-3058.81, 97.67, 12.16, 98.73),
        size = vector3(4, 4, 4),
        rotation = 99.31,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(-3057.08, 99.15, 12.35),
			vector3(-3059.12, 101.89, 12.35),
			vector3(-3064.06, 98.54, 12.35),
			vector3(-3062.74, 92.53, 12.13)
        }
    },
	{-- VINEWOODPD GARAGE  (clothingnoblip)
        type = "clothing", 
        coords = vector4(613.31, 5.46, 70.63, 166.89),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(615.89, 5.49, 70.64),
			vector3(614.85, 2.59, 70.63),
			vector3(610.1, 4.08, 70.63),
			vector3(610.9, 7.26, 70.63)
        }
    },
	{-- MT ZONAH EMS  (clothingnoblip)
        type = "clothing", 
        coords = vector4(-437.69, -308.83, 34.91, 204.52),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(-435.56, -310.81, 34.91),
			vector3(-437.82, -311.91, 34.91),
			vector3(-439.55, -307.42, 35.35),
			vector3(-437.28, -306.49, 35.35)
        }
    },
	{-- TRUCKER  (clothingnoblip)
        type = "clothing", 
        coords = vector4(-432.74, -2793.42, 6.53, 231.96),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(-430.43, -2793.91, 6.98),
			vector3(-432.78, -2795.49, 6.53),
			vector3(-434.52, -2793.11, 6.53),
			vector3(-432.71, -2791.32, 6.53)
        }
    },
	{-- REBELS  (clothingnoblip)
        type = "clothing", 
        coords = vector4(759.0, -1311.27, 26.24, 0.61),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(762.43, -1312.92, 27.5),
			vector3(754.58, -1313.08, 26.24),
			vector3(754.59, -1307.95, 26.24),
			vector3(762.44, -1307.86, 26.24)
        }
    },
	{-- POLICE MRPD  (clothingnoblip)
        type = "clothing", 
        coords = vector4(421.03, -975.39, 21.56, 175.35),
        size = vector3(6, 6, 4),
        rotation = 45,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(419.31, -974.32, 21.56),
			vector3(419.76, -981.53, 21.56),
			vector3(422.85, -982.46, 21.61),
			vector3(422.3, -974.35, 21.56)
        }
    },
	{-- CORRECTIONS  (clothingnoblip)
        type = "clothing", 
        coords = vector4(1778.94, 2547.86, 46.25, 271.72),
        size = vector3(4, 4, 4),
        rotation = 271,
        usePoly = true,
		showBlip = false,
        points = {
            vector3(1779.97, 2546.37, 45.8),
			vector3(1776.76, 2546.35, 46.08),
			vector3(1776.75, 2549.36, 45.8),
			vector3(1780.39, 2549.77, 45.8)
        }
    },
	{-- 7208 (barber)
        type = "barber",
        coords = vector4(-814.22, -183.7, 37.57, 116.91),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-825.06127929688, -182.67497253418, 37.57),
            vector3(-808.82415771484, -179.19134521484, 37.57),
            vector3(-808.55261230469, -184.9720916748, 37.57),
            vector3(-819.77899169922, -191.81831359863, 37.57)
        }
    },
    {-- 9127 (barber)
        type = "barber",
        coords = vector4(136.78, -1708.4, 29.29, 144.19),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(132.57008361816, -1710.5053710938, 29.29),
            vector3(138.77899169922, -1702.6778564453, 29.29),
            vector3(142.73052978516, -1705.6853027344, 29.29),
            vector3(135.49719238281, -1712.9750976562, 29.29)
        }
    },
    {-- 8105 (barber)
        type = "barber",
        coords = vector4(-1282.57, -1116.84, 6.99, 89.25),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-1287.4735107422, -1115.4364013672, 6.99),
            vector3(-1277.5638427734, -1115.1229248047, 6.99),
            vector3(-1277.2469482422, -1120.1147460938, 6.99),
            vector3(-1287.4561767578, -1119.2506103516, 6.99)
        }
    },
    {-- 3006 (barber)
        type = "barber",
        coords = vector4(1931.41, 3729.73, 32.84, 212.08),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(1932.4931640625, 3725.3374023438, 32.84),
            vector3(1927.2720947266, 3733.7663574219, 32.84),
            vector3(1931.4379882812, 3736.5327148438, 32.84),
            vector3(1936.0697021484, 3727.2839355469, 32.84)
        }
    },
    {-- 7343 (barber)
        type = "barber",
        coords = vector4(1212.8, -472.9, 66.21, 60.94),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(1208.3327636719, -469.84338378906, 65.2),
            vector3(1217.9066162109, -472.40216064453, 65.2),
            vector3(1216.9870605469, -477.00939941406, 65.2),
            vector3(1206.1077880859, -473.83499145508, 65.2)
        }
    },
    {-- 7188 (barber)
        type = "barber",
        coords = vector4(-32.9, -152.3, 57.08, 335.22),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-29.730783462524, -148.67495727539, 56.1),
            vector3(-32.919719696045, -158.04254150391, 56.1),
            vector3(-37.612594604492, -156.62759399414, 56.1),
            vector3(-33.30192565918, -147.31649780273, 56.1)
        }
    },
    {-- 1046 (barber)
        type = "barber",
        coords = vector4(-278.1, 6228.5, 31.7, 49.32),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-280.29818725586, 6232.7265625, 30.7),
            vector3(-273.06427001953, 6225.9692382812, 30.7),
            vector3(-276.25280761719, 6222.4013671875, 30.7),
            vector3(-282.98211669922, 6230.015625, 30.7)
        }
    },
    {-- 9338 (tattoo - NOTE: Configured in rcore tattoo!)
        type = "tattoo",
        coords = vector4(1324.91, -1651.75, 52.28, 119.54),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(1323.9360351562, -1649.2370605469, 51.2),
            vector3(1328.0186767578, -1654.3087158203, 51.2),
            vector3(1322.5780029297, -1657.7045898438, 51.2),
            vector3(1319.2043457031, -1653.0885009766, 51.2)
        }
    },
    {-- 8221 (tattoo - NOTE: Configured in rcore tattoo!)
        type = "tattoo",
        coords = vector4(-1152.02, -1425.47, 4.95, 85.75),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-1152.7110595703, -1422.8382568359, 4.95),
            vector3(-1149.0043945312, -1428.1975097656, 4.95),
            vector3(-1154.6730957031, -1431.1898193359, 4.95),
            vector3(-1157.7064208984, -1426.3433837891, 4.95)
        }
    },
    {-- 7095 (tattoo - NOTE: Configured in rcore tattoo!)
        type = "tattoo",
        coords = vector4(321.01, 182.0, 103.59, 236.68),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(319.28741455078, 179.9383392334, 103.59),
            vector3(321.537109375, 186.04516601562, 103.59),
            vector3(327.24526977539, 183.12303161621, 103.59),
            vector3(325.01351928711, 177.8542175293, 103.59)
        }
    },
    {-- 5034 (tattoo - NOTE: Configured in rcore tattoo!)
        type = "tattoo",
        coords = vector4(-3171.53, 1074.28, 20.83, 323.87),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-3169.5861816406, 1072.3740234375, 20.83),
            vector3(-3175.4802246094, 1075.0703125, 20.83),
            vector3(-3172.2041015625, 1080.5860595703, 20.83),
            vector3(-3167.076171875, 1078.0391845703, 20.83)
        }
    },
    {-- 3007 (tattoo - NOTE: Configured in rcore tattoo!)
        type = "tattoo",
        coords = vector4(1862.43, 3748.34, 33.03, 32.51),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(1860.2752685547, 3750.1608886719, 33.03),
            vector3(1866.390625, 3752.8081054688, 33.03),
            vector3(1868.6164550781, 3747.3562011719, 33.03),
            vector3(1863.65234375, 3744.5034179688, 33.03)
        }
    },
    {-- 1044 (tattoo - NOTE: Configured in rcore tattoo!)
        type = "tattoo",
        coords = vector4(-292.11, 6199.77, 31.49, 224.66),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(-289.42239379883, 6198.68359375, 31.49),
            vector3(-294.69515991211, 6194.5366210938, 31.49),
            vector3(-298.23013305664, 6199.2451171875, 31.49),
            vector3(-294.1501159668, 6203.2700195312, 31.49)
        }
    },
    {-- 8040 (Pillbox) (Surgeon)
        type = "surgeon",
        coords = vector4(324.56, -582.16, 43.32, 343.12),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = true,
        points = {
            vector3(328.3, -584.42, 43.32),
			vector3(330.31, -578.96, 43.32),
			vector3(324.71, -575.59, 43.32),
			vector3(321.18, -581.52, 43.32)
        }
    }
}

Config.ClothingRooms = {
    { -- mrpd locker room
        job = "police",
        coords = vector4(457.06, -973.51, 31.03, 267.02),
        size = vector3(4, 4, 4),
        rotation = 160,
        usePoly = true,
        points = {
            vector3(456.92, -976.03, 31.03),
			vector3(457.02, -972.58, 31.03),
			vector3(460.93, -972.58, 31.03),
			vector3(460.57, -975.44, 31.03)
        }
    },
	{ -- mrpd basement
        job = "police",
        coords = vector4(439.2, -989.96, 21.56, 297.28),
        size = vector3(4, 4, 4),
        rotation = 160,
        usePoly = true,
        points = {
            vector3(438.94, -987.31, 21.56),
			vector3(444.32, -986.59, 21.56),
			vector3(444.05, -991.94, 21.56),
			vector3(439.71, -991.98, 21.56)
        }
    },
	{
        job = "burgershot",
        coords = vector4(1238.94, -343.63, 69.2, 240.5),
        size = vector3(4, 4, 4),
        rotation = 60,
        usePoly = true,
        points = {
            vector3(1243.04, -343.59, 70.44),
			vector3(1242.1, -346.98, 70.02),
			vector3(1237.85, -345.62, 72.14),
			vector3(1238.62, -342.53, 72.26)
        }
    }
}

Config.PlayerOutfitRooms = {
    -- Sample outfit room config
--[[    {
        job = "police",
        coords = vector4(287.28, -573.41, 43.16, 79.61),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(284.83, -574.01, 43.16),
            vector3(286.33, -570.03, 43.16),
            vector3(290.33, -571.74, 43.16),
            vector3(289.0, -574.75, 43.16)
        },
        citizenIDs = {
            "BHH65156"
        }
    }]]--
}

Config.Outfits = {
    ["police"] = {
        ["male"] = {
            {
                name = "Short Sleeve",
                outfitData = {
                    ["pants"] = {item = 172, texture = 0}, -- Pants
                    ["arms"] = {item = 0, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 208, texture = 0}, -- T Shirt
                    ["vest"] = {item = 57, texture = 1}, -- Body Vest
                    ["torso2"] = {item = 483, texture = 1}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 179, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {1, 2, 3, 4},
            },
            {
                name = "Long Sleeve Sleeve",
                outfitData = {
                    ["pants"] = {item = 172, texture = 0}, -- Pants
                    ["arms"] = {item = 0, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 208, texture = 0}, -- T Shirt
                    ["vest"] = {item = 57, texture = 1}, -- Body Vest
                    ["torso2"] = {item = 484, texture = 1}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 179, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {1, 2, 3, 4},
            },
            {
                name = "Recruit",
                outfitData = {
                    ["pants"] = {item = 172, texture = 0}, -- Pants
                    ["arms"] = {item = 0, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 209, texture = 0}, -- T Shirt
                    ["vest"] = {item = 57, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 483, texture = 1}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 178, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1},
            },
            {
                name = "SWAT",
                outfitData = {
                    ["pants"] = {item = 130, texture = 1}, -- Pants
                    ["arms"] = {item = 171, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 218, texture = 0}, -- T Shirt
                    ["vest"] = {item = 59, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 485, texture = 3}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 0, texture = 0}, -- Neck Accessory
                    ["hat"] = {item = 204, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 52, texture = 0} -- Mask
                },
                grades = {2, 3, 4},
            }
        },
        ["female"] = {
            {
                name = "Short Sleeve",
                outfitData = {
                    ["pants"] = {item = 197, texture = 0}, -- Pants
                    ["arms"] = {item = 2, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 208, texture = 0}, -- T Shirt
                    ["vest"] = {item = 62, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 550, texture = 0}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 148, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {1, 2, 3, 4},
            },
            {
                name = "Long Sleeve",
                outfitData = {
                    ["pants"] = {item = 197, texture = 0}, -- Pants
                    ["arms"] = {item = 4, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 208, texture = 0}, -- T Shirt
                    ["vest"] = {item = 62, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 549, texture = 0}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 148, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {1, 2, 3, 4},
            },
            {
                name = "Recruit",
                outfitData = {
                    ["pants"] = {item = 197, texture = 0}, -- Pants
                    ["arms"] = {item = 2, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 208, texture = 0}, -- T Shirt
                    ["vest"] = {item = 62, texture = 2}, -- Body Vest
                    ["torso2"] = {item = 550, texture = 0}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 148, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1},
            },
            {
                name = "SWAT",
                outfitData = {
                    ["pants"] = {item = 136, texture = 1}, -- Pants
                    ["arms"] = {item = 18, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 239, texture = 0}, -- T Shirt
                    ["vest"] = {item = 67, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 46, texture = 0}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 148, texture = 0}, -- Neck Accessory
                    ["hat"] = {item = 204, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 52, texture = 0} -- Mask
                },
                grades = {2, 3, 4},
            }
        }
    },
    ["realestate"] = {
        ["male"] = {
            {
                -- Outfits
                name = "Worker",
                outfitData = {
                    ["pants"]       = { item = 28, texture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            }
        },
        ["female"] = {
            {
                name = "Worker",
                outfitData = {
                    ["pants"]       = { item = 57, texture = 2},  -- Pants
                    ["arms"]        = { item = 0, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            }
        }
    },
    ["ambulance"] = {
        ["male"] = {
            {
                name = "Short Sleeve",
                outfitData = {
                    ["pants"] = {item = 172, texture = 1}, -- Pants
                    ["arms"] = {item = 85, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 210, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 483, texture = 0}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 179, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 114, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Long Sleeve",
                outfitData = {
                    ["pants"] = {item = 172, texture = 1}, -- Pants
                    ["arms"] = {item = 85, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 210, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 483, texture = 0}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 179, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 114, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Doctor",
                outfitData = {
                    ["arms"] = {item = 86, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 150, texture = 1}, -- T-Shirt
                    ["torso2"] = {item = 520, texture = 0}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 184, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 48, texture = 0}, -- Pants
                    ["shoes"] = {item = 15, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = -1, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {2, 3, 4},
            }
        },
        ["female"] = {
            {
                name = "Short Sleeve",
                outfitData = {
                    ["pants"] = {item = 197, texture = 1}, -- Pants
                    ["arms"] = {item = 2, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 239, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 550, texture = 1}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 0, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Long Sleeve",
                outfitData = {
                    ["pants"] = {item = 197, texture = 1}, -- Pants
                    ["arms"] = {item = 3, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 239, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- Body Vest
                    ["torso2"] = {item = 549, texture = 1}, -- Jacket
                    ["shoes"] = {item = 25, texture = 0}, -- Shoes
                    ["accessory"] = {item = 0, texture = 0}, -- Neck Accessory
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Doctor",
                outfitData = {
                    ["arms"] = {item = 105, texture = 0}, -- Arms
                    ["t-shirt"] = {item = 39, texture = 3}, -- T-Shirt
                    ["torso2"] = {item = 548, texture = 0}, -- Jackets
                    ["vest"] = {item = 0, texture = 0}, -- Vest
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 136, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 50, texture = 0}, -- Pants
                    ["shoes"] = {item = 29, texture = 0}, -- Shoes
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = -1, texture = 0}, -- Hat
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {2, 3, 4},
            }
        }
    }
}

Config.InitialPlayerClothes = {
    Male = {
        Model = "mp_m_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 4,
                texture = 1
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Shoes
                drawable = 31,
                texture = 2
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 15,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- Jacket
                drawable = 22,
                texture = 2
            }
        },
        Props = {
            {
                prop_id = 0, -- Hat
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    },
    Female = {
        Model = "mp_f_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 14,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 4,
                texture = 0
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Shoes
                drawable = 1,
                texture = 6
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 7,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- Jacket
                drawable = 141,
                texture = 3
            }
        },
        Props = {
            {
                prop_id = 0, -- Hat
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    }
}
