require 'sinatra'
require('C:\Users\Jp\Desktop\informatica\cato\Inge Soft\cucumber_sinatra_template\lib\saludador')
get '/' do
	erb :bienvenida
end	

post '/saludar' do
	@saludador=Saludador.new()
	nombre=params[:nombre]
	edad=params[:edad]
	@saludador.saludar(nombre,edad.to_i())
end	