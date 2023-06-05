fx_version 'bodacious'
game 'gta5'

client_script {
    '@PolyZone/client.lua',
    '@PolyZone/CircleZone.lua',
    'client/*.lua'
}

shared_script 'config.lua'
server_script 'server/main.lua'

lua54 'yes'