DROP DATABASE IF EXISTS `requerimiento5`;
CREATE DATABASE `requerimiento5` IF NOT EXISTS;
USE `requerimiento5`;   

CREATE TABLE Clientes
(
  id_cliente INT          NOT NULL AUTO_INCREMENT,
  nombre     VARCHAR(100) NOT NULL,
  direccion  VARCHAR(200) NOT NULL,
  correo     VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_cliente)
);

CREATE TABLE Metodos_pago
(
  id_pago    INT         NOT NULL,
  id_cliente INT         NOT NULL,
  tipo       VARCHAR(50) NOT NULL,
  monto      INT         NOT NULL,
  cuotas     INT         NOT NULL,
  PRIMARY KEY (id_pago)
);

CREATE TABLE Pedidos
(
  id_pedido    INT      NOT NULL AUTO_INCREMENT,
  id_cliente   INT      NOT NULL,
  fecha_pedido DATETIME NOT NULL,
  cantidad     INT      NOT NULL,
  PRIMARY KEY (id_pedido)
);

CREATE TABLE Productos
(
  id_producto INT          NOT NULL,
  id_pedido   INT          NOT NULL,
  nombre      VARCHAR(100) NOT NULL,
  descripcion TEXT         NOT NULL,
  stock       INT          NOT NULL,
  PRIMARY KEY (id_producto)
);

ALTER TABLE Metodos_pago
  ADD CONSTRAINT FK_Clientes_TO_Metodos_pago
    FOREIGN KEY (id_cliente)
    REFERENCES Clientes (id_cliente);

ALTER TABLE Pedidos
  ADD CONSTRAINT FK_Clientes_TO_Pedidos
    FOREIGN KEY (id_cliente)
    REFERENCES Clientes (id_cliente);

ALTER TABLE Productos
  ADD CONSTRAINT FK_Pedidos_TO_Productos
    FOREIGN KEY (id_pedido)
    REFERENCES Pedidos (id_pedido);
