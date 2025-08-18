Algoritmo raiz_cuadratica
	Definir primera_raiz, segunda_raiz Como Real
	Definir  a,b,c Como Real
	Escribir "Ingrese a"
	Leer a
	Escribir  "Ingrese b"
	Leer b
	Escribir "Ingrese c"
	Leer c
	
	primera_raiz <- (-b+rc((b^2)-4*a*c))/2*a
	segunda_raiz <- (-b-rc((b^2)-4*a*c))/2*a
	
	Si primera_raiz = segunda_raiz Entonces
		Escribir "x = ", primera_raiz
	SiNo
		Escribir "x1 = ", primera_raiz
		Escribir "x2 = ", segunda_raiz
	Fin Si
FinAlgoritmo
