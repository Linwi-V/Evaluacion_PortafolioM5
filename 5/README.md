#### Requerimiento 5: Modelamiento de Base de Datos para un Sistema de Tienda en Línea

Este requerimiento tiene como objetivo aplicar los principios del modelamiento de datos para representar un escenario real de baja complejidad: una tienda en línea que maneja clientes, pedidos, productos y métodos de pago.

A partir del análisis del problema, se elabora un modelo entidad-relación (ER) y se implementa su representación física mediante SQL, utilizando claves primarias, foráneas y relaciones entre entidades.

##### Contexto del Modelo


El modelo representa el funcionamiento básico de una tienda virtual en donde:

* Un cliente puede realizar múltiples pedidos.
* Cada pedido puede incluir varios productos.
* Un cliente puede tener diferentes métodos de pago asociados.
* El stock de productos debe mantenerse actualizado.

##### Estructura de la Base de Datos

La base de datos se llama “requerimiento5” y contiene las siguientes tablas:
Tabla Clientes: Contiene la información principal de los clientes.

| Campo      | Tipo         | Descripción                    |
| ---------- | ------------ | ------------------------------- |
| id_cliente | INT          | Clave primaria, autoincremental |
| nombre     | VARCHAR(100) | Nombre del cliente              |
| direccion  | VARCHAR(200) | Dirección                      |
| correo     | VARCHAR(100) | Correo electrónico             |

Tabla Metodos_pago: Registra los métodos de pago utilizados por cada cliente.

| Campo      | Tipo        | Descripción                              |
| ---------- | ----------- | ----------------------------------------- |
| id_pago    | INT         | Clave primaria                            |
| id_cliente | INT         | Clave foránea que referencia aClientes   |
| tipo       | VARCHAR(50) | Tipo de pago (ej. tarjeta, transferencia) |
| monto      | INT         | Monto de la operación                    |
| cuotas     | INT         | Número de cuotas                         |

Tabla Pedidos: Registra los pedidos realizados por los clientes.

| Campo        | Tipo     | Descripción                            |
| ------------ | -------- | --------------------------------------- |
| id_pedido    | INT      | Clave primaria, autoincremental         |
| id_cliente   | INT      | Clave foránea que referencia aClientes |
| fecha_pedido | DATETIME | Fecha y hora del pedido                 |
| cantidad     | INT      | Cantidad total del pedido               |

Tabla Productos: Contiene la información de los productos pedidos.

| Campo       | Tipo         | Descripción                           |
| ----------- | ------------ | -------------------------------------- |
| id_producto | INT          | Clave primaria                         |
| id_pedido   | INT          | Clave foránea que referencia aPedidos |
| nombre      | VARCHAR(100) | Nombre del producto                    |
| descripcion | TEXT         | Descripción del producto              |
| stock       | INT          | Stock disponible del producto          |

##### Relaciones entre tablas:

El diseño contempla las siguientes relaciones entre entidades:

* Clientes → Pedidos (1:N)
* Clientes → Métodos de Pago (1:N)
* Pedidos → Productos (1:N) 
  Estas relaciones se implementan mediante claves foráneas para garantizar la integridad referencial.
