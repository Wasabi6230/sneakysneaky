name "ik-atmrobbery"
author "Proportions#8460"
version "1.0.0"
description "ATM robbery script by Proportions#8460"
fx_version "cerulean"
game "gta5"

shared_script {
    "config.lua",
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}
client_script {
    "client/encrypted.lua",
    "client/main.lua"
}
server_script {
    "server/encrypted.lua",
    "server/main.lua"
}

lua54 'yes'

escrow_ignore {
    'config.lua',
    'client/main.lua',
    'server/main.lua',
    'locales/*.lua',
    'images/*.png',
    'install.md'
}
dependency '/assetpacks'