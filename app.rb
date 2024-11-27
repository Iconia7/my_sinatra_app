require 'sinatra'

set :port, 4568
set :public_folder, 'public'


get '/' do
  erb :index
end


get '/about' do
  erb :about
end


get '/contact' do
  erb :contact
end


