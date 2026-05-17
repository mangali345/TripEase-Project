-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: tripease_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `email` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin@gmail.com','mangali tiwari','1212','8471088908','','42327221_mt.jpeg');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `bookingrequestdate` datetime(6) NOT NULL,
  `bookingstatus` varchar(45) NOT NULL,
  `planner_email` varchar(45) NOT NULL,
  `plannerresponse` varchar(225) NOT NULL,
  `totalperson` int NOT NULL,
  `tripid` int NOT NULL,
  `useremail` varchar(45) NOT NULL,
  `usermessage` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `whatsappno` varchar(45) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (6,'2026-04-07 15:18:38.490000','Accepted','planner@gmail.com','Your trip booking has been confirmed',4,6,'user@gmail.com','thankyou','banku tiwari','9450760229'),(7,'2026-04-07 15:43:45.259000','Rejected','planner@gmail.com','Your trip booking has been Rejected due to some reason',9,10,'user@gmail.com','thankyou','pragya','9876564535'),(8,'2026-04-07 15:57:36.920000','Accepted','planner@gmail.com','Your trip booking has been confirmed',2,4,'user@gmail.com','want to visit every places','Mangali Tiwari','8471088908'),(9,'2026-04-07 15:58:21.323000','Rejected','planner@gmail.com','Your trip booking has been Rejected due to some reason',4,5,'user@gmail.com','i love this place','dipanjali','8234567898'),(10,'2026-04-07 15:59:27.720000','pending','planner@gmail.com','',7,7,'user@gmail.com','want to visit ram mandir','dipika','8115826379');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (6,'snt@gmail.com','somnath tiwari','9450760229','hello, i have a query regarding to your service'),(7,'mangu','mangali tiwari','8471088908','I want to know more about your travel');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `review` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (10,'mangu@gmail.com','3','thid '),(11,'mangu@gmail.com','5','well organised features'),(12,'mangu@gmail.com','5','well organised featues'),(13,'mangu@gmail.com','4','good for short trips'),(14,'mangu@gmail.com','5','helpful application'),(15,'mangu@gmail.com','3','liked using trip ease'),(16,'mangu@gmail.com','4','useful for colleges schools and universities'),(17,'user@gmail.com','5','deepanjali');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_planner`
--

DROP TABLE IF EXISTS `travel_planner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_planner` (
  `email` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `registration_no` varchar(15) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_planner`
--

LOCK TABLES `travel_planner` WRITE;
/*!40000 ALTER TABLE `travel_planner` DISABLE KEYS */;
INSERT INTO `travel_planner` VALUES ('banku@gmail.com','kamta','Lucknow','sky ride','banku tiwari','2323','9458760229','TP2323',NULL,NULL,'true'),('dipik@gmail.com','shadipur','Delhi','destination tour','Dipika yadav','8888','7878654321','tp88',NULL,NULL,'true'),('mangu@gmail.com','anandvihar','Delhi','Journey Crafts','Kiran','2222','8115826379','JC6565',NULL,NULL,'true'),('planner@gmail.com','lajpat nagar','Delhi','Dream Route  Travels','Mangali','3333','8471088908','TRIP001','tp','75289450_mangu.jpeg','true'),('somnath@gmail.com','kamta','Lucknow','world ride','somnath tiwari','2121','9450760229','',NULL,NULL,'true');
/*!40000 ALTER TABLE `travel_planner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_package`
--

DROP TABLE IF EXISTS `trip_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip_package` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chargeper_person` int NOT NULL,
  `description` varchar(100) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL,
  `planneremail` varchar(45) DEFAULT NULL,
  `trip_date` date NOT NULL,
  `tripname` varchar(45) NOT NULL,
  `trip_status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_package`
--

LOCK TABLES `trip_package` WRITE;
/*!40000 ALTER TABLE `trip_package` DISABLE KEYS */;
INSERT INTO `trip_package` VALUES (4,2000,'welcome to delhi','Delhi','2 days','planner@gmail.com','2026-04-03','summer vaccation','active'),(5,5000,'welcome to gujrat','gujrat','5days','planner@gmail.com','2026-04-30','winter vaccation','active'),(6,6000,'welcome to mumbai','mumbai','5','planner@gmail.com','2026-04-10','holiday trips','active'),(7,1999,'welcome to ram janm bhumi','ayodhya','2','planner@gmail.com','2026-03-27','summer vaccation','active'),(9,1000,'home town','mau','4','planner@gmail.com','2026-03-26','summer vaccation','active'),(10,3000,'welcome','noida','3','planner@gmail.com','2026-06-24','my trip','active');
/*!40000 ALTER TABLE `trip_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email` varchar(45) NOT NULL,
  `city` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('mangu@gmail.com','Bangalore','mangali tiwari','mangali','8471088908',NULL,NULL),('user@gmail.com','delhi','kiran tiwari','2002','8434567897','user','81815981_travel.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-13 14:59:36
