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
-- Table structure for table `vreturn`
--

DROP TABLE IF EXISTS `vreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vreturn` (
  `returnid` int(11) NOT NULL AUTO_INCREMENT,
  `rent_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_time` int(11) DEFAULT NULL,
  `branch_city` varchar(20) DEFAULT NULL,
  `branch_location` varchar(20) DEFAULT NULL,
  `tank_full` tinyint(1) DEFAULT NULL,
  `odometer` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`returnid`),
  KEY `branch_ind` (`branch_city`),
  KEY `location_ind` (`branch_location`),
  KEY `branch_city` (`branch_city`,`branch_location`),
  KEY `rent_ind` (`rent_id`),
  CONSTRAINT `vreturn_ibfk_1` FOREIGN KEY (`branch_city`, `branch_location`) REFERENCES `branch` (`city`, `location`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vreturn_ibfk_2` FOREIGN KEY (`rent_id`) REFERENCES `rent` (`rentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vreturn`
--

LOCK TABLES `vreturn` WRITE;
/*!40000 ALTER TABLE `vreturn` DISABLE KEYS */;
INSERT INTO `vreturn` VALUES (1,1,'2014-03-06',8,'Vancouver','2660 Wesbrook Mall',1,30070,23000,'Cash'),(2,3,'2014-03-08',20,'Toronto','300 Regina Street',1,30080,24000,'Visa'),(4,7,'2014-03-08',10,'Toronto','300 Regina Street',1,30060,20000,'Visa'),(5,9,'2014-03-06',8,'Toronto','300 Regina Street',1,30070,25000,'Cash'),(6,11,'2014-03-19',9,'Toronto','300 Regina Street',1,30070,23000,'Visa'),(7,15,'2015-04-09',6,'Toronto','300 Regina Street',1,30090,23000,'Cash'),(8,16,'2015-06-23',4,'Toronto','300 Regina Street',1,30090,23000,'Cash'),(9,18,'2015-04-25',4,'Vancouver','2660 Wesbrook Mall',1,30090,23000,'Cash'),(10,20,'2015-04-09',4,'Vancouver','2660 Wesbrook Mall',1,30090,2300,'Cash'),(11,23,'2015-04-09',4,'Vancouver','2660 Wesbrook Mall',1,30090,2300,'Cash'),(12,25,'2015-04-09',4,'Toronto','300 Regina Street',1,30450,9300,'Cash'),(13,10,'2014-04-04',4,'Toronto','300 Regina Street',1,30450,2300,'Visa'),(20,17,'2015-04-24',6,'Toronto','300 Regina Street',1,44444,NULL,NULL),(21,8,'2015-04-15',6,'Toronto','300 Regina Street',1,33333,2300,NULL),(22,2,'2015-04-15',6,'Toronto','300 Regina Street',1,33333,2300,NULL),(40,47,'2015-04-29',6,'Toronto','300 Regina Street',1,10000,2000,'Cash'),(41,46,'2015-04-30',6,'Toronto','300 Regina Street',1,10000,2025,'Cash'),(54,56,'2015-04-17',6,'Vancouver','2660 Wesbrook Mall',0,700000,2994,'Cash'),(55,36,'2015-04-17',6,'Toronto','300 Regina Street',1,90000,5568,'Visa'),(56,4,'2015-04-17',6,'Toronto','300 Regina Street',1,90000,39864,'Cash'),(57,6,'2015-04-17',6,'Toronto','300 Regina Street',1,90000,35964,'Visa'),(58,13,'2015-04-17',6,'Toronto','300 Regina Street',1,90000,34741,'Cash'),(59,65,'2015-04-17',6,'Toronto','300 Regina Street',1,10000000,19820,'Cash'),(60,35,'2015-04-17',6,'Toronto','300 Regina Street',1,90000,994,'Cash'),(61,32,'2015-04-17',6,'Toronto','300 Regina Street',1,100000,813,'Cash'),(62,28,'2015-04-17',8,'Toronto','300 Regina Street',1,900000,2946,'Cash'),(63,39,'2015-04-14',10,'Toronto','300 Regina Street',0,34567,315,'Cash');
/*!40000 ALTER TABLE `vreturn` ENABLE KEYS */;
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
