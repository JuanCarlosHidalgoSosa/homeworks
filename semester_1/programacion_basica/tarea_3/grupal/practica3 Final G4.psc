Algoritmo practica3 
    Definir opcion Como Entero
    
    Escribir "MENÚ DE EJERCICIOS DE LA PRACTICA 3 "
	Escribir "---Resolución de algoritmos utilizando tipos cadenas---"
    Escribir "--------GRUPO NUMERO 4--------"
    Escribir "Ejercicio 1 Separar nombre con guiones"
    Escribir "Ejercicio 2 Contador de vocales"
    Escribir "Ejercicio 3 Verificador de palíndromos"
    Escribir "Ejercicio 4 Contador de palabras específicas"
    Escribir "Ejercicio 5 Eliminador de caracteres"
    Escribir "Ejercicio 6 Triángulo creciente con nombre"
    Escribir "Ejercicio 7 Multiplicador de cadenas"
    Escribir "----------Escoja un ejercicio----------"
    Leer opcion
	
    Segun opcion Hacer
        1: 
            Definir nombreE1, resultadoE1 Como Cadena
			Definir indiceE1 Como Entero
            Escribir "----------Ejercicio 1----------"
			Escribir "Ingresa un nombre:"
			Leer nombreE1
			resultadoE1 <- ""
			Para indiceE1<-1 Hasta Longitud(nombreE1) Hacer
				resultadoE1 <- resultadoE1 + Subcadena(nombreE1,indiceE1,indiceE1)
				Si indiceE1 < Longitud(nombreE1) Entonces
					resultadoE1 <- resultadoE1 + "-"
				FinSi
			FinPara
			Escribir "Tu nombre con guiones es: ", resultadoE1
			
        2: 
            Definir fraseE2, letraE2 Como Cadena
			Definir indiceE2, contadorE2 Como Entero
            Escribir "----------Ejercicio 2----------"
			Escribir "Ingresa una frase:"
			Leer fraseE2
			contadorE2 <- 0
			Para indiceE2<-1 Hasta Longitud(fraseE2) Hacer
				letraE2 <- Subcadena(fraseE2,indiceE2,indiceE2)
				Si letraE2="a" O letraE2="e" O letraE2="i" O letraE2="o" O letraE2="u" O letraE2="A" O letraE2="E" O letraE2="I" O letraE2="O" O letraE2="U" Entonces
					contadorE2 <- contadorE2+1
				FinSi
			FinPara
			Escribir "La frase tiene ", contadorE2, " vocales."
			
        3: 
			Definir fraseOriginalE3, fraseProcesadaE3, fraseInvertidaE3 Como Cadena
			Definir posicionE3 Como Entero
            Escribir "----------Ejercicio 3----------"
			Escribir "Ingrese una frase: "
			Leer fraseOriginalE3
			
			fraseProcesadaE3 <- ""
			Para posicionE3 <- 1 Hasta Longitud(fraseOriginalE3) Hacer
				Si Subcadena(fraseOriginalE3,posicionE3,posicionE3) <> " " Entonces
					fraseProcesadaE3 <- fraseProcesadaE3 + Mayusculas(Subcadena(fraseOriginalE3,posicionE3,posicionE3))
				FinSi
			FinPara
			
			fraseInvertidaE3 <- ""
			Para posicionE3 <- Longitud(fraseProcesadaE3) Hasta 1 Con Paso -1 Hacer
				fraseInvertidaE3 <- fraseInvertidaE3 + Subcadena(fraseProcesadaE3,posicionE3,posicionE3)
			FinPara
			
			Si fraseProcesadaE3 = fraseInvertidaE3 Entonces
				Escribir "La frase es palíndroma."
			Sino
				Escribir "La frase NO es palíndroma."
			FinSi
			
        4: 
			Definir lineaE4, palabraE4 Como Cadena
			Definir contAE4, contAnE4, contAndE4, iE4 Como Entero
			contAE4 <- 0
			contAnE4 <- 0
			contAndE4 <- 0
            Escribir "----------Ejercicio 4----------"
			Escribir "Ingrese una línea de texto (enter vacío para terminar): "
			Leer lineaE4
			
			Mientras lineaE4 <> "" Hacer
				lineaE4 <- Minusculas(lineaE4)
				palabraE4 <- ""
				Para iE4 <- 1 Hasta Longitud(lineaE4) Hacer
					Si Subcadena(lineaE4,iE4,iE4) <> " " Entonces
						palabraE4 <- palabraE4 + Subcadena(lineaE4,iE4,iE4)
					Sino
						Si palabraE4 = "a" Entonces
							contAE4 <- contAE4 + 1
						FinSi
						Si palabraE4 = "an" Entonces
							contAnE4 <- contAnE4 + 1
						FinSi
						Si palabraE4 = "and" Entonces
							contAndE4 <- contAndE4 + 1
						FinSi
						palabraE4 <- ""
					FinSi
				FinPara
				
				Si palabraE4 = "a" Entonces
					contAE4 <- contAE4 + 1
				FinSi
				Si palabraE4 = "an" Entonces
					contAnE4 <- contAnE4 + 1
				FinSi
				Si palabraE4 = "and" Entonces
					contAndE4 <- contAndE4 + 1
				FinSi
				
				Escribir "Ingrese otra línea de texto (enter vacío para terminar): "
				Leer lineaE4
			FinMientras
			
			Escribir "La palabra (a) apareció: ", contAE4, " veces"
			Escribir "La palabra (an) apareció: ", contAnE4, " veces"
			Escribir "La palabra (and) apareció: ", contAndE4, " veces"
			
        5: 
			Definir cadenaE5, listaE5, resultadoE5, caracterE5 Como Cadena
			Definir iE5, jE5, eliminarE5 Como Entero
            Escribir "----------Ejercicio 5----------"
			cadenaE5 <- "EL EZNZZXTX"
			listaE5 <- "XZ"
			resultadoE5 <- ""
			Para iE5<-1 Hasta Longitud(cadenaE5) Con Paso 1 Hacer
				caracterE5 <- Subcadena(cadenaE5,iE5,iE5)
				eliminarE5 <- 0
				Para jE5<-1 Hasta Longitud(listaE5) Con Paso 1 Hacer
					Si caracterE5 = Subcadena(listaE5,jE5,jE5) Entonces
						eliminarE5 <- 1
					FinSi
				FinPara
				Si eliminarE5=0 Entonces
					resultadoE5 <- resultadoE5 + caracterE5
				FinSi
			FinPara
			Escribir "La cadena pedida es: ", resultadoE5
			
        6: 
			Definir nombreE6 Como Cadena
			Definir iE6 Como Entero
            Escribir "----------Ejercicio 6----------"
			Escribir "Ingrese un nombre: "
			Leer nombreE6
			Para iE6<-1 Hasta Longitud(nombreE6) Con Paso 1 Hacer
				Escribir Subcadena(nombreE6,1,iE6)
			FinPara
			
        7: 
            Definir cadenaE7, cadenaTotalE7 Como Cadena
			Definir nE7, iE7 Como Entero
            Escribir "----------Ejercicio 7----------"
			Escribir "Ingrese una cadena: "
			Leer cadenaE7
			Repetir
				Escribir "Ingrese un factor de multiplicación:"
				Leer nE7
			Hasta Que nE7 > 0
			
			cadenaTotalE7 <- ""
			Para iE7<-1 Hasta nE7 Con Paso 1 Hacer
				cadenaTotalE7 <- Concatenar(cadenaTotalE7,cadenaE7)
			FinPara
			
			Escribir "La cadena final es: "
			Escribir cadenaTotalE7
    FinSegun
    
    Escribir "Presione una tecla para finalizar"
    Esperar Tecla
FinAlgoritmo
