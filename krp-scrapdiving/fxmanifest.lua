fx_version 'cerulean'
game 'gta5'

description 'krp-scrapdiving'
author 'nzkfc#7178'
version '1.0.0'

shared_script {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua'
}

server_script 'server/main.lua'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/main.lua'
}

lua54 'yes'