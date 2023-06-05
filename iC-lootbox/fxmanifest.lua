fx_version 'cerulean'
games { 'gta5' }

author 'Hien#7090'
description 'Lootbox'
version '1.0.0'

files {
    "html/*",
    "html/**/*",
    "html/**/**/*",
    "html/**/**/**/*",
}

ui_page "html/index.html"

client_scripts {
    'config.lua',
    'client/*.lua'
}
server_scripts {
	'@oxmysql/lib/MySQL.lua',
    'config.lua',
    'server/*.lua'
}

escrow_ignore {
    'config.lua',
}

lua54 'yes'
dependency '/assetpacks'