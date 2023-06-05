Config = {}

Config.Debug = false
--SERVER SETTINGS
Config.Framework = "qbcore" -- Set your framework! qbcore, ESX, standalone
Config.Target = "qb-target" -- Which Target system do u use? qb-target, qtarget
Config.Menu = "qb-menu" -- ContextMenu | types: ox_lib, qb-menu
Config.NotificationType = "qbcore" -- ESX, ox_lib, qbcore
Config.Progress = "qbcore" -- progressBars, ox, qbcore
Config.WeaponsAsItems = true -- if you are using old types of inventories which does not include weapons as items set this to false!

Config.Logs = { enabled = true, type = "webhook" } -- use webhook or ox_lib (datadog) Can be changed in server > sv_utils.lua
Config.DropPlayer = true -- Drop (Kick) Player if tries to cheat!
Config.AnticheatBan = false -- Change in server/sv_Utils.lua!!! WIll not work by default you need to add your custom trigger to ban player!

Config.Craftings = {
	-- GUN DEALER
	Crafting_default_1 = { -- Weapon Dealer Gun Crafting
        Occupied = false, -- Dont change
        Label = "Weapons Dealer - Guns", --display label on help or target
        job = { name = "askgavin", grade = 0 }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(896.55, -3217.43, -98.23), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 272.00 + 180.0,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-gun",
        CraftingItems = { -- Table for all craftable Items
            -- HAND GUNS
			weapon_pistol = {
                Title = "Pistol", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 99999, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_pistol", label = "Pistol", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_appistol = {
                Title = "AP Pistol", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_appistol", label = "AP Pistol", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_snspistol_mk2 = {
                Title = "SNS Pistol MK2", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_snspistol_mk2", label = "SNS Pistol MK2", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_revolver = {
                Title = "Revolver", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_revolver", label = "Revolver", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_revolver_mk2 = {
                Title = "Violence", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_revolver_mk2", label = "Violence", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_doubleaction = {
                Title = "Double Action Revolver", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_doubleaction", label = "Double Action Revolver", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_ceramicpistol = {
                Title = "Ceramic Pistol", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_ceramicpistol", label = "Ceramic Pistol", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_navyrevolver = {
                Title = "Navy Revolver", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_navyrevolver", label = "Navy Revolver", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_gadgetpistol = {
                Title = "Gadget Pistol", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_gadgetpistol", label = "Gadget Pistol", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_pistolxm3 = {
                Title = "Pistol XM3", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_pistolxm3", label = "Pistol XM3", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			-- SMG GUNS
			weapon_microsmg = {
                Title = "Micro SMG", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_microsmg", label = "Micro SMG", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_smg_mk2 = {
                Title = "MP5", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_smg_mk2", label = "MP5", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_assaultsmg = {
                Title = "Assault SMG", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_assaultsmg", label = "Assault SMG", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_combatpdw = {
                Title = "Combat PDW", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_combatpdw", label = "Combat PDW", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_machinepistol = {
                Title = "Tec-9", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_machinepistol", label = "Tec-9", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_minismg = {
                Title = "Mini SMG", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_minismg", label = "Mini SMG", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			-- SHOTGUNS
			weapon_pumpshotgun = {
                Title = "Pump Shotgun", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_pumpshotgun", label = "Pump Shotgun", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_assaultshotgun = {
                Title = "Assault Shotgun", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_assaultshotgun", label = "Assault Shotgun", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_bullpupshotgun = {
                Title = "Assault Shotgun", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_bullpupshotgun", label = "Bullpup Shotgun", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_heavyshotgun = {
                Title = "Heavy Shotgun", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_heavyshotgun", label = "Heavy Shotgun", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_dbshotgun = {
                Title = "Double-barrel Shotgun", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_dbshotgun", label = "Double-barrel Shotgun", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_autoshotgun = {
                Title = "Double-barrel Shotgun", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_autoshotgun", label = "Auto Shotgun", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			-- ASSAULT RIFLES
			weapon_assaultrifle = {
                Title = "Assault Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_assaultrifle", label = "Assault Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_assaultrifle_mk2 = {
                Title = "AK-47 MK2", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_assaultrifle_mk2", label = "AK-47 MK2", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_carbinerifle = {
                Title = "Carbine Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_carbinerifle", label = "Carbine Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_advancedrifle = {
                Title = "Advanced Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_advancedrifle", label = "Advanced Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_specialcarbine = {
                Title = "Special Carbine", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_specialcarbine", label = "Special Carbine", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_specialcarbine_mk2 = {
                Title = "Special Carbine MK2", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_specialcarbine_mk2", label = "Special Carbine MK2", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_bullpuprifle = {
                Title = "Bullpup Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_bullpuprifle", label = "Bullpup Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_bullpuprifle_mk2 = {
                Title = "Bullpup Rifle MK2", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_bullpuprifle_mk2", label = "Bullpup Rifle MK2", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_compactrifle = {
                Title = "Compact Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_compactrifle", label = "Compact Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_militaryrifle = {
                Title = "Military Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_militaryrifle", label = "Military Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_heavyrifle = {
                Title = "Heavy Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_heavyrifle", label = "Heavy Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_tacticalrifle = {
                Title = "Service Carbine", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_tacticalrifle", label = "Service Carbine", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			-- SNIPER RIFLES
			weapon_sniperrifle = {
                Title = "Sniper Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Sniper Rifle", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_sniperrifle", label = "Heavy Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_heavysniper = {
                Title = "Heavy Sniper", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_heavysniper", label = "Heavy Sniper", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_heavysniper_mk2 = {
                Title = "Heavy Sniper MK2", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_heavysniper_mk2", label = "Heavy Sniper MK2", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_marksmanrifle = {
                Title = "Marksman Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_marksmanrifle", label = "Marksman Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_marksmanrifle_mk2 = {
                Title = "Marksman Rifle MK2", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_marksmanrifle_mk2", label = "Marksman Rifle MK2", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_precisionrifle = {
                Title = "Precision Sniper Rifle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_precisionrifle", label = "Precision Sniper Rifle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			-- HEAVY RIFLES
			weapon_mg = {
                Title = "Machinegun", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_mg", label = "Machinegun", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_combatmg = {
                Title = "Combat MG", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_combatmg", label = "Combat MG", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_combatmg_mk2 = {
                Title = "Combat MG MK2", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_combatmg_mk2", label = "Combat MG MK2", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_gusenberg = {
                Title = "Thompson SMG", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_gusenberg", label = "Thompson SMG", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_2 = { -- Weapon Dealer Ammo Crafting
        Occupied = false, -- Dont change
        Label = "Weapons Dealer - Ammo", --display label on help or target
        job = { name = "askgavin", grade = 0 }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(899.06, -3223.79, -98.26), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 272.00 + 180.0,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-gun",
        CraftingItems = { -- Table for all craftable Items
			pistol_ammo = {
                Title = "Pistol Ammo", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 99999, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_ammo", label = "Pistol Ammo", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			shotgun_ammo = {
                Title = "Shotgun Ammo", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "shotgun_ammo", label = "Shotgun Ammo", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			smg_ammo = {
                Title = "SMG Ammo", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "smg_ammo", label = "SMG Ammo", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			rifle_ammo = {
                Title = "Rifle Ammo", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "rifle_ammo", label = "Rifle Ammo", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			mg_ammo = {
                Title = "MG Ammo", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "mg_ammo", label = "MG Ammo", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			snp_ammo = {
                Title = "Sniper Ammo", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "snp_ammo", label = "Sniper Ammo", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			
        }
    },
	
	Crafting_default_3 = { -- Weapon Dealer Attachment Crafting
        Occupied = false, -- Dont change
        Label = "Weapons Dealer - Attachments", --display label on help or target
        job = { name = "askgavin", grade = 0 }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(887.51, -3209.7, -98.2), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 272.00 + 180.0,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-gun",
        CraftingItems = { -- Table for all craftable Items
            -- HAND GUNS
			pistol_extendedclip = {
                Title = "Pistol Extended Clip", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 99999, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_extendedclip", label = "Pistol Extended Clip", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			pistol_flashlight = {
                Title = "Pistol Flashlight", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_flashlight", label = "Pistol Flashlight", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			pistol_suppressor = {
                Title = "Pistol Suppressor", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_suppressor", label = "Pistol Suppressor", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			microsmg_scope = {
                Title = "SMG Scope", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "microsmg_scope", label = "SMG Scope", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			smg_drum = {
                Title = "SMG Drum", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "smg_drum", label = "SMG Drum", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			smg_extendedclip = {
                Title = "SMG Extended Clip", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "smg_extendedclip", label = "SMG Extended Clip", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			smg_suppressor = {
                Title = "SMG Suppressor", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "smg_suppressor", label = "SMG Suppressor", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			assaultshotgun_extendedclip = {
                Title = "Assault Shotgun Extended Clip", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "assaultshotgun_extendedclip", label = "Assault Shotgun Extended Clip", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			heavyshotgun_drum = {
                Title = "Heavy Shotgun Drum", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "heavyshotgun_drum", label = "Heavy Shotgun Drum", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			heavyshotgun_extendedclip = {
                Title = "Heavy Shotgun Extended Clip", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "heavyshotgun_extendedclip", label = "Heavy Shotgun Extended Clip", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			assaultrifle_drum = {
                Title = "Assault Rifle Drum", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "assaultrifle_drum", label = "Assault Rifle Drum", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			assaultrifle_extendedclip = {
                Title = "Assault Rifle Extended Clip", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "assaultrifle_extendedclip", label = "Assault Rifle Extended Clip", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			rifle_flashlight = {
                Title = "Rifle Flashlight", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "rifle_flashlight", label = "Rifle Flashlight", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			rifle_grip = {
                Title = "Rifle Grip", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "rifle_grip", label = "Rifle Grip", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			rifle_suppressor = {
                Title = "Rifle Suppressor", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "rifle_suppressor", label = "Rifle Suppressor", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			marksmanrifle_extendedclip = {
                Title = "Marksman Rifle Extended Clip", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "marksmanrifle_extendedclip", label = "Marksman Rifle Extended Clip", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			marksmanrifle_scope = {
                Title = "Marksman Rifle Scope", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "marksmanrifle_scope", label = "Marksman Rifle Scope", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			sniper_scope = {
                Title = "Sniper Scope", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "sniper_scope", label = "Sniper Scope", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			snipermax_scope = {
                Title = "Sniper Max Scope", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "snipermax_scope", label = "Sniper Max Scope", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			
		}
    },

	-- PUBLIC WEAPON CRAFT (Normal weps done via krp-weaponcrafting script)
	Crafting_default_4 = { -- Public Weapon Parts Crafting
        Occupied = false, -- Dont change
        Label = "Weapon Parts Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(-935.14, -2928.46, 13.95), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 332.04,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            handgun_mag = { -- Handguns
                Title = "Empty Handgun Magazine", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-cogs", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metal Scrap", count = 5, remove = true },
					{ item = "iron", label = "Iron", count = 10, remove = true },
					{ item = "steel", label = "Steel", count = 15, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "handgun_mag", label = "Empty Pistol Magazine", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			shotgun_choke = { -- Shotguns
                Title = "Shotgun Choke", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-cogs", -- icon for context
                Experience = { Required = 25, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "copper", label = "Copper", count = 5, remove = true },
					{ item = "metalscrap", label = "Metal Scrap", count = 10, remove = true },
					{ item = "plastic", label = "Plastic", count = 12, remove = true },
					{ item = "aluminum", label = "Aluminum", count = 6, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "shotgun_choke", label = "Shotgun Choke", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			smg_extendedstock = { -- Sub Machine Guns
                Title = "SMG Extended Stock", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-cogs", -- icon for context
                Experience = { Required = 50, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "plastic", label = "Plastic", count = 10, remove = true },
					{ item = "rubber", label = "Rubber", count = 5, remove = true },
					{ item = "metalscrap", label = "Metal Scrap", count = 8, remove = true },
					{ item = "steel", label = "Steel", count = 6, remove = true },
					{ item = "aluminum", label = "Aluminum", count = 4, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "smg_extendedstock", label = "SMG Extended Stock", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			ar_mag = { -- Assault Rifles
                Title = "Empty AR Magazine", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-cogs", -- icon for context
                Experience = { Required = 75, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "steel", label = "Steel", count = 10, remove = true },
					{ item = "rubber", label = "Rubber", count = 5, remove = true },
					{ item = "aluminum", label = "Aluminum", count = 8, remove = true },
					{ item = "iron", label = "Iron", count = 4, remove = true },
					{ item = "plastic", label = "Plastic", count = 9, remove = true },
					{ item = "copper", label = "Copper", count = 5, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "ar_mag", label = "Empty AR Magazine", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
    
	Crafting_default_5 = { -- Public Body Parts Crafting
        Occupied = false, -- Dont change
        Label = "Body Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1163.84, 4642.09, 76.32), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 52.23,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            pistol_body = {
                Title = "Pistol Body", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
				Blueprint = { item = "bp_handgun_full", label = "Handgun Blueprint", count = 1 },
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Scrap Metal", count = 100, remove = true },
                    { item = "aluminum", label = "Aluminum", count = 75, remove = true },
                    { item = "iron", label = "Iron", count = 40, remove = true },	
                    { item = "steel", label = "Steel", count = 45, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "pistol_body", label = "Pistol Body", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            shotgun_body = {
                Title = "Shotgun Body", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-gun", -- icon for context
                Experience = { Required = 25, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = "bp_shotgun_full", label = "Shotgun Blueprint", count = 1 },
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Scrap Metal", count = 175, remove = true },
                    { item = "aluminum", label = "Aluminum", count = 120, remove = true },
                    { item = "iron", label = "Iron", count = 45, remove = true },	
                    { item = "steel", label = "Steel", count = 50, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "shotgun_body", label = "Shotgun Body", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            -- smg_body = {
                -- Title = "SMG Body", -- Context label
                -- Progress = "Crafting..", -- Progress bar label
                -- Icon = "fa-solid fa-gun", -- icon for context
                -- Experience = { Required = 50, Add = 1 }, -- Required exp and How much should be add after crafting.
                -- Duration = 45, -- seconds to make!
                -- Blueprint = { item = nil, count = nil }, -- Blueprint item
                -- RequiredItems = { -- Table for required items
                    -- { item = "metalscrap", label = "Scrap Metal", count = 200, remove = true },
                    -- { item = "aluminum", label = "Aluminum", count = 75, remove = true },
                    -- { item = "iron", label = "Iron", count = 50, remove = true },	
                    -- { item = "steel", label = "Steel", count = 75, remove = true },
                -- },
                -- AddItems = { -- Table for item add
                    -- { item = "smg_body", label = "SMG Body", count = 1 }, -- Which Items should be added
                -- },
                -- Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                -- Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                -- Prop = {
                    -- enabled = true, -- Attach Prop Settings
                    -- prop = `prop_tool_screwdvr02`, -- Prop model
                    -- pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    -- rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    -- bone = 57005 -- Player bone index
                -- },
            -- },
            -- ar_body = {
                -- Title = "AR Body", -- Context label
                -- Progress = "Crafting..", -- Progress bar label
                -- Icon = "fa-solid fa-gun", -- icon for context
                -- Experience = { Required = 100, Add = 1 }, -- Required exp and How much should be add after crafting.
                -- Duration = 60, -- seconds to make!
                -- Blueprint = { item = nil, count = nil }, -- Blueprint item
                -- RequiredItems = { -- Table for required items
                    -- { item = "metalscrap", label = "Scrap Metal", count = 100, remove = true },
                    -- { item = "aluminum", label = "Aluminum", count = 300, remove = true },
                    -- { item = "iron", label = "Iron", count = 50, remove = true },	
                    -- { item = "steel", label = "Steel", count = 200, remove = true },
					-- { item = "rubber", label = "Rubber", count = 30, remove = true },
                -- },
                -- AddItems = { -- Table for item add
                    -- { item = "ar_body", label = "AR Body", count = 1 }, -- Which Items should be added
                -- },
                -- Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                -- Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                -- Prop = {
                    -- enabled = true, -- Attach Prop Settings
                    -- prop = `prop_tool_screwdvr02`, -- Prop model
                    -- pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    -- rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    -- bone = 57005 -- Player bone index
                -- },
            -- },
        }
    },
	
	Crafting_default_6 = { -- Public Attachments Crafting
        Occupied = false, -- Dont change
        Label = "Attachments Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1240.63, -3032.4, 9.32), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 180.0 + 180.0,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            pistol_suppressor = {
                Title = "Pistol Suppressor", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa fa-minus", -- icon for context
                Experience = { Required = 100, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = "bp_handgun_full", label = "Handgun Blueprint", count = 1 },
                RequiredItems = { -- Table for required items
                    { item = "metalscrap", label = "Metalscrap", count = 85, remove = true },
                    { item = "steel", label = "Steel", count = 120, remove = true },
                    { item = "rubber", label = "Rubber", count = 45, remove = true },						-- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "pistol_suppressor", label = "pistol_suppressor", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            pistol_extendedclip = {
                    Title = "Pistol Extended Mag", -- Context label
                    Progress = "Crafting..", -- Progress bar label
                    Icon = "fa fa-minus", -- icon for context
                    Experience = { Required = 200, Add = 1 }, -- Required exp and How much should be add after crafting.
                    Duration = 25, -- seconds to make!
                    Blueprint = { item = "bp_handgun_full", label = "Handgun Blueprint", count = 1 },
                    RequiredItems = { -- Table for required items
                        { item = "metalscrap", label = "Metalscrap", count = 150, remove = true },
                        { item = "steel", label = "Steel", count = 180, remove = true },
						{ item = "copper", label = "Copper", count = 150, remove = true },
                    },
                    AddItems = { -- Table for item add
                        { item = "pistol_extendedclip", label = "Pistol Extendedclip", count = 1 }, -- Which Items should be added
                    },
                    Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                    Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                    Prop = {
                        enabled = true, -- Attach Prop Settings
                        prop = `prop_tool_screwdvr02`, -- Prop model
                        pos = vec3(0.14, 0.0, -0.01), -- Prop position
                        rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                        bone = 57005 -- Player bone index
                },
            },
            smg_suppressor = {
                    Title = "SMG Suppressor", -- Context label
                    Progress = "Crafting..", -- Progress bar label
                    Icon = "fa fa-minus", -- icon for context
                    Experience = { Required = 350, Add = 1 }, -- Required exp and How much should be add after crafting.
                    Duration = 25, -- seconds to make!
                    Blueprint = { item = "bp_mg_full", label = "Machine Gun Blueprint", count = 1 },
                    RequiredItems = { -- Table for required items
                        { item = "metalscrap", label = "Metalscrap", count = 180, remove = true },
                        { item = "steel", label = "Steel", count = 250, remove = true },
                        { item = "rubber", label = "Rubber", count = 80, remove = true },
						{ item = "copper", label = "Copper", count = 100, remove = true },
                    },
                    AddItems = { -- Table for item add
                        { item = "smg_suppressor", label = "Smg Suppressor", count = 1 }, -- Which Items should be added
                    },
                    Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                    Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                    Prop = {
                        enabled = true, -- Attach Prop Settings
                        prop = `prop_tool_screwdvr02`, -- Prop model
                        pos = vec3(0.14, 0.0, -0.01), -- Prop position
                        rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                        bone = 57005 -- Player bone index
                },
            },
            smg_extendedclip = {
                    Title = "SMG Extended Mag", -- Context label
                    Progress = "Crafting..", -- Progress bar label
                    Icon = "fa fa-minus", -- icon for context
                    Experience = { Required = 450, Add = 1 }, -- Required exp and How much should be add after crafting.
                    Duration = 25, -- seconds to make!
                    Blueprint = { item = "bp_mg_full", label = "Machine Gun Blueprint", count = 1 },
                    RequiredItems = { -- Table for required items
                        { item = "pistol_extendedclip", label = "pistol_extendedclip", count = 1, remove = true },
                        { item = "metalscrap", label = "Metalscrap", count = 230, remove = true },
                        { item = "steel", label = "Steel", count = 365, remove = true },
                        { item = "rubber", label = "Rubber", count = 130, remove = true },						-- Which Items should are required
                    },
                    AddItems = { -- Table for item add
                        { item = "smg_extendedclip", label = "Smg Extendedclip", count = 1 }, -- Which Items should be added
                    },
                    Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                    Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                    Prop = {
                        enabled = true, -- Attach Prop Settings
                        prop = `prop_tool_screwdvr02`, -- Prop model
                        pos = vec3(0.14, 0.0, -0.01), -- Prop position
                        rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                        bone = 57005 -- Player bone index
                },
            },
            microsmg_scope = {
                    Title = "Gun Sight", -- Context label
                    Progress = "Crafting..", -- Progress bar label
                    Icon = "fa fa-minus", -- icon for context
                    Experience = { Required = 500, Add = 1 }, -- Required exp and How much should be add after crafting.
                    Duration = 25, -- seconds to make!
                    Blueprint = { item = "bp_mg_full", label = "Machine Gun Blueprint", count = 1 },
                    RequiredItems = { -- Table for required items
                        { item = "metalscrap", label = "Metalscrap", count = 230, remove = true },
                        { item = "steel", label = "Steel", count = 320, remove = true },
                        { item = "rubber", label = "Rubber", count = 100, remove = true },
						{ item = "glass", label = "Glass", count = 380, remove = true },
						{ item = "plastic", label = "Plastic", count = 100, remove = true },
                    },
                    AddItems = { -- Table for item add
                        { item = "microsmg_scope", label = "microsmg_scope", count = 1 }, -- Which Items should be added
                    },
                    Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                    Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                    Prop = {
                        enabled = true, -- Attach Prop Settings
                        prop = `prop_tool_screwdvr02`, -- Prop model
                        pos = vec3(0.14, 0.0, -0.01), -- Prop position
                        rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                        bone = 57005 -- Player bone index
                },
            },
            smg_drum = {
                    Title = "SMG Drum Mag", -- Context label
                    Progress = "Crafting..", -- Progress bar label
                    Icon = "fa fa-minus", -- icon for context
                    Experience = { Required = 550, Add = 1 }, -- Required exp and How much should be add after crafting.
                    Duration = 25, -- seconds to make!
                    Blueprint = { item = "bp_mg_full", label = "Machine Gun Blueprint", count = 1 },
                    RequiredItems = { -- Table for required items
                        { item = "smg_extendedclip", label = "Smg Extendedclip", count = 2, remove = true },
                        { item = "metalscrap", label = "Metalscrap", count = 180, remove = true },
                        { item = "steel", label = "Steel", count = 320, remove = true },
                        { item = "rubber", label = "Rubber", count = 150, remove = true },
						{ item = "copper", label = "Copper", count = 100, remove = true },
                    },
                    AddItems = { -- Table for item add
                        { item = "smg_drum", label = "Smg Drum", count = 1 }, -- Which Items should be added
                    },
                    Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                    Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                    Prop = {
                        enabled = true, -- Attach Prop Settings
                        prop = `prop_tool_screwdvr02`, -- Prop model
                        pos = vec3(0.14, 0.0, -0.01), -- Prop position
                        rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                        bone = 57005 -- Player bone index
                },
                },
            assaultrifle_extendedclip = {
                    Title = "AR Extended Mag", -- Context label
                    Progress = "Crafting..", -- Progress bar label
                    Icon = "fa fa-minus", -- icon for context
                    Experience = { Required = 600, Add = 1 }, -- Required exp and How much should be add after crafting.
                    Duration = 25, -- seconds to make!
                    Blueprint = { item = "bp_ar_full", label = "Assault Rifle Blueprint", count = 1 },
                    RequiredItems = { -- Table for required items
                        { item = "smg_drum", label = "Smg Drum", count = 1, remove = true },
                        { item = "metalscrap", label = "Metalscrap", count = 330, remove = true },
                        { item = "steel", label = "Steel", count = 420, remove = true },
                        { item = "rubber", label = "Rubber", count = 150, remove = true },		
                    },
                    AddItems = { -- Table for item add
                        { item = "assaultrifle_extendedclip", label = "Assaultrifle Extendedclip", count = 1 }, -- Which Items should be added
                    },
                    Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                    Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                    Prop = {
                        enabled = true, -- Attach Prop Settings
                        prop = `prop_tool_screwdvr02`, -- Prop model
                        pos = vec3(0.14, 0.0, -0.01), -- Prop position
                        rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                        bone = 57005 -- Player bone index
                },
                },
            assaultrifle_drum = {
                    Title = "AR Drum Mag", -- Context label
                    Progress = "Crafting..", -- Progress bar label
                    Icon = "fa fa-minus", -- icon for context
                    Experience = { Required = 700, Add = 1 }, -- Required exp and How much should be add after crafting.
                    Duration = 25, -- seconds to make!
                    Blueprint = { item = "bp_ar_full", label = "Assault Rifle Blueprint", count = 1 },
                    RequiredItems = { -- Table for required items
                        { item = "assaultrifle_extendedclip", label = "Assaultrifle Extendedclip", count = 4, remove = true },
                        { item = "metalscrap", label = "Metalscrap", count = 400, remove = true },
                        { item = "steel", label = "Steel", count = 380, remove = true },
                        { item = "rubber", label = "Rubber", count = 160, remove = true },						-- Which Items should are required
                    },
                    AddItems = { -- Table for item add
                        { item = "assaultrifle_drum", label = "Assaultrifle Drum", count = 1 }, -- Which Items should be added
                    },
                    Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                    Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                    Prop = {
                        enabled = true, -- Attach Prop Settings
                        prop = `prop_tool_screwdvr02`, -- Prop model
                        pos = vec3(0.14, 0.0, -0.01), -- Prop position
                        rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                        bone = 57005 -- Player bone index
                },
            },
        }
    },
	
	Crafting_default_7 = { -- Public Throwables Crafting
        Occupied = false, -- Dont change
        Label = "Throwables Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(3601.0151, 3672.2861, 33.871749), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 100.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-wrench",
        CraftingItems = { -- Table for all craftable Items
            glass_bottle = {
                Title = "Glass Bottle", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-wine-bottle", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 280, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "busenburner", label = "Bunsen Burner", count = 1, remove = false },
                    { item = "glass", label = "Glass", count = 250, remove = true },						-- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "glassbottle", label = "Glass Bottle", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			weapon_molotov = {
                Title = "Molotov", -- Context label
                Progress = "Crafting..", -- Progress bar label
                Icon = "fa-solid fa-wine-bottle", -- icon for context
                Experience = { Required = 400, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 280, -- seconds to make!
                Blueprint = { item = "blueprint_molotov", label = "Molotov Blueprint", count = 1 }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "lighter", label = "Lighter", count = 3, remove = true },
                    { item = "vodka", label = "Vodka", count = 300, remove = true },
                    { item = "glassbottle", label = "Glass Bottle", count = 3, remove = true },						-- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "molotov", label = "Molotov", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	-- DRUGS
	Crafting_default_8 = { -- Weed Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Weed Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(-2.71, -1821.45, 29.56), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-cannabis",
        CraftingItems = { -- Table for all craftable Items
            dryweed = {
                Title = "Dry & Chop Weed", -- Context label
                Progress = "Drying and chopping...", -- Progress bar label
                Icon = "fa-solid fa-scissors", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 15, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "weed", label = "Weed", count = 2, remove = true },
                    { item = "trimming_scissors", label = "Trimming Scissors", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "driedweed", label = "Dried Weed", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_cs_scissors`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(0.0, -147.0, 330.0), -- Prop rot
                    bone = 18905 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			tinny = {
                Title = "Package Tinnie", -- Context label
                Progress = "Making tinnie...", -- Progress bar label
                Icon = "fa-solid fa-joint", -- icon for context
                Experience = { Required = 100, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 20, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "driedweed", label = "Dried Weed", count = 2, remove = true },
                    { item = "tinfoil", label = "Tinfoil Sheets", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "tinnie", label = "Tinnie", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "anim@amb@business@weed@weed_inspecting_high_dry@", clip = "weed_inspecting_high_base_inspector" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `p_cs_joint_01`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			fiftybag = {
                Title = "Package 50 Bag", -- Context label
                Progress = "Packing 50 bag...", -- Progress bar label
                Icon = "fas fa-square", -- icon for context
                Experience = { Required = 250, Add = 2 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "driedweed", label = "Dried Weed", count = 5, remove = true },
                    { item = "empty_baggie", label = "Empty Baggie", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weed_50bag", label = "50 Bag", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `bkr_prop_weed_bag_01a`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 330.0), -- Prop rot
                    bone = 18905 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_9 = { -- Weed Crafting (Org Controlled)
        Occupied = false, -- Dont change
        Label = "Dealer Weed Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1059.04, -3195.93, -39.16), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `bkr_prop_weed_table_01a`, Heading = 179.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-cannabis",
        CraftingItems = { -- Table for all craftable Items
            civweedsmallbrick = {
                Title = "Package Small Weed Brick", -- Context label
                Progress = "Packing small weed brick...", -- Progress bar label
                Icon = "fas fa-box", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 20, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "weed_50bag", label = "Weed 50 Bag", count = 10, remove = true },
                    { item = "gladwrap", label = "Gladwrap", count = 2, remove = true },
					{ item = "packingtape", label = "Packing Tape", count = 2, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weed_small_brick", label = "Small Weed Brick", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_weed_block_01`, -- Prop model
                    pos = vec3(0.14, 0.1, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_10 = { -- Weed Crafting (Org Controlled)
        Occupied = false, -- Dont change
        Label = "Org Weed Crafting", --display label on help or target
        job = { name = "askgavin", grade = 0 }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1038.4, -3205.78, -37.28), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-cannabis",
        CraftingItems = { -- Table for all craftable Items
            weedbigbrick = {
                Title = "Package Large Weed Brick", -- Context label
                Progress = "Packing large weed brick...", -- Progress bar label
                Icon = "fas fa-weight-hanging", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "weed_small_brick", label = "Small Weed Brick", count = 5, remove = true },
                    { item = "gladwrap", label = "Gladwrap", count = 4, remove = true },
					{ item = "packingtape", label = "Packing Tape", count = 4, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weed_brick", label = "Large Weed Brick", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `hei_prop_heist_weed_block_01`, -- Prop model
                    pos = vec3(0.14, 0.1, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 18905 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			fiftybagbreakdown = {
                Title = "Break Down Large Brick", -- Context label
                Progress = "Breaking down large brick...", -- Progress bar label
                Icon = "fas fa-scissors", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "weed_brick", label = "Large Weed Brick", count = 1, remove = true },
                    { item = "craftknife", label = "Craft Knife", count = 1, remove = false },
					{ item = "empty_baggie", label = "Empty Baggie", count = 75, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weed_50bag", label = "Weed 50 Bag", count = 75 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `bkr_prop_weed_bag_01a`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 330.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_11 = { -- Mushroom Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Mushroom Drying", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(2328.55, 2570.49, 47.72), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-star",
        CraftingItems = { -- Table for all craftable Items
            mushroom = {
                Title = "Dry Mushroom", -- Context label
                Progress = "Drying mushroom...", -- Progress bar label
                Icon = "fas fa-fan", -- icon for context
                Experience = { Required = 0, Add = 2 }, -- Required exp and How much should be add after crafting.
                Duration = 3, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "mushroom", label = "Wild Mushroom", count = 1, remove = true },
                    { item = "fooddehydrator", label = "Food Dehydrator", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "driedmushroom", label = "Dried Mushroom", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "anim@amb@business@weed@weed_inspecting_high_dry@", clip = "weed_inspecting_high_base_inspector" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `v_serv_bs_hairdryer`, -- Prop model
                    pos = vec3(0.1, 0.0, 0.0), -- Prop position
                    rot = vec3(0.0, -0.45, 0.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_12 = { -- Magic Mushroom Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Magic Mushroom Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(2510.42, 3786.1, 50.84), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-star",
        CraftingItems = { -- Table for all craftable Items
            magicmushroom = {
                Title = "Craft Magic Mushroom", -- Context label
                Progress = "Bagging magic mushrooms...", -- Progress bar label
                Icon = "fas fa-star", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "driedmushroom", label = "Dried Wild Mushroom", count = 2, remove = true },
                    { item = "empty_baggie", label = "Empty Baggie", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "magicmushroom", label = "Magic Mushroom", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missheist_agency3aig_23", clip = "urinal_sink_loop" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `bkr_prop_weed_bag_01a`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 330.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },

	Crafting_default_13 = { -- MDMA Crystal Crafting (Public)
        Occupied = false, -- Dont change
        Label = "MDMA Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1443.4, 6331.77, 23.98), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `bkr_prop_coke_press_01b`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-heart",
        CraftingItems = { -- Table for all craftable Items
            safleaves = {
                Title = "Process Sassafras Leaves", -- Context label
                Progress = "Cooking leaves...", -- Progress bar label
                Icon = "fas fa-crystal", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "sassafras_plant", label = "Sassafras Leaf", count = 2, remove = true },
                    { item = "mortar", label = "Mortar and pestle", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "mdmacrystal", label = "MDMA Crystal", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "amb@prop_human_bbq@male@idle_a", clip = "idle_b" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_copper_pan`, -- Prop model
                    pos = vec3(0.14, 0.2, -0.1), -- Prop position
                    rot = vec3(-60.0, 247.0, -130.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_14 = { -- MDMA Pill Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Pill Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1543.74, 6330.14, 24.08), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `bkr_prop_coke_press_01b`, Heading = 330.47,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-heart",
        CraftingItems = { -- Table for all craftable Items
            mdmapillpress = {
                Title = "Press MDMA Pill", -- Context label
                Progress = "Pressing pill...", -- Progress bar label
                Icon = "fas fa-tablets", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "mdmacrystal", label = "MDMA Crystal", count = 3, remove = true },
                    { item = "pill_press", label = "Pill Press", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "mdmapill", label = "MDMA Pill", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missbigscoreprepd", clip = "pull_level_michael" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = false, -- Attach Prop Settings
                    prop = `prop_tool_screwdvr02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },

	Crafting_default_15 = { -- MDMA Bulk Pill Trading (Public)
        Occupied = false, -- Dont change
        Label = "MDMA Dealer", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(-182.52, 6389.42, 31.49), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `bkr_prop_coke_press_01b`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-heart",
        CraftingItems = { -- Table for all craftable Items
            bulkmdma = {
                Title = "Trade low-quality MDMA Pills", -- Context label
                Progress = "Trading MDMA pill...", -- Progress bar label
                Icon = "fas fa-handshake", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "mdmapill", label = "MDMA Pills", count = 4, remove = true },
                     { item = "empty_baggie", label = "Empty Baggie", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "baggedmdmapills", label = "Bagged MDMA Pills", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = false, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `v_club_vu_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `v_club_vu_pills`, -- Prop model
                    pos = vec3(0.14, 0.01, -0.01), -- Prop position
                    rot = vec3(280.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },

	Crafting_default_16 = { -- Oxy (poppy) Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Opium Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(3537.46, 3660.11, 28.12), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `bkr_prop_coke_press_01b`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-prescription-bottle",
        CraftingItems = { -- Table for all craftable Items
            poppyoxy = {
                Title = "Break down poppy plant", -- Context label
                Progress = "Breaking down poppy...", -- Progress bar label
                Icon = "fas fa-flask", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "poppyplant", label = "Poppy Plant", count = 2, remove = true },
                    { item = "mortar", label = "Mortar and pestle", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "opium", label = "Opium", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_MOVIE_STUDIO_LIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_single_rose`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(-100.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_17 = { -- Oxy (poppy) Pill Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Oxy Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(3541.03, 3665.62, 28.12), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `bkr_prop_coke_press_01b`, Heading = 260.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-prescription-bottle",
        CraftingItems = { -- Table for all craftable Items
            opium = {
                Title = "Press Oxy Pill", -- Context label
                Progress = "Pressing opium...", -- Progress bar label
                Icon = "fas fa-tablets", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 35, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "opium", label = "Opium", count = 2, remove = true },
                    { item = "empty_pill", label = "Empty Pill Capsule", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "oxy_pill", label = "Oxy Pill", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missbigscoreprepd", clip = "pull_level_michael" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_MOVIE_STUDIO_LIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = false, -- Attach Prop Settings
                    prop = `prop_cs_pills`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_18 = { -- Oxy (poppy) Pill Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Talk to suspicious doctor...", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1118.88, -1522.61, 34.84), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `bkr_prop_coke_press_01b`, Heading = 260.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-prescription-bottle",
        CraftingItems = { -- Table for all craftable Items
            oxypill = {
                Title = "Trade low-quality Oxy Pills", -- Context label
                Progress = "Trading oxy pill..", -- Progress bar label
                Icon = "fas fa-file-prescription", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "oxy_pill", label = "Oxy Pill", count = 4, remove = true },
                    { item = "empty_pillbottle", label = "Empty Pill Bottle", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "bulkoxy", label = "Bulk Oxy Pills", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = false, dict = "mp_common_heist", clip = "a_atm_mugging" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_cs_pills`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },

	Crafting_default_19 = { -- Coke Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Coke Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(4506.64, -4551.47, 5.04), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `bkr_prop_coke_table01a`, Heading = 288.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-snowflake",
        CraftingItems = { -- Table for all craftable Items
            coke = {
                Title = "Process Cocaine Leaves", -- Context label
                Progress = "Processing cocaine leaves..", -- Progress bar label
                Icon = "fas fa-mortar-pestle", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "coca_leaf", label = "Cocaine Leaves", count = 2, remove = true },
                    { item = "mortar", label = "Mortar and pestle", count = 1, remove = false },
					{ item = "bakingsoda", label = "Baking Soda", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "coke", label = "Cocaine", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `bkr_prop_coke_bakingsoda_o`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			cokebaggys = {
                Title = "Package Crack Baggies", -- Context label
                Progress = "Packing crack baggies..", -- Progress bar label
                Icon = "fas fa-get-pocket", -- icon for context
                Experience = { Required = 350, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "coke", label = "Cocaine", count = 2, remove = true },
                    { item = "empty_baggie", label = "Empty Baggie", count = 1, remove = true },
					{ item = "finescale", label = "Fine Scale", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "crack_baggy", label = "Crack Cocaine", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_meth_bag_01`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_20 = { -- Coke Small Brick Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Small Coke Brick Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(708.63, -959.47, 30.4), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `imp_prop_impexp_coke_trolly`, Heading = 288.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-snowflake",
        CraftingItems = { -- Table for all craftable Items
            cokebricksmall = {
                Title = "Package Small Coke Brick", -- Context label
                Progress = "Processing small coke brick..", -- Progress bar label
                Icon = "fas fa-mortar-pestle", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "crack_baggy", label = "Crack Cocaine", count = 4, remove = true },
                    { item = "bakingsoda", label = "Baking Soda", count = 2, remove = true },
					{ item = "gladwrap", label = "Gladwrap", count = 3, remove = true },
					{ item = "packingtape", label = "Packing Tape", count = 2, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "coke_small_brick", label = "Small Coke Brick", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_drug_package_02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },

	Crafting_default_21 = { -- Coke Brick Crafting (Org Controlled)
        Occupied = false, -- Dont change
        Label = "Org Coke Crafting", --display label on help or target
        job = { name = "askgavin", grade = 0 }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1092.88, -3196.58, -38.99), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-snowflake",
        CraftingItems = { -- Table for all craftable Items
			cokebigbrick = {
                Title = "Package Large Coke Brick", -- Context label
                Progress = "Processing small coke brick..", -- Progress bar label
                Icon = "fas fa-weight-hanging", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "coke_small_brick", label = "Small Cocaine Brick", count = 5, remove = true },
                    { item = "gladwrap", label = "Gladwrap", count = 8, remove = true },
					{ item = "packingtape", label = "Packing Tape", count = 4, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "coke_brick", label = "Large Coke Brick", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_drug_package_02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			orgcrackbaggies = {
                Title = "Crack Baggy Crafting", -- Context label
                Progress = "Breaking down large brick...", -- Progress bar label
                Icon = "fas fa-scissors", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "coke_brick", label = "Large Coke Brick", count = 1, remove = true },
                    { item = "craftknife", label = "Craft Knife", count = 1, remove = false },
					{ item = "empty_baggie", label = "Empty Baggie", count = 80, remove = true },
					{ item = "finescale", label = "Fine Scale", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "crack_baggy", label = "Crack Cocaine", count = 80 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_meth_bag_01`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_22 = { -- Heroin (Morphine) Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Morphine Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(-1168.64, -2015.98, 13.23), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `v_ret_ml_tablea`, Heading = 313.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-fire",
        CraftingItems = { -- Table for all craftable Items
            morphine = {
                Title = "Process Poppy Resin", -- Context label
                Progress = "Processing poppy resin...", -- Progress bar label
                Icon = "fas fa-mortar-pestle", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "poppyresin", label = "Poppy Resin", count = 2, remove = true },
                    { item = "limeadditive", label = "Lime Additive", count = 3, remove = true },
					{ item = "distilledwater", label = "Distilled Water", count = 2, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "morphinebase", label = "Morphine Base", count = 2 }, -- Which Items should be added
                },
                Animation = { enabled = false, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = true, scenario = "WORLD_HUMAN_WELDING", prop = `prop_tool_blowtorch` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = false, -- Attach Prop Settings
                    prop = `bkr_prop_coke_bakingsoda_o`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_23 = { -- Heroin Baggies/Sml Brick Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Heroin Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(-592.86, -1598.98, 27.01), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `v_ret_ml_tableb`, Heading = 268.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-fire",
        CraftingItems = { -- Table for all craftable Items
            heroin = {
                Title = "Process Morphine", -- Context label
                Progress = "Processing morphine..", -- Progress bar label
                Icon = "fas fa-mortar-pestle", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "morphinebase", label = "Morphine Base", count = 4, remove = true },
                    { item = "hydrochloric_acid", label = "Hydrochloric Acid", count = 2, remove = true },
					{ item = "mortar", label = "Mortar and pestle", count = 1, remove = false },
				},
                AddItems = { -- Table for item add
                    { item = "heroin", label = "Smack Baggy", count = 2 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `bkr_prop_meth_hcacid`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			smallheroinbrick = {
                Title = "Package Small Heroin Brick", -- Context label
                Progress = "Processing small heroin brick..", -- Progress bar label
                Icon = "fas fa-mortar-pestle", -- icon for context
                Experience = { Required = 500, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "heroin", label = "Smack Baggy", count = 4, remove = true },
                    { item = "gladwrap", label = "Gladwrap", count = 8, remove = true },
					{ item = "packingtape", label = "Packing Tape", count = 4, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "heroin_small_brick", label = "Small Heroin Brick", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_drug_package_02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },

	Crafting_default_24 = { -- Heroin Brick Crafting (Org Controlled)
        Occupied = false, -- Dont change
        Label = "Bulk Heroin Processing", --display label on help or target
        job = { name = "askgavin", grade = 0 }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1012.27, -3194.95, -38.99), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-fire",
        CraftingItems = { -- Table for all craftable Items
			heroinbigbrick = {
                Title = "Package Large Heroin Brick", -- Context label
                Progress = "Packing large brick...", -- Progress bar label
                Icon = "fas fa-weight-hanging", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "heroin_small_brick", label = "Small Heroine Brick", count = 5, remove = true },
                    { item = "gladwrap", label = "Gladwrap", count = 8, remove = true },
					{ item = "packingtape", label = "Packing Tape", count = 4, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "heroin_brick", label = "Large Heroin Brick", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `hei_prop_hei_drug_pack_02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			orgheroinbaggies = {
                Title = "Break Down Large Heroin Brick", -- Context label
                Progress = "Breaking down large brick...", -- Progress bar label
                Icon = "fas fa-scissors", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "heroin_brick", label = "Large Heroin Brick", count = 1, remove = true },
                    { item = "craftknife", label = "Craft Knife", count = 1, remove = false },
					{ item = "empty_baggie", label = "Empty Baggie", count = 95, remove = true },
					{ item = "finescale", label = "Fine Scale", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "heroin", label = "Smack Baggy", count = 95 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_meth_bag_01`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },

	Crafting_default_25 = { -- Rye Crafting (LSD) (Public)
        Occupied = false, -- Dont change
        Label = "Rye Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "Table", -- Table, Marker, PolyZone
        Positions = { coords = vec3(2529.64, 4981.55, 44.99), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `v_ret_ml_tableb`, Heading = 134.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-smile",
        CraftingItems = { -- Table for all craftable Items
            ryeprocess = {
                Title = "Process Rye Plant", -- Context label
                Progress = "Processing rye plant...", -- Progress bar label
                Icon = "fas fa-mortar-pestle", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "ryeplant", label = "Rye Plant", count = 2, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "ergotfungus", label = "Ergot Fungus", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_rye_plant_01`, -- Prop model
                    -- pos = vec3(-0.10, 0.00, 0.0), -- Prop position
					pos = vec3(0.0, -0.03, 0.0), -- Prop position
                    rot = vec3(290.0, -187.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			ergotfungus = {
                Title = "Process Fungus", -- Context label
                Progress = "Processing fungus..", -- Progress bar label
                Icon = "fas fa-mortar-pestle", -- icon for context
                Experience = { Required = 100, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "ergotfungus", label = "Ergot Fungus", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "lysergicacid", label = "Lysergic Acid", count = 2 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_WELDING", prop = `prop_tool_blowtorch` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_bar_cockshakropn`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(250.0, -167.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_26 = { -- LSD Dot (Public)
        Occupied = false, -- Dont change
        Label = "LSD Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(2432.33, 4971.86, 42.35), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `v_ret_ml_tableb`, Heading = 268.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-smile",
        CraftingItems = { -- Table for all craftable Items
            lsdacid = {
                Title = "LSD Crystal Crafting", -- Context label
                Progress = "Converting acid...", -- Progress bar label
                Icon = "fas fa-fan", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "lysergicacid", label = "Lysergic Acid", count = 2, remove = true },
                    { item = "busenburner", label = "Bunsen Burner", count = 1, remove = false },
				},
                AddItems = { -- Table for item add
                    { item = "lsdcrystal", label = "LSD Cyrstal", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `bkr_prop_meth_hcacid`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			lsdcrystal = {
                Title = "Process LSD Crystal", -- Context label
                Progress = "Processing LSD crystal...", -- Progress bar label
                Icon = "fas fa-dot-circle", -- icon for context
                Experience = { Required = 100, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 25, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "lsdcrystal", label = "LSD Crystal", count = 3, remove = true },
                    { item = "lsdpaper", label = "Absorbent Paper", count = 1, remove = true },
					{ item = "craftknife", label = "Craft Knife", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "lsdtab", label = "LSD Tab", count = 2 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `ng_proc_paper_02a`, -- Prop model  
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_27 = { -- LSD Sheet Crafting (Public)
        Occupied = false, -- Dont change
        Label = "LSD Sheet Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1958.44, 5181.65, 47.96), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `v_ret_ml_tableb`, Heading = 134.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-smile",
        CraftingItems = { -- Table for all craftable Items
            lsdsheet = {
                Title = "LSD Sheet Crafting", -- Context label
                Progress = "Processing LSD...", -- Progress bar label
                Icon = "fas fa-mortar-pestle", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "lsdtab", label = "LSD Tab", count = 2, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "lsdpaper", label = "Absorbent Paper", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `ng_proc_paper_02a`, -- Prop model
                    pos = vec3(0.0, -0.03, 0.0), -- Prop position
                    rot = vec3(290.0, -187.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_28 = { -- LSD Sheet Break (Org Controlled)
        Occupied = false, -- Dont change
        Label = "LSD Breakdown Processing", --display label on help or target
        job = { name = "askgavin", grade = 0 }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(1942.71, 5180.44, 47.96), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-smile",
        CraftingItems = { -- Table for all craftable Items
			orglsdsheets = {
                Title = "LSD Cutting", -- Context label
                Progress = "Breaking down LSD Sheets", -- Progress bar label
                Icon = "fas fa-scissors", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "lsdsheet", label = "LSD Sheet", count = 1, remove = true },
                    { item = "craftknife", label = "Craft Knife", count = 1, remove = false },
					{ item = "empty_baggie", label = "Empty Baggie", count = 10, remove = true },
					
                },
                AddItems = { -- Table for item add
                    { item = "lsdtab", label = "LSD Tab", count = 10 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `ng_proc_paper_02a`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_29 = { -- Meth (psudo) Crafting (Public)
        Occupied = false, -- Dont change
        Label = "Meth Crafting", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(164.29, -251.34, 51.4), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `bkr_prop_coke_table01a`, Heading = 288.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-skull-crossbones",
        CraftingItems = { -- Table for all craftable Items
            psudo = {
                Title = "Process Pseudoephedrine", -- Context label
                Progress = "Processing Pseudo...", -- Progress bar label
                Icon = "fas fa-mortar-pestle", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "pseudo", label = "Pseudoephedrine", count = 2, remove = true },
                    { item = "mortar", label = "Mortar and pestle", count = 1, remove = false },
					{ item = "hydrochloric_acid", label = "Hydrochloric Acid", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "methsolution", label = "Meth Solution", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `v_club_vu_pills`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			psudocook = {
                Title = "Cook Meth", -- Context label
                Progress = "Cooking solution...", -- Progress bar label
                Icon = "fas fa-get-pocket", -- icon for context
                Experience = { Required = 200, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "methsolution", label = "Meth Solution", count = 2, remove = true },
                    { item = "gascooker", label = "Gas Cooker", count = 1, remove = false },
					{ item = "acetone", label = "Acetone", count = 1, remove = true },
					{ item = "gladwrap", label = "Gladwrap", count = 1, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "metheightball", label = "8-Ball of Meth", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "amb@prop_human_bbq@male@base", clip = "base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = false, -- Attach Prop Settings
                    prop = `prop_tool_blowtorch`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_30 = { -- Meth Small Bag (Org Controlled)
        Occupied = false, -- Dont change
        Label = "Meth Bag Processing", --display label on help or target
        job = { name = nil, grade = nil }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(983.81, -141.34, -49.0), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-skull-crossbones",
        CraftingItems = { -- Table for all craftable Items
			bigmeth = {
                Title = "Package Small Meth Bag", -- Context label
                Progress = "Packing meth bag...", -- Progress bar label
                Icon = "fas fa-weight-hanging", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "metheightball", label = "8-Ball of Meth", count = 5, remove = true },
                    { item = "gladwrap", label = "Gladwrap", count = 8, remove = true },
					{ item = "packingtape", label = "Packing Tape", count = 4, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "small_meth_bag", label = "Small Meth Bag", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_drug_package_02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	
	Crafting_default_31 = { -- Meth Big Bag (Org Controlled)
        Occupied = false, -- Dont change
        Label = "Meth Big Bag Crafting", --display label on help or target
        job = { name = "askgavin", grade = 0 }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(987.75, -141.37, -49.0), radius = 2.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 170.0 + 180.0,
            DrawDistance = 20.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-skull-crossbones",
        CraftingItems = { -- Table for all craftable Items
			orgbigmeth = {
                Title = "Package Large Meth Bag", -- Context label
                Progress = "Packing large meth bag...", -- Progress bar label
                Icon = "fas fa-weight-hanging", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "meth_small_bag", label = "Small Meth Bag", count = 5, remove = true },
                    { item = "gladwrap", label = "Gladwrap", count = 8, remove = true },
					{ item = "packingtape", label = "Packing Tape", count = 4, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "meth_bag", label = "Large Meth Bag", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_drug_package_02`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
			orgmetheights = {
                Title = "Break Down Large Meth Bag", -- Context label
                Progress = "Breaking down large bag...", -- Progress bar label
                Icon = "fas fa-scissors", -- icon for context
                Experience = { Required = 0, Add = 1 }, -- Required exp and How much should be add after crafting.
                Duration = 30, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "meth_bag", label = "Large Meth Bag", count = 1, remove = true },
                    { item = "craftknife", label = "Craft Knife", count = 1, remove = false },
					{ item = "empty_baggie", label = "Empty Baggie", count = 60, remove = true },
					{ item = "finescale", label = "Fine Scale", count = 1, remove = false },
                },
                AddItems = { -- Table for item add
                    { item = "metheightball", label = "8-Ball of Meth", count = 60 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "missmechanic", clip = "work2_base" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT", prop = `prop_cs_pills` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `prop_meth_bag_01`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(290.0, -97.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                },
            },
        }
    },
	Crafting_default_32 = { -- Valhalla Crafting
        Occupied = false, -- Dont change
        Label = "Vahalla Crafting", --display label on help or target
        job = { name = "valhalla", grade = 1 }, -- Required job to open crafting station
        type = "PolyZone", -- Table, Marker, PolyZone
        Positions = { coords = vec3(-164.15, 222.15, 95.12), radius = 1.0, debug = false }, -- Circle PolyZone
        Table = { Type = "target" --[[help, target]] , Prop = `valcauldronbig`, Heading = 180.0 + 180.0,
            DrawDistance = 5.0 },
        Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            Color = { r = 8, g = 137, b = 255, a = 150 } },
        TargetIcon = "fas fa-magic",
        CraftingItems = { -- Table for all craftable Items
            
			weapon_vc_kylo = {
                Title = "Kylo Ren Saber", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa fa-magic", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "vc_space", label = "Space Debris", count = 1, remove = true },
					{ item = "metalscrap", label = "Metalscrap", count = 150, remove = true },
                    { item = "steel", label = "Steel", count = 300, remove = true },
                    { item = "rubber", label = "Rubber", count = 10, remove = true },						-- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "weapon_vc_kylo", label = "Kylo Ren Saber", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "rcmbarry", clip = "bar_1_attack_idle_aln" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `vw_prop_casino_art_skull_03b`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
			
			weapon_vc_minecraft = {
                Title = "Minecraft Sword", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa fa-magic", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "vc_diamond", label = "Plastic Diamond", count = 1, remove = true },
					{ item = "metalscrap", label = "Metalscrap", count = 100, remove = true },
                    { item = "plastic", label = "Plastic", count = 300, remove = true },
                    { item = "rubber", label = "Rubber", count = 15, remove = true },						-- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "weapon_vc_minecraft", label = "Minecraft Sword", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "rcmbarry", clip = "bar_1_attack_idle_aln" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `vw_prop_casino_art_skull_03b`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
			
			weapon_vc_shield = {
                Title = "Captian America Shield", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa fa-magic", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "vc_dish", label = "Old Rusty Dish", count = 1, remove = true },
					{ item = "metalscrap", label = "Metalscrap", count = 300, remove = true },
                    { item = "steel", label = "Steel", count = 200, remove = true },
                },
                AddItems = { -- Table for item add
                    { item = "weapon_vc_shield", label = "Captian America Shield", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "rcmbarry", clip = "bar_1_attack_idle_aln" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `vw_prop_casino_art_skull_03b`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
			
			weapon_vc_stormbreaker = {
                Title = "Stormbreaker", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa fa-magic", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "vc_uru", label = "Uru Metal", count = 1, remove = true },
					{ item = "metalscrap", label = "Metalscrap", count = 200, remove = true },
                    { item = "steel", label = "Steel", count = 200, remove = true },
                    { item = "rubber", label = "Rubber", count = 8, remove = true },						-- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "weapon_vc_stormbreaker", label = "Stormbreaker", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "rcmbarry", clip = "bar_1_attack_idle_aln" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `vw_prop_casino_art_skull_03b`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
			
			weapon_vc_thor = {
                Title = "Thors Hammer", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa fa-magic", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "vc_magnet", label = "Earth Magnet", count = 1, remove = true },
					{ item = "metalscrap", label = "Metalscrap", count = 150, remove = true },
                    { item = "steel", label = "Steel", count = 200, remove = true },
                    { item = "rubber", label = "Rubber", count = 15, remove = true },						-- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "weapon_vc_thor", label = "Thors Hammer", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "rcmbarry", clip = "bar_1_attack_idle_aln" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `vw_prop_casino_art_skull_03b`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
			
			weapon_vc_zelda = {
                Title = "Zelda Master Sword", -- Context label
                Progress = "Crafting...", -- Progress bar label
                Icon = "fa fa-magic", -- icon for context
                Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                Duration = 40, -- seconds to make!
                Blueprint = { item = nil, count = nil }, -- Blueprint item
                RequiredItems = { -- Table for required items
                    { item = "vc_flames", label = "Sacred Flames", count = 1, remove = true },
					{ item = "metalscrap", label = "Metalscrap", count = 150, remove = true },
                    { item = "steel", label = "Steel", count = 300, remove = true },
                    { item = "rubber", label = "Rubber", count = 10, remove = true },						-- Which Items should are required
                },
                AddItems = { -- Table for item add
                    { item = "weapon_vc_zelda", label = "Zelda Master Sword", count = 1 }, -- Which Items should be added
                },
                Animation = { enabled = true, dict = "rcmbarry", clip = "bar_1_attack_idle_aln" }, -- TaskPlayAnim
                Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                Prop = {
                    enabled = true, -- Attach Prop Settings
                    prop = `vw_prop_casino_art_skull_03b`, -- Prop model
                    pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    bone = 57005 -- Player bone index
                },
            },
            
        }
    },
	
}

-- EXAMPLES:
-- Crafting_default_1 = { -- BurgerShot example / PolyZone
        -- Crafting Settings
        -- Occupied = false, -- Dont change
        -- Label = "Grill", --display label on help or target
        -- job = { name = "burgershot", grade = 0 }, -- Required job to open crafting station
        -- type = "PolyZone", -- Table, Marker, PolyZone
        -- Positions = { coords = vec3(-1198.41, -894.95, 13.89), radius = 0.7, debug = false }, -- Circle PolyZone and coords for Table and Marker (if selected type)
        -- Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 10.0, DrawDistance = 10.0 },
        -- Marker = { DrawDistance = 100.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            -- Color = { r = 8, g = 137, b = 255, a = 150 } },
        -- TargetIcon = "fas fa-drumstick-bite",
        -- Items Settings
        -- CraftingItems = { -- Table for all craftable Items
            -- Steak = {
                -- Title = "Steak", -- Context label
                -- Progress = "Grilling...", -- Progress bar label
                -- Icon = "fa-solid fa-drumstick-bite", -- icon for context
                -- Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                -- Duration = 10, -- seconds to make!
                -- Blueprint = { item = nil, count = nil }, -- Blueprint item
                -- RequiredItems = { -- Table for required items
                    -- { item = "raw_steak", label = "Raw Steak", count = 1, remove = true }, -- Which Items should are required
                -- },
                -- AddItems = { -- Table for item add
                    -- { item = "steak", label = "Steak", count = 1 }, -- Which Items should be added
                -- },
                -- Animation = { enabled = false, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                -- Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition

                -- Prop = {
                    -- enabled = false, -- Attach Prop Settings
                    -- prop = `prop_tool_screwdvr02`, -- Prop model
                    -- pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    -- rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    -- bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                -- },
            -- },
        -- }
    -- },

    -- Crafting_default_2 = { -- Crafting Mechanic expemple / Table - Help
        -- Occupied = false, -- Dont change
        -- Label = "Mechanic Crafting", --display label on help or target
        -- job = { name = "bennys", grade = 0 }, -- Required job to open crafting station
        -- type = "Table", -- Table, Marker, PolyZone
        -- Positions = { coords = vec3(-213.91, -1333.83, 29.89), radius = 1.0, debug = false }, -- Circle PolyZone
        -- Table = { Type = "help" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = 2.39 + 180.0,
            -- DrawDistance = 100.0 },
        -- Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            -- Color = { r = 8, g = 137, b = 255, a = 150 } },
        -- TargetIcon = "fas fa-wrench",
        -- CraftingItems = { -- Table for all craftable Items
            -- repairkit = {
                -- Title = "Repair kit", -- Context label
                -- Progress = "Crafting..", -- Progress bar label
                -- Icon = "fa-solid fa-wrench", -- icon for context
                -- Experience = { Required = 0, Add = 0 }, -- Required exp and How much should be add after crafting.
                -- Duration = 10, -- seconds to make!
                -- Blueprint = { item = nil, count = nil }, -- Blueprint item
                -- RequiredItems = { -- Table for required items
                    -- { item = "scrap", label = "Scrap Metal", count = 1, remove = true }, -- Which Items should are required
                -- },
                -- AddItems = { -- Table for item add
                    -- { item = "repairkit", label = "Repair Kit", count = 1 }, -- Which Items should be added
                -- },
                -- Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                -- Scenario = { enabled = true, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                -- Prop = {
                    -- enabled = true, -- Attach Prop Settings
                    -- prop = `prop_tool_screwdvr02`, -- Prop model
                    -- pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    -- rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    -- bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                -- },
            -- },
        -- }
    -- },
		
	-- Crafting_default_1 = { -- Weapon Crafting
        -- Occupied = false, -- Dont change
        -- Label = "Weapon Crafting", --display label on help or target
        -- job = { name = nil, grade = nil }, -- Required job to open crafting station
        -- type = "Table", -- Table, Marker, PolyZone
        -- Positions = { coords = vec3(3053.2026, -4717.62, 5.1605463), radius = 1.0, debug = false }, -- Circle PolyZone
        -- Table = { Type = "target" --[[help, target]] , Prop = `gr_prop_gr_bench_04a`, Heading = -255.00 + 180.0,
            -- DrawDistance = 100.0 },
        -- Marker = { DrawDistance = 10.0, Type = 21, Size = { x = 0.7, y = 0.7, z = 0.7 },
            -- Color = { r = 8, g = 137, b = 255, a = 150 } },
        -- TargetIcon = "fas fa-wrench",
        -- CraftingItems = { -- Table for all craftable Items
            -- weapon_machinepistol = {
                -- Title = "Tec-9", -- Context label
                -- Progress = "Crafting..", -- Progress bar label
                -- Icon = "fa-solid fa-gun", -- icon for context
                -- Experience = { Required = 750, Add = 1 }, -- Required exp and How much should be add after crafting.
                -- Duration = 30, -- seconds to make!
                -- Blueprint = { item = "blueprint_tec9", label = "Tec-9 Blueprint", count = 1 }, -- Blueprint item
                -- RequiredItems = { -- Table for required items
                    -- { item = "rubber", label = "Rubber", count = 150, remove = true }, -- Which Items should are required
                    -- { item = "metalscrap", label = "Scrap Metal", count = 350, remove = true },                
					-- { item = "iron", label = "Iron", count = 150, remove = true }, 
					-- { item = "aluminum", label = "Aluminum", count = 100, remove = true },
					-- { item = "pistol_body", label = "Pistol Body", count = 1, remove = true },
					-- },
                -- AddItems = { -- Table for item add
                    -- { item = "weapon_machinepistol", label = "Tec-9", count = 1 }, -- Which Items should be added
                -- },
                -- Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                -- Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                -- Prop = {
                    -- enabled = true, -- Attach Prop Settings
                    -- prop = `prop_tool_screwdvr02`, -- Prop model
                    -- pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    -- rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    -- bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                -- },
            -- },
			
            -- weapon_appistol = {
                -- Title = "Glock 18c", -- Context label
                -- Progress = "Crafting..", -- Progress bar label
                -- Icon = "fa-solid fa-gun", -- icon for context
                -- Experience = { Required = 1000, Add = 1 }, -- Required exp and How much should be add after crafting.
                -- Duration = 30, -- seconds to make!
                -- Blueprint = { item = "blueprint_appistol", label = "Glock 18c Blueprint", count = 1 }, -- Blueprint item
                -- RequiredItems = { -- Table for required items
                    -- { item = "rubber", label = "Rubber", count = 350, remove = true }, -- Which Items should are required
                    -- { item = "metalscrap", label = "Scrap Metal", count = 200, remove = true },                
					-- { item = "iron", label = "Iron", count = 100, remove = true }, 
					-- { item = "aluminum", label = "Aluminum", count = 250, remove = true },
					-- { item = "pistol_body", label = "Pistol Body", count = 1, remove = true },
                -- },
                -- AddItems = { -- Table for item add
                    -- { item = "weapon_appistol", label = "Glock 18c", count = 1 }, -- Which Items should be added
                -- },
                -- Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                -- Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                -- Prop = {
                    -- enabled = true, -- Attach Prop Settings
                    -- prop = `prop_tool_screwdvr02`, -- Prop model
                    -- pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    -- rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    -- bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                -- },
            -- },

            -- weapon_smg = {
                -- Title = "SMG", -- Context label
                -- Progress = "Crafting..", -- Progress bar label
                -- Icon = "fa-solid fa-gun", -- icon for context
                -- Experience = { Required = 1250, Add = 1 }, -- Required exp and How much should be add after crafting.
                -- Duration = 60, -- seconds to make!
                -- Blueprint = { item = "blueprint_smg", label = "SMG Blueprint", count = 1 }, -- Blueprint item
                -- RequiredItems = { -- Table for required items
                    -- { item = "rubber", label = "Rubber", count = 250, remove = true }, -- Which Items should are required
                    -- { item = "metalscrap", label = "Scrap Metal", count = 350, remove = true },                
					-- { item = "iron", label = "Iron", count = 200, remove = true }, 
					-- { item = "aluminum", label = "Aluminum", count = 250, remove = true },
					-- { item = "smg_body", label = "SMG Body", count = 1, remove = true },
                -- },
                -- AddItems = { -- Table for item add
                    -- { item = "weapon_smg", label = "SMG", count = 1 }, -- Which Items should be added
                -- },
                -- Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                -- Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                -- Prop = {
                    -- enabled = true, -- Attach Prop Settings
                    -- prop = `prop_tool_screwdvr02`, -- Prop model
                    -- pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    -- rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    -- bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                -- },
            -- },

            -- weapon_bullpuprifle = {
                -- Title = "Bullpup Rifle", -- Context label
                -- Progress = "Crafting..", -- Progress bar label
                -- Icon = "fa-solid fa-gun", -- icon for context
                -- Experience = { Required = 1500, Add = 1 }, -- Required exp and How much should be add after crafting.
                -- Duration = 100, -- seconds to make!
                -- Blueprint = { item = "blueprint_bullpuprifle", label = "Bullpup Rifle Blueprint", count = 1 }, -- Blueprint item
                -- RequiredItems = { -- Table for required items
                    -- { item = "rubber", label = "Rubber", count = 400, remove = true }, -- Which Items should are required
                    -- { item = "metalscrap", label = "Scrap Metal", count = 400, remove = true },                
					-- { item = "iron", label = "Iron", count = 400, remove = true }, 
					-- { item = "aluminum", label = "Aluminum", count = 400, remove = true },
					-- { item = "ar_body", label = "AR Body", count = 1, remove = true },
                -- },
                -- AddItems = { -- Table for item add
                    -- { item = "weapon_bullpuprifle", label = "Bullpup Rifle", count = 1 }, -- Which Items should be added
                -- },
                -- Animation = { enabled = true, dict = "mini@repair", clip = "fixing_a_ped" }, -- TaskPlayAnim
                -- Scenario = { enabled = false, scenario = "PROP_HUMAN_BBQ", prop = `prop_fish_slice_01` --[[For correct Detach]] }, --TaskStartScenarioAtPosition
                -- Prop = {
                    -- enabled = true, -- Attach Prop Settings
                    -- prop = `prop_tool_screwdvr02`, -- Prop model
                    -- pos = vec3(0.14, 0.0, -0.01), -- Prop position
                    -- rot = vec3(60.0, -147.0, 30.0), -- Prop rot
                    -- bone = 57005 -- Player bone index (left = 18905 and right = 57005)
                -- },
            -- },
        -- }
    -- },