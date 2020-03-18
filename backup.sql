-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: EGL
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `myapp_user`
--

DROP TABLE IF EXISTS `myapp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cell_phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `word_attempt` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myapp_user_user_name_afdd2ff9_uniq` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_user`
--

LOCK TABLES `myapp_user` WRITE;
/*!40000 ALTER TABLE `myapp_user` DISABLE KEYS */;
INSERT INTO `myapp_user` VALUES (8,'yennifer','wasd',NULL,'fake_email@gmail.com',10,1,'2020-03-11 03:40:43.929185','2020-03-11 03:40:43.928904');
/*!40000 ALTER TABLE `myapp_user` ENABLE KEYS */;
UNLOCK TABLES;

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
  KEY `myapp_word_user_id_42b49ed2_fk_myapp_user_id` (`user_id`),
  CONSTRAINT `myapp_word_topic_id_4605f7f3_fk_myapp_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `myapp_topic` (`id`),
  CONSTRAINT `myapp_word_user_id_42b49ed2_fk_myapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_word`
--

LOCK TABLES `myapp_word` WRITE;
/*!40000 ALTER TABLE `myapp_word` DISABLE KEYS */;
INSERT INTO `myapp_word` VALUES (31,'attic','atico',1,0,'2020-03-14 05:18:37.872121','2020-03-14 05:18:37.854235',4,8),(32,'basement','sotano',1,0,'2020-03-14 05:18:56.859869','2020-03-14 05:18:56.850280',4,8),(33,'bathroom','baño',1,0,'2020-03-14 05:19:17.054360','2020-03-14 05:19:17.034965',4,8),(34,'bedroom','habitacion',1,0,'2020-03-14 05:19:32.521672','2020-03-14 05:19:32.505628',4,8),(35,'bed','cama',1,0,'2020-03-14 05:19:41.804241','2020-03-14 05:19:41.785493',4,8),(36,'chair','silla',1,0,'2020-03-14 05:20:09.970759','2020-03-14 05:20:09.952065',4,8),(37,'couch','sofa',1,0,'2020-03-14 05:20:31.125702','2020-03-14 05:20:31.107635',4,8),(38,'door','puerta',1,0,'2020-03-14 05:21:05.798681','2020-03-14 05:21:05.778672',4,8),(39,'floor','piso',1,0,'2020-03-14 05:21:26.673203','2020-03-14 05:21:26.667362',4,8),(40,'garage','garaje',1,0,'2020-03-14 05:21:47.263553','2020-03-14 05:21:47.243529',4,8),(41,'key','llave',1,0,'2020-03-14 05:22:19.521794','2020-03-14 05:22:19.505589',4,8),(42,'kitchen','cocina',1,0,'2020-03-14 05:22:32.991340','2020-03-14 05:22:32.982650',4,8),(43,'lamp','lampara',1,0,'2020-03-14 05:23:15.096651','2020-03-14 05:23:15.077733',4,8),(44,'mirror','espejo',1,0,'2020-03-14 05:23:34.369644','2020-03-14 05:23:34.354307',4,8),(45,'roof','techo',1,0,'2020-03-14 05:23:54.613270','2020-03-14 05:23:54.598214',4,8),(46,'stairs','escaleras',1,0,'2020-03-14 05:24:17.141520','2020-03-14 05:24:17.126341',4,8),(47,'table','mesa',1,0,'2020-03-14 05:24:35.991983','2020-03-14 05:24:35.976528',4,8),(48,'window','ventana',1,0,'2020-03-14 05:24:49.428512','2020-03-14 05:24:49.414746',4,8),(49,'wall','pared',1,0,'2020-03-14 05:24:56.997637','2020-03-14 05:24:56.977487',4,8),(50,'garden','jardin',1,0,'2020-03-14 05:25:12.310373','2020-03-14 05:25:12.293169',4,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_topic`
--

LOCK TABLES `myapp_topic` WRITE;
/*!40000 ALTER TABLE `myapp_topic` DISABLE KEYS */;
INSERT INTO `myapp_topic` VALUES (4,'House','Parts of the house','2020-03-14 05:17:23.806920','2020-03-14 05:17:23.803155'),(5,'Professions','List vocabulary different professions','2020-03-17 00:00:00.000000','2020-03-17 00:00:00.000000');
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

-- Dump completed on 2020-03-18  0:47:09
