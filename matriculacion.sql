-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2024 a las 06:08:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `matriculacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answered_tests`
--

CREATE TABLE `answered_tests` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `submitted` tinyint(1) NOT NULL DEFAULT 0,
  `submitted_date` datetime DEFAULT NULL,
  `marked` tinyint(1) NOT NULL DEFAULT 0,
  `marked_by` varchar(60) DEFAULT NULL,
  `marked_date` datetime DEFAULT NULL,
  `score` tinyint(3) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `answered_tests`
--

INSERT INTO `answered_tests` (`id`, `user_id`, `test_id`, `submitted`, `submitted_date`, `marked`, `marked_by`, `marked_date`, `score`, `date`) VALUES
(1, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 1, '2021-10-25 22:13:04', 1, 'vibe.peters', '2021-10-20 20:26:01', 50, '2021-10-09 11:02:49'),
(2, 'guy.dude', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 1, '2021-10-25 11:36:53', 1, 'vibe.peters', '2021-10-25 12:09:25', 67, '2021-10-25 11:35:51'),
(3, 'jane.mandawa', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 1, '2021-10-25 12:49:21', 1, 'vibe.peters', '2021-10-25 12:50:48', 100, '2021-10-25 12:49:13'),
(4, 'jane.mandawa', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 1, '2021-11-02 20:16:53', 0, NULL, NULL, 0, '2021-11-02 20:16:18'),
(5, 'guy.dude', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 1, '2021-11-02 20:17:51', 1, 'vibe.peters', '2021-11-04 13:20:29', 80, '2021-11-02 20:17:23'),
(6, 'female.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 1, '2021-11-22 11:38:24', 1, 'man.human', '2021-11-22 11:41:53', 50, '2021-11-22 11:37:30'),
(7, 'student.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 1, '2021-11-22 11:39:40', 1, 'man.human', '2021-11-22 11:41:22', 100, '2021-11-22 11:39:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `answer_mark` tinyint(1) NOT NULL DEFAULT 0,
  `answer_comment` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `test_id`, `question_id`, `answer`, `date`, `answer_mark`, `answer_comment`) VALUES
(1, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 1, 'photothynthesis', '2021-10-03 18:15:53', 1, ''),
(2, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 2, '1964', '2021-10-03 18:15:53', 2, ''),
(3, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 4, 'here is another answer', '2021-10-03 18:15:53', 1, ''),
(4, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 5, '2 point answer', '2021-10-03 18:15:54', 1, ''),
(5, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 6, 'an answer', '2021-10-03 18:15:54', 2, ''),
(6, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 7, 'another answer', '2021-10-03 18:15:54', 2, ''),
(7, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 8, 'another answer', '2021-10-03 18:15:54', 2, ''),
(8, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 9, 'B', '2021-10-05 20:12:12', 1, ''),
(9, 'guy.dude', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 10, '4', '2021-10-25 11:35:51', 1, ''),
(10, 'guy.dude', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 11, 'green', '2021-10-25 11:35:52', 2, ''),
(11, 'guy.dude', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 12, 'A', '2021-10-25 11:35:52', 1, ''),
(12, 'jane.mandawa', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 10, '4', '2021-10-25 12:49:13', 1, ''),
(13, 'jane.mandawa', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 11, 'red', '2021-10-25 12:49:13', 1, ''),
(14, 'jane.mandawa', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 12, 'A', '2021-10-25 12:49:13', 1, ''),
(15, 'jane.mandawa', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 13, 'B', '2021-11-02 20:16:19', 0, ''),
(16, 'jane.mandawa', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 14, 'B', '2021-11-02 20:16:19', 0, ''),
(17, 'jane.mandawa', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 15, 'NO', '2021-11-02 20:16:19', 0, ''),
(18, 'jane.mandawa', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 16, 'it produces rain', '2021-11-02 20:16:40', 0, ''),
(19, 'jane.mandawa', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 17, 'NO', '2021-11-02 20:16:40', 0, ''),
(20, 'guy.dude', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 13, 'B', '2021-11-02 20:17:23', 1, ''),
(21, 'guy.dude', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 14, 'C', '2021-11-02 20:17:24', 1, ''),
(22, 'guy.dude', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 15, 'no', '2021-11-02 20:17:24', 1, ''),
(23, 'guy.dude', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 16, 'rain cycle', '2021-11-02 20:17:46', 2, ''),
(24, 'guy.dude', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 17, 'Yes', '2021-11-02 20:17:46', 1, ''),
(25, 'female.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 18, 'electricity', '2021-11-22 11:37:30', 1, ''),
(26, 'female.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 19, 'omo', '2021-11-22 11:37:31', 1, ''),
(27, 'female.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 20, 'C', '2021-11-22 11:37:51', 2, ''),
(28, 'female.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 21, 'photosynthesis is how we take photos', '2021-11-22 11:38:11', 2, ''),
(29, 'student.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 18, 'electricity', '2021-11-22 11:39:17', 1, ''),
(30, 'student.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 19, 'omo', '2021-11-22 11:39:17', 1, ''),
(31, 'student.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 20, 'A', '2021-11-22 11:39:18', 1, ''),
(32, 'student.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 21, 'its the way plants make food', '2021-11-22 11:39:36', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `school_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `classes`
--

INSERT INTO `classes` (`id`, `class`, `user_id`, `school_id`, `class_id`, `date`) VALUES
(1, 'first class', 'eathorne.banda', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'rbepYJscJY4upWdiQXFLmzHUKSFXJNZW9JVnNCbKmILz0k78KNDf2keiMU4C', '2018-08-18 17:14:19'),
(3, 'second class', 'eathorne.banda', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'xrP2mcCVRukT3OsZaSQBddZB0D3xstpAoN0EznlTbJgTcLGBoLRRxjM7usEo', '2021-08-21 17:48:40'),
(4, 'General knowledge class', 'vibe.peters', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'TwgTVOe0x9xC7hX9K2M8EVa8dwFR5O9mvC6gOhSvcVz3C9gJ3CKndyKQXmmh', '2021-10-25 10:51:39'),
(6, 'biology class', 'man.human', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'wOkGTBbzBDEnswCI7jpzoWf7alU2bNPHmVXRSXCZwcjBTDHa1QnAMIFxjxjV', '2021-11-22 11:22:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_lecturers`
--

CREATE TABLE `class_lecturers` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `school_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `class_lecturers`
--

INSERT INTO `class_lecturers` (`id`, `user_id`, `class_id`, `disabled`, `date`, `school_id`) VALUES
(1, 'vibe.peters', 'xrP2mcCVRukT3OsZaSQBddZB0D3xstpAoN0EznlTbJgTcLGBoLRRxjM7usEo', 0, '2021-09-04 12:57:35', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH'),
(2, 'vibe.peters', 'TwgTVOe0x9xC7hX9K2M8EVa8dwFR5O9mvC6gOhSvcVz3C9gJ3CKndyKQXmmh', 0, '2021-10-25 11:10:02', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH'),
(3, 'man.human', 'wOkGTBbzBDEnswCI7jpzoWf7alU2bNPHmVXRSXCZwcjBTDHa1QnAMIFxjxjV', 0, '2021-11-22 11:23:01', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_students`
--

CREATE TABLE `class_students` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `school_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `class_students`
--

INSERT INTO `class_students` (`id`, `user_id`, `class_id`, `disabled`, `date`, `school_id`) VALUES
(1, 'maria.jonnes', 'xrP2mcCVRukT3OsZaSQBddZB0D3xstpAoN0EznlTbJgTcLGBoLRRxjM7usEo', 0, '2021-08-27 11:20:52', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH'),
(3, 'guy.dude', 'xrP2mcCVRukT3OsZaSQBddZB0D3xstpAoN0EznlTbJgTcLGBoLRRxjM7usEo', 0, '2021-08-27 11:22:05', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH'),
(4, 'bob.marley', 'xrP2mcCVRukT3OsZaSQBddZB0D3xstpAoN0EznlTbJgTcLGBoLRRxjM7usEo', 0, '2021-08-27 11:26:47', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH'),
(6, 'guy.dude', 'TwgTVOe0x9xC7hX9K2M8EVa8dwFR5O9mvC6gOhSvcVz3C9gJ3CKndyKQXmmh', 0, '2021-10-25 11:16:05', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH'),
(7, 'jane.mandawa', 'TwgTVOe0x9xC7hX9K2M8EVa8dwFR5O9mvC6gOhSvcVz3C9gJ3CKndyKQXmmh', 0, '2021-10-25 11:16:12', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH'),
(8, 'female.banda', 'wOkGTBbzBDEnswCI7jpzoWf7alU2bNPHmVXRSXCZwcjBTDHa1QnAMIFxjxjV', 0, '2021-11-22 11:24:28', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br'),
(9, 'student.banda', 'wOkGTBbzBDEnswCI7jpzoWf7alU2bNPHmVXRSXCZwcjBTDHa1QnAMIFxjxjV', 0, '2021-11-22 11:24:44', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_tests`
--

CREATE TABLE `class_tests` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `test` varchar(100) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `school` varchar(30) NOT NULL,
  `school_id` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `schools`
--

INSERT INTO `schools` (`id`, `school`, `school_id`, `date`, `user_id`) VALUES
(4, 'Edunexus', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', '2021-11-22 11:12:02', 'eathorne.banda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_matriculacion`
--

CREATE TABLE `tb_matriculacion` (
  `id_matricula` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `ci` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `ano_for` varchar(255) DEFAULT NULL,
  `tipo_matriculacion` varchar(255) DEFAULT NULL,
  `nro_deposito_matricual` varchar(255) DEFAULT NULL,
  `foto_deposito_matricula` text DEFAULT NULL,
  `documentos` text DEFAULT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tb_matriculacion`
--

INSERT INTO `tb_matriculacion` (`id_matricula`, `nombre`, `apellido`, `genero`, `ci`, `celular`, `correo`, `ano_for`, `tipo_matriculacion`, `nro_deposito_matricual`, `foto_deposito_matricula`, `documentos`, `fyh_creacion`, `estado`) VALUES
(3, 'Carlos', 'Nieto', 'male', '1004827433', '3216484089', 'canieto@uniempresarial.edu.co', 'PRIMERO', 'ESTUDIANTE REGULAR ( $1.000.000)', '23598329', '2024-04-07-10-02-58__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07-10-02-58__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07 10:02:58', '1'),
(4, 'Carlos', 'Nieto', 'male', '1004827434', '3216484089', 'canieto@uniempresarial.edu.co', 'PRIMERO', 'ESTUDIANTE REGULAR ( $1.000.000)', '23598329', '2024-04-07-10-05-39__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07-10-05-39__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07 10:05:39', '1'),
(5, 'Carlos', 'Nieto', 'male', '1004827435', '3216484089', 'canieto@uniempresarial.edu.co', 'PRIMERO', 'ESTUDIANTE REGULAR ( $1.000.000)', '23598329', '2024-04-07-10-14-52__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07-10-14-52__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07 10:14:52', '1'),
(6, 'Carlos', 'Nieto', 'male', '1004827436', '3216484089', 'canieto@uniempresarial.edu.co', 'PRIMERO', 'ESTUDIANTE REGULAR ( $1.000.000)', '23598329', '2024-04-07-10-23-42__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07-10-23-42__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07 10:23:42', '1'),
(7, 'Andres Felipe', 'Nieto Jimenez', 'male', '1004827454', '654654', 'nieto2013jimenez@gmail.com', 'PRIMERO', 'ESTUDIANTE REGULAR ( $1.000.000)', '23598329', '2024-04-07-10-26-12__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07-10-26-12__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07 10:26:12', '1'),
(8, 'Andres Felipe', 'Nieto Jimenez', 'male', '1004827465', '654654', 'nieto2013jimenez@gmail.com', 'PRIMERO', 'ESTUDIANTE REGULAR ( $1.000.000)', '23598329', '2024-04-07-11-00-06__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07-11-00-06__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07 11:00:06', '1'),
(9, 'Andres Felipe', 'Nieto Jimenez', 'male', '1004654654', '654654', 'nieto2013jimenez@gmail.com', 'PRIMERO', 'ESTUDIANTE REGULAR ( $1.000.000)', '23598329', '2024-04-07-11-07-17__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07-11-07-17__wallpaperflare.com_wallpaper (2).jpg', '2024-04-07 11:07:17', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `school_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `test` varchar(100) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `date` datetime NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 1,
  `editable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tests`
--

INSERT INTO `tests` (`id`, `test_id`, `class_id`, `school_id`, `user_id`, `test`, `description`, `date`, `disabled`, `editable`) VALUES
(1, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'xrP2mcCVRukT3OsZaSQBddZB0D3xstpAoN0EznlTbJgTcLGBoLRRxjM7usEo', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'eathorne.banda', 'my first test', 'a description for my first test', '2021-09-11 20:59:35', 1, 0),
(4, 'PUGkgycdsNujSXwZZ7vUuIxCsSCAzgvR8D0R8UfzfMcG1yTFoFlSVOaBZWKv', 'xrP2mcCVRukT3OsZaSQBddZB0D3xstpAoN0EznlTbJgTcLGBoLRRxjM7usEo', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'eathorne.banda', 'a second test', 'description for a second test just to see what happens', '2021-09-25 19:49:10', 0, 0),
(5, 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 'TwgTVOe0x9xC7hX9K2M8EVa8dwFR5O9mvC6gOhSvcVz3C9gJ3CKndyKQXmmh', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'vibe.peters', 'End of term grade 7', 'this is the end of term test for all grade 7s', '2021-10-25 11:16:47', 0, 0),
(6, 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 'TwgTVOe0x9xC7hX9K2M8EVa8dwFR5O9mvC6gOhSvcVz3C9gJ3CKndyKQXmmh', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'vibe.peters', 'Math test', 'grade 7 test in math', '2021-11-02 20:07:32', 0, 0),
(7, 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 'wOkGTBbzBDEnswCI7jpzoWf7alU2bNPHmVXRSXCZwcjBTDHa1QnAMIFxjxjV', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'man.human', 'end of 2021 test', 'some test description', '2021-11-22 11:25:14', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_questions`
--

CREATE TABLE `test_questions` (
  `id` int(11) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `question` text NOT NULL,
  `comment` varchar(1024) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `question_type` varchar(10) NOT NULL,
  `correct_answer` text DEFAULT NULL,
  `choices` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `user_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `test_questions`
--

INSERT INTO `test_questions` (`id`, `test_id`, `question`, `comment`, `image`, `question_type`, `correct_answer`, `choices`, `date`, `user_id`) VALUES
(1, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'what is the process by which plants make energy from sunlight', '', NULL, 'subjective', NULL, NULL, '2021-09-16 19:12:39', 'eathorne.banda'),
(2, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'which year did Zambia get independence?', '', NULL, 'subjective', NULL, NULL, '2021-09-16 19:13:16', 'eathorne.banda'),
(4, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'here is another question with a comment', 'this question is worth 1 point', NULL, 'subjective', NULL, NULL, '2021-09-17 20:09:59', 'eathorne.banda'),
(5, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'a new question with an image', '2 points', NULL, 'subjective', NULL, NULL, '2021-09-17 20:17:42', 'eathorne.banda'),
(6, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'a test question with an image', 'a comment', 'uploads/1632059903_puzzles-quiz-7.png', 'subjective', NULL, NULL, '2021-09-17 20:26:50', 'eathorne.banda'),
(7, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'this is an objective question, which means it has a specific answer', '2 points', NULL, 'objective', 'an answer', NULL, '2021-09-19 14:48:50', 'eathorne.banda'),
(8, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'another objective question', '', NULL, 'objective', 'home', NULL, '2021-09-19 14:53:15', 'eathorne.banda'),
(9, 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 'what are young goats called?', 'this question is worth 1 point', NULL, 'multiple', 'B', '{\"A\":\"chidren\",\"B\":\"kids\",\"C\":\"monsters\"}', '2021-09-19 18:16:14', 'eathorne.banda'),
(10, 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 'what is 2+2', '1 point', NULL, 'objective', '4', NULL, '2021-10-25 11:19:42', 'vibe.peters'),
(11, 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 'what was john\'s favorite color', '2 points', NULL, 'subjective', NULL, NULL, '2021-10-25 11:20:30', 'vibe.peters'),
(12, 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 'what is a young lion called', '', NULL, 'multiple', 'A', '{\"A\":\"Cub\",\"B\":\"Kid\",\"C\":\"Baby\"}', '2021-10-25 11:21:28', 'vibe.peters'),
(13, 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 'what is 5 x 6', '', NULL, 'multiple', 'B', '{\"A\":\"12\",\"B\":\"30\"}', '2021-11-02 20:08:51', 'vibe.peters'),
(14, 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 'what is 20 x 30', '', NULL, 'multiple', 'C', '{\"A\":\"100\",\"B\":\"300\",\"C\":\"600\"}', '2021-11-02 20:09:30', 'vibe.peters'),
(15, 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 'can chickens fly?', '', NULL, 'objective', 'no', NULL, '2021-11-02 20:10:03', 'vibe.peters'),
(16, 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 'explain the rain cycle', '', NULL, 'subjective', NULL, NULL, '2021-11-02 20:10:33', 'vibe.peters'),
(17, 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 'is the sun a star?', '', NULL, 'objective', 'yes', NULL, '2021-11-02 20:11:00', 'vibe.peters'),
(18, 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 'what do we use to light bulbs', '', NULL, 'objective', 'electricity', NULL, '2021-11-22 11:27:10', 'man.human'),
(19, 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 'what product is this?', '', 'uploads/1637576863_20.jpg', 'objective', 'omo', NULL, '2021-11-22 11:27:43', 'man.human'),
(20, 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 'how long ago was dinasaurs?', '', NULL, 'multiple', 'A', '{\"A\":\"200 million years ago\",\"B\":\"1 million years ago\",\"C\":\"2o trillion years ago\"}', '2021-11-22 11:29:29', 'man.human'),
(21, 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 'describe photosynthesis', '', 'uploads/1637577004_Waterfall_2.jpg', 'subjective', NULL, NULL, '2021-11-22 11:30:04', 'man.human');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `school_id` varchar(60) DEFAULT '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH',
  `rank` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '$2y$10$tk8F2m/X8g.Ilh432vXggeYBKF7EuyRiKpuXg1atYrup6JxyuezBm',
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `date`, `user_id`, `gender`, `school_id`, `rank`, `password`, `image`) VALUES
(1, 'Juan ', 'Mahecha', 'juanjomahecha@gmail.com', '2024-04-08 19:08:58', 'eathorne.banda', 'male', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'super_admin', '$2y$10$DfpqgNj.g4qKLJCVs9CC5esat5K0jMF49cx6wt4h0B8ZBzw6Ocrci', 'uploads/cardinal_1585485603.jpg'),
(2, 'Mary', 'Phiri', 'maryphiri@yahoo.com', '2021-08-10 19:49:36', 'mary.phiri', 'female', '', 'super_admin', '$2y$10$QpP3dlDXgmxxv.WdhB1BseUk77iwCHZhu3CcH/RfdcCiHWr3uQmAy', ''),
(5, 'Vibe', 'Peters', 'vibe@yahoo.com', '2021-08-18 15:03:07', 'vibe.peters', 'male', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'lecturer', '$2y$10$VzZvMzHH/fIC.MtC0OZxcuYUkTqvA2/PPy42OGSgZt/aDNFmp/rUK', ''),
(8, 'Jane', 'Mandawa', 'jane@yahoo.com', '2021-08-18 16:07:00', 'jane.mandawa', 'female', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'student', '$2y$10$deWPI47s4OfH5c/b/cVqeOP3cGT2SQf6G7Vj1VBD6dRId6Lf44fjy', ''),
(9, 'Guy', 'Dude', 'guy@yahoo.com', '2021-08-21 18:26:48', 'guy.dude', 'male', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'student', '$2y$10$DfpqgNj.g4qKLJCVs9CC5esat5K0jMF49cx6wt4h0B8ZBzw6Ocrci', ''),
(11, 'Andres', 'Nieto', 'andresnieto@gmail.com', '2024-04-08 11:13:43', 'carol.jones', 'male', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'admin', '$2y$10$OurQGUPBbsE0pU26VXqQ.eDcWQlLTfk0wY7c1mKaGJBSqMhoMS8Wu', 'uploads/1712806052_Anieto.jpeg'),
(12, 'Harold', 'Rivera', 'haroldrivera@gmail.com', '2024-04-08 11:14:40', 'man.human', 'male', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'lecturer', '$2y$10$YbnkeA6TiBHr2Z6iHHXCEOgki/6ONW1O/Bb3FpA1cSUW2vQeQfB.u', 'uploads/1712806026_Harold.jpeg'),
(13, 'Andres', 'Mosquera', 'andresmosquera@gmail.com', '2024-04-08 11:23:42', 'student.banda', 'male', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'student', '$2y$10$TYWC7aKoWyydXSG4EgA8retIIHXuZk1c1x9DwKazESKimK00mKBsG', 'uploads/1712806274_Mosquera.png'),
(14, 'Santiago', 'Andrade', 'santiagoandrade@gmail.com', '2024-04-08 11:24:13', 'female.banda', 'male', 'fOSajPRUvctvF1lqBXEkVfGtX3FKdjGS5DEoRRThJQc5XcM51u4TZV3Eo2br', 'student', '$2y$10$vLxIqkPkmkHv39mMZ4oSMOtfXM8IBrfYYQSOAlH0nE9gz5sTkilb2', 'uploads/1712806113_Santiago.png'),
(15, 'Carlos', 'Nieto', 'canieto@uniempresarial.edu.co', '2024-04-07 10:02:58', 'Carlos Nieto', 'studen', '1', '', 'password$!', ''),
(16, 'Carlos', 'Nieto', 'canieto@uniempresarial.edu.co', '2024-04-07 10:05:39', 'Carlos.Nieto', 'male', '1', 'student', 'password$!', ''),
(17, 'Carlos', 'Nieto', 'canieto@uniempresarial.edu.co', '2024-04-07 10:14:52', 'Carlos.Nieto', 'male', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'student', '$2y$10$tk8F2m/X8g.Ilh432vXggeYBKF7EuyRiKpuXg1atYrup6JxyuezBm', ''),
(18, 'Carlos', 'Nieto', 'canieto@uniempresarial.edu.co', '2024-04-07 10:23:42', 'Carlos.Nieto', 'male', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'student', '$2y$10$tk8F2m/X8g.Ilh432vXggeYBKF7EuyRiKpuXg1atYrup6JxyuezBm', ''),
(19, 'Andres Felipe', 'Nieto Jimenez', 'nieto2013jimenez@gmail.com', '2024-04-07 10:26:12', 'Andres Felipe.Nieto Jimenez', 'male', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'student', '$2y$10$tk8F2m/X8g.Ilh432vXggeYBKF7EuyRiKpuXg1atYrup6JxyuezBm', ''),
(20, 'Andres Felipe', 'Nieto Jimenez', 'nieto2013jimenez@gmail.com', '2024-04-07 11:00:06', 'Andres Felipe.Nieto Jimenez', 'male', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'student', '$2y$10$tk8F2m/X8g.Ilh432vXggeYBKF7EuyRiKpuXg1atYrup6JxyuezBm', ''),
(21, 'Andres Felipe', 'Nieto Jimenez', 'nieto2013jimenez@gmail.com', '2024-04-07 11:07:17', 'Andres Felipe.Nieto Jimenez', 'male', '0PbzcOAALCLUytlGxNog9R3ZaG5rpvjeleQ3UHSWE81m00vLyqNGBEgK4waH', 'student', '$2y$10$tk8F2m/X8g.Ilh432vXggeYBKF7EuyRiKpuXg1atYrup6JxyuezBm', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answered_tests`
--
ALTER TABLE `answered_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `submitted` (`submitted`),
  ADD KEY `marked` (`marked`),
  ADD KEY `marked_by` (`marked_by`),
  ADD KEY `date` (`date`),
  ADD KEY `score` (`score`);

--
-- Indices de la tabla `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `date` (`date`),
  ADD KEY `answer_mark` (`answer_mark`);

--
-- Indices de la tabla `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class` (`class`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `date` (`date`),
  ADD KEY `class_id` (`class_id`);

--
-- Indices de la tabla `class_lecturers`
--
ALTER TABLE `class_lecturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `date` (`date`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indices de la tabla `class_students`
--
ALTER TABLE `class_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `date` (`date`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indices de la tabla `class_tests`
--
ALTER TABLE `class_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `date` (`date`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `test` (`test`),
  ADD KEY `class_id` (`class_id`);

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school` (`school`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_url` (`user_id`);

--
-- Indices de la tabla `tb_matriculacion`
--
ALTER TABLE `tb_matriculacion`
  ADD PRIMARY KEY (`id_matricula`);

--
-- Indices de la tabla `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test` (`test`),
  ADD KEY `date` (`date`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `editable` (`editable`);

--
-- Indices de la tabla `test_questions`
--
ALTER TABLE `test_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `test_type` (`question_type`),
  ADD KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `gender` (`gender`),
  ADD KEY `rank` (`rank`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answered_tests`
--
ALTER TABLE `answered_tests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `class_lecturers`
--
ALTER TABLE `class_lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `class_tests`
--
ALTER TABLE `class_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_matriculacion`
--
ALTER TABLE `tb_matriculacion`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `test_questions`
--
ALTER TABLE `test_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
