CREATE DATABASE  IF NOT EXISTS `szkola` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `szkola`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: szkola
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `klasy`
--

DROP TABLE IF EXISTS `klasy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klasy` (
  `ID_KLASY` varchar(45) NOT NULL,
  `NAZWA` varchar(45) DEFAULT NULL,
  `ID_NAUCZYCIELA` varchar(45) DEFAULT NULL,
  `ID_PROFILU` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_KLASY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klasy`
--

LOCK TABLES `klasy` WRITE;
/*!40000 ALTER TABLE `klasy` DISABLE KEYS */;
INSERT INTO `klasy` VALUES ('KL_IA','KLASA 1 A','NA_20','PRO_H'),('KL_IB','KLASA 1 B','NA_21','PRO_M'),('KL_IC','KLASA 1 C','NA_22','PRO_B'),('KL_IIA','KLASA 2 A','NA_23','PRO_H'),('KL_IIB','KLASA 2 B','NA_23','PRO_M'),('KL_IIC','KLASA 2 C','NA_24','PRO_B'),('KL_IIIA','KLASA 3 A','NA_25','PRO_H'),('KL_IIIB','KLASA 3 B','NA_26','PRO_M'),('KL_IIIC','KLASA 3 C','NA_19','PRO_B');
/*!40000 ALTER TABLE `klasy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26 20:40:12