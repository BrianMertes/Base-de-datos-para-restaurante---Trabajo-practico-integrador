CREATE DATABASE IF NOT EXISTS restaurante_db;
USE restaurante_db;

CREATE TABLE IF NOT EXISTS Mozo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    turno VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Mesa (
    id INT PRIMARY KEY,
    capacidad INT NOT NULL,
    estado VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Producto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    precio_actual DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_pedido DATETIME NOT NULL,
    estado VARCHAR(20) NOT NULL,
    id_mozo INT NOT NULL,
    FOREIGN KEY (id_mozo) REFERENCES Mozo(id)
);

CREATE TABLE IF NOT EXISTS Mesa_Pedido (
    id_mesa INT NOT NULL,
    id_pedido INT NOT NULL,
    FOREIGN KEY (id_mesa) REFERENCES Mesa(Id),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id),
    PRIMARY KEY (id_mesa, id_pedido)
);

CREATE TABLE IF NOT EXISTS detalle_pedido (
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id),
    FOREIGN KEY (id_producto) REFERENCES Producto(id),
    cantidad INT NOT NULL,
    precio_historico DECIMAL(10,2) NOT NULL,
    observacion VARCHAR(255),
    
    PRIMARY KEY (id_pedido, id_producto)
);


-- Carga de Mozos
INSERT INTO Mozo (nombre, apellido, turno) VALUES
('Carlos', 'Gómez', 'Mañana'),
('María', 'Rodríguez', 'Tarde'),
('Ezequiel', 'Mertes', 'Noche'),
('Laura', 'Martínez', 'Noche');

-- Carga de Mesas
INSERT INTO Mesa (id, capacidad, estado) VALUES
(1, 2, 'Ocupada'),
(2, 4, 'Libre'),
(3, 4, 'Ocupada'),
(4, 6, 'Ocupada'),
(5, 6, 'Ocupada'),
(6, 8, 'Libre');

-- Carga de Productos
INSERT INTO Producto (nombre, descripcion, precio_actual, categoria) VALUES
('Milanesa con Papas Fritas', 'Milanesa de carne vacuna con papas fritas', 8500.00, 'Plato Principal'),
('Hamburguesa Completa', 'Medallón de carne, queso, lechuga, tomate y huevo con papas', 7200.00, 'Plato Principal'),
('Pizza Mozzarella', 'Pizza de 8 porciones', 9000.00, 'Plato Principal'),
('Ensalada César', 'Lechuga, pollo a la plancha, crutones y aderezo César', 6500.00, 'Entrada'),
('Gaseosa 500ml', 'Coca-Cola / Pepsi', 1800.00, 'Bebida'),
('Cerveza', 'Cerveza artesanal', 2500.00, 'Bebida'),
('Flan Casero', 'Con dulce de leche o crema', 3000.00, 'Postre');

-- Carga de Pedidos
-- Pedido 1
INSERT INTO Pedido (fecha_pedido, estado, id_mozo) VALUES ('2026-06-08 11:30:00', 'Cobrado', 1);
-- Pedido 2
INSERT INTO Pedido (fecha_pedido, estado, id_mozo) VALUES ('2026-06-08 21:15:00', 'Entregado', 3);
-- Pedido 3
INSERT INTO Pedido (fecha_pedido, estado, id_mozo) VALUES ('2026-06-08 22:00:00', 'En Cocina', 3);
-- Pedido 4
INSERT INTO Pedido (fecha_pedido, estado, id_mozo) VALUES ('2026-06-08 22:30:00', 'Cancelado', 4);

INSERT INTO Mesa_Pedido (id_mesa, id_pedido) VALUES
(1, 1), -- Pedido 1 en Mesa 1
(3, 2), -- Pedido 2 en Mesa 3
(4, 3), -- Pedido 3 en Mesa 4
(5, 3), -- Pedido 3 en Mesa 5 (Mesas unificadas)
(2, 4); -- Pedido 4 en Mesa 2


INSERT INTO detalle_pedido (id_pedido, id_producto, cantidad, precio_historico, observacion) VALUES
-- Pedido 1
(1, 1, 1, 8500.00, NULL),
(1, 5, 1, 1800.00, 'Gaseosa sin hielo'),

-- Pedido 2
(2, 2, 2, 7200.00, 'Una de las hamburguesas sin tomate'),
(2, 6, 2, 2500.00, NULL),

-- Pedido 3
(3, 3, 2, 9000.00, 'Una mozzarella y una fugazzeta'),
(3, 1, 1, 8500.00, NULL),
(3, 6, 4, 2500.00, NULL),
(3, 5, 1, 1800.00, NULL),

-- Pedido 4
(4, 4, 1, 6500.00, 'Cliente se retiró por la demora en la cocina');
