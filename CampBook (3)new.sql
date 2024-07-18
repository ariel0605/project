-- 建立資料庫語法
-- 加上預設的文字編碼(建議設定)
CREATE DATABASE `bookInfo01`
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE `bookInfo01`;

SET SQL_SAFE_UPDATES = 0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- --------------------------------------------------------
-- 
-- 搜尋引擎 search engine
-- 
-- --------------------------------------------------------

DROP TABLE IF EXISTS `camping_theme_list`;
-- 露營主題 `camping_theme_list`的資料表
CREATE TABLE `camping_theme_list` (
  `cthe_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `camping_theme` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`cthe_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `camping_theme_list`
INSERT INTO `camping_theme_list` VALUES
('c_the1', '豪華露營'),
('c_the2', '懶人露營'),
('c_the3', '常規露營(自搭帳露營)'),
('c_the4', '免裝備露營');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `camp_area_list`;
-- 營區地點 camp_area_list 的資料表
CREATE TABLE `camp_area_list`
(
  `ca_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `camp_area` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ca_no`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `camp_area_list`
INSERT INTO `camp_area_list` VALUES
('c_area1', '公共衛浴'),
('c_area2', '公共廚房'),
('c_area3', '投幣式洗衣機'),
('c_area4', '無障礙設施'),
('c_area5', '商店/自動販賣機'),
('c_area6', '供應熱水'),
('c_area7', '無線wifi'),
('c_area8', '垃圾場'),
('c_area9', '餐廳'),
('c_area10', '野餐桌'),
('c_area11', '開火區'),
('c_area12', '烤肉區'),
('c_area13', '卡拉ok');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `camping_type_list`;
-- 營區地點 camping_type_list 的資料表
CREATE TABLE `camping_type_list`
(
  `ctype_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `camping_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ctype_no`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `camping_type_list`
INSERT INTO `camping_type_list` VALUES
('c_type1', '渡假村'),
('c_type2', '露營場'),
('c_type3', '露營車'),
('c_type4', '露營屋'),
('c_type5', '帳篷');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `feature_category_list`;
-- 營區地點 feature_category_list 的資料表
CREATE TABLE `feature_category_list`
(
  `fc_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `feature_category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`fc_no`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `feature_category_list`
INSERT INTO `feature_category_list` VALUES
('c_feat1', '附冷氣'),
('c_feat2', '高海拔'),
('c_feat3', '親子活動'),
('c_feat4', '海景'),
('c_feat5', '寵物友善'),
('c_feat6', '網美佈置'),
('c_feat7', '交通易達'),
('c_feat8', '星空夜景'),
('c_feat9', '雲海美景'),
('c_feat10', '泡湯'),
('c_feat11', '夏日玩水'),
('c_feat12', '釣魚樂'),
('c_feat13', '多人團體'),
('c_feat14', '夜衝');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `place_type_list`;
-- 營區地點 place_type_list 的資料表
CREATE TABLE `place_type_list`
(
  `pt_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `place_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pt_no`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `place_type_list`
INSERT INTO `place_type_list` VALUES
('c_place1', '草'),
('c_place2', '土壤'),
('c_place3', '碎石'),
('c_place4', '棧板'),
('c_place5', '水泥地'),
('c_place6', '雨棚');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `place`;
-- 營區地點 place 的資料表
CREATE TABLE `place`
(
  `pos_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pos_no`),
  unique key (`position`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `place`
INSERT INTO `place` VALUES
('pos1', '北部'),
('pos2', '中部'),
('pos3', '南部'),
('pos4', '東部');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `post_n`;
-- 北部 post_n 的資料表
CREATE TABLE `post_n`
(
  `nor_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city_n` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`nor_no`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `post_n`
INSERT INTO `post_n` VALUES
('nor1', '宜蘭縣'),
('nor2', '台北市'),
('nor3', '新北市'),
('nor4', '新竹市'),
('nor5', '新竹縣'),
('nor7', '桃園市'),
('nor8', '基隆市');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `post_c`;
-- 中部 post_c 的資料表
CREATE TABLE `post_c`
(
  `cen_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city_c` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`cen_no`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `post_c`
INSERT INTO `post_c` VALUES
('cen1', '南投縣'),
('cen2', '雲林縣'),
('cen3', '彰化縣'),
('cen4', '台中市'),
('cen5', '苗栗縣');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `post_s`;
-- 南部 post_s 的資料表
CREATE TABLE `post_s`
(
  `sou_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city_s` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sou_no`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `post_s`
INSERT INTO `post_s` VALUES
('sou1', '屏東縣'),
('sou2', '嘉義縣'),
('sou3', '嘉義市'),
('sou4', '高雄市'),
('sou5', '台南市');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `post_e`;
-- 東部 post_e 的資料表
CREATE TABLE `post_e`
(
  `eas_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city_n` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`eas_no`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `post_e`
INSERT INTO `post_e` VALUES
('eas1', '台東縣'),
('eas2', '花蓮縣');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `camp_type`;
-- 資料表結構 `camp_type`
CREATE TABLE `camp_type` (
  `camp_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `camp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`camp_no`),
  unique key(`camp_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `camp_type`
INSERT INTO `camp_type` VALUES
('T1', '走馬賴農場'),
('T2', '山Chill'),
('T3', '星空漫漫 Starry sky');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `room_type`;
-- 資料表結構 `room_type`
CREATE TABLE `room_type` (
  `room_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`room_no`),
  unique key(`room_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `room_type`
INSERT INTO `room_type` VALUES
('B1', '家庭房'),
('B2', '露營車'),
('B3', '雙人房');

-- --------------------------------------------------------
DROP TABLE IF EXISTS `bed_type`;
-- 資料表結構 `bed_type`
CREATE TABLE `bed_type` (
  `bed_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bed_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`bed_no`),
  unique key(`bed_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `bed_type`
INSERT INTO `bed_type` VALUES
('Bed1', '雙人床'),
('Bed2', '雙人床+單人床'),
('Bed3', '單人床');
-- --------------------------------------------------------
DROP TABLE IF EXISTS `check_in_info`;
-- 資料表結構 `check_in_info`
CREATE TABLE `check_in_info` (
  `checkin_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `checkin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`checkin_no`),
  unique key(`checkin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `bed_type`
INSERT INTO `check_in_info` VALUES
('che1', '自助'),
('che2', '提早入住');

-- ---------------------------------------------------
DROP TABLE IF EXISTS `food`;
-- 資料表結構 `food`
CREATE TABLE `food` (
  `food_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `food_type`varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`food_no`),
  unique key(`food_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `food`
INSERT INTO `food` VALUES
('F1', '附早餐'),
('F2', '附午餐'),
('F3', '附晚餐'),
('F4', '附全餐');
-- ---------------------------------------------------
DROP TABLE IF EXISTS `services`;
-- 資料表結構 `services`
CREATE TABLE `services` (
  `ser_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ser_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ser_no`),
  unique key(`ser_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `services`
INSERT INTO `services` VALUES
('ser1', '停車場'),
('ser2', '接送服務'),
('ser3', '導覽服務');

-- ---------------------------------------------------

DROP TABLE IF EXISTS `room_fac`;
-- 資料表結構 `room_fac`
CREATE TABLE `room_fac` (
  `fac_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fac_type`varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`fac_no`),
  unique key(`fac_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `room_fac`
INSERT INTO `room_fac` VALUES
('Fac1', '無線網路'),
('Fac2', '無障礙有善'),
('Fac3', '獨立衛浴'),
('Fac4', '廚房');
-- --------------------------------------------------------
DROP TABLE IF EXISTS `child_fac`;
-- 資料表結構 `child_fac`
CREATE TABLE `child_fac` (
  `child_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `child_type`varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`child_no`),
  unique key(`child_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `child_fac`
INSERT INTO `child_fac` VALUES
('Fac1', '親子設施'),
('Fac2', '嬰兒設施'),
('Fac3', '無');
-- --------------------------------------------------------
DROP TABLE IF EXISTS `pet`;
-- 資料表結構 `pet`
CREATE TABLE `pet` (
  `pet_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pet_type`varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pet_no`),
  unique key(`pet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `pet`
INSERT INTO `pet` VALUES
('pet1', '可攜帶寵物'),
('pet2', '不可攜帶');
-- --------------------------------------------------------
DROP TABLE IF EXISTS `recreation`;

-- 資料表結構 `recreation`
CREATE TABLE `recreation` (
  `recra_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `recra_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`recra_no`),
  UNIQUE KEY (`recra_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `recreation`
INSERT INTO `recreation` VALUES
('recra1', '游泳池'),
('recra2', '遊戲區'),
('recra3', '煙火'),
('recra4', '無人機');
--------------------------------------------------------
DROP TABLE IF EXISTS `place_info`;
-- 資料表結構 `place_info`
CREATE TABLE `place_info` (
  `camp_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `camp_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `open_time` varchar(9) DEFAULT NULL,
  `camp_address` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `baby` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kitchen` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bathroom` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_feature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pet` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`camp_id`),
  
  CONSTRAINT `FK_position` FOREIGN KEY (`position`) REFERENCES `place`(`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `place_info`
INSERT INTO `place_info`  VALUES
('C1', '走馬賴農場', '上午 9:00', '台南市大內區二溪里唭子瓦60號', '南部', '1', '1', '1', '山景', '1'),
('C2', '山Chill', '上午 10:00', '苗栗縣造橋鄉平興村?菜坑2-5號', '中部', '0', '0', '0', '海景', '0'),
('C3', '星空漫漫 Starry sky', '上午 11:00', '新竹縣尖石鄉28-1號', '北部', '1', '1', '1', '海景', '1');

-- --------------------------------------------------------
-- 
-- 會員資料 user_data
-- 
-- --------------------------------------------------------
DROP TABLE IF EXISTS `user_data`;
CREATE TABLE user_data (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR (200) NOT NULL,
  `password` VARCHAR (200) DEFAULT NULL,
  `email` VARCHAR (200) NOT NULL UNIQUE,
  `user_address` VARCHAR (200) DEFAULT NULL,
  `phone` VARCHAR (200) DEFAULT NULL,
  `birthday` VARCHAR (200) DEFAULT NULL,
  `gender` VARCHAR (200)DEFAULT NULL,
  `avatar` VARCHAR (200) DEFAULT NULL,
  
  PRIMARY KEY (`user_id`),
  unique key(`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO user_data (`user_id`, `user_name`, `password`, `email`, `user_address`, `phone`, `birthday`, `gender`, `avatar`) VALUES
(1, '袁冠謹', 'h5n23A63', 'sinatra9546@gmail.com', '彰化縣溪湖鎮二溪路2段51號之10', '0917070276', '1964-08-01', 'male', '/img/A0001.jpg'),
(2, '林得辛', 'th6mr772', 'teresa4655@hotmail.com', '臺中市太平區東村三街13號', '0939417503', '2016-01-06', 'female', '/img/A0002.jpg'),
(3, '黃亮悟', 'bC4GzH72', 'arnold6355@gmail.com', '臺中市大甲區經國路62號之18', '0924185028', '2013-03-30', 'female', '/img/A0003.jpg'),
(4, '傅昌道', '2kc2z6Qc', 'marissa4394@yahoo.com', '苗栗縣造橋鄉新庄仔80號10樓', '0937421669', '1965-02-16', 'female', '/img/A0004.jpg'),
(5, '劉年騏', 'ugSNRQCW', 'nancy3562@gmail.com', '屏東縣東港鎮新勝街86號之5', '0986160269', '2008-01-29', 'male', '/img/A0005.jpg'),
(6, '劉宥翊', 'FnmV665W', 'cullen7304@yahoo.com', '南投縣竹山鎮中央巷28號7樓之10', '0933996573', '1983-05-22', 'female', '/img/A0006.jpg'),
(7, '郭恆晤', 'uK287p3p', 'eugene8573@hotmail.com', '桃園市楊梅區草湳坡下70號', '0960984805', '1988-12-08', 'male', '/img/A0007.jpg'),
(8, '陳洋澤', 'm788L2VK', 'gutierrez933@gmail.com', '屏東縣長治鄉文學街3號之3', '0954439815', '2020-09-08', 'male', '/img/A0008.jpg'),
(9, '林瀾芬', 'UprL86my', 'crouch3821@yahoo.com', '宜蘭縣五結鄉和平路和平巷1號', '0952681447', '1969-01-29', 'female', '/img/A0009.jpg'),
(10, '劉庭莉', '4T7mf9c8', 'turner8074@outlook.com', '花蓮縣吉安鄉東海一街99號', '0913007060', '1985-07-10', 'male', '/img/A0010.jpg');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `last`;

-- 資料表結構 `last` pass!
CREATE TABLE `last` (
  `last_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_total_num` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_reserved` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_last` INT not NULL,
  PRIMARY KEY (`last_id`)
  
  -- ,CONSTRAINT `FK_room_total_num` FOREIGN KEY (`room_total_num`) REFERENCES `place_info`(`room_total_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `last`
INSERT INTO `last` VALUES
('TB11', '20', '5', '15'),
('TB12', '5', '4', '1'),
('TB23', '8', '3', '5');
-- --------------------------------------------------------

DROP TABLE IF EXISTS `r_total_num`;
-- 總房間數量 r_total_num 的資料表
CREATE TABLE `r_total_num`
(
  `tn_id` int NOT NULL AUTO_INCREMENT,
  `camp_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `selected_num` INT DEFAULT NULL,
  PRIMARY KEY (`tn_id`),
  
  CONSTRAINT `fk_camp_name` FOREIGN KEY (`camp_name`) REFERENCES `camp_type` (`camp_name`),
  CONSTRAINT `FK_room_name` FOREIGN KEY (`room_name`) REFERENCES `room_type`(`room_name`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `r_total_num`
INSERT INTO `r_total_num` VALUES 
(1,'山Chill','家庭房',10),
(2,'走馬賴農場','露營車',10),
(3,'走馬賴農場','家庭房',10);
-- --------------------------------------------------------

DROP TABLE IF EXISTS `room`;
-- 營地的房型 room 的資料表
CREATE TABLE `room` 
(
  `camp_type_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `camp_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `r_selected_num` INT DEFAULT NULL,
  `food_type`varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`camp_type_id`),
  
  CONSTRAINT `Fk_camp_name2` FOREIGN KEY (`camp_name`) REFERENCES `camp_type` (`camp_name`),
  CONSTRAINT `FK_room_name2` FOREIGN KEY (`room_name`) REFERENCES `room_type`(`room_name`),
  CONSTRAINT `FK_food_type` FOREIGN KEY (`food_type`) REFERENCES `food`(`food_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `room`
INSERT INTO `room` VALUES
('RT4543','走馬賴農場','家庭房', '2', '附早餐'),
('RT4544','山Chill','露營車', '2', '附早餐'),
('RT4545','山Chill','家庭房', '2', '附早餐'),
('RT4555','走馬賴農場','露營車', '2', '附早餐');
-- --------------------------------------------------------
-- 
-- 訂購資訊 book_info
-- 
-- --------------------------------------------------------

DROP TABLE IF EXISTS `book_info`;
-- 訂購資訊 book_info 的資料表
CREATE TABLE `book_info`
(
  `room_order_id` INT NOT NULL AUTO_INCREMENT ,
  `user_name` VARCHAR (200) NOT NULL,
  `camp_type_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `r_total_person` int DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `r_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `r_total_price` int DEFAULT NULL,
  `r_payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_pic` blob,
  PRIMARY KEY (`room_order_id`),
  
  CONSTRAINT `FK_user_name` FOREIGN KEY (`user_name`) REFERENCES `user_data`(`user_name`),
  CONSTRAINT `FK_camp_type_id` FOREIGN KEY (`camp_type_id`) REFERENCES `room`(`camp_type_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 傾印資料表的資料 `book_info`
INSERT INTO `book_info` VALUES
('240120345', '袁冠謹', 'RT4543', '2', '2024-07-07', '2024-07-08', '2024-07-01 9:45', '7500', '信用卡付款','img\\1.jpg'),
('240120146', '林得辛', 'RT4543', '2', '2024-07-08', '2024-07-10', '2024-07-02 9:45', '12300', '信用卡付款', 'img\\1.jpg'),
('240120347', '黃亮悟', 'RT4543', '3', '2024-07-09', '2024-07-12', '2024-07-03 9:45', '17800', '信用卡付款','img\\1.jpg'),
('240120348', '林得辛', 'RT4543', '4', '2024-07-10', '2024-07-13', '2024-07-04 9:45', '21500', '信用卡付款','img\\1.jpg'),
('240120349', '傅昌道', 'RT4543', '4', '2024-07-11', '2024-07-14', '2024-07-05 9:45', '13500', '信用卡付款','img\\1.jpg'),
('240120350', '郭恆晤', 'RT4543', '2', '2024-07-12', '2024-07-15', '2024-07-06 9:45', '9900', '信用卡付款','img\\1.jpg'),
('240120131', '陳洋澤', 'RT4543', '4', '2024-07-13', '2024-07-14', '2024-07-07 9:45', '14500', '信用卡付款','img\\1.jpg'),
('240120353', '劉年騏', 'RT4543', '4', '2024-07-13', '2024-07-14', '2024-07-07 9:45', '14500', '信用卡付款','img\\1.jpg'),
('240122352', '劉庭莉', 'RT4543', '3', '2024-07-14', '2024-07-16', '2024-07-08 9:45', '10900', '信用卡付款','img\\1.jpg');
