CREATE DATABASE IF NOT EXISTS `requerimiento1`;
USE `requerimiento1`;

CREATE TABLE Clientes
(
  id_cliente INT          NOT NULL AUTO_INCREMENT,
  nombre     VARCHAR(200) NOT NULL,
  correo     VARCHAR(200) NOT NULL,
  telefono   VARCHAR(10)  NOT NULL,
  direccion  VARCHAR(200) NOT NULL,
  PRIMARY KEY (id_cliente)
);

ALTER TABLE Clientes
  ADD CONSTRAINT UQ_correo UNIQUE (correo);

CREATE TABLE Pedidos
(
  id_pedido  INT          NOT NULL AUTO_INCREMENT,
  id_cliente INT          NOT NULL,
  producto   VARCHAR(100) NOT NULL,
  cantidad   INT          NOT NULL,
  fecha      DATETIME     NOT NULL,
  PRIMARY KEY (id_pedido)
);

ALTER TABLE Pedidos
  ADD CONSTRAINT FK_Clientes_TO_Pedidos
    FOREIGN KEY (id_cliente)
    REFERENCES Clientes (id_cliente);
