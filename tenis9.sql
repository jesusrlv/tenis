-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-09-2022 a las 01:16:29
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
(4, 'Naranja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `id_ext_tenis` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `vendidos` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'GRIS', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '1.png', 0, 0, 0),
(2, 'TENIS', 'INFANTIL', 'NIKE', 'AF1', 'CHOCLO', 'BLANCO', 'ROJO', '', '', '', '', 'VINIPIEL', 'UNISEX', 0, '2.png', 0, 0, 0),
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
(18, 'TENIS', 'INFANTIL', 'PUMA', '', 'CHOCLO', 'BLANCO', 'GRIS', 'AZUL', 'ROJO', '', '', 'VINIPIEL', 'UNISEX', 0, '18.png', 0, 0, 0),
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
  `perfil` int(11) NOT NULL,
  `status_e` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
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
(46, 1, 0, '2022-09-23 18:11:08', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'w3jc2kcrk', NULL, NULL, 1, NULL);

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
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `venta_individual`
--

INSERT INTO `venta_individual` (`id`, `producto`, `fecha_venta`, `venta_gral`, `talla`, `cantidad`) VALUES
(1, '0', '0000-00-00', '0', '', NULL),
(2, '0', '0000-00-00', '0', '', NULL),
(3, '0', '0000-00-00', '0', '', NULL),
(4, '0', '2022-03-02', '0', '', NULL),
(5, '0', '2022-03-02', '0', '', NULL),
(6, '0', '2022-03-02', '0', '', NULL),
(7, '0', '2022-03-02', '0', '', NULL),
(8, '0', '2022-03-02', '0', '', NULL),
(9, '0', '2022-03-02', '0', '', NULL),
(10, '0', '2022-03-02', '0', '', NULL),
(11, '0', '2022-03-02', '0', '', NULL),
(12, '0', '2022-03-02', '0', '', NULL),
(13, '0', '2022-03-02', '0', '', NULL),
(14, '0', '2022-03-02', '0', '', NULL),
(15, '0', '2022-03-02', '0', '', NULL),
(16, '0', '2022-03-02', '1', '', NULL),
(17, '0', '2022-03-02', '0', '', NULL),
(18, 'Protector iPhone XS Max', '2022-03-02', '0', '', NULL),
(19, 'Protector iPhone XS Max', '2022-03-02', '0', '', NULL),
(20, 'Protector iPhone XS Max', '2022-03-02', 'g9vz8mhh3', '', NULL),
(21, 'Protector iPhone XS Max', '2022-03-02', 'b2mqoil4w', '', NULL),
(22, 'Protector iPhone XS Max', '2022-03-02', 'b2mqoil4w', '', NULL),
(23, 'Mate 20 Lite', '2022-03-02', 'b2mqoil4w', '', NULL),
(24, 'Samsung A10S', '2022-03-02', 'b2mqoil4w', '', NULL),
(25, 'Protector iPhone XS Max', '2022-03-02', '8f3ak2ug8', '', NULL),
(26, 'Protector iPhone XS Max', '2022-03-02', '8f3ak2ug8', '', NULL),
(27, 'Mate 20 Lite', '2022-03-02', '8f3ak2ug8', '', NULL),
(28, 'Samsung A10S', '2022-03-02', '8f3ak2ug8', '', NULL),
(29, 'Protector iPhone XS Max', '2022-03-02', '99x8t9pvr', '', NULL),
(30, 'Protector iPhone XS Max', '2022-03-02', '99x8t9pvr', '', NULL),
(31, 'Mate 20 Lite', '2022-03-02', '99x8t9pvr', '', NULL),
(32, 'Samsung A10S', '2022-03-02', '99x8t9pvr', '', NULL),
(33, 'Protector iPhone XS Max', '2022-03-02', 'v5b9wrogc', '', NULL),
(34, 'Protector iPhone XS Max', '2022-03-02', 'v5b9wrogc', '', NULL),
(35, 'Mate 20 Lite', '2022-03-02', 'v5b9wrogc', '', NULL),
(36, 'Samsung A10S', '2022-03-02', 'v5b9wrogc', '', NULL),
(37, 'Mate 20 Lite', '2022-03-02', 'vudtv03fq', '', NULL),
(38, 'Mate 20 Lite', '2022-03-02', 'vudtv03fq', '', NULL),
(39, 'Protector Samsung S30/S21', '2022-03-02', 'vudtv03fq', '', NULL),
(40, 'Protector iPhone XS Max', '2022-03-02', 'vudtv03fq', '', NULL),
(41, 'Mate 20 Lite', '2022-03-02', '5cew07b0n', '', NULL),
(42, 'Mate 20 Lite', '2022-03-02', '5cew07b0n', '', NULL),
(43, 'Protector Samsung S30/S21', '2022-03-02', '5cew07b0n', '', NULL),
(44, 'Protector iPhone XS Max', '2022-03-02', '5cew07b0n', '', NULL),
(45, 'Mate 20 Lite', '2022-03-02', '77lz5ocv5', '', NULL),
(46, 'Mate 20 Lite', '2022-03-02', '77lz5ocv5', '', NULL),
(47, 'Protector Samsung S30/S21', '2022-03-02', '77lz5ocv5', '', NULL),
(48, 'Protector iPhone XS Max', '2022-03-02', '77lz5ocv5', '', NULL),
(49, 'Mate 20 Lite', '2022-03-02', 't3jxopyg7', '', NULL),
(50, 'Mate 20 Lite', '2022-03-02', 't3jxopyg7', '', NULL),
(51, 'Protector Samsung S30/S21', '2022-03-02', 't3jxopyg7', '', NULL),
(52, 'Protector iPhone XS Max', '2022-03-02', 't3jxopyg7', '', NULL),
(53, 'Protector Samsung S30/S21', '2022-03-02', 't3jxopyg7', '', NULL),
(54, 'iPhone 11 (6.1)', '2022-03-15', '8moue73zq', '', NULL),
(55, 'Protector Samsung S30/S21', '2022-03-15', '8moue73zq', '', NULL),
(56, 'iPhone 7/8 Plus', '2022-03-15', '8moue73zq', '', NULL),
(57, 'iPhone 11 (6.1)', '2022-03-15', '3myeslnks', '', NULL),
(58, 'Protector Samsung S30/S21', '2022-03-15', '3myeslnks', '', NULL),
(59, 'iPhone 7/8 Plus', '2022-03-15', '3myeslnks', '', NULL),
(60, 'Protector Samsung S30/S21', '2022-03-30', 'v7q58lmqg', '', NULL),
(61, 'iPhone 11 (6.1)', '2022-03-30', 'v7q58lmqg', '', NULL),
(62, 'A51', '2022-03-30', 'v7q58lmqg', '', NULL),
(63, 'Protector Samsung S30/S21', '2022-05-12', 'jw7nizkvp', '', NULL),
(64, 'Mate 20 Lite', '2022-05-12', 'jw7nizkvp', '', NULL),
(65, 'Protector Samsung S30/S21', '2022-05-12', 'emeeoygi2', '', NULL),
(66, 'Mate 20 Lite', '2022-05-12', 'emeeoygi2', '', NULL),
(67, 'Protector Samsung S30/S21', '2022-05-12', '17o2h8nkp', '', NULL),
(68, 'Mate 20 Lite', '2022-05-12', '17o2h8nkp', '', NULL),
(69, 'Protector Samsung S30/S21', '2022-05-12', '5mj5w2cui', 'Array', NULL),
(70, 'Mate 20 Lite', '2022-05-12', '5mj5w2cui', 'Array', NULL),
(71, 'Protector Samsung S30/S21', '2022-05-12', 'a5kv3ujdw', 'Array', NULL),
(72, 'Mate 20 Lite', '2022-05-12', 'a5kv3ujdw', 'Array', NULL),
(73, 'Protector Samsung S30/S21', '2022-05-12', 'c240kzw9t', '29', NULL),
(74, 'Protector Samsung S30/S21', '2022-05-12', 'c240kzw9t', '29', NULL),
(75, 'Mate 20 Lite', '2022-05-12', 'c240kzw9t', '29', NULL),
(76, 'Mate 20 Lite', '2022-05-12', 'c240kzw9t', '29', NULL),
(77, 'Protector Samsung S30/S21', '2022-05-13', 'yue7pfnqp', '29', NULL),
(78, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '29', NULL),
(79, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '27', NULL),
(80, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '12', NULL),
(81, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '29', NULL),
(82, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '27', NULL),
(83, 'Protector Samsung S30/S21', '2022-05-17', 'cf03poq8v', '12', NULL),
(84, 'Mate 20 Lite', '2022-05-17', 'cf03poq8v', '29', NULL),
(85, 'Mate 20 Lite', '2022-05-17', 'cf03poq8v', '27', NULL),
(86, 'Mate 20 Lite', '2022-05-17', 'cf03poq8v', '12', NULL),
(87, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '29', NULL),
(88, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '27', NULL),
(89, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '12', NULL),
(90, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '29', NULL),
(91, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '27', NULL),
(92, 'Protector Samsung S30/S21', '2022-05-17', '21a0uhkkf', '12', NULL),
(93, 'Mate 20 Lite', '2022-05-17', '21a0uhkkf', '29', NULL),
(94, 'Mate 20 Lite', '2022-05-17', '21a0uhkkf', '27', NULL),
(95, 'Mate 20 Lite', '2022-05-17', '21a0uhkkf', '12', NULL),
(96, 'Protector Samsung S30/S21', '2022-05-17', 'w0wh8n0ul', '27', NULL),
(97, 'Protector Samsung S30/S21', '2022-05-17', 'w0wh8n0ul', '12', NULL),
(98, 'Mate 20 Lite', '2022-05-17', 'w0wh8n0ul', '27', NULL),
(99, 'Mate 20 Lite', '2022-05-17', 'w0wh8n0ul', '12', NULL),
(100, 'Protector Samsung S30/S21', '2022-05-31', 'vfhure3v3', '27', NULL),
(101, 'Mate 20 Lite', '2022-05-31', 'vfhure3v3', '12', NULL),
(102, 'Protector Samsung S30/S21', '2022-05-31', 'kx4ray8kl', 'undefined', NULL),
(103, 'Protector Samsung S30/S21', '2022-05-31', 'kx4ray8kl', '29', NULL),
(104, 'Protector Samsung S30/S21', '2022-05-31', 'pywsyyxw7', 'undefined', NULL),
(105, 'Protector Samsung S30/S21', '2022-05-31', 'pywsyyxw7', '29', NULL),
(106, 'Protector Samsung S30/S21', '2022-05-31', 'qrqwk8xnf', '27', NULL),
(107, 'Mate 20 Lite', '2022-05-31', 'qrqwk8xnf', '12', NULL),
(108, 'Mate 20 Lite', '2022-06-01', '34j3fsitu', '12', NULL),
(109, 'NIKE AF1', '2022-06-07', 'o0555sz7d', '27', NULL),
(110, 'NIKE AF1', '2022-06-07', 'o0555sz7d', '10 b', NULL),
(111, 'NIKE AF1', '2022-06-07', 'o0555sz7d', '12', NULL),
(112, 'NIKE AF1', '2022-06-14', '566h3dn0z', 'undefined', NULL),
(113, 'NIKE AF1', '2022-06-14', 'gng58ts5m', 'undefined', NULL),
(114, 'NIKE AF1', '2022-06-14', 'du8keddcv', '10 b', NULL),
(115, 'NIKE AF1', '2022-06-14', 'du8keddcv', '27', NULL),
(116, 'NIKE AF1', '2022-06-14', 'hory4tvdc', '10 b', NULL),
(117, 'NIKE AF1', '2022-06-14', 'hory4tvdc', '27', NULL),
(118, 'NIKE AF1', '2022-06-14', '2jdzd0jkn', '10 b', NULL),
(119, 'NIKE AF1', '2022-06-14', '2jdzd0jkn', '27', NULL),
(120, 'NIKE AF1', '2022-07-25', 'xbpuey6yi', '21', NULL),
(121, 'NIKE AF1', '2022-07-25', 'xbpuey6yi', '21', NULL),
(122, 'NIKE AF1', '2022-07-25', 'xbpuey6yi', '27', NULL),
(123, 'PUMA ', '2022-07-26', 'e89aq6wzv', '21', NULL),
(124, 'NIKE AF1', '2022-07-26', 'e89aq6wzv', '27', NULL),
(125, 'VANS ', '2022-07-26', 'e89aq6wzv', '27', NULL),
(126, 'NIKE RETRO 1', '2022-07-26', '4qeeesci7', '12', NULL),
(127, 'CONVERSE ', '2022-07-26', '4qeeesci7', '27', NULL),
(128, 'NIKE RUNNING', '2022-07-26', '9wzjvi9nc', '27', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `tenis`
--
ALTER TABLE `tenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT de la tabla `usr`
--
ALTER TABLE `usr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta_gral`
--
ALTER TABLE `venta_gral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `venta_individual`
--
ALTER TABLE `venta_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
