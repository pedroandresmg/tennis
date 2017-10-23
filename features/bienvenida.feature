Feature: Como jugador
		 Quiero ser bienvenido al juego
		 Para empezar con buen animo

Scenario: 
		Given visito la pagina de inicio
		Then  deberia saludar con "Bienvenido"	
Scenario:
		Given visito la pagina de inicio
		When  escribo el nombre "Pedro" en el campo "nombre"
		And   presiono el boton "Saludar"
		Then  deberia el mensaje "Hola Pedro"

Scenario:
		Given visito la pagina de inicio
		When  escribo el nombre "JP" en el campo "nombre"
		And   escribo la edad "14" en el campo "edad"
		And   presiono el boton "Saludar"
		Then  deberia el mensaje "Hola JP"

Scenario:
		Given visito la pagina de inicio
		When  escribo el nombre "Joe" en el campo "nombre"
		And   escribo la edad "23" en el campo "edad"
		And   presiono el boton "Saludar"
		Then  deberia el mensaje "Hola Sr. Joe"
