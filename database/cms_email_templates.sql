/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100134
 Source Host           : localhost:3306
 Source Schema         : fms

 Target Server Type    : MySQL
 Target Server Version : 100134
 File Encoding         : 65001

 Date: 16/05/2019 09:01:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-02-07 04:18:26', NULL);
INSERT INTO `cms_email_templates` VALUES (2, 'Complain', 'Complain', 'Complain', '<p>Yth Bapak/Ibu</p>\r\n<p>PEMBERITAHUAN</p>\r\n<p>Complain/Request Baru telah masuk di Facility Management System.</p>\r\n<table>\r\n    <tbody><tr>\r\n        <td>No Work Order</td>\r\n        <td>:</td>\r\n        <td>[no_workorder]</td>\r\n    </tr>\r\n    <tr><td>Tanggal</td>\r\n        <td>:</td>\r\n        <td>[tanggal]</td>\r\n    </tr>\r\n    <tr><td>User</td>\r\n        <td>:</td>\r\n        <td>[user]</td>\r\n    </tr>\r\n    <tr><td>Divisi/Satker</td>\r\n        <td>:</td>\r\n        <td>[divisi]</td>\r\n    </tr>\r\n    <tr><td>No Telepon</td>\r\n        <td>:</td>\r\n        <td>[no_telp]</td>\r\n    </tr>\r\n    <tr><td>Jenis/Kategori</td>\r\n        <td>:</td>\r\n        <td>[kategori]</td>\r\n    </tr>\r\n    <tr><td>Informasi</td>\r\n        <td>:</td>\r\n        <td>[informasi]</td>\r\n    </tr>\r\n</tbody></table>\r\n<p>Mohon agar dapat ditindaklanjuti dengan unit terkait</p>\r\n\r\n<p>\r\n        Catatan :\r\n\r\n        Email ini dikirim secara otomatis by system \r\n        \r\n        <strong>Mohon untuk tidak mereply</strong>\r\n        \r\n</p>', 'Complain', 'Facility Management System', 'fms.pgnmas@gmail.com', 'dsc.pgnmas@gmail.com', '2019-05-06 03:17:20', '2019-05-10 00:49:39');
INSERT INTO `cms_email_templates` VALUES (3, 'ComplainDone', 'ComplainDone', 'Complain Done', '<p>Yth Bapak/Ibu,&nbsp;</p>\r\n<p>Facility Management System telah menerima hasil penyelesaian complain/request sebagai berikut,\r\n</p><div>\r\n        <table>\r\n                <tbody><tr>\r\n                    <td>NO TICKET HALOMAS</td>\r\n                    <td>:</td>\r\n                    <td>[no_halomas]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>NO WORK ORDER</td>\r\n                    <td>:</td>\r\n                    <td>[no_workorder]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>LOKASI</td>\r\n                    <td>:</td>\r\n                    <td>[lokasi]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>JENIS/KATEGORI</td>\r\n                    <td>:</td>\r\n                    <td>[kategori]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>KELUHAN CUSTOMER</td>\r\n                    <td>:</td>\r\n                    <td>[uraian_complain]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>CATATAN PENGELOLA</td>\r\n                    <td>:</td>\r\n                    <td>[catatan]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>STATUS</td>\r\n                    <td>:</td>\r\n                    <td>[status]</td>\r\n                </tr>\r\n            </tbody></table>\r\n</div>   \r\n   \r\n    <p>Klik tautan berikut LINK</p>\r\n    \r\n    Mohon agar dilakukan pengecekan kembali\r\n    Catatan : Email ini dikirim secara otomatis by system &gt;Mohon untuk tidak mereply', 'Complain Done', 'Facility Management System', 'fms.pgnmas@gmail.com', 'dsc.pgnmas@gmail.com', '2019-05-09 06:00:13', '2019-05-09 06:06:46');
INSERT INTO `cms_email_templates` VALUES (4, 'PenilaianSla', 'LaporanSLA', 'Laporan Penilaian SLA', '<p>Yth Bpk/Ibu,</p>\r\n<p>[nama_sa]</p> \r\n<p>[jabatan]</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode [bulan] [tahun] sebagai berikut :</p>\r\n\r\n<p> LOKASI : <b>[lokasi]</b><br></p>\r\n<p> PELAKSANAAN 	: [pelaksanaan]</p>\r\n<p> PENCAPAIAN : [pencapaian]</p>\r\n\r\n<p> Klik tautan berikut [link]<br></p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p>', 'Penilaian SLA', 'Facility Management System', 'fms.pgnmas@gmail.com', 'dsc.pgnmas@gmail.com', '2019-05-15 14:45:19', '2019-05-16 01:25:36');

SET FOREIGN_KEY_CHECKS = 1;
