-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-07-2022 a las 22:04:43
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shoessto_tenis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `id` int(11) NOT NULL,
  `nombre_catalogo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`id`, `nombre_catalogo`) VALUES
(12, 'Tenis Infantil Niño'),
(13, 'Tenis Infantil Niña'),
(15, 'Tenis Infantil Unisex'),
(16, 'Tenis Hombre'),
(17, 'Tenis Mujer'),
(18, 'Tenis Unisex'),
(19, 'Bota Indistrial Hombre'),
(20, 'Bota Industrial Unisex'),
(21, 'Bota Industrial Dama'),
(22, 'Botín para Dama Mujer'),
(23, 'Botín para Dama Infantil'),
(24, 'Bota Industrial Infantil Niño'),
(25, 'Bota para Dama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `color` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`id`, `color`) VALUES
(1, 'Azul'),
(2, 'Rojo'),
(3, 'Verde'),
(4, 'Amarillo'),
(5, 'Negro'),
(6, 'Blanco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `compania` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_llegada` date NOT NULL,
  `id_envio` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'id de la persona que envio',
  `costo_envio` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `codigo_envio_interno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `codigo_envio_externo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `entrega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id`, `fecha_registro`, `compania`, `fecha_llegada`, `id_envio`, `costo_envio`, `codigo_envio_interno`, `codigo_envio_externo`, `entrega`) VALUES
(8, '2022-03-29', 'DHL2', '2022-04-09', 'Jesus Rodolfo', '360', '2', '33-999008-009-ZM', NULL),
(9, '2022-03-30', 'Estafeta', '2022-04-04', 'JesusR L', '450.18', '8', '336td-zac-MX-1', NULL),
(10, '2022-03-30', 'Estafeta', '2022-03-24', 'Jesus Rodolfo Lea', '800', 'v7q58lmqg', 'EST-34455-90-ZMX', NULL),
(11, '2022-05-30', '', '0000-00-00', 'admin', '', '21a0uhkkf', '', 1),
(12, '2022-05-31', '', '0000-00-00', 'admin', '', 'qrqwk8xnf', '', 1),
(13, '2022-06-01', '', '0000-00-00', 'admin', '', '34j3fsitu', '', 1),
(14, '2022-06-14', '', '0000-00-00', 'admin', '', '2jdzd0jkn', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `marca`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Rebook'),
(4, 'Puma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `material` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`id`, `material`) VALUES
(1, 'Piel'),
(2, 'Choclo'),
(3, 'Gamusa'),
(4, 'Plástico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id` int(11) NOT NULL,
  `modelo` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id`, `modelo`) VALUES
(1, 'Uno'),
(2, 'Dos'),
(3, 'Tres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(170) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `precio_prov` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `modelo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marca` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `material` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `talla` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `total_vendido` int(11) DEFAULT NULL,
  `codigo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalogo` int(11) DEFAULT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `precio`, `precio_prov`, `imagen`, `cantidad`, `modelo`, `marca`, `color`, `material`, `talla`, `total_vendido`, `codigo`, `catalogo`, `activo`) VALUES
(1, 'NIKE AF1', 'CHOCLO BLANCO/GRIS MATERIAL: VINIPIEL', 0, '', '1.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(2, 'NIKE AF1', 'CHOCLO BLANCO/ROJO MATERIAL: VINIPIEL', 0, '', '2.png', 0, '0', '', '', '', '27,28,29,30', 0, '0', 15, 1),
(3, 'NIKE AF1', 'CHOCLO BLANCO/ROSA PALO  MATERIAL: VINIPIEL', 0, '', '3.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(4, 'NIKE AF1', 'CHOCLO BLANCO/ROSA PALO/ORO/GRIS/ MATERIAL: VINIPIEL', 0, '', '4.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(5, 'NIKE AF1', 'CHOCLO ROJO/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '5.png', 0, '0', '', '', '', '', 0, '0', 12, 1),
(6, 'NIKE AF1', 'CHOCLO NEGRO TOTAL MATERIAL: VINIPIEL', 0, '', '6.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(7, 'NIKE AF1', 'CHOCLO BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '7.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(8, 'NIKE AF1', 'CHOCLO BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '8.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(9, 'NIKE AF1', 'CHOCLO BLANCO/GRIS/ROSA MATERIAL: VINIPIEL', 0, '', '9.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(10, 'NIKE AF1', 'CHOCLO BLANCO/AMARILLO/NEGRO MATERIAL: VINIPIEL', 0, '', '10.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(11, 'NIKE AF1', 'CHOCLO BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '11.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(12, 'NIKE AF1', 'CHOCLO BLANCO/LILA/NEGRO MATERIAL: VINIPIEL', 0, '', '12.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(13, 'NIKE AF1', 'CHOCLO BLANCO/ROJO/AZUL/NEGRO/AMARILLO MATERIAL: VINIPIEL', 0, '', '13.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(14, 'NIKE AF1', 'CHOCLO BLANCO/NEGRO/GRIS MATERIAL: VINIPIEL', 0, '', '14.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(15, 'NIKE AF1', 'CHOCLO ARCOIRIS//// MATERIAL: VINIPIEL', 0, '', '15.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(16, 'NIKE AF1', 'CHOCLO BLANCO/ROSA PALO/NEGRO MATERIAL: VINIPIEL', 0, '', '16.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(17, 'NIKE AF1', 'CHOCLO GRIS/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '17.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(18, 'PUMA ', 'CHOCLO BLANCO/GRIS/AZUL/ROJO MATERIAL: VINIPIEL', 0, '', '18.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(19, 'NIKE AF1', 'CHOCLO BLANCO/MENTA/ORO MATERIAL: VINIPIEL', 0, '', '19.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(20, 'NIKE RETRO 1', 'BOTA BLANCO/NEGRO/ROJO MATERIAL: VINIPIEL', 0, '', '20.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(21, 'NIKE RETRO 1', 'BOTA BLANCO/GRIS MATERIAL: VINIPIEL', 0, '', '21.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(22, 'NIKE RETRO 1', 'BOTA BLANCO/GRIS/SALMON MATERIAL: VINIPIEL', 0, '', '22.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(23, 'NIKE ', 'BOTA BLANCO/ROJO/AZUL/AMARILLO/VERDE MATERIAL: VINIPIEL', 0, '', '23.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(24, 'NIKE ', 'BOTA BLANCO/AMARILLO/TURQUEZA/LILA/MENTA MATERIAL: VINIPIEL', 0, '', '24.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(25, 'nombre', 'descripcion', 0, '', 'image', 0, '0', '', '', '', '', 0, 'codigo', 0, 0),
(26, 'CONVERSE ', 'CHOCLO BLANCO TOTAL MATERIAL: LONA', 0, '', '26.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(27, 'CONVERSE ', 'CHOCLO ROJO/BLANCO MATERIAL: LONA', 0, '', '27.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(28, 'CONVERSE ', 'CHOCLO BLANCO/GRIS/AMARILLO MATERIAL: LONA', 0, '', '28.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(29, 'CONVERSE ', 'CHOCLO ROSA PALO/BLANCO MATERIAL: LONA', 0, '', '29.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(30, 'CONVERSE ', 'CHOCLO ROSA PALO/BLANCO MATERIAL: LONA', 0, '', '30.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(31, 'CONVERSE ', 'CHOCLO BLANCO/GRIS/ROSAMATERIAL: LONA', 0, '', '31.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(32, 'CONVERSE ', 'CHOCLO ROJO/BLANCO MATERIAL: LONA', 0, '', '32.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(33, 'CONVERSE ', 'CHOCLO VINO/BLANCO MATERIAL: LONA', 0, '', '33.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(34, 'CONVERSE ', 'CHOCLO MARINO/BLANCO MATERIAL: LONA', 0, '', '34.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(35, 'CONVERSE ', 'BOTA NEGRO/BLANCO MATERIAL: LONA', 0, '', '35.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(36, 'NIKE CORTEZ', 'CHOCLO BLANCO/ROJO/AZUL MATERIAL: VINIPIEL', 0, '', '36.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(37, 'NIKE CORTEZ', 'CHOCLO NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '37.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(38, 'NIKE CORTEZ', 'CHOCLO ROJO/BLANCO MATERIAL: VINIPIEL', 0, '', '38.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(39, 'NIKE ', 'CHOCLO CAMEL/BLANCO MATERIAL: GAMUZA', 0, '', '39.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(40, 'NIKE DEPORTIVO', 'CHOCLO NEGRO/BLANCO/ROJO MATERIAL: MAYA', 0, '', '40.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(41, 'NIKE DEPORTIVO', 'CHOCLO NEGRO/BLANCO MATERIAL: MAYA', 0, '', '41.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(42, 'ADIDAS DEPORTIVO', 'CHOCLO NEGRO/ROJO MATERIAL: SINTETICO', 0, '', '42.png', 0, '0', '', '', '', '', 0, '0', 12, 1),
(43, 'NIKE DEPORTIVO', 'CHOCLO GRIS/ROSA MATERIAL: MAYA', 0, '', '43.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(44, 'NIKE DEPORTIVO', 'CHOCLO BLANCO/NARANJA MATERIAL: MAYA', 0, '', '44.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(45, 'NIKE DEPORTIVO', 'CHOCLO LILA/GRIS/BLANCO MATERIAL: TELA', 0, '', '45.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(46, 'NIKE DEPORTIVO', 'CHOCLO ROSA/BLANCO MATERIAL: SINTETICO', 0, '', '46.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(47, 'NIKE DEPORTIVO', 'CHOCLO AZUL CIELO/ROSA MATERIAL: SINTETICO', 0, '', '47.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(48, 'VANS ', 'CHOCLO LILA/BLANCO MATERIAL: TELA', 0, '', '48.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(49, 'VANS ', 'CHOCLO ROSA/BLANCO MATERIAL: TELA', 0, '', '49.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(50, 'VANS ', 'CHOCLO ROJO/BLANCO MATERIAL: TELA', 0, '', '50.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(51, 'VANS ', 'CHOCLO NEGRO TOTAL MATERIAL: TELA', 0, '', '51.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(52, 'VANS ', 'CHOCLO ROSA PALO/BLANCO MATERIAL: TELA', 0, '', '52.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(53, 'VANS ', 'CHOCLO MENTA/BLANCO MATERIAL: TELA', 0, '', '53.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(54, 'VANS ', 'CHOCLO NEGRO/CAMEL MATERIAL: TELA', 0, '', '54.png', 0, '0', '', '', '', '', 0, '0', 12, 1),
(55, 'VANS ', 'CHOCLO VINO/BLANCO MATERIAL: TELA', 0, '', '55.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(56, 'VANS ', 'CHOCLO NEGRO/BLANCO MATERIAL: TELA', 0, '', '56.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(57, 'VANS ', 'CHOCLO ROSA/BLANCO MATERIAL: TELA', 0, '', '57.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(58, 'NIKE ', 'CHOCLO NEGRO/BLANCO MATERIAL: TELA', 0, '', '58.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(59, 'NIKE ', 'CHOCLO ROJO/BLANCO/NEGRO MATERIAL: TELA', 0, '', '59.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(60, 'NIKE ', 'CHOCLO ROSA PALO/BLANCO MATERIAL: TELA', 0, '', '60.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(61, 'CATERPILLAR ', 'BOTA NEGRO TOTAL MATERIAL: PIEL', 0, '', '61.png', 0, '0', '', '', '', '', 0, '0', 24, 1),
(62, 'VANS ', 'CHOCLO ROJO/BLANCO MATERIAL: TELA', 0, '', '62.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(63, 'VANS ', 'CHOCLO MARINO/BLANCO MATERIAL: TELA', 0, '', '63.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(64, 'VANS ', 'CHOCLO VINO/BLANCO MATERIAL: TELA', 0, '', '64.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(65, 'VANS ', 'CHOCLO NEGRO TOTAL MATERIAL: TELA', 0, '', '65.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(66, 'VANS ', 'CHOCLO ROJO TOTAL MATERIAL: TELA', 0, '', '66.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(67, 'VANS ', 'CHOCLO NEGRO/BLANCO MATERIAL: TELA', 0, '', '67.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(68, 'VANS ', 'CHOCLO BLANCO/NEGRO MATERIAL: TELA', 0, '', '68.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(69, 'VANS ', 'CHOCLO BLANCO/AMARILLO MATERIAL: TELA', 0, '', '69.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(70, 'VANS ', 'CHOCLO BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '70.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(71, 'VANS ', 'BOTA NEGRO/BLANCO MATERIAL: TELA', 0, '', '71.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(72, 'NIKE AF1', 'CHOCLO ROJO/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '72.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(73, 'NIKE AF1', 'CHOCLO BLANCO/TORNASOL MATERIAL: VINIPIEL', 0, '', '73.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(74, 'NIKE AF1', 'CHOCLO BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '74.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(75, 'NIKE AF1', 'CHOCLO VERDE MILITAR/BLANCO MATERIAL: VINIPIEL', 0, '', '75.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(76, 'NIKE AF1', 'CHOCLO BLANCO/MORADO/MENTA/AMARILLO MATERIAL: VINIPIEL', 0, '', '76.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(77, 'NIKE AF1', 'CHOCLO GRIS/CAMEL MATERIAL: NOBUCK', 0, '', '77.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(78, 'NIKE AF1', 'CHOCLO ROJO/CAMEL/AZUL/NEGRO/LILA MATERIAL: VINIPIEL', 0, '', '78.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(79, 'NIKE AF1', 'CHOCLO NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '79.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(80, 'NIKE AF1', 'CHOCLO BLANCO/ROJO MATERIAL: VINIPIEL', 0, '', '80.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(81, 'NIKE AF1', 'CHOCLO BLANCO/LILA/NARANJA MATERIAL: VINIPIEL', 0, '', '81.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(82, 'NIKE AF1', 'CHOCLO CAMEL/NEGRO/BLANCO/VERDE/AMARILLO MATERIAL: VINIPIEL', 0, '', '82.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(83, 'NIKE AF1', 'CHOCLO AZUL CIELO/BLANCO/NEGRO/CAMEL MATERIAL: VINIPIEL', 0, '', '83.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(84, 'NIKE AF1', 'CHOCLO BLANCO/SALMON MATERIAL: VINIPIEL', 0, '', '84.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(85, 'NIKE AF1', 'CHOCLO NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '85.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(86, 'NIKE AF1', 'CHOCLO BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '86.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(87, 'NIKE AF1', 'CHOCLO BLANCO/MARINO/ROJO MATERIAL: VINIPIEL', 0, '', '87.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(88, 'NIKE AF1', 'CHOCLO BLANCO/NEGRO/ROJO MATERIAL: VINIPIEL', 0, '', '88.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(89, 'NIKE AF1', 'CHOCLO BLANCO/ROSA PALO/SALMON/LILA MATERIAL: VINIPIEL', 0, '', '89.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(90, 'NIKE AF1', 'CHOCLO BLANCO/AZUL CIELO MATERIAL: VINIPIEL', 0, '', '90.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(91, 'NIKE AF1', 'CHOCLO BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '91.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(92, 'NIKE AF1', 'CHOCLO BLANCO/AZUL CIELO MATERIAL: VINIPIEL', 0, '', '92.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(93, 'NIKE AF1', 'CHOCLO BLANCO/MARINO/ROJO MATERIAL: VINIPIEL', 0, '', '93.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(94, 'NIKE AF1', 'CHOCLO BLANCO/ROSA MATERIAL: VINIPIEL', 0, '', '94.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(95, 'NIKE AF1', 'CHOCLO BLANCO/MENTA/AMARILLO/LILA MATERIAL: VINIPIEL', 0, '', '95.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(96, 'NIKE AF1', 'CHOCLO NEGRO/CAMEL MATERIAL: NOBUCK', 0, '', '96.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(97, 'NIKE AF1', 'CHOCLO NEGRO/CAMEL/BLANCO MATERIAL: NOBUCK', 0, '', '97.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(98, 'NIKE AF1', 'CHOCLO NEGRO/CAMEL/BLANCO MATERIAL: NOBUCK', 0, '', '98.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(99, 'NIKE AF1', 'CHOCLO NEGRO/CAMEL MATERIAL: NOBUCK', 0, '', '99.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(100, 'NIKE AF1', 'CHOCLO CAMEL TOTAL MATERIAL: NOBUCK', 0, '', '100.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(101, 'NIKE AF1', 'CHOCLO BLANCO/NEGRO/GRIS MATERIAL: VINIPIEL', 0, '', '101.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(102, 'NIKE AF1', 'CHOCLO BLANCO/VERDE/LILA/GRIS/TURQUEZA MATERIAL: VINIPIEL', 0, '', '102.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(103, 'NIKE AF1', 'CHOCLO BLANCO/VERDE/CAF? MATERIAL: VINIPIEL', 0, '', '103.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(104, 'NIKE AF1', 'CHOCLO BLANCO/LILA/AZUL/SALMON MATERIAL: VINIPIEL', 0, '', '104.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(105, 'NIKE AF1', 'CHOCLO BLANCO/SALMON/NARANJA/VINO MATERIAL: VINIPIEL', 0, '', '105.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(106, 'NIKE AF1', 'CHOCLO BLANCO/GRIS/NARANJA/ROJO/VERDE MATERIAL: VINIPIEL', 0, '', '106.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(107, 'NIKE AF1', 'CHOCLO BLANCO/ROSA MATERIAL: VINIPIEL', 0, '', '107.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(108, 'NIKE AF1', 'CHOCLO BLANCO/LILA/AZUL CIELO MATERIAL: VINIPIEL', 0, '', '108.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(109, 'NIKE AF1', 'CHOCLO BLANCO/GRIS/ROSA MATERIAL: VINIPIEL', 0, '', '109.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(110, 'NIKE AF1', 'CHOCLO BLANCO/CAF?/ORO MATERIAL: VINIPIEL', 0, '', '110.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(111, 'NIKE AF1', 'CHOCLO BLANCO/ROSA/ROJO MATERIAL: VINIPIEL', 0, '', '111.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(112, 'NIKE PRESTO', 'CHOCLO BLANCO TOTAL MATERIAL: MAYA', 0, '', '112.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(113, 'NIKE PRESTO', 'CHOCLO NEGRO TOTAL MATERIAL: MAYA', 0, '', '113.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(114, 'NIKE PRESTO', 'CHOCLO AMARILLO TOTAL MATERIAL: MAYA', 0, '', '114.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(115, 'NIKE PRESTO', 'CHOCLO ROSA TOTAL MATERIAL: MAYA', 0, '', '115.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(116, 'NIKE PRESTO', 'CHOCLO ROSA PALO TOTAL MATERIAL: MAYA', 0, '', '116.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(117, 'NIKE RUNNING', 'CHOCLO AZUL REY/BLANCO MATERIAL: MAYA', 0, '', '117.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(118, 'NIKE RUNNING', 'CHOCLO GRIS/BLANCO MATERIAL: MAYA', 0, '', '118.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(119, 'NIKE RUNNING', 'CHOCLO ROJO/BLANCO MATERIAL: MAYA', 0, '', '119.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(120, 'NIKE RUNNING', 'CHOCLO ROSA TOTAL MATERIAL: MAYA', 0, '', '120.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(121, 'NIKE RUNNING', 'CHOCLO LILA TOTAL MATERIAL: MAYA', 0, '', '121.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(122, 'NIKE RUNNING', 'CHOCLO BLANCO/NEGRO MATERIAL: MAYA', 0, '', '122.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(123, 'NIKE JOYRIDE', 'CHOCLO ROJO TOTAL MATERIAL: MAYA', 0, '', '123.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(124, 'NIKE ', 'CHOCLO NEGRO/BLANCO MATERIAL: TELA', 0, '', '124.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(125, 'NIKE ', 'CHOCLO ROJO/BLANCO MATERIAL: TELA', 0, '', '125.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(126, 'DC ', 'CHOCLO BLANCO TOTAL MATERIAL: TELA', 0, '', '126.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(127, 'NIKE ', 'CHOCLO BLANCO TOTAL MATERIAL: TELA', 0, '', '127.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(128, 'DC ', 'CHOCLO ROJO/CAMEL MATERIAL: TELA', 0, '', '128.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(129, 'NIKE ', 'CHOCLO NEGRO TOTAL MATERIAL: TELA', 0, '', '129.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(130, 'NIKE AF1', 'CHOCLO NEGRO TOTAL MATERIAL: VINIPIEL', 0, '', '130.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(131, 'PUMA ', 'CHOCLO BLANCO/AZUL REY MATERIAL: VINIPIEL', 0, '', '131.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(132, 'NIKE ', 'CHOCLO NEGRO/CAMEL MATERIAL: TELA', 0, '', '132.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(133, 'PUMA ', 'CHOCLO BLANCO/GRIS/NEGRO MATERIAL: TELA', 0, '', '133.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(134, 'PUMA ', 'CHOCLO BLANCO/AZUL MARINO MATERIAL: VINIPIEL', 0, '', '134.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(135, 'NIKE CORTEZ', 'CHOCLO BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '135.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(136, 'NIKE CORTEZ', 'CHOCLO MARINO/BLANCO MATERIAL: VINIPIEL', 0, '', '136.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(137, 'NIKE CORTEZ', 'CHOCLO BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '137.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(138, 'NIKE RUNNING', 'CHOCLO NEGRO/BLANCO MATERIAL: MAYA', 0, '', '138.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(139, 'NIKE CORTEZ', 'CHOCLO NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '139.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(140, 'NIKE RUNNING', 'CHOCLO GRIS/NEGRO/ROJO MATERIAL: MAYA', 0, '', '140.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(141, 'ADIDAS ', 'CHOCLO BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '141.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(142, 'ADIDAS ', 'CHOCLO BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '142.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(143, 'ADIDAS ', 'CHOCLO BLANCO/AZUL/ROJO MATERIAL: VINIPIEL', 0, '', '143.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(144, 'ADIDAS ', 'CHOCLO BLANCO/ROJO MATERIAL: VINIPIEL', 0, '', '144.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(145, 'REEBOK ', 'CHOCLO BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '145.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(146, 'CONVERSE ', 'CHOCLO NEGRO/BLANCO MATERIAL: LONA', 0, '', '146.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(147, 'CONVERSE ', 'CHOCLO VARIOS MATERIAL: LONA', 0, '', '147.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(148, 'CONVERSE ', 'CHOCLO BLANCO/NEGRO/ROJO MATERIAL: LONA', 0, '', '148.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(149, 'CONVERSE ', 'CHOCLO BLANCO TOTAL MATERIAL: LONA', 0, '', '149.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(150, 'CONVERSE ', 'CHOCLO ROJO/BLANCO MATERIAL: LONA', 0, '', '150.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(151, 'CONVERSE ', 'CHOCLO ROSA/BLANCO MATERIAL: LONA', 0, '', '151.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(152, 'CONVERSE ', 'CHOCLO NEGRO/BLANCO MATERIAL: LONA', 0, '', '152.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(153, 'CONVERSE ', 'CHOCLO LILA/BLANCO MATERIAL: LONA', 0, '', '153.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(154, 'CONVERSE ', 'CHOCLO NEGRO TOTAL MATERIAL: LONA', 0, '', '154.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(155, 'CONVERSE ', 'CHOCLO BLANCO/NEGRO/ROSA MATERIAL: LONA', 0, '', '155.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(156, 'CONVERSE ', 'CHOCLO VARIOS MATERIAL: LONA', 0, '', '156.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(157, 'CONVERSE ', 'CHOCLO TURQUEZA/BLANCO MATERIAL: LONA', 0, '', '157.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(158, 'CONVERSE ', 'CHOCLO MORADO/BLANCO MATERIAL: LONA', 0, '', '158.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(159, 'CONVERSE ', 'CHOCLO NEGRO/BLANCO/ROJO MATERIAL: LONA', 0, '', '159.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(160, 'CONVERSE ', 'CHOCLO NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '160.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(161, 'CONVERSE ', 'BOTA NEGRO/BLANCO MATERIAL: LONA', 0, '', '161.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(162, 'CONVERSE ', 'BOTA BLANCO TOTAL MATERIAL: LONA', 0, '', '162.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(163, 'CONVERSE ', 'BOTA NEGRO TOTAL MATERIAL: LONA', 0, '', '163.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(164, 'CONVERSE ', 'CHOCLO PLATAFORMA BLANCO TOTAL MATERIAL: LONA', 0, '', '164.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(165, 'CONVERSE ', 'CHOCLO PLATAFORMA NEGRO/BLANCO MATERIAL: LONA', 0, '', '165.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(166, 'CONVERSE ', 'CHOCLO PLATAFORMA MEZCLILLA/BLANCO MATERIAL: LONA', 0, '', '166.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(167, 'CONVERSE ', 'CHOCLO PLATAFORMA NEGRO TOTAL MATERIAL: LONA', 0, '', '167.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(168, 'CONVERSE ', 'CHOCLO PLATAFORMA BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '168.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(169, 'CONVERSE ', 'CHOCLO PLATAFORMA NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '169.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(170, 'CONVERSE ', 'CHOCLO PLATAFORMA NEGRO/BLANCO MATERIAL: LONA', 0, '', '170.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(171, 'CONVERSE ', 'BOTA PLATAFORMA NEGRO/BLANCO MATERIAL: LONA', 0, '', '171.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(172, 'CONVERSE ', 'BOTA PLATAFORMA BLANCO TOTAL MATERIAL: LONA', 0, '', '172.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(173, 'CONVERSE ', 'BOTA PLATAFORMA MEZCLILLA OBSCURO/BLANCO MATERIAL: LONA', 0, '', '173.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(174, 'CONVERSE ', 'BOTA PLATAFORMA CEBRA MATERIAL: TERCIOPELO', 0, '', '174.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(175, 'CONVERSE ', 'BOTA PLATAFORMA MEZCLILLA/BLANCO MATERIAL: LONA', 0, '', '175.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(176, 'CONVERSE ', 'BOTA PLATAFORMA CEBRA MATERIAL: VINIPIEL-TERCIOPELO', 0, '', '176.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(177, 'CONVERSE ', 'BOTA PLATAFORMA NEGRO TOTAL MATERIAL: LONA', 0, '', '177.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(178, 'CONVERSE ', 'BOTA PLATAFORMA NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '178.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(179, 'CONVERSE ', 'BOTA PLATAFORMA NEGRO TOTAL MATERIAL: LONA', 0, '', '179.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(180, 'K-SWISS ', 'CHOCLO BLANCO/ROJO MATERIAL: VINIPIEL', 0, '', '180.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(181, 'K-SWISS ', 'CHOCLO BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '181.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(182, 'NIKE JOYRIDE', 'CHOCLO AMARILLO/NEGRO MATERIAL: MAYA', 0, '', '182.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(183, 'NIKE JOYRIDE', 'CHOCLO ROJO/BLANCO/NEGRO MATERIAL: MAYA', 0, '', '183.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(184, 'NIKE RUNNING', 'CHOCLO NEGRO/BLANCO MATERIAL: TEXTIL', 0, '', '184.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(185, 'NIKE RUNNING', 'CHOCLO ROJO/BLANCO/NEGRO MATERIAL: TEXTIL', 0, '', '185.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(186, 'NIKE RUNNING', 'CHOCLO AZUL MARINO/ROJO/BLANCO MATERIAL: TEXTIL', 0, '', '186.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(187, 'NIKE RUNNING', 'CHOCLO AZUL REY/BLANCO/NEGRO MATERIAL: TEXTIL', 0, '', '187.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(188, 'PUMA ', 'CHOCLO NEGRO/ORO MATERIAL: MAYA', 0, '', '188.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(189, 'ADIDAS ', 'CHOCLO ROJO/BLANCO/NEGRO MATERIAL: TEXTIL', 0, '', '189.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(190, 'ADIDAS ', 'CHOCLO LILA/BLANCO MATERIAL: TEXTIL', 0, '', '190.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(191, 'ADIDAS ', 'CHOCLO GRIS/BLANCO/ROSA MATERIAL: TEXTIL', 0, '', '191.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(192, 'ADIDAS ', 'CHOCLO NEGRO/BLANCO MATERIAL: TEXTIL', 0, '', '192.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(193, 'ADIDAS ', 'CHOCLO ROSA PALO/AZUL CIELO/LILA/AMARILLO MATERIAL: MAYA', 0, '', '193.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(194, 'GUESS ', 'CHOCLO BLANCO/ROSA/NEGRO MATERIAL: VINIPIEL', 0, '', '194.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(195, 'FILA ', 'CHOCLO BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '195.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(196, 'FILA ', 'CHOCLO NEGRO TOTAL MATERIAL: VINIPIEL', 0, '', '196.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(197, 'FILA ', 'CHOCLO NEGRO TOTAL MATERIAL: VINIPIEL', 0, '', '197.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(198, 'FILA ', 'CHOCLO CAMEL/BLANCO MATERIAL: NOBUCK', 0, '', '198.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(199, 'FILA ', 'CHOCLO ROSA PALO TOTAL MATERIAL: VINIPIEL', 0, '', '199.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(200, 'FILA ', 'CHOCLO NEGRO TOTAL MATERIAL: NOBUCK', 0, '', '200.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(201, 'FILA ', 'CHOCLO BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '201.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(202, 'UNDER ARMOUR CALCETIN', 'CHOCLO AZUL REY/BLANCO MATERIAL: TEXTIL', 0, '', '202.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(203, 'UNDER ARMOUR CALCETIN', 'CHOCLO NEGRO/BLANCO MATERIAL: TEXTIL', 0, '', '203.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(204, 'UNDER ARMOUR CALCETIN', 'CHOCLO NEGRO TOTAL MATERIAL: TEXTIL', 0, '', '204.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(205, 'UNDER ARMOUR CALCETIN', 'CHOCLO ROJO/BLANCO MATERIAL: TEXTIL', 0, '', '205.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(206, 'UNDER ARMOUR CALCETIN', 'CHOCLO MAQUILLAJE/BLANCO MATERIAL: TEXTIL', 0, '', '206.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(207, 'UNDER ARMOUR CALCETIN', 'CHOCLO GRIS/BLANCO MATERIAL: TEXTIL', 0, '', '207.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(208, 'NIKE CALCETIN', 'CHOCLO GRIS OXFORD/BLANCO MATERIAL: TEXTIL', 0, '', '208.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(209, 'NIKE CALCETIN', 'CHOCLO ROJO/NEGRO MATERIAL: TEXTIL', 0, '', '209.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(210, 'NIKE CALCETIN', 'CHOCLO NEGRO/BLANCO MATERIAL: TEXTIL', 0, '', '210.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(211, 'NIKE CALCETIN', 'CHOCLO ROSA PALO/BLANCO MATERIAL: TEXTIL', 0, '', '211.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(212, 'NIKE CALCETIN', 'CHOCLO NEGRO/ROJO MATERIAL: TEXTIL', 0, '', '212.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(213, 'NIKE CALCETIN', 'CHOCLO ROSA MEXICANO/AZUL MARINO MATERIAL: TEXTIL', 0, '', '213.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(214, 'NIKE RETRO 1', 'BOTA MORADO/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '214.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(215, 'NIKE OFF WHITE', 'BOTA AMARILLO/BLANCO/GRIS MATERIAL: VINIPIEL', 0, '', '215.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(216, 'NIKE OFF WHITE', 'BOTA VERDE LIMON/BLANCO/GRIS MATERIAL: VINIPIEL', 0, '', '216.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(217, 'NIKE RETRO 1', 'BOTA NEGRO/AMARILLO MATERIAL: VINIPIEL', 0, '', '217.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(218, 'NIKE RETRO 1', 'BOTA ROSA PALO/BLANCO MATERIAL: VINIPIEL', 0, '', '218.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(219, 'NIKE RETRO 1', 'BOTA SALMON/BLANCO MATERIAL: VINIPIEL', 0, '', '219.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(220, 'NIKE RETRO 1', 'BOTA ROSA PALO/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '220.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(221, 'NIKE RETRO 1', 'BOTA AZUL CIELO/BLANCO/NARANJA/GRIS MATERIAL: VINIPIEL', 0, '', '221.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(222, 'NIKE RETRO 1', 'BOTA NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '222.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(223, 'NIKE RETRO 1', 'BOTA AZUL CIELO/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '223.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(224, 'NIKE RETRO 1', 'BOTA BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '224.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(225, 'NIKE RETRO 1', 'BOTA AZUL MARINO/BLANCO MATERIAL: VINIPIEL', 0, '', '225.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(226, 'NIKE RETRO 1', 'BOTA ROSA PALO/BLANCO/TURQUEZA/LILA/AMARILLO MATERIAL: VINIPIEL', 0, '', '226.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(227, 'NIKE RETRO 1', 'BOTA BLANCO/CAMEL/NEGRO MATERIAL: VINIPIEL', 0, '', '227.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(228, 'NIKE RETRO 1', 'BOTA ROJO/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '228.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(229, 'NIKE RETRO 1', 'BOTA BLANCO/NEGRO/ROJO MATERIAL: VINIPIEL', 0, '', '229.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(230, 'NIKE RETRO 1', 'BOTA ROJO/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '230.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(231, 'NIKE RETRO 1', 'BOTA BLANCO/NEGRO/GRIS MATERIAL: VINIPIEL', 0, '', '231.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(232, 'NIKE RETRO 1', 'BOTA NEGRO TOTAL MATERIAL: VINIPIEL', 0, '', '232.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(233, 'NIKE RETRO 1', 'BOTA NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '233.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(234, 'NIKE RETRO 1', 'BOTA CAF?/CREMA/NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '234.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(235, 'NIKE RETRO 1', 'BOTA AZUL REY/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '235.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(236, 'NIKE RETRO 1', 'BOTA BLANCO/NEGRO/ROJO MATERIAL: VINIPIEL', 0, '', '236.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(237, 'NIKE RETRO 1', 'BOTA GRIS/BLANCO MATERIAL: VINIPIEL', 0, '', '237.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(238, 'NIKE AF1', 'BOTA NEGRO TOTAL MATERIAL: VINIPIEL', 0, '', '238.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(239, 'NIKE AF1', 'BOTA BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '239.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(240, 'NIKE AF1', 'BOTA BLANCO/ROJO/NEGRO MATERIAL: VINIPIEL', 0, '', '240.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(241, 'NIKE JORDAN 4', 'BOTA ROJO/NEGRO MATERIAL: VINIPIEL', 0, '', '241.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(242, 'NIKE AIRMAX 270', 'CHOCLO NEGRO TOTAL MATERIAL: TEXTIL', 0, '', '242.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(243, 'NIKE AIRMAX 270', 'CHOCLO NEGRO TOTAL/BLANCO MATERIAL: TEXTIL', 0, '', '243.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(244, 'NIKE AIRMAX 270', 'CHOCLO NEGRO/ROJO/BLANCO MATERIAL: TEXTIL', 0, '', '244.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(245, 'NIKE AIRMAX 270', 'CHOCLO ROJO/NEGRO MATERIAL: TEXTIL', 0, '', '245.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(246, 'NIKE AIRMAX 270', 'CHOCLO ROJO/BLANCO MATERIAL: TEXTIL', 0, '', '246.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(247, 'NIKE AIRMAX 270', 'CHOCLO VERDE MILITAR MATERIAL: TEXTIL', 0, '', '247.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(248, 'NIKE AIRMAX 270', 'CHOCLO NEGRO/ROJO/BLANCO MATERIAL: TEXTIL', 0, '', '248.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(249, 'NIKE AIRMAX 270', 'CHOCLO BLANCO/NEGRO/ORO MATERIAL: TEXTIL', 0, '', '249.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(250, 'PUMA ', 'CHOCLO GRIS/BLANCO/ROSA PALO MATERIAL: MAYA', 0, '', '250.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(251, 'PUMA ', 'CHOCLO GRIS/BLANCO/AZUL CIELO MATERIAL: MAYA', 0, '', '251.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(252, 'PUMA ', 'CHOCLO GRIS OXFORD/BLANCO/ROJO MATERIAL: MAYA', 0, '', '252.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(253, 'PUMA ', 'CHOCLO NEGRO/BLANCO MATERIAL: MAYA', 0, '', '253.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(254, 'PUMA ', 'CHOCLO BLANCO/NEGRO MATERIAL: MAYA', 0, '', '254.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(255, 'PUMA ', 'CHOCLO NEGRO TOTAL MATERIAL: MAYA', 0, '', '255.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(256, 'PUMA ', 'CHOCLO ROJO/BLANCO MATERIAL: MAYA', 0, '', '256.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(257, 'PUMA ', 'CHOCLO GRIS/BLANCO/VERDE MATERIAL: MAYA', 0, '', '257.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(258, 'PUMA ', 'CHOCLO BLANCO/ORO MATERIAL: MAYA', 0, '', '258.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(259, 'PUMA ', 'CHOCLO NEGRO/ORO MATERIAL: MAYA', 0, '', '259.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(260, 'PUMA ', 'CHOCLO VINO/BLANCO MATERIAL: MAYA', 0, '', '260.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(261, 'NIKE AIR720', 'CHOCLO BLANCO/ROJO/NEGRO MATERIAL: TEXTIL', 0, '', '261.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(262, 'NIKE AIRMAX 270', 'CHOCLO NEGRO TOTAL MATERIAL: TEXTIL', 0, '', '262.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(263, 'NIKE AIR720', 'CHOCLO BLANCO/ORO MATERIAL: TEXTIL', 0, '', '263.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(264, 'NIKE AIRMAX 270', 'CHOCLO ROSA TOTAL MATERIAL: TEXTIL', 0, '', '264.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(265, 'NIKE AIR720', 'CHOCLO ROSA/BLANCO MATERIAL: TEXTIL', 0, '', '265.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(266, 'NIKE AIR720', 'CHOCLO BLANCO/ROSA MATERIAL: TEXTIL', 0, '', '266.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(267, 'NIKE AIR720', 'CHOCLO AZUL CIELO TOTAL MATERIAL: TEXTIL', 0, '', '267.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(268, 'NIKE AIRMAX 270', 'CHOCLO ROJO TOTAL/BLANCO MATERIAL: TEXTIL', 0, '', '268.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(269, 'NIKE AIRMAX 270', 'CHOCLO ROSA TOTAL MATERIAL: TEXTIL', 0, '', '269.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(270, 'NIKE AIR720', 'CHOCLO ROJO TOTAL/BLANCO MATERIAL: TEXTIL', 0, '', '270.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(271, 'NIKE AIR720', 'CHOCLO AZUL CIELO/BLANCO/VERDE MATERIAL: TEXTIL', 0, '', '271.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(272, 'NIKE AIRMAX 270', 'CHOCLO BLANCO/ROSA PALO MATERIAL: TEXTIL', 0, '', '272.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(273, 'UNDER ARMOUR SCORPIO', 'CHOCLO NEGRO/AZUL FOSFORESCENTE MATERIAL: TEXTIL', 0, '', '273.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(274, 'UNDER ARMOUR SCORPIO', 'CHOCLO NEGRO/ROSA FOSFORESCENTE MATERIAL: TEXTIL', 0, '', '274.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(275, 'UNDER ARMOUR SCORPIO', 'CHOCLO NEGRO/VERDE FOSFORESCENTE MATERIAL: TEXTIL', 0, '', '275.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(276, 'PUMA ', 'CHOCLO NEGRO/BLANCO MATERIAL: TEXTIL', 0, '', '276.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(277, 'ADIDAS TERREX', 'BOTA ROJO/NEGRO MATERIAL: TEXTIL', 0, '', '277.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(278, 'CATERPILLAR ', 'BOTA CAF?/NEGRO MATERIAL: VINIPIEL', 0, '', '278.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(279, 'CATERPILLAR ', 'BOTA CAF? CLARO/NEGRO MATERIAL: VINIPIEL', 0, '', '279.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(280, 'CATERPILLAR ', 'BOTA CAF? CLARO/NEGRO MATERIAL: VINIPIEL', 0, '', '280.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(281, 'CATERPILLAR ', 'BOTA AMARILLO/NEGRO MATERIAL: SINTETICO', 0, '', '281.png', 0, '0', '', '', '', '', 0, '0', 20, 1),
(282, 'JEEP ', 'BOTA NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '282.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(283, 'CATERPILLAR ', 'BOTA NEGRO/CAMUFLAJE MATERIAL: TEXTIL', 0, '', '283.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(284, 'CATERPILLAR ', 'BOTA CAF?/NEGRO MATERIAL: SINTETICO', 0, '', '284.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(285, 'CATERPILLAR ', 'BOTA NEGRO TOTAL MATERIAL: SINTETICO', 0, '', '285.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(286, 'CATERPILLAR ', 'BOTA NEGRO TOTAL MATERIAL: PIEL', 0, '', '286.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(287, 'CATERPILLAR ', 'BOTA CAMEL/NEGRO MATERIAL: PIEL', 0, '', '287.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(288, 'CATERPILLAR ', 'BOTA CAF?/NEGRO MATERIAL: PIEL', 0, '', '288.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(289, 'JEEP ', 'BOTA NEGRO/ROSA PALO MATERIAL: PIEL', 0, '', '289.png', 0, '0', '', '', '', '', 0, '0', 21, 1),
(290, 'CATERPILLAR ', 'BOTA ROJO/NEGRO MATERIAL: PIEL', 0, '', '290.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(291, 'JEEP ', 'BOTA NEGRO TOTAL MATERIAL: PIEL', 0, '', '291.png', 0, '0', '', '', '', '', 0, '0', 20, 1),
(292, 'CATERPILLAR ', 'BOTA VERDE OLIVO/NEGRO/AMARILLO MATERIAL: SINTETICO', 0, '', '292.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(293, 'CATERPILLAR ', 'BOTA CAMEL/AMARILLO MATERIAL: SINTETICO', 0, '', '293.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(294, 'CATERPILLAR ', 'BOTA AMARILLO/NEGRO MATERIAL: SINTETICO', 0, '', '294.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(295, 'CATERPILLAR ', 'BOTA CAF?/NEGRO/AMARILLO MATERIAL: SINTETICO', 0, '', '295.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(296, 'CATERPILLAR ', 'BOTA NEGRO TOTAL MATERIAL: SINTETICO', 0, '', '296.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(297, 'CATERPILLAR ', 'BOTA NEGRO TOTAL/AMARILLO MATERIAL: PIEL', 0, '', '297.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(298, 'CATERPILLAR ', 'BOTA NEGRO TOTAL/AMARILLO MATERIAL: PIEL', 0, '', '298.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(299, 'CATERPILLAR ', 'BOTA CAF?/NEGRO/AMARILLO MATERIAL: PIEL', 0, '', '299.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(300, 'CATERPILLAR ', 'BOTA AMARILLO/NEGRO MATERIAL: PIEL', 0, '', '300.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(301, 'CATERPILLAR ', 'BOTA CAF?/NEGRO MATERIAL: PIEL', 0, '', '301.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(302, 'CATERPILLAR ', 'BOTA CAF?/NEGRO/AMARILLO MATERIAL: PIEL', 0, '', '302.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(303, 'CATERPILLAR ', 'BOTA NEGRO TOTAL/AMARILLO MATERIAL: PIEL', 0, '', '303.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(304, 'CATERPILLAR ', 'BOTA CHEDRON/NEGRO MATERIAL: PIEL', 0, '', '304.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(305, 'LEE ', 'BOTA VERDE OLIVO/NEGRO/ROJO MATERIAL: SINTETICO', 0, '', '305.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(306, 'CATERPILLAR ', 'BOTA NEGRO TOTAL/AMARILLO MATERIAL: SINTETICO', 0, '', '306.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(307, 'CATERPILLAR ', 'BOTA CAF?/NEGRO/ROJO MATERIAL: SINTETICO', 0, '', '307.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(308, 'CATERPILLAR ', 'BOTA CAF?/NEGRO/AMARILLO MATERIAL: SINTETICO', 0, '', '308.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(309, 'CATERPILLAR ', 'BOTA AMARILLO/NEGRO/NARANJA MATERIAL: SINTETICO', 0, '', '309.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(310, 'MODBEAT ', 'BOTA NEGRO TOTAL MATERIAL: PIEL', 0, '', '310.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(311, 'MODBEAT ', 'BOTA CAF?/NEGRO MATERIAL: PIEL', 0, '', '311.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(312, 'MODBEAT ', 'BOTA CAF?/NEGRO MATERIAL: PIEL', 0, '', '312.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(313, 'MODBEAT ', 'BOTA CAF?/NEGRO MATERIAL: PIEL', 0, '', '313.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(314, 'MODBEAT ROOPER', 'BOTA NEGRO TOTAL MATERIAL: PIEL', 0, '', '314.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(315, 'MODBEAT ROOPER', 'BOTA CAF?/NEGRO MATERIAL: PIEL', 0, '', '315.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(316, 'MODBEAT ROOPER', 'BOTA CAF? OBSCURO/CHEDRON/NEGRO/CAF? CLARO MATERIAL: PIEL', 0, '', '316.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(317, 'MODBEAT ROOPER', 'BOTA CAF? OBSCURO/CHEDRON/NEGRO/CAF? CLARO MATERIAL: PIEL', 0, '', '317.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(318, 'MODBEAT ROOPER', 'BOTA NEGRO/CAF? OBSCURO MATERIAL: PIEL', 0, '', '318.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(319, 'MODBEAT ROOPER', 'BOTA NEGRO/CHEDRON MATERIAL: PIEL', 0, '', '319.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(320, 'MODBEAT ROOPER', 'BOTA CAF? OBSCURO/NEGRO MATERIAL: PIEL', 0, '', '320.png', 0, '0', '', '', '', '', 0, '0', 19, 1),
(321, ' TUBO LARGO', 'BOTA NEGRO TOTAL MATERIAL: VINIPIEL', 0, '', '321.png', 0, '0', '', '', '', '', 0, '0', 25, 1),
(322, ' TUBO LARGO', 'BOTA CAF? TOTAL MATERIAL: VINIPIEL', 0, '', '322.png', 0, '0', '', '', '', '', 0, '0', 25, 1),
(323, ' TUBO LARGO', 'BOTA CHEDRON MATERIAL: VINIPIEL', 0, '', '323.png', 0, '0', '', '', '', '', 0, '0', 25, 1),
(324, ' TUBO LARGO', 'BOTA CAMEL MATERIAL: GAMUZA', 0, '', '324.png', 0, '0', '', '', '', '', 0, '0', 25, 1),
(325, ' ', 'BOTIN NEGRO TOTAL MATERIAL: SINTETICO', 0, '', '325.png', 0, '0', '', '', '', '', 0, '0', 22, 1),
(326, ' ', 'BOTIN CAF?/NEGRO MATERIAL: VINIPIEL', 0, '', '326.png', 0, '0', '', '', '', '', 0, '0', 22, 1),
(327, ' ', 'BOTIN ROSA TOTAL MATERIAL: VINIPIEL', 0, '', '327.png', 0, '0', '', '', '', '', 0, '0', 22, 1),
(328, ' ', 'BOTIN BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '328.png', 0, '0', '', '', '', '', 0, '0', 23, 1),
(329, 'ADIDAS TERREX', 'CHOCLO AZUL REY/NEGRO/BLANCO MATERIAL: SINTETICO', 0, '', '329.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(330, 'UNDER ARMOUR CALCETIN', 'CHOCLO ROSA/BLANCO MATERIAL: MAYA', 0, '', '330.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(331, 'NIKE CALCETIN', 'CHOCLO AZUL MARINO/ROSA FIUSA MATERIAL: MAYA', 0, '', '331.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(332, 'NIKE AIR720', '', 0, '', '332.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(333, 'NIKE AIR720', 'CHOCLO NEGRO TOTAL/BLANCO MATERIAL: SINTETICO', 0, '', '333.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(334, 'NIKE AF1 BOTA', 'BOTA BLANCO/ROSA FIUSA/NEGRO MATERIAL: VINIPIEL', 0, '', '334.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(335, 'NIKE AF1 BOTA', 'BOTA ROSA PALO/BLANCO MATERIAL: VINIPIEL', 0, '', '335.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(336, 'NIKE AF1 BOTA', 'BOTA LILA/BLANCO MATERIAL: VINIPIEL', 0, '', '336.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(337, 'NIKE AIRMAX 270', 'CHOCLO BLANCO/NEGRO MATERIAL: MAYA', 0, '', '337.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(338, 'NIKE AIRMAX 270', 'CHOCLO BLANCO/ROJO/NEGRO MATERIAL: MAYA', 0, '', '338.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(339, 'NIKE AIR720', 'CHOCLO BLANCO TOTAL/NEGRO MATERIAL: MAYA', 0, '', '339.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(340, 'PUMA ', 'CHOCLO GRIS/BLANCO/ROSA PALO MATERIAL: MAYA', 0, '', '340.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(341, 'PUMA ', 'CHOCLO GRIS/ROSA PALO/BLANCO MATERIAL: MAYA', 0, '', '341.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(342, 'NIKE AF1', 'CHOCLO ROSA PALO/BLANCO MATERIAL: VINIPIEL', 0, '', '342.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(343, 'NIKE AF1', 'CHOCLO ROJO/BLANCO MATERIAL: VINIPIEL', 0, '', '343.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(344, 'NIKE RETRO 1', 'BOTA BLANCO TOTAL MATERIAL: VINIPIEL', 0, '', '344.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(345, 'NIKE JORDAN', 'BOTA NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '345.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(346, 'NIKE JORDAN', 'BOTA NEGRO/ROJO/BLANCO MATERIAL: VINIPIEL', 0, '', '346.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(347, 'NIKE AIRMAX 270', 'CHOCLO NEGRO TOTAL/BLANCO MATERIAL: MAYA', 0, '', '347.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(348, 'NIKE JORDAN', 'BOTA NEGRO/AMARILLO MATERIAL: VINIPIEL', 0, '', '348.png', 0, '0', '', '', '', '', 0, '0', 16, 1),
(349, 'NIKE AF1', 'CHOCLO BLANCO/ROSA PALO/NEGRO MATERIAL: VINIPIEL', 0, '', '349.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(350, 'NIKE AF1', 'CHOCLO BLANCO TOTAL/ROSA MATERIAL: VINIPIEL', 0, '', '350.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(351, 'NIKE RETRO 1', 'BOTA BLANCO/ROSA PALO/AMARILLO/AZUL CIELO MATERIAL: VINIPIEL', 0, '', '351.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(352, 'NIKE JORDAN', 'BOTA AZUL CIELO/BLANCO/NEGRO MATERIAL: VINIPIEL', 0, '', '352.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(353, 'NIKE AF1', 'CHOCLO ROSA PALO/AZUL CIELO/BLANCO MATERIAL: VINIPIEL', 0, '', '353.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(354, 'NIKE AF1', 'CHOCLO BLANCO TOTAL/NEGRO MATERIAL: VINIPIEL', 0, '', '354.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(355, 'CONVERSE ', 'BOTA ROJO/BLANCO/NEGRO MATERIAL: LONA', 0, '', '355.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(356, 'NIKE AF1 BOTA', 'BOTA CAMEL/NEGRO MATERIAL: GAMUZA', 0, '', '356.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(357, 'NIKE AF1 BOTA', 'BOTA BLANCO/ROJO/NEGRO/GRIS MATERIAL: VINIPIEL', 0, '', '357.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(358, 'NIKE AF1 BOTA', 'BOTA BLANCO/AZUL CIELO/ROSA PALO/AMARILLO/LILA MATERIAL: VINIPIEL', 0, '', '358.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(359, 'NIKE AF1 BOTA', 'BOTA BLANCO/TURQUEZA/AZUL CIELO/AZUL MARINO/ROSA PALO MATERIAL: VINIPIEL', 0, '', '359.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(360, 'NIKE JORDAN', 'BOTA NEGRO/BLANCO/ROJO MATERIAL: VINIPIEL', 0, '', '360.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(361, 'UNDER ARMOUR CALCETIN', 'CHOCLO BLANCO TOTAL/PLATA MATERIAL: MAYA', 0, '', '361.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(362, 'NIKE AF1', 'CHOCLO BLANCO/CAMEL/NEGRO MATERIAL: VINIPIEL', 0, '', '362.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(363, 'NIKE AF1', 'CHOCLO VINO/CAMEL MATERIAL: GAMUZA', 0, '', '363.png', 0, '0', '', '', '', '', 0, '0', 18, 1),
(364, 'NIKE AF1', 'CHOCLO BLANCO TOTAL/AMARILLO MATERIAL: VINIPIEL', 0, '', '364.png', 0, '0', '', '', '', '', 0, '0', 17, 1),
(365, 'NIKE JORDAN', 'CHOCLO BLANCO/AZUL MARINO MATERIAL: VINIPIEL', 0, '', '365.png', 0, '0', '', '', '', '', 0, '0', 15, 1),
(366, 'NIKE JORDAN', 'CHOCLO ROSA PALO/BLANCO/LILA MATERIAL: VINIPIEL', 0, '', '366.png', 0, '0', '', '', '', '', 0, '0', 13, 1),
(367, 'NIKE JORDAN', 'CHOCLO NEGRO/BLANCO MATERIAL: VINIPIEL', 0, '', '367.png', 0, '0', '', '', '', '', 0, '0', 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla`
--

CREATE TABLE `talla` (
  `id` int(11) NOT NULL,
  `talla` varchar(4) NOT NULL,
  `id_ext` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `talla`
--

INSERT INTO `talla` (`id`, `talla`, `id_ext`, `cantidad`) VALUES
(1, '29', 1, 9),
(2, '27', 1, 12),
(3, '12', 4, 30),
(4, 'adul', 16, 9),
(5, 'jove', 16, 10),
(6, '10 b', 2, 3),
(7, '10 n', 2, 0),
(8, '', 2, 0),
(9, '30', 16, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla_catalogo`
--

CREATE TABLE `talla_catalogo` (
  `id` int(11) NOT NULL,
  `talla` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `talla_catalogo`
--

INSERT INTO `talla_catalogo` (`id`, `talla`, `tipo`) VALUES
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
-- Estructura de tabla para la tabla `usr`
--

CREATE TABLE `usr` (
  `id` int(11) NOT NULL,
  `usr` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usr`
--

INSERT INTO `usr` (`id`, `usr`, `pwd`, `perfil`) VALUES
(1, 'admin', '123456789', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_gral`
--

CREATE TABLE `venta_gral` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
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
  `entrega` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `venta_gral`
--

INSERT INTO `venta_gral` (`id`, `cantidad`, `precio`, `fecha_venta`, `nombre`, `direccion`, `telefono`, `email`, `tarjeta`, `nombre_tarjeta`, `expira_mes`, `expira_annio`, `clave_rastreo_int`, `clave_rastreo_ext`, `entrega`) VALUES
(1, 850, 4, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'sdfasdf@fdsafd.net', '0', 'Jesus R', '24', '09', '1', '', 0),
(2, 850, 4, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'sdfasdf@fdsafd.net', 'XXXXXXXXXXX3844', 'Jesus R', '24', '09', '2', '33-999008-009-ZMX', 0),
(3, 850, 4, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'sdfasdf@fdsafd.net', 'XXXXXXXXXXX3844', 'Jesus R', '24', '09', '3', '', 0),
(4, 4, 700, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '4', '', 0),
(5, 4, 700, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '5', '', 0),
(6, 4, 700, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '6', '', 0),
(7, 5, 800, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '7', '', 0),
(8, 3, 1100, '2022-03-15', '0', 'Direccion conocida', '99999999', 'dskjdsjs@fjfjf.net', 'XXXXXXXXXXX3434', 'Geranios', '02', '03', '8', '336td-zac-MX-1', 0),
(9, 3, 1100, '2022-03-15', 'JESÃšS RODOLFO LEAÃ‘OS VILLEGAS', 'Direccion conocida', '99999999', 'dskjdsjs@fjfjf.net', 'XXXXXXXXXXX3434', 'Geranios', '02', '03', '9', '', 0),
(10, 3, 850, '2022-03-30', 'RODOLFO DE JESÃšS LEAÃ‘OS V', 'AND TULIPANES 12 A COL EL CARMEN GUADALUPE, ZAC', '4927951930', 'jesusrlvrojo@gmail.com', 'XXXXXXXXXXX2223', 'Jesus R', '09', '21', 'v7q58lmqg', 'EST-34455-90-ZMX', 0),
(11, 2, 270, '2022-05-12', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', '', '', '', '', 'jw7nizkvp', NULL, 0),
(12, 2, 270, '2022-05-12', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, '5mj5w2cui', NULL, 0),
(13, 2, 270, '2022-05-12', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'a5kv3ujdw', NULL, 0),
(14, 2, 270, '2022-05-12', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'c240kzw9t', NULL, 0),
(15, 1, 120, '2022-05-13', '', '', '', '', NULL, NULL, NULL, NULL, 'yue7pfnqp', NULL, 0),
(16, 3, 390, '2022-05-17', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, '21a0uhkkf', '21a0uhkkf', 1),
(17, 2, 270, '2022-05-17', 'RODOLFO L', 'Andador tulipanes 12 a', '9236222', 'superUser@gmail.com', NULL, NULL, NULL, NULL, 'w0wh8n0ul', NULL, NULL),
(18, 2, 270, '2022-05-31', 'Ana Elisa', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'vfhure3v3', NULL, NULL),
(19, 2, 240, '2022-05-31', 'Ana Elisa', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'kx4ray8kl', NULL, NULL),
(20, 2, 240, '2022-05-31', 'Ana Elisa', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'pywsyyxw7', NULL, NULL),
(21, 2, 270, '2022-05-31', 'JesusRLV', 'XXXXX', '999999', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'qrqwk8xnf', 'qrqwk8xnf', 1),
(22, 1, 150, '2022-06-01', 'Jesus Rodolfo iPhone 11', 'Zacatecas', '4927951930', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, '34j3fsitu', '34j3fsitu', 1),
(23, 0, 0, '2022-06-03', 'Pete bermudez ', 'De la peñuela 208', '4921029243', '', NULL, NULL, NULL, NULL, 's4i2w2my4', NULL, NULL),
(24, 3, 0, '2022-06-07', 'Jesus Rodolfo', 'Andador tulipanes 12 a', '9236222', 'jesusrlvrojo@gmail.com', NULL, NULL, NULL, NULL, 'o0555sz7d', NULL, NULL),
(25, 0, 0, '2022-06-14', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, '9nwsjiavn', NULL, NULL),
(26, 0, 0, '2022-06-14', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'm2tmkw60q', NULL, NULL),
(27, 0, 0, '2022-06-14', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'wtele2116', NULL, NULL),
(28, 0, 0, '2022-06-14', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'o7ixk8w4z', NULL, NULL),
(29, 0, 0, '2022-06-14', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'ayd2p9et0', NULL, NULL),
(30, 0, 0, '2022-06-14', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, '8xws9d9cd', NULL, NULL),
(31, 0, 0, '2022-06-14', 'Pedro ', 'Hajdjdkd', '9273638282', 'nsndbdbsk@gmail.com', NULL, NULL, NULL, NULL, 'ixz85hgll', NULL, NULL),
(32, 1, 0, '2022-06-14', 'Pedro', 'Hahsksndk', '538237393', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, '566h3dn0z', NULL, NULL),
(33, 1, 0, '2022-06-14', 'Pedro', 'Hahsksndk', '538237393', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, 'gng58ts5m', NULL, NULL),
(34, 0, 0, '2022-06-14', 'Pedro Bermúdez ', 'Bzhxjxjxnxndh', '41934737339', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, 'du8keddcv', NULL, NULL),
(35, 0, 0, '2022-06-14', 'Pedro Bermúdez ', 'Bzhxjxjxnxndh', '41934737339', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, 'hory4tvdc', NULL, NULL),
(36, 0, 0, '2022-06-14', 'Pedro Bermúdez ', 'Bzhxjxjxnxndh', '41934737339', 'pedroa.bermudezz@gmail.com', NULL, NULL, NULL, NULL, '2jdzd0jkn', '2jdzd0jkn', 1);

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
(119, 'NIKE AF1', '2022-06-14', '2jdzd0jkn', '27', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talla`
--
ALTER TABLE `talla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talla_catalogo`
--
ALTER TABLE `talla_catalogo`
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
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT de la tabla `talla`
--
ALTER TABLE `talla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `talla_catalogo`
--
ALTER TABLE `talla_catalogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usr`
--
ALTER TABLE `usr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta_gral`
--
ALTER TABLE `venta_gral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `venta_individual`
--
ALTER TABLE `venta_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
