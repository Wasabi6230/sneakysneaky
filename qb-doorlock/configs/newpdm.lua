

-- office created by nzkfc
Config.DoorList['newpdm-office'] = {
    doorRate = 1.0,
    fixText = false,
    distance = 3,
    doorLabel = '	',
    objYaw = 298.0,
    objName = -952356348,
    authorizedJobs = { ['cardealer'] = 0 },
    doorType = 'door',
    locked = true,
    objCoords = vec3(-1243.641602, -347.427795, 37.479000),
}

-- garagedoor created by nzkfc
Config.DoorList['newpdm-garagedoor'] = {
    doorRate = 1.0,
    fixText = false,
    distance = 6,
    doorLabel = '	',
    objYaw = 207.0,
    objName = 1430328167,
    authorizedJobs = { ['cardealer'] = 0 },
    doorType = 'sliding',
    locked = true,
    objCoords = vec3(-1237.843628, -338.194763, 37.607269),
}

-- outside left created by nzkfc
Config.DoorList['newpdm-outside left'] = {
    doorRate = 1.0,
    authorizedJobs = { ['cardealer'] = 0 },
    distance = 3,
    doorType = 'double',
    doors = {
        {objName = -1152174184, objYaw = 207.0, objCoords = vec3(-1261.875610, -349.696198, 37.111160)},
        {objName = 73386408, objYaw = 207.0, objCoords = vec3(-1259.591309, -348.532257, 37.111160)}
    },
    locked = false,
}

-- outside right created by nzkfc
Config.DoorList['newpdm-outside right'] = {
    doorRate = 1.0,
    authorizedJobs = { ['cardealer'] = 0 },
    distance = 3,
    doorType = 'double',
    doors = {
        {objName = -1152174184, objYaw = 298.0, objCoords = vec3(-1268.578003, -370.370178, 37.099243)},
        {objName = 73386408, objYaw = 298.0, objCoords = vec3(-1269.793091, -368.111481, 37.111160)}
    },
    locked = false,
}