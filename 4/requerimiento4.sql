CREATE DATABASE IF NOT EXISTS `requerimiento4`;
USE `requerimiento4`;

CREATE TABLE Empleados
(
  id_empleado   INT          NOT NULL AUTO_INCREMENT,
  nombre        VARCHAR(200) NOT NULL,
  rut           VARCHAR(12)  NOT NULL,
  correo        VARCHAR(200) NOT NULL,
  telefono      VARCHAR(10)  NOT NULL,
  direccion     VARCHAR(200) NOT NULL,
  salario       INT          NOT NULL,
  fecha_ingreso DATETIME     NOT NULL,
  PRIMARY KEY (id_empleado)
);

--Se asegura que el rut sea único
ALTER TABLE Empleados
  ADD CONSTRAINT UQ_rut UNIQUE (rut);

--Se elimina la columna teléfono
ALTER TABLE Empleados
  DROP COLUMN telefono;





