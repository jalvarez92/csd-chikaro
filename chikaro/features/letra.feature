#Feature: Ingresar letra

#Como un Jugador
#Deseo ingreso una letra
#Para ver si esta en la palabra

#Criterio de aceptacion
#Scenario: No capturo letra
#Given Comenzo el juego
#When envia letra "" 
#Then debe aparecer "Debe capturar una letra"

#Criterio de aceptacion
#Scenario: Escribio mas de una letra
#Given Comenzo el juego
#When envia letra "AA" 
#Then debe aparecer "Debe ingresar solo una letra"

#Scenario: Escribio un letra de la palabra secreta
#Given Comenzo el juego
#When envia letra "a" 
#Then debe aparecer "Acertaste"

