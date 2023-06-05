Config = {
    NormalCash = false, -- if false it will use black money
    Dispatch = 'ps-dispatch', -- Choose your dispatch system. qbcore / ps-dispatch or other (custom)
    MoneyMin = 1000, -- Minimal amount of black money to give
    MoneyMax = 5000, -- Maximum amount of black money to give 
    BlackMoneyName = 'markedbills', -- Itemname of your blackmoney as given in qb-core\shared\items
    ATMItemName = "atm-console", -- Name of the console item that breaks from ATM
    Ped = { -- Location of the ped where you get your items for recycling console
        loc = vector4(2052.84, 3196.97, 45.19, 334.27),
        hash = `s_m_y_construct_01`,
    },
    RecycleRewards = { -- Items that you'll get from recycling
        {item = "metalscrap", amount = math.random(15, 30) },
        {item = "copper", amount = math.random(15, 30) },
        {item = "plastic", amount = math.random(15, 30) },
		{item = "aluminum", amount = math.random(15, 30) },
		{item = "rubber", amount = math.random(5, 12) },
		{item = "steel", amount = math.random(15, 30) },
    },
    MoneyPropAmount = 6, -- How much money items will be created when breaking console
    UseGlobalCooldown = true, -- Use a global cooldown after someone robs an ATM
    CooldownTime = 30, -- Time for cooldown
    MinimumPolice = 2, -- Minimum police amount to rob ATM

    AllowedList = { -- List of allowed vehicle classes
        -- See https://docs.fivem.net/natives/?_0x29439776AAA00A62 for classes
        2, -- SUVs  
        9, -- Off-road  
        10, -- Industrial  
        11, -- Utility  
        12, -- Vans  
    },

    -- ATM Props DON'T TOUCH please
    models = {
       {model = `loq_atm_02_console`, isconsole = true,},
       {model = `loq_atm_02_des`, isconsole = false,},
        {model = `loq_atm_03_console`, isconsole = true,},
        {model = `loq_atm_03_des`, isconsole = false,},
        {model = `loq_fleeca_atm_console`, isconsole = true,},
        {model = `loq_fleeca_atm_des`, isconsole = false,},
    }
}