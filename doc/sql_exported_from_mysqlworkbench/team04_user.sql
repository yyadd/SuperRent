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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','12345','frank6','admin'),('clerk','clerk','frank2','clerk'),('customer','customer','customer','customer'),('customer10','customer10','customer10','customer'),('customer11','customer11','customer11','customer'),('customer12','customer12','customer12','customer'),('customer14','customer14','customer14','customer'),('customer15','customer15','customer15','customer'),('customer16','customer16','customer16','customer'),('customer17','customer17','customer17','customer'),('customer18','customer18','customer18','customer'),('customer19','customer19','customer19','customer'),('customer2','customer2','customer2','customer'),('customer20','customer20','customer20','customer'),('customer21','customer21','customer21','customer'),('customer23','customer23','customer23','customer'),('customer24','customer24','customer24','customer'),('customer25','customer25','customer25','customer'),('customer26','customer26','customer26','customer'),('customer27','customer27','customer27','customer'),('customer28','customer28','customer28','customer'),('customer3','customer3','customer3','customer'),('customer4','customer4','customer4','customer'),('customer40','customer40','customer40','customer'),('customer5','customer5','customer5','customer'),('customer6','customer6','customer6','customer'),('customer7','customer7','customer7','customer'),('customer8','customer8','customer8','customer'),('customer9','customer9','customer9','customer'),('frank1','12345','frank1','manager'),('frank10','12345','frank10','customer'),('frank2','12345','frank2','clerk'),('frank3','12345','frank3','clerk'),('frank4','12345','frank4','clerk'),('frank5','12345','frank5','clerk'),('frank6','12345','frank6','admin'),('frank7','12345','frank7','customer'),('frank8','12345','frank8','customer'),('frank9','12345','frank9','customer'),('manager','manager','frank1','manager'),('manisha1','123456','manisha','customer'),('manisha18','12345','manisha','customer'),('namitha','namitha','Namitha','customer'),('newCustomer','new','someName','customer'),('ping','123','Ping','clerk'),('supfrank','12345','frank','customer');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
