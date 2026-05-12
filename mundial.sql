-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2026 a las 17:31:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mundial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confederacion`
--

CREATE TABLE `confederacion` (
  `id_confederacion` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `siglas` varchar(10) NOT NULL,
  `region` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `confederacion`
--

INSERT INTO `confederacion` (`id_confederacion`, `nombre`, `siglas`, `region`) VALUES
(1, 'Unión de Asociaciones Europeas de Fútbol ', 'UEFA', 'Europa'),
(2, 'Confederación Sudamericana de Fútbol', 'CONMEBOL', 'Sudamerica'),
(3, 'Confederación de Norteamérica, Centroamérica y el Caribe de Fútbol', 'CONCACAF', 'Norteamerica, Centroamerica y Caribe'),
(4, 'Confederación Asiática de Fútbol', 'AFC', 'Asia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `codigo_fifa` char(3) NOT NULL,
  `entrenador` varchar(100) NOT NULL,
  `id_confederacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre`, `codigo_fifa`, `entrenador`, `id_confederacion`) VALUES
(1, 'Mexico', 'MEX', 'Javier Aguirre', 3),
(2, 'Argentina', 'ARG', 'Lionel Scaloni', 2),
(3, 'España', 'ESP', 'Luis de la fuente', 1),
(4, 'Portugal', 'POR', 'Roberto Martinez', 1),
(5, 'Coreal del sur', 'KOR', 'Hong Myung-bo', 4),
(6, 'Colombia', 'COL', 'Nestor Lorenzo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--

CREATE TABLE `estadio` (
  `id_estadio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(80) NOT NULL,
  `pais` varchar(80) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadio`
--

INSERT INTO `estadio` (`id_estadio`, `nombre`, `ciudad`, `pais`, `capacidad`) VALUES
(1, 'AT&T Stadium', 'Dallas', 'Estados Unidos', 80000),
(2, 'Arrowhead Stadium', 'Kansas City', 'Estados Unidos', 76400),
(3, 'Estadio Azteca ', 'Ciudad de Mexico', 'Mexico', 87000),
(4, 'Estadio BBVA', 'Monterrey', 'Mexico', 51000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id_jugador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `posicion` varchar(30) NOT NULL,
  `numero_dorsal` tinyint(4) NOT NULL,
  `fecha_nac` date NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_jugador`, `nombre`, `posicion`, `numero_dorsal`, `fecha_nac`, `id_equipo`) VALUES
(1, 'Armando Gonzalez', 'Delantero', 13, '2003-04-20', 1),
(2, 'Raul Rangel', 'Portero', 1, '2000-02-25', 1),
(3, 'Lamine Yamal', 'Delantero', 10, '2007-07-13', 3),
(4, 'Luis Diaz', 'Delantero', 7, '1997-06-20', 6),
(5, 'Cuti Romero', 'Defensa', 13, '1998-03-13', 2),
(6, 'Kim Min-Jae', 'Defensa', 4, '1996-11-15', 5),
(7, 'Cristiano Ronaldo', 'Delantero', 7, '1985-02-05', 4),
(8, 'Joao Neves', 'Centrocampista', 87, '2004-09-27', 4),
(17, 'Nuno Mendes', 'Defensa', 25, '2002-06-19', 4),
(18, 'Son Heung-Min', 'Delantero', 7, '1992-07-08', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id_partido` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `fase` varchar(30) NOT NULL,
  `goles_local` tinyint(4) NOT NULL,
  `goles_visitante` tinyint(4) NOT NULL,
  `id_estadio` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_visitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id_partido`, `fecha`, `fase`, `goles_local`, `goles_visitante`, `id_estadio`, `id_local`, `id_visitante`) VALUES
(1, '2026-06-18 12:00:00', 'Fase de grupos', 3, 1, 3, 1, 5),
(2, '2026-06-24 12:00:00', 'Fase de grupos', 5, 2, 4, 2, 6),
(3, '2026-06-26 12:00:00', 'Cuartos de final', 4, 3, 2, 4, 3),
(4, '2026-07-02 12:00:00', 'Semifinal', 6, 3, 1, 2, 1),
(5, '2026-07-09 12:00:00', 'Final', 3, 1, 3, 4, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `confederacion`
--
ALTER TABLE `confederacion`
  ADD PRIMARY KEY (`id_confederacion`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `id_confederacion` (`id_confederacion`);

--
-- Indices de la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`id_estadio`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`),
  ADD KEY `id_estadio` (`id_estadio`),
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_visitante` (`id_visitante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `confederacion`
--
ALTER TABLE `confederacion`
  MODIFY `id_confederacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estadio`
--
ALTER TABLE `estadio`
  MODIFY `id_estadio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`id_confederacion`) REFERENCES `confederacion` (`id_confederacion`);

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`);

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`id_estadio`),
  ADD CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`id_local`) REFERENCES `equipo` (`id_equipo`),
  ADD CONSTRAINT `partido_ibfk_3` FOREIGN KEY (`id_visitante`) REFERENCES `equipo` (`id_equipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
