require 'sinatra/base'
require('./controllers/application')
require('./controllers/item')
require('./models/item')
require('./models/account')

# map('/') { run ApplicationController }
map('/') { run ItemController }#do I need this?
