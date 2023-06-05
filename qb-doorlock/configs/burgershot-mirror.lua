
-- frontdoors-south created by nzkfc
Config.DoorList['burgershot-mirror-frontdoors-south'] = {
    authorizedJobs = { ['burgershot'] = 0 },
    doorType = 'double',
    distance = 2,
    doorRate = 1.0,
    doors = {
        {objName = 802875437, objYaw = 344.99566650391, objCoords = vec3(1242.996216, -366.594666, 69.359543)},
        {objName = 1238047757, objYaw = 164.99569702148, objCoords = vec3(1240.507446, -365.927643, 69.358711)}
    },
    locked = true,
}

-- frontdoors-west created by nzkfc
Config.DoorList['burgershot-mirror-frontdoors-west'] = {
    authorizedJobs = { ['burgershot'] = 0 },
    doorType = 'double',
    distance = 2,
    doorRate = 1.0,
    doors = {
        {objName = 802875437, objYaw = 254.99571228027, objCoords = vec3(1234.901367, -356.226685, 69.356247)},
        {objName = 1238047757, objYaw = 74.99568939209, objCoords = vec3(1235.568359, -353.737976, 69.356277)}
    },
    locked = true,
}

-- staffroom created by nzkfc
Config.DoorList['burgershot-mirror-staffroom'] = {
    locked = true,
    objName = -545320023,
    doorType = 'door',
    fixText = false,
    objYaw = 254.99571228027,
    distance = 1.5,
    authorizedJobs = { ['burgershot'] = 0 },
    objCoords = vec3(1242.924927, -344.483124, 69.355331),
    doorRate = 1.0,
}

-- office created by nzkfc
Config.DoorList['burgershot-mirror-office'] = {
    locked = true,
    objName = -545320023,
    doorType = 'door',
    fixText = false,
    objYaw = 254.99571228027,
    distance = 1.5,
    authorizedJobs = { ['burgershot'] = 0 },
    objCoords = vec3(1245.939331, -344.853180, 69.356308),
    doorRate = 1.0,
}

-- backdoor created by nzkfc
Config.DoorList['burgershot-mirror-backdoor'] = {
    locked = true,
    objName = -1635579193,
    doorType = 'door',
    fixText = false,
    objYaw = 164.99572753906,
    distance = 1.5,
    authorizedJobs = { ['burgershot'] = 0 },
    objCoords = vec3(1243.986572, -343.766602, 69.275047),
    doorRate = 1.0,
}

-- kitchendoors created by nzkfc
Config.DoorList['burgershot-mirror-kitchendoors'] = {
    locked = true,
    doors = {
        {objName = 1938022713, objYaw = 254.99571228027, objCoords = vec3(1244.998047, -348.606659, 69.356285)},
        {objName = 1938022713, objYaw = 74.995704650879, objCoords = vec3(1244.369629, -350.568146, 69.356232)}
    },
    distance = 2,
    authorizedJobs = { ['burgershot'] = 0 },
    doorRate = 1.0,
    doorType = 'double',
}

-- fridge created by nzkfc
Config.DoorList['burgershot-mirror-fridge'] = {
    locked = true,
    objName = 1274073282,
    doorType = 'sliding',
    fixText = false,
    objYaw = 344.99566650391,
    distance = 2,
    authorizedJobs = { ['burgershot'] = 0 },
    objCoords = vec3(1253.215332, -350.831268, 68.209114),
    doorRate = 1.0,
}