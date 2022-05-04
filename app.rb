require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret message"
end

get '/random-cat' do
  @name = ['Amigo', 'Misty', 'Almond'].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:named_cat)
end

get '/form' do
  erb(:form)
end