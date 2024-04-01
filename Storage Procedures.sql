CALL hola_mundo;

CALL muestra_numero;

CALL concatenar;

CALL mostrar_variable;

CALL new_procedure;

CALL atribuir_valores;

CALL cliente;

CALL manipulacion;

CALL incluir_producto;

UPDATE tabla_de_productos SET PRECIO_DE_LISTA= 5 WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor In%';

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor In%';

CALL calcula_edad;

CALL incluir_producto_parametros('1000800', 'Sabor del mar', '700 ml', 'Naranja', 'Botella de vidrio', 2.25);

SELECT * FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = 1000800;

CALL reajuste_comision(0.90);

SELECT * FROM tabla_de_vendedores;

CALL incluir_producto_parametros('1000800', 'Sabor del mar', '700 ml', 'Naranja', 'Botella de vidrio', 2.25);

SELECT * FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = 1000800;

CALL incluir_producto_parametros('1000801', 'Sabor del mar', '700 ml', 'Naranja', 'Botella de vidrio', 2.25);

SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = 1078680;

CALL mostrar_sabor('1101035');

CALL cantidad_facturas();

SELECT * FROM tabla_de_clientes;

CALL edad_clientes(3623344710);

CALL edad_clientes(5648641702);

CALL edad_clientes(1471156710);

CALL evaluacion_facturas(2020-01-01);

SELECT * FROM tabla_de_productos;

/*
Precio >= 12 = Producto costoso
Precio >= 7 && < 12 = Producto Asequible
Precio < 7 = Producto barato
*/

SELECT PRECIO_DE_LISTA FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1000800';

CALL precio_producto(1000800);

CALL precio_producto(1000801);

CALL precio_producto(1013793);

CALL precio_producto(1096818);

SELECT SUM(B.CANTIDAD * B.PRECIO) AS TOTAL_VENTA FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = '20170301';

CALL comparacion_ventas(20170301, 20180903);

SELECT DISTINCT SABOR FROM tabla_de_productos;

/*
Maracuyá = Rico
Limón = Rico
Frutilla = Rico
Uva = Rico
Sandía = Normal
Mango = Normal
Demás sabores = Comunes
*/

SELECT * FROM tabla_de_productos;
SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1000889';

CALL define_sabor('1000889');

SELECT SABOR, CODIGO_DEL_PRODUCTO FROM tabla_de_productos;

CALL define_sabor_con_error('1000800');

CALL precio_producto_case('1000800');

CALL precio_producto_case('1000801');

CALL precio_producto_case('1013793');

CALL precio_producto_case('1096818');

CREATE TABLE tb_looping (ID INT);

SELECT * FROM tb_looping;

CALL looping(0,10);

CALL suma_dias_facturas();

CALL problema_select_into();

CALL cursor_1();

SELECT NOMBRE FROM tabla_de_clientes LIMIT 4;

CALL cursor_looping();

CALL limite_creditos;

SELECT * FROM tabla_de_clientes;

CALL cursos_looping_varios_campos;

SELECT IFa.CANTIDAD, IFa.PRECIO FROM items_facturas IFa
INNER JOIN facturas  F ON F.NUMERO = IFa.NUMERO
WHERE MONTH(F.FECHA_VENTA) = 1 AND YEAR(F.FECHA_VENTA) = 2017;

CALL campo_adicional;

SET GLOBAL log_bin_trust_function_creators = 1; /* Habilita la construcción de Funciones por defecto.*/

SELECT f_define_sabor('Maracuyá');

SELECT NOMBRE_DEL_PRODUCTO, SABOR, f_define_sabor(SABOR) AS TIPO
FROM tabla_de_productos;

SELECT f_numero_facturas('2017-01-01') AS RESULTADO;