local Translations = {
    error = {
        ["canceled"] = "Canceled",
        ["911_chatmessage"] = "111 MESSAGE",
        ["take_off"] = "/divingsuit to take off your diving suit",
        ["not_wearing"] = "You need a diving tank and gear to do this..",
        ["no_scrap"] = "You don't have anything to sell..",
        ["not_standing_up"] = "You can't be in the water to put this on, it's heavy..",
        ["need_otube"] = "You need a diving tank and diving gear to do this..",
        ["oxygenlevel"] = 'The tank is %{oxygenlevel} full, must be 0% to fill'
    },
    success = {
        ["took_out"] = "You took your diving gear off",
        ["tube_filled"] = "You can now put on your diving gear"
    },
    info = {
        ["collecting_scrap"] = "Collecting Scrap",
        ["scrapdiving_area"] = "Scrap Salvage Area",
        ["collect_scrap"] = "Collect Scrap",
        ["collect_scrap_dt"] = "[E] - Collect Scrap",
        ["checking_pockets"] = "The scrap buyer is looking over your items...",
        ["sell_scrap"] = "Sell Salvage Scrap",
        ["sell_scrap_dt"] = "[E] - Sell Salvage Scrap",
        ["blip_text"] = "111 - Potential illegal salvage activity",
        ["put_suit"] = "Putting on diving gear..",
        ["pullout_suit"] = "Taking off diving gear..",
        ["cop_msg"] = "Person spotted salvaging wrecks.",
        ["cop_title"] = "Illegal Salvage",
        ["command_diving"] = "Take off your diving suit",
    },
    warning = {
        ["oxygen_one_minute"] = "You have less than 1 minute of air remaining",
        ["oxygen_running_out"] = "Your diving tank is running out of air",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})