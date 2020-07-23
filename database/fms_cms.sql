/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.1.38-MariaDB : Database - fms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fms`;

/*Table structure for table `cms_dashboard` */

DROP TABLE IF EXISTS `cms_dashboard`;

CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_dashboard` */

/*Table structure for table `cms_email_queues` */

DROP TABLE IF EXISTS `cms_email_queues`;

CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_email_queues` */

/*Table structure for table `cms_email_templates` */

DROP TABLE IF EXISTS `cms_email_templates`;

CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_email_templates` */

insert  into `cms_email_templates`(`id`,`name`,`slug`,`subject`,`content`,`description`,`from_name`,`from_email`,`cc_email`,`created_at`,`updated_at`) values 
(1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2019-02-07 04:18:26',NULL);

/*Table structure for table `cms_logs` */

DROP TABLE IF EXISTS `cms_logs`;

CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_logs` */

insert  into `cms_logs`(`id`,`ipaddress`,`useragent`,`url`,`description`,`details`,`id_cms_users`,`created_at`,`updated_at`) values 
(1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-08 23:33:37',NULL),
(2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-08 23:35:00',NULL),
(3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-09 03:37:17',NULL),
(4,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/dsla/edit-save/100','Update data  at Detail SLA','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2019-02-09 03:56:20',NULL),
(5,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/dsla/edit-save/51','Update data  at Detail SLA','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2019-02-09 03:59:17',NULL),
(6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete-image','Delete the image of Gedung A Pusat at Master Aset','',1,'2019-02-09 04:59:48',NULL),
(7,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/3','Update data Gedung A Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedunga.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:00:21',NULL),
(8,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete-image','Delete the image of Gedung B Pusat at Master Aset','',1,'2019-02-09 05:01:01',NULL),
(9,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/4','Update data Gedung B Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedungb.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:01:24',NULL),
(10,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete-image','Delete the image of Gedung C Pusat at Master Aset','',1,'2019-02-09 05:05:57',NULL),
(11,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/5','Update data Gedung C Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedungc.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:06:16',NULL),
(12,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete-image','Delete the image of Graha PGAS Pusat at Master Aset','',1,'2019-02-09 05:10:44',NULL),
(13,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/6','Update data Graha PGAS Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/1024px_no_image_availablesvg.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:15:52',NULL),
(14,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete-image','Delete the image of Gedung Parkir Pusat at Master Aset','',1,'2019-02-09 05:16:09',NULL),
(15,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/7','Update data Gedung Parkir Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedung_parkir.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:16:26',NULL),
(16,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete-image','Delete the image of Gedung Utilitas Pusat at Master Aset','',1,'2019-02-09 05:16:38',NULL),
(17,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/8','Update data Gedung Utilitas Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedung_utilitas.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:16:51',NULL),
(18,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete-image','Delete the image of Gedung Penunjang Pusat at Master Aset','',1,'2019-02-09 05:17:08',NULL),
(19,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/9','Update data Gedung Penunjang Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedung_penunjang.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:17:22',NULL),
(20,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete-image','Delete the image of Masjid Al Istiqomah at Master Aset','',1,'2019-02-09 05:17:37',NULL),
(21,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/10','Update data Masjid Al Istiqomah at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/masjid.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:17:49',NULL),
(22,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete-image','Delete the image of The Manhattan Square at Master Aset','',1,'2019-02-09 05:18:04',NULL),
(23,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/11','Update data The Manhattan Square at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3171</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/the_manhattan_square.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:18:17',NULL),
(24,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/delete/94','Delete data test at Master Aset','',1,'2019-02-09 05:40:22',NULL),
(25,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/12','Update data Kantor PGN Juanda at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3173</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedung_juanda.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>',1,'2019-02-09 05:41:11',NULL),
(26,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/3','Update data Gedung A Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>telp</td><td></td><td></td></tr></tbody></table>',1,'2019-02-09 05:44:49',NULL),
(27,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Work Order at Menu Management','',1,'2019-02-09 05:49:43',NULL),
(28,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Rutin Terencana at Menu Management','',1,'2019-02-09 05:50:39',NULL),
(29,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Setting SLA Aset at Menu Management','',1,'2019-02-09 11:05:15',NULL),
(30,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Rutin  Non Rutin Terencana at Menu Management','',1,'2019-02-09 11:54:30',NULL),
(31,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Complain at Menu Management','',1,'2019-02-09 11:55:02',NULL),
(32,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Request at Menu Management','',1,'2019-02-09 13:13:04',NULL),
(33,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Setting Ketersediaan at Menu Management','',1,'2019-02-09 13:28:50',NULL),
(34,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/6','Update data Setting SLA Aset at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminSaControllerGetIndex</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2019-02-09 13:31:51',NULL),
(35,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/dsla/add-save','Add New Data  at Detail SLA','',1,'2019-02-09 13:35:33',NULL),
(36,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/dsla/delete/101','Delete data 101 at Detail SLA','',1,'2019-02-09 13:35:50',NULL),
(37,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/10','Update data Setting Ketersediaan at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminSdasetControllerGetIndex</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2019-02-09 18:11:43',NULL),
(38,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-10 03:10:18',NULL),
(39,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 01:45:37',NULL),
(40,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/edit-save/1','Update data aSA at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>SA</td><td>aSA</td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-02/user_logo_png_4.png</td></tr><tr><td>password</td><td>$2y$10$arp3OBtfk7xE0oNciFOwoe2oiG9q6Ku6svk/xHx1VQjgQDN1Tx5jW</td><td>$2y$10$a.8ws0UDMS.NiVNoQwpWbem.Qu8a47qJe9E14v0119fOADIUSCOie</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2019-02-12 01:48:33',NULL),
(41,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 01:48:39',NULL),
(42,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 01:48:55',NULL),
(43,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/sdaset/delete/10','Delete data 10 at Ketersediaan Aset','',1,'2019-02-12 01:49:06',NULL),
(44,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/sdaset/delete/9','Delete data 9 at Ketersediaan Aset','',1,'2019-02-12 01:49:25',NULL),
(45,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/reg/add-save','Add New Data  at Regional','',1,'2019-02-12 05:01:22',NULL),
(46,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/reg/add-save','Add New Data  at Regional','',1,'2019-02-12 05:01:29',NULL),
(47,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/reg/add-save','Add New Data  at Regional','',1,'2019-02-12 05:01:37',NULL),
(48,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/wil/add-save','Add New Data  at Wilayah','',1,'2019-02-12 05:26:22',NULL),
(49,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/wil/add-save','Add New Data  at Wilayah','',1,'2019-02-12 05:27:22',NULL),
(50,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/wil/add-save','Add New Data  at Wilayah','',1,'2019-02-12 05:27:41',NULL),
(51,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/wil/add-save','Add New Data  at Wilayah','',1,'2019-02-12 05:27:50',NULL),
(52,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/wil/add-save','Add New Data  at Wilayah','',1,'2019-02-12 05:28:20',NULL),
(53,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/wil/add-save','Add New Data  at Wilayah','',1,'2019-02-12 05:28:29',NULL),
(54,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/wil/add-save','Add New Data  at Wilayah','',1,'2019-02-12 05:28:42',NULL),
(55,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/wil/add-save','Add New Data  at Wilayah','',1,'2019-02-12 05:28:49',NULL),
(56,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/area/add-save','Add New Data  at Area','',1,'2019-02-12 05:32:57',NULL),
(57,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/area/add-save','Add New Data  at Area','',1,'2019-02-12 05:33:23',NULL),
(58,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/area/add-save','Add New Data  at Area','',1,'2019-02-12 05:33:31',NULL),
(59,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Referensi at Menu Management','',1,'2019-02-12 06:54:41',NULL),
(60,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/3','Update data Gedung A Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area_id</td><td></td><td>3</td></tr><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>telp</td><td></td><td></td></tr></tbody></table>',1,'2019-02-12 07:04:43',NULL),
(61,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/4','Update data Gedung B Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area_id</td><td></td><td>3</td></tr><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>telp</td><td></td><td></td></tr></tbody></table>',1,'2019-02-12 07:04:53',NULL),
(62,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset/edit-save/5','Update data Gedung C Pusat at Master Aset','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area_id</td><td></td><td>3</td></tr><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>telp</td><td></td><td></td></tr></tbody></table>',1,'2019-02-12 07:05:03',NULL),
(63,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/frekuensi/add-save','Add New Data  at Frekuensi','',1,'2019-02-12 08:46:11',NULL),
(64,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 13:42:41',NULL),
(65,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/delete-image','Delete the image of Super Admin at Users Management','',1,'2019-02-12 13:43:01',NULL),
(66,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/edit-save/1','Update data Super Admin at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>username</td><td>SA</td><td></td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-02/avatar_372_456324.png</td></tr><tr><td>password</td><td>$2y$10$a.8ws0UDMS.NiVNoQwpWbem.Qu8a47qJe9E14v0119fOADIUSCOie</td><td>$2y$10$9mt3jqtbsdeoSCAdiGdtaOWNWcPw7Esx1GJNy2z0asXQ7W3UwqWEu</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2019-02-12 13:44:02',NULL),
(67,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 13:44:36',NULL),
(68,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 13:45:09',NULL),
(69,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 13:45:45',NULL),
(70,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 13:46:05',NULL),
(71,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 13:46:45',NULL),
(72,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 13:46:58',NULL),
(73,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 13:47:49',NULL),
(74,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 13:58:37',NULL),
(75,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 14:03:52',NULL),
(76,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 14:04:39',NULL),
(77,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 14:06:46',NULL),
(78,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 14:08:43',NULL),
(79,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data Admin at Users Management','',1,'2019-02-12 14:10:53',NULL),
(80,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data Admin HO at Users Management','',1,'2019-02-12 14:13:00',NULL),
(81,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data Leader at Users Management','',1,'2019-02-12 14:13:38',NULL),
(82,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data Tenant Relation at Users Management','',1,'2019-02-12 14:16:52',NULL),
(83,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea ketapang at Users Management','',1,'2019-02-12 14:24:48',NULL),
(84,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korwil II at Users Management','',1,'2019-02-12 14:26:13',NULL),
(85,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea jakarta at Users Management','',1,'2019-02-12 14:27:27',NULL),
(86,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea bekasi at Users Management','',1,'2019-02-12 14:27:47',NULL),
(87,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea bogor at Users Management','',1,'2019-02-12 14:28:16',NULL),
(88,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data wisma megamendung at Users Management','',1,'2019-02-12 14:28:48',NULL),
(89,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korwil III at Users Management','',1,'2019-02-12 14:29:15',NULL),
(90,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea karawang at Users Management','',1,'2019-02-12 14:31:08',NULL),
(91,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data wisma bandung at Users Management','',1,'2019-02-12 14:31:24',NULL),
(92,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea cirebon at Users Management','',1,'2019-02-12 14:31:45',NULL),
(93,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korwil IV at Users Management','',1,'2019-02-12 14:32:04',NULL),
(94,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea tangerang at Users Management','',1,'2019-02-12 14:32:23',NULL),
(95,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea cilegon at Users Management','',1,'2019-02-12 14:32:44',NULL),
(96,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea lampung at Users Management','',1,'2019-02-12 14:33:09',NULL),
(97,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea palembang at Users Management','',1,'2019-02-12 14:33:34',NULL),
(98,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea palembang II at Users Management','',1,'2019-02-12 14:35:03',NULL),
(99,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korwil V at Users Management','',1,'2019-02-12 14:36:32',NULL),
(100,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea medan at Users Management','',1,'2019-02-12 14:36:58',NULL),
(101,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea pekanbaru at Users Management','',1,'2019-02-12 14:37:19',NULL),
(102,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea batam at Users Management','',1,'2019-02-12 14:37:41',NULL),
(103,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korwil VI at Users Management','',1,'2019-02-12 14:38:07',NULL),
(104,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea semarang at Users Management','',1,'2019-02-12 14:38:30',NULL),
(105,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 14:39:17',NULL),
(106,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 14:39:33',NULL),
(107,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 14:40:46',NULL),
(108,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 14:40:47',NULL),
(109,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 14:41:24',NULL),
(110,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea surabaya at Users Management','',1,'2019-02-12 14:42:13',NULL),
(111,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea sidoarjo at Users Management','',1,'2019-02-12 14:42:36',NULL),
(112,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea pasuruan at Users Management','',1,'2019-02-12 14:43:01',NULL),
(113,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korwil VII at Users Management','',1,'2019-02-12 14:43:29',NULL),
(114,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea tarakan at Users Management','',1,'2019-02-12 14:43:49',NULL),
(115,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea sorong at Users Management','',1,'2019-02-12 14:44:06',NULL),
(116,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korea makasar at Users Management','',1,'2019-02-12 14:44:21',NULL),
(117,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data korwil I at Users Management','',1,'2019-02-12 14:44:48',NULL),
(118,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data Unit Head at Users Management','',1,'2019-02-12 14:45:34',NULL),
(119,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader ketapang at Users Management','',1,'2019-02-12 14:49:06',NULL),
(120,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader jakarta at Users Management','',1,'2019-02-12 14:49:25',NULL),
(121,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader bekasi at Users Management','',1,'2019-02-12 14:49:42',NULL),
(122,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader bogor at Users Management','',1,'2019-02-12 14:50:05',NULL),
(123,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader megamendung at Users Management','',1,'2019-02-12 14:50:23',NULL),
(124,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader kerawang at Users Management','',1,'2019-02-12 14:50:50',NULL),
(125,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader bandung at Users Management','',1,'2019-02-12 14:51:09',NULL),
(126,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader cirebon at Users Management','',1,'2019-02-12 14:51:39',NULL),
(127,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader tangerang at Users Management','',1,'2019-02-12 14:52:21',NULL),
(128,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader cilegon at Users Management','',1,'2019-02-12 14:52:40',NULL),
(129,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader lampung at Users Management','',1,'2019-02-12 14:52:57',NULL),
(130,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader palembang at Users Management','',1,'2019-02-12 14:53:13',NULL),
(131,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader medan at Users Management','',1,'2019-02-12 14:53:31',NULL),
(132,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader pekanbaru at Users Management','',1,'2019-02-12 14:53:49',NULL),
(133,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader semarang at Users Management','',1,'2019-02-12 14:54:05',NULL),
(134,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader sidoarjo at Users Management','',1,'2019-02-12 14:54:23',NULL),
(135,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader pasuruan at Users Management','',1,'2019-02-12 14:54:38',NULL),
(136,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader tarakan at Users Management','',1,'2019-02-12 14:54:57',NULL),
(137,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader sorong at Users Management','',1,'2019-02-12 14:55:12',NULL),
(138,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data leader makasar at Users Management','',1,'2019-02-12 14:55:30',NULL),
(139,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea ketapang at Users Management','',1,'2019-02-12 14:55:47',NULL),
(140,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea jakarta at Users Management','',1,'2019-02-12 14:56:23',NULL),
(141,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea bekasi at Users Management','',1,'2019-02-12 14:56:39',NULL),
(142,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea bogor at Users Management','',1,'2019-02-12 14:57:01',NULL),
(143,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea megamendung at Users Management','',1,'2019-02-12 14:57:19',NULL),
(144,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea kerawang at Users Management','',1,'2019-02-12 14:57:37',NULL),
(145,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea bandung at Users Management','',1,'2019-02-12 14:57:58',NULL),
(146,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea cirebon at Users Management','',1,'2019-02-12 14:58:15',NULL),
(147,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea tangerang at Users Management','',1,'2019-02-12 14:58:31',NULL),
(148,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea cilegon at Users Management','',1,'2019-02-12 14:58:49',NULL),
(149,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea lampung at Users Management','',1,'2019-02-12 14:59:10',NULL),
(150,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea palembang at Users Management','',1,'2019-02-12 14:59:30',NULL),
(151,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea medan at Users Management','',1,'2019-02-12 14:59:46',NULL),
(152,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea pekanbaru at Users Management','',1,'2019-02-12 15:00:03',NULL),
(153,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea semarang at Users Management','',1,'2019-02-12 15:00:23',NULL),
(154,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea sidoarjo at Users Management','',1,'2019-02-12 15:00:43',NULL),
(155,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea pasuruan at Users Management','',1,'2019-02-12 15:01:08',NULL),
(156,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea tarakan at Users Management','',1,'2019-02-12 15:01:42',NULL),
(157,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea sorong at Users Management','',1,'2019-02-12 15:02:02',NULL),
(158,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/users/add-save','Add New Data salesarea makasar at Users Management','',1,'2019-02-12 15:02:19',NULL),
(159,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-12 15:05:04',NULL),
(160,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@fms.com login with IP Address 127.0.0.1','',3,'2019-02-12 15:05:13',NULL),
(161,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@fms.com logout','',3,'2019-02-12 15:05:19',NULL),
(162,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-12 15:09:37',NULL),
(163,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/ua/add-save','Add New Data  at User Aset','',1,'2019-02-12 15:52:42',NULL),
(164,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 15:59:09',NULL),
(165,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 15:59:47',NULL),
(166,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:00:12',NULL),
(167,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:00:53',NULL),
(168,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:02:30',NULL),
(169,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:03:24',NULL),
(170,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:03:49',NULL),
(171,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:03:59',NULL),
(172,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:04:18',NULL),
(173,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:04:28',NULL),
(174,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:05:19',NULL),
(175,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:05:33',NULL),
(176,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/add-save','Add New Data  at Aset Area','',1,'2019-02-12 16:12:34',NULL),
(177,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/delete/13','Delete data 13 at Aset Area','',1,'2019-02-12 16:14:29',NULL),
(178,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/aset_area/action-selected','Delete data 17,16,15,14 at Aset Area','',1,'2019-02-12 16:14:55',NULL),
(179,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/module_generator/delete/22','Delete data Aset Area at Module Generator','',1,'2019-02-12 16:44:02',NULL),
(180,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/ua/add-save','Add New Data  at User Aset','',1,'2019-02-12 16:45:43',NULL),
(181,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/add-save','Add New Data  at Master Penilaian','',1,'2019-02-12 17:26:19',NULL),
(182,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/1','Delete data 1 at Master Penilaian','',1,'2019-02-12 17:30:45',NULL),
(183,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/add-save','Add New Data  at Master Penilaian','',1,'2019-02-12 17:39:55',NULL),
(184,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/2','Delete data 2 at Master Penilaian','',1,'2019-02-12 17:47:05',NULL),
(185,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/add-save','Add New Data  at Master Penilaian','',1,'2019-02-12 17:47:23',NULL),
(186,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/3','Delete data 3 at Master Penilaian','',1,'2019-02-12 17:48:05',NULL),
(187,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/add-save','Add New Data  at Master Penilaian','',1,'2019-02-12 17:48:18',NULL),
(188,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-13 00:42:35',NULL),
(189,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-02-13 00:42:57',NULL),
(190,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-02-13 00:47:52',NULL),
(191,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Penilaian SLA at Menu Management','',1,'2019-02-13 00:48:43',NULL),
(192,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/delete/19','Delete data Penilaian SLA at Menu Management','',1,'2019-02-13 00:49:23',NULL),
(193,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/18','Update data Penilaian SLA at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Master Penilaian</td><td>Penilaian SLA</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2019-02-13 00:49:41',NULL),
(194,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Utilitas at Menu Management','',1,'2019-02-13 00:50:02',NULL),
(195,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Pemakaian Listrik at Menu Management','',1,'2019-02-13 00:50:37',NULL),
(196,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Pemakaian Air at Menu Management','',1,'2019-02-13 00:51:08',NULL),
(197,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Solar at Menu Management','',1,'2019-02-13 00:51:39',NULL),
(198,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/add-save','Add New Data Limbah at Menu Management','',1,'2019-02-13 00:51:58',NULL),
(199,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22','Update data Air at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Pemakaian Air</td><td>Air</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>',1,'2019-02-13 00:52:10',NULL),
(200,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/21','Update data Listrik at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Pemakaian Listrik</td><td>Listrik</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>',1,'2019-02-13 00:52:49',NULL),
(201,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/add-save','Add New Data  at Master Penilaian','',1,'2019-02-13 00:54:38',NULL),
(202,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/5','Delete data 5 at Master Penilaian','',1,'2019-02-13 00:57:44',NULL),
(203,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/5','Delete data 5 at Master Penilaian','',1,'2019-02-13 00:58:57',NULL),
(204,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/5','Delete data 5 at Master Penilaian','',1,'2019-02-13 00:59:08',NULL),
(205,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/5','Delete data 5 at Master Penilaian','',1,'2019-02-13 00:59:36',NULL),
(206,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/add-save','Add New Data  at Master Penilaian','',1,'2019-02-13 00:59:52',NULL),
(207,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/6','Delete data 6 at Master Penilaian','',1,'2019-02-13 00:59:57',NULL),
(208,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/add-save','Add New Data  at Master Penilaian','',1,'2019-02-13 01:00:28',NULL),
(209,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/7','Delete data 7 at Master Penilaian','',1,'2019-02-13 01:00:33',NULL),
(210,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/delete/4','Delete data 4 at Master Penilaian','',1,'2019-02-13 01:01:57',NULL),
(211,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/add-save','Add New Data  at Master Penilaian','',1,'2019-02-13 01:02:10',NULL),
(212,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36','http://127.0.0.1:8000/pgnmas/mnilai/add-save','Add New Data  at Master Penilaian','',1,'2019-02-13 01:02:17',NULL),
(213,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-03-20 08:02:57',NULL),
(214,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-03-21 00:50:48',NULL),
(215,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-03-21 00:51:20',NULL),
(216,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-03-21 00:51:34',NULL),
(217,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-03-21 00:54:40',NULL),
(218,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@fms.com login with IP Address 127.0.0.1','',3,'2019-03-21 01:03:55',NULL),
(219,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-03-21 08:02:17',NULL),
(220,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/5','Update data Rutin Terencana at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>',1,'2019-03-21 08:19:26',NULL),
(221,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/5','Update data Rutin Terencana at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>',1,'2019-03-21 08:19:38',NULL),
(222,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/1','Update data SLA at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr></tbody></table>',1,'2019-03-21 08:19:50',NULL),
(223,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/2','Update data Detail SLA at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2019-03-21 08:19:59',NULL),
(224,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/6','Update data Setting SLA Aset at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2019-03-21 08:20:12',NULL),
(225,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/10','Update data Setting Ketersediaan at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2019-03-21 08:20:22',NULL),
(226,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@fms.com login with IP Address 127.0.0.1','',3,'2019-03-21 08:21:15',NULL),
(227,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/4','Update data Work Order at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2019-03-21 08:24:13',NULL),
(228,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@fms.com logout','',3,'2019-03-21 08:24:20',NULL),
(229,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@fms.com login with IP Address 127.0.0.1','',3,'2019-03-21 08:24:30',NULL),
(230,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@fms.com login with IP Address 127.0.0.1','',3,'2019-03-22 12:09:02',NULL),
(231,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@fms.com logout','',3,'2019-03-22 12:32:39',NULL),
(232,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-03-22 12:32:49',NULL),
(233,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/20','Update data Utilitas at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2019-03-22 12:33:11',NULL),
(234,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/21','Update data Listrik at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>',1,'2019-03-22 12:34:04',NULL),
(235,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22','Update data Air at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2019-03-22 12:34:19',NULL),
(236,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/23','Update data Solar at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2019-03-22 12:34:31',NULL),
(237,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/24','Update data Limbah at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2019-03-22 12:34:44',NULL),
(238,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-03-22 12:35:13',NULL),
(239,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','leaderketapang@fms.com login with IP Address 127.0.0.1','',37,'2019-03-22 12:35:49',NULL),
(240,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-03-22 12:43:56',NULL),
(241,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/21','Update data Listrik at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Module</td></tr><tr><td>path</td><td>#</td><td>listrik</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>',1,'2019-03-22 12:49:54',NULL),
(242,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik','Try view the data :name at listrik','',37,'2019-03-22 12:50:33',NULL),
(243,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','leaderketapang@fms.com logout','',37,'2019-03-22 12:50:38',NULL),
(244,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','leaderketapang@fms.com login with IP Address 127.0.0.1','',37,'2019-03-22 12:50:49',NULL),
(245,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/delete/92','Delete data 92 at listrik','',37,'2019-03-22 12:51:01',NULL),
(246,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 16:05:17',NULL),
(247,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 16:18:48',NULL),
(248,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 16:21:03',NULL),
(249,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 16:28:04',NULL),
(250,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 16:33:57',NULL),
(251,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 16:34:52',NULL),
(252,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 16:37:36',NULL),
(253,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 16:40:12',NULL),
(254,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','leaderketapang@fms.com logout','',37,'2019-03-22 16:57:22',NULL),
(255,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','leaderjakarta@fms.com login with IP Address 127.0.0.1','',38,'2019-03-22 16:57:55',NULL),
(256,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','leaderketapang@fms.com login with IP Address 127.0.0.1','',37,'2019-03-22 23:42:09',NULL),
(257,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/delete/5','Delete data 5 at listrik','',37,'2019-03-22 23:42:28',NULL),
(258,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/delete/8','Delete data 8 at listrik','',37,'2019-03-22 23:42:34',NULL),
(259,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/delete/6','Delete data 6 at listrik','',37,'2019-03-22 23:42:43',NULL),
(260,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/delete/7','Delete data 7 at listrik','',37,'2019-03-22 23:42:49',NULL),
(261,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 23:46:41',NULL),
(262,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-22 23:59:47',NULL),
(263,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 00:01:40',NULL),
(264,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 00:03:30',NULL),
(265,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 00:18:09',NULL),
(266,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 00:19:09',NULL),
(267,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 01:25:29',NULL),
(268,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 01:26:00',NULL),
(269,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 02:33:45',NULL),
(270,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 02:34:21',NULL),
(271,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 02:38:47',NULL),
(272,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 02:39:16',NULL),
(273,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 02:39:46',NULL),
(274,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 02:45:43',NULL),
(275,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 02:46:18',NULL),
(276,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 02:46:45',NULL),
(277,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',37,'2019-03-23 03:01:29',NULL),
(278,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','koreabogor@fms.com logout','',10,'2019-04-01 06:42:05',NULL),
(279,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','korwil2@fms.com login with IP Address 127.0.0.1','',7,'2019-04-01 06:42:33',NULL),
(280,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','korwil2@fms.com login with IP Address 127.0.0.1','',7,'2019-04-01 10:13:32',NULL),
(281,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','korwil2@fms.com logout','',7,'2019-04-01 11:07:40',NULL),
(282,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','korwil2@fms.com login with IP Address 127.0.0.1','',7,'2019-04-01 11:07:56',NULL),
(283,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','korwil2@fms.com logout','',7,'2019-04-01 11:08:10',NULL),
(284,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','koreabogor@fms.com login with IP Address 127.0.0.1','',10,'2019-04-01 11:08:39',NULL),
(285,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','koreabogor@fms.com logout','',10,'2019-04-01 11:28:12',NULL),
(286,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-04-01 11:28:18',NULL),
(287,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-04-01 11:29:53',NULL),
(288,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','salesareajakarta@fms.com login with IP Address 127.0.0.1','',58,'2019-04-01 11:30:26',NULL),
(289,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','salesareajakarta@fms.com logout','',58,'2019-04-01 11:30:37',NULL),
(290,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','koreabogor@fms.com login with IP Address 127.0.0.1','',10,'2019-04-01 11:30:53',NULL),
(291,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','koreabogor@fms.com logout','',10,'2019-04-01 14:02:47',NULL),
(292,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','korwil2@fms.com login with IP Address 127.0.0.1','',7,'2019-04-01 14:03:24',NULL),
(293,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','korwil2@fms.com logout','',7,'2019-04-01 14:03:35',NULL),
(294,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1','',2,'2019-04-01 14:03:49',NULL),
(295,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik','Try view the data :name at listrik','',2,'2019-04-01 14:06:19',NULL),
(296,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','tezadwiaditya@yahoo.co.id logout','',2,'2019-04-01 14:06:32',NULL),
(297,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-04-01 14:06:44',NULL),
(298,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/24','Update data Limbah at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminLimbahControllerGetIndex</td></tr><tr><td>icon</td><td>fa fa-th-list</td><td>fa fa-table</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2019-04-01 14:09:38',NULL),
(299,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/limbah/add-save','Add New Data  at Limbah','',1,'2019-04-01 14:38:54',NULL),
(300,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22','Update data Air at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminAirController</td></tr><tr><td>icon</td><td>fa fa-th-list</td><td>fa fa-gear</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2019-04-01 14:45:37',NULL),
(301,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/23','Update data Solar at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminSolarControllerGetIndex</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2019-04-01 14:46:22',NULL),
(302,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22','Update data Air at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminAirController</td><td>AdminAirControllerGetIndex</td></tr><tr><td>icon</td><td>fa fa-gear</td><td>fa fa-th-list</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2019-04-01 14:47:09',NULL),
(303,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22','Update data Air at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2019-04-01 14:51:50',NULL),
(304,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/Air/add-save','Add New Data  at Air','',1,'2019-04-01 15:34:21',NULL),
(305,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/Air/add-save','Add New Data  at Air','',1,'2019-04-01 15:37:24',NULL),
(306,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/Solar/add-save','Add New Data  at Solar','',1,'2019-04-01 15:40:54',NULL),
(307,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1','',2,'2019-04-03 23:08:28',NULL),
(308,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/limbah','Try view the data :name at Limbah','',2,'2019-04-03 23:08:46',NULL),
(309,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','tezadwiaditya@yahoo.co.id logout','',2,'2019-04-03 23:08:56',NULL),
(310,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-04-03 23:09:04',NULL),
(311,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/logout','admin@crudbooster.com logout','',1,'2019-04-03 23:09:38',NULL),
(312,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/login','tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1','',2,'2019-04-03 23:11:17',NULL),
(313,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/Air/add-save','Add New Data  at Air','',2,'2019-04-03 23:12:23',NULL),
(314,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36','http://127.0.0.1:8000/pgnmas/listrik/add-save','Add New Data  at listrik','',2,'2019-04-03 23:15:52',NULL);

/*Table structure for table `cms_menus` */

DROP TABLE IF EXISTS `cms_menus`;

CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_menus` */

insert  into `cms_menus`(`id`,`name`,`type`,`path`,`color`,`icon`,`parent_id`,`is_active`,`is_dashboard`,`id_cms_privileges`,`sorting`,`created_at`,`updated_at`) values 
(1,'SLA','Route','AdminSlaControllerGetIndex','normal','fa fa-th-list',5,1,0,1,1,'2019-02-09 03:38:22','2019-03-21 08:19:50'),
(2,'Detail SLA','Route','AdminDslaControllerGetIndex','normal','fa fa-th-list',5,1,0,1,2,'2019-02-09 03:45:19','2019-03-21 08:19:59'),
(3,'Master Aset','Route','AdminAsetControllerGetIndex',NULL,'fa fa-th-list',0,1,0,1,4,'2019-02-09 04:41:31',NULL),
(4,'Work Order','URL','#','normal','fa fa-th',0,1,0,1,1,'2019-02-09 05:49:43','2019-03-21 08:24:12'),
(5,'Rutin Terencana','URL','#','normal','fa fa-th',4,1,0,1,1,'2019-02-09 05:50:39','2019-03-21 08:19:37'),
(6,'Setting SLA Aset','Route','AdminSaControllerGetIndex','normal','fa fa-th-list',5,1,0,1,3,'2019-02-09 11:05:15','2019-03-21 08:20:11'),
(7,'Rutin  Non Rutin Terencana','URL','#','normal','fa fa-th',4,1,0,1,2,'2019-02-09 11:54:29',NULL),
(8,'Complain','URL','#','normal','fa fa-th-list',7,1,0,1,1,'2019-02-09 11:55:02',NULL),
(9,'Request','URL','#','normal','fa fa-th-list',7,1,0,1,2,'2019-02-09 13:13:04',NULL),
(10,'Setting Ketersediaan','Route','AdminSdasetControllerGetIndex','normal','fa fa-th-list',5,1,0,1,4,'2019-02-09 13:28:50','2019-03-21 08:20:21'),
(11,'Regional','Route','AdminRegControllerGetIndex',NULL,'fa fa-th-list',14,1,0,1,3,'2019-02-12 05:00:54',NULL),
(12,'Wilayah','Route','AdminWilControllerGetIndex',NULL,'fa fa-th-list',14,1,0,1,4,'2019-02-12 05:02:18',NULL),
(13,'Area','Route','AdminAreaControllerGetIndex',NULL,'fa fa-th-list',14,1,0,1,5,'2019-02-12 05:31:52',NULL),
(14,'Referensi','URL','#','normal','fa fa-th',0,1,0,1,5,'2019-02-12 06:54:40',NULL),
(15,'Frekuensi','Route','AdminFrekuensiControllerGetIndex',NULL,'fa fa-glass',14,1,0,1,1,'2019-02-12 08:21:46',NULL),
(16,'User Aset','Route','AdminUaControllerGetIndex',NULL,'fa fa-th-list',14,1,0,1,2,'2019-02-12 15:37:12',NULL),
(18,'Penilaian SLA','Route','AdminMnilaiControllerGetIndex','normal','fa fa-th-list',0,1,0,1,2,'2019-02-12 17:23:24','2019-02-13 00:49:41'),
(20,'Utilitas','URL','#','normal','fa fa-th-list',0,1,0,1,3,'2019-02-13 00:50:02','2019-03-22 12:33:11'),
(21,'Listrik','Module','listrik','normal','fa fa-th-list',20,1,0,1,1,'2019-02-13 00:50:37','2019-03-22 12:49:53'),
(22,'Air','Route','AdminAirControllerGetIndex','normal','fa fa-th-list',20,1,0,1,2,'2019-02-13 00:51:07','2019-04-01 14:51:49'),
(23,'Solar','Route','AdminSolarControllerGetIndex','normal','fa fa-th-list',20,1,0,1,3,'2019-02-13 00:51:39','2019-04-01 14:46:21'),
(24,'Limbah','Route','AdminLimbahControllerGetIndex','normal','fa fa-table',20,1,0,1,4,'2019-02-13 00:51:58','2019-04-01 14:09:38');

/*Table structure for table `cms_menus_privileges` */

DROP TABLE IF EXISTS `cms_menus_privileges`;

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_menus_privileges` */

insert  into `cms_menus_privileges`(`id`,`id_cms_menus`,`id_cms_privileges`) values 
(3,3,1),
(7,7,1),
(8,8,1),
(9,9,1),
(13,11,1),
(14,12,1),
(15,13,1),
(16,14,1),
(17,15,1),
(18,16,1),
(19,17,1),
(21,19,1),
(22,18,1),
(32,5,8),
(33,5,5),
(34,5,4),
(35,5,3),
(36,1,8),
(37,1,3),
(38,1,1),
(39,2,8),
(40,2,3),
(41,2,1),
(42,6,8),
(43,6,4),
(44,6,1),
(45,10,8),
(46,10,5),
(47,10,1),
(48,4,8),
(49,4,3),
(50,4,1),
(51,20,8),
(52,20,6),
(53,20,1),
(66,21,8),
(67,21,6),
(68,21,1),
(69,24,8),
(70,24,6),
(71,24,1),
(75,23,8),
(76,23,6),
(77,23,1),
(81,22,8),
(82,22,6),
(83,22,1);

/*Table structure for table `cms_moduls` */

DROP TABLE IF EXISTS `cms_moduls`;

CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_moduls` */

insert  into `cms_moduls`(`id`,`name`,`icon`,`path`,`table_name`,`controller`,`is_protected`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(4,'Users Management','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2019-02-07 04:18:24',NULL,NULL),
(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(8,'Email Templates','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(11,'Log User Access','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2019-02-07 04:18:24',NULL,NULL),
(12,'SLA','fa fa-th-list','sla','sla','AdminSlaController',0,0,'2019-02-09 03:38:22',NULL,NULL),
(13,'Detail SLA','fa fa-th-list','dsla','detail_sla','AdminDslaController',0,0,'2019-02-09 03:45:18',NULL,NULL),
(14,'Master Aset','fa fa-th-list','aset','aset','AdminAsetController',0,0,'2019-02-09 04:41:30',NULL,NULL),
(15,'SLA ASET','fa fa-th-list','sa','sla_aset','AdminSaController',0,0,'2019-02-09 05:45:48',NULL,NULL),
(16,'Ketersediaan Aset','fa fa-glass','sdaset','ketersediaan_sla','AdminSdasetController',0,0,'2019-02-09 18:09:37',NULL,NULL),
(17,'Regional','fa fa-th-list','reg','regional','AdminRegController',0,0,'2019-02-12 05:00:54',NULL,NULL),
(18,'Wilayah','fa fa-th-list','wil','wilayah','AdminWilController',0,0,'2019-02-12 05:02:18',NULL,NULL),
(19,'Area','fa fa-th-list','area','area','AdminAreaController',0,0,'2019-02-12 05:31:52',NULL,NULL),
(20,'Frekuensi','fa fa-glass','frekuensi','frekuensi','AdminFrekuensiController',0,0,'2019-02-12 08:21:46',NULL,NULL),
(21,'User Aset','fa fa-th-list','ua','user_aset','AdminUaController',0,0,'2019-02-12 15:37:12',NULL,NULL),
(22,'Aset Area','fa fa-th-list','aset_area','aset_area','AdminAsetAreaController',0,0,'2019-02-12 15:57:18',NULL,'2019-02-12 16:44:02'),
(23,'Master Penilaian','fa fa-th-list','mnilai','m_penilaian','AdminMnilaiController',0,0,'2019-02-12 17:23:23',NULL,NULL),
(24,'listrik','fa fa-gear','listrik','master_listrik','AdminListrikController',0,0,'2019-03-22 12:48:16',NULL,NULL),
(25,'Limbah','fa fa-gear','limbah','master_limbah','AdminLimbahController',0,0,'2019-04-01 14:41:32',NULL,NULL),
(26,'Solar','fa fa-glass','Solar','master_solar','AdminSolarController',0,0,'2019-04-01 14:41:32',NULL,NULL),
(27,'Air','fa fa-glass','Air','master_air','AdminAirController',0,0,'2019-04-01 14:42:49',NULL,NULL);

/*Table structure for table `cms_notifications` */

DROP TABLE IF EXISTS `cms_notifications`;

CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_notifications` */

/*Table structure for table `cms_privileges` */

DROP TABLE IF EXISTS `cms_privileges`;

CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_privileges` */

insert  into `cms_privileges`(`id`,`name`,`is_superadmin`,`theme_color`,`created_at`,`updated_at`) values 
(1,'Super Administrator',1,'skin-red','2019-02-07 04:18:24',NULL),
(2,'General Manager',0,'skin-blue-light',NULL,NULL),
(3,'Manager (HO)',0,'skin-blue-light',NULL,NULL),
(4,'Koordinator Wilayah',0,'skin-blue-light',NULL,NULL),
(5,'Koordinator Area',0,'skin-blue-light',NULL,NULL),
(6,'Leader',0,'skin-blue-light',NULL,NULL),
(7,'Sales Area',0,'skin-blue-light',NULL,NULL),
(8,'Admin',0,'skin-red-light',NULL,NULL),
(9,'Tenant Relation',0,'skin-blue-light',NULL,NULL);

/*Table structure for table `cms_privileges_roles` */

DROP TABLE IF EXISTS `cms_privileges_roles`;

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_privileges_roles` */

insert  into `cms_privileges_roles`(`id`,`is_visible`,`is_create`,`is_read`,`is_edit`,`is_delete`,`id_cms_privileges`,`id_cms_moduls`,`created_at`,`updated_at`) values 
(1,1,0,0,0,0,1,1,'2019-02-07 04:18:25',NULL),
(2,1,1,1,1,1,1,2,'2019-02-07 04:18:25',NULL),
(3,0,1,1,1,1,1,3,'2019-02-07 04:18:25',NULL),
(4,1,1,1,1,1,1,4,'2019-02-07 04:18:25',NULL),
(5,1,1,1,1,1,1,5,'2019-02-07 04:18:25',NULL),
(6,1,1,1,1,1,1,6,'2019-02-07 04:18:25',NULL),
(7,1,1,1,1,1,1,7,'2019-02-07 04:18:25',NULL),
(8,1,1,1,1,1,1,8,'2019-02-07 04:18:25',NULL),
(9,1,1,1,1,1,1,9,'2019-02-07 04:18:25',NULL),
(10,1,1,1,1,1,1,10,'2019-02-07 04:18:25',NULL),
(11,1,0,1,0,1,1,11,'2019-02-07 04:18:25',NULL),
(12,1,1,1,1,1,1,12,NULL,NULL),
(13,1,1,1,1,1,1,13,NULL,NULL),
(14,1,1,1,1,1,1,14,NULL,NULL),
(15,1,1,1,1,1,1,15,NULL,NULL),
(16,1,1,1,1,1,1,16,NULL,NULL),
(17,1,1,1,1,1,1,17,NULL,NULL),
(18,1,1,1,1,1,1,18,NULL,NULL),
(19,1,1,1,1,1,1,19,NULL,NULL),
(38,1,1,1,1,1,4,19,NULL,NULL),
(39,1,1,1,1,1,4,13,NULL,NULL),
(40,1,1,1,1,1,4,16,NULL,NULL),
(41,1,1,1,1,1,4,14,NULL,NULL),
(42,1,1,1,1,1,4,17,NULL,NULL),
(43,1,1,1,1,1,4,12,NULL,NULL),
(44,1,1,1,1,1,4,15,NULL,NULL),
(45,1,1,1,1,1,4,18,NULL,NULL),
(46,1,1,1,1,1,3,19,NULL,NULL),
(47,1,1,1,1,1,3,13,NULL,NULL),
(48,1,1,1,1,1,3,16,NULL,NULL),
(49,1,1,1,1,1,3,14,NULL,NULL),
(50,1,1,1,1,1,3,17,NULL,NULL),
(51,1,1,1,1,1,3,12,NULL,NULL),
(52,1,1,1,1,1,3,15,NULL,NULL),
(53,1,1,1,1,1,3,18,NULL,NULL),
(54,1,1,1,1,1,2,19,NULL,NULL),
(55,1,1,1,1,1,2,13,NULL,NULL),
(56,1,1,1,1,1,2,16,NULL,NULL),
(57,1,1,1,1,1,2,14,NULL,NULL),
(58,1,1,1,1,1,2,17,NULL,NULL),
(59,1,1,1,1,1,2,12,NULL,NULL),
(60,1,1,1,1,1,2,15,NULL,NULL),
(61,1,1,1,1,1,2,18,NULL,NULL),
(62,1,1,1,1,1,5,19,NULL,NULL),
(63,1,1,1,1,1,5,13,NULL,NULL),
(64,1,1,1,1,1,5,16,NULL,NULL),
(65,1,1,1,1,1,5,14,NULL,NULL),
(66,1,1,1,1,1,5,17,NULL,NULL),
(67,1,1,1,1,1,5,12,NULL,NULL),
(68,1,1,1,1,1,5,15,NULL,NULL),
(69,1,1,1,1,1,5,18,NULL,NULL),
(70,1,1,1,1,1,1,20,NULL,NULL),
(81,1,1,1,1,1,1,21,NULL,NULL),
(82,1,1,1,1,1,1,22,NULL,NULL),
(83,1,1,1,1,1,1,23,NULL,NULL),
(84,1,1,1,1,1,1,24,NULL,NULL),
(85,1,1,1,1,1,6,24,NULL,NULL),
(97,1,1,1,1,1,1,26,NULL,NULL),
(98,1,1,1,1,1,1,27,NULL,NULL),
(99,1,1,1,1,1,8,27,NULL,NULL),
(100,1,1,1,1,1,8,19,NULL,NULL),
(101,1,1,1,1,1,8,13,NULL,NULL),
(102,1,1,1,1,1,8,20,NULL,NULL),
(103,1,1,1,1,1,8,16,NULL,NULL),
(104,1,1,1,1,1,8,25,NULL,NULL),
(105,1,1,1,1,1,8,24,NULL,NULL),
(106,1,1,1,1,1,8,14,NULL,NULL),
(107,1,1,1,1,1,8,17,NULL,NULL),
(108,1,1,1,1,1,8,12,NULL,NULL),
(109,1,1,1,1,1,8,15,NULL,NULL),
(110,1,1,1,1,1,8,26,NULL,NULL),
(111,1,1,1,1,1,8,4,NULL,NULL),
(112,1,1,1,1,1,8,18,NULL,NULL);

/*Table structure for table `cms_settings` */

DROP TABLE IF EXISTS `cms_settings`;

CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_settings` */

insert  into `cms_settings`(`id`,`name`,`content`,`content_input_type`,`dataenum`,`helper`,`created_at`,`updated_at`,`group_setting`,`label`) values 
(1,'login_background_color',NULL,'text',NULL,'Input hexacode','2019-02-07 04:18:26',NULL,'Login Register Style','Login Background Color'),
(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2019-02-07 04:18:26',NULL,'Login Register Style','Login Font Color'),
(3,'login_background_image','uploads/2019-03/33621d71a267f72d7732aec0ccc215b0.png','upload_image',NULL,NULL,'2019-02-07 04:18:26',NULL,'Login Register Style','Login Background Image'),
(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2019-02-07 04:18:26',NULL,'Email Setting','Email Sender'),
(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2019-02-07 04:18:26',NULL,'Email Setting','Mail Driver'),
(6,'smtp_host','','text',NULL,NULL,'2019-02-07 04:18:26',NULL,'Email Setting','SMTP Host'),
(7,'smtp_port','25','text',NULL,'default 25','2019-02-07 04:18:26',NULL,'Email Setting','SMTP Port'),
(8,'smtp_username','','text',NULL,NULL,'2019-02-07 04:18:26',NULL,'Email Setting','SMTP Username'),
(9,'smtp_password','','text',NULL,NULL,'2019-02-07 04:18:26',NULL,'Email Setting','SMTP Password'),
(10,'appname','FMS','text',NULL,NULL,'2019-02-07 04:18:26',NULL,'Application Setting','Application Name'),
(11,'default_paper_size','A4','text',NULL,'Paper size, ex : A4, Legal, etc','2019-02-07 04:18:26',NULL,'Application Setting','Default Paper Print Size'),
(12,'logo','uploads/2019-03/4b777b5d57b2f28634990f6c86604793.png','upload_image',NULL,NULL,'2019-02-07 04:18:26',NULL,'Application Setting','Logo'),
(13,'favicon',NULL,'upload_image',NULL,NULL,'2019-02-07 04:18:26',NULL,'Application Setting','Favicon'),
(14,'api_debug_mode','true','select','true,false',NULL,'2019-02-07 04:18:26',NULL,'Application Setting','API Debug Mode'),
(15,'google_api_key',NULL,'text',NULL,NULL,'2019-02-07 04:18:26',NULL,'Application Setting','Google API Key'),
(16,'google_fcm_key',NULL,'text',NULL,NULL,'2019-02-07 04:18:26',NULL,'Application Setting','Google FCM Key');

/*Table structure for table `cms_statistic_components` */

DROP TABLE IF EXISTS `cms_statistic_components`;

CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_statistic_components` */

/*Table structure for table `cms_statistics` */

DROP TABLE IF EXISTS `cms_statistics`;

CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_statistics` */

/*Table structure for table `cms_users` */

DROP TABLE IF EXISTS `cms_users`;

CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*Data for the table `cms_users` */

insert  into `cms_users`(`id`,`name`,`username`,`photo`,`email`,`password`,`id_cms_privileges`,`created_at`,`updated_at`,`status`) values 
(1,'SA','','uploads/1/2019-02/avatar_372_456324.png','admin@crudbooster.com','$2y$10$9mt3jqtbsdeoSCAdiGdtaOWNWcPw7Esx1GJNy2z0asXQ7W3UwqWEu',1,'2019-02-07 04:18:24','2019-02-12 13:44:02','Active'),
(2,'Admin','','uploads/1/2019-02/avatar_372_456324.png','tezadwiaditya@yahoo.co.id','$2y$10$jIYtqQ8VvHgxNUVPpsKad.VAt.RBNZH1/vKNkzOF7M3EMynahkxmq',8,'2019-02-12 14:10:53',NULL,NULL),
(3,'Admin.HO','','uploads/1/2019-02/avatar_372_456324.png','admin@fms.com','$2y$10$Rtyhj4W/idy1tFWnjmqkJOw/GAdqlN/VOfZUTHJuF04IhR5lnl2P6',3,'2019-02-12 14:13:00',NULL,NULL),
(4,'Leader','','uploads/1/2019-02/avatar_372_456324.png','leader@fms.com','$2y$10$5xKyLYfoy2Qp2ObrK2EXnOvRPXlueAfJMDD8nMJQsL8GVCOeAbSMS',6,'2019-02-12 14:13:38',NULL,NULL),
(5,'Tenant.Relation','','uploads/1/2019-02/1024px_no_image_availablesvg.png','tr@fms.com','$2y$10$3ttY7.iRHS1urTFHk7ARW.8QTyW8LHU6vImhFOzyFzRjVasfsIy6a',9,'2019-02-12 14:16:52',NULL,NULL),
(6,'korea.ketapang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreaketapang@fms.com','$2y$10$E8ilDBJTYXIf9t8/SaFcBOUNFcosEEcwltameiI25g9sfQDfl3RDy',5,'2019-02-12 14:24:48',NULL,NULL),
(7,'korwil.2','','uploads/1/2019-02/1024px_no_image_availablesvg.png','korwil2@fms.com','$2y$10$PKV.bLH1iR1C0qwWnVP/IuBhIN/hxfyCJy8bnECfnsJL16ub8Hz/e',4,'2019-02-12 14:26:13',NULL,NULL),
(8,'korea.jakarta','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreajakarta@fms.com','$2y$10$EE1G7KVZPAAgQEvEvBtms.1kgGRetO3e0L.3gH5gqayWII7XhYhpS',5,'2019-02-12 14:27:27',NULL,NULL),
(9,'korea.bekasi','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreabekasi@fms.com','$2y$10$xQp2T15zq8MtD.Otg8gydOt0V08aHlH8AvBS/VLwWrhO4yMP2Xti6',5,'2019-02-12 14:27:47',NULL,NULL),
(10,'korea.bogor','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreabogor@fms.com','$2y$10$Kyj6EFp7XO/n2d/ffwHLbesHszL6eAU80nqiUj2/BOVR2s.Gg7oMC',5,'2019-02-12 14:28:16',NULL,NULL),
(11,'wisma.megamendung','','uploads/1/2019-02/1024px_no_image_availablesvg.png','wismamegamendung@fms.com','$2y$10$e7fzMcG0B43Y9KqV9hnF0.qmiQqo5LOdHLgBTQKztN0/yn8QNHNui',5,'2019-02-12 14:28:48',NULL,NULL),
(12,'korwil.3','','uploads/1/2019-02/1024px_no_image_availablesvg.png','korwilIII@fms.com','$2y$10$rRDD96xgm6v1ynPvhj8U/e7CxHZvNlnUS5RIp/3N2K1US0kGCWFb2',4,'2019-02-12 14:29:15',NULL,NULL),
(13,'korea.karawang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreakarawang@fms.com','$2y$10$SNg6I3jhscwv/jGZQruMb.eUOri5Y8Eqpq/7yl.QaJB6uDVRprSGS',5,'2019-02-12 14:31:08',NULL,NULL),
(14,'wisma.bandung','','uploads/1/2019-02/1024px_no_image_availablesvg.png','wismabandung@fms.com','$2y$10$w9pM9sEvt5M73/pT.TtOdeYD7GYuSeZnm5TrvhbNzsGBqfQ5cYrqu',5,'2019-02-12 14:31:24',NULL,NULL),
(15,'korea.cirebon','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreacirebon@fms.com','$2y$10$Gd26cwIBABsiqc6oxCrWFuwS/NU90bxMHgSgOLrKKV03MzMtUPkey',5,'2019-02-12 14:31:45',NULL,NULL),
(16,'korwil.4','','uploads/1/2019-02/1024px_no_image_availablesvg.png','korwilIV@fms.com','$2y$10$hPWR8BHBjjPT0/DGxmsmEuFwIMT7NbFbmFziHQSMbDNjRrS.3QOtS',4,'2019-02-12 14:32:04',NULL,NULL),
(17,'korea.tangerang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreatangerang@fms.com','$2y$10$4ILLH31SGRaMVA7RO/u5PeX8eyMK1m9G5N6HADnjOP5v5UdF/ymGa',5,'2019-02-12 14:32:23',NULL,NULL),
(18,'korea.cilegon','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreacilegon@fms.com','$2y$10$Q5FlXBHHSY9yJo/7r8U.yeUpoVru58j5pweLwbwuxTKvLw4y.EoG.',5,'2019-02-12 14:32:44',NULL,NULL),
(19,'korea.lampung','','uploads/1/2019-02/1024px_no_image_availablesvg.png','korealampung@fms.com','$2y$10$rZfuKcHavuS7Zv2m90PLTutjWSY42LUVqNZH5GpUrkpTlGLb0UHLS',5,'2019-02-12 14:33:09',NULL,NULL),
(20,'korea.palembang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreapalembang@fms.com','$2y$10$A.ICYtg5IxBV/bqFAGn3SuJhXy5SLL9RXThgnjA5Rf3J71/UuzZ9S',5,'2019-02-12 14:33:34',NULL,NULL),
(21,'korea.palembang.II','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreapalembang2@fms.com','$2y$10$FXOAr.k.cPGR1qRUKWt1yOz83o2tz562dJ4hy5PkJffjvdJbPlAc.',5,'2019-02-12 14:35:03',NULL,NULL),
(22,'korwil.5','','uploads/1/2019-02/1024px_no_image_availablesvg.png','korwilV@fms.com','$2y$10$1Bz4fjJ6HRG9gADhWz4AHOWM9QSvi0ZQzOREXvUdmsAiGia16M0.u',4,'2019-02-12 14:36:32',NULL,NULL),
(23,'korea.medan','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreamedan@fms.com','$2y$10$ReIWXlLKCWTfETGLMJaznes.nXyelc04St/rgkmjDwhy9s6b2LtDG',5,'2019-02-12 14:36:57',NULL,NULL),
(24,'korea.pekanbaru','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreapekanbaru@fms.com','$2y$10$52024WIDUnwU3HJd3GuID.aX2aY3btJPDl6TslQTUzRCFO/WwoHaC',5,'2019-02-12 14:37:19',NULL,NULL),
(25,'korea.batam','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreabatam@fms.com','$2y$10$11DU/hhnJrBmxcQMsJpQd.OHGBPlEtUceNzl4k6PYzVUPerehY8ai',5,'2019-02-12 14:37:40',NULL,NULL),
(26,'korwil.6','','uploads/1/2019-02/1024px_no_image_availablesvg.png','korwilVI@fms.com','$2y$10$7D3cuzBI8NgD0JeWS/TZy.7b.7/GAbwMyW4ZJQDvlbrUGUIIqsJje',4,'2019-02-12 14:38:07',NULL,NULL),
(27,'korea.semarang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreasemarang@fms.com','$2y$10$wFVSvdTwaJ7GyXBvnC9yCOWIi0X/a3IqVNt8N2WF9D7IlAMWi.ace',5,'2019-02-12 14:38:30',NULL,NULL),
(28,'korea.surabaya','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreasurabaya@fms.com','$2y$10$5Ctf2T0/7vXNyY3Bnd5j0ef6w4vTcrak.gt6xM.I/.UpK4slpc.Ka',5,'2019-02-12 14:42:13',NULL,NULL),
(29,'korea.sidoarjo','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreasidoarjo@fms.com','$2y$10$imbIvzTiNPYZ3TbQvfBHKutp4MhNvrG/GWbHKhI9OJ4r7lHNhKUMW',5,'2019-02-12 14:42:35',NULL,NULL),
(30,'korea.pasuruan','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreapasuruan@fms.com','$2y$10$aXdzrr/9eoCTVETLpuPXceHn7RaEV/iAc31kp5srgKly1vSmDmKNi',5,'2019-02-12 14:43:01',NULL,NULL),
(31,'korwil.7','','uploads/1/2019-02/1024px_no_image_availablesvg.png','korwilVII@fms.com','$2y$10$Okt5cvfkRsrH0Xl4dNtp3Okfam5NFjDmyXXU2Ox5n1Jb61Z70SKgK',4,'2019-02-12 14:43:29',NULL,NULL),
(32,'korea.tarakan','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreatarakan@fms.com','$2y$10$m98GSKVYlXSBAymMfdFbLOAk9ooboLTBy5tRYh59iLx2C8X.FiWHa',5,'2019-02-12 14:43:49',NULL,NULL),
(33,'korea.sorong','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreasorong@fms.com','$2y$10$cafl3YUbxS2nVC6Km8MlyOXErLUOxeRo0N5VurzWvnrmIKiI/FhEi',5,'2019-02-12 14:44:06',NULL,NULL),
(34,'korea.makasar','','uploads/1/2019-02/1024px_no_image_availablesvg.png','koreamakasar@fms.com','$2y$10$WPTqDo56tgHnYnbFnl86H.kYrlMBI8/u.rsFJPnrDFW2oAOCLtbQW',5,'2019-02-12 14:44:21',NULL,NULL),
(35,'korwil.1','','uploads/1/2019-02/1024px_no_image_availablesvg.png','korwilI@fms.com','$2y$10$6l7wysVe2gcxK/EIynj12uOPu6Wk9PDmUUzRYCkA9GcK/6sEVU882',4,'2019-02-12 14:44:48',NULL,NULL),
(36,'Unit.Head','','uploads/1/2019-02/1024px_no_image_availablesvg.png','UnitHead@fms.com','$2y$10$3eTIdwMLcw3zwMo5YOeID.SEo4xEOaXASMoN77YTNMrzjegVQajFm',2,'2019-02-12 14:45:34',NULL,NULL),
(37,'leader.ketapang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderketapang@fms.com','$2y$10$5UBPlBuzNGHJot7poUN/vOR/jGQi.QPX7hAWkyWXyP21x4fnndTv6',6,'2019-02-12 14:49:06',NULL,NULL),
(38,'leader.jakarta','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderjakarta@fms.com','$2y$10$U/UE42zFdvCH0/PwvcE0CON9qxsivab3V5e5dzx4RmY2.dV68tuV.',6,'2019-02-12 14:49:25',NULL,NULL),
(39,'leader.bekasi','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderbekasi@fms.com','$2y$10$Wx7Hd7nl1pFcKo4qdfyeqOFdNFCjvhfvsBkKSXYSUPLaUXacA3Izi',6,'2019-02-12 14:49:41',NULL,NULL),
(40,'leader.bogor','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderbogor@fms.com','$2y$10$WG8EwZxrTQgi57quz3XhT.c2/V1ftxkuWgMG6wPba1cmEeOZylESa',6,'2019-02-12 14:50:05',NULL,NULL),
(41,'leader.megamendung','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadermegamendung@fms.com','$2y$10$RbAHODluqmFXmcuuLsZKw.NET5iSzRbEARKwrJj4yzAQr37h2jotG',6,'2019-02-12 14:50:23',NULL,NULL),
(42,'leader.kerawang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderkerawang@fms.com','$2y$10$QdRBZxzaWNlxdaty45nSxO4LH88mPxJFfFsw.fysBWWJGtMdwhBaO',6,'2019-02-12 14:50:50',NULL,NULL),
(43,'leader.bandung','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderbandung@fms.com','$2y$10$aDY2o6uwjLVKtXUAzcGMZ.SeyDFK50Y4sewDP9Q9l.o1ZspcChZRG',6,'2019-02-12 14:51:09',NULL,NULL),
(44,'leader.cirebon','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadercirebon@fms.com','$2y$10$MOo9w1kSSA4riAAKUU.wq.gYo0.wUaBTwoPBPhhcJjXMu8UgvTnI.',6,'2019-02-12 14:51:39',NULL,NULL),
(45,'leader.tangerang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadertangerang@fms.com','$2y$10$w/l.DP4PQQO5GZb9eEu/DO5nGZMGLnG7yXUd78F6u82uY9TAlfQPq',6,'2019-02-12 14:52:21',NULL,NULL),
(46,'leader.cilegon','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadercilegon@fms.com','$2y$10$fqTE1/41I86HAd0XGWZa7.i6aLS4NtBrs3YKW8AT1ulw2b1niqJH6',6,'2019-02-12 14:52:40',NULL,NULL),
(47,'leader.lampung','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderlampung@fms.com','$2y$10$GMAC6108DEnOkS6wgcgayeA6SlOaFEA9bQWwNW4QoA7zcwPSgFX3i',6,'2019-02-12 14:52:57',NULL,NULL),
(48,'leader.palembang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderpalembang@fms.com','$2y$10$l52ZXdVEq/Fi9n4pjXNJsub/M15.Jt84AYb4R4XR3/4Cb88GbDyyK',6,'2019-02-12 14:53:13',NULL,NULL),
(49,'leader.medan','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadermedan@fms.com','$2y$10$GeN6c8wLVv5TM3D1yv2HPuqGs0vdBTsrPSSxv00clOd5qRsa6ppt6',6,'2019-02-12 14:53:31',NULL,NULL),
(50,'leader.pekanbaru','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderpekanbaru@fms.com','$2y$10$JUc7KEexehm.X0X.vjQNsO7Tuq7yz3v.CvOlIKiHrrFMM26U21dWu',6,'2019-02-12 14:53:49',NULL,NULL),
(51,'leader.semarang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadersemarang@fms.com','$2y$10$GPxDyOGlKrU7id3arsGOzeY8CkQ41DwIumWHm6aIwQEVqw33jMVZW',6,'2019-02-12 14:54:04',NULL,NULL),
(52,'leader.sidoarjo','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadersidoarjo@fms.com','$2y$10$r6Y3eLT9vhIAfvFrKn5.lednWHCUMHlzF/eEzc0Byq2XEuZkmDXd.',6,'2019-02-12 14:54:23',NULL,NULL),
(53,'leader.pasuruan','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leaderpasuruan@fms.com','$2y$10$gWpUXQmsszr5WLcaOsv6DeCXjBTjml5qqIem4Ewh5s6FygEose4z2',6,'2019-02-12 14:54:38',NULL,NULL),
(54,'leader.tarakan','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadertarakan@fms.com','$2y$10$iTIEF0AKmDYen9gL14WcVOPDxz5aGNVJfh.VNTUJc4ZdG7Qj50IoK',6,'2019-02-12 14:54:57',NULL,NULL),
(55,'leader.sorong','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadersorong@fms.com','$2y$10$7H8GlmX2hXzIKxS.Eyl2F.ZXMXAiydR.icld9tB73wh3STYFjWTtq',6,'2019-02-12 14:55:12',NULL,NULL),
(56,'leader.makasar','','uploads/1/2019-02/1024px_no_image_availablesvg.png','leadermakasar@fms.com','$2y$10$gwOtEW77oMn8umPe3l9JpOKCyF5yy9E730UyITuNdbr1Ex126/PWC',6,'2019-02-12 14:55:30',NULL,NULL),
(57,'salesarea.ketapang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareaketapang@fms.com','$2y$10$EGo5KgwPuuMHYd0I8azU8ugYEtT9JNYcVSWtk5eFKTYPd9Ot6BV5O',7,'2019-02-12 14:55:47',NULL,NULL),
(58,'salesarea.jakarta','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareajakarta@fms.com','$2y$10$ZwiQfxvSKX8Ej5zMLyTRyeZjFVcwLiSHUXNsrT/zHApjp2LqOKP9W',7,'2019-02-12 14:56:23',NULL,NULL),
(59,'salesarea.bekasi','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareabekasi@fms.com','$2y$10$5unNc8JBcTvVYVE5zvFcHOXJErUdL8.aKCq9yotVIvpGQHYfFLvZG',7,'2019-02-12 14:56:39',NULL,NULL),
(60,'salesarea.bogor','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareabogor@fms.com','$2y$10$9ubVI72KB1u3aQLmJ1p3l.mOD6e9JDpCLqBr2UjDtGNFYiTT0KExe',7,'2019-02-12 14:57:01',NULL,NULL),
(61,'salesarea.megamendung','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareamegamendung@fms.com','$2y$10$7Ld1E3cSldD6GwhxQB6EuectkPBYFd2HZSU1XQQz6zxM6PlxM1JpS',7,'2019-02-12 14:57:19',NULL,NULL),
(62,'salesarea.kerawang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareakerawang@fms.com','$2y$10$HVReSyHxyNNhZW9kyE40eeW61ab8Ic2HvrbAsuBLLB.ee74EgYa8q',7,'2019-02-12 14:57:37',NULL,NULL),
(63,'salesarea.bandung','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareabandung@fms.com','$2y$10$Wd3wnTMU8ti/zYeUTZv6VeATMcmxUREatvgZMzCM5pOuMynp3oTgu',7,'2019-02-12 14:57:58',NULL,NULL),
(64,'salesarea.cirebon','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareacirebon@fms.com','$2y$10$kdoL.gjUAkG/Zcx/Ftj1hehK21NkZthVOrcHKZ1NVh0oWPXTUFHj6',7,'2019-02-12 14:58:15',NULL,NULL),
(65,'salesarea.tangerang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareatangerang@fms.com','$2y$10$5fw2lLS11RovwkcB63iBBO2D5DdUuPPlP1jVvtAFl.7lRsp/Zg1c6',7,'2019-02-12 14:58:31',NULL,NULL),
(66,'salesarea.cilegon','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareacilegon@fms.com','$2y$10$htfl3M5Tj3TNLl1xig0P6.3/5JYiYSXLDI7BB5D5ArRsb1qMuhdGS',7,'2019-02-12 14:58:49',NULL,NULL),
(67,'salesarea.lampung','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesarealampung@fms.com','$2y$10$9nixmoraAs3MvuhNgwvy4uD85NMmubyhP5EYDZ7PAgAcguYXI3iP.',7,'2019-02-12 14:59:10',NULL,NULL),
(68,'salesarea.palembang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareapalembang@fms.com','$2y$10$oavfWq92RsfMedgbpMrbuOhwpzUsqgB.nXrlxDOVA8JfnguZ2MbAe',7,'2019-02-12 14:59:30',NULL,NULL),
(69,'salesarea.medan','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareamedan@fms.com','$2y$10$3JW/Do7K1gOVxm1tU9WgTe8Yl77hoM4ff7rmjSpK8SmLXoZtDLvvm',7,'2019-02-12 14:59:46',NULL,NULL),
(70,'salesarea.pekanbaru','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareapekanbaru@fms.com','$2y$10$05P/rSn6xrRedhc2GKK7d.nvg/vLHDnCsuT2dCDHzdhi/jK64ZPXG',7,'2019-02-12 15:00:03',NULL,NULL),
(71,'salesarea.semarang','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareasemarang@fms.com','$2y$10$lrzMHf8BVJADCLq6uONyCuBnzfkNUrKOVmAJNQP1G57ph7E/bVkHq',7,'2019-02-12 15:00:23',NULL,NULL),
(72,'salesarea.sidoarjo','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareasidoarjo@fms.com','$2y$10$IlQ5GOrYdv9qqAFm127cduHvxKUqipglxTH2b91uSfVwuc89v4aru',7,'2019-02-12 15:00:43',NULL,NULL),
(73,'salesarea.pasuruan','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareapasuruan@fms.com','$2y$10$tuH32uuopxE9UH52zmB4nunOTFRaC77rBCsOXa/6PvNYdDQwnDJpK',7,'2019-02-12 15:01:08',NULL,NULL),
(74,'salesarea.tarakan','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareatarakan@fms.com','$2y$10$pwSDCNB7Zx63Z1sTFgWzC.H5WTxnbPvC3JNOmgwLSuowJIZj79lHC',7,'2019-02-12 15:01:42',NULL,NULL),
(75,'salesarea.sorong','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareasorong@fms.com','$2y$10$2eX50dj8rJD.FiXBg0WWtez7sBwZ35qXmk3xYdxXIE6hu6bnNsFD.',7,'2019-02-12 15:02:02',NULL,NULL),
(76,'salesarea.makasar','','uploads/1/2019-02/1024px_no_image_availablesvg.png','salesareamakasar@fms.com','$2y$10$s5LTkml1ozoIW.e.r7GSv.1iY7aMze3r.tkc43.0ZXM0ILCz7N84q',7,'2019-02-12 15:02:19',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
