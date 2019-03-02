-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2018 a las 07:13:39
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdviajes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteles`
--

CREATE TABLE `hoteles` (
  `idhotel` int(15) NOT NULL,
  `hotel` varchar(45) NOT NULL,
  `fecha_entrada` varchar(45) NOT NULL,
  `fecha_salida` varchar(45) NOT NULL,
  `habitacion` int(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hoteles`
--

INSERT INTO `hoteles` (`idhotel`, `hotel`, `fecha_entrada`, `fecha_salida`, `habitacion`) VALUES
(100023, 'cielo***', '0000-00-00', '15-07-2018', 4),
(100026, 'barcelona', '2018-07-07', '2018-07-13', 6),
(100027, 'jdhs', '', '', 0),
(100028, 'dsds', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(15) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `correo`, `telefono`, `usuario`, `password`) VALUES
(32, 'julissa@gmail.com', '987654346', 'julissa', '1234'),
(33, 'mar@hotmail.com', '87654532', 'mar', '1234'),
(34, 'avenger@hotmail.com', '98765456', 'maycol', '123'),
(35, 'dias@gmail.com', '94847', 'dias', '123'),
(36, 'dias@hotmail.com', '98765456', 'ramos', '123'),
(37, 'aaxa', '123', 'maycol', '234'),
(38, 'aaxa', '123', 'maycol', '234'),
(39, '', '', 'maycol', ''),
(40, 'rr@gmail.com', '8749657489', 'rr', '123'),
(41, 'cds', '45', 'czc', '43f'),
(42, '', '', 'xzx', ''),
(43, '', '', '3ree', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

CREATE TABLE `pasajeros` (
  `BOLNRO` char(6) NOT NULL,
  `VIANRO` char(6) DEFAULT NULL,
  `Nom_pas` varchar(30) DEFAULT NULL,
  `Nro_asi` decimal(2,0) DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL,
  `pago` decimal(8,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`BOLNRO`, `VIANRO`, `Nom_pas`, `Nro_asi`, `tipo`, `pago`) VALUES
('000001', '100001', 'CLAUDIA VASQUEZ', '1', 'E', '40.0'),
('000002', '100002', 'CARLOS PAREDES', '2', 'A', '50.0'),
('000003', '100001', 'JUAN SANCHEZ', '3', 'A', '70.0'),
('000004', '100001', 'ADELA MEZA', '4', 'N', '70.0'),
('000005', '100002', 'GLORIA DELGADO', '12', 'N', '60.0'),
('000006', '100001', 'VIRNA MEJIA', '6', 'E', '70.0'),
('000007', '100001', 'JOSE LINARES', '7', 'A', '70.0'),
('000008', '100002', 'JENIFER CRUZADO', '8', 'A', '50.0'),
('000009', '100002', 'RAMON CERCADO', '9', 'A', '50.0'),
('000010', '100001', 'TERESA EGUSQUIZA', '10', 'A', '20.0'),
('000011', '100001', 'CAROLINA RETAMOZO', '11', 'N', '30.0'),
('000012', '100002', 'SHANDY PAREDES', '12', 'A', '40.0'),
('000013', '100001', 'NURITH GUILLEN', '13', 'A', '70.0'),
('000014', '100002', 'DANIEL VERGARA', '14', 'N', '50.0'),
('000015', '100001', 'JOHANA LOPEZ', '10', 'A', '70.0'),
('000016', '100003', 'huachua Ernestina', '11', 'E', '70.0'),
('000017', '100004', 'Cardenas Juana', '5', 'A', '70.0'),
('000018', '100004', 'Leon Malpartida', '2', 'A', '50.0'),
('000019', '100004', 'Gonzales carrillo', '4', 'N', '70.0'),
('000020', '100005', 'Mio Gamboa', '7', 'A', '70.0'),
('000021', '100005', 'Maldonado Huaman', '11', 'A', '70.0'),
('000022', '100005', 'Gaspar Acosta', '14', 'E', '60.0'),
('000023', '100006', 'Echegaray Felix', '10', 'E', '60.0'),
('000024', '100006', 'Cano Siu', '8', 'N', '70.0'),
('000025', '100006', 'Melgarejo percy', '9', 'N', '70.0'),
('000026', '100006', 'Grijalva Alan ', '13', 'A', '70.0'),
('000027', '100007', 'Marin LOPEZ', '5', 'A', '70.0'),
('000028', '100007', 'JOHANA LOPEZ', '14', 'A', '70.0'),
('000029', '100008', 'huachua Ernestina', '11', 'N', '70.0'),
('000030', '100008', 'Cardenas Juana', '5', 'E', '70.0'),
('000031', '100009', 'Leon Malpartida', '2', 'N', '70.0'),
('000032', '100009', 'Gonzales carrillo', '4', 'E', '70.0'),
('000033', '100010', 'Mio Gamboa', '7', 'E', '70.0'),
('000034', '100011', 'Maldonado Huaman', '11', 'A', '70.0'),
('000035', '100012', 'Gaspar Acosta', '14', 'N', '70.0'),
('000036', '100013', 'Echegaray Felix', '10', 'A', '70.0'),
('000037', '100014', 'Cano Siu', '8', 'E', '70.0'),
('000038', '100015', 'Melgarejo percy', '9', 'N', '70.0'),
('000039', '100016', 'Grijalva Alan ', '13', 'A', '70.0'),
('000040', '100017', 'Marin LOPEZ', '5', 'N', '70.0'),
('000041', '100018', 'JOHANA LOPEZ', '14', 'E', '70.0'),
('000042', '100019', 'Cama Roxama', '2', 'N', '70.0'),
('000043', '100019', 'Lopez Donayre, juan', '4', 'E', '70.0'),
('000044', '100019', 'Lopez Vera, Ana', '7', 'E', '70.0'),
('000045', '100020', 'Maldonado Huaman', '11', 'A', '70.0'),
('000046', '100020', 'Diaz Gaspar Alicia', '14', 'N', '70.0'),
('000047', '100020', 'Pezo Zuta Eliana', '10', 'A', '70.0'),
('000048', '100021', 'Carrasco Cano Maribel', '8', 'E', '70.0'),
('000049', '100021', 'Quispe Rojas, percy', '9', 'N', '70.0'),
('000050', '100021', 'Grijalva Alan ', '13', 'A', '70.0'),
('000051', '100022', 'Marin LOPEZ', '5', 'N', '70.0'),
('000052', '100022', 'JOHANA LOPEZ', '14', 'E', '70.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pilotos`
--

CREATE TABLE `pilotos` (
  `idpiloto` int(15) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `numeroavion` varchar(45) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `pago` decimal(8,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pilotos`
--

INSERT INTO `pilotos` (`idpiloto`, `nombre`, `categoria`, `numeroavion`, `capacidad`, `pago`) VALUES
(1, 'PATRICIO HERRERA', 'F', '', 0, '350.0'),
(2, 'JORGE QUISPE', 'C', '', 0, '200.0'),
(3, 'EDWARD TEMPLE', 'F', '', 0, '450.0'),
(4, 'ELMER MORALES', 'F', '', 0, '550.0'),
(5, 'MARCOS CUEVA', 'F', '', 0, '650.0'),
(6, 'Luis Prieto', 'F', '', 0, '350.0'),
(7, 'Eloy Lazo', 'F', '', 0, '350.0'),
(8, 'Jaime Benavidez', 'F', '', 0, '350.0'),
(9, 'juan', 'F', 'RRT200', 100, '1000.0'),
(10, 'patricio herrera', 'c', 'ABR456', 200, '450.0'),
(11, 'juan', 'w', '3', 300, '245.0'),
(12, 'juan', 'r', '4', 555, '555.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurantes`
--

CREATE TABLE `restaurantes` (
  `idrestaurante` int(15) NOT NULL,
  `lugar` varchar(45) NOT NULL,
  `restaurante` varchar(45) NOT NULL,
  `fecha_inicio` varchar(45) NOT NULL,
  `fecha_final` varchar(45) NOT NULL,
  `numeroreserva` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `restaurantes`
--

INSERT INTO `restaurantes` (`idrestaurante`, `lugar`, `restaurante`, `fecha_inicio`, `fecha_final`, `numeroreserva`) VALUES
(11, 'cuzco', 'piquito', '20-07-2018', '25-07-2018', 4),
(12, 'arequipa', 'rokis', '2018-07-07', '2018-07-13', 3),
(13, 'lima', 'dss', '43', '34', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `idvuelos` int(15) NOT NULL,
  `origen` varchar(45) NOT NULL,
  `destino` varchar(45) NOT NULL,
  `salida` varchar(45) NOT NULL,
  `retorno` varchar(45) NOT NULL,
  `pasajeros` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`idvuelos`, `origen`, `destino`, `salida`, `retorno`, `pasajeros`) VALUES
(34, 'lima', 'cuzco', '04/07/2018', '10/07/2018', 'juan diaz'),
(35, 'lima', 'arequipa', '04/07/2018', '15/07/2018', 'cesar quispe'),
(36, 'lima', 'arequipa', '04/07/2018', '16/07/2018', 'eduardo lopez'),
(37, 'cuzco', 'lima', '2018-07-06', '2018-07-13', '4'),
(38, 'pasco', 'lima', '2018-07-07', '2018-07-14', '2'),
(39, 'cuzco', 'huaraz', '2018-07-07', '2018-07-14', '2'),
(40, 'arequipa', 'rokis', '2018-07-07', '2018-07-14', '3'),
(41, 'cusco', '', '', '', ''),
(42, 'cusco', 'lima', '2018', '2018', 'gg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD PRIMARY KEY (`idhotel`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`BOLNRO`);

--
-- Indices de la tabla `pilotos`
--
ALTER TABLE `pilotos`
  ADD PRIMARY KEY (`idpiloto`);

--
-- Indices de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  ADD PRIMARY KEY (`idrestaurante`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`idvuelos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  MODIFY `idhotel` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100029;
--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT de la tabla `pilotos`
--
ALTER TABLE `pilotos`
  MODIFY `idpiloto` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  MODIFY `idrestaurante` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `idvuelos` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
