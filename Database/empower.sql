-- MySQL dump 10.10
--
-- Host: localhost    Database: empower
-- ------------------------------------------------------
-- Server version	5.0.18-nt

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

create database empower;
use empower;

--
-- Table structure for table `herating`
--

DROP TABLE IF EXISTS `herating`;
CREATE TABLE `herating` (
  `id` int(11) NOT NULL auto_increment,
  `hrid` text,
  `heid` text,
  `review` longtext,
  `rating` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `herating`
--


/*!40000 ALTER TABLE `herating` DISABLE KEYS */;
LOCK TABLES `herating` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `herating` ENABLE KEYS */;

--
-- Table structure for table `hiree`
--

DROP TABLE IF EXISTS `hiree`;
CREATE TABLE `hiree` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `phn` varchar(50) default NULL,
  `addr` varchar(50) default NULL,
  `occ` varchar(50) default NULL,
  `heid` varchar(50) default NULL,
  `otp` varchar(50) default 'nootp',
  `dob` varchar(50) default NULL,
  `exp` varchar(50) default NULL,
  `dob1` int(11) default '0',
  `exp1` int(11) default '0',
  `adhaarnum` varchar(500) default NULL,
  `adhaarimg` varchar(5000) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `phn` (`phn`),
  UNIQUE KEY `heid` (`heid`),
  UNIQUE KEY `adhaarnum` (`adhaarnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hiree`
--


/*!40000 ALTER TABLE `hiree` DISABLE KEYS */;
LOCK TABLES `hiree` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `hiree` ENABLE KEYS */;

--
-- Table structure for table `hirer`
--

DROP TABLE IF EXISTS `hirer`;
CREATE TABLE `hirer` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `phn` varchar(50) default NULL,
  `addr` varchar(50) default NULL,
  `hrid` varchar(50) default NULL,
  `otp` varchar(50) default 'nootp',
  `adhaarnum` varchar(500) default NULL,
  `adhaarimg` varchar(5000) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phn` (`phn`),
  UNIQUE KEY `hrid` (`hrid`),
  UNIQUE KEY `adhaarnum` (`adhaarnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hirer`
--


/*!40000 ALTER TABLE `hirer` DISABLE KEYS */;
LOCK TABLES `hirer` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `hirer` ENABLE KEYS */;

--
-- Table structure for table `occlist`
--

DROP TABLE IF EXISTS `occlist`;
CREATE TABLE `occlist` (
  `id` int(11) NOT NULL auto_increment,
  `oname` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occlist`
--


/*!40000 ALTER TABLE `occlist` DISABLE KEYS */;
LOCK TABLES `occlist` WRITE;
INSERT INTO `occlist` VALUES (1,'Agriculture'),(2,'Blacksmith'),(3,'Carpenter'),(4,'Chef'),(5,'Construction'),(6,'Electrician'),(7,'Laundry'),(8,'Mason'),(9,'Mechanic'),(10,'Plumbers'),(11,'Salesperson'),(12,'Watchman');
UNLOCK TABLES;
/*!40000 ALTER TABLE `occlist` ENABLE KEYS */;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(11) NOT NULL auto_increment,
  `he` varchar(50) default NULL,
  `hr` varchar(50) default NULL,
  `sdt` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--


/*!40000 ALTER TABLE `search` DISABLE KEYS */;
LOCK TABLES `search` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

