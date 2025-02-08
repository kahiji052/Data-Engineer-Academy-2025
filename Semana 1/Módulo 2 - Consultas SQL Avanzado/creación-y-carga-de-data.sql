-- Crear la base de datos
CREATE DATABASE EjemplosDB;
USE EjemplosDB;

-- Tabla empleados
CREATE TABLE empleados (
    empleado_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    salario DECIMAL(10, 2)
);

INSERT INTO empleados (nombre, salario) VALUES
('Juan', 3500.00),
('Ana', 4200.00),
('Luis', 2800.00),
('Sofia', 4700.00);

-- Tabla ventas
CREATE TABLE ventas (
    venta_id INT AUTO_INCREMENT PRIMARY KEY,
    region VARCHAR(50),
    ventas DECIMAL(10, 2)
);

INSERT INTO ventas (region, ventas) VALUES
('Norte', 15000.00),
('Sur', 12000.00),
('Este', 18000.00),
('Oeste', 16000.00);

-- Tabla productos
CREATE TABLE productos (
    producto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    ventas DECIMAL(10, 2)
);

INSERT INTO productos (nombre, categoria, precio, ventas) VALUES
('Producto A', 'Electrónica', 1200.00, 8000.00),
('Producto B', 'Electrónica', 1500.00, 9000.00),
('Producto C', 'Hogar', 500.00, 3000.00),
('Producto D', 'Hogar', 700.00, 4000.00),
('Producto E', 'Electrónica', 1800.00, 11000.00);

-- Tabla clientes
CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    region VARCHAR(50)
);

INSERT INTO clientes (nombre, region) VALUES
('Carlos', 'Norte'),
('Marta', 'Sur'),
('Pedro', 'Este'),
('Laura', 'Oeste');

-- Tabla pedidos
CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    monto DECIMAL(10, 2),
    fecha_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO pedidos (cliente_id, monto, fecha_pedido) VALUES
(1, 550.00, '2025-01-05'),
(2, 300.00, '2025-01-10'),
(3, 700.00, '2025-01-15'),
(4, 200.00, '2025-01-20');