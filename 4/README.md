#### Requerimiento 4: Definición y Modificación de Estructuras con Lenguaje DDL

En este ejercicio se trabaja con la base de datos “requerimiento4”, en la que se define una tabla Empleados y se aplican distintas operaciones DDL.
La base de datos requerimiento4 contiene una única tabla principal: Empleados. Inicialmente, la tabla también contenía un campo telefono, el cual fue eliminado como parte del ejercicio de modificación de estructura.

| Campo         | Tipo         | Descripción                          |
| ------------- | ------------ | ------------------------------------- |
| id_empleado   | INT          | Clave primaria, autoincremental       |
| nombre        | VARCHAR(200) | Nombre completo del empleado          |
| rut           | VARCHAR(12)  | Identificador nacional único (RUT)   |
| correo        | VARCHAR(200) | Correo electrónico                   |
| direccion     | VARCHAR(200) | Dirección de residencia              |
| salario       | INT          | Salario mensual del empleado          |
| fecha_ingreso | DATETIME     | Fecha en la que ingresó a la empresa |

##### Operaciones DDL Realizadas

1. Creación de la Base de Datos y la Tabla Empleados
   Se define la tabla con campos relevantes para una estructura de empleados, incluyendo claves primarias y tipos de datos adecuados.
2. Aplicación de Restricción de Unicidad.
   Se añade una restricción UNIQUE sobre el campo rut para asegurar que no existan empleados duplicados por RUT.
3. Modificación de la Tabla: Eliminación de una Columna
   Se elimina la columna telefono de la tabla Empleados.
