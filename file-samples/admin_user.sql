-- MySQL dump 10.13  Distrib 5.7.26, for osx10.10 (x86_64)
--
-- Host: localhost    Database: enterprise
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates',
  `refresh_token` text COMMENT 'Email connector refresh token',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Admin User Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES (4,'Pablo','Loop','pablo@loopdata.com','loop','ce797c77e8b0ab849573a81d27d2caabcd33ed0fa463faf98ea73bb146d4b6b3:5Qp8JdXf5Yo2PStw:2','2020-06-15 13:24:29','2020-07-30 17:19:28','2020-07-30 17:19:28',20,0,1,NULL,NULL,NULL,'en_US',0,NULL,NULL,NULL),(5,'Alex','Garcia','alex.garcia@kissusa.com','alex.garcia','2f55456ad33b309abd6395679eeac26ab11eeb344110f0cbaa8fd2fa3c41c652:Pgl0gMH12SvmxzTi:2','2020-06-25 13:51:21','2020-06-25 14:04:34',NULL,0,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL),(6,'Emily','Vallejos','emily.vallejos@kissusa.com','emily.vallejos','d249d87e4fbfd0bc5ec801c13f398de370d50ac477ca23ac7a021db664712b42:F8wx9LQ5FgWWSYyG:2','2020-06-25 13:53:19','2020-08-04 19:01:57','2020-08-04 19:01:57',4,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL),(7,'Wendy','Heppt','wendy.heppt@kissusa.com','wendy.heppt','4176244f88b6b82b1f2df958dcdf5010267d99210c2ed6d315a2e166a2a4ceb4:9pxfVnmjMgSgvr5j:2','2020-06-25 13:54:42','2020-07-17 14:32:30','2020-07-17 14:32:30',4,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL),(8,'Sunjae','Youm','sunjae.youm@kissusa.com','sunjae.youm','1d5636ee72296e4b1c647d3a2eefc61bf3f81df985d4ab159624e43159eb6711:gRhL29qD02sPkyLv:2','2020-06-25 13:56:18','2020-07-28 21:25:22','2020-07-28 21:25:22',5,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL),(9,'Kiss','Admin','johncoook@gmail.com','admin','505f6c6e247dbe863821642849ace4bbafad7067d41da37313cc827c4d411e91:ijj7QNhBSxP54YID:2','2020-06-25 13:59:50','2020-07-30 13:48:49','2020-07-30 13:46:15',8,0,1,'{\"configState\":{\"system_upload_configuration\":\"1\",\"system_mysqlmq\":\"0\",\"system_cron\":\"0\",\"system_smtp\":\"0\",\"system_currency\":\"0\",\"system_adminnotification\":\"0\",\"system_backup\":\"0\",\"system_rotation\":\"0\",\"system_full_page_cache\":\"0\",\"system_bulk\":\"0\",\"system_media_storage_configuration\":\"0\",\"system_magento_scheduled_import_export_log\":\"0\",\"system_adobe_stock_integration\":\"0\"}}',NULL,NULL,'en_US',0,NULL,NULL,NULL),(10,'John','Cook','john.cook@kissusa.com','john.cook','e0ba347dec93df0b70fc3e3c26f49d5f2844276396663a454a72ed51ac6ff03b:nyQozq6GCqYZTjMQ:2','2020-06-25 14:06:55','2020-07-28 17:44:47','2020-07-28 17:44:47',66,0,1,'{\"configState\":{\"augmented_reality_general\":\"1\",\"augmented_reality_gallery\":\"1\",\"augmented_reality_deep\":\"1\",\"augmented_reality_screenshot\":\"1\",\"google_analytics_message\":\"1\",\"google_analytics_general\":\"1\",\"mfblog_index_page\":\"1\",\"mfblog_permalink\":\"1\",\"mfblog_top_menu\":\"1\",\"mfblog_general\":\"1\",\"mfblog_post_view\":\"0\",\"mfblog_post_list\":\"0\",\"mfblog_sidebar\":\"0\",\"mfblog_product_page\":\"0\",\"mfblog_author\":\"0\",\"mfblog_tag\":\"0\",\"mfblog_search\":\"0\",\"mfblog_seo\":\"0\",\"mfblog_social\":\"1\",\"catalog_frontend\":\"0\",\"catalog_fields_masks\":\"0\",\"menu_general\":\"1\",\"admin_security\":\"1\",\"web_secure\":\"1\",\"catalog_seo\":\"1\",\"catalog_review\":\"0\",\"catalog_productalert\":\"0\",\"catalog_productalert_cron\":\"0\",\"catalog_placeholder\":\"0\",\"catalog_recently_products\":\"0\",\"catalog_product_video\":\"0\",\"catalog_price\":\"0\",\"catalog_layered_navigation\":\"0\",\"catalog_navigation\":\"0\",\"catalog_search\":\"0\",\"catalog_magento_catalogpermissions\":\"0\",\"catalog_downloadable\":\"0\",\"catalog_custom_options\":\"0\",\"catalog_magento_catalogevent\":\"0\",\"catalog_magento_targetrule\":\"0\",\"admin_magento_logging\":\"1\",\"admin_usage\":\"1\",\"admin_url\":\"0\",\"admin_emails\":\"0\",\"admin_startup\":\"0\",\"admin_dashboard\":\"0\",\"admin_captcha\":\"0\",\"sales_email_order\":\"0\",\"sales_email_order_comment\":\"0\",\"trans_email_ident_general\":\"1\",\"trans_email_ident_sales\":\"1\",\"trans_email_ident_support\":\"1\",\"trans_email_ident_custom1\":\"1\",\"trans_email_ident_custom2\":\"1\",\"smtp_module\":\"1\",\"smtp_general\":\"1\",\"smtp_configuration_option\":\"1\",\"smtp_developer\":\"1\",\"cms_hierarchy\":\"1\"}}',NULL,NULL,'en_US',0,NULL,NULL,NULL),(11,'Jason','Kollias','jason.kollias@kissusa.com','jason.kollias','830457da21eb7fbb74cd74947676bfc7338b442a310e4bffed9b692de8c34ea5:RWFsx37yHH9soFDx:2','2020-06-26 18:26:38','2020-08-04 20:37:02','2020-08-04 20:37:02',89,0,1,'{\"configState\":{\"menu_general\":\"0\",\"firebear_importexport_general\":\"1\",\"firebear_importexport_source_database\":\"1\"}}',NULL,NULL,'en_US',0,NULL,NULL,NULL),(12,'Dain','Suh','dain.suh@kissusa.com','dain.suh','95317f93efd7cb99469e4b45f6f2e3b3e37aafaf0842d91fa73044e0bf2ce474:bWTTFfXgfVmthf07:2','2020-07-09 14:21:27','2020-08-03 23:43:18','2020-08-03 23:43:18',6,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL),(13,'Stephanie','Matos','stephanie.matos@kissusa.com','stephanie.matos','514d5c2ac9e95d655613c31514ea6f2e2a15b8f0e6d60237ecd3d36050c252fe:JeenarHrOzNHnbCM:2','2020-07-09 14:22:12','2020-07-30 18:53:58','2020-07-30 18:53:58',13,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL),(14,'Christine','Elmore','christine.elmore@kissusa.com','christine.elmore','4d32f871b8895b11f66647c1a1275e4ab34a7f212acece68b1b20731fa5106b0:nqjBuDjeyOtqs95U:2','2020-07-09 14:22:46','2020-08-03 18:32:24','2020-08-03 18:32:24',11,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL),(15,'Dharmendra','Kothe','dharmendrak@kensium.com','dharmendrak','10550e548cc47b5ca9c53dbba74c18583314b9925465b185bd619583a98c5c97:qQeZyjFq8hm4bvXm:2','2020-07-13 19:53:25','2020-08-04 18:44:39',NULL,0,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL),(16,'Scott','Markman','scott.markman@kissusa.com','scott.markman','eb202ad073a6acf1500064caa0251822ecd156812282c4676dd5a583ef4cff29:ZXBfZfMdAjY2MG6o:2','2020-07-15 20:39:14','2020-08-03 14:05:23','2020-08-03 14:05:23',9,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL),(17,'hanying','dong','hadong@kissusa.com','hadong','2386e4843e17efdacbcf41558e0fbbe1f89e579dba028a0875cc88ba2f5216eb:OSGUs9YJZU7MuEUz:2','2020-07-31 13:36:06','2020-08-04 16:04:50','2020-08-04 16:04:50',8,0,1,'null',NULL,NULL,'en_US',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-23 16:51:28
