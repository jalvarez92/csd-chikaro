class Juego
	def initialize(palabra)
    	@palabra = palabra
 	end

	def enviar_letra(letra)  
        @palabra.include?(letra) 
    end

	def get_puntaje() 
        5 
    end

end

