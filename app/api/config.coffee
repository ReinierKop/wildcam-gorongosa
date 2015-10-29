DEFAULT_ENV = 'staging'

API_HOSTS =
  production: 'https://panoptes.zooniverse.org'
  staging: 'http://192.168.99.100:3000'

API_APPLICATION_IDS =
  production: 'f79cf5ea821bb161d8cbb52d061ab9a2321d7cb169007003af66b43f7b79ce2a'
  staging: 'aa59f72734cda998f263d033a8e11692eb035f218d3f4ed4a9e02a61a3f0e4ce'

hostFromBrowser = location?.search.match(/\W?panoptes-api-host=([^&]+)/)?[1]
appFromBrowser = location?.search.match(/\W?panoptes-api-application=([^&]+)/)?[1]

hostFromShell = process.env.PANOPTES_API_HOST
appFromShell = process.env.PANOPTES_API_APPLICATION

envFromBrowser = location?.search.match(/\W?env=(\w+)/)?[1]
envFromShell = process.env.NODE_ENV

env = envFromBrowser ? envFromShell ? DEFAULT_ENV
env = 'staging'

module.exports =
  host: API_HOSTS[env]
  clientAppID: API_APPLICATION_IDS[env]
