fx_version 'cerulean'
game 'gta5'

description 'qb-transfervehicle'
version '1.0.0'
authro 'nzkfc'

shared_script {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
}

client_scripts {
    'client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}

lua54 'yes'
