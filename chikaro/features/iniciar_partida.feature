Feature: Iniciar partida
Como un jugador
Deseo iniciar una partida
Para adivinar la palabra secreta

Scenario: Ver mi nombre en pantalla de juego
Given ingrese a la aplicacion
When ingreso "John Doe"
And inicio partida
Then deberia ver "Bienvenido John Doe" en la pantalla de juego

Scenario: Ver puntaje inicial en pantalla de juego
Given ingrese a la aplicacion
When ingreso "John Doe"
And inicio partida
Then deberia ver mi puntaje en "Tu puntuacion actual es 5"

Scenario: Ver espacio para palabra secreta en pantalla de juego
Given inicio el juego
Then deberia ver "\*"

