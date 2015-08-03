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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `username` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `isRoadStar` tinyint(1) DEFAULT NULL,
  `isClubMember` tinyint(1) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `isAnnualPaid` tinyint(1) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `phone` (`phone`),
  KEY `cust_ind` (`username`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('customer','519-781-6787','place for customer',0,1,500,1,'2015-04-12'),('customer10','444-666-9999','1',0,0,0,0,NULL),('customer11','277-322-9918','1',0,0,0,0,NULL),('customer12','777-123-9063','1',0,0,0,0,NULL),('customer14','267-890-0023','1',0,0,0,0,NULL),('customer15','257-111-9723','1',0,0,0,0,NULL),('customer16','587-171-9123','1',0,0,0,0,NULL),('customer17','817-175-8823','1',0,0,0,0,NULL),('customer18','207-175-5523','1',0,0,0,0,NULL),('customer19','887-188-5543','1',0,0,0,0,NULL),('customer2','234-784-1357','1',0,0,0,0,NULL),('customer20','817-198-5993','1',0,0,0,0,NULL),('customer21','887-208-5193','1',0,0,0,0,NULL),('customer23','827-728-5883','1',0,0,0,0,NULL),('customer24','827-668-1183','1',0,0,0,0,NULL),('customer25','823-568-1003','1',0,0,0,0,NULL),('customer26','823-588-1993','1',0,0,0,0,NULL),('customer27','811-588-1993','1',0,0,0,0,NULL),('customer28','879-121-1993','1',0,0,0,0,NULL),('customer3','348-127-5789','1',0,0,0,0,NULL),('customer4','378-137-5709','1',0,0,0,0,NULL),('customer40','765-452-9856','1',0,0,0,NULL,NULL),('customer5','276-188-5239','1',0,0,0,0,NULL),('customer6','111-222-3333','1',0,0,0,0,NULL),('customer7','324-651-7542','1',0,0,0,0,NULL),('customer8','145-789-2374','1',0,0,0,0,NULL),('customer9','411-378-5768','1',0,0,0,0,NULL),('frank10','519-781-6700','1',1,1,2300,1,'2014-03-04'),('frank7','519-781-6707','1',1,0,0,0,NULL),('frank8','519-781-6708','1',0,0,0,0,NULL),('frank9','519-781-6709','1',0,1,7692,1,'2014-12-04'),('namitha','111-111-1111','abcdefd',0,1,500,0,'2015-04-17'),('newCustomer','123-456-1111','888 Main Mall',0,1,500,NULL,'2015-04-16'),('supfrank','888-888-8888','1',1,1,17011,1,'2014-03-04');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-17 23:45:42
