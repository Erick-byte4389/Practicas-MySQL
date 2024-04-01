CREATE DATABASE Tienda;
USE Tienda;

DROP TABLE IF EXISTS `piezas`;
CREATE TABLE IF NOT EXISTS `piezas` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
);

INSERT INTO `piezas` (`Codigo`, `Nombre`) VALUES
(101, 'ACEITE'),
(102, 'AGUA NATURAL'),
(103, 'ATUN'),
(104, 'CAFÉ'),
(105, 'CHILES DE LATA'),
(106, 'DETERGENTES'),
(107, 'AZUCAR'),
(108, 'FRIJOLES'),
(109, 'GALLETAS'),
(110, 'HARINA');

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id` char(4) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `proveedores` (`id`, `Nombre`) VALUES
('300', 'YAKULT'),
('301', 'MCCORMICK'),
('302', 'TANG'),
('303', 'NESQUIK'),
('304', 'NUTRILECHE'),
('305', 'LALA'),
('306', 'MODELO'),
('307', 'COCACOLA'),
('308', 'JUMEX'),
('309', 'SIGMA'),
('310', 'DOLORES');

DROP TABLE IF EXISTS `suministra`;
CREATE TABLE IF NOT EXISTS `suministra` (
  `CodigoPieza` int NOT NULL,
  `idProveedor` char(4) DEFAULT NULL,
  `Precio` int DEFAULT NULL,
  PRIMARY KEY (`CodigoPieza`),
  FOREIGN KEY (`CodigoPieza`) REFERENCES `piezas` (`Codigo`),
  FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`id`)
);

INSERT INTO `suministra` (`CodigoPieza`, `idProveedor`, `Precio`) VALUES
(101, '300', 1500),
(100, '302', 2500),
(105, '305', 3000),
(106, '305', 400),
(107, '305', 500),
(108, '309', 1850),
(109, '309', 8500),
(110, '300', 5560),
(102, '310', 1200),
(103, '304', 420),
(104, '301', 352);

COMMIT;

SELECT * FROM piezas;

SELECT *FROM proveedores;

SELECT *FROM suministra;


