

-- lifts created by nzkfc
Config.DoorList['icecream-lifts'] = {
    doors = {
        {objName = -726591477, objYaw = 175.11312866211, objCoords = vec3(1007.777039, -2398.057373, 29.547583)},
        {objName = -726591477, objYaw = 355.11312866211, objCoords = vec3(1004.901245, -2397.812012, 29.547583)}
    },
    distance = 1,
    hideLabel = true,
    cantUnlock = true,
    authorizedJobs = { ['admin'] = 0 },
    doorRate = 1.0,
    doorType = 'doublesliding',
    locked = true,
}

-- front created by nzkfc
Config.DoorList['icecream-front'] = {
    fixText = false,
    objName = -1230442770,
    distance = 3,
    authorizedJobs = { ['icecream'] = 0 },
    doorType = 'door',
    doorRate = 1.0,
    objCoords = vec3(1016.626709, -2382.384033, 30.702419),
    locked = true,
    objYaw = 84.914703369141,
}

-- fencedoors created by nzkfc
Config.DoorList['icecream-fencedoors'] = {
    authorizedJobs = { ['icecream'] = 0 },
    doors = {
        {objName = -1156020871, objYaw = 85.415954589844, objCoords = vec3(1025.090332, -2385.704346, 31.119352)},
        {objName = -1156020871, objYaw = 265.24243164063, objCoords = vec3(1025.365479, -2382.346191, 31.117947)}
    },
    locked = true,
    doorRate = 1.0,
    doorType = 'double',
    distance = 3,
}