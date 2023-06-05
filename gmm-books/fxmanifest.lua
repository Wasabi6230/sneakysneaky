fx_version 'cerulean'
game 'gta5'

name 'gmm-books'
version '1.3'

use_fxv2_oal 'yes'
lua54 'yes'

ui_page 'html/index.html'

shared_scripts {
	'config.lua',
}

server_scripts {
    'server/main.lua',
}

client_scripts {
    'client/main.lua',
}

files {
    "html/*.html",
    "html/*.css",
    "html/*.js",
    'html/img/**/*.png',
}

escrow_ignore {
    'config.lua',
}
dependency '/assetpacks'