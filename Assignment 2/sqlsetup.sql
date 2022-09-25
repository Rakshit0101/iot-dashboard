-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: device18
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `d1`
--

DROP TABLE IF EXISTS `d1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d1` (
  `TimeStamp` timestamp NULL DEFAULT NULL,
  `Temperature` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d1`
--

LOCK TABLES `d1` WRITE;
/*!40000 ALTER TABLE `d1` DISABLE KEYS */;
INSERT INTO `d1` VALUES ('2022-09-25 07:30:00',78),('2022-09-25 07:31:00',-47),('2022-09-25 07:32:00',29),('2022-09-25 07:33:00',38),('2022-09-25 07:34:00',179),('2022-09-25 07:35:00',95),('2022-09-25 07:36:00',39),('2022-09-25 07:37:00',110),('2022-09-25 07:38:00',108),('2022-09-25 07:39:00',-36),('2022-09-25 07:40:00',0),('2022-09-25 07:41:00',-20),('2022-09-25 07:42:00',150),('2022-09-25 07:43:00',56),('2022-09-25 07:44:00',-38),('2022-09-25 07:45:00',50),('2022-09-25 07:46:00',-33),('2022-09-25 07:47:00',132),('2022-09-25 07:48:00',-25),('2022-09-25 07:49:00',59),('2022-09-25 07:50:00',101),('2022-09-25 07:51:00',10),('2022-09-25 07:52:00',99),('2022-09-25 07:53:00',34),('2022-09-25 07:54:00',11),('2022-09-25 07:55:00',174),('2022-09-25 07:56:00',74),('2022-09-25 07:57:00',-25),('2022-09-25 07:58:00',118),('2022-09-25 07:59:00',33),('2022-09-25 08:00:00',105),('2022-09-25 08:01:00',-3),('2022-09-25 08:02:00',12),('2022-09-25 08:03:00',152),('2022-09-25 08:04:00',70),('2022-09-25 08:05:00',26),('2022-09-25 08:06:00',46),('2022-09-25 08:07:00',76),('2022-09-25 08:08:00',22),('2022-09-25 08:09:00',164),('2022-09-25 08:10:00',27),('2022-09-25 08:11:00',174),('2022-09-25 08:12:00',147),('2022-09-25 08:13:00',-34),('2022-09-25 08:14:00',-8),('2022-09-25 08:15:00',85),('2022-09-25 08:16:00',105),('2022-09-25 08:17:00',175),('2022-09-25 08:18:00',149),('2022-09-25 08:19:00',165),('2022-09-25 08:20:00',22),('2022-09-25 08:21:00',-31),('2022-09-25 08:22:00',-3),('2022-09-25 08:23:00',-23),('2022-09-25 08:24:00',157),('2022-09-25 08:25:00',78),('2022-09-25 08:26:00',162),('2022-09-25 08:27:00',69),('2022-09-25 08:28:00',103),('2022-09-25 08:29:00',140),('2022-09-25 08:30:00',112),('2022-09-25 08:31:00',43),('2022-09-25 08:32:00',-22),('2022-09-25 08:33:00',124),('2022-09-25 08:34:00',163),('2022-09-25 08:35:00',172),('2022-09-25 08:36:00',95),('2022-09-25 08:37:00',129),('2022-09-25 08:38:00',158),('2022-09-25 08:39:00',167),('2022-09-25 08:40:00',85),('2022-09-25 08:41:00',45),('2022-09-25 08:42:00',23),('2022-09-25 08:43:00',-42),('2022-09-25 08:44:00',16),('2022-09-25 08:45:00',44),('2022-09-25 08:46:00',62),('2022-09-25 08:47:00',167),('2022-09-25 08:48:00',45),('2022-09-25 08:49:00',162),('2022-09-25 08:50:00',31),('2022-09-25 08:51:00',148),('2022-09-25 08:52:00',52),('2022-09-25 08:53:00',164),('2022-09-25 08:54:00',130),('2022-09-25 08:55:00',-6),('2022-09-25 08:56:00',153),('2022-09-25 08:57:00',42),('2022-09-25 08:58:00',27),('2022-09-25 08:59:00',-19),('2022-09-25 09:00:00',-43),('2022-09-25 09:01:00',79),('2022-09-25 09:02:00',-4),('2022-09-25 09:03:00',132),('2022-09-25 09:04:00',-6),('2022-09-25 09:05:00',2),('2022-09-25 09:06:00',3),('2022-09-25 09:07:00',4),('2022-09-25 09:08:00',3),('2022-09-25 09:09:00',-3);
/*!40000 ALTER TABLE `d1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d2`
--

DROP TABLE IF EXISTS `d2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d2` (
  `TimeStamp` timestamp NULL DEFAULT NULL,
  `AverageTemperature` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d2`
--

LOCK TABLES `d2` WRITE;
/*!40000 ALTER TABLE `d2` DISABLE KEYS */;
/*!40000 ALTER TABLE `d2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d3`
--

DROP TABLE IF EXISTS `d3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d3` (
  `TimeStamp` timestamp NULL DEFAULT NULL,
  `AverageTemperature` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d3`
--

LOCK TABLES `d3` WRITE;
/*!40000 ALTER TABLE `d3` DISABLE KEYS */;
/*!40000 ALTER TABLE `d3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-25 23:53:47