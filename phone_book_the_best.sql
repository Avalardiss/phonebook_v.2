-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: phone_book_the_best
-- ------------------------------------------------------
-- Server version	8.0.28

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
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add Абонент',2,'add_abonent'),(6,'Can change Абонент',2,'change_abonent'),(7,'Can delete Абонент',2,'delete_abonent'),(8,'Can view Абонент',2,'view_abonent'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$ZlICTvl5Q6avb3LJIR5QTd$Ig6EW5wkpMOdUMzgHvL4CNGS7ceYDpKpjTmTHpoWf7M=','2022-05-02 15:33:21.294203',1,'root','','','',1,1,'2022-05-02 15:33:09.315971');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-05-02 15:33:50.457091','1','',1,'[{\"added\": {}}]',2,1),(2,'2022-05-02 15:35:48.592842','2','',1,'[{\"added\": {}}]',2,1),(3,'2022-05-02 16:28:37.533559','3','8-911-111-11-13',1,'[{\"added\": {}}]',2,1),(4,'2022-05-02 19:48:37.966116','4','73-01-174',1,'[{\"added\": {}}]',2,1),(5,'2022-05-02 19:49:02.182998','5','34653',1,'[{\"added\": {}}]',2,1),(6,'2022-05-02 19:49:43.422140','6','',1,'[{\"added\": {}}]',2,1),(7,'2022-05-02 19:56:01.739215','7','11-11-115',1,'[{\"added\": {}}]',2,1),(8,'2022-05-02 19:56:36.238074','8','11-11-119',1,'[{\"added\": {}}]',2,1),(9,'2022-05-02 19:57:07.513653','9','11-11-444',1,'[{\"added\": {}}]',2,1),(10,'2022-05-02 19:57:40.960442','10','34645',1,'[{\"added\": {}}]',2,1),(11,'2022-05-02 19:58:14.680273','11','11-11-321',1,'[{\"added\": {}}]',2,1),(12,'2022-05-02 19:58:54.997352','12','',1,'[{\"added\": {}}]',2,1),(13,'2022-05-02 20:00:20.872789','13','11-11-415',1,'[{\"added\": {}}]',2,1),(14,'2022-05-02 20:00:57.808584','14','11-11-114',1,'[{\"added\": {}}]',2,1),(15,'2022-05-02 20:01:26.098109','15','',1,'[{\"added\": {}}]',2,1),(16,'2022-05-02 20:03:10.619790','16','11-11-159',1,'[{\"added\": {}}]',2,1),(17,'2022-05-02 20:03:36.231894','17','',1,'[{\"added\": {}}]',2,1),(18,'2022-05-02 20:05:30.771451','3','8-911-111-11-13',2,'[{\"changed\": {\"fields\": [\"\\u0413\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\"]}}]',2,1),(19,'2022-05-02 20:06:15.684500','16','11-11-159',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\"]}}]',2,1),(20,'2022-05-02 20:06:55.890322','18','11-11-482',1,'[{\"added\": {}}]',2,1),(21,'2022-05-02 20:07:44.766828','19','11-11-719',1,'[{\"added\": {}}]',2,1),(22,'2022-05-02 20:09:59.552338','20','',1,'[{\"added\": {}}]',2,1),(23,'2022-05-02 20:12:32.908545','21','',1,'[{\"added\": {}}]',2,1),(24,'2022-05-02 20:13:15.981067','22','11-11-795',1,'[{\"added\": {}}]',2,1),(25,'2022-05-02 20:13:48.093074','23','73-01-179',1,'[{\"added\": {}}]',2,1),(26,'2022-05-02 20:15:28.838007','24','',1,'[{\"added\": {}}]',2,1),(27,'2022-05-02 20:18:18.439780','25','73-01-181',1,'[{\"added\": {}}]',2,1),(28,'2022-05-02 20:18:55.792916','26','11-11-487',1,'[{\"added\": {}}]',2,1),(29,'2022-05-02 20:23:09.566478','27','',1,'[{\"added\": {}}]',2,1),(30,'2022-05-02 20:24:21.164821','27','',2,'[{\"changed\": {\"fields\": [\"\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f, \\u0418\\u043c\\u044f, \\u041e\\u0442\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\"]}}]',2,1),(31,'2022-05-02 20:25:15.135866','28','11-11-147',1,'[{\"added\": {}}]',2,1),(32,'2022-05-02 20:25:49.032943','29','73-01-758',1,'[{\"added\": {}}]',2,1),(33,'2022-05-02 20:27:23.574400','30','',1,'[{\"added\": {}}]',2,1),(34,'2022-05-02 20:28:07.677441','31','11-11-183',1,'[{\"added\": {}}]',2,1),(35,'2022-05-02 20:28:38.900435','32','73-01-752',1,'[{\"added\": {}}]',2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(2,'phone','abonent'),(7,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-05-02 15:26:02.910522'),(2,'auth','0001_initial','2022-05-02 15:26:15.722954'),(3,'admin','0001_initial','2022-05-02 15:26:19.135162'),(4,'admin','0002_logentry_remove_auto_add','2022-05-02 15:26:19.201562'),(5,'admin','0003_logentry_add_action_flag_choices','2022-05-02 15:26:19.341962'),(6,'contenttypes','0002_remove_content_type_name','2022-05-02 15:26:21.572167'),(7,'auth','0002_alter_permission_name_max_length','2022-05-02 15:26:22.978170'),(8,'auth','0003_alter_user_email_max_length','2022-05-02 15:26:23.259970'),(9,'auth','0004_alter_user_username_opts','2022-05-02 15:26:23.369170'),(10,'auth','0005_alter_user_last_login_null','2022-05-02 15:26:24.706979'),(11,'auth','0006_require_contenttypes_0002','2022-05-02 15:26:24.856780'),(12,'auth','0007_alter_validators_add_error_messages','2022-05-02 15:26:24.911780'),(13,'auth','0008_alter_user_username_max_length','2022-05-02 15:26:25.968782'),(14,'auth','0009_alter_user_last_name_max_length','2022-05-02 15:26:27.170184'),(15,'auth','0010_alter_group_name_max_length','2022-05-02 15:26:27.391184'),(16,'auth','0011_update_proxy_permissions','2022-05-02 15:26:27.515984'),(17,'auth','0012_alter_user_first_name_max_length','2022-05-02 15:26:28.473588'),(18,'phone','0001_initial','2022-05-02 15:26:28.965989'),(19,'phone','0002_alter_abonent_options_abonent_gorod_phone_and_more','2022-05-02 15:26:29.567790'),(20,'phone','0003_alter_abonent_name','2022-05-02 15:26:29.786190'),(21,'phone','0004_abonent_zvks','2022-05-02 15:26:30.661792'),(22,'sessions','0001_initial','2022-05-02 15:26:31.676794');
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
INSERT INTO `django_session` VALUES ('nar0nh86ry3cb09dtqmvy7pf8w6iftu8','.eJxVjDsOwjAQBe_iGln4s45NSZ8zWLvrNQmgRIqTCnF3iJQC2jcz76UybuuQtyZLHou6KKNOvxshP2TaQbnjdJs1z9O6jKR3RR-06X4u8rwe7t_BgG341swgrrIzPsZ6ZpdK8MnbIBxRgoUuOROFAYi8twVNB2gJUqACVIHV-wPk9zgO:1nlY37:rz2BmylUkphebqOyAjyWgvQySnjLgoVKmDvIdhVrUA4','2022-05-16 15:33:21.389203');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_abonent`
--

DROP TABLE IF EXISTS `phone_abonent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_abonent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `mobile_phone` varchar(100) NOT NULL,
  `internal_phone` varchar(100) NOT NULL,
  `IP_phone` varchar(100) NOT NULL,
  `pts_phone` varchar(100) NOT NULL,
  `conference_phone` varchar(100) NOT NULL,
  `zas_phone` varchar(100) NOT NULL,
  `gorod_phone` varchar(100) NOT NULL,
  `zvks` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_abonent`
--

LOCK TABLES `phone_abonent` WRITE;
/*!40000 ALTER TABLE `phone_abonent` DISABLE KEYS */;
INSERT INTO `phone_abonent` VALUES (1,'1. Администрация','','','','','','','',''),(2,'1.1. Канцелярия','','','','','','','',''),(3,'Богомолова Варвара Маратовна','8-911-111-11-11','55-55','12345','1','8-911-111-11-12','8-911-111-11-13','8(495)888-88-88','email@yandex.ru'),(4,'Баженова Софья Тимофеевна','8-222-22-22-22','82-31','38-200','2','2523','73-01-174','8(499)966-82-31','email@yandex.ru'),(5,'Агафонова Яна Артуровна','8-926-699-93-95','82-31','246','3','8-912-555-55-55','34653','8(499)966-82-31','email@yandex.ru'),(6,'1.1.1. Сектор документации','','','','','','','',''),(7,'Богданова Агата Степановна','8-912-111-11-11','82-31','3333','4','8-912-555-55-77','11-11-115','8(499)673-20-05','email@yandex.ru'),(8,'Герасимова Стефания Максимовна','8-926-699-93-77','75-56','45747','5','57568','11-11-119','8(499)673-20-11','email@yandex.ru'),(9,'Боброва Мария Дмитриевна','8-926-699-93-44','92-31','45741','6','57555','11-11-444','8(499)673-20-11','email@yandex.ru'),(10,'Алексеев Дмитрий Даниилович','8-926-699-93-88','82-99','45741','7','8-926-913-54-33','34645','8(499)966-82-33','email@yandex.ru'),(11,'Мельникова Анастасия Тимофеевна','8-926-699-93-66','82-52','45725','8','8-926-913-54-65','11-11-321','8(499)966-82-85','email@yandex.ru'),(12,'1.1.2. Архив','','','','','','','',''),(13,'Кондратьева Мирослава Арсентьевна','8-926-699-93-23','75-56','45741','9','8-926-913-54-19','11-11-415','8(499)966-82-56','email@yandex.ru'),(14,'Маслова Полина Максимовна','8-926-699-93-44','82-49','45748','10','8-912-555-55-41','11-11-114','8(499)673-20-37','email@yandex.ru'),(15,'1.2. Бухгалетрия','','','','','','','',''),(16,'Егорова Мирослава Ивановна','8-926-699-93-43','72-31','45743','11','8-926-913-54-72','11-11-159','8(499)966-82-59','email@yandex.ru'),(17,'1.3. Юридический отдел','','','','','','','',''),(18,'Назарова Александра Никитична','8-926-699-93-41','82-43','33317','12','8-926-913-54-73','11-11-482','8(499)966-82-59','email@yandex.ru'),(19,'Павлов Глеб Александрович','8-926-699-93-43','82-82','38-215','12','8-926-913-54-73','11-11-719','8(499)966-82-72','email@yandex.ru'),(20,'2. Службы логистики и транспорта','','','','','','','',''),(21,'2.1. Отдел логистики','','','','','','','',''),(22,'Степанов Арсений Леонидович','8-926-699-93-42','82-49','45743','13','8-926-913-54-76','11-11-795','8(499)966-82-73','email@yandex.ru'),(23,'Антонова Алиса Денисовна','8-912-111-11-75','73-01-82-72','33359','14','8-926-913-54-73','73-01-179','8(499)966-82-91','email@yandex.ru'),(24,'2.1.1. Сектор транспортно-складских операций','','','','','','','',''),(25,'Царев Дмитрий Германович','8-926-699-93-71','82-32','45747','15','8-926-913-54-73','73-01-181','8(499)966-82-46','email@yandex.ru'),(26,'Борисова София Николаевна','8-912-111-11-73','73-01-82-18','45748','16','8-926-913-54-79','11-11-487','8(499)966-82-75','email@yandex.ru'),(27,'2.1.1.1. Склад №1 Сбыта','','','','','','','',''),(28,'Быкова Анастасия Андреевна','8-926-699-93-14','82-81','38-259','17','8-926-913-54-79','11-11-147','8(499)966-82-75','email@yandex.ru'),(29,'Павлова Мария Марковна','8-912-111-11-74','82-77','45158','18','8-926-913-54-79','73-01-758','8(499)160-04-72','email@yandex.ru'),(30,'2.1.1.2. Склад №2 Ответственного хранения','','','','','','','',''),(31,'Петрова Ясмина Кирилловна','8-926-699-93-73','82-84','38-249','19','8-912-555-55-77','11-11-183','8(499)160-04-79','email@yandex.ru'),(32,'Бородин Данила Александрович','8-926-699-93-76','83-48','45746','20','8-912-555-55-11','73-01-752','8(499)966-82-44','email@yandex.ru');
/*!40000 ALTER TABLE `phone_abonent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'phone_book_the_best'
--

--
-- Dumping routines for database 'phone_book_the_best'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-02 23:46:49
