-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jan-2021 às 20:47
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `devbarber`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberavailability`
--

CREATE TABLE `barberavailability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `hours` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberavailability`
--

INSERT INTO `barberavailability` (`id`, `id_barber`, `weekday`, `hours`) VALUES
(1, 12, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(2, 12, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(3, 12, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(4, 12, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(5, 13, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(6, 13, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(7, 13, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(8, 13, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(9, 14, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(10, 14, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(11, 14, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(12, 14, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(13, 15, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(14, 15, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(15, 15, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(16, 15, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(17, 16, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(18, 16, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(19, 16, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(20, 16, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(21, 17, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(22, 17, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(23, 17, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(24, 17, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(25, 18, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(26, 18, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(27, 18, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(28, 18, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(29, 19, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(30, 19, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(31, 19, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(32, 19, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(33, 20, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(34, 20, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(35, 20, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(36, 20, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(37, 21, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(38, 21, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(39, 21, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(40, 21, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(41, 22, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(42, 22, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(43, 22, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(44, 22, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(45, 23, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(46, 23, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(47, 23, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(48, 23, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(49, 24, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(50, 24, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(51, 24, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(52, 24, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(53, 25, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(54, 25, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(55, 25, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(56, 25, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(57, 26, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(58, 26, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(59, 26, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(60, 26, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberphotos`
--

CREATE TABLE `barberphotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberphotos`
--

INSERT INTO `barberphotos` (`id`, `id_barber`, `url`) VALUES
(1, 8, '3.png'),
(2, 8, '5.png'),
(3, 8, '5.png'),
(4, 8, '4.png'),
(5, 9, '4.png'),
(6, 9, '3.png'),
(7, 9, '3.png'),
(8, 9, '2.png'),
(9, 10, '5.png'),
(10, 10, '3.png'),
(11, 10, '3.png'),
(12, 10, '4.png'),
(13, 11, '3.png'),
(14, 11, '2.png'),
(15, 11, '2.png'),
(16, 11, '1.png'),
(17, 12, '5.png'),
(18, 12, '3.png'),
(19, 12, '3.png'),
(20, 12, '2.png'),
(21, 13, '3.png'),
(22, 13, '4.png'),
(23, 13, '4.png'),
(24, 13, '3.png'),
(25, 14, '5.png'),
(26, 14, '4.png'),
(27, 14, '2.png'),
(28, 14, '4.png'),
(29, 15, '5.png'),
(30, 15, '3.png'),
(31, 15, '1.png'),
(32, 15, '1.png'),
(33, 16, '4.png'),
(34, 16, '2.png'),
(35, 16, '4.png'),
(36, 16, '4.png'),
(37, 17, '2.png'),
(38, 17, '5.png'),
(39, 17, '1.png'),
(40, 17, '2.png'),
(41, 18, '5.png'),
(42, 18, '4.png'),
(43, 18, '5.png'),
(44, 18, '5.png'),
(45, 19, '1.png'),
(46, 19, '5.png'),
(47, 19, '5.png'),
(48, 19, '3.png'),
(49, 20, '4.png'),
(50, 20, '3.png'),
(51, 20, '1.png'),
(52, 20, '4.png'),
(53, 21, '3.png'),
(54, 21, '5.png'),
(55, 21, '2.png'),
(56, 21, '4.png'),
(57, 22, '2.png'),
(58, 22, '4.png'),
(59, 22, '1.png'),
(60, 22, '3.png'),
(61, 23, '1.png'),
(62, 23, '2.png'),
(63, 23, '1.png'),
(64, 23, '2.png'),
(65, 24, '1.png'),
(66, 24, '1.png'),
(67, 24, '1.png'),
(68, 24, '5.png'),
(69, 25, '2.png'),
(70, 25, '5.png'),
(71, 25, '3.png'),
(72, 25, '5.png'),
(73, 26, '2.png'),
(74, 26, '2.png'),
(75, 26, '4.png'),
(76, 26, '2.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberreviews`
--

CREATE TABLE `barberreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `rate` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `barbers`
--

CREATE TABLE `barbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `stars` double(8,2) NOT NULL DEFAULT 0.00,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barbers`
--

INSERT INTO `barbers` (`id`, `name`, `avatar`, `stars`, `longitude`, `latitude`) VALUES
(5, 'aislan', 'default.png', 9.70, '46.3256', '23.3721'),
(6, 'tais', 'default.png', 8.60, '-38.5124', '-12.9704'),
(7, 'nana', 'default.png', 9.00, '34.5500', '08.0403'),
(8, 'Diego Gomes', '2.png', 3.70, '-46.6182795', '-23.5930907'),
(9, 'Luan Jesus', '3.png', 4.30, '-46.6282795', '-23.5630907'),
(10, 'Móises Carlos', '3.png', 4.50, '-46.6482795', '-23.5130907'),
(11, 'Edvan Souza', '1.png', 4.80, '-46.6282795', '-23.5330907'),
(12, 'Cleber Miguel', '1.png', 3.40, '-46.6482795', '-23.5830907'),
(13, 'Murilo Coveiro', '4.png', 4.00, '-46.6882795', '-23.5730907'),
(14, 'Luiz Santana', '1.png', 3.20, '-46.6382795', '-23.5930907'),
(15, 'Adriano Rosário', '4.png', 4.00, '-46.6282795', '-23.5630907'),
(16, 'Diego Jesus', '4.png', 2.00, '-46.6782795', '-23.5430907'),
(17, 'Diego Pereira', '4.png', 2.90, '-46.6682795', '-23.5330907'),
(18, 'Leno Araujo', '4.png', 3.60, '-46.6082795', '-23.5330907'),
(19, 'Pablo Coveiro', '3.png', 3.20, '-46.6882795', '-23.5130907'),
(20, 'Marcos Santos', '4.png', 2.60, '-46.6482795', '-23.5330907'),
(21, 'Cleber Rosário', '3.png', 4.70, '-46.6282795', '-23.5130907'),
(22, 'Murilo Jesus', '2.png', 4.30, '-46.6782795', '-23.5030907'),
(23, 'Adriano Leal', '3.png', 2.00, '-46.6782795', '-23.5730907'),
(24, 'Cleber Coveiro', '3.png', 3.20, '-46.6382795', '-23.5830907'),
(25, 'Fernando Fiorentino', '2.png', 3.00, '-46.6582795', '-23.5830907'),
(26, 'Adriano Cezar', '4.png', 3.70, '-46.6382795', '-23.5330907');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberservices`
--

CREATE TABLE `barberservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberservices`
--

INSERT INTO `barberservices` (`id`, `id_barber`, `name`, `price`) VALUES
(1, 11, 'Corte de Sobrancelhas', 15.45),
(2, 11, 'Pintura de Pernas', 62.10),
(3, 11, 'Pintura de Unha', 39.20),
(4, 12, 'Enfeite de Sobrancelhas', 47.30),
(5, 12, 'Enfeite de Unha', 82.97),
(6, 12, 'Pintura de Unha', 41.75),
(7, 13, 'Aparação de Pernas', 16.30),
(8, 13, 'Pintura de Unha', 26.50),
(9, 13, 'Aparação de Cabelo', 8.61),
(10, 14, 'Aparação de Pernas', 51.29),
(11, 14, 'Enfeite de Pernas', 44.11),
(12, 14, 'Corte de Pernas', 61.67),
(13, 14, 'Aparação de Pernas', 62.13),
(14, 15, 'Enfeite de Unha', 85.78),
(15, 15, 'Aparação de Sobrancelhas', 53.40),
(16, 15, 'Aparação de Cabelo', 29.35),
(17, 16, 'Pintura de Cabelo', 12.90),
(18, 16, 'Enfeite de Pernas', 57.48),
(19, 16, 'Corte de Sobrancelhas', 42.16),
(20, 16, 'Enfeite de Sobrancelhas', 94.96),
(21, 16, 'Enfeite de Pernas', 65.30),
(22, 16, 'Pintura de Pernas', 23.50),
(23, 17, 'Enfeite de Unha', 61.59),
(24, 17, 'Pintura de Cabelo', 17.90),
(25, 17, 'Corte de Cabelo', 72.13),
(26, 17, 'Corte de Pernas', 65.46),
(27, 17, 'Enfeite de Pernas', 50.38),
(28, 17, 'Enfeite de Sobrancelhas', 98.71),
(29, 18, 'Corte de Pernas', 27.67),
(30, 18, 'Aparação de Sobrancelhas', 88.60),
(31, 18, 'Corte de Unha', 57.45),
(32, 18, 'Aparação de Pernas', 43.20),
(33, 18, 'Enfeite de Cabelo', 47.39),
(34, 18, 'Aparação de Cabelo', 38.38),
(35, 19, 'Corte de Pernas', 32.17),
(36, 19, 'Pintura de Sobrancelhas', 52.91),
(37, 19, 'Aparação de Sobrancelhas', 58.95),
(38, 19, 'Pintura de Cabelo', 80.62),
(39, 20, 'Aparação de Pernas', 39.43),
(40, 20, 'Aparação de Unha', 36.61),
(41, 20, 'Corte de Unha', 17.24),
(42, 21, 'Corte de Sobrancelhas', 80.90),
(43, 21, 'Aparação de Cabelo', 9.68),
(44, 21, 'Pintura de Cabelo', 80.41),
(45, 21, 'Aparação de Pernas', 53.44),
(46, 21, 'Aparação de Unha', 52.72),
(47, 22, 'Aparação de Cabelo', 35.16),
(48, 22, 'Aparação de Unha', 48.24),
(49, 22, 'Corte de Cabelo', 38.88),
(50, 23, 'Pintura de Unha', 85.30),
(51, 23, 'Aparação de Cabelo', 96.95),
(52, 23, 'Pintura de Sobrancelhas', 51.73),
(53, 23, 'Enfeite de Cabelo', 49.46),
(54, 23, 'Pintura de Pernas', 93.53),
(55, 23, 'Pintura de Unha', 25.32),
(56, 24, 'Enfeite de Pernas', 63.98),
(57, 24, 'Pintura de Cabelo', 7.99),
(58, 24, 'Enfeite de Pernas', 31.10),
(59, 24, 'Corte de Unha', 64.63),
(60, 25, 'Corte de Pernas', 60.19),
(61, 25, 'Aparação de Cabelo', 22.51),
(62, 25, 'Corte de Unha', 31.31),
(63, 26, 'Pintura de Cabelo', 3.13),
(64, 26, 'Aparação de Cabelo', 88.68),
(65, 26, 'Enfeite de Unha', 5.31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `barbertestimonials`
--

CREATE TABLE `barbertestimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barbertestimonials`
--

INSERT INTO `barbertestimonials` (`id`, `id_barber`, `name`, `rate`, `body`) VALUES
(1, 12, 'Marcos Coveiro', 3.70, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat'),
(2, 12, 'Eneldon Jesus', 2.20, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(3, 12, 'Fabio Gomes', 3.90, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat'),
(4, 13, 'Marcos Silva', 3.10, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat'),
(5, 13, 'Móises Gomes', 3.50, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(6, 13, 'Cleber Leal', 4.80, 'Nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(7, 14, 'Caio Souza', 2.20, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(8, 14, 'Cleber Leal', 4.20, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat'),
(9, 14, 'Adriano Fiorentino', 4.60, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(10, 15, 'Fabio Coveiro', 4.20, 'Nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(11, 15, 'Luan Carlos', 2.10, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(12, 15, 'Pablo Leal', 2.40, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(13, 16, 'Luiz Cezar', 3.20, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat'),
(14, 16, 'Diego Araujo', 2.20, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(15, 16, 'Edvan Araujo', 4.00, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(16, 17, 'Cleber Rosário', 3.80, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(17, 17, 'Móises Jesus', 3.80, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(18, 17, 'Adriano Pereira', 4.00, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(19, 18, 'Móises Souza', 2.70, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(20, 18, 'Caio Miguel', 2.60, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(21, 18, 'Pablo Leal', 3.10, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(22, 19, 'Murilo Cezar', 4.00, 'Nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(23, 19, 'Pablo Santana', 2.30, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(24, 19, 'Pablo Pereira', 4.50, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(25, 20, 'Caio Gomes', 2.20, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(26, 20, 'Adriano Souza', 3.80, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(27, 20, 'Adriano Coveiro', 4.50, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(28, 21, 'Edvan Santana', 3.60, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(29, 21, 'Fabio Gomes', 4.60, 'Nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(30, 21, 'Luiz Jesus', 3.00, 'Nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(31, 22, 'Luiz Silva', 2.40, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(32, 22, 'Eneldon Miguel', 3.20, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(33, 22, 'Leno Santana', 4.90, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(34, 23, 'Marcos Araujo', 3.70, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(35, 23, 'Fabio Leal', 2.40, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(36, 23, 'Luan Fiorentino', 4.00, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(37, 24, 'Cleber Carlos', 3.40, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat'),
(38, 24, 'Pablo Jesus', 4.10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(39, 24, 'Fabio Souza', 4.80, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(40, 25, 'Murilo Miguel', 3.90, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(41, 25, 'Eneldon Fiorentino', 4.20, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(42, 25, 'Luiz Gomes', 4.40, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(43, 26, 'Eneldon Santos', 3.20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
(44, 26, 'Eneldon Santana', 3.30, 'Incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.'),
(45, 26, 'Fernando Gomes', 2.50, 'Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_01_21_181005_create_all_tables', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `userappointments`
--

CREATE TABLE `userappointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL,
  `ap_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `userfavorites`
--

CREATE TABLE `userfavorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`) VALUES
(3, 'JEFERSON CHAGAS SILVA', 'default.png', 'jeferson@email.com', '$2y$10$7C.OVlCaM6B7Dbg84nBtAuXLCrCnmOxDDLBVWuKRvqHnSZ4tsIHia');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `barberavailability`
--
ALTER TABLE `barberavailability`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberphotos`
--
ALTER TABLE `barberphotos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberreviews`
--
ALTER TABLE `barberreviews`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barbers`
--
ALTER TABLE `barbers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberservices`
--
ALTER TABLE `barberservices`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barbertestimonials`
--
ALTER TABLE `barbertestimonials`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `userappointments`
--
ALTER TABLE `userappointments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `userfavorites`
--
ALTER TABLE `userfavorites`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `barberavailability`
--
ALTER TABLE `barberavailability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `barberphotos`
--
ALTER TABLE `barberphotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `barberreviews`
--
ALTER TABLE `barberreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `barbers`
--
ALTER TABLE `barbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `barberservices`
--
ALTER TABLE `barberservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `barbertestimonials`
--
ALTER TABLE `barbertestimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `userappointments`
--
ALTER TABLE `userappointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `userfavorites`
--
ALTER TABLE `userfavorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
