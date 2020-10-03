-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2020 a las 00:19:55
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conreshot`
--

CREATE TABLE `conreshot` (
  `codReserva` int(11) DEFAULT NULL,
  `codHotel` int(11) DEFAULT NULL,
  `fechaDesde` varchar(50) DEFAULT NULL,
  `fechaHasta` varchar(50) DEFAULT NULL,
  `numPlazas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conreshot`
--

INSERT INTO `conreshot` (`codReserva`, `codHotel`, `fechaDesde`, `fechaHasta`, `numPlazas`) VALUES
(18, 9, '6/3/2020', '9/3/2020', 6),
(17, 9, '1/3/2020', '9/3/2020', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conresvue`
--

CREATE TABLE `conresvue` (
  `codReserva` int(11) NOT NULL,
  `nroVuelo` int(11) NOT NULL,
  `nroAsientos` int(11) NOT NULL,
  `clase` varchar(51) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conresvue`
--

INSERT INTO `conresvue` (`codReserva`, `nroVuelo`, `nroAsientos`, `clase`) VALUES
(2, 87, 4, 'Primera'),
(3, 87, 2, 'Turista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `codHotel` int(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `numPlazas` int(11) DEFAULT NULL,
  `tipoPension` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`id`, `codHotel`, `direccion`, `ciudad`, `telefono`, `numPlazas`, `tipoPension`) VALUES
(19, 1, 'galvan 2345', 'BsAs', '4556677', 60, 'M'),
(20, 2, 'estomba 2132', 'maadri', '42355', 43, 'M'),
(21, 23, 'teodoro gracia', 'pehuajo', '34455633', 70, 'C'),
(22, 77, 'Alvarez Thomas 540', 'Colegiales', '45566778', 70, 'C'),
(23, 61, 'driectorio 234', 'bs as', '4555443322', 110, 'C'),
(24, 11, 'Av dorrego 1500', 'Villa Crespo', '45667788', 80, 'C'),
(25, 9, 'figueroa alcorta 7771', 'Palermo', '56677000', 75, 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservahotel`
--

CREATE TABLE `reservahotel` (
  `codHotel` int(11) DEFAULT NULL,
  `fechaDesde` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `fechaHasta` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `numPlazas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservahotel`
--

INSERT INTO `reservahotel` (`codHotel`, `fechaDesde`, `fechaHasta`, `numPlazas`) VALUES
(9, '6/3/2020', '9/3/2020', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservavuelo`
--

CREATE TABLE `reservavuelo` (
  `nroVuelo` int(11) NOT NULL,
  `nroAsientosP` int(11) NOT NULL,
  `nroAsientosT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservavuelo`
--

INSERT INTO `reservavuelo` (`nroVuelo`, `nroAsientosP`, `nroAsientosT`) VALUES
(87, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL,
  `codSucursal` int(11) DEFAULT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `codSucursal`, `direccion`, `telefono`) VALUES
(1, 2543, 'cabildo 1427', '45546922'),
(3, 56, 'estomba 3344', '4566722'),
(4, 33, 'Av Cabildo 3300', '3666778'),
(5, 77, 'Av de los pozos 776', '4556-9876'),
(6, 98, 'Tamborini 876', '4356-8123'),
(7, 65, 'Pico 854', '4889-2612');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `tipo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `email`, `password`, `tipo`) VALUES
(1, 'prueba', 'prueba@gmail.com', 'adasd', 'A'),
(2, 'mirko', 'mirko@gmail.com', 'mirko', 'A'),
(4, 'pepe', 'pepe@gmail.com', 'pepe', 'C'),
(5, 'mariano', 'mariano@gmail.com', 'mariano', 'A'),
(6, 'messi', 'messi@gmail.com', 'messi10', 'C'),
(15, 'rebeca', 'rebeca@gmail.com', 'rebeca', 'V'),
(16, 'manco', 'manco@gmail.com', 'manco', 'C'),
(17, 'maria', 'maria@gmail.com', 'maria', 'V'),
(18, 'monchito', 'moncho@gmail.com', 'monchito', 'V'),
(19, 'chespirito', 'chavodel8@gmail.com', 'semechispoteo', 'C'),
(35, 'alejandro', 'ale@gmail.com', 'wacho', 'V'),
(36, 'seba', 'seba@gmail.com', 'trishoot', 'V'),
(37, 'Pinocho', 'Pinocho@gmail.com', 'mentira', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `id` int(11) NOT NULL,
  `nroVuelo` int(11) DEFAULT NULL,
  `origen` varchar(50) DEFAULT NULL,
  `destino` varchar(50) DEFAULT NULL,
  `asientosPrim` int(11) DEFAULT NULL,
  `asientosTurista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id`, `nroVuelo`, `origen`, `destino`, `asientosPrim`, `asientosTurista`) VALUES
(2, 54, 'marvella', 'BsAs', 45, 30),
(3, 89, 'Isla De Pascua', 'Madrid', 38, 29),
(4, 62, 'Triangulo de bermudas', 'Canada', 47, 36),
(5, 87, 'Mexico', 'Australia', 40, 80),
(6, 55, 'Alemania', 'Francia', 100, 110),
(7, 13, 'Italia', 'EspaÃ±a', 44, 79),
(8, 33, 'USA', 'Argentina', 39, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codHotel` (`codHotel`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
