-- Resource Metadata
fx_version 'cerulean'
games { 'gta5' }

ui_page 'index.html'

files {
  "index.html",
  "js/scripts.js",
  "js/jquery.js",
  "css/style.css"
}

export "taskBar"
export "closeGuiFail"

client_scripts {
    'client.lua'
}