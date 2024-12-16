-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootho5g5
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
-- Current Database: `springbootho5g5`
--

/*!40000 DROP DATABASE IF EXISTS `springbootho5g5`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootho5g5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootho5g5`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2023-05-11 03:58:18',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2023-05-11 03:58:18',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2023-05-11 03:58:18',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2023-05-11 03:58:18',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2023-05-11 03:58:18',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2023-05-11 03:58:18',16,'宇宙银河系月球1号','月某','13823888886','是'),(7,'2023-05-11 03:58:18',17,'宇宙银河系黑洞1号','黑某','13823888887','是'),(8,'2023-05-11 03:58:18',18,'宇宙银河系地球1号','地某','13823888888','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chukuxinxi`
--

DROP TABLE IF EXISTS `chukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `beizhu` longtext COMMENT '备注',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='出库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chukuxinxi`
--

LOCK TABLES `chukuxinxi` WRITE;
/*!40000 ALTER TABLE `chukuxinxi` DISABLE KEYS */;
INSERT INTO `chukuxinxi` VALUES (71,'2023-05-11 03:58:18','订单编号1','商品编号1','商品名称1','商品分类1','品牌1','规格1',1,1,'备注1','2023-05-11 11:58:18'),(72,'2023-05-11 03:58:18','订单编号2','商品编号2','商品名称2','商品分类2','品牌2','规格2',2,2,'备注2','2023-05-11 11:58:18'),(73,'2023-05-11 03:58:18','订单编号3','商品编号3','商品名称3','商品分类3','品牌3','规格3',3,3,'备注3','2023-05-11 11:58:18'),(74,'2023-05-11 03:58:18','订单编号4','商品编号4','商品名称4','商品分类4','品牌4','规格4',4,4,'备注4','2023-05-11 11:58:18'),(75,'2023-05-11 03:58:18','订单编号5','商品编号5','商品名称5','商品分类5','品牌5','规格5',5,5,'备注5','2023-05-11 11:58:18'),(76,'2023-05-11 03:58:18','订单编号6','商品编号6','商品名称6','商品分类6','品牌6','规格6',6,6,'备注6','2023-05-11 11:58:18'),(77,'2023-05-11 03:58:18','订单编号7','商品编号7','商品名称7','商品分类7','品牌7','规格7',7,7,'备注7','2023-05-11 11:58:18'),(78,'2023-05-11 03:58:18','订单编号8','商品编号8','商品名称8','商品分类8','品牌8','规格8',8,8,'备注8','2023-05-11 11:58:18');
/*!40000 ALTER TABLE `chukuxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `danjia` float NOT NULL COMMENT '单价',
  `zongjia` float NOT NULL COMMENT '总价',
  `xiadanriqi` datetime NOT NULL COMMENT '下单日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `shouhuodizhi` varchar(200) NOT NULL COMMENT '收货地址',
  `beizhu` longtext COMMENT '备注',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (91,'2023-05-11 03:58:18','1111111111','商品名称1','商品分类1',1,1,1,'2023-05-11 11:58:18','用户名1','姓名1','13823888881','收货地址1','备注1',1,1,1,'宇宙银河系地球1号'),(92,'2023-05-11 03:58:18','2222222222','商品名称2','商品分类2',2,2,2,'2023-05-11 11:58:18','用户名2','姓名2','13823888882','收货地址2','备注2',2,2,2,'宇宙银河系地球2号'),(93,'2023-05-11 03:58:18','3333333333','商品名称3','商品分类3',3,3,3,'2023-05-11 11:58:18','用户名3','姓名3','13823888883','收货地址3','备注3',3,3,3,'宇宙银河系地球3号'),(94,'2023-05-11 03:58:18','4444444444','商品名称4','商品分类4',4,4,4,'2023-05-11 11:58:18','用户名4','姓名4','13823888884','收货地址4','备注4',4,4,4,'宇宙银河系地球4号'),(95,'2023-05-11 03:58:18','5555555555','商品名称5','商品分类5',5,5,5,'2023-05-11 11:58:18','用户名5','姓名5','13823888885','收货地址5','备注5',5,5,5,'宇宙银河系地球5号'),(96,'2023-05-11 03:58:18','6666666666','商品名称6','商品分类6',6,6,6,'2023-05-11 11:58:18','用户名6','姓名6','13823888886','收货地址6','备注6',6,6,6,'宇宙银河系地球6号'),(97,'2023-05-11 03:58:18','7777777777','商品名称7','商品分类7',7,7,7,'2023-05-11 11:58:18','用户名7','姓名7','13823888887','收货地址7','备注7',7,7,7,'宇宙银河系地球7号'),(98,'2023-05-11 03:58:18','8888888888','商品名称8','商品分类8',8,8,8,'2023-05-11 11:58:18','用户名8','姓名8','13823888888','收货地址8','备注8',8,8,8,'宇宙银河系地球8号');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshang` varchar(200) NOT NULL COMMENT '供应商',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (81,'2023-05-11 03:58:18','供应商1','地址1','联系电话1','负责人1','职务1'),(82,'2023-05-11 03:58:18','供应商2','地址2','联系电话2','负责人2','职务2'),(83,'2023-05-11 03:58:18','供应商3','地址3','联系电话3','负责人3','职务3'),(84,'2023-05-11 03:58:18','供应商4','地址4','联系电话4','负责人4','职务4'),(85,'2023-05-11 03:58:18','供应商5','地址5','联系电话5','负责人5','职务5'),(86,'2023-05-11 03:58:18','供应商6','地址6','联系电话6','负责人6','职务6'),(87,'2023-05-11 03:58:18','供应商7','地址7','联系电话7','负责人7','职务7'),(88,'2023-05-11 03:58:18','供应商8','地址8','联系电话8','负责人8','职务8');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kuweixinxi`
--

DROP TABLE IF EXISTS `kuweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kuweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cangkubianhao` varchar(200) NOT NULL COMMENT '仓库编号',
  `cangkuweizhi` varchar(200) DEFAULT NULL COMMENT '仓库位置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cangkubianhao` (`cangkubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='库位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kuweixinxi`
--

LOCK TABLES `kuweixinxi` WRITE;
/*!40000 ALTER TABLE `kuweixinxi` DISABLE KEYS */;
INSERT INTO `kuweixinxi` VALUES (31,'2023-05-11 03:58:18','仓库编号1','仓库位置1'),(32,'2023-05-11 03:58:18','仓库编号2','仓库位置2'),(33,'2023-05-11 03:58:18','仓库编号3','仓库位置3'),(34,'2023-05-11 03:58:18','仓库编号4','仓库位置4'),(35,'2023-05-11 03:58:18','仓库编号5','仓库位置5'),(36,'2023-05-11 03:58:18','仓库编号6','仓库位置6'),(37,'2023-05-11 03:58:18','仓库编号7','仓库位置7'),(38,'2023-05-11 03:58:18','仓库编号8','仓库位置8');
/*!40000 ALTER TABLE `kuweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rukuxinxi`
--

DROP TABLE IF EXISTS `rukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `rukuleixing` varchar(200) DEFAULT NULL COMMENT '入库类型',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  `beizhu` longtext COMMENT '备注',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='入库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rukuxinxi`
--

LOCK TABLES `rukuxinxi` WRITE;
/*!40000 ALTER TABLE `rukuxinxi` DISABLE KEYS */;
INSERT INTO `rukuxinxi` VALUES (61,'2023-05-11 03:58:18','订单编号1','1111111111','商品名称1','商品分类1','品牌1','采购入库','规格1',1,'供应商1','备注1','2023-05-11 11:58:18'),(62,'2023-05-11 03:58:18','订单编号2','2222222222','商品名称2','商品分类2','品牌2','采购入库','规格2',2,'供应商2','备注2','2023-05-11 11:58:18'),(63,'2023-05-11 03:58:18','订单编号3','3333333333','商品名称3','商品分类3','品牌3','采购入库','规格3',3,'供应商3','备注3','2023-05-11 11:58:18'),(64,'2023-05-11 03:58:18','订单编号4','4444444444','商品名称4','商品分类4','品牌4','采购入库','规格4',4,'供应商4','备注4','2023-05-11 11:58:18'),(65,'2023-05-11 03:58:18','订单编号5','5555555555','商品名称5','商品分类5','品牌5','采购入库','规格5',5,'供应商5','备注5','2023-05-11 11:58:18'),(66,'2023-05-11 03:58:18','订单编号6','6666666666','商品名称6','商品分类6','品牌6','采购入库','规格6',6,'供应商6','备注6','2023-05-11 11:58:18'),(67,'2023-05-11 03:58:18','订单编号7','7777777777','商品名称7','商品分类7','品牌7','采购入库','规格7',7,'供应商7','备注7','2023-05-11 11:58:18'),(68,'2023-05-11 03:58:18','订单编号8','8888888888','商品名称8','商品分类8','品牌8','采购入库','规格8',8,'供应商8','备注8','2023-05-11 11:58:18');
/*!40000 ALTER TABLE `rukuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (41,'2023-05-11 03:58:18','商品分类1'),(42,'2023-05-11 03:58:18','商品分类2'),(43,'2023-05-11 03:58:18','商品分类3'),(44,'2023-05-11 03:58:18','商品分类4'),(45,'2023-05-11 03:58:18','商品分类5'),(46,'2023-05-11 03:58:18','商品分类6'),(47,'2023-05-11 03:58:18','商品分类7'),(48,'2023-05-11 03:58:18','商品分类8');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `beizhu` longtext COMMENT '备注',
  `cangkubianhao` varchar(200) DEFAULT NULL COMMENT '仓库编号',
  `cangkuweizhi` varchar(200) DEFAULT NULL COMMENT '仓库位置',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (51,'2023-05-11 03:58:18','1111111111','商品名称1','商品分类1','品牌1','规格1',1,1,'备注1','仓库编号1','仓库位置1','供应商1'),(52,'2023-05-11 03:58:18','2222222222','商品名称2','商品分类2','品牌2','规格2',2,2,'备注2','仓库编号2','仓库位置2','供应商2'),(53,'2023-05-11 03:58:18','3333333333','商品名称3','商品分类3','品牌3','规格3',3,3,'备注3','仓库编号3','仓库位置3','供应商3'),(54,'2023-05-11 03:58:18','4444444444','商品名称4','商品分类4','品牌4','规格4',4,4,'备注4','仓库编号4','仓库位置4','供应商4'),(55,'2023-05-11 03:58:18','5555555555','商品名称5','商品分类5','品牌5','规格5',5,5,'备注5','仓库编号5','仓库位置5','供应商5'),(56,'2023-05-11 03:58:18','6666666666','商品名称6','商品分类6','品牌6','规格6',6,6,'备注6','仓库编号6','仓库位置6','供应商6'),(57,'2023-05-11 03:58:18','7777777777','商品名称7','商品分类7','品牌7','规格7',7,7,'备注7','仓库编号7','仓库位置7','供应商7'),(58,'2023-05-11 03:58:18','8888888888','商品名称8','商品分类8','品牌8','规格8',8,8,'备注8','仓库编号8','仓库位置8','供应商8');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'工号1','yuangong','员工','outtj0ena1f8344sremckoiw8eq58o8m','2023-05-11 03:59:33','2023-05-11 04:59:34');
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-05-11 03:58:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliuyunshu`
--

DROP TABLE IF EXISTS `wuliuyunshu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuliuyunshu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `danjia` float NOT NULL COMMENT '单价',
  `zongjia` float NOT NULL COMMENT '总价',
  `xiadanriqi` varchar(200) NOT NULL COMMENT '下单日期',
  `beizhu` longtext COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `shouhuodizhi` varchar(200) NOT NULL COMMENT '收货地址',
  `wuliuzhuizong` longtext COMMENT '物流追踪',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='物流运输';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliuyunshu`
--

LOCK TABLES `wuliuyunshu` WRITE;
/*!40000 ALTER TABLE `wuliuyunshu` DISABLE KEYS */;
INSERT INTO `wuliuyunshu` VALUES (101,'2023-05-11 03:58:18','订单编号1','商品名称1','商品分类1',1,1,1,'下单日期1','备注1','用户名1','姓名1','13823888881','收货地址1','物流追踪1','2023-05-11 11:58:18',1),(102,'2023-05-11 03:58:18','订单编号2','商品名称2','商品分类2',2,2,2,'下单日期2','备注2','用户名2','姓名2','13823888882','收货地址2','物流追踪2','2023-05-11 11:58:18',2),(103,'2023-05-11 03:58:18','订单编号3','商品名称3','商品分类3',3,3,3,'下单日期3','备注3','用户名3','姓名3','13823888883','收货地址3','物流追踪3','2023-05-11 11:58:18',3),(104,'2023-05-11 03:58:18','订单编号4','商品名称4','商品分类4',4,4,4,'下单日期4','备注4','用户名4','姓名4','13823888884','收货地址4','物流追踪4','2023-05-11 11:58:18',4),(105,'2023-05-11 03:58:18','订单编号5','商品名称5','商品分类5',5,5,5,'下单日期5','备注5','用户名5','姓名5','13823888885','收货地址5','物流追踪5','2023-05-11 11:58:18',5),(106,'2023-05-11 03:58:18','订单编号6','商品名称6','商品分类6',6,6,6,'下单日期6','备注6','用户名6','姓名6','13823888886','收货地址6','物流追踪6','2023-05-11 11:58:18',6),(107,'2023-05-11 03:58:18','订单编号7','商品名称7','商品分类7',7,7,7,'下单日期7','备注7','用户名7','姓名7','13823888887','收货地址7','物流追踪7','2023-05-11 11:58:18',7),(108,'2023-05-11 03:58:18','订单编号8','商品名称8','商品分类8',8,8,8,'下单日期8','备注8','用户名8','姓名8','13823888888','收货地址8','物流追踪8','2023-05-11 11:58:18',8);
/*!40000 ALTER TABLE `wuliuyunshu` ENABLE KEYS */;
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
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-05-11 03:58:18','用户名1','姓名1','123456','男','13823888881'),(12,'2023-05-11 03:58:18','用户名2','姓名2','123456','男','13823888882'),(13,'2023-05-11 03:58:18','用户名3','姓名3','123456','男','13823888883'),(14,'2023-05-11 03:58:18','用户名4','姓名4','123456','男','13823888884'),(15,'2023-05-11 03:58:18','用户名5','姓名5','123456','男','13823888885'),(16,'2023-05-11 03:58:18','用户名6','姓名6','123456','男','13823888886'),(17,'2023-05-11 03:58:18','用户名7','姓名7','123456','男','13823888887'),(18,'2023-05-11 03:58:18','用户名8','姓名8','123456','男','13823888888');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2023-05-11 03:58:18','工号1','姓名1','123456','男','13823888881','upload/yuangong_touxiang1.jpg'),(22,'2023-05-11 03:58:18','工号2','姓名2','123456','男','13823888882','upload/yuangong_touxiang2.jpg'),(23,'2023-05-11 03:58:18','工号3','姓名3','123456','男','13823888883','upload/yuangong_touxiang3.jpg'),(24,'2023-05-11 03:58:18','工号4','姓名4','123456','男','13823888884','upload/yuangong_touxiang4.jpg'),(25,'2023-05-11 03:58:18','工号5','姓名5','123456','男','13823888885','upload/yuangong_touxiang5.jpg'),(26,'2023-05-11 03:58:18','工号6','姓名6','123456','男','13823888886','upload/yuangong_touxiang6.jpg'),(27,'2023-05-11 03:58:18','工号7','姓名7','123456','男','13823888887','upload/yuangong_touxiang7.jpg'),(28,'2023-05-11 03:58:18','工号8','姓名8','123456','男','13823888888','upload/yuangong_touxiang8.jpg');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-12 11:23:06
