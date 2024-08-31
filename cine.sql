-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2024 a las 09:50:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartelera`
--

CREATE TABLE `cartelera` (
  `idCartelera` int(11) NOT NULL,
  `semanaCartelera` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaHoraPelicula` datetime DEFAULT NULL,
  `Disponible` tinyint(4) DEFAULT NULL,
  `idPelicula` int(11) DEFAULT NULL,
  `idSala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cartelera`
--

INSERT INTO `cartelera` (`idCartelera`, `semanaCartelera`, `fechaHoraPelicula`, `Disponible`, `idPelicula`, `idSala`) VALUES
(1, 'Semana 1', '2021-08-29 10:35:00', 1, 1, 1),
(2, 'Semana 1', '2021-08-29 22:45:00', 1, 2, 2),
(3, 'Semana 1', '2021-09-02 19:35:00', 1, 7, 2),
(4, 'Semana 1', '2021-09-04 19:35:00', 1, 9, 2),
(5, 'Semana 1', '2021-08-30 13:15:00', 1, 1, 4),
(6, 'Semana 1', '2021-09-03 11:40:00', 1, 2, 4),
(7, 'Semana 1', '2021-08-30 16:35:00', 1, 3, 5),
(8, 'Semana 1', '2021-08-30 20:30:00', 1, 7, 6),
(9, 'Semana 1', '2021-08-30 21:00:00', 1, 1, 8),
(10, 'Semana 1', '2021-09-03 12:45:00', 1, 3, 8),
(11, 'Semana 1', '2021-08-30 21:15:00', 1, 6, 9),
(12, 'Semana 1', '2021-09-03 20:20:00', 1, 9, 9),
(13, 'Semana 1', '2021-09-04 21:40:00', 1, 10, 9),
(14, 'Semana 1', '2021-08-31 17:45:00', 1, 4, 13),
(15, 'Semana 1', '2021-09-04 12:00:00', 1, 6, 13),
(16, 'Semana 1', '2021-08-31 18:40:00', 1, 7, 14),
(17, 'Semana 1', '2021-09-01 15:35:00', 1, 8, 15),
(18, 'Semana 1', '2021-09-02 16:20:00', 1, 3, 19),
(19, 'Semana 1', '2021-09-02 18:00:00', 1, 4, 20),
(20, 'Semana 1', '2021-09-04 15:00:00', 1, 5, 20),
(21, 'Semana 2', '2021-09-05 15:00:00', 1, 3, 1),
(22, 'Semana 2', '2021-09-08 19:40:00', 1, 8, 1),
(23, 'Semana 2', '2021-09-05 18:25:00', 1, 4, 3),
(24, 'Semana 2', '2021-09-05 21:15:00', 1, 8, 4),
(25, 'Semana 2', '2021-09-05 22:30:00', 1, 4, 6),
(26, 'Semana 2', '2021-09-08 22:40:00', 1, 7, 6),
(27, 'Semana 2', '2021-09-06 14:25:00', 1, 1, 7),
(28, 'Semana 2', '2021-09-09 13:40:00', 1, 2, 7),
(29, 'Semana 2', '2021-09-06 16:35:00', 1, 5, 9),
(30, 'Semana 2', '2021-09-06 18:30:00', 1, 2, 10),
(31, 'Semana 2', '2021-09-10 10:20:00', 1, 6, 10),
(32, 'Semana 2', '2021-09-06 19:20:00', 1, 2, 15),
(33, 'Semana 2', '2021-09-10 14:45:00', 1, 7, 15),
(34, 'Semana 2', '2021-09-10 20:25:00', 1, 3, 15),
(35, 'Semana 2', '2021-09-06 19:40:00', 1, 4, 16),
(36, 'Semana 2', '2021-09-07 16:45:00', 1, 7, 18),
(37, 'Semana 2', '2021-09-08 14:25:00', 1, 5, 19),
(38, 'Semana 2', '2021-09-08 18:25:00', 1, 4, 20),
(39, 'Semana 2', '2021-09-10 18:15:00', 1, 8, 20),
(40, 'Semana 2', '2021-09-11 14:00:00', 1, 10, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cine`
--

CREATE TABLE `cine` (
  `idCine` int(11) NOT NULL,
  `nombreCine` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Direccion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Telefono` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cine`
--

INSERT INTO `cine` (`idCine`, `nombreCine`, `Direccion`, `Telefono`) VALUES
(1, 'MovieEvents Cañete', 'Av. Benavides 1024 - San Vicente de Cañete', '977456528'),
(2, 'MovieEvents Mala', 'Jr. Real - 368 - Mala', '912871773'),
(3, 'MovieEvents Imperial', 'Av. Ramos 289 - Imperial', '968189005'),
(4, 'MovieEvents Chilca', 'Jr. Los Ales 502 - Chilca', '957972018'),
(5, 'MovieEvents Chincha', 'Av. El Asto 636 - Grocio Prado', '979707170');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opinion`
--

CREATE TABLE `opinion` (
  `idOpinion` int(11) NOT NULL,
  `idPelicula` int(11) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Calificacion` int(11) DEFAULT NULL,
  `Comentario` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `opinion`
--

INSERT INTO `opinion` (`idOpinion`, `idPelicula`, `Fecha`, `Calificacion`, `Comentario`, `idUsuario`) VALUES
(1, 1, '2021-01-14 03:02:16', 4, '', 5),
(2, 7, '2021-01-15 22:47:04', 5, 'Obra de culto, la considero la mejor de la trilogía, se merece la calificación.', 2),
(3, 10, '2021-01-31 21:22:44', 3, '', 17),
(4, 9, '2021-02-16 20:28:20', 2, 'Me es difícil leer los subtítulos y por tanto entender la trama de la película.', 12),
(5, 4, '2021-03-05 20:15:06', 5, '', 7),
(6, 8, '2021-03-09 00:48:01', 4, '', 20),
(7, 4, '2021-03-19 10:39:39', 3, 'Buena hasta cierto punto, pero siento que le faltó cierto grado de fidelidad con respecto al cómic.', 5),
(8, 8, '2021-03-22 02:15:01', 5, 'Una de las mejores películas de Tarantino, tremenda obra de arte como es característico de él.', 3),
(9, 8, '2021-03-27 22:16:42', 5, 'Obra maestra, ya veo por qué es considerada una película de culto.', 11),
(10, 6, '2021-05-08 12:08:04', 5, 'Buena película, muy realista y fuerte, por ocasiones sentí que estaba dentro de ella.', 11),
(11, 7, '2021-05-30 16:49:44', 3, '', 16),
(12, 3, '2021-06-23 02:39:57', 2, '', 2),
(13, 10, '2021-06-28 18:45:22', 5, '', 16),
(14, 3, '2021-07-03 19:42:35', 4, '', 16),
(15, 3, '2021-07-10 05:06:16', 5, '', 20),
(16, 3, '2021-07-15 12:28:08', 2, '', 8),
(17, 2, '2021-07-25 07:12:00', 3, '', 17),
(18, 9, '2021-07-26 19:24:49', 2, '', 20),
(19, 6, '2021-08-07 12:18:25', 2, '', 17),
(20, 4, '2021-08-08 04:01:09', 2, '', 7),
(21, 10, '2021-08-08 04:01:09', 4, 'excelente', 2),
(22, 1, NULL, 4, 'un gato estubo comentando', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `idPelicula` int(11) NOT NULL,
  `Titulo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tituloOriginal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Genero` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idiomaOriginal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Subtitulo` tinyint(4) DEFAULT NULL,
  `paisOrigen` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `añoProduccion` int(11) DEFAULT NULL,
  `urlWeb` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Duracion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calificacionApto` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaEstreno` date DEFAULT NULL,
  `Resumen` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`idPelicula`, `Titulo`, `tituloOriginal`, `Genero`, `idiomaOriginal`, `Subtitulo`, `paisOrigen`, `añoProduccion`, `urlWeb`, `Duracion`, `calificacionApto`, `fechaEstreno`, `Resumen`) VALUES
(1, 'Sueños de fuga', 'The Shawshank Redemption', 'Drama', 'Inglés', 0, 'Estados Unidos', 1993, 'https://www.warnerbros.com/movies/shawshank-redemption', '2h 22min', '+15', '1994-10-14', 'Acusado del asesinato de su mujer, Andrew Dufresne (Tim Robbins), tras ser condenado a cadena perpetua, es enviado a la '),
(2, 'El padrino', 'The Godfather', 'Drama', 'Inglés', 1, 'Estados Unidos', 1971, 'https://www.paramount.com/movies/godfather-collection', '2h 55min', '+18', '1972-03-15', 'América, años 40. Don Vito Corleone (Marlon Brando) es el respetado y temido jefe de una de las cinco familias de la maf'),
(3, 'El padrino II', 'The Godfather Part II', 'Drama', 'Inglés', 1, 'Estados Unidos', 1973, 'https://www.paramount.com/movies/godfather-collection', '3h 22min', '+18', '1974-12-20', 'Continuación de la historia de los Corleone por medio de dos historias paralelas: la elección de Michael como jefe de lo'),
(4, 'Batman - El caballero de la noche', 'The Dark Knight', 'Acción', 'Inglés', 0, 'Estados Unidos', 2007, 'https://www.warnerbros.com/movies/dark-knight', '2h 32min', '+15', '2008-07-17', 'Batman/Bruce Wayne (Christian Bale) regresa para continuar su guerra contra el crimen. Con la ayuda del teniente Jim Gor'),
(5, '12 hombres en pugna', '12 Angry Men', 'Drama', 'Inglés', 0, 'Estados Unidos', 1956, 'https://www.criterion.com/films/27871-12-angry-men', '1h 36min', '+15', '1957-04-10', 'Los doce miembros de un jurado deben juzgar a un adolescente acusado de haber matado a su padre. Todos menos uno están c'),
(6, 'La lista de Schindler', 'Schindler\'s List', 'Drama', 'Inglés', 1, 'Estados Unidos', 1992, 'https://www.universalpictures.com/movies/schindlers-list', '3h 15min', '+15', '1994-02-24', 'Oskar Schindler (Liam Neeson), un empresario alemán de gran talento para las relaciones públicas, busca ganarse la simpa'),
(7, 'El señor de los anillos: El retorno del rey', 'The Lord of the Rings: The Return of the King', 'Aventura', 'Inglés', 1, 'Nueva Zelanda', 2002, 'https://www.warnerbros.com/movies/lord-rings-return-king', '3h 21min', '+15', '2003-12-19', 'Las fuerzas de Saruman han sido destruidas, y su fortaleza sitiada. Ha llegado el momento de decidir el destino de la Ti'),
(8, 'Tiempos violentos', 'Pulp Fiction', 'Drama', 'Inglés', 0, 'Estados Unidos', 1993, 'https://www.miramax.com/movie/pulp-fiction/', '2h 34min', '+18', '1995-02-24', 'Jules y Vincent, dos asesinos a sueldo con no demasiadas luces, trabajan para el gángster Marsellus Wallace. Vincent le '),
(9, 'Lo bueno, lo malo y lo feo', 'Il buono, il brutto, il cattivo', 'Western', 'Inglés', 1, 'Italia', 1965, 'https://www.amazon.com/-/es/dp/B0013XZ6KW', '2h 41min', '+15', '1966-12-23', 'Durante la guerra civil norteamericana (1861-1865), tres cazadores de recompensas buscan un tesoro que ninguno de ellos '),
(10, 'El señor de los anillos: La comunidad del ani', 'The Lord of the Rings: The Fellowship of the ', 'Aventura', 'Inglés', 1, 'Nueva Zelanda', 2001, 'https://www.warnerbros.com/movies/lord-rings-fellowship-ring', '2h 58min', '+15', '2002-01-01', 'En la Tierra Media, el Señor Oscuro Sauron ordenó a los Elfos que forjaran los Grandes Anillos de Poder. Tres para los r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `idPromocion` int(11) NOT NULL,
  `fechaHoraInicio` datetime DEFAULT NULL,
  `fechaHoraFinal` datetime DEFAULT NULL,
  `Descripcion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descuento` decimal(10,0) DEFAULT NULL,
  `idPelicula` int(11) DEFAULT NULL,
  `idCine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`idPromocion`, `fechaHoraInicio`, `fechaHoraFinal`, `Descripcion`, `Descuento`, `idPelicula`, `idCine`) VALUES
(1, '2021-01-01 08:00:00', '2021-12-31 22:00:00', 'Descuento del 20% para universitarios, mostra', '0', 7, 2),
(2, '2021-01-01 08:00:00', '2021-12-31 22:00:00', 'Descuento del 20% para universitarios, mostra', '0', 10, 2),
(3, '2021-01-01 08:00:00', '2021-12-31 22:00:00', 'Descuento del 20% para universitarios, mostra', '0', 4, 2),
(4, '2021-08-29 08:00:00', '2021-10-02 22:00:00', 'Descuento de primavera del 15% para mayores d', '0', 2, 3),
(5, '2021-10-03 08:00:00', '2021-10-30 22:00:00', 'Descuento de primavera del 15% para mayores d', '0', 6, 4),
(6, '2021-10-31 08:00:00', '2021-12-04 22:00:00', 'Descuento de primavera del 15% para mayores d', '0', 8, 4),
(7, '2021-12-23 08:00:00', '2021-12-31 22:00:00', 'Descuento de Navidad del 20% para todo el púb', '0', 6, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparto`
--

CREATE TABLE `reparto` (
  `idReparto` int(11) NOT NULL,
  `nombreReparto` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombrePersonaje` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nacionalidad` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idPelicula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `reparto`
--

INSERT INTO `reparto` (`idReparto`, `nombreReparto`, `nombrePersonaje`, `Nacionalidad`, `Rol`, `idPelicula`) VALUES
(1, 'Frank Darabont', '', 'Estados Unidos', 'Director', 1),
(2, 'Tim Robbins', 'Andy Dufresne', 'Estados Unidos', 'Actor', 1),
(3, 'Morgan Freeman', 'Ellis Boyd \'Red\' Redding', 'Estados Unidos', 'Actor', 1),
(4, 'Bob Gunton', 'Warden Norton', 'Estados Unidos', 'Actor', 1),
(5, 'Francis Ford Coppola', '', 'Estados Unidos', 'Director', 2),
(6, 'Marlon Brando', 'Don Vito Corleone', 'Estados Unidos', 'Actor', 2),
(7, 'Al Pacino', 'Michael', 'Estados Unidos', 'Actor', 2),
(8, 'James Caan', 'Sonny', 'Estados Unidos', 'Actor', 2),
(9, 'Francis Ford Coppola', '', 'Estados Unidos', 'Director', 3),
(10, 'Al Pacino', 'Michael', 'Estados Unidos', 'Actor', 3),
(11, 'Robert De Niro', 'Vito Corleone', 'Estados Unidos', 'Actor', 3),
(12, 'Robert Duvall', 'Tom Hagen', 'Estados Unidos', 'Actor', 3),
(13, 'Christopher Nolan', '', 'Reino Unido', 'Director', 4),
(14, 'Christian Bale', 'Bruce Wayne', 'Reino Unido', 'Actor', 4),
(15, 'Heath Ledger', 'Joker', 'Estados Unidos', 'Actor', 4),
(16, 'Aaron Eckhart', 'Harvey Dent', 'Estados Unidos', 'Actor', 4),
(17, 'Sidney Lumet', '', 'Estados Unidos', 'Director', 5),
(18, 'Henry Fonda', 'Jurado 8', 'Estados Unidos', 'Actor', 5),
(19, 'Lee J. Cobb', 'Jurado 3', 'Estados Unidos', 'Actor', 5),
(20, 'Martin Balsam', 'Jurado 1', 'Estados Unidos', 'Actor', 5),
(21, 'Steven Spielberg', '', 'Estados Unidos', 'Director', 6),
(22, 'Liam Neeson', 'Oskar Schindler', 'Reino Unido', 'Actor', 6),
(23, 'Ralph Fiennes', 'Amon Goeth', 'Reino Unido', 'Actor', 6),
(24, 'Ben Kingsley', 'Itzhak Stern', 'Reino Unido', 'Actor', 6),
(25, 'Peter Jackson', '', 'Nueva Zelanda', 'Director', 7),
(26, 'Elijah Wood', 'Frodo', 'Estados Unidos', 'Actor', 7),
(27, 'Viggo Mortensen', 'Aragorn', 'Estados Unidos', 'Actor', 7),
(28, 'Ian McKellen', 'Gandalf', 'Reino Unido', 'Actor', 7),
(29, 'Quentin Tarantino', '', 'Estados Unidos', 'Director', 8),
(30, 'John Travolta', 'Vincent Vega', 'Estados Unidos', 'Actor', 8),
(31, 'Uma Thurman', 'Mia Wallace', 'Estados Unidos', 'Actriz', 8),
(32, 'Samuel L. Jackson', 'Jules Winnfield', 'Estados Unidos', 'Actor', 8),
(33, 'Sergio Leone', '', 'Italia', 'Director', 9),
(34, 'Clint Eastwood', 'Blondie', 'Estados Unidos', 'Actor', 9),
(35, 'Eli Wallach', 'Tuco', 'Estados Unidos', 'Actor', 9),
(36, 'Lee Van Cleef', 'Sentenza', 'Estados Unidos', 'Actor', 9),
(37, 'Peter Jackson', '', 'Nueva Zelanda', 'Director', 10),
(38, 'Elijah Wood', 'Frodo', 'Estados Unidos', 'Actor', 10),
(39, 'Ian McKellen', 'Gandalf', 'Reino Unido', 'Actor', 10),
(40, 'Orlando Bloom', 'Legolas', 'Reino Unido', 'Actor', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala_cine`
--

CREATE TABLE `sala_cine` (
  `idSala` int(11) NOT NULL,
  `nombreSala` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidadButacas` int(11) DEFAULT NULL,
  `idCine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sala_cine`
--

INSERT INTO `sala_cine` (`idSala`, `nombreSala`, `cantidadButacas`, `idCine`) VALUES
(1, 'Sala 1', 150, 1),
(2, 'Sala 2', 150, 1),
(3, 'Sala 3', 150, 1),
(4, 'Sala 4', 150, 1),
(5, 'Sala 1', 150, 2),
(6, 'Sala 2', 150, 2),
(7, 'Sala 3', 150, 2),
(8, 'Sala 4', 150, 2),
(9, 'Sala VIP', 40, 2),
(10, 'Sala 1', 120, 3),
(11, 'Sala 2', 120, 3),
(12, 'Sala 3', 120, 3),
(13, 'Sala 1', 150, 4),
(14, 'Sala 2', 150, 4),
(15, 'Sala 3', 150, 4),
(16, 'Sala HD', 100, 4),
(17, 'Sala 1', 120, 5),
(18, 'Sala 2', 120, 5),
(19, 'Sala 3', 120, 5),
(20, 'Sala 4', 120, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombreUsuario` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `Correo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Celular` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Nombre`, `nombreUsuario`, `fechaNacimiento`, `Correo`, `Password`, `Celular`) VALUES
(1, 'Michael Rodriguez', 'Nex', '1993-11-07', 'michael@cinevents.com', 'michael', '975369561'),
(2, 'Juan Aburto', 'Codex', '2000-12-04', 'juan@cinevents.com', 'juan', '982099475'),
(3, 'Jorge Azaldegui', 'simplesolutions', '1983-07-09', 'jorge@cinevents.com', 'jorge', '938360308'),
(4, 'Flor Torres', 'ftorres', '2000-02-01', 'ftorres@cinevents.com', 'wFDbhTsoPzeC6cTR', '906293045'),
(5, 'Angélica Cruz', 'acruz', '2002-04-21', 'acruz@cinevents.com', '4HS8vIjoZPap1hV7', '997062448'),
(6, 'Marcos Gonzales', 'mgonzales', '1986-08-17', 'mgonzales@cinevents.com', 'FCuzH7anQi91VfGm', '919074085'),
(7, 'Victoria Espinoza', 'vespinoza', '2003-06-02', 'vespinoza@cinevents.com', 'DvCA7gaUNy2sSejv', '999805700'),
(8, 'Jenny Mamani', 'jmamani', '1988-01-02', 'jmamani@cinevents.com', 'wadM4b0bdj3banHO', '901243375'),
(9, 'Rafael Pérez', 'rperez', '1998-10-08', 'rperez@cinevents.com', '6V0P79DC7kbSddGy', '932906488'),
(10, 'Jonas Hinostroza', 'joyanes', '1989-08-16', 'joyanes@cinevents.com', 'hBcOhiQAzVlI3kwz', '968920935'),
(11, 'Angie Martínez', 'amartinez', '1997-11-15', 'amartinez@cinevents.com', '6MDkzL5YjsBXRIGh', '926557545'),
(12, 'Jaime Huamán', 'jhuaman', '1992-12-26', 'jhuaman@cinevents.com', 'MOWWrbKSEY2vaNvU', '974788329'),
(13, 'Félix López', 'flopez', '1996-04-24', 'flopez@cinevents.com', 'dSrvs5O7NZOKUFEX', '960714340'),
(14, 'Evelyn Flores', 'eflores', '1980-01-04', 'eflores@cinevents.com', '5sF0dFBk5n3eDKmW', '923682788'),
(15, 'Félix Salazar', 'fsalazar', '1996-01-13', 'fsalazar@cinevents.com', 'g5H8OGmrJwomoSdP', '920495738'),
(16, 'Omar López', 'olopez', '1991-05-10', 'olopez@cinevents.com', '7wWvUpnyQPyMVLsW', '982283878'),
(17, 'Ángela Silva', 'asilva', '1985-06-13', 'asilva@cinevents.com', 'qpZqrcppCKslPSC1', '967914672'),
(18, 'Guillermo Díaz', 'gdiaz', '1992-08-20', 'gdiaz@cinevents.com', 'RrTqmZfFLgcOl2FG', '922363920'),
(19, 'Marco Fernández', 'mfernandez', '1991-01-11', 'mfernandez@cinevents.com', 'cMjMKRwmOme82ohT', '951727221'),
(20, 'Beatriz Cruz', 'bcruz', '1985-01-06', 'bcruz@cinevents.com', 'RpXr0BNkblkDkS1p', '943581284');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cartelera`
--
ALTER TABLE `cartelera`
  ADD PRIMARY KEY (`idCartelera`),
  ADD KEY `idPelicula` (`idPelicula`),
  ADD KEY `idSala` (`idSala`);

--
-- Indices de la tabla `cine`
--
ALTER TABLE `cine`
  ADD PRIMARY KEY (`idCine`),
  ADD KEY `idCine` (`idCine`);

--
-- Indices de la tabla `opinion`
--
ALTER TABLE `opinion`
  ADD PRIMARY KEY (`idOpinion`),
  ADD KEY `idPelicula` (`idPelicula`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`idPelicula`),
  ADD KEY `idPelicula` (`idPelicula`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`idPromocion`),
  ADD KEY `idPelicula` (`idPelicula`),
  ADD KEY `idCine` (`idCine`);

--
-- Indices de la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD PRIMARY KEY (`idReparto`),
  ADD KEY `idPelicula` (`idPelicula`);

--
-- Indices de la tabla `sala_cine`
--
ALTER TABLE `sala_cine`
  ADD PRIMARY KEY (`idSala`),
  ADD KEY `idCine` (`idCine`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cartelera`
--
ALTER TABLE `cartelera`
  ADD CONSTRAINT `cartelera_ibfk_1` FOREIGN KEY (`idPelicula`) REFERENCES `pelicula` (`idPelicula`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cartelera_ibfk_2` FOREIGN KEY (`idSala`) REFERENCES `sala_cine` (`idSala`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `opinion`
--
ALTER TABLE `opinion`
  ADD CONSTRAINT `opinion_ibfk_1` FOREIGN KEY (`idPelicula`) REFERENCES `pelicula` (`idPelicula`) ON UPDATE CASCADE,
  ADD CONSTRAINT `opinion_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD CONSTRAINT `promocion_ibfk_1` FOREIGN KEY (`idCine`) REFERENCES `cine` (`idCine`) ON UPDATE CASCADE,
  ADD CONSTRAINT `promocion_ibfk_2` FOREIGN KEY (`idPelicula`) REFERENCES `pelicula` (`idPelicula`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD CONSTRAINT `reparto_ibfk_1` FOREIGN KEY (`idPelicula`) REFERENCES `pelicula` (`idPelicula`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `sala_cine`
--
ALTER TABLE `sala_cine`
  ADD CONSTRAINT `sala_cine_ibfk_1` FOREIGN KEY (`idCine`) REFERENCES `cine` (`idCine`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
