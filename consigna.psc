//Primera entrega
//Se entregar� un documento en formato .pdf en la fecha fijada por la comisi�n para la primer entrega que contenga la siguiente
//informaci�n:
//1. Informaci�n del grupo:
//	a. Grupo [X]
//	b. Integrantes (nombre, apellido y legajo)
//	c. Comisi�n de cursado
//	d. A�o
//	e. Materia
//	Link al repositorio de github del proyecto (repositorio p�blico).
//Nombre del documento: 1TUPX-PI-2023-GRUPOX.pdf
//	Entrega final
//Se actualizar� el documento entregado anteriormente con la siguiente informaci�n:
//1. Informaci�n del desarrollo (por ejemplo):
//	a. Tiempo total de desarrollo, se puede contabilizar con el delta desde el primer commit hasta el �ltimo.
//	b. Cantidad de commits.
//	c. Pruebas de testing realizadas.
//	d. M�tricas que el grupo considere de valor.
//	2. Dificultades encontradas a la hora del desarrollo en equipo.
//	Se entregar� el documento en formato .pdf en la fecha fijada por la comisi�n para la entrega final y adem�s el c�digo en formato .psc
//		(PSeInt).
//	Nombre del archivo de c�digo: 1TUPX-PI-2023-GRUPOX.psc
//		Evaluaci�n
//	Se tendr� en cuenta para la evaluaci�n y aprobaci�n del trabajo pr�ctico:
//			? La prolijidad y legibilidad del c�digo.
//			? La correcta utilizaci�n de las estructuras de control.
//			? La correcta modularizaci�n del problema a trav�s de subprocesos o funciones.
//			? La cantidad de funcionalidades desarrolladas en el programa.
//			? La defensa en grupo.
//			Enunciado Trabajo Pr�ctico Integrador
//			La Ferreter�a "El Tornillo Loco" cuenta con N art�culos, de los cuales se conoce su c�digo, descripci�n, precio de venta, cantidad
//			existente, cantidad vendida por quincena.
//			Al iniciarse el sistema se debe realizar la carga manual de art�culos. El sistema debe pedirle al usuario que ingrese la cantidad de N
//			art�culos que posee la ferreter�a y luego le pedir� al usuario que ingrese los datos de los mismos. El sistema va a procesar la informaci�n
//			por mes teniendo en cuenta lo vendido en cada una de las quincenas del mes.
//			Una vez finalizada �sta carga, mostrar la siguiente opci�n de men� que debe repetirse hasta tanto el usuario presione la opci�n para salir
//				1. Mostrar lista de art�culos ordenada por descripci�n
//				2. Mostrar lista de art�culos ordenada por cantidad vendida
//				3. Mostrar stock actual de art�culos
//				4. Buscar art�culo por c�digo
//				5. Mostrar estad�sticas
//				6. Salir
//			Consideraciones:
//			Carga manual de art�culos: Los datos a ingresar son
//				? C�digo
//				? Descripci�n
//				? Precio de Venta
//				? Cantidad existente
//				? Cantidad vendida 1� quincena
//				? Cantidad vendida 2� quincena
//				El C�digo de cada art�culo se debe validar mediante una funci�n.
//				Si el C�digo es inv�lido debe mostrarse error y volver a pedir que lo ingrese. El C�digo de cada art�culo esta armado con la siguiente
//				estructura: 3 d�gitos para el rubro y 5 d�gitos para el n�mero del art�culo. La ferreter�a trabaja �nicamente los rubros 100, 300, 450, 680 y
//							720
//							PROGRAMACI�N I ? TRABAJO PR�CTICO INTEGRADOR
//							2
//							Referencia de los Rubros
//							100 Tornillos y Tuercas 450 Herrajes 720 Electricidad
//							300 Adhesivos 680 Pinturas
//						Mostrar lista de art�culos ordenada por descripci�n: Los datos a mostrar para cada art�culo son
//								C�digo - Descripci�n - Precio Venta
//							Mostrar lista de art�culos ordenada por cantidad vendida: Los datos a mostrar por cada art�culo son
//								C�digo ? Descripci�n - Cantidad Total vendida en el mes - Importe Total venta
//								Se deben mostrar ordenados por cantidad total vendida en el mes en forma descendente, es decir que primero deben mostrarse los de
//								mayor cantidad de ventas.
//								Al final del listado anterior, informar el Monto total de ventas realizadas en el mes
//							Mostrar stock actual de art�culos: Los datos a mostrar para cada art�culo son
//									C�digo ? Descripci�n - Stock actual
//									El stock actual es la cantidad existente descontadas las cantidades vendidas por quincena
//								Buscar articulo por c�digo: El usuario ingresa un C�digo (validando dicho c�digo con la misma funci�n utilizada en la carga inicial), el
//									sistema muestra los datos del art�culo encontrado con el detalle de las cantidades vendidas por quincena, el stock actual y el importe
//									total de venta en el mes de dicho art�culo. Si el sistema no encuentra el art�culo debe informar "No existe art�culo con ese c�digo."
//									Mostrar Estad�sticas: El Sistema calculara las siguientes estad�sticas
//										a) Porcentaje de la cantidad de art�culos vendidos de cada rubro (el rubro al que pertenece cada art�culo corresponde
//										a los 3 primeros d�gitos del c�digo), sobre la cantidad total de ventas
//										b) Porcentaje de venta de cada quincena por Rubro sobre el total del mes
//										c) Rubro con mayor importe total de ventas en cada quincena
//Salir: Finaliza el programa y se muestra un mensaje de agradecimiento. 