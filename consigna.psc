//Primera entrega
//Se entregará un documento en formato .pdf en la fecha fijada por la comisión para la primer entrega que contenga la siguiente
//información:
//1. Información del grupo:
//	a. Grupo [X]
//	b. Integrantes (nombre, apellido y legajo)
//	c. Comisión de cursado
//	d. Año
//	e. Materia
//	Link al repositorio de github del proyecto (repositorio público).
//Nombre del documento: 1TUPX-PI-2023-GRUPOX.pdf
//	Entrega final
//Se actualizará el documento entregado anteriormente con la siguiente información:
//1. Información del desarrollo (por ejemplo):
//	a. Tiempo total de desarrollo, se puede contabilizar con el delta desde el primer commit hasta el último.
//	b. Cantidad de commits.
//	c. Pruebas de testing realizadas.
//	d. Métricas que el grupo considere de valor.
//	2. Dificultades encontradas a la hora del desarrollo en equipo.
//	Se entregará el documento en formato .pdf en la fecha fijada por la comisión para la entrega final y además el código en formato .psc
//		(PSeInt).
//	Nombre del archivo de código: 1TUPX-PI-2023-GRUPOX.psc
//		Evaluación
//	Se tendrá en cuenta para la evaluación y aprobación del trabajo práctico:
//			? La prolijidad y legibilidad del código.
//			? La correcta utilización de las estructuras de control.
//			? La correcta modularización del problema a través de subprocesos o funciones.
//			? La cantidad de funcionalidades desarrolladas en el programa.
//			? La defensa en grupo.
//			Enunciado Trabajo Práctico Integrador
//			La Ferretería "El Tornillo Loco" cuenta con N artículos, de los cuales se conoce su código, descripción, precio de venta, cantidad
//			existente, cantidad vendida por quincena.
//			Al iniciarse el sistema se debe realizar la carga manual de artículos. El sistema debe pedirle al usuario que ingrese la cantidad de N
//			artículos que posee la ferretería y luego le pedirá al usuario que ingrese los datos de los mismos. El sistema va a procesar la información
//			por mes teniendo en cuenta lo vendido en cada una de las quincenas del mes.
//			Una vez finalizada ésta carga, mostrar la siguiente opción de menú que debe repetirse hasta tanto el usuario presione la opción para salir
//				1. Mostrar lista de artículos ordenada por descripción
//				2. Mostrar lista de artículos ordenada por cantidad vendida
//				3. Mostrar stock actual de artículos
//				4. Buscar artículo por código
//				5. Mostrar estadísticas
//				6. Salir
//			Consideraciones:
//			Carga manual de artículos: Los datos a ingresar son
//				? Código
//				? Descripción
//				? Precio de Venta
//				? Cantidad existente
//				? Cantidad vendida 1ª quincena
//				? Cantidad vendida 2ª quincena
//				El Código de cada artículo se debe validar mediante una función.
//				Si el Código es inválido debe mostrarse error y volver a pedir que lo ingrese. El Código de cada artículo esta armado con la siguiente
//				estructura: 3 dígitos para el rubro y 5 dígitos para el número del artículo. La ferretería trabaja únicamente los rubros 100, 300, 450, 680 y
//							720
//							PROGRAMACIÓN I ? TRABAJO PRÁCTICO INTEGRADOR
//							2
//							Referencia de los Rubros
//							100 Tornillos y Tuercas 450 Herrajes 720 Electricidad
//							300 Adhesivos 680 Pinturas
//						Mostrar lista de artículos ordenada por descripción: Los datos a mostrar para cada artículo son
//								Código - Descripción - Precio Venta
//							Mostrar lista de artículos ordenada por cantidad vendida: Los datos a mostrar por cada artículo son
//								Código ? Descripción - Cantidad Total vendida en el mes - Importe Total venta
//								Se deben mostrar ordenados por cantidad total vendida en el mes en forma descendente, es decir que primero deben mostrarse los de
//								mayor cantidad de ventas.
//								Al final del listado anterior, informar el Monto total de ventas realizadas en el mes
//							Mostrar stock actual de artículos: Los datos a mostrar para cada artículo son
//									Código ? Descripción - Stock actual
//									El stock actual es la cantidad existente descontadas las cantidades vendidas por quincena
//								Buscar articulo por código: El usuario ingresa un Código (validando dicho código con la misma función utilizada en la carga inicial), el
//									sistema muestra los datos del artículo encontrado con el detalle de las cantidades vendidas por quincena, el stock actual y el importe
//									total de venta en el mes de dicho artículo. Si el sistema no encuentra el artículo debe informar "No existe artículo con ese código."
//									Mostrar Estadísticas: El Sistema calculara las siguientes estadísticas
//										a) Porcentaje de la cantidad de artículos vendidos de cada rubro (el rubro al que pertenece cada artículo corresponde
//										a los 3 primeros dígitos del código), sobre la cantidad total de ventas
//										b) Porcentaje de venta de cada quincena por Rubro sobre el total del mes
//										c) Rubro con mayor importe total de ventas en cada quincena
//Salir: Finaliza el programa y se muestra un mensaje de agradecimiento. 