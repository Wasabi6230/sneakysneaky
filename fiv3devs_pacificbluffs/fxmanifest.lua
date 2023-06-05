fx_version 'cerulean'
game 'gta5'
this_is_a_map 'yes'
replace_level_meta 'gta5'
files { 'gta5.meta', 'water.xml', 'sp_manifest.ymt'	}

data_file "SCENARIO_POINTS_OVERRIDE_FILE" 'sp_manifest.ymt'

escrow_ignore {
  'stream/readme/readme.txt',  -- Only ignore one file
}


dependency '/assetpacks'