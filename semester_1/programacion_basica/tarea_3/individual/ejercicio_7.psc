Algoritmo ejercicio_7
	Definir S, S_total Como Caracter
	Definir N Como Entero
	Escribir "Ingrese un cadena: "
	Leer S
	Repetir
		Escribir "Ingrese un factor de multiplicación:"
		Leer N
	Hasta Que N > 0
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		S_total <- Concatenar(S_total,S)
	FinPara
	
	Escribir "La cadena final es: "
	Escribir S_total
	
FinAlgoritmo
