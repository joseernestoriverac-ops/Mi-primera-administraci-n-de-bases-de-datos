-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 15:43:46
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_de_zapatos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`, `descripcion`) VALUES
(1, 'Tenis Deportivos', 'Calzado diseñado para correr, entrenar y actividades de alto impacto.'),
(2, 'Zapatos Formales Hombre', 'Zapatos de vestir como Oxfords, Derbies y Loafers para caballero.'),
(3, 'Tacones y Zapatillas', 'Calzado formal y de fiesta para dama, incluyendo tacones altos y plataformas.'),
(4, 'Sandalias Playeras', 'Calzado ligero, fresco y resistente al agua para la playa o piscina.'),
(5, 'Botas de Montaña', 'Calzado robusto con suela de alta tracción para senderismo y outdoor.'),
(6, 'Botines Casuales', 'Botas cortas de cuero o gamuza ideales para el uso diario en clima templado.'),
(7, 'Mocasines', 'Calzado cómodo y sin cordones, perfecto para un estilo smart-casual.'),
(8, 'Zapatos Escolares', 'Calzado duradero y reglamentario para niños y jóvenes estudiantes.'),
(9, 'Pantuflas y Casa', 'Calzado ultrasuave diseñado exclusivamente para el descanso en el hogar.'),
(10, 'Zapato Confort / Ortopédico', 'Diseñados con soporte especial para largas jornadas de pie o problemas lumbares.'),
(11, 'Sneakers Urbanos', 'Tenis de moda y estilo callejero para el día a día (lifestyle).'),
(12, 'Baletas y Flats', 'Zapatos bajos, planos y cómodos para dama, ideales para la oficina.'),
(13, 'Botas de Lluvia', 'Calzado impermeable de goma para días de tormenta.'),
(14, 'Calzado de Seguridad / Industrial', 'Zapatos con puntera de acero y suela dieléctrica para trabajo pesado.'),
(15, 'Sandalias de Vestir', 'Sandalias elegantes con detalles brillantes o tacón bajo para eventos.'),
(16, 'Alpargatas', 'Calzado fresco de lona con suela de esparto o yute tradicional.'),
(17, 'Zapatos de Bebé', 'Calzado blando y flexible para los primeros pasos de los más pequeños.'),
(18, 'Zapatos para Golf', 'Calzado especializado con tacos (spikes) para estabilidad en el césped.'),
(19, 'Botas Vaqueras', 'Botas de estilo clásico texturizado o cuero con tacón cubano.'),
(20, 'Zapatillas de Ballet / Danza', 'Calzado técnico y flexible para bailarines y disciplinas rítmicas.'),
(21, 'Chanclas / Sliders', 'Calzado abierto de meter, ideal para después de hacer ejercicio o baño.'),
(22, 'Zapatos de Skate', 'Tenis con suela plana de goma vulcanizada para mayor agarre a la patineta.'),
(23, 'Zapatos Náuticos', 'Zapatos de verano con suela de goma estriada para no resbalar en cubiertas.'),
(24, 'Suecos (Clogs)', 'Calzado de goma o madera, muy popular en personal médico y de cocina.'),
(25, 'Edición Limitada / Colección', 'Modelos exclusivos, colaboraciones especiales y piezas de diseñador.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `email`, `telefono`, `direccion`, `fecha_registro`) VALUES
(1, 'Carlos', 'González', 'carlos.gonzalez@email.com', '555-0101', 'Av. De la Constitución 452, Col. Centro', '2026-06-26 13:40:06'),
(2, 'María', 'Rodríguez', 'maria.rod@email.com', '555-0102', 'Calle Florencia 89, Int. 4B', '2026-06-26 13:40:06'),
(3, 'Juan', 'López', 'j.lopez99@email.com', '555-0103', 'Blvd. Adolfo López Mateos 1201', '2026-06-26 13:40:06'),
(4, 'Ana', 'Martínez', 'ana.mtz@email.com', '555-0104', 'Paseo de la Reforma 300, Torre A', '2026-06-26 13:40:06'),
(5, 'Luis', 'Pérez', 'luis.perez@email.com', '555-0105', 'Calle de los Olivos 74, Fracc. Las Arboledas', '2026-06-26 13:40:06'),
(6, 'Carmen', 'Sánchez', 'carmen.s@email.com', '555-0106', 'Av. Universidad 567, Col. Viveros', '2026-06-26 13:40:06'),
(7, 'Pedro', 'Ramírez', 'pedro.ramirez@email.com', '555-0107', 'Calle Melchor Ocampo 32', '2026-06-26 13:40:06'),
(8, 'Elena', 'Flores', 'elena.flores@email.com', '555-0108', 'Calzada de Tlalpan 4500, Local 12', '2026-06-26 13:40:06'),
(9, 'Miguel', 'Gómez', 'miguel.g@email.com', '555-0109', 'Av. Insurgentes Sur 1822', '2026-06-26 13:40:06'),
(10, 'Sofia', 'Díaz', 'sofia.diaz@email.com', '555-0110', 'Calle Corregidora 15, Col. Histórica', '2026-06-26 13:40:06'),
(11, 'Jorge', 'Hernández', 'jorge.h@email.com', '555-0111', 'Av. Juárez 88, Rinconada del Sol', '2026-06-26 13:40:06'),
(12, 'Laura', 'Torres', 'laura.t@email.com', '555-0112', 'Calle 5 de Mayo No. 241', '2026-06-26 13:40:06'),
(13, 'Diego', 'Vargas', 'diego.vargas@email.com', '555-0113', 'Blvd. Revolución 940, Col. Nueva', '2026-06-26 13:40:06'),
(14, 'Claudia', 'Morales', 'claudia.m@email.com', '555-0114', 'Callejón del Beso 45, Col. Alta Vista', '2026-06-26 13:40:06'),
(15, 'Fernando', 'Castillo', 'fer.castillo@email.com', '555-0115', 'Av. Las Torres 302, Fracc. El Parque', '2026-06-26 13:40:06'),
(16, 'Patricia', 'Silva', 'patty.silva@email.com', '555-0116', 'Calle Ignacio Zaragoza 77', '2026-06-26 13:40:06'),
(17, 'Alejandro', 'Rojas', 'alex.rojas@email.com', '555-0117', 'Av. Hidalgo 1050, Sector Hidalgo', '2026-06-26 13:40:06'),
(18, 'Lucía', 'Reyes', 'lucia.reyes@email.com', '555-0118', 'Calle de la Luna 8, Col. Universo', '2026-06-26 13:40:06'),
(19, 'Ricardo', 'García', 'ricardo.g@email.com', '555-0119', 'Circuito Exterior 204, Ciudad Universitaria', '2026-06-26 13:40:06'),
(20, 'Gabriela', 'Mendoza', 'gaby.mendoza@email.com', '555-0120', 'Av. Primero de Mayo 612', '2026-06-26 13:40:06'),
(21, 'Roberto', 'Pastrana', 'roberto.p@email.com', '555-0121', 'Calle Hidalgo 55, Barrio de San Juan', '2026-06-26 13:40:06'),
(22, 'Isabel', 'Guzmán', 'isabel.guzman@email.com', '555-0122', 'Blvd. Miguel Hidalgo 710', '2026-06-26 13:40:06'),
(23, 'Andrés', 'Herrera', 'andres.h@email.com', '555-0123', 'Calle San Ángel 14, Col. San Ángel', '2026-06-26 13:40:06'),
(24, 'Verónica', 'Castro', 'vero.castro@email.com', '555-0124', 'Av. de la Paz 890, Col. Americana', '2026-06-26 13:40:06'),
(25, 'Francisco', 'Ortiz', 'fran.ortiz@email.com', '555-0125', 'Calle Mina 33, Zona Centro', '2026-06-26 13:40:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id_detalle` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_pedido` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` enum('Pendiente','Enviado','Entregado','Cancelado') DEFAULT 'Pendiente',
  `total` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_zapato` varchar(100) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `talla` decimal(3,1) NOT NULL,
  `color` varchar(30) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_zapato`, `marca`, `talla`, `color`, `precio`, `stock`, `id_categoria`) VALUES
(1, 'Ultraboost 22', 'Adidas', 27.5, 'Negro/Blanco', 180.00, 15, 1),
(2, 'Oxford Classic', 'Clarks', 28.0, 'Marrón Oscuro', 145.00, 8, 2),
(3, 'Stiletto Glam', 'Steve Madden', 24.5, 'Rojo', 110.00, 12, 3),
(4, 'Wave Flip', 'Quiksilver', 26.0, 'Azul Marino', 25.00, 40, 4),
(5, 'Targhee III', 'Keen', 29.0, 'Gris/Verde', 160.00, 6, 5),
(6, 'Chelsea Boot', 'Timberland', 27.0, 'Miel', 135.00, 10, 6),
(7, 'Suede Loafer', 'Polo Ralph L.', 28.5, 'Beige', 125.00, 14, 7),
(8, 'Escolar rústico', 'Kickies', 22.0, 'Negro', 55.00, 50, 8),
(9, 'Soft Memory Foam', 'Skechers', 25.0, 'Gris', 35.00, 25, 9),
(10, 'Cushion Walk', 'Dr. Scholls', 26.5, 'Negro', 89.99, 18, 10),
(11, 'Air Force 1', 'Nike', 27.0, 'Blanco', 110.00, 30, 11),
(12, 'Classic Ballet Flat', 'Zara', 24.0, 'Rosa Palo', 45.00, 22, 12),
(13, 'Rain Master', 'Hunter', 25.5, 'Amarillo', 95.00, 11, 13),
(14, 'Titan Steel Toe', 'Caterpillar', 28.0, 'Marrón', 155.00, 15, 14),
(15, 'Starlight Heel', 'Nine West', 23.5, 'Dorado', 115.00, 9, 15),
(16, 'Alpargata de Yute', 'Toms', 26.0, 'Azul Celeste', 49.99, 35, 16),
(17, 'First Steps', 'Pampili', 12.5, 'Blanco/Plata', 30.00, 20, 17),
(18, 'Pro Waterproof', 'FootJoy', 27.5, 'Blanco/Negro', 199.99, 7, 18),
(19, 'Rodeo Leather', 'Justin Boots', 29.0, 'Café Tabaco', 240.00, 5, 19),
(20, 'Pro Elastic Canvas', 'Bloch', 23.0, 'Arena', 28.50, 40, 20),
(21, 'Comfort Slider', 'Puma', 27.0, 'Negro', 22.00, 60, 21),
(22, 'Old Skool Pro', 'Vans', 26.5, 'Negro/Clásico', 75.00, 28, 22),
(23, 'Classic Boat Shoe', 'Sperry', 28.0, 'Azul/Marrón', 99.99, 16, 23),
(24, 'Classic Clog Professional', 'Crocs', 26.0, 'Blanco', 50.00, 30, 24),
(25, 'Air Jordan 1 Retro x Travis', 'Nike', 27.5, 'Oliva', 650.00, 2, 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_pedidos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
