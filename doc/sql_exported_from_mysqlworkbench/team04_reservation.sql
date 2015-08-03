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
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `confirmation_number` int(11) NOT NULL AUTO_INCREMENT,
  `pickup_date` date DEFAULT NULL,
  `pickup_time` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_time` int(11) DEFAULT NULL,
  `branch_city` varchar(20) DEFAULT NULL,
  `branch_location` varchar(20) DEFAULT NULL,
  `customer_username` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `vehicleType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`confirmation_number`),
  KEY `branch_ind` (`branch_city`),
  KEY `location_ind` (`branch_location`),
  KEY `branch_city` (`branch_city`,`branch_location`),
  KEY `customer_ind` (`customer_username`),
  KEY `type_ind` (`customer_username`),
  KEY `vehicleType` (`vehicleType`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`branch_city`, `branch_location`) REFERENCES `branch` (`city`, `location`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`customer_username`) REFERENCES `customer` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`vehicleType`) REFERENCES `vehicletype` (`typeName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2014-02-04',3,'2014-02-06',8,'Toronto','300 Regina Street','frank7','expired','economy'),(2,'2014-04-04',3,'2014-04-06',8,'Toronto','300 Regina Street','frank7','pending','economy'),(3,'2014-03-04',3,'2014-03-06',8,'Vancouver','2660 Wesbrook Mall','frank8','expired','economy'),(4,'2014-04-04',3,'2014-04-06',8,'Vancouver','2660 Wesbrook Mall','frank8','rented','economy'),(5,'2014-03-04',3,'2014-03-06',8,'Vancouver','2660 Wesbrook Mall','frank9','expired','economy'),(6,'2014-04-04',3,'2014-04-06',8,'Vancouver','2660 Wesbrook Mall','frank9','rented','economy'),(7,'2014-03-04',3,'2014-03-06',8,'Toronto','300 Regina Street','customer','expired','foot24'),(8,'2014-04-04',3,'2014-04-06',8,'Toronto','300 Regina Street','customer','rented','foot24'),(9,'2014-03-04',3,'2014-03-06',8,'Toronto','300 Regina Street','frank10','expired','boxtrucks'),(10,'2014-04-04',3,'2014-04-06',8,'Toronto','300 Regina Street','frank10','rented','boxtrucks'),(11,'2012-02-04',3,'2012-02-06',8,'Toronto','300 Regina Street','frank7','expired','boxtrucks'),(12,'2012-06-04',3,'2012-06-06',8,'Toronto','300 Regina Street','frank7','rented','boxtrucks'),(13,'2015-04-09',6,'2015-04-30',9,'Vancouver','2660 Wesbrook Mall','supfrank','rented','economy'),(15,'2015-04-08',6,'2015-04-22',7,'Vancouver','2660 Wesbrook Mall','frank8','rented','economy'),(16,'2015-04-10',8,'2015-04-23',14,'Vancouver','2660 Wesbrook Mall','customer26','rented','economy'),(17,'2015-04-10',8,'2015-04-23',14,'Vancouver','2660 Wesbrook Mall','customer27','rented','boxtrucks'),(18,'2015-04-10',6,'2015-04-23',11,'Vancouver','2660 Wesbrook Mall','customer14','pending','midsize'),(19,'2015-04-11',6,'2015-04-14',6,'Toronto','300 Regina Street','customer','pending','suv'),(22,'2015-04-13',6,'2015-04-14',6,'Toronto','300 Regina Street','namitha','cancelled','economy'),(23,'2015-04-14',6,'2015-04-15',6,'Toronto','300 Regina Street','namitha','cancelled','economy'),(24,'2015-04-14',6,'2015-04-15',6,'Toronto','300 Regina Street','namitha','rented','cargovans'),(25,'2015-04-20',6,'2015-04-21',6,'Toronto','300 Regina Street','namitha','rented','van'),(26,'2015-04-14',6,'2015-04-22',9,'Vancouver','2660 Wesbrook Mall','namitha','rented','full-size'),(27,'2015-04-15',6,'2015-04-30',9,'Toronto','300 Regina Street','namitha','rented','economy'),(28,'2015-04-17',6,'2015-04-30',10,'Toronto','300 Regina Street','namitha','rented','suv'),(29,'2015-04-17',6,'2015-04-30',10,'Vancouver','2660 Wesbrook Mall','namitha','rented','premium'),(31,'2015-04-23',6,'2015-04-29',11,'Vancouver','2660 Wesbrook Mall','namitha','rented','full-size'),(32,'2015-04-15',6,'2015-04-23',6,'Vancouver','2660 Wesbrook Mall','namitha','rented','luxury'),(48,'2015-04-16',6,'2015-04-21',12,'Vancouver','2660 Wesbrook Mall','customer','pending','standard'),(53,'2015-04-16',6,'2015-04-22',8,'Toronto','300 Regina Street','newCustomer','cancelled','premium'),(54,'2015-04-17',20,'2015-04-22',6,'Vancouver','2660 Wesbrook Mall','customer18','rented','luxury'),(58,'2015-04-17',6,'2015-04-20',9,'Vancouver','2660 Wesbrook Mall','customer18','pending','premium'),(61,'2015-04-18',6,'2015-04-19',6,'Vancouver','2660 Wesbrook Mall','namitha','pending','premium'),(62,'2015-04-17',20,'2015-04-21',6,'Vancouver','2660 Wesbrook Mall','customer24','rented','full-size'),(63,'2015-04-17',15,'2015-04-18',18,'Toronto','300 Regina Street','namitha','cancelled','premium');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
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
