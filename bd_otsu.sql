-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2020 a las 17:32:22
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_otsu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empresa`
--

CREATE TABLE `tbl_empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_empresa`
--

INSERT INTO `tbl_empresa` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'CIV.SRL', 1, '2020-02-02 06:00:00', '2020-02-02 06:00:00'),
(2, 'Daher', 1, '2020-03-17 06:00:00', '2020-03-17 06:00:00'),
(3, 'siglos prever', 1, '2020-04-05 06:00:00', '2020-04-05 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ot`
--

CREATE TABLE `tbl_ot` (
  `id` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_prioridad` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `solicitud` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_solicitud` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fecha_asig` timestamp NULL DEFAULT NULL,
  `fecha_fin` timestamp NULL DEFAULT NULL,
  `hinicio` time DEFAULT NULL,
  `hfinal` time DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_ot`
--

INSERT INTO `tbl_ot` (`id`, `id_persona`, `id_empresa`, `id_prioridad`, `id_servicio`, `solicitud`, `fecha_solicitud`, `fecha_asig`, `fecha_fin`, `hinicio`, `hfinal`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'informar', '2020-02-08 06:00:00', '2020-02-08 06:00:00', '2020-02-08 06:00:00', NULL, NULL, 1, '2020-02-08 06:00:00', '2020-02-08 06:00:00'),
(7, 2, 2, 1, 1, 'nada', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '07:05:05', '10:04:00', 1, '2020-03-29 06:00:00', '2020-03-29 06:00:00'),
(8, 3, 2, 1, 1, 'nada1', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '15:00:00', '15:12:00', 1, '2020-03-29 06:00:00', '2020-03-29 06:00:00'),
(9, 4, 2, 1, 1, 'naaa\r\n                                                ', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '21:59:00', '21:00:00', 1, '2020-03-30 04:12:45', '2020-03-30 04:12:45'),
(10, 4, 2, 1, 1, 'naaa\r\n                                                ', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '21:59:00', '21:00:00', 1, '2020-03-30 04:12:45', '2020-03-30 04:12:45'),
(11, 1, 2, 1, 1, 'solicito\r\n                                                ', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '22:59:00', '23:00:00', 1, '2020-03-30 04:12:45', '2020-03-30 04:12:45'),
(12, 5, 2, 1, 1, 'monitor no enciende\r\n                                                ', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '23:59:00', '00:00:00', 1, '2020-03-30 04:12:45', '2020-03-30 04:12:45'),
(13, 5, 1, 1, 1, 'teclado\r\n                                                ', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '2020-03-29 06:00:00', '23:59:00', '00:00:00', 1, '2020-03-30 04:13:20', '2020-03-30 04:13:20'),
(14, 5, 2, 1, 1, 'mouse no enciende\r\n                                                ', '2020-03-30 06:00:00', '2020-03-30 06:00:00', '2020-03-31 06:00:00', '15:21:00', '15:22:00', 1, '2020-03-30 21:21:34', '2020-03-30 21:21:34'),
(15, 5, 2, 1, 1, 'hola\r\n                                                ', '2020-04-02 06:00:00', '2020-04-02 06:00:00', '2020-04-03 06:00:00', '10:50:00', '10:54:00', 1, '2020-04-02 16:50:47', '2020-04-02 16:50:47'),
(16, 5, 2, 1, 1, 'hola\r\n                                                ', '2020-04-02 06:00:00', '2020-04-02 06:00:00', '2020-04-03 06:00:00', '10:50:00', '10:54:00', 1, '2020-04-02 16:50:50', '2020-04-02 16:50:50'),
(17, 4, 1, 1, 1, 'prueba2\r\n                                                ', '2020-04-03 06:00:00', '2020-04-03 06:00:00', '2020-04-03 06:00:00', '10:54:00', '10:55:00', 1, '2020-04-02 16:54:50', '2020-04-02 16:54:50'),
(18, 3, 2, 1, 1, 'prueba3\r\n                                                ', '2020-04-03 06:00:00', '2020-04-03 06:00:00', '2020-04-03 06:00:00', '10:59:00', '10:55:00', 1, '2020-04-02 16:59:11', '2020-04-02 16:59:11'),
(21, 1, 1, 1, 1, 'hoy domingo\r\n                                                ', '2020-04-05 06:00:00', '2020-04-05 06:00:00', '2020-04-05 06:00:00', '13:14:00', '13:14:00', 1, '2020-04-05 18:14:31', '2020-04-05 18:14:31'),
(22, 6, 3, 2, 2, 'pc no enciende\r\n                                                ', '2020-04-05 06:00:00', '2020-04-05 06:00:00', '2020-04-05 06:00:00', '13:51:00', '13:52:00', 1, '2020-04-05 18:51:46', '2020-04-05 18:51:46'),
(23, 6, 1, 1, 1, 'pc \r\n                                                ', '2020-04-05 06:00:00', '2020-04-05 06:00:00', '2020-04-05 06:00:00', '13:51:00', '13:52:00', 1, '2020-04-05 19:07:05', '2020-04-05 19:07:05'),
(26, 7, 3, 2, 2, 'cddd\r\n                                                ', '2020-05-06 04:00:00', '2020-05-06 04:00:00', '2020-05-06 04:00:00', '22:18:00', '23:18:00', 1, '2020-05-07 02:39:19', '2020-05-07 02:39:19'),
(27, 2, 1, 1, 4, 'psd\r\n                                                ', '2020-05-07 04:00:00', '2020-05-07 04:00:00', '2020-05-07 04:00:00', '00:04:00', '01:04:00', 1, '2020-05-07 04:04:56', '2020-05-07 04:04:56'),
(28, 1, 2, 1, 3, 'solicito \r\n                                                ', '2020-05-10 04:00:00', '2020-05-10 04:00:00', '2020-05-10 04:00:00', '11:15:00', '11:20:00', 1, '2020-05-10 15:15:35', '2020-05-10 15:15:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_persona`
--

CREATE TABLE `tbl_persona` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ci` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_persona`
--

INSERT INTO `tbl_persona` (`id`, `id_empresa`, `nombre`, `apellido`, `celular`, `ci`, `estado`, `created_at`, `updated_at`) VALUES
(1, 0, 'marcos', 'suarez', '', 0, 1, '2020-03-27 06:00:00', '2020-03-27 06:00:00'),
(2, 0, 'lucas', 'ferrante', '', 0, 1, '2020-03-27 06:00:00', '2020-03-27 06:00:00'),
(3, 0, 'carlos', 'bustamante', '', 0, 1, '2020-03-29 06:00:00', '2020-03-29 06:00:00'),
(4, 0, 'milena', 'calle', '', 0, 1, '2020-03-29 06:00:00', '2020-03-29 06:00:00'),
(5, 0, 'matias', 'ruedas', '', 0, 1, '2020-03-29 06:00:00', '2020-03-29 06:00:00'),
(6, 0, 'sofia', 'linares', '', 0, 1, '2020-04-05 06:00:00', '2020-04-05 06:00:00'),
(7, 0, 'teodora', 'palacios', '', 0, 1, '2020-05-06 04:00:00', '2020-05-06 04:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_prioridad`
--

CREATE TABLE `tbl_prioridad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_prioridad`
--

INSERT INTO `tbl_prioridad` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Alta', 1, '2020-02-08 06:00:00', '2020-02-08 06:00:00'),
(2, 'media', 1, '2020-04-05 06:00:00', '2020-04-05 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicio`
--

CREATE TABLE `tbl_servicio` (
  `id` int(11) NOT NULL,
  `id_tiposer` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_servicio`
--

INSERT INTO `tbl_servicio` (`id`, `id_tiposer`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 'informe', 1, '2020-02-08 06:00:00', '2020-02-08 06:00:00'),
(2, 2, 'frontend', 1, '2020-04-05 06:00:00', '2020-04-05 06:00:00'),
(3, 2, 'backend', 1, '2020-05-06 04:00:00', '2020-05-06 04:00:00'),
(4, 2, 'base datos', 1, '2020-05-07 04:00:00', '2020-05-07 04:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tiposerv`
--

CREATE TABLE `tbl_tiposerv` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_tiposerv`
--

INSERT INTO `tbl_tiposerv` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Apoyo al usuario', 1, '2020-02-08 06:00:00', '2020-02-08 06:00:00'),
(2, 'Desarrollo', 1, '2020-04-05 06:00:00', '2020-04-05 06:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_empresa`
--
ALTER TABLE `tbl_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_ot`
--
ALTER TABLE `tbl_ot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_prioridad` (`id_prioridad`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `tbl_persona`
--
ALTER TABLE `tbl_persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_prioridad`
--
ALTER TABLE `tbl_prioridad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_servicio`
--
ALTER TABLE `tbl_servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tiposer` (`id_tiposer`);

--
-- Indices de la tabla `tbl_tiposerv`
--
ALTER TABLE `tbl_tiposerv`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_empresa`
--
ALTER TABLE `tbl_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_ot`
--
ALTER TABLE `tbl_ot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `tbl_persona`
--
ALTER TABLE `tbl_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_prioridad`
--
ALTER TABLE `tbl_prioridad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_servicio`
--
ALTER TABLE `tbl_servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_tiposerv`
--
ALTER TABLE `tbl_tiposerv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_ot`
--
ALTER TABLE `tbl_ot`
  ADD CONSTRAINT `tbl_ot_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `tbl_empresa` (`id`),
  ADD CONSTRAINT `tbl_ot_ibfk_2` FOREIGN KEY (`id_persona`) REFERENCES `tbl_persona` (`id`),
  ADD CONSTRAINT `tbl_ot_ibfk_3` FOREIGN KEY (`id_prioridad`) REFERENCES `tbl_prioridad` (`id`),
  ADD CONSTRAINT `tbl_ot_ibfk_4` FOREIGN KEY (`id_servicio`) REFERENCES `tbl_servicio` (`id`);

--
-- Filtros para la tabla `tbl_servicio`
--
ALTER TABLE `tbl_servicio`
  ADD CONSTRAINT `tbl_servicio_ibfk_1` FOREIGN KEY (`id_tiposer`) REFERENCES `tbl_tiposerv` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
