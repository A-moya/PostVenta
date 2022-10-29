-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2022 a las 00:43:13
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `descalic_sgi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `fechacompra` date NOT NULL,
  `producto` varchar(100) NOT NULL,
  `cantidad` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `idproducto`, `fechacompra`, `producto`, `cantidad`) VALUES
(5, 2, '2022-02-10', 'Pan Tostado 220 G. Bimbo', '5'),
(6, 2, '2022-02-10', 'Pan Tostado 220 G. Bimbo', '5'),
(7, 2, '2022-02-10', 'Pan Tostado 220 G. Bimbo', '6'),
(8, 2, '2022-02-14', 'Pan Tostado 220 G. Bimbo', '5'),
(9, 2, '2022-02-14', 'Pan Tostado 220 G. Bimbo', '2'),
(10, 2, '2022-02-16', 'Pan Tostado 220 G. Bimbo', '2'),
(11, 3, '2022-02-16', 'Tostadas Integrales Bimbo X 10Und X 160G', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `idFactura` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `valor` varchar(7) NOT NULL,
  `cantidad` varchar(7) NOT NULL,
  `total` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id`, `idFactura`, `idProducto`, `valor`, `cantidad`, `total`) VALUES
(1, 5, 1, '$5.060', '1', '$5.060'),
(2, 5, 2, '$3.795', '1', '$3.795'),
(3, 5, 3, '$4.083', '1', '$4.083'),
(4, 5, 4, '$5.693', '1', '$5.693'),
(5, 5, 5, '$5.923', '1', '$5.923'),
(6, 5, 6, '$3.105', '1', '$3.105'),
(7, 6, 1, '$5.060', '1', '$5.060'),
(8, 6, 25, '$4.485', '1', '$4.485'),
(9, 6, 2, '$3.795', '1', '$3.795'),
(10, 6, 22, '$1.380', '1', '$1.380'),
(11, 7, 88, '$2.289', '1', '$2.289'),
(12, 7, 99, '$2.404', '1', '$2.404'),
(13, 7, 55, '$13.685', '1', '$13.685'),
(14, 7, 44, '$13.973', '1', '$13.973'),
(15, 7, 77, '$1.944', '1', '$1.944'),
(16, 7, 22, '$1.380', '1', '$1.380'),
(17, 8, 66, '5463', '1', '5463'),
(18, 9, 1, '5060', '1', '5060'),
(19, 10, 1, '5060', '3', '15180'),
(20, 11, 1, '5060', '1', '5060'),
(21, 12, 2, '3795', '1', '3795'),
(22, 13, 9, '4370', '1', '4370'),
(23, 14, 8, '3105', '1', '3105');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `tipo_documento` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `tipo_documento`) VALUES
(1, 'Cédula'),
(2, 'Cédula de Extranjería'),
(3, 'Tarjeta de identidad'),
(4, 'Pasaporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `tipo_estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `tipo_estado`) VALUES
(1, 'Activo'),
(2, 'No Activo'),
(3, 'FacturaActiva'),
(4, 'FacturaNoActiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `neto` varchar(7) NOT NULL,
  `impuesto` varchar(2) NOT NULL,
  `total` varchar(7) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `fecha`, `idUsuario`, `neto`, `impuesto`, `total`, `estado`) VALUES
(1, '2022-01-05', 12, '0', '0', '0', 4),
(3, '2022-01-11', 12, '12938', '0', '12938', 4),
(4, '2022-01-11', 12, '16618', '0', '16618', 4),
(5, '2022-01-25', 12, '27659', '0', '27659', 4),
(6, '2022-01-25', 12, '14720', '0', '14720', 4),
(7, '2022-01-25', 12, '35675', '0', '35675', 4),
(8, '2022-01-19', 12, '5463', '0', '5463', 4),
(9, '2022-01-19', 12, '5060', '0', '5060', 4),
(10, '2022-01-25', 12, '15180', '0', '15180', 4),
(11, '2022-01-25', 12, '5060', '0', '5060', 4),
(12, '2022-01-25', 12, '3795', '0', '3795', 4),
(13, '2022-02-11', 12, '4370', '0', '4370', 4),
(14, '2022-02-11', 12, '3105', '0', '3105', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `valor` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `costo` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `impuesto` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `proUsu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `descripcion`, `valor`, `costo`, `cantidad`, `impuesto`, `estado`, `proUsu`) VALUES
(1, 'Colchoncitos Bimbo X 20Und X 290G ñ', '5000', '1000', '46', '0', '1', 0),
(2, 'Pan Tostado 220 G. Bimbo', '3795', '1000', '69', '0', '1', 0),
(3, 'Tostadas Integrales Bimbo X 10Und X 160G', '4083', '1000', '53', '0', '1', 0),
(4, 'Tostaos Mantequilla 20 Und 300G. Bimbo', '5693', '1000', '50', '0', '1', 0),
(5, 'Tostaos Integral 20 Und 300 G. Bimbo', '5923', '1000', '50', '0', '1', 0),
(6, 'Pan Perro Bimbo 6Und X 205G', '3105', '1000', '50', '0', '1', 0),
(7, 'Super Perro 6Pz 405 G. Bimbo', '4485', '1000', '50', '0', '1', 0),
(8, 'Pan Hamburguesa 4 Und 210 G. Bimbo', '3105', '1000', '49', '0', '1', 0),
(9, 'Super Hamburguesa X 4 Und X 350 G Bimbo', '4370', '1000', '49', '0', '1', 0),
(10, 'Pan Blanco Familiar X600 G. Bimbo', '5808', '1000', '50', '0', '1', 0),
(11, 'Pan Semillas X 500 G. Bimbo', '7705', '1000', '50', '0', '1', 0),
(12, 'Pan Multicereal X 500 G. Bimbo', '7705', '1000', '50', '0', '1', 0),
(13, 'Pan Artesano As X 500 G. Bimbo.', '5865', '1000', '50', '0', '1', 0),
(14, 'Pan Artesano Mesa 6 Panes 390G Bimbo', '5060', '1000', '50', '0', '1', 0),
(15, 'Pan Artesano Integral Bimbo X 500G', '5923', '1000', '50', '0', '1', 0),
(16, 'Arroz Diana 1000 Gr - Diana', '4485', '1000', '50', '0', '1', 0),
(17, 'Arroz Diana 500 Gr - Diana', '2139', '1000', '50', '0', '1', 0),
(18, 'Pasta Espaguetis La Muneca X 500 G', '3163', '1000', '50', '0', '1', 0),
(19, 'Pasta Conchas La Muneca X 500 G', '1748', '1000', '50', '0', '1', 0),
(20, 'Pasta Cabello De Angel La Muñeca X 500 G', '3508', '1000', '50', '0', '1', 0),
(21, 'Pasta Tornillo La Muneca X 500G', '3623', '1000', '50', '0', '1', 0),
(22, 'Pasta Fideo Comarrico X 250 G', '1380', '1000', '50', '0', '1', 0),
(23, 'Pasta Spaguetti Comarricox250 G', '1380', '1000', '50', '0', '1', 0),
(24, 'Lenteja X 500 Gr', '3853', '1000', '50', '0', '1', 0),
(25, 'Frijol Cargamanto Rosado', '4485', '1000', '50', '0', '1', 0),
(26, 'Frijol Zaragoza', '4025', '1000', '50', '0', '1', 0),
(27, 'Frijol Bola Roja', '4934', '1000', '50', '0', '1', 0),
(28, 'Frijol Blanquillo', '2979', '1000', '50', '0', '1', 0),
(29, 'Azucar Alta Pureza 1 Kg - Manuelita', '2990', '1000', '50', '0', '1', 0),
(30, 'Azúcar Morena Bolsa X 1Kg - Manuelita', '3646', '1000', '50', '0', '1', 0),
(31, 'Azucar Blanc - Providencia', '7671', '1000', '50', '0', '1', 0),
(32, 'Harina De Maiz Blanco X 1000 G - Pan', '3738', '1000', '50', '0', '1', 0),
(33, 'Harina Haz De Oro X 500 G', '1898', '1000', '50', '0', '1', 0),
(34, 'Harina De Trigo La Vecina X 500 G', '1553', '1000', '50', '0', '1', 0),
(35, 'Miga De Pan Bimbo X 250 G', '3335', '1000', '50', '0', '1', 0),
(36, 'Maizena Fecula De Maiz 380Gr', '9430', '1000', '50', '0', '1', 0),
(37, 'Maizena Cereal Bebe X 280G', '7878', '1000', '50', '0', '1', 0),
(38, 'Maizena Colada Vainilla X 30G', '1265', '1000', '50', '0', '1', 0),
(39, 'Arroz Blanco X 500 Gr - Roa', '2105', '1000', '50', '0', '1', 0),
(40, 'Arroz Integral 1000 Gr - Roa', '6003', '1000', '50', '0', '1', 0),
(41, 'Arroz Flor Huila X 1 Kg', '4428', '1000', '50', '0', '1', 0),
(42, 'Arroz Diana Vitamor X 500 G', '2358', '1000', '50', '0', '1', 0),
(43, 'Salero 130 Gr - Refisal', '932', '1000', '50', '0', '1', 0),
(44, 'Aceite Premier X 1000 Ml', '13973', '1000', '50', '0', '1', 0),
(45, 'Aceite Canola Life X 1000 Ml', '17193', '1000', '50', '0', '1', 0),
(46, 'Aceite Canola Life X 500Ml', '10868', '1000', '50', '0', '1', 0),
(47, 'Aceite Soya Girasol Fino X 1800 Ml', '17998', '1000', '50', '0', '1', 0),
(48, 'Aceite Soya Girasol Fino X 500 Ml', '5348', '1000', '50', '0', '1', 0),
(49, 'Cafe Molido Descafeinado Sello Rojox250G', '8798', '1000', '50', '0', '1', 0),
(50, 'Cafe Sello Rojo X 250 G', '5348', '1000', '50', '0', '1', 0),
(51, 'Cafe Sello Rojo X 500 G', '9143', '1000', '50', '0', '1', 0),
(52, 'Cafe Bemoka Descafeinado X 500 G', '13455', '1000', '50', '0', '1', 0),
(53, 'Cafe Aguila Roja X 125G', '2588', '1000', '50', '0', '1', 0),
(54, 'Cafe Aguila Roja X 250 G', '5175', '1000', '50', '0', '1', 0),
(55, 'Cafe Descafeinado Aguila Roja X 500 G', '13685', '1000', '50', '0', '1', 0),
(56, 'Cafe Descafeinado Aguila Roja X 250 G', '6843', '1000', '50', '0', '1', 0),
(57, 'Colcafe Polvo X 50 G', '4428', '1000', '50', '0', '1', 0),
(58, 'Colcafe Polvo X 85 G', '7418', '1000', '50', '0', '1', 0),
(59, 'Colcafe Polvo X 170 G', '13685', '1000', '50', '0', '1', 0),
(60, 'Colcafe 3 En 1 Frasco X380G', '11730', '1000', '50', '0', '1', 0),
(61, 'Nescafe Tradición X 50 G', '5693', '1000', '50', '0', '1', 0),
(62, 'Nescafe Tradición X 85 G', '9028', '1000', '50', '0', '1', 0),
(63, 'Nescafe Tradición X 170 G', '14318', '1000', '50', '0', '1', 0),
(64, 'Atun Lomitos En Agua Buengustox160Gr', '5405', '1000', '50', '0', '1', 0),
(65, 'Atun Lomitos En Agua Tropimar X 175 Gr', '5003', '1000', '50', '0', '1', 0),
(66, 'Atun Lomitos Aceite Buengustox160G', '5463', '1000', '50', '0', '1', 0),
(67, 'Atun Lomitos En Aceite Tropimar X 175 Gr', '5175', '1000', '50', '0', '1', 0),
(68, 'Suntea Durazno 1.5 Litros X25G', '1495', '1000', '50', '0', '1', 0),
(69, 'Suntea Limon 1.5 Litros X25G', '1495', '1000', '50', '0', '1', 0),
(70, 'Te Suntea Frutos Rojos 1.5L X25G', '14950', '1000', '50', '0', '1', 0),
(71, 'Platano Maduro Extra X Kg', '1610', '1000', '50', '0', '1', 0),
(72, 'Guineo X 500 Gr', '863', '1000', '50', '0', '1', 0),
(73, 'Mango Tomy X 500 Gr', '2231', '1000', '50', '0', '1', 0),
(74, 'Mango Manzano Tolima X 500 Gr', '2864', '1000', '50', '0', '1', 0),
(75, 'Naranja Comun X 500 Gr', '771', '1000', '50', '0', '1', 0),
(76, 'Naranja Sweey X 5000 G', '6843', '1000', '50', '0', '1', 0),
(77, 'Tomate Chonto X 500  Gr', '1944', '1000', '50', '0', '1', 0),
(78, 'Banano Criollo Com?n X 500 Gr', '1196', '1000', '50', '0', '1', 0),
(79, 'Platano Maduro Extra X 500 Gr', '1564', '1000', '50', '0', '1', 0),
(80, 'Platano Verde Extra X 500 Gr', '1196', '1000', '50', '0', '1', 0),
(81, 'Papaya Común X 500  Gr', '736', '1000', '50', '0', '1', 0),
(82, 'Cebolla Cabezona Blanca 500 Gr', '2157', '1000', '50', '0', '1', 0),
(83, 'Cebolla Cabezona Roja 500  Gr', '3019', '1000', '50', '0', '1', 0),
(84, 'Cebolla Larga Limpia X 500 Gr', '2904', '1000', '50', '0', '1', 0),
(85, 'Cebolla Larga Paquete', '1150', '1000', '50', '0', '1', 0),
(86, 'Cilantro X 100 Gr', '748', '1000', '50', '0', '1', 0),
(87, 'Piña Oro Miel X 500 Gr', '5520', '1000', '50', '0', '1', 0),
(88, 'Lulos X 500 Gr', '2289', '1000', '50', '0', '1', 0),
(89, 'Limon Comun X 500 Gr', '2289', '1000', '50', '0', '1', 0),
(90, 'Limón Tahiti X 500 Gr', '966', '1000', '50', '0', '1', 0),
(91, 'Zanahoria Pastusa Granel X 500 Gr', '1380', '1000', '50', '0', '1', 0),
(92, 'Papa Amarilla Gruesa X 500 Gr', '2369', '1000', '50', '0', '1', 0),
(93, 'Papa Sin Lavar X 500 Gr', '955', '1000', '50', '0', '1', 0),
(94, 'Aguacate Extra X 500 Gr', '1921', '1000', '50', '0', '1', 0),
(95, 'Mandarina Oneco X 500 Gr', '1024', '1000', '50', '0', '1', 0),
(96, 'Mandarina Arrayana X 500 Gr', '1714', '1000', '50', '0', '1', 0),
(97, 'Granadilla X 500 Gr', '3554', '1000', '50', '0', '1', 0),
(98, 'Tomate Arbol Paquete', '1150', '1000', '50', '0', '1', 0),
(99, 'Tomate De Arbol X 500 Gr', '2404', '1000', '50', '0', '1', 0),
(100, 'Espinaca En Hoja X 500 Gr', '1536', '1000', '50', '0', '1', 0),
(101, 'Guayaba Dulce X 500 Gr', '1369', '1000', '50', '0', '1', 0),
(102, 'Guayaba Dulce Paquete', '1150', '1000', '50', '0', '1', 0),
(103, 'Habichuela Paquete', '1150', '1000', '50', '0', '1', 0),
(104, 'Habichuelas X 500 Gr', '2663', '1000', '50', '0', '1', 0),
(105, 'Brocoli X 500 Gr', '3381', '1000', '50', '0', '1', 0),
(106, 'Huevo Rojo A X 30 Insuperable', '11040', '1000', '50', '0', '1', 0),
(107, 'Huevo Aa Rojo X 12 Unidades - Santa Anita', '7015', '1000', '50', '0', '1', 0),
(108, 'Crema De Leche Alqueria En Bolsa X 200 Gr- Alqueria', '2760', '1000', '50', '0', '1', 0),
(109, 'Leche Entera Colanta En Polvo X 400 Gr - Colanta', '9143', '1000', '50', '0', '1', 0),
(110, 'Leche Deslactosada Alpina En Caja X 1000 Ml - Alpina', '4750', '1000', '50', '0', '1', 0),
(111, 'Leche Deslactosada Alqueria Bolsa X 1300 Ml - Alqueria', '4106', '1000', '50', '0', '1', 0),
(112, 'Leche Deslactosada Alqueria Bolsa X 1100 Ml - Alqueria', '4106', '1000', '50', '0', '1', 0),
(113, 'Leche Descremada + Fibra X 1100 Ml - Alpina', '4888', '1000', '50', '0', '1', 0),
(114, 'Leche Chocolate 180 Ml - Alpina', '1783', '1000', '50', '0', '1', 0),
(115, 'Leche En Polvo Klim Clasica X 480G - Klim', '17710', '1000', '50', '0', '1', 0),
(116, 'Leche Semidescremada Alpina En Bolsa X 1100 Ml - Alpina', '4715', '1000', '50', '0', '1', 0),
(117, 'Leche Entera Colanta X 900 Ml - Colanta', '3209', '1000', '50', '0', '1', 0),
(118, 'Bebida Lactea Yogo Yogo Sabor A Mora X 1000 G - Yogo Yogo', '4796', '1000', '50', '0', '1', 0),
(119, 'Bebida Lactea Yogo Yogo Sabor A Melocoton X 1000 G - Yogo Yogo', '4796', '1000', '50', '0', '1', 0),
(120, 'Queso Parmesano Alpina X 4 G - Alpina', '3600', '1000', '50', '0', '1', 0),
(121, 'Queso Mozarella Alpina X 15 Tajadas (250 G) - Alpina', '9925', '1000', '50', '0', '1', 0),
(122, 'Queso Crema Alpina X 200 G - Alpina', '4807', '1000', '50', '0', '1', 0),
(123, 'Queso Crema Alpina Cremosino X 380 G - Alpina', '6900', '1000', '50', '0', '1', 0),
(124, 'Queso Tipo Mozzarela Colanta X 15 Tajadas (250 Gr) - Colanta', '8400', '1000', '50', '0', '1', 0),
(125, 'Jamon De Pavo - Taeq', '12340', '1000', '50', '0', '1', 0),
(126, 'Jamon De Pollo Pietran X 230G - Pietran', '9948', '1000', '50', '0', '1', 0),
(127, 'Jamon De Pavo X 225G - Pietran', '16445', '1000', '50', '0', '1', 0),
(128, 'Jamon Ideal X 230G - Rica Rondo', '6400', '1000', '50', '0', '1', 0),
(129, 'Shampoo JOHNSON’S baby original 400 ml', '18285', '1000', '50', '0', '1', 0),
(130, 'Shampoo JOHNSON’S baby manzanilla 400 ml', '18285', '1000', '50', '0', '1', 0),
(131, 'Shampoo JOHNSON’S baby hidratación 400 ml', '18285', '1000', '50', '0', '1', 0),
(132, 'Shampoo JOHNSON’S baby gotas de brillo 400 ml', '18285', '1000', '50', '0', '1', 0),
(133, 'Shampoo JOHNSON’S baby cabello oscuro 400 ml', '18285', '1000', '50', '0', '1', 0),
(134, 'Shampoo JOHNSON’S baby original 200 ml', '13340', '1000', '50', '0', '1', 0),
(135, 'Shampoo JOHNSON’S baby manzanilla 200 ml', '12938', '1000', '50', '0', '1', 0),
(136, 'Shampoo JOHNSON’S baby fuerza y vitamina 400 ml', '18573', '1000', '50', '0', '1', 0),
(137, 'Shampoo JOHNSON’S baby original 750 ml', '27715', '1000', '50', '0', '1', 0),
(138, 'Shampoo JOHNSON’S baby manzanilla 750 ml', '27715', '1000', '50', '0', '1', 0),
(139, 'Shampoo JOHNSON’S baby gotas de brillo 750 ml', '27715', '1000', '50', '0', '1', 0),
(140, 'Shampoo JOHNSON’S baby fuerza y vitamina 750 ml', '27715', '1000', '50', '0', '1', 0),
(141, 'Talco JOHNSON’S baby original 400 gr', '37375', '1000', '50', '0', '1', 0),
(142, 'Aceite JOHNSON’S baby original 300 ml', '25645', '1000', '50', '0', '1', 0),
(143, 'Talco JOHNSON’S baby original 200 gr', '21678', '1000', '50', '0', '1', 0),
(144, 'Aceite JOHNSON’S baby original 100 ml', '9890', '1000', '50', '0', '1', 0),
(145, 'Aceite JOHNSON’S baby antes de dormir 100 ml', '9718', '1000', '50', '0', '1', 0),
(146, 'COPITOS ALGODON JGB BOLSA x 50 UNIDADES', '3853', '1000', '50', '0', '1', 0),
(147, 'Acondicionador JOHNSON’S baby fuerza y vitamina 400 ml', '17998', '1000', '50', '0', '1', 0),
(148, 'Baño líquido JOHNSON’S baby antes de dormir 400 ml', '17193', '1000', '50', '0', '1', 0),
(149, 'Baño Líquido JOHNSON’S baby libre de gérmenes 400 ml', '17193', '1000', '50', '0', '1', 0),
(150, 'Baño líquido JOHNSON’S baby hidratación 400 ml', '17193', '1000', '50', '0', '1', 0),
(151, 'Rizadas Mayonesa 110 G - Yupi', '3220', '1000', '50', '0', '1', 0),
(152, 'Rizadas Mayonesa 250G', '5980', '1000', '50', '0', '1', 0),
(153, 'Papa Rizada Mayonesa Yupi X 25G X 12Und', '11730', '1000', '50', '0', '1', 0),
(154, 'Rizadas Natural 110 G - Yupi', '3220', '1000', '50', '0', '1', 0),
(155, 'Papas Rizadas Natural Yupi X 25G X 12 Unidades', '11730', '1000', '50', '0', '1', 0),
(156, 'Rizadas Tomate 115 G - Yupi', '3404', '1000', '50', '0', '1', 0),
(157, 'Rizadas Lim?n 110G', '3220', '1000', '50', '0', '1', 0),
(158, 'Papa Rizada Limon Familiar X 115 Gr - Yupi', '2967', '1000', '50', '0', '1', 0),
(159, 'Papa Rizada Limon Yupi X 25G X 12 Unidades', '11730', '1000', '50', '0', '1', 0),
(160, 'Cheese Tris Familiar X 93 Gr - Frito Lay', '2185', '1000', '50', '0', '1', 0),
(161, 'Mani Sal Frito Lay Doy Pack X 200G', '4543', '1000', '50', '0', '1', 0),
(162, 'Mani Con Pasas Unidad X50 Grs - Frito Lay', '1955', '1000', '50', '0', '1', 0),
(163, 'Mani Sal Frito Lay X50G', '1668', '1000', '50', '0', '1', 0),
(164, 'Mani Moto Frito Lay X40G', '1035', '1000', '50', '0', '1', 0),
(165, 'Mani Moto Limon Unidad - Frito Lay', '1162', '1000', '50', '0', '1', 0),
(166, 'Chokys Frito Lay X 18 G', '978', '1000', '50', '0', '1', 0),
(167, 'Chokis Frito Lay X 12 Unidades X228G', '11730', '1000', '50', '0', '1', 0),
(168, 'Casero Vainilla X 6 Porciones - Bimbo', '3393', '1000', '50', '0', '1', 0),
(169, 'Chocoso Bimbo X 65 G', '1495', '1000', '50', '0', '1', 0),
(170, 'Pinguinos Bimbo X 80G X 2Und', '2300', '1000', '50', '0', '1', 0),
(171, 'Submarino Fresa Bimbo X 60 G', '1783', '1000', '50', '0', '1', 0),
(173, 'Yupi Picantico X 45 G', '1150', '1000', '50', '0', '1', 0),
(174, 'Yupis Salados 50G', '1150', '1000', '50', '0', '1', 0),
(175, 'Tozineta Yupi X 40G', '1840', '1000', '50', '0', '1', 0),
(176, 'Tozineta Yupi Bolsa x12Und de 156G', '9890', '1000', '50', '0', '1', 0),
(177, 'Palomitas Caramelo 68G', '1840', '1000', '50', '0', '1', 0),
(178, 'Lonchera Divertida X12 Unds. 245G', '7130', '1000', '50', '0', '1', 0),
(179, 'Lonchera Diverpack X24 Unds. 481G', '12765', '1000', '50', '0', '1', 0),
(180, 'Surtido El Golpe 270 G X 6 Und??- Yupi', '8717', '1000', '50', '0', '1', 0),
(181, 'Choclito Limon 29 Gr X 12 Unidades??- Frito Lay', '10074', '1000', '50', '0', '1', 0),
(182, 'Gaseosa Pepsi Pet X 3.125 Ml - Pepsi', '5635', '1000', '50', '0', '1', 0),
(183, 'Gaseosa Pepsi Light Pet X 1500 Ml', '2668', '1000', '50', '0', '1', 0),
(184, 'Gaseosa Pepsi Light Pet X 400 Ml - Pepsi', '1725', '1000', '50', '0', '1', 0),
(185, 'Gaseosa Pepsi Pet X 400 Ml - Pepsi', '1898', '1000', '50', '0', '1', 0),
(186, 'Oferta Duo Pack Gaseosa Pepsi X 2500 Ml', '7935', '1000', '50', '0', '1', 0),
(187, 'Ofta Pack Manzana + Colombiana X 3125 Ml + Pepsi X 2000 Ml', '12305', '1000', '50', '0', '1', 0),
(188, 'Gaseosa Manzana Postobon Pet X 400 Ml', '1898', '1000', '50', '0', '1', 0),
(189, 'Gaseosa Manazana Postobon Pet X 600 Ml', '2760', '1000', '50', '0', '1', 0),
(190, 'Gaseosa Manazana Postobon Pet X 1.5 Litros', '2875', '1000', '50', '0', '1', 0),
(191, 'Gaseosa Manzana Postobon Pet X 3.125 Litros', '5923', '1000', '50', '0', '1', 0),
(192, 'Gaseosa Colombiana Pet X 400 Ml', '1898', '1000', '50', '0', '1', 0),
(193, 'Gaseosa Colombiana Pet X 1.5 Lt', '3105', '1000', '50', '0', '1', 0),
(194, 'Gaseosa Colombiana Pet X 3.125 Ml', '5923', '1000', '50', '0', '1', 0),
(195, 'Gaseosa Uva Postobon Pet X 400 Ml', '1840', '1000', '50', '0', '1', 0),
(196, 'Gaseosa Uva Postobon Cero Pet X 500 Ml', '2013', '1000', '50', '0', '1', 0),
(197, 'Gaseosa Uva Cero Postobon Pet X 1.5 Litros', '2714', '1000', '50', '0', '1', 0),
(198, 'Cocacola Light X 600Ml', '3335', '1000', '50', '0', '1', 0),
(199, 'Cocacola Con Cafe X 235Ml', '2300', '1000', '50', '0', '1', 0),
(200, 'Gaseosa Cocacola Zero X 600Ml', '3335', '1000', '50', '0', '1', 0),
(201, 'Gaseosa Cocacola Sin Azucarx 1750 Ml', '4083', '1000', '50', '0', '1', 0),
(202, 'Gaseosa Cocacola Pet 20 Onzas X600Ml', '3335', '1000', '50', '0', '1', 0),
(203, 'Gaseosa Cocacola X 1500 Ml', '4025', '1000', '50', '0', '1', 0),
(204, 'Gaseosa Cocacola Meg Fliar X 2.500 Ml', '6613', '1000', '50', '0', '1', 0),
(205, 'Gaseosa Cocacola Sixpackx250Ml', '7705', '1000', '50', '0', '1', 0),
(206, 'Gaseosa Canada Dry Friopack X 300 Ml', '2185', '1000', '50', '0', '1', 0),
(207, 'Gaseosa Canada Dry Ginger Ale X400Ml', '1898', '1000', '50', '0', '1', 0),
(208, 'Gaseosa Canada Dry Pet X 1.5 Litros', '3393', '1000', '50', '0', '1', 0),
(209, 'Gaseosa Canada Dry Pet X 2.5 Litros', '5750', '1000', '50', '0', '1', 0),
(210, 'Gaseosa Spritex400Ml', '1898', '1000', '50', '0', '1', 0),
(211, 'Gaseosa Sprite 3 Litros - Sprite', '6406', '1000', '50', '0', '1', 0),
(212, 'Gaseosa Fanta Naranja X 400Ml', '2070', '1000', '50', '0', '1', 0),
(213, 'Gaseosa Naranja X 1.5 Litros - Fanta', '3220', '1000', '50', '0', '1', 0),
(214, 'Nosotras Normal X20 Und', '11960', '1000', '50', '0', '1', 0),
(215, 'Protector Nosotras Flexibles X 30 Und', '6670', '1000', '50', '0', '1', 0),
(216, 'Toallas D/Mujer Nocturna Con Alasx8Und', '5693', '1000', '50', '0', '1', 0),
(217, 'Tampones Ob Proconfort Superx8Und', '8108', '1000', '50', '0', '1', 0),
(218, 'Toalla higiénica Nocturna Stayfree X 8 Und', '4830', '1000', '50', '0', '1', 0),
(219, 'Protectores Todos Los Días Carefree X 15 Und', '2645', '1000', '50', '0', '1', 0),
(220, 'Protectores Kotex Duo Teens X 15 Unidades', '2358', '1000', '50', '0', '1', 0),
(221, 'Tampones Ob Proconfort Minix8Und', '8108', '1000', '50', '0', '1', 0),
(222, 'Tampones Ob Proconfort Mediox8Und', '8108', '1000', '50', '0', '1', 0),
(223, 'Protector Nosotras Diarios M Estilox15Un', '2990', '1000', '50', '0', '1', 0),
(224, 'Protector Tanga Alitas Ntalx60 Und', '10925', '1000', '50', '0', '1', 0),
(225, 'Protectores Kotex Diarios Ultra Flexibles X150', '16560', '1000', '50', '0', '1', 0),
(226, 'Panitos Intimos Natural Nosotrasx16 Und', '5348', '1000', '50', '0', '1', 0),
(227, 'Protector Nosotras Diarios Largosx15 Unidades', '3565', '1000', '50', '0', '1', 0),
(228, 'Panitos Intimos Nosotras', '13168', '1000', '50', '0', '1', 0),
(229, 'Jabón Intimo Nivea Natural 250Ml', '17193', '1000', '50', '0', '1', 0),
(230, 'Jabon Intimo Nosotras Frescura Extrema X 200Ml', '14835', '1000', '50', '0', '1', 0),
(231, 'Jabon Intimo Nosotras Herbal X200Ml', '14835', '1000', '50', '0', '1', 0),
(232, 'Jabon Intimo Nosotras Sensitive X200Ml', '14835', '1000', '50', '0', '1', 0),
(233, 'Toallitas Húmedas Huggies One & Done X 80Und', '9603', '1000', '50', '0', '1', 0),
(234, 'Jabón Intimo Nivea Cuidado Suave 250Ml', '17193', '1000', '50', '0', '1', 0),
(235, 'Protector Nosotras Normal X 150 Unidades', '18343', '1000', '50', '0', '1', 0),
(236, 'Gillette Clear Gel Power Rush Desodorante 113 G', '20470', '1000', '50', '0', '1', 0),
(237, 'Rexona Desodorante Clinical Hombre Soft Solid 48Gr', '24495', '1000', '50', '0', '1', 0),
(238, 'Rexona Desodorante Clinical Hombre Sport Strenght Soft Solid 48G', '24495', '1000', '50', '0', '1', 0),
(239, 'Desodorante Mennen Speed Stick 24 7 Extreme Barra X50G', '18228', '1000', '50', '0', '1', 0),
(240, 'Rexona V8 Desodorante Barra X50G', '20758', '1000', '50', '0', '1', 0),
(241, 'Rexona Desodorante Stick Antibacterial Invisible Mx50G', '20758', '1000', '50', '0', '1', 0),
(242, 'Rexona Desodorante Rollon V8 Hombre 50Ml', '16158', '1000', '50', '0', '1', 0),
(243, 'Des Afm Roll On Clinical Big Ballx70Ml', '13915', '1000', '50', '0', '1', 0),
(244, 'Desodorante Afm Roll On Origx70Ml', '11155', '1000', '50', '0', '1', 0),
(245, 'Gilete Clear Gel Cool Wave Desodorante 113 G', '20470', '1000', '50', '0', '1', 0),
(246, 'Rexona Desodorante Clinical Mujer Classic Soft Solid 48Gr', '24495', '1000', '50', '0', '1', 0),
(247, 'Dove Desodorante Barra Serum Aclarant Mujer 50Gr', '23920', '1000', '50', '0', '1', 0),
(248, 'Dove Desodorante Stick Invisible Dryx50G', '22828', '1000', '50', '0', '1', 0),
(249, 'Dove Deo Aer Ap Clean Comfortx89G', '22023', '1000', '50', '0', '1', 0),
(250, 'Lady Speed Stick Aerosol Clinical Complete Protection X 150 Ml', '21965', '1000', '50', '0', '1', 0),
(251, 'Antitranspirante Nivea Women Serum Aerosol 100Ml', '20815', '1000', '50', '0', '1', 0),
(252, 'Desodorante Lady Speed Stick Extra Aclarado X 120 Ml', '20585', '1000', '50', '0', '1', 0),
(253, 'Rexona Desodorante Barra Cotton X50G', '20758', '1000', '50', '0', '1', 0),
(254, 'Dove Desodorante Stick Clear Tonex50G', '22828', '1000', '50', '0', '1', 0),
(255, 'Ofta 2 Dtes Nivea Dry Comfo Stickx43Gp/E', '24955', '1000', '50', '0', '1', 0),
(256, 'Antitranspirante Nivea Women Serum Roll On 50Ml', '16388', '1000', '50', '0', '1', 0),
(257, 'Dove Desodorante Rollon Dermo Aclarant 50Ml', '17825', '1000', '50', '0', '1', 0),
(258, 'Gillette Fusion5 Proshield Cartuchos Para Afeitar 4 Unidades', '82455', '1000', '50', '0', '1', 0),
(259, 'Gillette Mach3 Cartuchos Para Afeitar 6 Unidades', '53993', '1000', '50', '0', '1', 0),
(260, 'Gillette Fusion5 Proshield Cartuchos Para Afeitar 2 Unidades', '45943', '1000', '50', '0', '1', 0),
(261, 'Gillette Mach3 Sensitve Cartuchos Para Afeitar 4 Unidades', '45943', '1000', '50', '0', '1', 0),
(262, 'After Shave Nivea Balsamo Snsitive 100Ml', '33695', '1000', '50', '0', '1', 0),
(263, 'After Shave Nivea Deep 100Ml', '33695', '1000', '50', '0', '1', 0),
(264, 'Gillette Prestobarba3 Ultragrip Máquinas Para Afeitar Desechables 8 Unidades', '33235', '1000', '50', '0', '1', 0),
(265, 'Gillette Mach3 Turbo Cartuchos Para Afeitar 2 Unidades', '30130', '1000', '50', '0', '1', 0),
(266, 'Repuestos para Afeitar Gillette Mach3 Sensitive 2 Unidades', '27485', '1000', '50', '0', '1', 0),
(267, 'Gillette Venus Breeze Cartuchos Para Afeitar 2 Unidades', '26910', '1000', '50', '0', '1', 0),
(268, 'Gillette Venus Breeze Máquina Para Afeitar Recargable + 1 Cartucho Para Afeitar 1 Kit', '26910', '1000', '50', '0', '1', 0),
(269, 'Gillette Venus Tropical Máquina Para Afeitar Desechables 3 Unidades', '26163', '1000', '50', '0', '1', 0),
(270, 'Gillette Venus Sensitive Máquina Para Afeitar Recargable 1 Unidad', '26163', '1000', '50', '0', '1', 0),
(271, 'Gillette Venus Sensitive Máquina Para Afeitar Desechables 2 Unidades', '25530', '1000', '50', '0', '1', 0),
(272, 'Gillette Prestobarba3 Body Sense Máquina Para Afeitar Desechables 4 Unidades', '25243', '1000', '50', '0', '1', 0),
(273, 'Gillette Prestobarba3 Maquinas de Afeitar Desechables 4 Unidades', '25243', '1000', '50', '0', '1', 0),
(274, 'Gillette Prestobarba3 Máquina Para Afeitar Desechables 4 Und', '25243', '1000', '50', '0', '1', 0),
(275, 'Gillette Mach3 1 Máquina Para Afeitar Recargable + 2 Cartuchos 1 Kit', '24380', '1000', '50', '0', '1', 0),
(276, 'Gillette Venus Original Cartuchos Para Afeitar 2 Unidades', '23173', '1000', '50', '0', '1', 0),
(277, 'Gillette Mach3 1 Máquina Para Afeitar Recargable + 2 Cartuchos 1 Kit', '22943', '1000', '50', '0', '1', 0),
(278, 'Mach3 Sensitive Aqua Grip Máquina Para Afeitar Recargable + 2 Cartuchos Para Afeitar 1 Kit', '22943', '1000', '50', '0', '1', 0),
(279, 'Gillette Mach3 Cartuchos Para Afeitar 2 Unidades', '22770', '1000', '50', '0', '1', 0),
(280, 'Maquina Schick Quattro For Women', '20413', '1000', '50', '0', '1', 0),
(281, 'Maquina Desechable Schick Quatro Women 4 Hojasx2 Und', '17423', '1000', '50', '0', '1', 0),
(282, 'Maquina Schick Xtreme3 Sensiblex4 Unidades', '17193', '1000', '50', '0', '1', 0),
(283, 'Gillette Prestobarba3 Mujer Máquina Para Afeitar Desechables 2 Unidades', '16273', '1000', '50', '0', '1', 0),
(284, 'Gillette Prestobarba3 Hombre Máquina Para Afeitar Desechables 2 Unidades', '15468', '1000', '50', '0', '1', 0),
(285, 'Gillette Prestobarba UltraGrip 2 Máquina Para Afeitar Desechables 3 Unidades', '12593', '1000', '50', '0', '1', 0),
(286, 'Gillette Prestobarba UltraGrip Máquina Para Afeitar Desechables 3 Unidades', '12535', '1000', '50', '0', '1', 0),
(287, 'Gillette Prestobarba Excel Máquina Para Afeitar Desechables 2 Unidades', '11328', '1000', '50', '0', '1', 0),
(288, 'Gillette Prestobarba UltraGrip 3 Máquina Para Afeitar Desechables 2 Unidades', '6843', '1000', '50', '0', '1', 0),
(289, 'Desodorante Deopies Niños y Niñas x 260', '19895', '1000', '50', '0', '1', 0),
(290, 'Desodorante Deopies Piedralumbre x 260', '19895', '1000', '50', '0', '1', 0),
(291, 'Desodorante Deopies Clinical x 260 ml', '19493', '1000', '50', '0', '1', 0),
(292, 'Desodorante Deopies Antibacterial x 260 ml', '18515', '1000', '50', '0', '1', 0),
(293, 'Desodorante Deopies Antitranspirante x 260 ml', '18515', '1000', '50', '0', '1', 0),
(294, 'Desodorante Deopies Mujeres x 260 ml', '18515', '1000', '50', '0', '1', 0),
(295, 'Desodorante Deopies Xtrem x 260 ml', '18515', '1000', '50', '0', '1', 0),
(296, 'Mexsana Spray Antibacterial Cuidado de Pies Und x 260 ml', '17365', '1000', '50', '0', '1', 0),
(297, 'Desodorante Deopies Ecospray x150 ml ', '17020', '1000', '50', '0', '1', 0),
(298, 'Mexsana Talco Medicado Cuidado de Pies Und x 150 gr', '15640', '1000', '50', '0', '1', 0),
(299, 'Mexsana Talco Medicado Cuidado de Pies Und x 85 gr', '10235', '1000', '50', '0', '1', 0),
(300, 'Rexona Efficient Talco X 100G', '9200', '1000', '50', '0', '1', 0),
(301, 'Rexona Efficient Talco X60 G', '5865', '1000', '50', '0', '1', 0),
(302, 'Talco Yodora X 60 Gr', '5463', '1000', '50', '0', '1', 0),
(303, 'JABON LE FRAGANCE x100gx3und', '2818', '1000', '50', '0', '1', 0),
(304, 'Jabón en barra Protex Avena 120g', '2875', '1000', '50', '0', '1', 0),
(305, 'Dove Jabon Blanco 90Gr', '3163', '1000', '50', '0', '1', 0),
(306, 'Bacterion Gel Aseptizante Frutos Rojos x 40 ml', '43700', '1000', '50', '0', '1', 0),
(307, 'Bacterion Gel Aseptizante Antibacterial x 40 ml.', '4370', '1000', '50', '0', '1', 0),
(308, 'GEL ANTIBACTERIAL DON PRECIOx300 ml', '5175', '1000', '50', '0', '1', 0),
(309, 'Jabón Savital Avena x125g x3Und', '5693', '1000', '50', '0', '1', 0),
(310, 'Ofta 3 Dove Jabon Exfoliantex90G P.Espec', '10120', '1000', '50', '0', '1', 0),
(311, 'Papel Higienico Familia Acolchamax Grande X 4 Rollos - Familia', '6325', '1000', '50', '0', '1', 0),
(312, 'Papel Higienico Familia Acolchamax Megarollo X 1 Rollo - Familia', '2369', '1000', '50', '0', '1', 0),
(313, 'Papel Higienico Triple Hoja X 12 Rollos - Suave', '19734', '1000', '50', '0', '1', 0),
(314, 'Papel Higienico Triple Hoja X 4 Rollos - Suave', '11385', '1000', '50', '0', '1', 0),
(315, 'Detergente As Poder Azul 1000 Gr - As', '5693', '1000', '50', '0', '1', 0),
(316, 'Detergente En Polvo Ariel Doble Poder X 2 Kg - Ariel', '13030', '1000', '50', '0', '1', 0),
(317, 'Detergente Líquido Ariel Concentrado Doble Poder X 1.2 Litros - Ariel', '13685', '1000', '50', '0', '1', 0),
(318, 'Detergente En Polvo X 4000 G - Top Terra', '20484', '1000', '50', '0', '1', 0),
(319, 'Detergente As Bicarbonato Y Manzana X 2000 Gr - As', '10408', '1000', '50', '0', '1', 0),
(320, 'Limpido Frasco X 1000 Ml', '3623', '1000', '50', '0', '1', 0),
(321, 'Lavaloza Axion Limín Líquido 750Ml', '8913', '1000', '50', '0', '1', 0),
(322, 'Lavaloza Liquido Top Terra X 1000Ml', '8395', '1000', '50', '0', '1', 0),
(323, 'Lavaloza Axion Aloe Y Vitamina E Crema 450G X 2 Unds', '9488', '1000', '50', '0', '1', 0),
(324, 'Lavaloza Axion Limón Crema 450G', '5118', '1000', '50', '0', '1', 0),
(325, 'Lavaloza Axion Limón Crema 850G', '9948', '1000', '50', '0', '1', 0),
(326, 'Limpia Pisos Superficies Fabuloso Altern Al Cloro Fresco Lavanda 720Ml Doyp', '6843', '1000', '50', '0', '1', 0),
(327, 'Jabon Rey 300G', '1725', '1000', '50', '0', '1', 0),
(328, 'Jabon De Lavar 300 G - Coco', '3036', '1000', '50', '0', '1', 0),
(329, 'Jabon Terra 250 Gr - Top Terra', '1783', '1000', '50', '0', '1', 0),
(330, 'Jabon Super Rielx400G', '1702', '1000', '50', '0', '1', 0),
(331, 'Jabon Liquido Protex Avena D/Packx500G', '8798', '1000', '50', '0', '1', 0),
(332, 'Shampoo Head & Shoulders Hidratación Aceite De Coco Shampoo 180 Ml', '12363', '1000', '50', '0', '1', 0),
(333, 'Shampoo Head & Shoulders Hidratación Aceite De Coco Shampoo 375 Ml', '22368', '1000', '50', '0', '1', 0),
(334, 'Shampoo Head & Shoulders Suave Y Manejable 2En1 X 700Ml - H&S', '29268', '1000', '50', '0', '1', 0),
(335, 'Shampoo Head & Shoulders Old Spice Para Hombres 180Ml', '11845', '1000', '50', '0', '1', 0),
(336, 'Shampoo Head & Shoulders Old Spice Para Hombres X 700Ml - H&S', '29268', '1000', '50', '0', '1', 0),
(337, 'Shampoo Savital Multivitaminas X 550 Ml - Savital', '16043', '1000', '50', '0', '1', 0),
(338, 'Shampoo Savital Biotina X 550 Ml - Savital', '14663', '1000', '50', '0', '1', 0),
(339, 'Shampoo Savital Anticaspa X 550 Ml - Savital', '11817', '1000', '50', '0', '1', 0),
(340, 'Shampoo Savital Colagen Y Sabilax550Ml', '16043', '1000', '50', '0', '1', 0),
(341, 'Shampoo Johnson’S Baby Manzanilla X 750 Ml - Johnson S', '27715', '1000', '50', '0', '1', 0),
(342, 'Shampoo Johnson\'S Baby Manzanilla 400 Ml', '18285', '1000', '50', '0', '1', 0),
(343, 'Shampoo Johnson\'S Baby Manzanilla 200 Ml', '12938', '1000', '50', '0', '1', 0),
(344, 'Shampoo Johnson\'S Baby Original X 750 Ml ', '27715', '1000', '50', '0', '1', 0),
(345, 'Shampoo Johnson\'S Baby Original 400 Ml', '18285', '1000', '50', '0', '1', 0),
(346, 'Shampoo Johnson\'S Baby Original 200 Ml', '13340', '1000', '50', '0', '1', 0),
(347, 'Shampoo Black 400 Ml - Ego', '17768', '1000', '50', '0', '1', 0),
(348, 'Fab Polvo Floral X 450G', '3623', '1000', '50', '0', '1', 0),
(349, 'Fab Polvo Floralx850G', '6843', '1000', '50', '0', '1', 0),
(350, 'Fab Detergente En Polvo Floral Lavado Perfecto 2Kg', '13455', '1000', '50', '0', '1', 0),
(351, 'Fab Detergente Liquido Floral Lavado Perfecto 1.8L', '12593', '1000', '50', '0', '1', 0),
(352, 'Ariel Oxi Poder Detergente En Polvo Para Lavar Ropa Blanca Y De Color 2 Kg', '14605', '1000', '50', '0', '1', 0),
(353, 'Ariel Doble Poder Detergente En Polvo Para Lavar Ropa Blanca Y De Color 450 G', '4140', '1000', '50', '0', '1', 0),
(354, 'Ariel Doble Poder Detergente En Polvo Para Lavar Ropa Blanca Y De Color 1 Kg', '8970', '1000', '50', '0', '1', 0),
(355, 'Deterg Polvo Ariel Revitacolor X4000G', '33695', '1000', '50', '0', '1', 0),
(356, 'Limpido Multiusos Regular X 3800 Ml - Limpido', '13133', '1000', '50', '0', '1', 0),
(357, 'Detergente En Polvo Bicarbonato Canela X 2 Kg - As', '9131', '1000', '50', '0', '1', 0),
(358, 'Papel Higienico Triple Hoja X 12 Rollos - Suave', '25013', '1000', '50', '0', '1', 0),
(359, 'Papel Higienico Rindemax X 12 Rollos - Scott', '15583', '1000', '50', '0', '1', 0),
(360, 'Papel Higienico Acmax X 12R - Familia', '19550', '1000', '50', '0', '1', 0),
(361, 'Limpia Pisos Ajax Bicarbonato Naranja Limon 1L', '7590', '1000', '50', '0', '1', 0),
(362, 'Limpia Pisos Ajax Bicarbonato Naranja Limon 1.5L Doyp', '8798', '1000', '50', '0', '1', 0),
(363, 'Purina Tidy Cats Lasting Odor X4.54 Kg', '26910', '1000', '50', '0', '1', 0),
(364, 'Shampoo Bolfo Tubo X 100 Ml', '16043', '1000', '50', '0', '1', 0),
(365, 'Eliminador D Olores Petys X280Ml', '15410', '1000', '50', '0', '1', 0),
(366, 'Jabon Para Perro Asuntol Sabila Con Base 90 Gr', '11328', '1000', '50', '0', '1', 0),
(367, 'Jabon Para Perro Asuntol Regular Con Base X 90 Gr', '10810', '1000', '50', '0', '1', 0),
(368, 'Panitos Humedos Freskipets Mascotax50Und', '7993', '1000', '50', '0', '1', 0),
(369, 'Alimento Nidalia P Canarios X 1000G', '10178', '1000', '50', '0', '1', 0),
(370, 'Alimento Nidalia P Hamsters X 250 G', '4025', '1000', '50', '0', '1', 0),
(371, 'Alimento Nidalia P Paja.Silvestrex1000G', '5750', '1000', '50', '0', '1', 0),
(372, 'Alimento Nidalia Para Pericos X 1000G', '10178', '1000', '50', '0', '1', 0),
(373, 'Alimento Chunky Cachorros Nugx2Kg', '20585', '1000', '50', '0', '1', 0),
(374, 'Alimento P Perros Adultos Nutrionx2000G', '12593', '1000', '50', '0', '1', 0),
(375, 'Alimento P Perros Adultos Nutrionx4000G', '24208', '1000', '50', '0', '1', 0),
(376, 'Alimentos Nutrion Gatos X1500 G', '11443', '1000', '50', '0', '1', 0),
(377, 'Alimentos Nutrion Gatos X 500 G', '4198', '1000', '50', '0', '1', 0),
(378, 'Alimento P Peces Aqua Maxx20G', '2243', '1000', '50', '0', '1', 0),
(379, 'Alimento Chunky Cats X 500 G', '5348', '1000', '50', '0', '1', 0),
(380, 'Alimentos Chunky Adulto X 2 Kg', '17135', '1000', '50', '0', '1', 0),
(381, 'Vita Ave X 1000 G', '8855', '1000', '50', '0', '1', 0),
(382, 'Cacahuates P Loros Guacam Cacatuasx130G', '3278', '1000', '50', '0', '1', 0),
(383, 'Ladrina Carne Hueso Vegetales Recetax2Kg', '14835', '1000', '50', '0', '1', 0),
(384, 'Ladrina Carne Hueso Vegetales Recetax4Kg', '26048', '1000', '50', '0', '1', 0),
(385, 'Ladrina Cachor Carne Cerea Lech Recx2Kg', '14835', '1000', '50', '0', '1', 0),
(386, 'Alimento P Perros Nutro X 800 G', '2933', '1000', '50', '0', '1', 0),
(387, 'Alimento Gatsy Carne Arroz Maizx500G', '6095', '1000', '50', '0', '1', 0),
(388, 'Alimento Gatsy Pescado Arroz Espinacax500G', '6095', '1000', '50', '0', '1', 0),
(389, 'Cat Chow Vida Sana X1.3Kg', '33293', '1000', '50', '0', '1', 0),
(390, 'Cat Chow Vida Sana X 450 G', '13685', '1000', '50', '0', '1', 0),
(391, 'Alimento Para Perros Deli Dogx400G', '7993', '1000', '50', '0', '1', 0),
(392, 'Alimento Dogourme Carne Adulto Parrilla X2000G', '26565', '1000', '50', '0', '1', 0),
(393, 'Alimento Dogourmet Pollo Adulto Parrilla X1000G', '14433', '1000', '50', '0', '1', 0),
(394, 'Ladrina Cachorro Carne Cer Lechex1000G', '7360', '1000', '50', '0', '1', 0),
(395, 'Alimento P Perros Pollo Arroz Vegx395G', '6900', '1000', '50', '0', '1', 0),
(396, 'Alimento Chunky Cordero X 1.5Kilos', '24093', '1000', '50', '0', '1', 0),
(397, 'Alimento Dog Chow Cordero Arroz Lata X 374G', '8625', '1000', '50', '0', '1', 0),
(398, 'Cat Chow Vida Sana X 3000G', '91885', '1000', '50', '0', '1', 0),
(399, 'Alimento Felix Gatos Pate Pesc Atunx156G', '5865', '1000', '50', '0', '1', 0),
(400, 'Alimento Felix Gatos Salmonx156G', '6095', '1000', '50', '0', '1', 0),
(401, 'Alimento Felix Gatos Pavo Menudenx156G', '6095', '1000', '50', '0', '1', 0),
(402, 'Alimento Felix Gatos Filete Pes Atx156G', '5865', '1000', '50', '0', '1', 0),
(403, 'Alimento Felix Gatos Pate Sens Marix156G', '5520', '1000', '50', '0', '1', 0),
(404, 'Dog Chow Cachorros Minis Y Pequeños', '3404', '1000', '50', '0', '1', 0),
(405, 'Dog Chow Adultos Medianos Y Grandes Rojo', '26335', '1000', '50', '0', '1', 0),
(406, 'Alimento Dog Chow Picnic Corderox100G', '3450', '1000', '50', '0', '1', 0),
(407, 'Alimento Dog Chow Cena De Pavo X 100G', '3335', '1000', '50', '0', '1', 0),
(408, 'Alimento Dog Chow Festival De Pollo X100G', '3335', '1000', '50', '0', '1', 0),
(409, 'Alimento Dog Chow Cachorro Trozos De Pollox100G', '3335', '1000', '50', '0', '1', 0),
(410, 'Alimento Cat Chow Gatitos Fortidefx500G', '13858', '1000', '50', '0', '1', 0),
(411, 'Alimento Cat Chow Gatitos Fortidefx1500G', '36743', '1000', '50', '0', '1', 0),
(412, 'Cat Ch Ad Hogarenos Fortidefense 500 G', '13685', '1000', '50', '0', '1', 0),
(413, 'Cat Ch Ad Act Carne Fortidefense 1500G', '38985', '1000', '50', '0', '1', 0),
(414, 'Cat Ch Ad Delimix Fortidefense 1500G', '38985', '1000', '50', '0', '1', 0),
(415, 'Whiskas Sobre Adulto Carne 85G', '3048', '1000', '50', '0', '1', 0),
(416, 'Whiskas Sobre Adulto Salmon 85G', '2933', '1000', '50', '0', '1', 0),
(417, 'Whiskas Sobre Gatitos Carne 85G', '3048', '1000', '50', '0', '1', 0),
(418, 'Whiskas Sobre Adulto Atun 85G', '3048', '1000', '50', '0', '1', 0),
(419, 'Pedigree Sobre Adulto Raza Pequeña Pollo 100G', '3163', '1000', '50', '0', '1', 0),
(420, 'Pedigree Sobre Adulto Raza Pequeña Carne 100G', '3278', '1000', '50', '0', '1', 0),
(421, 'Pedigree Sobre Cachorro Pollo 100G', '3163', '1000', '50', '0', '1', 0),
(422, 'Pedigree Cachorros Carne 100 G', '3163', '1000', '50', '0', '1', 0),
(423, 'Pedigree Adulto Carne 100G', '3163', '1000', '50', '0', '1', 0),
(424, 'Whiskas Sobre Adulto Pollo 85G', '2875', '1000', '50', '0', '1', 0),
(425, 'Dog Chow Longevidad Adultos 7+', '31050', '1000', '50', '0', '1', 0),
(426, 'Dog Chow Adultos Control De Peso', '31050', '1000', '50', '0', '1', 0),
(427, 'Alimento Hum Sensaciones Pollo Higado Felix X85G', '3450', '1000', '50', '0', '1', 0),
(428, 'Alimento Chunky Adulto Razas Pequx500G', '4313', '1000', '50', '0', '1', 0),
(429, 'Dog Chow Festival Trozos De Pollo X368 G', '8625', '1000', '50', '0', '1', 0),
(430, 'Dog Chow Cachorros Todos Los Tamaños Sin Colorantes', '28980', '1000', '50', '0', '1', 0),
(431, 'Dog Chow Adultos Medianos Y Grandes Sin Colorantes Mediano', '28693', '1000', '50', '0', '1', 0),
(432, 'Dog Chow Adultos Minis Y Pequeños Sin Colorantes', '30993', '1000', '50', '0', '1', 0),
(433, 'Alimento Dogou Carne Adulto Parrix1000G', '14433', '1000', '50', '0', '1', 0),
(434, 'Alimento P/Perro Delicaprichosx160G', '4945', '1000', '50', '0', '1', 0),
(435, 'Alimento Para Gatos Purina Felix Filete Salmon X 156 Gr', '5520', '1000', '50', '0', '1', 0),
(436, 'Snack D/Ch Abrazzos Tartitas X 75G', '10925', '1000', '50', '0', '1', 0),
(437, 'Gatsy Carne Arroz Maiz X3Kg', '34385', '1000', '50', '0', '1', 0),
(438, 'Aliment Chunky Dilidog Tro Carn Resx250G', '4888', '1000', '50', '0', '1', 0),
(439, 'Alimento Chunky Dilidog Troz D Pavox250G', '4888', '1000', '50', '0', '1', 0),
(440, 'Whiskas Gatitos Pollox 85G', '3278', '1000', '50', '0', '1', 0),
(441, 'Alimento Whiskas Carne Origx1.5K', '31740', '1000', '50', '0', '1', 0),
(442, 'Alimento Whiskas Pescadox1.5G', '31740', '1000', '50', '0', '1', 0),
(443, 'Alimento Chunky Adulto Razas Pequx1500G', '12938', '1000', '50', '0', '1', 0),
(444, 'Salchicha Ranchera X 480 G - RANCHERA', '17135', '1000', '50', '0', '1', 0),
(445, 'Salchicha Ranchera X 230 - RANCHERA', '7200', '1000', '50', '0', '1', 0),
(446, 'Mantequilla Colanta sin Sal Barra x 250 gr - COLANTA', '6313', '1000', '50', '0', '1', 0),
(447, 'Mantequilla Alpina Sin Sal Barra x 125 g - ALPINA', '4885', '1000', '50', '0', '1', 0),
(448, 'Mantequilla Campi Esparcible con Sal x 250 gr - CAMPI\n', '4600', '1000', '50', '0', '1', 0),
(449, 'Mantequilla Alpina con Sal x 250 g - ALPINA', '8900', '1000', '50', '0', '1', 0),
(450, 'Mantequilla Campi Esparcible con Sal x 500 g - CAMPI', '9550', '1000', '50', '0', '1', 0),
(451, 'Atun Lomitos En Aceite Girasol - ISABEL', '6624', '1000', '50', '0', '1', 0),
(452, 'Atun Claro Lomitos En Agua - ISABEL', '5750', '1000', '50', '0', '1', 0),
(453, 'Lomitos De Atun En Aceite De Oliva Tripack - ISABEL', '20234', '1000', '50', '0', '1', 0),
(454, 'Lomitos De Atun En Aceite De Oliva Tripack - ISABEL', '20250', '1000', '50', '0', '1', 0),
(455, 'Galletas Taco Extralargo x 294 gr - DUCALES', '4130', '1000', '50', '0', '1', 0),
(456, 'Taco Galletas X 6 X 728 gr - DUCALES', '9250', '1000', '50', '0', '1', 0),
(457, 'Mantequilla 3 Tacos - SALTINAS', '4500', '1000', '50', '0', '1', 0),
(458, 'Saltinas original 3 tacos 318 gr - SALTINAS', '4400', '1000', '50', '0', '1', 0),
(459, 'Lonchera Megapack 589 g x 30 und - YUPI', '13248', '1000', '50', '0', '1', 0),
(461, 'Lonchera ponquecitos 7 und x 234 g - BIMBO', '5600', '1000', '50', '0', '1', 0),
(462, 'prueba', '1500', '1000', '10', '0', '1', 0),
(463, 'preuba2', '11', '1', '22', '0', '1', 0),
(464, 'aaa', '22', '22', '2', '0', '1', 0),
(465, 'eeeeaaaaaaaaaa', '5555', '5555', '5555', '0', '1', 0),
(475, 'papas fritas ', '2000', '1500', '5', '0', '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Vendedor'),
(5, 'Gerente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `tipoDocumento` int(11) NOT NULL,
  `documento` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rol` int(11) NOT NULL,
  `usu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `tipoDocumento`, `documento`, `telefono`, `direccion`, `rol`, `usu`, `pass`, `estado`) VALUES
(12, 'Angela', 1, '1', '1', 'a1', 1, 'az1', '202cb962ac59075b964b07152d234b70', 1),
(13, 'Alex', 1, '1', '1', 'a1', 2, 'az2', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistausu`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistausu` (
`ID` int(11)
,`usuario` varchar(90)
,`tipo` varchar(30)
,`DOCUMENTO` varchar(20)
,`telefono` varchar(12)
,`Direccion` varchar(60)
,`Rol` varchar(50)
,`Estado` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vistausu`
--
DROP TABLE IF EXISTS `vistausu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistausu`  AS SELECT `u`.`id` AS `ID`, `u`.`usuario` AS `usuario`, `d`.`tipo_documento` AS `tipo`, `u`.`documento` AS `DOCUMENTO`, `u`.`telefono` AS `telefono`, `u`.`direccion` AS `Direccion`, `r`.`rol` AS `Rol`, `e`.`tipo_estado` AS `Estado` FROM (((`usuarios` `u` join `roles` `r` on(`u`.`rol` = `r`.`id`)) join `estados` `e` on(`u`.`estado` = `e`.`id`)) join `documentos` `d` on(`u`.`tipoDocumento` = `d`.`id`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idFactura` (`idFactura`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado` (`estado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proUsu` (`proUsu`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipoDocumento` (`tipoDocumento`),
  ADD KEY `rol` (`rol`),
  ADD KEY `estado` (`estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`id`),
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estados` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`tipoDocumento`) REFERENCES `documentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`estado`) REFERENCES `estados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
