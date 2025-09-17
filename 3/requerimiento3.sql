DROP DATABASE IF EXISTS `requerimiento1`;
DROP DATABASE IF EXISTS `requerimiento2`;
DROP DATABASE IF EXISTS `requerimiento3`;
CREATE DATABASE IF NOT EXISTS `requerimiento3`;
USE `requerimiento3`;

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

INSERT INTO Clientes (nombre, correo, telefono, direccion) VALUES
('Juan Perez', 'k2v1z@example.com', '1234567890', 'Calle 123, Ciudad 1'),
('Maria Gomez', 'OxLb0@example.com', '9876543210', 'Calle 456, Ciudad 2'),
('Carlos Ruiz', 'k3v1z@example.com', '1234567890', 'Calle 789, Ciudad 3'),
('Ana Torres', 'OxLb5@example.com', '9876543210', 'Calle 321, Ciudad 4'),
('Luis Fernandez', 'k4v1z@example.com', '1234567890', 'Calle 654, Ciudad 5');

INSERT INTO Pedidos (id_cliente, producto, cantidad, fecha) VALUES
(1, 'Tofu', 2, '2023-10-01 10:00:00'),
(2, 'Carne de soya', 1, '2023-10-02 11:30:00'),
(1, 'Lechuga', 5, '2023-10-03 14:15:00'),
(3, 'Palta', 3, '2023-10-04 09:45:00'),
(4, 'Lentejas', 4, '2023-10-05 16:20:00'),
(5, 'Quinoa', 2, '2023-10-06 12:10:00'),
(1, 'Tomate', 6, '2023-10-07 13:55:00'),
(2, 'Cebolla', 1, '2023-10-08 15:30:00'),
(3, 'Papa', 3, '2023-10-09 11:00:00'),
(4, 'Zanahoria', 2, '2023-10-10 10:25:00');

--Actualización dirección de un cliente específico (id_cliente = 3)
UPDATE Clientes
SET direccion = 'Calle 555, Ciudad 6'
WHERE id_cliente = 3;

--Eliminación de un pedido específico (id_pedido = 5)
DELETE FROM Pedidos
WHERE id_pedido = 5;

