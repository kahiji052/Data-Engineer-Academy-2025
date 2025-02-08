SELECT nombre  
FROM clientes  
WHERE cliente_id IN (
    SELECT cliente_id  
    FROM pedidos  
    WHERE fecha_pedido BETWEEN '2025-01-01' AND '2025-01-31'
);