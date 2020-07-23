/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : fms-live

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 11/07/2020 09:27:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for history_penilaian_sla
-- ----------------------------
DROP TABLE IF EXISTS `history_penilaian_sla`;
CREATE TABLE `history_penilaian_sla`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_m_penilaian` int(11) NULL DEFAULT NULL,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `tanggal_approval` datetime(0) NULL DEFAULT NULL,
  `ketersediaan_fasilitas` double NULL DEFAULT NULL,
  `nilai_maksimum` double NULL DEFAULT NULL,
  `persentase_pelaksanaan` double NULL DEFAULT NULL,
  `pencapaian` double NULL DEFAULT NULL,
  `catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
