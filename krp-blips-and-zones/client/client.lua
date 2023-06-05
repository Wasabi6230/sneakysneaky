-- https://docs.fivem.net/docs/game-references/blips/

local blips = {
	-- {title = "Whenua Customs", colour = 2, id = 643, x = 36.06, y = 6465.04, z = 31.43},
	-- {title = "Benny's", colour = 1, id = 643, x = -203.02, y = -1318.68, z = 30.91},
	{title = "B.S Associates", colour = 31, id = 408, x = -1571.05, y = -574.92, z = 108.52},
	-- {title = "Mt Eden Prison", colour = 1, id = 237, x = 1695.5708, y = 2496.1535, z = 45.564929},
	-- {title = "Tamaki's Towyard", colour = 47, id = 317, x = -188.0471, y = -1171.24, z = 23.043504}, -- Gabz tow
	{title = "Tamaki's Towyard", colour = 47, id = 317, x = 423.98, y = -1639.34, z = 29.29}, -- Davis tow
	-- {title = "Casino", colour = 1, id = 679, x = 957.98828, y = 46.164241, z = 123.26383},
	-- {title = "J!nx Performance & Customs", colour = 8, id = 641, x = 559.36389, y = 2763.1455, z = 47.170959},
	-- {title = "Seafood Buyer", colour = 24, id = 66, x = -1037.91, y = -1396.5, z = 5.55},
	{title = "Public Drag Strip", colour = 0, id = 38, x = 1702.82, y = 3255.54, z = 40.99},
	{title = "CD Realty", colour = 46, id = 374, x = -700.29, y = 269.0, z = 83.15},
	{title = "Maze Tower Parachute Jump", colour = 69, id = 94, x = -66.65, y = -802.62, z = 44.22},
	-- {title = "Auckland Times HQ", colour = 1, id = 564, x = -597.89, y = -929.95, z = 24.0},
	-- {title = "Racers Edge Auto Performance", colour = 8, id = 545, x = 845.6, y = -3210.03, z = 5.9},
	{title = "Manaaki Community Center", colour = 46, id = 205, x = -45.38, y = -579.77, z = 88.71},
	{title = "Salvage Buyer", colour = 36, id = 207, x = 14.57, y = -2758.27, z = 6.0},
	{title = "Repair Kit Exchange", colour = 61, id = 233, x = -203.48, y = -1381.24, z = 31.26},
	{title = "Pacific Bluffs Resort", colour = 23, id = 751, x = -3038.61, y = 37.05, z = 10.12},
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.6)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

---------------------------------------
-- BELOW ARE MAP ZONES e.g. SAFE ZONES 
---------------------------------------

-- https://docs.fivem.net/docs/game-references/blips/

-- https://docs.fivem.net/natives/?_0x46818D79B1F7499A

local mtzonahhospital = vector3(-445.93, -329.41, 34.5)
local paletohospital = vector3(-252.81, 6324.23, 37.62)
-- local cayoisland = vector3(4742.08, -5158.53, -4.11)
local paletopolice = vector3(-451.55, 6014.25, 40.46)
-- local vinewoodpolice = vector3(598.19, -11.98, 101.25)
local mrpdpolice = vector3(461.93, -1003.32, 31.03)
local casino = vector3(955.45172, 43.793762, 115.47428)
-- local loyalty = vector3(-789.5, -225.04, 62.73)
-- local alta = vector3(-296.37, -957.36, 31.21)
-- local kaimai = vector3(-1550.1, -426.8, 42.0)
-- local legion = vector3(230.74, -796.01, 30.59)
-- local pdm = vector3(-42.46, -1110.23, 26.44)

local blip = AddBlipForRadius(mtzonahhospital, 100.0) -- need to have .0
SetBlipColour(blip, 3)
SetBlipAlpha(blip, 140)
SetBlipDisplay(blip, 8)

local blip = AddBlipForRadius(paletohospital, 30.0) -- need to have .0
SetBlipColour(blip, 3)
SetBlipAlpha(blip, 140)
SetBlipDisplay(blip, 8)

-- local blip = AddBlipForRadius(cayoisland, 1300.0) -- need to have .0
-- SetBlipColour(blip, 1)
-- SetBlipAlpha(blip, 58)
-- SetBlipDisplay(blip, 8)

local blip = AddBlipForRadius(paletopolice, 30.0) -- need to have .0
SetBlipColour(blip, 3)
SetBlipAlpha(blip, 140)
SetBlipDisplay(blip, 8)

-- local blip = AddBlipForRadius(vinewoodpolice, 50.0) -- need to have .0
-- SetBlipColour(blip, 3)
-- SetBlipAlpha(blip, 140)
-- SetBlipDisplay(blip, 8)

local blip = AddBlipForRadius(mrpdpolice, 50.0) -- need to have .0
SetBlipColour(blip, 3)
SetBlipAlpha(blip, 140)
SetBlipDisplay(blip, 8)

local blip = AddBlipForRadius(casino, 60.0) -- need to have .0
SetBlipColour(blip, 3)
SetBlipAlpha(blip, 140)
SetBlipDisplay(blip, 8)

-- local blip = AddBlipForRadius(loyalty, 30.0) -- need to have .0
-- SetBlipColour(blip, 2)
-- SetBlipAlpha(blip, 140)
-- SetBlipDisplay(blip, 8)

-- local blip = AddBlipForRadius(alta, 85.0) -- need to have .0
-- SetBlipColour(blip, 5)
-- SetBlipAlpha(blip, 140)
-- SetBlipDisplay(blip, 8)

-- local blip = AddBlipForRadius(kaimai, 40.0) -- need to have .0
-- SetBlipColour(blip, 5)
-- SetBlipAlpha(blip, 140)
-- SetBlipDisplay(blip, 8)

-- local blip = AddBlipForRadius(legion, 40.0) -- need to have .0
-- SetBlipColour(blip, 5)
-- SetBlipAlpha(blip, 140)
-- SetBlipDisplay(blip, 8)

-- local blip = AddBlipForRadius(pdm, 50.0) -- need to have .0
-- SetBlipColour(blip, 5)
-- SetBlipAlpha(blip, 140)
-- SetBlipDisplay(blip, 8)


-- KRP CUSTOM START (Used mark out diving spots for qb-diving)

-- local tempdiving1 = vector3(-2838.8, -376.1, 3.55) -- Mission Bay
-- local tempdiving2 = vector3(-333.04, -3214.35, -19.1) -- airport
-- local tempdiving3 = vector3(-1882.49, 5182.47, 0.41) -- Browns Bay
-- local tempdiving4 = vector3(536.69, 7253.75, 1.69) -- Paleto Bay
-- local tempdiving5 = vector3(3872.16, 5221.71, -47.61) -- lighthouse
-- local tempdiving6 = vector3(3252.92, 1353.09, -39.13) -- waste plant
-- local tempdiving7 = vector3(2665.95, -1406.89, -8.39) -- South East Wreck

-- local blip = AddBlipForRadius(tempdiving1, 100.0) -- need to have .0
-- SetBlipColour(blip, 61)
-- SetBlipAlpha(blip, 100)
-- SetBlipDisplay(blip, 6)

-- local blip = AddBlipForRadius(tempdiving2, 100.0) -- need to have .0
-- SetBlipColour(blip, 61)
-- SetBlipAlpha(blip, 100)
-- SetBlipDisplay(blip, 6)

-- local blip = AddBlipForRadius(tempdiving3, 100.0) -- need to have .0
-- SetBlipColour(blip, 61)
-- SetBlipAlpha(blip, 100)
-- SetBlipDisplay(blip, 6)

-- local blip = AddBlipForRadius(tempdiving4, 100.0) -- need to have .0
-- SetBlipColour(blip, 61)
-- SetBlipAlpha(blip, 100)
-- SetBlipDisplay(blip, 6)

-- local blip = AddBlipForRadius(tempdiving5, 100.0) -- need to have .0
-- SetBlipColour(blip, 61)
-- SetBlipAlpha(blip, 100)
-- SetBlipDisplay(blip, 6)

-- local blip = AddBlipForRadius(tempdiving6, 100.0) -- need to have .0
-- SetBlipColour(blip, 61)
-- SetBlipAlpha(blip, 100)
-- SetBlipDisplay(blip, 6)

-- local blip = AddBlipForRadius(tempdiving7, 100.0) -- need to have .0
-- SetBlipColour(blip, 61)
-- SetBlipAlpha(blip, 100)
-- SetBlipDisplay(blip, 6)