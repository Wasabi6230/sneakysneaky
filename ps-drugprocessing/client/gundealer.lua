local QBCore = exports['qb-core']:GetCoreObject()
local GunLab = false

local function LoadAnimationDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(1)
    end
end

local function OpenDoorAnimation()
    local ped = PlayerPedId()
    LoadAnimationDict("anim@heists@keycard@") 
    TaskPlayAnim(ped, "anim@heists@keycard@", "exit", 5.0, 1.0, -1, 16, 0, 0, 0, 0)
    Wait(400)
    ClearPedTasks(ped)
end

local function EnterGunDealer()
    local ped = PlayerPedId()
    OpenDoorAnimation()
    GunLab = true
    Wait(500)
    DoScreenFadeOut(250)
    Wait(250)
    SetEntityCoords(ped, Config.GunLab["exit"].coords.x, Config.GunLab["exit"].coords.y, Config.GunLab["exit"].coords.z - 0.98)
    SetEntityHeading(ped, Config.GunLab["exit"].coords.w)
    Wait(1000)
    DoScreenFadeIn(250)
end

local function ExitGunDealer()
    local ped = PlayerPedId()
    OpenDoorAnimation()
    GunLab = true
    Wait(500)
    DoScreenFadeOut(250)
    Wait(250)
    SetEntityCoords(ped, Config.GunLab["enter"].coords.x, Config.GunLab["enter"].coords.y, Config.GunLab["enter"].coords.z - 0.98)
    SetEntityHeading(ped, Config.GunLab["enter"].coords.w)
    Wait(1000)
    DoScreenFadeIn(250)
	GunLab = false
end

RegisterNetEvent('ps-drugprocessing:EnterGunDealer', function()
	local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
	local hasitem = QBCore.Functions.HasItem(Config.GunKey)
    local dist = #(pos - vector3(Config.GunLab["enter"].coords.x, Config.GunLab["enter"].coords.y, Config.GunLab["enter"].coords.z))
    if dist < 2 and hasitem then
		EnterGunDealer()
		else
		QBCore.Functions.Notify(Lang:t("error.security_system_gun"))
	end
end)

RegisterNetEvent('ps-drugprocessing:ExitGunDealer', function()
	local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
    local dist = #(pos - vector3(Config.GunLab["exit"].coords.x, Config.GunLab["exit"].coords.y, Config.GunLab["exit"].coords.z))
    if dist < 2 then
		ExitGunDealer()
	end
end)
