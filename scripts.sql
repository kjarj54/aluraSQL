CREATE DATABASE jugos;
CREATE SCHEMA `jugos2` DEFAULT CHARACTER SET utf8 ;


DROP SCHEMA jugos;

DROP DATABASE `jugos2`;

USE jugos;

CREATE TABLE TBCLIENTES (
DNI VARCHAR(20),
NOMBRE VARCHAR(150),
DIRECCION1 VARCHAR(150),
DIRECCION2 VARCHAR(150),
BARRIO VARCHAR(50),
CIUDAD VARCHAR(50),
ESTADO VARCHAR(50),
CP VARCHAR(10),
EDAD SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUMEN_COMPRA FLOAT,
PRIMERA_COMPRA BIT(1)
);tbclientes


CREATE TABLE `jugos`.`tbproductos` (
  `producto` VARCHAR(20) NULL,
  `nombre` VARCHAR(150) NULL,
  `envace` VARCHAR(50) NULL,
  `volumen` VARCHAR(20) NULL,
  `sabor` VARCHAR(50) NULL,
  `precio` FLOAT NULL);
  
  USE jugos;

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('695594', 'Festival de Sabores', 'Botella PET',
'1.5 Litros', 'Asaí', 18.51);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('1041119', 'Línea Citrus', 'Botella de Vidrio',
'700 ml', 'Lima', 4.90);

SELECT * FROM tbproductos;

UPDATE tbproductos SET producto = '812829', envase = 'lata'
WHERE volumen = '350 ml';

UPDATE tbproductos SET precio = 28.51
WHERE producto = '695594';

UPDATE tbproductos SET sabor = 'Lima/Limón', precio = 4.90
WHERE producto = '1041119';

SELECT * FROM tbproductos;

DELETE FROM tbproductos WHERE producto = '773912';

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01);

SELECT * FROM tbproductos;

ALTER TABLE tbproductos ADD PRIMARY KEY(PRODUCTO);


USE jugos;

ALTER TABLE tbclientes ADD PRIMARY KEY (DNI);

ALTER TABLE tbclientes ADD COLUMN(FECHA_NACIMIENTO DATE);

INSERT INTO tbclientes(
DNI,
NOMBRE,
DIRECCION1, 
DIRECCION2, 
BARRIO,
CIUDAD,
ESTADO,
CP,
EDAD,
SEXO, 
LIMITE_CREDITO,
VOLUMEN_COMPRA, 
PRIMERA_COMPRA,
FECHA_NACIMIENTO) VALUES(
'456879548', 'Pedro el Escamoso', 'Calle del Sol, 25', '', 'Los Laureles', 'CDMX', 'México', '65784', 55, 'M',
1000000, 2000, 0, '1971-05-25');

SELECT * FROM tbclientes;

USE jugos;

DROP TABLE tbclientes;

DROP TABLE tbproductos;

CREATE TABLE tbcliente
(DNI VARCHAR (11) ,
NOMBRE VARCHAR (100) ,
DIRECCION1 VARCHAR (150) ,
DIRECCION2 VARCHAR (150) ,
BARRIO VARCHAR (50) ,
CIUDAD VARCHAR (50) ,
ESTADO VARCHAR (4) ,
CP VARCHAR (8) ,
FECHA_NACIMIENTO DATE,
EDAD SMALLINT,
SEXO VARCHAR (1) ,
LIMITE_CREDITO FLOAT ,
VOLUMEN_COMPRA FLOAT ,
PRIMERA_COMPRA BIT );

ALTER TABLE tbcliente ADD PRIMARY KEY (DNI);

CREATE TABLE tbproducto
(PRODUCTO VARCHAR (20) ,
NOMBRE VARCHAR (150) ,
ENVASE VARCHAR (50) ,
TAMANO VARCHAR (50) ,
SABOR VARCHAR (50) ,
PRECIO_LISTA FLOAT);

ALTER TABLE tbproducto ADD PRIMARY KEY (PRODUCTO);

INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', '', 'Barrio del Niño Jesús', 'Ciudad de México', 'CDMX', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', '', 'Carola', 'Ciudad de México', 'CDMX', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5576228758', 'Pedro Olivera', 'Pachuca 75', '', 'Condesa', 'Ciudad de México', 'CDMX', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', '', 'Contadero', 'Ciudad de México', 'CDMX', '82122020', '1995-01-07', 25, 'M', 110000, 190000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', '', 'Del Valle', 'Ciudad de México', 'CDMX', '80012212', '1990-01-01', 30, 'F', 170000, 245000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('3623344710', 'Marcos Rosas', 'Av. Universidad', '', 'Del Valle', 'Ciudad de México', 'CDMX', '22002012', '1995-01-13', 26, 'M', 110000, 220000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', '', 'Cuajimalpa', 'Ciudad de México', 'CDMX', '22000212', '1995-01-11', 25, 'M', 170000, 260000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', '', 'Del Valle', 'Ciudad de México', 'CDMX', '80010221', '1985-01-16', 36, 'M', 140000, 210000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('94387575700', 'Walter Soruco', 'Calz. de Tlalpan 2980', '', 'Ex Hacienda Coapa', 'Ciudad de México', 'CDMX', '22000201', '1989-01-20', 31, 'M', 60000, 120000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', '', 'Floresta Coyoacán', 'Ciudad de México', 'CDMX', '81192002', '1983-01-20', 37, 'M', 200000, 240000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', '', 'Héroes de Padierna', 'Ciudad de México', 'CDMX', '21002020', '1991-01-30', 29, 'M', 120000, 220000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', '', 'Locaxco', 'Ciudad de México', 'CDMX', '22012002', '1994-01-19', 26, 'M', 75000, 95000, 1);

INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('773912', 'Clean', '1 Litro', 'Naranja', 'Botella PET', 8.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('838819', 'Clean', '1,5 Litros', 'Naranja', 'Botella PET', 12.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1037797', 'Clean', '2 Litros', 'Naranja', 'Botella PET', 16.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('812829', 'Clean', '350 ml', 'Naranja', 'Lata', 2.81);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('479745', 'Clean', '470 ml', 'Naranja', 'Botella de Vidrio', 3.77);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('695594', 'Festival de Sabores', '1,5 Litros', 'Asaí', 'Botella PET', 28.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('243083', 'Festival de Sabores', '1,5 Litros', 'Maracuyá', 'Botella PET', 10.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1022450', 'Festival de Sabores', '2 Litros', 'Asái', 'Botella PET', 38.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('231776', 'Festival de Sabores', '700 ml', 'Asaí', 'Botella de Vidrio', 13.31);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('723457', 'Festival de Sabores', '700 ml', 'Maracuyá', 'Botella de Vidrio', 4.91);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('746596', 'Light', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1040107', 'Light', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1002334', 'Línea Citrus', '1 Litro', 'Lima/Limón', 'Botella PET', 7);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1088126', 'Línea Citrus', '1 Litro', 'Limón', 'Botella PET', 7);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1041119', 'Línea Citrus', '700 ml', 'Lima/Limón', 'Botella de Vidrio', 4.9);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1042712', 'Línea Citrus', '700 ml', 'Limón', 'Botella de Vidrio', 4.9);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('520380', 'Pedazos de Frutas', '1 Litro', 'Manzana', 'Botella PET', 12.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('788975', 'Pedazos de Frutas', '1,5 Litros', 'Manzana', 'Botella PET', 18.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('229900', 'Pedazos de Frutas', '350 ml', 'Manzana', 'Lata', 4.21);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1101035', 'Refrescante', '1 Litro', 'Frutilla/Limón', 'Botella PET', 9.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1086543', 'Refrescante', '1 Litro', 'Mango', 'Botella PET', 11.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('326779', 'Refrescante', '1,5 Litros', 'Mango', 'Botella PET', 16.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('826490', 'Refrescante', '700 ml', 'Frutilla/Limón', 'Botella de Vidrio', 6.31);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1096818', 'Refrescante', '700 ml', 'Mango', 'Botella de Vidrio', 7.71);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('394479', 'Sabor da Montaña', '700 ml', 'Cereza', 'Botella de Vidrio', 8.41);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('783663', 'Sabor da Montaña', '700 ml', 'Frutilla', 'Botella de Vidrio', 7.71);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1000889', 'Sabor da Montaña', '700 ml', 'Uva', 'Botella de Vidrio', 6.31);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('544931', 'Verano', '350 ml', 'Limón', 'Lata', 2.46);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('235653', 'Verano', '350 ml', 'Mango', 'Lata', 3.86);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1051518', 'Verano', '470 ml', 'Limón', 'Botella de Vidrio', 3.3);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1078680', 'Verano', '470 ml', 'Mango', 'Botella de Vidrio', 5.18);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1004327', 'Vida del Campo', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1013793', 'Vida del Campo', '2 Litros', 'Cereza/Manzana', 'Botella PET', 24.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('290478', 'Vida del Campo', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1002767', 'Vida del Campo', '700 ml', 'Cereza/Manzana', 'Botella de Vidrio', 8.41);

SELECT * FROM tbcliente;

SELECT DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO,CP, FECHA_NACIMIENTO, EDAD, 
SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA FROM tbcliente;

SELECT DNI, NOMBRE FROM tbcliente;

SELECT NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente;

SELECT NOMBRE AS Nombre_Completo, SEXO AS Género, EDAD AS Años, DIRECCION1 AS Domicilio FROM tbcliente;

SELECT NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente LIMIT 6;

SELECT * FROM tbproducto;

SELECT * FROM tbproducto WHERE SABOR = 'Maracuyá';

SELECT * FROM tbproducto WHERE ENVASE = 'Botella de Vidrio';

UPDATE tbproducto SET SABOR = 'Cítrico' WHERE SABOR = 'Limón';

SELECT * FROM tbproducto WHERE SABOR = 'Limón';

SELECT * FROM tbproducto WHERE SABOR = 'Cítrico';

SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE EDAD > 27;

SELECT * FROM tbcliente WHERE EDAD <= 27;

SELECT * FROM tbcliente WHERE EDAD <> 26;

SELECT * FROM tbcliente WHERE  NOMBRE > 'Erica Carvajo';

SELECT * FROM tbcliente WHERE  NOMBRE <= 'Erica Carvajo';

SELECT * FROM tbproducto;

SELECT * FROM tbproducto WHERE PRECIO_LISTA = 28.51;

SELECT * FROM tbproducto WHERE PRECIO_LISTA < 28.51;

SELECT * FROM tbproducto WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;

SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO = '1995-01-13';

SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO < '1995-01-13';

SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO >= '1995-01-13';

SELECT * FROM tbcliente WHERE YEAR(FECHA_NACIMIENTO) = 1995;

SELECT * FROM tbcliente WHERE DAY(FECHA_NACIMIENTO) = 20;

SELECT * FROM tbproducto;

SELECT * FROM tbproducto WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;

SELECT * FROM tbproducto WHERE PRECIO_LISTA >= 28.49 AND  PRECIO_LISTA <=28.52;

SELECT * FROM tbproducto WHERE ENVASE = 'Lata' OR ENVASE = 'Botella PET';

SELECT * FROM tbproducto WHERE PRECIO_LISTA >= 15 AND  PRECIO_LISTA <=25;

SELECT * FROM tbproducto WHERE (PRECIO_LISTA >= 15 AND  PRECIO_LISTA <=25) OR (ENVASE = 'Lata' OR ENVASE = 'Botella PET');

SELECT * FROM tbproducto WHERE (PRECIO_LISTA >= 15 AND  TAMANO = '1 Litro') OR (ENVASE = 'Lata' OR ENVASE = 'Botella PET');

USE jugos_ventas;

SELECT DNI, NOMBRE, DIRECCION_1, DIRECCION_2, BARRIO, CIUDAD, ESTADO, 
CP, FECHA_DE_NACIMIENTO, EDAD, SEXO, LIMITE_DE_CREDITO, VOLUMEN_DE_COMPRA,
PRIMERA_COMPRA FROM tabla_de_clientes;

SELECT * FROM tabla_de_clientes;

SELECT DNI, NOMBRE FROM tabla_de_clientes;

SELECT DNI AS IDENTIFICACION, NOMBRE AS CLIENTE FROM tabla_de_clientes;

SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos WHERE  SABOR = 'Uva';

SELECT * FROM tabla_de_productos WHERE  SABOR = 'Mango';

SELECT * FROM tabla_de_productos WHERE  ENVASE = 'Botella PET';

SELECT * FROM tabla_de_productos WHERE  ENVASE = 'botella pet';

SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA > 16;

SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA <= 17;

SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA BETWEEN 16 AND 16.02;

/* CONSULTAS CONDICIONALES */

SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos WHERE SABOR='mango' AND TAMANO='470 ml';

SELECT * FROM tabla_de_productos WHERE SABOR='mango' OR TAMANO='470 ml';

SELECT * FROM tabla_de_productos WHERE NOT (SABOR='mango') OR TAMANO='470 ml';

SELECT * FROM tabla_de_productos WHERE NOT (SABOR='mango' AND TAMANO='470 ml');

SELECT * FROM tabla_de_productos WHERE SABOR='mango' AND NOT(TAMANO='470 ml');

SELECT * FROM tabla_de_productos WHERE SABOR IN ('MANGO', 'UVA');

SELECT * FROM tabla_de_productos WHERE SABOR = 'MANGO' OR  SABOR ='UVA';

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de México', 'Guadalajara');

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de México', 'Guadalajara')
AND EDAD > 21;

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de México', 'Guadalajara')
AND EDAD BETWEEN 20 AND 25;

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de México', 'Guadalajara')
AND (EDAD BETWEEN 20 AND 25);

/*CONSULTAS LIKE*/

SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana';

SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana'
AND ENVASE = 'Botella PET';

/* PROYECTO DEL AULA ANTERIOR 3 
Los comandos vistos en el aula anterior fueron los siguientes:*/

/* CONSULTAS DISTINCT */

SELECT ENVASE, TAMANO FROM tabla_de_productos;

SELECT DISTINCT ENVASE, TAMANO FROM tabla_de_productos;

SELECT DISTINCT ENVASE, TAMANO, SABOR FROM tabla_de_productos
WHERE SABOR = 'Naranja';

/* CONSULTAS LIMIT */

SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos LIMIT 5;

SELECT * FROM tabla_de_productos LIMIT 5,4;

/* CONSULTAS ORDER BY */

SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA;

SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA DESC;

SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO;

SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO DESC;

SELECT * FROM tabla_de_productos ORDER BY ENVASE DESC, NOMBRE_DEL_PRODUCTO ASC;

/* CONSULTAS GROUP BY */

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabla_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes GROUP BY ESTADO;

SELECT ENVASE, PRECIO_DE_LISTA FROM tabla_de_productos;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS MAYOR_PRECIO 
FROM tabla_de_productos GROUP BY ENVASE;

SELECT ENVASE, COUNT(*) FROM tabla_de_productos 
GROUP BY ENVASE;

SELECT BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY BARRIO;

SELECT CIUDAD, BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes WHERE CIUDAD = 'CIUDAD DE MÉXICO'
GROUP BY BARRIO;

SELECT CIUDAD, BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes WHERE CIUDAD = 'GUADALAJARA'
GROUP BY BARRIO;

SELECT ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY ESTADO, BARRIO;

SELECT ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE,
EDAD FROM tabla_de_clientes 
WHERE EDAD >=20
GROUP BY ESTADO, BARRIO
ORDER BY EDAD;

/* CONSULTAS HAVING */

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes GROUP BY ESTADO;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes WHERE LIMITE_TOTAL > 300000
GROUP BY ESTADO;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes 
GROUP BY ESTADO
HAVING LIMITE_TOTAL > 300000;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO 
FROM tabla_de_productos GROUP BY ENVASE;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO 
FROM tabla_de_productos GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) > 80;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO,
SUM(PRECIO_DE_LISTA) AS SUMA_PRECIO
FROM tabla_de_productos GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) > 80;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO,
SUM(PRECIO_DE_LISTA) AS SUMA_PRECIO
FROM tabla_de_productos GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) >= 80 
AND MAX(PRECIO_DE_LISTA) >= 5;

/* CONSULTAS CASE */

SELECT * FROM tabla_de_productos;

SELECT NOMBRE_DEL_PRODUCTO, PRECIO_DE_LISTA,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END AS PRECIO
FROM tabla_de_productos;

SELECT ENVASE, SABOR,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END AS PRECIO, MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO
FROM tabla_de_productos
WHERE TAMANO = '700 ml'
GROUP BY ENVASE,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END
ORDER BY ENVASE;

/* PROYECTO DEL AULA ANTERIOR 4 
Los comandos vistos en el aula anterior fueron los siguientes:*/

/* CONSULTAS INNER JOIN */

SELECT * FROM tabla_de_vendedores;

SELECT * FROM facturas;

SELECT * FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA;

SELECT A.NOMBRE, B.MATRICULA, COUNT(*) FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

SELECT A.NOMBRE, B.MATRICULA, COUNT(*) 
FROM tabla_de_vendedores A, facturas B
WHERE A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

/* CONSULTAS LEFT Y RIGHT JOIN */

SELECT count(*) FROM tabla_de_clientes;

SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI FROM tabla_de_clientes A
INNER JOIN
facturas B
ON A.DNI = B.DNI;

SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI FROM tabla_de_clientes A
LEFT JOIN
facturas B
ON A.DNI = B.DNI
WHERE B.DNI IS NULL;

SELECT DISTINCT B.DNI, B.NOMBRE, B.CIUDAD, A.DNI FROM facturas A
RIGHT JOIN
tabla_de_clientes B
ON A.DNI = B.DNI
WHERE A.DNI IS NULL;

/* CONSULTAS CROSS JOIN */

SELECT count(*) FROM tabla_de_clientes;

SELECT * FROM tabla_de_vendedores;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE
FROM tabla_de_clientes
INNER JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
FULL JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes, tabla_de_vendedores;

/* CONSULTAS UNION Y FULL JOIN */

SELECT DISTINCT BARRIO FROM tabla_de_clientes;

SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO  FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_CLIENTE FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO_VENDEDOR  FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_CLIENTE, DNI FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO_VENDEDOR, MATRICULA  FROM tabla_de_vendedores;

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

/* SUBCONSULTAS */

SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT * FROM tabla_de_clientes
WHERE BARRIO IN ('Condesa','Del Valle','Contadero','Oblatos');

SELECT * FROM tabla_de_clientes
WHERE BARRIO IN (SELECT DISTINCT BARRIO FROM tabla_de_vendedores);

SELECT ENVASE, MAX(PRECIO_DE_LISTA) 
AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE;

SELECT X.ENVASE, X.PRECIO_MAXIMO FROM
(SELECT ENVASE, MAX(PRECIO_DE_LISTA) 
AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE) X
WHERE X.PRECIO_MAXIMO >=10;

/* VIEWS */

SELECT ENVASE, MAX(PRECIO_DE_LISTA) 
AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE;

SELECT X.ENVASE, X. PRECIO_MAXIMO FROM
vw_envases_grandes X 
WHERE PRECIO_MAXIMO >=10;

SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA, 
B.PRECIO_MAXIMO FROM tabla_de_productos A
INNER JOIN
vw_envases_grandes B
ON A.ENVASE = B.ENVASE;

SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA, 
((A.PRECIO_DE_LISTA/B.PRECIO_MAXIMO)-1)*100 AS PORCENTAJE_DE_VARIACION FROM tabla_de_productos A
INNER JOIN
vw_envases_grandes B
ON A.ENVASE = B.ENVASE;

/* PROYECTO DEL AULA ANTERIOR 5 

Los comandos vistos en el aula anterior fueron los siguientes:*/

/* FUNCIONES STRING */

SELECT LTRIM("    MySQL es fácil");

SELECT RTRIM("MySQL es fácil    ");

SELECT TRIM("    MySQL es fácil    ");

SELECT CONCAT("MySQL es fácil,", " no lo crees?");

SELECT UPPER("mysql es una base de datos interesante.");

SELECT LOWER("MYSQL ES UNA BASE DE DATOS INTERESANTE.");

SELECT SUBSTRING("mysql es una base de datos interesante.", 14,4);

SELECT CONCAT(NOMBRE, " ", DNI) FROM tabla_de_clientes;

/* FUNCIONES DATE */

SELECT CURDATE();

SELECT current_timestamp();

SELECT YEAR(current_timestamp());

SELECT MONTH(current_timestamp());

SELECT DAY(current_timestamp());

SELECT MONTHNAME(current_timestamp());

SELECT DAYNAME(current_timestamp());

SELECT DATEDIFF(current_timestamp(), "2021-01-01") AS DIFERENCIA_DE_DIAS;

SELECT DATEDIFF(current_timestamp(), "1984-06-20") AS DIFERENCIA_DE_DIAS;

SELECT current_timestamp() AS DIA_HOY, 
DATE_SUB(current_timestamp(), INTERVAL 1 MONTH) AS RESULTADO;

SELECT DISTINCT FECHA_VENTA,
DAYNAME(FECHA_VENTA) AS DIA, MONTHNAME(FECHA_VENTA) AS MES, 
YEAR(FECHA_VENTA) AS AÑO FROM facturas;

/* FUNCIONES MATEMÁTICAS */

SELECT (34+346-67)/15 * 29 AS RESULTADO;

SELECT CEILING (23.1222);

SELECT FLOOR (23.999999);

SELECT RAND() AS RESULTADO;

SELECT ROUND(254.545,2);

SELECT ROUND(254.545,1);

SELECT NUMERO, CANTIDAD, PRECIO, 
CANTIDAD * PRECIO AS FACTURACIÓN FROM items_facturas;

SELECT NUMERO, CANTIDAD, PRECIO, 
ROUND(CANTIDAD * PRECIO,2) AS FACTURACIÓN FROM items_facturas;

/* FUNCIONES CONVERSIÓN */

SELECT CURRENT_TIMESTAMP() AS RESULTADO;

SELECT CONCAT("La fecha y la hora de hoy son: ", CURRENT_TIMESTAMP()) AS RESULTADO;

SELECT CONCAT("La fecha y el horario son: ",
DATE_FORMAT(CURRENT_TIMESTAMP(),"%W, %d/%m/%Y a las %T" )) AS RESULTADO;

SELECT CONVERT(23.45, CHAR) AS RESULTADO;

SELECT SUBSTRING(CONVERT(23.45, CHAR),3,1) AS RESULTADO;

/* ****PROYECTO FINAL**** */

/* INFORME MENSUAL DE VENTAS VÁLIDAS*/

SELECT * FROM facturas;

SELECT * FROM items_facturas;

SELECT F.DNI, F.FECHA_VENTA, IFa.CANTIDAD FROM facturas F 
INNER JOIN 
items_facturas IFa
ON F.NUMERO = IFa.NUMERO;

SELECT F.DNI, DATE_FORMAT(F.FECHA_VENTA, "%m - %Y") AS MES_AÑO, IFa.CANTIDAD FROM facturas F 
INNER JOIN 
items_facturas IFa
ON F.NUMERO = IFa.NUMERO;

/*CANTIDAD DE VENTAS POR MES PARA CADA CLIENTE*/
SELECT F.DNI, DATE_FORMAT(F.FECHA_VENTA, "%m - %Y") AS MES_AÑO, 
SUM(IFa.CANTIDAD) AS CANTIDAD_VENDIDA FROM facturas F 
INNER JOIN 
items_facturas IFa
ON F.NUMERO = IFa.NUMERO
GROUP BY
F.DNI, DATE_FORMAT(F.FECHA_VENTA, "%m - %Y");

/* LIMITE DE VENTAS POR CLIENTE (VOLUMEN EN DECILITROS)*/
SELECT * FROM tabla_de_clientes TC;

SELECT DNI, NOMBRE, VOLUMEN_DE_COMPRA FROM tabla_de_clientes TC;  

SELECT F.DNI, TC.NOMBRE, DATE_FORMAT(F.FECHA_VENTA, "%m - %Y") AS MES_AÑO, 
SUM(IFa.CANTIDAD) AS CANTIDAD_VENDIDA, 
MAX(VOLUMEN_DE_COMPRA)/10 AS CANTIDAD_MAXIMA  
FROM facturas F 
INNER JOIN 
items_facturas IFa
ON F.NUMERO = IFa.NUMERO
INNER JOIN 
tabla_de_clientes TC
ON TC.DNI = F.DNI
GROUP BY
F.DNI, TC.NOMBRE, DATE_FORMAT(F.FECHA_VENTA, "%m - %Y");

SELECT A.DNI, A.NOMBRE, A.MES_AÑO, 
A.CANTIDAD_VENDIDA - A.CANTIDAD_MAXIMA AS DIFERENCIA FROM(
SELECT F.DNI, TC.NOMBRE, DATE_FORMAT(F.FECHA_VENTA, "%m - %Y") AS MES_AÑO, 
SUM(IFa.CANTIDAD) AS CANTIDAD_VENDIDA, 
MAX(VOLUMEN_DE_COMPRA)/10 AS CANTIDAD_MAXIMA  
FROM facturas F 
INNER JOIN 
items_facturas IFa
ON F.NUMERO = IFa.NUMERO
INNER JOIN 
tabla_de_clientes TC
ON TC.DNI = F.DNI
GROUP BY
F.DNI, TC.NOMBRE, DATE_FORMAT(F.FECHA_VENTA, "%m - %Y"))A;

SELECT A.DNI, A.NOMBRE, A.MES_AÑO, 
A.CANTIDAD_VENDIDA - A.CANTIDAD_MAXIMA AS DIFERENCIA,
CASE
   WHEN  (A.CANTIDAD_VENDIDA - A.CANTIDAD_MAXIMA) <= 0 THEN 'Venta Válida'
   ELSE 'Venta Inválida'
END AS STATUS_VENTA
 FROM(
SELECT F.DNI, TC.NOMBRE, DATE_FORMAT(F.FECHA_VENTA, "%m - %Y") AS MES_AÑO, 
SUM(IFa.CANTIDAD) AS CANTIDAD_VENDIDA, 
MAX(VOLUMEN_DE_COMPRA)/10 AS CANTIDAD_MAXIMA  
FROM facturas F 
INNER JOIN 
items_facturas IFa
ON F.NUMERO = IFa.NUMERO
INNER JOIN 
tabla_de_clientes TC
ON TC.DNI = F.DNI
GROUP BY
F.DNI, TC.NOMBRE, DATE_FORMAT(F.FECHA_VENTA, "%m - %Y"))A;



/* INFORME ANUAL DE VENTAS POR SABOR*/

SELECT P.SABOR, IFa.CANTIDAD, F.FECHA_VENTA FROM
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN
facturas F
ON F.NUMERO = IFa.NUMERO;

/* CANTIDAD VENDIDA POR SABOR AÑO 2016*/
SELECT P.SABOR, SUM(IFa.CANTIDAD) AS CANTIDAD_TOTAL, 
YEAR(F.FECHA_VENTA) AS AÑO FROM
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN
facturas F
ON F.NUMERO = IFa.NUMERO
WHERE YEAR(F.FECHA_VENTA) = 2016
GROUP BY P.SABOR, YEAR(F.FECHA_VENTA)
ORDER BY SUM(IFa.CANTIDAD) DESC;

SELECT SUM(IFa.CANTIDAD) AS CANTIDAD_TOTAL, 
YEAR(F.FECHA_VENTA) AS AÑO FROM
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN
facturas F
ON F.NUMERO = IFa.NUMERO
WHERE YEAR(F.FECHA_VENTA) = 2016
GROUP BY YEAR(F.FECHA_VENTA);

/* CANTIDAD VENDIDA POR SABOR AÑO 2016*/
SELECT * FROM (
SELECT P.SABOR, SUM(IFa.CANTIDAD) AS CANTIDAD_TOTAL, 
YEAR(F.FECHA_VENTA) AS AÑO FROM
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN
facturas F
ON F.NUMERO = IFa.NUMERO
WHERE YEAR(F.FECHA_VENTA) = 2016
GROUP BY P.SABOR, YEAR(F.FECHA_VENTA)
ORDER BY SUM(IFa.CANTIDAD) DESC) VENTAS_SABOR
INNER JOIN (
SELECT SUM(IFa.CANTIDAD) AS CANTIDAD_TOTAL, 
YEAR(F.FECHA_VENTA) AS AÑO FROM
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN
facturas F
ON F.NUMERO = IFa.NUMERO
WHERE YEAR(F.FECHA_VENTA) = 2016
GROUP BY YEAR(F.FECHA_VENTA)) VENTA_TOTAL
ON VENTA_TOTAL.AÑO = VENTAS_SABOR.AÑO;


SELECT VENTAS_SABOR.SABOR, VENTAS_SABOR.AÑO, VENTAS_SABOR.CANTIDAD_TOTAL,
ROUND((VENTAS_SABOR.CANTIDAD_TOTAL/VENTA_TOTAL.CANTIDAD_TOTAL)*100,2) 
AS PORCENTAJE FROM (
SELECT P.SABOR, SUM(IFa.CANTIDAD) AS CANTIDAD_TOTAL, 
YEAR(F.FECHA_VENTA) AS AÑO FROM
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN
facturas F
ON F.NUMERO = IFa.NUMERO
WHERE YEAR(F.FECHA_VENTA) = 2016
GROUP BY P.SABOR, YEAR(F.FECHA_VENTA)
ORDER BY SUM(IFa.CANTIDAD) DESC) VENTAS_SABOR
INNER JOIN (
SELECT SUM(IFa.CANTIDAD) AS CANTIDAD_TOTAL, 
YEAR(F.FECHA_VENTA) AS AÑO FROM
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN
facturas F
ON F.NUMERO = IFa.NUMERO
WHERE YEAR(F.FECHA_VENTA) = 2016
GROUP BY YEAR(F.FECHA_VENTA)) VENTA_TOTAL
ON VENTA_TOTAL.AÑO = VENTAS_SABOR.AÑO
ORDER BY VENTAS_SABOR.CANTIDAD_TOTAL DESC;