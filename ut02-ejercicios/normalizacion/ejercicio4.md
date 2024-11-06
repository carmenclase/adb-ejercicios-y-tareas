Una tienda de suministros almacena los datos de sus pedidos en la siguiente tabla Pedidos.

Normaliza la tabla Pedidos para que cumpla con 1FN, 2FN y 3FN. Identifica las dependencias funcionales y elimina las dependencias parciales y transitivas en cada paso.

PedidoID 	FechaPedido 	ClienteID 	ClienteNombre 	ProductoID 	ProductoNombre 	Cantidad 	PrecioUnitario
301 	05/04/2023 	501 	Juan 	1001 	Lápiz 	10 	0.5
301 	05/04/2023 	501 	Juan 	1002 	Cuaderno 	5 	1.5
302 	06/04/2023 	502 	María 	1003 	Bolígrafo 	8 	0.8
303 	07/04/2023 	503 	Luis 	1001 	Lápiz 	12 	0.5
303 	07/04/2023 	503 	Luis 	1004    Borrador 	4 	0.3

# Resolución

| ClienteID | ClienteNombre |
| --- | --- |
| 301 | "Juan" |
| 302 | "María"|
| 303 | "Luis" |

