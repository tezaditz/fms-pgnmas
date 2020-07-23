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

 Date: 13/05/2019 08:29:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for regional
-- ----------------------------
DROP TABLE IF EXISTS `regional`;
CREATE TABLE `regional`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uraian` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of regional
-- ----------------------------
INSERT INTO `regional` VALUES (12, 'Sumatera Utara', NULL);
INSERT INTO `regional` VALUES (14, 'Riau', NULL);
INSERT INTO `regional` VALUES (15, 'Jambi', NULL);
INSERT INTO `regional` VALUES (16, 'Sumatera Selatan', NULL);
INSERT INTO `regional` VALUES (18, 'Lampung', NULL);
INSERT INTO `regional` VALUES (21, 'Kepri', NULL);
INSERT INTO `regional` VALUES (31, 'DKI Jakarta', NULL);
INSERT INTO `regional` VALUES (32, 'Jawa Barat', NULL);
INSERT INTO `regional` VALUES (33, 'Jawa Tengah', NULL);
INSERT INTO `regional` VALUES (35, 'Jawa Timur', NULL);
INSERT INTO `regional` VALUES (36, 'Banten', NULL);
INSERT INTO `regional` VALUES (61, 'Kalimantan Barat', NULL);
INSERT INTO `regional` VALUES (73, 'Sulawesi Selatan', NULL);

SET FOREIGN_KEY_CHECKS = 1;
