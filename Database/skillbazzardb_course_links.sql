-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: skillbazzardb
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `course_links`
--

DROP TABLE IF EXISTS `course_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_links` (
  `courseid` int NOT NULL,
  `video_link` varchar(500) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `courseid_idx` (`courseid`),
  CONSTRAINT `courseid` FOREIGN KEY (`courseid`) REFERENCES `courses` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_links`
--

LOCK TABLES `course_links` WRITE;
/*!40000 ALTER TABLE `course_links` DISABLE KEYS */;
INSERT INTO `course_links` VALUES (1,'https://www.youtube.com/watch?v=Wx0SJa8L4dA','Chapter 1',1),(1,'https://www.youtube.com/watch?v=Wx0SJa8L4dA','Lesson 2',2),(1,'https://www.youtube.com/watch?v=Wx0SJa8L4dA','First',11),(5,'https://www.youtube.com/watch?v=Wx0SJa8L4dA','First',12),(5,'https://youtu.be/uv29FtS86Os?si=jftA7Nb72i1ebEpS','Secound',13),(1,'https://www.youtube.com/watch?v=Wx0SJa8L4dA','Lesson',15),(6,'https://www.youtube.com/watch?v=Wx0SJa8L4dA','Lecture 1',16),(6,'https://youtu.be/uv29FtS86Os?si=jftA7Nb72i1ebEpS','Lecture 2',17);
/*!40000 ALTER TABLE `course_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-04 17:18:57
