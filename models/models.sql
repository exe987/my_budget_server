-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: my_budget
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id_transaction` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `ammount` float NOT NULL,
  `date` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id_transaction`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (2,18,35,'0005-03-31','deposit'),(3,18,12,'0023-12-12','deposit'),(4,18,232,'0332-02-23','deposit'),(5,18,2323,'2323-03-22','deposit'),(6,18,26262,'1515-12-15','deposit'),(7,18,23,'0015-12-15','deposit'),(8,18,23,'0033-03-03','deposit'),(9,18,656,'0006-05-05','deposit'),(10,18,23,'0323-02-23','deposit'),(11,18,2323,'0323-02-23','deposit'),(12,18,23232,'3323-02-23','deposit'),(13,18,566526,'0323-02-23','deposit'),(14,18,2300,'0323-02-23','deposit'),(15,18,23,'0323-02-23','deposit'),(16,18,2333,'3232-02-23','deposit'),(17,18,23,'3232-02-23','deposit'),(18,18,333,'0323-02-23','deposit'),(19,18,23,'0012-12-12','deposit'),(20,18,23,'0032-02-23','deposit'),(21,18,23,'3232-02-23','deposit'),(22,18,2355,'0005-05-05','deposit'),(23,18,23,'0332-02-23','deposit'),(24,18,232,'0332-02-23','deposit'),(25,18,23,'0055-05-21','deposit'),(26,18,23,'0323-02-23','deposit'),(27,18,565,'8888-07-08','deposit'),(28,18,23,'0323-02-23','deposit'),(29,18,23,'2323-02-23','transportation'),(30,18,-23,'0032-02-23','gifts'),(31,18,-23,'0323-02-23','family'),(32,18,-22,'3232-02-23','family'),(33,18,-23,'0848-04-25','family'),(34,18,-23,'3232-02-23','transportation'),(35,18,-85,'0323-02-23','gifts'),(36,18,-23,'3232-02-23','transportation'),(37,18,-23,'0015-05-21','transportation'),(38,18,-23,'0515-11-05','transportation'),(39,18,-6262,'0323-02-23','family'),(40,18,-23,'0033-02-23','transportation'),(41,18,-20,'3232-02-23','transportation'),(42,18,-20,'0012-12-12','workout'),(43,18,-3,'0332-02-23','transportation'),(44,18,-20,'0323-02-23','family'),(45,18,-20,'0121-12-12','transportation'),(46,18,-37,'1212-02-21','workout'),(47,18,-3549,'0012-02-20','transportation'),(48,18,-23,'0323-02-23','transportation'),(49,18,-20,'0323-02-23','transportation'),(50,18,-20,'0012-12-12','transportation'),(51,18,-23,'0012-12-12','transportation'),(52,18,-23,'0323-02-23','family'),(53,18,-23,'0565-06-05','family'),(54,18,-23,'0323-02-23','family'),(55,18,-22,'3223-02-23','transportation'),(56,18,-19,'0323-02-23','transportation'),(57,18,-22,'2222-02-22','family'),(58,18,-18,'1511-12-15','family'),(59,18,-3,'5656-06-05','family'),(60,18,-26,'0444-06-05','gifts'),(61,18,-8,'0232-03-23','transportation'),(62,18,-23,'0323-02-23','family'),(63,18,-247,'0151-12-15','transportation'),(64,18,-25,'0022-02-22','gifts'),(67,18,1997,'0032-02-23','deposit'),(86,22,200,'2021-02-27','deposit'),(90,22,1000,'2021-02-27','deposit'),(91,22,-20,'2000-02-20','family'),(93,18,-20,'0202-02-20','transport');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `ammount` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Exe','exe@perro','milo',52),(2,'exe','exe987@hotmail.com','a',NULL),(3,'exe','exe987@hotmail.com','aa',NULL),(4,'exe','exe987@hotmail.com','111',NULL),(5,'exe','exe987@hotmail.com','aa',0),(6,'exe','exe987@hotmail.comaaa','$2a$10$nfBVdNn6xlV.A1D7QA9dLOlWL6AWHSO6/ZEHuAtWak1ZWMHrm3gzC',0),(7,'exe','exe987aa@hotmail.com','$2a$10$EMY76HYM7lwJyg4UZ./JzOwk.rtVzZHYLbR34viHmNVSZMAwptxUC',0),(8,'exe','exe987aa@hotmail.comaaa','$2a$10$tyMCXE7Z9ydCsk2udUr6LOu91viJm4CenFFy.D8/7KoeV3Dc6kwt6',0),(9,'exe','exe987aa@hotmail.comaaaa','$2a$10$FACXh2o9LwD9x6RxKbt1BuZ13oXhxwSdZqS8VfB8L58l81jAUgEdK',0),(10,'Andrea','a@a','$2a$10$hpJQRE9tYzlUqS.D3o8omOdrIpON6W7iT/QNN4RgFgoCOjjjJ6iYO',0),(11,'exe','a@aa','$2a$10$9ZRzaiV7xCqwf3Af/rE/a.XIi6pXQWFvJ/vPCN2zEJhy6ziF3nahq',0),(12,'perro','milodor@milo','$2a$10$S6m6kYpaRaEmSRwLp8XhDeSn2zSknj9Nm6BjuiEzMEwYlr1JQSuBC',NULL),(13,'exe','andrea.diazmacias@gmail.com','$2a$10$NjCB01OnUe6l.Y5FYtNd7OUS2wyt2naWg9sfX34aoMsCN.BMtqBJS',0),(14,'Andrea','andrea.diazmacias@gmail.com','$2a$10$4X0ncbLa52SqVXM/u4p6eumnlVzijLrXkhpMil5K4BbBSz9O9KQAK',0),(15,'Andrea','exe987@hotmail.com','$2a$10$pUXLfpjuYdzE4y6CMtorv.MH/CIvw1k4zVIGMMG.UIaQl1/b48j66',0),(16,'exe','exe987@hotmail.com','$2a$10$kkFrY69pO5ceCEfeRCj8Q.p42pyO7cwxefEx.rwmuPlQgHDCFocg2',0),(17,'Andrea','andrea.diazmacias@gmail.com','$2a$10$lHmxLo2t0temd2T9YLLt1O2ZE3Ihw/gLZsd13YQbVveJ9KX0TJYhi',0),(18,'exe','exe963@hotmail.com','$2a$10$eiliYl8G/ANIsyIyd7dg2.L.1xOkp8az7FvOFw7palpdKMa94SNt.',621205),(19,'bu','bu@hotmail.com','$2a$10$IxwNYcRepMxp52NfnNXsdei6eLXehKWL4xcXggwsJpRp34fraOk9q',0),(20,'Andrea','andrea.diazmacias@gmail.com','$2a$10$D6Qeg09ztYZGHskdSrmZB.NZ/2SMwdrxUnwknW.d1/2qaS380pVMa',0),(21,'exe','exe987@hotmail.com','$2a$10$RMNjowhBP3MuPoXETBM3B.XqcwU2sl3aXnREMwozzfUVWpQcAiQSi',0),(22,'exe','exejob@hotmail.com','$2a$10$hSfuyOX6O2Ki6wp/mkc/rumG9aHoFyN/VQMWgx/jy7nMXo9CzXAMe',1180);
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

-- Dump completed on 2021-02-27 19:57:06
