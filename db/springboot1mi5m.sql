-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot1mi5m
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caipindingdan`
--

DROP TABLE IF EXISTS `caipindingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caipinjiage` int(11) DEFAULT NULL COMMENT '菜品价格',
  `xiadanshuliang` int(11) NOT NULL COMMENT '下单数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime NOT NULL COMMENT '下单时间',
  `canzhuohao` varchar(200) DEFAULT NULL COMMENT '餐桌号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616249516189 DEFAULT CHARSET=utf8 COMMENT='菜品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipindingdan`
--

LOCK TABLES `caipindingdan` WRITE;
/*!40000 ALTER TABLE `caipindingdan` DISABLE KEYS */;
INSERT INTO `caipindingdan` VALUES (51,'2021-03-20 13:36:16','订单编号1','菜品名称1','菜品分类1','http://localhost:8080/springboot1mi5m/upload/1616248880993.jpg',1,1,'1','2021-03-20 21:36:16','餐桌号1','用户名1','联系电话1','是','','未支付'),(52,'2021-03-20 13:36:16','订单编号2','菜品名称2','菜品分类2','http://localhost:8080/springboot1mi5m/upload/1616248890558.jpg',2,2,'4','2021-03-20 21:36:16','餐桌号2','用户名2','联系电话2','是','','未支付'),(53,'2021-03-20 13:36:16','订单编号3','菜品名称3','菜品分类3','http://localhost:8080/springboot1mi5m/upload/1616248899214.jpg',3,3,'9','2021-03-20 21:36:16','餐桌号3','用户名3','联系电话3','是','','未支付'),(54,'2021-03-20 13:36:16','订单编号4','菜品名称4','菜品分类4','http://localhost:8080/springboot1mi5m/upload/1616248937789.jpg',4,4,'16','2021-03-20 21:36:16','餐桌号4','用户名4','联系电话4','是','','未支付'),(55,'2021-03-20 13:36:16','订单编号5','菜品名称5','菜品分类5','http://localhost:8080/springboot1mi5m/upload/1616248947898.jpg',5,5,'25','2021-03-20 21:36:16','餐桌号5','用户名5','联系电话5','是','','未支付'),(56,'2021-03-20 13:36:16','订单编号6','菜品名称6','菜品分类6','http://localhost:8080/springboot1mi5m/upload/1616248958216.jpg',6,6,'36','2021-03-20 21:36:16','餐桌号6','用户名6','联系电话6','是','','未支付'),(1616249516188,'2021-03-20 14:11:55','202132022113612448606','麻辣小龙虾','川菜','http://localhost:8080/springboot1mi5m/upload/1616249301862.jpg',88,2,'176','2021-03-20 18:00:00','1号桌','1','12312312312','是','ok','已支付');
/*!40000 ALTER TABLE `caipindingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinfenlei`
--

DROP TABLE IF EXISTS `caipinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinfenlei` (`caipinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616249288843 DEFAULT CHARSET=utf8 COMMENT='菜品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinfenlei`
--

LOCK TABLES `caipinfenlei` WRITE;
/*!40000 ALTER TABLE `caipinfenlei` DISABLE KEYS */;
INSERT INTO `caipinfenlei` VALUES (21,'2021-03-20 13:36:15','菜品分类1'),(22,'2021-03-20 13:36:15','菜品分类2'),(23,'2021-03-20 13:36:15','菜品分类3'),(24,'2021-03-20 13:36:15','菜品分类4'),(25,'2021-03-20 13:36:15','菜品分类5'),(26,'2021-03-20 13:36:15','菜品分类6'),(1616249288842,'2021-03-20 14:08:08','川菜');
/*!40000 ALTER TABLE `caipinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinpingjia`
--

DROP TABLE IF EXISTS `caipinpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616249594957 DEFAULT CHARSET=utf8 COMMENT='菜品评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinpingjia`
--

LOCK TABLES `caipinpingjia` WRITE;
/*!40000 ALTER TABLE `caipinpingjia` DISABLE KEYS */;
INSERT INTO `caipinpingjia` VALUES (61,'2021-03-20 13:36:16','订单编号1','菜品名称1','菜品分类1','1','http://localhost:8080/springboot1mi5m/upload/1616248967287.jpg','评价内容1','2021-03-20','用户名1','是',''),(62,'2021-03-20 13:36:16','订单编号2','菜品名称2','菜品分类2','1','http://localhost:8080/springboot1mi5m/upload/1616248976742.jpg','评价内容2','2021-03-20','用户名2','是',''),(63,'2021-03-20 13:36:16','订单编号3','菜品名称3','菜品分类3','1','http://localhost:8080/springboot1mi5m/upload/1616248986791.jpg','评价内容3','2021-03-20','用户名3','是',''),(64,'2021-03-20 13:36:16','订单编号4','菜品名称4','菜品分类4','1','http://localhost:8080/springboot1mi5m/upload/1616248995687.jpg','评价内容4','2021-03-20','用户名4','是',''),(65,'2021-03-20 13:36:16','订单编号5','菜品名称5','菜品分类5','1','http://localhost:8080/springboot1mi5m/upload/1616249139876.jpg','评价内容5','2021-03-20','用户名5','是',''),(66,'2021-03-20 13:36:16','订单编号6','菜品名称6','菜品分类6','1','http://localhost:8080/springboot1mi5m/upload/1616249148803.jpg','评价内容6','2021-03-20','用户名6','是',''),(1616249594956,'2021-03-20 14:13:14','202132022113612448606','麻辣小龙虾','川菜','5','http://localhost:8080/springboot1mi5m/upload/1616249582492.jpg','小龙虾口感不错','2021-03-20','1','是','感谢支持');
/*!40000 ALTER TABLE `caipinpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinxinxi`
--

DROP TABLE IF EXISTS `caipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `caipinjiage` int(11) NOT NULL COMMENT '菜品价格',
  `cailiao` varchar(200) DEFAULT NULL COMMENT '材料',
  `fenliang` varchar(200) DEFAULT NULL COMMENT '份量',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616249319881 DEFAULT CHARSET=utf8 COMMENT='菜品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinxinxi`
--

LOCK TABLES `caipinxinxi` WRITE;
/*!40000 ALTER TABLE `caipinxinxi` DISABLE KEYS */;
INSERT INTO `caipinxinxi` VALUES (31,'2021-03-20 13:36:15','菜品名称1','菜品分类1','http://localhost:8080/springboot1mi5m/upload/1616248788098.jpg',1,'材料1','份量1','<p>菜品介绍1</p>','2021-03-20 21:59:34',2),(32,'2021-03-20 13:36:15','菜品名称2','菜品分类2','http://localhost:8080/springboot1mi5m/upload/1616248800548.jpg',2,'材料2','份量2','<p>菜品介绍2</p>','2021-03-20 22:10:38',4),(33,'2021-03-20 13:36:15','菜品名称3','菜品分类3','http://localhost:8080/springboot1mi5m/upload/1616248810527.jpg',3,'材料3','份量3','<p>菜品介绍3</p>','2021-03-20 22:00:05',4),(34,'2021-03-20 13:36:15','菜品名称4','菜品分类4','http://localhost:8080/springboot1mi5m/upload/1616248825918.jpg',4,'材料4','份量4','<p>菜品介绍4</p>','2021-03-20 22:00:14',5),(35,'2021-03-20 13:36:15','菜品名称5','菜品分类5','http://localhost:8080/springboot1mi5m/upload/1616248857719.jpg',5,'材料5','份量5','<p>菜品介绍5</p>','2021-03-20 22:10:53',12),(36,'2021-03-20 13:36:15','菜品名称6','菜品分类6','http://localhost:8080/springboot1mi5m/upload/1616248867781.jpg',6,'材料6','份量6','<p>菜品介绍6</p>','2021-03-20 22:10:14',9),(1616249319880,'2021-03-20 14:08:39','麻辣小龙虾','川菜','http://localhost:8080/springboot1mi5m/upload/1616249301862.jpg',88,'小龙虾','约450g','<p>花式麻辣小龙虾是一道色香味俱全的名肴，属于川菜系。肉香味美，色泽诱人，滋补强壮，口感甚佳，令人垂涎的现代菜肴。</p><p><img src=\"http://localhost:8080/springboot1mi5m/upload/1616249317657.jpg\"></p>','2021-03-20 22:11:58',3);
/*!40000 ALTER TABLE `caipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canzhuo`
--

DROP TABLE IF EXISTS `canzhuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canzhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canzhuohao` varchar(200) NOT NULL COMMENT '餐桌号',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `zuoweishu` int(11) DEFAULT NULL COMMENT '座位数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `canzhuohao` (`canzhuohao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616249337286 DEFAULT CHARSET=utf8 COMMENT='餐桌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canzhuo`
--

LOCK TABLES `canzhuo` WRITE;
/*!40000 ALTER TABLE `canzhuo` DISABLE KEYS */;
INSERT INTO `canzhuo` VALUES (41,'2021-03-20 13:36:16','餐桌号1','位置1',1),(42,'2021-03-20 13:36:16','餐桌号2','位置2',2),(43,'2021-03-20 13:36:16','餐桌号3','位置3',3),(44,'2021-03-20 13:36:16','餐桌号4','位置4',4),(45,'2021-03-20 13:36:16','餐桌号5','位置5',5),(46,'2021-03-20 13:36:16','餐桌号6','位置6',6),(1616249337285,'2021-03-20 14:08:56','1号桌','东区',4);
/*!40000 ALTER TABLE `canzhuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot1mi5m/upload/1616249372486.jpg'),(2,'picture2','http://localhost:8080/springboot1mi5m/upload/1616249379543.jpg'),(3,'picture3','http://localhost:8080/springboot1mi5m/upload/1616249387359.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusscaipinxinxi`
--

DROP TABLE IF EXISTS `discusscaipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusscaipinxinxi`
--

LOCK TABLES `discusscaipinxinxi` WRITE;
/*!40000 ALTER TABLE `discusscaipinxinxi` DISABLE KEYS */;
INSERT INTO `discusscaipinxinxi` VALUES (91,'2021-03-20 13:36:16',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-03-20 13:36:16',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-03-20 13:36:16',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-03-20 13:36:16',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-03-20 13:36:16',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-03-20 13:36:16',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusscaipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616249364832 DEFAULT CHARSET=utf8 COMMENT='菜品资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-03-20 13:36:16','标题1','简介1','http://localhost:8080/springboot1mi5m/upload/news_picture1.jpg','内容1'),(82,'2021-03-20 13:36:16','标题2','简介2','http://localhost:8080/springboot1mi5m/upload/news_picture2.jpg','内容2'),(83,'2021-03-20 13:36:16','标题3','简介3','http://localhost:8080/springboot1mi5m/upload/news_picture3.jpg','内容3'),(84,'2021-03-20 13:36:16','标题4','简介4','http://localhost:8080/springboot1mi5m/upload/1616249188131.jpg','<p>内容4</p>'),(85,'2021-03-20 13:36:16','标题5','简介5','http://localhost:8080/springboot1mi5m/upload/1616249159122.jpg','<p>内容5</p>'),(86,'2021-03-20 13:36:16','标题6','简介6','http://localhost:8080/springboot1mi5m/upload/1616249178914.jpg','<p>内容6</p>'),(1616249364831,'2021-03-20 14:09:24','新菜品','新菜品','http://localhost:8080/springboot1mi5m/upload/1616249350632.jpg','<p>推出新菜品</p><p><img src=\"http://localhost:8080/springboot1mi5m/upload/1616249364130.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616249493766 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','jzctq6s7zl154dik4w9cigr36yicc8b0','2021-03-20 13:57:31','2021-03-20 15:13:24'),(2,1616249408344,'1','yonghu','用户','28fb7bldmdtbcwjctuxmq9rx3owzfcao','2021-03-20 14:10:13','2021-03-20 15:12:46');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-20 13:36:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616249408345 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-20 13:36:15','用户1','123456','姓名1','http://localhost:8080/springboot1mi5m/upload/yonghu_touxiang1.jpg','男','13823888881'),(12,'2021-03-20 13:36:15','用户2','123456','姓名2','http://localhost:8080/springboot1mi5m/upload/yonghu_touxiang2.jpg','男','13823888882'),(13,'2021-03-20 13:36:15','用户3','123456','姓名3','http://localhost:8080/springboot1mi5m/upload/yonghu_touxiang3.jpg','男','13823888883'),(14,'2021-03-20 13:36:15','用户4','123456','姓名4','http://localhost:8080/springboot1mi5m/upload/yonghu_touxiang4.jpg','男','13823888884'),(15,'2021-03-20 13:36:15','用户5','123456','姓名5','http://localhost:8080/springboot1mi5m/upload/yonghu_touxiang5.jpg','男','13823888885'),(16,'2021-03-20 13:36:15','用户6','123456','姓名6','http://localhost:8080/springboot1mi5m/upload/yonghu_touxiang6.jpg','男','13823888886'),(1616249408344,'2021-03-20 14:10:08','1','1','陈一','http://localhost:8080/springboot1mi5m/upload/1616249426524.jpg','女','12312312312');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-23 15:02:40
