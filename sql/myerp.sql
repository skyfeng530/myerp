/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.19 : Database - myerp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myerp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myerp`;

/*Table structure for table `device` */

DROP TABLE IF EXISTS `device`;

CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceName` varchar(40) NOT NULL,
  `deviceVersion` varchar(20) NOT NULL,
  `deviceType` varchar(20) NOT NULL,
  `deviceCount` int(11) NOT NULL,
  `ischeckout` int(11) NOT NULL,
  `manufacturers` varchar(100) DEFAULT NULL,
  `manufacturersPhone` varchar(30) DEFAULT NULL,
  `productDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `outDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deviceStatus` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `device` */

insert  into `device`(`id`,`deviceName`,`deviceVersion`,`deviceType`,`deviceCount`,`ischeckout`,`manufacturers`,`manufacturersPhone`,`productDate`,`outDate`,`deviceStatus`,`remark`) values (4,'电阻','v0001','0',300,0,'利尔达','13888888888','2015-06-13 16:50:41','2015-06-10 21:57:40','0','用于………………'),(5,'显示器','050120001150112','1',23,1,'三星','13999999999','2015-03-13 12:57:37','2017-03-13 12:57:37','1','sdvsdvsdvds'),(7,'主板','v111110909','1',13,0,'技嘉','02988888888','2015-03-13 12:57:37','2017-03-13 12:57:37','0','aaaaaaaaaaaaaaa');

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `action` varchar(30) DEFAULT NULL,
  `actionTime` varchar(30) DEFAULT NULL,
  `userIP` varchar(30) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `log` */

insert  into `log`(`id`,`username`,`module`,`action`,`actionTime`,`userIP`,`operTime`) values (1,'admin','资源管理','update角色的权限','117','10.108.1.58','2015-06-08 19:21:58'),(2,'admin','资源管理','update角色的权限','54','10.108.1.58','2015-06-08 19:21:58'),(3,'admin','角色管理','update用户的角色','66','192.168.1.104','2015-06-08 19:21:58'),(4,'admin','资源管理','update角色的权限','163','192.168.1.104','2015-06-08 23:25:20'),(5,'admin','资源管理','update角色的权限','163','192.168.1.104','2015-06-08 23:26:05'),(6,'admin','资源管理','update角色的权限','107','192.168.1.104','2015-06-09 21:38:48'),(7,'admin','角色管理','update用户的角色','5','192.168.1.104','2015-06-09 21:39:19'),(8,'admin','角色管理','update用户的角色','4','192.168.1.104','2015-06-09 21:39:29'),(9,'admin','用户管理','update操作','8','192.168.1.104','2015-06-09 21:40:09'),(10,'admin','角色管理','update用户的角色','25','192.168.1.104','2015-06-09 21:40:09'),(11,'admin','用户管理','update操作','4','192.168.1.104','2015-06-09 21:40:21'),(12,'admin','角色管理','update用户的角色','4','192.168.1.104','2015-06-09 21:40:21'),(13,'admin','资源管理','update角色的权限','29','192.168.1.104','2015-06-09 21:40:30'),(14,'test','角色管理','update用户的角色','5','192.168.1.104','2015-06-09 21:40:56'),(15,'admin','角色管理','update用户的角色','58','192.168.1.104','2015-06-09 21:41:43'),(16,'admin','角色管理','update用户的角色','3','192.168.1.104','2015-06-09 21:41:50'),(17,'admin','资源管理','update角色的权限','166','192.168.1.104','2015-06-09 22:01:57'),(18,'admin','资源管理','update角色的权限','147','192.168.1.104','2015-06-09 22:04:00'),(19,'test','资源管理','update角色的权限','66','192.168.1.104','2015-06-09 22:25:02'),(20,NULL,NULL,'save操作','-1434180998219',NULL,'2015-06-13 15:36:38'),(21,'admin','用户管理','save操作','76','192.168.0.101','2015-06-13 15:39:02'),(22,NULL,NULL,'save操作','-1434182270821',NULL,'2015-06-13 15:57:50'),(23,NULL,NULL,'save操作','-1434182299046',NULL,'2015-06-13 15:58:19'),(24,NULL,NULL,'save操作','-1434182589706',NULL,'2015-06-13 16:03:09'),(25,NULL,NULL,'save操作','-1434182615611',NULL,'2015-06-13 16:03:35'),(26,NULL,NULL,'save操作','-1434185202623',NULL,'2015-06-13 16:46:42'),(27,'admin',NULL,'save操作','4','192.168.0.101','2015-06-13 16:47:04'),(28,NULL,NULL,'save操作','-1434186372155',NULL,'2015-06-13 17:06:12'),(29,'admin',NULL,'save操作','6','192.168.0.101','2015-06-13 17:07:52'),(30,NULL,'用户管理','delete操作','-1434203880040',NULL,'2015-06-13 21:58:00'),(31,NULL,'用户管理','delete操作','-1434205838767',NULL,'2015-06-13 22:30:38'),(32,NULL,'用户管理','delete操作','-1434207715405',NULL,'2015-06-13 23:01:55'),(33,'admin',NULL,'delete操作','172','192.168.1.104','2015-06-13 23:04:05'),(34,NULL,NULL,'save操作','-1434210585289',NULL,'2015-06-13 23:49:45'),(35,NULL,NULL,'save操作','-1434210656783',NULL,'2015-06-13 23:50:56'),(36,'admin',NULL,'save操作','48','192.168.1.104','2015-06-13 23:51:51');

/*Table structure for table `resources` */

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

/*Data for the table `resources` */

insert  into `resources`(`id`,`name`,`parentId`,`resKey`,`type`,`resUrl`,`level`,`description`) values (1,'用户管理',1010,'sys_user','0','user',1,'用户管理'),(2,'查询用户',1,'sys_user_find','1','/background/user/query.html',2,'查询用户'),(3,'新增用户',1,'sys_user_addUI','1','/background/user/addUI.html',3,'新增用户'),(4,'角色管理',1010,'sys_role','0','role',4,'角色管理'),(5,'角色列表',4,'sys_role_find','1','/background/role/query.html',5,'角色列表'),(6,'资源管理',1010,'sys_resc','0','resc',6,'资源管理'),(7,'资源列表',6,'sys_resc_find','1','/background/resources/query.html',7,'资源列表'),(8,'添加资源',6,'sys_resc_addUI','1','/background/resources/addUI.html',8,'添加资源'),(11,'新增角色',4,'sys_role_add','1','/background/role/addUI.html',5,'新增角色'),(22,'登陆信息管理',1010,'login','0','login',20,'登陆信息管理'),(23,'用户登录记录',22,'log_list','1','/background/userLoginList/query.html',21,'用户登录记录'),(39,'操作日志管理',1010,'log','0','log',30,'操作日志管理'),(40,'日志查询',39,'log_find','1','/background/log/query.html',31,'日志查询'),(41,'分配角色',2,'sys_user_fenpeirole','2','sys_user_fenpeirole',32,'分配角色'),(42,'分配权限',2,'sys_user_permissions','2','sys_user_permissions',33,'分配权限'),(43,'编辑用户',2,'sys_user_edit','2','/background/user/getById.html',34,'编辑'),(44,'删除用户',2,'sys_user_delete','2','/background/user/deleteById.html',36,'删除用户'),(45,'分配权限',2,'sys_role_permissions','2','sys_role_permissions',37,'分配权限'),(46,'显示详细信息',5,'sys_role_show','2','sys_role_show',39,'显示详细信息'),(47,'编辑角色',5,'sys_role_edit','2','/background/role/getById.html',40,'编辑角色'),(48,'删除角色',5,'sys_role_delete','2','/background/role/deleteById.html',41,'删除角色'),(49,'显示详细信息',7,'sys_res_show','2','sys_res_show',43,'显示详细信息'),(50,'编辑权限资源',7,'sys_res_edit','2','/background/resources/getById.html',44,'编辑权限资源'),(51,'删除权限资源',7,'sys_res_delete','2','/background/resources/deleteById.html',45,'删除权限资源'),(52,'设备管理',1010,'device','0','device',50,'设备管理'),(53,'设备列表',52,'device_manager','1','/background/device/list.html',51,'设备列表'),(61,'合同管理',1010,'plan','0','plan',60,'合同管理'),(62,'设备列表',61,'plan_manager','1','/background/noDevelop.html',61,'设备列表'),(71,'生产管理',1010,'task','0','plan',70,'生产管理'),(72,'我的任务',71,'task_manager','1','/background/noDevelop.html',71,'我的任务'),(73,'归档任务',71,'task_manager','1','/background/noDevelop.html',72,'归档任务'),(81,'统计分析',1010,'statistics','0','statistics',80,'统计分析'),(82,'报表分析',81,'statistics_manager','1','/background/noDevelop.html',81,'设备列表');

/*Table structure for table `resources_role` */

DROP TABLE IF EXISTS `resources_role`;

CREATE TABLE `resources_role` (
  `resc_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`resc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resources_role` */

insert  into `resources_role`(`resc_id`,`role_id`) values (1,1),(1,3),(2,1),(2,3),(3,1),(3,3),(4,1),(4,3),(5,1),(5,3),(6,1),(6,3),(7,1),(7,3),(8,1),(8,3),(11,1),(11,3),(18,1),(18,3),(19,1),(19,3),(20,1),(20,3),(21,1),(21,3),(22,1),(22,3),(23,1),(23,3),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(52,3),(52,5),(53,1),(53,3),(53,5),(61,1),(61,5),(62,1),(62,5),(71,1),(71,5),(72,1),(72,5),(73,1),(73,5),(81,1),(81,5),(82,1),(82,5),(1010,1),(1010,3),(1010,5);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`roleKey`,`description`,`enable`) values (1,'用户角色','ROLE_USER','用户角色',1),(3,'删除','ROLE_DELETE','删除',0),(5,'55','55','55',1);

/*Table structure for table `serverinfo` */

DROP TABLE IF EXISTS `serverinfo`;

CREATE TABLE `serverinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpuUsage` varchar(255) DEFAULT NULL,
  `setCpuUsage` varchar(255) DEFAULT NULL,
  `jvmUsage` varchar(255) DEFAULT NULL,
  `setJvmUsage` varchar(255) DEFAULT NULL,
  `ramUsage` varchar(255) DEFAULT NULL,
  `setRamUsage` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `serverinfo` */

insert  into `serverinfo`(`id`,`cpuUsage`,`setCpuUsage`,`jvmUsage`,`setJvmUsage`,`ramUsage`,`setRamUsage`,`email`,`operTime`,`mark`) values (1,'9.3','20','64.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(2,'0.8','20','60.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(3,'1.5','20','59.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(4,'0.7','20','57.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(5,'2.3','20','57.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(6,'17.9','20','57.0','80','77.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：77.0%,超出预设值  60%</font>');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `userPassword` varchar(40) DEFAULT NULL,
  `userNickname` varchar(20) DEFAULT NULL,
  `userRealname` varchar(20) DEFAULT NULL,
  `userAge` int(11) DEFAULT NULL,
  `userSex` varchar(10) DEFAULT NULL,
  `userAddress` varchar(100) DEFAULT NULL,
  `userPhone` varchar(30) DEFAULT NULL,
  `userMail` varchar(45) DEFAULT NULL,
  `userQQ` varchar(30) DEFAULT NULL,
  `regTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastLogintime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `level` int(11) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `branchBank` varchar(100) DEFAULT NULL,
  `subbranchBank` varchar(100) DEFAULT NULL,
  `openBankName` varchar(100) DEFAULT NULL,
  `bankAccountName` varchar(100) DEFAULT NULL,
  `bankAccount` varchar(100) DEFAULT NULL,
  `accountType` varchar(20) DEFAULT NULL,
  `pay` varchar(20) DEFAULT NULL,
  `mark` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `parentNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`,`userPassword`,`userNickname`,`userRealname`,`userAge`,`userSex`,`userAddress`,`userPhone`,`userMail`,`userQQ`,`regTime`,`lastLogintime`,`level`,`province`,`city`,`bankName`,`branchBank`,`subbranchBank`,`openBankName`,`bankAccountName`,`bankAccount`,`accountType`,`pay`,`mark`,`status`,`parentNumber`) values (1,'admin','admin','admin','admin',10,'男','枯霜下要孤','0253526','jnfjfjj@163.com','32432','2015-06-08 19:21:58','0000-00-00 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'test','111111','7','7',7,'男','7','7','7','7','2015-06-09 21:40:21','0000-00-00 00:00:00',1,'7','7','7',NULL,'7',NULL,'7','7','企业账号','是','7','待审核',''),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-06-13 15:39:02','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values (1,1),(3,5),(4,1);

/*Table structure for table `userloginlist` */

DROP TABLE IF EXISTS `userloginlist`;

CREATE TABLE `userloginlist` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginIP` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`loginId`),
  KEY `FK_userloginlist` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;

/*Data for the table `userloginlist` */

insert  into `userloginlist`(`loginId`,`userId`,`loginTime`,`loginIP`) values (284,1,'2015-06-08 19:21:58','127.0.0.1'),(285,1,'2015-06-08 19:21:58','127.0.0.1'),(286,1,'2015-06-08 19:21:58','0:0:0:0:0:0:0:1'),(287,1,'2015-06-08 19:21:58','0:0:0:0:0:0:0:1'),(288,1,'2015-06-08 19:21:58','0:0:0:0:0:0:0:1'),(289,1,'2015-06-08 19:21:58','0:0:0:0:0:0:0:1'),(290,1,'2015-06-08 19:21:58','0:0:0:0:0:0:0:1'),(291,1,'2015-06-08 19:21:58','0:0:0:0:0:0:0:1'),(292,1,'2015-06-08 19:20:40','0:0:0:0:0:0:0:1'),(293,1,'2015-06-08 19:31:01','0:0:0:0:0:0:0:1'),(294,1,'2015-06-08 19:36:52','0:0:0:0:0:0:0:1'),(295,1,'2015-06-08 19:55:31','0:0:0:0:0:0:0:1'),(296,1,'2015-06-08 21:02:20','0:0:0:0:0:0:0:1'),(297,1,'2015-06-08 21:53:12','0:0:0:0:0:0:0:1'),(298,1,'2015-06-08 22:11:31','0:0:0:0:0:0:0:1'),(299,1,'2015-06-08 22:44:06','0:0:0:0:0:0:0:1'),(300,1,'2015-06-08 22:47:38','0:0:0:0:0:0:0:1'),(301,1,'2015-06-08 22:58:59','0:0:0:0:0:0:0:1'),(302,1,'2015-06-08 23:22:46','0:0:0:0:0:0:0:1'),(303,1,'2015-06-08 23:24:44','0:0:0:0:0:0:0:1'),(304,1,'2015-06-08 23:34:17','0:0:0:0:0:0:0:1'),(305,1,'2015-06-08 23:44:08','0:0:0:0:0:0:0:1'),(306,1,'2015-06-09 21:38:11','0:0:0:0:0:0:0:1'),(307,1,'2015-06-09 21:38:59','0:0:0:0:0:0:0:1'),(308,3,'2015-06-09 21:40:40','0:0:0:0:0:0:0:1'),(309,1,'2015-06-09 21:41:07','0:0:0:0:0:0:0:1'),(310,1,'2015-06-09 21:51:37','0:0:0:0:0:0:0:1'),(311,1,'2015-06-09 21:58:35','0:0:0:0:0:0:0:1'),(312,1,'2015-06-09 22:01:26','0:0:0:0:0:0:0:1'),(313,1,'2015-06-09 22:02:26','0:0:0:0:0:0:0:1'),(314,1,'2015-06-09 22:04:06','0:0:0:0:0:0:0:1'),(315,1,'2015-06-09 22:09:01','0:0:0:0:0:0:0:1'),(316,3,'2015-06-09 22:24:27','0:0:0:0:0:0:0:1'),(317,3,'2015-06-09 22:25:21','0:0:0:0:0:0:0:1'),(318,1,'2015-06-09 22:25:38','0:0:0:0:0:0:0:1'),(319,1,'2015-06-10 22:20:42','0:0:0:0:0:0:0:1'),(320,1,'2015-06-13 14:01:58','0:0:0:0:0:0:0:1'),(321,1,'2015-06-13 14:16:38','0:0:0:0:0:0:0:1'),(322,1,'2015-06-13 14:33:25','0:0:0:0:0:0:0:1'),(323,1,'2015-06-13 16:02:35','0:0:0:0:0:0:0:1'),(324,1,'2015-06-13 16:46:32','0:0:0:0:0:0:0:1'),(325,1,'2015-06-13 21:54:06','0:0:0:0:0:0:0:1'),(326,1,'2015-06-13 21:57:39','0:0:0:0:0:0:0:1'),(327,1,'2015-06-13 22:30:27','0:0:0:0:0:0:0:1'),(328,1,'2015-06-13 23:01:45','0:0:0:0:0:0:0:1'),(329,1,'2015-06-13 23:21:01','0:0:0:0:0:0:0:1'),(330,1,'2015-06-13 23:21:38','0:0:0:0:0:0:0:1'),(331,1,'2015-06-13 23:23:08','0:0:0:0:0:0:0:1'),(332,1,'2015-06-13 23:26:59','0:0:0:0:0:0:0:1'),(333,1,'2015-06-13 23:28:04','0:0:0:0:0:0:0:1'),(334,1,'2015-06-13 23:44:22','0:0:0:0:0:0:0:1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
