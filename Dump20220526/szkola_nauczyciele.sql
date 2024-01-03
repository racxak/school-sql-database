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
-- Table structure for table `nauczyciele`
--

DROP TABLE IF EXISTS `nauczyciele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nauczyciele` (
  `ID_NAUCZYCIELA` varchar(45) NOT NULL,
  `NAZWISKO` varchar(45) DEFAULT NULL,
  `IMIE` varchar(45) DEFAULT NULL,
  `LOGIN` varchar(45) DEFAULT NULL,
  `HASLO` varchar(45) DEFAULT NULL,
  `ID_PRZEDMIOTU` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_NAUCZYCIELA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nauczyciele`
--

LOCK TABLES `nauczyciele` WRITE;
/*!40000 ALTER TABLE `nauczyciele` DISABLE KEYS */;
INSERT INTO `nauczyciele` VALUES ('NA_1','HELENA','SIKORA','helena.sikora35','jEj67K','PRZ_MAT'),('NA_10','MARTYNA','ZALEWSKA','martyna.zalewska63','PDbE0B9Y','PRZ_INF'),('NA_11','KLAUDIA','MARCINIAK','klaudia.marciniak38','SibMsx0D','PRZ_HIS'),('NA_12','GABRIELA','JASINSKA','gabriela.jasinska48','GhCGvHG7','PRZ_J.HIS'),('NA_13','MARZENA','DUDA','marzena.duda35','fcvLIR7a','PRZ_J.ROS'),('NA_14','MARIANNA','JAKUBOWSKA','marianna.jakubowska92','T8IH9imk','PRZ_MAT'),('NA_15','LENA','ZAWADZKA','lena.zawadzka51','Zi51lrA7','PRZ_J.ANG'),('NA_16','DOMINIKA','SADOWSKA','dominika.sadowska54','tCg56WCr','PRZ_POL'),('NA_17','HENRYK','WALCZAK','henryk.walczak96','A43Uq0ZH','PRZ_WF'),('NA_18','DANIEL','RUTKOWSKI','daniel.rutkowski90','Jsp0i1s9','PRZ_GEO'),('NA_19','PRZEMYSLAW','BARAN','przemyslaw.baran12','OGKheX8X','PRZ_BIO'),('NA_2','MAJA','RUTKOWSKA','maja.rutkowska22','Q5gtT1w3','PRZ_J.ANG'),('NA_20','KAROL','MICHALAK','karol.michalak64','U2CaHtEY','PRZ_FIZ'),('NA_21','ROMAN','SZEWCZYK','roman.szewczyk51','gHYjWgN0','PRZ_WOS'),('NA_22','FILIP','OSTROWSKI','filip.ostrowski94','i5oql4es','PRZ_CHE'),('NA_23','ANTONI','TOMASZEWSKI','antoni.tomaszewski41','HuWhhW1W','PRZ_INF'),('NA_24','ANASTAZJA','KOLBON','anastazja.kolbon32','RvqTxErw','PRZ_HIS'),('NA_25','ALEK','BEBEN','alek.beben78','bE1RAMEb','PRZ_J.HIS'),('NA_26','GITUWA','PEWNIAK','gituwa.pewniak69','UdzQmCIh','PRZ_J.ROS'),('NA_3','PATRYCJA','MICHALAK','patrycja.michalak16','My8XxnKJ','PRZ_POL'),('NA_4','IZABELA','SZEWCZYK','izabela.szewczyk97','nrrSMHJg','PRZ_WF'),('NA_5','EMILIA','OSTROWSKA','emilia.ostrowska75','U6djR0Ps','PRZ_GEO'),('NA_6','ANETA','BARAN','aneta.baran22','Qm0cjWmj','PRZ_BIO'),('NA_7','OLIWIA','TOMASZEWSKA','oliwia.tomaszewska55','Ie76u0jY','PRZ_FIZ'),('NA_8','WERONIKA','PIETRZAK','weronika.pietrzak98','7wjfq0iK','PRZ_WOS'),('NA_9','EWELINA','WROBLEWSKA','ewelina.wroblewska34','jEj67Ktk','PRZ_CHE');
/*!40000 ALTER TABLE `nauczyciele` ENABLE KEYS */;
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
