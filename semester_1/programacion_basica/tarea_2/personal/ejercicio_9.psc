Proceso Ejercicio_9
	Definir  numero_empleados, cobros_entre_100_y_300, cobros_mas_de_300 Como Entero
	Definir sueldo_empleado_actual, importe_empresa Como Real
	
	Escribir "Ingrese el número de empleados"
	Leer numero_empleados
	
	Mientras numero_empleados<=0 Hacer
		Escribir "Ingrese un valor válido"
		Leer numero_empleados
	Fin Mientras
	
	Para i<-1 Hasta numero_empleados Con Paso 1 Hacer
		Escribir "Ingrese el sueldo del empleado ", i
		Leer sueldo_empleado_actual
		Mientras sueldo_empleado_actual<100 o sueldo_empleado_actual>500 Hacer
			Escribir "Ingrese un sueldo valido: entre 100 y 500"
			Leer sueldo_empleado_actual
		Fin Mientras
		
		importe_empresa <- importe_empresa + sueldo_empleado_actual
		
		Si sueldo_empleado_actual>=100 y sueldo_empleado_actual<=300
			cobros_entre_100_y_300 <- cobros_entre_100_y_300 + 1
		SiNo
			cobros_mas_de_300 <- cobros_mas_de_300 + 1
		FinSi
	Fin Para
	
	Escribir cobros_entre_100_y_300, " empleados cobraron entre $100 y $300"
	Escribir cobros_mas_de_300, " empleados cobraron más de $300"
	Escribir "$",importe_empresa, " es el importe total de la empresa"
FinProceso
