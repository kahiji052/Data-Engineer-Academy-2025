SELECT 
    empleados.nombre AS Nombre_Empleado,
    departamentos.nombre_departamento AS Departamento,
    empleados.salario AS Salario
FROM 
    empleados
INNER JOIN 
    departamentos
ON 
    empleados.id_departamento = departamentos.id_departamento;