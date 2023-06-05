fx_version 'cerulean'
game 'gta5'

author "Cadburry#7547"
description "CarryPeople and Put InTrunk"
version "1.0.3"

shared_script 'shared.lua'

server_script 'sv_carry.lua'
client_script 'cl_carry.lua'
server_script 'version.lua'

lua54 'yes'

escrow_ignore {
    'shared.lua',
    'cl_carry.lua',
    'sv_carry.lua',
}
dependency '/assetpacks'