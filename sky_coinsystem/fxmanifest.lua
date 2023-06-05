fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Eichenholz / Sky-Systems'
description 'Donationsystem'

client_scripts {
  'client/main.lua',
  'config/custom/client.lua',
}
server_scripts {
  'server/main.lua',
  'config/garage.lua',
  'config/custom/server.lua',
  '@mysql-async/lib/MySQL.lua'
}

escrow_ignore {
  'config/garage.lua',
  'config/custom/server.lua',
  'config/custom/client.lua',
}

ui_page 'html/index.html'

files {
  'html/index.html',
  'html/sounds/*',
  'html/img/**',
  'html/css/*',
  'html/js/*'
}

server_exports {
  'GetCoins', 
  'GiveCoins',
  'RemoveCoins'
}
dependency '/assetpacks'