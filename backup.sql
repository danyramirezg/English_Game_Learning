-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: EGL
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `myapp_word`
--

DROP TABLE IF EXISTS `myapp_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(30) NOT NULL,
  `translation` varchar(30) NOT NULL,
  `access` tinyint(1) NOT NULL,
  `attempts` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myapp_word_word_4ac1d870_uniq` (`word`),
  KEY `myapp_word_topic_id_4605f7f3_fk_myapp_topic_id` (`topic_id`),
  KEY `myapp_word_user_id_42b49ed2_fk_myapp_profile_id` (`user_id`),
  CONSTRAINT `myapp_word_topic_id_4605f7f3_fk_myapp_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `myapp_topic` (`id`),
  CONSTRAINT `myapp_word_user_id_42b49ed2_fk_myapp_profile_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_word`
--

LOCK TABLES `myapp_word` WRITE;
/*!40000 ALTER TABLE `myapp_word` DISABLE KEYS */;
INSERT INTO `myapp_word` VALUES (1,'table','mesa',1,0,'2020-03-20 13:55:45.192246','2020-03-20 13:55:45.183345',1,1);
/*!40000 ALTER TABLE `myapp_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_topic`
--

DROP TABLE IF EXISTS `myapp_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(250) NOT NULL,
  `detail` varchar(2048) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myapp_topic_topic_name_a5868a05_uniq` (`topic_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_topic`
--

LOCK TABLES `myapp_topic` WRITE;
/*!40000 ALTER TABLE `myapp_topic` DISABLE KEYS */;
INSERT INTO `myapp_topic` VALUES (1,'House','Parts of the house','2020-03-20 13:55:23.012335','2020-03-20 13:55:23.010758');
/*!40000 ALTER TABLE `myapp_topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-20  8:56:07
