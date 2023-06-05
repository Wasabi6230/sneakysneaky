

-- backdoor created by nzkfc
Config.DoorList['comic-backdoor'] = {
    doorRate = 1.0,
    authorizedJobs = { ['valhalla'] = 0 },
    objCoords = vec3(-147.812881, 220.763855, 95.161537),
    fixText = false,
    doorType = 'door',
    objYaw = 269.99996948242,
    locked = true,
    distance = 2,
    objName = -905400395,
}

-- office created by nzkfc
Config.DoorList['comic-office'] = {
    doorRate = 1.0,
    authorizedJobs = { ['valhalla'] = 0 },
    objCoords = vec3(-138.995026, 221.384521, 95.143997),
    fixText = false,
    doorType = 'door',
    objYaw = 359.99996948242,
    locked = true,
    distance = 3,
    objName = 1715961343,
}

-- frontdoors created by nzkfc
Config.DoorList['comic-frontdoors'] = {
    doorRate = 1.0,
    doors = {
        {objName = 1483722564, objYaw = 359.99996948242, objCoords = vec3(-142.469955, 228.695007, 95.136536)},
        {objName = -1508283750, objYaw = 179.99998474121, objCoords = vec3(-145.070786, 228.695007, 95.136536)}
    },
    doorType = 'double',
    authorizedJobs = { ['valhalla'] = 0 },
    locked = true,
    distance = 3,
}

-- deadend created by nzkfc
Config.DoorList['comic-deadend'] = {
    objYaw = 179.99998474121,
    distance = 1,
    cantUnlock = true,
    doorType = 'door',
    authorizedJobs = { ['admin'] = 0 },
    locked = true,
    objCoords = vec3(-150.176163, 223.949631, 95.163216),
    fixText = false,
    hideLabel = true,
    doorRate = 1.0,
    objName = -905400395,
}