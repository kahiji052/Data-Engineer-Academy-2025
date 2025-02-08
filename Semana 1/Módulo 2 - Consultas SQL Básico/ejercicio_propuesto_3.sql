SELECT empleados.nombre, empleados.salario, departamentos.nombre_departamento AS departamento
FROM empleados
INNER JOIN departamentos
ON empleados.id_departamento = departamentos.id_departamento;
