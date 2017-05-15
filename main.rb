require 'sinatra'

set :environment, :production
set :port, 80

get '/' do
  erb :index
end