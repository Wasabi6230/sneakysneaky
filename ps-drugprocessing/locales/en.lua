local Translations = {
    error = {
        no_item = 'You are missing %{item}!',
		security_system_gun = "SYSTEM: Access Denied...",
        no_key = "Maaan!, you ain't got what i'm looking for!",
		not_all_items = "You don't have the items you need!",
        already_processing = "You already process something!",
        too_far = "Processing was canceled because you left the area!",
    },
    success = {
        acid = "Collected Pseudoephedrine!",
        coca_leaf = "Collected Coca Leaves!",
        poppyresin = "Collected Poppy Resin!",
        cannabis = "Collected Weed!",
		ryecrop = "Collected Rye!",
		mushroom = "Collected Wild Mushroom!",
		PMK = "Collected Sassafras Leaves!",
		poppyplant = "Collect Poppy Plant!",
    },
    progressbar = {
        collecting = "Collecting...",
    },
    target = {
        talk_to_walter = "Talk to Regi",
        talk_to_draco = "Talk to Keith",
		talk_to_doug = "Talk to Doug",
		talk_to_ranui = "Talk to Ranui",
		talk_to_test = "Talk to Test",
        
		keypad = "Exit lab",
		gunenter = "?",
		gunexit = "Exit",
		
        pickCocaLeaves = "Collect Coca Leaves",
        pickHeroin = "Collect Poppy Resin",
        pickWeed = "Collect Weed",
		pickRye = "Collect Rye Crop",
		pickAcid = "Collect Pseudoephedrine",
		pickMushroom = "Collect Wild Mushroom",
		pickPMK = "Collect Sassafras Leaves",
		pickOxxy = "Collect Poppy Seeds",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
