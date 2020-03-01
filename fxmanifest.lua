fx_version 'adamant'

game 'gta5'

description 'ESX Society'

version '1.0.4'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/sc.lua',
	'locales/tc.lua',
	'config.lua',
	'@es_extended/i18n.lua',
	'client/main.lua'
}

dependencies {
	'es_extended',
	'cron',
	'esx_addonaccount'
}
