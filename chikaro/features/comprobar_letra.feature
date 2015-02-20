Feature: Comprobar si adivino la letra
Como un jugador
Deseo ver el resultado de mi letra
Para comprobar si forma parte de la palabra secreta

Scenario: La letra forma parte de la palabra secreta
Given inicio el juego
When envia letra "a" 
Then deberia ver "\*a\*a" en la pantalla de juego

#Scenario: La letra forma parte de la palabra secreta cuando ya se acerto una previamente
#Given inicio el juego
#When envia letra "a" 
#And envia letra "c"
#Then deberia ver "ca\*a" en la pantalla de juego

#Scenario: La letra no forma parte de la palabra secreta
#Given ingrese a la aplicacion
#When ingreso "John Doe"
#And inicio partida
#Then deberia ver "Bienvenido John Doe" en la pantalla de juego
