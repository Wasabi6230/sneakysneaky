fx_version 'cerulean'
game 'gta5'

description 'QB-Weapons'
version '1.0.0'

shared_scripts {
	'@qb-core/shared/locale.lua',
	'locales/en.lua',
	'config.lua',
}

server_script 'server/main.lua'
client_script 'client/main.lua'

files {
  'metas/weaponcomponents/*.meta', 
  'metas/weapons/*.meta',
}

--  Weapon component meta files.
data_file 'WEAPONCOMPONENTSINFO_FILE' 'metas/weaponcomponents/*.meta'
-- Player weapon meta files.
data_file 'WEAPONINFO_FILE_PATCH' 'metas/weapons/*.meta'

lua54 'yes'
