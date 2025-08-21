Proceso Ejercicio_10
	Definir numero_inicio, numero_fin, restriccion_inicio, restriccion_fin, acumulador_suma Como Entero
	numero_inicio <- 9
	numero_fin <- 45
	restriccion_inicio <- 21
	restriccion_fin <- 27
	
	Para  i<-numero_inicio Hasta numero_fin Con Paso 1 Hacer
		Si i mod 3=0
			Si i < restriccion_inicio O i > restriccion_fin
				acumulador_suma <- acumulador_suma + i
			FinSi
		FinSi
	FinPara
	
	Escribir "La suma de los números es ", acumulador_suma
FinProceso
