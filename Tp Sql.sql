create database veterinaria;
use veterinaria;


CREATE TABLE `Dueno` (
  `dni` int NOT NULL PRIMARY KEY,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `telefono` bigint NOT NULL,
  `direccion` varchar(200) NULL
);

CREATE TABLE `Historial` (
  `id_historial` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `fecha` datetime NOT NULL,
  `perro` int NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `monto` float NOT NULL
);

-- Cambiar el id de perro a igual 10


CREATE TABLE `Perro` (
  `id_perro` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` varchar(150) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `dni_dueno` int NOT NULL
);

INSERT INTO Perro VALUES (10);