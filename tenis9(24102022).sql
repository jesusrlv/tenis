-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-10-2022 a las 22:48:09
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tenis9`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`id`, `color`) VALUES
(1, 'Azul'),
(2, 'Amarillo'),
(3, 'Rojo'),
(4, 'Naranja'),
(5, 'Verde'),
(6, 'Blanco'),
(7, 'Magenta'),
(8, 'Cian'),
(9, 'Morado'),
(10, 'Negro'),
(11, 'Violeta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `id_ext_tenis` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `talla` int(11) NOT NULL,
  `color` int(11) DEFAULT NULL,
  `venta_gral` int(11) DEFAULT NULL,
  `venta_individual` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `id_ext_tenis`, `cantidad`, `talla`, `color`, `venta_gral`, `venta_individual`, `fecha`) VALUES
(1, 1, 3, 12, NULL, NULL, NULL, NULL),
(2, 0, 5, 13, NULL, NULL, NULL, NULL),
(3, 18, 4, 12, NULL, NULL, NULL, NULL),
(4, 18, 4, 13, NULL, NULL, NULL, NULL),
(5, 18, 4, 14, NULL, NULL, NULL, NULL),
(6, 18, 8, 15, NULL, NULL, NULL, NULL),
(7, 18, 7, 16, NULL, NULL, NULL, NULL),
(8, 18, 0, 17, NULL, NULL, NULL, NULL),
(9, 18, 9, 18, NULL, NULL, NULL, NULL),
(10, 18, 1, 19, NULL, NULL, NULL, NULL),
(11, 18, 5, 20, NULL, NULL, NULL, NULL),
(12, 18, 5, 21, NULL, NULL, NULL, NULL),
(13, 18, 3, 22, NULL, NULL, NULL, NULL),
(14, 18, 1, 23, NULL, NULL, NULL, NULL),
(15, 18, 8, 24, NULL, NULL, NULL, NULL),
(16, 18, 1, 25, NULL, NULL, NULL, NULL),
(17, 18, 1, 26, NULL, NULL, NULL, NULL),
(18, 18, 1, 27, NULL, NULL, NULL, NULL),
(19, 18, 5, 28, NULL, NULL, NULL, NULL),
(20, 18, 9, 29, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `id_ext_tenis` int(11) NOT NULL,
  `id_ext_usr` int(11) NOT NULL,
  `estatus_apartado` int(11) NOT NULL,
  `estatus_entrega` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla`
--

CREATE TABLE `talla` (
  `id` int(11) NOT NULL,
  `talla` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `talla`
--

INSERT INTO `talla` (`id`, `talla`, `tipo`) VALUES
(1, 12, 'infantil'),
(2, 13, 'infantil'),
(3, 14, 'infantil'),
(4, 15, 'infantil'),
(5, 16, 'infantil'),
(6, 17, 'infantil'),
(7, 18, 'infantil'),
(8, 19, 'infantil'),
(9, 20, 'adulto'),
(10, 21, 'adulto'),
(11, 22, 'adulto'),
(12, 23, 'adulto'),
(13, 24, 'adulto'),
(14, 25, 'adulto'),
(15, 26, 'adulto'),
(16, 27, 'adulto'),
(17, 28, 'adulto'),
(18, 29, 'adulto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tallaInv`
--

CREATE TABLE `tallaInv` (
  `id` int(11) NOT NULL,
  `talla` varchar(4) NOT NULL,
  `id_ext` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tallaInv`
--

INSERT INTO `tallaInv` (`id`, `talla`, `id_ext`, `cantidad`) VALUES
(1, 'Azul', 1, 4),
(2, '27', 1, 12),
(3, '12', 4, 30),
(4, 'adul', 16, 9),
(5, 'jove', 16, 10),
(6, '10 b', 2, 3),
(7, '10 n', 2, 0),
(8, '', 2, 0),
(9, '30', 16, 100),
(10, '12', 368, 2),
(11, '18', 368, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tenis`
--

CREATE TABLE `tenis` (
  `id` int(11) NOT NULL,
  `clasificacion` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tamanio` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `color2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color5` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formas` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `material` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hombre_mujer` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `talla` int(11) DEFAULT NULL,
  `img` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `precio_general` int(11) DEFAULT NULL,
  `precio_prov` int(11) DEFAULT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tenis`
--

INSERT INTO `tenis` (`id`, `clasificacion`, `tamanio`, `marca`, `modelo`, `tipo`, `color`, `color2`, `color3`, `color4`, `color5`, `formas`, `material`, `hombre_mujer`, `talla`, `img`, `precio_general`, `precio_prov`, `estatus`) VALUES
(1, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'ROJO', 'GRIS', '', '', '', 'Sin formas 2', 'VINIPIEL', 'UNISEX', 0, '1.png', 0, 0, 1),
(2, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROJO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '2.png', 0, 0, 1),
(3, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROSA PALO', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '3.png', 0, 0, 0),
(4, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROSA PALO', 'ORO', 'GRIS', '', '', 'VINIPIEL', 'MUJER', 0, '4.png', 0, 0, 0),
(5, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'ROJO', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '5.png', 0, 0, 0),
(6, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '6.png', 0, 0, 0),
(7, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '7.png', 0, 0, 0),
(8, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '8.png', 0, 0, 0),
(9, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'GRIS', 'ROSA', '', '', '', 'VINIPIEL', 'MUJER', 0, '9.png', 0, 0, 0),
(10, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'AMARILLO', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '10.png', 0, 0, 0),
(11, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '11.png', 0, 0, 0),
(12, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'LILA', 'NEGRO', '', '', '', 'VINIPIEL', 'MUJER', 0, '12.png', 0, 0, 0),
(13, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROJO', 'AZUL', 'NEGRO', 'AMARILLO', '', 'VINIPIEL', 'UNISEX', 0, '13.png', 0, 0, 0),
(14, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'NEGRO', 'GRIS', '', '', '', 'VINIPIEL', 'UNISEX', 0, '14.png', 0, 0, 0),
(15, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'ARCOIRIS', '', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '15.png', 0, 0, 0),
(16, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROSA PALO', 'NEGRO', '', '', '', 'VINIPIEL', 'MUJER', 0, '16.png', 0, 0, 0),
(17, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'GRIS', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '17.png', 0, 0, 0),
(18, 'TENIS', 'INFANTIL', 'PUMA', '', 'CHOCLO', 'BLANCO', 'GRIS', 'AZUL', 'ROJO', '', '', 'VINIPIEL', 'UNISEX', 0, '18.png', 0, 0, 1),
(19, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'MENTA', 'ORO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '19.png', 0, 0, 0),
(20, 'TENIS', 'INFANTIL', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO', 'NEGRO', 'ROJO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '20.png', 0, 0, 0),
(21, 'TENIS', 'INFANTIL', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO', 'GRIS', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '21.png', 0, 0, 0),
(22, 'TENIS', 'INFANTIL', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO', 'GRIS', 'SALMON', '', '', '', 'VINIPIEL', 'UNISEX', 0, '22.png', 0, 0, 0),
(23, 'TENIS', 'INFANTIL', 'NIKE', '', 'BOTA', 'BLANCO', 'ROJO', 'AZUL', 'AMARILLO', 'VERDE', '', 'VINIPIEL', 'UNISEX', 0, '23.png', 0, 0, 0),
(24, 'TENIS', 'INFANTIL', 'NIKE', '', 'BOTA', 'BLANCO', 'AMARILLO', 'TURQUEZA', 'LILA', 'MENTA', '', 'VINIPIEL', 'MUJER', 0, '24.png', 0, 0, 0),
(25, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '25.png', 0, 0, 0),
(26, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'LONA', 'UNISEX', 0, '26.png', 0, 0, 0),
(27, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '27.png', 0, 0, 0),
(28, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'BLANCO', 'GRIS', 'AMARILLO', '', '', 'MIKY', 'LONA', 'UNISEX', 0, '28.png', 0, 0, 0),
(29, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'ROSA PALO', 'BLANCO', '', '', '', '', 'LONA', 'MUJER', 0, '29.png', 0, 0, 0),
(30, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'ROSA PALO', 'BLANCO', '', '', '', 'MIMI', 'LONA', 'MUJER', 0, '30.png', 0, 0, 0),
(31, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'BLANCO', 'GRIS', 'ROSA', '', '', 'PARIS', 'LONA', 'MUJER', 0, '31.png', 0, 0, 0),
(32, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '32.png', 0, 0, 0),
(33, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'VINO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '33.png', 0, 0, 0),
(34, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'CHOCLO', 'MARINO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '34.png', 0, 0, 0),
(35, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'BOTA', 'NEGRO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '35.png', 0, 0, 0),
(36, 'TENIS', 'INFANTIL', 'NIKE', 'CORTEZ', 'CHOCLO', 'BLANCO', 'ROJO', 'AZUL', '', '', '', 'VINIPIEL', 'UNISEX', 0, '36.png', 0, 0, 0),
(37, 'TENIS', 'INFANTIL', 'NIKE', 'CORTEZ', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '37.png', 0, 0, 0),
(38, 'TENIS', 'INFANTIL', 'NIKE', 'CORTEZ', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '38.png', 0, 0, 0),
(39, 'TENIS', 'INFANTIL', 'NIKE', '', 'CHOCLO', 'CAMEL', 'BLANCO', '', '', '', '', 'GAMUZA', 'UNISEX', 0, '39.png', 0, 0, 0),
(40, 'TENIS', 'INFANTIL', 'NIKE', 'DEPORTIVO', 'CHOCLO', 'NEGRO', 'BLANCO', 'ROJO', '', '', '', 'MAYA', 'UNISEX', 0, '40.png', 0, 0, 0),
(41, 'TENIS', 'INFANTIL', 'NIKE', 'DEPORTIVO', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'MAYA', 'UNISEX', 0, '41.png', 0, 0, 0),
(42, 'TENIS', 'INFANTIL', 'ADIDAS', 'DEPORTIVO', 'CHOCLO', 'NEGRO', 'ROJO', '', '', '', '', 'SINTETICO', 'HOMBRE', 0, '42.png', 0, 0, 0),
(43, 'TENIS', 'INFANTIL', 'NIKE', 'DEPORTIVO', 'CHOCLO', 'GRIS', 'ROSA', '', '', '', '', 'MAYA', 'MUJER', 0, '43.png', 0, 0, 0),
(44, 'TENIS', 'INFANTIL', 'NIKE', 'DEPORTIVO', 'CHOCLO', 'BLANCO', 'NARANJA', '', '', '', '', 'MAYA', 'UNISEX', 0, '44.png', 0, 0, 0),
(45, 'TENIS', 'INFANTIL', 'NIKE', 'DEPORTIVO', 'CHOCLO', 'LILA', 'GRIS', 'BLANCO', '', '', 'LUCES UNICORNIO', 'TELA', 'MUJER', 0, '45.png', 0, 0, 0),
(46, 'TENIS', 'INFANTIL', 'NIKE', 'DEPORTIVO', 'CHOCLO', 'ROSA', 'BLANCO', '', '', '', 'LUCES BARBIE', 'SINTETICO', 'MUJER', 0, '46.png', 0, 0, 0),
(47, 'TENIS', 'INFANTIL', 'NIKE', 'DEPORTIVO', 'CHOCLO', 'AZUL CIELO', 'ROSA', '', '', '', 'BARBIE', 'SINTETICO', 'MUJER', 0, '47.png', 0, 0, 0),
(48, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'LILA', 'BLANCO', '', '', '', '', 'TELA', 'MUJER', 0, '48.png', 0, 0, 0),
(49, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'ROSA', 'BLANCO', '', '', '', '', 'TELA', 'MUJER', 0, '49.png', 0, 0, 0),
(50, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '50.png', 0, 0, 0),
(51, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'TELA', 'UNISEX', 0, '51.png', 0, 0, 0),
(52, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'ROSA PALO', 'BLANCO', '', '', '', '', 'TELA', 'MUJER', 0, '52.png', 0, 0, 0),
(53, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'MENTA', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '53.png', 0, 0, 0),
(54, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'NEGRO', 'CAMEL', '', '', '', '', 'TELA', 'HOMBRE', 0, '54.png', 0, 0, 0),
(55, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'VINO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '55.png', 0, 0, 0),
(56, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', 'TABLERO', 'TELA', 'UNISEX', 0, '56.png', 0, 0, 0),
(57, 'TENIS', 'INFANTIL', 'VANS', '', 'CHOCLO', 'ROSA', 'BLANCO', '', '', '', 'TABLERO', 'TELA', 'MUJER', 0, '57.png', 0, 0, 0),
(58, 'TENIS', 'INFANTIL', 'NIKE', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '58.png', 0, 0, 0),
(59, 'TENIS', 'INFANTIL', 'NIKE', '', 'CHOCLO', 'ROJO', 'BLANCO', 'NEGRO', '', '', '', 'TELA', 'UNISEX', 0, '59.png', 0, 0, 0),
(60, 'TENIS', 'INFANTIL', 'NIKE', '', 'CHOCLO', 'ROSA PALO', 'BLANCO', '', '', '', '', 'TELA', 'MUJER', 0, '60.png', 0, 0, 0),
(61, 'BOTA INDUSTRIAL', 'INFANTIL', 'CATERPILLAR', '', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'PIEL', 'HOMBRE', 0, '61.png', 0, 0, 0),
(62, 'TENIS', 'ADULTO', 'VANS', '', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '62.png', 0, 0, 0),
(63, 'TENIS', 'ADULTO', 'VANS', '', 'CHOCLO', 'MARINO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '63.png', 0, 0, 0),
(64, 'TENIS', 'ADULTO', 'VANS', '', 'CHOCLO', 'VINO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '64.png', 0, 0, 0),
(65, 'TENIS', 'ADULTO', 'VANS', '', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'TELA', 'UNISEX', 0, '65.png', 0, 0, 0),
(66, 'TENIS', 'ADULTO', 'VANS', '', 'CHOCLO', 'ROJO TOTAL', '', '', '', '', '', 'TELA', 'UNISEX', 0, '66.png', 0, 0, 0),
(67, 'TENIS', 'ADULTO', 'VANS', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '67.png', 0, 0, 0),
(68, 'TENIS', 'ADULTO', 'VANS', '', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', 'LETRAS', 'TELA', 'UNISEX', 0, '68.png', 0, 0, 0),
(69, 'TENIS', 'ADULTO', 'VANS', '', 'CHOCLO', 'BLANCO', 'AMARILLO', '', '', '', 'GIRASOL', 'TELA', 'UNISEX', 0, '69.png', 0, 0, 0),
(70, 'TENIS', 'ADULTO', 'VANS', '', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '70.png', 0, 0, 0),
(71, 'TENIS', 'ADULTO', 'VANS', '', 'BOTA', 'NEGRO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '71.png', 0, 0, 0),
(72, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'ROJO', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '72.png', 0, 0, 0),
(73, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'TORNASOL', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '73.png', 0, 0, 0),
(74, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '74.png', 0, 0, 0),
(75, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'VERDE MILITAR', 'BLANCO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '75.png', 0, 0, 0),
(76, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'MORADO', 'MENTA', 'AMARILLO', '', '', 'VINIPIEL', 'MUJER', 0, '76.png', 0, 0, 0),
(77, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'GRIS', 'CAMEL', '', '', '', '', 'NOBUCK', 'UNISEX', 0, '77.png', 0, 0, 0),
(78, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'ROJO', 'CAMEL', 'AZUL', 'NEGRO', 'LILA', '', 'VINIPIEL', 'MUJER', 0, '78.png', 0, 0, 0),
(79, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '79.png', 0, 0, 0),
(80, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROJO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '80.png', 0, 0, 0),
(81, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'LILA', 'NARANJA', '', '', '', 'VINIPIEL', 'MUJER', 0, '81.png', 0, 0, 0),
(82, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'CAMEL', 'NEGRO', 'BLANCO', 'VERDE', 'AMARILLO', 'SANTA FE CLAN', 'VINIPIEL', 'UNISEX', 0, '82.png', 0, 0, 0),
(83, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'AZUL CIELO', 'BLANCO', 'NEGRO', 'CAMEL', '', '', 'VINIPIEL', 'UNISEX', 0, '83.png', 0, 0, 0),
(84, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'SALMON', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '84.png', 0, 0, 0),
(85, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '85.png', 0, 0, 0),
(86, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '86.png', 0, 0, 0),
(87, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'MARINO', 'ROJO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '87.png', 0, 0, 0),
(88, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'NEGRO', 'ROJO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '88.png', 0, 0, 0),
(89, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROSA PALO', 'SALMON', 'LILA', '', '', 'VINIPIEL', 'MUJER', 0, '89.png', 0, 0, 0),
(90, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'AZUL CIELO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '90.png', 0, 0, 0),
(91, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '91.png', 0, 0, 0),
(92, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'AZUL CIELO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '92.png', 0, 0, 0),
(93, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'MARINO', 'ROJO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '93.png', 0, 0, 0),
(94, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROSA', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '94.png', 0, 0, 0),
(95, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'MENTA', 'AMARILLO', 'LILA', '', '', 'VINIPIEL', 'MUJER', 0, '95.png', 0, 0, 0),
(96, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'NEGRO', 'CAMEL', '', '', '', '', 'NOBUCK', 'UNISEX', 0, '96.png', 0, 0, 0),
(97, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'NEGRO', 'CAMEL', 'BLANCO', '', '', '', 'NOBUCK', 'UNISEX', 0, '97.png', 0, 0, 0),
(98, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'NEGRO', 'CAMEL', 'BLANCO', '', '', '', 'NOBUCK', 'UNISEX', 0, '98.png', 0, 0, 0),
(99, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'NEGRO', 'CAMEL', '', '', '', '', 'NOBUCK', 'UNISEX', 0, '99.png', 0, 0, 0),
(100, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'CAMEL TOTAL', '', '', '', '', '', 'NOBUCK', 'UNISEX', 0, '100.png', 0, 0, 0),
(101, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'NEGRO', 'GRIS', '', '', '', 'VINIPIEL', 'UNISEX', 0, '101.png', 0, 0, 0),
(102, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'VERDE', 'LILA', 'GRIS', 'TURQUEZA', '', 'VINIPIEL', 'MUJER', 0, '102.png', 0, 0, 0),
(103, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'VERDE', 'CAFÉ', '', '', '', 'VINIPIEL', 'UNISEX', 0, '103.png', 0, 0, 0),
(104, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'LILA', 'AZUL', 'SALMON', '', '', 'VINIPIEL', 'MUJER', 0, '104.png', 0, 0, 0),
(105, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'SALMON', 'NARANJA', 'VINO', '', '', 'VINIPIEL', 'MUJER', 0, '105.png', 0, 0, 0),
(106, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'GRIS', 'NARANJA', 'ROJO', 'VERDE', '', 'VINIPIEL', 'UNISEX', 0, '106.png', 0, 0, 0),
(107, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROSA', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '107.png', 0, 0, 0),
(108, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'LILA', 'AZUL CIELO', '', '', '', 'VINIPIEL', 'MUJER', 0, '108.png', 0, 0, 0),
(109, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'GRIS', 'ROSA', '', '', '', 'VINIPIEL', 'MUJER', 0, '109.png', 0, 0, 0),
(110, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'CAFÉ', 'ORO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '110.png', 0, 0, 0),
(111, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROSA', 'ROJO', '', '', '', 'VINIPIEL', 'MUJER', 0, '111.png', 0, 0, 0),
(112, 'TENIS', 'ADULTO', 'NIKE', 'PRESTO', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'MAYA', 'UNISEX', 0, '112.png', 0, 0, 0),
(113, 'TENIS', 'ADULTO', 'NIKE', 'PRESTO', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'MAYA', 'UNISEX', 0, '113.png', 0, 0, 0),
(114, 'TENIS', 'ADULTO', 'NIKE', 'PRESTO', 'CHOCLO', 'AMARILLO TOTAL', '', '', '', '', '', 'MAYA', 'UNISEX', 0, '114.png', 0, 0, 0),
(115, 'TENIS', 'ADULTO', 'NIKE', 'PRESTO', 'CHOCLO', 'ROSA TOTAL', '', '', '', '', '', 'MAYA', 'MUJER', 0, '115.png', 0, 0, 0),
(116, 'TENIS', 'ADULTO', 'NIKE', 'PRESTO', 'CHOCLO', 'ROSA PALO TOTAL', '', '', '', '', '', 'MAYA', 'MUJER', 0, '116.png', 0, 0, 0),
(117, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'AZUL REY', 'BLANCO', '', '', '', '', 'MAYA', 'HOMBRE', 0, '117.png', 0, 0, 0),
(118, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'GRIS', 'BLANCO', '', '', '', 'TIRAS', 'MAYA', 'UNISEX', 0, '118.png', 0, 0, 0),
(119, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', 'TIRAS', 'MAYA', 'UNISEX', 0, '119.png', 0, 0, 0),
(120, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'ROSA TOTAL', '', '', '', '', '', 'MAYA', 'MUJER', 0, '120.png', 0, 0, 0),
(121, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'LILA TOTAL', '', '', '', '', '', 'MAYA', 'MUJER', 0, '121.png', 0, 0, 0),
(122, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', 'TIRAS', 'MAYA', 'UNISEX', 0, '122.png', 0, 0, 0),
(123, 'TENIS', 'ADULTO', 'NIKE', 'JOYRIDE', 'CHOCLO', 'ROJO TOTAL', '', '', '', '', '', 'MAYA', 'HOMBRE', 0, '123.png', 0, 0, 0),
(124, 'TENIS', 'ADULTO', 'NIKE', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '124.png', 0, 0, 0),
(125, 'TENIS', 'ADULTO', 'NIKE', '', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'TELA', 'UNISEX', 0, '125.png', 0, 0, 0),
(126, 'TENIS', 'ADULTO', 'DC', '', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'TELA', 'UNISEX', 0, '126.png', 0, 0, 0),
(127, 'TENIS', 'ADULTO', 'NIKE', '', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'TELA', 'UNISEX', 0, '127.png', 0, 0, 0),
(128, 'TENIS', 'ADULTO', 'DC', '', 'CHOCLO', 'ROJO', 'CAMEL', '', '', '', '', 'TELA', 'UNISEX', 0, '128.png', 0, 0, 0),
(129, 'TENIS', 'ADULTO', 'NIKE', '', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'TELA', 'UNISEX', 0, '129.png', 0, 0, 0),
(130, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '130.png', 0, 0, 0),
(131, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'BLANCO', 'AZUL REY', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '131.png', 0, 0, 0),
(132, 'TENIS', 'ADULTO', 'NIKE', '', 'CHOCLO', 'NEGRO', 'CAMEL', '', '', '', '', 'TELA', 'UNISEX', 0, '132.png', 0, 0, 0),
(133, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'BLANCO', 'GRIS', 'NEGRO', '', '', '', 'TELA', 'UNISEX', 0, '133.png', 0, 0, 0),
(134, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'BLANCO', 'AZUL MARINO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '134.png', 0, 0, 0),
(135, 'TENIS', 'ADULTO', 'NIKE', 'CORTEZ', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '135.png', 0, 0, 0),
(136, 'TENIS', 'ADULTO', 'NIKE', 'CORTEZ', 'CHOCLO', 'MARINO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '136.png', 0, 0, 0),
(137, 'TENIS', 'ADULTO', 'NIKE', 'CORTEZ', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '137.png', 0, 0, 0),
(138, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'MAYA', 'HOMBRE', 0, '138.png', 0, 0, 0),
(139, 'TENIS', 'ADULTO', 'NIKE', 'CORTEZ', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '139.png', 0, 0, 0),
(140, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'GRIS', 'NEGRO', 'ROJO', '', '', '', 'MAYA', 'HOMBRE', 0, '140.png', 0, 0, 0),
(141, 'TENIS', 'ADULTO', 'ADIDAS', '', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '141.png', 0, 0, 0),
(142, 'TENIS', 'ADULTO', 'ADIDAS', '', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '142.png', 0, 0, 0),
(143, 'TENIS', 'ADULTO', 'ADIDAS', '', 'CHOCLO', 'BLANCO', 'AZUL', 'ROJO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '143.png', 0, 0, 0),
(144, 'TENIS', 'ADULTO', 'ADIDAS', '', 'CHOCLO', 'BLANCO', 'ROJO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '144.png', 0, 0, 0),
(145, 'TENIS', 'ADULTO', 'REEBOK', '', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '145.png', 0, 0, 0),
(146, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '146.png', 0, 0, 0),
(147, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'VARIOS', '', '', '', '', 'PAVOREAL', 'LONA', 'MUJER', 0, '147.png', 0, 0, 0),
(148, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'BLANCO', 'NEGRO', 'ROJO', '', '', 'LOVE BLANCO', 'LONA', 'MUJER', 0, '148.png', 0, 0, 0),
(149, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'LONA', 'UNISEX', 0, '149.png', 0, 0, 0),
(150, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '150.png', 0, 0, 0),
(151, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'ROSA', 'BLANCO', '', '', '', '', 'LONA', 'MUJER', 0, '151.png', 0, 0, 0),
(152, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '152.png', 0, 0, 0),
(153, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'LILA', 'BLANCO', '', '', '', '', 'LONA', 'MUJER', 0, '153.png', 0, 0, 0),
(154, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'LONA', 'UNISEX', 0, '154.png', 0, 0, 0),
(155, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'BLANCO', 'NEGRO', 'ROSA', '', '', 'PARIS', 'LONA', 'MUJER', 0, '155.png', 0, 0, 0),
(156, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'VARIOS', '', '', '', '', 'FLORES', 'LONA', 'MUJER', 0, '156.png', 0, 0, 0),
(157, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'TURQUEZA', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '157.png', 0, 0, 0),
(158, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'MORADO', 'BLANCO', '', '', '', '', 'LONA', 'MUJER', 0, '158.png', 0, 0, 0),
(159, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'NEGRO', 'BLANCO', 'ROJO', '', '', 'LOVE NEGRO', 'LONA', 'MUJER', 0, '159.png', 0, 0, 0),
(160, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '160.png', 0, 0, 0),
(161, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA', 'NEGRO', 'BLANCO', '', '', '', '', 'LONA', 'UNISEX', 0, '161.png', 0, 0, 0),
(162, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA', 'BLANCO TOTAL', '', '', '', '', '', 'LONA', 'UNISEX', 0, '162.png', 0, 0, 0),
(163, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'LONA', 'UNISEX', 0, '163.png', 0, 0, 0),
(164, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO PLATAFORMA', 'BLANCO TOTAL', '', '', '', '', '', 'LONA', 'MUJER', 0, '164.png', 0, 0, 0),
(165, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO PLATAFORMA', 'NEGRO', 'BLANCO', '', '', '', 'AGUJETA NEGRA', 'LONA', 'MUJER', 0, '165.png', 0, 0, 0),
(166, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO PLATAFORMA', 'MEZCLILLA', 'BLANCO', '', '', '', '', 'LONA', 'MUJER', 0, '166.png', 0, 0, 0),
(167, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO PLATAFORMA', 'NEGRO TOTAL', '', '', '', '', 'LINEA BLANCA', 'LONA', 'MUJER', 0, '167.png', 0, 0, 0),
(168, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO PLATAFORMA', 'BLANCO TOTAL', '', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '168.png', 0, 0, 0),
(169, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO PLATAFORMA', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '169.png', 0, 0, 0),
(170, 'TENIS', 'ADULTO', 'CONVERSE', '', 'CHOCLO PLATAFORMA', 'NEGRO', 'BLANCO', '', '', '', '', 'LONA', 'MUJER', 0, '170.png', 0, 0, 0),
(171, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA PLATAFORMA', 'NEGRO', 'BLANCO', '', '', '', '', 'LONA', 'MUJER', 0, '171.png', 0, 0, 0),
(172, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA PLATAFORMA', 'BLANCO TOTAL', '', '', '', '', '', 'LONA', 'MUJER', 0, '172.png', 0, 0, 0),
(173, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA PLATAFORMA', 'MEZCLILLA OBSCURO', 'BLANCO', '', '', '', '', 'LONA', 'MUJER', 0, '173.png', 0, 0, 0),
(174, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA PLATAFORMA', 'CEBRA', '', '', '', '', '', 'TERCIOPELO', 'MUJER', 0, '174.png', 0, 0, 0),
(175, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA PLATAFORMA', 'MEZCLILLA', 'BLANCO', '', '', '', '', 'LONA', 'MUJER', 0, '175.png', 0, 0, 0),
(176, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA PLATAFORMA', 'CEBRA', '', '', '', '', '', 'VINIPIEL-TERCIOPELO', 'MUJER', 0, '176.png', 0, 0, 0),
(177, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA PLATAFORMA', 'NEGRO TOTAL', '', '', '', '', '', 'LONA', 'MUJER', 0, '177.png', 0, 0, 0),
(178, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA PLATAFORMA', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '178.png', 0, 0, 0),
(179, 'TENIS', 'ADULTO', 'CONVERSE', '', 'BOTA PLATAFORMA', 'NEGRO TOTAL', '', '', '', '', 'LINEA BLANCA', 'LONA', 'MUJER', 0, '179.png', 0, 0, 0),
(180, 'TENIS', 'ADULTO', 'K-SWISS', '', 'CHOCLO', 'BLANCO', 'ROJO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '180.png', 0, 0, 0),
(181, 'TENIS', 'ADULTO', 'K-SWISS', '', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '181.png', 0, 0, 0),
(182, 'TENIS', 'ADULTO', 'NIKE', 'JOYRIDE', 'CHOCLO', 'AMARILLO', 'NEGRO', '', '', '', '', 'MAYA', 'HOMBRE', 0, '182.png', 0, 0, 0),
(183, 'TENIS', 'ADULTO', 'NIKE', 'JOYRIDE', 'CHOCLO', 'ROJO', 'BLANCO', 'NEGRO', '', '', '', 'MAYA', 'HOMBRE', 0, '183.png', 0, 0, 0),
(184, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'TEXTIL', 'HOMBRE', 0, '184.png', 0, 0, 0),
(185, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'ROJO', 'BLANCO', 'NEGRO', '', '', '', 'TEXTIL', 'HOMBRE', 0, '185.png', 0, 0, 0),
(186, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'AZUL MARINO', 'ROJO', 'BLANCO', '', '', '', 'TEXTIL', 'HOMBRE', 0, '186.png', 0, 0, 0),
(187, 'TENIS', 'ADULTO', 'NIKE', 'RUNNING', 'CHOCLO', 'AZUL REY', 'BLANCO', 'NEGRO', '', '', '', 'TEXTIL', 'HOMBRE', 0, '187.png', 0, 0, 0),
(188, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'NEGRO', 'ORO', '', '', '', '', 'MAYA', 'HOMBRE', 0, '188.png', 0, 0, 0),
(189, 'TENIS', 'ADULTO', 'ADIDAS', '', 'CHOCLO', 'ROJO', 'BLANCO', 'NEGRO', '', '', '', 'TEXTIL', 'UNISEX', 0, '189.png', 0, 0, 0),
(190, 'TENIS', 'ADULTO', 'ADIDAS', '', 'CHOCLO', 'LILA', 'BLANCO', '', '', '', '', 'TEXTIL', 'MUJER', 0, '190.png', 0, 0, 0),
(191, 'TENIS', 'ADULTO', 'ADIDAS', '', 'CHOCLO', 'GRIS', 'BLANCO', 'ROSA', '', '', '', 'TEXTIL', 'MUJER', 0, '191.png', 0, 0, 0),
(192, 'TENIS', 'ADULTO', 'ADIDAS', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '192.png', 0, 0, 0),
(193, 'TENIS', 'ADULTO', 'ADIDAS', '', 'CHOCLO', 'ROSA PALO', 'AZUL CIELO', 'LILA', 'AMARILLO', '', '', 'MAYA', 'MUJER', 0, '193.png', 0, 0, 0),
(194, 'TENIS', 'ADULTO', 'GUESS', '', 'CHOCLO', 'BLANCO', 'ROSA', 'NEGRO', '', '', '', 'VINIPIEL', 'MUJER', 0, '194.png', 0, 0, 0),
(195, 'TENIS', 'ADULTO', 'FILA', '', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '195.png', 0, 0, 0),
(196, 'TENIS', 'ADULTO', 'FILA', '', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', 'LETRAS', 'VINIPIEL', 'UNISEX', 0, '196.png', 0, 0, 0),
(197, 'TENIS', 'ADULTO', 'FILA', '', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '197.png', 0, 0, 0),
(198, 'TENIS', 'ADULTO', 'FILA', '', 'CHOCLO', 'CAMEL', 'BLANCO', '', '', '', '', 'NOBUCK', 'UNISEX', 0, '198.png', 0, 0, 0),
(199, 'TENIS', 'ADULTO', 'FILA', '', 'CHOCLO', 'ROSA PALO TOTAL', '', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '199.png', 0, 0, 0),
(200, 'TENIS', 'ADULTO', 'FILA', '', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'NOBUCK', 'UNISEX', 0, '200.png', 0, 0, 0),
(201, 'TENIS', 'ADULTO', 'FILA', '', 'CHOCLO', 'BLANCO TOTAL', '', '', '', '', 'LETRAS', 'VINIPIEL', 'UNISEX', 0, '201.png', 0, 0, 0),
(202, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'CALCETIN', 'CHOCLO', 'AZUL REY', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '202.png', 0, 0, 0),
(203, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'CALCETIN', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '203.png', 0, 0, 0),
(204, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'CALCETIN', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '204.png', 0, 0, 0),
(205, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'CALCETIN', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '205.png', 0, 0, 0),
(206, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'CALCETIN', 'CHOCLO', 'MAQUILLAJE', 'BLANCO', '', '', '', '', 'TEXTIL', 'MUJER', 0, '206.png', 0, 0, 0),
(207, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'CALCETIN', 'CHOCLO', 'GRIS', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '207.png', 0, 0, 0),
(208, 'TENIS', 'ADULTO', 'NIKE', 'CALCETIN', 'CHOCLO', 'GRIS OXFORD', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '208.png', 0, 0, 0),
(209, 'TENIS', 'ADULTO', 'NIKE', 'CALCETIN', 'CHOCLO', 'ROJO', 'NEGRO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '209.png', 0, 0, 0),
(210, 'TENIS', 'ADULTO', 'NIKE', 'CALCETIN', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '210.png', 0, 0, 0),
(211, 'TENIS', 'ADULTO', 'NIKE', 'CALCETIN', 'CHOCLO', 'ROSA PALO', 'BLANCO', '', '', '', '', 'TEXTIL', 'MUJER', 0, '211.png', 0, 0, 0),
(212, 'TENIS', 'ADULTO', 'NIKE', 'CALCETIN', 'CHOCLO', 'NEGRO', 'ROJO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '212.png', 0, 0, 0),
(213, 'TENIS', 'ADULTO', 'NIKE', 'CALCETIN', 'CHOCLO', 'ROSA MEXICANO', 'AZUL MARINO', '', '', '', 'BARBIE', 'TEXTIL', 'MUJER', 0, '213.png', 0, 0, 0),
(214, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'MORADO', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '214.png', 0, 0, 0),
(215, 'TENIS', 'ADULTO', 'NIKE', 'OFF WHITE', 'BOTA', 'AMARILLO', 'BLANCO', 'GRIS', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '215.png', 0, 0, 0),
(216, 'TENIS', 'ADULTO', 'NIKE', 'OFF WHITE', 'BOTA', 'VERDE LIMON', 'BLANCO', 'GRIS', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '216.png', 0, 0, 0),
(217, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'NEGRO', 'AMARILLO', '', '', '', 'BADMAN', 'VINIPIEL', 'HOMBRE', 0, '217.png', 0, 0, 0),
(218, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'ROSA PALO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '218.png', 0, 0, 0),
(219, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'SALMON', 'BLANCO', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '219.png', 0, 0, 0),
(220, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'ROSA PALO', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'MUJER', 0, '220.png', 0, 0, 0),
(221, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'AZUL CIELO', 'BLANCO', 'NARANJA', 'GRIS', '', '', 'VINIPIEL', 'UNISEX', 0, '221.png', 0, 0, 0),
(222, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '222.png', 0, 0, 0),
(223, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'AZUL CIELO', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '223.png', 0, 0, 0),
(224, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '224.png', 0, 0, 0),
(225, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'AZUL MARINO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '225.png', 0, 0, 0),
(226, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'ROSA PALO', 'BLANCO', 'TURQUEZA', 'LILA', 'AMARILLO', 'PASTEL', 'VINIPIEL', 'MUJER', 0, '226.png', 0, 0, 0),
(227, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO', 'CAMEL', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '227.png', 0, 0, 0),
(228, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'ROJO', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '228.png', 0, 0, 0),
(229, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO', 'NEGRO', 'ROJO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '229.png', 0, 0, 0),
(230, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'ROJO', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '230.png', 0, 0, 0),
(231, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO', 'NEGRO', 'GRIS', '', '', '', 'VINIPIEL', 'UNISEX', 0, '231.png', 0, 0, 0),
(232, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '232.png', 0, 0, 0),
(233, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '233.png', 0, 0, 0),
(234, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'CAFÉ', 'CREMA', 'NEGRO', 'BLANCO', '', '', 'VINIPIEL', 'UNISEX', 0, '234.png', 0, 0, 0),
(235, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'AZUL REY', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '235.png', 0, 0, 0),
(236, 'TENIS', 'INFANTIL', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO', 'NEGRO', 'ROJO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '236.png', 0, 0, 0),
(237, 'TENIS', 'INFANTIL', 'NIKE', 'RETRO 1', 'BOTA', 'GRIS', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '237.png', 0, 0, 0),
(238, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '238.png', 0, 0, 0),
(239, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'BOTA', 'BLANCO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '239.png', 0, 0, 0),
(240, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'BOTA', 'BLANCO', 'ROJO', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '240.png', 0, 0, 0),
(241, 'TENIS', 'ADULTO', 'NIKE', 'JORDAN 4', 'BOTA', 'ROJO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '241.png', 0, 0, 0),
(242, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '242.png', 0, 0, 0),
(243, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'NEGRO TOTAL', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '243.png', 0, 0, 0),
(244, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'NEGRO', 'ROJO', 'BLANCO', '', '', '', 'TEXTIL', 'UNISEX', 0, '244.png', 0, 0, 0),
(245, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'ROJO', 'NEGRO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '245.png', 0, 0, 0),
(246, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '246.png', 0, 0, 0),
(247, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'VERDE MILITAR', '', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '247.png', 0, 0, 0),
(248, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'NEGRO', 'ROJO', 'BLANCO', '', '', '', 'TEXTIL', 'UNISEX', 0, '248.png', 0, 0, 0),
(249, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'BLANCO', 'NEGRO', 'ORO', '', '', '', 'TEXTIL', 'UNISEX', 0, '249.png', 0, 0, 0),
(250, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'GRIS', 'BLANCO', 'ROSA PALO', '', '', '', 'MAYA', 'MUJER', 0, '250.png', 0, 0, 0),
(251, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'GRIS', 'BLANCO', 'AZUL CIELO', '', '', '', 'MAYA', 'MUJER', 0, '251.png', 0, 0, 0),
(252, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'GRIS OXFORD', 'BLANCO', 'ROJO', '', '', '', 'MAYA', 'UNISEX', 0, '252.png', 0, 0, 0),
(253, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'MAYA', 'UNISEX', 0, '253.png', 0, 0, 0),
(254, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'MAYA', 'UNISEX', 0, '254.png', 0, 0, 0),
(255, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'MAYA', 'UNISEX', 0, '255.png', 0, 0, 0),
(256, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'MAYA', 'UNISEX', 0, '256.png', 0, 0, 0),
(257, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'GRIS', 'BLANCO', 'VERDE', '', '', '', 'MAYA', 'UNISEX', 0, '257.png', 0, 0, 0),
(258, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'BLANCO', 'ORO', '', '', '', '', 'MAYA', 'UNISEX', 0, '258.png', 0, 0, 0),
(259, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'NEGRO', 'ORO', '', '', '', '', 'MAYA', 'UNISEX', 0, '259.png', 0, 0, 0),
(260, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'VINO', 'BLANCO', '', '', '', '', 'MAYA', 'UNISEX', 0, '260.png', 0, 0, 0),
(261, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'BLANCO', 'ROJO', 'NEGRO', '', '', '', 'TEXTIL', 'UNISEX', 0, '261.png', 0, 0, 0),
(262, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'NEGRO TOTAL', '', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '262.png', 0, 0, 0),
(263, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'BLANCO', 'ORO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '263.png', 0, 0, 0),
(264, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'ROSA TOTAL', '', '', '', '', '', 'TEXTIL', 'MUJER', 0, '264.png', 0, 0, 0),
(265, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'ROSA', 'BLANCO', '', '', '', '', 'TEXTIL', 'MUJER', 0, '265.png', 0, 0, 0),
(266, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'BLANCO', 'ROSA', '', '', '', '', 'TEXTIL', 'MUJER', 0, '266.png', 0, 0, 0),
(267, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'AZUL CIELO TOTAL', '', '', '', '', '', 'TEXTIL', 'MUJER', 0, '267.png', 0, 0, 0),
(268, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'ROJO TOTAL', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '268.png', 0, 0, 0),
(269, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'ROSA TOTAL', '', '', '', '', '', 'TEXTIL', 'MUJER', 0, '269.png', 0, 0, 0),
(270, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'ROJO TOTAL', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '270.png', 0, 0, 0),
(271, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'AZUL CIELO', 'BLANCO', 'VERDE', '', '', '', 'TEXTIL', 'UNISEX', 0, '271.png', 0, 0, 0),
(272, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'BLANCO', 'ROSA PALO', '', '', '', '', 'TEXTIL', 'MUJER', 0, '272.png', 0, 0, 0),
(273, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'SCORPIO', 'CHOCLO', 'NEGRO', 'AZUL FOSFORESCENTE', '', '', '', '', 'TEXTIL', 'HOMBRE', 0, '273.png', 0, 0, 0),
(274, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'SCORPIO', 'CHOCLO', 'NEGRO', 'ROSA FOSFORESCENTE', '', '', '', '', 'TEXTIL', 'MUJER', 0, '274.png', 0, 0, 0),
(275, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'SCORPIO', 'CHOCLO', 'NEGRO', 'VERDE FOSFORESCENTE', '', '', '', '', 'TEXTIL', 'HOMBRE', 0, '275.png', 0, 0, 0),
(276, 'TENIS', 'ADULTO', 'PUMA', '', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'TEXTIL', 'UNISEX', 0, '276.png', 0, 0, 0),
(277, 'TENIS', 'ADULTO', 'ADIDAS', 'TERREX', 'BOTA', 'ROJO', 'NEGRO', '', '', '', '', 'TEXTIL', 'HOMBRE', 0, '277.png', 0, 0, 0),
(278, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ', 'NEGRO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '278.png', 0, 0, 0),
(279, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ CLARO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '279.png', 0, 0, 0),
(280, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ CLARO', 'NEGRO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '280.png', 0, 0, 0),
(281, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'AMARILLO', 'NEGRO', '', '', '', '', 'SINTETICO', 'UNISEX', 0, '281.png', 0, 0, 0),
(282, 'BOTA INDUSTRIAL', 'ADULTO', 'JEEP', '', 'BOTA', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '282.png', 0, 0, 0),
(283, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'NEGRO', 'CAMUFLAJE', '', '', '', '', 'TEXTIL', 'HOMBRE', 0, '283.png', 0, 0, 0),
(284, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ', 'NEGRO', '', '', '', '', 'SINTETICO', 'HOMBRE', 0, '284.png', 0, 0, 0),
(285, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'SINTETICO', 'HOMBRE', 0, '285.png', 0, 0, 0),
(286, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'PIEL', 'HOMBRE', 0, '286.png', 0, 0, 0),
(287, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAMEL', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '287.png', 0, 0, 0),
(288, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '288.png', 0, 0, 0),
(289, 'BOTA INDUSTRIAL', 'ADULTO', 'JEEP', '', 'BOTA', 'NEGRO', 'ROSA PALO', '', '', '', '', 'PIEL', 'MUJER', 0, '289.png', 0, 0, 0),
(290, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'ROJO', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '290.png', 0, 0, 0),
(291, 'BOTA INDUSTRIAL', 'ADULTO', 'JEEP', '', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'PIEL', 'UNISEX', 0, '291.png', 0, 0, 0),
(292, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'VERDE OLIVO', 'NEGRO', 'AMARILLO', '', '', '', 'SINTETICO', 'HOMBRE', 0, '292.png', 0, 0, 0),
(293, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAMEL', 'AMARILLO', '', '', '', '', 'SINTETICO', 'HOMBRE', 0, '293.png', 0, 0, 0),
(294, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'AMARILLO', 'NEGRO', '', '', '', '', 'SINTETICO', 'HOMBRE', 0, '294.png', 0, 0, 0),
(295, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ', 'NEGRO', 'AMARILLO', '', '', '', 'SINTETICO', 'HOMBRE', 0, '295.png', 0, 0, 0),
(296, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'SINTETICO', 'HOMBRE', 0, '296.png', 0, 0, 0),
(297, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'NEGRO TOTAL', 'AMARILLO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '297.png', 0, 0, 0),
(298, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'NEGRO TOTAL', 'AMARILLO', '', '', '', 'SUELA AMARILLA', 'PIEL', 'HOMBRE', 0, '298.png', 0, 0, 0),
(299, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ', 'NEGRO', 'AMARILLO', '', '', '', 'PIEL', 'HOMBRE', 0, '299.png', 0, 0, 0),
(300, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'AMARILLO', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '300.png', 0, 0, 0),
(301, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '301.png', 0, 0, 0),
(302, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ', 'NEGRO', 'AMARILLO', '', '', '', 'PIEL', 'HOMBRE', 0, '302.png', 0, 0, 0),
(303, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'NEGRO TOTAL', 'AMARILLO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '303.png', 0, 0, 0),
(304, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CHEDRON', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '304.png', 0, 0, 0),
(305, 'BOTA INDUSTRIAL', 'ADULTO', 'LEE', '', 'BOTA', 'VERDE OLIVO', 'NEGRO', 'ROJO', '', '', '', 'SINTETICO', 'HOMBRE', 0, '305.png', 0, 0, 0),
(306, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'NEGRO TOTAL', 'AMARILLO', '', '', '', '', 'SINTETICO', 'HOMBRE', 0, '306.png', 0, 0, 0),
(307, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ', 'NEGRO', 'ROJO', '', '', '', 'SINTETICO', 'HOMBRE', 0, '307.png', 0, 0, 0),
(308, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'CAFÉ', 'NEGRO', 'AMARILLO', '', '', '', 'SINTETICO', 'HOMBRE', 0, '308.png', 0, 0, 0),
(309, 'BOTA INDUSTRIAL', 'ADULTO', 'CATERPILLAR', '', 'BOTA', 'AMARILLO', 'NEGRO', 'NARANJA', '', '', '', 'SINTETICO', 'HOMBRE', 0, '309.png', 0, 0, 0),
(310, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', '', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'PIEL', 'HOMBRE', 0, '310.png', 0, 0, 0),
(311, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', '', 'BOTA', 'CAFÉ', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '311.png', 0, 0, 0),
(312, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', '', 'BOTA', 'CAFÉ', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '312.png', 0, 0, 0),
(313, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', '', 'BOTA', 'CAFÉ', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '313.png', 0, 0, 0),
(314, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', 'ROOPER', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'PIEL', 'HOMBRE', 0, '314.png', 0, 0, 0),
(315, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', 'ROOPER', 'BOTA', 'CAFÉ', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '315.png', 0, 0, 0),
(316, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', 'ROOPER', 'BOTA', 'CAFÉ OBSCURO', 'CHEDRON', 'NEGRO', 'CAFÉ CLARO', '', '', 'PIEL', 'HOMBRE', 0, '316.png', 0, 0, 0),
(317, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', 'ROOPER', 'BOTA', 'CAFÉ OBSCURO', 'CHEDRON', 'NEGRO', 'CAFÉ CLARO', '', '', 'PIEL', 'HOMBRE', 0, '317.png', 0, 0, 0),
(318, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', 'ROOPER', 'BOTA', 'NEGRO', 'CAFÉ OBSCURO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '318.png', 0, 0, 0),
(319, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', 'ROOPER', 'BOTA', 'NEGRO', 'CHEDRON', '', '', '', '', 'PIEL', 'HOMBRE', 0, '319.png', 0, 0, 0),
(320, 'BOTA INDUSTRIAL', 'ADULTO', 'MODBEAT', 'ROOPER', 'BOTA', 'CAFÉ OBSCURO', 'NEGRO', '', '', '', '', 'PIEL', 'HOMBRE', 0, '320.png', 0, 0, 0),
(321, 'BOTA PARA DAMA', 'ADULTO', '', 'TUBO LARGO', 'BOTA', 'NEGRO TOTAL', '', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '321.png', 0, 0, 0),
(322, 'BOTA PARA DAMA', 'ADULTO', '', 'TUBO LARGO', 'BOTA', 'CAFÉ TOTAL', '', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '322.png', 0, 0, 0),
(323, 'BOTA PARA DAMA', 'ADULTO', '', 'TUBO LARGO', 'BOTA', 'CHEDRON', '', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '323.png', 0, 0, 0),
(324, 'BOTA PARA DAMA', 'ADULTO', '', 'TUBO LARGO', 'BOTA', 'CAMEL', '', '', '', '', '', 'GAMUZA', 'MUJER', 0, '324.png', 0, 0, 0),
(325, 'BOTIN PARA DAMA', 'ADULTO', '', '', 'BOTIN', 'NEGRO TOTAL', '', '', '', '', '', 'SINTETICO', 'MUJER', 0, '325.png', 0, 0, 0),
(326, 'BOTIN PARA DAMA', 'ADULTO', '', '', 'BOTIN', 'CAFÉ', 'NEGRO', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '326.png', 0, 0, 0),
(327, 'BOTIN PARA DAMA', 'ADULTO', '', '', 'BOTIN', 'ROSA TOTAL', '', '', '', '', 'CON BOLSA', 'VINIPIEL', 'MUJER', 0, '327.png', 0, 0, 0),
(328, 'BOTIN PARA DAMA', 'INFANTIL', '', '', 'BOTIN', 'BLANCO TOTAL', '', '', '', '', 'BARBIE', 'VINIPIEL', 'MUJER', 0, '328.png', 0, 0, 0),
(329, 'TENIS', 'ADULTO', 'ADIDAS', 'TERREX', 'CHOCLO', 'AZUL REY', 'NEGRO', 'BLANCO', '', '', '', 'SINTETICO', 'HOMBRE', 0, '329.png', 0, 0, 0),
(330, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'CALCETIN', 'CHOCLO', 'ROSA', 'BLANCO', '', '', '', '', 'MAYA', 'MUJER', 0, '330.png', 0, 0, 0),
(331, 'TENIS', 'ADULTO', 'NIKE', 'CALCETIN', 'CHOCLO', 'AZUL MARINO', 'ROSA FIUSA', '', '', '', 'BARBIE', 'MAYA', 'MUJER', 0, '331.png', 0, 0, 0),
(332, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'SINTETICO', 'UNISEX', 0, '332.png', 0, 0, 0),
(333, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'NEGRO TOTAL', 'BLANCO', '', '', '', '', 'SINTETICO', 'UNISEX', 0, '333.png', 0, 0, 0),
(334, 'TENIS', 'ADULTO', 'NIKE', 'AF1 BOTA', 'BOTA', 'BLANCO', 'ROSA FIUSA', 'NEGRO', '', '', '', 'VINIPIEL', 'MUJER', 0, '334.png', 0, 0, 0),
(335, 'TENIS', 'ADULTO', 'NIKE', 'AF1 BOTA', 'BOTA', 'ROSA PALO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '335.png', 0, 0, 0),
(336, 'TENIS', 'ADULTO', 'NIKE', 'AF1 BOTA', 'BOTA', 'LILA', 'BLANCO', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '336.png', 0, 0, 0),
(337, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'BLANCO', 'NEGRO', '', '', '', '', 'MAYA', 'UNISEX', 0, '337.png', 0, 0, 0),
(338, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'BLANCO', 'ROJO', 'NEGRO', '', '', '', 'MAYA', 'UNISEX', 0, '338.png', 0, 0, 0),
(339, 'TENIS', 'ADULTO', 'NIKE', 'AIR720', 'CHOCLO', 'BLANCO TOTAL', 'NEGRO', '', '', '', '', 'MAYA', 'UNISEX', 0, '339.png', 0, 0, 0),
(340, 'TENIS', 'INFANTIL', 'PUMA', '', 'CHOCLO', 'GRIS', 'BLANCO', 'ROSA PALO', '', '', '', 'MAYA', 'MUJER', 0, '340.png', 0, 0, 0),
(341, 'TENIS', 'INFANTIL', 'PUMA', '', 'CHOCLO', 'GRIS', 'ROSA PALO', 'BLANCO', '', '', '', 'MAYA', 'MUJER', 0, '341.png', 0, 0, 0),
(342, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'ROSA PALO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'MUJER', 0, '342.png', 0, 0, 0),
(343, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'ROJO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '343.png', 0, 0, 0),
(344, 'TENIS', 'INFANTIL', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO TOTAL', '', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '344.png', 0, 0, 0),
(345, 'TENIS', 'INFANTIL', 'NIKE', 'JORDAN', 'BOTA', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '345.png', 0, 0, 0),
(346, 'TENIS', 'ADULTO', 'NIKE', 'JORDAN', 'BOTA', 'NEGRO', 'ROJO', 'BLANCO', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '346.png', 0, 0, 0),
(347, 'TENIS', 'ADULTO', 'NIKE', 'AIRMAX 270', 'CHOCLO', 'NEGRO TOTAL', 'BLANCO', '', '', '', '', 'MAYA', 'UNISEX', 0, '347.png', 0, 0, 0),
(348, 'TENIS', 'ADULTO', 'NIKE', 'JORDAN', 'BOTA', 'NEGRO', 'AMARILLO', '', '', '', '', 'VINIPIEL', 'HOMBRE', 0, '348.png', 0, 0, 0),
(349, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROSA PALO', 'NEGRO', '', '', '', 'VINIPIEL', 'MUJER', 0, '349.png', 0, 0, 0),
(350, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO TOTAL', 'ROSA', '', '', '', 'MARIPOSA', 'VINIPIEL', 'MUJER', 0, '350.png', 0, 0, 0),
(351, 'TENIS', 'ADULTO', 'NIKE', 'RETRO 1', 'BOTA', 'BLANCO', 'ROSA PALO', 'AMARILLO', 'AZUL CIELO', '', '', 'VINIPIEL', 'MUJER', 0, '351.png', 0, 0, 0),
(352, 'TENIS', 'INFANTIL', 'NIKE', 'JORDAN', 'BOTA', 'AZUL CIELO', 'BLANCO', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '352.png', 0, 0, 0),
(353, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'ROSA PALO', 'AZUL CIELO', 'BLANCO', '', '', '', 'VINIPIEL', 'MUJER', 0, '353.png', 0, 0, 0),
(354, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO TOTAL', 'NEGRO', '', '', '', 'SANTA FE CLAN', 'VINIPIEL', 'UNISEX', 0, '354.png', 0, 0, 0),
(355, 'TENIS', 'INFANTIL', 'CONVERSE', '', 'BOTA', 'ROJO', 'BLANCO', 'NEGRO', '', '', '', 'LONA', 'UNISEX', 0, '355.png', 0, 0, 0),
(356, 'TENIS', 'INFANTIL', 'NIKE', 'AF1 BOTA', 'BOTA', 'CAMEL', 'NEGRO', '', '', '', '', 'GAMUZA', 'UNISEX', 0, '356.png', 0, 0, 0),
(357, 'TENIS', 'INFANTIL', 'NIKE', 'AF1 BOTA', 'BOTA', 'BLANCO', 'ROJO', 'NEGRO', 'GRIS', '', '', 'VINIPIEL', 'UNISEX', 0, '357.png', 0, 0, 0),
(358, 'TENIS', 'INFANTIL', 'NIKE', 'AF1 BOTA', 'BOTA', 'BLANCO', 'AZUL CIELO', 'ROSA PALO', 'AMARILLO', 'LILA', '', 'VINIPIEL', 'MUJER', 0, '358.png', 0, 0, 0),
(359, 'TENIS', 'INFANTIL', 'NIKE', 'AF1 BOTA', 'BOTA', 'BLANCO', 'TURQUEZA', 'AZUL CIELO', 'AZUL MARINO', 'ROSA PALO', '', 'VINIPIEL', 'MUJER', 0, '359.png', 0, 0, 0),
(360, 'TENIS', 'ADULTO', 'NIKE', 'JORDAN', 'BOTA', 'NEGRO', 'BLANCO', 'ROJO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '360.png', 0, 0, 0),
(361, 'TENIS', 'ADULTO', 'UNDER ARMOUR', 'CALCETIN', 'CHOCLO', 'BLANCO TOTAL', 'PLATA', '', '', '', '', 'MAYA', 'UNISEX', 0, '361.png', 0, 0, 0),
(362, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'CAMEL', 'NEGRO', '', '', '', 'VINIPIEL', 'UNISEX', 0, '362.png', 0, 0, 0),
(363, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'VINO', 'CAMEL', '', '', '', '', 'GAMUZA', 'UNISEX', 0, '363.png', 0, 0, 0),
(364, 'TENIS', 'ADULTO', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO TOTAL', 'AMARILLO', '', '', '', 'GIRASOL', 'VINIPIEL', 'MUJER', 0, '364.png', 0, 0, 0),
(365, 'TENIS', 'INFANTIL', 'NIKE', 'JORDAN', 'CHOCLO', 'BLANCO', 'AZUL MARINO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '365.png', 0, 0, 0),
(366, 'TENIS', 'INFANTIL', 'NIKE', 'JORDAN', 'CHOCLO', 'ROSA PALO', 'BLANCO', 'LILA', '', '', '', 'VINIPIEL', 'MUJER', 0, '366.png', 0, 0, 0),
(367, 'TENIS', 'INFANTIL', 'NIKE', 'JORDAN', 'CHOCLO', 'NEGRO', 'BLANCO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '367.png', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usr`
--

CREATE TABLE `usr` (
  `id` int(11) NOT NULL,
  `usr` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `perfil` int(11) NOT NULL,
  `status_e` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usr`
--

INSERT INTO `usr` (`id`, `usr`, `pwd`, `nombre`, `perfil`, `status_e`) VALUES
(1, 'admin', '123456789', '', 1, 1),
(2, 'admin2', '123456789', '', 2, 1),
(3, 'admin3', '123456789', '', 3, 1),
(4, 'ANiB', '123456789', '', 2, 1),
(5, 'Rupe2', '123456789', '', 2, 1),
(6, 'ANiB2', '123456789', '', 3, 1),
(7, 'Rupe', '123456789', '', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_gral`
--

CREATE TABLE `venta_gral` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha_venta` datetime NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tarjeta` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre_tarjeta` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expira_mes` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expira_annio` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clave_rastreo_int` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clave_rastreo_ext` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entrega` int(11) DEFAULT NULL,
  `apartado` int(11) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `venta_gral`
--

INSERT INTO `venta_gral` (`id`, `cantidad`, `precio`, `fecha_venta`, `nombre`, `direccion`, `telefono`, `email`, `tarjeta`, `nombre_tarjeta`, `expira_mes`, `expira_annio`, `clave_rastreo_int`, `clave_rastreo_ext`, `entrega`, `apartado`, `vendedor`) VALUES
(1, 850, 4, '2022-03-02 00:00:00', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'sdfasdf@fdsafd.net', '0', 'Jesus R', '24', '09', '1', '', 0, NULL, NULL),
(2, 850, 4, '2022-03-02 00:00:00', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'sdfasdf@fdsafd.net', 'XXXXXXXXXXX3844', 'Jesus R', '24', '09', '2', '33-999008-009-ZMX', 0, NULL, NULL),
(3, 850, 4, '2022-03-02 00:00:00', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'sdfasdf@fdsafd.net', 'XXXXXXXXXXX3844', 'Jesus R', '24', '09', '3', '', 0, NULL, NULL),
(4, 4, 700, '2022-03-02 00:00:00', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '4', '', 0, NULL, NULL),
(5, 4, 700, '2022-03-02 00:00:00', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '5', '', 0, NULL, NULL),
(6, 4, 700, '2022-03-02 00:00:00', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '6', '', 0, NULL, NULL),
(7, 5, 800, '2022-03-02 00:00:00', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '7', '7', 1, NULL, NULL),
(8, 3, 1100, '2022-03-15 00:00:00', '0', 'Direccion conocida', '99999999', 'dskjdsjs@fjfjf.net', 'XXXXXXXXXXX3434', 'Geranios', '02', '03', '8', '336td-zac-MX-1', 0, NULL, NULL),
(9, 3, 1100, '2022-03-15 00:00:00', 'JESÃšS RODOLFO LEAÃ‘OS VILLEGAS', 'Direccion conocida', '99999999', 'dskjdsjs@fjfjf.net', 'XXXXXXXXXXX3434', 'Geranios', '02', '03', '9', '', 0, 0, NULL),
(10, 3, 850, '2022-03-30 00:00:00', 'RODOLFO DE JESÃšS LEAÃ‘OS V', 'AND TULIPANES 12 A COL EL CARMEN GUADALUPE, ZAC', '4927951930', 'jesusrlvrojo@gmail.com', 'XXXXXXXXXXX2223', 'Jesus R', '09', '21', 'v7q58lmqg', 'EST-34455-90-ZMX', 0, NULL, NULL),
(11, 2, 270, '2022-05-12 00:00:00', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', '', '', '', '', 'jw7nizkvp', NULL, 0, NULL, NULL),
(12, 2, 270, '2022-05-12 00:00:00', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, '5mj5w2cui', NULL, 0, NULL, NULL),
(13, 2, 270, '2022-05-12 00:00:00', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'a5kv3ujdw', NULL, 0, NULL, NULL),
(14, 2, 270, '2022-05-12 00:00:00', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'c240kzw9t', NULL, 0, NULL, NULL),
(15, 1, 120, '2022-05-13 00:00:00', '', '', '', '', NULL, NULL, NULL, NULL, 'yue7pfnqp', NULL, 0, NULL, NULL),
(16, 3, 390, '2022-05-17 00:00:00', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, '21a0uhkkf', '21a0uhkkf', 1, NULL, NULL),
(17, 2, 270, '2022-05-17 00:00:00', 'RODOLFO L', 'Andador tulipanes 12 a', '9236222', 'superUser@gmail.com', NULL, NULL, NULL, NULL, 'w0wh8n0ul', NULL, NULL, NULL, NULL),
(18, 2, 270, '2022-05-31 00:00:00', 'Ana Elisa', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'vfhure3v3', NULL, NULL, NULL, NULL),
(19, 2, 240, '2022-05-31 00:00:00', 'Ana Elisa', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'kx4ray8kl', NULL, NULL, NULL, NULL),
(20, 2, 240, '2022-05-31 00:00:00', 'Ana Elisa', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'pywsyyxw7', NULL, NULL, NULL, NULL),
(21, 2, 270, '2022-05-31 00:00:00', 'JesusRLV', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'qrqwk8xnf', 'qrqwk8xnf', 2, NULL, NULL),
(22, 1, 150, '2022-06-01 00:00:00', 'Jesus Rodolfo iPhone 11', 'Zacatecas', '4927951930', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '34j3fsitu', '34j3fsitu', 1, NULL, NULL),
(23, 0, 0, '2022-06-03 00:00:00', 'Pete bermudez ', 'De la peñuela 208', '4921029243', '', NULL, NULL, NULL, NULL, 's4i2w2my4', NULL, NULL, NULL, NULL),
(24, 3, 0, '2022-06-07 00:00:00', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'o0555sz7d', NULL, NULL, NULL, NULL),
(25, 0, 0, '2022-06-14 00:00:00', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, '9nwsjiavn', NULL, NULL, NULL, NULL),
(26, 0, 0, '2022-06-14 00:00:00', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'm2tmkw60q', 'm2tmkw60q', 1, 2, NULL),
(27, 0, 0, '2022-06-14 00:00:00', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'wtele2116', NULL, NULL, NULL, NULL),
(28, 0, 0, '2022-06-14 00:00:00', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'o7ixk8w4z', NULL, NULL, NULL, NULL),
(29, 0, 0, '2022-06-14 00:00:00', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'ayd2p9et0', NULL, NULL, NULL, NULL),
(30, 0, 0, '2022-06-14 00:00:00', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, '8xws9d9cd', NULL, NULL, NULL, NULL),
(31, 0, 0, '2022-06-14 00:00:00', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'ixz85hgll', NULL, NULL, NULL, NULL),
(32, 1, 0, '2022-06-14 00:00:00', 'Pedro', 'Hahsksndk', '538237393', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, '566h3dn0z', NULL, NULL, NULL, NULL),
(33, 1, 0, '2022-06-14 00:00:00', 'Pedro', 'Hahsksndk', '538237393', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, 'gng58ts5m', 'gng58ts5m', 1, 2, NULL),
(34, 0, 0, '2022-06-14 00:00:00', 'Pedro Bermúdez ', 'Bzhxjxjxnxndh', '41934737339', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, 'du8keddcv', NULL, NULL, NULL, NULL),
(35, 0, 0, '2022-06-14 00:00:00', 'Pedro Bermúdez ', 'Bzhxjxjxnxndh', '41934737339', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, 'hory4tvdc', 'hory4tvdc', 1, 2, NULL),
(36, 0, 0, '2022-06-14 00:00:00', 'Pedro Bermúdez ', 'Bzhxjxjxnxndh', '41934737339', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, '2jdzd0jkn', '2jdzd0jkn', 1, 2, NULL),
(37, 3, 0, '2022-07-25 00:00:00', 'JesusRLV', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'xbpuey6yi', 'xbpuey6yi', 1, 2, NULL),
(38, 3, 0, '2022-07-26 00:09:28', 'JesusRLV2', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'e89aq6wzv', 'e89aq6wzv', 1, 2, NULL),
(39, 2, 0, '2022-07-26 12:29:48', 'JesusRLV Vendedor', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '4qeeesci7', NULL, NULL, 1, 3),
(40, 1, 0, '2022-07-26 13:53:22', 'JesusRLV Vendedor 2', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '9wzjvi9nc', '9wzjvi9nc', 2, 2, 3),
(41, 1, 0, '2022-08-08 12:32:34', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'v3ijnym0h', NULL, NULL, 1, NULL),
(42, 1, 0, '2022-08-08 12:34:50', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'ffnh8s6xh', NULL, NULL, 1, NULL),
(43, 1, 0, '2022-08-08 12:35:48', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'ufiak4bsd', NULL, NULL, 1, NULL),
(44, 1, 0, '2022-08-08 12:36:19', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'dy8uuk8xp', NULL, NULL, 1, NULL),
(45, 1, 0, '2022-08-08 12:46:39', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '721be1zym', NULL, NULL, 1, NULL),
(46, 1, 0, '2022-09-23 18:11:08', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'w3jc2kcrk', NULL, NULL, 1, NULL),
(47, 1, 0, '2022-10-01 16:29:31', 'iPhone 13', 'XXXXX', '999999', 'gold.axs.systems@gmail.com', NULL, NULL, NULL, NULL, 'e84wr16bs', NULL, NULL, 1, NULL),
(48, 1, 0, '2022-10-01 16:32:16', 'Ana Elisa', 'XXXXX', '999999', 'dsda@sdfdsf.ghnfgf', NULL, NULL, NULL, NULL, '3hhqyry9i', NULL, NULL, 1, NULL),
(49, 1, 0, '2022-10-01 16:51:22', 'Ana Elisa', 'XXXXX', '999999', 'aepbarbanosequemas@outlook.com', NULL, NULL, NULL, NULL, 'rhcrlnxn9', NULL, NULL, 1, NULL),
(50, 1, 0, '2022-10-01 17:05:12', 'Ana Elisa', 'XXXXX', '999999', 'gold.axs.systems@gmail.com', NULL, NULL, NULL, NULL, '3l4ndtn5k', NULL, 1, 1, 3),
(51, 1, 0, '2022-10-05 09:48:01', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'mo8feqj8y', NULL, NULL, 1, NULL),
(52, 1, 0, '2022-10-05 14:19:58', 'ae', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'gsldlhkr7', NULL, NULL, 1, NULL),
(53, 1, 0, '2022-10-11 12:41:55', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'tdb6blu9j', NULL, NULL, 1, NULL),
(54, 1, 0, '2022-10-11 12:47:22', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '4667gh0jn', NULL, NULL, 1, NULL),
(55, 1, 0, '2022-10-11 12:48:36', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'uq4aescun', NULL, NULL, 1, NULL),
(56, 1, 0, '2022-10-11 12:49:21', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'ogce0225c', NULL, NULL, 1, NULL),
(57, 1, 0, '2022-10-11 12:50:30', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'yxrqjhn11', NULL, NULL, 1, NULL),
(58, 1, 0, '2022-10-11 12:52:31', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'swqkpdew0', NULL, NULL, 1, NULL),
(59, 1, 0, '2022-10-11 12:55:02', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'bwiwk9zra', NULL, NULL, 1, NULL),
(60, 1, 0, '2022-10-11 13:33:27', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'v2kjubwxu', NULL, NULL, 1, NULL),
(61, 1, 0, '2022-10-11 13:41:47', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '7s416vbqz', NULL, NULL, 1, NULL),
(62, 1, 0, '2022-10-11 13:43:09', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'njw0gipo3', NULL, NULL, 1, NULL),
(63, 1, 0, '2022-10-11 13:46:32', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'tlcs7nv4i', NULL, NULL, 1, NULL),
(64, 1, 0, '2022-10-11 13:48:59', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'u6y6tpkm7', NULL, NULL, 1, NULL),
(65, 1, 0, '2022-10-11 13:56:56', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'cfriae4jw', NULL, NULL, 1, NULL),
(66, 1, 0, '2022-10-11 13:57:29', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'd79t30zv0', NULL, NULL, 1, NULL),
(67, 1, 0, '2022-10-11 13:58:15', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '9kw641712', NULL, NULL, 1, NULL),
(68, 1, 0, '2022-10-11 14:26:38', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'k2wlvero4', NULL, NULL, 1, NULL),
(69, 1, 0, '2022-10-11 15:15:24', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'd2a0dfkym', NULL, NULL, 1, NULL),
(70, 1, 0, '2022-10-11 15:21:34', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '1fzk7b195', NULL, NULL, 1, NULL),
(71, 1, 0, '2022-10-11 15:23:46', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'xbkkei3bf', NULL, NULL, 1, NULL),
(72, 1, 0, '2022-10-11 15:24:42', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '4nlp9odgy', NULL, NULL, 1, NULL),
(73, 1, 0, '2022-10-11 15:25:35', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '2yc120xv7', NULL, NULL, 1, NULL),
(74, 1, 0, '2022-10-11 15:26:48', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '1td66frxk', NULL, NULL, 1, NULL),
(75, 1, 0, '2022-10-11 15:28:17', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '62hmy6t21', NULL, NULL, 1, NULL),
(76, 1, 0, '2022-10-11 15:30:11', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'tt75e1hws', NULL, NULL, 1, NULL),
(77, 1, 0, '2022-10-11 15:33:14', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'fi8zyiqcg', NULL, NULL, 1, NULL),
(78, 1, 0, '2022-10-11 15:36:52', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'kqrtxhyi5', NULL, NULL, 1, NULL),
(79, 1, 0, '2022-10-11 15:37:56', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '4m4waqd02', NULL, NULL, 1, NULL),
(80, 1, 0, '2022-10-11 15:38:21', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'ds0k4wqmi', NULL, NULL, 1, NULL),
(81, 1, 0, '2022-10-11 15:56:50', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'x8pwwk755', NULL, NULL, 1, NULL),
(82, 1, 0, '2022-10-11 16:08:56', 's', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'pqvtsoqq6', NULL, NULL, 1, NULL),
(83, 1, 0, '2022-10-11 16:09:48', 's', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '20srbfg5d', NULL, NULL, 1, NULL),
(84, 1, 0, '2022-10-11 16:11:43', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'py2fbwt71', NULL, NULL, 1, NULL),
(85, 1, 0, '2022-10-11 16:14:14', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '02wxdsvma', NULL, NULL, 1, NULL),
(86, 1, 0, '2022-10-11 16:15:41', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'bkq2s2aqf', NULL, NULL, 1, NULL),
(87, 1, 0, '2022-10-11 16:16:49', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'cduv4z9eb', NULL, NULL, 1, NULL),
(88, 1, 0, '2022-10-12 10:41:25', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'ojhxwcu5e', NULL, NULL, 1, NULL),
(89, 1, 0, '2022-10-12 10:42:47', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'os8ki01ip', NULL, NULL, 1, NULL),
(90, 1, 0, '2022-10-12 10:43:37', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'xzoqw09ho', NULL, NULL, 1, NULL),
(91, 1, 0, '2022-10-12 10:54:15', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'v3ofdyave', NULL, NULL, 1, NULL),
(92, 1, 0, '2022-10-12 11:52:50', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'kxrksralc', NULL, NULL, 1, NULL),
(93, 1, 0, '2022-10-12 11:58:28', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'yxpz8q7oh', NULL, NULL, 1, NULL),
(94, 1, 0, '2022-10-12 12:00:07', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'i9ap6mybg', NULL, NULL, 1, NULL),
(95, 1, 0, '2022-10-12 12:09:42', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'h4ky8f50n', NULL, NULL, 1, NULL),
(96, 1, 0, '2022-10-12 12:11:34', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '1exas4ldo', NULL, NULL, 1, NULL),
(97, 1, 0, '2022-10-12 12:12:12', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'z0v2pcqvw', NULL, NULL, 1, NULL),
(98, 1, 0, '2022-10-12 12:14:03', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, '5qiugzmzv', NULL, NULL, 1, NULL),
(99, 1, 0, '2022-10-12 12:16:30', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'lr8q4nlo1', NULL, NULL, 1, NULL),
(100, 1, 0, '2022-10-12 12:19:55', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '9df7x2cm8', NULL, NULL, 1, NULL),
(101, 1, 0, '2022-10-12 12:21:41', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'ao4ziediy', NULL, NULL, 1, NULL),
(102, 1, 0, '2022-10-12 12:24:01', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '6ipf9x7ma', NULL, NULL, 1, NULL),
(103, 1, 0, '2022-10-12 12:26:55', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'cx8rmnlav', NULL, NULL, 1, NULL),
(104, 1, 0, '2022-10-12 12:27:43', 'RODOLFO L', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'nc4zmjv53', NULL, NULL, 1, NULL),
(105, 1, 0, '2022-10-12 12:35:32', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'hpqld52jz', NULL, NULL, 1, NULL),
(106, 1, 0, '2022-10-12 12:36:09', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'gd4wpyusi', NULL, NULL, 1, NULL),
(107, 1, 0, '2022-10-12 12:38:14', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '6ky523sd6', NULL, NULL, 1, NULL),
(108, 1, 0, '2022-10-12 12:44:29', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'fm0zozgzw', NULL, NULL, 1, NULL),
(109, 1, 0, '2022-10-12 14:39:01', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '35p8swasc', NULL, NULL, 1, NULL),
(110, 1, 0, '2022-10-12 15:03:43', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'ia2a80tef', NULL, NULL, 1, NULL),
(111, 1, 0, '2022-10-12 15:33:26', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'l1q4q8vem', NULL, NULL, 1, NULL),
(112, 1, 0, '2022-10-12 15:34:20', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'qu2vg4hxu', NULL, NULL, 1, NULL),
(113, 1, 0, '2022-10-12 15:36:27', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '72e89zoo2', NULL, NULL, 1, NULL),
(114, 1, 0, '2022-10-12 15:38:08', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 't7ibsgtw1', NULL, NULL, 1, NULL),
(115, 1, 0, '2022-10-12 15:40:32', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'c4gvcrs04', NULL, NULL, 1, NULL),
(116, 1, 0, '2022-10-12 15:41:51', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'fs4o9wfds', NULL, NULL, 1, NULL),
(117, 1, 0, '2022-10-12 15:43:19', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'gioc4y8o1', NULL, NULL, 1, NULL),
(118, 1, 0, '2022-10-12 15:44:00', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '54o5yroad', NULL, NULL, 1, NULL),
(119, 1, 0, '2022-10-12 15:45:25', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '95d5i03a5', NULL, NULL, 1, NULL),
(120, 1, 0, '2022-10-12 15:47:08', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '65nvpvhlb', NULL, NULL, 1, NULL),
(121, 1, 0, '2022-10-12 16:24:45', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '9w9v5acqf', NULL, NULL, 1, NULL),
(122, 1, 0, '2022-10-12 16:25:43', 'JESUS RODOLFO', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'zwo0mljgk', NULL, NULL, 1, NULL),
(123, 1, 0, '2022-10-12 16:28:57', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'z5xiso4ip', NULL, NULL, 1, NULL),
(124, 1, 0, '2022-10-12 16:33:38', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '47xzcu92m', NULL, NULL, 1, NULL),
(125, 1, 0, '2022-10-12 16:40:49', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'bm2opmp4o', NULL, NULL, 1, NULL),
(126, 1, 0, '2022-10-12 16:41:29', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'eruut9pa8', NULL, NULL, 1, NULL),
(127, 1, 0, '2022-10-12 16:42:16', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'cv0o4bnxe', NULL, NULL, 1, NULL),
(128, 1, 0, '2022-10-12 16:43:12', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '4eb4pyrei', NULL, NULL, 1, NULL),
(129, 1, 0, '2022-10-13 12:57:46', 'Producto X', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'iglzuwfvs', 'iglzuwfvs', 2, 1, NULL),
(130, 1, 0, '2022-10-14 15:59:54', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'vojjpgb6o', NULL, 1, 1, 3),
(131, 1, 0, '2022-10-14 16:04:26', 'Francisco', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'a5pxybxyt', NULL, 1, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_individual`
--

CREATE TABLE `venta_individual` (
  `id` int(11) NOT NULL,
  `producto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_venta` date NOT NULL,
  `venta_gral` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `talla` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `entrega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `venta_individual`
--

INSERT INTO `venta_individual` (`id`, `producto`, `fecha_venta`, `venta_gral`, `talla`, `cantidad`, `entrega`) VALUES
(1, '0', '0000-00-00', '0', '', NULL, NULL),
(2, '0', '0000-00-00', '0', '', NULL, NULL),
(3, '0', '0000-00-00', '0', '', NULL, NULL),
(4, '0', '2022-03-02', '0', '', NULL, NULL),
(5, '0', '2022-03-02', '0', '', NULL, NULL),
(6, '0', '2022-03-02', '0', '', NULL, NULL),
(7, '0', '2022-03-02', '0', '', NULL, NULL),
(8, '0', '2022-03-02', '0', '', NULL, NULL),
(9, '0', '2022-03-02', '0', '', NULL, NULL),
(10, '0', '2022-03-02', '0', '', NULL, NULL),
(11, '0', '2022-03-02', '0', '', NULL, NULL),
(12, '0', '2022-03-02', '0', '', NULL, NULL),
(13, '0', '2022-03-02', '0', '', NULL, NULL),
(14, '0', '2022-03-02', '0', '', NULL, NULL),
(15, '0', '2022-03-02', '0', '', NULL, NULL),
(16, '0', '2022-03-02', '1', '', NULL, NULL),
(17, '0', '2022-03-02', '0', '', NULL, NULL),
(18, 'Protector iPhone XS Max', '2022-03-02', '0', '', NULL, NULL),
(19, 'Protector iPhone XS Max', '2022-03-02', '0', '', NULL, NULL),
(20, 'Protector iPhone XS Max', '2022-03-02', 'g9vz8mhh3', '', NULL, NULL),
(21, 'Protector iPhone XS Max', '2022-03-02', 'b2mqoil4w', '', NULL, NULL),
(22, 'Protector iPhone XS Max', '2022-03-02', 'b2mqoil4w', '', NULL, NULL),
(23, 'Mate 20 Lite', '2022-03-02', 'b2mqoil4w', '', NULL, NULL),
(24, 'Samsung A10S', '2022-03-02', 'b2mqoil4w', '', NULL, NULL),
(25, 'Protector iPhone XS Max', '2022-03-02', '8f3ak2ug8', '', NULL, NULL),
(26, 'Protector iPhone XS Max', '2022-03-02', '8f3ak2ug8', '', NULL, NULL),
(27, 'Mate 20 Lite', '2022-03-02', '8f3ak2ug8', '', NULL, NULL),
(28, 'Samsung A10S', '2022-03-02', '8f3ak2ug8', '', NULL, NULL),
(29, 'Protector iPhone XS Max', '2022-03-02', '99x8t9pvr', '', NULL, NULL),
(30, 'Protector iPhone XS Max', '2022-03-02', '99x8t9pvr', '', NULL, NULL),
(31, 'Mate 20 Lite', '2022-03-02', '99x8t9pvr', '', NULL, NULL),
(32, 'Samsung A10S', '2022-03-02', '99x8t9pvr', '', NULL, NULL),
(33, 'Protector iPhone XS Max', '2022-03-02', 'v5b9wrogc', '', NULL, NULL),
(34, 'Protector iPhone XS Max', '2022-03-02', 'v5b9wrogc', '', NULL, NULL),
(35, 'Mate 20 Lite', '2022-03-02', 'v5b9wrogc', '', NULL, NULL),
(36, 'Samsung A10S', '2022-03-02', 'v5b9wrogc', '', NULL, NULL),
(37, 'Mate 20 Lite', '2022-03-02', 'vudtv03fq', '', NULL, NULL),
(38, 'Mate 20 Lite', '2022-03-02', 'vudtv03fq', '', NULL, NULL),
(39, 'Protector Samsung S30/S21', '2022-03-02', 'vudtv03fq', '', NULL, NULL),
(40, 'Protector iPhone XS Max', '2022-03-02', 'vudtv03fq', '', NULL, NULL),
(41, 'Mate 20 Lite', '2022-03-02', '5cew07b0n', '', NULL, NULL),
(42, 'Mate 20 Lite', '2022-03-02', '5cew07b0n', '', NULL, NULL),
(43, 'Protector Samsung S30/S21', '2022-03-02', '5cew07b0n', '', NULL, NULL),
(44, 'Protector iPhone XS Max', '2022-03-02', '5cew07b0n', '', NULL, NULL),
(45, 'Mate 20 Lite', '2022-03-02', '77lz5ocv5', '', NULL, NULL),
(46, 'Mate 20 Lite', '2022-03-02', '77lz5ocv5', '', NULL, NULL),
(47, 'Protector Samsung S30/S21', '2022-03-02', '77lz5ocv5', '', NULL, NULL),
(48, 'Protector iPhone XS Max', '2022-03-02', '77lz5ocv5', '', NULL, NULL),
(49, 'Mate 20 Lite', '2022-03-02', 't3jxopyg7', '', NULL, NULL),
(50, 'Mate 20 Lite', '2022-03-02', 't3jxopyg7', '', NULL, NULL),
(51, 'Protector Samsung S30/S21', '2022-03-02', 't3jxopyg7', '', NULL, NULL),
(52, 'Protector iPhone XS Max', '2022-03-02', 't3jxopyg7', '', NULL, NULL),
(53, 'Protector Samsung S30/S21', '2022-03-02', 't3jxopyg7', '', NULL, NULL),
(54, 'iPhone 11 (6.1)', '2022-03-15', '8moue73zq', '', NULL, NULL),
(55, 'Protector Samsung S30/S21', '2022-03-15', '8moue73zq', '', NULL, NULL),
(56, 'iPhone 7/8 Plus', '2022-03-15', '8moue73zq', '', NULL, NULL),
(57, 'iPhone 11 (6.1)', '2022-03-15', '3myeslnks', '', NULL, NULL),
(58, 'Protector Samsung S30/S21', '2022-03-15', '3myeslnks', '', NULL, NULL),
(59, 'iPhone 7/8 Plus', '2022-03-15', '3myeslnks', '', NULL, NULL),
(60, 'Protector Samsung S30/S21', '2022-03-30', 'v7q58lmqg', '', NULL, NULL),
(61, 'iPhone 11 (6.1)', '2022-03-30', 'v7q58lmqg', '', NULL, NULL),
(62, 'A51', '2022-03-30', 'v7q58lmqg', '', NULL, NULL),
(63, 'Protector Samsung S30/S21', '2022-05-12', 'jw7nizkvp', '', NULL, NULL),
(64, 'Mate 20 Lite', '2022-05-12', 'jw7nizkvp', '', NULL, NULL),
(65, 'Protector Samsung S30/S21', '2022-05-12', 'emeeoygi2', '', NULL, NULL),
(66, 'Mate 20 Lite', '2022-05-12', 'emeeoygi2', '', NULL, NULL),
(67, 'Protector Samsung S30/S21', '2022-05-12', '17o2h8nkp', '', NULL, NULL),
(68, 'Mate 20 Lite', '2022-05-12', '17o2h8nkp', '', NULL, NULL),
(69, 'Protector Samsung S30/S21', '2022-05-12', '5mj5w2cui', 'Array', NULL, NULL),
(70, 'Mate 20 Lite', '2022-05-12', '5mj5w2cui', 'Array', NULL, NULL),
(71, 'Protector Samsung S30/S21', '2022-05-12', 'a5kv3ujdw', 'Array', NULL, NULL),
(72, 'Mate 20 Lite', '2022-05-12', 'a5kv3ujdw', 'Array', NULL, NULL),
(73, 'Protector Samsung S30/S21', '2022-05-12', 'c240kzw9t', '29', NULL, NULL),
(74, 'Protector Samsung S30/S21', '2022-05-12', 'c240kzw9t', '29', NULL, NULL),
(75, 'Mate 20 Lite', '2022-05-12', 'c240kzw9t', '29', NULL, NULL),
(76, 'Mate 20 Lite', '2022-05-12', 'c240kzw9t', '29', NULL, NULL),
(77, 'Protector Samsung S30/S21', '2022-05-13', 'yue7pfnqp', '29', NULL, NULL),
(78, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '29', NULL, NULL),
(79, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '27', NULL, NULL),
(80, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '12', NULL, NULL),
(81, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '29', NULL, NULL),
(82, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '27', NULL, NULL),
(83, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '12', NULL, NULL),
(84, 'Mate 20 Lite', '2022-05-17', 'cf03poq8v', '29', NULL, NULL),
(85, 'Mate 20 Lite', '2022-05-17', 'cf03poq8v', '27', NULL, NULL),
(86, 'Mate 20 Lite', '2022-05-17', 'cf03poq8v', '12', NULL, NULL),
(87, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '29', NULL, NULL),
(88, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '27', NULL, NULL),
(89, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '12', NULL, NULL),
(90, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '29', NULL, NULL),
(91, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '27', NULL, NULL),
(92, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '12', NULL, NULL),
(93, 'Mate 20 Lite', '2022-05-17', '21a0uhkkf', '29', NULL, NULL),
(94, 'Mate 20 Lite', '2022-05-17', '21a0uhkkf', '27', NULL, NULL),
(95, 'Mate 20 Lite', '2022-05-17', '21a0uhkkf', '12', NULL, NULL),
(96, 'Protector Samsung S30/S21', '2022-05-17', 'w0wh8n0ul', '27', NULL, NULL),
(97, 'Protector Samsung S30/S21', '2022-05-17', 'w0wh8n0ul', '12', NULL, NULL),
(98, 'Mate 20 Lite', '2022-05-17', 'w0wh8n0ul', '27', NULL, NULL),
(99, 'Mate 20 Lite', '2022-05-17', 'w0wh8n0ul', '12', NULL, NULL),
(100, 'Protector Samsung S30/S21', '2022-05-31', 'vfhure3v3', '27', NULL, NULL),
(101, 'Mate 20 Lite', '2022-05-31', 'vfhure3v3', '12', NULL, NULL),
(102, 'Protector Samsung S30/S21', '2022-05-31', 'kx4ray8kl', 'undefined', NULL, NULL),
(103, 'Protector Samsung S30/S21', '2022-05-31', 'kx4ray8kl', '29', NULL, NULL),
(104, 'Protector Samsung S30/S21', '2022-05-31', 'pywsyyxw7', 'undefined', NULL, NULL),
(105, 'Protector Samsung S30/S21', '2022-05-31', 'pywsyyxw7', '29', NULL, NULL),
(106, 'Protector Samsung S30/S21', '2022-05-31', 'qrqwk8xnf', '27', NULL, NULL),
(107, 'Mate 20 Lite', '2022-05-31', 'qrqwk8xnf', '12', NULL, NULL),
(108, 'Mate 20 Lite', '2022-06-01', '34j3fsitu', '12', NULL, NULL),
(109, 'NIKE AF1', '2022-06-07', 'o0555sz7d', '27', NULL, NULL),
(110, 'NIKE AF1', '2022-06-07', 'o0555sz7d', '10 b', NULL, NULL),
(111, 'NIKE AF1', '2022-06-07', 'o0555sz7d', '12', NULL, NULL),
(112, 'NIKE AF1', '2022-06-14', '566h3dn0z', 'undefined', NULL, NULL),
(113, 'NIKE AF1', '2022-06-14', 'gng58ts5m', 'undefined', NULL, NULL),
(114, 'NIKE AF1', '2022-06-14', 'du8keddcv', '10 b', NULL, NULL),
(115, 'NIKE AF1', '2022-06-14', 'du8keddcv', '27', NULL, NULL),
(116, 'NIKE AF1', '2022-06-14', 'hory4tvdc', '10 b', NULL, NULL),
(117, 'NIKE AF1', '2022-06-14', 'hory4tvdc', '27', NULL, NULL),
(118, 'NIKE AF1', '2022-06-14', '2jdzd0jkn', '10 b', NULL, NULL),
(119, 'NIKE AF1', '2022-06-14', '2jdzd0jkn', '27', NULL, NULL),
(120, 'NIKE AF1', '2022-07-25', 'xbpuey6yi', '21', NULL, NULL),
(121, 'NIKE AF1', '2022-07-25', 'xbpuey6yi', '21', NULL, NULL),
(122, 'NIKE AF1', '2022-07-25', 'xbpuey6yi', '27', NULL, NULL),
(123, 'PUMA ', '2022-07-26', 'e89aq6wzv', '21', NULL, NULL),
(124, 'NIKE AF1', '2022-07-26', 'e89aq6wzv', '27', NULL, NULL),
(125, 'VANS ', '2022-07-26', 'e89aq6wzv', '27', NULL, NULL),
(126, 'NIKE RETRO 1', '2022-07-26', '4qeeesci7', '12', NULL, NULL),
(127, 'CONVERSE ', '2022-07-26', '4qeeesci7', '27', NULL, NULL),
(128, 'NIKE RUNNING', '2022-07-26', '9wzjvi9nc', '27', NULL, NULL),
(129, 'NIKE', '2022-10-01', 'rhcrlnxn9', '18', NULL, 1),
(130, 'NIKE', '2022-10-01', '3l4ndtn5k', '18', NULL, 1),
(131, '1', '2022-10-05', 'mo8feqj8y', '12', NULL, 1),
(132, '18', '2022-10-05', 'gsldlhkr7', '18', NULL, 1),
(133, '1', '2022-10-11', 'tdb6blu9j', '12', NULL, 1),
(134, '1', '2022-10-11', '4667gh0jn', '12', NULL, 1),
(135, '1', '2022-10-11', 'uq4aescun', '12', NULL, 1),
(136, '1', '2022-10-11', 'ogce0225c', '12', NULL, 1),
(137, '1', '2022-10-11', 'yxrqjhn11', '12', NULL, 1),
(138, '1', '2022-10-11', 'swqkpdew0', '12', NULL, 1),
(139, '1', '2022-10-11', 'bwiwk9zra', '12', NULL, 1),
(140, '1', '2022-10-11', 'v2kjubwxu', '12', NULL, 1),
(141, '1', '2022-10-11', '7s416vbqz', '12', NULL, 1),
(142, '1', '2022-10-11', 'njw0gipo3', '12', NULL, 1),
(143, '1', '2022-10-11', 'tlcs7nv4i', '12', NULL, 1),
(144, '1', '2022-10-11', 'u6y6tpkm7', '12', NULL, 1),
(145, '1', '2022-10-11', 'cfriae4jw', '12', NULL, 1),
(146, '1', '2022-10-11', 'd79t30zv0', '12', NULL, 1),
(147, '1', '2022-10-11', '9kw641712', '12', NULL, 1),
(148, '1', '2022-10-11', 'k2wlvero4', '12', NULL, 1),
(149, '1', '2022-10-11', 'd2a0dfkym', '12', NULL, 1),
(150, '1', '2022-10-11', '1fzk7b195', '12', NULL, 1),
(151, '1', '2022-10-11', 'xbkkei3bf', '12', NULL, 1),
(152, '1', '2022-10-11', '4nlp9odgy', '12', NULL, 1),
(153, '1', '2022-10-11', '2yc120xv7', '12', NULL, 1),
(154, '1', '2022-10-11', '1td66frxk', '12', NULL, 1),
(155, '1', '2022-10-11', '62hmy6t21', '12', NULL, 1),
(156, '1', '2022-10-11', 'tt75e1hws', '12', NULL, 1),
(157, '1', '2022-10-11', 'fi8zyiqcg', '12', NULL, 1),
(158, '1', '2022-10-11', 'kqrtxhyi5', '12', NULL, 1),
(159, '1', '2022-10-11', '4m4waqd02', '12', NULL, 1),
(160, '1', '2022-10-11', 'ds0k4wqmi', '12', NULL, 1),
(161, '1', '2022-10-11', 'x8pwwk755', '12', NULL, 1),
(162, '1', '2022-10-11', 'pqvtsoqq6', '12', NULL, 1),
(163, '1', '2022-10-11', '20srbfg5d', '12', NULL, 1),
(164, '1', '2022-10-11', 'py2fbwt71', '12', NULL, 1),
(165, '1', '2022-10-11', '02wxdsvma', '12', NULL, 1),
(166, '1', '2022-10-11', 'bkq2s2aqf', '12', NULL, 1),
(167, '1', '2022-10-11', 'cduv4z9eb', '12', NULL, 1),
(168, '1', '2022-10-12', 'ojhxwcu5e', '12', NULL, 1),
(169, '1', '2022-10-12', 'os8ki01ip', '12', NULL, 1),
(170, '1', '2022-10-12', 'xzoqw09ho', '12', NULL, 1),
(171, '1', '2022-10-12', 'v3ofdyave', '12', NULL, 1),
(172, '1', '2022-10-12', 'kxrksralc', '12', NULL, 1),
(173, '1', '2022-10-12', 'yxpz8q7oh', '12', NULL, 1),
(174, '1', '2022-10-12', 'i9ap6mybg', '12', NULL, 1),
(175, '1', '2022-10-12', 'h4ky8f50n', '12', NULL, 1),
(176, '1', '2022-10-12', '1exas4ldo', '12', NULL, 1),
(177, '1', '2022-10-12', 'z0v2pcqvw', '12', NULL, 1),
(178, '1', '2022-10-12', '5qiugzmzv', '12', NULL, 1),
(179, '1', '2022-10-12', 'lr8q4nlo1', '12', NULL, 1),
(180, '1', '2022-10-12', '9df7x2cm8', '12', NULL, 1),
(181, '1', '2022-10-12', 'ao4ziediy', '12', NULL, 1),
(182, '1', '2022-10-12', '6ipf9x7ma', '12', NULL, 1),
(183, '1', '2022-10-12', 'cx8rmnlav', '12', NULL, 1),
(184, '1', '2022-10-12', 'nc4zmjv53', '12', NULL, 1),
(185, '1', '2022-10-12', 'hpqld52jz', '12', NULL, 1),
(186, '1', '2022-10-12', 'gd4wpyusi', '12', NULL, 1),
(187, '1', '2022-10-12', '6ky523sd6', '12', NULL, 1),
(188, '1', '2022-10-12', 'fm0zozgzw', '12', NULL, 1),
(189, '1', '2022-10-12', '35p8swasc', '12', NULL, 1),
(190, '1', '2022-10-12', 'ia2a80tef', '12', NULL, 1),
(191, '1', '2022-10-12', 'l1q4q8vem', '12', NULL, 1),
(192, '1', '2022-10-12', 'qu2vg4hxu', '12', NULL, 1),
(193, '1', '2022-10-12', '72e89zoo2', '12', NULL, 1),
(194, '1', '2022-10-12', 't7ibsgtw1', '12', NULL, 1),
(195, '1', '2022-10-12', 'c4gvcrs04', '12', NULL, 1),
(196, '1', '2022-10-12', 'fs4o9wfds', '12', NULL, 1),
(197, '1', '2022-10-12', 'gioc4y8o1', '12', NULL, 1),
(198, '1', '2022-10-12', '54o5yroad', '12', NULL, 1),
(199, '1', '2022-10-12', '95d5i03a5', '12', NULL, 1),
(200, '1', '2022-10-12', '65nvpvhlb', '12', NULL, 1),
(201, '1', '2022-10-12', '9w9v5acqf', '12', NULL, 1),
(202, '1', '2022-10-12', 'zwo0mljgk', '12', NULL, 1),
(203, '1', '2022-10-12', 'z5xiso4ip', '12', NULL, 1),
(204, '1', '2022-10-12', '47xzcu92m', '12', NULL, 1),
(205, '1', '2022-10-12', 'bm2opmp4o', '12', NULL, 1),
(206, '1', '2022-10-12', 'eruut9pa8', '12', NULL, 1),
(207, '1', '2022-10-12', 'cv0o4bnxe', '12', NULL, 1),
(208, '1', '2022-10-12', '4eb4pyrei', '12', NULL, 1),
(209, '1', '2022-10-13', 'iglzuwfvs', '12', NULL, 1),
(210, '1', '2022-10-14', 'vojjpgb6o', '12', NULL, 1),
(211, '1', '2022-10-14', 'a5pxybxyt', '12', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talla`
--
ALTER TABLE `talla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tallaInv`
--
ALTER TABLE `tallaInv`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tenis`
--
ALTER TABLE `tenis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usr`
--
ALTER TABLE `usr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta_gral`
--
ALTER TABLE `venta_gral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta_individual`
--
ALTER TABLE `venta_individual`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `talla`
--
ALTER TABLE `talla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tallaInv`
--
ALTER TABLE `tallaInv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tenis`
--
ALTER TABLE `tenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT de la tabla `usr`
--
ALTER TABLE `usr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `venta_gral`
--
ALTER TABLE `venta_gral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `venta_individual`
--
ALTER TABLE `venta_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
