Algoritmo platillos_restaurante
	Definir personas, costo_platillo, total Como Entero
	Escribir "Ingrese el numero de personas"
	Leer personas
	costo_platillo <- 95
	Si personas > 200 Y personas <= 300 Entonces
		costo_platillo <- 85
	Fin Si
	
	Si personas > 300 Entonces
		costo_platillo <- 75
	Fin Si
	
	total <- personas * costo_platillo
	
	Escribir "Total: ", total 
FinAlgoritmo
