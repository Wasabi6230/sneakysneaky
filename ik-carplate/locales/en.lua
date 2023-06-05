local Translations = {
    error = {
        cancelled = "You have cancelled the progress!",
        not_yours = "This car doesn't belong to you!",
        not_near = "You need to be near a vehicle in order to do that",
        no_item = "You don't have the item needed!",
        no_money = "You don't have enough money!",
        plate_exist = "Plate number does already exist!",
        not_real = "You don't have a real plate on your car",
    },
    target = {
        buy = "Buy New Plate",
    },
    success = {
        mounted = "Your new plate is mounted on the car!",
    },
    pb = {
        changing = "Changing the plate..",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})