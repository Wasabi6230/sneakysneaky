name "ik-fishing"
author "Proportions#8460"
version "1.1.0"
description "Fishing script by Proportions#8460"
fx_version "cerulean"
game "gta5"

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
}
client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/client.lua',
    'client/fishing.lua',
    'client/market.lua',
}
server_scripts {'server/server.lua'}
lua54 'yes'

escrow_ignore {
    'locales/*.lua',
    'config.lua',
    'install.md',
    'images/*.png'
  }
dependency '/assetpacks'