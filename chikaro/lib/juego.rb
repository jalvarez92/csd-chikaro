class Juego
	def initialize(palabra)
    	@palabra = palabra
		@espacios = "*"*palabra.length
		@letras = ""
 	end

	def enviar_letra(letra)
		resultado = @palabra.include?(letra)		
		if (resultado)
			@espacios = ""
			@palabra.each_char do  |c| 
				if c == letra 
					@letras+= letra
					#@espacios+= letra
				#else 
					#@espacios+= "*" 
				end 							
			end	
			@espacios = ""
			@palabra.each_char do |d|
				if @letras.include?(d)
					@espacios+= d
				else
					@espacios+= "*" 
				end			
			end
		end
		if @espacios.include?("*")
			resultado
		else
			@espacios = "Adivinaste la palabra secreta"
		end
    end

	def get_puntaje() 
        5 
    end

	def get_espacios()
		@espacios
	end

end

