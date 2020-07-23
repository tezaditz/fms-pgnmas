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

 Date: 13/05/2019 08:28:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wilayah
-- ----------------------------
DROP TABLE IF EXISTS `wilayah`;
CREATE TABLE `wilayah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regional_id` int(11) NULL DEFAULT NULL,
  `uraian` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_wilayah_regional_1`(`regional_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wilayah
-- ----------------------------
INSERT INTO `wilayah` VALUES (1, 32, 'Bandung', NULL);
INSERT INTO `wilayah` VALUES (2, 21, 'Batam', NULL);
INSERT INTO `wilayah` VALUES (3, 32, 'Bekasi', NULL);
INSERT INTO `wilayah` VALUES (4, 32, 'Bogor', NULL);
INSERT INTO `wilayah` VALUES (5, 36, 'Cilegon', NULL);
INSERT INTO `wilayah` VALUES (6, 32, 'Cirebon', NULL);
INSERT INTO `wilayah` VALUES (7, 31, 'Jakarta', NULL);
INSERT INTO `wilayah` VALUES (8, 15, 'Jambi', NULL);
INSERT INTO `wilayah` VALUES (9, 32, 'Karawang', NULL);
INSERT INTO `wilayah` VALUES (10, 18, 'Lampung', NULL);
INSERT INTO `wilayah` VALUES (11, 73, 'Makassar', NULL);
INSERT INTO `wilayah` VALUES (12, 12, 'Medan', NULL);
INSERT INTO `wilayah` VALUES (13, 16, 'Palembang', NULL);
INSERT INTO `wilayah` VALUES (14, 35, 'Pasuruan', NULL);
INSERT INTO `wilayah` VALUES (15, 14, 'Pekanbaru', NULL);
INSERT INTO `wilayah` VALUES (16, 35, 'Probolinggo', NULL);
INSERT INTO `wilayah` VALUES (17, 33, 'Semarang', NULL);
INSERT INTO `wilayah` VALUES (18, 36, 'Serang', NULL);
INSERT INTO `wilayah` VALUES (19, 35, 'Sidoarjo', NULL);
INSERT INTO `wilayah` VALUES (20, 35, 'Surabaya', NULL);
INSERT INTO `wilayah` VALUES (21, 36, 'Tangerang', NULL);
INSERT INTO `wilayah` VALUES (22, 61, 'Tarakan', NULL);

SET FOREIGN_KEY_CHECKS = 1;
