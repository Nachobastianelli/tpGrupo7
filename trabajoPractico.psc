//La Ferretería "El Tornillo Loco" cuenta con N artículos, de los cuales se conoce su código, descripción, precio de venta, cantidad
//existente, cantidad vendida por quincena.
//Al iniciarse el sistema se debe realizar la carga manual de artículos. El sistema debe pedirle al usuario que ingrese la cantidad de N
//artículos que posee la ferretería y luego le pedirá al usuario que ingrese los datos de los mismos. El sistema va a procesar la información
//por mes teniendo en cuenta lo vendido en cada una de las quincenas del mes.
//Una vez finalizada ésta carga, mostrar la siguiente opción de menú que debe repetirse hasta tanto el usuario presione la opción para salir
//	1. Mostrar lista de artículos ordenada por descripción
//	2. Mostrar lista de artículos ordenada por cantidad vendida
//	3. Mostrar stock actual de artículos
//	4. Buscar artículo por código
//	5. Mostrar estadísticas
//6. Salir 


Algoritmo trabajoPractico
	Definir productos,n,i Como Entero
	Definir retorno Como Logico
	Definir codigo, rubro como entero
	Mostrar "Ingrese la cantidad de productos: "
	Leer n
	Dimension productos[n,6]
	Dimension codigo[n]
	Dimension rubro[n]
	Para i<-1 Hasta n Con Paso 1 Hacer
		Mostrar "Carga de datos del producto ",i,":"
		Mostrar "Ingrese su rubro"
		mostrar"100 Tornillos y Tuercas"
		mostrar"300 Adhesivos" 
		mostrar"450 Herrajes"
		mostrar "680 pinturas"
		mostrar"720 Electricidad"
		Leer rubro[n]
		Mostrar "Ingrese el codigo (5 numeros)"
		Leer codigo[n]
		Leer productos[i,1]
		Mostrar "Ingrese su descripcion"
		Leer productos[i,2]
		Mostrar "Ingrese su precio"
		Leer productos[i,3]
		Mostrar "Ingrese su stock"
		Leer productos[i,4]
		Mostrar "ingrese la cantidad vendidia en la primera quincena"
		Leer productos[i,5]
		Mostrar "Ingrese la cantidad vendida en la segunda quincena"
		Leer productos[i,6]
	Fin Para
	
FinAlgoritmo

Funcion retorno<-validarCodigo(productos,n,codigo Por Referencia, rubro Por Referencia)
	Definir retorno Como Logico
	retorno=Falso
	Definir opcionesRubro Como Entero
	Dimension opcionesRubro[6]
	Definir i,j Como Entero
	Definir i Como Entero
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta 6 Con Paso 1 Hacer
			si rubro[i] <> opcionesRubro[j] Entonces
				
			FinSi
			Mostrar "Rubro invalido"
		FinPara
		
		
	Fin Para
	
FinFuncion
	hola putas
