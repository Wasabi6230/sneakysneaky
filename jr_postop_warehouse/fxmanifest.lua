lua54 'on'
fx_version 'bodacious'
game 'gta5'

author 'junior99au'
description 'Post Op Warehouse'
version '1.0.0'

this_is_a_map 'yes'

data_file 'AUDIO_GAMEDATA' 'audio/jr_ehurware_collision_game.dat' -- dat151
data_file 'AUDIO_DYNAMIXDATA' 'audio/jr_ehurware_collision_mix.dat' -- dat15

files {
  'audio/jr_ehurware_collision_game.dat151.rel',
  'audio/jr_ehurware_collision_mix.dat15.rel',
}

escrow_ignore {
    'stream/*.ytyp',
    'stream/*.ymap',
    'stream/*.ymf',
    'stream/*.ytd',
    'stream/*.ybn',
    'stream/1503163137.ymt',
    'audio/jr_ehurware_collision_game.dat151.rel',
    'audio/jr_ehurware_collision_mix.dat15.rel',
    'steam/jr_ehurware_prop_desk.ydr',
    'steam/jr_ehurware_prop_sideboard.ydr',
    'stream/po1_01_cg020.ydr',
    'stream/po1_01_ground_d_1.ydr',
  }

dependency '/assetpacks'