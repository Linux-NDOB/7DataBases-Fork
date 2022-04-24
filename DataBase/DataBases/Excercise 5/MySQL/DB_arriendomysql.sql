-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2022 a las 20:31:54
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS Arriendo;

USE Arriendo;

--
-- Base de datos: `Hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor`
--

CREATE TABLE `actor` (
  `id_actor` int(10) UNSIGNED NOT NULL,
  `Peliculas_idPeliculas` int(10) UNSIGNED NOT NULL,
  `Personas_idPersona` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actor`
--

INSERT INTO `actor` (`id_actor`, `Peliculas_idPeliculas`, `Personas_idPersona`) VALUES
(901, 402, 112),
(902, 404, 109),
(903, 401, 110),
(904, 403, 111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor_principal`
--

CREATE TABLE `actor_principal` (
  `Actor_id_actor` int(10) UNSIGNED NOT NULL,
  `Peliculas_idPeliculas` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actor_principal`
--

INSERT INTO `actor_principal` (`Actor_id_actor`, `Peliculas_idPeliculas`) VALUES
(902, 401),
(903, 402),
(901, 403),
(904, 404);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arriendos`
--

CREATE TABLE `arriendos` (
  `id_arriendo` int(10) UNSIGNED NOT NULL,
  `Peliculas_idPeliculas` int(10) UNSIGNED NOT NULL,
  `Locales_idLocal` int(11) NOT NULL,
  `Usuarios_n_unico` int(10) UNSIGNED NOT NULL,
  `Trabajadores_idTrabajadores` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `arriendos`
--

INSERT INTO `arriendos` (`id_arriendo`, `Peliculas_idPeliculas`, `Locales_idLocal`, `Usuarios_n_unico`, `Trabajadores_idTrabajadores`) VALUES
(801, 401, 304, 603, 504),
(802, 404, 303, 601, 501),
(803, 403, 301, 604, 503),
(804, 402, 302, 602, 502);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `nombre_categoria` varchar(50) NOT NULL,
  `Peliculas_idPeliculas` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`nombre_categoria`, `Peliculas_idPeliculas`) VALUES
('Action|Horror|Thriller', 401),
('Drama|Thriller', 402),
('Comedy|Horror|Thriller', 403),
('Thriller', 404);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_principal`
--

CREATE TABLE `categoria_principal` (
  `Categorias_nombre_categoria` varchar(50) NOT NULL,
  `Peliculas_idPeliculas` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria_principal`
--

INSERT INTO `categoria_principal` (`Categorias_nombre_categoria`, `Peliculas_idPeliculas`) VALUES
('Action', 401),
('Horror', 402),
('Drama', 403),
('Thriller', 404);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idInventario` int(10) UNSIGNED NOT NULL,
  `Peliculas_idPeliculas` int(10) UNSIGNED NOT NULL,
  `Locales_idLocal` int(11) NOT NULL,
  `cantidad_pelicula` int(10) UNSIGNED NOT NULL,
  `precio_arriendo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idInventario`, `Peliculas_idPeliculas`, `Locales_idLocal`, `cantidad_pelicula`, `precio_arriendo`) VALUES
(701, 402, 301, 6, 18.4),
(702, 404, 304, 1, 18.58),
(703, 403, 302, 1, 25.63),
(704, 401, 303, 10, 19.38);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locales`
--

CREATE TABLE `locales` (
  `idLocal` int(11) NOT NULL,
  `Paises_idPais_2` int(10) UNSIGNED NOT NULL,
  `nombre_local` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `locales`
--

INSERT INTO `locales` (`idLocal`, `Paises_idPais_2`, `nombre_local`) VALUES
(301, 204, 'Sawayn-Becker'),
(302, 203, 'Brown Inc'),
(303, 201, 'Legros, Watsica and Roob'),
(304, 202, 'Cronin-Hoppe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `idPais_2` int(10) UNSIGNED NOT NULL,
  `idPais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`idPais_2`, `idPais`) VALUES
(201, 'Jordan'),
(202, 'Indonesia'),
(203, 'Bangladesh'),
(204, 'Myanmar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `idPeliculas` int(10) UNSIGNED NOT NULL,
  `Locales_idLocal` int(11) NOT NULL,
  `nombre_pelicula` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`idPeliculas`, `Locales_idLocal`, `nombre_pelicula`) VALUES
(401, 303, 'How I Ended This Summer'),
(402, 301, 'Libeled Lady'),
(403, 302, 'Purely Belter'),
(404, 304, 'Reds');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idPersona` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idPersona`, `nombre`, `apellido`, `edad`) VALUES
(101, 'Gordy', 'Earpe', '18'),
(102, 'Wilek', 'Hofner', '39'),
(103, 'Winne', 'Hendrichs', '20'),
(104, 'Angelita', 'Loweth', '38'),
(105, 'Torrie', 'Kleint', '36'),
(106, 'Christi', 'Armsden', '18'),
(107, 'Iggie', 'McCromley', '24'),
(108, 'Catherine', 'Finlry', '20'),
(109, 'Nora', 'Chern', '26'),
(110, 'Emanuele', 'Kitchenman', '37'),
(111, 'Mirabelle', 'McCleary', '25'),
(112, 'Corney', 'Greiswood', '37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `idTrabajadores` int(10) UNSIGNED NOT NULL,
  `Personas_idPersona` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`idTrabajadores`, `Personas_idPersona`) VALUES
(502, 101),
(504, 102),
(503, 103),
(501, 104);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `n_unico` int(10) UNSIGNED NOT NULL,
  `Personas_idPersona` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`n_unico`, `Personas_idPersona`) VALUES
(603, 105),
(601, 106),
(604, 107),
(602, 108);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id_actor`),
  ADD KEY `Actor_FKIndex1` (`Personas_idPersona`),
  ADD KEY `Actor_FKIndex2` (`Peliculas_idPeliculas`);

--
-- Indices de la tabla `actor_principal`
--
ALTER TABLE `actor_principal`
  ADD PRIMARY KEY (`Actor_id_actor`),
  ADD KEY `Actor_principal_FKIndex1` (`Peliculas_idPeliculas`),
  ADD KEY `Actor_principal_FKIndex2` (`Actor_id_actor`);

--
-- Indices de la tabla `arriendos`
--
ALTER TABLE `arriendos`
  ADD PRIMARY KEY (`id_arriendo`),
  ADD KEY `Table_17_FKIndex1` (`Trabajadores_idTrabajadores`),
  ADD KEY `Table_17_FKIndex2` (`Usuarios_n_unico`),
  ADD KEY `Table_17_FKIndex3` (`Locales_idLocal`),
  ADD KEY `Table_17_FKIndex4` (`Peliculas_idPeliculas`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`nombre_categoria`),
  ADD KEY `Categoria_principal_FKIndex1` (`Peliculas_idPeliculas`);

--
-- Indices de la tabla `categoria_principal`
--
ALTER TABLE `categoria_principal`
  ADD PRIMARY KEY (`Categorias_nombre_categoria`),
  ADD KEY `Categoria_principal_FKIndex1` (`Categorias_nombre_categoria`),
  ADD KEY `Categoria_principal_FKIndex2` (`Peliculas_idPeliculas`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idInventario`),
  ADD KEY `Inventario_FKIndex1` (`Peliculas_idPeliculas`),
  ADD KEY `Inventario_FKIndex2` (`Locales_idLocal`);

--
-- Indices de la tabla `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`idLocal`),
  ADD KEY `Locales_FKIndex1` (`Paises_idPais_2`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`idPais_2`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`idPeliculas`),
  ADD KEY `Peliculas_FKIndex1` (`Locales_idLocal`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idPersona`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`idTrabajadores`),
  ADD KEY `Trabajadores_FKIndex1` (`Personas_idPersona`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`n_unico`),
  ADD KEY `Usuarios_FKIndex1` (`Personas_idPersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actor`
--
ALTER TABLE `actor`
  MODIFY `id_actor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=905;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `idTrabajadores` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
