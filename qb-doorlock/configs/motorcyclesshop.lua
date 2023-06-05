-- Garage Back created by Streak
Config.DoorList['motorcyclesshop-Garage Back'] = {
    objName = 1791880368,
    locked = true,
    objYaw = 185.00001525879,
    objCoords = vec3(639.290222, 2771.098145, 42.976341),
    hideLabel = false,
    doorRate = 1.0,
    authorizedJobs = { ['admin'] = 0 },
    distance = 6,
    doorType = 'garage',
    fixText = false,
}

-- Back Room  created by Streak
Config.DoorList['motorcyclesshop-Back Room '] = {
    objName = 330294775,
    locked = true,
    objYaw = 184.00006103516,
    objCoords = vec3(627.966553, 2770.092773, 42.065594),
    hideLabel = false,
    doorRate = 1.0,
    authorizedJobs = { ['admin'] = 0 },
    distance = 3,
    doorType = 'door',
    fixText = false,
}

-- oldneiseanfrontdoors created by nzkfc
Config.DoorList['motorcyclesshop-oldneiseanfrontdoors'] = {
    doorRate = 1.0,
    locked = true,
    doorLabel = 'CLOSED: Moved to Rebel Kings Motorcycles at Mirror Park',
    distance = 6,
    authorizedJobs = { ['admin'] = 0 },
    doorType = 'double',
    doors = {
        {objName = 510998401, objYaw = 4.9998126029968, objCoords = vec3(631.931824, 2747.717773, 42.637859)},
        {objName = 510998401, objYaw = 185.0, objCoords = vec3(634.971008, 2747.983398, 42.637859)}
    },
}

-- lockerroom created by nzkfc
Config.DoorList['motorcyclesshop-lockerroom'] = {
    locked = true,
    doorType = 'door',
    objName = 330294775,
    objCoords = vec3(622.086365, 2776.960205, 42.058643),
    objYaw = 274.00006103516,
    doorRate = 1.0,
    fixText = false,
    authorizedJobs = { ['admin'] = 0 },
    distance = 3,
}