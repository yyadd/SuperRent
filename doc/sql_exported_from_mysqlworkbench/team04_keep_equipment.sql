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
-- Table structure for table `keep_equipment`
--

DROP TABLE IF EXISTS `keep_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keep_equipment` (
  `equipName` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL DEFAULT '',
  `location` varchar(20) NOT NULL DEFAULT '',
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`equipName`,`city`,`location`),
  KEY `equip_ind` (`equipName`),
  KEY `branch_ind` (`city`),
  KEY `location_ind` (`location`),
  KEY `city` (`city`,`location`),
  CONSTRAINT `keep_equipment_ibfk_1` FOREIGN KEY (`equipName`) REFERENCES `equipment` (`equipName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `keep_equipment_ibfk_2` FOREIGN KEY (`city`, `location`) REFERENCES `branch` (`city`, `location`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keep_equipment`
--

LOCK TABLES `keep_equipment` WRITE;
/*!40000 ALTER TABLE `keep_equipment` DISABLE KEYS */;
INSERT INTO `keep_equipment` VALUES ('car_towing','Toronto','300 Regina Street',11),('car_towing','Vancouver','2660 Wesbrook Mall',10),('child_safety_seat','Toronto','300 Regina Street',19),('child_safety_seat','Vancouver','2660 Wesbrook Mall',12),('lift_gate','Toronto','300 Regina Street',10),('lift_gate','Vancouver','2660 Wesbrook Mall',10),('ski_rack','Toronto','300 Regina Street',10),('ski_rack','Vancouver','2660 Wesbrook Mall',13);
/*!40000 ALTER TABLE `keep_equipment` ENABLE KEYS */;
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
