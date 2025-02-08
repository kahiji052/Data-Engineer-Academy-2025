SELECT nombre, salario  
FROM empleados  
WHERE salario > (SELECT AVG(salario) FROM empleados);