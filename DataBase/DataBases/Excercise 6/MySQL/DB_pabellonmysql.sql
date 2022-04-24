-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2022 a las 06:05:52
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS Pabellones;

USE Pabellones;

--
-- Base de datos: `Pabellones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendar_cirugia`
--

CREATE TABLE `agendar_cirugia` (
  `idAgenda` int(10) UNSIGNED NOT NULL,
  `Cirugias_idCirugias` int(10) UNSIGNED NOT NULL,
  `Arsenalero_idArsenalero` int(10) UNSIGNED NOT NULL,
  `Anestesista_idAnestesista` int(10) UNSIGNED NOT NULL,
  `Cirujano_idCirujano` int(10) UNSIGNED NOT NULL,
  `Horarios_Pabellones_numero_pabellon` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agendar_cirugia`
--

INSERT INTO `agendar_cirugia` (`idAgenda`, `Cirugias_idCirugias`, `Arsenalero_idArsenalero`, `Anestesista_idAnestesista`, `Cirujano_idCirujano`, `Horarios_Pabellones_numero_pabellon`) VALUES
(3001, 1001, 704, 804, 603, 4),
(3002, 1004, 703, 801, 604, 2),
(3003, 1002, 702, 802, 602, 3),
(3004, 1003, 701, 803, 601, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendar_cirugia_has_realizadas`
--

CREATE TABLE `agendar_cirugia_has_realizadas` (
  `Realizadas_idRealizadas` int(10) UNSIGNED NOT NULL,
  `Agendar_cirugia_idAgenda` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agendar_cirugia_has_realizadas`
--

INSERT INTO `agendar_cirugia_has_realizadas` (`Realizadas_idRealizadas`, `Agendar_cirugia_idAgenda`) VALUES
(7001, 3004),
(7002, 3001),
(7003, 3003),
(7004, 3002);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anestesista`
--

CREATE TABLE `anestesista` (
  `idAnestesista` int(10) UNSIGNED NOT NULL,
  `Medicos_id_profesional` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anestesista`
--

INSERT INTO `anestesista` (`idAnestesista`, `Medicos_id_profesional`) VALUES
(803, 207),
(801, 210),
(804, 211),
(802, 212);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arsenalero`
--

CREATE TABLE `arsenalero` (
  `idArsenalero` int(10) UNSIGNED NOT NULL,
  `Medicos_id_profesional` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `arsenalero`
--

INSERT INTO `arsenalero` (`idArsenalero`, `Medicos_id_profesional`) VALUES
(702, 205),
(704, 206),
(703, 208),
(701, 209);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cirugias`
--

CREATE TABLE `cirugias` (
  `idCirugias` int(10) UNSIGNED NOT NULL,
  `Modulo_idModulo` int(10) UNSIGNED NOT NULL,
  `Equipo_medico_idEquipo_medico` int(10) UNSIGNED NOT NULL,
  `Insumos_idInsumos` int(10) UNSIGNED NOT NULL,
  `nombre_cirugia` varchar(50) NOT NULL,
  `descripcion_cirugia` varchar(100) NOT NULL,
  `finalidad_cirugia` varchar(100) NOT NULL,
  `duracion_minutos` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cirugias`
--

INSERT INTO `cirugias` (`idCirugias`, `Modulo_idModulo`, `Equipo_medico_idEquipo_medico`, `Insumos_idInsumos`, `nombre_cirugia`, `descripcion_cirugia`, `finalidad_cirugia`, `duracion_minutos`) VALUES
(1001, 403, 903, 504, 'Nunc purus.', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Integer a nibh.', 384),
(1002, 402, 901, 502, 'Pellentesque.', 'Praesent lectus.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 327),
(1003, 401, 902, 501, 'Nullam, venenatis non, sodales sed, tincidunt eu, ', 'Praesent lectus.', 'Nullam molestie nibh in lectus.', 290),
(1004, 404, 904, 503, 'In sagittis.', 'In congue.', 'Donec vitae nisi.', 328);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cirujano`
--

CREATE TABLE `cirujano` (
  `idCirujano` int(10) UNSIGNED NOT NULL,
  `Medicos_id_profesional` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cirujano`
--

INSERT INTO `cirujano` (`idCirujano`, `Medicos_id_profesional`) VALUES
(601, 201),
(604, 202),
(602, 203),
(603, 204);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `en_pabellon`
--

CREATE TABLE `en_pabellon` (
  `idEn_pabellon` int(10) UNSIGNED NOT NULL,
  `Agendar_cirugia_idAgenda` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `en_pabellon`
--

INSERT INTO `en_pabellon` (`idEn_pabellon`, `Agendar_cirugia_idAgenda`) VALUES
(6003, 3001),
(6002, 3002),
(6001, 3003),
(6004, 3004);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_medico`
--

CREATE TABLE `equipo_medico` (
  `idEquipo_medico` int(10) UNSIGNED NOT NULL,
  `Modulo_idModulo` int(10) UNSIGNED NOT NULL,
  `nombre_equipo` varchar(50) NOT NULL,
  `funcion_equipo` varchar(50) NOT NULL,
  `tipo_equipo` varchar(50) NOT NULL,
  `descripcion_equipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo_medico`
--

INSERT INTO `equipo_medico` (`idEquipo_medico`, `Modulo_idModulo`, `nombre_equipo`, `funcion_equipo`, `tipo_equipo`, `descripcion_equipo`) VALUES
(901, 403, 'Monitores de pacientes', 'Cirujias', 'quirurjico', 'Nulla facilisi.'),
(902, 401, 'Máquina de anestesia', 'Cirujias', 'Quirurjico', 'Praesent blandit lacinia erat.'),
(903, 402, 'Luces quirúrgicas', 'Cirujias', 'Quirurjico', 'Duis mattis egestas metus.'),
(904, 404, ' Esterilizadores', 'Cirujias', 'Quirurjico', 'Sed vel enim sit amet nunc viverra dapibus.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_cirugias`
--

CREATE TABLE `historial_cirugias` (
  `idHistorial_cirugias` int(10) UNSIGNED NOT NULL,
  `Realizadas_idRealizadas` int(10) UNSIGNED NOT NULL,
  `Pacientes_idPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial_cirugias`
--

INSERT INTO `historial_cirugias` (`idHistorial_cirugias`, `Realizadas_idRealizadas`, `Pacientes_idPaciente`) VALUES
(8001, 7004, 105),
(8002, 7002, 107),
(8003, 7003, 106),
(8004, 7001, 108);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `Pabellones_numero_pabellon` int(10) UNSIGNED NOT NULL,
  `hora` varchar(45) NOT NULL,
  `dia` int(10) UNSIGNED NOT NULL,
  `mes` int(10) UNSIGNED NOT NULL,
  `semana` int(10) UNSIGNED NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`Pabellones_numero_pabellon`, `hora`, `dia`, `mes`, `semana`, `estado`) VALUES
(1, '5:32 PM', 24, 4, 2, 'no realizado'),
(2, '9:45 AM', 30, 4, 1, 'no realizado'),
(3, '6:57 PM', 12, 4, 3, 'Realizado'),
(4, '11:47 PM', 3, 4, 2, 'Realizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumentos`
--

CREATE TABLE `instrumentos` (
  `idInstrumentos` int(10) UNSIGNED NOT NULL,
  `Modulo_idModulo` int(10) UNSIGNED NOT NULL,
  `Cirugias_idCirugias` int(10) UNSIGNED NOT NULL,
  `nombre_instrumento` varchar(50) NOT NULL,
  `uso_instrumento` varchar(100) NOT NULL,
  `p_hora` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instrumentos`
--

INSERT INTO `instrumentos` (`idInstrumentos`, `Modulo_idModulo`, `Cirugias_idCirugias`, `nombre_instrumento`, `uso_instrumento`, `p_hora`) VALUES
(2001, 401, 1004, 'Distractores', 'posicionadores', 15.94),
(2002, 404, 1001, 'Pinzas', 'presión para traumatismo', 15.46),
(2003, 402, 1003, 'Hemóstatos', 'control de sangrado', 17.29),
(2004, 403, 1002, 'Retractores', 'separar bordes', 20.01);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `idInsumos` int(10) UNSIGNED NOT NULL,
  `Modulo_idModulo` int(10) UNSIGNED NOT NULL,
  `nombre_insumo` varchar(50) NOT NULL,
  `tipo_insumo` varchar(50) NOT NULL,
  `p_unidad` int(10) UNSIGNED NOT NULL,
  `cantidad_insumo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`idInsumos`, `Modulo_idModulo`, `nombre_insumo`, `tipo_insumo`, `p_unidad`, `cantidad_insumo`) VALUES
(501, 404, 'Guantes', 'material quirúrgico', 15, 64),
(502, 402, 'jeringas', 'material quirúrgico', 13, 60),
(503, 401, 'cintas quirúrgicas', 'material quirúrgico', 11, 74),
(504, 403, 'vendas', 'material de curación', 12, 85);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `id_profesional` int(10) UNSIGNED NOT NULL,
  `Personas_id_persona` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`id_profesional`, `Personas_id_persona`) VALUES
(202, 101),
(204, 102),
(203, 103),
(201, 104),
(205, 109),
(206, 110),
(207, 111),
(208, 112),
(209, 113),
(210, 114),
(211, 115),
(212, 116);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idModulo` int(10) UNSIGNED NOT NULL,
  `Pabellones_numero_pabellon` int(10) UNSIGNED NOT NULL,
  `nombre_modulo_2` varchar(50) NOT NULL,
  `nombre_modulo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idModulo`, `Pabellones_numero_pabellon`, `nombre_modulo_2`, `nombre_modulo`) VALUES
(401, 3, 'Hybrisil', 'Methylprednisolone Acetate'),
(402, 1, 'Levico Prunus', 'Levico Prunus'),
(403, 4, 'JIANZE ALCOHOL', 'ISOPROPYL ALCOHOL'),
(404, 2, 'Isopropyl alcohol', 'Isopropyl alcohol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pabellones`
--

CREATE TABLE `pabellones` (
  `numero_pabellon` int(10) UNSIGNED NOT NULL,
  `bloque` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `pisos` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pabellones`
--

INSERT INTO `pabellones` (`numero_pabellon`, `bloque`, `nombre`, `pisos`) VALUES
(1, 8, 'A08', 5),
(2, 3, 'C12', 6),
(3, 5, 'B07', 6),
(4, 7, 'D21', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `idPaciente` int(10) UNSIGNED NOT NULL,
  `Personas_id_persona` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`idPaciente`, `Personas_id_persona`) VALUES
(303, 105),
(304, 106),
(302, 107),
(301, 108);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `nombre`, `apellido`, `edad`) VALUES
(101, 'Katusha', 'Swyer', '36'),
(102, 'Ashby', 'Behninck', '42'),
(103, 'Fritz', 'Gurry', '49'),
(104, 'Lotty', 'Larsen', '54'),
(105, 'Man', 'Janusz', '44'),
(106, 'Antonius', 'Jelly', '51'),
(107, 'Prue', 'Stooders', '35'),
(108, 'Rona', 'Beauly', '44'),
(109, 'Hersh', 'Stetlye', '40'),
(110, 'Raychel', 'Faber', '32'),
(111, 'Boot', 'Chazotte', '35'),
(112, 'Stern', 'Magrane', '31'),
(113, 'Huey', 'Bompas', '27'),
(114, 'Zacharia', 'Town', '39'),
(115, 'Reggis', 'Cattermole', '52'),
(116, 'Miguel', 'Donati', '30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realizadas`
--

CREATE TABLE `realizadas` (
  `idRealizadas` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `realizadas`
--

INSERT INTO `realizadas` (`idRealizadas`) VALUES
(5001),
(5002),
(5003),
(5004);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendar_cirugia`
--
ALTER TABLE `agendar_cirugia`
  ADD PRIMARY KEY (`idAgenda`),
  ADD KEY `Cirugia_agendada_FKIndex1` (`Cirugias_idCirugias`),
  ADD KEY `Cirugia_agendada_FKIndex3` (`Horarios_Pabellones_numero_pabellon`),
  ADD KEY `Agendar_cirugia_FKIndex4` (`Cirujano_idCirujano`),
  ADD KEY `Agendar_cirugia_FKIndex5` (`Anestesista_idAnestesista`),
  ADD KEY `Agendar_cirugia_FKIndex6` (`Arsenalero_idArsenalero`);

--
-- Indices de la tabla `agendar_cirugia_has_realizadas`
--
ALTER TABLE `agendar_cirugia_has_realizadas`
  ADD PRIMARY KEY (`Realizadas_idRealizadas`,`Agendar_cirugia_idAgenda`),
  ADD KEY `Agendar_cirugia_has_Realizadas_FKIndex1` (`Realizadas_idRealizadas`),
  ADD KEY `Agendar_cirugia_has_Realizadas_FKIndex2` (`Agendar_cirugia_idAgenda`);

--
-- Indices de la tabla `anestesista`
--
ALTER TABLE `anestesista`
  ADD PRIMARY KEY (`idAnestesista`),
  ADD KEY `Anestesista_FKIndex1` (`Medicos_id_profesional`);

--
-- Indices de la tabla `arsenalero`
--
ALTER TABLE `arsenalero`
  ADD PRIMARY KEY (`idArsenalero`),
  ADD KEY `Arsenalero_FKIndex1` (`Medicos_id_profesional`);

--
-- Indices de la tabla `cirugias`
--
ALTER TABLE `cirugias`
  ADD PRIMARY KEY (`idCirugias`),
  ADD KEY `Cirugias_FKIndex1` (`Modulo_idModulo`),
  ADD KEY `Cirugias_FKIndex2` (`Insumos_idInsumos`),
  ADD KEY `Cirugias_FKIndex3` (`Equipo_medico_idEquipo_medico`);

--
-- Indices de la tabla `cirujano`
--
ALTER TABLE `cirujano`
  ADD PRIMARY KEY (`idCirujano`),
  ADD KEY `Cirujano_FKIndex1` (`Medicos_id_profesional`);

--
-- Indices de la tabla `en_pabellon`
--
ALTER TABLE `en_pabellon`
  ADD PRIMARY KEY (`idEn_pabellon`),
  ADD KEY `En_pabellon_FKIndex1` (`Agendar_cirugia_idAgenda`);

--
-- Indices de la tabla `equipo_medico`
--
ALTER TABLE `equipo_medico`
  ADD PRIMARY KEY (`idEquipo_medico`),
  ADD KEY `Equipo_medico_FKIndex1` (`Modulo_idModulo`);

--
-- Indices de la tabla `historial_cirugias`
--
ALTER TABLE `historial_cirugias`
  ADD PRIMARY KEY (`idHistorial_cirugias`),
  ADD KEY `Historial_cirugias_FKIndex1` (`Pacientes_idPaciente`),
  ADD KEY `Historial_cirugias_FKIndex2` (`Realizadas_idRealizadas`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`Pabellones_numero_pabellon`),
  ADD KEY `Horarios_FKIndex1` (`Pabellones_numero_pabellon`);

--
-- Indices de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`idInstrumentos`),
  ADD KEY `Instrumentos_FKIndex2` (`Modulo_idModulo`),
  ADD KEY `Instrumentos_FKIndex3` (`Cirugias_idCirugias`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`idInsumos`),
  ADD KEY `Insumos_FKIndex1` (`Modulo_idModulo`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id_profesional`),
  ADD KEY `Medicos_FKIndex1` (`Personas_id_persona`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idModulo`),
  ADD KEY `Modulo_FKIndex1` (`Pabellones_numero_pabellon`);

--
-- Indices de la tabla `pabellones`
--
ALTER TABLE `pabellones`
  ADD PRIMARY KEY (`numero_pabellon`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`idPaciente`),
  ADD KEY `Pacientes_FKIndex1` (`Personas_id_persona`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `realizadas`
--
ALTER TABLE `realizadas`
  ADD PRIMARY KEY (`idRealizadas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anestesista`
--
ALTER TABLE `anestesista`
  MODIFY `idAnestesista` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=805;

--
-- AUTO_INCREMENT de la tabla `arsenalero`
--
ALTER TABLE `arsenalero`
  MODIFY `idArsenalero` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;

--
-- AUTO_INCREMENT de la tabla `cirujano`
--
ALTER TABLE `cirujano`
  MODIFY `idCirujano` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
