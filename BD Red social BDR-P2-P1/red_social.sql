-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2026 a las 17:09:34
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
-- Base de datos: `red social`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 1, 4, 'Que buen video te amo', '2026-04-15 16:39:57'),
(2, 2, 5, 'messiiii neymar y tralalero phonk, me encanta jugar futvol', '2026-04-15 16:40:54'),
(3, 3, 1, 'No le ganas ni 1 de 100', '2026-04-15 16:41:31'),
(4, 4, 2, 'Nose yo no se del tema pero pues puedo opinar que pues nose alomejor estaria bien o a lo mejor mal pero como no se pues no digo nada buen video', '2026-04-15 16:43:13'),
(5, 5, 3, 'Eres mi chico bueno', '2026-04-15 16:44:38'),
(6, 6, 5, 'Gran video y pues la verdad soy fan de neymar la hormiga no sirve para nada', '2026-04-15 16:56:42'),
(7, 7, 4, 'Enserio???', '2026-04-15 16:57:28'),
(8, 8, 3, 'Pues la verdad las chivas son el peor equipo de la liga mx por mucha diferencia, no se que opinen', '2026-04-15 16:57:38'),
(9, 10, 1, 'Nose yo prefiero escapa del tsunami', '2026-04-15 16:58:01'),
(10, 10, 6, 'Si la verdad un juegazo', '2026-04-15 17:05:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `etiqueta`, `creado_en`) VALUES
(1, '#VivaRoblox', '2026-04-02'),
(2, '#VivirEnPaz', '2026-04-07'),
(3, '#ViscaBarca', '2026-04-14'),
(4, '#CristoNuestroSeñorAmen', '2026-04-13'),
(5, '#happy', '2026-04-13'),
(6, '#Mexico', '2026-04-14'),
(7, '#Futbol', '2026-04-14'),
(8, '#Analisis', '2026-04-03'),
(9, '#Comentarios', '2026-04-17'),
(10, '#Debate', '2026-04-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` varchar(1000) NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(1, 1, 'Roba un brainrot ', 'https://static.wikia.nocookie.net/character-stats-and-profiles/images/5/52/Sahur2.webp/revision/latest?cb=20250510085254', '2026-04-15 16:32:19', 1720),
(2, 2, 'Contenido de videojuegos', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkIE1PC3MgPCg3sDcvTjemywClPlYJ-qtGEhkk8AzSyFIwNwwHzMP8_N3WMnu6FYTS3QmhBSobS_aALRe5Ye6dORIbvV5Qq1yWq8hADQ&s=10', '2026-04-15 16:35:05', 1),
(3, 3, 'le gana a peterbot', 'https://i.pinimg.com/originals/70/1f/22/701f2266f76b3edf8898168666777b86.jpg', '2026-04-15 16:36:27', 9821),
(4, 4, 'La eutanasia es la acción médica deliberada para poner fin a la vida de una persona con enfermedad incurable y grave, a su solicitud, para evitar sufrimientos extremos. Puede ser activa (administrar sustancias) o pasiva (suspender tratamientos). Es legal en países como España, Países Bajos, Bélgica, Canadá y Colombia, requiriendo un procedimiento estricto. \r\nWikipedia\r\nWikipedia\r\n +2\r\nAspectos Clave:\r\nVoluntaria: Realizada con consentimiento explícito del paciente.\r\nActiva: El médico administra un fármaco para causar la muerte.\r\nPasiva: Se limita o retira el tratamiento que prolonga la vida.\r\nDiferencia con Suicidio Asistido: En la eutanasia, el médico suministra la sustancia; en el suicidio asistido, el paciente la toma por sí mismo.\r\nSituación Legal: Prohibida en México según la Ley General de Salud, aunque se regula la voluntad anticipada (ortotanasia). \r\nWikipedia\r\nWikipedia\r\n +4\r\nProcedimiento Clínico:\r\nGeneralmente, implica la administración de un sedante fuerte para asegurar la ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcCGCUHp-cErXDBCEdS8yvQgXnxjpURV-e7A&s', '2026-04-15 16:37:22', 444),
(5, 5, 'Yo soy un good boy', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcCGCUHp-cErXDBCEdS8yvQgXnxjpURV-e7A&s', '2026-04-15 16:39:29', 4413),
(6, 4, 'Es La Hormiga Gonzalez El mejor jugador de la actualidad?', 'https://a.espncdn.com/photo/2025/1105/r1571293_1296x729_16-9.jpg', '2026-04-13 10:10:45', 0),
(7, 2, '\"You\" es una serie de suspenso psicológico de Netflix centrada en Joe Goldberg, un gerente de librería que se convierte en un acosador y asesino en serie cuando se enamora. Utilizando redes sociales y tecnología, obsesiona a mujeres jóvenes, controlando sus vidas y eliminando obstáculos de forma tóxica y violenta. ', 'https://www.aceprensa.com/wp-content/uploads/2023/02/You.jpg', '2026-04-15 16:53:44', 17812),
(8, 4, 'Las chivas son el peor equipo de la liga mx????\r\nDebate serio.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyggtgpeSM_9eedxz8vn9-NPexbZnEqZjHqw&s', '2026-04-06 07:54:38', 12),
(9, 3, 'Alexis \"zen\" Bernier es un jugador profesional francés de Rocket League, ampliamente considerado uno de los mayores talentos mecánicos en la historia del juego . Actualmente compite para el equipo Team Vitality', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyyOXtz4qwHOTdk79j9obMALItFa6ucddHxQ&s', '2026-04-15 16:55:21', 361),
(10, 5, 'Free fire es un gran juego actualmente, lo juego y la neta soy el mejor pero pa perder', 'https://blog.uptodown.com/wp-content/uploads/free-fire-portada.jpg', '2026-04-15 16:55:54', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_hashtags`
--

INSERT INTO `pub_hashtags` (`pub_id`, `hashtag_id`) VALUES
(1, 1),
(2, 4),
(4, 2),
(3, 3),
(5, 1),
(10, 2),
(9, 4),
(8, 3),
(7, 5),
(6, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_likes`
--

INSERT INTO `pub_likes` (`pub_id`, `usuario_id`, `fecha_like`) VALUES
(1, 5, '2026-04-08 07:51:34'),
(2, 4, '2026-04-08 07:51:50'),
(3, 3, '2026-04-15 16:51:56'),
(4, 1, '2026-04-16 07:52:03'),
(5, 2, '2026-04-13 07:52:13'),
(10, 6, '2026-04-15 17:06:52'),
(9, 7, '2026-04-15 17:07:00'),
(8, 8, '2026-04-15 17:07:06'),
(7, 9, '2026-04-15 17:07:15'),
(6, 1, '2026-04-15 17:07:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidor_id`, `seguido_id`, `fecha_follow`) VALUES
(1, 5, '2026-04-15'),
(2, 1, '2026-04-08'),
(4, 3, '2026-04-16'),
(3, 2, '2026-04-13'),
(4, 2, '2026-04-01'),
(10, 6, '2026-04-08'),
(9, 7, '2026-04-15'),
(8, 8, '2026-04-06'),
(9, 2, '2026-04-01'),
(10, 7, '2026-04-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'Santiago', 'santiago.nunez24@cetis107.edu.mx', 'Cherki goat', '2026-04-16'),
(2, 'Alejandro', 'jose.gonzalezs24@cetis107.edu.mx', 'Visca barca', '2026-04-15'),
(3, 'Axelito', 'axel.rosales24@gmail.com', 'Madrid el peor equipo', '2026-04-13'),
(4, 'Yosh', 'Drake.yyosh@gmail.com', 'el limite es el cielo y yo empece a excavar', '2026-04-15'),
(5, 'kenneth', 'kennethneymar@gmail.com', 'si neymar no juega el mundial yo tampoco', '2026-04-18'),
(6, 'Gabriel', 'gabriel.gomez@gmail.com', 'Ferrari', '2026-04-03'),
(7, 'Israel', 'israel.osorio@cetis.edu.mx', 'Me ponen la mira en el pecho', '2026-04-10'),
(8, 'Ivan', 'ivan.ivansito@gmail.com', 'Vamos a altata', '2026-04-15'),
(9, 'Luis', 'luis.obeso@gmail.com', 'pararaaa para pa parara', '2026-04-04'),
(10, 'emilio', 'emilio@gmail.com', 'viva todo ajajajaj si', '2026-04-13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `hashtag_id` (`hashtag_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `seguidor_id` (`seguidor_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`seguidor_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
