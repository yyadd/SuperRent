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
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rent` (
  `rentid` int(11) NOT NULL AUTO_INCREMENT,
  `is_reserve` tinyint(1) DEFAULT NULL,
  `driver_license` varchar(20) DEFAULT NULL,
  `vlicense` varchar(10) DEFAULT NULL,
  `branch_city` varchar(20) DEFAULT NULL,
  `branch_location` varchar(20) DEFAULT NULL,
  `customer_username` varchar(20) DEFAULT NULL,
  `card_type` varchar(40) DEFAULT NULL,
  `card_no` varchar(40) DEFAULT NULL,
  `expiry_date` varchar(20) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `from_time` int(11) DEFAULT NULL,
  `expected_return_date` date DEFAULT NULL,
  `expected_return_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`rentid`),
  KEY `vehicle_ind` (`vlicense`),
  KEY `branch_ind` (`branch_city`),
  KEY `location_ind` (`branch_location`),
  KEY `branch_city` (`branch_city`,`branch_location`),
  KEY `customer_ind` (`customer_username`),
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`vlicense`) REFERENCES `vehicleinbranch` (`vlicense`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`branch_city`, `branch_location`) REFERENCES `branch` (`city`, `location`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rent_ibfk_3` FOREIGN KEY (`customer_username`) REFERENCES `customer` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (1,1,'A123456789871','PLT-4M','Vancouver','2660 Wesbrook Mall','frank8','Visa','4507556798979871','03/2017','2014-02-04',3,'2014-02-06',8),(2,1,'A123456789871','PLT-4M','Vancouver','2660 Wesbrook Mall','frank8','Visa','4507556798979871','03/2017','2014-04-04',3,'2014-04-06',8),(3,1,'A123456789872','QMAZON','Toronto','300 Regina Street','frank7','Visa','4507556798979872','03/2017','2014-03-04',3,'2014-03-06',8),(4,1,'A123456789872','QMAZON','Toronto','300 Regina Street','frank7','Visa','4507556798979872','03/2017','2014-04-04',3,'2014-04-06',8),(6,1,'A123456789873','GM','Vancouver','2660 Wesbrook Mall','frank9','Visa','4507556798979873','03/2017','2014-04-04',3,'2014-04-06',8),(7,1,'A123456789874','GOOGLE','Toronto','300 Regina Street','frank10','Visa','4507556798979874','03/2017','2014-03-04',3,'2014-03-06',8),(8,1,'A123456789874','GOOGLE','Toronto','300 Regina Street','frank10','Visa','4507556798979874','03/2017','2014-04-04',3,'2014-04-06',8),(9,1,'A123456789875','CMAZON','Toronto','300 Regina Street','customer','Visa','4507556798979875','03/2017','2014-03-04',3,'2014-03-06',8),(10,1,'A123456789875','CMAZON','Toronto','300 Regina Street','customer','Visa','4507556798979875','03/2017','2014-04-04',3,'2014-04-06',8),(11,0,'A123456789875','CMAZON','Toronto','300 Regina Street','customer','Visa','4507556798979875','03/2017','2014-03-11',3,'2014-03-16',8),(12,0,'A123456789875','CMAZON','Toronto','300 Regina Street','customer','Visa','4507556798979875','03/2017','2014-04-17',3,'2014-04-23',8),(13,0,'A123433789875','PLT-4C','Vancouver','2660 Wesbrook Mall','supfrank','Visa','4507556798979444','03/2017','2014-04-17',3,'2014-04-23',8),(15,0,'A123567','OUR VC','Vancouver','2660 Wesbrook Mall','customer','null','null','null','2015-04-06',6,'2015-04-23',9),(16,0,'B123456','EMAZON','Toronto','300 Regina Street','frank7','Visa','4916211773236607','06/2017','2012-06-04',6,'2012-06-06',9),(17,0,'A712','EMAZON','Toronto','300 Regina Street','frank7','null','null','null','2012-06-04',0,'2012-06-06',0),(18,0,'A12345','OUR BC','Vancouver','2660 Wesbrook Mall','supfrank','null','null','null','2015-04-09',6,'2015-04-30',9),(19,0,'A34567','4U 2NCY','Vancouver','2660 Wesbrook Mall','frank9','null','null','null','2015-04-09',6,'2015-04-23',7),(20,0,'B12345','HOW DOO','Vancouver','2660 Wesbrook Mall','frank8','null','null','null','2015-04-08',6,'2015-04-22',7),(22,0,'ACUST-3','IGOMAR','Toronto','300 Regina Street','customer3','null','null','null','2015-04-07',6,'2015-04-10',9),(23,0,'ACUST-4','IGONAR','Toronto','300 Regina Street','customer4','null','null','null','2015-04-08',6,'2015-04-13',9),(25,0,'ACUST-6','IGOOAR','Toronto','300 Regina Street','customer6','null','null','null','2015-04-08',6,'2015-04-13',9),(26,0,'ACUST-7','BMAZON','Toronto','300 Regina Street','customer7','null','null','null','2015-04-08',6,'2015-04-13',9),(27,0,'ACUST-8','4U 2NRY','Vancouver','2660 Wesbrook Mall','customer8','null','null','null','2015-04-08',6,'2015-04-13',11),(28,0,'ACUST-9','OUR CC','Vancouver','2660 Wesbrook Mall','customer9','null','null','null','2015-04-07',6,'2015-04-16',11),(29,0,'ACUST-10','IGOFAR','Vancouver','2660 Wesbrook Mall','customer10','null','null','null','2015-04-07',6,'2015-04-28',13),(30,0,'ACUST11','IGOCAR','Vancouver','2660 Wesbrook Mall','customer11','null','null','null','2015-04-08',10,'2015-04-16',15),(31,0,'ACUST-12','IGOGAR','Vancouver','2660 Wesbrook Mall','customer12','null','null','null','2015-04-07',7,'2015-04-11',8),(32,0,'A192192192192','QMAZON','Toronto','300 Regina Street','namitha','null','null','null','2015-04-08',6,'2015-04-08',8),(35,1,'ACUST-26','OUR BC','Vancouver','2660 Wesbrook Mall','customer26','Visa','4491354992448729','07/2017','2015-04-10',8,'2015-04-23',14),(36,0,'A12319234568','PLT-4M','Toronto','300 Regina Street','namitha','Visa','4507556798979871','09/2019','2015-04-11',6,'2015-04-11',7),(37,1,'A12312345678','4U 2DVY','Vancouver','2660 Wesbrook Mall','customer27','Visa','4507556798979801','07/2016','2015-04-10',8,'2015-04-23',14),(39,0,'A12356','ABC-11','Vancouver','2660 Wesbrook Mall','supfrank','Visa','4556925348322775','09/2018','2015-04-11',6,'2015-04-14',6),(40,1,'A192192192192','ASD-45','Toronto','300 Regina Street','namitha','Visa','4507556798979871','08/2018','2015-04-14',6,'2015-04-15',6),(41,0,'B563785','ASD-70','Vancouver','2660 Wesbrook Mall','supfrank','Visa','4556271487198225','09/2019','2015-04-13',6,'2015-04-22',10),(42,1,'B12369','ASD-3','Toronto','300 Regina Street','namitha','Visa','4556271487198225','11/2019','2015-04-20',6,'2015-04-21',6),(43,1,'B1234','ABC-6','Vancouver','2660 Wesbrook Mall','namitha','MasterCard','5317496870201628','11/2019','2015-04-14',6,'2015-04-22',9),(44,1,'C1234','ASD-25','Toronto','300 Regina Street','namitha','MasterCard','5317496870201628','09/2020','2015-04-15',6,'2015-04-30',9),(45,1,'M1234','ASD-29','Toronto','300 Regina Street','namitha','MasterCard','5415935026170659','03/2019','2015-04-17',6,'2015-04-30',10),(46,1,'v1234','ASD-75','Vancouver','2660 Wesbrook Mall','namitha','null','null','null','2015-04-17',6,'2015-04-30',10),(47,1,'C1234','ASD-6','Vancouver','2660 Wesbrook Mall','namitha','MasterCard','5415935026170659','09/2020','2015-04-23',6,'2015-04-29',11),(56,1,'ABCJ-19087','ABC-7','Vancouver','2660 Wesbrook Mall','namitha','Visa','4507556798979872','03/2017','2015-04-15',6,'2015-04-23',6),(61,1,'B1234','IGOBAR','Vancouver','2660 Wesbrook Mall','customer18','Visa','4024007169134607','12/2018','2015-04-17',20,'2015-04-22',6),(65,0,'ABD-1111','PLT-4M','Toronto','300 Regina Street','customer10','Visa','4716991598654850','01/2015','2015-04-17',6,'2015-04-18',6),(66,0,'ABC-11','ASD-27','Toronto','300 Regina Street','customer10','Visa','4716991598654850','01/2015','2015-04-17',6,'2015-04-18',6),(67,0,'ABJ9090','ASD-75','Toronto','300 Regina Street','customer10','Visa','4716991598654850','09/2015','2015-04-17',6,'2015-04-18',6),(68,0,'uiuieuriw','ASD-62','Vancouver','2660 Wesbrook Mall','customer10','Visa','4716991598654850','09/2015','2015-04-17',6,'2015-04-18',6),(69,0,'8787878','ASD-46','Toronto','300 Regina Street','customer10','Visa','4716991598654850','01/2016','2015-04-17',6,'2015-04-23',6),(70,0,'878787878','BMAZON','Toronto','300 Regina Street','customer10','Visa','4716991598654850','09/2019','2015-04-17',6,'2015-04-23',6),(71,0,'jkjkjkjk','4U 2DVY','Vancouver','2660 Wesbrook Mall','customer10','Visa','4716991598654850','02/2015','2015-04-17',6,'2015-04-23',6),(72,1,'M1234','MNB-20','Vancouver','2660 Wesbrook Mall','customer24','Visa','4024007169134607','09/2019','2015-04-17',20,'2015-04-21',6);
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-17 23:45:43
