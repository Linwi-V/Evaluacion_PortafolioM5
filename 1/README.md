##### Requerimiento 1: Fundamentos de Bases de Datos Relacionales

La base de datos creada se llama “requerimiento1” y contiene dos tablas:
**Tabla: Clientes**, contiene la información básica de los clientes. Se agrega una restricción **UNIQUE** sobre el campo correo para que se pueda crear una cuenta con solo un correo y no varias cuentas al mismo tiempo. Pensando en un sistema de registros online.

| Campo      | Tipo         | Descripción                    |
| ---------- | ------------ | ------------------------------- |
| id_cliente | INT          | Clave primaria, autoincremental |
| nombre     | VARCHAR(200) | Nombre del cliente              |
| correo     | VARCHAR(200) | Correo electrónico (único)    |
| telefono   | VARCHAR(10)  | Número de teléfono            |
| direccion  | VARCHAR(200) | Dirección del cliente          |

**Tabla: Pedidos**, registra los pedidos realizados por los clientes.
Se establece una relación de uno a muchos entre Clientes y Pedidos, donde un cliente puede tener múltiples pedidos. Se definió una clave foránea en la tabla Pedidos (id_cliente) que referencia a la clave primaria de la tabla Clientes. Esto permite mantener la integridad referencial entre ambas entidades.

| Campo      | Tipo         | Descripción                             |
| ---------- | ------------ | ---------------------------------------- |
| id_pedido  | INT          | Clave primaria, autoincremental          |
| id_cliente | INT          | Clave foránea que referencia a Clientes |
| producto   | VARCHAR(100) | Nombre del producto                      |
| cantidad   | INT          | Cantidad solicitada                      |
| fecha      | DATETIME     | Fecha del pedido                         |

###### **Elementos fundamentales de una base de datos relacional:**

* **Tabla:** Conjunto de datos organizados en filas y columnas.
* **Registro**: Fila individual dentro de una tabla (ej. un cliente específico).
* **Campo:** Columna de una tabla (ej. nombre, correo, etc.).
* **Clave primaria (PRIMARY KEY):** Identificador único de cada registro (ej. id_cliente).
* **Clave foránea (FOREIGN KEY):** Campo que crea una relación con la clave primaria de otra tabla (ej. id_cliente en Pedidos).

**Gestión y almacenamiento de datos: **

Los datos se almacenan en tablas estructuradas, donde cada fila representa una instancia de entidad (cliente o pedido). La relación entre Clientes y Pedidos permite consultar fácilmente los pedidos de cada cliente y mantener la integridad de los datos.
