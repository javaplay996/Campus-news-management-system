/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanxinwen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanxinwen` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanxinwen`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1的撒嘎嘎的','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-13 11:51:18'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-13 11:51:18'),(3,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-05-13 11:51:18'),(4,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-05-13 11:51:18'),(5,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-05-13 11:51:18'),(6,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-05-13 11:51:18'),(7,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-05-13 11:51:18'),(8,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-13 11:51:18'),(9,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-13 11:51:18'),(10,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-05-13 11:51:18'),(11,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-05-13 11:51:18'),(12,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-05-13 11:51:18'),(13,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-05-13 11:51:18'),(14,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2023-05-13 11:51:18'),(15,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2023-05-13 11:51:18'),(16,'news_erji_types','二级类型',1,'新闻类型1.1',1,NULL,'2023-05-13 11:51:18'),(17,'news_erji_types','二级类型',2,'新闻类型1.2',1,NULL,'2023-05-13 11:51:18'),(18,'news_erji_types','二级类型',3,'新闻类型2.1',2,NULL,'2023-05-13 11:51:18'),(19,'news_erji_types','二级类型',4,'新闻类型2.2',2,NULL,'2023-05-13 11:51:18'),(20,'news_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-13 11:51:18'),(21,'news_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-13 11:51:18'),(22,'news_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-13 11:51:18'),(24,'news_erji_types','二级类型',6,'新闻类型2.3',2,'','2023-05-13 12:03:39');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',169,3,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(2,'帖子标题2',1,NULL,'发布内容2',253,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(3,'帖子标题3',2,NULL,'发布内容3',120,3,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(4,'帖子标题4',2,NULL,'发布内容4',261,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(5,'帖子标题5',1,NULL,'发布内容5',40,2,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(6,'帖子标题6',3,NULL,'发布内容6',38,2,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(7,'帖子标题7',3,NULL,'发布内容7',385,3,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(8,'帖子标题8',2,NULL,'发布内容8',11,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(9,'帖子标题9',1,NULL,'发布内容9',485,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(10,'帖子标题10',3,NULL,'发布内容10',362,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(11,'帖子标题11',1,NULL,'发布内容11',199,2,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(12,'帖子标题12',1,NULL,'发布内容12',245,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(13,'帖子标题13',1,NULL,'发布内容13',83,3,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(14,'帖子标题14',2,NULL,'发布内容14',263,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01','2023-05-13 11:52:01'),(15,'帖子111',4,NULL,'<p>个第三个十多个十多个</p>',NULL,3,1,'2023-05-13 12:03:11',NULL,'2023-05-13 12:03:11'),(16,NULL,NULL,1,'勾搭勾搭上',15,NULL,2,'2023-05-13 12:03:53',NULL,'2023-05-13 12:03:53');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-05-13 11:52:01','公告详情1','2023-05-13 11:52:01'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-05-13 11:52:01','公告详情2','2023-05-13 11:52:01'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-05-13 11:52:01','公告详情3','2023-05-13 11:52:01'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-05-13 11:52:01','公告详情4','2023-05-13 11:52:01'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-05-13 11:52:01','公告详情5','2023-05-13 11:52:01'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-05-13 11:52:01','公告详情6','2023-05-13 11:52:01'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-05-13 11:52:01','公告详情7','2023-05-13 11:52:01'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-05-13 11:52:01','公告详情8','2023-05-13 11:52:01'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-05-13 11:52:01','公告详情9','2023-05-13 11:52:01'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-05-13 11:52:01','公告详情10','2023-05-13 11:52:01'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-05-13 11:52:01','公告详情11','2023-05-13 11:52:01'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-05-13 11:52:01','公告详情12','2023-05-13 11:52:01'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-05-13 11:52:01','公告详情13','2023-05-13 11:52:01'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-05-13 11:52:01','<p>公告详情14个第三个第三个</p>','2023-05-13 11:52:01');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_uuid_number` varchar(200) DEFAULT NULL COMMENT '新闻编号',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻照片',
  `news_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `news_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111',
  `news_erji_types` int(11) DEFAULT NULL COMMENT '二级类型 Search111',
  `news_clicknum` int(11) DEFAULT NULL COMMENT '新闻热度',
  `news_content` longtext COMMENT '新闻内容 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_uuid_number`,`news_photo`,`news_file`,`news_video`,`zan_number`,`cai_number`,`news_types`,`news_erji_types`,`news_clicknum`,`news_content`,`shangxia_types`,`insert_time`,`create_time`) values (1,'新闻名称1','1683949921927','upload/news1.jpg','upload/file.rar','upload/video.mp4',164,312,1,1,510,'新闻内容1',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(2,'新闻名称2','1683949921974','upload/news2.jpg','upload/file.rar','upload/video.mp4',79,449,1,1,423,'新闻内容2',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(3,'新闻名称3','1683949921890','upload/news3.jpg','upload/file.rar','upload/video.mp4',371,497,1,2,409,'新闻内容3',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(4,'新闻名称4','1683949921913','upload/news4.jpg','upload/file.rar','upload/video.mp4',27,333,1,2,178,'新闻内容4',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(5,'新闻名称5','1683949921907','upload/news5.jpg','upload/file.rar','upload/video.mp4',91,80,1,2,139,'新闻内容5',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(6,'新闻名称6','1683949921947','upload/news6.jpg','upload/file.rar','upload/video.mp4',174,424,1,2,198,'新闻内容6',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(7,'新闻名称7','1683949921963','upload/news7.jpg','upload/file.rar','upload/video.mp4',414,344,2,3,206,'新闻内容7',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(8,'新闻名称8','1683949921920','upload/news8.jpg','upload/file.rar','upload/video.mp4',203,469,2,3,151,'新闻内容8',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(9,'新闻名称9','1683949921977','upload/news9.jpg','upload/file.rar','upload/video.mp4',225,493,2,3,170,'新闻内容9',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(10,'新闻名称10','1683949921961','upload/news10.jpg','upload/file.rar','upload/video.mp4',415,409,2,3,321,'新闻内容10',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(11,'新闻名称11','1683949921920','upload/news11.jpg','upload/file.rar','upload/video.mp4',468,471,2,3,1,'新闻内容11',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(12,'新闻名称12','1683949921934','upload/news12.jpg','upload/file.rar','upload/video.mp4',320,224,2,3,251,'新闻内容12',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(13,'新闻名称13','1683949921895','upload/news13.jpg','upload/file.rar','upload/video.mp4',460,447,2,4,9,'新闻内容13',1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(14,'新闻名称14','1683949921944','upload/news14.jpg','upload/file.rar','upload/video.mp4',321,115,2,4,326,'新闻内容14',1,'2023-05-13 11:52:01','2023-05-13 11:52:01');

/*Table structure for table `news_collection` */

DROP TABLE IF EXISTS `news_collection`;

CREATE TABLE `news_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_id` int(11) DEFAULT NULL COMMENT '新闻',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `news_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='新闻收藏';

/*Data for the table `news_collection` */

insert  into `news_collection`(`id`,`news_id`,`yonghu_id`,`news_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(2,2,3,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(3,3,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(4,4,3,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(5,5,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(6,6,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(7,7,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(8,8,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(9,9,2,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(10,10,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(11,11,2,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(12,12,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(13,13,1,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(14,14,3,1,'2023-05-13 11:52:01','2023-05-13 11:52:01'),(15,1,4,2,'2023-05-13 12:00:16','2023-05-13 12:00:16'),(17,6,4,1,'2023-05-13 12:02:39','2023-05-13 12:02:39'),(18,5,4,1,'2023-05-13 12:02:41','2023-05-13 12:02:41'),(20,4,4,1,'2023-05-13 12:02:54','2023-05-13 12:02:54');

/*Table structure for table `news_liuyan` */

DROP TABLE IF EXISTS `news_liuyan`;

CREATE TABLE `news_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_id` int(11) DEFAULT NULL COMMENT '新闻',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `news_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='新闻留言';

/*Data for the table `news_liuyan` */

insert  into `news_liuyan`(`id`,`news_id`,`yonghu_id`,`news_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-05-13 11:52:01','回复信息1','2023-05-13 11:52:01','2023-05-13 11:52:01'),(2,2,2,'留言内容2','2023-05-13 11:52:01','回复信息2','2023-05-13 11:52:01','2023-05-13 11:52:01'),(3,3,1,'留言内容3','2023-05-13 11:52:01','回复信息3','2023-05-13 11:52:01','2023-05-13 11:52:01'),(4,4,3,'留言内容4','2023-05-13 11:52:01','回复信息4','2023-05-13 11:52:01','2023-05-13 11:52:01'),(5,5,2,'留言内容5','2023-05-13 11:52:01','回复信息5','2023-05-13 11:52:01','2023-05-13 11:52:01'),(6,6,3,'留言内容6','2023-05-13 11:52:01','回复信息6','2023-05-13 11:52:01','2023-05-13 11:52:01'),(7,7,2,'留言内容7','2023-05-13 11:52:01','回复信息7','2023-05-13 11:52:01','2023-05-13 11:52:01'),(8,8,1,'留言内容8','2023-05-13 11:52:01','回复信息8','2023-05-13 11:52:01','2023-05-13 11:52:01'),(9,9,1,'留言内容9','2023-05-13 11:52:01','回复信息9','2023-05-13 11:52:01','2023-05-13 11:52:01'),(10,10,1,'留言内容10','2023-05-13 11:52:01','回复信息10','2023-05-13 11:52:01','2023-05-13 11:52:01'),(11,11,1,'留言内容11','2023-05-13 11:52:01','回复信息11','2023-05-13 11:52:01','2023-05-13 11:52:01'),(12,12,2,'留言内容12','2023-05-13 11:52:01','回复信息12','2023-05-13 11:52:01','2023-05-13 11:52:01'),(13,13,1,'留言内容13','2023-05-13 11:52:01','回复信息13','2023-05-13 11:52:01','2023-05-13 11:52:01'),(14,14,3,'留言内容14','2023-05-13 11:52:01','回复信息14','2023-05-13 11:52:01','2023-05-13 11:52:01'),(15,1,4,'gdsdgsd孤独颂歌','2023-05-13 12:00:21',NULL,NULL,'2023-05-13 12:00:21'),(16,1,4,'归档第三个','2023-05-13 12:02:16',NULL,NULL,'2023-05-13 12:02:16'),(17,1,4,'孤鸿寡鹄和','2023-05-13 12:02:31',NULL,NULL,'2023-05-13 12:02:31');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','4jiwn90hfp9ub71i508m59712on89ra5','2023-05-13 11:55:53','2023-05-13 13:03:15'),(2,1,'a1','yonghu','用户','oybze5lemv9bx6a47bm47n53qr4aalnw','2023-05-13 11:56:07','2023-05-13 12:56:07'),(3,4,'a5','yonghu','用户','xqqvfca766qh52h0ivhh2mojj5otmu5v','2023-05-13 11:59:55','2023-05-13 12:59:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-13 11:51:18');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1683949921932','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com',1,'2023-05-13 11:52:01'),(2,'a2','123456','1683949921910','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com',1,'2023-05-13 11:52:01'),(3,'a3','123456','1683949921928','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-05-13 11:52:01'),(4,'a5','123456','1683950391005','张5','17788889999','444555222233336666','upload/1683950543247.jpg',2,'5@qq.com',2,'2023-05-13 11:59:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
