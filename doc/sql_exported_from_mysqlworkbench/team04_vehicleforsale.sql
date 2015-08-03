-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: dbserver.mss.icics.ubc.ca    Database: team04
-- ------------------------------------------------------
-- Server version	5.5.33-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vehicleforsale`
--

DROP TABLE IF EXISTS `vehicleforsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicleforsale` (
  `vlicense` varchar(10) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `vehicleType` varchar(20) DEFAULT NULL,
  `odometer` int(11) DEFAULT NULL,
  PRIMARY KEY (`vlicense`),
  KEY `vehicleType_ind` (`vehicleType`),
  CONSTRAINT `vehicleforsale_ibfk_1` FOREIGN KEY (`vehicleType`) REFERENCES `vehicletype` (`typeName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleforsale`
--

LOCK TABLES `vehicleforsale` WRITE;
/*!40000 ALTER TABLE `vehicleforsale` DISABLE KEYS */;
INSERT INTO `vehicleforsale` VALUES ('ACPL2S',300000,'2010-05-01','car','BMW','midsize',60000),('ACPL3S',300000,'1999-05-01','truck','Dodge Ram','foot15',90000),('ACPL4S',300000,'2000-05-01','truck','Dodge Ram','foot24',90000),('ACPL5S',300000,'2007-05-01','truck','Dodge Ram','foot12',90000),('ACPL6S',300000,'2008-05-01','truck','Dodge Ram','foot15',90000),('ACPL7S',300000,'2009-05-01','truck','Dodge Ram','foot24',90000),('ACPL8S',300000,'2009-05-02','truck','BMW','boxtrucks',90000),('ASD-27',8000000,'2015-04-11','car','BMW','economy',0),('BCPL0S',300000,'2008-05-01','car','BMW','luxury',60000),('BCPL1S',300000,'2000-05-01','car','BMW','economy',30000),('BCPL2S',300000,'2006-05-01','car','BMW','economy',30000),('BCPL3S',300000,'2007-05-01','car','BMW','economy',30000),('BCPL4S',300000,'2008-05-01','car','BMW','compact',30000),('BCPL5S',300000,'2009-05-01','car','BMW','compact',60000),('BCPL6S',300000,'2010-05-01','car','BMW','compact',60000),('BCPL7S',300000,'1999-05-01','car','BMW','full-size',60000),('BCPL8S',300000,'2000-05-01','car','BMW','full-size',60000),('FMAZON',1000000,'1999-05-01','truck','Dodge Ram','cargovans',30000),('IGODAR',1000000,'2000-05-01','car','BMW','premium',60000),('IGONAR',1000000,'1999-05-01','car','BMW','van',30000),('IGOOAR',100000,'2000-05-01','truck','Ford FSeries','foot12',30000),('OUR EC',1000000,'1977-05-01','car','BMW','luxury',60000);
/*!40000 ALTER TABLE `vehicleforsale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-17 23:45:40
