# Consulta 1: pedidos realizados
SELECT 
    Pedido.id,
    Pedido.fecha_pedido,
    Pedido.estado,
    Mozo.apellido,
    Producto.nombre,
    detalle_pedido.cantidad,
    detalle_pedido.precio_historico
FROM Pedido
INNER JOIN Mozo ON Pedido.id_mozo = Mozo.id
INNER JOIN detalle_pedido ON Pedido.id = detalle_pedido.id_pedido
INNER JOIN Producto ON detalle_pedido.id_producto = Producto.id
ORDER BY Pedido.id ASC;

# Consulta 2: Productos más vendidos
SELECT 
    Producto.nombre,
    Producto.categoria,
    SUM(detalle_pedido.cantidad)
FROM detalle_pedido
INNER JOIN Producto ON detalle_pedido.id_producto = Producto.id
GROUP BY Producto.id, Producto.nombre, Producto.categoria
ORDER BY SUM(detalle_pedido.cantidad) DESC;

# Consulta 3: Actividad por mozo
SELECT 
    Mozo.nombre,
    Mozo.apellido,
    Mozo.turno,
    COUNT(DISTINCT Pedido.id) AS pedidos_tomados,
    SUM(detalle_pedido.cantidad * detalle_pedido.precio_historico) AS facturacion
FROM Mozo
INNER JOIN Pedido ON Mozo.id = Pedido.id_mozo
INNER JOIN detalle_pedido ON Pedido.id = detalle_pedido.id_pedido
WHERE Pedido.estado != 'Cancelado'
GROUP BY Mozo.id, Mozo.nombre, Mozo.apellido, Mozo.turno
ORDER BY SUM(detalle_pedido.cantidad * detalle_pedido.precio_historico) DESC;


#Consulta 4: Actividad por mesa
SELECT 
    Mesa.id,
    Mesa.capacidad,
    COUNT(DISTINCT Mesa_Pedido.id_pedido) AS pedidos_registrados,
    SUM(detalle_pedido.cantidad * detalle_pedido.precio_historico) AS facturacion
FROM Mesa
INNER JOIN Mesa_Pedido ON Mesa.id = Mesa_Pedido.id_mesa
INNER JOIN Pedido ON Mesa_Pedido.id_pedido = Pedido.id
INNER JOIN detalle_pedido ON Pedido.id = detalle_pedido.id_pedido
WHERE Pedido.estado != 'Cancelado'
GROUP BY Mesa.id, Mesa.capacidad
ORDER BY Mesa.id ASC;
