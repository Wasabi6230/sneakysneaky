Config = {
	Lan = "en",
	Debug = false, -- Toggle Debug Mode
	Blips = true, -- Enable Blips?
	BlipNamer = false, -- Enable to Name Blips different things, disable if you already have too many blips as this will group them together
	Pedspawn = true, -- Do you want to spawn peds for main locations?
	img = "qb-inventory/html/images/", -- Set this to your inventory
	JimMenu = true, -- If using updated qb-menu icons, set this true
	JobRole = nil, -- Whats the job role you want to use this? "nil" for none
	EnableOpeningHours = true, -- Enable opening hours? If disabled you can always open the pawnshop.
	OpenHour = 8, -- From what hour should the pawnshop be open?
	CloseHour = 19, -- From what hour should the pawnshop be closed?
	PayAtDoor = nil, -- Set to nil stop turn this off, set to a number to enable

	Minigame = "qb-skillbar", -- Enable minigame when searching. qb-skillbar/qb-lock/ps-ui

	OutsideTele = vector4(746.84, -1399.38, 26.62, 178.45),
	InsideTele = vector4(992.69, -3097.87, -39.0, 269.87),

	Locations =  {
		['Recycle'] = {
			{ name = "Recycle Center", coords = vector4(744.68, -1401.77, 15.55, 248.73), blipTrue = true, sprite = 365, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_STAND_IMPATIENT", },
		},
		['Trade'] ={
			{ name = "Recyclable Trader", coords = vector4(287.68, 2843.81, 44.7, 83.89), blipTrue = true, sprite = 365, col = 2, model = `s_m_y_pestcont_01`, scenario = "WORLD_HUMAN_STAND_IMPATIENT", },
		},
		['BottleBanks'] = {
			-- { name = "Bottle Bank", coords = vector4(757.06, -1399.68, 26.57 , 178.1), blipTrue = true, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_STAND_IMPATIENT", },
			-- { name = "Bottle Bank", coords = vector4(84.01, -220.32, 54.64 , 337.89), blipTrue = true, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_STAND_IMPATIENT", },
			-- { name = "Bottle Bank", coords = vector4(31.88, -1315.58, 29.52 , 357.19), blipTrue = true, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_STAND_IMPATIENT", },
			-- { name = "Bottle Bank", coords = vector4(29.08, -1769.99, 29.61 , 50.0), blipTrue = true, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_STAND_IMPATIENT", },
			-- { name = "Bottle Bank", coords = vector4(394.08, -877.48, 29.35 , 310.12), blipTrue = true, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_STAND_IMPATIENT", },
			-- { name = "Bottle Bank", coords = vector4(-1267.97, -812.08, 17.11 , 128.12), blipTrue = true, sprite = 642, col = 2, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_STAND_IMPATIENT", },
		},
	},
	Prices = {
		-- ['copper'] = 10,
		-- ['plastic'] = 10,
		-- ['metalscrap'] = 10,
		-- ['steel'] = 10,
		-- ['glass'] = 10,
		-- ['iron'] = 10,
		-- ['rubber'] = 10,
		-- ['aluminum'] = 10,
		-- ['bottle'] = 5,
		-- ['can'] = 5,
	},
	TradeTable = {
		-- "copper",
		"plastic",
		"metalscrap",
		"steel",
		"glass",
		-- "iron",
		-- "rubber",
		"aluminum",
		-- "bottle",
		-- "can",
	},
	DumpItems = {
		-- "bottle",
		-- "can",
		-- "sandwich",
	},
	ScrapItems = {
		-- "steel",
		-- "copper",
		-- "iron",
		-- "glass",
		-- "bottle",
		-- "can",
	},
	RecycleAmounts = {
		recycleMin = 5,
		recycleMax = 10,

		tenMin = 5,
		tenMax = 5,

		hundMin = 25,
		hundMax = 25,

		fivehunMin = 100,
		fivehunMax = 100,
	}
}

Loc = {}
