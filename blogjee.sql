-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2024 a las 22:32:00
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blogjee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `fecha` date NOT NULL,
  `autor` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `palabrasclave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`Identificador`, `titulo`, `contenido`, `fecha`, `autor`, `imagen`, `categoria`, `palabrasclave`) VALUES
(1, 'Java server pages ', 'Mediante esta tecnología vamos a poder crear páginas web que fusionarán la estructura de html con el contenido dinámico generado por Java. utilizaremos esta tecnología cuando queramos introducir un poco de Java dentro de una página en html para convertirla en dinámica \r\n', '2024-01-12', 'Jose Vicente Carratalá', 'jsp.png', 'Programación', 'java,jee,jsp'),
(2, 'Servlets ', 'Mediante esta otra tecnología podemos crear páginas web en las cuales la parte principal sea Java y en una menor parte el controlador genera algo de contenido dinámico HTML. cuando este se dé el caso, servlets será la herramienta correcta para utilizar \r\n', '2024-01-13', 'Jose Vicente Carratalá', 'servlets.png', 'Programación', 'servlet, jsp, jee, java');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
