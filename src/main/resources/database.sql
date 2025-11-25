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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE `recurso` (
  `id` bigint NOT NULL,
  `nombre` varchar(1024) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Volcado de datos para la tabla `recurso`
--

INSERT INTO `recurso` (`id`, `nombre`, `url`, `fecha_creacion`, `fecha_modificacion`, `publico`) VALUES
(1, 'Wikipedia', 'https://wikipedia.org', '2025-11-24 11:25:21', NULL, 1),
(2, 'ChatGPT', 'https://chatgpt.com/', '2025-11-24 11:25:21', NULL, 1),
(3, 'GitHub', 'https://github.com/', '2025-11-24 12:47:50', NULL, 1),
(6, 'WikiRafa', 'https://wikirafa.ausiasmarch.net/', '2025-11-25 09:43:04', '2025-11-25 09:43:08', 1),
(7, 'Stack Overflow', 'https://stackoverflow.com/', '2025-11-25 09:45:27', NULL, 1),
(8, 'Regex Builder', 'https://regex101.com/', '2025-11-25 09:45:53', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recurso`
--
ALTER TABLE `recurso`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;
