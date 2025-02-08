SELECT c.nombre, c.region  
FROM clientes c  
JOIN pedidos p ON c.cliente_id = p.cliente_id  
WHERE p.monto > 500;