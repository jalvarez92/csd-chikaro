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

	it "Cuando se ingresa una letra que pertenece a la palabra secreta deberia ser *a*a" do
		modelo = Juego.new("casa")
		modelo.enviar_letra("a")
		respuesta = modelo.get_espacios()
		respuesta.should == "*a*a"
	end

	it "Cuando se ingresa una letra que no pertenece a la palabra secreta deberia ser ****" do
		modelo = Juego.new("casa")
		modelo.enviar_letra("d")
		respuesta = modelo.get_espacios()
		respuesta.should == "****"
	end

	it "Cuando se aciertan todas las letras de la palabra secreta deberia ver el mensaje Adivinaste la palabra secreta" do
		modelo = Juego.new("casa")
		modelo.enviar_letra("a")
		modelo.enviar_letra("c")
		modelo.enviar_letra("s")
		respuesta = modelo.get_espacios()
		respuesta.should == "Adivinaste la palabra secreta"
	end

end
