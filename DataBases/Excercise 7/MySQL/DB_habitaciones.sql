-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2022 a las 03:42:42
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
-- Base de datos: `habitaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idClientes` int(10) UNSIGNED NOT NULL,
  `Persona_dni` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idClientes`, `Persona_dni`) VALUES
(504, '101'),
(501, '102'),
(502, '103'),
(503, '104');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(10) UNSIGNED NOT NULL,
  `Responsable_idResponsable` int(10) UNSIGNED NOT NULL,
  `total_gasto` float NOT NULL,
  `nombre_otro` varchar(50) NOT NULL,
  `nid_otro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idFactura`, `Responsable_idResponsable`, `total_gasto`, `nombre_otro`, `nid_otro`) VALUES
(2001, 601, 141883, 'Georgine', '3003'),
(2002, 604, 101378, 'Ardelle', '3002'),
(2003, 603, 197882, 'Yuri', '3004'),
(2004, 602, 139076, 'Papagena', '3001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha`
--

CREATE TABLE `fecha` (
  `id_fecha` int(10) UNSIGNED NOT NULL,
  `dia` int(10) UNSIGNED NOT NULL,
  `mes` int(10) UNSIGNED NOT NULL,
  `year_2` int(10) UNSIGNED NOT NULL,
  `semana` int(10) UNSIGNED NOT NULL,
  `hora` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fecha`
--

INSERT INTO `fecha` (`id_fecha`, `dia`, `mes`, `year_2`, `semana`, `hora`) VALUES
(301, 24, 11, 2021, 2, '7:19 AM'),
(302, 12, 11, 2021, 1, '7:32 AM'),
(303, 7, 11, 2021, 3, '11:46 AM'),
(304, 30, 11, 2021, 4, '7:57 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `idGastos` int(10) UNSIGNED NOT NULL,
  `Habitaciones_nro_habitacion` int(10) UNSIGNED NOT NULL,
  `concepto` varchar(100) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`idGastos`, `Habitaciones_nro_habitacion`, `concepto`, `valor`) VALUES
(1001, 203, 'Mauris lacinia sapien quis libero.', 498.84),
(1002, 204, 'Nulla neque libero, convallis egetnibh.', 511.29),
(1003, 202, 'Nullam orci pede, venenatis non, sodales felis.', 576.87),
(1005, 201, 'Mauris ullamcorper purus sit amet nulla.', 531.64);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `nro_habitacion` int(10) UNSIGNED NOT NULL,
  `Piso_numero_piso` int(10) UNSIGNED NOT NULL,
  `tipo_habitacion` varchar(50) NOT NULL,
  `precio_habitacion` float NOT NULL,
  `temporada` varchar(50) NOT NULL,
  `estado_habitacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`nro_habitacion`, `Piso_numero_piso`, `tipo_habitacion`, `precio_habitacion`, `temporada`, `estado_habitacion`) VALUES
(201, 1, 'Doble', 35700.4, 'Navideña', 'Reservada'),
(202, 2, 'Sencilla', 26348.8, 'Navideña', 'Disponible'),
(203, 3, 'matrimoniales', 30675.6, 'Navideña', 'Disponible'),
(204, 4, 'junior suite', 57293.5, 'Navideña', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `dni` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`dni`, `nombre`, `apellido`, `telefono`) VALUES
('101', 'Ferguson', 'Quantrill', '+63 692 183 1385'),
('102', 'Rodd', 'Tallis', '+86 617 614 1704'),
('103', 'Biddy', 'Verrick', '+236 199 461 7204'),
('104', 'Koral', 'Ivashnyov', '+86 177 364 6438'),
('105', 'Elliott', 'Jaynes', '+92 951 192 2869'),
('106', 'Raffaello', 'Greiswood', '+380 254 557 4176'),
('107', 'Noami', 'Barneville', '+51 299 136 9151'),
('108', 'Dora', 'Stapylton', '+63 165 715 4557');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piso`
--

CREATE TABLE `piso` (
  `numero_piso` int(10) UNSIGNED NOT NULL,
  `cantidad_habitaciones` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `piso`
--

INSERT INTO `piso` (`numero_piso`, `cantidad_habitaciones`) VALUES
(1, 3),
(2, 4),
(3, 6),
(4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `idRegistro` int(10) UNSIGNED NOT NULL,
  `Reservas_idReservas` int(10) UNSIGNED NOT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`idRegistro`, `Reservas_idReservas`, `estado`) VALUES
(901, 803, 'libre'),
(902, 804, 'ocupada'),
(903, 801, 'Libre'),
(904, 802, 'Libre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idReservas` int(10) UNSIGNED NOT NULL,
  `Fecha_id_fecha` int(10) UNSIGNED NOT NULL,
  `Habitaciones_nro_habitacion` int(10) UNSIGNED NOT NULL,
  `Clientes_idClientes` int(10) UNSIGNED NOT NULL,
  `validez_horas` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idReservas`, `Fecha_id_fecha`, `Habitaciones_nro_habitacion`, `Clientes_idClientes`, `validez_horas`) VALUES
(801, 302, 204, 505, 9),
(802, 304, 203, 501, 4),
(803, 303, 202, 504, 6),
(804, 301, 201, 503, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsable`
--

CREATE TABLE `responsable` (
  `idResponsable` int(10) UNSIGNED NOT NULL,
  `Habitaciones_nro_habitacion` int(10) UNSIGNED NOT NULL,
  `Persona_dni` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `responsable`
--

INSERT INTO `responsable` (`idResponsable`, `Habitaciones_nro_habitacion`, `Persona_dni`) VALUES
(601, 201, '108'),
(602, 202, '105'),
(603, 204, '106'),
(604, 203, '107');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idClientes`),
  ADD KEY `Clientes_FKIndex1` (`Persona_dni`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `Factura_FKIndex1` (`Responsable_idResponsable`);

--
-- Indices de la tabla `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`id_fecha`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`idGastos`),
  ADD KEY `Gastos_FKIndex1` (`Habitaciones_nro_habitacion`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`nro_habitacion`),
  ADD KEY `Habitaciones_FKIndex1` (`Piso_numero_piso`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `piso`
--
ALTER TABLE `piso`
  ADD PRIMARY KEY (`numero_piso`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`idRegistro`),
  ADD KEY `Registro_FKIndex1` (`Reservas_idReservas`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idReservas`),
  ADD KEY `Reservas_FKIndex1` (`Clientes_idClientes`),
  ADD KEY `Reservas_FKIndex2` (`Habitaciones_nro_habitacion`),
  ADD KEY `Reservas_FKIndex3` (`Fecha_id_fecha`);

--
-- Indices de la tabla `responsable`
--
ALTER TABLE `responsable`
  ADD PRIMARY KEY (`idResponsable`),
  ADD KEY `Responsable_FKIndex1` (`Persona_dni`),
  ADD KEY `Responsable_FKIndex2` (`Habitaciones_nro_habitacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idClientes` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
