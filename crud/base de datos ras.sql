create database ras;
use ras;
CREATE TABLE `anfibios` (
  `cod_anfibios` int(11) NOT NULL,
  `habitos` varchar(100) DEFAULT NULL,
  `habitat` varchar(100) DEFAULT NULL,
  `veneno` varchar(2) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nombre_cientifico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `avistador` (
  `Codigo_avistador` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `cedula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `avistar` (
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `lugar` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `imagen` char(100) DEFAULT NULL,
  `no_ataco` varchar(2) DEFAULT NULL,
  `ataco` varchar(2) DEFAULT NULL,
  `codigo_avistador` int(11) DEFAULT NULL,
  `cod_especie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `p_siga` (
  `codigo_siga` int(11) NOT NULL,
  `correo electronico` varchar(100) DEFAULT NULL,
  `rango` varchar(100) DEFAULT NULL,
  `ocupacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `registra` (
  `nombre` varchar(100) DEFAULT NULL,
  `nombre_cientifico` varchar(100) DEFAULT NULL,
  `veneno` varchar(2) DEFAULT NULL,
  `habitos` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `imagen` char(100) DEFAULT NULL,
  `cod_siga` int(11) DEFAULT NULL,
  `cod_especie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `reptiles` (
  `cod_reptiles` int(11) NOT NULL,
  `habitos` varchar(100) DEFAULT NULL,
  `escamas` varchar(2) DEFAULT NULL,
  `habitad` varchar(100) DEFAULT NULL,
  `veneno` varchar(2) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nombre_cientifico` varchar(100) DEFAULT NULL,
  `cola_terminal` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `anfibios`
  ADD PRIMARY KEY (`cod_anfibios`);

ALTER TABLE `avistador`
  ADD PRIMARY KEY (`Codigo_avistador`);

ALTER TABLE `avistar`
  ADD KEY `codigo_avistador` (`codigo_avistador`),
  ADD KEY `cod_especie` (`cod_especie`);

ALTER TABLE `p_siga`
  ADD PRIMARY KEY (`codigo_siga`);

ALTER TABLE `registra`
  ADD KEY `cod_siga` (`cod_siga`),
  ADD KEY `cod_especie` (`cod_especie`);

ALTER TABLE `reptiles`
  ADD PRIMARY KEY (`cod_reptiles`);



ALTER TABLE `avistar`
  ADD CONSTRAINT `avistar` FOREIGN KEY (`codigo_avistador`) REFERENCES `avistador` (`Codigo_avistador`);

ALTER TABLE `registra`
  ADD CONSTRAINT `registra` FOREIGN KEY (`cod_siga`) REFERENCES `p_siga` (`codigo_siga`);




