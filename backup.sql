-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: EGL
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4
​
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
​
--
-- Table structure for table `myapp_word`
--
​
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
​
--
-- Dumping data for table `myapp_word`
--
​
LOCK TABLES `myapp_word` WRITE;
/*!40000 ALTER TABLE `myapp_word` DISABLE KEYS */;
INSERT INTO `myapp_word` VALUES (1,'table','mesa',1,0,'2020-03-20 13:55:45.192246','2020-03-20 13:55:45.183345',1,1),(2,'dining room','comedor',1,0,'2020-03-20 16:05:00.692634','2020-03-20 16:05:00.663020',1,1),(3,'kitchen','cocina',1,0,'2020-03-20 16:05:23.411145','2020-03-20 16:05:23.402492',1,1),(4,'mirror','espejo',1,0,'2020-03-20 16:05:53.764711','2020-03-20 16:05:53.756906',1,1),(5,'stairs','escaleras',1,0,'2020-03-20 16:06:35.725056','2020-03-20 16:06:35.691634',1,1),(6,'fireplace','chimenea',1,0,'2020-03-20 16:07:08.587425','2020-03-20 16:07:08.571997',1,1),(7,'wall','pared',1,0,'2020-03-20 16:11:39.090807','2020-03-20 16:11:39.081075',1,1),(8,'door','puerta',1,0,'2020-03-20 16:11:54.433408','2020-03-20 16:11:54.429085',1,1),(9,'curtain','cortina',1,0,'2020-03-20 16:12:21.194036','2020-03-20 16:12:21.186102',1,1),(10,'rug','alfombra',1,0,'2020-03-20 16:12:45.239830','2020-03-20 16:12:45.233341',1,1),(11,'bathtub','bañera',1,0,'2020-03-20 16:13:21.146364','2020-03-20 16:13:21.124527',1,1),(12,'shower','ducha',1,0,'2020-03-20 16:13:36.644618','2020-03-20 16:13:36.630734',1,1),(13,'sink','lavamanos',1,0,'2020-03-20 16:14:01.328244','2020-03-20 16:14:01.296156',1,1),(14,'refrigerator','nevera',1,0,'2020-03-20 16:14:39.202005','2020-03-20 16:14:39.172534',1,1),(15,'abogado','lawyer',1,0,'2020-03-20 16:20:46.159813','2020-03-20 16:20:46.151651',2,1),(16,'arquitecto','architect',1,0,'2020-03-20 16:21:16.736634','2020-03-20 16:21:16.706356',2,1),(17,'bombero','fireman',1,0,'2020-03-20 16:21:39.634178','2020-03-20 16:21:39.608227',2,1),(18,'cajero','chashier',1,0,'2020-03-20 16:22:25.446040','2020-03-20 16:22:25.431512',2,1),(19,'científico','scientist',1,0,'2020-03-20 16:23:02.245320','2020-03-20 16:23:02.233607',2,1),(20,'cirujano','surgeon',1,0,'2020-03-20 16:23:40.789445','2020-03-20 16:23:40.781973',2,1),(21,'dentista','dentist',1,0,'2020-03-20 16:24:00.414102','2020-03-20 16:24:00.383036',2,1),(22,'detective','detective',1,0,'2020-03-20 16:24:35.102195','2020-03-20 16:24:35.078039',2,1),(23,'escritor','writer',1,0,'2020-03-20 16:25:02.702263','2020-03-20 16:25:02.668363',2,1),(24,'autor','author',1,0,'2020-03-20 16:25:31.112127','2020-03-20 16:25:31.080618',2,1),(25,'Periodista','journalist',1,0,'2020-03-20 16:38:53.943698','2020-03-20 16:38:53.933728',2,1),(26,'Pescador','fisherman',1,0,'2020-03-20 16:39:13.637816','2020-03-20 16:39:13.630254',2,1),(27,'Pintor','painter',1,0,'2020-03-20 16:39:33.592049','2020-03-20 16:39:33.579350',2,1),(28,'Psicólogo','psychologist',1,0,'2020-03-20 16:41:19.352988','2020-03-20 16:41:19.341206',2,1),(29,'Taxista','taxi driver',1,0,'2020-03-20 16:41:44.436258','2020-03-20 16:41:44.430219',2,1),(30,'Veterinario','veterinarian',1,0,'2020-03-20 16:42:36.701967','2020-03-20 16:42:36.691362',2,1),(31,'Profesor','professor',1,0,'2020-03-20 16:43:14.136212','2020-03-20 16:43:14.126355',2,1);
/*!40000 ALTER TABLE `myapp_word` ENABLE KEYS */;
UNLOCK TABLES;
​
--
-- Table structure for table `myapp_topic`
--
​
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
​
--
-- Dumping data for table `myapp_topic`
--
​
LOCK TABLES `myapp_topic` WRITE;
/*!40000 ALTER TABLE `myapp_topic` DISABLE KEYS */;
INSERT INTO `myapp_topic` VALUES (1,'House','Parts of the house','2020-03-20 13:55:23.012335','2020-03-20 13:55:23.010758'),(2,'Professions','List vocabulary about professions','2020-03-20 15:50:46.590976','2020-03-20 15:50:46.588558'),(3,'Animals','List vocabulary about animals','2020-03-20 16:00:48.989306','2020-03-20 16:00:48.982031');
/*!40000 ALTER TABLE `myapp_topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
​
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
​
-- Dump completed on 2020-03-20 11:49:4