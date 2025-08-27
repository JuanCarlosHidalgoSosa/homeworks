Algoritmo practica2 
    Definir opcion Como Entero
    
    Escribir "MENÚ DE EJERCICIOS DE LA PRACTICA 2 "
    Escribir "--------GRUPO NUMERO 4--------"
    Escribir "Ejercicio 1 numeros del 1 al 20 que sean múltiplos de 3."
    Escribir "Ejercicio 2 numeros que son primos que se encuentran entre 0 y 100"
    Escribir "Ejercicio 3 Tabla de multiplicar"
    Escribir "Ejercicio 4 Contador de tipos de números"
    Escribir "Ejercicio 5 Suma y promedio hasta cero"
    Escribir "Ejercicio 6 Números perfectos del 1 al 50"
    Escribir "Ejercicio 7 Conjetura de Collatz"
    Escribir "Ejercicio 8 Suma entre dos enteros"
    Escribir "Ejercicio 9 Sueldos de empleados"
    Escribir "Ejercicio 10 Suma de múltiplos de 3 con exclusión"
    Escribir "----------Escoja un ejercicio----------"
    Leer opcion
	
    Segun opcion Hacer
        1:
            Definir n1 Como Entero
            Escribir "----------Ejercicio 1----------"
            Para n1 <- 1 Hasta 20 Con Paso 1
                Si n1 MOD 3 = 0 Entonces
                    Escribir n1
                FinSi
            FinPara
        2:
            Definir numero2, divisor2, contador2 Como Entero
            Escribir "----------Ejercicio 2----------"
            Para numero2<-2 Hasta 100 Con Paso 1 Hacer
                contador2 <- 0
                Para divisor2<-1 Hasta numero2 Con Paso 1 Hacer
                    Si numero2 MOD divisor2=0 Entonces
                        contador2 <- contador2+1
                    FinSi
                FinPara
                Si contador2=2 Entonces
                    Escribir numero2
                FinSi
            FinPara
        3:
            Definir num3, tab3 Como Entero
            Escribir "----------Ejercicio 3----------"
            Escribir 'Digite un número entero positivo:'
            Leer num3
            Si num3>0 Entonces
                Para tab3<-1 Hasta 10 Con Paso 1 Hacer
                    Escribir num3, 'x', tab3, '=', num3*tab3
                FinPara
            SiNo
                Escribir 'Debe ingresar un número entero positivo.'
            FinSi
        4:
            Definir cant4, n4, positivos4, negativos4, pares4, impares4, var4 Como Entero
            positivos4 <- 0
            negativos4 <- 0
            pares4 <- 0
            impares4 <- 0
            Escribir "----------Ejercicio 4----------"
            Escribir 'Digite la cantidad de números que desea procesar:'
            Leer cant4
            Para var4<-1 Hasta cant4 Con Paso 1 Hacer
                Escribir 'Digite el número ', var4
                Leer n4
                Si n4>0 Entonces
                    positivos4 <- positivos4+1
                SiNo
                    Si n4<0 Entonces
                        negativos4 <- negativos4+1
                    FinSi
                FinSi
                Si n4 MOD 2=0 Entonces
                    pares4 <- pares4+1
                SiNo
                    impares4 <- impares4+1
                FinSi
            FinPara
            Escribir 'La cantidad de números positivos son: ', positivos4
            Escribir 'La cantidad de números negativos son: ', negativos4
            Escribir 'La cantidad de números pares son: ', pares4
            Escribir 'La cantidad de números impares son: ', impares4
        5:
            Definir num5, suma5, contador5 Como Real
            Definir promedio5 Como Real
            Escribir "----------Ejercicio 5----------"
            suma5 <- 0
            contador5 <- 0
            Escribir "CALCULADORA DE SUMA Y PROMEDIO"
            Escribir "Introduce números (0 para terminar):"
            Repetir
                Escribir "Ingresa un número: "
                Leer num5
                Si num5 <> 0 Entonces
                    suma5 <- suma5 + num5
                    contador5 <- contador5 + 1
                FinSi
            Hasta Que num5 = 0
            Escribir ""
            Escribir "RESULTADOS:"
            Escribir "==========="
            Si contador5 > 0 Entonces
                promedio5 <- suma5 / contador5
                Escribir "Cantidad de números ingresados: ", contador5
                Escribir "Suma total: ", suma5
                Escribir "Promedio: ", promedio5
            Sino
                Escribir "No se ingresaron números para calcular"
            FinSi
        6:
            Definir num6, divisor6, suma6 Como Entero
            Escribir "----------Ejercicio 6----------"
            Escribir "Números perfectos entre 1 y 50:"
            Para num6 <- 1 Hasta 50 Con Paso 1 Hacer
                suma6 <- 0 
                Para divisor6 <- 1 Hasta num6 - 1 Con Paso 1 Hacer
                    Si num6 MOD divisor6 = 0 Entonces
                        suma6 <- suma6 + divisor6
                    Fin Si
                Fin Para
                Si suma6 = num6 Entonces
                    Escribir num6, " es un número perfecto"
                Fin Si
            FinPara
        7:
            Definir n7 Como Entero
            Escribir "----------Ejercicio 7----------"
			Repetir
				Escribir 'Ingrese n'
				Leer n7
			Hasta Que n7 > 0
            
			Mientras n7<>1 Hacer
				Si n7 MOD 2=0 Entonces
					n7 <- n7/2
				SiNo
					n7 <- n7*3+1
				FinSi
				Escribir 'n: ', n7
			FinMientras
        8:
            Definir a8, b8, suma8, i8 Como Entero
            Escribir "----------Ejercicio 8----------"
            Repetir
                Escribir 'Ingrese el primer número (a): '
                Leer a8
                Escribir 'Ingrese el segundo número (b): '
                Leer b8
                Si a8>=b8 Entonces
                    Escribir 'Error: el primer número debe ser menor que el segundo.'
                FinSi
            Hasta Que a8<b8
            suma8 <- 0
            Para i8<-a8 Hasta b8 Con Paso 1 Hacer
                suma8 <- suma8+i8
            FinPara
            Escribir 'La suma de todos los números entre ', a8, ' y ', b8, ' es: ', suma8
        9:
            Definir numero_empleados9, cobros_entre_100_y_300_9, cobros_mas_de_300_9, i9 Como Entero
            Definir sueldo_empleado_actual9, importe_empresa9 Como Real
            Escribir "----------Ejercicio 9----------"
            Escribir "Ingrese el número de empleados"
            Leer numero_empleados9
            Mientras numero_empleados9<=0 Hacer
                Escribir "Ingrese un valor válido"
                Leer numero_empleados9
            Fin Mientras
            Para i9<-1 Hasta numero_empleados9 Con Paso 1 Hacer
                Escribir "Ingrese el sueldo del empleado ", i9
                Leer sueldo_empleado_actual9
                Mientras sueldo_empleado_actual9<100 o sueldo_empleado_actual9>500 Hacer
                    Escribir "Ingrese un sueldo valido: entre 100 y 500"
                    Leer sueldo_empleado_actual9
                Fin Mientras
                importe_empresa9 <- importe_empresa9 + sueldo_empleado_actual9
                Si sueldo_empleado_actual9>=100 y sueldo_empleado_actual9<=300 Entonces
                    cobros_entre_100_y_300_9 <- cobros_entre_100_y_300_9 + 1
                SiNo
                    cobros_mas_de_300_9 <- cobros_mas_de_300_9 + 1
                FinSi
            Fin Para
            Escribir cobros_entre_100_y_300_9, " empleados cobraron entre $100 y $300"
            Escribir cobros_mas_de_300_9, " empleados cobraron más de $300"
            Escribir "$",importe_empresa9, " es el importe total de la empresa"
        10:
            Definir numero_inicio10, numero_fin10, restriccion_inicio10, restriccion_fin10, acumulador_suma10, i10 Como Entero
            Escribir "----------Ejercicio 10----------"
            numero_inicio10 <- 9
            numero_fin10 <- 45
            restriccion_inicio10 <- 21
            restriccion_fin10 <- 27
            acumulador_suma10 <- 0
            Para  i10<-numero_inicio10 Hasta numero_fin10 Con Paso 1 Hacer
                Si i10 mod 3=0 Entonces
                    Si i10 < restriccion_inicio10 O i10 > restriccion_fin10 Entonces
                        acumulador_suma10 <- acumulador_suma10 + i10
                    FinSi
                FinSi
            FinPara
            Escribir "La suma de los números es ", acumulador_suma10
        De Otro Modo:
            Escribir "Opción no válida"
    FinSegun
    
    Escribir "Presione una tecla para finalizar"
    Esperar Tecla
FinAlgoritmo
