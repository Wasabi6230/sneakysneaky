fx_version 'cerulean'

games { 'gta5' }

lua54 'yes'

description 'KRP Underworld Drug System'

version '1.0.0'

shared_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/CircleZone.lua',
	'@qb-core/shared/locale.lua',
	'config.lua',
	'locales/en.lua'
}

server_scripts {
	'server/coke.lua',
	'server/heroin.lua',
	'server/lsd.lua',
	'server/mdma.lua',
	'server/meth.lua',
	'server/mushroom.lua',
	'server/oxy.lua',
	'server/weed.lua'
}

client_scripts {
	'client/coke.lua',
	'client/gundealer.lua',
	'client/heroin.lua',
	'client/lsd.lua',
	'client/mdma.lua',
	'client/meth.lua',
	'client/mushroom.lua',
	'client/oxy.lua',
	'client/target.lua',
	'client/weed.lua'
}

files {
	'stream/mw_props.ytyp',
	
	'stream/mushroom/prop_garden_decco.ytd',
	
	'stream/mdma/sassafras.ytyp',
	'stream/mdma/sassafras_plant.ydr',
	
	'stream/coca/custom_coca_plant.ytyp',
	'stream/coca/custom_prop_bush_cocaplant_01.ydr',
	
	'stream/oxy/oxy.ytyp',
	'stream/oxy/poppy_plant.ydr',
	
	'stream/rye/prop_rye_plant_01.ytyp',
	'stream/rye/prop_rye_plant_01.ydr',
	
	'stream/heroinresin/poppy_resin_heroin.ytyp',
	'stream/heroinresin/poppy_resin_plant.ydr',
	
	'stream/psuedo/meth_pseudoephedrine.ytyp',
	'stream/psuedo/meth_pseudoephedrine.ydr',
}

data_file 'DLC_ITYP_REQUEST' 'stream/mw_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/coca/custom_coca_plant.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mdma/sassafras.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/oxy/oxy.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/rye/prop_rye_plant_01.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/heroinresin/poppy_resin_heroin.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/psuedo/meth_pseudoephedrine.ytyp'