fx_version('bodacious')
game('gta5')
lua54 "yes"
this_is_a_map('yes')

client_scripts {
    "ipl/config.lua",
    "ipl/entityset.lua"
}

server_scripts {
    "ipl/config.lua",
    "ipl/server.lua"
}

escrow_ignore {
    'ipl/config.lua',
}


dependency '/assetpacks'