Config = {}

-- Tested Particle List
-- Smoke Effect: "ent_amb_steam_pipe_hvy"
-- Electric Effect: "ent_amb_sparking_wires"
-- Fire Effect: "ent_amb_torch_fire"
-- Glowing Effect: "fire_wrecked_plane_cockpit"

-- Clothing Section Number List
-- 1 = Mask
-- 5 = Parachute/bag
-- 7 = Chain/Scarfs
-- 8 = Undershirt
-- 9 = Vest
-- 10 = Decals/Badges

Config.ChainSection = 7
Config.RingSection = 5

-- 0: Face 
-- 1: Mask 
-- 2: Hair 
-- 3: Torso 
-- 4: Leg
-- 5: Parachute/Bag 
-- 6: Shoes 
-- 7: Accessory 
-- 8: Undershirt 
-- 9: Kevlar 
-- 10: Badge 
-- 11: Torso 2 (jacket)

Config.MaskSection = 1
Config.ArmbandSection = 8
Config.PocketflagSection = 5
Config.KutteSection = 9
Config.JacketSection = 11
Config.PantsSection = 4

Config.EffectTimeMin = 8
Config.EffectTimeMax = 12


Config.Chains = {
    ['saintschainmale'] = {
        ["Male"] = {
            ["Model"] = 187, -- This is the clothing model you want the chain to use.
            ["Texture"] = 0, -- This is the texture numbers you want the chain to use.
            ["Effects"] = false, -- This is to enable/disable the particle effect on the chain.
            ["Particle"] = "fire_wrecked_plane_cockpit", -- Use the list above to change the effect or google and test some other effects yourself.
            ["xOffset"] = 0.45, -- This changes the position of the effect.
            ["yOffset"] = 0.15, -- This changes the position of the effect. 
            ["Scale"] = 0.15, -- Change this to how big you want the effect to be.
        },
        ["Female"] = {
            ["Model"] = 154, 
            ["Texture"] = 0,
            ["Effects"] = true,
            ["Particle"] = "ent_amb_sparking_wires",
            ["xOffset"] = 0.45,
            ["yOffset"] = 0.15,
            ["Scale"] = 0.5,
        }
    }
}

Config.Flags = {
    ['projectflag'] = {
        ["Male"] = {
            ['mask'] = {
                ["Model"] = 209, 
                ["Texture"] = 0,
            },
            ['armband'] = {
                ["Model"] = 114, 
                ["Texture"] = 0,
            },
            ['flag'] = {
                ["Model"] = 112, 
                ["Texture"] = 0,
            }, 
        },
        ["Female"] = {
            ['mask'] = {
                ["Model"] = 209, 
                ["Texture"] = 1,
            },
            ['armband'] = {
                ["Model"] = 191, 
                ["Texture"] = 1,
            },
            ['flag'] = {
                ["Model"] = 111, 
                ["Texture"] = 1,
            }, 
        }
    }
}

Config.Rings = {
    ["polyrings"] = {
        ["Male"] = {
            ["Model"] = 125, 
            ["Texture"] = 0,
        },
	},
    ["onepercentring"] = {
        ["Male"] = {
            ["Model"] = 124, 
            ["Texture"] = 0,
        },
	},	
}

Config.Jacket = {
    ["driftchallenger1"] = {
        ["Male"] = {
            ["Model"] = 600, 
            ["Texture"] = 0,
        },
	},
	["driftchallenger2"] = {
        ["Male"] = {
            ["Model"] = 600, 
            ["Texture"] = 1,
        },
	},
	["driftchallenger3"] = {
        ["Male"] = {
            ["Model"] = 600, 
            ["Texture"] = 2,
        },
	},
	["driftchallenger4"] = {
        ["Male"] = {
            ["Model"] = 600, 
            ["Texture"] = 3,
        },
	},
	["driftchallenger5"] = {
        ["Male"] = {
            ["Model"] = 600, 
            ["Texture"] = 4,
        },
	},
	["driftchallenger5"] = {
        ["Male"] = {
            ["Model"] = 600, 
            ["Texture"] = 4,
        },
	},
	["driftchallenger6"] = {
        ["Male"] = {
            ["Model"] = 600, 
            ["Texture"] = 5,
        },
	},
	["driftchallenger7"] = {
        ["Male"] = {
            ["Model"] = 600, 
            ["Texture"] = 6,
        },
	},
	["driftkingsjacket"] = {
        ["Male"] = {
            ["Model"] = 600, 
            ["Texture"] = 7,
        },
	},
	["femaledriftchallenger1"] = {
        ["Female"] = {
            ["Model"] = 576, 
            ["Texture"] = 0,
        },
	},
	["femaledriftchallenger2"] = {
        ["Female"] = {
            ["Model"] = 576, 
            ["Texture"] = 1,
        },
	},
	["femaledriftchallenger3"] = {
        ["Female"] = {
            ["Model"] = 576, 
            ["Texture"] = 2,
        },
	},
	["femaledriftchallenger4"] = {
        ["Female"] = {
            ["Model"] = 576, 
            ["Texture"] = 3,
        },
	},
	["femaledriftchallenger5"] = {
        ["Female"] = {
            ["Model"] = 576, 
            ["Texture"] = 4,
        },
	},
	["femaledriftchallenger6"] = {
        ["Female"] = {
            ["Model"] = 576, 
            ["Texture"] = 5,
        },
	},
	["femaledriftchallenger7"] = {
        ["Female"] = {
            ["Model"] = 576, 
            ["Texture"] = 6,
        },
	},
	["driftkingsgirljacket"] = {
        ["Female"] = {
            ["Model"] = 576, 
            ["Texture"] = 7,
        },
	},
}

Config.Pants = {
    ["robebottom"] = {
        ["Male"] = {
            ["Model"] = 180, 
            ["Texture"] = 0,
        },
	},
}

Config.Kuttes = {
	["robehood"] = {
        ["Male"] = {
            ["Model"] = 82, 
            ["Texture"] = 0,
        },
	},
    ["jaypolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 15,
        },
	},
	["lifemembernativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 9,
        },
	},
	["roadcappolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 6,
        },
	},
	["roadcapnativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 7,
        },
	},
	["tailgunnativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 8,
        },
	},
	["prospectnativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 11,
        },
	},
	["prospectpolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 10,
        },
	},	
	["vprespolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 1,
        },
	},
	["vpresnativepatch"] = {
        ["Male"] = {
            ["Model"] = 93, 
            ["Texture"] = 0,
        },
	},
	["sgtnativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 3,
        },
	},
	["membernativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 10,
        },
	},	
	["sgtpolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 2,
        },
	},
	["secretarypolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 3,
        },
	},
	["secretarynativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 5,
        },
	},
	["pateronativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 25,
        },
	},	
	["enforcernativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 6,
        },
	},
	["enforcerpolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 5,
        },
	},
	["raynademonpatch"] = {
        ["Female"] = {
            ["Model"] = 71, 
            ["Texture"] = 3,
        },
	},
	["kjdemonpatch"] = {
        ["Female"] = {
            ["Model"] = 71, 
            ["Texture"] = 6,
        },
	},
	["fmemberdemonpatch"] = {
        ["Female"] = {
            ["Model"] = 71, 
            ["Texture"] = 1, 
        },
	},
	["fmembernativespatch"] = {
        ["Female"] = {
            ["Model"] = 72, 
            ["Texture"] = 0, 
        },
	},
	["escodemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 11, 
        },
	},
	["bigzdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 12, 
        },
	},	
	["founderdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 13, 
        },
	},	
	["richiedemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 14, 
        },
	},	
	["billydemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 15, 
        },
	},	
	["enforcerdemonpatch2"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 16, 
        },
	},	
	["memberdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 1,
        },	
	},
	["secretarydemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 5,
        },
	},
	["tailgunnerdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 2,
        },
	},
	["roadcaptaindemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 3,
        },
	},
	["enforcerdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 4,
        },
	},
	["sgtdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 6,
        },
	},
	["vpresdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 7,
        },
	},
	["presdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 8,
        },
	},
	["prospectdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] = 0,
        },
	},
	["fprospectdemonpatch"] = {
        ["Female"] = {
            ["Model"] = 71, 
            ["Texture"] = 0,
        },
	},
	["treasurerdemonpatch"] = {
        ["Male"] = {
            ["Model"] = 76, 
            ["Texture"] =9,
        },
	},
	["adminvest"] = {
        ["Male"] = {
            ["Model"] = 70, 
            ["Texture"] = 0,
        },
	},
	["gadminvest"] = {
        ["Female"] = {
            ["Model"] = 63, 
            ["Texture"] = 0,
        },
	},
	["devvest"] = {
        ["Male"] = {
            ["Model"] = 70, 
            ["Texture"] = 1,
        },
	},
	["modvest"] = {
        ["Male"] = {
            ["Model"] = 70, 
            ["Texture"] = 2,
        },
	},
	["gmodvest"] = {
        ["Female"] = {
            ["Model"] = 63, 
            ["Texture"] = 2,
        },
	},	
	["godfathercoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 8,
        },
	},
	["doncoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 0,
        },
	},
	["underdoncoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 1,
        },
	},
	["consiglierecoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 2,
        },
	},
	["enforcercoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 3,
        },
	},
	["capocoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 4,
        }
    },
	["doncoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 0,
        },
	},
	["soldiercoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 5,
        },
	},
	["trescoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 6,
        },
	},
	["vcapocoat"] = {
        ["Male"] = {
            ["Model"] = 77, 
            ["Texture"] = 7,
        },
	},
	["treasurerpolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 4,
        },
	},
	["memberpolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 8,
        },
	},
	["secwarriorspatch"] = {
        ["Female"] = {
            ["Model"] = 60, 
            ["Texture"] = 0,
        },
	},
	["girlwarriorspatch"] = {
        ["Female"] = {
            ["Model"] = 60, 
            ["Texture"] = 2,
        },
	},
	["prospectgpolypatch"] = {
        ["Female"] = {
            ["Model"] = 61, 
            ["Texture"] = 2,
        },
	},
	["girlypolypatch"] = {
        ["Female"] = {
            ["Model"] = 61, 
            ["Texture"] = 0,
        },
	},
	["girlpolypatch"] = {
        ["Female"] = {
            ["Model"] = 61, 
            ["Texture"] = 1,
        },
	},
	["pressotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 0,
        },
	},
	["sefalifemembersotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 17,
        },
	},
	["membersotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 9,
        },
	},
	["secretarysotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 4,
        },
	},
	["sgtsotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 2,
        },
	},
	["tailgunnersotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 11,
        },
	},
	["roadcaptainsotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 6,
        },
	},
	["enforcersotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 5,
        },
	},
	["vpressotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 1,
        },
	},
	["prospectsotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 10,
        },
	},
	["treasurersotiapatch"] = {
        ["Male"] = {
            ["Model"] = 75, 
            ["Texture"] = 3,
        },
	},
	["fenforcersotiapatch"] = {
        ["Female"] = {
            ["Model"] = 59, 
            ["Texture"] = 3,
        },
	},
	["fmembersotiapatch"] = {
        ["Female"] = {
            ["Model"] = 59, 
            ["Texture"] = 1,
        },
	},
	["fprospectsotiapatch"] = {
        ["Female"] = {
            ["Model"] = 59, 
            ["Texture"] = 2,
        },
	},
	["prespolypatch"] = {
        ["Male"] = {
            ["Model"] = 72, 
            ["Texture"] = 0,
        },
	},
	["presnativepatch"] = {
        ["Male"] = {
            ["Model"] = 94, 
            ["Texture"] = 0,
        },
	},
	["natpresnativepatch"] = {
        ["Male"] = {
            ["Model"] = 69, 
            ["Texture"] = 0,
        },
	},
	["presnativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 0,
        },
	},
	["vpresnativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 1,
        },
	},
	["sgtnativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 2,
        },
	},
	["tresnativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 3,
        },
	},
	["secnativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 4,
        },
	},
	["roadcapnativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 5,
        },
	},
	["lifemembernativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 6,
        },
	},
	["membernativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 7,
        },
	},
	["prospectnativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 8,
        },
	},
	["wallonativepatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 9,
        },
	},
	["jakeynativepatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 10,
        },
	},
	["whironativepatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 11,
        },
	},
	["sgt2nativemelbpatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 12,
        },
	},
	["tuinativepatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 13,
        },
	},
	["waynenativepatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 14,
        },
	},
	["vtecnativepatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 15,
        },
	},
	["chubbynativepatch"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 16,
        },
	},
	["opetauamembernative"] = {
        ["Male"] = {
            ["Model"] = 71, 
            ["Texture"] = 17,
        },
	},
	["fprospectsotiapatch"] = {
        ["Female"] = {
            ["Model"] = 59, 
            ["Texture"] = 2,
        },
	},
	["fprospectsotiapatch"] = {
        ["Female"] = {
            ["Model"] = 59, 
            ["Texture"] = 2,
        },
	},
	["devvest"] = {
        ["Male"] = {
            ["Model"] = 70, 
            ["Texture"] = 1,
        },
	},
	["modvest"] = {
        ["Male"] = {
            ["Model"] = 70, 
            ["Texture"] = 2,
        },
	},
	["fpanteraprospectpatch"] = {
        ["Female"] = {
            ["Model"] = 60, 
            ["Texture"] = 0,
        },
	},
	["silverbackstacstandinggz3"] = {
        ["Male"] = {
            ["Model"] = 89, 
            ["Texture"] = 0,
        },
	},
	["silverbacksemperorroadking"] = {
        ["Male"] = {
            ["Model"] = 89, 
            ["Texture"] = 1,
        },
	},
	["silverbackstacgbrothers"] = {
        ["Male"] = {
            ["Model"] = 89, 
            ["Texture"] = 2,
        },
	},
	["silverbackstacsittinggz"] = {
        ["Male"] = {
            ["Model"] = 89, 
            ["Texture"] = 3,
        },
	},
	["silverbackstacstandinggz1"] = {
        ["Male"] = {
            ["Model"] = 89, 
            ["Texture"] = 4,
        },
	},
	["silverbackstacstandinggz2"] = {
        ["Male"] = {
            ["Model"] = 89, 
            ["Texture"] = 5,
        },
	},
	["silverbacksemperor1"] = {
        ["Male"] = {
            ["Model"] = 90, 
            ["Texture"] = 0,
        },
	},
	["silverback4bucksittinggz"] = {
        ["Male"] = {
            ["Model"] = 91, 
            ["Texture"] = 0,
        },
	},
	["silverbackemporrer"] = {
        ["Male"] = {
            ["Model"] = 91, 
            ["Texture"] = 1,
        },
	},
	["silverbackemporrercommander"] = {
        ["Male"] = {
            ["Model"] = 91, 
            ["Texture"] = 2,
        },
	},
	["silverback3buckgbrothers"] = {
        ["Male"] = {
            ["Model"] = 92, 
            ["Texture"] = 0,
        },
	},
	["silverback3bucksittinggz"] = {
        ["Male"] = {
            ["Model"] = 92, 
            ["Texture"] = 1,
        },
	},
	["silverback3buckstandinggz1"] = {
        ["Male"] = {
            ["Model"] = 92, 
            ["Texture"] = 2,
        },
	},
	["silverback3buckstandinggz2"] = {
        ["Male"] = {
            ["Model"] = 92, 
            ["Texture"] = 3,
        },
	},
	["silverback3buckstandinggz3"] = {
        ["Male"] = {
            ["Model"] = 92, 
            ["Texture"] = 4,
        },
	},
	["silverbackemporrertres"] = {
        ["Female"] = {
            ["Model"] = 70, 
            ["Texture"] = 0,
        },
	},
	["fpanteramemberpatch"] = {
        ["Female"] = {
            ["Model"] = 60, 
            ["Texture"] = 1,
        },
	},
	["fpanteralifememberpatch"] = {
        ["Female"] = {
            ["Model"] = 60, 
            ["Texture"] = 2,
        },
	},
	["fpanteratreasurerpatch"] = {
        ["Female"] = {
            ["Model"] = 60, 
            ["Texture"] = 3,
        },
	},
	["panterapresidentpatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 0,
        },
	},
	["panteravicepresidentpatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 1,
        },
	},
	["panterasgtpatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 2,
        },
	},
	["panterasecretarypatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 3,
        },
	},
	["panteraenforcerpatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 4,
        },
	},
	["panteraroadcappatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 6,
        },
	},
	["panteratailgunnerpatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 7,
        },
	},
	["panteralifememberpatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 8,
        },
	},
	["panteramemberpatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 9,
        },
	},
	["panterapropsectpatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 10,
        },
	},
	["panterajaypatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 11,
        },
	},
	["panteracappatch"] = {
        ["Male"] = {
            ["Model"] = 88, 
            ["Texture"] = 12,
        },
	},	
	
}
