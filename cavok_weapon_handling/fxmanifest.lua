fx_version 'adamant'
games { 'gta5' }
lua54 'yes'

escrow_ignore {
    'config.lua',
    'locales/*.lua',
    'lua/client/*.lua'
}

shared_scripts {
    'config.lua'
}

client_scripts {
    'lua/client/client.lua',
    'locales/*.lua',
    'lua/client/command.lua'
} 

dependency '/assetpacks'