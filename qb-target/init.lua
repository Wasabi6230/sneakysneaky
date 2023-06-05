function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 7.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- Draw a Sprite on the center of a PolyZone to hint where it's located
Config.DrawSprite = false

-- The default distance to draw the Sprite
Config.DrawDistance = 10.0

-- The color of the sprite in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.DrawColor = {255, 255, 255, 255}

-- The color of the sprite in rgb when the PolyZone is targeted, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.SuccessDrawColor = {30, 144, 255, 255}

-- The color of the outline in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = false

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 238

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {
    -- KRP CUSTOM START
    ["ChopShopParts"] = {
        name = "ChopShopParts", 
        coords = vector3(471.5797, -1312.1295, 30.2579), 
        length = 1.4, 
        width = 1.35, 
        heading = 113.1992, 
        debugPoly = false, 
        minZ=28.77834,
        maxZ=29.87834,
            options = { 
            {
                type = "client",
                event = "qb-chopshop:StartMenu",
                icon = "fas fa-hammer",
                label = "Chop Parts",
              },
        },
        distance = 3.5, 
    },
	-- KRP CUSTOM END
}

Config.PolyZones = {

}

Config.TargetBones = {

}

Config.TargetEntities = {

}

Config.TargetModels = {
        --chopshop
    ["5487"] = {
            models = {
                "s_m_m_gardener_01"
            },
            options = {
                {
                    type = "client",
                    event = "qb-chopshop:jobaccept",
                    icon = 'fas fa-car',
                    label = 'Locate A Vehicle',
                }
            },
            distance = 1.5,
        },

	["Atm"] = {
        models = {"prop_atm_01","prop_atm_02","prop_atm_03","prop_fleeca_atm"},
        options = {
            {
                type = "command",
                event = "atm",
                icon = "fab fa-cc-visa",
                label = "Access ATM",
            }
        },
        distance = 2.5,
    },
	
    -- ["qb-slots"] = {
		-- models = {
			-- `ch_prop_casino_slot_04b`,
			-- `ch_prop_casino_slot_05a`,
			-- `ch_prop_casino_slot_06a`,
			-- `ch_prop_casino_slot_07a`,
			-- `ch_prop_casino_slot_08a`,
			-- `vw_prop_casino_slot_05a`,
			-- `vw_prop_casino_slot_06a`,
			-- `vw_prop_casino_slot_07a`,
			-- `vw_prop_casino_slot_08a`,

		-- },
		-- options = {
			-- {
				-- type = "client",
				-- event = "qb-slots:enterBets",
				-- icon = "fa-solid fa-slot-machine",
				-- label = "Play Slot Machine",
			-- },
		-- },
		-- distance = 2.5,
	-- },
	
	-- ["24/7 shops"] = { -- Disabled this for rcore casino as seems to not do anything?
        -- models = {
            -- "mp_m_shopkeep_01",
			-- "s_m_y_casino_01",
        -- },
        -- options = {
            -- {
                -- type = "client",
                -- event = "qb-shops:marketshop",
                -- icon = "fas fa-store",
                -- label = "Buy Items",
            -- },
        -- },
        -- distance = 2.5,
    -- },
	
	-- ["yellowjack"] = {
        -- models = {
            -- "s_m_m_migrant_01",
        -- },
        -- options = {
            -- {
                -- type = "client",
                -- event = "qb-shops:marketshop",
                -- icon = "fas fa-drumstick-bite",
                -- label = "Yellow Jack Inn",
            -- },
        -- },
        -- distance = 2.5,
    -- },
	
    ["youtool shops"] = {
        models = {
            "s_m_m_lathandy_01",
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-wrench",
                label = "Buy Tools",
            },
        },
        distance = 2.5,
    },
	
    ["CraftingWeapons"] = {
        models = {
            "gr_prop_gr_bench_01a",
        },
        options = {
            {
                type = "client",
                event = "CraftingW:client:OpenInventory",
                icon = "fas fa-pencil-ruler",
                label = "Crafting",
            },
        },
        distance = 1.5
    },

    -- ["weedpicker"] = {
        -- models = {
			-- 452618762
        -- },
        -- options = {
            -- {
                -- type = "client",
				-- event = "rsg-weedpicker:client:weedpicker",
                -- icon = "fas fa-cannabis",
                -- label = "Harvest the Plants",
            -- },
        -- },
        -- distance = 1.5
    -- },

}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {
    options = {
        {
            type = "client",
            event = "police:client:ImpoundVehicle",
            icon = "fas fa-car",
            label = "Impound Vehicle",
            job = 'police',
        },
        {
            type = "client",
            event = "police:client:EscortPlayer",
            icon = "fas fa-hand-holding",
            label = "Escort Out Of Vehicle",
        },
        {
            type = "client",
            event = 'cc-carry:client:GetInEvent',
            icon = "fas fa-truck",
            label = "Hop Inside Trunk",
        },
        {
            type = "client",
            event = "police:client:PutPlayerInVehicle",
            icon = "fas fa-chevron-circle-left",
            label = "Place Inside Vehicle",
        },
		{
			type = "client",
			event = "ps-fuel:client:SendMenuToServer",
			icon = "fas fa-gas-pump",
			label = "Refuel Vehicle",
		},
		{
			type = "client",
			event = "qb-radialmenu:flipVehicle",
			icon = "fas fa-car",
			label = "Flip",
		},		
        {
            type = "client",
            event = "police:client:SetPlayerOutVehicle",
            icon = "fas fa-chevron-circle-right",
            label = "Take Out Of Vehicle",
        },
		{
            type = "client",
            event = "cc-carry:client:PutInEvent",
            icon = "fas fa-chevron-circle-right",
            label = "Put in Trunk",
        },			
    },
    distance = 2.5,
}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {
    options = {
        {
            type = "client",
            event = "police:client:EscortPlayer",
            icon = "fas fa-hand-holding",
            label = "Escort Individual",
        },
        {
            type = "client",
            event = "police:client:CuffPlayer",
            icon = "fas fa-hands",
            label = "Cuff / Uncuff Individual",
            item = 'handcuffs',
            job = 'police',
        },
        {
            type = "client",
            event = "police:client:KidnapPlayer",
            icon = "fas fa-hand-holding",
            label = "Kidnap Individual",
        },
        {
            type = "client",
            event = "police:client:RobPlayer",
            icon = "fas fa-user-secret",
            label = "Rob Individual",
        },
        {
            type = "client",
            event = "A5:Client:TakeHostage",
            icon = "fas fa-user-secret",
            label = "Take Hostage",
        },	
        {
            type = "client",
            event = "cc-carry:client:DoCarry",
            icon = "fas fa-user-secret",
            label = "Carry Person",
        },			
    }
}

Config.Peds = {
-- HOSPITAL PEDS
	{ --front counter doc zonah
        model = 's_m_m_doctor_01',
        coords = vector4(-435.57, -324.03, 33.91, 161.58),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },
	  
	{ --zonah clockin
        model = 's_m_y_autopsy_01',
        coords = vector4(-431.1, -318.52, 33.91, 29.57),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_WINDOW_SHOP_BROWSE'
    },
	
		{ --police mech (qb-customspolice)
        model = 's_m_y_xmech_01',
        coords = vector4(412.84, -1006.35, 20.34, 266.61),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },
	  
	{ --front counter doc paleto
        model = 's_m_m_doctor_01',
        coords = vector4(-255.86, 6330.75, 31.43, 312.74),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },

-- Casino Extra (DISABLE IF RCORE CASINO REMOVED)
	{ --front counter casino
        model = 's_m_y_casino_01',
        coords = vector4(933.59, 41.82, 80.09, 59.61),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

	{ --top of stairs security
        model = 's_m_y_casino_01',
        coords = vector4(935.82, 50.31, 80.09, 120.31),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

-- JOB RELATED

    { --chopshop npc
        model = 's_m_m_gardener_01',
        coords = vector4(-237.1636, -2667.088, 7.8781371, 265.57635),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD'
	},
	
	{ --qb-jail mteden services location NPC
        model = 's_m_m_prisguard_01',
        coords = vector4(1782.92, 2589.63, 45.8-1, 175.54),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD'
	},
	
	-- Mirror Restaurant Valet
	 -- { 
        -- model = 's_m_y_valet_01',
        -- coords = vector4(-1280.89, -1137.04, 5.48, 156.79),
        -- gender = 'male',
        -- freeze = true,
        -- invincible = true,
        -- blockevents = true,
        -- scenario = 'WORLD_HUMAN_VALET'
	-- },

	-- { -- Manaaki bum 1
        -- model = 'a_f_m_tramp_01',
        -- coords = vector4(-45.93, -582.15, 36.95, 85.48),
        -- gender = 'female',
        -- freeze = true,
        -- invincible = true,
        -- blockevents = true,
        -- scenario = 'WORLD_HUMAN_BUM_SLUMPED'
	-- },
	
	-- { -- Manaaki bum 2
        -- model = 'u_m_y_militarybum',
        -- coords = vector4(-52.87, -588.56, 35.47, 39.38),
        -- gender = 'male',
        -- freeze = true,
        -- invincible = true,
        -- blockevents = true,
        -- scenario = 'WORLD_HUMAN_BUM_FREEWAY'
	-- },
	
	{ -- Mining
        model = 's_m_m_dockwork_01',
        coords = vector4(-600.4996, 2089.7985, 132.08616-1, 1.5368548),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
	},
	
	-- { -- UNKNOWN?
        -- model = 'mp_m_waremech_01',
        -- coords = vector4(1512.7, -2132.53, 76.49, 0.34),
        -- gender = 'male',
        -- freeze = true,
        -- invincible = true,
        -- blockevents = true,
        -- scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
	-- },
	
	-- { -- Bahama
        -- model = 's_m_m_bouncer_01',
        -- coords = vector4(-1376.08, -635.94, 28.67, 184.82),
        -- gender = 'male',
        -- freeze = true,
        -- invincible = true,
        -- blockevents = true,
        -- scenario = 'WORLD_HUMAN_GUARD_STAND'
	-- },
	
	-- { -- Prison Gym Membership
        -- model = 's_m_y_prismuscl_01',
        -- coords = vector4(1641.3, 2538.86, 44.56-1, 37.48),
        -- gender = 'male',
        -- freeze = true,
        -- invincible = true,
        -- blockevents = true,
        -- scenario = 'WORLD_HUMAN_MUSCLE_FLEX'
	-- },
	
	{ -- Vesp Gym Membership
        model = 'a_m_y_musclbeac_02',
        coords = vector4(-1195.17, -1577.79, 4.61-1, 83.19),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_MUSCLE_FLEX'
	},
	
	{ -- Vesp Gym Stats
        model = 'a_f_y_beach_01',
        coords = vector4(-1199.58, -1580.41, 4.61-1, 310.63),
        gender = 'female',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_JOG_STANDING'
	},
	
	{ --  Mirror Gym Membership
        model = 'a_m_m_fatlatin_01',
        coords = vector4(818.11, -275.33, 65.65-1, 99.16),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_SEAT_WALL_EATING'
	},
	
	{ -- Mirror Gym Stats
        model = 'a_m_y_musclbeac_01',
        coords = vector4(816.44, -279.65, 66.46-1, 11.23),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_JOG_STANDING'
	},
	
	{ -- Paleto Gym Membership
        model = 'a_m_y_musclbeac_02',
        coords = vector4(-297.52, 6123.29, 31.5-1, 108.85),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_MUSCLE_FLEX'
	},
	
	{ -- Paleto Gym Stats
        model = 'a_m_y_musclbeac_01',
        coords = vector4(-305.1, 6119.02, 31.5-1, 313.58),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        scenario = 'WORLD_HUMAN_JOG_STANDING'
	},
	
	--{ -- Driving School (outside since MLO disabled)
        -- model = 'a_f_y_vinewood_01',
        -- coords = vector4(221.71, -1394.63, 30.59, 280.88),
        -- gender = 'female',
        -- freeze = true,
        -- invincible = true,
        -- blockevents = true,
        -- scenario = 'WORLD_HUMAN_CLIPBOARD'
	-- },
	
	-- {  Santa (m-christmas script in [xmas] seasonal content
        -- model = 'ig_bankman',
        -- coords = vector4(169.23, -998.88, 28.35, 143.88),
        -- gender = 'male',
        -- freeze = true,
        -- invincible = true,
        -- blockevents = true,
        -- scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
	-- },
	
}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCheck() return true end
local function CitizenCheck() return true end

CreateThread(function()
	local state = GetResourceState('qb-core')
	if state ~= 'missing' then
		local timeout = 0
		while state ~= 'started' and timeout <= 100 do
			timeout += 1
			state = GetResourceState('qb-core')
			Wait(0)
		end
		Config.Standalone = false
	end
	if Config.Standalone then
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	else
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCheck = QBCore.Functions.HasItem

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCheck(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end