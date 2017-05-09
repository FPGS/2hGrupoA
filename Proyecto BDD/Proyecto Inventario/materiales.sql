-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-05-2017 a las 08:22:32
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `materiales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impresoras`
--

CREATE TABLE IF NOT EXISTS `impresoras` (
  `idReferencia` int(10) NOT NULL,
  `tipo` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `consumible` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idReferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE IF NOT EXISTS `incidencias` (
  `idIncidencia` int(11) NOT NULL AUTO_INCREMENT,
  `fechaIncidencia` date NOT NULL,
  `incidencia` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fechaSolucion` date NOT NULL,
  `solucion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `idmaterial` int(11) NOT NULL,
  PRIMARY KEY (`idIncidencia`),
  KEY `idmaterial` (`idmaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE IF NOT EXISTS `materiales` (
  `idmaterial` int(10) NOT NULL AUTO_INCREMENT,
  `aparato` text COLLATE utf8_unicode_ci NOT NULL,
  `idProveedor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idMarca` int(10) NOT NULL,
  `modelo` text COLLATE utf8_unicode_ci NOT NULL,
  `numSerie` text COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(10) NOT NULL,
  `numInterno` text COLLATE utf8_unicode_ci NOT NULL,
  `idAutorizador` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `idUbicacion` int(10) NOT NULL,
  `garantia` text COLLATE utf8_unicode_ci NOT NULL,
  `fechaBaja` date NOT NULL,
  `observaciones` text COLLATE utf8_unicode_ci NOT NULL,
  `fechaEntrada` date NOT NULL,
  PRIMARY KEY (`idmaterial`),
  UNIQUE KEY `idProveedor` (`idProveedor`),
  UNIQUE KEY `idMarca` (`idMarca`),
  UNIQUE KEY `idAutorizador` (`idAutorizador`),
  UNIQUE KEY `idUbicacion` (`idUbicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitores`
--

CREATE TABLE IF NOT EXISTS `monitores` (
  `idReferencia` int(10) NOT NULL,
  `tamaño` int(11) NOT NULL COMMENT 'En pulgadas',
  `tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `idReferencia` (`idReferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenadores`
--

CREATE TABLE IF NOT EXISTS `ordenadores` (
  `idReferencia` int(10) NOT NULL,
  `placa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `procesador` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `discoduro` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tarjetas` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `dominio` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `idReferencia` (`idReferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE IF NOT EXISTS `proveedores` (
  `idProveedor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisiones`
--

CREATE TABLE IF NOT EXISTS `revisiones` (
  `idRevision` int(11) NOT NULL AUTO_INCREMENT,
  `fechaRevision` date NOT NULL,
  `revisor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `idmaterial` int(10) NOT NULL,
  PRIMARY KEY (`idRevision`),
  UNIQUE KEY `revisor` (`revisor`),
  UNIQUE KEY `idmateriales` (`idmaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `software`
--

CREATE TABLE IF NOT EXISTS `software` (
  `idSoftware` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `tipoLicencia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `observaciones` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `fechaFin` date NOT NULL,
  PRIMARY KEY (`idSoftware`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `softwareinstalado`
--

CREATE TABLE IF NOT EXISTS `softwareinstalado` (
  `idReferencia` int(10) NOT NULL,
  `idSoftware` int(10) NOT NULL,
  UNIQUE KEY `idReferencia` (`idReferencia`,`idSoftware`),
  KEY `idSoftware` (`idSoftware`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE IF NOT EXISTS `ubicacion` (
  `idUbicacion` int(11) NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idUbicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `dni` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contraseña` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `tipoUsuario` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `impresoras`
--
ALTER TABLE `impresoras`
  ADD CONSTRAINT `impresoras_ibfk_1` FOREIGN KEY (`idReferencia`) REFERENCES `materiales` (`idmaterial`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD CONSTRAINT `incidencias_ibfk_1` FOREIGN KEY (`idmaterial`) REFERENCES `materiales` (`idmaterial`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materiales_ibfk_2` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materiales_ibfk_3` FOREIGN KEY (`idUbicacion`) REFERENCES `ubicacion` (`idUbicacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materiales_ibfk_4` FOREIGN KEY (`idAutorizador`) REFERENCES `usuarios` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `monitores`
--
ALTER TABLE `monitores`
  ADD CONSTRAINT `monitores_ibfk_1` FOREIGN KEY (`idReferencia`) REFERENCES `materiales` (`idmaterial`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ordenadores`
--
ALTER TABLE `ordenadores`
  ADD CONSTRAINT `ordenadores_ibfk_1` FOREIGN KEY (`idReferencia`) REFERENCES `materiales` (`idmaterial`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `revisiones`
--
ALTER TABLE `revisiones`
  ADD CONSTRAINT `revisiones_ibfk_1` FOREIGN KEY (`idmaterial`) REFERENCES `materiales` (`idmaterial`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `softwareinstalado`
--
ALTER TABLE `softwareinstalado`
  ADD CONSTRAINT `softwareinstalado_ibfk_1` FOREIGN KEY (`idReferencia`) REFERENCES `ordenadores` (`idReferencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `softwareinstalado_ibfk_2` FOREIGN KEY (`idSoftware`) REFERENCES `software` (`idSoftware`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
