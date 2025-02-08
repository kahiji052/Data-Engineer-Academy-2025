SELECT categoria, AVG(ventas) AS promedio_ventas, SUM(ventas) AS suma_ventas  
FROM productos  
GROUP BY categoria;