/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.6.17 : Database - ssmschool
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmschool` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmschool`;

/*Table structure for table `course_detail_info` */

DROP TABLE IF EXISTS `course_detail_info`;

CREATE TABLE `course_detail_info` (
  `de_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `de_score` float DEFAULT '-1',
  `de_status` int(11) DEFAULT '0',
  PRIMARY KEY (`de_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course_detail_info` */

/*Table structure for table `course_info` */

DROP TABLE IF EXISTS `course_info`;

CREATE TABLE `course_info` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_code` varchar(255) DEFAULT 'KD3555',
  `co_name` varchar(255) DEFAULT NULL,
  `co_status` int(11) DEFAULT '0',
  `co_credit` double(11,1) DEFAULT NULL,
  `co_number` int(11) DEFAULT NULL,
  `co_time` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT '',
  `co_address` varchar(255) DEFAULT '',
  `co_selected` int(11) DEFAULT '0',
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `course_info` */

insert  into `course_info`(`co_id`,`co_code`,`co_name`,`co_status`,`co_credit`,`co_number`,`co_time`,`teacher_id`,`teacher_name`,`co_address`,`co_selected`) values (1,'KD35520','大学物理',3,2.0,100,'周一第3,4节{第1-16周}',9001,'杜兰特','6jxC402',0),(2,'KD35521','英语4-写作',3,2.0,100,'周一第6,7节{第1-16周}',9001,'杜兰特','6jxD209',0),(3,'KD35522','体育4',3,2.0,100,'周一第8,9节{第1-16周}',9001,'杜兰特','无',0),(4,'KD35523','PHP程序设计',3,3.0,100,'周二第6,7,8节{第1-16周}',9001,'杜兰特','6jxB401',0),(5,'KD35524','概率论与数理统计',3,3.0,100,'周四第3,4节{第1-16周}',9001,'杜兰特','6jxB209',0),(6,'KD35525','操作系统',3,4.0,100,'周三第3,4节{第1-16周}',9001,'杜兰特','6jxD306',0),(7,'KD35526','操作系统课程实践',3,2.0,100,'周三第6,7节{第01-16周}',9001,'杜兰特','6jxB202',0),(8,'KD35527','高级程序设计（C++）',3,3.0,100,'周四第6,7,8节{第1-16周}',9001,'杜兰特','6jxB301',0),(9,'KD35528','线性代数',3,2.0,100,'周五第6,7节{第1-16周}',9001,'杜兰特','6jxB109',0),(10,'KD35529','大学物理实验',3,2.0,100,'周五第10,11节{第1-16周}',9001,'杜兰特','无',0),(11,'KD35530','计算机接口技术',3,2.0,100,'周一第1,2节{第1-17周}',9001,'杜兰特','6jxB401',0),(12,'KD35531','C语言程序设计',3,3.0,100,'周一第3,4,5节{第1-17周}',9001,'杜兰特','6jxB305',0),(13,'KD35532','Android高级应用开发',3,2.0,100,'周一第6,7节{第1-17周}',9001,'杜兰特','6jxB213',0),(14,'KD35533','Java EE程序设计课程实践',3,2.0,100,'周一第10,11节{第1-17周}',9001,'杜兰特','6jxB102',0),(15,'KD35534','英语3-阅读',3,2.0,100,'周二第1,2节{第1-17周}',9001,'杜兰特','6jxE104',0),(16,'KD35535','Java EE程序设计',3,2.0,100,'周二第3,4,5节{第1-17周}',9001,'杜兰特','6jxB301',0),(17,'KD35536','Html5移动开发',3,3.0,100,'周二第6,7节{第1-17周}',9001,'杜兰特','6jxB409',0),(18,'KD35537','数据结构',3,3.0,100,'周四第3,4,5节{第1-17周}',9001,'杜兰特','6jxB102',0),(19,'KD35538','思想道德修养与法律基础',3,2.0,100,'周五第1,2节{第1-17周}',9001,'杜兰特','6jxB213',0),(20,'KD35539','数据结构课程实践',3,3.0,100,'周五第6,7节{第1-17周}',9001,'杜兰特','6jxB102',0),(21,'KD35540','JSP程序设计课程实践',3,2.0,100,'周一第3,4节{第1-16周}',9001,'杜兰特','6jxC405',0),(22,'KD35541','离散数学与编译原理课程实践',3,2.0,100,'周一第6,7节{第1-8周}',9001,'杜兰特','6jxB401',0),(23,'KD35542','数据库应用与管理课程实践',3,2.0,100,'周一第10,11节{第1-16周|双周}',9001,'杜兰特','6jxC413',0),(24,'KD35543','英语2-阅读',3,2.0,0,'周二第1,2节{第1-16周}',9002,'张三','6jxD405',0),(25,'KD35544','数字电路（乙）',3,2.0,100,'周二第3,4节{第1-16周}',9001,'杜兰特','6jxE304',0),(26,'KD35545','数据库系统应用与管理',3,3.0,100,'周二第6,7节{第1-16周}',9001,'杜兰特','6jxC402',0),(27,'KD35546','大学生心理健康教育2',3,2.0,100,'周二第10,11节{第1-16周|双周}',9001,'杜兰特','6jxC209',0),(28,'KD35547','微积分2',3,2.0,100,'周三第1,2节{第1-16周}',9001,'杜兰特','6jxB401',0),(29,'KD35548','WEB前端程序设计基础',3,3.0,100,'周三第3,4,5节{第1-16周}',9001,'杜兰特','6jxC402',0),(30,'KD35549','JSP程序设计',3,2.0,100,'周四第1,2节{第1-16周}',9001,'杜兰特','6jxE304',0),(31,'KD35550','离散数学与编译原理',3,3.0,100,'周四第6,7节{第1-16周}',9001,'杜兰特','6jxB305',0),(32,'KD35551','Android开发基础课程实践',3,2.0,100,'周五第1,2节{第1-16周|单周}',9001,'杜兰特','6jxC413',0),(33,'KD35552','Android开发基础',3,3.0,100,'周五第6,7节{第1-16周}',9001,'杜兰特','6jxC413',0),(34,'KD35553','计算机导论',3,2.0,100,'周一第6,7节{第1-16周}',9001,'杜兰特','6jxB305',0),(35,'KD35554','英语1 -阅读',3,2.0,100,'周二第1,2节{第1-16周}',9001,'杜兰特','6jxC213',0),(36,'KD35555','微积分1',3,2.0,100,'周二第3,4节{第1-16周}',9001,'杜兰特','6jxB309',0),(37,'KD35556','网页与网站开发基础',3,3.0,100,'周二第6,7节{第1-16周}',9001,'杜兰特','6jxB401',0),(38,'KD35557','中国近现代史纲要',3,2.0,100,'周三第1,2节{第1-16周}',9001,'杜兰特','6jxB305',0),(39,'KD35558','程序设计基础(JAVA语言)',3,6.0,100,'周三第3,4,5,6,7,8节{第1-16周}',9001,'杜兰特','6jxB310',0),(40,'KD35559','程序设计基础课程实践(JAVA）',3,2.0,100,'周四第1,2节{第1-16周}',9001,'杜兰特','6jxB310',0),(41,'KD35560','英语1 -视听说 ',3,2.0,100,'周五第1,2节{第1-16周}',9001,'杜兰特','6jxD401',0),(45,'KD3555','计算机组装实践',3,2.0,100,'周五第8,9节{第1-16周}',9001,'杜兰特','6jxC209',0),(46,'KD3555','计算机组装',3,2.0,100,'周五第8,9节{第1-16周}',9001,'杜兰特','6jxC209',0),(47,'KD3555','计算机组装哈哈哈',3,2.0,100,'周五第8,9节{第1-16周}',9001,'杜兰特','6jxC209',0);

/*Table structure for table `log_info` */

DROP TABLE IF EXISTS `log_info`;

CREATE TABLE `log_info` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `root_id` int(11) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `log_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `log_info` */

/*Table structure for table `menu_info` */

DROP TABLE IF EXISTS `menu_info`;

CREATE TABLE `menu_info` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_url` varchar(255) DEFAULT NULL,
  `m_title` varchar(255) DEFAULT NULL,
  `m_status` int(11) DEFAULT '1',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `menu_info` */

insert  into `menu_info`(`m_id`,`m_url`,`m_title`,`m_status`) values (1,'/ssm_index.action','进入主页请求',1),(2,'/ssm_login.action','进入登陆页面',1),(3,'/ssm_checklogin.action','登录的表单提交',1),(4,'/ssm_exit.action','退出登录',1),(5,'/ssm_registerinto.action','进入注册请求',1),(6,'/ssm_register.action','注册',1),(7,'/ssm_personindex.action','进入个人中心首页',1),(8,'/ssm_person_data.action','进入个人资料',1),(9,'/ssm_allcourse.action','进入选课系统',1),(10,'/ssm_paging.action','分页',1),(11,'/ssm_choose_course.action','选课',1),(12,'/ssm_delete_course.action','退课',1),(13,'/ssm_Timetable.action','我的课表',1),(14,'/ssm_teacherselection.action','选课情况',1),(15,'/ssm_showStudent.action','查看选课学生名单',1),(16,'/ssm_myreport.action','我的成绩单',1),(17,'/ssm_savescore.action','录入成绩',1),(18,'/root_opencourse.action','开启选课入口',1),(19,'/root_opencourseform.action','开启选课入口form',1),(20,'/root_insertcourse.action','进入课程信息',1),(21,'/root_savecourse.action','添加课程form',1),(22,'/root_deletecourse.action','删除课程',1),(23,'/root_updatecourse.action','修改课程',1),(24,'/root_shenheregister.action','进入审核用户页面',1),(25,'/root_shenheuser.action','审核用户提交',1),(26,'/root_usercenter.action','用户中心',1),(27,'/root_insertuser.action','进入用户信息',1),(28,'/root_updateuser.action','更新用户',1),(29,'/root_updateuserfrom.action','更新用户form',1),(30,'/root_deleteuser.action','删除用户',1),(31,'/root_readycourse.action','开启准备选课按钮',1),(33,'/root_resetpassword.action','重置密码',1),(34,'/root_power.action','进入权限管理',1),(35,'/root_chulipower.action','处理权限启用或禁用',1);

/*Table structure for table `role_info` */

DROP TABLE IF EXISTS `role_info`;

CREATE TABLE `role_info` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` int(11) DEFAULT NULL,
  `m_id` int(11) DEFAULT NULL,
  `r_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

/*Data for the table `role_info` */

insert  into `role_info`(`r_id`,`user_type`,`m_id`,`r_status`) values (1,-1,1,1),(2,-1,2,1),(3,-1,3,1),(4,-1,5,1),(5,-1,6,1),(6,0,1,1),(7,0,2,1),(8,0,3,1),(9,0,4,1),(10,0,5,1),(11,0,6,1),(12,0,7,1),(13,0,8,1),(14,0,9,1),(15,0,10,1),(16,0,11,1),(17,0,12,1),(18,0,13,1),(19,0,16,1),(20,1,1,1),(21,1,2,1),(22,1,3,1),(23,1,4,1),(24,1,5,1),(25,1,6,1),(26,1,7,1),(27,1,8,1),(28,1,10,1),(29,1,13,1),(30,1,14,1),(31,1,15,1),(32,1,17,1),(33,2,1,1),(34,2,2,1),(35,2,3,1),(36,2,4,1),(37,2,5,1),(38,2,6,1),(39,2,7,1),(40,2,8,1),(41,2,9,1),(42,2,10,1),(43,2,18,1),(44,2,19,1),(45,2,20,1),(46,2,21,1),(47,2,22,1),(48,2,23,1),(49,2,24,1),(50,2,25,1),(51,2,26,1),(52,2,27,1),(53,2,28,1),(54,2,29,1),(55,2,30,1),(56,2,31,1),(57,2,33,1),(58,2,34,1),(60,2,35,1);

/*Table structure for table `root_info` */

DROP TABLE IF EXISTS `root_info`;

CREATE TABLE `root_info` (
  `user_code` int(11) NOT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT '2',
  `user_name` varchar(255) DEFAULT NULL,
  `user_sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `root_info` */

insert  into `root_info`(`user_code`,`user_password`,`user_image`,`user_type`,`user_name`,`user_sex`) values (111,'222','image/root.png',2,'姜少豪',0);

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `user_code` int(11) NOT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_sex` int(11) DEFAULT NULL,
  `user_classroom` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_major` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_info` */

insert  into `user_info`(`user_code`,`user_password`,`user_name`,`user_sex`,`user_classroom`,`user_image`,`user_major`,`school_name`,`school_code`,`user_type`,`user_status`) values (9001,'123','杜兰特',1,'四班','image/userperson.jpg','计算机','杭州电子科技大学信息工程学院','JT110',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
