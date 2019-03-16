CREATE DATABASE  IF NOT EXISTS `banco` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `banco`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: banco
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pref_cultura` int(11) NOT NULL DEFAULT '0',
  `pref_turismo` int(11) NOT NULL DEFAULT '0',
  `pref_historia` int(11) NOT NULL DEFAULT '0',
  `pref_esporte` int(11) NOT NULL DEFAULT '0',
  `pref_noticias` int(11) NOT NULL DEFAULT '0',
  `idade` int(11) NOT NULL DEFAULT '0',
  `turista` int(11) NOT NULL DEFAULT '0',
  `c_messenger` int(11) NOT NULL DEFAULT '0',
  `c_sms` int(11) NOT NULL DEFAULT '0',
  `c_whatsapp` int(11) NOT NULL DEFAULT '0',
  `c_email` int(11) NOT NULL DEFAULT '0',
  `c_direct` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`telefone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('Raira Torrico','11958382498','raira.storrico@gmail.com',0,1,1,1,1,2,1,1,1,1,1,0),('Andrezza Tavares','19991696333','andrezza@classapp.com.br',1,1,0,1,0,2,1,0,1,1,0,0),('Lucas Varani','19995024462','lucas.varani123@gmail.com',1,1,1,1,0,2,1,1,1,1,0,0),('Cesar Augusto','993828181','cesarnogueira2010@gmail.com',1,1,1,1,1,2,1,1,1,1,1,1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-10 16:09:30
