-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2019 a las 05:05:47
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `id_localidad` smallint(5) NOT NULL,
  `partido` tinyint(5) NOT NULL,
  `localidad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`id_localidad`, `partido`, `localidad`) VALUES
(1, 1, 'LOCALIDAD 1 '),
(2, 1, 'LOCALIDAD 2 '),
(3, 2, 'LOCALIDAD 3'),
(4, 2, 'LOCALIDAD 4'),
(5, 1, 'LOCALIDAD 5'),
(6, 2, 'LOCALIDAD 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id_partido` tinyint(5) NOT NULL,
  `partido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id_partido`, `partido`) VALUES
(1, 'PARTIDO1'),
(2, 'PARTIDO2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubros`
--

CREATE TABLE `rubros` (
  `id_rubro` smallint(5) NOT NULL,
  `rubro` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rubros`
--

INSERT INTO `rubros` (`id_rubro`, `rubro`) VALUES
(1, 'asistencia'),
(2, 'hogar'),
(3, 'eventos'),
(4, 'artesanal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` smallint(5) NOT NULL,
  `id_usuario` smallint(5) NOT NULL,
  `id_rubro` smallint(5) NOT NULL,
  `nombre_servicio` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_servicio` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` char(255) COLLATE utf8_spanish2_ci NOT NULL,
  `partido` tinyint(5) NOT NULL,
  `localidad` smallint(5) NOT NULL,
  `direccion` char(255) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` tinyint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `id_usuario`, `id_rubro`, `nombre_servicio`, `descripcion_servicio`, `imagen`, `partido`, `localidad`, `direccion`, `telefono`) VALUES
(1, 8, 1, 'SERVICIO1', 'DESC SERV1', 'images/laptop.jpg', 1, 1, 'DIRECCION 1', NULL),
(2, 9, 2, 'SERVICIO2', 'DESC SERV2', 'images/acuerdo.jpg', 2, 2, 'DIRECCION 2', NULL),
(3, 10, 3, 'SERVICIO 3', 'DESCRIPCION DEL SERVICIO NUMERO 3', 'images/busqueda.jpg', 2, 6, 'adadasd 213e', NULL),
(4, 11, 4, 'SERVICIO4', 'ESTA ES LA DESCRIPCIÓN del servicio 4', 'images/laptop.jpg', 2, 1, 'asdad a23433 aa ada', NULL),
(5, 12, 1, 'SERVICIO5', 'MASCOTAS', 'images/acuerdo.jpg', 1, 6, 'sadfhj 43', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` smallint(5) NOT NULL,
  `nombre` char(30) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` char(30) COLLATE utf8_spanish2_ci NOT NULL,
  `mail` char(30) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` int(15) DEFAULT NULL,
  `servicio` varchar(2) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `mail`, `password`, `telefono`, `servicio`) VALUES
(8, 'NOM1', 'APEL2', 'usuario1@usuario1.com', '123456', NULL, 'NO'),
(9, 'NOM2', 'APEL2', 'usuario2@usuario.com', '123456', NULL, 'NO'),
(10, 'NOM3', 'APEL3', 'usuario3@usuario.com', '123456', NULL, 'SI'),
(11, 'NOM4', 'APEL4', 'usuario4@usuario.com', '123456', NULL, 'SI'),
(12, 'NOM5', 'APEL5', 'ASÑDLKAD.@ASKLD.COM', '654321', NULL, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`id_localidad`),
  ADD KEY `partido` (`partido`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`);

--
-- Indices de la tabla `rubros`
--
ALTER TABLE `rubros`
  ADD PRIMARY KEY (`id_rubro`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_rubro` (`id_rubro`),
  ADD KEY `id_usuario_2` (`id_usuario`),
  ADD KEY `partido` (`partido`),
  ADD KEY `localidad` (`localidad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
  MODIFY `id_localidad` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rubros`
--
ALTER TABLE `rubros`
  MODIFY `id_rubro` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD CONSTRAINT `localidad_ibfk_1` FOREIGN KEY (`partido`) REFERENCES `partido` (`id_partido`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `servicios_ibfk_2` FOREIGN KEY (`id_rubro`) REFERENCES `rubros` (`id_rubro`) ON UPDATE CASCADE,
  ADD CONSTRAINT `servicios_ibfk_3` FOREIGN KEY (`partido`) REFERENCES `partido` (`id_partido`) ON UPDATE CASCADE,
  ADD CONSTRAINT `servicios_ibfk_4` FOREIGN KEY (`localidad`) REFERENCES `localidad` (`id_localidad`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
