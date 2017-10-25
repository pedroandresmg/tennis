require 'sinatra'

get '/' do
	@jugando=false
	erb :puntuacion
end

post '/iniciar' do
	@jugando=true
	erb :puntuacion
end