fx_version 'cerulean'
game 'gta5'

description 'QB-Minejob'
version '1.0.0'

shared_script { 
	'config.lua'	
}

client_scripts {
	'client/main.lua',
	'client/blips.lua',
	'client/washing.lua',
	'client/smelting.lua',
}

server_scripts {
    'server/main.lua',
} 

dependencies {
	"qb-core",
	"polyzonehelper",
	"qb-target",
}
