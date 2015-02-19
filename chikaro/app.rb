require 'sinatra'
require './lib/juego'

get '/' do
	@@juego = Juego.new("casa")
	@@msj=""
	erb :home
end


get '/envia_letra' do
	letra = params['letra']
	if letra.length > 1
		@@msj="Debe ingresar solo una letra"	
	elsif letra.length == 1 
           if @@juego.enviar_letra(letra) 
 			  @@msj = "Acertaste"
		   else
			  @@msj= "Fallaste"
		   end
    else
        @@msj="Debe capturar una letra"
	end
	erb :home
end
