CREATE DATABASE  IF NOT EXISTS `sistema_ventas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema_ventas`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sistema_ventas
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Tecnologia','Productos tecnologicos'),(2,'Computacion','Computadoras y accesorios'),(3,'Celulares','Telefonos celulares'),(4,'Audio','Productos de audio'),(5,'Hogar','Productos para el hogar'),(6,'Oficina','Articulos de oficina'),(7,'Videojuegos','Consolas y videojuegos'),(8,'Accesorios','Accesorios electronicos'),(9,'Televisores','Televisores y pantallas'),(10,'Fotografia','Camaras y accesorios'),(11,'Electrodomesticos','Electrodomesticos'),(12,'Iluminacion','Productos de iluminacion'),(13,'Redes','Equipos de redes'),(14,'Seguridad','Equipos de seguridad'),(15,'Impresion','Impresoras y suministros'),(16,'Almacenamiento','Discos y memorias'),(17,'Componentes','Componentes de computadora'),(18,'Gaming','Productos para gamers'),(19,'Cables','Cables y adaptadores'),(20,'Otros','Otros productos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Perez','8880-3001','juanperez@gmail.com','Tegucigalpa'),(2,'Maria','Lopez','8880-3002','marialopez@gmail.com','Tegucigalpa'),(3,'Pedro','Hernandez','8880-3003','pedrohernandez@gmail.com','San Pedro Sula'),(4,'Sofia','Martinez','8880-3004','sofiamartinez@gmail.com','La Ceiba'),(5,'Carlos','Gomez','8880-3005','carlosgomez@gmail.com','Tegucigalpa'),(6,'Laura','Rodriguez','8880-3006','laurarodriguez@gmail.com','Comayagua'),(7,'Daniel','Flores','8880-3007','danielflores@gmail.com','Tegucigalpa'),(8,'Andrea','Castro','8880-3008','andreacastro@gmail.com','Choluteca'),(9,'Jose','Rivera','8880-3009','joserivera@gmail.com','Tegucigalpa'),(10,'Camila','Mendoza','8880-3010','camilamendoza@gmail.com','San Pedro Sula'),(11,'Miguel','Vargas','8880-3011','miguelvargas@gmail.com','Tegucigalpa'),(12,'Valeria','Pineda','8880-3012','valeriapineda@gmail.com','La Ceiba'),(13,'Fernando','Torres','8880-3013','fernandotorres@gmail.com','Tegucigalpa'),(14,'Gabriela','Cruz','8880-3014','gabrielacruz@gmail.com','Comayagua'),(15,'Diego','Reyes','8880-3015','diegoreyes@gmail.com','Tegucigalpa'),(16,'Paola','Morales','8880-3016','paolamorales@gmail.com','Choluteca'),(17,'Ricardo','Diaz','8880-3017','ricardodiaz@gmail.com','Tegucigalpa'),(18,'Ana','Santos','8880-3018','anasantos@gmail.com','San Pedro Sula'),(19,'Jorge','Navarro','8880-3019','jorgenavarro@gmail.com','Tegucigalpa'),(20,'Oscar','Ortiz','8880-3020','oscarortiz@gmail.com','La Ceiba');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_proveedor` int NOT NULL,
  `id_empleado` int NOT NULL,
  `id_sucursal` int NOT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`),
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `compras_ibfk_3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursales` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'2026-07-01',1,1,1),(2,'2026-07-02',2,2,2),(3,'2026-07-03',3,3,3),(4,'2026-07-04',4,4,4),(5,'2026-07-05',5,5,5),(6,'2026-07-06',6,6,6),(7,'2026-07-07',7,7,7),(8,'2026-07-08',8,8,8),(9,'2026-07-09',9,9,9),(10,'2026-07-10',10,10,10),(11,'2026-07-11',11,11,11),(12,'2026-07-12',12,12,12),(13,'2026-07-13',13,13,13),(14,'2026-07-14',14,14,14),(15,'2026-07-15',15,15,15),(16,'2026-07-16',16,16,16),(17,'2026-07-17',17,17,17),(18,'2026-07-18',18,18,18),(19,'2026-07-19',19,19,19),(20,'2026-07-20',20,20,20);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras_detalle`
--

DROP TABLE IF EXISTS `compras_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras_detalle` (
  `id_detalle_compra` int NOT NULL AUTO_INCREMENT,
  `id_compra` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_detalle_compra`),
  KEY `id_compra` (`id_compra`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `compras_detalle_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`),
  CONSTRAINT `compras_detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_detalle`
--

LOCK TABLES `compras_detalle` WRITE;
/*!40000 ALTER TABLE `compras_detalle` DISABLE KEYS */;
INSERT INTO `compras_detalle` VALUES (1,1,1,5,15000.00,75000.00),(2,2,2,4,17000.00,68000.00),(3,3,3,3,18000.00,54000.00),(4,4,4,5,8500.00,42500.00),(5,5,5,10,1400.00,14000.00),(6,6,6,15,450.00,6750.00),(7,7,7,12,700.00,8400.00),(8,8,8,7,4000.00,28000.00),(9,9,9,3,13000.00,39000.00),(10,10,10,2,12000.00,24000.00),(11,11,11,3,11000.00,33000.00),(12,12,12,2,15000.00,30000.00),(13,13,13,6,3900.00,23400.00),(14,14,14,8,1800.00,14400.00),(15,15,15,20,250.00,5000.00),(16,16,16,7,1200.00,8400.00),(17,17,17,8,900.00,7200.00),(18,18,18,4,5200.00,20800.00),(19,19,19,25,200.00,5000.00),(20,20,20,10,1100.00,11000.00);
/*!40000 ALTER TABLE `compras_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `id_sucursal` int DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursales` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Carlos','Martinez','Vendedor','9990-2001',1),(2,'Ana','Lopez','Vendedor','9990-2002',2),(3,'Luis','Hernandez','Administrador','9990-2003',3),(4,'Maria','Gomez','Vendedor','9990-2004',4),(5,'Jose','Rodriguez','Vendedor','9990-2005',5),(6,'Daniel','Flores','Administrador','9990-2006',6),(7,'Sofia','Castro','Vendedor','9990-2007',7),(8,'Miguel','Rivera','Vendedor','9990-2008',8),(9,'Laura','Mendoza','Vendedor','9990-2009',9),(10,'Pedro','Vargas','Administrador','9990-2010',10),(11,'Andrea','Pineda','Vendedor','9990-2011',11),(12,'Fernando','Torres','Vendedor','9990-2012',12),(13,'Valeria','Cruz','Vendedor','9990-2013',13),(14,'Diego','Reyes','Administrador','9990-2014',14),(15,'Gabriela','Morales','Vendedor','9990-2015',15),(16,'Ricardo','Diaz','Vendedor','9990-2016',16),(17,'Paola','Santos','Vendedor','9990-2017',17),(18,'Jorge','Navarro','Administrador','9990-2018',18),(19,'Camila','Ortiz','Vendedor','9990-2019',19),(20,'Oscar','Ramos','Vendedor','9990-2020',20);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodos_pago`
--

DROP TABLE IF EXISTS `metodos_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodos_pago` (
  `id_metodo_pago` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_metodo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodos_pago`
--

LOCK TABLES `metodos_pago` WRITE;
/*!40000 ALTER TABLE `metodos_pago` DISABLE KEYS */;
INSERT INTO `metodos_pago` VALUES (1,'Efectivo','Pago en efectivo'),(2,'Tarjeta Debito','Pago con tarjeta de debito'),(3,'Tarjeta Credito','Pago con tarjeta de credito'),(4,'Transferencia','Transferencia bancaria'),(5,'Deposito','Deposito bancario'),(6,'PayPal','Pago mediante PayPal'),(7,'Apple Pay','Pago mediante Apple Pay'),(8,'Google Pay','Pago mediante Google Pay'),(9,'Cheque','Pago mediante cheque'),(10,'QR','Pago mediante codigo QR'),(11,'POS','Pago mediante terminal POS'),(12,'Credito','Credito de tienda'),(13,'ACH','Transferencia ACH'),(14,'Billetera Digital','Pago con billetera digital'),(15,'Tigo Money','Pago mediante Tigo Money'),(16,'BAC','Pago mediante BAC'),(17,'Atlantida','Pago mediante Banco Atlantida'),(18,'Banpais','Pago mediante Banpais'),(19,'Promerica','Pago mediante Promerica'),(20,'Ficohsa','Pago mediante Ficohsa');
/*!40000 ALTER TABLE `metodos_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `id_categoria` int DEFAULT NULL,
  `id_proveedor` int DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Laptop HP','Laptop HP 14 pulgadas',18510.00,15,2,1),(2,'Laptop Lenovo','Laptop Lenovo 15 pulgadas',21000.00,12,2,2),(3,'iPhone 13','Telefono Apple iPhone 13',22000.00,10,3,3),(4,'Samsung Galaxy A54','Telefono Samsung',10500.00,18,3,4),(5,'Audifonos JBL','Audifonos inalambricos',1800.00,25,4,5),(6,'Mouse Logitech','Mouse inalambrico',650.00,40,8,6),(7,'Teclado Logitech','Teclado USB',950.00,30,8,7),(8,'Monitor LG','Monitor 24 pulgadas',5200.00,20,9,8),(9,'Televisor Samsung','Smart TV 50 pulgadas',16500.00,8,9,9),(10,'PlayStation 5','Consola PlayStation 5',14500.00,7,7,10),(11,'Xbox Series X','Consola Xbox',13500.00,9,7,11),(12,'Camara Canon','Camara digital Canon',18500.00,6,10,12),(13,'Impresora Epson','Impresora multifuncional',4800.00,14,15,13),(14,'Disco SSD 1TB','Unidad SSD de 1TB',2200.00,22,16,14),(15,'Memoria USB 64GB','Memoria USB',350.00,50,16,15),(16,'Router TP-Link','Router WiFi',1600.00,18,13,16),(17,'Webcam Logitech','Camara web HD',1200.00,20,8,17),(18,'Silla Gaming','Silla para videojuegos',6500.00,10,18,18),(19,'Cable HDMI','Cable HDMI 2 metros',300.00,60,19,19),(20,'Regulador APC','Regulador de voltaje',1400.00,25,12,20),(21,'Producto Prueba 1','Registro para modificación',125.00,15,1,1),(23,'Producto Prueba 3','Registro adicional de prueba',200.00,8,1,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_sucursal`
--

DROP TABLE IF EXISTS `productos_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_sucursal` (
  `id_producto_sucursal` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `cantidad` int NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_producto_sucursal`),
  KEY `id_producto` (`id_producto`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `productos_sucursal_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `productos_sucursal_ibfk_2` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursales` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_sucursal`
--

LOCK TABLES `productos_sucursal` WRITE;
/*!40000 ALTER TABLE `productos_sucursal` DISABLE KEYS */;
INSERT INTO `productos_sucursal` VALUES (1,1,1,5,'Estante A1'),(2,2,2,4,'Estante A2'),(3,3,3,3,'Estante B1'),(4,4,4,5,'Estante B2'),(5,5,5,10,'Estante C1'),(6,6,6,15,'Estante C2'),(7,7,7,12,'Estante C3'),(8,8,8,7,'Estante D1'),(9,9,9,3,'Estante D2'),(10,10,10,2,'Estante E1'),(11,11,11,3,'Estante E2'),(12,12,12,2,'Estante F1'),(13,13,13,6,'Estante F2'),(14,14,14,8,'Estante G1'),(15,15,15,20,'Estante G2'),(16,16,16,7,'Estante H1'),(17,17,17,8,'Estante H2'),(18,18,18,4,'Estante I1'),(19,19,19,25,'Estante I2'),(20,20,20,10,'Estante J1');
/*!40000 ALTER TABLE `productos_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Tech Honduras','9999-1001','techhonduras@gmail.com','Tegucigalpa'),(2,'Digital Store','9999-1002','digitalstore@gmail.com','San Pedro Sula'),(3,'CompuWorld','9999-1003','compuworld@gmail.com','Tegucigalpa'),(4,'Electronica Centro','9999-1004','electronicacentro@gmail.com','La Ceiba'),(5,'Global Tech','9999-1005','globaltech@gmail.com','Tegucigalpa'),(6,'Importadora Digital','9999-1006','importadoradigital@gmail.com','Comayagua'),(7,'Smart Solutions','9999-1007','smartsolutions@gmail.com','Tegucigalpa'),(8,'Mega Electronica','9999-1008','megaelectronica@gmail.com','San Pedro Sula'),(9,'Compu Express','9999-1009','compuexpress@gmail.com','Choluteca'),(10,'Tecno Market','9999-1010','tecnomarket@gmail.com','Tegucigalpa'),(11,'Honduras Digital','9999-1011','hondurasdigital@gmail.com','La Ceiba'),(12,'Electronica Moderna','9999-1012','electronicamoderna@gmail.com','Tegucigalpa'),(13,'PC Center','9999-1013','pccenter@gmail.com','San Pedro Sula'),(14,'Gadget World','9999-1014','gadgetworld@gmail.com','Tegucigalpa'),(15,'Tecno Import','9999-1015','tecnoimport@gmail.com','Comayagua'),(16,'Digital Plus','9999-1016','digitalplus@gmail.com','Tegucigalpa'),(17,'Electronica Total','9999-1017','electronicatotal@gmail.com','Choluteca'),(18,'Smart Tech','9999-1018','smarttech@gmail.com','Tegucigalpa'),(19,'Mega Computadoras','9999-1019','megacomputadoras@gmail.com','San Pedro Sula'),(20,'Tecnologia Global','9999-1020','tecnologiaglobal@gmail.com','Tegucigalpa');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `id_sucursal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'Sucursal Centro','Tegucigalpa','Centro de Tegucigalpa','2230-1001'),(2,'Sucursal Kennedy','Tegucigalpa','Colonia Kennedy','2230-1002'),(3,'Sucursal Miraflores','Tegucigalpa','Colonia Miraflores','2230-1003'),(4,'Sucursal Mall','Tegucigalpa','Mall Multiplaza','2230-1004'),(5,'Sucursal Suyapa','Tegucigalpa','Boulevard Suyapa','2230-1005'),(6,'Sucursal Norte','San Pedro Sula','Zona Norte','2550-1006'),(7,'Sucursal Circunvalacion','San Pedro Sula','Boulevard Circunvalacion','2550-1007'),(8,'Sucursal La Ceiba','La Ceiba','Centro','2440-1008'),(9,'Sucursal Comayagua','Comayagua','Centro','2770-1009'),(10,'Sucursal Choluteca','Choluteca','Centro','2780-1010'),(11,'Sucursal Valle','Nacaome','Centro','2780-1011'),(12,'Sucursal Danli','Danli','Centro','2760-1012'),(13,'Sucursal Juticalpa','Juticalpa','Centro','2780-1013'),(14,'Sucursal Catacamas','Catacamas','Centro','2780-1014'),(15,'Sucursal Roatan','Roatan','Centro','2440-1015'),(16,'Sucursal Tela','Tela','Centro','2440-1016'),(17,'Sucursal Puerto Cortes','Puerto Cortes','Centro','2660-1017'),(18,'Sucursal Villanueva','Villanueva','Centro','2660-1018'),(19,'Sucursal El Progreso','El Progreso','Centro','2640-1019'),(20,'Sucursal Tocoa','Tocoa','Centro','2440-1020');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  `id_sucursal` int DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursales` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2026-08-01',1,1,1),(2,'2026-08-01',2,2,2),(3,'2026-08-02',3,3,3),(4,'2026-08-02',4,4,4),(5,'2026-08-03',5,5,5),(6,'2026-08-03',6,6,6),(7,'2026-08-04',7,7,7),(8,'2026-08-04',8,8,8),(9,'2026-08-05',9,9,9),(10,'2026-08-05',10,10,10),(11,'2026-08-06',11,11,11),(12,'2026-08-06',12,12,12),(13,'2026-08-07',13,13,13),(14,'2026-08-07',14,14,14),(15,'2026-08-08',15,15,15),(16,'2026-08-08',16,16,16),(17,'2026-08-09',17,17,17),(18,'2026-08-09',18,18,18),(19,'2026-08-10',19,19,19),(20,'2026-08-10',20,20,20);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_detalle`
--

DROP TABLE IF EXISTS `ventas_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_detalle` (
  `id_detalle_venta` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_detalle_venta`),
  KEY `id_venta` (`id_venta`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `ventas_detalle_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  CONSTRAINT `ventas_detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_detalle`
--

LOCK TABLES `ventas_detalle` WRITE;
/*!40000 ALTER TABLE `ventas_detalle` DISABLE KEYS */;
INSERT INTO `ventas_detalle` VALUES (1,1,1,1,18500.00,18500.00),(2,2,2,1,21000.00,21000.00),(3,3,3,1,22000.00,22000.00),(4,4,4,2,10500.00,21000.00),(5,5,5,2,1800.00,3600.00),(6,6,6,3,650.00,1950.00),(7,7,7,2,950.00,1900.00),(8,8,8,1,5200.00,5200.00),(9,9,9,1,16500.00,16500.00),(10,10,10,1,14500.00,14500.00),(11,11,11,1,13500.00,13500.00),(12,12,12,1,18500.00,18500.00),(13,13,13,2,4800.00,9600.00),(14,14,14,2,2200.00,4400.00),(15,15,15,4,350.00,1400.00),(16,16,16,1,1600.00,1600.00),(17,17,17,2,1200.00,2400.00),(18,18,18,1,6500.00,6500.00),(19,19,19,3,300.00,900.00),(20,20,20,2,1400.00,2800.00);
/*!40000 ALTER TABLE `ventas_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_pago`
--

DROP TABLE IF EXISTS `ventas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_pago` (
  `id_venta_pago` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `id_metodo_pago` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_venta_pago`),
  KEY `id_venta` (`id_venta`),
  KEY `id_metodo_pago` (`id_metodo_pago`),
  CONSTRAINT `ventas_pago_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  CONSTRAINT `ventas_pago_ibfk_2` FOREIGN KEY (`id_metodo_pago`) REFERENCES `metodos_pago` (`id_metodo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_pago`
--

LOCK TABLES `ventas_pago` WRITE;
/*!40000 ALTER TABLE `ventas_pago` DISABLE KEYS */;
INSERT INTO `ventas_pago` VALUES (1,1,1,18500.00,'REF001'),(2,2,2,21000.00,'REF002'),(3,3,3,22000.00,'REF003'),(4,4,4,21000.00,'REF004'),(5,5,5,3600.00,'REF005'),(6,6,6,1950.00,'REF006'),(7,7,7,1900.00,'REF007'),(8,8,8,5200.00,'REF008'),(9,9,9,16500.00,'REF009'),(10,10,10,14500.00,'REF010'),(11,11,11,13500.00,'REF011'),(12,12,12,18500.00,'REF012'),(13,13,13,9600.00,'REF013'),(14,14,14,4400.00,'REF014'),(15,15,15,1400.00,'REF015'),(16,16,16,1600.00,'REF016'),(17,17,17,2400.00,'REF017'),(18,18,18,6500.00,'REF018'),(19,19,19,900.00,'REF019'),(20,20,20,2800.00,'REF020');
/*!40000 ALTER TABLE `ventas_pago` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-02 13:57:28
