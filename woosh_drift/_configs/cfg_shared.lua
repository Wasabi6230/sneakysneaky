--[[
cfg_shared.lua
This config stores settings/values that are used by both the client and the server.
]]

cfg_shared = {}

--[[
    newCore
    If you are using the new QBCore, then set this to true.
    If you are using the old QBCore, then set this to false.
    If you are using the old QBCore, make sure to check the README for more instructions.
]]
cfg_shared.newCore = true

--[[
    topSpeedWhileDrifting
    Due to the way drifting works in GTAV, the acceleration of the vehicle needs to be modified (fInitialDriveForce).
    Therefore to combat this, the top speed of the vehicle is limited to this config value whilst drifting.
    Adjust as you see fit for your server, ideally 100mph is more than enough for drifting.
]]
cfg_shared.topSpeedWhileDrifting =130.0

--[[
    driftHandling
    This is the table that stores the multiplier values for the drift handling of the vehicle.
    Currently the following values are set for DEFAULT GTAV VEHICLE HANDLING.
    If you run custom handling for your vehicles, you may need to adjust these values.
    The main ones to adjust if you run custom handling, is `fInitialDriveForce` and `fSteeringLock`.
    Ideally you do not want to adjust the fCamberStiffness. The higher the value, the better it is for drifting. 1.0 is a good value.
    If you want to understand what each of these handling lines actually do, I suggest reading the following two posts:
    https://forums.gta5-mods.com/topic/3842/tutorial-handling-meta
    https://eddlm.github.io/Handling-Tools/handling
]]
cfg_shared.driftHandling = {
    {
        handling = "fInitialDriveForce",
        awd = 4.6,
        rwd = 2.5,
    },
    {
        handling = "fSteeringLock",
        awd = 1.3,
        rwd = 1.7,
    },
    {
        handling = "fTractionCurveMax",
        awd = 1.35,
        rwd = 0.925,
    },
    {
        handling = "fTractionCurveMin",
        awd = 1.3,
        rwd = 1.35,
    },
    {
        handling = "fTractionCurveLateral",
        awd = 22.5,
        rwd = 23.5,
    },
    {
        handling = "fLowSpeedTractionLossMult",
        awd = 3.6,
        rwd = 4.7,
    },
    {
        handling = "fCamberStiffnesss",
        awd = 1.0,
        rwd = 1.0,
    },
}

--[[
    allowTabletByKeybind
    If set to true, the tablet can be opened by the default keybind defined by 'allowTabletByKeybind'.
    If set to false, the tablet can only be opened by using the drift tablet item.
]]
cfg_shared.allowTabletByKeybind = false

--[[
    checkForTabletItem
    If set to true, the player will need to have the drift tablet item in their inventory to use the tablet.
    The player will need to have the drift tablet item in the inventory to enable drift mode by keybind.
    The drift tablet item is called 'ww_drift_tablet'.
]]
cfg_shared.checkForTabletItem = true

--[[
    defaultTabletKeybind
    This is the default keybind to open the drift tablet.
]]
cfg_shared.defaultTabletKeybind = 'n'

--[[
    allowDriftModeByKeybind
    If set to true, drift mode can be activated by the default keybind defined by 'defaultDriftmodeKeybind'.
]]
cfg_shared.allowDriftModeByKeybind = true

--[[
    defaultDriftmodeKeybind
    This is the default keybind to enable or disable drift mode.
]]
cfg_shared.defaultDriftmodeKeybind = "F6"

--[[
    requiresTurbo
    If set to true, drift mode will only be enabled if the vehicle has a turbo.
]]
cfg_shared.requiresTurbo = false

--[[
    whiteListVehicleClasses
    If you want to whitelist vehicle classes that can have drift mode enabled on,
    then add them to this table. If you do not want to whitelist vehicle classes,
    then leave this table empty.
    Eg. whiteListVehicleClasses = {1, 2}
]]
cfg_shared.whiteListVehicleClasses = {}

--[[
    whiteListVehicles
    If you want to whitelist specific vehicles that can have drift mode enabled on,
    then add them to this table. If you do not want to whitelist specific vehicles,
    then leave this table empty.
    Eg. whiteListVehicles = {'futo', 'elegy'}
]]
cfg_shared.whiteListVehicles = {'bnr32', 'hna2t', 'm3f80','amarok','nzp','skyline','vessv','subisti08','impalass','488','models','84rx7k','altior','cp9a','subwrx','760li04','mbc63','300srt8','fgute','ford_fg','ford_px2','fod_xr6t','holden_evokewag','holden_vess','holden_vf2','holden_zbs','skoda_superb','vyutetuned','holden_colorado','holden_equinox','landc','trx','19raptor','a31','bigote','brz13','c3ktem','chall70','charger69','ef9','efxr6','ek9','gstcoronet1','gxa90','hgsedan','is300','lhuracant','lp700r','majsoar','mustang65','r31','r33','vbbpxxc','vxss','cls63s','350z','cam8tun','fc3s','fk8','fto','m3e36','rcf','z32','16challenger','68dart','demon','09tahoe','15tahoe','jeep2012','jeepreneg','safari97','srt8','vxr','325e','2000gtr','bosc110','dc2','evo9','gc34','gtr','gtrc','gxa70','gxs13','ls430','majfd','nis15','passat','s14','subarung','toyotasj','toysupmk4','80b4','aaq4','allnew2020','bmci','c6320','e34','e400','m2','m3e30','m3e92','m3f80','m4f82','m6f13','rs6','s8d2','s500w222','sq72016','16charger','cv8','czr1','mustang50th','f15078','g65','lrrr','pcs18','pm19','raid','ram2500','rrst','rsvr16','trhawk','v250','wildtrak','x5e53','xc90','a31','adr8','evo3','g63amg6x6','gtrpit','hilux1','jzx100','r35','sim22','stagea','sublegab4','baxr8','hgute','hgwagon','hs','vessvu','vessvw','wmlwb','xr6turbo','xr6turrboute','650s','675lt','720s','f8t','f430s','f812','fxxk','gt17','gtr96','jesko2020','laferrari','mbslr','mcst','mig','mp412c','pd458wb','pts21','senna','urus','75series','89runner','hiacesc','rodeo','sierrazook','p90d','teslapd','teslax','tmodel','tr22','weevil2','draugur','p1gtr','chiron17','rmodgt63','HellephantDurango'}

--[[
    requiresDriftKit
    If set to true, the vehicle will need a drift kit installed onto it before the
    drift mode can be enabled.
    The drift kit item is called 'ww_drift_kit'.
    The drift kit removal item is called `ww_drift_kit_removal`.
]]
cfg_shared.requiresDriftKit = true

--[[
    persistDriftKit
    If set to true, when a player installs a drift kit onto their vehicle, it will
    persist through server restarts. It will create a table in the database for you
    and store the data there. The table is called 'wooshieworks_drift'.
]]
cfg_shared.persistDriftKit = true

--[[
    canOnlyToggleDriftModeWhileCarIsStopped
    If set to true, drift mode can only be activated and deactivated whilst the car is stopped.
]]
cfg_shared.canOnlyToggleDriftModeWhileCarIsStopped = true

--[[
    Have your own notification script?
    Add it below to use it instead of the default QBCore notifications.
]]
exports("ClientDoNotification", function(pMessage, pType)
    --print(pMessage)
    --print(pType)

    TriggerEvent('QBCore:Notify', pMessage, pType) --Example of QBCore's notification.
end)

exports("ServerDoNotification", function(pSource, pMessage, pType)
    --print(pMessage)
    --print(pType)

    TriggerClientEvent('QBCore:Notify', pSource, pMessage, pType) --Example of QBCore's notification.
end)
















--#[DO NOT EDIT BELOW THIS LINE]#--
exports("GetSharedConfig", function()
    return cfg_shared
end)