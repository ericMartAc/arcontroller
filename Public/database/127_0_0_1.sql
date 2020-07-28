-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2020 a las 05:48:58
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arcontroller`
--
CREATE DATABASE IF NOT EXISTS `arcontroller` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `arcontroller`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) UNSIGNED NOT NULL,
  `razonSocialCliente` varchar(500) NOT NULL,
  `tipoIdentCliente` varchar(10) NOT NULL,
  `IdentCliente` varchar(50) NOT NULL,
  `direccionCliente` varchar(1000) NOT NULL,
  `ciudadCliente` varchar(500) NOT NULL,
  `dptoCliente` varchar(500) NOT NULL,
  `paisCliente` varchar(500) NOT NULL,
  `telCliente` varchar(20) NOT NULL,
  `emailCliente` varchar(500) NOT NULL,
  `reprLegalCliente` int(30) UNSIGNED NOT NULL,
  `pswCliente` varchar(200) NOT NULL,
  `seudoCliente` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `razonSocialCliente`, `tipoIdentCliente`, `IdentCliente`, `direccionCliente`, `ciudadCliente`, `dptoCliente`, `paisCliente`, `telCliente`, `emailCliente`, `reprLegalCliente`, `pswCliente`, `seudoCliente`) VALUES
(1, 'Coolechera', 'nit', '45528323-9', 'cll 85 # 74 - 85', 'Bogota', 'Cundinamarca', 'Colombia', '3256698', 'qwe@df.com', 11, '123', 'CLCH'),
(2, 'Colanta', 'nit', '996862236-9', 'cll 85 # 74 - 86', 'Bogota', 'Cundinamarca', 'Colombia', '3148579', 'defrv@efew.com', 16, '456', 'CLNT'),
(3, 'Gregory marcs', 'rut', '1075875694', 'cll 85 # 74 - 87', 'Cali', 'Valle del cauca', 'Colombia', '3659871', 'edfewfcdwc@fwefc.com', 10, '789', 'GRMC'),
(4, 'Uberrimo', 'nit', '665652656-3', 'cll 85 # 74 - 89', 'Armenia', 'Quindio', 'Colombia', '3115478', 'ewfewcew@dvev.com', 18, '852', 'OLCR'),
(5, 'Cisco', 'nit', '6632543-7', 'cll 85 # 74 - 90', 'Manizales', 'Caldas', 'Colombia', '3668745', 'ddvefhtyu@dfved.com', 17, '963', 'CSCO'),
(6, 'Microsoft', 'nit', '32548596-7', 'cll 85 # 74 - 91', 'Pereira', 'Risaralda', 'Colombia', '3116589', 'frgtyev@rcergv.com', 14, '159', 'MSOF'),
(7, 'Mountains', 'nit', '52458753-1', 'cll 85 # 74 - 92', 'Cali', 'Valle del cauca', 'Colombia', '3246988', 'qwe@df.com', 12, '753', 'MNTN'),
(8, 'Europe', 'nit', '645487596-5', 'cll 85 # 74 - 93', 'Envigado', 'Antioquia', 'Colombia', '3229689', 'defrv@efew.com', 15, '486', 'EURO'),
(9, 'coca-cola', 'nit', '900759153-1', 'cll 85 # 74 - 103', 'Envigado', 'Antioquia', 'Colombia', '3148596', 'ewfewcew@dvev.com', 13, '630', 'CCLA'),
(10, 'la narco finca de uribe', 'rut', '6660666', 'cll 85 # 74 - 105', 'Envigado', 'Antioquia', 'Colombia', '3006666', 'elcapo@parapolitica.com', 18, '666', 'PARA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `idContratos` int(11) UNSIGNED NOT NULL,
  `nombreContrato` varchar(500) NOT NULL,
  `idCliente` int(11) UNSIGNED NOT NULL,
  `idPersona` int(11) UNSIGNED NOT NULL,
  `tipoContrato` varchar(300) NOT NULL,
  `descripContrato` varchar(2000) NOT NULL,
  `inicioContrato` date NOT NULL,
  `finContrato` date NOT NULL,
  `hrefContrato` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`idContratos`, `nombreContrato`, `idCliente`, `idPersona`, `tipoContrato`, `descripContrato`, `inicioContrato`, `finContrato`, `hrefContrato`) VALUES
(1, 'oficina boole', 10, 1, 'mtto corr AA', 'gfg sgfdsgg fgdfgdfdfg fg fdg dfg fg dfg fdg fgdf gfdcf d', '0000-00-00', '0000-00-00', 'http://ui.edu.es'),
(2, 'cajas hulk', 2, 2, 'mtto corr AA', 'gfg sgfdsgg fgdfgdfdfg fg fdg dfg fg dfg fdg fgdf gfdcf d', '0000-00-00', '0000-00-00', 'http://ui.edu.es'),
(3, 'bodega coki', 10, 1, 'mtto prev rut AA', 'gfg sgfdsgg fgdfgdfdfg fg fdg dfg fg dfg fdg fgdf gfdcf d', '0000-00-00', '0000-00-00', 'http://ui.edu.es'),
(4, 'cocina zoo', 4, 2, 'instal AA', 'gfg sgfdsgg fgdfgdfdfg fg fdg dfg fg dfg fdg fgdf gfdcf d', '0000-00-00', '0000-00-00', 'http://ui.edu.es'),
(5, 'oficina princial', 4, 1, 'instal AA', 'gfg sgfdsgg fgdfgdfdfg fg fdg dfg fg dfg fdg fgdf gfdcf d', '0000-00-00', '0000-00-00', 'http://ui.edu.es'),
(6, 'local urbaniz', 2, 2, 'instal AA', 'gfg sgfdsgg fgdfgdfdfg fg fdg dfg fg dfg fdg fgdf gfdcf d', '0000-00-00', '0000-00-00', 'http://ui.edu.es'),
(7, 'los coches', 4, 3, 'mtto prev rut AA', 'gfg sgfdsgg fgdfgdfdfg fg fdg dfg fg dfg fdg fgdf gfdcf d', '0000-00-00', '0000-00-00', 'http://ui.edu.es'),
(8, 'casa predium', 1, 3, 'mtto prev rut AA', 'gfg sgfdsgg fgdfgdfdfg fg fdg dfg fg dfg fdg fgdf gfdcf d', '0000-00-00', '0000-00-00', 'http://ui.edu.es'),
(9, 'jinca el diablo', 5, 1, 'mtto prev rut AA', 'gfg sgfdsgg fgdfgdfdfg fg fdg dfg fg dfg fdg fgdf gfdcf d', '0000-00-00', '0000-00-00', 'http://ui.edu.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2020_04_04_180207_create_usuarios_table', 1),
(3, '2020_04_04_182146_create_personas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idPersona` int(11) UNSIGNED NOT NULL,
  `fotoPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombresPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidosPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoIdentPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noIdentPersona` int(30) UNSIGNED NOT NULL,
  `clasePersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivelEduPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccionPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudadPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deptoPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paisPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telCelPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telFijoPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firmaPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaNacPersona` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `psw_persona` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idPersona`, `fotoPersona`, `nombresPersona`, `apellidosPersona`, `tipoIdentPersona`, `noIdentPersona`, `clasePersona`, `nivelEduPersona`, `direccionPersona`, `ciudadPersona`, `deptoPersona`, `paisPersona`, `telCelPersona`, `emailPersona`, `telFijoPersona`, `firmaPersona`, `fechaNacPersona`, `created_at`, `updated_at`, `psw_persona`) VALUES
(1, 'e', 'Eric Arturo', 'Martinez Acelas', 'c.c.', 1140851982, 'Empleado', 'Tecnologo', 'Calle 61 no 12 - 57', 'Soledad', 'Atlantico', 'Colombia', '3173730716', 'norte@outlook.com', '3167959', 'EM', '16/06/1992', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Rouse2017*'),
(2, 'e', 'Juan Fernando', 'Quintero Vargas', 'c.c.', 1020831984, 'Empleado', 'Ingeniero', 'Calle 124 no 45 - 115', 'Pasto', 'Narino', 'Colombia', '3162231733', 'sur@outlook.com', '3064787', 'JQ', '09/12/1997', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '123456'),
(3, 'e', 'Luis Jose', 'Lopez Viveros', 'c.c.', 1023938753, 'Empleado', 'Administrador de empresa', 'Calle 110 no 12 - 57', 'Bogota', 'Cundinamarca', 'Colombia', '3103031736', 'centro@outlook.com', '3157043', 'LL', '21/02/1997', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'QWERTY'),
(4, 'e', 'Marco ernesto', 'Mendez Buitrago', 'c.c.', 8758452, 'Empleado', 'Ingeniero', 'Calle 84 no 25 - 12', 'Cartagena', 'Bolivar', 'Colombia', '3200231298', 'elmakia@outlook.com', '3246522', 'MM', '11/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abcd'),
(10, 'e', 'Juan Camilo', 'Pumarejo Soto', 'c.c.', 9873556, 'Cliente', 'Primaria', 'calle 88 # 78 - 88', 'Barranquilla', 'Atlantico', 'Colombia', '52485666', 'rgfergverg@efewgf.com', '7854228', 'j', '12/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '752'),
(11, 'e', 'Miguel Estevan', 'Fonseca Gomes', 'c.c.', 87687638, 'Cliente', 'Secundaria', 'calle 88 # 78 - 89', 'Bogota', 'Cundinamarca', 'Colombia', '66685869', 'rgfergverg@efewgf.com', '54785124', 'm', '13/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '952'),
(12, 'e', 'Willian Moises', 'Antequera Guillem', 'c.c.', 6545465, 'Cliente', 'Ingeniero', 'calle 88 # 78 - 90', 'Bogota', 'Cundinamarca', 'Colombia', '64646455', 'rgfergverg@efewgf.com', '8542845', 'w', '14/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '124'),
(13, 'e', 'Luisa Camila', 'Lein De Superman', 'c.c.', 35454354, 'Cliente', 'Administrador de empresa', 'calle 88 # 78 - 91', 'Bogota', 'Cundinamarca', 'Colombia', '4587568', 'rgfergverg@efewgf.com', '8795486', 'l', '15/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '326'),
(14, 'e', 'Bulma Xiomara', 'Saotome Kendo', 'c.c.', 35383838, 'Cliente', 'Ingeniero', 'calle 88 # 78 - 92', 'Cali', 'Valle del cauca', 'Colombia', '58457552', 'rgfergverg@efewgf.com', '548564', 'b', '16/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '7410'),
(15, 'e', 'Curochan Jose', 'Castro Chavez', 'c.c.', 68686383, 'Cliente', 'Administrador de empresa', 'calle 88 # 78 - 93', 'Barranquilla', 'Atlantico', 'Colombia', '54852145', 'rgfergverg@efewgf.com', '5874587', 'c', '17/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8520'),
(16, 'e', 'Gonzalo Gonzalo', 'Gonzales Gonzales', 'c.c.', 338383683, 'Cliente', 'Administrador de empresa', 'calle 88 # 78 - 94', 'Cali', 'Valle del cauca', 'Colombia', '52458752', 'rgfergverg@efewgf.com', '41475582', 'g', '18/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '9630'),
(17, 'e', 'Marco Miguel', 'Suarez Basoalto', 'c.c.', 2147483647, 'Cliente', 'Administrador de empresa', 'calle 88 # 78 - 95', 'Cali', 'Valle del cauca', 'Colombia', '5236542', 'rgfergverg@efewgf.com', '55175252', 'm', '19/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8753'),
(18, 'e', 'Advaro', 'Urive Belez', 'c.c.', 6660666, 'Cliente', 'Ratologo', 'calle 88 # 78 - 96', 'Rionegro', 'Antioquia', 'Colombia', '741325475', 'rgfergverg@efewgf.com', '25125366', 'a', '20/02/1977', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '666');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos`
--

CREATE TABLE `puntos` (
  `idPunto` int(11) UNSIGNED NOT NULL,
  `nombrePunto` varchar(300) NOT NULL,
  `responsablePunto` int(11) UNSIGNED NOT NULL,
  `dirPunto` varchar(300) NOT NULL,
  `ciudadPunto` varchar(300) NOT NULL,
  `dptoPunto` varchar(300) NOT NULL,
  `paisPunto` varchar(300) NOT NULL,
  `telPunto` varchar(300) NOT NULL,
  `emailPunto` varchar(300) NOT NULL,
  `propietarioPunto` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puntos`
--

INSERT INTO `puntos` (`idPunto`, `nombrePunto`, `responsablePunto`, `dirPunto`, `ciudadPunto`, `dptoPunto`, `paisPunto`, `telPunto`, `emailPunto`, `propietarioPunto`) VALUES
(1, 'matriz', 1, 'calle 45 # 55 -788', 'Bogota', 'Cundinamarca', 'Colombia', '3254714', 'gtrbgr@gtbv.com', 1),
(2, 'Norte', 2, 'calle 86 # 51b - 51 bodega S3', 'Barranquilla', 'Atlantico', 'Colombia', '3698574', 'gtrbgr@gtbv.com', 1),
(3, 'Centro', 3, 'kra 33 # 56 - 33', 'Bogota', 'Cundinamarca', 'Colombia', '3276578', 'gtrbgr@gtbv.com', 1),
(4, 'Sur', 4, 'calle 21 # 99 - 7,6', 'Leticia', 'Amazonas', 'Colombia', '3998785', 'snusnus@uga.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `rel_cliente_persona` (`reprLegalCliente`);

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`idContratos`),
  ADD KEY `idCliente` (`idCliente`,`idPersona`),
  ADD KEY `rel_contrato_responsable` (`idPersona`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idPersona`);

--
-- Indices de la tabla `puntos`
--
ALTER TABLE `puntos`
  ADD PRIMARY KEY (`idPunto`),
  ADD KEY `propietarioPunto` (`propietarioPunto`),
  ADD KEY `responsablePunto` (`responsablePunto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
  MODIFY `idContratos` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idPersona` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2001;

--
-- AUTO_INCREMENT de la tabla `puntos`
--
ALTER TABLE `puntos`
  MODIFY `idPunto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `rel_cliente_persona` FOREIGN KEY (`reprLegalCliente`) REFERENCES `personas` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD CONSTRAINT `rel_contrato_cliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_contrato_responsable` FOREIGN KEY (`idPersona`) REFERENCES `personas` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `puntos`
--
ALTER TABLE `puntos`
  ADD CONSTRAINT `rel_punto_propietario` FOREIGN KEY (`propietarioPunto`) REFERENCES `personas` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_punto_responsable` FOREIGN KEY (`responsablePunto`) REFERENCES `personas` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
