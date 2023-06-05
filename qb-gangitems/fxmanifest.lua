fx_version 'cerulean'
game 'gta5'

description 'qb-gangitems - Useable items for chains, flags, kuttes'
author 'Carbon#1000'
version '1.0.0'

client_script 'client.lua'
server_script 'server.lua'
shared_script 'config.lua'

escrow_ignore {
  'client.lua',
  'server.lua',
  'config.lua',
}

lua54 'yes'

dependency '/assetpacks'