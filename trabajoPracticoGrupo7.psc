Algoritmo trabajoPracticoGrupo7
	//    los tres primeros numeros iguales al rubro mas 5 aleatorios.
	Definir producto como entero
	definir n Como Entero
	Mostrar "Ingrese la cantidad de productos:"
	Leer n
	Definir contador Como Entero
	contador=0
	Dimension producto[n,6]
    definir opcionrubro, codigo, valido Como Entero;
	Definir bandera Como Logico
	definir descripcion Como Caracter
	Dimension descripcion[n]
	definir aux Como Entero
    Dimension opcionRubro[5];
    opcionRubro[1]=100;
    opcionRubro[2]=300;
    opcionRubro[3]=450;
    opcionRubro[4]=680;
    opcionRubro[5]=720;
	Para i<-1 Hasta n Con Paso 1 Hacer
		aux=0
		Repetir
			Mostrar "Ingrese el codigo del ",i," producto."
			leer producto[i,1];
			bandera = validar_nota(producto, opcionRubro,n,i,contador);
		Hasta Que bandera= Verdadero 
		contador=contador+1
		bandera=Falso
		Mostrar "Ingrese su descripcion"
		Leer descripcion[i]
		Mostrar "Ingrese el precio de venta: "
		Leer producto[i,2]
		mostrar "Ingrese la cantidad existente: "
		Leer producto[i,3]
		Repetir
			Mostrar "Ingrese la cantidad vendida en la primera quincena:"
			Leer producto[i,4]
		Hasta Que producto[i,4]>=0 y producto[i,4]<producto[i,3]
		Repetir
			Mostrar "Ingrese la cantidad vendida en la segunda quincena:"
			Leer producto[i,5]
			aux=producto[i,5]+producto[i,4]
		Hasta Que aux<=producto[i,3] y producto[i,5]>=0
		producto[i,6]=producto[i,4]+producto[i,5] // suma de las dos quincenas
	FinPara
	
	Definir opc Como Entero
	Repetir
		Mostrar "Ingrese una opcion: "
		Mostrar "1. Mostrar lista de artículos ordenada por descripción"
		Mostrar "2. Mostrar lista de artículos ordenada por cantidad vendida"
		Mostrar "3. Mostrar stock actual de artículos"
		Mostrar "4. Buscar artículo por código"
		Mostrar "5. Mostrar estadísticas"
		Mostrar "6. Salir "
		Leer opc

	
		Segun opc Hacer
			1:
				Limpiar Pantalla
				ordenarDescripcion(producto,descripcion,n)
			2:
				ordenarCantVendida(producto,descripcion,n)
			3:
				Limpiar Pantalla
				stockActual(producto,n,opcionRubro,descripcion)
			4:
				Limpiar Pantalla
				buscarCodigo(producto,n,opcionRubro)
			5:
				//secuencia_de_acciones_5
			6:
				Limpiar Pantalla
				Mostrar ""
				Mostrar "Saliendo del programa..."
			De Otro Modo:
				Mostrar "Ingreso una opcion incorrecta"
		Fin Segun
	Hasta Que (opc == 6)
	
FinAlgoritmo

Funcion bandera <- validar_nota(producto, opcionRubro,n Por Valor,i por valor,contador Por Valor)//Validacion del codigo
    definir valido Como Entero;
	Definir bandera como logica
	bandera=falso
    valido=0
    Para i<-1+contador Hasta n Con Paso 1 Hacer
		valido = trunc(producto[i,1]/100000);
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			si opcionRubro[j]==valido Entonces
				bandera=Verdadero
			FinSi
		FinPara
	FinPara
	si bandera <> Verdadero
		Mostrar "El codigo no coincide con el rubro"
	FinSi
	
FinFuncion


SubProceso ordenarDescripcion(producto, descripcion, n)
	Definir i, j, aux, aux2, posMenor Como Entero
	Definir auxDescripcion Como Caracter
	
	Para i <- 1 Hasta n-1 Con Paso 1 Hacer
		posMenor <- i
		Para j <- i+1 Hasta n Con Paso 1 Hacer
			Si descripcion[i] >= descripcion[posMenor] Entonces
				posMenor <- j
			FinSi
		Fin Para
		
		aux <- producto[i,1]
		producto[i,1] <- producto[posMenor,1]
		producto[posMenor,1] <- aux
		
		auxDescripcion <- descripcion[i]
		descripcion[i] <- descripcion[posMenor]
		descripcion[posMenor] <- auxDescripcion
		
		aux2 <- producto[i,2]
		producto[i,2] <- producto[posMenor,2]
		producto[posMenor,2] <- aux2
		
	Fin Para

	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Mostrar "El producto con el codigo: ",producto[i,1]," tiene una descripcion: ",descripcion[i], " Con un precio de venta: ",producto[i,3]
	Fin Para
	
FinSubProceso

SubProceso buscarCodigo(producto,n,opcionRubro)
	Definir aux,codigoIngresado Como Entero
	Definir bandera Como Logico
	aux=0
	Repetir
		Mostrar "Ingrese el codigo del producto buscado"
		Leer codigoIngresado
		bandera = validar_nota(producto, opcionRubro,n,i,contador);
	Hasta Que bandera = Verdadero
	Para i<-1 Hasta n Con Paso 1 Hacer
		si codigoIngresado == producto[i,1]
			aux=1
			Mostrar "La cantidad vendida por quincena es: ",producto[i,4]+producto[i,5]
			Mostrar "El stock actual es: ",producto[i,3]-(producto[1,4]+producto[i,5])
			Mostrar "El importe total de ventas es: ",producto[i,2]*(producto[i,4]+producto[i,5])
		FinSi
	FinPara
	si aux <> 1 Entonces
		Mostrar "El codigo buscado es inexistente"
	FinSi
FinSubProceso

SubProceso stockActual(producto,n,opcionRubro,descripcion)
//Mostrar stock actual de artículos: Los datos a mostrar para cada artículo son
//		Código ? Descripción - Stock actual
	//		El stock actual es la cantidad existente descontadas las cantidades vendidas por quincena
	Para i<-1 Hasta n Con Paso 1 Hacer
		Mostrar "El codigo: ", producto[i,1],", con la descripcion: ",descripcion[i],", tiene un stock de: ",producto[i,3]-(producto[i,4]+producto[i,5])
		
	FinPara
	
FinSubProceso


SubProceso ordenarCantVendida(producto,descripcion,n)
	Definir i,j,aux,posMenor Como Entero
	Dimension aux[5]
	Definir auxDescripcion Como Caracter
	
	Para i<-1 Hasta n-1 Con Paso 1 Hacer
		posMenor<-i
		Para j<-i+1 Hasta n Con Paso 1 Hacer
			si producto[i,3] < producto[posMenor,3]
				posMenor<-j
			FinSi
		Fin Para
	
		aux[1]=producto[i,1]
		producto[i,1]= producto[posMenor,1]
		producto[posMenor,1]=aux[1]
		
		auxDescripcion=descripcion[i]
		descripcion[i]=descripcion[posMenor]
		descripcion[posMenor]=auxDescripcion
		
		aux[2]=producto[i,3]
		producto[i,3]=producto[posMenor,3]
		producto[posMenor,3]=aux[2]
		
		aux[3]=producto[i,6]
		producto[i,6]=producto[posMenor,6]
		producto[posMenor,6]=aux[3]
		
		
		aux[4]=producto[i,2]
		producto[i,2]=producto[posMenor,2]
		producto[posMenor,2]=aux[4]
		
		
	Fin Para
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Mostrar "El producto con el codigo: ",producto[i,1]," tiene una descripcion: ",descripcion[i], " Y su venta mensual fue de: ",producto[i,6],"Con un monto: ",producto[i,6]*producto[i,2]
	Fin Para
	
FinSubProceso



