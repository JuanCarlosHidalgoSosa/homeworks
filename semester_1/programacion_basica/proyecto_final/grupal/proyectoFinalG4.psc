Algoritmo proyectoFinalG4
    Definir opcionMenu Como Entero
        Escribir "======================================="
        Escribir "  MENÚ PRINCIPAL DEL PROYECTO FINAL "
        Escribir "======================================="
		Escribir "========================================================================="
		Escribir "                         PROYECTO FINAL                      "
		Escribir "                Implementación de algoritmos                 "
		Escribir "    utilizando las estructuras y herramientas conocidas        "
		Escribir "========================================================================="
		Escribir "--------GRUPO NUMERO 4--------"
		Escribir "1. Juego de Craps"
        Escribir "2. Juego de Adivinar Números"
        Escribir "3. Supermercado Bettu"
        Escribir "4. Salir"
		Escribir "----------Escoja un ejercicio----------"
        Leer opcionMenu
        
        Segun opcionMenu Hacer
            1:
                Definir D1_craps, D2_craps, suma_craps, punto_craps, contador_craps Como Entero
                Definir PL_craps Como Logico
                Definir seguir_craps Como Caracter
				
                Escribir "==============================="
                Escribir "       JUEGO DE CRAPS"
                Escribir "==============================="
                Escribir "REGLAS:"
                Escribir "- Si sacas 7 u 11 en el primer tiro: Ganas"
                Escribir "- Si sacas 2, 3 o 12 en el primer tiro: Pierdes"
                Escribir "- Si sacas 4, 5, 6, 8, 9 o 10: es tu PUNTO"
                Escribir "***Luego debes sacar ese mismo punto para ganar***"
                Escribir "***Pero si sacas 7 antes: Pierdes***"
                
                PL_craps <- Verdadero
                punto_craps <- 0
                contador_craps <- 0
                
                Escribir "Presiona una tecla para lanzar los dados..."
                Leer seguir_craps
                
                Repetir
                    D1_craps <- Aleatorio(1,6)
                    D2_craps <- Aleatorio(1,6)
                    suma_craps <- D1_craps + D2_craps
                    contador_craps <- contador_craps + 1
                    
                    Escribir "Lanzaste: ", D1_craps, " + ", D2_craps, " = ", suma_craps
                    MostrarDado(D1_craps)
                    MostrarDado(D2_craps)
                    
                    Si PL_craps Entonces
                        PL_craps <- Falso
                        Segun suma_craps Hacer
                            Caso 7, 11:
                                Escribir "*****¡GANASTE en el primer lanzamiento!*****"
                                punto_craps <- -1
                            Caso 2, 3, 12:
                                Escribir "========CRAPS - ¡PERDISTE!========"
                                punto_craps <- -1
                            De Otro Modo:
                                punto_craps <- suma_craps
                                Escribir "Tu punto es: ", punto_craps
                                Escribir "Debes sacar ", punto_craps, " para ganar."
                                Escribir "Pero si sacas 7 antes, pierdes."
                        FinSegun
                    SiNo
                        Si suma_craps = punto_craps Entonces
                            Escribir "¡Has vuelto a sacar tu número! ¡GANASTE!"
                            punto_craps <- -1
                        SiNo
                            Si suma_craps = 7 Entonces
                                Escribir "Sacaste un 7 antes de repetir tu número. ¡PERDISTE!"
                                punto_craps <- -1
                            SiNo
                                Escribir "No has sacado tu número ni el 7. Sigue intentando."
                            FinSi
                        FinSi
                    FinSi
                    
                    Si punto_craps <> -1 Entonces
                        Escribir "Presiona una tecla para lanzar de nuevo..."
                        Leer seguir_craps
                    FinSi
                Hasta Que punto_craps = -1
                
                Escribir "====== FIN DEL JUEGO ======"
                Escribir "Cantidad de lanzamientos: ", contador_craps
                Escribir "Última suma obtenida: ", suma_craps

            2:
                Definir n_adiv, ingresado_adiv, intentos_adiv Como Entero
                
                n_adiv <- Aleatorio(1,100)
                intentos_adiv <- 0
                
                Escribir "====================================================="
                Escribir "       ¡Bienvenido al juego de adivinar números!     "
                Escribir "====================================================="
                Escribir "=======Tienes 10 intentos para adivinar el número secreto======="
                Escribir "=======El número está entre 1 y 100.======="
                
                Repetir
                    Escribir "Intento #", intentos_adiv + 1, " de 10"
                    Escribir "Ingresa un número entre 1 y 100: "
                    Leer ingresado_adiv
                    
                    Si ingresado_adiv < 1 O ingresado_adiv > 100 Entonces
                        Escribir "El número ingresado no está en el rango permitido (1-100)."
                    Sino
                        Si ingresado_adiv < n_adiv Entonces
                            Escribir "Tu número es MENOR al número secreto."
                        FinSi
                        Si ingresado_adiv > n_adiv Entonces
                            Escribir "Tu número es MAYOR al número secreto."
                        FinSi
                    FinSi
                    
                    intentos_adiv <- intentos_adiv + 1
                Hasta Que ingresado_adiv = n_adiv O intentos_adiv = 10
                
                Si ingresado_adiv = n_adiv Entonces
					Escribir "==========================================================="
                    Escribir "¡Correcto! Adivinaste en ", intentos_adiv, " intento(s)."
					Escribir "==========================================================="
                Sino
					Escribir "==========================================================="
                    Escribir "¡Se acabaron tus intentos! El número secreto era: ", n_adiv
					Escribir "==========================================================="
                FinSi
            3:
                Definir opcion_sup, codigo_sup, cantidad_sup, i_sup Como Entero
                Definir subtotal_sup, total_sup, recargo_sup Como Real
                Definir pagarTarjeta_sup, seguir_sup Como Caracter
                Definir numFactura_sup Como Entero
                Definir fecha_sup Como Cadena
                Definir nombreCliente_sup Como Cadena
				
                Dimension productos_sup[30]
                Dimension precios_sup[30]
                Dimension cantidades_sup[30]
                
                productos_sup[1] <- "Arroz 5Kg"
                productos_sup[2] <- "Azucar 1Kg"
                productos_sup[3] <- "Aceite 1L"
                productos_sup[4] <- "Leche 1L"
                productos_sup[5] <- "Mantequilla"
                productos_sup[6] <- "Queso 500g"
                productos_sup[7] <- "Yogurt 1L"
                productos_sup[8] <- "Fideo 500g"
                productos_sup[9] <- "Harina 1Kg"
                productos_sup[10] <- "Pan lactal"
                productos_sup[11] <- "Galletas surtidas"
                productos_sup[12] <- "Jugo de naranja 1L"
                productos_sup[13] <- "Gaseosa Coca Cola 1.5L"
                productos_sup[14] <- "Gaseosa Sprite 1.5L"
                productos_sup[15] <- "Café molido 250g"
                productos_sup[16] <- "Té de hierbas 20 sobres"
                productos_sup[17] <- "Leche condensada 400g"
                productos_sup[18] <- "Harina de maíz 1Kg"
                productos_sup[19] <- "Sal 1Kg"
                productos_sup[20] <- "Azúcar mascabo 1Kg"
                productos_sup[21] <- "Pan de molde integral"
                productos_sup[22] <- "Mermelada fresa 250g"
                productos_sup[23] <- "Aceitunas verdes 250g"
                productos_sup[24] <- "Atún enlatado 170g"
                productos_sup[25] <- "Sardinas enlatadas 125g"
                productos_sup[26] <- "Mayonesa 250g"
                productos_sup[27] <- "Ketchup 250g"
                productos_sup[28] <- "Papas fritas 150g"
                productos_sup[29] <- "Chocolate en barra 100g"
                productos_sup[30] <- "Galletas saladas 200g"
                
                precios_sup[1] <- 55
                precios_sup[2] <- 11
                precios_sup[3] <- 20
                precios_sup[4] <- 8
                precios_sup[5] <- 14
                precios_sup[6] <- 28
                precios_sup[7] <- 16
                precios_sup[8] <- 10
                precios_sup[9] <- 12
                precios_sup[10] <- 18
                precios_sup[11] <- 7
                precios_sup[12] <- 9
                precios_sup[13] <- 15
                precios_sup[14] <- 14
                precios_sup[15] <- 25
                precios_sup[16] <- 10
                precios_sup[17] <- 12
                precios_sup[18] <- 8
                precios_sup[19] <- 5
                precios_sup[20] <- 13
                precios_sup[21] <- 20
                precios_sup[22] <- 15
                precios_sup[23] <- 18
                precios_sup[24] <- 12
                precios_sup[25] <- 10
                precios_sup[26] <- 8
                precios_sup[27] <- 7
                precios_sup[28] <- 6
                precios_sup[29] <- 9
                precios_sup[30] <- 6
                
                Para i_sup<-1 Hasta 30 Hacer
                    cantidades_sup[i_sup] <- 0
                FinPara
                
                subtotal_sup <- 0
                numFactura_sup <- 0
                
                Repetir
                    Escribir "====== SUPERMERCADO BETTU ======"
                    Escribir "1. Registrar venta"
                    Escribir "2. Emitir factura"
                    Escribir "3. Volver al menú principal"
                    Escribir "Elija una opcion: "
                    Leer opcion_sup
                    
                    Segun opcion_sup Hacer
                        1:
                            seguir_sup <- "S"
                            Repetir
                                Escribir "=== LISTA DE PRODUCTOS ==="
                                Para i_sup<-1 Hasta 30 Hacer
                                    Escribir i_sup, ". ", productos_sup[i_sup], " - ", precios_sup[i_sup], " Bs."
                                FinPara
                                
                                Escribir "Ingrese el codigo del producto: "
                                Leer codigo_sup
                                
                                Si codigo_sup > 0 Y codigo_sup <= 30 Entonces
                                    Escribir "Ingrese cantidad: "
                                    Leer cantidad_sup
                                    cantidades_sup[codigo_sup] <- cantidades_sup[codigo_sup] + cantidad_sup
                                    subtotal_sup <- subtotal_sup + (precios_sup[codigo_sup] * cantidad_sup)
                                SiNo
                                    Escribir "Codigo invalido."
                                FinSi
                                
                                Escribir "¿Desea seguir comprando? (S/N): "
                                Leer seguir_sup
                            Hasta Que seguir_sup = "N" O seguir_sup = "n"
							
                        2:
                            numFactura_sup <- numFactura_sup + 1
                            Escribir "Ingrese la fecha de emision (DD/MM/AAAA): "
                            Leer fecha_sup
							Escribir "Ingrese el nombre del cliente: "
							Leer nombreCliente_sup
							
							
							Escribir "======================================"
							Escribir "         SUPERMERCADO BETTU"
							Escribir "======================================"
							Escribir "Factura N°: ", numFactura_sup
							Escribir "Fecha: ", fecha_sup
							Escribir "Cliente: ", nombreCliente_sup
							Escribir "--------------------------------------"
							Escribir "Producto"
							Escribir "--------"
							
							Para i_sup<-1 Hasta 30 Hacer
								Si cantidades_sup[i_sup] > 0 Entonces
									Escribir productos_sup[i_sup], " | Cant: ", cantidades_sup[i_sup], " | P.Unit: ", precios_sup[i_sup], " | Subtotal: ", (cantidades_sup[i_sup]*precios_sup[i_sup])
								FinSi
							FinPara
							
							Escribir "--------------------------------------"
							Escribir "Subtotal: Bs. ", subtotal_sup
                            Escribir "Desea pagar con tarjeta de credito? (S/N): "
                            Leer pagarTarjeta_sup
                            
                            Si pagarTarjeta_sup = "S" O pagarTarjeta_sup = "s" Entonces
                                recargo_sup <- subtotal_sup * 0.05
                                total_sup <- subtotal_sup + recargo_sup
                                Escribir "Recargo (5%): Bs. ", recargo_sup
                            SiNo
                                total_sup <- subtotal_sup
                            FinSi
                            
                            Escribir "TOTAL A PAGAR: Bs. ", total_sup
                            Escribir "--------------------------------------"
                            Escribir "Atendido por: Luciano Franco Vargas Rojas"
                            Escribir "======================================"
                            Escribir "     ¡Gracias por su compra!"
                            Escribir "======================================"
                            
                            Para i_sup<-1 Hasta 30 Hacer
                                cantidades_sup[i_sup] <- 0
                            FinPara
                            subtotal_sup <- 0
							
                        3:
                            Escribir "Volviendo al menú principal..."
                    FinSegun
                Hasta Que opcion_sup = 3
            4:
                Escribir "Gracias por usar el sistema. ¡Hasta luego!"
        FinSegun
		
FinAlgoritmo
SubProceso MostrarDado(valor)
    Segun valor Hacer
        Caso 1:
            Escribir "+-------+"
            Escribir "|       |"
            Escribir "|   *   |"
            Escribir "|       |"
            Escribir "+-------+"
        Caso 2:
            Escribir "+-------+"
            Escribir "| *     |"
            Escribir "|       |"
            Escribir "|     * |"
            Escribir "+-------+"
        Caso 3:
            Escribir "+-------+"
            Escribir "| *     |"
            Escribir "|   *   |"
            Escribir "|     * |"
            Escribir "+-------+"
        Caso 4:
            Escribir "+-------+"
            Escribir "| *   * |"
            Escribir "|       |"
            Escribir "| *   * |"
            Escribir "+-------+"
        Caso 5:
            Escribir "+-------+"
            Escribir "| *   * |"
            Escribir "|   *   |"
            Escribir "| *   * |"
            Escribir "+-------+"
        Caso 6:
            Escribir "+-------+"
            Escribir "| *   * |"
            Escribir "| *   * |"
            Escribir "| *   * |"
            Escribir "+-------+"
    FinSegun
FinSubProceso
