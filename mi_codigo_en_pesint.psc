Algoritmo  Mi_codigo_en_pseint
	Definir codigos, copia Como Entero;
	Dimensionar codigos(50), copia(50);
	Definir n, i, j, temp, aux, min_idx, opcion Como Entero;
	Definir comp, inter, desplaz Como Entero;
	Definir buscado, pos, inicio, centro, final Como Entero;
	Definir encontrado, sigo Como Logico;
	Definir pares, impares, mayor, menor Como Entero;
	n <- 50;
	
	codigos[0] <- 45;
	codigos[1] <- 12;
	codigos[2] <- 78;
	codigos[3] <- 23;
	codigos[4] <- 56;
	codigos[5] <- 9;
	codigos[6] <- 34;
	codigos[7] <- 67;
	codigos[8] <- 18;
	codigos[9] <- 91;
	codigos[10] <- 5;
	codigos[11] <- 43;
	codigos[12] <- 72;
	codigos[13] <- 30;
	codigos[14] <- 61;
	codigos[15] <- 88;
	codigos[16] <- 14;
	codigos[17] <- 99;
	codigos[18] <- 27;
	codigos[19] <- 3;
	codigos[20] <- 50;
	codigos[21] <- 81;
	codigos[22] <- 15;
	codigos[23] <- 63;
	codigos[24] <- 39;
	codigos[25] <- 8;
	codigos[26] <- 77;
	codigos[27] <- 20;
	codigos[28] <- 95;
	codigos[29] <- 41;
	codigos[30] <- 60;
	codigos[31] <- 11;
	codigos[32] <- 84;
	codigos[33] <- 33;
	codigos[34] <- 70;
	codigos[35] <- 2;
	codigos[36] <- 49;
	codigos[37] <- 90;
	codigos[38] <- 17;
	codigos[39] <- 55;
	codigos[40] <- 68;
	codigos[41] <- 22;
	codigos[42] <- 83;
	codigos[43] <- 36;
	codigos[44] <- 75;
	codigos[45] <- 10;
	codigos[46] <- 52;
	codigos[47] <- 94;
	codigos[48] <- 29;
	codigos[49] <- 100;
	Repetir
		Escribir '+++++++++++++++++++++++++++++';
		Escribir '     SISTEMA DE CODIGOS      ';
		Escribir '+++++++++++++++++++++++++++++';
		Escribir '1. Mostrar codigos';
		Escribir '2. Ordenar por burbuja';
		Escribir '3. Ordenar por insercion';
		Escribir '4. Ordenar por seleccion';
		Escribir '5. Buscar secuencialmente';
		Escribir '6. Buscar mediante busqueda binaria';
		Escribir '7. Mostrar estadisticas';
		Escribir '8. Salir';
		Escribir 'Seleccione una opcion: ';
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir '--- CODIGOS ALMACENADOS ---';
				Para i<-0 Hasta n-1 Hacer
					Escribir codigos[i], ' 'Sin Saltar;
				FinPara
				Escribir '';
				Escribir '';
			2:
				Para i<-0 Hasta n-1 Hacer
					copia[i] <- codigos[i];
				FinPara
				comp <- 0;
				inter <- 0;
				Para i<-0 Hasta n-2 Hacer
					Para j<-0 Hasta n-i-2 Hacer
						comp <- comp+1;
						Si copia[j]>copia[j+1] Entonces
							temp <- copia[j];
							copia[j] <- copia[j+1];
							copia[j+1]<-temp;
							inter <- inter+1;
						FinSi
					FinPara
				FinPara
				Escribir '--- ORDENAMIENTO POR BURBUJA ---';
				Escribir 'Vector original: ';
				Para i<-0 Hasta n-1 Hacer
					Escribir codigos[i], ' 'Sin Saltar;
				FinPara
				Escribir '';
				Escribir 'Vector ordenado: ';
				Para i<-0 Hasta n-1 Hacer
					Escribir copia[i], ' 'Sin Saltar;
				FinPara
				Escribir '';
				Escribir 'Cantidad de comparaciones: ', comp;
				Escribir 'Cantidad de intercambios: ', inter;
				Escribir '';
			3:
				Para i<-0 Hasta n-1 Hacer
					copia[i] <- codigos[i];
				FinPara
				comp <- 0;
				desplaz <- 0;
				Para i<-1 Hasta n-1 Hacer
					aux <- copia[i];
					j <- i-1;
					sigo <- Verdadero;
					Mientras j>=0 Y sigo Hacer
						comp <- comp+1;
						Si copia[j]>aux Entonces
							copia[j+1]<-copia[j];
							desplaz <- desplaz+1;
							j <- j-1;
						SiNo
							sigo <- Falso;
						FinSi
					FinMientras
					copia[j+1]<-aux;
				FinPara
				Escribir '--- ORDENAMIENTO POR INSERCION ---';
				Escribir 'Vector ordenado: ';
				Para i<-0 Hasta n-1 Hacer
					Escribir copia[i], ' 'Sin Saltar;
				FinPara
				Escribir '';
				Escribir 'Cantidad de comparaciones: ', comp;
				Escribir 'Cantidad de desplazamientos: ', desplaz;
				Escribir '';
			4:
				Para i<-0 Hasta n-1 Hacer
					copia[i] <- codigos[i];
				FinPara
				comp <- 0;
				inter <- 0;
				Para i<-0 Hasta n-2 Hacer
					min_idx <- i;
					Para j<-i+1 Hasta n-1 Hacer
						comp <- comp+1;
						Si copia[j]<copia[min_idx] Entonces
							min_idx <- j;
						FinSi
					FinPara
					Si min_idx<>i Entonces
						temp <- copia[i];
						copia[i] <- copia[min_idx];
						copia[min_idx] <- temp;
						inter <- inter+1;
					FinSi
				FinPara
				Escribir '--- ORDENAMIENTO POR SELECCION ---';
				Escribir 'Vector ordenado: ';
				Para i<-0 Hasta n-1 Hacer
					Escribir copia[i], ' 'Sin Saltar;
				FinPara
				Escribir '';
				Escribir 'Cantidad de comparaciones: ', comp;
				Escribir 'Cantidad de intercambios: ', inter;
				Escribir '';
			5:
				Escribir 'Ingrese el codigo que desea buscar: ';
				Leer buscado;
				comp <- 0;
				encontrado <- Falso;
				pos <- 0;
				i <- 0;
				Mientras i<n Y  NO encontrado Hacer
					comp <- comp+1;
					Si codigos[i]=buscado Entonces
						encontrado <- Verdadero;
						pos <- i;
					SiNo
						i <- i+1;
					FinSi
				FinMientras
				Escribir '--- BUSQUEDA SECUENCIAL ---';
				Si encontrado Entonces
					Escribir 'El codigo fue encontrado en la posicion (indice): ', pos;
				SiNo
					Escribir 'El codigo no fue encontrado.';
				FinSi
				Escribir 'Numero de comparaciones realizadas: ', comp;
				Escribir '';
			6:
				Para i<-0 Hasta n-1 Hacer
					copia[i] <- codigos[i];
				FinPara
				Para i<-0 Hasta n-2 Hacer
					Para j<-0 Hasta n-i-2 Hacer
						Si copia[j]>copia[j+1] Entonces
							temp <- copia[j];
							copia[j] <- copia[j+1];
							copia[j+1]<-temp;
						FinSi
					FinPara
				FinPara
				Escribir 'Ingrese el codigo que desea buscar: ';
				Leer buscado;
				inicio <- 0;
				final <- n-1;
				comp <- 0;
				encontrado <- Falso;
				pos <- 0;
				Mientras inicio<=final Y  NO encontrado Hacer
					centro <- Trunc((inicio+final)/2);
					comp <- comp+1;
					Si copia[centro]=buscado Entonces
						encontrado <- Verdadero;
						pos <- centro;
					SiNo
						Si copia[centro]<buscado Entonces
							inicio <- centro+1;
						SiNo
							final <- centro-1;
						FinSi
					FinSi
				FinMientras
				Escribir '--- BUSQUEDA BINARIA ---';
				Si encontrado Entonces
					Escribir 'El codigo fue encontrado en el vector ordenado, posicion (indice): ', pos;
				SiNo
					Escribir 'El codigo no fue encontrado.';
				FinSi
				Escribir 'Numero de comparaciones realizadas: ', comp;
				Escribir '';
			7:
				pares <- 0;
				impares <- 0;
				mayor <- codigos[0];
				menor <- codigos[0];
				Para i<-0 Hasta n-1 Hacer
					Si codigos[i] MOD 2=0 Entonces
						pares <- pares+1;
					SiNo
						impares <- impares+1;
					FinSi
					Si codigos[i]>mayor Entonces
						mayor <- codigos[i];
					FinSi
					Si codigos[i]<menor Entonces
						menor <- codigos[i];
					FinSi
				FinPara
				Escribir '--- ESTADISTICAS DEL SISTEMA ---';
				Escribir 'Cantidad de elementos almacenados: ', n;
				Escribir 'Cantidad de elementos pares: ', pares;
				Escribir 'Cantidad de elementos impares: ', impares;
				Escribir 'Mayor codigo: ', mayor;
				Escribir 'Menor codigo: ', menor;
				Escribir '';
			8:
				Escribir 'Saliendo del programa...';
			De Otro Modo:
				Escribir 'Opcion no valida. Intente de nuevo.';
		FinSegun
	Hasta Que opcion=8
FinAlgoritmo

