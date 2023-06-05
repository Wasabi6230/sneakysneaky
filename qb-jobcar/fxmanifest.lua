fx_version 'cerulean'
game 'gta5'

description 'QB-Jobcar'
version '1.0.1'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua', -- Change to the language you want
}

client_scripts {
    'client/main.lua',
}

lua54 'yes'