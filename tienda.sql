-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2022 a las 01:17:34
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `usuario`, `clave`, `fecha`) VALUES
(1, 'abelardo', 'xxx', '13-09-2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `cicli` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cli` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cel` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `hora` varchar(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `cicli`, `cli`, `cel`, `correo`, `usuario`, `clave`, `fecha`, `hora`) VALUES
(1, '2153849', 'Augusto  Troncoso', '3235078627', 'abelardoupel@gmail.com', 'papa', '1947', '20-09-2022 ', '12:59:pm'),
(2, '932113', 'Maria Longa', '3235078627', 'pinedoqr@gmail.com', 'Catira', 'cartera', '20-09-2022 ', '01:17:pm'),
(3, '3967333', 'Loly Longa', '3235078627', 'abelardoupel@gmail.com', 'hermana', 'bicuya', '20-09-2022 ', '05:46:pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `numaux` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `ci` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `producto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cod` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `total` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `numaux`, `ci`, `producto`, `cod`, `descripcion`, `precio`, `cantidad`, `total`, `foto`, `fecha`) VALUES
(1, '1', '2153849', 'Correa perros', 'Co1', 'Correa perro duradera, colores variados', '43000', '1', '43.000,00', '3126142correaroja.jpg', '20-09-2022 '),
(2, '1', '2153849', 'Correa modelo Chupi', 'Co2', 'Correa para perros marca chupi', '62000', '2', '124.000,00', '999394correa.jpg', '20-09-2022 '),
(3, '1', '2153849', 'Shampoo triple XXX', 'Sh03', 'Shampo anti garrapata', '41000', '1', '41.000,00', '3767456shampoo2.jpg', '20-09-2022 '),
(4, '2', '932113', 'Shampoo', 'Sh01', 'Shampoo con excelente olor', '28000', '1', '28.000,00', '2739911champu.jpg', '20-09-2022 '),
(5, '3', '3967333', 'Shampoo', 'Sh01', 'Shampoo con excelente olor', '28000', '1', '28.000,00', '2739911champu.jpg', '20-09-2022 '),
(6, '3', '3967333', 'Correa exten', 'C03', 'Correa Para Perros colores surtidos', '32000', '2', '64.000,00', '2680629collar4.jpg', '20-09-2022 ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `idaux` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `foto`
--

INSERT INTO `foto` (`id`, `idaux`, `foto`) VALUES
(1, '2', '3126142correaroja.jpg'),
(2, '3', '999394correa.jpg'),
(3, '3', '2680629collar4.jpg'),
(4, '5', '972726collar3.jpg'),
(5, '6', '2739911champu.jpg'),
(6, '7', '2873477shampoo4.jpg'),
(7, '8', '3767456shampoo2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cod` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `prod` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `des` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `precio` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `queda` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `proveedor` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `contacto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `tipo`, `cod`, `prod`, `des`, `precio`, `cantidad`, `queda`, `proveedor`, `contacto`, `foto`) VALUES
(1, 'Correa', 'Co1', 'Correa perros', 'Correa perro duradera, colores variados', '43000', '25', '24', 'Gisela Avendaño', '3235078627', '3126142correaroja.jpg'),
(2, 'Correa', 'Co2', 'Correa modelo Chupi', 'Correa para perros marca chupi', '62000', '15', '13', 'Fedra Lopez', '3235078627', '999394correa.jpg'),
(3, 'Correa', 'C03', 'Correa exten', 'Correa Para Perros colores surtidos', '32000', '31', '29', 'Carla Angola', '3235078626', '2680629collar4.jpg'),
(4, 'Correa', 'C04', 'Correa El Tenso', 'Correa duradera resistente', '43000', '28', '28', 'Erika de la Vega', '3235078627', '972726collar3.jpg'),
(5, 'Shampoo', 'Sh01', 'Shampoo', 'Shampoo con excelente olor', '28000', '34', '33', 'Lila Morillo', '3235078627', '2739911champu.jpg'),
(6, 'Shampoo', 'Sh02', 'Shampoo', 'Shampo anti pulgas el recio', '32000', '25', '25', 'Lupita Ferrer', '3235078627', '2873477shampoo4.jpg'),
(7, 'Shampoo', 'Sh03', 'Shampoo triple XXX', 'Shampo anti garrapata', '41000', '27', '26', 'Erick Clinton', '3235078627', '3767456shampoo2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencia`
--

CREATE TABLE `secuencia` (
  `id` int(11) NOT NULL,
  `num` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `secuencia`
--

INSERT INTO `secuencia` (`id`, `num`) VALUES
(1, 1),
(2, 2),
(3, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secuencia`
--
ALTER TABLE `secuencia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `secuencia`
--
ALTER TABLE `secuencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
