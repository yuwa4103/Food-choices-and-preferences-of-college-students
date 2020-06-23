CREATE DATABASE  IF NOT EXISTS `foodchoices` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `foodchoices`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: foodchoices
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `calories`
--

DROP TABLE IF EXISTS `calories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calories` (
  `id` int(11) DEFAULT NULL,
  `calories_day` int(11) DEFAULT NULL,
  `calories_chicken` int(11) DEFAULT NULL,
  `colories_scone` int(11) DEFAULT NULL,
  `tortilla_calories` int(11) DEFAULT NULL,
  `turkey_calories` int(11) DEFAULT NULL,
  `waffle_calories` int(11) DEFAULT NULL,
  `calories_day_text` varchar(20) DEFAULT NULL,
  KEY `fk_calories1` (`id`),
  CONSTRAINT `fk_calories1` FOREIGN KEY (`id`) REFERENCES `demographics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calories`
--

LOCK TABLES `calories` WRITE;
/*!40000 ALTER TABLE `calories` DISABLE KEYS */;
INSERT INTO `calories` VALUES (1,0,430,315,1165,345,1315,NULL),(2,3,610,420,725,690,900,'Moderately'),(3,4,720,420,1165,500,900,'Very'),(4,3,430,420,725,690,1315,'Moderately'),(5,2,720,420,940,500,760,'Not at all'),(6,3,610,980,940,345,1315,'Moderately'),(7,3,610,420,940,690,1315,'Moderately'),(8,3,720,420,725,500,1315,'Moderately'),(9,0,430,420,725,345,760,NULL),(10,3,430,315,580,345,900,'Moderately'),(11,3,610,980,940,345,900,'Moderately'),(12,4,720,420,940,500,900,'Very'),(13,3,430,420,940,500,575,'Moderately'),(14,3,610,420,1165,850,1315,'Moderately'),(15,3,610,420,940,500,900,'Moderately'),(16,0,430,980,940,345,1315,NULL),(17,3,265,420,580,345,760,'Moderately'),(18,3,430,980,940,500,900,'Moderately'),(19,3,720,980,1165,690,1315,'Moderately'),(20,2,430,420,940,345,900,'Not at all'),(21,3,610,980,1165,850,1315,'Moderately'),(22,3,610,315,725,500,900,'Moderately'),(23,3,610,420,940,850,1315,'Moderately'),(24,3,610,420,940,690,1315,'Moderately'),(25,2,720,420,940,500,1315,'Not at all'),(26,3,720,420,1165,690,760,'Moderately'),(27,2,610,420,1165,850,1315,'Not at all'),(28,4,610,980,1165,500,1315,'Very'),(29,2,610,420,940,500,1315,'Not at all'),(30,2,265,420,580,500,760,'Not at all'),(31,3,720,420,940,500,1315,'Moderately'),(32,3,610,420,940,690,1315,'Moderately'),(33,3,610,315,580,345,760,'Moderately'),(34,3,720,420,1165,500,900,'Moderately'),(35,3,610,420,940,345,1315,'Moderately'),(36,2,610,420,940,690,760,'Not at all'),(37,3,610,420,1165,500,900,'Moderately'),(38,4,720,420,940,500,1315,'Very'),(39,3,610,980,1165,690,1315,'Moderately'),(40,0,720,980,1165,690,1315,NULL),(41,3,430,315,940,500,760,'Moderately'),(42,4,720,980,940,690,1315,'Very'),(43,3,610,420,940,500,900,'Moderately'),(44,2,430,980,940,345,900,'Not at all'),(45,4,610,420,725,500,760,'Very'),(46,3,610,315,940,500,900,'Moderately'),(47,2,430,420,725,345,900,'Not at all'),(48,0,430,980,940,345,900,NULL),(49,0,430,315,940,345,760,NULL),(50,3,430,315,1165,690,900,'Moderately'),(51,3,720,420,1165,500,760,'Moderately'),(52,4,610,980,1165,500,1315,'Very'),(53,4,610,420,1165,500,900,'Very'),(54,0,610,980,940,500,1315,NULL),(55,3,610,420,940,690,900,'Moderately'),(56,2,610,315,940,500,900,'Not at all'),(57,4,720,315,1165,500,1315,'Very'),(58,4,610,980,725,345,1315,'Very'),(59,3,610,420,1165,690,1315,'Moderately'),(60,0,610,420,1165,500,1315,NULL),(61,4,610,420,1165,690,1315,'Very'),(62,2,610,980,725,500,1315,'Not at all'),(63,4,610,980,1165,850,1315,'Very'),(64,4,610,980,1165,690,1315,'Very'),(65,3,610,420,940,500,760,'Moderately'),(66,0,610,315,725,500,900,NULL),(67,3,720,420,940,500,900,'Moderately'),(68,2,610,420,940,690,1315,'Not at all'),(69,3,430,315,725,500,760,'Moderately'),(70,4,720,420,1165,690,1315,'Very'),(71,3,610,980,1165,500,1315,'Moderately'),(72,0,720,420,1165,690,1315,NULL),(73,3,610,980,1165,345,1315,'Moderately'),(74,4,720,420,1165,850,1315,'Very'),(75,2,265,420,580,345,760,'Not at all'),(76,3,610,420,940,500,900,'Moderately'),(77,3,610,420,1165,690,1315,'Moderately'),(78,2,265,420,725,345,900,'Not at all'),(79,3,720,420,580,345,1315,'Moderately'),(80,3,720,420,1165,850,1315,'Moderately'),(81,2,430,420,1165,500,900,'Not at all'),(82,3,610,420,725,500,900,'Moderately'),(83,0,265,315,580,345,575,NULL),(84,3,430,420,940,690,1315,'Moderately'),(85,3,720,420,725,690,760,'Moderately'),(86,3,265,315,580,500,760,'Moderately'),(87,3,610,420,580,500,900,'Moderately'),(88,3,720,420,1165,690,1315,'Moderately'),(89,4,720,980,1165,850,1315,'Very'),(90,3,610,420,1165,500,900,'Moderately'),(91,4,720,420,1165,850,1315,'Very'),(92,2,610,420,725,500,900,'Not at all'),(93,0,720,420,1165,690,900,NULL),(94,0,720,420,1165,690,1315,NULL),(95,3,610,420,940,690,1315,'Moderately'),(96,0,265,420,1165,690,1315,NULL),(97,3,430,420,725,500,900,'Moderately'),(98,3,720,420,1165,500,760,'Moderately'),(99,3,720,315,1165,690,1315,'Moderately'),(100,4,430,420,1165,690,900,'Very'),(101,3,610,0,0,500,900,'Moderately'),(102,0,610,420,1165,500,1315,NULL),(103,4,610,420,940,500,900,'Very'),(104,3,610,420,725,345,760,'Moderately'),(105,3,720,420,940,690,1315,'Moderately'),(106,3,720,420,1165,690,1315,'Moderately'),(107,3,430,315,580,500,760,'Moderately'),(108,3,430,420,1165,690,900,'Moderately'),(109,2,430,420,580,345,760,'Not at all'),(110,3,610,420,940,690,1315,'Moderately'),(111,3,610,315,580,690,900,'Moderately'),(112,2,265,980,725,345,1315,'Not at all'),(113,4,610,315,725,500,900,'Very'),(114,2,430,420,1165,690,900,'Not at all'),(115,3,610,315,940,850,760,'Moderately'),(116,4,610,980,1165,690,1315,'Very'),(117,0,610,420,725,345,1315,NULL),(118,0,610,315,725,690,760,NULL),(119,3,430,420,940,345,1315,'Moderately'),(120,3,610,420,1165,690,1315,'Moderately'),(121,4,610,420,940,500,1315,'Very'),(122,2,265,315,940,500,1315,'Not at all'),(123,0,720,420,580,690,1315,NULL),(124,4,720,420,940,500,1315,'Very'),(125,0,430,315,725,345,575,NULL);
/*!40000 ALTER TABLE `calories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changes`
--

DROP TABLE IF EXISTS `changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changes` (
  `id` int(11) DEFAULT NULL,
  `calories_day` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `sports` int(11) DEFAULT NULL,
  `sports_type` varchar(100) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `rowValue` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changes`
--

LOCK TABLES `changes` WRITE;
/*!40000 ALTER TABLE `changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comfort_food`
--

DROP TABLE IF EXISTS `comfort_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comfort_food` (
  `id` int(11) DEFAULT NULL,
  `comfortFood` varchar(200) DEFAULT NULL,
  `comfortFoodReason` varchar(200) DEFAULT NULL,
  `ComfortFoodReasonCoded` int(11) DEFAULT NULL,
  KEY `fk_comfort_food1` (`id`),
  CONSTRAINT `fk_comfort_food1` FOREIGN KEY (`id`) REFERENCES `demographics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comfort_food`
--

LOCK TABLES `comfort_food` WRITE;
/*!40000 ALTER TABLE `comfort_food` DISABLE KEYS */;
INSERT INTO `comfort_food` VALUES (1,'none','none',9),(2,'chocolate, chips, ice cream','stress',1),(3,'frozen yogurt, pizza, fast food','stress',1),(4,'Pizza, Mac and cheese, ice cream','boredom',2),(5,'Ice cream, chocolate, chips ','stress',1),(6,'Candy, brownies and soda.','hunger',4),(7,'Chocolate, ice cream, french fries, pretzels','stress',1),(8,'Ice cream, cheeseburgers, chips.','stress',1),(9,'Donuts, ice cream, chips','boredom',2),(10,'Mac and cheese, chocolate, and pasta ','stress',1),(11,'Pasta, grandma homemade chocolate cake anything homemade ','boredom',2),(12,'chocolate, pasta, soup, chips, popcorn','depression/sadness',3),(13,'Cookies, popcorn, and chips','depression/sadness',3),(14,'ice cream, cake, chocolate','stress',1),(15,'Pizza, fruit, spaghetti, chicken and Potatoes  ','boredom',2),(16,'cookies, donuts, candy bars','boredom',2),(17,'Saltfish, Candy and Kit Kat ','stress',1),(18,'chips, cookies, ice cream','boredom',2),(19,'Chocolate, ice crea ','depression/sadness',3),(20,'pizza, wings, Chinese','boredom',2),(21,'Fast food, pizza, subs','happiness ',7),(22,'chocolate, sweets, ice cream','boredom',2),(23,'burgers, chips, cookies','depression/sadness',3),(24,'Chilli, soup, pot pie','stress',1),(25,'Soup, pasta, brownies, cake','cold weather',6),(26,'chocolate, ice cream/milkshake, cookies','boredom',2),(27,'Chips, ice cream, microwaveable foods ','boredom',2),(28,'Chicken fingers, pizza ','boredom',2),(29,'cookies, hot chocolate, beef jerky','boredom',2),(30,'Tomato soup, pizza, Fritos, Meatball sub, Dr. Pepper','boredom',2),(31,'cookies, mac-n-cheese, brownies, french fries, ','stress',1),(32,'chips and dip, pepsi, ','stress',1),(33,'Grandma\'s Chinese, Peruvian food from back home, and sushi','hunger',4),(34,'Ice cream, cookies,  Chinese food, and chicken nuggets ','boredom',2),(35,'french fries, chips, ice cream','boredom',2),(36,'mac n cheese, peanut butter and banana sandwich, omelet','boredom',2),(37,'pizza, doughnuts, mcdonalds ','boredom',2),(38,'chocolate, chips, candy','stress',1),(39,'chocolate, popcorn, ice cream','boredom',2),(40,'Candy\rPop\rChocolate \rChipotle \rMoe\'s ','none',9),(41,'Pizza, Ice cream, fries, cereal, cookies  ','depression/sadness',3),(42,'Ice cream, chocolate, twizzlers ','laziness',5),(43,'ice cream, cookie dough, cookies, cheese','boredom',2),(44,'ice cream, cereal, and salt and vinegar chips ','depression/sadness',3),(45,'Potato chips, ice cream, chocolate, cookies','stress',1),(46,'Mac and cheese, fried chicken, cornbread ','hunger',4),(47,'popcorn, chips, candy, & fries ','depression/sadness',3),(48,'Chex-mix, Wegmans cookies, Cheez-Its ','boredom',2),(49,'pizza, ice cream, chips','stress',1),(50,'fried chicken. mashed potatoes, mac and cheese','laziness',5),(51,'Popcorn, Chex Mix, Pizza','stress',1),(52,'Burger','laziness',5),(53,'Pizza, chocolate, and ice cream ','boredom',2),(54,'fries, chips, fried chicken, pizza, grapes','boredom',2),(55,'peanut butter sandwich, pretzals, garlic bread','stress',1),(56,'chips, dip, fries, pizza','boredom',2),(57,'Pizza, Ice Cream, Chicken Wings','boredom',2),(58,'Pizza chocolate chips bagels ice Capps ','none',9),(59,'Chocolate, ice cream, pasta','stress',1),(60,'Mac n Cheese. Chips and salsa. Ice cream. ','boredom',2),(61,'peanut butter, dessets, pretzels. ','depression/sadness',3),(63,'ice cream, cookies, ice cream','boredom',2),(64,'carrots and ranch, pretzels, dark chocolate ','depression/sadness',3),(65,'cookies, nutella, ice cream, coffee, fruit ','boredom',2),(66,'mac and cheese','boredom',2),(67,'Chocolate, Popcorn, Icecream','depression/sadness',3),(68,'Ice cream, cake, mozzarella sticks, pierogies ','boredom',2),(69,'Chips, Mac and cheese, pizza, French fries ','stress',1),(70,'Pizza, burritos, slim jims','boredom',2),(71,'Broccoli, spaghetti squash, quinoa, and grilled chicken','boredom',2),(72,'Chocolate, ice cream, cookie dough','boredom',2),(73,'pizza, pretzels, fruit snacks, deli sandwhich','boredom',2),(74,'Chips, ice cream','boredom',2),(75,'nan','none',9),(76,'mac and cheese, potato soup, ice cream, chips and cheese','depression/sadness',3),(77,'chocolate, pizza, and mashed potatoes','boredom',2),(78,'Pizza cookies steak ','boredom',2),(79,'chocolate, fruit, and ice cream','stress',1),(80,'Chips sweets popcorn','boredom',2),(81,'Cookies, burgers, chicken noodle soup, ice cream','happiness ',7),(82,'cake, French fries, chicken nuggets','boredom',2),(83,'pizza, ice cream, cookies','boredom',2),(84,'Mashed potatoes, pasta','boredom',2),(85,'Pasta dishes, Cheesecake, Pancakes','depression/sadness',3),(86,'Ice cream, pizza, cookies','stress',1),(87,'Chinese food, moes, sponge candy, homemade lasagne ','boredom',2),(88,'pizza, pasta, mac and cheese','depression/sadness',3),(89,'Little Debbie snacks, donuts, pizza','none',9),(90,'carrots, plantain chips, almonds, popcorn ','stress',1),(91,'chips, ice cream, fruit snacks','boredom',2),(92,'Macaroni and cheese, chicken noodle soup, pizza','boredom',2),(93,'Chocolate, Chips, Ice cream, French Fires, Pizza','stress',1),(94,'Mac and cheese, lasagna, Chinese food ','boredom',2),(95,'candy, Chinese, mcdonalds','laziness',5),(96,'Doritos, mac and cheese, ice cream','boredom',2),(97,'Ice cream, cake, pop, pizza, and milkshakes.','happiness ',7),(98,'Mac and Cheese, Pizza, Ice Cream and French Fries ','boredom',2),(99,'Soup, pasta, cake','depression/sadness',3),(100,'mac & cheese, frosted brownies, chicken nuggs','depression/sadness',3),(101,'watermelon, grapes, ice cream','depression/sadness',3),(102,'macaroni and cheese, stuffed peppers, hamburgers, french fries','boredom',2),(103,'Pizza, mashed potatoes, spaghetti','depression/sadness',3),(104,'dark chocolate, terra chips, reese\'s cups(dark chocolate), and bread/crackers with cottage cheese','watching tv',8),(105,'Chips, chocolate, ,mozzarella sticks ','boredom',2),(106,'ice cream, chips, candy','boredom',2),(107,'Pizza, soda, chocolate brownie, chicken tikka masala and butter naan ','none',0),(108,'Chocolate, Pasta, Cookies','none',0),(109,'Candy, salty snacks, toast','none',0),(110,'Mac in cheese, pizza, mozzarella sticks ','none',0),(111,'Ice-cream, pizza, chocolate','none',0),(112,'snacks, chips, ','none',0),(113,'Chocolate, Ice cream, pizza','none',0),(114,'ice cream, pizza, Chinese food ','none',0),(115,'Burgers, indian and korean food\r','none',0),(116,'chocolate bar, ice cream, pretzels, potato chips and protein bars.','none',0),(117,'Ice cream, chocolate, pizza, cucumber ','none',0),(118,'Noodle ( any kinds of noodle), Tuna sandwich, and Egg.\r','none',0),(119,'Chinese, chips, cake','none',0),(120,'chips, rice, chicken curry,','none',0),(121,'wine. mac and cheese, pizza, ice cream ','none',0),(122,'Pizza / Wings / Cheesecake','none',0),(123,'rice, potato, seaweed soup','none',0),(124,'Mac n Cheese, Lasagna, Pizza','none',0),(125,'Chocolates, pizza, and Ritz.','none',0);
/*!40000 ALTER TABLE `comfort_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demographics`
--

DROP TABLE IF EXISTS `demographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demographics` (
  `id` int(11) NOT NULL,
  `GPA` decimal(10,2) DEFAULT NULL,
  `grade_level` int(11) DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `on_off_campus` int(11) DEFAULT NULL,
  `employment` int(11) DEFAULT NULL,
  `pay_meal_out` int(11) DEFAULT NULL,
  `grade_level_text` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographics`
--

LOCK TABLES `demographics` WRITE;
/*!40000 ALTER TABLE `demographics` DISABLE KEYS */;
INSERT INTO `demographics` VALUES (1,2.40,2,2,5,187,1,1,3,2,'Sophomore'),(2,3.65,4,1,4,155,2,1,2,4,'Senior'),(3,3.30,3,1,6,195,2,2,3,3,'Junior'),(4,3.20,4,1,6,240,2,1,3,2,'Senior'),(5,3.50,4,1,6,190,1,1,2,4,'Senior'),(6,2.25,2,1,1,190,2,1,3,5,'Sophomore'),(7,3.80,4,2,4,180,1,2,3,2,'Senior'),(8,3.30,2,1,5,137,1,1,2,5,'Sophomore'),(9,3.30,1,1,5,180,2,1,2,3,'Freshman'),(10,3.30,1,1,4,125,2,1,3,3,'Freshman'),(11,3.50,3,1,3,116,1,3,1,2,'Junior'),(12,3.90,2,1,5,110,2,1,2,3,'Sophomore'),(13,3.40,1,2,5,264,2,1,3,2,'Freshman'),(14,3.60,3,1,5,123,2,2,2,3,'Junior'),(15,3.10,3,2,5,185,1,2,3,3,'Junior'),(16,0.00,1,2,4,180,2,1,3,3,'Freshman'),(17,4.00,1,1,1,145,2,1,2,2,'Freshman'),(18,3.60,1,2,6,170,2,1,3,6,'Freshman'),(19,3.40,2,1,5,135,2,1,2,2,'Sophomore'),(20,2.20,1,2,5,165,1,1,3,3,'Freshman'),(21,3.30,2,2,6,175,1,1,2,2,'Sophomore'),(22,3.87,4,2,6,195,2,1,2,5,'Senior'),(23,3.70,1,2,6,185,1,1,2,5,'Freshman'),(24,3.70,3,2,4,185,1,1,2,3,'Junior'),(25,3.90,3,1,4,105,2,1,3,3,'Junior'),(26,2.80,1,1,6,125,1,1,3,3,'Freshman'),(27,3.70,2,2,5,160,2,1,2,4,'Sophomore'),(28,3.00,1,2,6,175,2,1,3,6,'Freshman'),(29,3.20,3,2,5,180,1,1,2,3,'Junior'),(30,3.50,3,2,5,167,1,1,3,4,'Junior'),(31,4.00,4,1,5,115,2,3,2,3,'Senior'),(32,4.00,2,2,4,205,1,4,3,3,'Sophomore'),(33,3.40,4,2,5,230,1,1,2,4,'Senior'),(34,2.80,1,1,3,128,1,1,3,3,'Freshman'),(35,3.65,1,1,6,150,1,1,3,4,'Freshman'),(36,3.00,3,1,4,150,2,2,3,3,'Junior'),(37,3.70,2,1,6,150,1,1,2,3,'Sophomore'),(38,3.40,4,1,6,170,2,1,2,4,'Senior'),(39,3.89,4,1,5,150,2,1,3,3,'Senior'),(40,3.00,4,2,6,175,2,2,3,3,'Senior'),(41,3.40,1,2,6,140,1,1,3,3,'Freshman'),(42,2.90,2,1,3,120,1,1,2,3,'Sophomore'),(43,3.60,2,1,6,135,1,1,2,3,'Sophomore'),(44,3.50,3,1,3,100,2,1,1,2,'Junior'),(45,3.20,4,1,5,170,1,2,2,6,'Senior'),(46,3.61,2,1,6,113,2,1,2,4,'Sophomore'),(47,3.80,1,2,4,168,1,1,2,3,'Freshman'),(48,2.80,1,2,6,145,1,1,2,3,'Freshman'),(49,3.50,2,2,5,155,1,1,3,3,'Sophomore'),(50,3.83,3,2,3,150,2,1,3,6,'Junior'),(51,3.60,3,2,1,169,1,3,3,3,'Junior'),(52,3.30,2,2,6,185,1,1,3,3,'Sophomore'),(53,3.30,2,2,5,200,1,1,3,3,'Sophomore'),(54,3.29,4,2,3,265,1,3,1,3,'Senior'),(55,3.50,2,2,6,165,1,1,3,6,'Sophomore'),(56,3.35,1,1,3,192,1,1,3,2,'Freshman'),(57,3.80,4,2,6,175,1,2,3,4,'Senior'),(58,2.80,2,1,5,140,1,1,2,3,'Sophomore'),(59,3.50,3,1,5,155,1,2,2,4,'Junior'),(60,3.70,4,1,6,155,1,2,3,3,'Senior'),(61,3.60,1,1,6,135,1,1,3,3,'Freshman'),(62,0.00,4,1,4,118,2,3,2,2,'Senior'),(63,3.90,4,2,6,210,1,1,2,3,'Senior'),(64,2.60,3,1,5,180,2,1,3,3,'Junior'),(65,3.50,2,1,2,140,2,1,2,2,'Sophomore'),(66,3.20,2,1,6,112,2,1,3,5,'Sophomore'),(67,3.00,1,1,4,125,2,1,3,3,'Freshman'),(68,3.60,2,1,5,144,2,1,2,4,'Sophomore'),(69,3.20,1,1,6,145,2,1,3,4,'Freshman'),(70,3.67,3,1,6,130,2,2,3,3,'Junior'),(71,3.73,3,1,3,140,2,1,2,3,'Junior'),(72,4.00,3,1,5,140,2,1,2,6,'Junior'),(73,3.10,1,2,5,140,1,1,2,2,'Freshman'),(74,3.79,2,2,6,200,2,3,3,3,'Sophomore'),(75,2.71,3,2,3,120,4,2,3,5,'Junior'),(76,3.00,1,1,5,120,2,1,2,4,'Freshman'),(77,3.70,4,1,3,150,1,2,2,3,'Senior'),(78,3.10,4,2,3,200,2,1,2,3,'Senior'),(79,3.00,2,1,5,135,2,1,2,3,'Sophomore'),(80,3.90,1,2,6,145,1,1,3,3,'Freshman'),(81,3.40,1,1,4,130,1,1,2,3,'Freshman'),(82,3.50,4,1,4,190,2,1,3,5,'Senior'),(83,3.70,3,1,3,170,1,1,3,3,'Junior'),(84,3.70,1,1,1,127,1,1,2,2,'Freshman'),(85,3.83,2,1,5,167,2,1,3,3,'Sophomore'),(86,2.60,1,1,6,140,2,1,2,3,'Freshman'),(87,3.00,1,1,6,190,1,1,3,3,'Freshman'),(88,3.20,2,2,6,155,1,1,2,3,'Sophomore'),(89,3.50,3,2,2,175,1,1,2,4,'Junior'),(90,3.20,3,1,3,129,1,1,2,3,'Junior'),(91,3.68,1,2,6,260,1,1,3,4,'Freshman'),(92,3.80,3,1,6,135,2,2,2,3,'Junior'),(93,3.30,3,2,3,190,2,1,2,3,'Junior'),(94,3.20,1,2,4,165,1,1,3,4,'Freshman'),(95,3.75,4,2,6,175,2,1,3,3,'Senior'),(96,3.50,3,2,5,184,2,1,3,3,'Junior'),(97,3.92,1,2,6,210,1,1,2,3,'Freshman'),(98,3.90,2,1,5,155,1,1,2,5,'Sophomore'),(99,3.90,4,2,6,185,2,4,3,6,'Senior'),(100,3.20,1,1,4,165,2,1,2,3,'Freshman'),(101,3.50,1,1,2,125,2,1,2,2,'Freshman'),(102,3.40,1,1,5,160,1,1,2,2,'Freshman'),(103,0.00,2,1,1,135,1,1,3,3,'Sophomore'),(104,3.70,3,1,4,130,1,1,2,3,'Junior'),(105,0.00,1,1,5,230,1,1,2,4,'Freshman'),(106,3.00,4,1,4,125,2,2,1,5,'Senior'),(107,3.00,1,1,1,130,1,1,2,3,'Freshman'),(108,3.80,2,1,4,165,1,1,2,3,'Sophomore'),(109,3.80,2,1,6,128,2,1,3,3,'Sophomore'),(110,3.40,2,1,6,200,1,1,2,3,'Sophomore'),(111,3.70,4,1,3,160,2,2,3,4,'Senior'),(112,2.90,3,2,5,170,1,3,2,6,'Junior'),(113,3.90,4,1,6,129,2,1,3,3,'Senior'),(114,3.60,4,1,6,170,2,1,2,3,'Senior'),(115,2.80,2,2,3,138,2,1,3,5,'Sophomore'),(116,3.30,1,2,6,150,2,1,2,5,'Freshman'),(117,3.40,1,1,1,170,1,1,3,3,'Freshman'),(118,3.77,2,1,2,113,1,1,2,2,'Sophomore'),(119,3.63,2,1,3,140,2,3,2,4,'Sophomore'),(120,3.20,4,2,2,185,2,1,2,3,'Senior'),(121,3.50,4,1,4,156,1,3,1,4,'Senior'),(122,3.00,4,1,2,180,1,1,3,4,'Senior'),(123,3.88,3,1,2,120,1,1,3,4,'Junior'),(124,3.00,1,2,4,135,1,1,2,3,'Freshman'),(125,3.90,3,1,5,135,2,1,2,3,'Junior');
/*!40000 ALTER TABLE `demographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_type`
--

DROP TABLE IF EXISTS `food_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_type` (
  `id` int(11) DEFAULT NULL,
  `ethnic_food` int(11) DEFAULT NULL,
  `greek_food` int(11) DEFAULT NULL,
  `italian_food` int(11) DEFAULT NULL,
  `indian_food` int(11) DEFAULT NULL,
  `thai_food` int(11) DEFAULT NULL,
  `persian_food` int(11) DEFAULT NULL,
  KEY `fk_food_type1` (`id`),
  CONSTRAINT `fk_food_type1` FOREIGN KEY (`id`) REFERENCES `demographics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_type`
--

LOCK TABLES `food_type` WRITE;
/*!40000 ALTER TABLE `food_type` DISABLE KEYS */;
INSERT INTO `food_type` VALUES (1,1,5,5,5,1,5),(2,4,4,4,4,2,4),(3,5,5,5,5,5,5),(4,5,5,5,5,5,5),(5,4,4,5,2,4,2),(6,4,2,5,5,4,5),(7,5,5,5,5,5,5),(8,2,3,3,1,1,1),(9,5,5,5,5,5,5),(10,5,5,5,4,4,4),(11,5,1,5,1,2,2),(12,5,5,5,5,5,5),(13,4,3,4,3,3,3),(14,5,4,5,3,5,3),(15,4,4,3,2,4,1),(16,1,1,5,1,1,1),(17,2,2,3,5,1,2),(18,4,3,5,3,3,2),(19,1,3,5,1,1,1),(20,3,3,5,2,3,3),(21,4,2,4,1,1,1),(22,3,5,5,5,5,5),(23,3,4,5,5,4,2),(24,5,2,5,4,4,2),(25,4,5,5,3,4,3),(26,2,3,3,3,3,3),(27,2,1,5,1,2,1),(28,3,3,4,3,3,2),(29,2,1,5,1,1,2),(30,5,3,5,5,5,5),(31,4,2,4,3,3,2),(32,5,5,5,4,4,3),(33,5,5,5,5,5,5),(34,4,5,5,2,1,2),(35,2,3,5,1,3,1),(36,2,3,5,1,2,2),(37,4,3,5,2,2,1),(38,4,5,5,3,5,3),(39,4,3,5,3,2,3),(40,3,1,4,3,3,1),(41,4,5,5,3,3,3),(42,4,5,5,3,4,2),(43,3,5,5,4,4,2),(44,5,5,5,5,5,5),(45,5,5,5,5,5,5),(46,5,5,5,5,5,5),(47,4,4,5,3,3,3),(48,3,3,4,2,1,4),(49,4,4,5,4,4,4),(50,3,4,5,4,4,0),(51,2,1,3,1,1,1),(52,5,5,5,5,5,5),(53,4,5,5,3,3,3),(54,3,4,5,2,1,3),(55,5,5,5,4,4,2),(56,3,3,5,2,3,2),(57,5,4,5,5,5,4),(58,2,5,5,2,2,1),(59,5,5,5,5,5,4),(60,5,5,5,5,5,4),(61,5,4,5,1,1,1),(62,4,3,4,2,2,3),(63,2,3,5,2,2,2),(64,5,4,4,4,4,4),(65,4,4,5,3,3,3),(66,3,3,5,1,4,1),(67,3,4,5,3,3,3),(68,5,2,4,2,2,1),(69,4,3,5,2,4,2),(70,2,1,5,1,5,1),(71,5,5,5,5,5,5),(72,5,3,5,4,4,3),(73,4,2,5,3,3,2),(74,3,3,5,1,2,1),(75,3,3,3,3,3,3),(76,5,3,5,4,4,3),(77,2,2,5,1,1,1),(78,1,1,4,1,2,1),(79,3,4,4,3,3,2),(80,5,5,5,4,5,4),(81,4,3,5,3,4,3),(82,4,4,5,4,4,4),(83,4,3,5,3,3,3),(84,5,5,5,5,5,5),(85,5,5,5,5,5,4),(86,3,4,5,2,3,3),(87,4,4,5,4,4,3),(88,3,1,5,1,1,1),(89,5,5,5,5,5,5),(90,5,4,5,5,5,4),(91,3,4,5,3,3,3),(92,2,1,4,1,1,1),(93,1,1,5,1,1,1),(94,5,4,5,5,5,5),(95,5,5,5,5,5,5),(96,4,4,5,3,4,3),(97,4,3,5,3,3,3),(98,3,2,5,2,3,1),(99,5,5,5,5,5,1),(100,3,3,5,1,1,1),(101,5,5,5,5,5,5),(102,5,5,5,4,3,4),(103,5,2,5,1,2,1),(104,5,3,5,5,3,3),(105,4,3,5,3,5,2),(106,4,5,5,3,3,4),(107,5,5,5,5,4,4),(108,4,3,5,3,5,2),(109,2,2,5,5,2,2),(110,2,2,5,1,2,1),(111,3,4,5,3,3,4),(112,3,5,3,1,1,1),(113,5,5,5,5,5,5),(114,3,3,5,2,2,3),(115,4,3,4,5,5,3),(116,2,1,4,1,1,2),(117,4,1,5,3,5,1),(118,4,2,4,2,5,2),(119,4,3,5,3,4,2),(120,5,5,5,5,5,5),(121,4,5,5,3,5,3),(122,3,1,5,5,4,1),(123,5,5,3,5,5,5),(124,2,1,5,1,1,1),(125,3,2,3,2,2,2);
/*!40000 ALTER TABLE `food_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habits`
--

DROP TABLE IF EXISTS `habits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habits` (
  `id` int(11) DEFAULT NULL,
  `breakfast` int(11) DEFAULT NULL,
  `coffee` int(11) DEFAULT NULL,
  `drink` int(11) DEFAULT NULL,
  `cook` int(11) DEFAULT NULL,
  `cuisine` int(11) DEFAULT NULL,
  `eating_out` int(11) DEFAULT NULL,
  `soup` int(11) DEFAULT NULL,
  `fruit_day` int(11) DEFAULT NULL,
  `veggies_day` int(11) DEFAULT NULL,
  `fries` int(11) DEFAULT NULL,
  `fav_food` int(11) DEFAULT NULL,
  `pay_meal_out` int(11) DEFAULT NULL,
  `meals_dinner_friend` varchar(200) DEFAULT NULL,
  `fav_cuisine` varchar(200) DEFAULT NULL,
  `eating_out_text` varchar(20) DEFAULT NULL,
  KEY `fk_habits1` (`id`),
  CONSTRAINT `fk_habits1` FOREIGN KEY (`id`) REFERENCES `demographics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habits`
--

LOCK TABLES `habits` WRITE;
/*!40000 ALTER TABLE `habits` DISABLE KEYS */;
INSERT INTO `habits` VALUES (1,1,1,1,2,0,3,1,5,5,2,1,2,'rice, chicken,  soup','Arabic cuisine','2-3 times'),(2,1,2,2,3,1,2,1,4,4,1,1,4,'Pasta, steak, chicken ','Italian','1-2 times'),(3,1,2,1,1,3,2,1,5,5,1,3,3,'chicken and rice with veggies, pasta, some kind of healthy recipe','italian','1-2 times'),(4,1,2,2,2,2,2,1,4,3,2,1,2,'Grilled chicken \rStuffed Shells\rHomemade Chili','Turkish ','1-2 times'),(5,1,2,2,1,2,2,1,4,4,1,3,4,'Chicken Parmesan, Pulled Pork, Spaghetti and meatballs ','Italian ','1-2 times'),(6,1,2,2,3,0,1,1,2,1,1,3,5,'Anything they\'d want. I\'d ask them before hand what they want to eat and it depends on which type of friend is coming.','African','Never'),(7,1,2,1,2,1,2,1,4,4,1,1,2,'Grilled chicken, steak, pizza','Thai','1-2 times'),(8,1,1,2,3,1,2,1,5,4,1,1,5,'chicken, steak, pasta ','Anything american style.','1-2 times'),(9,1,1,1,3,1,5,2,4,3,1,3,3,'Pasta, Fish, Steak','Seafood','every day'),(10,1,2,1,3,1,3,1,5,5,1,1,3,'pasta salad and bread','Italian ','2-3 times'),(11,1,2,2,1,1,2,1,5,5,1,1,2,'chicken al king, spaghetti, fish','Orange chicken and chow mani noodles ','1-2 times'),(12,1,2,1,3,1,1,1,5,5,1,1,3,'Chicken parm, Fish, Pasta dishes ','Italian','Never'),(13,1,2,2,5,1,1,2,4,3,1,3,2,'Cereal, pizza, toast ','Chinese ','Never'),(14,1,2,2,2,1,4,1,5,5,1,1,3,'pasta, chicken, steak','italian','3-5 times'),(15,1,2,2,3,1,2,1,5,5,1,3,3,'Pizza, chicken and rice, roast beef.','Chinese ','1-2 times'),(16,2,2,2,4,1,4,2,3,1,1,2,3,'pizza buffalo chicken pasta','italian food','3-5 times'),(17,1,1,1,3,0,1,1,5,5,1,1,2,'Curry goat, saltfish, jerk chicken ','Jamaican ','Never'),(18,1,2,2,3,1,2,1,3,4,1,3,6,'Grilled chicken or steak with veggies and rice. or some type of pasta and chicken ','American or Italian ','1-2 times'),(19,1,1,1,3,1,3,2,5,5,1,3,2,'Spaghetti, Chicken, Steak','Chicken ','2-3 times'),(20,1,2,2,4,1,2,1,2,2,1,1,3,'chicken, manicotti, rice','Italian','1-2 times'),(21,1,2,2,5,1,4,1,2,3,1,3,2,'Chicken, Pasta, Veal','Mexican','3-5 times'),(22,1,1,0,3,3,1,2,3,2,1,2,5,'Meat, wine, chocolate pudding','Indian','Never'),(23,1,1,1,5,2,1,1,4,3,2,1,5,'pasta, pizza ','italian ','Never'),(24,2,2,1,4,1,2,1,3,4,1,1,3,'Pizza, Pasta, Poutine','Asian ','1-2 times'),(25,1,2,2,1,1,4,2,4,4,1,1,3,'Pasta, chicken and rice, and soup','Chinese','3-5 times'),(26,2,2,1,3,1,2,1,4,3,1,3,3,'Pasta\rTake out','don\'t have one','1-2 times'),(27,1,1,1,3,1,2,2,3,3,1,1,4,'Chicken parm ','Italian food ','1-2 times'),(28,1,2,2,4,1,2,1,5,5,1,1,6,'Steak, lobster, chicken ','Mexican ','1-2 times'),(29,1,2,1,2,2,2,1,3,2,1,1,3,'Garlic noodles and steak, Parmesan chicken and pasta, Tacos and pasta','Italian/German','1-2 times'),(30,1,2,2,3,0,5,1,5,4,1,1,4,'Tomato soup, Steak, crab','Indian food - samosas are amazing','every day'),(31,1,2,1,3,1,3,2,3,5,1,2,3,'pasta, chicken with potatoes, pizza ','mexican','2-3 times'),(32,1,2,2,2,1,2,2,5,5,1,1,3,'Chicken, Steak, Pasta','italian','1-2 times'),(33,1,2,2,5,0,3,1,4,5,1,0,4,'Pasta,Sushi,Steak','Spanish','2-3 times'),(34,1,1,1,4,2,2,1,3,3,1,1,3,'Chicken Parmesan, pasta,  ','Italian ','1-2 times'),(35,1,2,1,4,1,3,1,5,4,1,3,4,'pasta, lasagna, chicken ','French','2-3 times'),(36,1,2,1,1,1,2,1,5,5,1,1,3,'Some kind of pasta, a chicken dish, some kind of salad','American or Italian','1-2 times'),(37,1,2,2,3,0,4,2,5,5,1,3,3,'spaghetti or pasta, shrimp fried rice, chicken ','Italian or Chinese ','3-5 times'),(38,1,2,2,2,6,2,1,3,4,1,1,4,'Pasta, Pizza, Chicken ','Italian','1-2 times'),(39,1,2,1,3,1,2,1,4,3,1,1,3,'Chicken Parmesan, Orange Chicken, Tacos','italian','1-2 times'),(40,1,2,2,5,1,5,1,5,3,1,1,3,'Steak and potatoes, burgers and fries, bacon and eggs ','Mexican ','every day'),(41,1,1,2,3,1,2,1,3,4,1,1,3,'Pizza, Japanize Hibachi, Moes   ','Italian ','1-2 times'),(42,1,2,1,2,1,4,1,5,5,1,1,3,'Chicken, Pasta, Salad','Italian ','3-5 times'),(43,1,2,2,4,1,2,1,5,4,1,1,3,'Pancakes, Pasta, Grilled Cheese and Soup','Italian','1-2 times'),(44,1,1,1,3,1,1,2,4,4,1,3,2,'pasta, soup, steak  ','chinese','Never'),(45,1,2,1,1,1,2,1,5,5,1,1,6,'Steak, asparagus and potatoes, homemade chicken alfredo, Mexican cuisine','Thai food','1-2 times'),(46,1,2,1,3,1,2,1,5,5,1,1,4,'Tacos, spaghetti, grilled cheese','Greek','1-2 times'),(47,1,1,2,3,1,2,1,4,4,1,1,3,'Spaghetti, steak, burgers ','Italian ','1-2 times'),(48,1,2,1,4,1,2,1,5,5,1,3,3,'lasagna,  hamburgers w/ corn, steak  ','Italian ','1-2 times'),(49,2,1,2,4,1,2,2,5,5,1,1,3,'Steak, Chicken, Tacos','Asian ','1-2 times'),(50,1,2,1,3,2,2,2,3,3,1,1,6,'pizza, pasta, burgers','Italian ','1-2 times'),(51,1,2,1,5,1,2,1,4,5,1,2,3,'Pizza, salad','American','1-2 times'),(52,1,1,1,3,1,3,1,5,4,1,1,3,'Steak, Chicken, Pasta ','All ','2-3 times'),(53,1,2,1,1,1,5,2,5,5,1,1,3,'Chicken Parm','Mexican ','every day'),(54,1,2,2,4,1,3,1,4,4,1,3,3,'Pizza, Steak, Spaghetti','Sub sandwhiches','2-3 times'),(55,1,2,1,1,2,3,1,5,5,2,1,6,'Chicken, Steak, Pasta','Italian','2-3 times'),(56,2,2,2,3,0,5,1,4,4,1,1,2,'mac n cheese, steak, potatos','italian','every day'),(57,1,2,1,3,1,4,1,5,5,1,1,4,'Chicken, Beef, Steak','Thai','3-5 times'),(58,1,2,1,2,1,3,2,4,4,2,3,3,'chicken, pizza, stuffed shells','Wraps ','2-3 times'),(59,1,2,2,1,2,2,1,5,5,2,1,4,'steak, noodles, edemame','Mexican','1-2 times'),(60,1,2,2,2,1,2,2,5,4,1,3,3,'Steak and veggies. Chicken and rice. Stirfry. ','Italian ','1-2 times'),(61,1,2,2,2,1,5,1,5,5,1,1,3,'Lasagna, steak, chili ','Mexican ','every day'),(62,1,2,1,2,0,2,2,3,3,2,2,2,'I would say \"lets go out\"\"\"','Mexican ','1-2 times'),(63,1,2,1,3,1,5,1,4,4,1,1,3,'pasta, chicken, vegetables','Italian','every day'),(64,1,2,0,3,2,4,0,5,5,1,1,3,'chicken and pasta, homemade pizza, lasagna ','Italian ','3-5 times'),(65,1,1,1,1,1,3,2,5,5,1,3,2,'1. pasta 2. spaghetti 3. chicken and rice ','Chinese cuisine (General Tso\'s)','2-3 times'),(66,1,2,1,2,2,3,1,3,3,1,3,5,'Lasagna, Steak, Pasta ','Italian','2-3 times'),(67,1,1,2,2,1,2,1,5,5,1,1,3,'mac and cheese, pizza, chicken ','American ','1-2 times'),(68,1,1,2,4,1,3,1,5,5,1,1,4,'Lasagna, Pizza, Pasta ','Italian ','2-3 times'),(69,1,1,2,3,1,1,1,5,5,1,1,4,'pasta, chicken parm, tacos ','Italian ','Never'),(70,2,2,2,2,0,2,2,3,5,1,1,3,'Steak, pasta, burgers','Italian','1-2 times'),(71,1,2,1,3,1,1,1,5,5,2,1,3,'Pizza, Italian, anything chicken related','Italian','Never'),(72,1,2,1,2,1,1,1,5,5,2,1,6,'Spaghetti, steak, or chicken','Italian ','Never'),(73,2,2,2,3,1,1,1,5,5,1,2,2,'Pasta, Steak, Chicken','Lean','Never'),(74,1,2,2,1,1,4,1,3,4,1,1,3,'chipotle, chick fil a, chicken and rice','Mexican','3-5 times'),(75,2,1,2,2,4,1,1,4,4,1,2,5,'rice and Chicken, sea food','nan','Never'),(76,1,2,1,3,1,2,1,5,4,1,1,4,'Chicken, Spaghetti, Hamburgers','italian ','1-2 times'),(77,2,1,2,2,1,2,2,4,2,1,3,3,'chicken, steak, pizza','american ','1-2 times'),(78,2,1,2,2,1,2,2,3,2,1,2,3,'Steak, Pizza, Haddock ','American ','1-2 times'),(79,1,2,1,2,1,2,1,5,4,2,1,3,'mexican chicken, hibachi chicken and rice, steak','Japanese','1-2 times'),(80,1,2,2,5,1,1,1,5,4,1,1,3,'Chicken and vegetables, Roast Beef, pasta','Chinese','Never'),(81,1,2,2,3,1,3,1,3,2,1,3,3,'Salad, pasta, and ice cream','Italian','2-3 times'),(82,2,1,2,3,1,3,2,4,2,1,1,5,'steak, mashed potatoes, vegetables ','Italian','2-3 times'),(83,1,2,2,0,1,5,1,3,3,1,1,3,'pizza, tacos, pasta','Italian','every day'),(84,1,2,1,2,1,2,1,4,4,1,1,2,'Spaghetti con Chorizo, Carne Asada, Salmon','Any type of Colombian cuisine','1-2 times'),(85,1,2,2,1,1,2,1,5,5,1,3,3,'Stuffed chicken breasts, spagetti carbonara, breakfast for dinner ','Mexican cuisine','1-2 times'),(86,1,2,2,3,1,3,1,5,4,1,3,3,'Pasta, breakfast for dinner, pizza','Asian','2-3 times'),(87,1,2,2,2,1,1,1,5,4,1,3,3,'Pizza, Chicken and rice and pasta','Chinese food','Never'),(88,1,1,2,4,1,2,1,4,4,1,2,3,'Pasta, pizza, and chicken','mac and cheese','1-2 times'),(89,2,2,2,0,1,1,1,4,4,1,1,4,'burritos, pasta, chicken','Mexican','Never'),(90,1,2,1,3,0,2,1,5,5,2,1,3,'Rice with vegetables, chicken with pasta, salad','Authentic Chinese and Vietnamese food ','1-2 times'),(91,1,2,2,4,0,2,2,5,4,1,1,4,'any Chinese food, pasta, burgers','italian and chinese','1-2 times'),(92,2,2,2,2,1,3,1,2,1,1,3,3,'Pasta, chicken, pizza ','American','2-3 times'),(93,2,2,2,2,1,5,1,1,4,1,1,3,'Chicken, Pork Chops, Steak','Barbecue ','every day'),(94,1,2,2,4,1,2,1,4,5,1,1,4,'Salmon, hamburger surprise, Italian potato soup','Italian','1-2 times'),(95,1,2,2,2,0,2,1,5,5,1,1,3,'salmon, steak, spaghetti squash','lebanese or greek','1-2 times'),(96,1,2,2,3,1,2,2,4,4,1,3,3,'Pasta, fish, steak','American','1-2 times'),(97,1,2,2,2,2,2,1,3,2,1,3,3,'Pizza, chicken, pasta','Italian','1-2 times'),(98,1,2,2,3,1,2,1,5,5,1,1,5,'Chicken Parm, Baked Ziti, Shrimp Alfredo ','Italian','1-2 times'),(99,1,1,2,4,6,5,1,5,4,1,0,6,'Chicken parmigiana, pasta, wedding soup','Italian','every day'),(100,1,1,1,4,2,3,1,5,5,1,1,3,'chicken alfredo, chicken parmesan, spaghetti','italian','2-3 times'),(101,1,2,1,3,1,2,1,5,5,1,1,2,'spaghetti, steak, lasagna ','Italian ','1-2 times'),(102,1,2,2,3,1,2,1,5,5,1,3,2,'nan','sushi','1-2 times'),(103,1,2,2,2,1,3,1,5,5,1,3,3,'nan','Italian','2-3 times'),(104,1,2,1,2,1,2,1,5,5,1,1,3,'Spaghetti and pasta, seasoned salmon with steamed or boiled broccoli, or soup with ritz crackers if I was busy that day.','Indian food','1-2 times'),(105,1,2,2,4,1,2,2,4,5,1,3,4,'Pasta, Burgers and Fries, Chicken Marsala','Italian ','1-2 times'),(106,1,2,2,3,1,3,2,3,2,1,3,5,'Chicken rice and asparagus, pizza, something easy in the crockpot','Italian','2-3 times'),(107,1,2,1,2,0,5,1,5,5,1,1,3,'Marinated nuts, prawn crackers, drink of their choice, mixed veggie crackers\rRice, chicken curry, lentil, pickle, potato kebab\rLemon Meringue Pie','Nepali','every day'),(108,1,1,1,2,1,2,1,4,4,1,3,3,'Pasta, Croque Madam, chicken ','italian, thai','1-2 times'),(109,1,2,2,5,1,2,1,5,5,1,2,3,'Steak, salmon, chicken parm','Italian','1-2 times'),(110,1,2,2,2,1,3,1,4,3,1,2,3,'Spaghetti, Grilled Chicken, Pizza ','Italian ','2-3 times'),(111,1,1,1,3,2,4,1,3,3,1,1,4,'Grilled chicken, Spaghetti, Alfredo ','Italian','3-5 times'),(112,1,2,2,2,0,2,1,3,3,1,1,6,'nan','nan','1-2 times'),(113,1,2,1,1,1,4,1,5,3,1,3,3,'Dinner, Lunch, Dessert ','Italian ','3-5 times'),(114,1,1,2,2,1,3,1,4,2,1,1,3,'Beef Stroganoff, Chicken and Mashed Potatoes, Tacos ','Italian ','2-3 times'),(115,1,2,2,3,4,3,1,4,3,1,3,5,'Meat, meat and meat','Korean','2-3 times'),(116,1,2,2,4,1,2,1,5,2,1,3,5,'Pasta, Chicken, Pizza','I do not like cuisine','1-2 times'),(117,1,2,1,3,0,4,1,5,5,1,2,3,'Rice and Peas and Chicken, Jerk Chicken and Shrimp','Chinese ','3-5 times'),(118,1,2,1,3,4,2,1,3,3,1,3,2,'Vietnamese fried rolls, Pho, Some kinds of noodles.','Vietnamese cuisine','1-2 times'),(119,1,1,1,3,1,2,1,5,5,1,1,4,'Chinese tacos or pasta ','American ','1-2 times'),(120,1,2,1,2,5,2,1,5,5,1,3,3,'Chicken, Rice, Vegetables','Indian','1-2 times'),(121,1,2,2,3,1,2,1,5,5,1,1,4,'pasta, fish, steak','Italian ','1-2 times'),(122,1,2,1,3,0,4,1,4,5,1,1,4,'Fried Rice \rBaked potatoes \rCurry Chicken','Mexican Food','3-5 times'),(123,1,1,1,3,0,3,1,4,4,1,1,4,'meat, rice, kimchi','Korean','2-3 times'),(124,1,1,2,3,1,5,2,5,3,1,3,3,'Pizza, Spaghetti, Baked Ziti','Italian','every day'),(125,1,2,1,0,3,1,1,3,4,1,1,3,'Vegetables, Meat, and rice.','hispanic','Never');
/*!40000 ALTER TABLE `habits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health` (
  `id` int(11) DEFAULT NULL,
  `healthFeeling` int(11) DEFAULT NULL,
  `selfPerceptionWeight` int(11) DEFAULT NULL,
  `eatingChanges` int(11) DEFAULT NULL,
  `idealDiet` int(11) DEFAULT NULL,
  `nutritionalCheck` int(11) DEFAULT NULL,
  `vitamins` int(11) DEFAULT NULL,
  `healthyMeal` varchar(200) DEFAULT NULL,
  KEY `fk_health1` (`id`),
  CONSTRAINT `fk_health1` FOREIGN KEY (`id`) REFERENCES `demographics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health`
--

LOCK TABLES `health` WRITE;
/*!40000 ALTER TABLE `health` DISABLE KEYS */;
INSERT INTO `health` VALUES (1,2,3,1,8,5,1,'looks not oily '),(2,5,3,1,3,4,2,'Grains, Veggies, (more of grains and veggies), small protein and fruit with dairy '),(3,6,6,1,6,4,1,'usually includes natural ingredients; nonprocessed food'),(4,7,5,1,2,2,1,'Fresh fruits& vegetables, organic meats '),(5,6,4,3,2,3,2,'A lean protein such as grilled chicken, green vegetables and  brown rice or other whole grain '),(6,4,5,1,2,1,2,'Requires veggies, fruits and a cooked meal. '),(7,4,4,2,2,4,1,'Protein, vegetables, fruit, and some carbs'),(8,3,3,2,2,4,2,'A healthy meal has a piece of meat followed by a lot of fruit and veggies'),(9,7,4,2,6,2,2,'Colorful'),(10,3,3,1,2,5,1,'Chicken and rice with a side of veggies. '),(11,9,1,3,7,2,2,'Chicken, and veggies '),(12,1,2,4,2,5,1,'lean protein, veggies, fruit, complex carbs'),(13,9,5,2,1,2,2,'A salad with a reasonable amount of dressing and a meat.'),(14,8,3,1,2,2,2,'Lots of vegetabls with some grains like rice. Also has lean meat such as fish or chicken.'),(15,2,3,3,1,2,1,'Green and not greasy'),(16,6,2,3,2,1,2,'chicken, veggies, rice'),(17,7,3,2,2,4,1,'Not too much carbs, a lot of protein, healthy fats and fruits and vegs '),(18,8,2,1,1,4,2,'for me usually a big piece of chicken or steak with a side of veggies, and i usually have rice with mine as well'),(19,6,3,4,2,2,1,'Everything from food group '),(20,4,4,3,3,1,2,'lots of fruits and vegitibles, not any fried foods'),(21,5,6,1,1,2,2,'Rice, Meat, vegetable'),(22,8,2,1,7,4,2,'Green and colourful'),(23,2,2,1,2,3,1,'pasta. veg, water '),(24,4,3,1,1,2,1,'Protein, vegetables, grains '),(25,5,4,1,2,2,2,'A healthy meal is a lean meat with mostly vegetables and a starch like brown rice or quinoa.'),(26,8,3,3,2,4,2,'good portions, lots of color, targets main food groups'),(27,9,2,1,5,2,2,'A rice, a vegetable, a piece of meat '),(28,9,2,2,6,4,1,'Salad, vegetable, carb, protein '),(29,4,3,1,7,5,1,'Protein, vegetable and grains'),(30,9,2,1,7,2,1,'Grilled chicken, mac and cheese, broccoli, apple, milk'),(31,7,3,1,2,4,1,'whole grain carbs, vegetables, a small amount of protein'),(32,5,4,3,1,4,1,'4-6 ounces chicken or fish, side of potatoes, and green beans'),(33,5,4,1,7,4,1,'Plenty of greens and lean proteins'),(34,7,3,1,2,4,1,'A balance of vegetables and cooked lean meat.'),(35,1,2,1,7,4,1,'a lot of greens'),(36,2,2,1,6,2,2,'Some kind of protein, a vegetable, and a grain'),(37,7,4,1,5,3,2,'a meal with a meat, vegetable, grain, and fruit '),(38,4,4,1,2,4,2,'A protein, starch, veg, and a healthier dessert. '),(39,6,4,1,2,4,2,'a lean protein plus the addition of 2-3 fruits and vegetables'),(40,3,1,1,2,1,2,'Chicken breast with veggies '),(41,10,2,1,2,3,2,'A meal with all of the food groups. '),(42,6,6,1,3,4,1,'a salad with chicken and 2 tablespoons of salad dressing '),(43,6,3,1,1,1,2,'Grilled chicken, side salad, rice and broccoli and cranberries'),(44,6,0,2,2,3,1,'It is probably more on the green side and there is less fryed or overly seasoned food. There would be more organic foods rather than processed foods. '),(45,8,3,2,7,4,1,'Mostly green!'),(46,3,1,2,6,2,2,'Colorful '),(47,4,3,1,5,3,2,'A meal that you have cooked yourself without a lot of grease or fat in it.  '),(48,8,2,1,7,2,2,'good balance between meats, grains, fruits, vegetables, carbs, and dairy products '),(49,2,1,1,7,3,1,'one that is well balanced and consists on main food groups'),(50,9,1,1,2,2,2,'lots of green and color.'),(51,8,3,2,4,5,2,'Balance of veggies, white meat, fruits, and grains.'),(52,8,2,1,5,5,1,'Chicken '),(53,1,2,1,3,5,2,'Low carbs and high protein '),(54,5,4,3,3,1,1,'Grilled, natural ingredients, and no carbonated beverages'),(55,10,2,2,7,4,1,'High protein and vegetables'),(56,8,3,4,5,3,2,'the different colors of the rain bow. protein, fruit, veggies'),(57,1,2,2,2,4,1,'Low protein and carbs and high in vegetables and fruits.'),(58,9,2,2,2,5,1,'Chicken and broccoli '),(59,4,3,1,6,2,1,'Fruit, vegetables, and protien'),(60,7,3,1,1,2,2,'Proper serving sizes of almost anything '),(61,3,2,3,6,4,1,'Half the plate fruit and vegetables. Other half grains and protein. Then a little dairy. '),(62,2,2,2,2,4,1,'chicken, veggies, fruit, water '),(63,2,2,2,7,4,1,'high protein, low fat, low carbs and sugar'),(64,8,2,3,6,4,2,'high protein, fruit, veggies, low carbs and fat'),(65,3,4,1,5,4,1,'Meal prep\'d foods with food from each section on the food pyramid. '),(66,3,2,1,6,1,2,'vegtables'),(67,3,2,1,5,4,1,'Milk for a drink, meat, a grain, vegetable, fruit for dinner'),(68,2,2,1,7,2,2,'It has protein, vegetables and some carbs '),(69,8,3,1,3,3,2,'Balanced between protein, veggies, and carbs'),(70,3,3,1,4,4,1,'Well portioned meat, veggies, and fruits. Water instead of a sugary drink like pop. '),(71,3,3,1,1,2,1,'A vegetable, a protein, and a fruit'),(72,5,4,1,3,4,1,'A balanced meal with a protein, carbohydrate and a vegetable.'),(73,3,3,1,7,2,1,'salad'),(74,1,3,2,3,5,1,'Protein source, vegetables, fruits, whole grains'),(75,8,3,3,8,2,2,'nan'),(76,6,3,1,2,4,1,'grilled meat, fruit, vegetable, and some grains'),(77,4,4,1,3,3,2,'a plate that has a variety of colors not just one color'),(78,4,3,2,7,1,2,'Meat and potatoes '),(79,8,3,1,3,4,1,'good portions of fruit, protein, veggies and carbs'),(80,1,2,1,8,4,2,'All food groups'),(81,4,3,1,2,2,1,'All of the food groups(carbs, veggies, fruits,etc)'),(82,2,4,1,3,2,2,'all elements of food pyramid'),(83,8,3,1,2,3,2,'lots of colors'),(84,4,3,1,5,3,2,'Has fruits vegetables and or some type of meat '),(85,9,2,2,5,5,1,'Mostly vegetables and plenty of lean protein and healthy fats to keep you full'),(86,7,3,1,5,3,1,'Lots of Greens, meat and water'),(87,3,4,2,5,5,1,'Small portion of meat with majority fruits or vegetables '),(88,5,4,1,2,2,1,'lots of variety and veggies'),(89,7,2,2,6,5,1,'High protein, high carbs , vegetables '),(90,7,3,2,2,5,1,'Healthy meal for me is a food rich in protein, fiber, some sort of carbohydrates'),(91,7,4,2,4,2,1,'half a plate of protein, quarter of a plate of carbs and the other quarter fruits or veggies.'),(92,5,3,1,2,3,2,'Very colorful and smaller portions of the unhealthy food with larger portions of vegetables '),(93,8,4,2,3,2,2,'Chicken Salad with Pita Chips'),(94,6,3,1,2,1,2,'Fruits, vegetables, meat '),(95,7,3,1,7,4,1,'steak or salmon with broccoli or asparagus and brown rice or quinoa'),(96,10,2,1,6,3,2,'a balance of Meat and vegetables'),(97,2,6,2,2,2,1,'Modest proportions of many different food groups.'),(98,1,3,2,2,4,2,'It combines a protein with other elements of the diet such as vegetables and other items that support the body.'),(99,8,4,2,3,3,1,'Well balanced with protein, fruits, vegetables, starch, etc.'),(100,3,3,2,4,2,1,'lean meat, fresh fruits & veggies'),(101,2,2,1,4,2,2,'water, fruits, vegetables, protein, carbs'),(102,3,5,1,2,4,2,'More vegetables and fruits as opposed to meat and bread/potatoes'),(103,7,4,2,3,5,1,'A protein, veggies, and a carb'),(104,4,6,1,2,4,1,'Salmon, sweet potato, and larger portion, but equally spread of broccoli, squash, zucchini, carrots, and tomatoes.'),(105,9,5,1,2,4,1,'Vegetables, white meat, and a starch like potatoes, water, and fruit for dessert '),(106,2,3,1,5,2,2,'I think a healthy meals includes some kind of protein, preferably meat, vegetables, and a starch such as potatoes or rice'),(107,7,4,2,1,4,2,'A healthy meal constitutes of balanced diet with fruits and veggies dominating the plate. '),(108,5,4,1,2,2,2,'To me a healthy meal is balanced and '),(109,6,3,1,1,4,2,'equal portions of carbs, proteins and fruits/veges'),(110,5,5,2,2,4,1,'Salad with chicken and vegetables with a raspberry vinaigrette '),(111,8,3,1,2,3,2,'It includes a protein, vegetable, fruit, and grain. '),(112,9,3,2,2,4,2,'low calories plenty of veggies'),(113,10,3,2,4,4,2,'A pice of meat such as chicken with a side of vegetables and possibly a salad'),(114,9,4,1,7,4,2,'Blackened Chicken, broccoli, and milk'),(115,7,1,1,2,3,2,'Meat, greens and food containing protein'),(116,10,2,1,3,1,2,'Intaking the proper amount of each food group'),(117,5,4,1,5,2,1,'BBQ Chicken with mash sweat potatoes and steam vegetable with corn and a glass of water.'),(118,9,4,2,2,2,1,'Including both vegetable and meat'),(119,5,4,2,5,2,2,'Chicken vegetables and fruit for dinner '),(120,7,4,2,3,2,2,'A diet that is well balanced in most of the nutrients needed for the body.'),(121,5,4,1,6,5,1,'mainly protein and vegetables with a complex carb '),(122,5,4,1,5,3,2,'A healthy meal is a variety of food , organic food that gives you the nutrients such as protein , carbohydrates , fat , water , vitamins and minerals.'),(123,6,4,1,2,3,2,'lots of vegetables'),(124,1,2,1,6,4,1,'A protein, a fruit, a starch, and a salad or some sort of vegetable.'),(125,3,3,2,3,5,2,'a cup of rice, vegetables, and meat. ');
/*!40000 ALTER TABLE `health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `id` int(11) DEFAULT NULL,
  `parents_cook` int(11) DEFAULT NULL,
  `father_education` int(11) DEFAULT NULL,
  `father_profession` varchar(100) DEFAULT NULL,
  `mother_education` int(11) DEFAULT NULL,
  `mother_profession` varchar(100) DEFAULT NULL,
  `mother_edu_text` varchar(20) DEFAULT NULL,
  `father_edu_text` varchar(20) DEFAULT NULL,
  KEY `fk_parents1` (`id`),
  CONSTRAINT `fk_parents1` FOREIGN KEY (`id`) REFERENCES `demographics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (1,1,5,'profesor ',1,'unemployed','< high school','graduate'),(2,1,2,'Self employed ',4,'Nurse RN ','college','high school'),(3,1,2,'owns business',2,'owns business','high school','high school'),(4,1,2,'Mechanic ',4,'Special Education Teacher','college','high school'),(5,1,4,'IT',5,'Substance Abuse Conselor','graduate','college'),(6,2,1,'Taxi Driver',1,'Hair Braider','< high school','< high school'),(7,2,4,'Assembler ',4,'Journalist','college','college'),(8,1,3,'Business guy',2,'cook','high school','some college'),(9,2,5,'High School Principal',5,'Elementary School Teacher','graduate','graduate'),(10,3,5,'commissioner of erie county ',5,'Pharmaceutical rep','graduate','graduate'),(11,1,2,'Idk',4,'Chidos Cleaners','college','high school'),(12,1,3,'Home Marker ',4,'Court Reporter ','college','some college'),(13,2,3,'Shirt designer ',4,'Child care provider ','college','some college'),(14,2,2,'business owner',4,'business owner','college','high school'),(15,2,4,'Commidity trader ',4,'Charity worker','college','college'),(16,2,5,'Hockey Coach',4,'Librarian','college','graduate'),(17,2,1,'Construction ',2,'Police','high school','< high school'),(18,1,2,'self employed construction ',2,'stay at home mom','high school','high school'),(19,1,5,'Engineer',3,'Daycare provider','some college','graduate'),(20,1,5,'architect',4,'physical therapist','college','graduate'),(21,1,5,'CFO',4,'Teacher','college','graduate'),(22,3,4,'European logistics director ',2,'House wife','high school','college'),(23,3,4,'accountant ',4,'Underwiriter ','college','college'),(24,2,4,'Commercial Real Estate',2,'Beautician ','high school','college'),(25,1,3,'Manager at Pepsi',2,'Unemployed','high school','some college'),(26,1,4,'VP of ',3,'Medical biller','some college','college'),(27,1,4,'Beverage and Food Sales',2,'Doctors Billing Assiant ','high school','college'),(28,1,5,'Dentist ',5,'Dentist ','graduate','graduate'),(29,1,4,'Electrical Engineer',4,'Air Traffic Controller','college','college'),(30,1,5,'Radio Telecommunications Manager',5,'Strategic Planning and Programs Manager','graduate','graduate'),(31,3,2,'nan',5,'teacher','graduate','high school'),(32,1,4,'deceased',2,'management','high school','college'),(33,3,5,'Lawyer',5,'Lawyer','graduate','graduate'),(34,1,4,'landscaping ',0,'unemployed',NULL,'college'),(35,5,4,'Vice President of a company',4,'stylist','college','college'),(36,1,4,'Owns his own promotional company ',4,'Works in retail','college','college'),(37,2,5,'Optometrist ',2,'Homemaker ','high school','graduate'),(38,1,2,'Construction ',3,'Head of Human Resouces','some college','high school'),(39,1,4,'Biohemical Waste Elimination',4,'Accountant','college','college'),(40,3,5,'Corporate Manager ',2,'Marketing Analyst','high school','graduate'),(41,1,4,'Small business owner ',4,'Middle school teacher','college','college'),(42,1,2,'Welder',3,'Art teacher ','some college','high school'),(43,2,4,'Design Engineer',4,'Account Clerical ','college','college'),(44,1,2,'Unknown ',2,'Caretaker','high school','high school'),(45,1,4,'Electrical Engineer',2,'Secretary','high school','college'),(46,2,4,'Banker',4,'Registered Nurse','college','college'),(47,2,3,'subcontractor ',4,'telemarketer ','college','some college'),(48,1,5,'small business owner ',5,'nurse','graduate','graduate'),(49,1,4,'House Appraiser',4,'Banker','college','college'),(50,2,2,'not sure',4,'Office assistant','college','high school'),(51,1,3,'Fireman',2,'Secretary','high school','some college'),(52,1,2,'President of Automotive company ',2,'Stay home','high school','high school'),(53,1,3,'UPS driver ',2,'Unemployed ','high school','some college'),(54,1,2,'HVAC Professional',5,'Counseling, Teaching, Geologist, Psychic','graduate','high school'),(55,1,4,'Sergeant correctional officer',5,'Teacher','graduate','college'),(56,2,1,'union worker',3,'factory worker','some college','< high school'),(57,1,4,'Salesman',4,'Nurse','college','college'),(58,1,2,'Owns his business',4,'Sales','college','high school'),(59,1,4,'Physical Therapist',5,'Elementary School Principal','graduate','college'),(60,2,4,'Insurance ',4,'Real Estate Agent ','college','college'),(61,1,4,'Construction management ',4,'X-ray tech','college','college'),(62,1,2,'Dead beat ',4,'Respiratory Therapist','college','high school'),(63,2,2,'police force',2,'Legal assistant','high school','high school'),(64,1,4,'VP of GNC',4,'dietitian ','college','college'),(65,1,2,'Owner of New York Lunch',2,'CNA ','high school','high school'),(66,2,5,'Dentist',0,'Periodontist',NULL,'graduate'),(67,1,2,'mechanic ',4,'business','college','high school'),(68,2,2,'Truck Driver ',3,'Project Manager ','some college','high school'),(69,1,5,'Dentist ',5,'school teacher','graduate','graduate'),(70,1,4,'Sales Manager ',4,'Homemaker','college','college'),(71,1,4,'Retired - Bus Driver',2,'Stay-At-Home Mom','high school','college'),(72,1,2,'Transportation ',4,'Social Services','college','high school'),(73,1,0,'Police Officer',4,'Runs a Daycare','college',NULL),(74,1,4,'Risk Manager',2,'Customer Service','high school','college'),(75,3,1,'retire',1,'nan','< high school','< high school'),(76,2,4,'car salesman',4,'RN','college','college'),(77,1,2,'dairy farmer',5,'program director','graduate','high school'),(78,1,2,'Dairy Farmer ',5,'Programs coordinator ','graduate','high school'),(79,1,2,'self employed',2,'self employed','high school','high school'),(80,1,3,'Contract negotiations',2,'none','high school','some college'),(81,1,2,'Police Officer ',4,'Legal Secretary','college','high school'),(82,3,4,'IT',4,'secretary ','college','college'),(83,2,4,'Works for Kirila Fire',4,'works in Loans department in First National Bank','college','college'),(84,2,2,'Realtor',1,'Janitor','< high school','high school'),(85,1,4,'Solar Engineering ',3,'Yoga Instructor ','some college','college'),(86,2,5,'Lawyer',3,'Nurse','some college','graduate'),(87,1,2,'Service Technition',4,'Sales Manager at Business First','college','high school'),(88,1,4,'engineer ',5,'principal ','graduate','college'),(89,1,2,'handyman',0,'home cleaner',NULL,'high school'),(90,2,4,'cross-guard ',2,'A teacher ','high school','college'),(91,1,2,'Project manager',3,'Secretary ','some college','high school'),(92,3,5,'Teacher',5,'Teacher','graduate','graduate'),(93,1,2,'Truck Driver',3,'Customer Service Representative ','some college','high school'),(94,1,5,'Senior Manager',4,'Stay at home mother','college','graduate'),(95,1,4,'information systems architect',4,'teacher','college','college'),(96,1,4,'Supervisor',4,'Treasurer','college','college'),(97,2,2,'Delivery Man For Fritolay',5,'Special Ed Teacher','graduate','high school'),(98,1,5,'nan',3,'Accountant ','some college','graduate'),(99,3,4,'Business Owner',2,'Homemaker','high school','college'),(100,1,3,'business owner',4,'certified accountant','college','some college'),(101,1,2,'Beacon Light ',2,'nothing ','high school','high school'),(102,1,4,'salesman',4,'social worker','college','college'),(103,2,5,'Mechanical Engineer',5,'Secretary','graduate','graduate'),(104,2,4,'GE Salesman',4,'Respiratory Therapist','college','college'),(105,2,4,'Business Owner',3,'Substitute Secretary','some college','college'),(106,1,4,'Ford Plant employee',3,'Insurance Coordinator','some college','college'),(107,1,5,'Clinical Researcher',4,'Supervisor','college','graduate'),(108,1,3,'Retired ',3,'Travel Agent','some college','some college'),(109,2,4,'Sales',3,'Real Estate','some college','college'),(110,2,5,'School Library Media Specialist ',5,'School Library Media Specialist ','graduate','graduate'),(111,2,4,'Retired',4,'Deceased','college','college'),(112,1,2,'nan',2,'nan','high school','high school'),(113,2,5,'Mechanical Engineer ',5,'Fourth Grade Teacher ','graduate','graduate'),(114,2,4,'Teacher',4,'Accountant ','college','college'),(115,1,5,'Politician',5,'Works in WWF, world wild life fund','graduate','graduate'),(116,1,5,'Pharmaceutical',5,'Health teacher','graduate','graduate'),(117,2,3,'Business Man',3,'Business Woman','some college','some college'),(118,1,2,'His own business',2,'Her own business','high school','high school'),(119,3,2,'HVAC technician ',2,'Grieveance coordinator of the SCI albion prison ','high school','high school'),(120,1,5,'United Nations',5,'Banker','graduate','graduate'),(121,1,4,'Accountant ',3,'Radiological Technician ','some college','college'),(122,3,5,'Doctor',2,'Public Health Advisor ','high school','graduate'),(123,2,5,'CEO of company',1,'Real Estate manageer','< high school','graduate'),(124,2,3,'Store manager at Giant Eagle',2,'Receptionist for a medical supply company','high school','some college'),(125,3,4,'Journalist',3,'House-wife','some college','college');
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `id` int(11) DEFAULT NULL,
  `calories_day` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `sports` int(11) DEFAULT NULL,
  `sports_type` varchar(100) DEFAULT NULL,
  KEY `fk_sports1` (`id`),
  CONSTRAINT `fk_sports1` FOREIGN KEY (`id`) REFERENCES `demographics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,0,187,1,'car racing'),(2,3,155,1,'Basketball '),(3,4,0,2,'none'),(4,3,240,2,'nan'),(5,2,190,1,'Softball'),(6,3,190,2,'None.'),(7,3,180,1,'soccer'),(8,3,137,2,'none'),(9,0,180,2,'none'),(10,3,125,1,'field hockey'),(11,3,116,1,'soccer'),(12,4,110,1,'Running'),(13,3,264,1,'Soccer and basketball '),(14,3,123,1,'intramural volleyball'),(15,3,185,1,'Hockey'),(16,0,180,1,'Hockey'),(17,3,145,2,'nan'),(18,3,170,1,'hockey'),(19,3,135,2,'dancing '),(20,2,165,0,'basketball'),(21,3,175,1,'Soccer'),(22,3,195,1,'Tennis'),(23,3,185,1,'tennis soccer gym'),(24,3,185,1,'Gaelic Football'),(25,2,105,2,'none'),(26,3,125,1,'Ice hockey'),(27,2,160,1,'Hockey'),(28,4,175,1,'Lacrosse '),(29,2,180,2,'nan'),(30,2,167,2,'nan'),(31,3,115,1,'snowboarding'),(32,3,205,2,'none organized'),(33,3,0,1,'Soccer'),(34,3,128,2,'nan'),(35,3,150,1,'softball'),(36,2,150,1,'Lacrosse'),(37,3,150,1,'Softball '),(38,4,170,1,'Dancing'),(39,3,150,1,'Lacrosse'),(40,0,175,1,'Hockey'),(41,3,140,1,'wrestling '),(42,4,120,2,'nan'),(43,3,135,2,'nan'),(44,2,100,2,'no particular engagement '),(45,4,170,1,'Volleyball'),(46,3,113,2,'none'),(47,2,168,1,'soccer '),(48,0,145,1,'wrestling & rowing'),(49,0,155,1,'Wrestling'),(50,3,150,2,'none'),(51,3,169,2,'nan'),(52,4,185,1,'Hockey'),(53,4,200,1,'Lacrosse '),(54,0,265,2,'nan'),(55,3,165,1,'hockey'),(56,2,192,1,'softball'),(57,4,175,1,'Hockey'),(58,4,140,1,'softball'),(59,3,155,1,'Skiing'),(60,0,155,1,'skiing '),(61,4,135,1,'Water polo and running '),(62,2,118,2,'nan'),(63,4,210,1,'Ice Hockey'),(64,4,180,1,'rowing '),(65,3,140,1,'Volleyball'),(66,0,112,2,'None'),(67,3,125,1,'tennis  '),(68,2,144,1,'Recreational Basketball, Equestrian Team'),(69,3,145,1,'soccer'),(70,4,130,2,'None'),(71,3,140,1,'Rec Volleyball'),(72,0,140,1,'Softball'),(73,3,140,2,'nan'),(74,4,200,1,'baseball'),(75,2,0,2,'nan'),(76,3,120,2,'I danced in high school'),(77,3,150,1,'horse back riding'),(78,2,200,1,'Basketball '),(79,3,135,1,'competitive skiing'),(80,3,145,1,'Rowing, Running, and Cycling'),(81,2,130,2,'nan'),(82,3,190,1,'softball and basketball'),(83,0,170,1,'wrestling'),(84,3,127,1,'Marching Band'),(85,3,167,1,'Collegiate Water Polo'),(86,3,140,2,'None right now'),(87,3,190,1,'volleyball, lacrosse'),(88,3,155,1,'field hockey'),(89,4,175,2,'nan'),(90,3,129,2,'none '),(91,4,260,1,'Fotball'),(92,2,135,2,'crew'),(93,0,190,1,'Football, Basketball, Volleyball, Golf'),(94,0,165,2,'nan'),(95,3,175,1,'hockey, soccer, golf'),(96,0,184,1,'Wrestling'),(97,3,210,2,'Soccer'),(98,3,155,1,'Running '),(99,3,185,1,'Tennis'),(100,4,165,1,'softball'),(101,3,125,1,'Volleyball, Track'),(102,0,160,2,'nan'),(103,4,135,2,'nan'),(104,3,130,2,'When I can, rarely though play pool, darts, and basketball.'),(105,3,230,2,'None at the moment'),(106,3,125,1,'volleyball'),(107,3,130,2,'None'),(108,3,165,2,'I used to play softball '),(109,2,128,1,'Ice hockey'),(110,3,200,2,' None'),(111,3,160,1,'Volleyball'),(112,2,170,2,'nan'),(113,4,129,2,'nan'),(114,2,170,2,'None'),(115,3,138,1,'Tennis, Basketball'),(116,4,150,1,'Hockey'),(117,0,170,2,'none'),(118,0,113,2,'No, I don\'t play sport.'),(119,3,140,2,'None'),(120,3,185,1,'Soccer'),(121,4,156,1,'Softball'),(122,2,180,0,'basketball '),(123,0,120,2,'none'),(124,4,135,2,'nan'),(125,0,135,2,'nan');
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-15  0:03:49
