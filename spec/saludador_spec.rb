require('C:\Users\Jp\Desktop\informatica\cato\Inge Soft\cucumber_sinatra_template\lib\saludador')
describe Saludador do
	it"Deberia devolver Hola Mauricio" do
		@saludador=Saludador.new()
		expect(@saludador.saludar("Mauricio",20)).to eq('Hola Mauricio')
	end
	
	it"Deberia devolver Hola Sr. Mauricio" do
		@saludador=Saludador.new()
		expect(@saludador.saludar("Mauricio",22)).to eq('Hola Sr. Mauricio')
	end
end