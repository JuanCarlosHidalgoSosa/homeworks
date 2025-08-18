Algoritmo numero_de_dias
	Definir numero_años, numero_meses, numero_semanas, numero_dias Como Entero
	Definir sobrante, auxiliar Como Entero
	Definir entrada Como Entero
	Escribir "Ingrese el numero de dias"
	Leer entrada
	
	sobrante <- entrada mod 365
	auxiliar <- sobrante
	entrada <- entrada - sobrante
	numero_años <- entrada / 365
	entrada <- auxiliar
	
	sobrante <- entrada mod 30
	auxiliar <- sobrante
	entrada <- entrada - sobrante
	numero_meses <- entrada / 30
	entrada <- auxiliar
	
	sobrante <- entrada mod 7
	auxiliar <- sobrante
	entrada <- entrada - sobrante
	numero_semanas <- entrada / 7
	entrada <- auxiliar
	
	numero_dias <- entrada
	Escribir numero_años, " años"
	Escribir numero_meses, " meses"
	Escribir numero_semanas, " semanas"
	Escribir numero_dias, " dias"
FinAlgoritmo
