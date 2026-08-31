
--Productos más vendidos (pizza, panzarottis, bebidas, etc.)
--Se asignan los alias, se usa una formula de adición
--Luego utilizamos un inner Join para mostrar las tablas
--Agrupamos para que la formula de adición pueda mostrar los detalles


SELECT 
    p.nombre AS producto,
    p.categoria,
    COUNT(pd.id_producto) AS cantidad_vendida
FROM productos p
INNER JOIN pedido_detalles pd
    ON p.id_producto = pd.id_producto
GROUP BY 
    p.id_producto,
    p.nombre,
    p.categoria

--2

SELECT 
    c.nombre AS combo,
    c.precio,
    COUNT(pd.id_combo) AS cantidad_vendida,
    c.precio * COUNT(pd.id_combo) AS ingresos_totales
FROM combos c
INNER JOIN pedido_detalles pd
    ON c.id_combo = pd.id_combo
GROUP BY 
    c.id_combo,
    c.nombre,
    c.precio

--3

SELECT 
    tipo_pedido,
    COUNT(*) AS cantidad_pedidos
FROM pedidos
WHERE tipo_pedido IN ('Para llevar', 'En restaurante')
GROUP BY tipo_pedido;


--4
SELECT 
    a.nombre AS adicion,
    COUNT(pdha.id_adicion) AS cantidad_solicitada
FROM adiciones a
INNER JOIN pedido_detalles_has_adicionales pdha
    ON a.id_adicion = pdha.id_adicion
GROUP BY 
    a.id_adicion,
    a.nombre

--5

SELECT 
    p.categoria,
    COUNT(pd.id_producto) AS productos_vendidos
FROM productos p
INNER JOIN pedido_detalles pd
    ON p.id_producto = pd.id_producto
GROUP BY p.categoria

--6

SELECT 
    AVG(total_pizzas) AS promedio_pizzas_por_cliente
FROM (
    SELECT 
        pe.id_cliente,
        COUNT(pd.id_producto) AS total_pizzas
    FROM pedidos pe
    INNER JOIN pedido_detalles pd
        ON pe.id_pedido = pd.id_pedido
    INNER JOIN productos p
        ON pd.id_producto = p.id_producto
    WHERE p.categoria = 'Pizzas'
    GROUP BY pe.id_cliente
) AS pizzas_por_cliente;


--7

SELECT 
    DAYNAME(fecha) AS dia_semana,
    SUM(total) AS ventas_totales
FROM pedidos
GROUP BY DAYNAME(fecha)
ORDER BY ventas_totales DESC;