Algoritmo ejercicio_2
	Definir n, ingresado, intentos Como Entero
	n <- Aleatorio(1,100)
	Repetir
		Escribir 'Intentos restantes: ', 10-intentos
		Escribir 'Ingrese el número para tratar de adivinar n'
		Leer ingresado
		Si ingresado<1 O ingresado>100 Entonces
			Escribir 'Número no válido'
		FinSi
		Si ingresado<n Entonces
			Escribir 'Tu número es menor que n.'
		FinSi
		Si ingresado>n Entonces
			Escribir 'Tu número es mayor que n.'
		FinSi
		intentos <- intentos+1
		Escribir ''
	Hasta Que ingresado=n O intentos=10
	Si ingresado=n Entonces
		Escribir '!Adivinaste N con ', intentos, ' intentos!'
	SiNo
		Escribir 'No adivinaste N, su valor era ', n
	FinSi
FinAlgoritmo
