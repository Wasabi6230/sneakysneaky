-- function StartRenderingScore(hoopData)
--     Citizen.CreateThread(function()
--         while hoopData and hoopData.State and hoopData.State.Status ~= STATUS_FREE do
--             if hoopData.State.Mode == GAME_ATW then
--                 RenderATWScore(
--                     hoopData.State.Players, 
--                     #hoopData.State.ThrowPoints
--                 )
--             elseif hoopData.State.Mode == GAME_HORSE then
--                 RenderHorseScore(hoopData.State.Players)
--             elseif hoopData.State.Mode == GAME_FREE_THROW then
--                 RenderFreeThrowScore(hoopData.State.Players)
--             end
--             Wait(0)
--         end
--     end)
-- end

-- function RenderHorseScore(playerStates)
--     local str = 'Horse:~n~'
--     for _, st in pairs(playerStates) do
--         local letters = GetPlayerHorseLetterCount(st.Throws)

--         local strLetters = ''
        
--         if letters > 0 then
--             for i = 1, letters do
--                 strLetters = strLetters .. Config.HorseLetters[i]

--                 if i ~= letters then
--                     strLetters = strLetters .. '-'
--                 end
--             end
--         end

--         str = str .. st.Name .. ' - ' .. strLetters .. '~n~'
--     end

--     Render2DText(0.9, 0.5, 0.5, str)
-- end

-- function RenderFreeThrowScore(playerStates)
--     local str = 'Free Throw:~n~'

--     for _, st in pairs(playerStates) do
--         local score = 0

--         for _, sc in pairs(st.Throws) do
--             score = score + sc
--         end

--         str = str .. st.Name .. ' - ' .. score .. '~n~'
--     end

--     Render2DText(0.9, 0.5, 0.5, str)
-- end

-- function RenderATWScore(playerStates, points)
--     local str = 'Score:~n~'

--     for _, st in pairs(playerStates) do
--         local score = 0

--         for _, g in pairs(st.Throws) do
--             for _, v in pairs(g) do
--                 score = score + v
--             end
--         end

--         str = str .. st.Name .. ' - ' .. score .. '~n~'
--     end

--     Render2DText(0.9, 0.5, 0.5, str)
-- end

-- function Render2DText(x, y, scale, text)
--     SetTextScale(scale, scale)
--     SetTextProportional(1)
--     -- SetTextScale(0.0, 0.55)
--     SetTextColour(255, 255, 255, 255)
--     SetTextDropshadow(0, 0, 0, 0, 255)
--     SetTextEdge(2, 0, 0, 0, 150)
--     SetTextDropShadow()
--     SetTextOutline()
--     SetTextEntry("STRING")
--     SetTextCentre(1)
--     AddTextComponentString(text)
--     DrawText(x, y)
-- end

CurrentOpenHoopIdNUI = nil

function SubtitleText(text)
    local width = string.len(string.gsub(text, '~%a~', ''))

    SetTextFont(0)
    SetTextScale(0.5, 0.5)
    SetTextCentre(true)
    SetTextColour(255, 255, 255, 255)
    SetTextJustification(0)

    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(0.5, 0.925 - 0.05)

    DrawRect(0.5, 0.945 - 0.05, width * 0.0095, 0.045, 0, 0, 0, 72)
end

NuiFocusOn = false

function OpenNUI(hoopId)
    CurrentOpenHoopIdNUI = hoopId
    SetNuiFocus(true, true)
    NuiFocusOn = true

    if BasketballHoops[hoopId].State then
        UpdateNUIState(BasketballHoops[hoopId].State)
    end
    SendNUIMessage({
        type = "showui"
    })
end

function CloseNUI()
    CurrentOpenHoopIdNUI = nil
    SetNuiFocus(false, false)
    NuiFocusOn = false

    SendNUIMessage({
        type = "hideui"
    })
end

local GameModes = {
    [0] = GAME_HORSE,
    [1] = GAME_ATW,
    [2] = GAME_FREE_THROW,
}

local GameModesInverse = {
    [GAME_HORSE] = 0,
    [GAME_ATW] = 1,
    [GAME_FREE_THROW] = 2,

}


RegisterNUICallback('initGame', function(data, cb)
    local name = data.name
    local gameMode = data.gameMode
    local difficulty = data.difficulty
    local wager = data.wager


    TriggerServerEvent('rcore_basketball:requestHoopOwnership', CurrentOpenHoopIdNUI, name, GameModes[gameMode], difficulty, wager)
    
    if gameMode == 1 then
        CloseNUI()
    end

    if cb then cb() end
end)

RegisterNUICallback('close', function(data, cb)
    CloseNUI()
    if cb then cb() end
end)

RegisterNUICallback('startGame', function(data, cb)
    CloseNUI()
    TriggerServerEvent('rcore_basketball:startHoop')
    if cb then cb() end
end)

RegisterNUICallback('joinGame', function(data, cb)
    TriggerServerEvent('rcore_basketball:joinHoop', CurrentOpenHoopIdNUI, data.name)
    if cb then cb() end
end)

RegisterNUICallback('removePlayer', function(data, cb)
    TriggerServerEvent('rcore_basketball:removePlayer', data.id)
    if cb then cb() end
end)

function UpdateNuiIfNeeded(hoopId, state)
    if hoopId == CurrentOpenHoopIdNUI then
    end

    local hoopIdx = GetCurrentPlayersHoopData()

    if hoopIdx and hoopIdx == hoopId then
        UpdateNUIState(state)

        if state.Status == STATUS_PLAYING or state.Status == STATUS_THROWN then
            if NuiFocusOn then
                NuiFocusOn = false
                SetNuiFocus(false, false)
            end
            SendNUIMessage({
                type = "showui"
            })
        end
    end
end

function UpdateNUIState(state)
    if state.Status ~= STATUS_THROWN then
        SendNUIMessage({
            type = "update",
            gameMode = state.Mode and GameModesInverse[state.Mode] or 2,
            difficulty = state.Difficulty or 0,
            wager = state.Wager,
            status = state.Status or 'free',
            players = state.Players or {},
            throwPoints = state.ThrowPoints or {},
            ownerServerId = state.OwnerServerId or nil,
            myServerId = MyServerId,
            horseLetters = Config.HorseLetters,
            turnServerId = GetCurrentTurnServerId(state),
            translations = Config.Text,
        })
    end
end

PlaySuccessSound = false
RegisterNetEvent('rcore_basketball:successSound', function()
    PlaySuccessSound = true
    Wait(5000)
    PlaySuccessSound = false
end)

RegisterNetEvent('rcore_basketball:failSound', function()
    PlaySoundFrontend(-1, "LOSER", "HUD_AWARDS", true)
end)

function GetCurrentTurnServerId(state)
    if state.Mode == GAME_ATW then
        return GetCurrentATWTurnPlayerServerId(state)
    elseif state.Mode == GAME_HORSE then
        return state.Players[state.CurrentShooter] and state.Players[state.CurrentShooter].ServerId or nil
    else
        return state.BallHolderServerId
    end
end

local isMustBeInMarkerDisplayed = false

function DisplayMustBeInMarker(text)
    if not isMustBeInMarkerDisplayed then
        isMustBeInMarkerDisplayed = true
        Citizen.CreateThread(function()
            local displayUntil = GetGameTimer() + 3000

            while GetGameTimer() <= displayUntil do
                SubtitleText(text)
                Wait(0)
            end
            isMustBeInMarkerDisplayed = false
        end)
    end
end

function Draw3DText(pos, text, scaleModifier)
    if not scaleModifier then
        scaleModifier = 4
    end

    local onScreen,_x,_y=World3dToScreen2d(pos.x,pos.y,pos.z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, pos.x, pos.y, pos.z, 1)

    local scale = (1/dist)*scaleModifier
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    if onScreen then
        SetTextScale(0.0*scale, 0.40*scale)
        SetTextProportional(1)
        -- SetTextScale(0.0, 0.55)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end