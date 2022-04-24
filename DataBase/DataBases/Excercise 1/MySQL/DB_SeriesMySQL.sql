-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2022 a las 06:32:33
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS MisSeries;

use MisSeries;

--
-- Base de datos: `MisSeries`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

CREATE TABLE `actors` (
  `actor_id` int(10) UNSIGNED NOT NULL,
  `Person_idPerson` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`actor_id`, `Person_idPerson`) VALUES
(153, 35),
(132, 37),
(128, 82),
(116, 92);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors_has_actor_nominations`
--

CREATE TABLE `actors_has_actor_nominations` (
  `Actors_actor_id` int(10) UNSIGNED NOT NULL,
  `actor_nominations_categoriesNominated` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actors_has_actor_nominations`
--

INSERT INTO `actors_has_actor_nominations` (`Actors_actor_id`, `actor_nominations_categoriesNominated`) VALUES
(116, 'Best Supporting Actor'),
(128, 'Best Actor'),
(132, 'Best Supporting Actress'),
(153, 'Best actress');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor_awards`
--

CREATE TABLE `actor_awards` (
  `CateogryWon` varchar(50) NOT NULL,
  `Actors_actor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actor_awards`
--

INSERT INTO `actor_awards` (`CateogryWon`, `Actors_actor_id`) VALUES
('Best Supporting Actor', 116),
('Best Actor', 128),
('Best Supporting Actress', 132),
('Best actress', 153);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor_nominations`
--

CREATE TABLE `actor_nominations` (
  `categoriesNominated` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actor_nominations`
--

INSERT INTO `actor_nominations` (`categoriesNominated`) VALUES
('Best Actor'),
('Best actress'),
('Best Supporting Actor'),
('Best Supporting Actress');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `awards`
--

CREATE TABLE `awards` (
  `award_name` varchar(50) NOT NULL,
  `series_serie_id` int(10) UNSIGNED NOT NULL,
  `academy_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `awards`
--

INSERT INTO `awards` (`award_name`, `series_serie_id`, `academy_name`) VALUES
('Best children series', 4, 'Buckridge-Ondricka'),
('Best Drama Screenplay', 3, 'Bahringer, Bechtelar and Muller'),
('Best drama series', 2, 'Roob-Collins'),
('Best series', 1, 'Botsford-Lakin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `categories_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`categories_name`) VALUES
('Action|Adventure|Comedy'),
('Action|Drama'),
('Comedy|Horror'),
('Crime|Drama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `character_id` int(10) UNSIGNED NOT NULL,
  `Actors_actor_id` int(10) UNSIGNED NOT NULL,
  `character_name` varchar(50) NOT NULL,
  `character_lastname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `characters`
--

INSERT INTO `characters` (`character_id`, `Actors_actor_id`, `character_name`, `character_lastname`) VALUES
(100, 36, 'Doris', 'Hallor'),
(101, 82, 'Danni', 'Elan'),
(103, 92, 'Rance', 'Goley'),
(104, 35, 'Reeba', 'Alcock');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directors`
--

CREATE TABLE `directors` (
  `director_id` int(10) UNSIGNED NOT NULL,
  `Person_idPerson` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `directors`
--

INSERT INTO `directors` (`director_id`, `Person_idPerson`) VALUES
(202, 10),
(204, 17),
(201, 40),
(200, 68);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episodes`
--

CREATE TABLE `episodes` (
  `episode_number` varchar(50) NOT NULL,
  `season_number` int(10) UNSIGNED NOT NULL,
  `episode_name` varchar(50) NOT NULL,
  `espisode_minutes` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `episodes`
--

INSERT INTO `episodes` (`episode_number`, `season_number`, `episode_name`, `espisode_minutes`) VALUES
('1', 4, 'Adrenoplex', 9),
('2', 2, 'Mesquite', 93),
('3', 3, 'disposable', 74),
('4', 1, 'Migraine Relief', 61);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episode_filiming_locations`
--

CREATE TABLE `episode_filiming_locations` (
  `localId` int(10) UNSIGNED NOT NULL,
  `episodes_episode_number` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `episode_filiming_locations`
--

INSERT INTO `episode_filiming_locations` (`localId`, `episodes_episode_number`, `country`, `city`) VALUES
(600, '4', 'France', 'Marseille'),
(602, '2', 'China', 'Wuma'),
(603, '3', 'China', 'Xirikxiy'),
(604, '1', 'Canada', 'Smoky Lake');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episode_rating`
--

CREATE TABLE `episode_rating` (
  `episode_rating_id` int(10) UNSIGNED NOT NULL,
  `episodes_episode_number` varchar(50) NOT NULL,
  `users_user_name` varchar(50) NOT NULL,
  `episode_rating_text` varchar(50) NOT NULL,
  `espisode_stars` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `episode_rating`
--

INSERT INTO `episode_rating` (`episode_rating_id`, `episodes_episode_number`, `users_user_name`, `episode_rating_text`, `espisode_stars`) VALUES
(700, '2', 'cbroseman1', 'Fusce congue, diam id ornare imperdiet, sapien urn', 2),
(701, '4', 'rpaute3', 'Integer aliquet, massa id lobortis convallis, tort', 2),
(702, '1', 'mchattelaine0', 'Vivamus tortor. Duis mattis egestas metus.', 5),
(703, '3', 'vriply2', 'Cras non velit nec nisi vulputate nonummy. Maecena', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episode_release_date`
--

CREATE TABLE `episode_release_date` (
  `episodes_episode_number` varchar(50) NOT NULL,
  `release_day` int(10) UNSIGNED NOT NULL,
  `release_month` int(10) UNSIGNED NOT NULL,
  `release_year` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `episode_release_date`
--

INSERT INTO `episode_release_date` (`episodes_episode_number`, `release_day`, `release_month`, `release_year`) VALUES
('1', 27, 5, 1994),
('2', 22, 7, 2000),
('3', 2, 10, 2012),
('4', 29, 3, 1994);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episode_tech_specs`
--

CREATE TABLE `episode_tech_specs` (
  `episodes_episode_number` varchar(50) NOT NULL,
  `episode_minutes` int(10) UNSIGNED NOT NULL,
  `episode_sound_mix` varchar(50) NOT NULL,
  `episode_format` varchar(50) NOT NULL,
  `aspect_ratio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `episode_tech_specs`
--

INSERT INTO `episode_tech_specs` (`episodes_episode_number`, `episode_minutes`, `episode_sound_mix`, `episode_format`, `aspect_ratio`) VALUES
('1', 49, 'rhythmic mix', 'Serie premium', '4:3'),
('2', 38, 'mix on the fly', 'Procedural', '16:9'),
('3', 37, 'fake mix on the fly', 'Serialiced', '1.85:1'),
('4', 37, 'cut on the fly', 'Sitcom', '14:8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nominations`
--

CREATE TABLE `nominations` (
  `nomination_name` varchar(50) NOT NULL,
  `nomination_academy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nominations`
--

INSERT INTO `nominations` (`nomination_name`, `nomination_academy`) VALUES
('Best Adapted Screenplay', 'Abbott-Emard'),
('Best Original Screenplay', 'Heaney-Volkman'),
('best soundtrack', 'Koss, Rau and Murazik'),
('Mejor fotografía', 'Nolan Group');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `idPerson` int(10) UNSIGNED NOT NULL,
  `episodes_episode_number` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`idPerson`, `episodes_episode_number`, `firstName`, `lastName`) VALUES
(9, '2', 'Shaylynn', 'Edgar'),
(10, '2', 'Fallon', 'Ellesworthe'),
(17, '3', 'Charlotte', 'Beckson'),
(29, '3', 'Ingram', 'Medina'),
(30, '1', 'Bobby', 'Piper'),
(35, '2', 'Alfredo', 'Nuzzti'),
(37, '3', 'Brigg', 'Feaviour'),
(39, '2', 'Tucky', 'Shivell'),
(40, '1', 'Gavra', 'Bartles'),
(50, '1', 'Emmeline', 'Thorsby'),
(53, '4', 'Florida', 'Petranek'),
(54, '4', 'Bettine', 'MacMechan'),
(66, '2', 'Emalia', 'Moreman'),
(68, '4', 'Waylin', 'Guirard'),
(69, '4', 'Kit', 'Sinisbury'),
(81, '2', 'Joshua', 'Barends'),
(82, '1', 'Dulcea', 'Lochhead'),
(90, '3', 'Mame', 'Fairholm'),
(92, '4', 'Almeta', 'Jersch'),
(99, '3', 'Rosco', 'Vickers');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producers`
--

CREATE TABLE `producers` (
  `producer_id` int(10) UNSIGNED NOT NULL,
  `Person_idPerson` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producers`
--

INSERT INTO `producers` (`producer_id`, `Person_idPerson`) VALUES
(404, 39),
(400, 50),
(401, 53),
(402, 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `season`
--

CREATE TABLE `season` (
  `season_number` int(10) UNSIGNED NOT NULL,
  `series_serie_id` int(10) UNSIGNED NOT NULL,
  `season_chapters` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `season`
--

INSERT INTO `season` (`season_number`, `series_serie_id`, `season_chapters`) VALUES
(1, 4, 26),
(2, 2, 24),
(3, 3, 22),
(4, 1, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `serie_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`serie_id`, `name`, `country`, `company`) VALUES
(1, '17 Girls ', 'Colombia', 'Hahn-Jast'),
(2, 'Alive and Ticking ', 'Serbia', 'Rowe Inc'),
(3, 'To Have and Have Not', 'Poland', 'Green-Buckridge'),
(4, 'Yogi Bear', 'China', 'Jenkins Inc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series_has_categories`
--

CREATE TABLE `series_has_categories` (
  `series_serie_id` int(10) UNSIGNED NOT NULL,
  `categories_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `series_has_categories`
--

INSERT INTO `series_has_categories` (`series_serie_id`, `categories_name`) VALUES
(1, 'Comedy|Horror'),
(2, 'Action|Drama'),
(3, 'Crime|Drama'),
(4, 'Action|Adventure|Comedy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series_has_nominations`
--

CREATE TABLE `series_has_nominations` (
  `series_serie_id` int(10) UNSIGNED NOT NULL,
  `nominations_nomination_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `series_has_nominations`
--

INSERT INTO `series_has_nominations` (`series_serie_id`, `nominations_nomination_name`) VALUES
(1, 'Best Adapted Screenplay'),
(2, 'Best Original Screenplay'),
(3, 'best soundtrack'),
(4, 'Mejor fotografía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series_has_users`
--

CREATE TABLE `series_has_users` (
  `series_serie_id` int(10) UNSIGNED NOT NULL,
  `users_user_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `series_has_users`
--

INSERT INTO `series_has_users` (`series_serie_id`, `users_user_name`) VALUES
(1, 'mchattelaine0'),
(2, 'cbroseman1'),
(3, 'vriply2'),
(4, 'rpaute3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_name` varchar(50) NOT NULL,
  `Person_idPerson` int(10) UNSIGNED NOT NULL,
  `user_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_name`, `Person_idPerson`, `user_email`) VALUES
('cbroseman1', 29, 'apennone1@sakura.ne.jp'),
('mchattelaine0', 54, 'edoveston0@boston.com'),
('rpaute3', 66, 'wking3@paginegialle.it'),
('vriply2', 81, 'lrobbs2@google.fr');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `writters`
--

CREATE TABLE `writters` (
  `writter_id` int(10) UNSIGNED NOT NULL,
  `Person_idPerson` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `writters`
--

INSERT INTO `writters` (`writter_id`, `Person_idPerson`) VALUES
(303, 9),
(301, 30),
(302, 69),
(300, 90);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actor_id`),
  ADD KEY `Actors_FKIndex1` (`Person_idPerson`);

--
-- Indices de la tabla `actors_has_actor_nominations`
--
ALTER TABLE `actors_has_actor_nominations`
  ADD PRIMARY KEY (`Actors_actor_id`,`actor_nominations_categoriesNominated`),
  ADD KEY `Actors_has_actor_nominations_FKIndex1` (`Actors_actor_id`),
  ADD KEY `Actors_has_actor_nominations_FKIndex2` (`actor_nominations_categoriesNominated`);

--
-- Indices de la tabla `actor_awards`
--
ALTER TABLE `actor_awards`
  ADD PRIMARY KEY (`CateogryWon`),
  ADD KEY `actor_awards_FKIndex1` (`Actors_actor_id`);

--
-- Indices de la tabla `actor_nominations`
--
ALTER TABLE `actor_nominations`
  ADD PRIMARY KEY (`categoriesNominated`);

--
-- Indices de la tabla `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`award_name`),
  ADD KEY `awards_FKIndex1` (`series_serie_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_name`);

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`character_id`),
  ADD KEY `Characters_FKIndex1` (`Actors_actor_id`);

--
-- Indices de la tabla `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`director_id`),
  ADD KEY `directors_FKIndex1` (`Person_idPerson`);

--
-- Indices de la tabla `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`episode_number`),
  ADD KEY `episodes_FKIndex1` (`season_number`);

--
-- Indices de la tabla `episode_filiming_locations`
--
ALTER TABLE `episode_filiming_locations`
  ADD PRIMARY KEY (`localId`),
  ADD KEY `episode_filiming_locations_FKIndex1` (`episodes_episode_number`);

--
-- Indices de la tabla `episode_rating`
--
ALTER TABLE `episode_rating`
  ADD PRIMARY KEY (`episode_rating_id`),
  ADD KEY `episode_rating_FKIndex1` (`users_user_name`),
  ADD KEY `episode_rating_FKIndex2` (`episodes_episode_number`);

--
-- Indices de la tabla `episode_release_date`
--
ALTER TABLE `episode_release_date`
  ADD PRIMARY KEY (`episodes_episode_number`),
  ADD KEY `episode_release_date_FKIndex1` (`episodes_episode_number`);

--
-- Indices de la tabla `episode_tech_specs`
--
ALTER TABLE `episode_tech_specs`
  ADD PRIMARY KEY (`episodes_episode_number`),
  ADD KEY `episode_tech_specs_FKIndex1` (`episodes_episode_number`);

--
-- Indices de la tabla `nominations`
--
ALTER TABLE `nominations`
  ADD PRIMARY KEY (`nomination_name`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`idPerson`),
  ADD KEY `Person_FKIndex1` (`episodes_episode_number`);

--
-- Indices de la tabla `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`producer_id`),
  ADD KEY `producers_FKIndex1` (`Person_idPerson`);

--
-- Indices de la tabla `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`season_number`),
  ADD KEY `season_FKIndex1` (`series_serie_id`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`serie_id`);

--
-- Indices de la tabla `series_has_categories`
--
ALTER TABLE `series_has_categories`
  ADD PRIMARY KEY (`series_serie_id`,`categories_name`),
  ADD KEY `series_has_categories_FKIndex1` (`series_serie_id`),
  ADD KEY `series_has_categories_FKIndex2` (`categories_name`);

--
-- Indices de la tabla `series_has_nominations`
--
ALTER TABLE `series_has_nominations`
  ADD PRIMARY KEY (`series_serie_id`,`nominations_nomination_name`),
  ADD KEY `series_has_nominations_FKIndex1` (`series_serie_id`),
  ADD KEY `series_has_nominations_FKIndex2` (`nominations_nomination_name`);

--
-- Indices de la tabla `series_has_users`
--
ALTER TABLE `series_has_users`
  ADD PRIMARY KEY (`series_serie_id`,`users_user_name`),
  ADD KEY `series_has_users_FKIndex1` (`series_serie_id`),
  ADD KEY `series_has_users_FKIndex2` (`users_user_name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_name`),
  ADD KEY `users_FKIndex1` (`Person_idPerson`);

--
-- Indices de la tabla `writters`
--
ALTER TABLE `writters`
  ADD PRIMARY KEY (`writter_id`),
  ADD KEY `writters_FKIndex1` (`Person_idPerson`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
