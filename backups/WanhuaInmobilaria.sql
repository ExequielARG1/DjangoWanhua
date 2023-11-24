-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: WanhuaInmobilaria
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cliente',7,'add_cliente'),(26,'Can change cliente',7,'change_cliente'),(27,'Can delete cliente',7,'delete_cliente'),(28,'Can view cliente',7,'view_cliente'),(29,'Can add propiedades',8,'add_propiedades'),(30,'Can change propiedades',8,'change_propiedades'),(31,'Can delete propiedades',8,'delete_propiedades'),(32,'Can view propiedades',8,'view_propiedades'),(33,'Can add contrato',9,'add_contrato'),(34,'Can change contrato',9,'change_contrato'),(35,'Can delete contrato',9,'delete_contrato'),(36,'Can view contrato',9,'view_contrato'),(37,'Can add convenio',10,'add_convenio'),(38,'Can change convenio',10,'change_convenio'),(39,'Can delete convenio',10,'delete_convenio'),(40,'Can view convenio',10,'view_convenio'),(41,'Can add backup history',11,'add_backuphistory'),(42,'Can change backup history',11,'change_backuphistory'),(43,'Can delete backup history',11,'delete_backuphistory'),(44,'Can view backup history',11,'view_backuphistory');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$RYyEjoRs8RWOFmfNktmxMe$MmOH3U+dwz80sJ3uskZOe+9kLnBoDgMxjAZnJWz/yAk=','2023-11-23 03:16:00.137821',1,'admin','','','',1,1,'2023-11-17 05:49:38.999188');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(11,'tasks','backuphistory'),(7,'tasks','cliente'),(9,'tasks','contrato'),(10,'tasks','convenio'),(8,'tasks','propiedades');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-17 05:48:54.537323'),(2,'auth','0001_initial','2023-11-17 05:48:54.714864'),(3,'admin','0001_initial','2023-11-17 05:48:54.766025'),(4,'admin','0002_logentry_remove_auto_add','2023-11-17 05:48:54.772133'),(5,'admin','0003_logentry_add_action_flag_choices','2023-11-17 05:48:54.778593'),(6,'contenttypes','0002_remove_content_type_name','2023-11-17 05:48:54.814082'),(7,'auth','0002_alter_permission_name_max_length','2023-11-17 05:48:54.838438'),(8,'auth','0003_alter_user_email_max_length','2023-11-17 05:48:54.862274'),(9,'auth','0004_alter_user_username_opts','2023-11-17 05:48:54.868701'),(10,'auth','0005_alter_user_last_login_null','2023-11-17 05:48:54.914210'),(11,'auth','0006_require_contenttypes_0002','2023-11-17 05:48:54.916871'),(12,'auth','0007_alter_validators_add_error_messages','2023-11-17 05:48:54.922826'),(13,'auth','0008_alter_user_username_max_length','2023-11-17 05:48:54.950614'),(14,'auth','0009_alter_user_last_name_max_length','2023-11-17 05:48:54.979921'),(15,'auth','0010_alter_group_name_max_length','2023-11-17 05:48:54.993465'),(16,'auth','0011_update_proxy_permissions','2023-11-17 05:48:55.000024'),(17,'auth','0012_alter_user_first_name_max_length','2023-11-17 05:48:55.029467'),(18,'sessions','0001_initial','2023-11-17 05:48:55.044209'),(19,'tasks','0001_initial','2023-11-17 05:48:55.053288'),(20,'tasks','0002_propiedades','2023-11-17 05:48:55.077627'),(21,'tasks','0003_propiedades_direccion_propiedades_foto1_and_more','2023-11-17 05:48:55.108169'),(22,'tasks','0004_alter_propiedades_foto1_alter_propiedades_foto2_and_more','2023-11-17 05:48:55.115152'),(23,'tasks','0005_alter_propiedades_foto1_alter_propiedades_foto2_and_more','2023-11-17 05:48:55.121807'),(24,'tasks','0006_alter_propiedades_foto1_alter_propiedades_foto2_and_more','2023-11-17 05:48:55.128087'),(25,'tasks','0007_alter_propiedades_foto1_alter_propiedades_foto2_and_more','2023-11-17 05:48:55.135068'),(26,'tasks','0008_alter_propiedades_foto1_alter_propiedades_foto2_and_more','2023-11-17 05:48:55.141307'),(27,'tasks','0009_contrato','2023-11-17 05:48:55.195615'),(28,'tasks','0010_convenio','2023-11-18 02:37:59.979302'),(29,'tasks','0011_backuphistory_and_more','2023-11-23 00:27:54.832755'),(30,'tasks','0012_alter_contrato_descripcion','2023-11-23 01:30:10.047523');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('al6mj8y7uztjbuagh91pjlnhp6qxexb9','.eJxVjMsOwiAQRf-FtSGUNy7d-w1kmAGpGpqUdmX8dyXpQrf3nHNfLMK-1bj3vMaZ2JlN7PS7JcBHbgPQHdpt4bi0bZ0THwo_aOfXhfLzcrh_BxV6HbURNgglEgYFwaGxk5YClcScvBegHRKQL1_FGuO1K1DAKaMlBed1Yu8PyNo3Qg:1r60C8:TQ2yhOvHYrxT-oDhjGohqkANakCQ5rShKt9EGHqYXbA','2023-12-07 03:16:00.139817'),('fm0zc9bvscurx6ryehwn3ey0yr3qd2pn','.eJxVjMsOwiAQRf-FtSGUNy7d-w1kmAGpGpqUdmX8dyXpQrf3nHNfLMK-1bj3vMaZ2JlN7PS7JcBHbgPQHdpt4bi0bZ0THwo_aOfXhfLzcrh_BxV6HbURNgglEgYFwaGxk5YClcScvBegHRKQL1_FGuO1K1DAKaMlBed1Yu8PyNo3Qg:1r5yHA:YZ-k_CFp_ctjLGu9wl7KhWgoYK-2KH6WNQXKAgg5aa4','2023-12-07 01:13:04.212285'),('tmba4fn7lylxvihh3lh7wumup287ihl8','e30:1r604w:RRTBEBM57aAlLGHCwboFQmrJUz_5vAqGQl4ekqi5_q8','2023-12-07 03:08:34.918390'),('uoquxasr8m8a618fd8ndydkpwvjbbo78','.eJxVjMsOwiAQRf-FtSGUNy7d-w1kmAGpGpqUdmX8dyXpQrf3nHNfLMK-1bj3vMaZ2JlN7PS7JcBHbgPQHdpt4bi0bZ0THwo_aOfXhfLzcrh_BxV6HbURNgglEgYFwaGxk5YClcScvBegHRKQL1_FGuO1K1DAKaMlBed1Yu8PyNo3Qg:1r5bAO:8FMc5OVmin_BdigKXMJWBhm1XjQ-RB0QCwB-i1OaaXU','2023-12-06 00:32:32.793970');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_backuphistory`
--

DROP TABLE IF EXISTS `tasks_backuphistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_backuphistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `timestamp` datetime(6) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_backuphistory`
--

LOCK TABLES `tasks_backuphistory` WRITE;
/*!40000 ALTER TABLE `tasks_backuphistory` DISABLE KEYS */;
INSERT INTO `tasks_backuphistory` VALUES (1,'2023-11-23 00:32:12.407830',1),(2,'2023-11-23 00:35:26.692912',1),(3,'2023-11-23 03:17:22.027283',1);
/*!40000 ALTER TABLE `tasks_backuphistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_cliente`
--

DROP TABLE IF EXISTS `tasks_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_cliente` (
  `dni` varchar(50) NOT NULL,
  `nombre_cliente` varchar(200) NOT NULL,
  `tel_cliente` varchar(50) NOT NULL,
  `email_cliente` varchar(254) NOT NULL,
  `direccion_cliente` varchar(300) NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_cliente`
--

LOCK TABLES `tasks_cliente` WRITE;
/*!40000 ALTER TABLE `tasks_cliente` DISABLE KEYS */;
INSERT INTO `tasks_cliente` VALUES ('33333333','asdads','12313','2asdads@gmail.com','123312'),('5645646','asdasd','56456654','asdas@gmail.com','454556');
/*!40000 ALTER TABLE `tasks_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_contrato`
--

DROP TABLE IF EXISTS `tasks_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_contrato` (
  `id_contrato` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `descripcion` longtext NOT NULL,
  `cliente_id` varchar(50) NOT NULL,
  `propiedades_id` int NOT NULL,
  PRIMARY KEY (`id_contrato`),
  KEY `tasks_contrato_cliente_id_a0867919_fk_tasks_cliente_dni` (`cliente_id`),
  KEY `tasks_contrato_propiedades_id_bbb9da6d_fk_tasks_pro` (`propiedades_id`),
  CONSTRAINT `tasks_contrato_cliente_id_a0867919_fk_tasks_cliente_dni` FOREIGN KEY (`cliente_id`) REFERENCES `tasks_cliente` (`dni`),
  CONSTRAINT `tasks_contrato_propiedades_id_bbb9da6d_fk_tasks_pro` FOREIGN KEY (`propiedades_id`) REFERENCES `tasks_propiedades` (`ID_prop`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_contrato`
--

LOCK TABLES `tasks_contrato` WRITE;
/*!40000 ALTER TABLE `tasks_contrato` DISABLE KEYS */;
INSERT INTO `tasks_contrato` VALUES (13,'1993-01-02','1999-02-01','asfafs','33333333',2),(18,'2100-05-01','2200-06-05','<h1><strong><del>ASFFggg</del></strong></h1>','5645646',5),(19,'1993-01-05','1999-01-01','agag','5645646',5);
/*!40000 ALTER TABLE `tasks_contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_convenio`
--

DROP TABLE IF EXISTS `tasks_convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_convenio` (
  `id_convenio` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `descripcion` longtext NOT NULL,
  `id_contrato_id` int NOT NULL,
  PRIMARY KEY (`id_convenio`),
  KEY `tasks_convenio_id_contrato_id_4273d6d6_fk_tasks_con` (`id_contrato_id`),
  CONSTRAINT `tasks_convenio_id_contrato_id_4273d6d6_fk_tasks_con` FOREIGN KEY (`id_contrato_id`) REFERENCES `tasks_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_convenio`
--

LOCK TABLES `tasks_convenio` WRITE;
/*!40000 ALTER TABLE `tasks_convenio` DISABLE KEYS */;
INSERT INTO `tasks_convenio` VALUES (20,'1959-05-01','2006-01-01','ag',13);
/*!40000 ALTER TABLE `tasks_convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_propiedades`
--

DROP TABLE IF EXISTS `tasks_propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_propiedades` (
  `ID_prop` int NOT NULL AUTO_INCREMENT,
  `area_total` double NOT NULL,
  `nro_habitaciones` int NOT NULL,
  `precio_alq` decimal(10,2) NOT NULL,
  `descripcion` longtext NOT NULL,
  `cliente_id` varchar(50) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `foto1` varchar(100) DEFAULT NULL,
  `foto2` varchar(100) DEFAULT NULL,
  `foto3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_prop`),
  KEY `tasks_propiedades_cliente_id_903d2b3c_fk_tasks_cliente_dni` (`cliente_id`),
  CONSTRAINT `tasks_propiedades_cliente_id_903d2b3c_fk_tasks_cliente_dni` FOREIGN KEY (`cliente_id`) REFERENCES `tasks_cliente` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_propiedades`
--

LOCK TABLES `tasks_propiedades` WRITE;
/*!40000 ALTER TABLE `tasks_propiedades` DISABLE KEYS */;
INSERT INTO `tasks_propiedades` VALUES (2,1,1,1.00,'11','33333333','1','propiedades/fotos/default.jpg','propiedades/fotos/default.jpg','propiedades/fotos/default.jpg'),(4,1,1,1.00,'1','33333333','1','propiedades/fotos/default.jpg','propiedades/fotos/default.jpg','propiedades/fotos/default.jpg'),(5,1,1,1.00,'asd','5645646','asd','propiedades/fotos/default.jpg','propiedades/fotos/default.jpg','propiedades/fotos/default.jpg'),(6,1,1,1.00,'1','5645646',NULL,'propiedades/fotos/default.jpg','propiedades/fotos/default.jpg','propiedades/fotos/default.jpg');
/*!40000 ALTER TABLE `tasks_propiedades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23  0:17:25
