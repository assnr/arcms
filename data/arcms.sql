-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: arcms
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `newsName` varchar(255) NOT NULL,
  `newsAuthor` varchar(255) NOT NULL,
  `abstract` varchar(255) NOT NULL,
  `newsStatus` tinyint(1) NOT NULL,
  `newsImg` varchar(255) NOT NULL,
  `newsLook` varchar(255) NOT NULL,
  `newsTop` tinyint(1) NOT NULL,
  `newsTime` varchar(45) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (16,'谈谈未来二十年','阿。sir','',0,'/arphp-layuicms/arcms/upload/main/20180319/b278c7eb70b12fbf5750dfe48de82149.png','',0,'2018-03-19 16:14:21','未来二十年我想公司应该上市了<img src=\\\"http://localhost/arphp-layuicms/arcms/assets/layui/images/face/50.gif\\\" alt=\\\"[熊猫]\\\">，&nbsp; &nbsp;“喂喂，该醒醒了”， “奥，公交又坐过站了”'),(17,'如果你想了解学习一门新的框架','阿。sir','',0,'','',0,'2018-03-19 16:13:20','那么arphp将非常适合你'),(18,'比特币遭遇跳崖式暴跌，来看黑客导演的这场烧脑大片（全解读）','阿。sir','',0,'','',1,'2018-03-19 16:12:40','<p><span>想着今天早上起来，应该是关于3.8妇女节的各种文案刷屏，却又一次被比特币抢了头条，比特币一夜暴跌10%，再次跌破10000美元，而几乎在昨天深夜同一时间全球第二大虚拟货币交易平台币安（Binance）疑似遭受黑客攻击，而这剧情始末，更像是黑客主导的一场烧脑大片。</span></p>'),(19,'315黑名单之夜，信息安全谁能逃过此劫？','阿。sir','',0,'','',0,'2018-03-19 16:12:16','<p><span>今年315晚会的主题是“品质消费，美好生活”，唤醒消费者权益意识，规范市场秩序依然是不变的宗旨。</span><span>互联网已经深入人们的日常生活，与之相关的安全信息领域也逐渐成为315晚会重点关注对象。</span><span>2017年的315晚会上，互动百科虚假广告、科视公司收集学生信息以及不安全的密码等消费预警。由此也可以发现，普通消费者对于个人隐私、信息保护等方面的安全意识比较薄弱，2017年依旧衍生了不少风波，又会有哪些案例或者公司成为315重点照顾对象呢？</span></p>'),(20,'PHP+MySQL，语言优势及特点','阿。sir','',0,'','',0,'2018-03-19 16:09:06','<ul><li><span>PHP+MySQL，LAMP模式</span></li></ul><p align=\\\"left\\\" style=\\\"text-align: justify;\\\">　　采用PHP+MySQL进行开发，基于Web开发的最佳组合“LAMP模式”——（Linux 操作系统、Apache网络服务器、MySQL 数据库、PHP语言）。</p><ul><li><span>技术成熟、开发迅速</span></li></ul><p style=\\\"text-align: justify;\\\">PHP+MySQL是目前最为成熟、稳定、安全的企业级WEB开发技术，广泛应用于超大型站点（百度前端使用PHP，可输入:www.baidu.com/index.php）。其成熟的架构、稳定的性能、嵌入式开发方式、简洁的语法，使得系统能迅速开发。</p><ul><li><span>高效执行、安全可靠</span></li></ul><p style=\\\"text-align: justify;\\\">　　PHP结合MySQL运行于Linux平台，执行效率相对其他语言更高；安全性较NT（Windows）平台更强。PHP在安全性的性能表现不俗，帐号、密码以MD5数据加密技术的采用，确保数据帐号信息安全。关键数据采用多层加密技术，有效保证数据安全。</p><ul><li><span>跨平台移植、无附件成本</span></li></ul><p style=\\\"text-align: justify;\\\">PHP+MySQL可跨UNIX、Linux、Windows NT等平台运行，降低了系统及数据迁移的风险。如果架设Linux / UNIX服务器，可节约操作系统费用，降低了软件成本。</p><h1><a name=\\\"t2\\\"></a><br></h1>'),(21,'人为什么要学习','阿。sir','',0,'','',1,'2018-03-19 16:07:47','大概人只有不断的学习，才能避免掉很多坑吧'),(22,'请不要随便删除之前有的文章，谢谢','阿。sir','',0,'','',1,'2018-03-19 16:16:14','不要删除我 thanks<img src=\\\"http://localhost/arphp-layuicms/arcms/assets/layui/images/face/14.gif\\\" alt=\\\"[亲亲]\\\">');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'admin','baab42a126a685b39b19a791195b7a66');
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

-- Dump completed on 2018-03-19 16:24:50
