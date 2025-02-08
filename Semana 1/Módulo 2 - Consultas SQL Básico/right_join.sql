SELECT 
    empleados.nombre AS Nombre_Empleado,
    departamentos.nombre_departamento AS Departamento,
    empleados.salario AS Salario
FROM 
    empleados
RIGHT JOIN 
    departamentos
ON 
    empleados.id_departamento = Departamentos.id_departamento;
