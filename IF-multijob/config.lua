Config = {}

Config.Locale = "en" -- select from en/bg -- you can find them in lang.lua and if you want translate them

Config.Keybind = "o" --Keybind used to open the menu (Players can change it in settingss)

Config.Core = 'qb-core' -- your core prefix

Config.Duty = "QBCore:ToggleDuty" -- your duty event

Config.JobUpdate = 'QBCore:Client:OnJobUpdate' -- your on job update event 

Config.SetDuty = "QBCore:Client:SetDuty" -- your set duty event 

Config.UseKey = true -- If true the menu can be used anywhere -- If false the menu can be used only at location

Config.Mark = 20 -- drawMarker type -- see all at - https://docs.fivem.net/docs/game-references/markers/

Config.MaxJobs = 4 -- How many jobs player can have?

Config.log = "no" -- If yes a namecheck with add will be displayed at every restart in server console

Config.Coords =  vector4(-266.87, -960.06, 31.22, 31.12) -- Location if Config.UseKey = false to open menu at

Config.MarkerColor =  {r = 57, g = 125, b = 199, a = 0.9} -- Marker colours

Config.Dist1 = 2.0 -- press key

Config.Dist2 = 2.0 -- showing marker

Config.DrawUiText = "Press [O] to open menu"

function ShowNotification(msg, type)
    --local IFCore = exports[Config.Core]:GetCoreObject() -- dont change IFCore as it will break the script
    --IFCore.Functions.Notify(msg, type) -- -- dont change IFCore as it will break the script
    
    exports['okokNotify']:Alert("MultiJob", msg, 5000, type) 
    -- you can change that to your own CLIENT SIDE (can be export)
end

function ShowNotificationServer(source, msg, type)
 TriggerClientEvent('okokNotify:Alert', source, "Job Switch", msg, 5000, type)
--TriggerClientEvent('QBCore:Notify', source, msg, type)
-- you can change that to your own CLIENT SIDE (can't be export)
end


function DrawUI(text)
    exports['okokTextUI']:Open(text, 'darkblue', 'left')
    -- you can change that to your own CLIENT SIDE (can be export)
end

function CloseUI()
    exports['okokTextUI']:Close() 
    -- you can change that to your own CLIENT SIDE (can be export)
end

Config.Icons = { --Icons for jobs in the menu. Use job name(Case sensitive). Can use FontAwsome or Bootstrap Icons (You can edit these and add new)
    -- ['police'] = 'bi bi-shield-shaded',
    -- ['ambulance'] = 'fas fa-ambulance',
    ['unemployed'] = 'bi bi-briefcase',
    ['bossmen'] = 'bi bi-briefcase',
	['manaaki'] = 'bi bi-briefcase',
	['rebelkings'] = 'bi bi-briefcase',
	['yellowjack'] = 'bi bi-briefcase',
	['mirror'] = 'bi bi-briefcase',
	['bellas'] = 'bi bi-briefcase',
	['valhalla'] = 'bi bi-briefcase',
	['icecream'] = 'bi bi-briefcase',
	['bahama'] = 'bi bi-briefcase',
	['realestate'] = 'bi bi-briefcase',
	['taxi'] = 'bi bi-briefcase',
	['tuner'] = 'bi bi-briefcase',
	['jinx'] = 'bi bi-briefcase',
	['repairer'] = 'bi bi-briefcase',
	['fruitpicker'] = 'bi bi-briefcase',
	['gardener'] = 'bi bi-briefcase',
	['lavie'] = 'bi bi-briefcase',
	['cardealer'] = 'bi bi-briefcase',
	['mechanic'] = 'bi bi-briefcase',
	['freight'] = 'bi bi-briefcase',
	['whenua'] = 'bi bi-briefcase',
	['judge'] = 'bi bi-briefcase',
	['lawyer'] = 'bi bi-briefcase',
	['trucker'] = 'bi bi-briefcase',
	['tow'] = 'bi bi-briefcase',
	['electrician'] = 'bi bi-briefcase',
	['admin'] = 'bi bi-briefcase',
	['garbage'] = 'bi bi-briefcase',
	['pacificbluffs'] = 'bi bi-briefcase',

}

Config.DefaultIcon = "fas fa-briefcase" -- The default icon shown if the job isn't listed above ^^^

Config.BlackListedJobs = { --jobs that will not be automatically added to the multijob menu
    'police',
    'ambulance'
}

