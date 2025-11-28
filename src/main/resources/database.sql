-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 25-11-2025 a las 08:54:48
-- Versión del servidor: 8.4.6
-- Versión de PHP: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `persutildb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id` bigint NOT NULL,
  `titulo` varchar(1024) COLLATE utf32_unicode_ci NOT NULL,
  `contenido` longtext COLLATE utf32_unicode_ci NOT NULL,
  `etiquetas` varchar(1024) COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contreras`
--

CREATE TABLE `contreras` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(1024) NOT NULL,
  `contenido` varchar(255) NOT NULL,
  `etiquetas` varchar(1024) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publico` tinyint(1) NOT NULL,
  `imagenUrl` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Volcado de datos para la tabla `contreras`
--

INSERT INTO `contreras` (`id`, `titulo`, `contenido`, `etiquetas`, `fecha_creacion`, `fecha_modificacion`, `publico`, `imagenUrl`) VALUES
(1, 'Clase 1-B', 'EXAMEN MATES LUNES', 'clase,examen', '2025-11-28 03:17:48', '2025-11-28 03:19:12', 1, NULL),
(2, 'Excursion', 'proxima excursion al museo el jueves', 'salida,museo', '2025-11-28 03:17:48', '2025-11-28 03:19:26', 0, NULL),
(3, 'Reunion padres', 'reunion padres viernes a las 17h', 'reunion,familiar', '2025-11-28 03:17:48', NULL, 1, NULL),
(4, 'Biblioteca', 'nuevos libros disponibles en biblioteca, 10/10', 'libros,biblioteca', '2025-11-28 03:17:48', '2025-11-28 03:19:35', 0, NULL),
(5, 'Educacion fisica', 'traer ropa deportiva el martes', 'deporte,clase', '2025-11-28 03:17:48', NULL, 1, NULL),
(6, 'Comedor escolar', 'menu especial sin gluten esta semana', 'comedor,menu', '2025-11-28 03:17:48', NULL, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contreras`
--
ALTER TABLE `contreras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contreras`
--
ALTER TABLE `contreras`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;
