fx_version 'cerulean'
game 'gta5'

name "SickWardrobe"
description "Wardobe for jobs"
author "SickJuggalo666"
version "1.0.2"
lua54 'yes'

shared_scripts {
	'@ox_lib/init.lua',
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

escrow_ignore {
	'shared/*.lua',
	'client/*.lua',
	'server/*.lua'
}
