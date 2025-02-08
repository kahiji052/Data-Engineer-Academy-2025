SELECT region, SUM(ventas) AS total_ventas  
FROM ventas  
GROUP BY region;