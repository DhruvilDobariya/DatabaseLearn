CREATE DATABASE  IF NOT EXISTS `advocatediary` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `advocatediary`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: advocatediary
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `AppointmentId` int NOT NULL AUTO_INCREMENT,
  `AppointmentTitle` varchar(50) NOT NULL,
  `AppointmentDate` datetime NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  `UserId` int NOT NULL,
  `CaseId` int NOT NULL,
  PRIMARY KEY (`AppointmentId`),
  KEY `fk_Appointment_User1_idx` (`UserId`),
  KEY `fk_Appointment_Case1_idx` (`CaseId`),
  CONSTRAINT `fk_Appointment_Case1` FOREIGN KEY (`CaseId`) REFERENCES `case` (`CaseId`),
  CONSTRAINT `fk_Appointment_User1` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case`
--

DROP TABLE IF EXISTS `case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `case` (
  `CaseId` int NOT NULL AUTO_INCREMENT,
  `CaseName` varchar(250) NOT NULL,
  `OppositeParty` varchar(250) NOT NULL,
  `OppositeLawyer` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  `UserId` int NOT NULL,
  `ClientId` int NOT NULL,
  `CourtId` int NOT NULL,
  PRIMARY KEY (`CaseId`),
  KEY `fk_Case_User_idx` (`UserId`),
  KEY `fk_Case_Client1_idx` (`ClientId`),
  KEY `fk_Case_Court1_idx` (`CourtId`),
  CONSTRAINT `fk_Case_Client1` FOREIGN KEY (`ClientId`) REFERENCES `client` (`ClientId`),
  CONSTRAINT `fk_Case_Court1` FOREIGN KEY (`CourtId`) REFERENCES `court` (`CourtId`),
  CONSTRAINT `fk_Case_User` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case`
--

LOCK TABLES `case` WRITE;
/*!40000 ALTER TABLE `case` DISABLE KEYS */;
/*!40000 ALTER TABLE `case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casedate`
--

DROP TABLE IF EXISTS `casedate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casedate` (
  `CaseDateId` int NOT NULL AUTO_INCREMENT,
  `CaseDateDate` datetime NOT NULL,
  `Desciption` varchar(500) DEFAULT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  `UserId` int NOT NULL,
  `CaseId` int NOT NULL,
  PRIMARY KEY (`CaseDateId`),
  KEY `fk_CaseDate_User1_idx` (`UserId`),
  KEY `fk_CaseDate_Case1_idx` (`CaseId`),
  CONSTRAINT `fk_CaseDate_Case1` FOREIGN KEY (`CaseId`) REFERENCES `case` (`CaseId`),
  CONSTRAINT `fk_CaseDate_User1` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casedate`
--

LOCK TABLES `casedate` WRITE;
/*!40000 ALTER TABLE `casedate` DISABLE KEYS */;
/*!40000 ALTER TABLE `casedate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casetype`
--

DROP TABLE IF EXISTS `casetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casetype` (
  `CaseTypeId` int NOT NULL AUTO_INCREMENT,
  `CaseTypeName` varchar(250) NOT NULL,
  `Desciption` varchar(500) DEFAULT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  `UserId` int NOT NULL,
  PRIMARY KEY (`CaseTypeId`),
  KEY `fk_CaseType_User1_idx` (`UserId`),
  CONSTRAINT `fk_CaseType_User1` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casetype`
--

LOCK TABLES `casetype` WRITE;
/*!40000 ALTER TABLE `casetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `casetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ClientId` int NOT NULL AUTO_INCREMENT,
  `ClientName` varchar(250) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `DateOfBirth` datetime NOT NULL,
  `ContectNo` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  `UserId` int NOT NULL,
  PRIMARY KEY (`ClientId`),
  KEY `fk_Client_User1_idx` (`UserId`),
  CONSTRAINT `fk_Client_User1` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `court`
--

DROP TABLE IF EXISTS `court`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `court` (
  `CourtId` int NOT NULL AUTO_INCREMENT,
  `CourtName` varchar(250) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  `UserId` int NOT NULL,
  PRIMARY KEY (`CourtId`),
  KEY `fk_Court_User1_idx` (`UserId`),
  CONSTRAINT `fk_Court_User1` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `court`
--

LOCK TABLES `court` WRITE;
/*!40000 ALTER TABLE `court` DISABLE KEYS */;
/*!40000 ALTER TABLE `court` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees` (
  `FeesId` int NOT NULL AUTO_INCREMENT,
  `TotalFees` decimal(10,0) NOT NULL,
  `FeesType` varchar(50) NOT NULL,
  `Desciption` varchar(500) DEFAULT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  `UserId` int NOT NULL,
  `CaseId` int NOT NULL,
  PRIMARY KEY (`FeesId`),
  KEY `fk_Fees_User1_idx` (`UserId`),
  KEY `fk_Fees_Case1_idx` (`CaseId`),
  CONSTRAINT `fk_Fees_Case1` FOREIGN KEY (`CaseId`) REFERENCES `case` (`CaseId`),
  CONSTRAINT `fk_Fees_User1` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(250) NOT NULL,
  `ContectNo` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2023-03-22 15:52:32
