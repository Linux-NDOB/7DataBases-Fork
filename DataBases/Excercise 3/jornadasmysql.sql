-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2022 a las 09:12:53
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
-- Base de datos: `jornadasmysql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idArticulo` int(10) UNSIGNED NOT NULL,
  `WorkShops_idWorkShops` int(10) UNSIGNED NOT NULL,
  `nombre_articulo` varchar(50) NOT NULL,
  `tema_articulo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idArticulo`, `WorkShops_idWorkShops`, `nombre_articulo`, `tema_articulo`) VALUES
(404, 208, 'La mentira corre más que la verdad', 'Sociedad'),
(405, 206, 'Más y más plástico en el Pacífico', 'Contaminación'),
(406, 205, 'Océanos calientes: una amenaza para los corales', 'Calentamiento global'),
(407, 207, 'La clave está en la moderación', 'Alimentación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `charlas`
--

CREATE TABLE `charlas` (
  `charla_id` int(10) UNSIGNED NOT NULL,
  `WorkShops_idWorkShops` int(10) UNSIGNED NOT NULL,
  `nombre_charla` varchar(50) NOT NULL,
  `tema_charla` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `charlas`
--

INSERT INTO `charlas` (`charla_id`, `WorkShops_idWorkShops`, `nombre_charla`, `tema_charla`) VALUES
(301, 202, 'Desarrollo de habilidades', 'Pasatiempos.'),
(302, 201, 'Cómo aprender a contribuir a la sociedad', 'Aenean lectus.'),
(303, 203, 'Estilos de vidas saludables', 'Deportes'),
(304, 204, 'Nuevos lenguajes', 'Proin risus.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escritores`
--

CREATE TABLE `escritores` (
  `idEscritores` int(10) UNSIGNED NOT NULL,
  `Articulo_idArticulo` int(10) UNSIGNED NOT NULL,
  `Persona_idPersona` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `escritores`
--

INSERT INTO `escritores` (`idEscritores`, `Articulo_idArticulo`, `Persona_idPersona`) VALUES
(502, 404, 104),
(503, 406, 104),
(504, 407, 103),
(507, 405, 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expositor`
--

CREATE TABLE `expositor` (
  `idExpositor` int(10) UNSIGNED NOT NULL,
  `Charlas_charla_id` int(10) UNSIGNED NOT NULL,
  `Persona_idPersona` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `expositor`
--

INSERT INTO `expositor` (`idExpositor`, `Charlas_charla_id`, `Persona_idPersona`) VALUES
(604, 301, 106),
(605, 302, 108),
(606, 303, 105),
(607, 304, 107);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `nombre`, `apellido`, `edad`) VALUES
(101, 'Annnora', 'Carrigan', 46),
(102, 'Emmy', 'Derby', 48),
(103, 'Helena', 'Cumberbatch', 47),
(104, 'Jacky', 'Scotford', 23),
(105, 'Ilario', 'Brittles', 37),
(106, 'Berkley', 'Fillan', 31),
(107, 'Lil', 'Partrick', 52),
(108, 'Mordy', 'Turneaux', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workshops`
--

CREATE TABLE `workshops` (
  `idWorkShops` int(10) UNSIGNED NOT NULL,
  `nombre_workshop` varchar(50) NOT NULL,
  `tema_workshop` varchar(50) NOT NULL,
  `descripcion_workshop` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `workshops`
--

INSERT INTO `workshops` (`idWorkShops`, `nombre_workshop`, `tema_workshop`, `descripcion_workshop`) VALUES
(201, 'Meetz', 'Architect', 'Morbi sem mauris, laoreet ut, rhoncus aliquet.'),
(202, 'Youfeed', 'Construction Expeditor', 'Aliquam sit amet diam in magna bibendum imperdiet.'),
(203, 'Topiclounge', 'Supervisor', 'Vivamus vel nulla eget eros elementum pellentesque.'),
(204, 'Mycat', 'Electrician', 'Nunc rhoncus dui vel sem. Sed sagittis.'),
(205, 'Fadeo', 'Construction Worker', 'Vestibulum ante ipsum primis in faucibus.'),
(206, 'Rhyloo', 'Subcontractor', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),
(207, 'Babblestorm', 'Construction Worker', 'Nunc rhoncus dui vel sem.'),
(208, 'Wikibox', 'Construction Worker', 'Mauris sit amet eros.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idArticulo`),
  ADD KEY `Articulo_FKIndex1` (`WorkShops_idWorkShops`);

--
-- Indices de la tabla `charlas`
--
ALTER TABLE `charlas`
  ADD PRIMARY KEY (`charla_id`),
  ADD KEY `Charlas_FKIndex1` (`WorkShops_idWorkShops`);

--
-- Indices de la tabla `escritores`
--
ALTER TABLE `escritores`
  ADD PRIMARY KEY (`idEscritores`),
  ADD KEY `Escritores_FKIndex1` (`Articulo_idArticulo`),
  ADD KEY `Escritores_FKIndex2` (`Persona_idPersona`);

--
-- Indices de la tabla `expositor`
--
ALTER TABLE `expositor`
  ADD PRIMARY KEY (`idExpositor`),
  ADD KEY `Expositor_FKIndex1` (`Persona_idPersona`),
  ADD KEY `Expositor_FKIndex2` (`Charlas_charla_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`);

--
-- Indices de la tabla `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`idWorkShops`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
