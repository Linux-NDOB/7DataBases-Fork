-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2022 a las 17:55:04
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
-- Base de datos: `reunionesmysql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `id_persona` int(10) UNSIGNED NOT NULL,
  `Reuniones_id_reunion` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(10) UNSIGNED NOT NULL,
  `cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`id_persona`, `Reuniones_id_reunion`, `nombre`, `apellido`, `edad`, `cargo`) VALUES
(301, 204, 'Syd', 'Klimpt', 53, 'Engineering'),
(302, 203, 'Anna', 'Offin', 24, 'Training'),
(303, 201, 'Amy', 'Pencott', 24, 'Sales'),
(304, 202, 'Shae', 'Stegell', 47, 'Human Resources');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `id_lugar` int(10) UNSIGNED NOT NULL,
  `nombre_lugar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id_lugar`, `nombre_lugar`) VALUES
(101, 'Hospital del Río'),
(102, 'Hospital Cardio Vascular'),
(103, 'Hospital Medicina Integral'),
(104, 'Hospital Santa Teresita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id_recurso` int(10) UNSIGNED NOT NULL,
  `Lugar_id_lugar` int(10) UNSIGNED NOT NULL,
  `nombre_recurso` varchar(50) NOT NULL,
  `tipo_recurso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id_recurso`, `Lugar_id_lugar`, `nombre_recurso`, `tipo_recurso`) VALUES
(401, 102, 'Equipo capital', 'quirófanos, equipos radiológicos, etc'),
(402, 103, 'Recursos humanos', 'médicos, enfermer@s'),
(403, 101, 'Materias primas', 'productos farmacéuticos, reactivos, comidas'),
(404, 104, 'Recursos humanos', 'médicos, enfermer@s');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reuniones`
--

CREATE TABLE `reuniones` (
  `id_reunion` int(10) UNSIGNED NOT NULL,
  `Lugar_id_lugar` int(10) UNSIGNED NOT NULL,
  `tema_reunion` varchar(50) NOT NULL,
  `numero_invitados` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reuniones`
--

INSERT INTO `reuniones` (`id_reunion`, `Lugar_id_lugar`, `tema_reunion`, `numero_invitados`) VALUES
(201, 102, 'Cuidado del corazón', 18),
(202, 103, 'Covid-19', 15),
(203, 104, 'Salud mental', 16),
(204, 101, 'ETS', 17);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `Invitados_FKIndex1` (`Reuniones_id_reunion`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id_lugar`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id_recurso`),
  ADD KEY `Recursos_FKIndex1` (`Lugar_id_lugar`);

--
-- Indices de la tabla `reuniones`
--
ALTER TABLE `reuniones`
  ADD PRIMARY KEY (`id_reunion`),
  ADD KEY `Reuniones_FKIndex1` (`Lugar_id_lugar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
