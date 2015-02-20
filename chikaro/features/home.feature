Feature: Titulo

Como un Arbitro
Deseo ver el titulo de la aplicacion
Para que las personas lo recuerden

#Criterio de aceptacion
Scenario: Titulo Inicial
Given ingreso a la aplicacion
#When 
Then debe aparecer "Chikaro"


# Feature: Iniciar partida
# Como un jugador
# Deseo iniciar una partida
# Para adivinar la palabra secreta

# Scenario: Inicie partida

# Given ingrese a la aplicacion
# When ingreso mi "John Doe"
# And inicio partida
# Then deberia ver mi "John Doe"

# Scenario: Inicie partida

# Given ingrese a la aplicacion
# When ingreso mi "John Doe"
# And inicio partida
# Then deberia ver mi puntaje en "0"


# Feature: Escribir letra
# Como un jugador
# Deseo escribir una letra
# Para intentar completar la palabra secreta

# Scenario: Letra acertada

# Given inicie el juego
# When ingreso "a"
# Then deberia ver "Acertaste"

# Given inicie el juego
# When ingreso "z"
# Then deberia ver "Fallaste"

# Given inicie el juego
# When ingreso "a"
# Then deberia ver "Acertaste"

# Scenario: No capturo letra
# Given Comenzo el juego
# When envia letra "" 
# Then debe aparecer "Debe capturar una letra"

# Scenario: Escribio mas de una letra
# Given Comenzo el juego
# When envia letra "AA" 
# Then debe aparecer "Debe ingresar solo una letra"

# Feature: Ver resultado del juego
# Como un jugador
# Deseo ver el resultado del juego
# Para ver si adivine la palabra secreta

# Scenario: Acerte palabra
# Given termine juego
# And acerte palabra
# Then deberia ver "Ganas una moneda"
# And puntaje debe ser "1"

# Scenario: Falle palabra
# Given termine juego
# And falle palabra
# Then deberia ver "Lo siento. No has acumulado moneda"

