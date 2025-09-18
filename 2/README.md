#### Requerimiento 2: Consultas SQL para Obtención de Información

En este caso, se trabaja sobre la base de datos “requerimiento2”, que reutiliza el modelo del Requerimiento 1, y se complementa con datos de ejemplo y consultas SQL que permiten recuperar información de manera eficiente.

Se insertaron múltiples registros en ambas tablas para simular una base de datos real. Algunos ejemplos:

* Clientes: Juan Perez, Maria Gomez, Carlos Ruiz, etc.
* Pedidos: Productos como Tofu, Lechuga, Quinoa, etc., con diferentes cantidades y fechas.

Esto permite realizar pruebas reales sobre el modelo para validar consultas SQL.

##### Consulta Realizada

Se implementó una consulta SQL para obtener todos los pedidos realizados por un cliente específico (en este caso: Juan Perez).

Se utiliza un JOIN para combinar las tablas Pedidos y Clientes a través de la relación definida (id_cliente). La cláusula WHERE filtra los resultados para obtener únicamente los pedidos realizados por Juan Perez. El resultado mostrará el ID del pedido, el producto, la cantidad y la fecha de cada pedido.

Se puede modificar el valor de c.nombre para consultar otros clientes registrados.
