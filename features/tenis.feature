Feature: Como jugador de Tenis
		 Quiero ver el marcador del juego
		 Para estar al tanto del desarrollo del juego

Scenario: 
		Given visito la pagina de inicio
		Then  deberia presentarse con "Puntuacion Juego de Tenis"

Scenario:
		Given visito la pagina de inicio
		When  presiono el boton "iniciar"
		Then  deberia ver el mensaje "0 Iguales"
