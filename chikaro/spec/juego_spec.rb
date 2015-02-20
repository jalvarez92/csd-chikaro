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

 	it " Cuando inicio juego puntaje inicial = 5" do
		# Arrange  
		modelo = Juego.new("casa")
		#Act -> actuo o ejecuto
		respuesta = modelo.get_puntaje()
		#Assert (compruebo el comportamiento esperado)
		respuesta.should==5 
	end

	it "Cuando inicio juego y palabra es casa entonces espacio deberia ser ****" do
		modelo = Juego.new("casa")
		respuesta = modelo.get_espacios()
		respuesta.should=="****"
	end

	it "Cuando inicio juego y palabra es casas entonces espacio deberia ser *****" do
		modelo = Juego.new("casas")
		respuesta = modelo.get_espacios()
		respuesta.should=="*****"
	end	

end
