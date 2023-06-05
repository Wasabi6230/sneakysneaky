name "ik-carplate"
author "Proportions#8460"
version "1.0.6"
description "Car plate script by Proportions#8460"
fx_version "cerulean"
game "gta5"

shared_scripts {
	'config.lua',
	'@qb-core/shared/locale.lua',
	'locales/en.lua' -- Change your language here
}
client_scripts {'client.lua' }

server_scripts {'@oxmysql/lib/MySQL.lua','server.lua'}


ui_page 'ui/ui.html'
files {
	'ui/ui.html',
	'ui/js/*.js',
	'ui/css/*.css',
	'ui/images/*.png',
	'ui/css/fonts/*.ttf',
}
lua54 'yes'