require './lib/juego'

# Pruebas unitarias
describe Juego do

 	it " Ingreso letra que pertence a la palabra secreta" do
		# Arrange  
		modelo = Juego.new("casa")
		#Act -> actuo o ejecuto
		respuesta = modelo.enviar_letra("a")
		#Assert (compruebo el comportamiento esperado)
		respuesta.should==true
	end

 	it " Ingreso letra que no pertence a la palabra secreta" do
		# Arrange  
		modelo = Juego.new("casa")
		#Act -> actuo o ejecuto
		respuesta = modelo.enviar_letra("b")
		#Assert (compruebo el comportamiento esperado)
		respuesta.should==false 
	end

end
