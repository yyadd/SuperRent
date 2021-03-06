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
-- Table structure for table `rent_addon`
--

DROP TABLE IF EXISTS `rent_addon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rent_addon` (
  `rentid` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `equipName` varchar(20) NOT NULL,
  PRIMARY KEY (`rentid`,`equipName`),
  KEY `rent_ind` (`rentid`),
  KEY `equip_ind` (`equipName`),
  CONSTRAINT `rent_addon_ibfk_1` FOREIGN KEY (`rentid`) REFERENCES `rent` (`rentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rent_addon_ibfk_2` FOREIGN KEY (`equipName`) REFERENCES `equipment` (`equipName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_addon`
--

LOCK TABLES `rent_addon` WRITE;
/*!40000 ALTER TABLE `rent_addon` DISABLE KEYS */;
INSERT INTO `rent_addon` VALUES (1,1,'child_safety_seat'),(1,1,'ski_rack'),(2,1,'child_safety_seat'),(2,1,'ski_rack'),(3,1,'ski_rack'),(4,1,'child_safety_seat'),(7,2,'lift_gate'),(9,2,'lift_gate'),(10,1,'car_towing'),(15,1,'child_safety_seat'),(15,1,'ski_rack'),(18,1,'child_safety_seat'),(18,1,'ski_rack'),(19,1,'car_towing'),(19,1,'lift_gate'),(20,1,'child_safety_seat'),(20,1,'ski_rack'),(22,1,'child_safety_seat'),(22,1,'ski_rack'),(23,1,'child_safety_seat'),(23,1,'ski_rack'),(25,1,'car_towing'),(26,1,'car_towing'),(27,1,'car_towing'),(28,1,'car_towing'),(28,1,'lift_gate'),(29,1,'child_safety_seat'),(30,1,'child_safety_seat'),(31,1,'child_safety_seat'),(35,1,'child_safety_seat'),(35,2,'ski_rack'),(36,1,'child_safety_seat'),(42,2,'child_safety_seat'),(61,1,'child_safety_seat'),(61,1,'ski_rack'),(72,1,'child_safety_seat'),(72,2,'ski_rack');
/*!40000 ALTER TABLE `rent_addon` ENABLE KEYS */;
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
