require 'sinatra/base'
require 'sinatra/reloader'

class Birthday < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/info' do
    p params
    @name = params[:name]
    erb(:test)
  end



end