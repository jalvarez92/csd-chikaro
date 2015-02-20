class Juego
	def initialize(palabra)
    	@palabra = palabra
		@espacios = "*"*palabra.length
 	end

	def enviar_letra(letra)
		resultado = @palabra.include?(letra)		
		if (resultado)
			@espacios = ""
			@palabra.each_char do  |c| 
				if c == letra 
					@espacios+= letra 
				else 
					@espacios+= "*" 
				end 							
			end				
		end
		resultado
    end

	def get_puntaje() 
        5 
    end

	def get_espacios()
		@espacios
	end

end

