-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: chiangyum
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `class_id` int(7) NOT NULL AUTO_INCREMENT,
  `class_manager_employee_id` int(7) DEFAULT NULL,
  `class_name` varchar(16) DEFAULT NULL,
  `class_img` varchar(255) DEFAULT NULL,
  `class_studio_studio_id` int(5) DEFAULT NULL,
  `class_info` varchar(32) DEFAULT NULL,
  `class_content` varchar(255) DEFAULT NULL,
  `class_date` date DEFAULT NULL,
  `class_startdate` date DEFAULT NULL,
  `class_enddate` date DEFAULT NULL,
  `class_count` int(3) DEFAULT NULL,
  `class_limit` int(3) DEFAULT NULL,
  `class_price` int(7) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `class_manager` (`class_manager_employee_id`,`class_studio_studio_id`),
  KEY `class_ibfk_2` (`class_studio_studio_id`),
  KEY `class_manager_employee_id` (`class_manager_employee_id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`class_manager_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`class_studio_studio_id`) REFERENCES `studio` (`studio_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,1,'鹽焗創意小教室','..\\material\\class\\class (1).jpg',1,'鹽焗創意小教室鹽焗創意小教室','鹽焗創意小教室鹽焗創意小教室鹽焗創意小教室鹽焗創意小教室鹽焗創意小教室鹽焗創意小教室','2023-09-05','2023-08-25','2023-09-01',8,20,200),(2,6,'簡單小料理','..\\material\\class\\class (2).jpg',2,'簡單小料理簡單小料理簡單小料理','簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理','2023-09-15','2023-09-05','2023-08-10',5,20,100),(3,7,'番茄的魔法','..\\material\\class\\class (3).jpg',3,'番茄的魔法番茄的魔法番茄的魔法','番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法','2023-09-25','2023-09-15','2023-09-20',4,20,300);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_reg`
--

DROP TABLE IF EXISTS `class_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_reg` (
  `class_reg_id` int(7) NOT NULL AUTO_INCREMENT,
  `class_reg_class_id` int(7) DEFAULT NULL,
  `class_reg_user_id` int(7) DEFAULT NULL,
  `class_reg_count` int(3) DEFAULT NULL,
  `class_reg_date` date DEFAULT NULL,
  `class_reg_price` int(7) DEFAULT NULL,
  `class_reg_mode` enum('確認付款中','已確認報名','課程結束') DEFAULT NULL,
  `class_reg_memo` text DEFAULT NULL,
  PRIMARY KEY (`class_reg_id`),
  KEY `class_reg_ibfk_1` (`class_reg_class_id`),
  KEY `class_reg_ibfk_2` (`class_reg_user_id`),
  CONSTRAINT `class_reg_ibfk_1` FOREIGN KEY (`class_reg_class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `class_reg_ibfk_2` FOREIGN KEY (`class_reg_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_reg`
--

LOCK TABLES `class_reg` WRITE;
/*!40000 ALTER TABLE `class_reg` DISABLE KEYS */;
INSERT INTO `class_reg` VALUES (1,1,1,1,'2023-09-02',200,'確認付款中',NULL),(2,2,1,1,'2023-09-02',100,'確認付款中',NULL),(3,2,2,1,'2023-09-06',100,'確認付款中',NULL),(4,3,1,1,'2023-09-07',300,'確認付款中',NULL),(5,3,2,1,'2023-09-16',300,'確認付款中',NULL),(6,3,3,1,'2023-09-17',300,'確認付款中',NULL);
/*!40000 ALTER TABLE `class_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eclass`
--

DROP TABLE IF EXISTS `eclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eclass` (
  `eclass_id` int(7) NOT NULL AUTO_INCREMENT,
  `eclass_name` varchar(16) DEFAULT NULL,
  `eclass_img` varchar(255) DEFAULT NULL,
  `eclass_info` varchar(32) DEFAULT NULL,
  `eclass_content` varchar(255) DEFAULT NULL,
  `eclass_videos` varchar(255) DEFAULT NULL,
  `eclass_date` date DEFAULT NULL,
  `eclass_price` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`eclass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eclass`
--

LOCK TABLES `eclass` WRITE;
/*!40000 ALTER TABLE `eclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `eclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eclass_reg`
--

DROP TABLE IF EXISTS `eclass_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eclass_reg` (
  `eclass_reg_id` int(7) NOT NULL AUTO_INCREMENT,
  `eclass_reg_class_id` int(7) DEFAULT NULL,
  `eclass_reg_user_id` int(7) DEFAULT NULL,
  `eclass_reg_date` date DEFAULT NULL,
  `eclass_reg_price` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`eclass_reg_id`),
  KEY `eclass_reg_class_id` (`eclass_reg_class_id`,`eclass_reg_user_id`),
  KEY `eclass_reg_user_id` (`eclass_reg_user_id`),
  CONSTRAINT `eclass_reg_ibfk_1` FOREIGN KEY (`eclass_reg_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `eclass_reg_ibfk_2` FOREIGN KEY (`eclass_reg_class_id`) REFERENCES `eclass` (`eclass_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eclass_reg`
--

LOCK TABLES `eclass_reg` WRITE;
/*!40000 ALTER TABLE `eclass_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `eclass_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(7) NOT NULL AUTO_INCREMENT,
  `employee_account` varchar(32) NOT NULL,
  `employee_password` varchar(128) NOT NULL,
  `employee_name` varchar(16) NOT NULL,
  `employee_rank` enum('管理者','小幫手','合作教室') NOT NULL,
  `employee_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'chiangmom','admin1234mom','Chiangmom','管理者','..\\material\\employee\\avatar (1).jpg'),(2,'chiangdad','admin1234dad','Chiangdad','管理者','..\\material\\employee\\avatar (2).jpg'),(3,'geoao','admin1234ao','Gaoao','管理者','..\\material\\employee\\avatar (3).jpg'),(4,'gust','admin1234gust','Gust','小幫手','..\\material\\employee\\avatar (4).jpg'),(5,'chloe','admin1234chloe','Chloe','小幫手','..\\material\\employee\\avatar (5).jpg'),(6,'classtest1','admin12341','ClassTest','合作教室','..\\material\\employee\\avatar (6).jpg'),(7,'classtest2','admin12342','ClassTest','合作教室','..\\material\\employee\\avatar (7).jpg');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orders_id` int(7) NOT NULL AUTO_INCREMENT,
  `orders_user_id` int(7) DEFAULT NULL,
  `orders_orders_delivery` int(3) DEFAULT NULL,
  `orders_addrid` int(7) DEFAULT NULL,
  `orders_addr` varchar(32) DEFAULT NULL,
  `orders_mode` enum('確認付款中','備貨中','準備出貨','已寄出','已送達') DEFAULT NULL,
  `orders_code` varchar(32) DEFAULT NULL,
  `orders_price` int(7) DEFAULT NULL,
  `orders_date` date DEFAULT NULL,
  `orders_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `orders_user_id` (`orders_user_id`,`orders_orders_delivery`),
  KEY `orders_orders_delivery` (`orders_orders_delivery`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`orders_orders_delivery`) REFERENCES `orders_delivery` (`orders_delivery_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`orders_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,92052,'屏東縣潮州鎮文昌街42號','確認付款中',NULL,340,'2023-08-23',NULL),(2,2,2,22465,'基隆市信義區信一路１４８號','確認付款中',NULL,680,'2023-08-23',NULL),(3,2,3,113160,'台北市中正區許昌街17號1樓','確認付款中',NULL,640,'2023-08-23',NULL),(4,3,4,40772,'台中市西屯區西安街277巷25弄2號','確認付款中',NULL,1320,'2023-08-23',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_delivery`
--

DROP TABLE IF EXISTS `orders_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_delivery` (
  `orders_delivery_id` int(3) NOT NULL AUTO_INCREMENT,
  `orders_delivery_name` varchar(8) DEFAULT NULL,
  `orders_delivery_price` int(7) DEFAULT NULL,
  `orders_delivery_threshold` int(7) DEFAULT NULL,
  PRIMARY KEY (`orders_delivery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_delivery`
--

LOCK TABLES `orders_delivery` WRITE;
/*!40000 ALTER TABLE `orders_delivery` DISABLE KEYS */;
INSERT INTO `orders_delivery` VALUES (1,'郵局',80,3000),(2,'全家店到店',60,1500),(3,'7-11店到店',60,1500),(4,'宅配',120,3000);
/*!40000 ALTER TABLE `orders_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_items`
--

DROP TABLE IF EXISTS `orders_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_items` (
  `orders_items_id` int(7) NOT NULL AUTO_INCREMENT,
  `orders_items_orders_id` int(7) DEFAULT NULL,
  `orders_items_product_id` int(7) DEFAULT NULL,
  `orders_items_count` int(3) DEFAULT NULL,
  `orders_items_total` int(7) DEFAULT NULL,
  PRIMARY KEY (`orders_items_id`),
  KEY `orders_items_orders_id` (`orders_items_orders_id`,`orders_items_product_id`),
  KEY `orders_items_product_id` (`orders_items_product_id`),
  CONSTRAINT `orders_items_ibfk_1` FOREIGN KEY (`orders_items_orders_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_items_ibfk_2` FOREIGN KEY (`orders_items_product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_items`
--

LOCK TABLES `orders_items` WRITE;
/*!40000 ALTER TABLE `orders_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_product`
--

DROP TABLE IF EXISTS `other_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_product` (
  `other_product_id` int(3) NOT NULL AUTO_INCREMENT,
  `other_product_name` varchar(16) DEFAULT NULL,
  `other_product_info` varchar(32) DEFAULT NULL,
  `other_product_content` varchar(255) DEFAULT NULL,
  `other_product_link` varchar(255) DEFAULT NULL,
  `other_product_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`other_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_product`
--

LOCK TABLES `other_product` WRITE;
/*!40000 ALTER TABLE `other_product` DISABLE KEYS */;
INSERT INTO `other_product` VALUES (1,'Kobold','一機到底，巧妙的折疊手把設計。','全方位配件吸頭，配合多種清潔模式，打叟輕鬆又乾淨。','https://vorwerk.com.tw/kobold-product-intro/%e5%a4%9a%e5%8a%9f%e8%83%bd%e6%b8%85%e6%bd%94%e6%a9%9f/\r\n','../material/other/kobold.jpg\n'),(2,'挪威士','更健康的家園，自然的潔凈。','減少有害化學物質和塑料的使用，創造更健康和無憂的家園。挪威士®超細纖維只需與水一同使用就能清除您全家高達99%的細菌。\r\n','https://shop.norwex.tw/\r\n','../material/other/norwex.jpg\n'),(3,'美善品','百變料理盡在彈指之間。','具有多種烹飪功能和模式，讓美善品為你省時省力做出多樣料理，再也不需要花上一整天來忙碌準備，料理就是這麼簡單。\r\n','https://vorwerk.com.tw/product-content/%e7%be%8e%e5%96%84%e5%93%81tm6%e4%bb%8b%e7%b4%b9/\r\n','../material/other/Thermomix.jpg\n');
/*!40000 ALTER TABLE `other_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(7) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(16) DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL,
  `product_product_type_id` int(3) DEFAULT NULL,
  `product_info` varchar(32) DEFAULT NULL,
  `product_content` varchar(255) DEFAULT NULL,
  `product_stock` int(3) DEFAULT NULL,
  `product_price` int(7) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_product_type_id` (`product_product_type_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_product_type_id`) REFERENCES `product_type` (`product_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'自製味曾','../material/product/product(1).jpg',1,'傳統製作，全新體驗。','傳統製作與外面不同的滋味，體驗最原始的味道，保留每一絲美味。\r\n',20,620),(2,'鹽麴','../material/product/product(2).jpg',3,'餐桌上的魔法師','每餐煩惱各種調味料嗎?只要一匙鹽麴就可以讓料理更上一層樓。',20,580),(3,'米麴','../material/product/product(3).jpg',1,'補充生活中的膳食纖維','將米麴外層有長菌絲的部份（佔約7成）磨成粉，\r\n菌絲含各種酵素與營養質。',20,400),(4,'紅米麴','../material/product/product(4).jpg',1,'紅麴+米麴，讓你的夜晚不再胃痛。','將米麴外層有長菌絲的部份（佔約7成）磨成粉，菌絲含各種酵素與營養質。',20,800),(5,'古法粗鹽','../material/product/product(5).jpg',2,'都需要吃，那就選最健康的	','洲南鹽場古法粗鹽，最天然的方式，保護鹽中的每一點營養，讓我們吃的每一顆鹽，都發會最大的功效。',20,130);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `product_type_id` int(3) NOT NULL AUTO_INCREMENT,
  `product_type_name` varchar(10) DEFAULT NULL,
  `product_type_content` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`product_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'自製','蔣家自製'),(2,'進貨','他家商品'),(3,'調理包','只限宅配');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_product`
--

DROP TABLE IF EXISTS `report_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_product` (
  `report_product_id` int(3) NOT NULL AUTO_INCREMENT,
  `report_product_user` int(7) DEFAULT NULL,
  `report_product_other_product_id` int(3) DEFAULT NULL,
  `report_product_num` varchar(128) DEFAULT NULL,
  `report_product_total` int(7) DEFAULT NULL,
  PRIMARY KEY (`report_product_id`),
  KEY `report_product_user` (`report_product_user`,`report_product_other_product_id`),
  KEY `report_product_other_product_id` (`report_product_other_product_id`),
  CONSTRAINT `report_product_ibfk_1` FOREIGN KEY (`report_product_other_product_id`) REFERENCES `other_product` (`other_product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `report_product_ibfk_2` FOREIGN KEY (`report_product_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_product`
--

LOCK TABLES `report_product` WRITE;
/*!40000 ALTER TABLE `report_product` DISABLE KEYS */;
INSERT INTO `report_product` VALUES (1,1,1,'3',150),(2,2,2,'2',140),(3,3,3,'1',110);
/*!40000 ALTER TABLE `report_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio`
--

DROP TABLE IF EXISTS `studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studio` (
  `studio_id` int(5) NOT NULL AUTO_INCREMENT,
  `studio_employee_id` int(7) NOT NULL,
  `studio_name` varchar(32) NOT NULL,
  `studio_img` varchar(255) DEFAULT NULL,
  `studio_addr` varchar(128) NOT NULL,
  `studio_link` varchar(255) DEFAULT NULL,
  `studio_manager` varchar(16) NOT NULL,
  `studio_content` varchar(255) DEFAULT NULL,
  `studio_mode` enum('上線','下線') NOT NULL,
  PRIMARY KEY (`studio_id`),
  KEY `studio_employee_id` (`studio_employee_id`),
  CONSTRAINT `studio_ibfk_1` FOREIGN KEY (`studio_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio`
--

LOCK TABLES `studio` WRITE;
/*!40000 ALTER TABLE `studio` DISABLE KEYS */;
INSERT INTO `studio` VALUES (1,1,'蔣家小館','..materialstudioChiangmom.jpg','屏東長治','https://www.facebook.com/photo?fbid=754427923360573&set=pb.100063801171606.-2207520000','負責一','蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館','上線'),(2,6,'測試教室一','..materialstudio	est1.jpg','台北市林','https://www.facebook.com/photo?fbid=754427923360573&set=pb.100063801171606.-2207520000','負責二','測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一','上線'),(3,7,'測試教室二','..materialstudio	est2.jpg','台中文心','https://www.facebook.com/photo?fbid=754427923360573&set=pb.100063801171606.-2207520000','負責三','測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二','');
/*!40000 ALTER TABLE `studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo` (
  `todo_id` int(7) NOT NULL AUTO_INCREMENT,
  `todo_todo_type_id` int(3) NOT NULL,
  `todo_memo` varchar(255) DEFAULT NULL,
  `todo_employee_id` int(7) DEFAULT NULL,
  `todo_date` date NOT NULL,
  `todo_deadline` date DEFAULT NULL,
  `todo_fin_employee_id` int(7) DEFAULT NULL,
  PRIMARY KEY (`todo_id`),
  KEY `todo_ibfk_1` (`todo_todo_type_id`),
  KEY `todo_ibfk_2` (`todo_employee_id`),
  KEY `todo_ibfk_3` (`todo_fin_employee_id`),
  CONSTRAINT `todo_ibfk_1` FOREIGN KEY (`todo_todo_type_id`) REFERENCES `todo_type` (`todo_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `todo_ibfk_2` FOREIGN KEY (`todo_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `todo_ibfk_3` FOREIGN KEY (`todo_fin_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
INSERT INTO `todo` VALUES (1,1,'好物推薦回報處理',3,'2023-08-18','2023-08-23',NULL),(2,2,'課程或是產品匯款的問題',6,'2023-08-19','2023-08-24',NULL),(3,3,'更改或新增新的物品',5,'2023-08-20','2023-08-25',NULL),(4,4,'系統出現問題需要處哩',5,'2023-08-21','2023-08-26',NULL),(5,5,'客人的詢問信箱處理',3,'2023-08-22','2023-08-27',NULL);
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_type`
--

DROP TABLE IF EXISTS `todo_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo_type` (
  `todo_type_id` int(3) NOT NULL AUTO_INCREMENT,
  `todo_type_name` varchar(10) NOT NULL,
  `todo_type_content` varchar(50) NOT NULL,
  PRIMARY KEY (`todo_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_type`
--

LOCK TABLES `todo_type` WRITE;
/*!40000 ALTER TABLE `todo_type` DISABLE KEYS */;
INSERT INTO `todo_type` VALUES (1,'好物推薦回報','好物推薦回報處理'),(2,'確認匯款','課程或是產品匯款的問題'),(3,'上架貨品問題','更改或新增新的物品'),(4,'系統問題','系統出現問題需要處哩'),(5,'客人QA處理','客人的詢問信箱處理');
/*!40000 ALTER TABLE `todo_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(32) NOT NULL,
  `user_password` varchar(128) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `user_rank` enum('銅','銀','金','白金','鑽石') NOT NULL,
  `user_sex` enum('男','女','其他') NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_line` varchar(50) DEFAULT NULL,
  `user_token` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_account` (`user_account`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'testone','pass','測試一','銅','女','9123456997','1lauchloeyun@gmail.com','line123456',0.00),(2,'testtwo','pass','測試二','銅','男','9123456997','2lauchloeyun@gmail.com','line123456',0.00),(3,'testthree','pass','測試三','銅','其他','9123456997','3lauchloeyun@gmail.com','line123456',0.00);
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

-- Dump completed on 2023-09-17 13:27:57
