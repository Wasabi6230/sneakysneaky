fx_version 'cerulean'
game 'gta5'

description 'qb-masks'
version '2.0.0'
author 'diego2000#4603'
lua54 'yes'

shared_scripts {
    'config/sh_config.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts  {
    'server/*.lua'
}

escrow_ignore {
    'config/sh_config.lua',
    'client/cl_qb-shops.lua',
    'server/sv_qb-shops.lua'
}
dependency '/assetpacks'