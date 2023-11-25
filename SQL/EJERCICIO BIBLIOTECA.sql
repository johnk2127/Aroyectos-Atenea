CREATE TABLE `autor` (
  `id` int PRIMARY KEY,
  `nombre` varchar(50),
  `apellido` varchar(50),
  `fecha_nacimiento` date,
  `corre` varchar(50),
  `editorial_id` int
);

CREATE TABLE `documento` (
  `numero` int,
  `tipo_documento` int,
  `fecha_expedicion` date,
  `lugar_expedicion` varchar(50),
  `autor_id` int,
  PRIMARY KEY (`numero`, `tipo_documento`)
);

CREATE TABLE `editorial` (
  `id` int PRIMARY KEY,
  `nombre` varchar(50),
  `direccion` varchar(50),
  `telefono` int
);

CREATE TABLE `libro` (
  `codigo_barras` int PRIMARY KEY,
  `nombre` varchar(50),
  `fecha_lanzamiento` date
);

ALTER TABLE `documento` ADD FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`);

ALTER TABLE `autor` ADD FOREIGN KEY (`editorial_id`) REFERENCES `editorial` (`id`);

CREATE TABLE `libro_autor` (
  `libro_codigo_barras` int,
  `autor_id` int,
  PRIMARY KEY (`libro_codigo_barras`, `autor_id`)
);

ALTER TABLE `libro_autor` ADD FOREIGN KEY (`libro_codigo_barras`) REFERENCES `libro` (`codigo_barras`);

ALTER TABLE `libro_autor` ADD FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`);

