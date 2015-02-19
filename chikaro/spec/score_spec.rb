require "./lib/score"

# Pruebas unitarias
describe Score do

 # Caso de prueba - Ejemplo -> diseno de la app (emergente)
 it "retornar el titulo" do
    # Arrange  
    modelo = Score.new
    #Act -> actuo o ejecuto
    titulo = modelo.get_titulo
    #Assert (compruebo el comportamiento esperado)
    titulo.should == "Tennis Score"   

	end
	

end
