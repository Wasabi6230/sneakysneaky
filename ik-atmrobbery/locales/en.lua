local Translations = {
    error = {
        notattached = "Attach a rope first..",
        noatm = "No ATM nearby!",
        vehicleclass = "You need a bigger vehicle..",
        getcloser = "Get closer to the vehicle",
        wait = "OUT OF SERVICE - BANK LOCKDOWN",
        canceled = "Canceled..",
        norope = "You don't have rope on you",
        notenough = "Not enough police",
        donthave = "You don't have an ATM console on you"
    },
    success = {
        used = "You have attached the rope",
        gotcash = "You stole $ %{money}",
        gotbm = "You stole $ %{money}",
    },
    info = {
        secleft = "seconds left..",
        robbery = "ATM Robbery in progress",
        code = "10-31 | ATM Robbery",
        robbing = "Someone Is Robbing the ATM At",
    },
    target = {
        grab = "Grab Money",
        detach = "Detach Rope",
    },
    progbar = {
        attach = "Attaching rope...",
        grabbing = "Grabbing money...",
        detach = "Detaching rope...",
        selling = 'Selling ATM Console...'
    },
    drawtext = {
        attachdetach = "[E] - Attach Rope | [X] Detach Rope",
    },

}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})