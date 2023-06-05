fx_version "cerulean"

games { "gta5" }

name "woosh_drift"
description "A QB-Core drift script that allows any vehicle to be able to drift. Comes with UI to toggle drift mode, adjust settings and save presets."

version "1.0.0"

ui_page "build/client/ui/index.html"

lua54 'yes'

escrow_ignore {
    '_configs/cfg_shared.lua',
    '_inventory_imgs/ww_drift_kit.png',
    '_inventory_imgs/ww_drift_kit_removal.png',
    '_inventory_imgs/ww_drift_tablet.png',
    'README.txt',
}

files {
    "build/client/ui/index.html",
    "build/client/ui/ui.js",
    "build/client/ui/*.png",
    "build/client/ui/*.gif",
    "build/client/ui/*.jpg",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "build/server/sv_*.js",
}

client_scripts {
    "build/client/cl_*.js",
}

shared_scripts {
    "_configs/cfg_shared.lua",
}

dependency '/assetpacks'