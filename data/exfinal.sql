-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-12-2023 a las 00:33:06
-- Versión del servidor: 8.0.35-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `exfinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_compras`
--

CREATE TABLE `carrito_compras` (
  `idCarrito_Compras` int NOT NULL,
  `cantidad` int NOT NULL,
  `idProductos` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripfis`
--

CREATE TABLE `descripfis` (
  `idDescripFis` int NOT NULL,
  `edad` int DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `peso` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenamiento`
--

CREATE TABLE `entrenamiento` (
  `idEntrenamiento` int NOT NULL,
  `tipo_Entrenamiento` varchar(45) NOT NULL,
  `Precio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `entrenamiento`
--

INSERT INTO `entrenamiento` (`idEntrenamiento`, `tipo_Entrenamiento`, `Precio`) VALUES
(1, '1 Mes', 120000),
(2, '1 Mes + Entrenamiento Personalizado', 250000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensualidad`
--

CREATE TABLE `mensualidad` (
  `FechaPago` date NOT NULL,
  `FechaVencimiento` date NOT NULL,
  `idUsuarios` int NOT NULL,
  `Entrenamiento_idEntrenamiento` int NOT NULL,
  `DescripFis_idDescripFis` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenproducto`
--

CREATE TABLE `ordenproducto` (
  `idOrden` int NOT NULL,
  `FechaCompra` date NOT NULL,
  `idCarrito_Compras` int NOT NULL,
  `idUsuarios` int NOT NULL,
  `TotalPrecio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idPermisos` int NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int NOT NULL,
  `Nombre_Prod` varchar(45) NOT NULL,
  `Descrip_Corta` varchar(45) DEFAULT NULL,
  `idProd_categorias` int NOT NULL,
  `idProd_Marcas` int NOT NULL,
  `precio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `Nombre_Prod`, `Descrip_Corta`, `idProd_categorias`, `idProd_Marcas`, `precio`) VALUES
(1, 'Proteina 100% Whey Gold Standard', 'Proteina 100% Whey Gold Standard', 1, 1, 900000),
(2, 'Creatina LanderFit Monohidratada', 'Creatina LanderFit Monohidratada', 2, 2, 250),
(3, 'Trembolona Acetato', 'Trembolona Acetato', 4, 4, 150000),
(4, 'Proteina 100% Whey Gold Standard', 'Proteina 100% Whey Gold Standard', 1, 1, 100000),
(5, 'Proteina 100% Whey Gold Standard', 'Proteina 100% Whey Gold Standard', 1, 1, 100000),
(6, 'Proteina 100% Whey Gold Standard', 'Proteina 100% Whey Gold Standard', 1, 1, 100000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prod_categorias`
--

CREATE TABLE `prod_categorias` (
  `idProd_categorias` int NOT NULL,
  `Descrip_Categorias` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `prod_categorias`
--

INSERT INTO `prod_categorias` (`idProd_categorias`, `Descrip_Categorias`) VALUES
(1, 'Proteina'),
(2, 'Creatina'),
(3, 'Mensualidad'),
(4, 'Esteroides');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prod_marcas`
--

CREATE TABLE `prod_marcas` (
  `idProd_Marcas` int NOT NULL,
  `Descrip_Marcas` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `prod_marcas`
--

INSERT INTO `prod_marcas` (`idProd_Marcas`, `Descrip_Marcas`) VALUES
(1, '100& Whey'),
(2, 'LanderFit'),
(3, 'Mensualidad'),
(4, 'Trembo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRoles` int NOT NULL,
  `nombre_rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_permisos`
--

CREATE TABLE `roles_permisos` (
  `idRoles` int NOT NULL,
  `idPermisos` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `clave` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `etc` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `usuario`, `clave`, `etc`) VALUES
(1, 'admin', '$2y$10$J8ePv2rYGULyTXT8CpOwkOVrjVdDjPWDAveowgfVpL.E6vNnGC4ay', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_roles`
--

CREATE TABLE `usuarios_roles` (
  `idUsuarios` int NOT NULL,
  `idRoles` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
  ADD PRIMARY KEY (`idCarrito_Compras`),
  ADD KEY `fk_Carrito_Compras_Productos1_idx` (`idProductos`);

--
-- Indices de la tabla `descripfis`
--
ALTER TABLE `descripfis`
  ADD PRIMARY KEY (`idDescripFis`);

--
-- Indices de la tabla `entrenamiento`
--
ALTER TABLE `entrenamiento`
  ADD PRIMARY KEY (`idEntrenamiento`);

--
-- Indices de la tabla `mensualidad`
--
ALTER TABLE `mensualidad`
  ADD KEY `fk_Mensualidad_Entrenamiento1_idx` (`Entrenamiento_idEntrenamiento`),
  ADD KEY `fk_Mensualidad_DescripFis1_idx` (`DescripFis_idDescripFis`),
  ADD KEY `fk_mensualidad_usuarios1_idx` (`idUsuarios`);

--
-- Indices de la tabla `ordenproducto`
--
ALTER TABLE `ordenproducto`
  ADD PRIMARY KEY (`idOrden`),
  ADD UNIQUE KEY `TotalProd_UNIQUE` (`TotalPrecio`),
  ADD KEY `fk_OrdenProducto_usuarios1_idx` (`idUsuarios`),
  ADD KEY `fk_OrdenProducto_carrito_compras1_idx` (`idCarrito_Compras`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idPermisos`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`),
  ADD KEY `fk_Productos_Prod_categorias1_idx` (`idProd_categorias`),
  ADD KEY `fk_Productos_Prod_Marcas1_idx` (`idProd_Marcas`);

--
-- Indices de la tabla `prod_categorias`
--
ALTER TABLE `prod_categorias`
  ADD PRIMARY KEY (`idProd_categorias`);

--
-- Indices de la tabla `prod_marcas`
--
ALTER TABLE `prod_marcas`
  ADD PRIMARY KEY (`idProd_Marcas`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRoles`),
  ADD UNIQUE KEY `nombre_rol_UNIQUE` (`nombre_rol`);

--
-- Indices de la tabla `roles_permisos`
--
ALTER TABLE `roles_permisos`
  ADD PRIMARY KEY (`idRoles`,`idPermisos`),
  ADD KEY `fk_Roles_permisos_Roles1_idx` (`idRoles`),
  ADD KEY `fk_Roles_permisos_Permisos1_idx` (`idPermisos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`);

--
-- Indices de la tabla `usuarios_roles`
--
ALTER TABLE `usuarios_roles`
  ADD PRIMARY KEY (`idUsuarios`,`idRoles`),
  ADD KEY `fk_Usuarios_roles_Usuarios_idx` (`idUsuarios`),
  ADD KEY `fk_Usuarios_roles_Roles1_idx` (`idRoles`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
  ADD CONSTRAINT `fk_Carrito_Compras_Productos1` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`idProductos`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensualidad`
--
ALTER TABLE `mensualidad`
  ADD CONSTRAINT `fk_Mensualidad_DescripFis1` FOREIGN KEY (`DescripFis_idDescripFis`) REFERENCES `descripfis` (`idDescripFis`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Mensualidad_Entrenamiento1` FOREIGN KEY (`Entrenamiento_idEntrenamiento`) REFERENCES `entrenamiento` (`idEntrenamiento`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mensualidad_usuarios1` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `ordenproducto`
--
ALTER TABLE `ordenproducto`
  ADD CONSTRAINT `fk_OrdenProducto_carrito_compras1` FOREIGN KEY (`idCarrito_Compras`) REFERENCES `carrito_compras` (`idCarrito_Compras`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_OrdenProducto_usuarios1` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_Productos_Prod_categorias1` FOREIGN KEY (`idProd_categorias`) REFERENCES `prod_categorias` (`idProd_categorias`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Productos_Prod_Marcas1` FOREIGN KEY (`idProd_Marcas`) REFERENCES `prod_marcas` (`idProd_Marcas`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `roles_permisos`
--
ALTER TABLE `roles_permisos`
  ADD CONSTRAINT `fk_Roles_permisos_Permisos1` FOREIGN KEY (`idPermisos`) REFERENCES `permisos` (`idPermisos`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Roles_permisos_Roles1` FOREIGN KEY (`idRoles`) REFERENCES `roles` (`idRoles`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_roles`
--
ALTER TABLE `usuarios_roles`
  ADD CONSTRAINT `fk_Usuarios_roles_Roles1` FOREIGN KEY (`idRoles`) REFERENCES `roles` (`idRoles`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Usuarios_roles_Usuarios` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
