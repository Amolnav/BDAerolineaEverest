/*M!999999\- enable the sandbox mode */
-- MariaDB dump 10.19-11.6.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: aerolinea
-- ------------------------------------------------------
-- Server version 11.6.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `asiento`
--

DROP TABLE IF EXISTS `asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asiento` (
  `numeroAsiento` varchar(10) NOT NULL,
  `clase` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT 1,
  `idReserva` int(11) DEFAULT NULL,
  `idVuelo` int(11) NOT NULL,
  PRIMARY KEY (`numeroAsiento`,`idVuelo`),
  KEY `idReserva` (`idReserva`),
  KEY `idVuelo` (`idVuelo`),
  CONSTRAINT `asiento_ibfk_1` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`),
  CONSTRAINT `asiento_ibfk_2` FOREIGN KEY (`idVuelo`) REFERENCES `vuelos` (`idVuelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiento`
--

LOCK TABLES `asiento` WRITE;
/*!40000 ALTER TABLE `asiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aviones`
--

DROP TABLE IF EXISTS `aviones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aviones` (
  `idAvion` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `capacidad` int(11) NOT NULL,
  PRIMARY KEY (`idAvion`),
  UNIQUE KEY `matricula` (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aviones`
--

LOCK TABLES `aviones` WRITE;
/*!40000 ALTER TABLE `aviones` DISABLE KEYS */;
INSERT INTO `aviones` VALUES
(1,'EC-1234','Airbus A320',180),
(2,'EC-5678','Boeing 737',160),
(3,'EC-9101','Embraer E195',120),
(4,'EC-1122','Bombardier CRJ900',90),
(5,'EC-3344','Airbus A330',250),
(6,'EC-5566','Boeing 777',300);
/*!40000 ALTER TABLE `aviones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `idCiudad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `idPais` int(11) NOT NULL,
  PRIMARY KEY (`idCiudad`),
  KEY `idPais` (`idPais`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES
(1,'Madrid',1),
(2,'Barcelona',1),
(3,'Valencia',1),
(4,'Sevilla',1),
(5,'Bilbao',1),
(6,'Zaragoza',1),
(7,'París',2),
(8,'Lyon',2),
(9,'Marsella',2),
(10,'Toulouse',2),
(11,'Niza',2),
(12,'Burdeos',2),
(13,'Roma',3),
(14,'Milán',3),
(15,'Venecia',3),
(16,'Florencia',3),
(17,'Nápoles',3),
(18,'Turín',3),
(19,'Berlín',4),
(20,'Múnich',4),
(21,'Hamburgo',4),
(22,'Colonia',4),
(23,'Fráncfort',4),
(24,'Stuttgart',4),
(25,'Lisboa',5),
(26,'Oporto',5),
(27,'Coímbra',5),
(28,'Braga',5),
(29,'Faro',5),
(30,'Aveiro',5),
(31,'Buenos Aires',6),
(32,'Córdoba',6),
(33,'Rosario',6),
(34,'Mendoza',6),
(35,'La Plata',6),
(36,'Salta',6);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion` (
  `idDireccion` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `codigoPostal` int(10) NOT NULL,
  `idCiudad` int(11) NOT NULL,
  PRIMARY KEY (`idDireccion`),
  KEY `idCiudad` (`idCiudad`),
  CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`idCiudad`) REFERENCES `ciudad` (`idCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES
(1,'Calle Mayor','12',45873,5),
(2,'Avenida del Sol','8B',82105,14),
(3,'Paseo del Río','22',19642,1),
(4,'Calle Luna','7',73091,28),
(5,'Calle del Olivo','45',31587,10),
(6,'Avenida Central','103',60234,3),
(7,'Plaza Nueva','19',94718,30),
(8,'Calle Jazmín','4A',27365,16),
(9,'Calle Rosales','78',50129,21),
(10,'Calle Cedro','13',11982,6),
(11,'Camino del Norte','56',88456,2),
(12,'Calle del Mar','9',33701,24),
(13,'Calle Lavanda','15B',77654,11),
(14,'Avenida de los Pinos','34',22590,35),
(15,'Calle del Lago','17',59341,9),
(16,'Calle del Bosque','82',14076,18),
(17,'Avenida Andrómeda','5C',80234,13),
(18,'Calle de las Flores','26',36987,7),
(19,'Calle Romero','39',61453,36),
(20,'Paseo de la Estación','67',90876,19),
(21,'Calle del Prado','88',25109,4),
(22,'Calle Ciprés','52',74210,27),
(23,'Calle de la Estrella','21A',38567,32),
(24,'Paseo del Parque','3',69012,20),
(25,'Calle del Alba','66B',17435,12),
(26,'Calle Olmo','10',83210,1),
(27,'Avenida del Lago','24A',49756,2),
(28,'Calle Acacia','3B',20345,3),
(29,'Calle del Álamo','42',75890,4),
(30,'Calle del Fresno','19C',10987,5),
(31,'Calle del Nogal','78',56789,6),
(32,'Calle de la Viña','6',92345,7),
(33,'Camino Viejo','29B',30456,8),
(34,'Calle Clavel','13',67890,9),
(35,'Calle Azahar','55A',12345,10),
(36,'Calle Pez','101',87654,11),
(37,'Paseo Marítimo','17',43210,12),
(38,'Calle del Halcón','88',98765,13),
(39,'Calle del Sur','9C',21098,14),
(40,'Calle del Valle','61',76543,15),
(41,'Calle Laurel','45',32109,16),
(42,'Calle del Roble','73B',89012,17),
(43,'Calle del Molino','5',54321,18),
(44,'Camino del Prado','30',90123,19),
(45,'Calle del Aire','68A',10987,20),
(46,'Calle de la Arena','12',65432,21),
(47,'Calle del Horizonte','20',23456,22),
(48,'Calle del Albaicín','36C',78901,23),
(49,'Calle de los Cedros','79',34567,24),
(50,'Calle Luna Nueva','48',89012,25);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL AUTO_INCREMENT,
  `metodoPago` varchar(50) NOT NULL,
  `fechaEmision` date NOT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `idReserva` int(11) NOT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `idReserva` (`idReserva`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES
(1,'España'),
(2,'Francia'),
(3,'Italia'),
(4,'Alemania'),
(5,'Portugal'),
(6,'Argentina');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasajeros`
--

DROP TABLE IF EXISTS `pasajeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasajeros` (
  `idPasajero` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `fechaNac` date NOT NULL,
  `idDireccion` int(11) NOT NULL,
  PRIMARY KEY (`idPasajero`),
  UNIQUE KEY `dni` (`dni`),
  KEY `idDireccion` (`idDireccion`),
  CONSTRAINT `pasajeros_ibfk_1` FOREIGN KEY (`idDireccion`) REFERENCES `direccion` (`idDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasajeros`
--

LOCK TABLES `pasajeros` WRITE;
/*!40000 ALTER TABLE `pasajeros` DISABLE KEYS */;
INSERT INTO `pasajeros` VALUES
(1,'luis.martin@example.com','+34612345678','Martín','Luis','12345678A','1985-03-12',1),
(2,'ana.garcia@example.com','+34623456789','García','Ana','87654321B','1990-07-25',2),
(3,'carlos.lopez@example.com','+34634567890','López','Carlos','11223344C','1988-11-04',3),
(4,'maria.fernandez@example.com','+34645678901','Fernández','María','99887766D','1995-05-17',4),
(5,'javier.ruiz@example.com','+34656789012','Ruiz','Javier','55667788E','1978-09-30',5),
(6,'laura.diaz@example.com','+34667890123','Díaz','Laura','44556677F','1982-02-14',6),
(7,'david.sanchez@example.com','+34678901234','Sánchez','David','33445566G','1993-06-08',7),
(8,'elena.moreno@example.com','+34689012345','Moreno','Elena','22334455H','1987-01-22',8),
(9,'sergio.torres@example.com','+34790123456','Torres','Sergio','66778899J','1991-10-10',9),
(10,'cristina.ramos@example.com','+34701234567','Ramos','Cristina','77889900K','1980-04-01',10),
(11,'alberto.molina@example.com','+34712345678','Molina','Alberto','88990011L','1994-12-19',11),
(12,'patricia.navarro@example.com','+34723456789','Navarro','Patricia','99001122M','1989-08-05',12),
(13,'miguel.romero@example.com','+34734567890','Romero','Miguel','10111213N','1992-03-11',13),
(14,'sara.gimenez@example.com','+34745678901','Giménez','Sara','12131415P','1984-06-20',14),
(15,'jorge.vera@example.com','+34756789012','Vera','Jorge','14151617Q','1979-11-27',15),
(16,'nuria.perez@example.com','+34767890123','Pérez','Nuria','16171819R','1996-01-15',16),
(17,'alex.mendez@example.com','+34778901234','Méndez','Álex','18192021S','1986-05-09',17),
(18,'raquel.herrera@example.com','+34789012345','Herrera','Raquel','20212223T','1990-02-28',18),
(19,'fernando.leon@example.com','+34890123456','León','Fernando','22232425U','1983-07-06',19),
(20,'noelia.reyes@example.com','+34801234567','Reyes','Noelia','24252627V','1997-09-03',20),
(21,'rubén.luna@example.com','+34812345678','Luna','Rubén','26272829W','1981-12-12',21),
(22,'veronica.castillo@example.com','+34823456789','Castillo','Verónica','28293031X','1994-04-26',22),
(23,'daniel.arias@example.com','+34834567890','Arias','Daniel','30313233Y','1988-08-13',23),
(24,'ines.cano@example.com','+34845678901','Cano','Inés','32333435Z','1993-10-31',24),
(25,'marcos.vidal@example.com','+34856789012','Vidal','Marcos','34353637A','1985-06-18',25),
(26,'laura.martinez@example.com','+34867890123','Martínez','Laura','36373839B','1989-03-22',26),
(27,'pablo.gonzalez@example.com','+34878901234','González','Pablo','38394041C','1992-07-14',27),
(28,'sofia.lopez@example.com','+34889012345','López','Sofía','40414243D','1995-11-29',28),
(29,'daniel.sanchez@example.com','+34890123456','Sánchez','Daniel','42434445E','1986-05-16',29),
(30,'marta.ramirez@example.com','+34901234567','Ramírez','Marta','44454647F','1991-09-01',30),
(31,'jose.fernandez@example.com','+34912345678','Fernández','José','46474849G','1983-12-19',31),
(32,'ana.vazquez@example.com','+34923456789','Vázquez','Ana','48495051H','1988-02-11',32),
(33,'raul.morales@example.com','+34934567890','Morales','Raúl','50515253J','1994-06-07',33),
(34,'silvia.cortes@example.com','+34945678901','Cortés','Silvia','52535455K','1987-08-30',34),
(35,'fernando.santos@example.com','+34956789012','Santos','Fernando','54555657L','1990-01-24',35),
(36,'maria.villa@example.com','+34967890123','Villa','María','56575859M','1993-04-15',36),
(37,'luis.garcia@example.com','+34978901234','García','Luis','58596061N','1985-07-02',37),
(38,'elena.martin@example.com','+34989012345','Martín','Elena','60616263P','1991-12-13',38),
(39,'javier.rodriguez@example.com','+34990123456','Rodríguez','Javier','62636465Q','1984-03-28',39),
(40,'noelia.lopez@example.com','+34901234567','López','Noelia','64656667R','1996-08-19',40),
(41,'pablo.diaz@example.com','+34912345678','Díaz','Pablo','66676869S','1987-11-07',41),
(42,'sofia.gomez@example.com','+34923456789','Gómez','Sofía','68697071T','1990-05-23',42),
(43,'daniel.martinez@example.com','+34934567890','Martínez','Daniel','70717273U','1982-09-15',43),
(44,'marta.fernandez@example.com','+34945678901','Fernández','Marta','72737475V','1993-02-04',44),
(45,'jose.sanchez@example.com','+34956789012','Sánchez','José','74757677W','1989-06-10',45),
(46,'ana.ruiz@example.com','+34967890123','Ruiz','Ana','76777879X','1985-10-30',46),
(47,'raul.gonzalez@example.com','+34978901234','González','Raúl','78798081Y','1992-01-21',47),
(48,'silvia.rodriguez@example.com','+34989012345','Rodríguez','Silvia','80818283Z','1987-04-18',48),
(49,'fernando.lopez@example.com','+34990123456','López','Fernando','82838485A','1991-09-29',49),
(50,'maria.perez@example.com','+34901234567','Pérez','María','84858687B','1984-12-11',50);
/*!40000 ALTER TABLE `pasajeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserva` (
  `idReserva` int(11) NOT NULL AUTO_INCREMENT,
  `fechaReserva` date NOT NULL,
  `estado` varchar(50) NOT NULL,
  `idPasajero` int(11) NOT NULL,
  PRIMARY KEY (`idReserva`),
  KEY `idPasajero` (`idPasajero`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`idPasajero`) REFERENCES `pasajeros` (`idPasajero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajadores`
--

DROP TABLE IF EXISTS `trabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajadores` (
  `idTrabajador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `sueldo` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idTrabajador`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores`
--

LOCK TABLES `trabajadores` WRITE;
/*!40000 ALTER TABLE `trabajadores` DISABLE KEYS */;
INSERT INTO `trabajadores` VALUES
(1,'Ana López','A12345678','Piloto',4500.00),
(2,'Luis Martínez','B23456789','Azafato',2200.00),
(3,'María González','C34567890','Controlador de tráfico',3800.00),
(4,'Javier Fernández','D45678901','Mecánico',3200.00),
(5,'Elena Sánchez','E56789012','Piloto',4600.00),
(6,'Carlos Ruiz','F67890123','Azafato',2100.00),
(7,'Laura Díaz','G78901234','Administrativo',2500.00),
(8,'David Pérez','H89012345','Mecánico',3100.00),
(9,'Sara Jiménez','I90123456','Controlador de tráfico',3900.00),
(10,'Miguel Torres','J01234567','Piloto',4700.00),
(11,'Nuria Morales','K12345678','Azafato',2150.00),
(12,'Álvaro Castro','L23456789','Mecánico',3300.00),
(13,'Raquel Navarro','M34567890','Administrativo',2600.00),
(14,'Pablo Gil','N45678901','Controlador de tráfico',3700.00),
(15,'Isabel Romero','O56789012','Azafato',2250.00),
(16,'Fernando León','P67890123','Piloto',4800.00),
(17,'Marta Vega','Q78901234','Administrativo',2550.00),
(18,'Jorge Ruiz','R89012345','Mecánico',3000.00),
(19,'Carmen Molina','S90123456','Azafato',2100.00),
(20,'Diego Castillo','T01234567','Controlador de tráfico',4000.00);
/*!40000 ALTER TABLE `trabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelos`
--

DROP TABLE IF EXISTS `vuelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vuelos` (
  `idVuelo` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `origen` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `duracion` time NOT NULL,
  `codigoVuelo` varchar(20) NOT NULL,
  `idAvion` int(11) NOT NULL,
  PRIMARY KEY (`idVuelo`),
  KEY `idAvion` (`idAvion`),
  CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`idAvion`) REFERENCES `aviones` (`idAvion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelos`
--

LOCK TABLES `vuelos` WRITE;
/*!40000 ALTER TABLE `vuelos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vuelos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER generarAsientos
AFTER INSERT ON vuelos
FOR EACH ROW
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE cap_avion INT;
    DECLARE clase_asiento VARCHAR(50);
    DECLARE precio DECIMAL(10,2);
    DECLARE msg_error VARCHAR(255);

   
    SELECT capacidad INTO cap_avion
    FROM aviones
    WHERE idAvion = NEW.idAvion
    LIMIT 1;

    WHILE i <= cap_avion DO
       
        IF i <= cap_avion * 0.2 THEN
            SET clase_asiento = 'Primera';
            SET precio = 300.00;
        ELSEIF i <= cap_avion * 0.5 THEN
            SET clase_asiento = 'Business';
            SET precio = 200.00;
        ELSE
            SET clase_asiento = 'Turista';
            SET precio = 100.00;
        END IF;

       
        INSERT INTO asiento (numeroAsiento, clase, precio, disponible, idVuelo)
        VALUES (CONCAT('A', i), clase_asiento, precio, 1, NEW.idVuelo);

        SET i = i + 1;
    END WHILE;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER asignarTrabajadores
AFTER INSERT ON vuelos
FOR EACH ROW
BEGIN
   
    INSERT INTO vuelosTrabajadores (idVuelo, idTrabajador)
    SELECT NEW.idVuelo, t.idTrabajador
    FROM trabajadores t
    WHERE t.idTrabajador NOT IN (
        SELECT vt.idTrabajador
        FROM vuelosTrabajadores vt
        JOIN vuelos v ON vt.idVuelo = v.idVuelo
        WHERE v.fecha = NEW.fecha
    )
    ORDER BY RAND()
    LIMIT 3;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vuelosTrabajadores`
--

DROP TABLE IF EXISTS `vuelosTrabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vuelosTrabajadores` (
  `idVuelo` int(11) NOT NULL,
  `idTrabajador` int(11) NOT NULL,
  PRIMARY KEY (`idVuelo`,`idTrabajador`),
  KEY `idTrabajador` (`idTrabajador`),
  CONSTRAINT `vuelosTrabajadores_ibfk_1` FOREIGN KEY (`idVuelo`) REFERENCES `vuelos` (`idVuelo`),
  CONSTRAINT `vuelosTrabajadores_ibfk_2` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajadores` (`idTrabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelosTrabajadores`
--

LOCK TABLES `vuelosTrabajadores` WRITE;
/*!40000 ALTER TABLE `vuelosTrabajadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `vuelosTrabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'aerolinea'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generarVuelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generarVuelo`(
    IN ciudad_origen_in VARCHAR(100),
    IN ciudad_destino_in VARCHAR(100),
    IN fechaVuelo_in DATE,
    IN AvionId_in INT
)
BEGIN
    DECLARE duracion TIME;
    DECLARE codigo VARCHAR(10);
    DECLARE existe INT;
       
       
            IF (ciudad_destino_in = ciudad_origen_in)
            THEN
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'El origen y el destino no pueden ser el mismo';
            END IF;
       
        IF EXISTS (
            SELECT 1 FROM vuelos
            WHERE fecha = fechaVuelo_in AND idAvion = AvionId_in
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El avión ya está asignado a otro vuelo en esa fecha';
        END IF;

       
        SET duracion = SEC_TO_TIME(FLOOR(RAND() * (36000 - 3600 + 1)) + 3600);

       
        REPEAT
            SET codigo = CONCAT('FL', LPAD(FLOOR(RAND() * 10000), 4, '0'));
            SET existe = (SELECT COUNT(*) FROM vuelos WHERE codigoVuelo = codigo);
        UNTIL existe = 0 END REPEAT;

       
    INSERT INTO vuelos (fecha, origen, destino, duracion, codigoVuelo, idAvion)
    VALUES (fechaVuelo_in, ciudad_origen_in, ciudad_destino_in, duracion, codigo, AvionId_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generarVuelosAleatorios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generarVuelosAleatorios`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE ciudad_origen VARCHAR(100);
    DECLARE ciudad_destino VARCHAR(100);
    DECLARE duracion TIME;
    DECLARE codigo VARCHAR(10);
    DECLARE AvionId INT;
    DECLARE fechaVuelo DATE;
    DECLARE existe INT;

   
    WHILE i < cantidad DO
        SET ciudad_origen = (SELECT nombre FROM ciudad ORDER BY RAND() LIMIT 1);
        REPEAT
            SET ciudad_destino = (SELECT nombre FROM ciudad ORDER BY RAND() LIMIT 1);
        UNTIL ciudad_destino <> ciudad_origen END REPEAT;

       
        SET duracion = SEC_TO_TIME(FLOOR(RAND() * (36000 - 3600 + 1)) + 3600);

       
        REPEAT
            SET codigo = CONCAT('FL', LPAD(FLOOR(RAND() * 10000), 4, '0'));
            SET existe = (SELECT COUNT(*) FROM vuelos WHERE codigoVuelo = codigo);
        UNTIL existe = 0 END REPEAT;

       
        SET fechaVuelo = DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND()*30) DAY);

       
        REPEAT
            SET AvionId = (SELECT idAvion FROM aviones ORDER BY RAND() LIMIT 1);
            SET existe = (SELECT COUNT(*) FROM vuelos WHERE idAvion = AvionId AND fecha = fechaVuelo);
        UNTIL existe = 0 END REPEAT;

       
        INSERT INTO vuelos (fecha, origen, destino, duracion, codigoVuelo, idAvion)
        VALUES (fechaVuelo, ciudad_origen, ciudad_destino, duracion, codigo, AvionId);

        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pagarReserva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pagarReserva`(
    IN p_idReserva INT,
    IN p_metodoPago VARCHAR(50)
)
BEGIN
    DECLARE v_total DECIMAL(10,2);
    DECLARE v_estado VARCHAR(50);

   
    SELECT estado INTO v_estado
    FROM reserva
    WHERE idReserva = p_idReserva;

    IF v_estado = 'Pagada' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La reserva ya está pagada.';
    END IF;

   
    SELECT SUM(a.precio) INTO v_total
    FROM asiento a
    WHERE a.idReserva = p_idReserva;

   
    INSERT INTO factura (metodoPago, fechaEmision, total, idReserva)
    VALUES (p_metodoPago, CURDATE(), v_total, p_idReserva);

   
    UPDATE reserva
    SET estado = 'Pagada'
    WHERE idReserva = p_idReserva;

   
    SELECT
        CONCAT(p.nombre, ' ', p.apellido) AS nombreCliente,
        GROUP_CONCAT(a.numeroAsiento ORDER BY a.numeroAsiento SEPARATOR ', ') AS asientosComprados,
        r.idReserva,
        v_total AS precioTotal,
        f.idFactura
    FROM reserva r
    JOIN pasajeros p ON r.idPasajero = p.idPasajero
    JOIN asiento a ON a.idReserva = r.idReserva
    JOIN factura f ON f.idReserva = r.idReserva
    WHERE r.idReserva = p_idReserva
    GROUP BY p.nombre, p.apellido, r.idReserva, f.idFactura;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reservarAsientos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reservarAsientos`(
    IN p_idPasajero INT,
    IN p_idVuelo INT,
    IN p_clase VARCHAR(50),
    IN p_cantidad INT
)
BEGIN
    DECLARE v_cantidadDisponible INT DEFAULT 0;
    DECLARE v_idAsiento INT;
    DECLARE v_idReserva INT;
    DECLARE done INT DEFAULT 0;
    DECLARE v_errorMsg VARCHAR(255);

    DECLARE cur CURSOR FOR
        SELECT idAsiento
        FROM asiento
        WHERE idVuelo = p_idVuelo
          AND LOWER(clase) = LOWER(p_clase)
          AND disponible = 1
        LIMIT p_cantidad;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

   
    SELECT COUNT(*) INTO v_cantidadDisponible
    FROM asiento
    WHERE idVuelo = p_idVuelo
      AND LOWER(clase) = LOWER(p_clase)
      AND disponible = 1;
       
    IF v_cantidadDisponible < p_cantidad THEN
        SET v_errorMsg = CONCAT('No hay suficientes asientos disponibles. Solo quedan ', v_cantidadDisponible, '.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_errorMsg;
    END IF;

   
    INSERT INTO reserva (fechaReserva, estado, idPasajero)
    VALUES (CURDATE(), 'Confirmada', p_idPasajero);
    SET v_idReserva = LAST_INSERT_ID();

   
    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO v_idAsiento;
        IF done THEN
            LEAVE read_loop;
        END IF;

       
        UPDATE asiento
        SET idReserva = v_idReserva,
            disponible = 0
        WHERE idAsiento = v_idAsiento;

    END LOOP;

    CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-05-27  9:11:33