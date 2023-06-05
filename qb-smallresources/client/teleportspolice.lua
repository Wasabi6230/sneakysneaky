local function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(true)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

CreateThread(function()
    local sleep
    while true do
        sleep = 1000
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)

        for loc in pairs(Config.PoliceTeleports) do
            for k, v in pairs(Config.PoliceTeleports[loc]) do
                local dist = #(pos - vector3(v.coords.x, v.coords.y, v.coords.z))
                if dist < 2 then
                    sleep = 0
                    DrawMarker(2, v.coords.x, v.coords.y, v.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, 0, 0, 0, 1, 0, 0, 0)

                    if dist < 1 then
                        DrawText3Ds(v.coords.x, v.coords.y, v.coords.z, v.drawText)
                        if IsControlJustReleased(0, 51) then
                            if k == 1 then
                                if v.AllowVehicle then
                                    SetPedCoordsKeepVehicle(ped, Config.PoliceTeleports[loc][2].coords.x, Config.PoliceTeleports[loc][2].coords.y, Config.PoliceTeleports[loc][2].coords.z)
                                else
                                    SetEntityCoords(ped, Config.PoliceTeleports[loc][2].coords.x, Config.PoliceTeleports[loc][2].coords.y, Config.PoliceTeleports[loc][2].coords.z)
                                end

                                if type(Config.PoliceTeleports[loc][2].coords) == "vector4" then
                                    SetEntityHeading(ped, Config.PoliceTeleports[loc][2].coords.w)
                                end
                            elseif k == 2 then
                                if v.AllowVehicle then
                                    SetPedCoordsKeepVehicle(ped, Config.PoliceTeleports[loc][1].coords.x, Config.PoliceTeleports[loc][1].coords.y, Config.PoliceTeleports[loc][1].coords.z)
                                else
                                    SetEntityCoords(ped, Config.PoliceTeleports[loc][1].coords.x, Config.PoliceTeleports[loc][1].coords.y, Config.PoliceTeleports[loc][1].coords.z)
                                end

                                if type(Config.PoliceTeleports[loc][1].coords) == "vector4" then
                                    SetEntityHeading(ped, Config.PoliceTeleports[loc][1].coords.w)
                                end
                            end
                        end
                    end
                end
            end
        end

        Wait(sleep)
    end
end)