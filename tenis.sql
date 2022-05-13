-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-05-2022 a las 23:29:49
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
-- Base de datos: `tenis`
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
(1, 'Carcazas'),
(2, 'Micas protectoras'),
(3, 'Pilas'),
(4, 'Cargadores y pilas');

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
  `codigo_envio_externo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id`, `fecha_registro`, `compania`, `fecha_llegada`, `id_envio`, `costo_envio`, `codigo_envio_interno`, `codigo_envio_externo`) VALUES
(8, '2022-03-29', 'DHL2', '2022-04-09', 'Jesus Rodolfo', '360', '2', '33-999008-009-ZM'),
(9, '2022-03-30', 'Estafeta', '2022-04-04', 'JesusR L', '450.18', '8', '336td-zac-MX-1'),
(10, '2022-03-30', 'Estafeta', '2022-03-24', 'Jesus Rodolfo L', '800', 'v7q58lmqg', 'EST-34455-90-ZMX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `catalogo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(170) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `modelo` int(11) DEFAULT NULL,
  `total_vendido` int(11) DEFAULT NULL,
  `codigo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalogo` int(11) DEFAULT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `cantidad`, `modelo`, `total_vendido`, `codigo`, `catalogo`, `activo`) VALUES
(1, 'Protector Samsung S30/S21', 'Descripción del producto 01', 120, 'producto_01.jpg', 18, 1, 0, 'protector1', 1, 1),
(2, 'Protector iPhone XS Max', 'Descripción del producto 02', 300, 'producto_02.jpg', 10, 2, 0, 'protector2', 1, 1),
(3, 'iPhone 11 (6.1)', 'Descripción del producto 03', 450, 'producto_03.jpg', 36, 1, 0, 'protector3', 1, 1),
(4, 'Mate 20 Lite', 'Descripción del producto 04', 150, 'producto_04.jpg', 10, 1, 0, 'protector4', 1, 1),
(6, 'Huawei Y9S', 'Descripción del producto 06', 300, 'producto_06.jpg', 10, 1, 0, 'protector5', 1, 1),
(7, 'A51', 'Descripción del producto 07', 350, 'producto_07.jpg', 10, 1, 0, 'protector6', 1, 1),
(8, 'iPhone 7/8 Plus', 'Descripción del producto 08', 600, 'producto_08.jpg', 10, 1, 0, 'protector7', 1, 1),
(9, 'producto_09.jpg', 'Descripción del producto 09', 100, 'producto_09.jpg', 10, 1, 0, 'protector8', 1, 1),
(10, 'iPhone XS Max', 'Descripción del producto 010', 500, 'producto_010.jpg', 10, 1, 0, 'protector9', 1, 1),
(11, 'Samsung A10S', 'Descripción del producto 011', 100, 'producto_011.jpg', 10, 1, 0, 'protector10', 1, 1),
(12, 'iPhone 13', 'iPhone 13', 4000, 'foto_9vhjhhlxd_1.jpg', 90, NULL, NULL, NULL, 1, 1),
(13, 'iPhone 13 (2)', 'Descripción de iPhone 13', 10000, 'foto_cu2qasj1r_1.jpg', 90, NULL, NULL, NULL, 1, 0),
(14, 'iPhone 13 (4)', 'Descripción de iPhone 13 4', 4000, 'foto_kz6zwvjvj_1.jpg', 54, NULL, NULL, NULL, 1, 0),
(15, 'iPhone 13 (9)', 'iPhone 13 9', 21000, 'foto_i1uc2m96w_1.jpg', 90, NULL, NULL, NULL, 1, 1);

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
(3, '12', 4, 30);

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
  `clave_rastreo_ext` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `venta_gral`
--

INSERT INTO `venta_gral` (`id`, `cantidad`, `precio`, `fecha_venta`, `nombre`, `direccion`, `telefono`, `email`, `tarjeta`, `nombre_tarjeta`, `expira_mes`, `expira_annio`, `clave_rastreo_int`, `clave_rastreo_ext`) VALUES
(1, 850, 4, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'sdfasdf@fdsafd.net', '0', 'Jesus R', '24', '09', '1', ''),
(2, 850, 4, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'sdfasdf@fdsafd.net', 'XXXXXXXXXXX3844', 'Jesus R', '24', '09', '2', '33-999008-009-ZMX'),
(3, 850, 4, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'sdfasdf@fdsafd.net', 'XXXXXXXXXXX3844', 'Jesus R', '24', '09', '3', ''),
(4, 4, 700, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '4', ''),
(5, 4, 700, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '5', ''),
(6, 4, 700, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '6', ''),
(7, 5, 800, '2022-03-02', '0', 'CALLE CERRO DE LA ARAÃ‘A 143 FRACC COLINAS DEL PADRE 98085', '4924921515', 'dsddsd@dsdfs.net', 'XXXXXXXXXXX3444', 'Jesus R', '24', '09', '7', ''),
(8, 3, 1100, '2022-03-15', '0', 'Direccion conocida', '99999999', 'dskjdsjs@fjfjf.net', 'XXXXXXXXXXX3434', 'Geranios', '02', '03', '8', '336td-zac-MX-1'),
(9, 3, 1100, '2022-03-15', 'JESÃšS RODOLFO LEAÃ‘OS VILLEGAS', 'Direccion conocida', '99999999', 'dskjdsjs@fjfjf.net', 'XXXXXXXXXXX3434', 'Geranios', '02', '03', '9', ''),
(10, 3, 850, '2022-03-30', 'RODOLFO DE JESÃšS LEAÃ‘OS V', 'AND TULIPANES 12 A COL EL CARMEN GUADALUPE, ZAC', '4927951930', 'jesusrlvrojo@gmail.com', 'XXXXXXXXXXX2223', 'Jesus R', '09', '21', 'v7q58lmqg', 'EST-34455-90-ZMX'),
(11, 2, 270, '2022-05-12', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', '', '', '', '', 'jw7nizkvp', NULL),
(12, 2, 270, '2022-05-12', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, '5mj5w2cui', NULL),
(13, 2, 270, '2022-05-12', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'a5kv3ujdw', NULL),
(14, 2, 270, '2022-05-12', 'JESUS R', 'Andador tulipanes 12 a', '9236222', 'jesusrlv_rojo@hotmail.com', NULL, NULL, NULL, NULL, 'c240kzw9t', NULL),
(15, 1, 120, '2022-05-13', '', '', '', '', NULL, NULL, NULL, NULL, 'yue7pfnqp', NULL);

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
(77, 'Protector Samsung S30/S21', '2022-05-13', 'yue7pfnqp', '29', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `talla`
--
ALTER TABLE `talla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usr`
--
ALTER TABLE `usr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta_gral`
--
ALTER TABLE `venta_gral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `venta_individual`
--
ALTER TABLE `venta_individual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
