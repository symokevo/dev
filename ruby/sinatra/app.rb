# pull sinatra
require 'sinatra'

class HiSinatra < Sinatra::Base
  get '/' do
    "Hey, Sinatra!"
  end

  get '/:age' do
    "Hey, I'm #{params[:age]} years old!"
  end

  # add age to this urls as 'localhost:9292/25
end



