Config = {}

Config.DefaultFood = 'default'

Config.Food = {
    ['default'] = {
        Prop = "prop_cs_burger_01",
        PropBone = 18905,
        PropPlacement = {0.12, 0.028, 0.001, 10.0, 175.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp"}
    },
    ['sandwich'] = {
        Prop = 'prop_sandwich_01',
        PropBone = 18905,
        PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
        EmoteMoving = true,
        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp"}
    },
    ['tosti'] = {
        Prop = 'prop_sandwich_01',
        PropBone = 18905,
        PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
        EmoteMoving = true,
        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp"}
    },
    ['twerks_candy'] = { -- meteorite
        Prop = 'prop_choc_meto',
        PropBone = 60309,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteMoving = true,
        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger"}
    },
    ['snikkel_candy'] = { -- egobar
        Prop = 'prop_choc_ego',
        PropBone = 60309,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteMoving = true,
        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger"}
    },
    ['donut'] = { -- donut
        Prop = 'prop_amb_donut',
        PropBone = 18905,
        PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
        EmoteMoving = true,
        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger"}
    },
    ['kina'] = {
        Prop = 'krp_pear_kina',
        PropBone = 18905,
        PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
        EmoteMoving = true,
        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger"}
    },    ['oyster'] = {        Prop = 'v_61_lng_mesh_shell_scuzz',        PropBone = 18905,        PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},        EmoteMoving = true,        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger"}    },    ['paua'] = {        Prop = 'v_61_lng_mesh_shell_scuzz',        PropBone = 18905,        PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},        EmoteMoving = true,        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger"}    },    ['mussel'] = {        Prop = 'v_61_lng_mesh_shell_scuzz',        PropBone = 18905,        PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},        EmoteMoving = true,        Anim = {"mp_player_inteat@burger", "mp_player_int_eat_burger"}    }	
}

Config.DefaultDrink = 'water_bottle'

Config.Drink = {
    ['water_bottle'] = {
        Prop = "prop_ld_flow_bottle",
        PropBone = 18905,
        PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },
    ['bluev'] = {
        Prop = 'prop_ecola_can',
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
        EmoteLoop = true,
        EmoteMoving = true,
        Anim = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c"}
    },
    ['yj_codys'] = {
        Prop = 'ng_proc_sodacan_01b',
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, -0.05, 0.0, 0.0, 130.0},
        EmoteLoop = true,
        EmoteMoving = true,
        Anim = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c"}
    },
    ['lnp'] = {
        Prop = 'ng_proc_sodabot_01a',
        PropBone = 18905,
        PropPlacement = {0.0, -0.25, 0.10, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },	
    ['coffee'] = {
        Prop = 'p_amb_coffeecup_01',
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
        EmoteLoop = true,
        EmoteMoving = true,
        Anim = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c"}
    },
    ['burger-softdrink'] = {
        Prop = 'prop_cs_bs_cup',
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
        EmoteLoop = true,
        EmoteMoving = true,
        Anim = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c"}
    },
    ['yj_drink_coke'] = {
        Prop = 'prop_cs_bs_cup',
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
        EmoteLoop = true,
        EmoteMoving = true,
        Anim = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c"}
    },	
    ['burger-mshake'] = {
        Prop = 'v_ret_fh_bscup',
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
        EmoteLoop = true,
        EmoteMoving = true,
        Anim = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c"}
    },
    ['beer'] = {
        Prop = 'prop_amb_beer_bottle',
        PropBone = 18905,
        PropPlacement = {0.10, -0.05, 0.03, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },
    ['vailima'] = {
        Prop = 'prop_amb_beer_bottle',
        PropBone = 18905,
        PropPlacement = {0.10, -0.05, 0.03, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },
    ['yj_bigbotlion'] = {
        Prop = 'prop_whiskey_bottle',
        PropBone = 18905,
        PropPlacement = {0.03, -0.15, 0.07, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },	
    ['yj_bigbotwaikato'] = {
        Prop = 'prop_whiskey_bottle',
        PropBone = 18905,
        PropPlacement = {0.03, -0.15, 0.07, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },
    ['yj_bigbottui'] = {
        Prop = 'prop_whiskey_bottle',
        PropBone = 18905,
        PropPlacement = {0.03, -0.15, 0.07, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },	
    ['whiskey'] = {
        Prop = 'prop_whiskey_bottle',
        PropBone = 18905,
        PropPlacement = {0.03, -0.15, 0.07, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },
    ['xohenny'] = {
        Prop = 'prop_whiskey_bottle',
        PropBone = 18905,
        PropPlacement = {0.03, -0.15, 0.07, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },		
    ['vodka'] = {
        Prop = 'prop_vodka_bottle',
        PropBone = 18905,
        PropPlacement = {0.0, -0.25, 0.10, 240.0, -60.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"mp_player_intdrink", "loop_bottle"}
    },	
    ['wine'] = {
        Prop = 'prop_drink_redwine',
        PropBone = 18905,
        PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
        EmoteMoving = true,
        EmoteLoop = true,
        Anim = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop"}
    }
}