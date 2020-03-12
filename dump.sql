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
-- Current Database: `EGL`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `EGL` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `EGL`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add game',7,'add_game'),(26,'Can change game',7,'change_game'),(27,'Can delete game',7,'delete_game'),(28,'Can view game',7,'view_game'),(29,'Can add option_ game',8,'add_option_game'),(30,'Can change option_ game',8,'change_option_game'),(31,'Can delete option_ game',8,'delete_option_game'),(32,'Can view option_ game',8,'view_option_game'),(33,'Can add topic',9,'add_topic'),(34,'Can change topic',9,'change_topic'),(35,'Can delete topic',9,'delete_topic'),(36,'Can view topic',9,'view_topic'),(37,'Can add user',10,'add_user'),(38,'Can change user',10,'change_user'),(39,'Can delete user',10,'delete_user'),(40,'Can view user',10,'view_user'),(41,'Can add word',11,'add_word'),(42,'Can change word',11,'change_word'),(43,'Can delete word',11,'delete_word'),(44,'Can view word',11,'view_word'),(45,'Can add user_ topic_ game',12,'add_user_topic_game'),(46,'Can change user_ topic_ game',12,'change_user_topic_game'),(47,'Can delete user_ topic_ game',12,'delete_user_topic_game'),(48,'Can view user_ topic_ game',12,'view_user_topic_game'),(49,'Can add user_ topic',13,'add_user_topic'),(50,'Can change user_ topic',13,'change_user_topic'),(51,'Can delete user_ topic',13,'delete_user_topic'),(52,'Can view user_ topic',13,'view_user_topic'),(53,'Can add Token',14,'add_token'),(54,'Can change Token',14,'change_token'),(55,'Can delete Token',14,'delete_token'),(56,'Can view Token',14,'view_token');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$BBtDQwoIKVoC$4RKe29UAZdb2U4u6dahwIPc9j7zcmu+rPkVUda6sfHU=','2020-03-10 15:01:19.254620',1,'admin','','','adad@adsasd.com',1,1,'2020-03-10 15:01:15.553700');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('3340cb55c980188a551a8e6ffb4322750613e5c7','2020-03-11 03:03:55.466142',1);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-10 15:27:24.797925','1','joshuaciencia',3,'',10,1),(2,'2020-03-10 23:21:27.300902','2','yennifer',3,'',10,1),(3,'2020-03-11 03:10:31.427778','3','Joshua',1,'[{\"added\": {}}]',10,1),(4,'2020-03-11 03:10:57.788999','4','yennifer',1,'[{\"added\": {}}]',10,1),(5,'2020-03-11 03:11:38.271121','5','dany',1,'[{\"added\": {}}]',10,1),(6,'2020-03-11 03:11:53.802227','3','Joshua',2,'[{\"changed\": {\"fields\": [\"Cell phone\"]}}]',10,1),(7,'2020-03-11 03:12:07.839867','3','Joshua',2,'[{\"changed\": {\"fields\": [\"Email\"]}}]',10,1),(8,'2020-03-11 03:12:47.630572','1','Snake',1,'[{\"added\": {}}]',7,1),(9,'2020-03-11 03:14:25.667323','4','yennifer',3,'',10,1),(10,'2020-03-11 03:14:25.815926','5','dany',3,'',10,1),(11,'2020-03-11 03:34:26.798722','3','Joshua',3,'',10,1),(12,'2020-03-11 03:34:26.887125','6','Joshua1',3,'',10,1),(13,'2020-03-12 05:59:22.754973','8','yennifer',2,'[{\"changed\": {\"fields\": [\"Email\"]}}]',10,1),(14,'2020-03-12 05:59:36.460795','7','joshuaciencia',2,'[{\"changed\": {\"fields\": [\"Cell phone\", \"Email\"]}}]',10,1),(15,'2020-03-12 05:59:56.472707','9','dany',1,'[{\"added\": {}}]',10,1),(16,'2020-03-12 06:00:01.887559','8','yennifer',2,'[{\"changed\": {\"fields\": [\"Word attempt\"]}}]',10,1),(17,'2020-03-12 06:01:04.681797','1','Professions',1,'[{\"added\": {}}]',9,1),(18,'2020-03-12 06:01:53.650289','1','Accountant',1,'[{\"added\": {}}]',11,1),(19,'2020-03-12 06:02:16.016249','2','Astronomer',1,'[{\"added\": {}}]',11,1),(20,'2020-03-12 06:02:44.016901','3','Baker',1,'[{\"added\": {}}]',11,1),(21,'2020-03-12 06:03:20.450848','4','Fisherman',1,'[{\"added\": {}}]',11,1),(22,'2020-03-12 06:04:00.377989','5','Plumber',1,'[{\"added\": {}}]',11,1),(23,'2020-03-12 06:04:27.822557','6','Postman',1,'[{\"added\": {}}]',11,1),(24,'2020-03-12 06:04:56.586223','7','Scientist',1,'[{\"added\": {}}]',11,1),(25,'2020-03-12 06:05:45.216910','8','Photographer',1,'[{\"added\": {}}]',11,1),(26,'2020-03-12 06:07:28.451447','2','Weather',1,'[{\"added\": {}}]',9,1),(27,'2020-03-12 06:08:01.991418','9','Bright',1,'[{\"added\": {}}]',11,1),(28,'2020-03-12 06:08:22.548725','10','Sunny',1,'[{\"added\": {}}]',11,1),(29,'2020-03-12 06:08:53.386761','11','Clear',1,'[{\"added\": {}}]',11,1),(30,'2020-03-12 06:09:14.988436','7','joshuaciencia',3,'',10,1),(31,'2020-03-12 06:09:26.512769','9','dany',3,'',10,1),(32,'2020-03-12 06:10:06.919099','12','Clear',1,'[{\"added\": {}}]',11,1),(33,'2020-03-12 06:10:24.067125','13','Fine',1,'[{\"added\": {}}]',11,1),(34,'2020-03-12 06:10:43.397215','14','Cloudy',1,'[{\"added\": {}}]',11,1),(35,'2020-03-12 06:11:35.717180','15','Rain',1,'[{\"added\": {}}]',11,1),(36,'2020-03-12 06:12:22.600281','16','Snow',1,'[{\"added\": {}}]',11,1),(37,'2020-03-12 06:13:02.468789','17','Baker',1,'[{\"added\": {}}]',11,1),(38,'2020-03-12 06:13:35.136275','18','Farmer',1,'[{\"added\": {}}]',11,1),(39,'2020-03-12 06:13:55.890588','19','Lawyer',1,'[{\"added\": {}}]',11,1),(40,'2020-03-12 06:14:06.452765','20','Judge',1,'[{\"added\": {}}]',11,1),(41,'2020-03-12 06:14:35.380210','21','Nurse',1,'[{\"added\": {}}]',11,1),(42,'2020-03-12 06:15:05.973815','22','Tailor',1,'[{\"added\": {}}]',11,1),(43,'2020-03-12 06:16:20.962244','23','Receptionist',1,'[{\"added\": {}}]',11,1),(44,'2020-03-12 06:17:27.591815','3','Fruits',1,'[{\"added\": {}}]',9,1),(45,'2020-03-12 06:17:44.108670','3','Fruits',2,'[]',9,1),(46,'2020-03-12 06:18:01.288459','24','Apple',1,'[{\"added\": {}}]',11,1),(47,'2020-03-12 06:18:44.188735','25','Avocado',1,'[{\"added\": {}}]',11,1),(48,'2020-03-12 06:19:01.232164','26','Coconut',1,'[{\"added\": {}}]',11,1),(49,'2020-03-12 06:19:16.710729','27','Grape',1,'[{\"added\": {}}]',11,1),(50,'2020-03-12 06:19:53.162152','28','Orange',1,'[{\"added\": {}}]',11,1),(51,'2020-03-12 06:20:09.906073','29','Pear',1,'[{\"added\": {}}]',11,1),(52,'2020-03-12 06:20:36.996196','30','Strawberry',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(14,'authtoken','token'),(5,'contenttypes','contenttype'),(7,'myapp','game'),(8,'myapp','option_game'),(9,'myapp','topic'),(10,'myapp','user'),(13,'myapp','user_topic'),(12,'myapp','user_topic_game'),(11,'myapp','word'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'myapp','0001_initial','2020-03-09 05:36:11.803851'),(2,'contenttypes','0001_initial','2020-03-09 05:37:28.540133'),(3,'auth','0001_initial','2020-03-09 05:37:30.380355'),(4,'admin','0001_initial','2020-03-09 05:37:36.627910'),(5,'admin','0002_logentry_remove_auto_add','2020-03-09 05:37:38.081692'),(6,'admin','0003_logentry_add_action_flag_choices','2020-03-09 05:37:38.144908'),(7,'contenttypes','0002_remove_content_type_name','2020-03-09 05:37:39.168865'),(8,'auth','0002_alter_permission_name_max_length','2020-03-09 05:37:39.289215'),(9,'auth','0003_alter_user_email_max_length','2020-03-09 05:37:39.446460'),(10,'auth','0004_alter_user_username_opts','2020-03-09 05:37:39.497402'),(11,'auth','0005_alter_user_last_login_null','2020-03-09 05:37:40.048853'),(12,'auth','0006_require_contenttypes_0002','2020-03-09 05:37:40.091336'),(13,'auth','0007_alter_validators_add_error_messages','2020-03-09 05:37:40.143996'),(14,'auth','0008_alter_user_username_max_length','2020-03-09 05:37:40.289203'),(15,'auth','0009_alter_user_last_name_max_length','2020-03-09 05:37:40.463984'),(16,'auth','0010_alter_group_name_max_length','2020-03-09 05:37:40.591111'),(17,'auth','0011_update_proxy_permissions','2020-03-09 05:37:40.658928'),(18,'sessions','0001_initial','2020-03-09 05:37:40.953713'),(19,'authtoken','0001_initial','2020-03-10 23:46:49.237720'),(20,'authtoken','0002_auto_20160226_1747','2020-03-10 23:46:50.703424'),(21,'myapp','0002_auto_20200310_2346','2020-03-10 23:46:52.579160');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('wdim022z5465sblx68owoixafjz23o9w','MzgyMzgzZDBmZDg1YjBkNjUyODA4ZWMzY2I0ZmFiODYyYjQ5YTQxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MmMzZjg3MTBkNjA4ZTY3NzI4MzhiODhhNzZhYzRiN2FlNTcyYmY3In0=','2020-03-24 15:01:19.319555');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_game`
--

DROP TABLE IF EXISTS `myapp_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `detail` varchar(2048) NOT NULL,
  `num_player` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_game`
--

LOCK TABLES `myapp_game` WRITE;
/*!40000 ALTER TABLE `myapp_game` DISABLE KEYS */;
INSERT INTO `myapp_game` VALUES (1,'Snake','Snake Game about learning vocabulary',1,'2020-03-11 03:12:47.629428','2020-03-11 03:12:47.626997');
/*!40000 ALTER TABLE `myapp_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_option_game`
--

DROP TABLE IF EXISTS `myapp_option_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_option_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `detail` varchar(2048) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_option_game`
--

LOCK TABLES `myapp_option_game` WRITE;
/*!40000 ALTER TABLE `myapp_option_game` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_option_game` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_topic`
--

LOCK TABLES `myapp_topic` WRITE;
/*!40000 ALTER TABLE `myapp_topic` DISABLE KEYS */;
INSERT INTO `myapp_topic` VALUES (1,'Professions','Professions & Occupations','2020-03-12 06:01:04.680248','2020-03-12 06:01:04.676048'),(2,'Weather','The Weather','2020-03-12 06:07:28.448947','2020-03-12 06:07:28.443211'),(3,'Fruits','The fruits','2020-03-12 06:17:27.590582','2020-03-12 06:17:27.588077');
/*!40000 ALTER TABLE `myapp_topic` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
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
-- Table structure for table `myapp_user_topic`
--

DROP TABLE IF EXISTS `myapp_user_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_user_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_user_topic_topic_id_43c4ffc6_fk_myapp_topic_id` (`topic_id`),
  KEY `myapp_user_topic_user_id_caf644c2_fk_myapp_user_id` (`user_id`),
  CONSTRAINT `myapp_user_topic_topic_id_43c4ffc6_fk_myapp_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `myapp_topic` (`id`),
  CONSTRAINT `myapp_user_topic_user_id_caf644c2_fk_myapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_user_topic`
--

LOCK TABLES `myapp_user_topic` WRITE;
/*!40000 ALTER TABLE `myapp_user_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_user_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_user_topic_game`
--

DROP TABLE IF EXISTS `myapp_user_topic_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_user_topic_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_user_topic_game_option_id_da598b74_fk_myapp_option_game_id` (`option_id`),
  KEY `myapp_user_topic_game_topic_id_5e942671_fk_myapp_topic_id` (`topic_id`),
  KEY `myapp_user_topic_game_user_id_62011efa_fk_myapp_user_id` (`user_id`),
  CONSTRAINT `myapp_user_topic_game_option_id_da598b74_fk_myapp_option_game_id` FOREIGN KEY (`option_id`) REFERENCES `myapp_option_game` (`id`),
  CONSTRAINT `myapp_user_topic_game_topic_id_5e942671_fk_myapp_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `myapp_topic` (`id`),
  CONSTRAINT `myapp_user_topic_game_user_id_62011efa_fk_myapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_user_topic_game`
--

LOCK TABLES `myapp_user_topic_game` WRITE;
/*!40000 ALTER TABLE `myapp_user_topic_game` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_user_topic_game` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_word`
--

LOCK TABLES `myapp_word` WRITE;
/*!40000 ALTER TABLE `myapp_word` DISABLE KEYS */;
INSERT INTO `myapp_word` VALUES (1,'Accountant','Contador',1,0,'2020-03-12 06:01:53.646703','2020-03-12 06:01:53.629318',1,8),(2,'Astronomer','Astronomo',1,0,'2020-03-12 06:02:16.015405','2020-03-12 06:02:16.008920',1,8),(6,'Postman','Cartero',1,0,'2020-03-12 06:04:27.820366','2020-03-12 06:04:27.802390',1,8),(7,'Scientist','Cientifico',1,0,'2020-03-12 06:04:56.585240','2020-03-12 06:04:56.578949',1,8),(9,'Bright','Brillante',1,0,'2020-03-12 06:08:01.990246','2020-03-12 06:08:01.983550',1,8),(10,'Sunny','Soleado',1,0,'2020-03-12 06:08:22.546805','2020-03-12 06:08:22.528810',2,8),(12,'Clear','Despejado',1,0,'2020-03-12 06:10:06.916808','2020-03-12 06:10:06.900245',2,8),(13,'Fine','Bien',1,0,'2020-03-12 06:10:24.065707','2020-03-12 06:10:24.053068',2,8),(14,'Cloudy','Nublado',1,0,'2020-03-12 06:10:43.394930','2020-03-12 06:10:43.378676',2,8),(15,'Rain','Lluvia',1,0,'2020-03-12 06:11:35.715955','2020-03-12 06:11:35.702317',2,8),(16,'Snow','Nieve',1,0,'2020-03-12 06:12:22.599381','2020-03-12 06:12:22.590686',2,8),(17,'Baker','Panadero',1,0,'2020-03-12 06:13:02.466455','2020-03-12 06:13:02.449196',1,8),(18,'Farmer','Granjero',1,0,'2020-03-12 06:13:35.134292','2020-03-12 06:13:35.118196',1,8),(19,'Lawyer','Abogado',1,0,'2020-03-12 06:13:55.886380','2020-03-12 06:13:55.871059',1,8),(20,'Judge','Juez',1,0,'2020-03-12 06:14:06.450438','2020-03-12 06:14:06.432900',1,8),(21,'Nurse','Enfermera',1,0,'2020-03-12 06:14:35.377613','2020-03-12 06:14:35.356235',1,8),(22,'Tailor','Sastre',1,0,'2020-03-12 06:15:05.972908','2020-03-12 06:15:05.965693',1,8),(23,'Receptionist','Recepcionista',1,0,'2020-03-12 06:16:20.960343','2020-03-12 06:16:20.942484',1,8),(24,'Apple','Manzana',1,0,'2020-03-12 06:18:01.286831','2020-03-12 06:18:01.269661',3,8),(25,'Avocado','Aguacate',1,0,'2020-03-12 06:18:44.187814','2020-03-12 06:18:44.174772',3,8),(26,'Coconut','Coco',1,0,'2020-03-12 06:19:01.228675','2020-03-12 06:19:01.209886',3,8),(27,'Grape','Uva',1,0,'2020-03-12 06:19:16.708197','2020-03-12 06:19:16.691366',3,8),(28,'Orange','Naranja',1,0,'2020-03-12 06:19:53.159976','2020-03-12 06:19:53.140363',3,8),(29,'Pear','Pera',1,0,'2020-03-12 06:20:09.904338','2020-03-12 06:20:09.885170',3,8),(30,'Strawberry','Fresa',1,0,'2020-03-12 06:20:36.994340','2020-03-12 06:20:36.983654',3,8);
/*!40000 ALTER TABLE `myapp_word` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-12  1:22:24
