class Juego
	def initialize(palabra)
    	@palabra = palabra
		@espacios = "*"*palabra.length
 	end

	def enviar_letra(letra)  
        @palabra.include?(letra) 
    end

	def get_puntaje() 
        5 
    end

	def get_espacios()
		@espacios
	end

end

