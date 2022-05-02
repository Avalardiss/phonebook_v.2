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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-02 23:45:40
