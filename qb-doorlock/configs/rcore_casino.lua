

-- staffdoor1 created by nzkfc
Config.DoorList['rcore_casino-staffdoor1'] = {
    distance = 3,
    authorizedJobs = { ['casino'] = 0 },
    doorType = 'double',
    locked = true,
    doorRate = 1.0,
    doors = {
        {objName = 680601509, objYaw = 328.0, objCoords = vec3(984.488464, 35.625313, 70.392654)},
        {objName = 680601509, objYaw = 147.99998474121, objCoords = vec3(986.184326, 34.565617, 70.392654)}
    },
}

-- staffdoor2 created by nzkfc
Config.DoorList['rcore_casino-staffdoor2'] = {
    authorizedJobs = { ['casino'] = 0 },
    distance = 3,
    doorType = 'double',
    doorRate = 1.0,
    locked = true,
    doors = {
        {objName = 680601509, objYaw = 238.00001525879, objCoords = vec3(978.179443, 69.320969, 70.382767)},
        {objName = 680601509, objYaw = 57.999977111816, objCoords = vec3(977.119751, 67.625099, 70.382767)}
    },
}

-- boss created by nzkfc
Config.DoorList['rcore_casino-boss'] = {
    authorizedJobs = { ['casino'] = 0 },
    distance = 3,
    doorType = 'double',
    doorRate = 1.0,
    locked = true,
    doors = {
        {objName = -643593781, objYaw = 147.99998474121, objCoords = vec3(961.775696, 62.505394, 75.582764)},
        {objName = -643593781, objYaw = 328.0, objCoords = vec3(960.079834, 63.565086, 75.582764)}
    },
}

-- penthouse created by nzkfc
Config.DoorList['rcore_casino-penthouse'] = {
    doorType = 'door',
    doorRate = 1.0,
    locked = true,
    objYaw = 58.000003814697,
    authorizedJobs = { ['casino'] = 0 },
    objCoords = vec3(968.363464, 63.247288, 112.652893),
    objName = -1691719897,
    fixText = false,
    distance = 3,
}

-- penthouselift created by nzkfc
Config.DoorList['rcore_casino-penthouselift'] = {
    authorizedJobs = { ['casino'] = 0 },
    distance = 1,
    doorType = 'double',
    doorRate = 1.0,
    locked = true,
    doors = {
        {objName = -1074495927, objYaw = 238.00001525879, objCoords = vec3(981.740112, 57.105164, 116.286072)},
        {objName = -1074495927, objYaw = 58.000003814697, objCoords = vec3(980.680298, 55.409061, 116.286072)}
    },
}