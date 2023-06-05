local Translations = {
    error = {
        Invalid_ID = "Invalid Player Id Supplied",
        playertoofar = "This player is not close enough",
        buyerinfo = "Couldn\'t get buyer info",
        notinveh = "You must be in the vehicle you want to transfer",
        vehinfo = "Couldn\'t get vehicle info",
        notown = "You don\'t own this vehicle",
        buyertoopoor = "The buyer doesn\'t have enough money",
    },
    success = {
        gifted = "You gifted your vehicle",
        received_gift = "You were gifted a vehicle",
        soldfor = "You sold your vehicle for $",
        boughtfor = "You bought a vehicle for $",
    },
    general = {
        command_transfervehicle = "Gift or sell your vehicle",
        command_transfervehicle_help = "ID of buyer (Use /paywave)",
        command_transfervehicle_amount = "Sell amount (Leave blank for no cost)",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
