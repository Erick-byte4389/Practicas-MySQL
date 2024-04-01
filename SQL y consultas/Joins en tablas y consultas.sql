-- INNER JOIN (DEVUELVE UNICAMENTE LOS REGISTROS CON LLAVES)

SELECT * FROM tabla_de_vendedores;
SELECT * FROM facturas;

SELECT * FROM tabla_de_vendedores A INNER JOIN FACTURAS B ON A.MATRICULA = B.MATRICULA;

-- FORMA ANTIGUA DEL INNER JOIN
SELECT A.NOMBRE, B.MATRICULA, COUNT(*) AS TOTAL_DE_VENTAS FROM tabla_de_vendedores A INNER JOIN FACTURAS B ON A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

SELECT YEAR(FECHA_VENTA), SUM(CANTIDAD * PRECIO) AS FACTURACION
FROM facturas F 
INNER JOIN 
items_facturas IFa 
ON F.NUMERO = IFa.NUMERO
GROUP BY YEAR(FECHA_VENTA);

-- LEFT JOIN (MANTIENE LOS REGISTROS DE LA TABLA DE LA IZQUIERDA Y DEVUELVE LOS CORRESPONDIENTES DE LA DERECHA)
SELECT COUNT(*) FROM tabla_de_clientes;

SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI FROM tabla_de_clientes A LEFT JOIN facturas B ON A.DNI = B.DNI
WHERE B.DNI IS NULL;

-- RIGHT JOIN (MANTIENE LOS REGISTROS DE LA TABLA DE LA DERECHA Y DEVUELVE LOS CORRESPONDIENTES DE LA IZQUIERDA)
SELECT * FROM tabla_de_clientes;
SELECT * FROM tabla_de_vendedores;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE,
tabla_de_vendedores.VACACIONES FROM tabla_de_clientes RIGHT JOIN tabla_de_vendedores ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

-- FULL JOIN (MANTIENE Y DEVUELVE TODOS LOS REGISTROS DE LAS TABLAS)

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

-- CROSS JOIN (DEVUELVE EL PRODUCTO CARTESIANO DE LOS REGISTROS)

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE,
tabla_de_vendedores.VACACIONES FROM tabla_de_clientes, tabla_de_vendedores WHERE tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;
