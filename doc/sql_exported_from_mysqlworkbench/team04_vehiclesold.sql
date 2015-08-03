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
-- Table structure for table `vehiclesold`
--

DROP TABLE IF EXISTS `vehiclesold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiclesold` (
  `vlicense` varchar(10) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `solddate` date DEFAULT NULL,
  `typeName` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `odometer` int(11) DEFAULT NULL,
  PRIMARY KEY (`vlicense`),
  KEY `manager_ind` (`manager`),
  CONSTRAINT `vehiclesold_ibfk_1` FOREIGN KEY (`manager`) REFERENCES `manager` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclesold`
--

LOCK TABLES `vehiclesold` WRITE;
/*!40000 ALTER TABLE `vehiclesold` DISABLE KEYS */;
INSERT INTO `vehiclesold` VALUES ('ABC-123',1000000,'2015-04-07','foot12','truck','Toyota','frank1',0),('ABC-125',1000000,'2015-04-07','economy','car','Toyota','frank1',0),('ABC-128',1000000,'2015-04-07','economy','car','BMW','frank1',0),('ABC-456',1000000,'2015-04-07','foot12','truck','Toyota','frank1',0),('ACPL1S',300000,'2015-04-07','luxury','car','BMW','frank1',60000),('ADN-345',250000,'2015-04-10','van','car','GOO','frank1',0),('BCPL9S',700000,'2015-04-17','luxury','car','BMW','frank1',60000),('MNB-26',1000000,'2015-04-17','standard','car','BMW','frank1',0),('PLT-4U1',6000000,'2014-02-03','economy','car','BMW','frank1',60000),('PLT-4UP',5000000,'2014-02-02','economy','car','BMW','frank1',30000),('YAH-OO',1000000,'2015-04-17','foot12','truck','Ford FSeries','frank1',30000);
/*!40000 ALTER TABLE `vehiclesold` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-17 23:45:41
