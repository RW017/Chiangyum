-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2023-09-10 15:04:44
-- 服务器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `chiangyum`
--

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE `class` (
  `class_id` int(7) NOT NULL,
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
  `class_price` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`class_id`, `class_manager_employee_id`, `class_name`, `class_img`, `class_studio_studio_id`, `class_info`, `class_content`, `class_date`, `class_startdate`, `class_enddate`, `class_count`, `class_limit`, `class_price`) VALUES
(1, 1, '鹽焗創意小教室', '..\\material\\class\\class (1).jpg', 1, '鹽焗創意小教室鹽焗創意小教室', '鹽焗創意小教室鹽焗創意小教室鹽焗創意小教室鹽焗創意小教室鹽焗創意小教室鹽焗創意小教室', '2023-09-05', '2023-08-25', '2023-09-01', 8, 20, 200),
(2, 6, '簡單小料理', '..\\material\\class\\class (2).jpg', 2, '簡單小料理簡單小料理簡單小料理', '簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理簡單小料理', '2023-09-15', '2023-09-05', '2023-08-10', 5, 20, 100),
(3, 7, '番茄的魔法', '..\\material\\class\\class (3).jpg', 3, '番茄的魔法番茄的魔法番茄的魔法', '番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法番茄的魔法', '2023-09-25', '2023-09-15', '2023-09-20', 4, 20, 300);

-- --------------------------------------------------------

--
-- 表的结构 `class_reg`
--

CREATE TABLE `class_reg` (
  `class_reg_id` int(7) NOT NULL,
  `class_reg_class_id` int(7) DEFAULT NULL,
  `class_reg_user_id` int(7) DEFAULT NULL,
  `class_reg_count` int(3) DEFAULT NULL,
  `class_reg_date` date DEFAULT NULL,
  `class_reg_price` int(7) DEFAULT NULL,
  `class_reg_mode` enum('確認付款中','已確認報名','課程結束') DEFAULT NULL,
  `class_reg_memo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `class_reg`
--

INSERT INTO `class_reg` (`class_reg_id`, `class_reg_class_id`, `class_reg_user_id`, `class_reg_count`, `class_reg_date`, `class_reg_price`, `class_reg_mode`, `class_reg_memo`) VALUES
(1, 1, 1, 1, '2023-09-02', 200, '確認付款中', NULL),
(2, 2, 1, 1, '2023-09-02', 100, '確認付款中', NULL),
(3, 2, 2, 1, '2023-09-06', 100, '確認付款中', NULL),
(4, 3, 1, 1, '2023-09-07', 300, '確認付款中', NULL),
(5, 3, 2, 1, '2023-09-16', 300, '確認付款中', NULL),
(6, 3, 3, 1, '2023-09-17', 300, '確認付款中', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `eclass`
--

CREATE TABLE `eclass` (
  `eclass_id` int(7) NOT NULL,
  `eclass_name` varchar(16) DEFAULT NULL,
  `eclass_img` varchar(255) DEFAULT NULL,
  `eclass_info` varchar(32) DEFAULT NULL,
  `eclass_content` varchar(255) DEFAULT NULL,
  `eclass_videos` varchar(255) DEFAULT NULL,
  `eclass_date` date DEFAULT NULL,
  `eclass_price` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `eclass_reg`
--

CREATE TABLE `eclass_reg` (
  `eclass_reg_id` int(7) NOT NULL,
  `eclass_reg_class_id` int(7) DEFAULT NULL,
  `eclass_reg_user_id` int(7) DEFAULT NULL,
  `eclass_reg_date` date DEFAULT NULL,
  `eclass_reg_price` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(7) NOT NULL,
  `employee_account` varchar(32) NOT NULL,
  `employee_password` varchar(128) NOT NULL,
  `employee_name` varchar(16) NOT NULL,
  `employee_rank` enum('管理者','小幫手','合作教室') NOT NULL,
  `employee_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_account`, `employee_password`, `employee_name`, `employee_rank`, `employee_img`) VALUES
(1, 'chiangmom', 'admin1234mom', 'Chiangmom', '管理者', '..\\material\\employee\\avatar (1).jpg'),
(2, 'chiangdad', 'admin1234dad', 'Chiangdad', '管理者', '..\\material\\employee\\avatar (2).jpg'),
(3, 'geoao', 'admin1234ao', 'Gaoao', '管理者', '..\\material\\employee\\avatar (3).jpg'),
(4, 'gust', 'admin1234gust', 'Gust', '小幫手', '..\\material\\employee\\avatar (4).jpg'),
(5, 'chloe', 'admin1234chloe', 'Chloe', '小幫手', '..\\material\\employee\\avatar (5).jpg'),
(6, 'classtest1', 'admin12341', 'ClassTest', '合作教室', '..\\material\\employee\\avatar (6).jpg'),
(7, 'classtest2', 'admin12342', 'ClassTest', '合作教室', '..\\material\\employee\\avatar (7).jpg');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(7) NOT NULL,
  `orders_user_id` int(7) DEFAULT NULL,
  `orders_orders_delivery` int(3) DEFAULT NULL,
  `orders_addrid` int(7) DEFAULT NULL,
  `orders_addr` varchar(32) DEFAULT NULL,
  `orders_mode` enum('確認付款中','備貨中','準備出貨','已寄出','已送達') DEFAULT NULL,
  `orders_code` varchar(32) DEFAULT NULL,
  `orders_price` int(7) DEFAULT NULL,
  `orders_date` date DEFAULT NULL,
  `orders_memo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`orders_id`, `orders_user_id`, `orders_orders_delivery`, `orders_addrid`, `orders_addr`, `orders_mode`, `orders_code`, `orders_price`, `orders_date`, `orders_memo`) VALUES
(1, 1, 1, 92052, '屏東縣潮州鎮文昌街42號', '確認付款中', NULL, 340, '2023-08-23', NULL),
(2, 2, 2, 22465, '基隆市信義區信一路１４８號', '確認付款中', NULL, 680, '2023-08-23', NULL),
(3, 2, 3, 113160, '台北市中正區許昌街17號1樓', '確認付款中', NULL, 640, '2023-08-23', NULL),
(4, 3, 4, 40772, '台中市西屯區西安街277巷25弄2號', '確認付款中', NULL, 1320, '2023-08-23', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `orders_delivery`
--

CREATE TABLE `orders_delivery` (
  `orders_delivery_id` int(3) NOT NULL,
  `orders_delivery_name` varchar(8) DEFAULT NULL,
  `orders_delivery_price` int(7) DEFAULT NULL,
  `orders_delivery_threshold` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `orders_delivery`
--

INSERT INTO `orders_delivery` (`orders_delivery_id`, `orders_delivery_name`, `orders_delivery_price`, `orders_delivery_threshold`) VALUES
(1, '郵局', 80, 3000),
(2, '全家店到店', 60, 1500),
(3, '7-11店到店', 60, 1500),
(4, '宅配', 120, 3000);

-- --------------------------------------------------------

--
-- 表的结构 `orders_items`
--

CREATE TABLE `orders_items` (
  `orders_items_id` int(7) NOT NULL,
  `orders_items_orders_id` int(7) DEFAULT NULL,
  `orders_items_product_id` int(7) DEFAULT NULL,
  `orders_items_count` int(3) DEFAULT NULL,
  `orders_items_total` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `other_product`
--

CREATE TABLE `other_product` (
  `other_product_id` int(3) NOT NULL,
  `other_product_name` varchar(16) DEFAULT NULL,
  `other_product_info` varchar(32) DEFAULT NULL,
  `other_product_content` varchar(255) DEFAULT NULL,
  `other_product_link` varchar(255) DEFAULT NULL,
  `other_product_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `other_product`
--

INSERT INTO `other_product` (`other_product_id`, `other_product_name`, `other_product_info`, `other_product_content`, `other_product_link`, `other_product_img`) VALUES
(1, 'Kobold', '一機到底，巧妙的折疊手把設計。', '全方位配件吸頭，配合多種清潔模式，打叟輕鬆又乾淨。', 'https://vorwerk.com.tw/kobold-product-intro/%e5%a4%9a%e5%8a%9f%e8%83%bd%e6%b8%85%e6%bd%94%e6%a9%9f/\r\n', '..\\material\\other_product\\kobold.jpg\r\n'),
(2, '挪威士', '更健康的家園，自然的潔凈。', '減少有害化學物質和塑料的使用，創造更健康和無憂的家園。挪威士®超細纖維只需與水一同使用就能清除您全家高達99%的細菌。\r\n', 'https://shop.norwex.tw/\r\n', '..\\material\\other_product\\norwex.jpg\r\n'),
(3, '美善品', '百變料理盡在彈指之間。', '具有多種烹飪功能和模式，讓美善品為你省時省力做出多樣料理，再也不需要花上一整天來忙碌準備，料理就是這麼簡單。\r\n', 'https://vorwerk.com.tw/product-content/%e7%be%8e%e5%96%84%e5%93%81tm6%e4%bb%8b%e7%b4%b9/\r\n', '..\\material\\other_product\\Thermomix.jpg\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `product_id` int(7) NOT NULL,
  `product_name` varchar(16) DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL,
  `product_product_type_id` int(3) DEFAULT NULL,
  `product_info` varchar(32) DEFAULT NULL,
  `product_content` varchar(255) DEFAULT NULL,
  `product_stock` int(3) DEFAULT NULL,
  `product_price` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_img`, `product_product_type_id`, `product_info`, `product_content`, `product_stock`, `product_price`) VALUES
(1, '自製味曾', 'material/product/product (1).jpg', 1, '傳統製作，全新體驗。', '傳統製作與外面不同的滋味，體驗最原始的味道，保留每一絲美味。\r\n', 20, 620),
(2, '鹽麴', 'material/product/product (2).jpg', 3, '餐桌上的魔法師', '每餐煩惱各種調味料嗎?只要一匙鹽麴就可以讓料理更上一層樓。', 20, 580),
(3, '米麴', 'material/product/product (3).jpg', 1, '補充生活中的膳食纖維', '將米麴外層有長菌絲的部份（佔約7成）磨成粉，\r\n菌絲含各種酵素與營養質。', 20, 400),
(4, '紅米麴', 'material/product/product (4).jpg', 1, '紅麴+米麴，讓你的夜晚不再胃痛。', '將米麴外層有長菌絲的部份（佔約7成）磨成粉，菌絲含各種酵素與營養質。', 20, 800),
(5, '古法粗鹽', 'material/product/product (5).jpg', 2, '都需要吃，那就選最健康的	', '洲南鹽場古法粗鹽，最天然的方式，保護鹽中的每一點營養，讓我們吃的每一顆鹽，都發會最大的功效。', 20, 130);

-- --------------------------------------------------------

--
-- 表的结构 `product_type`
--

CREATE TABLE `product_type` (
  `product_type_id` int(3) NOT NULL,
  `product_type_name` varchar(10) DEFAULT NULL,
  `product_type_content` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `product_type_name`, `product_type_content`) VALUES
(1, '自製', '蔣家自製'),
(2, '進貨', '他家商品'),
(3, '調理包', '只限宅配');

-- --------------------------------------------------------

--
-- 表的结构 `report_product`
--

CREATE TABLE `report_product` (
  `report_product_id` int(3) NOT NULL,
  `report_product_user` int(7) DEFAULT NULL,
  `report_product_other_product_id` int(3) DEFAULT NULL,
  `report_product_num` varchar(128) DEFAULT NULL,
  `report_product_total` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `report_product`
--

INSERT INTO `report_product` (`report_product_id`, `report_product_user`, `report_product_other_product_id`, `report_product_num`, `report_product_total`) VALUES
(1, 1, 1, '3', 150),
(2, 2, 2, '2', 140),
(3, 3, 3, '1', 110);

-- --------------------------------------------------------

--
-- 表的结构 `studio`
--

CREATE TABLE `studio` (
  `studio_id` int(5) NOT NULL,
  `studio_employee_id` int(7) NOT NULL,
  `studio_name` varchar(32) NOT NULL,
  `studio_img` varchar(255) DEFAULT NULL,
  `studio_addr` varchar(128) NOT NULL,
  `studio_link` varchar(255) DEFAULT NULL,
  `studio_manager` varchar(16) NOT NULL,
  `studio_content` varchar(255) DEFAULT NULL,
  `studio_mode` enum('上線','下線') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `studio`
--

INSERT INTO `studio` (`studio_id`, `studio_employee_id`, `studio_name`, `studio_img`, `studio_addr`, `studio_link`, `studio_manager`, `studio_content`, `studio_mode`) VALUES
(1, 1, '蔣家小館', '..materialstudioChiangmom.jpg', '屏東長治', 'https://www.facebook.com/photo?fbid=754427923360573&set=pb.100063801171606.-2207520000', '負責一', '蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館蔣家小館', '上線'),
(2, 6, '測試教室一', '..materialstudio	est1.jpg', '台北市林', 'https://www.facebook.com/photo?fbid=754427923360573&set=pb.100063801171606.-2207520000', '負責二', '測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一測試教室一', '上線'),
(3, 7, '測試教室二', '..materialstudio	est2.jpg', '台中文心', 'https://www.facebook.com/photo?fbid=754427923360573&set=pb.100063801171606.-2207520000', '負責三', '測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二測試教室二', '');

-- --------------------------------------------------------

--
-- 表的结构 `todo`
--

CREATE TABLE `todo` (
  `todo_id` int(7) NOT NULL,
  `todo_todo_type_id` int(3) NOT NULL,
  `todo_memo` varchar(255) DEFAULT NULL,
  `todo_employee_id` int(7) DEFAULT NULL,
  `todo_date` date NOT NULL,
  `todo_deadline` date DEFAULT NULL,
  `todo_fin_employee_id` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `todo`
--

INSERT INTO `todo` (`todo_id`, `todo_todo_type_id`, `todo_memo`, `todo_employee_id`, `todo_date`, `todo_deadline`, `todo_fin_employee_id`) VALUES
(1, 1, '好物推薦回報處理', 3, '2023-08-18', '2023-08-23', NULL),
(2, 2, '課程或是產品匯款的問題', 6, '2023-08-19', '2023-08-24', NULL),
(3, 3, '更改或新增新的物品', 5, '2023-08-20', '2023-08-25', NULL),
(4, 4, '系統出現問題需要處哩', 5, '2023-08-21', '2023-08-26', NULL),
(5, 5, '客人的詢問信箱處理', 3, '2023-08-22', '2023-08-27', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `todo_type`
--

CREATE TABLE `todo_type` (
  `todo_type_id` int(3) NOT NULL,
  `todo_type_name` varchar(10) NOT NULL,
  `todo_type_content` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `todo_type`
--

INSERT INTO `todo_type` (`todo_type_id`, `todo_type_name`, `todo_type_content`) VALUES
(1, '好物推薦回報', '好物推薦回報處理'),
(2, '確認匯款', '課程或是產品匯款的問題'),
(3, '上架貨品問題', '更改或新增新的物品'),
(4, '系統問題', '系統出現問題需要處哩'),
(5, '客人QA處理', '客人的詢問信箱處理');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(7) NOT NULL,
  `user_account` varchar(32) NOT NULL,
  `user_password` varchar(128) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `user_rank` enum('銅','銀','金','白金','鑽石') NOT NULL,
  `user_sex` enum('男','女','其他') NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_line` varchar(50) DEFAULT NULL,
  `user_token` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_account`, `user_password`, `user_name`, `user_rank`, `user_sex`, `user_phone`, `user_email`, `user_line`, `user_token`) VALUES
(1, 'testone', 'pass', '測試一', '銅', '女', '9123456997', '1lauchloeyun@gmail.com', 'line123456', '0.00'),
(2, 'testtwo', 'pass', '測試二', '銅', '男', '9123456997', '2lauchloeyun@gmail.com', 'line123456', '0.00'),
(3, 'testthree', 'pass', '測試三', '銅', '其他', '9123456997', '3lauchloeyun@gmail.com', 'line123456', '0.00');

--
-- 转储表的索引
--

--
-- 表的索引 `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `class_manager` (`class_manager_employee_id`,`class_studio_studio_id`),
  ADD KEY `class_ibfk_2` (`class_studio_studio_id`),
  ADD KEY `class_manager_employee_id` (`class_manager_employee_id`);

--
-- 表的索引 `class_reg`
--
ALTER TABLE `class_reg`
  ADD PRIMARY KEY (`class_reg_id`),
  ADD KEY `class_reg_ibfk_1` (`class_reg_class_id`),
  ADD KEY `class_reg_ibfk_2` (`class_reg_user_id`);

--
-- 表的索引 `eclass`
--
ALTER TABLE `eclass`
  ADD PRIMARY KEY (`eclass_id`);

--
-- 表的索引 `eclass_reg`
--
ALTER TABLE `eclass_reg`
  ADD PRIMARY KEY (`eclass_reg_id`),
  ADD KEY `eclass_reg_class_id` (`eclass_reg_class_id`,`eclass_reg_user_id`),
  ADD KEY `eclass_reg_user_id` (`eclass_reg_user_id`);

--
-- 表的索引 `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- 表的索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `orders_user_id` (`orders_user_id`,`orders_orders_delivery`),
  ADD KEY `orders_orders_delivery` (`orders_orders_delivery`);

--
-- 表的索引 `orders_delivery`
--
ALTER TABLE `orders_delivery`
  ADD PRIMARY KEY (`orders_delivery_id`);

--
-- 表的索引 `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`orders_items_id`),
  ADD KEY `orders_items_orders_id` (`orders_items_orders_id`,`orders_items_product_id`),
  ADD KEY `orders_items_product_id` (`orders_items_product_id`);

--
-- 表的索引 `other_product`
--
ALTER TABLE `other_product`
  ADD PRIMARY KEY (`other_product_id`);

--
-- 表的索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_product_type_id` (`product_product_type_id`);

--
-- 表的索引 `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- 表的索引 `report_product`
--
ALTER TABLE `report_product`
  ADD PRIMARY KEY (`report_product_id`),
  ADD KEY `report_product_user` (`report_product_user`,`report_product_other_product_id`),
  ADD KEY `report_product_other_product_id` (`report_product_other_product_id`);

--
-- 表的索引 `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`studio_id`),
  ADD KEY `studio_employee_id` (`studio_employee_id`);

--
-- 表的索引 `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`todo_id`),
  ADD KEY `todo_ibfk_1` (`todo_todo_type_id`),
  ADD KEY `todo_ibfk_2` (`todo_employee_id`),
  ADD KEY `todo_ibfk_3` (`todo_fin_employee_id`);

--
-- 表的索引 `todo_type`
--
ALTER TABLE `todo_type`
  ADD PRIMARY KEY (`todo_type_id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_account` (`user_account`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `class_reg`
--
ALTER TABLE `class_reg`
  MODIFY `class_reg_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `eclass`
--
ALTER TABLE `eclass`
  MODIFY `eclass_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `eclass_reg`
--
ALTER TABLE `eclass_reg`
  MODIFY `eclass_reg_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `orders_delivery`
--
ALTER TABLE `orders_delivery`
  MODIFY `orders_delivery_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `orders_items_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `other_product`
--
ALTER TABLE `other_product`
  MODIFY `other_product_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `product_type`
--
ALTER TABLE `product_type`
  MODIFY `product_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `report_product`
--
ALTER TABLE `report_product`
  MODIFY `report_product_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `studio`
--
ALTER TABLE `studio`
  MODIFY `studio_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `todo`
--
ALTER TABLE `todo`
  MODIFY `todo_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `todo_type`
--
ALTER TABLE `todo_type`
  MODIFY `todo_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 限制导出的表
--

--
-- 限制表 `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`class_manager_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`class_studio_studio_id`) REFERENCES `studio` (`studio_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `class_reg`
--
ALTER TABLE `class_reg`
  ADD CONSTRAINT `class_reg_ibfk_1` FOREIGN KEY (`class_reg_class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_reg_ibfk_2` FOREIGN KEY (`class_reg_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eclass_reg`
--
ALTER TABLE `eclass_reg`
  ADD CONSTRAINT `eclass_reg_ibfk_1` FOREIGN KEY (`eclass_reg_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eclass_reg_ibfk_2` FOREIGN KEY (`eclass_reg_class_id`) REFERENCES `eclass` (`eclass_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`orders_orders_delivery`) REFERENCES `orders_delivery` (`orders_delivery_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`orders_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `orders_items`
--
ALTER TABLE `orders_items`
  ADD CONSTRAINT `orders_items_ibfk_1` FOREIGN KEY (`orders_items_orders_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_items_ibfk_2` FOREIGN KEY (`orders_items_product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_product_type_id`) REFERENCES `product_type` (`product_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `report_product`
--
ALTER TABLE `report_product`
  ADD CONSTRAINT `report_product_ibfk_1` FOREIGN KEY (`report_product_other_product_id`) REFERENCES `other_product` (`other_product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_product_ibfk_2` FOREIGN KEY (`report_product_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `studio`
--
ALTER TABLE `studio`
  ADD CONSTRAINT `studio_ibfk_1` FOREIGN KEY (`studio_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `todo`
--
ALTER TABLE `todo`
  ADD CONSTRAINT `todo_ibfk_1` FOREIGN KEY (`todo_todo_type_id`) REFERENCES `todo_type` (`todo_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `todo_ibfk_2` FOREIGN KEY (`todo_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `todo_ibfk_3` FOREIGN KEY (`todo_fin_employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
