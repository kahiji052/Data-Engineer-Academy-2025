SELECT nombre
FROM empleados
WHERE id_departamento = (SELECT id_departamento FROM departamentos WHERE nombre_departamento = 'Ventas');