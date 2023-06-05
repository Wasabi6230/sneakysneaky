Config = Config or {}

--- ### TEBEX - MUSIC - YOUTUBE  ### ---

Config.TebexTransactionID = "tbx-25518522a3823-8bb76e" --- Required for Youtube and Music app. (Example : tbx-....)

--- ### Framework Settings ### ---

Config.QBCoreNewversion = true

if Config.QBCoreNewversion then
    Config.CoreName = "QBCore"
    Config.Core = exports['qb-core']:GetCoreObject()
    Config.CoreNotify = "QBCore:Notify"
else
    Config.CoreName = "QBCore:GetObject"
    Config.Core = nil
    TriggerEvent(Config.CoreName, function(obj) Config.Core = obj end)
    Config.CoreNotify = "QBCore:Notify"
end

--- ### Phone settings ### ---

Config.KeyMapping       = true                 --## This setting is for those using slotted inventory. (Prevents key operation)
Config.OpenPhone        = 'M'                 --## Phone open key ## https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.Locale           = 'en'
Config.RegisterCommand  = "TooglePhone"        -- commandName
Config.ItemName         = {           -- # item name
                            "phone",
                            "pink_phone",
                            "gold_phone"
                        }
Config.ChargeItemName   = "powerbank"           --- PowerBank Item Name
Config.PropActive       = true
Config.CryptoName       = "qbit"
Config.HospitalAmbulanceAlert = false
Config.Fahrenheit       = false
Config.EyeTarget        = true                 -- required qb-target (You can use it for contacts sharing and phone booth)
Config.TargetExport     = "qb-target"           -- exports["qb-target"]  -- Resource Name
Config.UsableItem       = true                  -- If you want to use without items set it to false
Config.AirDropID        = true                -- Activate the AirDrop feature if you want the player to see the ID.
Config.AutoMessageDelete    = true             -- Automatically deletes messages (Messages,Mail,Group Messages,Tinder Messages,Yellow Pages)
Config.AutoDeleteTime       = 7                -- How many days ago you want to delete data
Config.AutoWantedTime       = 7                -- How many days ago you want to delete data (Automatic deletion of wanted people in MDT application after how many days if deletion is forgotten)
Config.WaitPhone            = 2                -- Cycle time when phone is on
Config.Signal               = false             -- Signal system (phone downtime in some areas)

--- ### Voice settings ### ---

Config.MumbleExport     = "mumble-voip"       -- exports["mumble-voip"] -- Resource Name
Config.PMAVoiceExport   = "pma-voice"         -- exports["pma-voice"]   -- Resource Name
Config.PMAVoice         = true               -- Use Pma-Voice Resource (Recomended!) https://github.com/AvarianKnight/pma-voice
Config.UseMumbleVoIP    = false               -- Use Frazzle's Mumble-VoIP Resource https://github.com/FrazzIe/mumble-voip
Config.UseTokoVoIP      = false
Config.SaltyChat        = false               -- SaltyChat (Only v2.6 and lower | Not tested in v2.6 higher versions)

--- ## CALL COMMAND ### ---
Config.OnlineContactPlayers = true    -- Activate to see active players in the contacts
Config.CallAnswer = "answer"  -- quick answer (registercommand)
Config.EndCall = "endcall"  -- to close call (registercommand)

Config.SpecificNumberOn = false  --- If you want the SpecificNumber function to work, enable it
 -- When this number is called the trigger on the doc page will work.
 -- server : https://docs.gkshop.org/gksphone/developers/server-event#specific-number
 -- client : https://docs.gkshop.org/gksphone/developers/client-event#specific-number
Config.SpecificNumber = {
    ["5555555"] = true
}

-- ### Business APP ### ---
Config.JobGrade           = { -- Business level (Invoice cancellation authorization)
    ["police"] = 7,
    ["ambulance"] = 6,
    ["mechanic"] = 0,
    ["whenua"] = 0,
    ["yellowjack"] = 0,
    ["tow"] = 0,
    ["jinx"] = 0,
    ["rebelkings"] = 0,
	["tuner"] = 0,
	["bahama"] = 0,
	["realestate"] = 0,
	["lawyer"] = 0,
	["bossmen"] = 0,
	["bellas"] = 0,
	["valhalla"] = 0,
	["icecream"] = 0,
	["mirror"] = 0,
	["manaaki"] = 0,
	["burgershot"] = 0,
	["pacificbluffs"] = 0,
}

-- ### TAXI APP ### ---
Config.TaxiPrice        = 75     -- Taxi Price ( 75$/KM )
Config.TaxiJobCode      = "taxi"  -- Job Code

-- ### House APP ### ---
Config.loafHouse        = false   -- Activate if you are using Loaf House (https://store.loaf-scripts.com/package/4310850)

-- ### BANK APP ### ---
Config.BankTransferCom      = 0     -- Bank transfer commission rate
Config.OfflineBankTransfer  = true

---### Dispatch ### ---
Config.cdDispatch       = false  -- Activate if you are using Codesign Dispatch (https://codesign.pro/package/4206357)

-- ### GARAGE APP ### ---
Config.qbGarages        = true   -- Set to false if you are not using qb-garages
Config.cdGarages        = false  -- Activate if you are using Codesign Garage (https://codesign.pro/package/4206352)
Config.loafGarages      = false  -- Activate if you are using Loaf Garage (https://store.loaf-scripts.com/package/4310876)

Config.OwnedVehicles    = "player_vehicles"   -- ## SQL TABLE NAME (VEHICLES)
Config.ValespawnRadius  = 70.0   -- Distance to spaw your car
Config.ValePrice        = 10000   -- Vale Price
Config.ValeNPC          = false   -- Activate if you want the valet to bring the car to you.
Config.ImpoundVale      = true   -- Set to true to not fetch impounded cars

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupe",
    [4] = "Muscle",
    [5] = "Sport Classic",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Motorbike",
    [9] = "Off-Road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Van",
    [13] = "Bike",
    [14] = "Boat",
    [15] = "Helicopter",
    [16] = "Plane",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Train"
}
Config.Carhashdebug = false  -- car hash (f8)

-- ### CAR SELLER ### ---

Config.OfflineCarSeller = true
Config.DefaultGarage = "alta"  -- The garage where the car will go when a car is purchased
Config.CarsellerTax = 5

Config.CarsSellerBlacklist = {
    [-1216765807] = true,
    [-12162765807] = true,
	[18032233] = true,
	[461465043] = true
}

Config.CarSellerClassBlock = {
    ["Emergency"] = true,
    ["Super"] = false
}


-- ### BILLING APP ### --- (/billing id amount label)

Config.qbmanagement       = true

Config.BillingCommissions = { -- This is a percentage (0.10) == 10% ( Must be active to receive commission - If the player is not in the game, she/he cannot receive a commission.)
    mechanic = 0.20,
    whenua = 0.10,
    yellowjack = 0.50,
    tow = 0.10,
    jinx = 0.10,
    rebelkings = 0.0,
	tuner = 0.10,
	bahama = 0.50,
	realestate = 0.10,
	lawyer = 0.50,
	bossmen = 0.10,
	bellas = 0.50,
	valhalla = 0.25,
	icecream = 0.25,
	mirror = 0.50,
	manaaki = 0.25,
	burgershot = 0.20,
	pacificbluffs = 0.15,
}

Config.BillingJob = {
    mechanic = true,
    ambulance = true,
    whenua = true,
    yellowjack = true,
    tow = true,
    jinx = true,
    rebelkings = true,
	tuner = true,
    police = true,
	bahama = true,
	realestate = true,
	lawyer = true,
	bossmen = true,
	bellas = true,
	valhalla = true,
	icecream = true,
	mirror = true,
	manaaki = true,
	burgershot = true,
	pacificbluffs = true,
}

-- ### YellowPages APP ### ---
Config.AdvertisingPrice = 300

-- ### Twitter APP ### ---
Config.TwitterVerifyCommand = "twitterverify"   -- (/twitterverify true/false username)

-- ### Instagram APP ### ---
Config.InstagramVerifyCommand = "instagramverify"  -- (/instagramverify true/false username)

-- ### Race APP ### ---
Config.RaceAutCommand = "raceaut"
Config.qbcoreaut = "god"  --- qb-core authorization system

-- ### Charge ### --- (/charge playerid charge(0-100))
Config.ChargeAutCommand = "charge"
Config.qbcorechargeaut = "god"  --- qb-core authorization system


--## PHONE Box --##

Config.PhoneBox = true
Config.PhoneBoxKey = "E"
Config.PhoneBoxRegCom = "phonebox"
Config.PhoneBoothMoney = { actived = true, money = 500 }
Config.PhoneBoothModel = {
	[1281992692] = true,
    [1158960338] = true,
    [295857659] = true,
    [-78626473] = true,
    [-2103798695] = true,
    [1511539537] = true,
    [-1559354806] = true
}
Config.PhoneBootNumber = "COLLECT CALL"



--## Crypto ##--

Config.Crytos = {
    ["bitcoin"] = true,
    ["ethereum"] = true,
    ["tether"] = false,
    ["binance-usd"] = false,
    ["uniswap"] = false,
    ["binancecoi"] = false,
    ["terra-luna"] = false,
    ["avalanche-2"] = false,
    ["cardano"] = false,
    ["ripple"] = true,
    ["usd-coin"] = false,
    ["dogecoin"] = true,
    ["litecoin"] = true,
    ["chainlink"] = true,
    ["stellar"] = true,
    ["tron"] = true,
    ["eos"] = true,
    ["monero"] = true,
    ["iota"] = true
}

---##  Spam ## ---

Config.SpamLimit = 6  -- Default: 6
Config.SpamReset = 10  -- seconds
Config.SpamPlayerKick = true
Config.SpamDropPlayer = "You were kicked from the server for spamming too much"