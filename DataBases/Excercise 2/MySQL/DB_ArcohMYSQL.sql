-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2022 a las 06:50:42
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(10) UNSIGNED NOT NULL,
  `activity_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `activity`
--

INSERT INTO `activity` (`activity_id`, `activity_name`) VALUES
(201, 'Fish'),
(202, 'Educate'),
(203, 'Cultivate'),
(204, 'Hunt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `family`
--

CREATE TABLE `family` (
  `family_id` int(10) UNSIGNED NOT NULL,
  `family_members` int(10) UNSIGNED NOT NULL,
  `family_age` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `family`
--

INSERT INTO `family` (`family_id`, `family_members`, `family_age`) VALUES
(100, 6, 5),
(102, 4, 70),
(103, 8, 34),
(104, 3, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `family_has_material_goods`
--

CREATE TABLE `family_has_material_goods` (
  `family_id` int(10) UNSIGNED NOT NULL,
  `material_goods_material_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `family_has_material_goods`
--

INSERT INTO `family_has_material_goods` (`family_id`, `material_goods_material_id`) VALUES
(100, 401),
(102, 402),
(102, 404),
(104, 403);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materials`
--

CREATE TABLE `materials` (
  `material_id` int(10) UNSIGNED NOT NULL,
  `material_name` varchar(50) NOT NULL,
  `material_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materials`
--

INSERT INTO `materials` (`material_id`, `material_name`, `material_type`) VALUES
(300, 'Books', 'study'),
(301, 'Fishing rod', 'eat'),
(302, 'Axe', 'work'),
(303, 'Oz', 'work');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_goods`
--

CREATE TABLE `material_goods` (
  `material_id` int(10) UNSIGNED NOT NULL,
  `materials_material_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `material_goods`
--

INSERT INTO `material_goods` (`material_id`, `materials_material_id`) VALUES
(401, 300),
(404, 301),
(402, 302),
(403, 303);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `member`
--

CREATE TABLE `member` (
  `member_id` int(10) UNSIGNED NOT NULL,
  `activity_id` int(10) UNSIGNED NOT NULL,
  `family_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `age` int(10) UNSIGNED NOT NULL,
  `civil_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `member`
--

INSERT INTO `member` (`member_id`, `activity_id`, `family_id`, `name`, `last_name`, `age`, `civil_status`) VALUES
(600, 201, 102, 'Ginni', 'Chasmoor', 41, 'married'),
(601, 204, 104, 'Adan', 'Bellany', 48, 'free union'),
(602, 202, 100, 'Bessy', 'Doxey', 20, 'single'),
(603, 203, 103, 'Elissa', 'Labro', 78, 'windower');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tools`
--

CREATE TABLE `tools` (
  `tool_id` int(10) UNSIGNED NOT NULL,
  `activity_id` int(10) UNSIGNED NOT NULL,
  `materials_material_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tools`
--

INSERT INTO `tools` (`tool_id`, `activity_id`, `materials_material_id`) VALUES
(701, 201, 303),
(702, 204, 300),
(703, 203, 301),
(704, 202, 302);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indices de la tabla `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`family_id`);

--
-- Indices de la tabla `family_has_material_goods`
--
ALTER TABLE `family_has_material_goods`
  ADD PRIMARY KEY (`family_id`,`material_goods_material_id`),
  ADD KEY `family_has_material_goods_FKIndex1` (`family_id`),
  ADD KEY `family_has_material_goods_FKIndex2` (`material_goods_material_id`);

--
-- Indices de la tabla `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`material_id`);

--
-- Indices de la tabla `material_goods`
--
ALTER TABLE `material_goods`
  ADD PRIMARY KEY (`material_id`),
  ADD KEY `material_goods_FKIndex1` (`materials_material_id`);

--
-- Indices de la tabla `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_FKIndex1` (`family_id`),
  ADD KEY `member_FKIndex2` (`activity_id`);

--
-- Indices de la tabla `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`tool_id`),
  ADD KEY `tools_FKIndex1` (`materials_material_id`),
  ADD KEY `tools_FKIndex2` (`activity_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
