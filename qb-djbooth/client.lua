
-- Variables

local QBCore = exports['qb-core']:GetCoreObject()
local currentZone = nil
local PlayerData = {}

-- Handlers

AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then return end
	PlayerData = QBCore.Functions.GetPlayerData()
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

-- Static Header

local musicHeader = {
    {
        header = 'Play some music!',
        params = {
            event = 'qb-djbooth:client:playMusic'
        }
    }
}

-- Main Menu

function createMusicMenu()
    musicMenu = {
        {
            isHeader = true,
            header = '💿 | DJ Booth'
        },
        {
            header = '🎶 | Play a song',
            txt = 'Enter a youtube URL',
            params = {
                event = 'qb-djbooth:client:musicMenu',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '⏸️ | Pause Music',
            txt = 'Pause currently playing music',
            params = {
                isServer = true,
                event = 'qb-djbooth:server:pauseMusic',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '▶️ | Resume Music',
            txt = 'Resume playing paused music',
            params = {
                isServer = true,
                event = 'qb-djbooth:server:resumeMusic',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '🔈 | Change Volume',
            txt = 'Resume playing paused music',
            params = {
                event = 'qb-djbooth:client:changeVolume',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '❌ | Turn off music',
            txt = 'Stop the music & choose a new song',
            params = {
                isServer = true,
                event = 'qb-djbooth:server:stopMusic',
                args = {
                    zoneName = currentZone
                }
            }
        }
    }
end

-- DJ Booths

-- NON-JOB Radios (removes job check)
local studio = BoxZone:Create(Config.Locations['studio'].coords, 1, 1, {
    name="studio",
    heading=0
})

studio:onPlayerInOut(function(isPointInside)
	if isPointInside then
        currentZone = 'studio'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local anzac = BoxZone:Create(Config.Locations['anzac'].coords, 1, 1, {
    name="anzac",
    heading=0
})

anzac:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['anzac'].job then
        currentZone = 'anzac'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local burgershot = BoxZone:Create(Config.Locations['burgershot'].coords, 1, 1, {
    name="burgershot",
    heading=0
})

burgershot:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['burgershot'].job then
        currentZone = 'burgershot'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local bennys = BoxZone:Create(Config.Locations['bennys'].coords, 1, 1, {
    name="bennys",
    heading=0
})

bennys:onPlayerInOut(function(isPointInside)
	if isPointInside then
        currentZone = 'bennys'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local jayhouse = BoxZone:Create(Config.Locations['jayhouse'].coords, 1, 1, {
    name="jayhouse",
    heading=0
})

jayhouse:onPlayerInOut(function(isPointInside)
	if isPointInside then
        currentZone = 'jayhouse'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)


local jayhouse = BoxZone:Create(Config.Locations['jayhouse'].coords, 1, 1, {
    name="jayhouse",
    heading=0
})


local cumhouse = BoxZone:Create(Config.Locations['cumhouse'].coords, 1, 1, {
    name="cumhouse",
    heading=0
})

cumhouse:onPlayerInOut(function(isPointInside)
	if isPointInside then
        currentZone = 'cumhouse'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local WeddingVenue = BoxZone:Create(Config.Locations['WeddingVenue'].coords, 1, 1, {
    name="WeddingVenue",
    heading=0
})

WeddingVenue:onPlayerInOut(function(isPointInside)
	if isPointInside and PlayerData.job.name == Config.Locations['WeddingVenue'].job then
        currentZone = 'WeddingVenue'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)


-- local zancudo = BoxZone:Create(Config.Locations['zancudo'].coords, 1, 1, {
    -- name="zancudo",
    -- heading=0
-- })

-- zancudo:onPlayerInOut(function(isPointInside)
	-- if isPointInside then
        -- currentZone = 'zancudo'
        -- exports['qb-menu']:showHeader(musicHeader)
    -- else
        -- currentZone = nil
        -- exports['qb-menu']:closeMenu()
    -- end
-- end)

local jayhouse2 = BoxZone:Create(Config.Locations['jayhouse2'].coords, 1, 1, {
    name="jayhouse2",
    heading=0
})

jayhouse2:onPlayerInOut(function(isPointInside)
	if isPointInside then
        currentZone = 'jayhouse2'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local kavahouse = BoxZone:Create(Config.Locations['kavahouse'].coords, 1, 1, {
    name="kavahouse",
    heading=0
})

kavahouse:onPlayerInOut(function(isPointInside)
	if isPointInside then
        currentZone = 'kavahouse'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

-- Business/Events
local loyalty = BoxZone:Create(Config.Locations['loyalty'].coords, 1, 1, {
    name="loyalty",
    heading=0
})

loyalty:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['loyalty'].job then
        currentZone = 'loyalty'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

-- Main dancefloor
local pacificbluffs1 = BoxZone:Create(Config.Locations['pacificbluffs1'].coords, 1, 1, {
    name="pacificbluffs1",
    heading=150
})

pacificbluffs1:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['pacificbluffs1'].job then
        currentZone = 'pacificbluffs1'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local pacificbluffs2 = BoxZone:Create(Config.Locations['pacificbluffs2'].coords, 1, 1, {
    name="pacificbluffs2",
    heading=150
})

-- Private dancefloor
pacificbluffs2:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['pacificbluffs2'].job then
        currentZone = 'pacificbluffs2'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local pacificbluffs3 = BoxZone:Create(Config.Locations['pacificbluffs3'].coords, 1, 1, {
    name="pacificbluffs3",
    heading=150
})

-- Wharf
pacificbluffs3:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['pacificbluffs3'].job then
        currentZone = 'pacificbluffs3'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

-- local tempny = BoxZone:Create(Config.Locations['tempny'].coords, 1, 1, {
    -- name="tempny",
    -- heading=0
-- })

-- tempny:onPlayerInOut(function(isPointInside)
	-- if isPointInside then
        -- currentZone = 'tempny'
        -- exports['qb-menu']:showHeader(musicHeader)
    -- else
        -- currentZone = nil
        -- exports['qb-menu']:closeMenu()
    -- end
-- end)

-- local boxing = BoxZone:Create(Config.Locations['boxing'].coords, 1, 1, {
    -- name="boxing",
    -- heading=0
-- })

-- boxing:onPlayerInOut(function(isPointInside)
    -- if isPointInside and PlayerData.job.name == Config.Locations['boxing'].job then
        -- currentZone = 'boxing'
        -- exports['qb-menu']:showHeader(musicHeader)
    -- else
        -- currentZone = nil
        -- exports['qb-menu']:closeMenu()
    -- end
-- end)

local pdm = BoxZone:Create(Config.Locations['pdm'].coords, 1, 1, {
    name="pdm",
    heading=0
})

pdm:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['pdm'].job then
        currentZone = 'pdm'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local whenua = BoxZone:Create(Config.Locations['whenua'].coords, 1, 1, {
    name="whenua",
    heading=0
})

whenua:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['whenua'].job then
        currentZone = 'whenua'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local rebelkings = BoxZone:Create(Config.Locations['rebelkings'].coords, 1, 1, {
    name="rebelkings",
    heading=0
})

rebelkings:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['rebelkings'].job then
        currentZone = 'rebelkings'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local samoa = BoxZone:Create(Config.Locations['samoa'].coords, 1, 1, {
    name="samoa",
    heading=0
})

samoa:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['samoa'].job then
        currentZone = 'samoa'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local tuner = BoxZone:Create(Config.Locations['tuner'].coords, 1, 1, {
    name="tuner",
    heading=0
})

tuner:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['tuner'].job then
        currentZone = 'tuner'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local whenua = BoxZone:Create(Config.Locations['whenua'].coords, 1, 1, {
    name="whenua",
    heading=0
})

whenua:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['whenua'].job then
        currentZone = 'whenua'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local valhalla = BoxZone:Create(Config.Locations['valhalla'].coords, 1, 1, {
    name="valhalla",
    heading=0
})

valhalla:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['valhalla'].job then
        currentZone = 'valhalla'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local manaaki = BoxZone:Create(Config.Locations['manaaki'].coords, 1, 1, {
    name="manaaki",
    heading=0
})

manaaki:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['manaaki'].job then
        currentZone = 'manaaki'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local yellowjack = BoxZone:Create(Config.Locations['yellowjack'].coords, 1, 1, {
    name="yellowjack",
    heading=0
})

yellowjack:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['yellowjack'].job then
        currentZone = 'yellowjack'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local vespboat = BoxZone:Create(Config.Locations['vespboat'].coords, 1, 1, {
    name="vespboat",
    heading=0
})

vespboat:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['vespboat'].job then
        currentZone = 'vespboat'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local motorcyclesshop = BoxZone:Create(Config.Locations['motorcyclesshop'].coords, 1, 1, {
    name="motorcyclesshop",
    heading=0
})

motorcyclesshop:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['motorcyclesshop'].job then
        currentZone = 'motorcyclesshop'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local jinx = BoxZone:Create(Config.Locations['jinx'].coords, 1, 1, {
    name="jinx",
    heading=0
})

jinx:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['jinx'].job then
        currentZone = 'jinx'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

-- local bahama = BoxZone:Create(Config.Locations['bahama'].coords, 1, 1, {
    -- name="bahama",
    -- heading=0
-- })

-- bahama:onPlayerInOut(function(isPointInside)
    -- if isPointInside and PlayerData.job.name == Config.Locations['bahama'].job then
        -- currentZone = 'bahama'
        -- exports['qb-menu']:showHeader(musicHeader)
    -- else
        -- currentZone = nil
        -- exports['qb-menu']:closeMenu()
    -- end
-- end)

-- local bahama2 = BoxZone:Create(Config.Locations['bahama2'].coords, 1, 1, {
    -- name="bahama2",
    -- heading=0
-- })

-- bahama2:onPlayerInOut(function(isPointInside)
    -- if isPointInside and PlayerData.job.name == Config.Locations['bahama2'].job then
        -- currentZone = 'bahama2'
        -- exports['qb-menu']:showHeader(musicHeader)
    -- else
        -- currentZone = nil
        -- exports['qb-menu']:closeMenu()
    -- end
-- end)

local bellas = BoxZone:Create(Config.Locations['bellas'].coords, 1, 1, {
    name="bellas",
    heading=0
})

bellas:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['bellas'].job then
        currentZone = 'bellas'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local mirror = BoxZone:Create(Config.Locations['mirror'].coords, 1, 1, {
    name="mirror",
    heading=0
})

mirror:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['mirror'].job then
        currentZone = 'mirror'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local mirror2 = BoxZone:Create(Config.Locations['mirror2'].coords, 1, 1, {
    name="mirror2",
    heading=0
})

mirror2:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['mirror'].job then
        currentZone = 'mirror2'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local realestate = BoxZone:Create(Config.Locations['realestate'].coords, 1, 1, {
    name="realestate",
    heading=0
})

realestate:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['realestate'].job then
        currentZone = 'realestate'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local lavie = BoxZone:Create(Config.Locations['lavie'].coords, 1, 1, {
    name="lavie",
    heading=0
})

lavie:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['lavie'].job then
        currentZone = 'lavie'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)


-- GANG SPOTS
local vanillaunicorn = BoxZone:Create(Config.Locations['vanillaunicorn'].coords, 1, 1, {
    name="vanillaunicorn",
    heading=0
})

vanillaunicorn:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.gang.name == Config.Locations['vanillaunicorn'].gang then
        currentZone = 'vanillaunicorn'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)
	
local mafia = BoxZone:Create(Config.Locations['mafia'].coords, 1, 1, {
    name="mafia",
    heading=0
})

mafia:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.gang.name == Config.Locations['mafia'].gang then
        currentZone = 'mafia'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local disciples = BoxZone:Create(Config.Locations['disciples'].coords, 1, 1, {
    name="disciples",
    heading=0
})

disciples:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.gang.name == Config.Locations['disciples'].gang then
        currentZone = 'disciples'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local demons = BoxZone:Create(Config.Locations['demons'].coords, 1, 1, {
    name="demons",
    heading=0
})

demons:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.gang.name == Config.Locations['demons'].gang then
        currentZone = 'demons'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local poly = BoxZone:Create(Config.Locations['poly'].coords, 1, 1, {
    name="poly",
    heading=0
})

poly:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.gang.name == Config.Locations['poly'].gang then
        currentZone = 'poly'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local kingsmen = BoxZone:Create(Config.Locations['kingsmen'].coords, 1, 1, {
    name="kingsmen",
    heading=0
})

kingsmen:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.gang.name == Config.Locations['kingsmen'].gang then
        currentZone = 'kingsmen'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local triads = BoxZone:Create(Config.Locations['triads'].coords, 1, 1, {
    name="triads",
    heading=0
})

triads:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.gang.name == Config.Locations['triads'].gang then
        currentZone = 'triads'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)


-- Events

RegisterNetEvent('qb-djbooth:client:playMusic', function()
    createMusicMenu()
    exports['qb-menu']:openMenu(musicMenu)
end)

RegisterNetEvent('qb-djbooth:client:musicMenu', function()
    local dialog = exports['qb-input']:ShowInput({
        header = 'Song Selection',
        submitText = "Submit",
        inputs = {
            {
                type = 'text',
                isRequired = true,
                name = 'song',
                text = 'YouTube URL'
            }
        }
    })
    if dialog then
        if not dialog.song then return end
        TriggerServerEvent('qb-djbooth:server:playMusic', dialog.song, currentZone)
    end
end)

RegisterNetEvent('qb-djbooth:client:changeVolume', function()
    local dialog = exports['qb-input']:ShowInput({
        header = 'Music Volume',
        submitText = "Submit",
        inputs = {
            {
                type = 'text', -- number doesn't accept decimals??
                isRequired = true,
                name = 'volume',
                text = 'Min: 0.01 - Max: 1'
            }
        }
    })
    if dialog then
        if not dialog.volume then return end
        TriggerServerEvent('qb-djbooth:server:changeVolume', dialog.volume, currentZone)
    end
end)