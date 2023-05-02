# pull code from app.rb and use the functions and methods here
require './app'
require 'puma'

Rack::Handler::Puma.run app, Port: 3000

run HiSinatra
