-- MySQL dump 10.13  Distrib 9.2.0, for Linux (x86_64)
--
-- Host: localhost    Database: PostifyFan
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `following_user_id` int NOT NULL,
  `followed_user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`following_user_id`,`followed_user_id`),
  KEY `followed_user_id` (`followed_user_id`),
  CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`followed_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (1,6,'2025-04-09 15:29:27'),(1,7,'2025-04-09 02:31:03'),(1,8,'2025-04-09 02:31:01'),(1,9,'2025-04-09 15:29:26'),(1,10,'2025-04-09 15:29:26'),(1,11,'2025-04-09 15:29:25');
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'B??i vi???t 1','N???i dung b??i vi???t 1',1,'public','2025-04-08 21:33:42'),(2,'B??i vi???t 2','N???i dung b??i vi???t 2',2,'public','2025-04-08 21:33:42'),(3,'B??i vi???t 3','N???i dung b??i vi???t 3',3,'draft','2025-04-08 21:33:42'),(4,'B??i vi???t 4','N???i dung b??i vi???t 4',4,'public','2025-04-08 21:33:42'),(5,'B??i vi???t 5','N???i dung b??i vi???t 5',5,'draft','2025-04-08 21:33:42'),(6,'B??i vi???t 6','N???i dung b??i vi???t 6',6,'public','2025-04-08 21:33:42'),(7,'B??i vi???t 7','N???i dung b??i vi???t 7',7,'private','2025-04-08 21:33:42'),(8,'B??i vi???t 8','N???i dung b??i vi???t 8',8,'public','2025-04-08 21:33:42'),(9,'B??i vi???t 9','N???i dung b??i vi???t 9',9,'draft','2025-04-08 21:33:42'),(10,'B??i vi???t 10','N???i dung b??i vi???t 10',10,'public','2025-04-08 21:33:42'),(11,'siuuuu','Siuuuuuu',1,'public','2025-04-08 21:34:09'),(12,'siuu','siuuuuu',1,'public','2025-04-09 02:30:42');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'An Giang'),(2,'B Ra - Vng Tu'),(3,'Bc Liu'),(4,'Bc Giang'),(5,'Bc Kn'),(6,'Bc Ninh'),(7,'Bn Tre'),(8,'Bnh Dng'),(9,'Bnh nh'),(10,'Bnh Phc'),(11,'Bnh Thun'),(12,'C Mau'),(13,'Cao Bng'),(14,'Cn Th'),(15,' Nng'),(16,'k Lk'),(17,'k Nng'),(18,'in Bin'),(19,'ng Nai'),(20,'ng Thp'),(21,'Gia Lai'),(22,'H Giang'),(23,'H Nam'),(24,'H Ni'),(25,'H Tnh'),(26,'Hi Dng'),(27,'Hi Phng'),(28,'Hu Giang'),(29,'Ha Bnh'),(30,'Hng Yn'),(31,'Khnh Ha'),(32,'Kin Giang'),(33,'Kon Tum'),(34,'Lai Chu'),(35,'Lng Sn'),(36,'Lo Cai'),(37,'Lm ng'),(38,'Long An'),(39,'Nam nh'),(40,'Ngh An'),(41,'Ninh Bnh'),(42,'Ninh Thun'),(43,'Ph Th'),(44,'Ph Yn'),(45,'Qung Bnh'),(46,'Qung Nam'),(47,'Qung Ngi'),(48,'Qung Ninh'),(49,'Qung Tr'),(50,'Sc Trng'),(51,'Sn La'),(52,'Ty Ninh'),(53,'Thi Bnh'),(54,'Thi Nguyn'),(55,'Thanh Ha'),(56,'Tha Thin Hu'),(57,'Tin Giang'),(58,'TP. H Ch Minh'),(59,'Tr Vinh'),(60,'Tuyn Quang'),(61,'Vnh Long'),(62,'Vnh Phc'),(63,'Yn Bi');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `province_id` int DEFAULT NULL,
  `avatar_file_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `fk_users_province` (`province_id`),
  CONSTRAINT `fk_users_province` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user','123','kyvalaxz2021@gmail.com','2004-03-13',1,'image.png','2025-04-08 21:31:33',NULL),(2,'user1','pass1',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(3,'user2','pass2',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(4,'user3','pass3',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(5,'user4','pass4',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(6,'user5','pass5',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(7,'user6','pass6',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(8,'user7','pass7',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(9,'user8','pass8',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(10,'user9','pass9',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(11,'user10','pass10',NULL,NULL,NULL,NULL,'2025-04-08 21:33:28',NULL),(15,'dduongdev','040313',NULL,NULL,NULL,NULL,'2025-04-10 05:23:01',NULL),(16,'thetindoan123','12345',NULL,NULL,NULL,NULL,'2025-04-10 13:40:52',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-16 15:00:34
