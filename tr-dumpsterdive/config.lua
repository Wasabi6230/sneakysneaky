Config = {}

Target = {}

Config.SmallBinProps = {
    -- 'prop_bin_07b',
    'prop_bin_01a',
    -- 'prop_recyclebin_03_a',
    'zprop_bin_01a_old',
    -- 'prop_bin_07c',
    -- 'prop_bin_04a',
    -- 'prop_bin_09a',
    -- 'prop_bin_03a',
    'prop_bin_02a',
    'prop_bin_12a',
    'prop_bin_05a',
    -- 'prop_bin_07a',
}

Config.BigBinProps = {
    -- 'prop_skip_05a',
    'prop_dumpster_3a',
    -- 'prop_skip_08a',
    'prop_dumpster_4b',
    -- 'prop_bin_14a',
    -- 'prop_skip_03',
    'prop_dumpster_01a',
    'prop_dumpster_4a',
    -- 'prop_skip_10a',
    'prop_dumpster_02b',
    -- 'prop_bin_14b',
    -- 'prop_skip_06a',
    'prop_dumpster_02a',
    -- 'prop_bin_07a',
    -- 'prop_skip_02a',
}

Config.SmallBinTimer = 4
Config.DumpsterTimer = 6

Config.MiniGame = {
    SmallBinCircles = {
        Min = 1,
        Max = 2,
    },
    SmallbinTimer = {
        Min = 11, --was 8
        Max = 13, -- was 10
    },
    BigBinCircles = {
        Min = 2,
        Max = 3,
    },
    BigBinTimer = {
        Min = 8, -- was 5
        Max = 10, -- was 7
    }
}

Config.BinRewards = {
    [1] = {
        type = "item"
    },
    [2] = {
        type = "cash",
    },
    [3] = {
        type = "nothing",
    }
}

Config.SmallBinRewards = {
    CashMin = 550,
    CashMax = 1000,
    items = {
        {'bigbenpie', 1},
        {'water_bottle', 1},
		{'blindfold', 1},
		{'trimming_scissors', 1},
		{'plastic', 1},
		{'copper', 1},
		{'aluminum', 1},
		{'iron', 1},
		{'steel', 1},
		{'glass', 1},
		{'rolex', 1},
		{'goldchain', 1},
		{'tablet', 1},
		{'iphone', 1},
		{'samsungphone', 1},
    }
}

Config.BigBinRewards = {
    CashMin = 800,
    CashMax = 1500,
    items = {
        {'bigbenpie', math.random(1,2)},
        {'water_bottle', math.random(1,2)},
		{'blindfold', 1},
		{'trimming_scissors', 1},
		{'plastic', math.random(3,5)},
		{'metalscrap', math.random(2,4)},
		{'copper', math.random(1,2)},
		{'aluminum', math.random(1,2)},
		{'iron', math.random(2,3)},
		{'steel', math.random(2,4)},
		{'rubber', math.random(1,2)},
		{'glass', math.random(1,2)},
		{'rolex', math.random(1,3)},
		{'diamond_ring', math.random(1,2)},
		{'goldchain', math.random(1,2)},
		{'10kgoldchain', math.random(1,2)},
		{'tablet', math.random(1,3)},
		{'iphone', math.random(1,2)},
		{'samsungphone', math.random(1,2)},
		{'laptop', math.random(1,3)},
		{'finescale', 1},
		{'vc_magnet', 1},
		{'lsdpaper', math.random(1,3)},
    }
}


-- Target Stuff

Target.IconsHighLight = {
    smallBins = "fa-solid fa-magnifying-glass",
    bigBins = "fa-solid fa-magnifying-glass",
}

Target.Icon = {
    smallBins = "fas fa-trash",
    bigBins = "fas fa-dumpster",
}

Target.Label = {
    smallBins = "Search Bin",
    bigBins = "Search Dumpster",
}

Config.Distance = 2

-- Text

Config.Text = {
    SearchingTrash = "Searching trash..",
    SearchDumpster = "Searching dumpster..",

    --Successfully
    FoundSomething = "You found something!",
    FoundCash = "You found some cash!",

    -- Error
    FoundNothing = "You found nothing in this bin",
    SmallTrashAlreadySearched = "This bin has been searched",
    BigDumsterAlreadySerached = "This dumpster has been searched",
}