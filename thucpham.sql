-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: thucpham
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `capacity`
--

DROP TABLE IF EXISTS `capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capacity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacity`
--

LOCK TABLES `capacity` WRITE;
/*!40000 ALTER TABLE `capacity` DISABLE KEYS */;
INSERT INTO `capacity` VALUES (1,'KG'),(2,'G');
/*!40000 ALTER TABLE `capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capacity_product`
--

DROP TABLE IF EXISTS `capacity_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capacity_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` bigint DEFAULT NULL,
  `price_sale` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `capacity_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhjnrkpkv6inecgw6gtcjg4wp4` (`capacity_id`),
  KEY `FK7fs168occ62v7s24jepjgr24l` (`product_id`),
  CONSTRAINT `FK7fs168occ62v7s24jepjgr24l` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKhjnrkpkv6inecgw6gtcjg4wp4` FOREIGN KEY (`capacity_id`) REFERENCES `capacity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacity_product`
--

LOCK TABLES `capacity_product` WRITE;
/*!40000 ALTER TABLE `capacity_product` DISABLE KEYS */;
INSERT INTO `capacity_product` VALUES (1,10000,20000,10,1,1),(2,10000,15000,10,1,2);
/*!40000 ALTER TABLE `capacity_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `capacity_product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc85854w3996w3l4yd0q8hufjq` (`capacity_product_id`),
  KEY `FKl70asp4l4w0jmbm1tqyofho4o` (`user_id`),
  CONSTRAINT `FKc85854w3996w3l4yd0q8hufjq` FOREIGN KEY (`capacity_product_id`) REFERENCES `capacity_product` (`id`),
  CONSTRAINT `FKl70asp4l4w0jmbm1tqyofho4o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2024-10-25 15:26:46',15000,1,2,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgpextbyee3uk9u6o2381m7ft1` (`product_id`),
  CONSTRAINT `FKgpextbyee3uk9u6o2381m7ft1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/quannla.appspot.com/o/files%2F0d8048e4e3_4bfd26a97b2142e6a59272580174ca7e_master.webp?alt=media&token=b4d97f60-d131-4a17-bbc7-012864f1e951',1),(2,'https://firebasestorage.googleapis.com/v0/b/quannla.appspot.com/o/files%2Fbongcaibaby_f5a4a44605684db4a49bf9cd9780863b_master.webp?alt=media&token=55dce007-5935-4292-aaa5-55b87793db0b',2);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oder_detail`
--

DROP TABLE IF EXISTS `oder_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oder_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `subtotal` bigint DEFAULT NULL,
  `oder_product_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrk1qfuohnis056hco47atcgl` (`oder_product_id`),
  KEY `FKcch6rg73ev8of0xq5afs8x9gq` (`product_id`),
  CONSTRAINT `FKcch6rg73ev8of0xq5afs8x9gq` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKrk1qfuohnis056hco47atcgl` FOREIGN KEY (`oder_product_id`) REFERENCES `oder_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oder_detail`
--

LOCK TABLES `oder_detail` WRITE;
/*!40000 ALTER TABLE `oder_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `oder_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oder_product`
--

DROP TABLE IF EXISTS `oder_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oder_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `oder_date` datetime DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_pay` bigint DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKheabu3bn6hqkihdxlqna4bnua` (`user_id`),
  CONSTRAINT `FKheabu3bn6hqkihdxlqna4bnua` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oder_product`
--

LOCK TABLES `oder_product` WRITE;
/*!40000 ALTER TABLE `oder_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oder_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producer`
--

DROP TABLE IF EXISTS `producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producer`
--

LOCK TABLES `producer` WRITE;
/*!40000 ALTER TABLE `producer` DISABLE KEYS */;
INSERT INTO `producer` VALUES (1,'Bắc Mỹ An'),(2,'Thanh Khê');
/*!40000 ALTER TABLE `producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_new_date` date DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` text,
  `is_data_entry` bit(1) NOT NULL,
  `is_delete` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `producer_id` int DEFAULT NULL,
  `product_type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaxeo9fj1sfah36yd9bujs8qft` (`producer_id`),
  KEY `FKlabq3c2e90ybbxk58rc48byqo` (`product_type_id`),
  CONSTRAINT `FKaxeo9fj1sfah36yd9bujs8qft` FOREIGN KEY (`producer_id`) REFERENCES `producer` (`id`),
  CONSTRAINT `FKlabq3c2e90ybbxk58rc48byqo` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'2024-10-25','SP-1000','Tím','<p>Bắp cải tím có nguồn gốc từ vùng Địa Trung Hải, thích hợp với những vùng có khí hậu ôn đới. Ở Việt Nam, loại rau này được trồng nhiều ở Đà Lạt. Cũng giống như bắp cải xanh, bắp cải tím có hình dạng và cách nấu tương tự.</p><p>Bắp cải tím được trồng&nbsp;theo phương pháp hữu cơ cho ra các bắp tươi, ngon và an toàn cho người sử dụng.</p>',_binary '',_binary '\0','Bắp cải tím',1,1),(2,'2024-10-25','SP-1001','Xanh','<p><strong>Súp lơ baby</strong>&nbsp;(Bông caiđược biết đến là loại thực phẩm giàu dinh dưỡng và có thể dùng chế biến rất nhiều món ăn dinh dưỡng cho con người. Vậy loại thực phẩm mang đến những lợi ích gì cho sức khỏe con người? Phải chế biến thế nào để giữ nguyên chất dinh dưỡng của nó và cách thức bảo quản ra sao? Tất cả những thắc mắc này sẽ được giải đáp qua bài viết sau đây, mời bạn đọc tham khảo.</p>',_binary '',_binary '\0','Bông cải baby',1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Rau sạch'),(2,'Nấm tươi'),(3,'Củ'),(4,'Qủa');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_epk9im9l9q67xmwi4hbed25do` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKiqpmjd2qb4rdkej916ymonic6` (`role_id`),
  CONSTRAINT `FK4320p8bgvumlxjkohtbj214qi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKiqpmjd2qb4rdkej916ymonic6` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` text,
  `avatar` longtext,
  `code` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `expiry_time` datetime(6) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `is_actived` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `o_auth_provider` varchar(255) DEFAULT NULL,
  `otp_secret` varchar(255) DEFAULT NULL,
  `password` text,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKlqjrcobrh9jc8wpcar64q1bfh` (`user_name`),
  UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'da nang','https://firebasestorage.googleapis.com/v0/b/quannla.appspot.com/o/files%2Fanh-avatar-trang-fb-mac-dinh.jpg?alt=media&token=fae9b400-ca65-4568-9808-b5e18f1f3d65','KH-1000','1999-08-03','khainguyenlevan@gmail.com',NULL,_binary '\0',_binary '','Nguyễn Lê Văn Khải','local',NULL,'$2a$10$YVZELMlPg9MykKTKdHZQAO91v2xbVnFaSWZvDbiD1bXurVms/60Om','0702750320','admin');
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

-- Dump completed on 2024-10-25 22:01:32
