
BackItems = {

    -- ["EXAMPLE ITEM"] = { -- Item Name
        -- model="prop_money_bag_01", -- Model you want to display
        -- back_bone = 24818, -- PED bone the entity is attached to.
        -- Location of the model on the players back. Note this is and offset relative to the players bone coords.
        -- x = -0.4,
        -- y = -0.17,
        -- z = -0.12,
        -- Rotaion of the object.
        -- x_rotation = 0.0,
        -- y_rotation = 90.0,
        -- z_rotation = 0.0,
    -- },

-- CUSTOM WEAPONS
    ["weapon_katanas"] = {
        model="w_me_katana_lr", 
        back_bone = 24818,
        x = 0.30,
        y = -0.17,
        z = 0.20,
        x_rotation = 0.0,
        y_rotation = 140.0,
        z_rotation = 180.0,
    },
	["weapon_beanbag"] = {
        model="w_sg_bbshotgun", 
        back_bone = 24818,
        x = -0.1,
        y = -0.17,
        z = 0.10,
        x_rotation = 0.0,
        y_rotation = 160.0,
        z_rotation = 180.0,
    },
	["weapon_vc_kylo"] = {
        model="w_me_kylo", 
        back_bone = 24818,
        x = 0.30,
        y = -0.17,
        z = 0.20,
        x_rotation = 0.0,
        y_rotation = 140.0,
        z_rotation = 180.0,
    },
	["weapon_vc_minecraft"] = {
        model="w_me_minecraft", 
        back_bone = 24818,
        x = 0.15,
        y = -0.17,
        z = 0.20,
        x_rotation = 80.0,
        y_rotation = 140.0,
        z_rotation = 180.0,
    },
    ["weapon_vc_thor"] = {
        model="w_me_thor", 
        back_bone = 24818,
        x = 0.15,
        y = -0.17,
        z = 0.20,
        x_rotation = 80.0,
        y_rotation = 140.0,
        z_rotation = 180.0,
    },
    ["weapon_vc_zelda"] = {
        model="w_me_zelda", 
        back_bone = 24818,
        x = 0.15,
        y = -0.17,
        z = 0.20,
        x_rotation = 80.0,
        y_rotation = 140.0,
        z_rotation = 180.0,
    },
    ["weapon_vc_shield"] = {
        model="w_me_capshield", 
        back_bone = 24818,
        x = 0.0,
        y = -0.08,
        z = -0.05,
        x_rotation = 0.0,
        y_rotation = -90.0,
        z_rotation = 80.0,
    },
    ["weapon_vc_stormbreaker"] = {
        model="w_me_stormbreaker", 
        back_bone = 24818,
        x = 0.15,
        y = -0.17,
        z = 0.20,
		x_rotation = 80.0,
        y_rotation = 120.0,
        z_rotation = 180.0,
        -- x_rotation = 80.0,
        -- y_rotation = 140.0,
        -- z_rotation = 180.0,
    },

-- Meelee
    ["weapon_bat"] = {
        model="w_me_bat", 
        back_bone = 24817,
        x = 0.35, -- up and down on body
        y = -0.15, -- distance from back, less pushes item away from body
        z = 0.2, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 120.0,
        z_rotation = 180.0,
    },
	
    ["weapon_crowbar"] = {
        model="w_me_crowbar", 
        back_bone = 24817,
        x = 0.35, -- up and down on body
        y = -0.15, -- distance from back, less pushes item away from body
        z = 0.0, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 120.0,
        z_rotation = 180.0,
    },

    ["weapon_golfclub"] = {
        model="w_me_gclub", 
        back_bone = 24817,
        x = 0.35, -- up and down on body
        y = -0.15, -- distance from back, less pushes item away from body
        z = 0.2, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 120.0,
        z_rotation = 180.0,
    },
	
	["weapon_hatchet"] = {
        model="w_me_hatchet", 
        back_bone = 24817,
        x = 0.35, -- up and down on body
        y = -0.14, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 120.0,
        z_rotation = 180.0,
    },
	
	["weapon_machete"] = {
        model="w_me_machette_lr", 
        back_bone = 24817,
        x = 0.35, -- up and down on body
        y = -0.14, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 120.0,
        z_rotation = 180.0,
    },
	
	["weapon_battleaxe"] = {
        model="w_me_battleaxe", 
        back_bone = 24817,
        x = 0.35, -- up and down on body
        y = -0.14, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 120.0,
        z_rotation = 180.0,
    },
	
    ["weapon_poolcue"] = {
        model="w_me_poolcue", 
        back_bone = 24817,
        x = 0.35, -- up and down on body
        y = -0.15, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 100.0,
        z_rotation = 180.0,
    },
	
	-- SMG
    ["weapon_microsmg"] = {
        model="w_sb_microsmg", 
        back_bone = 24817,
        x = 0.10, -- up (higher) and down (less) on body
        y = 0.22, -- distance from back, less pushes item away from body
        z = 0.0, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 300.0,
        z_rotation = 180.0,
    },
	
    ["weapon_smg"] = {
        model="w_sb_smg", 
        back_bone = 24817,
        x = 0.10, -- up (higher) and down (less) on body
        y = 0.22, -- distance from back, less pushes item away from body
        z = 0.0, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 300.0,
        z_rotation = 180.0,
    },
	
    ["weapon_smg_mk2"] = {
        model="w_sb_smgmk2", 
        back_bone = 24817,
        x = 0.10, -- up (higher) and down (less) on body
        y = 0.22, -- distance from back, less pushes item away from body
        z = -0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 300.0,
        z_rotation = 180.0,
    },
	
    ["weapon_assaultsmg"] = {
        model="w_sb_assaultsmg", 
        back_bone = 24817,
        x = 0.05, -- up (higher) and down (less) on body
        y = 0.22, -- distance from back, less pushes item away from body
        z = 0.05, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 320.0,
        z_rotation = 180.0,
    },
	
    ["weapon_machinepistol"] = {
        model="w_sb_compactsmg", 
        back_bone = 51826,
        x = 0.10, -- up (higher) and down (less) on body
        y = 0.0, -- distance from back, less pushes item away from body
        z = 0.12, -- left and right on body (- for left, positive for right)
        x_rotation = 250.0,
        y_rotation = 0.0,
        z_rotation = 0.0,
    },
	
    ["weapon_minismg"] = {
        model="w_sb_minismg", 
        back_bone = 51826,
        x = 0.10, -- up (higher) and down (less) on body
        y = 0.0, -- distance from back, less pushes item away from body
        z = 0.12, -- left and right on body (- for left, positive for right)
        x_rotation = 250.0,
        y_rotation = 0.0,
        z_rotation = 0.0,
    },
	
-- Shotguns
    ["weapon_pumpshotgun"] = {
        model="w_sg_pumpshotgun", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
    ["weapon_pumpshotgun_mk2"] = {
        model="w_sg_pumpshotgunmk2", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_sawnoffshotgun"] = {
        model="w_sg_sawnoff", 
        back_bone = 24817,
        x = 0.35, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 45.0,
        z_rotation = 180.0,
    },
	
    ["weapon_assaultshotgun"] = {
        model="w_sg_assaultshotgun", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
    ["weapon_bullpupshotgun"] = {
        model="w_sg_bullpupshotgun", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_musket"] = {
        model="w_ar_musket", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
    ["weapon_heavyshotgun"] = {
        model="w_sg_heavyshotgun", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
    ["weapon_dbshotgun"] = {
        model="w_sg_doublebarrel", 
        back_bone = 24817,
        x = 0.35, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = -0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = -35.0,
        z_rotation = 180.0,
    },
	
    ["weapon_autoshotgun"] = {
        model="w_sg_sweeper", 
        back_bone = 24817,
        x = 0.10, -- up (higher) and down (less) on body
        y = 0.22, -- distance from back, less pushes item away from body
        z = 0.0, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 300.0,
        z_rotation = 180.0,
    },
	
    ["weapon_combatshotgun"] = {
        model="w_sg_pumpshotgunh4", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	-- Assault Rifles
	
    ["weapon_assaultrifle"] = {
        model="w_ar_assaultrifle", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
    ["weapon_assaultrifle_mk2"] = {
        model="w_ar_assaultriflemk2", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_carbinerifle"] = {
        model="w_ar_carbinerifle", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_carbinerifle_mk2"] = {
        model="w_ar_carbineriflemk2", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_advancedrifle"] = {
        model="w_ar_advancedrifle", 
        back_bone = 24817,
        x = 0.10, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_specialcarbine"] = {
        model="w_ar_specialcarbine", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_specialcarbine_mk2"] = {
        model="w_ar_specialcarbinemk2", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_bullpuprifle"] = {
        model="w_ar_bullpuprifle", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_bullpuprifle_mk2"] = {
        model="w_ar_bullpupriflemk2", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_compactrifle"] = {
        model="w_ar_assaultrifle_smg", 
        back_bone = 24817,
        x = 0.10, -- up (higher) and down (less) on body
        y = 0.22, -- distance from back, less pushes item away from body
        z = -0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 300.0,
        z_rotation = 180.0,
    },
	
    ["weapon_militaryrifle"] = {
        model="w_ar_bullpuprifleh4", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

    ["weapon_heavyrifle"] = {
        model="w_ar_heavyrifleh", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_tacticalrifle"] = {
        model="w_ar_carbinerifle_reh", 
        back_bone = 24817,
        x = 0.25, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	-- LMG
	["weapon_mg"] = {
        model="w_mg_mg", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_combatmg"] = {
        model="w_mg_combatmg", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_combatmg_mk2"] = {
        model="w_mg_combatmgmk2", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_gusenberg"] = {
        model="w_sb_gusenberg", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	-- Sniper Rifles
	
	["weapon_sniperrifle"] = {
        model="w_sr_sniperrifle", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_heavysniper"] = {
        model="w_sr_heavysniper", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_heavysniper_mk2"] = {
        model="w_sr_heavysnipermk2", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_marksmanrifle"] = {
        model="w_sr_marksmanrifle", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_marksmanrifle_mk2"] = {
        model="w_sr_marksmanriflemk2", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_precisionrifle"] = {
        model="w_sr_precisionrifle_reh", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

	-- Heavy Weapons
	["weapon_grenadelauncher"] = {
        model="w_lr_grenadelauncher", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },
	
	["weapon_grenadelauncher_smoke"] = {
        model="w_lr_grenadelauncher", 
        back_bone = 24817,
        x = 0.15, -- up and down on body
        y = -0.17, -- distance from back, less pushes item away from body
        z = 0.1, -- left and right on body (- for left, positive for right)
        x_rotation = 0.0,
        y_rotation = 0.0,
        z_rotation = 180.0,
    },

}