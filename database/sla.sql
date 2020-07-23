/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : fms

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 13/05/2019 08:30:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sla
-- ----------------------------
DROP TABLE IF EXISTS `sla`;
CREATE TABLE `sla`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun` int(4) NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sla
-- ----------------------------
INSERT INTO `sla` VALUES (1, 'Pengamanan', 2019, '2019-05-10 02:01:05.000000');
INSERT INTO `sla` VALUES (2, 'Pengelolaan Pemeliharaan Asets', 2019, '2019-05-10 02:01:13.000000');
INSERT INTO `sla` VALUES (3, 'Pengelolaan Perawatan Aset', 2019, '2019-05-10 02:01:20.000000');
INSERT INTO `sla` VALUES (4, 'Penyediaan fasilitas khusus', 2019, '2019-05-10 02:01:28.000000');
INSERT INTO `sla` VALUES (5, 'Penyediaan perijinan terkait bangunan dan lingkungan', 2019, '2019-05-10 02:01:37.000000');
INSERT INTO `sla` VALUES (6, 'Pengelolaan fasilitas perparkiran', 2019, '2019-05-10 02:01:45.000000');
INSERT INTO `sla` VALUES (7, 'Pengelolaan penyediaan assesoris gedung', 2019, '2019-05-10 02:01:54.000000');
INSERT INTO `sla` VALUES (8, 'Pengelolaan Wisma dan Rumah dinas', 2019, '2019-05-10 02:02:03.000000');
INSERT INTO `sla` VALUES (9, 'Pengelolaan Keluhan', 2019, '2019-05-10 02:02:11.000000');

SET FOREIGN_KEY_CHECKS = 1;
