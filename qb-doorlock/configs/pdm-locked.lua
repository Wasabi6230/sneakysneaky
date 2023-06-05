

-- door1 created by nzkfc
Config.DoorList['pdm-locked-door1'] = {
    distance = 3,
    doorRate = 1.0,
    doors = {
        {objName = 2059227086, objYaw = 250.00003051758, objCoords = vec3(-59.893024, -1092.951782, 26.883617)},
        {objName = 1417577297, objYaw = 250.00003051758, objCoords = vec3(-60.545818, -1094.748901, 26.888716)}
    },
    doorType = 'double',
    authorizedJobs = { ['admin'] = 0 },
    locked = true,
    cantUnlock = true,
}

-- door2 created by nzkfc
Config.DoorList['pdm-locked-door2'] = {
    distance = 3,
    doorRate = 1.0,
    doors = {
        {objName = 1417577297, objYaw = 340.00003051758, objCoords = vec3(-37.331127, -1108.873291, 26.719799)},
        {objName = 2059227086, objYaw = 340.00003051758, objCoords = vec3(-39.133663, -1108.218140, 26.719799)}
    },
    doorType = 'double',
    authorizedJobs = { ['admin'] = 0 },
    locked = true,
    cantUnlock = true,
}