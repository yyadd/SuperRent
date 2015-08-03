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
-- Table structure for table `vehicletype`
--

DROP TABLE IF EXISTS `vehicletype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicletype` (
  `typeName` varchar(20) NOT NULL,
  `w_rate` int(11) DEFAULT NULL,
  `d_rate` int(11) DEFAULT NULL,
  `h_rate` int(11) DEFAULT NULL,
  `pk_rate` int(11) DEFAULT NULL,
  `w_insurance` int(11) DEFAULT NULL,
  `d_insurance` int(11) DEFAULT NULL,
  `h_insurance` int(11) DEFAULT NULL,
  `milelimit` int(11) DEFAULT NULL,
  PRIMARY KEY (`typeName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicletype`
--

LOCK TABLES `vehicletype` WRITE;
/*!40000 ALTER TABLE `vehicletype` DISABLE KEYS */;
INSERT INTO `vehicletype` VALUES ('boxtrucks',10000,2000,500,300,28000,1000,200,40),('cargovans',85000,12500,2500,200,28000,1000,200,40),('compact',40000,5500,1100,200,28000,1000,200,40),('economy',35000,5000,1000,200,28000,1000,200,40),('foot12',2000,1000,1500,200,28000,1000,200,40),('foot15',50000,5500,1200,200,28000,200,1000,40),('foot24',60000,8000,1700,200,28000,1000,200,40),('full-size',10000,2000,1400,200,28000,1000,200,40),('luxury',320000,80000,16000,200,28000,1000,200,40),('midsize',35000,5000,1200,200,28000,1000,200,40),('premium',50000,7500,1500,200,28000,1000,200,40),('standard',50000,6500,1300,200,28000,1000,200,40),('suv',63000,9000,1800,200,28000,1000,200,40),('van',70000,10000,2000,200,28000,1000,200,40);
/*!40000 ALTER TABLE `vehicletype` ENABLE KEYS */;
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
