local blips = {
    {title="Mining", colour=28, id=618, coords = vector3(-592.5950, 2085.5120, 131.5232)},
    {title="Mining Washing", colour=28, id=618, coords = vector3(-182.1158, 3040.1257, 19.2311)},
    {title="Mining Smelting", colour=28, id=618, coords = vector3(1091.1108, -2015.034, 48.024627)},
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
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