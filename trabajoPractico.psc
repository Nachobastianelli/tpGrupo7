//La Ferreter�a "El Tornillo Loco" cuenta con N art�culos, de los cuales se conoce su c�digo, descripci�n, precio de venta, cantidad
//existente, cantidad vendida por quincena.
//Al iniciarse el sistema se debe realizar la carga manual de art�culos. El sistema debe pedirle al usuario que ingrese la cantidad de N
//art�culos que posee la ferreter�a y luego le pedir� al usuario que ingrese los datos de los mismos. El sistema va a procesar la informaci�n
//por mes teniendo en cuenta lo vendido en cada una de las quincenas del mes.
//Una vez finalizada �sta carga, mostrar la siguiente opci�n de men� que debe repetirse hasta tanto el usuario presione la opci�n para salir
//	1. Mostrar lista de art�culos ordenada por descripci�n
//	2. Mostrar lista de art�culos ordenada por cantidad vendida
//	3. Mostrar stock actual de art�culos
//	4. Buscar art�culo por c�digo
//	5. Mostrar estad�sticas
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
	