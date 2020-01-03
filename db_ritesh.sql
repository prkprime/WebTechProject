-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mini
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `hackathon`
--

DROP TABLE IF EXISTS `hackathon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hackathon` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Subtitle` varchar(200) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `ContactMail` varchar(400) NOT NULL,
  `ContactPhone` int(10) NOT NULL,
  `ContactWebsite` varchar(200) NOT NULL,
  `CoverPhoto` mediumblob,
  `ThumbNail` mediumblob,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Title_UNIQUE` (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackathon`
--

LOCK TABLES `hackathon` WRITE;
/*!40000 ALTER TABLE `hackathon` DISABLE KEYS */;
/*!40000 ALTER TABLE `hackathon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hackathon_creator`
--

DROP TABLE IF EXISTS `hackathon_creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hackathon_creator` (
  `username` varchar(50) DEFAULT NULL,
  `HackathonID` int(11) DEFAULT NULL,
  KEY `username` (`username`),
  KEY `HackathonID` (`HackathonID`),
  CONSTRAINT `hackathon_creator_ibfk_1` FOREIGN KEY (`username`) REFERENCES `userhackathon` (`Username`),
  CONSTRAINT `hackathon_creator_ibfk_2` FOREIGN KEY (`HackathonID`) REFERENCES `userhackathon` (`HackathonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackathon_creator`
--

LOCK TABLES `hackathon_creator` WRITE;
/*!40000 ALTER TABLE `hackathon_creator` DISABLE KEYS */;
/*!40000 ALTER TABLE `hackathon_creator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hackathon_participant`
--

DROP TABLE IF EXISTS `hackathon_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hackathon_participant` (
  `username` varchar(50) DEFAULT NULL,
  `HackathonID` int(11) DEFAULT NULL,
  `statementID` int(11) DEFAULT NULL,
  KEY `username` (`username`),
  KEY `HackathonID` (`HackathonID`),
  KEY `statementID` (`statementID`),
  CONSTRAINT `hackathon_participant_ibfk_1` FOREIGN KEY (`username`) REFERENCES `userhackathon` (`Username`),
  CONSTRAINT `hackathon_participant_ibfk_2` FOREIGN KEY (`HackathonID`) REFERENCES `userhackathon` (`HackathonID`),
  CONSTRAINT `hackathon_participant_ibfk_3` FOREIGN KEY (`statementID`) REFERENCES `problemstatement` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackathon_participant`
--

LOCK TABLES `hackathon_participant` WRITE;
/*!40000 ALTER TABLE `hackathon_participant` DISABLE KEYS */;
/*!40000 ALTER TABLE `hackathon_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problemstatement`
--

DROP TABLE IF EXISTS `problemstatement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problemstatement` (
  `Id` int(11) NOT NULL,
  `HackathonId` int(11) DEFAULT NULL,
  `ProblemStatement` varchar(1000) NOT NULL,
  `Description` varchar(2000) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `HackathonId_idx` (`HackathonId`),
  CONSTRAINT `HackathonId` FOREIGN KEY (`HackathonId`) REFERENCES `hackathon` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problemstatement`
--

LOCK TABLES `problemstatement` WRITE;
/*!40000 ALTER TABLE `problemstatement` DISABLE KEYS */;
/*!40000 ALTER TABLE `problemstatement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `username` varchar(50) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Occupation` varchar(45) DEFAULT NULL,
  `OrganizationName` varchar(100) DEFAULT NULL,
  `ProfilePicture` mediumblob NOT NULL,
  `ContactPhone` int(11) DEFAULT NULL,
  `Type` varchar(2) DEFAULT 'P',
  PRIMARY KEY (`username`),
  CONSTRAINT `UserName` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `email` varchar(400) NOT NULL,
  `password` varbinary(513) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('psbakre','psbakre@yahoo.com',_binary 'Praan123','2019-12-21 06:23:37');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userhackathon`
--

DROP TABLE IF EXISTS `userhackathon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userhackathon` (
  `Username` varchar(50) NOT NULL,
  `HackathonID` int(11) NOT NULL,
  PRIMARY KEY (`Username`,`HackathonID`),
  KEY `HackathonIdRef_idx` (`HackathonID`),
  CONSTRAINT `HackathonIdRef` FOREIGN KEY (`HackathonID`) REFERENCES `hackathon` (`Id`),
  CONSTRAINT `UserNameRef` FOREIGN KEY (`Username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userhackathon`
--

LOCK TABLES `userhackathon` WRITE;
/*!40000 ALTER TABLE `userhackathon` DISABLE KEYS */;
/*!40000 ALTER TABLE `userhackathon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-03 15:49:48
