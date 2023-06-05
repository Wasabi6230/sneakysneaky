Config = Config or {}

-- Open scoreboard key
Config.OpenKey = 'HOME' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config.Toggle = true -- If this is false the scoreboard stays open only when you hold the OpenKey button, if this is true the scoreboard will be openned and closed with the OpenKey button

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 180) -- It returns 48 if it cant find the Convar Int

-- Minimum Police for Actions
Config.IllegalActions = {
    ["atmrobbery"] = {
        minimumPolice = 2,
        busy = false,
        label = "ATM Robbery",
    },
	["storerobbery"] = {
        minimumPolice = 3,
        busy = false,
        label = "Store Robbery",
    },
    ["4cops"] = {
        minimumPolice = 4,
        busy = false,
        label = "4 Police On-duty",
    },
    ["fleeca"] = {
        minimumPolice = 4,
        busy = false,
        label = "Fleeca Bank"
    },
    ["paleto"] = {
        minimumPolice = 6,
        busy = false,
        label = "Paleto Bank"
    },
    ["pacific"] = {
        minimumPolice = 8,
        busy = false,
        label = "Pacific Bank"
    },
    ["jewellery"] = {
        minimumPolice = 4,
        busy = false,
        label = "Jewellery"
    },
	-- KRP CUSTOM START
	["ems"] = {
        minimumEMS = 1,
        busy = false,
        label = "EMS On-duty"
    },
    ["corrections"] = {
        minimumCorrections = 1,
        busy = false,
        label = "Corrections On-Duty",
    }
	-- KRP CUSTOM END

}

-- Show ID's for all players or Opted in Staff
-- Config.ShowIDforALL = false -- disabled to stop people seeing admins
