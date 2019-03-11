-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-02-2019 a las 20:02:34
-- Versión del servidor: 5.6.13
-- Versión de PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `c1450676_demo`
--
CREATE DATABASE IF NOT EXISTS `c1450676_demo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `c1450676_demo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigopostal`
--

CREATE TABLE IF NOT EXISTS `codigopostal` (
  `codigo_postal` varchar(6) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `deleg_municipio` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `estatus` int(1) NOT NULL,
  PRIMARY KEY (`codigo_postal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `codigopostal`
--

INSERT INTO `codigopostal` (`codigo_postal`, `direccion`, `colonia`, `deleg_municipio`, `ciudad`, `estado`, `pais`, `estatus`) VALUES
('4000', '', '', 'otro', 'otro', 'otr', '', 1),
('4001', '', 'uno', 'tres', 'dos', 'cuatro', '', 1),
('6300', '', '', 'mexico', 'gustavo baz', 'mexico', '', 1),
('6400', '', '', 'caracas', 'Puerto 4', 'Monterrey', '', 0),
('6900', '', 'Nonoalco Tlatelolco', 'Chuahutemoc', 'Mexico', 'Mexico', '', 1),
('7200', '', 'El cristo', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 1),
('7800', '', 'b', 'b', 'b', 'b', '', 1),
('7900', '', 'u', 'u', 'u', 'u', '', 1),
('9600', '', '', 'Mexico', 'Mexico', 'Mx', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consignatario`
--

CREATE TABLE IF NOT EXISTS `consignatario` (
  `dest_sq_id` int(8) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `codigo_postal` varchar(6) NOT NULL,
  `deleg_municipio` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `rfc` varchar(15) NOT NULL,
  PRIMARY KEY (`dest_sq_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=298 ;

--
-- Volcado de datos para la tabla `consignatario`
--

INSERT INTO `consignatario` (`dest_sq_id`, `nombre`, `apellido_paterno`, `apellido_materno`, `direccion`, `codigo_postal`, `deleg_municipio`, `ciudad`, `estado`, `pais`, `email`, `telefono`, `rfc`) VALUES
(1, 'Juan', 'Torres', '', '', '6900', '', '', '', '', 'k', 'k', ''),
(115, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(116, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(117, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(118, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(119, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(120, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(121, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(122, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(123, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(124, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(125, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(126, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(127, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(128, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(129, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(130, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(131, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(132, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(133, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(134, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(135, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(136, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(137, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(138, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(139, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(140, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(141, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(142, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(143, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(144, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(145, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(146, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(147, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(148, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(149, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(150, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(151, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(152, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(153, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(154, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(155, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(156, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(157, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(158, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(159, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(160, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(161, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(162, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(163, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(164, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(165, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(166, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(167, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(168, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(169, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(170, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(171, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(172, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(173, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(174, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(175, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(176, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(177, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(178, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(179, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(180, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(181, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(182, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(183, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(184, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(185, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(186, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(187, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(188, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(189, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(190, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(191, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(192, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(193, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(194, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(195, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(196, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(197, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(198, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(199, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(200, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(201, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(202, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(203, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(204, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(205, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(206, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(207, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(208, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(209, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(210, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(211, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(212, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(213, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(214, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(215, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(216, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(217, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(218, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(219, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(220, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(221, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(222, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(223, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(224, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(225, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(226, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(227, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(228, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(229, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(230, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(231, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(232, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(233, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(234, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(235, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(236, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(237, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(238, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(239, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(240, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(241, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(242, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(243, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(244, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(245, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(246, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(247, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(248, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(249, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(250, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(251, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(252, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(253, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(254, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(255, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(256, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(257, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(258, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(259, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(260, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(261, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(262, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(263, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(264, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(265, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(266, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(267, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(268, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(269, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(270, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(271, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(272, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(273, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(274, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(275, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(276, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(277, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(278, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(279, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(280, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(281, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(282, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(283, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(284, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(285, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(286, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(287, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(288, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(289, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(290, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(291, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(292, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(293, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(294, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(295, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(296, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(297, 'Juan', 'Otro', 'Torres', 'Flores Magon torre 15, int 4', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '555433322', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE IF NOT EXISTS `envio` (
  `guia_sq_id` varchar(12) NOT NULL,
  `remi_sq_id` int(8) NOT NULL,
  `dest_sql_id` int(8) NOT NULL,
  `tipo_envio_id` int(3) NOT NULL,
  `tipo_servicio_id` int(3) NOT NULL,
  `peso` decimal(8,2) NOT NULL,
  `alto` decimal(8,2) NOT NULL,
  `ancho` decimal(8,2) NOT NULL,
  `largo` decimal(8,2) NOT NULL,
  PRIMARY KEY (`guia_sq_id`),
  KEY `remi_sq_id` (`remi_sq_id`),
  KEY `dest_sql_id` (`dest_sql_id`),
  KEY `tipo_envio_id` (`tipo_envio_id`),
  KEY `tipo_servicio_id` (`tipo_servicio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `envio`
--

INSERT INTO `envio` (`guia_sq_id`, `remi_sq_id`, `dest_sql_id`, `tipo_envio_id`, `tipo_servicio_id`, `peso`, `alto`, `ancho`, `largo`) VALUES
('100000001', 1, 1, 1, 1, '1.10', '0.10', '0.10', '0.10'),
('100000002', 122, 115, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000003', 123, 116, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000004', 124, 117, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000005', 125, 118, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000006', 126, 119, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000007', 127, 120, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000008', 128, 121, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000009', 129, 122, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000010', 130, 123, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000011', 131, 124, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000012', 132, 125, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000013', 133, 126, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000014', 134, 127, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000015', 135, 128, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000016', 136, 129, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000017', 137, 130, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000018', 138, 131, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000019', 139, 132, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000020', 140, 133, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000021', 141, 134, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000022', 142, 135, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000023', 143, 136, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000024', 144, 137, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000025', 145, 138, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000026', 146, 139, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000027', 147, 140, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000028', 148, 141, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000029', 149, 142, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000030', 150, 143, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000031', 151, 144, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000032', 152, 145, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000033', 153, 146, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000034', 154, 147, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000035', 155, 148, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000036', 156, 149, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000037', 157, 150, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000038', 158, 151, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000039', 159, 152, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000040', 160, 153, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000041', 161, 154, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000042', 162, 155, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000043', 163, 156, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000044', 164, 157, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000045', 165, 158, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000046', 166, 159, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000047', 167, 160, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000048', 168, 161, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000049', 169, 162, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000050', 170, 163, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000051', 171, 164, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000052', 172, 165, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000053', 173, 166, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000054', 174, 167, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000055', 175, 168, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000056', 176, 169, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000057', 177, 170, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000058', 178, 171, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000059', 179, 172, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000060', 180, 173, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000061', 181, 174, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000062', 182, 175, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000063', 183, 176, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000064', 184, 177, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000065', 185, 178, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000066', 186, 179, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000067', 187, 180, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000068', 188, 181, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000069', 189, 182, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000070', 190, 183, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000071', 191, 184, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000072', 192, 185, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000073', 193, 186, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000074', 194, 187, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000075', 195, 188, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000076', 196, 189, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000077', 197, 190, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000078', 198, 191, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000079', 199, 192, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000080', 200, 193, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000081', 201, 194, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000082', 202, 195, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000083', 203, 196, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000084', 204, 197, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000085', 205, 198, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000086', 206, 199, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000087', 207, 200, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000088', 208, 201, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000089', 209, 202, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000090', 210, 203, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000091', 211, 204, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000092', 212, 205, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000093', 213, 206, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000094', 214, 207, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000095', 215, 208, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000096', 216, 209, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000097', 217, 210, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000098', 218, 211, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000099', 219, 212, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000100', 220, 213, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000101', 221, 214, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000102', 222, 215, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000103', 223, 216, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000104', 224, 217, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000105', 225, 218, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000106', 226, 219, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000107', 227, 220, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000108', 228, 221, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000109', 229, 222, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000110', 230, 223, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000111', 231, 224, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000112', 232, 225, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000113', 233, 226, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000114', 234, 227, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000115', 235, 228, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000116', 236, 229, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000117', 237, 230, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000118', 238, 231, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000119', 239, 232, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000120', 240, 233, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000121', 241, 234, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000122', 242, 235, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000123', 243, 236, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000124', 244, 237, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000125', 245, 238, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000126', 246, 239, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000127', 247, 240, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000128', 248, 241, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000129', 249, 242, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000130', 250, 243, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000131', 251, 244, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000132', 252, 245, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000133', 253, 246, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000134', 254, 247, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000135', 255, 248, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000136', 256, 249, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000137', 257, 250, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000138', 258, 251, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000139', 259, 252, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000140', 260, 253, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000141', 261, 254, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000142', 262, 255, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000143', 263, 256, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000144', 264, 257, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000145', 265, 258, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000146', 266, 259, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000147', 267, 260, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000148', 268, 261, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000149', 269, 262, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000150', 270, 263, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000151', 271, 264, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000152', 272, 265, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000153', 273, 266, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000154', 274, 267, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000155', 275, 268, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000156', 276, 269, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000157', 277, 270, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000158', 278, 271, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000159', 279, 272, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000160', 280, 273, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000161', 281, 274, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000162', 282, 275, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000163', 283, 276, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000164', 284, 277, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000165', 285, 278, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000166', 286, 279, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000167', 287, 280, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000168', 288, 281, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000169', 289, 282, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000170', 290, 283, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000171', 291, 284, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000172', 292, 285, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000173', 293, 286, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000174', 294, 287, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000175', 295, 288, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000176', 296, 289, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000177', 297, 290, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000178', 298, 291, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000179', 299, 292, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000180', 300, 293, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000181', 301, 294, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000182', 302, 295, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000183', 303, 296, 1, 1, '1.00', '0.00', '0.00', '0.00'),
('100000184', 304, 297, 1, 1, '1.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepcion_envio`
--

CREATE TABLE IF NOT EXISTS `recepcion_envio` (
  `rec_envio_sq_id` int(8) NOT NULL AUTO_INCREMENT,
  `guia_sq_id` varchar(12) NOT NULL,
  `persona_recibe` varchar(100) NOT NULL,
  `identificacion` varchar(50) NOT NULL,
  PRIMARY KEY (`rec_envio_sq_id`),
  KEY `guia_sq_id` (`guia_sq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitente`
--

CREATE TABLE IF NOT EXISTS `remitente` (
  `remi_sq_id` int(8) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `codigo_postal` varchar(6) NOT NULL,
  `deleg_municipio` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `rfc` varchar(15) NOT NULL,
  PRIMARY KEY (`remi_sq_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=305 ;

--
-- Volcado de datos para la tabla `remitente`
--

INSERT INTO `remitente` (`remi_sq_id`, `nombre`, `apellido_paterno`, `apellido_materno`, `direccion`, `codigo_postal`, `deleg_municipio`, `ciudad`, `estado`, `pais`, `email`, `telefono`, `rfc`) VALUES
(1, 'kato', 'puebla', 'mexico', 'calle s/n', '60004', 'cuahutemoc', 'mexico', 'mexico', 'mexico', 'katopuebla@gmail.com', '233455554', 'BAVA75'),
(121, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(122, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(123, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(124, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(125, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(126, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(127, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(128, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(129, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(130, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(131, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(132, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(133, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(134, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(135, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(136, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(137, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(138, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(139, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(140, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(141, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(142, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(143, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(144, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(145, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(146, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(147, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(148, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(149, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(150, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(151, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(152, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(153, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(154, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(155, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(156, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(157, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(158, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(159, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(160, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(161, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(162, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(163, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(164, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(165, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(166, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(167, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(168, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(169, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(170, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(171, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(172, 'Juan', '', '', 'norte y sur', '6900', 'Chuahutemoc', 'Mexico', 'Mexico', '', 'juan@', '55525544', ''),
(173, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(174, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(175, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(176, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(177, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(178, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(179, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(180, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(181, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(182, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(183, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(184, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(185, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(186, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(187, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(188, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(189, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(190, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(191, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(192, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(193, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(194, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(195, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(196, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(197, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(198, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(199, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(200, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(201, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(202, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(203, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(204, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(205, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(206, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(207, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(208, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(209, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(210, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(211, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(212, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(213, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(214, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(215, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(216, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(217, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(218, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(219, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(220, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(221, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(222, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(223, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(224, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(225, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(226, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(227, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(228, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(229, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(230, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(231, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(232, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(233, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(234, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(235, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(236, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(237, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(238, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(239, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(240, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(241, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(242, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(243, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(244, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(245, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(246, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(247, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(248, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(249, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(250, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(251, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(252, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(253, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(254, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(255, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(256, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(257, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(258, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(259, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(260, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(261, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(262, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(263, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(264, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(265, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(266, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(267, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(268, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(269, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(270, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(271, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(272, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(273, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(274, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(275, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(276, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(277, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(278, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(279, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(280, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(281, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(282, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(283, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(284, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(285, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(286, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(287, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(288, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(289, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(290, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(291, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(292, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(293, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(294, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(295, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(296, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(297, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(298, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(299, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(300, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(301, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(302, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(303, 'kato', '', '', 'sin', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2225555', ''),
(304, 'Kato', 'Mexico', 'Puebla', '34 sur # 2378', '7200', 'Puebla', 'Puebla', 'Puebla', 'Mexico', 'katopuebla@', '2222345', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_envio`
--

CREATE TABLE IF NOT EXISTS `tipo_envio` (
  `tipo_envio_id` int(3) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  PRIMARY KEY (`tipo_envio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_envio`
--

INSERT INTO `tipo_envio` (`tipo_envio_id`, `descripcion`) VALUES
(1, 'sobre'),
(2, 'Paquete');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

CREATE TABLE IF NOT EXISTS `tipo_servicio` (
  `tipo_servicio_id` int(3) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  PRIMARY KEY (`tipo_servicio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_servicio`
--

INSERT INTO `tipo_servicio` (`tipo_servicio_id`, `descripcion`) VALUES
(1, 'Mismo dia'),
(2, 'Dia Siguiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `system` varchar(50) NOT NULL,
  `estatus` int(1) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userid`, `name`, `password`, `system`, `estatus`) VALUES
('admin', 'admin', 'noesadmin', 'delivery', 0),
('borrar', 'mueve', 'borrame123', 'delivery', 0),
('gerardo', 'Gerardo Navarrete', 'gerardo123', 'delivery', 1),
('kato', 'Antonio Baez', 'kato123', 'delivery', 1),
('marco', 'Marco Antonio', 'marco123', 'delivery', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `envio`
--
ALTER TABLE `envio`
  ADD CONSTRAINT `envio_ibfk_1` FOREIGN KEY (`remi_sq_id`) REFERENCES `remitente` (`remi_sq_id`),
  ADD CONSTRAINT `envio_ibfk_2` FOREIGN KEY (`dest_sql_id`) REFERENCES `consignatario` (`dest_sq_id`),
  ADD CONSTRAINT `envio_ibfk_3` FOREIGN KEY (`tipo_envio_id`) REFERENCES `tipo_envio` (`tipo_envio_id`),
  ADD CONSTRAINT `envio_ibfk_4` FOREIGN KEY (`tipo_servicio_id`) REFERENCES `tipo_servicio` (`tipo_servicio_id`);

--
-- Filtros para la tabla `recepcion_envio`
--
ALTER TABLE `recepcion_envio`
  ADD CONSTRAINT `recepcion_envio_ibfk_1` FOREIGN KEY (`guia_sq_id`) REFERENCES `envio` (`guia_sq_id`);
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
