

-- backroom created by nzkfc
Config.DoorList['bellasbakery-backroom'] = {
    authorizedJobs = { ['bellas'] = 0 },
    doorRate = 1.0,
    objCoords = vec3(1114.944336, -638.486633, 56.964180),
    objYaw = 191.35247802734,
    locked = true,
    doorType = 'door',
    fixText = false,
    distance = 2,
    objName = 1397156203,
}

-- frontdoors created by nzkfc
Config.DoorList['bellasbakery-frontdoors'] = {
    locked = true,
    doorType = 'double',
    authorizedJobs = { ['bellas'] = 0 },
    doorRate = 1.0,
    distance = 2,
    doors = {
        {objName = -869148156, objYaw = 101.35244750977, objCoords = vec3(1120.055664, -644.842957, 56.960159)},
        {objName = -869148156, objYaw = 281.35244750977, objCoords = vec3(1120.360596, -646.361755, 56.960159)}
    },
}

-- backdoors created by nzkfc
Config.DoorList['bellasbakery-backdoors'] = {
    locked = true,
    doorType = 'double',
    authorizedJobs = { ['bellas'] = 0 },
    doorRate = 1.0,
    distance = 2,
    doors = {
        {objName = -869148156, objYaw = 101.35244750977, objCoords = vec3(1113.892334, -646.080383, 56.960159)},
        {objName = -869148156, objYaw = 281.35250854492, objCoords = vec3(1114.197266, -647.599182, 56.960159)}
    },
}