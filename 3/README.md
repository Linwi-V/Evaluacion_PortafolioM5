#### Requerimiento 3: Manipulación de Datos con Lenguaje DML

La base de datos utilizada en este ejercicio es “requerimiento3”, la cual extiende el modelo previo con la ejecución de acciones sobre los datos ya insertados.

**Inserción de datos:** Se insertaron datos en ambas tablas para simular una base operativa, incluyendo:

* 5 clientes con datos únicos.
* 10 pedidos distribuidos entre ellos.

Estos datos permiten aplicar operaciones de modificación y eliminación de manera realista.

##### Operaciones DML Realizadas:

1. Se actualiza la dirección del cliente con id_cliente = 3, lo cual permite mantener actualizada la información de contacto del cliente en caso de cambios de domicilio.
2. Se elimina un pedido específico con id_pedido = 5, en donde se simula un escenario donde el pedido fue cancelado o ingresado por error y debe eliminarse del registro.
