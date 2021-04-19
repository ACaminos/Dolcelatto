-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-01-2021 a las 21:35:24
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.4.13
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Base de datos: `repalanca_matelab`
--
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_carrito`
--
CREATE TABLE `tbl_carrito` (
    `id_carrito` int(11) NOT NULL,
    `fk_producto` int(11) NOT NULL,
    `fk_descuentoCarrito` int(11) NOT NULL,
    `detalle_carrito` varchar(50) NOT NULL,
    `canitdad_carrito` int(4) NOT NULL,
    `costoDelivery_carrito` double NOT NULL,
    `precioUnitario_carrito` double NOT NULL,
    `subtotal_carrito` double NOT NULL,
    `total_carrito` double NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_categoria`
--
CREATE TABLE `tbl_categoria` (
    `id_categoria` int(11) NOT NULL,
    `nombre_categoria` varchar(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_delivery`
--
CREATE TABLE `tbl_delivery` (
    `id_delivey` int(11) NOT NULL,
    `fk_departamento` int(11) NOT NULL,
    `fk_localidad` int(11) NOT NULL,
    `calle_delivery` varchar(50) NOT NULL,
    `nro_delivery` varchar(5) NOT NULL,
    `piso_delivery` varchar(2) NOT NULL,
    `depto_delivery` varchar(4) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_deliveryusuario`
--
CREATE TABLE `tbl_deliveryusuario` (
    `id_deliveryusuario` int(11) NOT NULL,
    `fk_usuario` int(11) NOT NULL,
    `fk_delivery` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_departamento`
--
CREATE TABLE `tbl_departamento` (
    `id_departamento` int(11) NOT NULL,
    `nombre_departamento` varchar(50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_descuentocarrito`
--
CREATE TABLE `tbl_descuentocarrito` (
    `id_descuentoCarrito` int(11) NOT NULL,
    `limiteCompraInf_descuentoCarrito` double NOT NULL,
    `limiteCompraSup_descuentoCarrito` double NOT NULL,
    `porcentaje_descuentoCarrito` double NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_descuentoproducto`
--
CREATE TABLE `tbl_descuentoproducto` (
    `id_descuentoProducto` int(11) NOT NULL,
    `fechaInicio_descuentoProducto` datetime NOT NULL,
    `fechaFin_descuentoProducto` datetime NOT NULL,
    `porcentaje_descuentoProducto` double NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_destaque`
--
CREATE TABLE `tbl_destaque` (
    `id_destaque` int(11) NOT NULL,
    `fk_producto` int(11) NOT NULL,
    `fechaInicio_destaque` datetime DEFAULT NULL,
    `fechaFin_destaque` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_favorito`
--
CREATE TABLE `tbl_favorito` (
    `id_favorito` int(11) NOT NULL,
    `fk_producto` int(11) NOT NULL,
    `fk_usuario` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_localidad`
--
CREATE TABLE `tbl_localidad` (
    `id_localidad` int(11) NOT NULL,
    `nombre_localidad` varchar(50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_localidadpordepartamento`
--
CREATE TABLE `tbl_localidadpordepartamento` (
    `id_localidadpordepartamento` int(11) NOT NULL,
    `fk_departamento` int(11) NOT NULL,
    `fk_localidad` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_premio`
--
CREATE TABLE `tbl_premio` (
    `id_premio` int(11) NOT NULL,
    `descripcion_premio` varchar(50) NOT NULL,
    `fechaIni_premio` date NOT NULL,
    `fechaFin_premio` date NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_premiousuario`
--
CREATE TABLE `tbl_premiousuario` (
    `id_premiousuario` int(11) NOT NULL,
    `fk_usuario` int(11) NOT NULL,
    `fk_premio` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_producto`
--
CREATE TABLE `tbl_producto` (
    `id_producto` int(11) NOT NULL,
    `fk_proveedor` int(11) NOT NULL,
    `fk_categoria` int(11) NOT NULL,
    `fk_subcategoria` int(11) NOT NULL,
    `fk_descuentoProducto` int(11) NOT NULL,
    `marca_producto` varchar(100) NOT NULL,
    `descripcion_producto` longtext NOT NULL,
    `imagen_producto` varchar(255) NOT NULL,
    `precio_producto` double NOT NULL,
    `stock_producto` int(4) NOT NULL,
    `calificacion_producto` int(2) NOT NULL,
    `esActivo_producto` tinyint(1) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_proveedor`
--
CREATE TABLE `tbl_proveedor` (
    `id_proveedor` int(11) NOT NULL,
    `fk_departamento` int(11) NOT NULL,
    `fk_localidad` int(11) NOT NULL,
    `razonSocial_proveedor` varchar(100) NOT NULL,
    `nombreFantasia_proveedor` varchar(100) NOT NULL,
    `contacto_proveedor` varchar(50) NOT NULL,
    `calle_proveedor` varchar(150) NOT NULL,
    `nroCalle_proveedor` varchar(6) NOT NULL,
    `piso_proveedor` varchar(2) DEFAULT NULL,
    `depto_proveedor` varchar(4) DEFAULT NULL,
    `telFijo_proveedor` varchar(20) DEFAULT NULL,
    `cel_proveedor` varchar(20) DEFAULT NULL,
    `email_proveedor` varchar(150) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_referido`
--
CREATE TABLE `tbl_referido` (
    `id_referido` int(11) NOT NULL,
    `email_referido` varchar(50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_referidoporusuario`
--
CREATE TABLE `tbl_referidoporusuario` (
    `id_referidoporusuario` int(11) NOT NULL,
    `fk_usuario` int(11) NOT NULL,
    `fk_referido` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_resumen`
--
CREATE TABLE `tbl_resumen` (
    `id_resumen` int(11) NOT NULL,
    `fk_proveedor` int(11) NOT NULL,
    `fk_venta` int(11) NOT NULL,
    `fecha_resumen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `fechaIniCiclo_resumen` datetime NOT NULL,
    `fechaFinCiclo_resumen` datetime NOT NULL,
    `plazoPago_resumen` int(4) NOT NULL,
    `fechaPago_resumen` datetime NOT NULL,
    `detalle_resumen` varchar(50) NOT NULL,
    `importeDetalle_resumen` double NOT NULL,
    `importeTotal_resumen` double NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_resumenporproveedor`
--
CREATE TABLE `tbl_resumenporproveedor` (
    `id_resumenporproveedor` int(11) NOT NULL,
    `fk_proveedor` int(11) NOT NULL,
    `fk_resumen` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_stock`
--
CREATE TABLE `tbl_stock` (
    `id_stock` int(11) NOT NULL,
    `fk_producto` int(11) NOT NULL,
    `fecha_stock` date NOT NULL,
    `cantidadIngresada_stock` int(10) NOT NULL,
    `cantidadVendida_stock` int(10) NOT NULL,
    `saldo_stock` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_stockporproducto`
--
CREATE TABLE `tbl_stockporproducto` (
    `id_stockporproducto` int(11) NOT NULL,
    `fk_stock` int(11) NOT NULL,
    `fk_producto` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_subcategoria`
--
CREATE TABLE `tbl_subcategoria` (
    `id_subcategoria` int(11) NOT NULL,
    `nombre_subcategoria` varchar(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_usuario`
--
CREATE TABLE `tbl_usuario` (
    `id_usuario` int(11) NOT NULL,
    `fk_deliveryusuario` int(11) NOT NULL,
    `fk_departamento` int(11) NOT NULL,
    `fk_localidad` int(11) NOT NULL,
    `nick_usuario` varchar(8) NOT NULL,
    `pass_usuario` blob NOT NULL,
    `nombre_usuario` varchar(50) NOT NULL,
    `apellido_usuario` varchar(50) NOT NULL,
    `documento_usuario` varchar(15) NOT NULL,
    `fechaNac_usuario` date NOT NULL,
    `telFijo_usuario` varchar(20) DEFAULT NULL,
    `cel_usuario` varchar(20) DEFAULT NULL,
    `email_usuario` varchar(100) NOT NULL,
    `calle_usuario` varchar(50) NOT NULL,
    `nroCalle_usuario` varchar(4) NOT NULL,
    `piso_usuario` varchar(2) NOT NULL,
    `depto_usuario` varchar(4) NOT NULL,
    `aceptaPublicidad_usuario` tinyint(1) NOT NULL,
    `puntosGanados` int(3) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tbl_venta`
--
CREATE TABLE `tbl_venta` (
    `id_venta` int(11) NOT NULL,
    `fk_usuario` int(11) NOT NULL,
    `fk_carrito` int(11) NOT NULL,
    `fecha_venta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `medioPago_venta` varchar(10) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Índices para tablas volcadas
--
--
-- Indices de la tabla `tbl_carrito`
--
ALTER TABLE `tbl_carrito`
ADD PRIMARY KEY (`id_carrito`),
    ADD KEY `fk_descuentoCarrito` (`fk_descuentoCarrito`),
    ADD KEY `fk_producto` (`fk_producto`);
--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
ADD PRIMARY KEY (`id_categoria`);
--
-- Indices de la tabla `tbl_delivery`
--
ALTER TABLE `tbl_delivery`
ADD PRIMARY KEY (`id_delivey`),
    ADD KEY `fk_departamento` (`fk_departamento`),
    ADD KEY `fk_localidad` (`fk_localidad`);
--
-- Indices de la tabla `tbl_deliveryusuario`
--
ALTER TABLE `tbl_deliveryusuario`
ADD PRIMARY KEY (`id_deliveryusuario`),
    ADD KEY `fk_delivery` (`fk_delivery`),
    ADD KEY `fk_usuario` (`fk_usuario`);
--
-- Indices de la tabla `tbl_departamento`
--
ALTER TABLE `tbl_departamento`
ADD PRIMARY KEY (`id_departamento`);
--
-- Indices de la tabla `tbl_descuentocarrito`
--
ALTER TABLE `tbl_descuentocarrito`
ADD PRIMARY KEY (`id_descuentoCarrito`);
--
-- Indices de la tabla `tbl_descuentoproducto`
--
ALTER TABLE `tbl_descuentoproducto`
ADD PRIMARY KEY (`id_descuentoProducto`);
--
-- Indices de la tabla `tbl_destaque`
--
ALTER TABLE `tbl_destaque`
ADD PRIMARY KEY (`id_destaque`),
    ADD KEY `fk_producto` (`fk_producto`);
--
-- Indices de la tabla `tbl_favorito`
--
ALTER TABLE `tbl_favorito`
ADD PRIMARY KEY (`id_favorito`),
    ADD KEY `fk_producto` (`fk_producto`),
    ADD KEY `fk_usuario` (`fk_usuario`);
--
-- Indices de la tabla `tbl_localidad`
--
ALTER TABLE `tbl_localidad`
ADD PRIMARY KEY (`id_localidad`);
--
-- Indices de la tabla `tbl_localidadpordepartamento`
--
ALTER TABLE `tbl_localidadpordepartamento`
ADD PRIMARY KEY (`id_localidadpordepartamento`),
    ADD KEY `fk_departamento` (`fk_departamento`),
    ADD KEY `fk_localidad` (`fk_localidad`);
--
-- Indices de la tabla `tbl_premio`
--
ALTER TABLE `tbl_premio`
ADD PRIMARY KEY (`id_premio`);
--
-- Indices de la tabla `tbl_premiousuario`
--
ALTER TABLE `tbl_premiousuario`
ADD PRIMARY KEY (`id_premiousuario`),
    ADD KEY `fk_premio` (`fk_premio`),
    ADD KEY `fk_usuario` (`fk_usuario`);
--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
ADD PRIMARY KEY (`id_producto`),
    ADD KEY `fk_categoria` (`fk_categoria`),
    ADD KEY `fk_descuentoProducto` (`fk_descuentoProducto`),
    ADD KEY `fk_subcategoria` (`fk_subcategoria`),
    ADD KEY `fk_proveedor` (`fk_proveedor`);
--
-- Indices de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
ADD PRIMARY KEY (`id_proveedor`),
    ADD KEY `fk_departamento` (`fk_departamento`),
    ADD KEY `fk_localidad` (`fk_localidad`);
--
-- Indices de la tabla `tbl_referido`
--
ALTER TABLE `tbl_referido`
ADD PRIMARY KEY (`id_referido`);
--
-- Indices de la tabla `tbl_referidoporusuario`
--
ALTER TABLE `tbl_referidoporusuario`
ADD PRIMARY KEY (`id_referidoporusuario`),
    ADD KEY `fk_referido` (`fk_referido`),
    ADD KEY `fk_usuario` (`fk_usuario`);
--
-- Indices de la tabla `tbl_resumen`
--
ALTER TABLE `tbl_resumen`
ADD PRIMARY KEY (`id_resumen`),
    ADD KEY `fk_proveedor` (`fk_proveedor`),
    ADD KEY `fk_venta` (`fk_venta`);
--
-- Indices de la tabla `tbl_resumenporproveedor`
--
ALTER TABLE `tbl_resumenporproveedor`
ADD PRIMARY KEY (`id_resumenporproveedor`),
    ADD KEY `fk_proveedor` (`fk_proveedor`),
    ADD KEY `fk_resumen` (`fk_resumen`);
--
-- Indices de la tabla `tbl_stock`
--
ALTER TABLE `tbl_stock`
ADD PRIMARY KEY (`id_stock`),
    ADD KEY `fk_producto` (`fk_producto`);
--
-- Indices de la tabla `tbl_stockporproducto`
--
ALTER TABLE `tbl_stockporproducto`
ADD PRIMARY KEY (`id_stockporproducto`),
    ADD KEY `fk_producto` (`fk_producto`),
    ADD KEY `fk_stock` (`fk_stock`);
--
-- Indices de la tabla `tbl_subcategoria`
--
ALTER TABLE `tbl_subcategoria`
ADD PRIMARY KEY (`id_subcategoria`);
--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
ADD PRIMARY KEY (`id_usuario`),
    ADD KEY `fk_deliveryusuario` (`fk_deliveryusuario`),
    ADD KEY `fk_departamento` (`fk_departamento`),
    ADD KEY `fk_localidad` (`fk_localidad`);
--
-- Indices de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
ADD PRIMARY KEY (`id_venta`),
    ADD KEY `fk_carrito` (`fk_carrito`),
    ADD KEY `fk_usuario` (`fk_usuario`);
--
-- AUTO_INCREMENT de las tablas volcadas
--
--
-- AUTO_INCREMENT de la tabla `tbl_carrito`
--
ALTER TABLE `tbl_carrito`
MODIFY `id_carrito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_delivery`
--
ALTER TABLE `tbl_delivery`
MODIFY `id_delivey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_deliveryusuario`
--
ALTER TABLE `tbl_deliveryusuario`
MODIFY `id_deliveryusuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_departamento`
--
ALTER TABLE `tbl_departamento`
MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_descuentocarrito`
--
ALTER TABLE `tbl_descuentocarrito`
MODIFY `id_descuentoCarrito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_descuentoproducto`
--
ALTER TABLE `tbl_descuentoproducto`
MODIFY `id_descuentoProducto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_destaque`
--
ALTER TABLE `tbl_destaque`
MODIFY `id_destaque` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_favorito`
--
ALTER TABLE `tbl_favorito`
MODIFY `id_favorito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_localidad`
--
ALTER TABLE `tbl_localidad`
MODIFY `id_localidad` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_localidadpordepartamento`
--
ALTER TABLE `tbl_localidadpordepartamento`
MODIFY `id_localidadpordepartamento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_premio`
--
ALTER TABLE `tbl_premio`
MODIFY `id_premio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_premiousuario`
--
ALTER TABLE `tbl_premiousuario`
MODIFY `id_premiousuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_referido`
--
ALTER TABLE `tbl_referido`
MODIFY `id_referido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_referidoporusuario`
--
ALTER TABLE `tbl_referidoporusuario`
MODIFY `id_referidoporusuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_resumen`
--
ALTER TABLE `tbl_resumen`
MODIFY `id_resumen` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_resumenporproveedor`
--
ALTER TABLE `tbl_resumenporproveedor`
MODIFY `id_resumenporproveedor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_stock`
--
ALTER TABLE `tbl_stock`
MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_stockporproducto`
--
ALTER TABLE `tbl_stockporproducto`
MODIFY `id_stockporproducto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_subcategoria`
--
ALTER TABLE `tbl_subcategoria`
MODIFY `id_subcategoria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--
--
-- Filtros para la tabla `tbl_carrito`
--
ALTER TABLE `tbl_carrito`
ADD CONSTRAINT `tbl_carrito_ibfk_1` FOREIGN KEY (`fk_descuentoCarrito`) REFERENCES `tbl_descuentocarrito` (`id_descuentoCarrito`),
    ADD CONSTRAINT `tbl_carrito_ibfk_2` FOREIGN KEY (`fk_producto`) REFERENCES `tbl_producto` (`id_producto`);
--
-- Filtros para la tabla `tbl_delivery`
--
ALTER TABLE `tbl_delivery`
ADD CONSTRAINT `tbl_delivery_ibfk_1` FOREIGN KEY (`fk_departamento`) REFERENCES `tbl_departamento` (`id_departamento`),
    ADD CONSTRAINT `tbl_delivery_ibfk_2` FOREIGN KEY (`fk_localidad`) REFERENCES `tbl_localidad` (`id_localidad`);
--
-- Filtros para la tabla `tbl_deliveryusuario`
--
ALTER TABLE `tbl_deliveryusuario`
ADD CONSTRAINT `tbl_deliveryusuario_ibfk_1` FOREIGN KEY (`fk_delivery`) REFERENCES `tbl_delivery` (`id_delivey`),
    ADD CONSTRAINT `tbl_deliveryusuario_ibfk_2` FOREIGN KEY (`fk_usuario`) REFERENCES `tbl_usuario` (`id_usuario`);
--
-- Filtros para la tabla `tbl_destaque`
--
ALTER TABLE `tbl_destaque`
ADD CONSTRAINT `tbl_destaque_ibfk_1` FOREIGN KEY (`fk_producto`) REFERENCES `tbl_producto` (`id_producto`);
--
-- Filtros para la tabla `tbl_favorito`
--
ALTER TABLE `tbl_favorito`
ADD CONSTRAINT `tbl_favorito_ibfk_1` FOREIGN KEY (`fk_producto`) REFERENCES `tbl_producto` (`id_producto`),
    ADD CONSTRAINT `tbl_favorito_ibfk_2` FOREIGN KEY (`fk_usuario`) REFERENCES `tbl_usuario` (`id_usuario`);
--
-- Filtros para la tabla `tbl_localidadpordepartamento`
--
ALTER TABLE `tbl_localidadpordepartamento`
ADD CONSTRAINT `tbl_localidadpordepartamento_ibfk_1` FOREIGN KEY (`fk_departamento`) REFERENCES `tbl_departamento` (`id_departamento`),
    ADD CONSTRAINT `tbl_localidadpordepartamento_ibfk_2` FOREIGN KEY (`fk_localidad`) REFERENCES `tbl_localidad` (`id_localidad`);
--
-- Filtros para la tabla `tbl_premiousuario`
--
ALTER TABLE `tbl_premiousuario`
ADD CONSTRAINT `tbl_premiousuario_ibfk_1` FOREIGN KEY (`fk_premio`) REFERENCES `tbl_premio` (`id_premio`),
    ADD CONSTRAINT `tbl_premiousuario_ibfk_2` FOREIGN KEY (`fk_usuario`) REFERENCES `tbl_usuario` (`id_usuario`);
--
-- Filtros para la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
ADD CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`fk_categoria`) REFERENCES `tbl_categoria` (`id_categoria`),
    ADD CONSTRAINT `tbl_producto_ibfk_2` FOREIGN KEY (`fk_descuentoProducto`) REFERENCES `tbl_descuentoproducto` (`id_descuentoProducto`),
    ADD CONSTRAINT `tbl_producto_ibfk_3` FOREIGN KEY (`fk_subcategoria`) REFERENCES `tbl_subcategoria` (`id_subcategoria`),
    ADD CONSTRAINT `tbl_producto_ibfk_4` FOREIGN KEY (`fk_proveedor`) REFERENCES `tbl_proveedor` (`id_proveedor`);
--
-- Filtros para la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
ADD CONSTRAINT `tbl_proveedor_ibfk_1` FOREIGN KEY (`fk_departamento`) REFERENCES `tbl_departamento` (`id_departamento`),
    ADD CONSTRAINT `tbl_proveedor_ibfk_2` FOREIGN KEY (`fk_localidad`) REFERENCES `tbl_localidad` (`id_localidad`);
--
-- Filtros para la tabla `tbl_referidoporusuario`
--
ALTER TABLE `tbl_referidoporusuario`
ADD CONSTRAINT `tbl_referidoporusuario_ibfk_1` FOREIGN KEY (`fk_referido`) REFERENCES `tbl_referido` (`id_referido`),
    ADD CONSTRAINT `tbl_referidoporusuario_ibfk_2` FOREIGN KEY (`fk_usuario`) REFERENCES `tbl_usuario` (`id_usuario`);
--
-- Filtros para la tabla `tbl_resumen`
--
ALTER TABLE `tbl_resumen`
ADD CONSTRAINT `tbl_resumen_ibfk_1` FOREIGN KEY (`fk_proveedor`) REFERENCES `tbl_proveedor` (`id_proveedor`),
    ADD CONSTRAINT `tbl_resumen_ibfk_2` FOREIGN KEY (`fk_venta`) REFERENCES `tbl_venta` (`id_venta`);
--
-- Filtros para la tabla `tbl_resumenporproveedor`
--
ALTER TABLE `tbl_resumenporproveedor`
ADD CONSTRAINT `tbl_resumenporproveedor_ibfk_1` FOREIGN KEY (`fk_proveedor`) REFERENCES `tbl_proveedor` (`id_proveedor`),
    ADD CONSTRAINT `tbl_resumenporproveedor_ibfk_2` FOREIGN KEY (`fk_resumen`) REFERENCES `tbl_resumen` (`id_resumen`);
--
-- Filtros para la tabla `tbl_stock`
--
ALTER TABLE `tbl_stock`
ADD CONSTRAINT `tbl_stock_ibfk_1` FOREIGN KEY (`fk_producto`) REFERENCES `tbl_producto` (`id_producto`);
--
-- Filtros para la tabla `tbl_stockporproducto`
--
ALTER TABLE `tbl_stockporproducto`
ADD CONSTRAINT `tbl_stockporproducto_ibfk_1` FOREIGN KEY (`fk_producto`) REFERENCES `tbl_producto` (`id_producto`),
    ADD CONSTRAINT `tbl_stockporproducto_ibfk_2` FOREIGN KEY (`fk_stock`) REFERENCES `tbl_stock` (`id_stock`);
--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
ADD CONSTRAINT `tbl_usuario_ibfk_1` FOREIGN KEY (`fk_deliveryusuario`) REFERENCES `tbl_deliveryusuario` (`id_deliveryusuario`),
    ADD CONSTRAINT `tbl_usuario_ibfk_2` FOREIGN KEY (`fk_departamento`) REFERENCES `tbl_departamento` (`id_departamento`),
    ADD CONSTRAINT `tbl_usuario_ibfk_3` FOREIGN KEY (`fk_localidad`) REFERENCES `tbl_localidad` (`id_localidad`);
--
-- Filtros para la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
ADD CONSTRAINT `tbl_venta_ibfk_1` FOREIGN KEY (`fk_carrito`) REFERENCES `tbl_carrito` (`id_carrito`),
    ADD CONSTRAINT `tbl_venta_ibfk_2` FOREIGN KEY (`fk_usuario`) REFERENCES `tbl_usuario` (`id_usuario`);
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;