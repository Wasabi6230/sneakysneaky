QBConfig = {}

QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 180) -- Gets max players from config file, default 48
QBConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)
QBConfig.UpdateInterval = 5 -- how often to update player data in minutes
QBConfig.StatusInterval = 5000 -- how often to check hunger/thirst status in milliseconds

QBConfig.Money = {}
QBConfig.Money.MoneyTypes = { cash = 500, bank = 5000, crypto = 0 } -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
QBConfig.Money.DontAllowMinus = { 'cash', 'crypto' } -- Money that is not allowed going in minus
QBConfig.Money.PayCheckTimeOut = 10 -- The time in minutes that it will give the paycheck
QBConfig.Money.PayCheckSociety = false -- If true paycheck will come from the society account that the player is employed at, requires qb-management

QBConfig.Player = {}
QBConfig.Player.HungerRate = 4.2 -- Rate at which hunger goes down.
QBConfig.Player.ThirstRate = 3.8 -- Rate at which thirst goes down.
QBConfig.Player.Bloodtypes = {
    "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-",
}

-- KRP CUSTOM START
-- whitelist items on death so you don't lose everything (DISABLED FOR NOW UNTIL THE FIX IS UPDATED https://discord.com/channels/831626422232678481/979428090616877176
-- QBConfig.Player.WhitelistItems = {
    -- ['phone'] = true,
	-- ['adminvest'] = true,
	-- ['id_card'] = true,
	-- ['driver_license'] = true,
	-- ['kiwirp_guide'] = true,
	-- ['lawyerpass'] = true,
	-- ['weaponlicense'] = true,
	-- ['visa'] = true,
	-- ['mastercard'] = true,
	-- ['walkstick'] = true,
	-- ['fitbit'] = true,
	-- ['permit_to_procure_gun'] = true,
	-- ['permit_to_procure_ammo'] = true,
	-- ['pet_shepherd'] = true,
	-- ['pet_cat'] = true,
	-- ['pet_pug'] = true,
	-- ['pet_retriever'] = true,
	-- ['pet_rat'] = true,
	-- ['pet_rottweiler'] = true,
	-- ['pet_westy'] = true,
	-- ['pet_poodle'] = true,
	-- ['pet_rabbit'] = true,
	-- ['pet_chicken'] = true,
	-- ['pet_husky'] = true,
	-- ['pet_mtlion'] = true,
	-- ['pet_k9'] = true,
	-- ['prespolypatch'] = true,
	-- ['presnativepatch'] = true,
	-- ['preswarriorspatch'] = true,	
	-- ['vprespolypatch'] = true,
	-- ['vpresnativepatch'] = true,
	-- ['vpreswarriorspatch'] = true,	
	-- ['sgtpolypatch'] = true,
	-- ['sgtnativepatch'] = true,	
	-- ['sgtwarriorspatch'] = true,	
	-- ['secretarypolypatch'] = true,
	-- ['secretarynativepatch'] = true,	
	-- ['secretarywarriorspatch'] = true,
	-- ['enforcerpolypatch'] = true,	
	-- ['enforcernativepatch'] = true,
	-- ['enforcerwarriorspatch'] = true,
	-- ['treswarriorspatch'] = true,
	-- ['memberpolypatch'] = true,
	-- ['membernativepatch'] = true,
	-- ['memberwarriorspatch'] = true,
	-- ['trespolypatch'] = true,	
	-- ['tailgunpolypatch'] = true,
	-- ['ympolypatch'] = true,
	-- ['lifememberpolypatch'] = true,	
	-- ['elitepolypatch'] = true,	
	-- ['roadcappolypatch'] = true,
	-- ['lifemembernativepatch'] = true,
	-- ['lifememberwarriorspatch'] = true,
	-- ['roadcapnativepatch'] = true,	
	-- ['matua1nativepatch'] = true,
	-- ['matua2nativepatch'] = true,
	-- ['matua3nativepatch'] = true,
	-- ['matua4nativepatch'] = true,
	-- ['tailgunnativepatch'] = true,
	-- ['prospectpolypatch'] = true,
	-- ['prospectnativepatch'] = true,	
	-- ['prospectwarriorspatch'] = true,
	-- ['girlypolypatch'] = true,
	-- ['girlpolypatch'] = true,
	-- ['prospectgpolypatch'] = true,	
	-- ['girlwarriorspatch'] = true,
	-- ['girlswarriorpatch'] = true,
	-- ['secwarriorspatch'] = true,
	-- ['doncoat'] = true,
	-- ['underdoncoat'] = true,
	-- ['consiglierecoat'] = true,	
	-- ['enforcercoat'] = true,
	-- ['capocoat'] = true,	
	-- ['soldiercoat'] = true,
	-- ['trescoat'] = true,	
	-- ['queencoat'] = true,
	-- ['queentrescoat'] = true,
	-- ['weapon_vc_kylo'] = true,
	-- ['weapon_vc_minecraft'] = true,
	-- ['weapon_vc_thor'] = true,
	-- ['weapon_vc_zelda'] = true,
	-- ['weapon_vc_shield'] = true,
	-- ['weapon_vc_stormbreaker'] = true,
-- }
-- KRP CUSTOM END

QBConfig.Server = {} -- General server config
QBConfig.Server.Closed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
QBConfig.Server.ClosedReason = "Server Closed" -- Reason message to display when people can't join the server
QBConfig.Server.Uptime = 0 -- Time the server has been up.
QBConfig.Server.Whitelist = false -- Enable or disable whitelist on the server
QBConfig.Server.WhitelistPermission = 'admin' -- Permission that's able to enter the server when the whitelist is on
QBConfig.Server.PVP = true -- Enable or disable pvp on the server (Ability to shoot other players)
QBConfig.Server.Discord = "" -- Discord invite link
QBConfig.Server.CheckDuplicateLicense = true -- Check for duplicate rockstar license on join
QBConfig.Server.Permissions = { 'god', 'admin', 'mod' } -- Add as many groups as you want here after creating them in your server.cfg

QBConfig.Notify = {}

QBConfig.Notify.NotificationStyling = {
    group = false, -- Allow notifications to stack with a badge instead of repeating
    position = "right", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = true -- Display Progress Bar
}

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
QBConfig.Notify.VariantDefinitions = {
    success = {
        classes = 'success',
        icon = 'done'
    },
    primary = {
        classes = 'primary',
        icon = 'info'
    },
    error = {
        classes = 'error',
        icon = 'dangerous'
    },
    police = {
        classes = 'police',
        icon = 'local_police'
    },
    ambulance = {
        classes = 'ambulance',
        icon = 'fas fa-ambulance'
    }
}
