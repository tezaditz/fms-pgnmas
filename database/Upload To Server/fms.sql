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

 Date: 11/04/2019 08:48:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wilayah_id` int(11) NULL DEFAULT NULL,
  `uraian` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_area_wilayah_1`(`wilayah_id`) USING BTREE,
  CONSTRAINT `fk_area_wilayah_1` FOREIGN KEY (`wilayah_id`) REFERENCES `wilayah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, 1, 'All', '2019-02-12 05:32:57');
INSERT INTO `area` VALUES (2, 2, 'Manhattan', '2019-02-12 05:33:23');
INSERT INTO `area` VALUES (3, 2, 'Ketapang', '2019-02-12 05:33:31');
INSERT INTO `area` VALUES (4, 2, 'Jakarta - Jalan Anyer', NULL);
INSERT INTO `area` VALUES (5, 3, 'Bogor', NULL);
INSERT INTO `area` VALUES (6, 3, 'Megamendung', NULL);
INSERT INTO `area` VALUES (7, 3, 'Bekasi', NULL);
INSERT INTO `area` VALUES (8, 4, 'Bandung', NULL);
INSERT INTO `area` VALUES (9, 4, 'Karawang', NULL);
INSERT INTO `area` VALUES (10, 4, 'Cirebon', NULL);
INSERT INTO `area` VALUES (11, 5, 'Tangerang', NULL);
INSERT INTO `area` VALUES (12, 5, 'Cilegon', NULL);
INSERT INTO `area` VALUES (13, 5, 'Lampung', NULL);
INSERT INTO `area` VALUES (14, 5, 'Palembang', NULL);
INSERT INTO `area` VALUES (15, 5, 'Offtake Palembang', NULL);
INSERT INTO `area` VALUES (16, 6, 'Medan', NULL);
INSERT INTO `area` VALUES (17, 6, 'Pekanbaru', NULL);
INSERT INTO `area` VALUES (18, 6, 'Batam', NULL);
INSERT INTO `area` VALUES (19, 7, 'Surabaya', NULL);
INSERT INTO `area` VALUES (20, 7, 'Sidoarjo', NULL);
INSERT INTO `area` VALUES (21, 7, 'Pasuruan', NULL);
INSERT INTO `area` VALUES (22, 7, 'Semarang', NULL);
INSERT INTO `area` VALUES (23, 8, 'Makassar', NULL);
INSERT INTO `area` VALUES (24, 8, 'Tarakan', NULL);
INSERT INTO `area` VALUES (25, 2, 'Daan Mogot', NULL);
INSERT INTO `area` VALUES (26, 2, 'Juanda', NULL);
INSERT INTO `area` VALUES (27, 8, 'Sorong', NULL);

-- ----------------------------
-- Table structure for aset
-- ----------------------------
DROP TABLE IF EXISTS `aset`;
CREATE TABLE `aset`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `telp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pln_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pam_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of aset
-- ----------------------------
INSERT INTO `aset` VALUES (1, 1, 'All', 0, 0, '', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (3, 3, 'Gedung A Pusat', 31, 3174, 'Jl. K.H. Zainul Arifin No. 20', 'Bangunan', '4824', 'uploads/1/2019-02/gedunga.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (4, 3, 'Gedung B Pusat', 31, 3174, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat', 'Bangunan', '5299.13', 'uploads/1/2019-02/gedungb.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (5, 3, 'Gedung C Pusat', 31, 3174, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat', 'Bangunan', '3708', 'uploads/1/2019-02/gedungc.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (6, 3, 'Graha PGAS Pusat', 31, 3174, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat', 'Bangunan', '14975.05', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (7, 3, 'Gedung Parkir Pusat', 31, 3174, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat', 'Bangunan', '5384', 'uploads/1/2019-02/gedung_parkir.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (8, 3, 'Gedung Utilitas Pusat', 31, 3174, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat', 'Bangunan', '1215', 'uploads/1/2019-02/gedung_utilitas.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (9, 3, 'Gedung Penunjang Pusat', 31, 3174, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat', 'Bangunan', '993', 'uploads/1/2019-02/gedung_penunjang.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (10, 3, 'Masjid Al Istiqomah', 31, 3174, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat', 'Bangunan', '723.03', 'uploads/1/2019-02/masjid.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (11, 2, 'The Manhattan Square', 31, 3171, 'The Manhattan Square Lt. 26-30, Jl. TB. Simatupang, Cilandak Timur, Jakarta Selatan', 'Bangunan', '6275', 'uploads/1/2019-02/the_manhattan_square.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (12, 26, 'Kantor PGN Juanda', 31, 3173, 'Jl. Juanda 4B, Kebon Kelapa, Gambir, Jakarta Pusat', 'Bangunan', '649.92', 'uploads/1/2019-02/gedung_juanda.png', NULL, '-', '-', '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (13, 25, 'Masjid Gang Macan', 31, 3174, 'Jl. Daan Mogot Gg. Macan, Duri, Kebon Jeruk, Jakarta Barat', 'Bangunan', '1270.86', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (14, 25, 'Gedung Serba Guna', 31, 3174, 'Jl. Daan Mogot Gg. Macan, Duri, Kebon Jeruk, Jakarta Barat', 'Bangunan', '4221.5', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (15, 25, 'Gedung Eks PDJB - Daan Mogot', 31, 3174, 'Jl. Daan Mogot Gg. Macan, Duri, Kebon Jeruk, Jakarta Barat', 'Bangunan', '900', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (16, 4, 'Kantor PGN Jakarta', 31, 3173, 'Jl. Anyer 10-11, Menteng, Jakarta Pusat', 'Bangunan', '1627', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', '021-3924910', NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (17, 4, 'Gedung Arsip Klender', 31, 3172, 'Jl. Swadaya PLN, Klender, Jakarta Timur', 'Bangunan', '544', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (18, 7, 'Kantor PGN Bekasi', 32, 3275, 'Jl. Pekayon Raya, Bekasi', 'Bangunan', '328', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (19, 7, 'Gedung Sabilillah', 32, 3275, 'Gang Sabilillah, Jl. Raya Sultan Agung, Medan Satria, Bekasi', 'Bangunan', '365', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (20, 5, 'Kantor PGN Bogor', 32, 3201, 'Jl. M.A. Salmun No. 41, Ciwaringin, Bogor', 'Bangunan', '5199', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (21, 6, 'Wisma Direksi VIP Megamendung', 32, 3201, 'Wisma Megamendung, Bogor', 'Bangunan', '921.73', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (22, 6, 'Wisma Diklat Megamendung', 32, 3201, 'Wisma Megamendung, Bogor', 'Bangunan', '733', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (23, 8, 'Gedung Herritage PGN Braga', 32, 3273, 'Jl. Braga No. 40, Braga, Sumur Bandung, Bandung', 'Bangunan', '1707', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (24, 8, 'Wisma dan Kantor Bandung', 32, 3273, 'Jl. Serang No. 2-12', 'Bangunan', '2045', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (25, 8, 'Bangunan Diklat Bandung', 32, 3273, 'Jl. Serang No. 2-12', 'Bangunan', '600', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (26, 11, 'Bangunan Serang 10', 32, 3273, 'Jl. Serang No. 2-12', 'Bangunan', '135', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (27, 11, 'Bangunan Serang 12', 32, 3273, 'Jl. Serang No. 2-12', 'Bangunan', '124', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (28, 11, 'Bangunan Serang 3 - Arsip TSJ Bandung', 32, 3273, 'Jl. Serang No. 1-9', 'Bangunan', '726.42', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (29, 11, 'Gedung Arsip Bandung', 32, 3273, 'Jl. Serang No. 1-9', 'Bangunan', '1668', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (30, 11, 'Bangunan Serang 5/Wisma Direksi', 32, 3273, 'Jl. Serang No. 1-9', 'Bangunan', '392.27', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (31, 11, 'Bangunan Serang 9', 32, 3273, 'Jl. Serang No. 1-9', 'Bangunan', '419.74', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (32, 11, 'Kantor Pengelola & Arsip Bandung', 32, 3273, 'Jl. Serang No. 1-9', 'Bangunan', '1651', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (33, 11, 'Bangunan Penunjang Bandung', 32, 3273, 'Jl. Serang No. 1-9', 'Bangunan', '100', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (34, 23, 'Bangunan Makasar Carekang', 73, 7371, 'Jl Sungai Cerekang, Gaddong, Bontoala, Makassar', 'Bangunan', '561', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (35, 23, 'Bangunan Makasar Panakukang', 73, 7371, 'Kompleks Panakkukang Mas, Jl. Tulip Blok C1 No. 12, Panakkukang, Makassar', 'Bangunan', '160', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (36, 22, 'Kantor PGN Semarang', 33, 3374, 'Jl. Diponegoro No. 35, Lempong Sari, Gajah Mungkur, Semarang', 'Bangunan', '785.05', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (37, 22, 'Rumah Wahidin Semarang', 33, 3374, 'Jl. Dr. Wahidin S No. 32, Karanganyar Gunung, Candisari, Semarang', 'Bangunan', '125', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (38, 19, 'Kantor PGN Surabaya', 35, 3578, 'Jl. Pemuda No. 56 - 58, Surabaya', 'Bangunan', '7679.85', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (39, 19, 'Gedung Ngagel Surabaya', 35, 3578, 'Jl Ngagel 129-131, Surabaya', 'Bangunan', '1301.07', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (40, 21, 'Kantor PGN Pasuruan', 35, 3578, 'Jl. Rembang Industri Raya, Kawasan PIER, Pasuruan', 'Bangunan', '653.03', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (41, 20, 'Kantor PGN Sidoarjo', 35, 3578, 'Jl. Jaksa Agung Suprapto No.17, Sidoklumpuk, Sidoarjo', 'Bangunan', '928.27', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (42, 9, 'Kantor PGN Karawang', 32, 3215, 'Jl. Ahmad Yani, Karang Pawitan, Karawang', 'Bangunan', '1609.29', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (43, 11, 'Kantor PGN Tangerang', 36, 3671, 'Jl. Pahlawan Seribu, Rawabuntu, Serpong, Tangerang Selatan', 'Bangunan', '1822.47', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (44, 12, 'Kantor PGN Cilegon', 36, 3672, 'Jl. Raya Merak, Cilegon', 'Bangunan', '960', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (45, 10, 'Kantor PGN Cirebon (Gd. Utama)', 32, 3209, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon', 'Bangunan', '909', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (46, 10, 'Gedung PGASOL - Ex. Workshop Cirebon', 32, 3209, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon', 'Bangunan', '378', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (47, 10, 'Gedung PGASOL Belakang - Cirebon', 32, 3209, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon', 'Bangunan', '346', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (48, 10, 'Gudang HBB dan Arsip - Cirebon', 32, 3209, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon', 'Bangunan', '480', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (49, 10, 'Rumah Dinas Cirebon', 32, 3209, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon', 'Bangunan', '337', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (50, 10, 'Rumah Dinas Belakang', 32, 3209, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon', 'Bangunan', '108', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (51, 10, 'Gedung PI', 32, 3209, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon', 'Bangunan', '148', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (52, 10, 'GOR Cirebon', 32, 3209, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon', 'Bangunan', '826', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (53, 14, 'Kantor PGN Palembang', 16, 1671, 'Jl. Merdeka, Bukit Kecil, Palembang', 'Bangunan', '6118.12', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (54, 13, 'Kantor PGN Lampung', 18, 1871, 'Graha Sucofindo Lt.3, Bandarlampung', 'Bangunan', '400', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (55, 16, 'Kantor PGN Medan (Imam Bonjol)', 12, 1275, 'Jl. Imam Bonjol No.15-D, Medan', 'Bangunan', '725.8', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (56, 16, 'Kantor Area Medan kecuali BMCS dan Gudang', 12, 1275, 'Jl. Yos Sudarso Lorong XII, Glugur ', 'Bangunan', '3716', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (57, 16, 'Rumah Dinas Uskup Agung', 12, 1275, 'Jl. Uskup Agung S Pranoto No.16, Medan', 'Bangunan', '405.55', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (58, 18, 'Kantor PGN Batam', 21, 2171, 'Jl. Engku Putri Batam Center, Batam', 'Bangunan', '4939.31', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (59, 17, 'Kantor PGN Pekanbaru', 14, 1471, 'Jl. Jenderal Sudirman, Tengkerang, Pekanbaru', 'Bangunan', '514', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (60, 24, 'Kantor PGN Tarakan', 65, 6571, 'Jl. Mulawarman No. 14B, Tarakan', 'Bangunan', '459', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, '2018-06-03 03:30:05');
INSERT INTO `aset` VALUES (68, 6, 'Halaman Rumah Dinas Direksi Megamendung', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (69, 3, 'Tanah Kantor Ketapang', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (70, NULL, 'Tanah/Rumah Dinas Pondok hijau Permai', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (71, NULL, 'Tanah Kosong Pondok Hijau Permai', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (72, NULL, 'Tanah Kosong Klender', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (73, NULL, 'Tanah Jambi (Jl.Sri Dewi)', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (74, NULL, 'Tanah Jambi (Jl. Lorong Purnawira)', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (75, NULL, 'Tanah/Kantor Rayon Makassar dan Gudang', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (76, NULL, 'Halaman/Bangun Kosong Jl.MI.Ridwan Rais No.8', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (77, NULL, 'Halaman/Bangun Kosong Jl.MI.Ridwan Rais No.2-4', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (78, NULL, 'Tanah Kosong Jl. Ahmad Yani', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (79, NULL, 'Tanah/Kantor Operasional Bekasi', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (80, NULL, 'Tanah Pekayon', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (81, NULL, 'Halaman dan Lapangan tenis Area Bogor', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (82, NULL, 'Tanah Bandung Jl.Serang 3-9', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (83, NULL, 'Bangunan/Lapangan Tenis', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (84, NULL, 'Tanah Kosong Sleko', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (85, NULL, 'Tanah Wahidin (dikurangi bangunan rumah dinas)', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (86, NULL, 'Tanah Kosong Trompo Asri', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (87, NULL, 'Tanah Kosong Desa Pesisir Sumber Asih Purbolingo', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (88, NULL, 'Tanah Kosong di Glugur', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (89, NULL, 'Tanah Kosong di Glugur Lorong XII', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (90, NULL, 'Tanah Kosong di Glugur Lorong XV', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (91, NULL, 'Tanah/Rencana Kantor Area Cilegon', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (92, NULL, 'Tanah/Rencana Kantor Area Lampung', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (93, NULL, 'Tanah/Rencana Kantor Area Pekanbaru', 0, 0, '', '', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bulan
-- ----------------------------
DROP TABLE IF EXISTS `bulan`;
CREATE TABLE `bulan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_singkat` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bulan
-- ----------------------------
INSERT INTO `bulan` VALUES (1, 'Januari', 'Jan', NULL);
INSERT INTO `bulan` VALUES (2, 'Februari', 'Feb', NULL);
INSERT INTO `bulan` VALUES (3, 'Maret', 'Mar', NULL);
INSERT INTO `bulan` VALUES (4, 'April', 'Apr', NULL);
INSERT INTO `bulan` VALUES (5, 'Mei', 'Mei', NULL);
INSERT INTO `bulan` VALUES (6, 'Juni', 'Jun', NULL);
INSERT INTO `bulan` VALUES (7, 'Juli', 'Jul', NULL);
INSERT INTO `bulan` VALUES (8, 'Agustus', 'Aug', NULL);
INSERT INTO `bulan` VALUES (9, 'September', 'Sep', NULL);
INSERT INTO `bulan` VALUES (10, 'Oktober', 'Okt', NULL);
INSERT INTO `bulan` VALUES (11, 'November', 'Nov', NULL);
INSERT INTO `bulan` VALUES (12, 'Desember', 'Des', NULL);

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `aksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kolom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `orderby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sub_query_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sql_where` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `method_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `responses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------
INSERT INTO `cms_apicustom` VALUES (8, 'complain_list', 'complain', 'list', NULL, NULL, NULL, NULL, 'complain_list', NULL, NULL, NULL, NULL, 'get', 'a:11:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:12:\"nama_pemohon\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:12:\"unit_pelapor\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:17:\"jenis_complain_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:6:\"uraian\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:7:\"aset_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:6:\"lokasi\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:9:\"status_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:13:\"tanggal_masuk\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:15:\"tanggal_selesai\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:11:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:5:\"nomor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:12:\"nama_pemohon\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:12:\"unit_pelapor\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:17:\"jenis_complain_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:6:\"uraian\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:7:\"aset_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:6:\"lokasi\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:9:\"status_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:13:\"tanggal_masuk\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:15:\"tanggal_selesai\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hit` int(11) NULL DEFAULT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------
INSERT INTO `cms_apikey` VALUES (3, 'c8d23cda2264f21ff7d555c62f2e114c', 0, 'active', '2019-03-30 14:37:13', NULL);
INSERT INTO `cms_apikey` VALUES (4, '829c063c422afb317bed7b57f31a96bf', 0, 'active', '2019-03-30 18:35:55', NULL);

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_at` datetime(0) NULL DEFAULT NULL,
  `email_recipient` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_cc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `email_attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_sent` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-02-07 04:18:26', NULL);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 429 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES (1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-08 23:33:37', NULL);
INSERT INTO `cms_logs` VALUES (2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-08 23:35:00', NULL);
INSERT INTO `cms_logs` VALUES (3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-09 03:37:17', NULL);
INSERT INTO `cms_logs` VALUES (4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/edit-save/100', 'Update data  at Detail SLA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-09 03:56:20', NULL);
INSERT INTO `cms_logs` VALUES (5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/edit-save/51', 'Update data  at Detail SLA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-09 03:59:17', NULL);
INSERT INTO `cms_logs` VALUES (6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete-image', 'Delete the image of Gedung A Pusat at Master Aset', '', 1, '2019-02-09 04:59:48', NULL);
INSERT INTO `cms_logs` VALUES (7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/3', 'Update data Gedung A Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedunga.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:00:21', NULL);
INSERT INTO `cms_logs` VALUES (8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete-image', 'Delete the image of Gedung B Pusat at Master Aset', '', 1, '2019-02-09 05:01:01', NULL);
INSERT INTO `cms_logs` VALUES (9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/4', 'Update data Gedung B Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedungb.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:01:24', NULL);
INSERT INTO `cms_logs` VALUES (10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete-image', 'Delete the image of Gedung C Pusat at Master Aset', '', 1, '2019-02-09 05:05:57', NULL);
INSERT INTO `cms_logs` VALUES (11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/5', 'Update data Gedung C Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedungc.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:06:16', NULL);
INSERT INTO `cms_logs` VALUES (12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete-image', 'Delete the image of Graha PGAS Pusat at Master Aset', '', 1, '2019-02-09 05:10:44', NULL);
INSERT INTO `cms_logs` VALUES (13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/6', 'Update data Graha PGAS Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/1024px_no_image_availablesvg.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:15:52', NULL);
INSERT INTO `cms_logs` VALUES (14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete-image', 'Delete the image of Gedung Parkir Pusat at Master Aset', '', 1, '2019-02-09 05:16:09', NULL);
INSERT INTO `cms_logs` VALUES (15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/7', 'Update data Gedung Parkir Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedung_parkir.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:16:26', NULL);
INSERT INTO `cms_logs` VALUES (16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete-image', 'Delete the image of Gedung Utilitas Pusat at Master Aset', '', 1, '2019-02-09 05:16:38', NULL);
INSERT INTO `cms_logs` VALUES (17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/8', 'Update data Gedung Utilitas Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedung_utilitas.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:16:51', NULL);
INSERT INTO `cms_logs` VALUES (18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete-image', 'Delete the image of Gedung Penunjang Pusat at Master Aset', '', 1, '2019-02-09 05:17:08', NULL);
INSERT INTO `cms_logs` VALUES (19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/9', 'Update data Gedung Penunjang Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedung_penunjang.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:17:22', NULL);
INSERT INTO `cms_logs` VALUES (20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete-image', 'Delete the image of Masjid Al Istiqomah at Master Aset', '', 1, '2019-02-09 05:17:37', NULL);
INSERT INTO `cms_logs` VALUES (21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/10', 'Update data Masjid Al Istiqomah at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/masjid.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:17:49', NULL);
INSERT INTO `cms_logs` VALUES (22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete-image', 'Delete the image of The Manhattan Square at Master Aset', '', 1, '2019-02-09 05:18:04', NULL);
INSERT INTO `cms_logs` VALUES (23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/11', 'Update data The Manhattan Square at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3171</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/the_manhattan_square.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:18:17', NULL);
INSERT INTO `cms_logs` VALUES (24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/delete/94', 'Delete data test at Master Aset', '', 1, '2019-02-09 05:40:22', NULL);
INSERT INTO `cms_logs` VALUES (25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/12', 'Update data Kantor PGN Juanda at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3173</td><td></td></tr><tr><td>foto</td><td></td><td>uploads/1/2019-02/gedung_juanda.png</td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 1, '2019-02-09 05:41:11', NULL);
INSERT INTO `cms_logs` VALUES (26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/3', 'Update data Gedung A Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>telp</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-09 05:44:49', NULL);
INSERT INTO `cms_logs` VALUES (27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Work Order at Menu Management', '', 1, '2019-02-09 05:49:43', NULL);
INSERT INTO `cms_logs` VALUES (28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Rutin Terencana at Menu Management', '', 1, '2019-02-09 05:50:39', NULL);
INSERT INTO `cms_logs` VALUES (29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Setting SLA Aset at Menu Management', '', 1, '2019-02-09 11:05:15', NULL);
INSERT INTO `cms_logs` VALUES (30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Rutin  Non Rutin Terencana at Menu Management', '', 1, '2019-02-09 11:54:30', NULL);
INSERT INTO `cms_logs` VALUES (31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Complain at Menu Management', '', 1, '2019-02-09 11:55:02', NULL);
INSERT INTO `cms_logs` VALUES (32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Request at Menu Management', '', 1, '2019-02-09 13:13:04', NULL);
INSERT INTO `cms_logs` VALUES (33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Setting Ketersediaan at Menu Management', '', 1, '2019-02-09 13:28:50', NULL);
INSERT INTO `cms_logs` VALUES (34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/6', 'Update data Setting SLA Aset at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminSaControllerGetIndex</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-02-09 13:31:51', NULL);
INSERT INTO `cms_logs` VALUES (35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/add-save', 'Add New Data  at Detail SLA', '', 1, '2019-02-09 13:35:33', NULL);
INSERT INTO `cms_logs` VALUES (36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/delete/101', 'Delete data 101 at Detail SLA', '', 1, '2019-02-09 13:35:50', NULL);
INSERT INTO `cms_logs` VALUES (37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/10', 'Update data Setting Ketersediaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminSdasetControllerGetIndex</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-02-09 18:11:43', NULL);
INSERT INTO `cms_logs` VALUES (38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-10 03:10:18', NULL);
INSERT INTO `cms_logs` VALUES (39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 01:45:37', NULL);
INSERT INTO `cms_logs` VALUES (40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/edit-save/1', 'Update data aSA at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>SA</td><td>aSA</td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-02/user_logo_png_4.png</td></tr><tr><td>password</td><td>$2y$10$arp3OBtfk7xE0oNciFOwoe2oiG9q6Ku6svk/xHx1VQjgQDN1Tx5jW</td><td>$2y$10$a.8ws0UDMS.NiVNoQwpWbem.Qu8a47qJe9E14v0119fOADIUSCOie</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-02-12 01:48:33', NULL);
INSERT INTO `cms_logs` VALUES (41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 01:48:39', NULL);
INSERT INTO `cms_logs` VALUES (42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 01:48:55', NULL);
INSERT INTO `cms_logs` VALUES (43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sdaset/delete/10', 'Delete data 10 at Ketersediaan Aset', '', 1, '2019-02-12 01:49:06', NULL);
INSERT INTO `cms_logs` VALUES (44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sdaset/delete/9', 'Delete data 9 at Ketersediaan Aset', '', 1, '2019-02-12 01:49:25', NULL);
INSERT INTO `cms_logs` VALUES (45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/reg/add-save', 'Add New Data  at Regional', '', 1, '2019-02-12 05:01:22', NULL);
INSERT INTO `cms_logs` VALUES (46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/reg/add-save', 'Add New Data  at Regional', '', 1, '2019-02-12 05:01:29', NULL);
INSERT INTO `cms_logs` VALUES (47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/reg/add-save', 'Add New Data  at Regional', '', 1, '2019-02-12 05:01:37', NULL);
INSERT INTO `cms_logs` VALUES (48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/wil/add-save', 'Add New Data  at Wilayah', '', 1, '2019-02-12 05:26:22', NULL);
INSERT INTO `cms_logs` VALUES (49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/wil/add-save', 'Add New Data  at Wilayah', '', 1, '2019-02-12 05:27:22', NULL);
INSERT INTO `cms_logs` VALUES (50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/wil/add-save', 'Add New Data  at Wilayah', '', 1, '2019-02-12 05:27:41', NULL);
INSERT INTO `cms_logs` VALUES (51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/wil/add-save', 'Add New Data  at Wilayah', '', 1, '2019-02-12 05:27:50', NULL);
INSERT INTO `cms_logs` VALUES (52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/wil/add-save', 'Add New Data  at Wilayah', '', 1, '2019-02-12 05:28:20', NULL);
INSERT INTO `cms_logs` VALUES (53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/wil/add-save', 'Add New Data  at Wilayah', '', 1, '2019-02-12 05:28:29', NULL);
INSERT INTO `cms_logs` VALUES (54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/wil/add-save', 'Add New Data  at Wilayah', '', 1, '2019-02-12 05:28:42', NULL);
INSERT INTO `cms_logs` VALUES (55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/wil/add-save', 'Add New Data  at Wilayah', '', 1, '2019-02-12 05:28:49', NULL);
INSERT INTO `cms_logs` VALUES (56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/area/add-save', 'Add New Data  at Area', '', 1, '2019-02-12 05:32:57', NULL);
INSERT INTO `cms_logs` VALUES (57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/area/add-save', 'Add New Data  at Area', '', 1, '2019-02-12 05:33:23', NULL);
INSERT INTO `cms_logs` VALUES (58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/area/add-save', 'Add New Data  at Area', '', 1, '2019-02-12 05:33:31', NULL);
INSERT INTO `cms_logs` VALUES (59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Referensi at Menu Management', '', 1, '2019-02-12 06:54:41', NULL);
INSERT INTO `cms_logs` VALUES (60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/3', 'Update data Gedung A Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area_id</td><td></td><td>3</td></tr><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>telp</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-12 07:04:43', NULL);
INSERT INTO `cms_logs` VALUES (61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/4', 'Update data Gedung B Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area_id</td><td></td><td>3</td></tr><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>telp</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-12 07:04:53', NULL);
INSERT INTO `cms_logs` VALUES (62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/5', 'Update data Gedung C Pusat at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area_id</td><td></td><td>3</td></tr><tr><td>provinsi_id</td><td>31</td><td></td></tr><tr><td>kota_id</td><td>3174</td><td></td></tr><tr><td>telp</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-12 07:05:03', NULL);
INSERT INTO `cms_logs` VALUES (63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-02-12 08:46:11', NULL);
INSERT INTO `cms_logs` VALUES (64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 13:42:41', NULL);
INSERT INTO `cms_logs` VALUES (65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/delete-image', 'Delete the image of Super Admin at Users Management', '', 1, '2019-02-12 13:43:01', NULL);
INSERT INTO `cms_logs` VALUES (66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>username</td><td>SA</td><td></td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-02/avatar_372_456324.png</td></tr><tr><td>password</td><td>$2y$10$a.8ws0UDMS.NiVNoQwpWbem.Qu8a47qJe9E14v0119fOADIUSCOie</td><td>$2y$10$9mt3jqtbsdeoSCAdiGdtaOWNWcPw7Esx1GJNy2z0asXQ7W3UwqWEu</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-02-12 13:44:02', NULL);
INSERT INTO `cms_logs` VALUES (67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 13:44:36', NULL);
INSERT INTO `cms_logs` VALUES (68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 13:45:09', NULL);
INSERT INTO `cms_logs` VALUES (69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 13:45:45', NULL);
INSERT INTO `cms_logs` VALUES (70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 13:46:05', NULL);
INSERT INTO `cms_logs` VALUES (71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 13:46:45', NULL);
INSERT INTO `cms_logs` VALUES (72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 13:46:58', NULL);
INSERT INTO `cms_logs` VALUES (73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 13:47:49', NULL);
INSERT INTO `cms_logs` VALUES (74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 13:58:37', NULL);
INSERT INTO `cms_logs` VALUES (75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 14:03:52', NULL);
INSERT INTO `cms_logs` VALUES (76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 14:04:39', NULL);
INSERT INTO `cms_logs` VALUES (77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 14:06:46', NULL);
INSERT INTO `cms_logs` VALUES (78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 14:08:43', NULL);
INSERT INTO `cms_logs` VALUES (79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Admin at Users Management', '', 1, '2019-02-12 14:10:53', NULL);
INSERT INTO `cms_logs` VALUES (80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Admin HO at Users Management', '', 1, '2019-02-12 14:13:00', NULL);
INSERT INTO `cms_logs` VALUES (81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Leader at Users Management', '', 1, '2019-02-12 14:13:38', NULL);
INSERT INTO `cms_logs` VALUES (82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Tenant Relation at Users Management', '', 1, '2019-02-12 14:16:52', NULL);
INSERT INTO `cms_logs` VALUES (83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea ketapang at Users Management', '', 1, '2019-02-12 14:24:48', NULL);
INSERT INTO `cms_logs` VALUES (84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korwil II at Users Management', '', 1, '2019-02-12 14:26:13', NULL);
INSERT INTO `cms_logs` VALUES (85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea jakarta at Users Management', '', 1, '2019-02-12 14:27:27', NULL);
INSERT INTO `cms_logs` VALUES (86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea bekasi at Users Management', '', 1, '2019-02-12 14:27:47', NULL);
INSERT INTO `cms_logs` VALUES (87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea bogor at Users Management', '', 1, '2019-02-12 14:28:16', NULL);
INSERT INTO `cms_logs` VALUES (88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data wisma megamendung at Users Management', '', 1, '2019-02-12 14:28:48', NULL);
INSERT INTO `cms_logs` VALUES (89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korwil III at Users Management', '', 1, '2019-02-12 14:29:15', NULL);
INSERT INTO `cms_logs` VALUES (90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea karawang at Users Management', '', 1, '2019-02-12 14:31:08', NULL);
INSERT INTO `cms_logs` VALUES (91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data wisma bandung at Users Management', '', 1, '2019-02-12 14:31:24', NULL);
INSERT INTO `cms_logs` VALUES (92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea cirebon at Users Management', '', 1, '2019-02-12 14:31:45', NULL);
INSERT INTO `cms_logs` VALUES (93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korwil IV at Users Management', '', 1, '2019-02-12 14:32:04', NULL);
INSERT INTO `cms_logs` VALUES (94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea tangerang at Users Management', '', 1, '2019-02-12 14:32:23', NULL);
INSERT INTO `cms_logs` VALUES (95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea cilegon at Users Management', '', 1, '2019-02-12 14:32:44', NULL);
INSERT INTO `cms_logs` VALUES (96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea lampung at Users Management', '', 1, '2019-02-12 14:33:09', NULL);
INSERT INTO `cms_logs` VALUES (97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea palembang at Users Management', '', 1, '2019-02-12 14:33:34', NULL);
INSERT INTO `cms_logs` VALUES (98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea palembang II at Users Management', '', 1, '2019-02-12 14:35:03', NULL);
INSERT INTO `cms_logs` VALUES (99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korwil V at Users Management', '', 1, '2019-02-12 14:36:32', NULL);
INSERT INTO `cms_logs` VALUES (100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea medan at Users Management', '', 1, '2019-02-12 14:36:58', NULL);
INSERT INTO `cms_logs` VALUES (101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea pekanbaru at Users Management', '', 1, '2019-02-12 14:37:19', NULL);
INSERT INTO `cms_logs` VALUES (102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea batam at Users Management', '', 1, '2019-02-12 14:37:41', NULL);
INSERT INTO `cms_logs` VALUES (103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korwil VI at Users Management', '', 1, '2019-02-12 14:38:07', NULL);
INSERT INTO `cms_logs` VALUES (104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea semarang at Users Management', '', 1, '2019-02-12 14:38:30', NULL);
INSERT INTO `cms_logs` VALUES (105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 14:39:17', NULL);
INSERT INTO `cms_logs` VALUES (106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 14:39:33', NULL);
INSERT INTO `cms_logs` VALUES (107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 14:40:46', NULL);
INSERT INTO `cms_logs` VALUES (108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 14:40:47', NULL);
INSERT INTO `cms_logs` VALUES (109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 14:41:24', NULL);
INSERT INTO `cms_logs` VALUES (110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea surabaya at Users Management', '', 1, '2019-02-12 14:42:13', NULL);
INSERT INTO `cms_logs` VALUES (111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea sidoarjo at Users Management', '', 1, '2019-02-12 14:42:36', NULL);
INSERT INTO `cms_logs` VALUES (112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea pasuruan at Users Management', '', 1, '2019-02-12 14:43:01', NULL);
INSERT INTO `cms_logs` VALUES (113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korwil VII at Users Management', '', 1, '2019-02-12 14:43:29', NULL);
INSERT INTO `cms_logs` VALUES (114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea tarakan at Users Management', '', 1, '2019-02-12 14:43:49', NULL);
INSERT INTO `cms_logs` VALUES (115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea sorong at Users Management', '', 1, '2019-02-12 14:44:06', NULL);
INSERT INTO `cms_logs` VALUES (116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea makasar at Users Management', '', 1, '2019-02-12 14:44:21', NULL);
INSERT INTO `cms_logs` VALUES (117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korwil I at Users Management', '', 1, '2019-02-12 14:44:48', NULL);
INSERT INTO `cms_logs` VALUES (118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Unit Head at Users Management', '', 1, '2019-02-12 14:45:34', NULL);
INSERT INTO `cms_logs` VALUES (119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader ketapang at Users Management', '', 1, '2019-02-12 14:49:06', NULL);
INSERT INTO `cms_logs` VALUES (120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader jakarta at Users Management', '', 1, '2019-02-12 14:49:25', NULL);
INSERT INTO `cms_logs` VALUES (121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader bekasi at Users Management', '', 1, '2019-02-12 14:49:42', NULL);
INSERT INTO `cms_logs` VALUES (122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader bogor at Users Management', '', 1, '2019-02-12 14:50:05', NULL);
INSERT INTO `cms_logs` VALUES (123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader megamendung at Users Management', '', 1, '2019-02-12 14:50:23', NULL);
INSERT INTO `cms_logs` VALUES (124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader kerawang at Users Management', '', 1, '2019-02-12 14:50:50', NULL);
INSERT INTO `cms_logs` VALUES (125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader bandung at Users Management', '', 1, '2019-02-12 14:51:09', NULL);
INSERT INTO `cms_logs` VALUES (126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader cirebon at Users Management', '', 1, '2019-02-12 14:51:39', NULL);
INSERT INTO `cms_logs` VALUES (127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader tangerang at Users Management', '', 1, '2019-02-12 14:52:21', NULL);
INSERT INTO `cms_logs` VALUES (128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader cilegon at Users Management', '', 1, '2019-02-12 14:52:40', NULL);
INSERT INTO `cms_logs` VALUES (129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader lampung at Users Management', '', 1, '2019-02-12 14:52:57', NULL);
INSERT INTO `cms_logs` VALUES (130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader palembang at Users Management', '', 1, '2019-02-12 14:53:13', NULL);
INSERT INTO `cms_logs` VALUES (131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader medan at Users Management', '', 1, '2019-02-12 14:53:31', NULL);
INSERT INTO `cms_logs` VALUES (132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader pekanbaru at Users Management', '', 1, '2019-02-12 14:53:49', NULL);
INSERT INTO `cms_logs` VALUES (133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader semarang at Users Management', '', 1, '2019-02-12 14:54:05', NULL);
INSERT INTO `cms_logs` VALUES (134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader sidoarjo at Users Management', '', 1, '2019-02-12 14:54:23', NULL);
INSERT INTO `cms_logs` VALUES (135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader pasuruan at Users Management', '', 1, '2019-02-12 14:54:38', NULL);
INSERT INTO `cms_logs` VALUES (136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader tarakan at Users Management', '', 1, '2019-02-12 14:54:57', NULL);
INSERT INTO `cms_logs` VALUES (137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader sorong at Users Management', '', 1, '2019-02-12 14:55:12', NULL);
INSERT INTO `cms_logs` VALUES (138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data leader makasar at Users Management', '', 1, '2019-02-12 14:55:30', NULL);
INSERT INTO `cms_logs` VALUES (139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea ketapang at Users Management', '', 1, '2019-02-12 14:55:47', NULL);
INSERT INTO `cms_logs` VALUES (140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea jakarta at Users Management', '', 1, '2019-02-12 14:56:23', NULL);
INSERT INTO `cms_logs` VALUES (141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea bekasi at Users Management', '', 1, '2019-02-12 14:56:39', NULL);
INSERT INTO `cms_logs` VALUES (142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea bogor at Users Management', '', 1, '2019-02-12 14:57:01', NULL);
INSERT INTO `cms_logs` VALUES (143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea megamendung at Users Management', '', 1, '2019-02-12 14:57:19', NULL);
INSERT INTO `cms_logs` VALUES (144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea kerawang at Users Management', '', 1, '2019-02-12 14:57:37', NULL);
INSERT INTO `cms_logs` VALUES (145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea bandung at Users Management', '', 1, '2019-02-12 14:57:58', NULL);
INSERT INTO `cms_logs` VALUES (146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea cirebon at Users Management', '', 1, '2019-02-12 14:58:15', NULL);
INSERT INTO `cms_logs` VALUES (147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea tangerang at Users Management', '', 1, '2019-02-12 14:58:31', NULL);
INSERT INTO `cms_logs` VALUES (148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea cilegon at Users Management', '', 1, '2019-02-12 14:58:49', NULL);
INSERT INTO `cms_logs` VALUES (149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea lampung at Users Management', '', 1, '2019-02-12 14:59:10', NULL);
INSERT INTO `cms_logs` VALUES (150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea palembang at Users Management', '', 1, '2019-02-12 14:59:30', NULL);
INSERT INTO `cms_logs` VALUES (151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea medan at Users Management', '', 1, '2019-02-12 14:59:46', NULL);
INSERT INTO `cms_logs` VALUES (152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea pekanbaru at Users Management', '', 1, '2019-02-12 15:00:03', NULL);
INSERT INTO `cms_logs` VALUES (153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea semarang at Users Management', '', 1, '2019-02-12 15:00:23', NULL);
INSERT INTO `cms_logs` VALUES (154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea sidoarjo at Users Management', '', 1, '2019-02-12 15:00:43', NULL);
INSERT INTO `cms_logs` VALUES (155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea pasuruan at Users Management', '', 1, '2019-02-12 15:01:08', NULL);
INSERT INTO `cms_logs` VALUES (156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea tarakan at Users Management', '', 1, '2019-02-12 15:01:42', NULL);
INSERT INTO `cms_logs` VALUES (157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea sorong at Users Management', '', 1, '2019-02-12 15:02:02', NULL);
INSERT INTO `cms_logs` VALUES (158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data salesarea makasar at Users Management', '', 1, '2019-02-12 15:02:19', NULL);
INSERT INTO `cms_logs` VALUES (159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 15:05:04', NULL);
INSERT INTO `cms_logs` VALUES (160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-02-12 15:05:13', NULL);
INSERT INTO `cms_logs` VALUES (161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-02-12 15:05:19', NULL);
INSERT INTO `cms_logs` VALUES (162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 15:09:37', NULL);
INSERT INTO `cms_logs` VALUES (163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/ua/add-save', 'Add New Data  at User Aset', '', 1, '2019-02-12 15:52:42', NULL);
INSERT INTO `cms_logs` VALUES (164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 15:59:09', NULL);
INSERT INTO `cms_logs` VALUES (165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 15:59:47', NULL);
INSERT INTO `cms_logs` VALUES (166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:00:12', NULL);
INSERT INTO `cms_logs` VALUES (167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:00:53', NULL);
INSERT INTO `cms_logs` VALUES (168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:02:30', NULL);
INSERT INTO `cms_logs` VALUES (169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:03:24', NULL);
INSERT INTO `cms_logs` VALUES (170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:03:49', NULL);
INSERT INTO `cms_logs` VALUES (171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:03:59', NULL);
INSERT INTO `cms_logs` VALUES (172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:04:18', NULL);
INSERT INTO `cms_logs` VALUES (173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:04:28', NULL);
INSERT INTO `cms_logs` VALUES (174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:05:19', NULL);
INSERT INTO `cms_logs` VALUES (175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:05:33', NULL);
INSERT INTO `cms_logs` VALUES (176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/add-save', 'Add New Data  at Aset Area', '', 1, '2019-02-12 16:12:34', NULL);
INSERT INTO `cms_logs` VALUES (177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/delete/13', 'Delete data 13 at Aset Area', '', 1, '2019-02-12 16:14:29', NULL);
INSERT INTO `cms_logs` VALUES (178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset_area/action-selected', 'Delete data 17,16,15,14 at Aset Area', '', 1, '2019-02-12 16:14:55', NULL);
INSERT INTO `cms_logs` VALUES (179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/module_generator/delete/22', 'Delete data Aset Area at Module Generator', '', 1, '2019-02-12 16:44:02', NULL);
INSERT INTO `cms_logs` VALUES (180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/ua/add-save', 'Add New Data  at User Aset', '', 1, '2019-02-12 16:45:43', NULL);
INSERT INTO `cms_logs` VALUES (181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 1, '2019-02-12 17:26:19', NULL);
INSERT INTO `cms_logs` VALUES (182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/1', 'Delete data 1 at Master Penilaian', '', 1, '2019-02-12 17:30:45', NULL);
INSERT INTO `cms_logs` VALUES (183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 1, '2019-02-12 17:39:55', NULL);
INSERT INTO `cms_logs` VALUES (184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/2', 'Delete data 2 at Master Penilaian', '', 1, '2019-02-12 17:47:05', NULL);
INSERT INTO `cms_logs` VALUES (185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 1, '2019-02-12 17:47:23', NULL);
INSERT INTO `cms_logs` VALUES (186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/3', 'Delete data 3 at Master Penilaian', '', 1, '2019-02-12 17:48:05', NULL);
INSERT INTO `cms_logs` VALUES (187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 1, '2019-02-12 17:48:18', NULL);
INSERT INTO `cms_logs` VALUES (188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-13 00:42:35', NULL);
INSERT INTO `cms_logs` VALUES (189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-13 00:42:57', NULL);
INSERT INTO `cms_logs` VALUES (190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-13 00:47:52', NULL);
INSERT INTO `cms_logs` VALUES (191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Penilaian SLA at Menu Management', '', 1, '2019-02-13 00:48:43', NULL);
INSERT INTO `cms_logs` VALUES (192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/delete/19', 'Delete data Penilaian SLA at Menu Management', '', 1, '2019-02-13 00:49:23', NULL);
INSERT INTO `cms_logs` VALUES (193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/18', 'Update data Penilaian SLA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Master Penilaian</td><td>Penilaian SLA</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-02-13 00:49:41', NULL);
INSERT INTO `cms_logs` VALUES (194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Utilitas at Menu Management', '', 1, '2019-02-13 00:50:02', NULL);
INSERT INTO `cms_logs` VALUES (195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Pemakaian Listrik at Menu Management', '', 1, '2019-02-13 00:50:37', NULL);
INSERT INTO `cms_logs` VALUES (196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Pemakaian Air at Menu Management', '', 1, '2019-02-13 00:51:08', NULL);
INSERT INTO `cms_logs` VALUES (197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Solar at Menu Management', '', 1, '2019-02-13 00:51:39', NULL);
INSERT INTO `cms_logs` VALUES (198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Limbah at Menu Management', '', 1, '2019-02-13 00:51:58', NULL);
INSERT INTO `cms_logs` VALUES (199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22', 'Update data Air at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Pemakaian Air</td><td>Air</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-13 00:52:10', NULL);
INSERT INTO `cms_logs` VALUES (200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/21', 'Update data Listrik at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Pemakaian Listrik</td><td>Listrik</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2019-02-13 00:52:49', NULL);
INSERT INTO `cms_logs` VALUES (201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 1, '2019-02-13 00:54:38', NULL);
INSERT INTO `cms_logs` VALUES (202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/5', 'Delete data 5 at Master Penilaian', '', 1, '2019-02-13 00:57:44', NULL);
INSERT INTO `cms_logs` VALUES (203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/5', 'Delete data 5 at Master Penilaian', '', 1, '2019-02-13 00:58:57', NULL);
INSERT INTO `cms_logs` VALUES (204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/5', 'Delete data 5 at Master Penilaian', '', 1, '2019-02-13 00:59:08', NULL);
INSERT INTO `cms_logs` VALUES (205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/5', 'Delete data 5 at Master Penilaian', '', 1, '2019-02-13 00:59:36', NULL);
INSERT INTO `cms_logs` VALUES (206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 1, '2019-02-13 00:59:52', NULL);
INSERT INTO `cms_logs` VALUES (207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/6', 'Delete data 6 at Master Penilaian', '', 1, '2019-02-13 00:59:57', NULL);
INSERT INTO `cms_logs` VALUES (208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 1, '2019-02-13 01:00:28', NULL);
INSERT INTO `cms_logs` VALUES (209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/7', 'Delete data 7 at Master Penilaian', '', 1, '2019-02-13 01:00:33', NULL);
INSERT INTO `cms_logs` VALUES (210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/delete/4', 'Delete data 4 at Master Penilaian', '', 1, '2019-02-13 01:01:57', NULL);
INSERT INTO `cms_logs` VALUES (211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 1, '2019-02-13 01:02:10', NULL);
INSERT INTO `cms_logs` VALUES (212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 1, '2019-02-13 01:02:17', NULL);
INSERT INTO `cms_logs` VALUES (213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-20 08:02:57', NULL);
INSERT INTO `cms_logs` VALUES (214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-21 00:50:48', NULL);
INSERT INTO `cms_logs` VALUES (215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-21 00:51:20', NULL);
INSERT INTO `cms_logs` VALUES (216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-21 00:51:34', NULL);
INSERT INTO `cms_logs` VALUES (217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-21 00:54:40', NULL);
INSERT INTO `cms_logs` VALUES (218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-03-21 01:03:55', NULL);
INSERT INTO `cms_logs` VALUES (219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-21 08:02:17', NULL);
INSERT INTO `cms_logs` VALUES (220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/5', 'Update data Rutin Terencana at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-03-21 08:19:26', NULL);
INSERT INTO `cms_logs` VALUES (221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/5', 'Update data Rutin Terencana at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-03-21 08:19:38', NULL);
INSERT INTO `cms_logs` VALUES (222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/1', 'Update data SLA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-03-21 08:19:50', NULL);
INSERT INTO `cms_logs` VALUES (223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/2', 'Update data Detail SLA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-03-21 08:19:59', NULL);
INSERT INTO `cms_logs` VALUES (224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/6', 'Update data Setting SLA Aset at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-03-21 08:20:12', NULL);
INSERT INTO `cms_logs` VALUES (225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/10', 'Update data Setting Ketersediaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-03-21 08:20:22', NULL);
INSERT INTO `cms_logs` VALUES (226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-03-21 08:21:15', NULL);
INSERT INTO `cms_logs` VALUES (227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/4', 'Update data Work Order at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-03-21 08:24:13', NULL);
INSERT INTO `cms_logs` VALUES (228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-03-21 08:24:20', NULL);
INSERT INTO `cms_logs` VALUES (229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-03-21 08:24:30', NULL);
INSERT INTO `cms_logs` VALUES (230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-03-22 12:09:02', NULL);
INSERT INTO `cms_logs` VALUES (231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-03-22 12:32:39', NULL);
INSERT INTO `cms_logs` VALUES (232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-22 12:32:49', NULL);
INSERT INTO `cms_logs` VALUES (233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/20', 'Update data Utilitas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-03-22 12:33:11', NULL);
INSERT INTO `cms_logs` VALUES (234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/21', 'Update data Listrik at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2019-03-22 12:34:04', NULL);
INSERT INTO `cms_logs` VALUES (235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22', 'Update data Air at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-03-22 12:34:19', NULL);
INSERT INTO `cms_logs` VALUES (236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/23', 'Update data Solar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-03-22 12:34:31', NULL);
INSERT INTO `cms_logs` VALUES (237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/24', 'Update data Limbah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-03-22 12:34:44', NULL);
INSERT INTO `cms_logs` VALUES (238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-22 12:35:13', NULL);
INSERT INTO `cms_logs` VALUES (239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-03-22 12:35:49', NULL);
INSERT INTO `cms_logs` VALUES (240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-22 12:43:56', NULL);
INSERT INTO `cms_logs` VALUES (241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/21', 'Update data Listrik at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Module</td></tr><tr><td>path</td><td>#</td><td>listrik</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2019-03-22 12:49:54', NULL);
INSERT INTO `cms_logs` VALUES (242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik', 'Try view the data :name at listrik', '', 37, '2019-03-22 12:50:33', NULL);
INSERT INTO `cms_logs` VALUES (243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-03-22 12:50:38', NULL);
INSERT INTO `cms_logs` VALUES (244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-03-22 12:50:49', NULL);
INSERT INTO `cms_logs` VALUES (245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/delete/92', 'Delete data 92 at listrik', '', 37, '2019-03-22 12:51:01', NULL);
INSERT INTO `cms_logs` VALUES (246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 16:05:17', NULL);
INSERT INTO `cms_logs` VALUES (247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 16:18:48', NULL);
INSERT INTO `cms_logs` VALUES (248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 16:21:03', NULL);
INSERT INTO `cms_logs` VALUES (249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 16:28:04', NULL);
INSERT INTO `cms_logs` VALUES (250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 16:33:57', NULL);
INSERT INTO `cms_logs` VALUES (251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 16:34:52', NULL);
INSERT INTO `cms_logs` VALUES (252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 16:37:36', NULL);
INSERT INTO `cms_logs` VALUES (253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 16:40:12', NULL);
INSERT INTO `cms_logs` VALUES (254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-03-22 16:57:22', NULL);
INSERT INTO `cms_logs` VALUES (255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderjakarta@fms.com login with IP Address 127.0.0.1', '', 38, '2019-03-22 16:57:55', NULL);
INSERT INTO `cms_logs` VALUES (256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-03-22 23:42:09', NULL);
INSERT INTO `cms_logs` VALUES (257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/delete/5', 'Delete data 5 at listrik', '', 37, '2019-03-22 23:42:28', NULL);
INSERT INTO `cms_logs` VALUES (258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/delete/8', 'Delete data 8 at listrik', '', 37, '2019-03-22 23:42:34', NULL);
INSERT INTO `cms_logs` VALUES (259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/delete/6', 'Delete data 6 at listrik', '', 37, '2019-03-22 23:42:43', NULL);
INSERT INTO `cms_logs` VALUES (260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/delete/7', 'Delete data 7 at listrik', '', 37, '2019-03-22 23:42:49', NULL);
INSERT INTO `cms_logs` VALUES (261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 23:46:41', NULL);
INSERT INTO `cms_logs` VALUES (262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-22 23:59:47', NULL);
INSERT INTO `cms_logs` VALUES (263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 00:01:40', NULL);
INSERT INTO `cms_logs` VALUES (264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 00:03:30', NULL);
INSERT INTO `cms_logs` VALUES (265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 00:18:09', NULL);
INSERT INTO `cms_logs` VALUES (266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 00:19:09', NULL);
INSERT INTO `cms_logs` VALUES (267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 01:25:29', NULL);
INSERT INTO `cms_logs` VALUES (268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 01:26:00', NULL);
INSERT INTO `cms_logs` VALUES (269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 02:33:45', NULL);
INSERT INTO `cms_logs` VALUES (270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 02:34:21', NULL);
INSERT INTO `cms_logs` VALUES (271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 02:38:47', NULL);
INSERT INTO `cms_logs` VALUES (272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 02:39:16', NULL);
INSERT INTO `cms_logs` VALUES (273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 02:39:46', NULL);
INSERT INTO `cms_logs` VALUES (274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 02:45:43', NULL);
INSERT INTO `cms_logs` VALUES (275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 02:46:18', NULL);
INSERT INTO `cms_logs` VALUES (276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 02:46:45', NULL);
INSERT INTO `cms_logs` VALUES (277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 37, '2019-03-23 03:01:29', NULL);
INSERT INTO `cms_logs` VALUES (278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabogor@fms.com logout', '', 10, '2019-04-01 06:42:05', NULL);
INSERT INTO `cms_logs` VALUES (279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwil2@fms.com login with IP Address 127.0.0.1', '', 7, '2019-04-01 06:42:33', NULL);
INSERT INTO `cms_logs` VALUES (280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwil2@fms.com login with IP Address 127.0.0.1', '', 7, '2019-04-01 10:13:32', NULL);
INSERT INTO `cms_logs` VALUES (281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwil2@fms.com logout', '', 7, '2019-04-01 11:07:40', NULL);
INSERT INTO `cms_logs` VALUES (282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwil2@fms.com login with IP Address 127.0.0.1', '', 7, '2019-04-01 11:07:56', NULL);
INSERT INTO `cms_logs` VALUES (283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwil2@fms.com logout', '', 7, '2019-04-01 11:08:10', NULL);
INSERT INTO `cms_logs` VALUES (284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabogor@fms.com login with IP Address 127.0.0.1', '', 10, '2019-04-01 11:08:39', NULL);
INSERT INTO `cms_logs` VALUES (285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabogor@fms.com logout', '', 10, '2019-04-01 11:28:12', NULL);
INSERT INTO `cms_logs` VALUES (286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-01 11:28:18', NULL);
INSERT INTO `cms_logs` VALUES (287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-01 11:29:53', NULL);
INSERT INTO `cms_logs` VALUES (288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'salesareajakarta@fms.com login with IP Address 127.0.0.1', '', 58, '2019-04-01 11:30:26', NULL);
INSERT INTO `cms_logs` VALUES (289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'salesareajakarta@fms.com logout', '', 58, '2019-04-01 11:30:37', NULL);
INSERT INTO `cms_logs` VALUES (290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabogor@fms.com login with IP Address 127.0.0.1', '', 10, '2019-04-01 11:30:53', NULL);
INSERT INTO `cms_logs` VALUES (291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabogor@fms.com logout', '', 10, '2019-04-01 14:02:47', NULL);
INSERT INTO `cms_logs` VALUES (292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwil2@fms.com login with IP Address 127.0.0.1', '', 7, '2019-04-01 14:03:24', NULL);
INSERT INTO `cms_logs` VALUES (293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwil2@fms.com logout', '', 7, '2019-04-01 14:03:35', NULL);
INSERT INTO `cms_logs` VALUES (294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 2, '2019-04-01 14:03:49', NULL);
INSERT INTO `cms_logs` VALUES (295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik', 'Try view the data :name at listrik', '', 2, '2019-04-01 14:06:19', NULL);
INSERT INTO `cms_logs` VALUES (296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 2, '2019-04-01 14:06:32', NULL);
INSERT INTO `cms_logs` VALUES (297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-01 14:06:44', NULL);
INSERT INTO `cms_logs` VALUES (298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/24', 'Update data Limbah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminLimbahControllerGetIndex</td></tr><tr><td>icon</td><td>fa fa-th-list</td><td>fa fa-table</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-04-01 14:09:38', NULL);
INSERT INTO `cms_logs` VALUES (299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/limbah/add-save', 'Add New Data  at Limbah', '', 1, '2019-04-01 14:38:54', NULL);
INSERT INTO `cms_logs` VALUES (300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22', 'Update data Air at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminAirController</td></tr><tr><td>icon</td><td>fa fa-th-list</td><td>fa fa-gear</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-01 14:45:37', NULL);
INSERT INTO `cms_logs` VALUES (301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/23', 'Update data Solar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminSolarControllerGetIndex</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-04-01 14:46:22', NULL);
INSERT INTO `cms_logs` VALUES (302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22', 'Update data Air at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminAirController</td><td>AdminAirControllerGetIndex</td></tr><tr><td>icon</td><td>fa fa-gear</td><td>fa fa-th-list</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-01 14:47:09', NULL);
INSERT INTO `cms_logs` VALUES (303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22', 'Update data Air at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-01 14:51:50', NULL);
INSERT INTO `cms_logs` VALUES (304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Air/add-save', 'Add New Data  at Air', '', 1, '2019-04-01 15:34:21', NULL);
INSERT INTO `cms_logs` VALUES (305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Air/add-save', 'Add New Data  at Air', '', 1, '2019-04-01 15:37:24', NULL);
INSERT INTO `cms_logs` VALUES (306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Solar/add-save', 'Add New Data  at Solar', '', 1, '2019-04-01 15:40:54', NULL);
INSERT INTO `cms_logs` VALUES (307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 2, '2019-04-03 23:08:28', NULL);
INSERT INTO `cms_logs` VALUES (308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/limbah', 'Try view the data :name at Limbah', '', 2, '2019-04-03 23:08:46', NULL);
INSERT INTO `cms_logs` VALUES (309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 2, '2019-04-03 23:08:56', NULL);
INSERT INTO `cms_logs` VALUES (310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-03 23:09:04', NULL);
INSERT INTO `cms_logs` VALUES (311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-03 23:09:38', NULL);
INSERT INTO `cms_logs` VALUES (312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 2, '2019-04-03 23:11:17', NULL);
INSERT INTO `cms_logs` VALUES (313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Air/add-save', 'Add New Data  at Air', '', 2, '2019-04-03 23:12:23', NULL);
INSERT INTO `cms_logs` VALUES (314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 2, '2019-04-03 23:15:52', NULL);
INSERT INTO `cms_logs` VALUES (315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-06 16:42:33', NULL);
INSERT INTO `cms_logs` VALUES (316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-06 16:42:40', NULL);
INSERT INTO `cms_logs` VALUES (317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-06 16:43:13', NULL);
INSERT INTO `cms_logs` VALUES (318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leadermegamendung@fms.com login with IP Address 127.0.0.1', '', 41, '2019-04-06 16:43:23', NULL);
INSERT INTO `cms_logs` VALUES (319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leadermegamendung@fms.com logout', '', 41, '2019-04-06 16:52:24', NULL);
INSERT INTO `cms_logs` VALUES (320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabogor@fms.com login with IP Address 127.0.0.1', '', 10, '2019-04-06 16:52:33', NULL);
INSERT INTO `cms_logs` VALUES (321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-06 16:53:10', NULL);
INSERT INTO `cms_logs` VALUES (322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/5', 'Update data Rutin Terencana at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-04-06 16:55:08', NULL);
INSERT INTO `cms_logs` VALUES (323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabogor@fms.com logout', '', 10, '2019-04-06 17:00:07', NULL);
INSERT INTO `cms_logs` VALUES (324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-04-06 17:00:32', NULL);
INSERT INTO `cms_logs` VALUES (325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-04-06 17:01:26', NULL);
INSERT INTO `cms_logs` VALUES (326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-04-06 17:02:25', NULL);
INSERT INTO `cms_logs` VALUES (327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/edit-save/11', 'Update data  at SLA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tahun</td><td>2019</td><td></td></tr><tr><td>uraian</td><td>test</td><td>test1</td></tr></tbody></table>', 3, '2019-04-06 17:02:33', NULL);
INSERT INTO `cms_logs` VALUES (328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/delete/11', 'Delete data 11 at SLA', '', 3, '2019-04-06 17:02:38', NULL);
INSERT INTO `cms_logs` VALUES (329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/delete/1', 'Delete data 1 at SLA', '', 3, '2019-04-06 17:06:09', NULL);
INSERT INTO `cms_logs` VALUES (330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/delete/1', 'Delete data 1 at SLA', '', 3, '2019-04-06 17:06:22', NULL);
INSERT INTO `cms_logs` VALUES (331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/delete/1', 'Delete data 1 at SLA', '', 3, '2019-04-06 17:08:39', NULL);
INSERT INTO `cms_logs` VALUES (332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/delete/2', 'Delete data 2 at SLA', '', 3, '2019-04-06 17:08:51', NULL);
INSERT INTO `cms_logs` VALUES (333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-04-06 17:10:41', NULL);
INSERT INTO `cms_logs` VALUES (334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwil2@fms.com login with IP Address 127.0.0.1', '', 7, '2019-04-06 17:10:49', NULL);
INSERT INTO `cms_logs` VALUES (335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/4', 'Update data Work Order at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-04-06 17:11:30', NULL);
INSERT INTO `cms_logs` VALUES (336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwil2@fms.com logout', '', 7, '2019-04-06 17:12:31', NULL);
INSERT INTO `cms_logs` VALUES (337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabekasi@fms.com login with IP Address 127.0.0.1', '', 9, '2019-04-06 17:12:40', NULL);
INSERT INTO `cms_logs` VALUES (338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabekasi@fms.com logout', '', 9, '2019-04-06 17:13:50', NULL);
INSERT INTO `cms_logs` VALUES (339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderbekasi@fms.com login with IP Address 127.0.0.1', '', 39, '2019-04-06 17:13:58', NULL);
INSERT INTO `cms_logs` VALUES (340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabekasi@fms.com login with IP Address 127.0.0.1', '', 9, '2019-04-07 01:07:53', NULL);
INSERT INTO `cms_logs` VALUES (341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sdaset/delete/18', 'Delete data  at Ketersediaan Aset', '', 9, '2019-04-07 01:08:40', NULL);
INSERT INTO `cms_logs` VALUES (342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sdaset/delete/18', 'Delete data  at Ketersediaan Aset', '', 9, '2019-04-07 01:08:47', NULL);
INSERT INTO `cms_logs` VALUES (343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sdaset/delete/18', 'Delete data  at Ketersediaan Aset', '', 9, '2019-04-07 01:09:03', NULL);
INSERT INTO `cms_logs` VALUES (344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabekasi@fms.com logout', '', 9, '2019-04-07 01:25:30', NULL);
INSERT INTO `cms_logs` VALUES (345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-07 01:37:39', NULL);
INSERT INTO `cms_logs` VALUES (346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/18', 'Update data Penilaian SLA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-07 01:41:19', NULL);
INSERT INTO `cms_logs` VALUES (347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-07 01:41:39', NULL);
INSERT INTO `cms_logs` VALUES (348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabekasi@fms.com login with IP Address 127.0.0.1', '', 9, '2019-04-07 01:41:51', NULL);
INSERT INTO `cms_logs` VALUES (349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabekasi@fms.com logout', '', 9, '2019-04-07 01:43:06', NULL);
INSERT INTO `cms_logs` VALUES (350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderbekasi@fms.com login with IP Address 127.0.0.1', '', 39, '2019-04-07 01:43:14', NULL);
INSERT INTO `cms_logs` VALUES (351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai', 'Try view the data :name at Master Penilaian', '', 39, '2019-04-07 01:43:16', NULL);
INSERT INTO `cms_logs` VALUES (352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderbekasi@fms.com logout', '', 39, '2019-04-07 01:43:24', NULL);
INSERT INTO `cms_logs` VALUES (353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-07 01:43:36', NULL);
INSERT INTO `cms_logs` VALUES (354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-07 01:44:57', NULL);
INSERT INTO `cms_logs` VALUES (355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderbekasi@fms.com login with IP Address 127.0.0.1', '', 39, '2019-04-07 01:46:08', NULL);
INSERT INTO `cms_logs` VALUES (356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-07 08:48:56', NULL);
INSERT INTO `cms_logs` VALUES (357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Tindaklanjut Leader at Menu Management', '', 1, '2019-04-07 08:50:20', NULL);
INSERT INTO `cms_logs` VALUES (358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/25', 'Update data Tindaklanjut Leader at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>list-pekerjaan-leader</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-04-07 10:14:38', NULL);
INSERT INTO `cms_logs` VALUES (359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/25', 'Update data Tindaklanjut Leader at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>list-pekerjaan-leader</td><td>pekerjaan</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-04-07 10:44:21', NULL);
INSERT INTO `cms_logs` VALUES (360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-08 04:49:26', NULL);
INSERT INTO `cms_logs` VALUES (361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-08 23:43:33', NULL);
INSERT INTO `cms_logs` VALUES (362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/module_generator/delete/29', 'Delete data Master Pekerjaan at Module Generator', '', 1, '2019-04-09 00:31:04', NULL);
INSERT INTO `cms_logs` VALUES (363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/25', 'Update data Tindaklanjut Leader at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>pekerjaan</td><td>m_krj</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-04-09 00:32:10', NULL);
INSERT INTO `cms_logs` VALUES (364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 01:03:15', NULL);
INSERT INTO `cms_logs` VALUES (365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderbekasi@fms.com login with IP Address 127.0.0.1', '', 39, '2019-04-09 01:03:27', NULL);
INSERT INTO `cms_logs` VALUES (366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj', 'Try view the data :name at Master Pekerjaan', '', 39, '2019-04-09 01:03:36', NULL);
INSERT INTO `cms_logs` VALUES (367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderbekasi@fms.com logout', '', 39, '2019-04-09 01:03:47', NULL);
INSERT INTO `cms_logs` VALUES (368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-09 01:04:11', NULL);
INSERT INTO `cms_logs` VALUES (369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 02:07:01', NULL);
INSERT INTO `cms_logs` VALUES (370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderbekasi@fms.com login with IP Address 127.0.0.1', '', 39, '2019-04-09 02:07:13', NULL);
INSERT INTO `cms_logs` VALUES (371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj', 'Try view the data :name at Master Pekerjaan', '', 39, '2019-04-09 02:07:19', NULL);
INSERT INTO `cms_logs` VALUES (372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj', 'Try view the data :name at Master Pekerjaan', '', 39, '2019-04-09 02:07:37', NULL);
INSERT INTO `cms_logs` VALUES (373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj', 'Try view the data :name at Master Pekerjaan', '', 39, '2019-04-09 02:08:12', NULL);
INSERT INTO `cms_logs` VALUES (374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderbekasi@fms.com logout', '', 39, '2019-04-09 02:08:47', NULL);
INSERT INTO `cms_logs` VALUES (375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-09 02:09:11', NULL);
INSERT INTO `cms_logs` VALUES (376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 02:09:52', NULL);
INSERT INTO `cms_logs` VALUES (377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderbekasi@fms.com login with IP Address 127.0.0.1', '', 39, '2019-04-09 02:10:03', NULL);
INSERT INTO `cms_logs` VALUES (378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 39, '2019-04-09 02:12:04', NULL);
INSERT INTO `cms_logs` VALUES (379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/detail_pekerjaan', 'Try view the data :name at Detail Pekerjaan', '', 39, '2019-04-09 02:19:24', NULL);
INSERT INTO `cms_logs` VALUES (380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderbekasi@fms.com logout', '', 39, '2019-04-09 02:19:35', NULL);
INSERT INTO `cms_logs` VALUES (381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-09 02:19:43', NULL);
INSERT INTO `cms_logs` VALUES (382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 02:20:57', NULL);
INSERT INTO `cms_logs` VALUES (383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderbekasi@fms.com login with IP Address 127.0.0.1', '', 39, '2019-04-09 02:21:16', NULL);
INSERT INTO `cms_logs` VALUES (384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 39, '2019-04-09 02:33:31', NULL);
INSERT INTO `cms_logs` VALUES (385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 39, '2019-04-09 02:50:17', NULL);
INSERT INTO `cms_logs` VALUES (386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderbekasi@fms.com logout', '', 39, '2019-04-09 02:51:44', NULL);
INSERT INTO `cms_logs` VALUES (387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabekasi@fms.com login with IP Address 127.0.0.1', '', 9, '2019-04-09 02:51:54', NULL);
INSERT INTO `cms_logs` VALUES (388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabekasi@fms.com logout', '', 9, '2019-04-09 03:12:42', NULL);
INSERT INTO `cms_logs` VALUES (389, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderbekasi@fms.com login with IP Address 127.0.0.1', '', 39, '2019-04-09 03:13:06', NULL);
INSERT INTO `cms_logs` VALUES (390, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 39, '2019-04-09 03:17:18', NULL);
INSERT INTO `cms_logs` VALUES (391, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 39, '2019-04-09 03:18:18', NULL);
INSERT INTO `cms_logs` VALUES (392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-09 06:37:56', NULL);
INSERT INTO `cms_logs` VALUES (393, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 06:38:25', NULL);
INSERT INTO `cms_logs` VALUES (394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'salesareabogor@fms.com login with IP Address 127.0.0.1', '', 60, '2019-04-09 06:38:36', NULL);
INSERT INTO `cms_logs` VALUES (395, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'salesareabogor@fms.com logout', '', 60, '2019-04-09 06:40:09', NULL);
INSERT INTO `cms_logs` VALUES (396, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabekasi@fms.com login with IP Address 127.0.0.1', '', 9, '2019-04-09 06:40:20', NULL);
INSERT INTO `cms_logs` VALUES (397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabekasi@fms.com logout', '', 9, '2019-04-09 06:40:47', NULL);
INSERT INTO `cms_logs` VALUES (398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-09 06:41:14', NULL);
INSERT INTO `cms_logs` VALUES (399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/20', 'Update data Utilitas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-04-09 06:41:43', NULL);
INSERT INTO `cms_logs` VALUES (400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/21', 'Update data Listrik at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2019-04-09 06:42:07', NULL);
INSERT INTO `cms_logs` VALUES (401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/22', 'Update data Air at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-09 06:42:28', NULL);
INSERT INTO `cms_logs` VALUES (402, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/23', 'Update data Solar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-04-09 06:42:49', NULL);
INSERT INTO `cms_logs` VALUES (403, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/24', 'Update data Limbah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>20</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-04-09 06:43:13', NULL);
INSERT INTO `cms_logs` VALUES (404, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 06:43:58', NULL);
INSERT INTO `cms_logs` VALUES (405, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwil2@fms.com login with IP Address 127.0.0.1', '', 7, '2019-04-09 06:44:14', NULL);
INSERT INTO `cms_logs` VALUES (406, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwil2@fms.com logout', '', 7, '2019-04-09 06:44:27', NULL);
INSERT INTO `cms_logs` VALUES (407, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-09 06:45:27', NULL);
INSERT INTO `cms_logs` VALUES (408, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/3', 'Update data Master Aset at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-04-09 06:46:10', NULL);
INSERT INTO `cms_logs` VALUES (409, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 06:46:36', NULL);
INSERT INTO `cms_logs` VALUES (410, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwil2@fms.com login with IP Address 127.0.0.1', '', 7, '2019-04-09 06:47:11', NULL);
INSERT INTO `cms_logs` VALUES (411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwil2@fms.com logout', '', 7, '2019-04-09 06:47:36', NULL);
INSERT INTO `cms_logs` VALUES (412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'salesareabekasi@fms.com login with IP Address 127.0.0.1', '', 59, '2019-04-09 06:47:51', NULL);
INSERT INTO `cms_logs` VALUES (413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-09 06:48:29', NULL);
INSERT INTO `cms_logs` VALUES (414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/18', 'Update data Penilaian SLA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-09 06:49:11', NULL);
INSERT INTO `cms_logs` VALUES (415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 06:49:47', NULL);
INSERT INTO `cms_logs` VALUES (416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai', 'Try view the data :name at Master Penilaian', '', 59, '2019-04-09 06:49:55', NULL);
INSERT INTO `cms_logs` VALUES (417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-09 06:50:10', NULL);
INSERT INTO `cms_logs` VALUES (418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'salesareabekasi@fms.com logout', '', 59, '2019-04-09 06:50:53', NULL);
INSERT INTO `cms_logs` VALUES (419, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'salesareabogor@fms.com login with IP Address 127.0.0.1', '', 60, '2019-04-09 06:51:52', NULL);
INSERT INTO `cms_logs` VALUES (420, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai', 'Try view the data :name at Master Penilaian', '', 60, '2019-04-09 06:52:00', NULL);
INSERT INTO `cms_logs` VALUES (421, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai', 'Try view the data :name at Master Penilaian', '', 60, '2019-04-09 06:52:01', NULL);
INSERT INTO `cms_logs` VALUES (422, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'salesareabogor@fms.com logout', '', 60, '2019-04-09 06:53:41', NULL);
INSERT INTO `cms_logs` VALUES (423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'salesareabogor@fms.com logout', '', 60, '2019-04-09 06:53:41', NULL);
INSERT INTO `cms_logs` VALUES (424, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabogor@fms.com login with IP Address 127.0.0.1', '', 10, '2019-04-09 06:55:52', NULL);
INSERT INTO `cms_logs` VALUES (425, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabogor@fms.com logout', '', 10, '2019-04-09 06:57:55', NULL);
INSERT INTO `cms_logs` VALUES (426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-09 06:58:06', NULL);
INSERT INTO `cms_logs` VALUES (427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 07:11:49', NULL);
INSERT INTO `cms_logs` VALUES (428, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-09 07:34:38', NULL);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES (1, 'SLA', 'Route', 'AdminSlaControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 1, '2019-02-09 03:38:22', '2019-03-21 08:19:50');
INSERT INTO `cms_menus` VALUES (2, 'Detail SLA', 'Route', 'AdminDslaControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 2, '2019-02-09 03:45:19', '2019-03-21 08:19:59');
INSERT INTO `cms_menus` VALUES (3, 'Master Aset', 'Route', 'AdminAsetControllerGetIndex', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 4, '2019-02-09 04:41:31', '2019-04-09 06:46:09');
INSERT INTO `cms_menus` VALUES (4, 'Work Order', 'URL', '#', 'normal', 'fa fa-th', 0, 1, 0, 1, 1, '2019-02-09 05:49:43', '2019-04-06 17:11:28');
INSERT INTO `cms_menus` VALUES (5, 'Rutin Terencana', 'URL', '#', 'normal', 'fa fa-th', 4, 1, 0, 1, 1, '2019-02-09 05:50:39', '2019-04-06 16:55:07');
INSERT INTO `cms_menus` VALUES (6, 'Setting SLA Aset', 'Route', 'AdminSaControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 3, '2019-02-09 11:05:15', '2019-03-21 08:20:11');
INSERT INTO `cms_menus` VALUES (7, 'Rutin  Non Rutin Terencana', 'URL', '#', 'normal', 'fa fa-th', 4, 1, 0, 1, 2, '2019-02-09 11:54:29', NULL);
INSERT INTO `cms_menus` VALUES (8, 'Complain', 'URL', '#', 'normal', 'fa fa-th-list', 7, 1, 0, 1, 1, '2019-02-09 11:55:02', NULL);
INSERT INTO `cms_menus` VALUES (9, 'Request', 'URL', '#', 'normal', 'fa fa-th-list', 7, 1, 0, 1, 2, '2019-02-09 13:13:04', NULL);
INSERT INTO `cms_menus` VALUES (10, 'Setting Ketersediaan', 'Route', 'AdminSdasetControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 4, '2019-02-09 13:28:50', '2019-03-21 08:20:21');
INSERT INTO `cms_menus` VALUES (11, 'Regional', 'Route', 'AdminRegControllerGetIndex', NULL, 'fa fa-th-list', 14, 1, 0, 1, 3, '2019-02-12 05:00:54', NULL);
INSERT INTO `cms_menus` VALUES (12, 'Wilayah', 'Route', 'AdminWilControllerGetIndex', NULL, 'fa fa-th-list', 14, 1, 0, 1, 4, '2019-02-12 05:02:18', NULL);
INSERT INTO `cms_menus` VALUES (13, 'Area', 'Route', 'AdminAreaControllerGetIndex', NULL, 'fa fa-th-list', 14, 1, 0, 1, 5, '2019-02-12 05:31:52', NULL);
INSERT INTO `cms_menus` VALUES (14, 'Referensi', 'URL', '#', 'normal', 'fa fa-th', 0, 1, 0, 1, 5, '2019-02-12 06:54:40', NULL);
INSERT INTO `cms_menus` VALUES (15, 'Frekuensi', 'Route', 'AdminFrekuensiControllerGetIndex', NULL, 'fa fa-glass', 14, 1, 0, 1, 1, '2019-02-12 08:21:46', NULL);
INSERT INTO `cms_menus` VALUES (16, 'User Aset', 'Route', 'AdminUaControllerGetIndex', NULL, 'fa fa-th-list', 14, 1, 0, 1, 2, '2019-02-12 15:37:12', NULL);
INSERT INTO `cms_menus` VALUES (18, 'Penilaian SLA', 'Route', 'AdminMnilaiControllerGetIndex', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 2, '2019-02-12 17:23:24', '2019-04-09 06:49:10');
INSERT INTO `cms_menus` VALUES (20, 'Utilitas', 'URL', '#', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 3, '2019-02-13 00:50:02', '2019-04-09 06:41:43');
INSERT INTO `cms_menus` VALUES (21, 'Listrik', 'Module', 'listrik', 'normal', 'fa fa-th-list', 20, 1, 0, 1, 1, '2019-02-13 00:50:37', '2019-04-09 06:42:06');
INSERT INTO `cms_menus` VALUES (22, 'Air', 'Route', 'AdminAirControllerGetIndex', 'normal', 'fa fa-th-list', 20, 1, 0, 1, 2, '2019-02-13 00:51:07', '2019-04-09 06:42:28');
INSERT INTO `cms_menus` VALUES (23, 'Solar', 'Route', 'AdminSolarControllerGetIndex', 'normal', 'fa fa-th-list', 20, 1, 0, 1, 3, '2019-02-13 00:51:39', '2019-04-09 06:42:49');
INSERT INTO `cms_menus` VALUES (24, 'Limbah', 'Route', 'AdminLimbahControllerGetIndex', 'normal', 'fa fa-table', 20, 1, 0, 1, 4, '2019-02-13 00:51:58', '2019-04-09 06:43:12');
INSERT INTO `cms_menus` VALUES (25, 'Tindaklanjut Leader', 'Module', 'm_krj', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 5, '2019-04-07 08:50:20', '2019-04-09 00:32:10');

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
INSERT INTO `cms_menus_privileges` VALUES (7, 7, 1);
INSERT INTO `cms_menus_privileges` VALUES (8, 8, 1);
INSERT INTO `cms_menus_privileges` VALUES (9, 9, 1);
INSERT INTO `cms_menus_privileges` VALUES (13, 11, 1);
INSERT INTO `cms_menus_privileges` VALUES (14, 12, 1);
INSERT INTO `cms_menus_privileges` VALUES (15, 13, 1);
INSERT INTO `cms_menus_privileges` VALUES (16, 14, 1);
INSERT INTO `cms_menus_privileges` VALUES (17, 15, 1);
INSERT INTO `cms_menus_privileges` VALUES (18, 16, 1);
INSERT INTO `cms_menus_privileges` VALUES (19, 17, 1);
INSERT INTO `cms_menus_privileges` VALUES (21, 19, 1);
INSERT INTO `cms_menus_privileges` VALUES (36, 1, 8);
INSERT INTO `cms_menus_privileges` VALUES (37, 1, 3);
INSERT INTO `cms_menus_privileges` VALUES (38, 1, 1);
INSERT INTO `cms_menus_privileges` VALUES (39, 2, 8);
INSERT INTO `cms_menus_privileges` VALUES (40, 2, 3);
INSERT INTO `cms_menus_privileges` VALUES (41, 2, 1);
INSERT INTO `cms_menus_privileges` VALUES (42, 6, 8);
INSERT INTO `cms_menus_privileges` VALUES (43, 6, 4);
INSERT INTO `cms_menus_privileges` VALUES (44, 6, 1);
INSERT INTO `cms_menus_privileges` VALUES (45, 10, 8);
INSERT INTO `cms_menus_privileges` VALUES (46, 10, 5);
INSERT INTO `cms_menus_privileges` VALUES (47, 10, 1);
INSERT INTO `cms_menus_privileges` VALUES (84, 5, 8);
INSERT INTO `cms_menus_privileges` VALUES (85, 5, 5);
INSERT INTO `cms_menus_privileges` VALUES (86, 5, 4);
INSERT INTO `cms_menus_privileges` VALUES (87, 5, 6);
INSERT INTO `cms_menus_privileges` VALUES (88, 5, 3);
INSERT INTO `cms_menus_privileges` VALUES (89, 5, 7);
INSERT INTO `cms_menus_privileges` VALUES (90, 5, 1);
INSERT INTO `cms_menus_privileges` VALUES (91, 4, 8);
INSERT INTO `cms_menus_privileges` VALUES (92, 4, 5);
INSERT INTO `cms_menus_privileges` VALUES (93, 4, 4);
INSERT INTO `cms_menus_privileges` VALUES (94, 4, 6);
INSERT INTO `cms_menus_privileges` VALUES (95, 4, 3);
INSERT INTO `cms_menus_privileges` VALUES (96, 4, 7);
INSERT INTO `cms_menus_privileges` VALUES (97, 4, 1);
INSERT INTO `cms_menus_privileges` VALUES (109, 25, 8);
INSERT INTO `cms_menus_privileges` VALUES (110, 25, 6);
INSERT INTO `cms_menus_privileges` VALUES (111, 25, 1);
INSERT INTO `cms_menus_privileges` VALUES (112, 20, 8);
INSERT INTO `cms_menus_privileges` VALUES (113, 20, 5);
INSERT INTO `cms_menus_privileges` VALUES (114, 20, 6);
INSERT INTO `cms_menus_privileges` VALUES (115, 20, 1);
INSERT INTO `cms_menus_privileges` VALUES (116, 21, 8);
INSERT INTO `cms_menus_privileges` VALUES (117, 21, 5);
INSERT INTO `cms_menus_privileges` VALUES (118, 21, 6);
INSERT INTO `cms_menus_privileges` VALUES (119, 21, 1);
INSERT INTO `cms_menus_privileges` VALUES (120, 22, 8);
INSERT INTO `cms_menus_privileges` VALUES (121, 22, 5);
INSERT INTO `cms_menus_privileges` VALUES (122, 22, 6);
INSERT INTO `cms_menus_privileges` VALUES (123, 22, 1);
INSERT INTO `cms_menus_privileges` VALUES (124, 23, 8);
INSERT INTO `cms_menus_privileges` VALUES (125, 23, 5);
INSERT INTO `cms_menus_privileges` VALUES (126, 23, 6);
INSERT INTO `cms_menus_privileges` VALUES (127, 23, 1);
INSERT INTO `cms_menus_privileges` VALUES (128, 24, 8);
INSERT INTO `cms_menus_privileges` VALUES (129, 24, 5);
INSERT INTO `cms_menus_privileges` VALUES (130, 24, 6);
INSERT INTO `cms_menus_privileges` VALUES (131, 24, 1);
INSERT INTO `cms_menus_privileges` VALUES (132, 3, 8);
INSERT INTO `cms_menus_privileges` VALUES (133, 3, 2);
INSERT INTO `cms_menus_privileges` VALUES (134, 3, 4);
INSERT INTO `cms_menus_privileges` VALUES (135, 3, 1);
INSERT INTO `cms_menus_privileges` VALUES (136, 18, 5);
INSERT INTO `cms_menus_privileges` VALUES (137, 18, 7);
INSERT INTO `cms_menus_privileges` VALUES (138, 18, 1);

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES (1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-02-07 04:18:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (12, 'SLA', 'fa fa-th-list', 'sla', 'sla', 'AdminSlaController', 0, 0, '2019-02-09 03:38:22', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (13, 'Detail SLA', 'fa fa-th-list', 'dsla', 'detail_sla', 'AdminDslaController', 0, 0, '2019-02-09 03:45:18', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (14, 'Master Aset', 'fa fa-th-list', 'aset', 'aset', 'AdminAsetController', 0, 0, '2019-02-09 04:41:30', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (15, 'SLA ASET', 'fa fa-th-list', 'sa', 'sla_aset', 'AdminSaController', 0, 0, '2019-02-09 05:45:48', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (16, 'Ketersediaan Aset', 'fa fa-glass', 'sdaset', 'ketersediaan_sla', 'AdminSdasetController', 0, 0, '2019-02-09 18:09:37', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (17, 'Regional', 'fa fa-th-list', 'reg', 'regional', 'AdminRegController', 0, 0, '2019-02-12 05:00:54', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (18, 'Wilayah', 'fa fa-th-list', 'wil', 'wilayah', 'AdminWilController', 0, 0, '2019-02-12 05:02:18', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (19, 'Area', 'fa fa-th-list', 'area', 'area', 'AdminAreaController', 0, 0, '2019-02-12 05:31:52', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (20, 'Frekuensi', 'fa fa-glass', 'frekuensi', 'frekuensi', 'AdminFrekuensiController', 0, 0, '2019-02-12 08:21:46', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (21, 'User Aset', 'fa fa-th-list', 'ua', 'user_aset', 'AdminUaController', 0, 0, '2019-02-12 15:37:12', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (22, 'Aset Area', 'fa fa-th-list', 'aset_area', 'aset_area', 'AdminAsetAreaController', 0, 0, '2019-02-12 15:57:18', NULL, '2019-02-12 16:44:02');
INSERT INTO `cms_moduls` VALUES (23, 'Master Penilaian', 'fa fa-th-list', 'mnilai', 'm_penilaian', 'AdminMnilaiController', 0, 0, '2019-02-12 17:23:23', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (24, 'listrik', 'fa fa-gear', 'listrik', 'master_listrik', 'AdminListrikController', 0, 0, '2019-03-22 12:48:16', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (25, 'Limbah', 'fa fa-gear', 'limbah', 'master_limbah', 'AdminLimbahController', 0, 0, '2019-04-01 14:41:32', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (26, 'Solar', 'fa fa-glass', 'Solar', 'master_solar', 'AdminSolarController', 0, 0, '2019-04-01 14:41:32', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (27, 'Air', 'fa fa-glass', 'Air', 'master_air', 'AdminAirController', 0, 0, '2019-04-01 14:42:49', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (28, 'Detail Penilaian', 'fa fa-th-list', 'detail_nilai', 'detail_penilaian', 'AdminDetailNilaiController', 0, 0, '2019-04-07 01:39:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (29, 'Master Pekerjaan', 'fa fa-th-list', 'pekerjaan', 'm_penilaian', 'AdminPekerjaanController', 0, 0, '2019-04-07 10:42:49', NULL, '2019-04-09 00:31:04');
INSERT INTO `cms_moduls` VALUES (30, 'Detail Pekerjaan', 'fa fa-th-list', 'detail_pekerjaan', 'detail_pekerjaan', 'AdminDetailPekerjaanController', 0, 0, '2019-04-07 10:50:09', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (31, 'Master Pekerjaan', 'fa fa-th-list', 'm_krj', 'm_pekerjaan', 'AdminMKrjController', 0, 0, '2019-04-09 00:28:41', NULL, NULL);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_superadmin` tinyint(1) NULL DEFAULT NULL,
  `theme_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES (1, 'Super Administrator', 1, 'skin-red', '2019-02-07 04:18:24', NULL);
INSERT INTO `cms_privileges` VALUES (2, 'General Manager', 0, 'skin-blue-light', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (3, 'Manager (HO)', 0, 'skin-blue-light', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (4, 'Koordinator Wilayah', 0, 'skin-blue-light', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (5, 'Koordinator Area', 0, 'skin-blue-light', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (6, 'Leader', 0, 'skin-blue-light', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (7, 'Sales Area', 0, 'skin-blue-light', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (8, 'Admin', 0, 'skin-red-light', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (9, 'Tenant Relation', 0, 'skin-blue-light', NULL, NULL);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) NULL DEFAULT NULL,
  `is_create` tinyint(1) NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `is_edit` tinyint(1) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `id_cms_moduls` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES (1, 1, 0, 0, 0, 0, 1, 1, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (2, 1, 1, 1, 1, 1, 1, 2, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (3, 0, 1, 1, 1, 1, 1, 3, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (4, 1, 1, 1, 1, 1, 1, 4, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (5, 1, 1, 1, 1, 1, 1, 5, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (6, 1, 1, 1, 1, 1, 1, 6, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (7, 1, 1, 1, 1, 1, 1, 7, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (8, 1, 1, 1, 1, 1, 1, 8, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (9, 1, 1, 1, 1, 1, 1, 9, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (10, 1, 1, 1, 1, 1, 1, 10, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (11, 1, 0, 1, 0, 1, 1, 11, '2019-02-07 04:18:25', NULL);
INSERT INTO `cms_privileges_roles` VALUES (12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (38, 1, 1, 1, 1, 1, 4, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (39, 1, 1, 1, 1, 1, 4, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (40, 1, 1, 1, 1, 1, 4, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (41, 1, 1, 1, 1, 1, 4, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (42, 1, 1, 1, 1, 1, 4, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (43, 1, 1, 1, 1, 1, 4, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (44, 1, 1, 1, 1, 1, 4, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (45, 1, 1, 1, 1, 1, 4, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (46, 1, 1, 1, 1, 1, 3, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (47, 1, 1, 1, 1, 1, 3, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (48, 1, 1, 1, 1, 1, 3, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (49, 1, 1, 1, 1, 1, 3, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (50, 1, 1, 1, 1, 1, 3, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (51, 1, 1, 1, 1, 1, 3, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (52, 1, 1, 1, 1, 1, 3, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (53, 1, 1, 1, 1, 1, 3, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (54, 1, 1, 1, 1, 1, 2, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (55, 1, 1, 1, 1, 1, 2, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (56, 1, 1, 1, 1, 1, 2, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (57, 1, 1, 1, 1, 1, 2, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (58, 1, 1, 1, 1, 1, 2, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (59, 1, 1, 1, 1, 1, 2, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (60, 1, 1, 1, 1, 1, 2, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (61, 1, 1, 1, 1, 1, 2, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (70, 1, 1, 1, 1, 1, 1, 20, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (81, 1, 1, 1, 1, 1, 1, 21, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (82, 1, 1, 1, 1, 1, 1, 22, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (83, 1, 1, 1, 1, 1, 1, 23, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (84, 1, 1, 1, 1, 1, 1, 24, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (97, 1, 1, 1, 1, 1, 1, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (98, 1, 1, 1, 1, 1, 1, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (99, 1, 1, 1, 1, 1, 8, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (100, 1, 1, 1, 1, 1, 8, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (101, 1, 1, 1, 1, 1, 8, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (102, 1, 1, 1, 1, 1, 8, 20, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (103, 1, 1, 1, 1, 1, 8, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (104, 1, 1, 1, 1, 1, 8, 25, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (105, 1, 1, 1, 1, 1, 8, 24, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (106, 1, 1, 1, 1, 1, 8, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (107, 1, 1, 1, 1, 1, 8, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (108, 1, 1, 1, 1, 1, 8, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (109, 1, 1, 1, 1, 1, 8, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (110, 1, 1, 1, 1, 1, 8, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (111, 1, 1, 1, 1, 1, 8, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (112, 1, 1, 1, 1, 1, 8, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (117, 1, 1, 1, 1, 1, 1, 28, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (123, 1, 1, 1, 1, 1, 1, 29, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (124, 1, 1, 1, 1, 1, 1, 30, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (125, 1, 1, 1, 1, 1, 1, 31, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (126, 1, 1, 1, 1, 1, 6, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (127, 1, 1, 1, 1, 1, 6, 30, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (128, 1, 1, 1, 1, 1, 6, 25, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (129, 1, 1, 1, 1, 1, 6, 24, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (130, 1, 1, 1, 1, 1, 6, 31, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (131, 1, 1, 1, 1, 1, 6, 23, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (132, 1, 1, 1, 1, 1, 6, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (133, 1, 1, 1, 1, 1, 5, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (134, 1, 1, 1, 1, 1, 5, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (135, 1, 1, 1, 1, 1, 5, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (136, 1, 1, 1, 1, 1, 5, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (137, 1, 1, 1, 1, 1, 5, 25, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (138, 1, 1, 1, 1, 1, 5, 24, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (139, 1, 1, 1, 1, 1, 5, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (140, 1, 1, 1, 1, 1, 5, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (141, 1, 1, 1, 1, 1, 5, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (142, 1, 1, 1, 1, 1, 5, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (143, 1, 1, 1, 1, 1, 5, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (144, 1, 1, 1, 1, 1, 5, 18, NULL, NULL);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content_input_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dataenum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `helper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `group_setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES (1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-02-07 04:18:26', NULL, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES (2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-02-07 04:18:26', NULL, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES (3, 'login_background_image', 'uploads/2019-03/33621d71a267f72d7732aec0ccc215b0.png', 'upload_image', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES (4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES (5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES (6, 'smtp_host', '', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES (7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-02-07 04:18:26', NULL, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES (8, 'smtp_username', '', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES (9, 'smtp_password', '', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES (10, 'appname', 'FMS', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES (11, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-02-07 04:18:26', NULL, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES (12, 'logo', 'uploads/2019-03/4b777b5d57b2f28634990f6c86604793.png', 'upload_image', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES (13, 'favicon', NULL, 'upload_image', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES (14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES (15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES (16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) NULL DEFAULT NULL,
  `componentID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `area_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES (1, 'SA', '', 'uploads/1/2019-02/avatar_372_456324.png', 'admin@crudbooster.com', '$2y$10$9mt3jqtbsdeoSCAdiGdtaOWNWcPw7Esx1GJNy2z0asXQ7W3UwqWEu', 1, '2019-02-07 04:18:24', '2019-02-12 13:44:02', 'Active');
INSERT INTO `cms_users` VALUES (2, 'Admin', '', 'uploads/1/2019-02/avatar_372_456324.png', 'tezadwiaditya@yahoo.co.id', '$2y$10$jIYtqQ8VvHgxNUVPpsKad.VAt.RBNZH1/vKNkzOF7M3EMynahkxmq', 8, '2019-02-12 14:10:53', NULL, NULL);
INSERT INTO `cms_users` VALUES (3, 'Admin.HO', '', 'uploads/1/2019-02/avatar_372_456324.png', 'admin@fms.com', '$2y$10$Rtyhj4W/idy1tFWnjmqkJOw/GAdqlN/VOfZUTHJuF04IhR5lnl2P6', 3, '2019-02-12 14:13:00', NULL, NULL);
INSERT INTO `cms_users` VALUES (4, 'Leader', '', 'uploads/1/2019-02/avatar_372_456324.png', 'leader@fms.com', '$2y$10$5xKyLYfoy2Qp2ObrK2EXnOvRPXlueAfJMDD8nMJQsL8GVCOeAbSMS', 6, '2019-02-12 14:13:38', NULL, NULL);
INSERT INTO `cms_users` VALUES (5, 'Tenant.Relation', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'tr@fms.com', '$2y$10$3ttY7.iRHS1urTFHk7ARW.8QTyW8LHU6vImhFOzyFzRjVasfsIy6a', 9, '2019-02-12 14:16:52', NULL, NULL);
INSERT INTO `cms_users` VALUES (6, 'korea.ketapang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreaketapang@fms.com', '$2y$10$E8ilDBJTYXIf9t8/SaFcBOUNFcosEEcwltameiI25g9sfQDfl3RDy', 5, '2019-02-12 14:24:48', NULL, NULL);
INSERT INTO `cms_users` VALUES (7, 'korwil.2', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'korwil2@fms.com', '$2y$10$PKV.bLH1iR1C0qwWnVP/IuBhIN/hxfyCJy8bnECfnsJL16ub8Hz/e', 4, '2019-02-12 14:26:13', NULL, NULL);
INSERT INTO `cms_users` VALUES (8, 'korea.jakarta', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreajakarta@fms.com', '$2y$10$EE1G7KVZPAAgQEvEvBtms.1kgGRetO3e0L.3gH5gqayWII7XhYhpS', 5, '2019-02-12 14:27:27', NULL, NULL);
INSERT INTO `cms_users` VALUES (9, 'korea.bekasi', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreabekasi@fms.com', '$2y$10$xQp2T15zq8MtD.Otg8gydOt0V08aHlH8AvBS/VLwWrhO4yMP2Xti6', 5, '2019-02-12 14:27:47', NULL, NULL);
INSERT INTO `cms_users` VALUES (10, 'korea.bogor', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreabogor@fms.com', '$2y$10$Kyj6EFp7XO/n2d/ffwHLbesHszL6eAU80nqiUj2/BOVR2s.Gg7oMC', 5, '2019-02-12 14:28:16', NULL, NULL);
INSERT INTO `cms_users` VALUES (11, 'wisma.megamendung', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'wismamegamendung@fms.com', '$2y$10$e7fzMcG0B43Y9KqV9hnF0.qmiQqo5LOdHLgBTQKztN0/yn8QNHNui', 5, '2019-02-12 14:28:48', NULL, NULL);
INSERT INTO `cms_users` VALUES (12, 'korwil.3', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'korwilIII@fms.com', '$2y$10$rRDD96xgm6v1ynPvhj8U/e7CxHZvNlnUS5RIp/3N2K1US0kGCWFb2', 4, '2019-02-12 14:29:15', NULL, NULL);
INSERT INTO `cms_users` VALUES (13, 'korea.karawang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreakarawang@fms.com', '$2y$10$SNg6I3jhscwv/jGZQruMb.eUOri5Y8Eqpq/7yl.QaJB6uDVRprSGS', 5, '2019-02-12 14:31:08', NULL, NULL);
INSERT INTO `cms_users` VALUES (14, 'wisma.bandung', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'wismabandung@fms.com', '$2y$10$w9pM9sEvt5M73/pT.TtOdeYD7GYuSeZnm5TrvhbNzsGBqfQ5cYrqu', 5, '2019-02-12 14:31:24', NULL, NULL);
INSERT INTO `cms_users` VALUES (15, 'korea.cirebon', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreacirebon@fms.com', '$2y$10$Gd26cwIBABsiqc6oxCrWFuwS/NU90bxMHgSgOLrKKV03MzMtUPkey', 5, '2019-02-12 14:31:45', NULL, NULL);
INSERT INTO `cms_users` VALUES (16, 'korwil.4', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'korwilIV@fms.com', '$2y$10$hPWR8BHBjjPT0/DGxmsmEuFwIMT7NbFbmFziHQSMbDNjRrS.3QOtS', 4, '2019-02-12 14:32:04', NULL, NULL);
INSERT INTO `cms_users` VALUES (17, 'korea.tangerang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreatangerang@fms.com', '$2y$10$4ILLH31SGRaMVA7RO/u5PeX8eyMK1m9G5N6HADnjOP5v5UdF/ymGa', 5, '2019-02-12 14:32:23', NULL, NULL);
INSERT INTO `cms_users` VALUES (18, 'korea.cilegon', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreacilegon@fms.com', '$2y$10$Q5FlXBHHSY9yJo/7r8U.yeUpoVru58j5pweLwbwuxTKvLw4y.EoG.', 5, '2019-02-12 14:32:44', NULL, NULL);
INSERT INTO `cms_users` VALUES (19, 'korea.lampung', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'korealampung@fms.com', '$2y$10$rZfuKcHavuS7Zv2m90PLTutjWSY42LUVqNZH5GpUrkpTlGLb0UHLS', 5, '2019-02-12 14:33:09', NULL, NULL);
INSERT INTO `cms_users` VALUES (20, 'korea.palembang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreapalembang@fms.com', '$2y$10$A.ICYtg5IxBV/bqFAGn3SuJhXy5SLL9RXThgnjA5Rf3J71/UuzZ9S', 5, '2019-02-12 14:33:34', NULL, NULL);
INSERT INTO `cms_users` VALUES (21, 'korea.palembang.II', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreapalembang2@fms.com', '$2y$10$FXOAr.k.cPGR1qRUKWt1yOz83o2tz562dJ4hy5PkJffjvdJbPlAc.', 5, '2019-02-12 14:35:03', NULL, NULL);
INSERT INTO `cms_users` VALUES (22, 'korwil.5', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'korwilV@fms.com', '$2y$10$1Bz4fjJ6HRG9gADhWz4AHOWM9QSvi0ZQzOREXvUdmsAiGia16M0.u', 4, '2019-02-12 14:36:32', NULL, NULL);
INSERT INTO `cms_users` VALUES (23, 'korea.medan', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreamedan@fms.com', '$2y$10$ReIWXlLKCWTfETGLMJaznes.nXyelc04St/rgkmjDwhy9s6b2LtDG', 5, '2019-02-12 14:36:57', NULL, NULL);
INSERT INTO `cms_users` VALUES (24, 'korea.pekanbaru', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreapekanbaru@fms.com', '$2y$10$52024WIDUnwU3HJd3GuID.aX2aY3btJPDl6TslQTUzRCFO/WwoHaC', 5, '2019-02-12 14:37:19', NULL, NULL);
INSERT INTO `cms_users` VALUES (25, 'korea.batam', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreabatam@fms.com', '$2y$10$11DU/hhnJrBmxcQMsJpQd.OHGBPlEtUceNzl4k6PYzVUPerehY8ai', 5, '2019-02-12 14:37:40', NULL, NULL);
INSERT INTO `cms_users` VALUES (26, 'korwil.6', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'korwilVI@fms.com', '$2y$10$7D3cuzBI8NgD0JeWS/TZy.7b.7/GAbwMyW4ZJQDvlbrUGUIIqsJje', 4, '2019-02-12 14:38:07', NULL, NULL);
INSERT INTO `cms_users` VALUES (27, 'korea.semarang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreasemarang@fms.com', '$2y$10$wFVSvdTwaJ7GyXBvnC9yCOWIi0X/a3IqVNt8N2WF9D7IlAMWi.ace', 5, '2019-02-12 14:38:30', NULL, NULL);
INSERT INTO `cms_users` VALUES (28, 'korea.surabaya', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreasurabaya@fms.com', '$2y$10$5Ctf2T0/7vXNyY3Bnd5j0ef6w4vTcrak.gt6xM.I/.UpK4slpc.Ka', 5, '2019-02-12 14:42:13', NULL, NULL);
INSERT INTO `cms_users` VALUES (29, 'korea.sidoarjo', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreasidoarjo@fms.com', '$2y$10$imbIvzTiNPYZ3TbQvfBHKutp4MhNvrG/GWbHKhI9OJ4r7lHNhKUMW', 5, '2019-02-12 14:42:35', NULL, NULL);
INSERT INTO `cms_users` VALUES (30, 'korea.pasuruan', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreapasuruan@fms.com', '$2y$10$aXdzrr/9eoCTVETLpuPXceHn7RaEV/iAc31kp5srgKly1vSmDmKNi', 5, '2019-02-12 14:43:01', NULL, NULL);
INSERT INTO `cms_users` VALUES (31, 'korwil.7', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'korwilVII@fms.com', '$2y$10$Okt5cvfkRsrH0Xl4dNtp3Okfam5NFjDmyXXU2Ox5n1Jb61Z70SKgK', 4, '2019-02-12 14:43:29', NULL, NULL);
INSERT INTO `cms_users` VALUES (32, 'korea.tarakan', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreatarakan@fms.com', '$2y$10$m98GSKVYlXSBAymMfdFbLOAk9ooboLTBy5tRYh59iLx2C8X.FiWHa', 5, '2019-02-12 14:43:49', NULL, NULL);
INSERT INTO `cms_users` VALUES (33, 'korea.sorong', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreasorong@fms.com', '$2y$10$cafl3YUbxS2nVC6Km8MlyOXErLUOxeRo0N5VurzWvnrmIKiI/FhEi', 5, '2019-02-12 14:44:06', NULL, NULL);
INSERT INTO `cms_users` VALUES (34, 'korea.makasar', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'koreamakasar@fms.com', '$2y$10$WPTqDo56tgHnYnbFnl86H.kYrlMBI8/u.rsFJPnrDFW2oAOCLtbQW', 5, '2019-02-12 14:44:21', NULL, NULL);
INSERT INTO `cms_users` VALUES (35, 'korwil.1', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'korwilI@fms.com', '$2y$10$6l7wysVe2gcxK/EIynj12uOPu6Wk9PDmUUzRYCkA9GcK/6sEVU882', 4, '2019-02-12 14:44:48', NULL, NULL);
INSERT INTO `cms_users` VALUES (36, 'Unit.Head', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'UnitHead@fms.com', '$2y$10$3eTIdwMLcw3zwMo5YOeID.SEo4xEOaXASMoN77YTNMrzjegVQajFm', 2, '2019-02-12 14:45:34', NULL, NULL);
INSERT INTO `cms_users` VALUES (37, 'leader.ketapang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderketapang@fms.com', '$2y$10$5UBPlBuzNGHJot7poUN/vOR/jGQi.QPX7hAWkyWXyP21x4fnndTv6', 6, '2019-02-12 14:49:06', NULL, NULL);
INSERT INTO `cms_users` VALUES (38, 'leader.jakarta', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderjakarta@fms.com', '$2y$10$U/UE42zFdvCH0/PwvcE0CON9qxsivab3V5e5dzx4RmY2.dV68tuV.', 6, '2019-02-12 14:49:25', NULL, NULL);
INSERT INTO `cms_users` VALUES (39, 'leader.bekasi', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderbekasi@fms.com', '$2y$10$Wx7Hd7nl1pFcKo4qdfyeqOFdNFCjvhfvsBkKSXYSUPLaUXacA3Izi', 6, '2019-02-12 14:49:41', NULL, NULL);
INSERT INTO `cms_users` VALUES (40, 'leader.bogor', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderbogor@fms.com', '$2y$10$WG8EwZxrTQgi57quz3XhT.c2/V1ftxkuWgMG6wPba1cmEeOZylESa', 6, '2019-02-12 14:50:05', NULL, NULL);
INSERT INTO `cms_users` VALUES (41, 'leader.megamendung', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadermegamendung@fms.com', '$2y$10$RbAHODluqmFXmcuuLsZKw.NET5iSzRbEARKwrJj4yzAQr37h2jotG', 6, '2019-02-12 14:50:23', NULL, NULL);
INSERT INTO `cms_users` VALUES (42, 'leader.kerawang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderkerawang@fms.com', '$2y$10$QdRBZxzaWNlxdaty45nSxO4LH88mPxJFfFsw.fysBWWJGtMdwhBaO', 6, '2019-02-12 14:50:50', NULL, NULL);
INSERT INTO `cms_users` VALUES (43, 'leader.bandung', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderbandung@fms.com', '$2y$10$aDY2o6uwjLVKtXUAzcGMZ.SeyDFK50Y4sewDP9Q9l.o1ZspcChZRG', 6, '2019-02-12 14:51:09', NULL, NULL);
INSERT INTO `cms_users` VALUES (44, 'leader.cirebon', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadercirebon@fms.com', '$2y$10$MOo9w1kSSA4riAAKUU.wq.gYo0.wUaBTwoPBPhhcJjXMu8UgvTnI.', 6, '2019-02-12 14:51:39', NULL, NULL);
INSERT INTO `cms_users` VALUES (45, 'leader.tangerang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadertangerang@fms.com', '$2y$10$w/l.DP4PQQO5GZb9eEu/DO5nGZMGLnG7yXUd78F6u82uY9TAlfQPq', 6, '2019-02-12 14:52:21', NULL, NULL);
INSERT INTO `cms_users` VALUES (46, 'leader.cilegon', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadercilegon@fms.com', '$2y$10$fqTE1/41I86HAd0XGWZa7.i6aLS4NtBrs3YKW8AT1ulw2b1niqJH6', 6, '2019-02-12 14:52:40', NULL, NULL);
INSERT INTO `cms_users` VALUES (47, 'leader.lampung', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderlampung@fms.com', '$2y$10$GMAC6108DEnOkS6wgcgayeA6SlOaFEA9bQWwNW4QoA7zcwPSgFX3i', 6, '2019-02-12 14:52:57', NULL, NULL);
INSERT INTO `cms_users` VALUES (48, 'leader.palembang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderpalembang@fms.com', '$2y$10$l52ZXdVEq/Fi9n4pjXNJsub/M15.Jt84AYb4R4XR3/4Cb88GbDyyK', 6, '2019-02-12 14:53:13', NULL, NULL);
INSERT INTO `cms_users` VALUES (49, 'leader.medan', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadermedan@fms.com', '$2y$10$GeN6c8wLVv5TM3D1yv2HPuqGs0vdBTsrPSSxv00clOd5qRsa6ppt6', 6, '2019-02-12 14:53:31', NULL, NULL);
INSERT INTO `cms_users` VALUES (50, 'leader.pekanbaru', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderpekanbaru@fms.com', '$2y$10$JUc7KEexehm.X0X.vjQNsO7Tuq7yz3v.CvOlIKiHrrFMM26U21dWu', 6, '2019-02-12 14:53:49', NULL, NULL);
INSERT INTO `cms_users` VALUES (51, 'leader.semarang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadersemarang@fms.com', '$2y$10$GPxDyOGlKrU7id3arsGOzeY8CkQ41DwIumWHm6aIwQEVqw33jMVZW', 6, '2019-02-12 14:54:04', NULL, NULL);
INSERT INTO `cms_users` VALUES (52, 'leader.sidoarjo', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadersidoarjo@fms.com', '$2y$10$r6Y3eLT9vhIAfvFrKn5.lednWHCUMHlzF/eEzc0Byq2XEuZkmDXd.', 6, '2019-02-12 14:54:23', NULL, NULL);
INSERT INTO `cms_users` VALUES (53, 'leader.pasuruan', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leaderpasuruan@fms.com', '$2y$10$gWpUXQmsszr5WLcaOsv6DeCXjBTjml5qqIem4Ewh5s6FygEose4z2', 6, '2019-02-12 14:54:38', NULL, NULL);
INSERT INTO `cms_users` VALUES (54, 'leader.tarakan', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadertarakan@fms.com', '$2y$10$iTIEF0AKmDYen9gL14WcVOPDxz5aGNVJfh.VNTUJc4ZdG7Qj50IoK', 6, '2019-02-12 14:54:57', NULL, NULL);
INSERT INTO `cms_users` VALUES (55, 'leader.sorong', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadersorong@fms.com', '$2y$10$7H8GlmX2hXzIKxS.Eyl2F.ZXMXAiydR.icld9tB73wh3STYFjWTtq', 6, '2019-02-12 14:55:12', NULL, NULL);
INSERT INTO `cms_users` VALUES (56, 'leader.makasar', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'leadermakasar@fms.com', '$2y$10$gwOtEW77oMn8umPe3l9JpOKCyF5yy9E730UyITuNdbr1Ex126/PWC', 6, '2019-02-12 14:55:30', NULL, NULL);
INSERT INTO `cms_users` VALUES (57, 'salesarea.ketapang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareaketapang@fms.com', '$2y$10$EGo5KgwPuuMHYd0I8azU8ugYEtT9JNYcVSWtk5eFKTYPd9Ot6BV5O', 7, '2019-02-12 14:55:47', NULL, NULL);
INSERT INTO `cms_users` VALUES (58, 'salesarea.jakarta', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareajakarta@fms.com', '$2y$10$ZwiQfxvSKX8Ej5zMLyTRyeZjFVcwLiSHUXNsrT/zHApjp2LqOKP9W', 7, '2019-02-12 14:56:23', NULL, NULL);
INSERT INTO `cms_users` VALUES (59, 'salesarea.bekasi', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareabekasi@fms.com', '$2y$10$5unNc8JBcTvVYVE5zvFcHOXJErUdL8.aKCq9yotVIvpGQHYfFLvZG', 7, '2019-02-12 14:56:39', NULL, NULL);
INSERT INTO `cms_users` VALUES (60, 'salesarea.bogor', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareabogor@fms.com', '$2y$10$9ubVI72KB1u3aQLmJ1p3l.mOD6e9JDpCLqBr2UjDtGNFYiTT0KExe', 7, '2019-02-12 14:57:01', NULL, NULL);
INSERT INTO `cms_users` VALUES (61, 'salesarea.megamendung', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareamegamendung@fms.com', '$2y$10$7Ld1E3cSldD6GwhxQB6EuectkPBYFd2HZSU1XQQz6zxM6PlxM1JpS', 7, '2019-02-12 14:57:19', NULL, NULL);
INSERT INTO `cms_users` VALUES (62, 'salesarea.kerawang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareakerawang@fms.com', '$2y$10$HVReSyHxyNNhZW9kyE40eeW61ab8Ic2HvrbAsuBLLB.ee74EgYa8q', 7, '2019-02-12 14:57:37', NULL, NULL);
INSERT INTO `cms_users` VALUES (63, 'salesarea.bandung', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareabandung@fms.com', '$2y$10$Wd3wnTMU8ti/zYeUTZv6VeATMcmxUREatvgZMzCM5pOuMynp3oTgu', 7, '2019-02-12 14:57:58', NULL, NULL);
INSERT INTO `cms_users` VALUES (64, 'salesarea.cirebon', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareacirebon@fms.com', '$2y$10$kdoL.gjUAkG/Zcx/Ftj1hehK21NkZthVOrcHKZ1NVh0oWPXTUFHj6', 7, '2019-02-12 14:58:15', NULL, NULL);
INSERT INTO `cms_users` VALUES (65, 'salesarea.tangerang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareatangerang@fms.com', '$2y$10$5fw2lLS11RovwkcB63iBBO2D5DdUuPPlP1jVvtAFl.7lRsp/Zg1c6', 7, '2019-02-12 14:58:31', NULL, NULL);
INSERT INTO `cms_users` VALUES (66, 'salesarea.cilegon', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareacilegon@fms.com', '$2y$10$htfl3M5Tj3TNLl1xig0P6.3/5JYiYSXLDI7BB5D5ArRsb1qMuhdGS', 7, '2019-02-12 14:58:49', NULL, NULL);
INSERT INTO `cms_users` VALUES (67, 'salesarea.lampung', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesarealampung@fms.com', '$2y$10$9nixmoraAs3MvuhNgwvy4uD85NMmubyhP5EYDZ7PAgAcguYXI3iP.', 7, '2019-02-12 14:59:10', NULL, NULL);
INSERT INTO `cms_users` VALUES (68, 'salesarea.palembang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareapalembang@fms.com', '$2y$10$oavfWq92RsfMedgbpMrbuOhwpzUsqgB.nXrlxDOVA8JfnguZ2MbAe', 7, '2019-02-12 14:59:30', NULL, NULL);
INSERT INTO `cms_users` VALUES (69, 'salesarea.medan', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareamedan@fms.com', '$2y$10$3JW/Do7K1gOVxm1tU9WgTe8Yl77hoM4ff7rmjSpK8SmLXoZtDLvvm', 7, '2019-02-12 14:59:46', NULL, NULL);
INSERT INTO `cms_users` VALUES (70, 'salesarea.pekanbaru', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareapekanbaru@fms.com', '$2y$10$05P/rSn6xrRedhc2GKK7d.nvg/vLHDnCsuT2dCDHzdhi/jK64ZPXG', 7, '2019-02-12 15:00:03', NULL, NULL);
INSERT INTO `cms_users` VALUES (71, 'salesarea.semarang', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareasemarang@fms.com', '$2y$10$lrzMHf8BVJADCLq6uONyCuBnzfkNUrKOVmAJNQP1G57ph7E/bVkHq', 7, '2019-02-12 15:00:23', NULL, NULL);
INSERT INTO `cms_users` VALUES (72, 'salesarea.sidoarjo', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareasidoarjo@fms.com', '$2y$10$IlQ5GOrYdv9qqAFm127cduHvxKUqipglxTH2b91uSfVwuc89v4aru', 7, '2019-02-12 15:00:43', NULL, NULL);
INSERT INTO `cms_users` VALUES (73, 'salesarea.pasuruan', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareapasuruan@fms.com', '$2y$10$tuH32uuopxE9UH52zmB4nunOTFRaC77rBCsOXa/6PvNYdDQwnDJpK', 7, '2019-02-12 15:01:08', NULL, NULL);
INSERT INTO `cms_users` VALUES (74, 'salesarea.tarakan', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareatarakan@fms.com', '$2y$10$pwSDCNB7Zx63Z1sTFgWzC.H5WTxnbPvC3JNOmgwLSuowJIZj79lHC', 7, '2019-02-12 15:01:42', NULL, NULL);
INSERT INTO `cms_users` VALUES (75, 'salesarea.sorong', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareasorong@fms.com', '$2y$10$2eX50dj8rJD.FiXBg0WWtez7sBwZ35qXmk3xYdxXIE6hu6bnNsFD.', 7, '2019-02-12 15:02:02', NULL, NULL);
INSERT INTO `cms_users` VALUES (76, 'salesarea.makasar', '', 'uploads/1/2019-02/1024px_no_image_availablesvg.png', 'salesareamakasar@fms.com', '$2y$10$s5LTkml1ozoIW.e.r7GSv.1iY7aMze3r.tkc43.0ZXM0ILCz7N84q', 7, '2019-02-12 15:02:19', NULL, NULL);

-- ----------------------------
-- Table structure for complain
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemohon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_pelapor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_complain_id` int(11) NOT NULL,
  `uraian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aset_id` int(11) NOT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `tanggal_masuk` datetime(0) NOT NULL,
  `tanggal_selesai` datetime(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of complain
-- ----------------------------
INSERT INTO `complain` VALUES (2, '123', 'test', 'umum', 1, 'kerusakan lampu', 3, 'jakarta', 1, '2019-03-01 00:00:00', '2019-03-01 13:00:00', '2019-03-30 14:22:55', '2019-03-30 14:22:55');
INSERT INTO `complain` VALUES (3, '123', 'test', 'umum', 1, 'kerusakan lampu', 3, 'jakarta', 1, '2019-03-01 00:00:00', '2019-03-01 13:00:00', '2019-03-30 14:38:13', '2019-03-30 14:38:13');
INSERT INTO `complain` VALUES (4, '123', 'test', 'umum', 1, 'kerusakan lampu', 3, 'jakarta', 1, '2019-03-01 00:00:00', '2019-03-01 13:00:00', '2019-03-30 14:41:46', '2019-03-30 14:41:46');
INSERT INTO `complain` VALUES (5, '123', 'test', 'umum', 1, 'kerusakan lampu', 3, 'jakarta', 1, '2019-03-01 00:00:00', '2019-03-01 13:00:00', '2019-03-30 14:43:24', '2019-03-30 14:43:24');
INSERT INTO `complain` VALUES (6, '123', 'test', 'umum', 1, 'kerusakan lampu', 3, 'jakarta', 1, '2019-03-01 00:00:00', '2019-03-01 13:00:00', '2019-03-30 14:47:30', '2019-03-30 14:47:30');
INSERT INTO `complain` VALUES (7, '123', 'test', 'umum', 1, 'kerusakan lampu', 3, 'jakarta', 1, '2019-03-01 00:00:00', '2019-03-01 13:00:00', '2019-03-30 14:48:04', '2019-03-30 14:48:04');
INSERT INTO `complain` VALUES (8, '123', 'test', 'umum', 1, 'kerusakan lampu', 3, 'jakarta', 1, '2019-03-01 00:00:00', '2019-03-01 13:00:00', '2019-03-30 14:49:08', '2019-03-30 14:49:08');

-- ----------------------------
-- Table structure for detail_frekuensi
-- ----------------------------
DROP TABLE IF EXISTS `detail_frekuensi`;
CREATE TABLE `detail_frekuensi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frekuensi_id` int(11) NULL DEFAULT NULL,
  `bulan` int(11) NULL DEFAULT NULL,
  `minggu` int(11) NULL DEFAULT NULL,
  `hari` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_detail_frekuensi_frekuensi_1`(`frekuensi_id`) USING BTREE,
  CONSTRAINT `fk_detail_frekuensi_frekuensi_1` FOREIGN KEY (`frekuensi_id`) REFERENCES `frekuensi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for detail_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `detail_pekerjaan`;
CREATE TABLE `detail_pekerjaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NULL DEFAULT NULL,
  `m_pekerjaan_id` int(11) NULL DEFAULT NULL,
  `sla_id` int(11) NULL DEFAULT NULL,
  `detail_sla_id` int(11) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detail_pekerjaan
-- ----------------------------
INSERT INTO `detail_pekerjaan` VALUES (1, 2019, 2, 69, 261, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (2, 2019, 2, 69, 262, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (3, 2019, 2, 69, 263, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (4, 2019, 2, 69, 264, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (5, 2019, 2, 69, 265, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (6, 2019, 2, 69, 266, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (7, 2019, 2, 69, 267, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (8, 2019, 2, 69, 268, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (9, 2019, 2, 69, 269, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (10, 2019, 2, 69, 270, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (11, 2019, 2, 69, 271, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (12, 2019, 2, 69, 272, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (13, 2019, 2, 69, 273, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (14, 2019, 2, 69, 274, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (15, 2019, 2, 69, 318, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (16, 2019, 2, 69, 319, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (17, 2019, 2, 69, 320, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (18, 2019, 2, 69, 321, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (19, 2019, 2, 69, 322, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (20, 2019, 2, 69, 323, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (21, 2019, 2, 69, 324, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (22, 2019, 2, 69, 725, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (23, 2019, 2, 69, 726, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (24, 2019, 2, 69, 727, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (25, 2019, 2, 69, 728, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (26, 2019, 2, 69, 729, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (27, 2019, 2, 69, 730, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (28, 2019, 2, 69, 731, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (29, 2019, 2, 69, 775, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (30, 2019, 2, 69, 776, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (31, 2019, 2, 69, 777, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (32, 2019, 2, 69, 778, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (33, 2019, 2, 69, 779, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (34, 2019, 2, 69, 780, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (35, 2019, 2, 69, 781, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (36, 2019, 2, 70, 275, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (37, 2019, 2, 70, 276, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (38, 2019, 2, 70, 277, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (39, 2019, 2, 70, 278, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (40, 2019, 2, 70, 279, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (41, 2019, 2, 70, 280, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (42, 2019, 2, 70, 281, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (43, 2019, 2, 70, 282, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (44, 2019, 2, 70, 283, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (45, 2019, 2, 70, 284, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (46, 2019, 2, 70, 285, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (47, 2019, 2, 70, 286, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (48, 2019, 2, 70, 287, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (49, 2019, 2, 70, 288, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (50, 2019, 2, 70, 289, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (51, 2019, 2, 70, 290, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (52, 2019, 2, 70, 291, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (53, 2019, 2, 70, 292, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (54, 2019, 2, 70, 293, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (55, 2019, 2, 70, 294, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (56, 2019, 2, 70, 295, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (57, 2019, 2, 70, 296, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (58, 2019, 2, 70, 297, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (59, 2019, 2, 70, 298, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (60, 2019, 2, 70, 299, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (61, 2019, 2, 70, 732, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (62, 2019, 2, 70, 733, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (63, 2019, 2, 70, 734, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (64, 2019, 2, 70, 735, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (65, 2019, 2, 70, 736, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (66, 2019, 2, 70, 737, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (67, 2019, 2, 70, 738, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (68, 2019, 2, 70, 739, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (69, 2019, 2, 70, 740, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (70, 2019, 2, 70, 741, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (71, 2019, 2, 70, 742, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (72, 2019, 2, 70, 743, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (73, 2019, 2, 70, 744, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (74, 2019, 2, 70, 745, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (75, 2019, 2, 70, 746, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (76, 2019, 2, 70, 747, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (77, 2019, 2, 70, 748, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (78, 2019, 2, 70, 749, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (79, 2019, 2, 70, 750, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (80, 2019, 2, 70, 751, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (81, 2019, 2, 70, 752, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (82, 2019, 2, 70, 753, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (83, 2019, 2, 70, 754, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (84, 2019, 2, 70, 755, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (85, 2019, 2, 70, 756, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (86, 2019, 2, 70, 782, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (87, 2019, 2, 70, 783, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (88, 2019, 2, 70, 784, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (89, 2019, 2, 70, 785, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (90, 2019, 2, 70, 786, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (91, 2019, 2, 70, 787, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (92, 2019, 2, 70, 788, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (93, 2019, 2, 70, 789, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (94, 2019, 2, 70, 790, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (95, 2019, 2, 70, 791, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (96, 2019, 2, 70, 792, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (97, 2019, 2, 70, 793, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (98, 2019, 2, 70, 794, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (99, 2019, 2, 70, 795, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (100, 2019, 2, 70, 796, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (101, 2019, 2, 70, 797, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (102, 2019, 2, 70, 798, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (103, 2019, 2, 70, 799, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (104, 2019, 2, 70, 800, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (105, 2019, 2, 70, 801, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (106, 2019, 2, 70, 802, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (107, 2019, 2, 70, 803, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (108, 2019, 2, 70, 804, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (109, 2019, 2, 70, 805, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (110, 2019, 2, 70, 806, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (111, 2019, 2, 71, 300, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (112, 2019, 2, 71, 757, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (113, 2019, 2, 71, 807, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (114, 2019, 2, 72, 301, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (115, 2019, 2, 72, 302, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (116, 2019, 2, 72, 303, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (117, 2019, 2, 72, 304, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (118, 2019, 2, 72, 758, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (119, 2019, 2, 72, 759, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (120, 2019, 2, 72, 760, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (121, 2019, 2, 72, 761, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (122, 2019, 2, 72, 808, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (123, 2019, 2, 72, 809, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (124, 2019, 2, 72, 810, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (125, 2019, 2, 72, 811, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (126, 2019, 2, 73, 305, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (127, 2019, 2, 73, 306, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (128, 2019, 2, 73, 307, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (129, 2019, 2, 73, 308, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (130, 2019, 2, 73, 309, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (131, 2019, 2, 73, 762, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (132, 2019, 2, 73, 763, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (133, 2019, 2, 73, 764, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (134, 2019, 2, 73, 765, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (135, 2019, 2, 73, 766, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (136, 2019, 2, 73, 812, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (137, 2019, 2, 73, 813, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (138, 2019, 2, 73, 814, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (139, 2019, 2, 73, 815, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (140, 2019, 2, 73, 816, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (141, 2019, 2, 74, 310, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (142, 2019, 2, 74, 767, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (143, 2019, 2, 74, 817, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (144, 2019, 2, 75, 311, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (145, 2019, 2, 75, 312, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (146, 2019, 2, 75, 313, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (147, 2019, 2, 75, 768, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (148, 2019, 2, 75, 769, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (149, 2019, 2, 75, 770, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (150, 2019, 2, 75, 818, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (151, 2019, 2, 75, 819, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (152, 2019, 2, 75, 820, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (153, 2019, 2, 76, 314, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (154, 2019, 2, 76, 315, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (155, 2019, 2, 76, 316, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (156, 2019, 2, 76, 771, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (157, 2019, 2, 76, 772, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (158, 2019, 2, 76, 773, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (159, 2019, 2, 76, 821, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (160, 2019, 2, 76, 822, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (161, 2019, 2, 76, 823, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (162, 2019, 2, 77, 317, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (163, 2019, 2, 77, 774, NULL, NULL);
INSERT INTO `detail_pekerjaan` VALUES (164, 2019, 2, 77, 824, NULL, NULL);

-- ----------------------------
-- Table structure for detail_penilaian
-- ----------------------------
DROP TABLE IF EXISTS `detail_penilaian`;
CREATE TABLE `detail_penilaian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_penilaian_id` int(11) NULL DEFAULT NULL,
  `sla_id` int(11) NULL DEFAULT NULL,
  `detail_sla_id` int(11) NULL DEFAULT NULL,
  `ketersediaan_fasilitas` int(11) NULL DEFAULT NULL,
  `dilaksanakan` int(11) NULL DEFAULT NULL,
  `sesuai` int(11) NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_detail_penilaian_m_penilaian_1`(`m_penilaian_id`) USING BTREE,
  CONSTRAINT `fk_detail_penilaian_m_penilaian_1` FOREIGN KEY (`m_penilaian_id`) REFERENCES `m_penilaian` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for detail_sla
-- ----------------------------
DROP TABLE IF EXISTS `detail_sla`;
CREATE TABLE `detail_sla`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NULL DEFAULT NULL,
  `sla_id` int(11) NOT NULL,
  `uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sla_detail_sla`(`sla_id`) USING BTREE,
  CONSTRAINT `sla_detail_sla` FOREIGN KEY (`sla_id`) REFERENCES `sla` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detail_sla
-- ----------------------------
INSERT INTO `detail_sla` VALUES (51, 2019, 1, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (52, 2019, 1, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (53, 2019, 1, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (54, 2019, 1, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (55, 2019, 1, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (56, 2019, 1, 'Melaksanakan pengamanan tanggap darurat ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (57, 2019, 1, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (58, 2019, 2, 'Melakukan pembersihan gedung dan perlengkapannya', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (59, 2019, 2, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (60, 2019, 2, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (61, 2019, 2, 'Melakukan pembersihan dan perawatan taman. ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (62, 2019, 2, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (63, 2019, 2, 'Melakukan pengendalian hama tikus dan serangga', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (64, 2019, 2, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (65, 2019, 2, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (66, 2019, 2, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (67, 2019, 2, 'Mengelola pengoperasian sistem proteksi kebakaran', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (68, 2019, 2, 'Mengelola pengoperasian sistem tata suara', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (69, 2019, 2, 'Mengelola pengoperasian instalasi listrik', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (70, 2019, 2, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (71, 2019, 2, 'Mengelola pengoperasian pencahayaan lampu ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (72, 2019, 2, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (73, 2019, 2, 'Mengelola Ground Reservoir', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (74, 2019, 2, 'Mengoperasikan Pompa Air Bersih', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (75, 2019, 2, 'Melakukan pemeliharaan Roof Tank', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (76, 2019, 2, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (77, 2019, 2, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (78, 2019, 2, 'Mengelola Intake Air Bersih', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (79, 2019, 2, 'Mengelola Water Treatment Plant', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (80, 2019, 2, 'Mengelola Sewage Treatment Plan', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (81, 2019, 2, 'Mengelola Reservoir khusus air olahan', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (82, 2019, 2, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (83, 2019, 3, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (84, 2019, 4, 'Penyediaan dan pengelolaan area merokok ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (85, 2019, 4, 'Penyediaan dan pengelolaan ruang laktasi ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (86, 2019, 4, 'Penyediaan tempat penyimpanan sementara limbah B3 ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (87, 2019, 4, 'Penyediaan dan mengelola APAR dan P3K ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (88, 2019, 5, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (89, 2019, 5, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (90, 2019, 5, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (91, 2019, 5, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (92, 2019, 5, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (93, 2019, 6, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (94, 2019, 7, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (95, 2019, 7, 'Menyediakan tanaman / bunga di lobby atau koridor. ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (96, 2019, 7, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (97, 2019, 8, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (98, 2019, 8, 'Pengelolaan Bangunan Wisma', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (99, 2019, 8, 'Pengelolaan jasa layanan wisma', '2019-03-22 19:12:36');
INSERT INTO `detail_sla` VALUES (100, 2019, 9, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', '2019-03-22 19:12:36');

-- ----------------------------
-- Table structure for detail_tindaklanjut
-- ----------------------------
DROP TABLE IF EXISTS `detail_tindaklanjut`;
CREATE TABLE `detail_tindaklanjut`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `master_tindaklanjut_id` int(11) NULL DEFAULT NULL,
  `nama_aset` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sla_id` int(11) NULL DEFAULT NULL,
  `uraian_sla` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `detail_sla_id` int(11) NULL DEFAULT NULL,
  `uraian_detail_sla` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detail_tindaklanjut
-- ----------------------------
INSERT INTO `detail_tindaklanjut` VALUES (172, 99, 'Gedung A Pusat', 1, 'Pengamanan', 51, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (173, 99, 'Gedung A Pusat', 1, 'Pengamanan', 52, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (174, 99, 'Gedung A Pusat', 1, 'Pengamanan', 53, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (175, 99, 'Gedung A Pusat', 1, 'Pengamanan', 54, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (176, 99, 'Gedung A Pusat', 1, 'Pengamanan', 55, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (177, 99, 'Gedung A Pusat', 1, 'Pengamanan', 56, 'Melaksanakan pengamanan tanggap darurat ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (178, 99, 'Gedung A Pusat', 1, 'Pengamanan', 57, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (179, 100, 'Gedung B Pusat', 1, 'Pengamanan', 51, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (180, 100, 'Gedung B Pusat', 1, 'Pengamanan', 52, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (181, 100, 'Gedung B Pusat', 1, 'Pengamanan', 53, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (182, 100, 'Gedung B Pusat', 1, 'Pengamanan', 54, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (183, 100, 'Gedung B Pusat', 1, 'Pengamanan', 55, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (184, 100, 'Gedung B Pusat', 1, 'Pengamanan', 56, 'Melaksanakan pengamanan tanggap darurat ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (185, 100, 'Gedung B Pusat', 1, 'Pengamanan', 57, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (186, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 58, 'Melakukan pembersihan gedung dan perlengkapannya', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (187, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 59, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (188, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 60, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (189, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 61, 'Melakukan pembersihan dan perawatan taman. ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (190, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 62, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (191, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 63, 'Melakukan pengendalian hama tikus dan serangga', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (192, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 64, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (193, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 65, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (194, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 66, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (195, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 67, 'Mengelola pengoperasian sistem proteksi kebakaran', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (196, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 68, 'Mengelola pengoperasian sistem tata suara', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (197, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 69, 'Mengelola pengoperasian instalasi listrik', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (198, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 70, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (199, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 71, 'Mengelola pengoperasian pencahayaan lampu ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (200, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 72, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (201, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 73, 'Mengelola Ground Reservoir', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (202, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 74, 'Mengoperasikan Pompa Air Bersih', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (203, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 75, 'Melakukan pemeliharaan Roof Tank', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (204, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 76, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (205, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 77, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (206, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 78, 'Mengelola Intake Air Bersih', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (207, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 79, 'Mengelola Water Treatment Plant', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (208, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 80, 'Mengelola Sewage Treatment Plan', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (209, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 81, 'Mengelola Reservoir khusus air olahan', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (210, 100, 'Gedung B Pusat', 2, 'Pengelolaan Pemeliharaan Asets', 82, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (211, 100, 'Gedung B Pusat', 3, 'Pengelolaan Perawatan Aset', 83, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (212, 100, 'Gedung B Pusat', 4, 'Penyediaan fasilitas khusus', 84, 'Penyediaan dan pengelolaan area merokok ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (213, 100, 'Gedung B Pusat', 4, 'Penyediaan fasilitas khusus', 85, 'Penyediaan dan pengelolaan ruang laktasi ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (214, 100, 'Gedung B Pusat', 4, 'Penyediaan fasilitas khusus', 86, 'Penyediaan tempat penyimpanan sementara limbah B3 ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (215, 100, 'Gedung B Pusat', 4, 'Penyediaan fasilitas khusus', 87, 'Penyediaan dan mengelola APAR dan P3K ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (216, 100, 'Gedung B Pusat', 5, 'Penyediaan perijinan terkait bangunan dan lingkungan', 88, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (217, 100, 'Gedung B Pusat', 5, 'Penyediaan perijinan terkait bangunan dan lingkungan', 89, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (218, 100, 'Gedung B Pusat', 5, 'Penyediaan perijinan terkait bangunan dan lingkungan', 90, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (219, 100, 'Gedung B Pusat', 5, 'Penyediaan perijinan terkait bangunan dan lingkungan', 91, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (220, 100, 'Gedung B Pusat', 5, 'Penyediaan perijinan terkait bangunan dan lingkungan', 92, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (221, 100, 'Gedung B Pusat', 6, 'Pengelolaan fasilitas perparkiran', 93, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (222, 100, 'Gedung B Pusat', 7, 'Pengelolaan penyediaan assesoris gedung', 94, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (223, 100, 'Gedung B Pusat', 7, 'Pengelolaan penyediaan assesoris gedung', 95, 'Menyediakan tanaman / bunga di lobby atau koridor. ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (224, 100, 'Gedung B Pusat', 7, 'Pengelolaan penyediaan assesoris gedung', 96, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (225, 100, 'Gedung B Pusat', 8, 'Pengelolaan Wisma dan Rumah dinas', 97, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (226, 100, 'Gedung B Pusat', 8, 'Pengelolaan Wisma dan Rumah dinas', 98, 'Pengelolaan Bangunan Wisma', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (227, 100, 'Gedung B Pusat', 8, 'Pengelolaan Wisma dan Rumah dinas', 99, 'Pengelolaan jasa layanan wisma', NULL);
INSERT INTO `detail_tindaklanjut` VALUES (228, 100, 'Gedung B Pusat', 9, 'Pengelolaan Keluhan', 100, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', NULL);

-- ----------------------------
-- Table structure for dokumentasi_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `dokumentasi_pekerjaan`;
CREATE TABLE `dokumentasi_pekerjaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_pekerjaan_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `foto_sebelum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_sesudah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for foto_tindaklanjut
-- ----------------------------
DROP TABLE IF EXISTS `foto_tindaklanjut`;
CREATE TABLE `foto_tindaklanjut`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_tindaklanjut_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of foto_tindaklanjut
-- ----------------------------
INSERT INTO `foto_tindaklanjut` VALUES (2, 178, '2019-03-04', 'uploads/1/2019-03/modern_office_space_with_glass_walls_sldl158ig_thumbnail_full08.png', '2019-03-09 17:18:05');

-- ----------------------------
-- Table structure for frekuensi
-- ----------------------------
DROP TABLE IF EXISTS `frekuensi`;
CREATE TABLE `frekuensi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `warna` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of frekuensi
-- ----------------------------
INSERT INTO `frekuensi` VALUES (1, 'Harian', 'H', '#00ff00');

-- ----------------------------
-- Table structure for ketersediaan_sla
-- ----------------------------
DROP TABLE IF EXISTS `ketersediaan_sla`;
CREATE TABLE `ketersediaan_sla`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `sla_id` int(11) NULL DEFAULT NULL,
  `detail_sla_id` int(11) NULL DEFAULT NULL,
  `detail_sla_uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ketersediaan` float NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 825 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ketersediaan_sla
-- ----------------------------
INSERT INTO `ketersediaan_sla` VALUES (261, 2019, 3, 1, 51, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (262, 2019, 3, 1, 52, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (263, 2019, 3, 1, 53, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (264, 2019, 3, 1, 54, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (265, 2019, 3, 1, 55, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (266, 2019, 3, 1, 56, 'Melaksanakan pengamanan tanggap darurat ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (267, 2019, 3, 1, 57, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (268, 2019, 4, 1, 51, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (269, 2019, 4, 1, 52, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (270, 2019, 4, 1, 53, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (271, 2019, 4, 1, 54, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (272, 2019, 4, 1, 55, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (273, 2019, 4, 1, 56, 'Melaksanakan pengamanan tanggap darurat ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (274, 2019, 4, 1, 57, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (275, 2019, 4, 2, 58, 'Melakukan pembersihan gedung dan perlengkapannya', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (276, 2019, 4, 2, 59, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (277, 2019, 4, 2, 60, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (278, 2019, 4, 2, 61, 'Melakukan pembersihan dan perawatan taman. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (279, 2019, 4, 2, 62, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (280, 2019, 4, 2, 63, 'Melakukan pengendalian hama tikus dan serangga', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (281, 2019, 4, 2, 64, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (282, 2019, 4, 2, 65, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (283, 2019, 4, 2, 66, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (284, 2019, 4, 2, 67, 'Mengelola pengoperasian sistem proteksi kebakaran', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (285, 2019, 4, 2, 68, 'Mengelola pengoperasian sistem tata suara', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (286, 2019, 4, 2, 69, 'Mengelola pengoperasian instalasi listrik', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (287, 2019, 4, 2, 70, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (288, 2019, 4, 2, 71, 'Mengelola pengoperasian pencahayaan lampu ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (289, 2019, 4, 2, 72, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (290, 2019, 4, 2, 73, 'Mengelola Ground Reservoir', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (291, 2019, 4, 2, 74, 'Mengoperasikan Pompa Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (292, 2019, 4, 2, 75, 'Melakukan pemeliharaan Roof Tank', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (293, 2019, 4, 2, 76, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (294, 2019, 4, 2, 77, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (295, 2019, 4, 2, 78, 'Mengelola Intake Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (296, 2019, 4, 2, 79, 'Mengelola Water Treatment Plant', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (297, 2019, 4, 2, 80, 'Mengelola Sewage Treatment Plan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (298, 2019, 4, 2, 81, 'Mengelola Reservoir khusus air olahan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (299, 2019, 4, 2, 82, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (300, 2019, 4, 3, 83, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (301, 2019, 4, 4, 84, 'Penyediaan dan pengelolaan area merokok ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (302, 2019, 4, 4, 85, 'Penyediaan dan pengelolaan ruang laktasi ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (303, 2019, 4, 4, 86, 'Penyediaan tempat penyimpanan sementara limbah B3 ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (304, 2019, 4, 4, 87, 'Penyediaan dan mengelola APAR dan P3K ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (305, 2019, 4, 5, 88, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (306, 2019, 4, 5, 89, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (307, 2019, 4, 5, 90, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (308, 2019, 4, 5, 91, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (309, 2019, 4, 5, 92, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (310, 2019, 4, 6, 93, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (311, 2019, 4, 7, 94, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (312, 2019, 4, 7, 95, 'Menyediakan tanaman / bunga di lobby atau koridor. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (313, 2019, 4, 7, 96, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (314, 2019, 4, 8, 97, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (315, 2019, 4, 8, 98, 'Pengelolaan Bangunan Wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (316, 2019, 4, 8, 99, 'Pengelolaan jasa layanan wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (317, 2019, 4, 9, 100, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (318, 2019, 21, 1, 51, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (319, 2019, 21, 1, 52, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (320, 2019, 21, 1, 53, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (321, 2019, 21, 1, 54, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (322, 2019, 21, 1, 55, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (323, 2019, 21, 1, 56, 'Melaksanakan pengamanan tanggap darurat ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (324, 2019, 21, 1, 57, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (725, 2019, 18, 1, 51, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (726, 2019, 18, 1, 52, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (727, 2019, 18, 1, 53, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (728, 2019, 18, 1, 54, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (729, 2019, 18, 1, 55, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (730, 2019, 18, 1, 56, 'Melaksanakan pengamanan tanggap darurat ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (731, 2019, 18, 1, 57, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (732, 2019, 18, 2, 58, 'Melakukan pembersihan gedung dan perlengkapannya', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (733, 2019, 18, 2, 59, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (734, 2019, 18, 2, 60, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (735, 2019, 18, 2, 61, 'Melakukan pembersihan dan perawatan taman. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (736, 2019, 18, 2, 62, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (737, 2019, 18, 2, 63, 'Melakukan pengendalian hama tikus dan serangga', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (738, 2019, 18, 2, 64, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (739, 2019, 18, 2, 65, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (740, 2019, 18, 2, 66, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (741, 2019, 18, 2, 67, 'Mengelola pengoperasian sistem proteksi kebakaran', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (742, 2019, 18, 2, 68, 'Mengelola pengoperasian sistem tata suara', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (743, 2019, 18, 2, 69, 'Mengelola pengoperasian instalasi listrik', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (744, 2019, 18, 2, 70, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (745, 2019, 18, 2, 71, 'Mengelola pengoperasian pencahayaan lampu ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (746, 2019, 18, 2, 72, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (747, 2019, 18, 2, 73, 'Mengelola Ground Reservoir', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (748, 2019, 18, 2, 74, 'Mengoperasikan Pompa Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (749, 2019, 18, 2, 75, 'Melakukan pemeliharaan Roof Tank', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (750, 2019, 18, 2, 76, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (751, 2019, 18, 2, 77, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (752, 2019, 18, 2, 78, 'Mengelola Intake Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (753, 2019, 18, 2, 79, 'Mengelola Water Treatment Plant', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (754, 2019, 18, 2, 80, 'Mengelola Sewage Treatment Plan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (755, 2019, 18, 2, 81, 'Mengelola Reservoir khusus air olahan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (756, 2019, 18, 2, 82, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (757, 2019, 18, 3, 83, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (758, 2019, 18, 4, 84, 'Penyediaan dan pengelolaan area merokok ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (759, 2019, 18, 4, 85, 'Penyediaan dan pengelolaan ruang laktasi ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (760, 2019, 18, 4, 86, 'Penyediaan tempat penyimpanan sementara limbah B3 ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (761, 2019, 18, 4, 87, 'Penyediaan dan mengelola APAR dan P3K ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (762, 2019, 18, 5, 88, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (763, 2019, 18, 5, 89, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (764, 2019, 18, 5, 90, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (765, 2019, 18, 5, 91, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (766, 2019, 18, 5, 92, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (767, 2019, 18, 6, 93, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (768, 2019, 18, 7, 94, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (769, 2019, 18, 7, 95, 'Menyediakan tanaman / bunga di lobby atau koridor. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (770, 2019, 18, 7, 96, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (771, 2019, 18, 8, 97, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (772, 2019, 18, 8, 98, 'Pengelolaan Bangunan Wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (773, 2019, 18, 8, 99, 'Pengelolaan jasa layanan wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (774, 2019, 18, 9, 100, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (775, 2019, 19, 1, 51, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (776, 2019, 19, 1, 52, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (777, 2019, 19, 1, 53, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (778, 2019, 19, 1, 54, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (779, 2019, 19, 1, 55, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (780, 2019, 19, 1, 56, 'Melaksanakan pengamanan tanggap darurat ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (781, 2019, 19, 1, 57, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (782, 2019, 19, 2, 58, 'Melakukan pembersihan gedung dan perlengkapannya', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (783, 2019, 19, 2, 59, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (784, 2019, 19, 2, 60, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (785, 2019, 19, 2, 61, 'Melakukan pembersihan dan perawatan taman. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (786, 2019, 19, 2, 62, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (787, 2019, 19, 2, 63, 'Melakukan pengendalian hama tikus dan serangga', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (788, 2019, 19, 2, 64, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (789, 2019, 19, 2, 65, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (790, 2019, 19, 2, 66, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (791, 2019, 19, 2, 67, 'Mengelola pengoperasian sistem proteksi kebakaran', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (792, 2019, 19, 2, 68, 'Mengelola pengoperasian sistem tata suara', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (793, 2019, 19, 2, 69, 'Mengelola pengoperasian instalasi listrik', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (794, 2019, 19, 2, 70, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (795, 2019, 19, 2, 71, 'Mengelola pengoperasian pencahayaan lampu ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (796, 2019, 19, 2, 72, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (797, 2019, 19, 2, 73, 'Mengelola Ground Reservoir', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (798, 2019, 19, 2, 74, 'Mengoperasikan Pompa Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (799, 2019, 19, 2, 75, 'Melakukan pemeliharaan Roof Tank', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (800, 2019, 19, 2, 76, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (801, 2019, 19, 2, 77, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (802, 2019, 19, 2, 78, 'Mengelola Intake Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (803, 2019, 19, 2, 79, 'Mengelola Water Treatment Plant', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (804, 2019, 19, 2, 80, 'Mengelola Sewage Treatment Plan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (805, 2019, 19, 2, 81, 'Mengelola Reservoir khusus air olahan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (806, 2019, 19, 2, 82, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (807, 2019, 19, 3, 83, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (808, 2019, 19, 4, 84, 'Penyediaan dan pengelolaan area merokok ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (809, 2019, 19, 4, 85, 'Penyediaan dan pengelolaan ruang laktasi ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (810, 2019, 19, 4, 86, 'Penyediaan tempat penyimpanan sementara limbah B3 ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (811, 2019, 19, 4, 87, 'Penyediaan dan mengelola APAR dan P3K ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (812, 2019, 19, 5, 88, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (813, 2019, 19, 5, 89, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (814, 2019, 19, 5, 90, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (815, 2019, 19, 5, 91, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (816, 2019, 19, 5, 92, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (817, 2019, 19, 6, 93, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (818, 2019, 19, 7, 94, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (819, 2019, 19, 7, 95, 'Menyediakan tanaman / bunga di lobby atau koridor. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (820, 2019, 19, 7, 96, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (821, 2019, 19, 8, 97, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (822, 2019, 19, 8, 98, 'Pengelolaan Bangunan Wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (823, 2019, 19, 8, 99, 'Pengelolaan jasa layanan wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (824, 2019, 19, 9, 100, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', 1, NULL);

-- ----------------------------
-- Table structure for m_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `m_pekerjaan`;
CREATE TABLE `m_pekerjaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NULL DEFAULT NULL,
  `tahun` int(11) NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `aset_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_pekerjaan
-- ----------------------------
INSERT INTO `m_pekerjaan` VALUES (2, 1, 2019, 18, 'Kantor PGN Bekasi', '2019-04-09 02:33:31');
INSERT INTO `m_pekerjaan` VALUES (3, 2, 2019, 18, 'Kantor PGN Bekasi', '2019-04-09 02:50:17');
INSERT INTO `m_pekerjaan` VALUES (4, 3, 2019, 18, 'Kantor PGN Bekasi', '2019-04-09 03:17:18');
INSERT INTO `m_pekerjaan` VALUES (5, 4, 2019, 18, 'Kantor PGN Bekasi', '2019-04-09 03:18:18');

-- ----------------------------
-- Table structure for m_penilaian
-- ----------------------------
DROP TABLE IF EXISTS `m_penilaian`;
CREATE TABLE `m_penilaian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NULL DEFAULT NULL,
  `bulan` int(11) NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_penilaian
-- ----------------------------
INSERT INTO `m_penilaian` VALUES (34, 2019, 1, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (35, 2019, 2, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (36, 2019, 3, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (37, 2019, 4, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (38, 2019, 5, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (39, 2019, 6, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (40, 2019, 7, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (41, 2019, 8, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (42, 2019, 9, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (43, 2019, 10, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (44, 2019, 11, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (45, 2019, 12, 18, 'Baru');
INSERT INTO `m_penilaian` VALUES (46, 2019, 1, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (47, 2019, 2, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (48, 2019, 3, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (49, 2019, 4, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (50, 2019, 5, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (51, 2019, 6, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (52, 2019, 7, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (53, 2019, 8, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (54, 2019, 9, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (55, 2019, 10, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (56, 2019, 11, 19, 'Baru');
INSERT INTO `m_penilaian` VALUES (57, 2019, 12, 19, 'Baru');

-- ----------------------------
-- Table structure for master_air
-- ----------------------------
DROP TABLE IF EXISTS `master_air`;
CREATE TABLE `master_air`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NULL DEFAULT NULL,
  `period` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `pemakaian` double NULL DEFAULT 0,
  `jenis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rupiah` double NULL DEFAULT 0,
  `foto_after` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_before` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_air
-- ----------------------------
INSERT INTO `master_air` VALUES (93, 2019, 'Jan', 3, 600, 'SUMUR', 0, 'uploads/1/2019-03/logo_1.png', 'uploads/1/2019-03/images1.jpg', '2019-03-10 17:45:18');
INSERT INTO `master_air` VALUES (94, 2019, '1', 21, 10000, NULL, 0, 'uploads/41/2019-04/gambar_mewarnai_tayo_02_marimewarnai.jpg', 'uploads/41/2019-04/3547a811b1d8a8e51982defcd0df9f02.png', '2019-04-06 16:44:06');

-- ----------------------------
-- Table structure for master_limbah
-- ----------------------------
DROP TABLE IF EXISTS `master_limbah`;
CREATE TABLE `master_limbah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NULL DEFAULT NULL,
  `period` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `jenis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pemakaian` double NULL DEFAULT 0,
  `rupiah` double NULL DEFAULT 0,
  `foto_after` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_before` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for master_listrik
-- ----------------------------
DROP TABLE IF EXISTS `master_listrik`;
CREATE TABLE `master_listrik`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NULL DEFAULT NULL,
  `period` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `pemakaian` double NULL DEFAULT 0,
  `rupiah` double NULL DEFAULT 0,
  `foto_after` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_before` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_listrik
-- ----------------------------
INSERT INTO `master_listrik` VALUES (24, 2019, '1', 3, 100, 101, 'uploads/37/2019-03/logo_1.png', 'uploads/37/2019-03/21618e399ac27c80aac237c8e2e5021d.jpg', '2019-03-23 02:45:43');
INSERT INTO `master_listrik` VALUES (25, 2019, '1', 4, 200, 200, 'uploads/37/2019-03/images1.jpg', 'uploads/37/2019-03/21618e399ac27c80aac237c8e2e5021d.jpg', '2019-03-23 02:46:18');
INSERT INTO `master_listrik` VALUES (26, 2019, '2', 3, 110, 11, 'uploads/37/2019-03/logo_1.png', 'uploads/37/2019-03/images1.jpg', '2019-03-23 02:46:45');
INSERT INTO `master_listrik` VALUES (27, 2019, '3', 3, 3000, 3000000, 'uploads/37/2019-03/logo_1.png', 'uploads/37/2019-03/images1.jpg', '2019-03-23 02:57:41');
INSERT INTO `master_listrik` VALUES (28, 2019, '4', 3, 400000, 4000000, 'uploads/37/2019-03/images1.jpg', 'uploads/37/2019-03/logo_1.png', '2019-03-23 02:59:21');
INSERT INTO `master_listrik` VALUES (29, 2019, '3', 5, 1110, 11, 'uploads/37/2019-03/images1.jpg', 'uploads/37/2019-03/images1.jpg', '2019-03-23 03:01:28');
INSERT INTO `master_listrik` VALUES (30, 2019, '6', 3, 60000, 6000, 'uploads/37/2019-03/logo_1.png', 'uploads/37/2019-03/images1.jpg', '2019-03-23 06:49:15');
INSERT INTO `master_listrik` VALUES (33, 2019, '1', 21, 100000, 100, 'uploads/41/2019-03/images1.jpg', 'uploads/41/2019-03/logo_1.png', '2019-03-24 08:23:23');
INSERT INTO `master_listrik` VALUES (34, 2019, '1', 22, 10000, 100, 'uploads/41/2019-03/images1.jpg', 'uploads/41/2019-03/logo_1.png', '2019-03-24 08:33:23');

-- ----------------------------
-- Table structure for master_solar
-- ----------------------------
DROP TABLE IF EXISTS `master_solar`;
CREATE TABLE `master_solar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NULL DEFAULT NULL,
  `period` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `pemakaian` double NULL DEFAULT 0,
  `rupiah` double NULL DEFAULT 0,
  `foto_after` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_before` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for master_tindaklanjut
-- ----------------------------
DROP TABLE IF EXISTS `master_tindaklanjut`;
CREATE TABLE `master_tindaklanjut`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aset_id` int(11) NULL DEFAULT NULL,
  `nama_aset` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_tindaklanjut
-- ----------------------------
INSERT INTO `master_tindaklanjut` VALUES (99, 3, 'Gedung A Pusat', NULL);
INSERT INTO `master_tindaklanjut` VALUES (100, 4, 'Gedung B Pusat', NULL);
INSERT INTO `master_tindaklanjut` VALUES (101, 5, 'Gedung C Pusat', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2016_08_07_145904_add_table_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (2, '2016_08_07_150834_add_table_cms_dashboard', 1);
INSERT INTO `migrations` VALUES (3, '2016_08_07_151210_add_table_cms_logs', 1);
INSERT INTO `migrations` VALUES (4, '2016_08_07_151211_add_details_cms_logs', 1);
INSERT INTO `migrations` VALUES (5, '2016_08_07_152014_add_table_cms_privileges', 1);
INSERT INTO `migrations` VALUES (6, '2016_08_07_152214_add_table_cms_privileges_roles', 1);
INSERT INTO `migrations` VALUES (7, '2016_08_07_152320_add_table_cms_settings', 1);
INSERT INTO `migrations` VALUES (8, '2016_08_07_152421_add_table_cms_users', 1);
INSERT INTO `migrations` VALUES (9, '2016_08_07_154624_add_table_cms_menus_privileges', 1);
INSERT INTO `migrations` VALUES (10, '2016_08_07_154624_add_table_cms_moduls', 1);
INSERT INTO `migrations` VALUES (11, '2016_08_17_225409_add_status_cms_users', 1);
INSERT INTO `migrations` VALUES (12, '2016_08_20_125418_add_table_cms_notifications', 1);
INSERT INTO `migrations` VALUES (13, '2016_09_04_033706_add_table_cms_email_queues', 1);
INSERT INTO `migrations` VALUES (14, '2016_09_16_035347_add_group_setting', 1);
INSERT INTO `migrations` VALUES (15, '2016_09_16_045425_add_label_setting', 1);
INSERT INTO `migrations` VALUES (16, '2016_09_17_104728_create_nullable_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (17, '2016_10_01_141740_add_method_type_apicustom', 1);
INSERT INTO `migrations` VALUES (18, '2016_10_01_141846_add_parameters_apicustom', 1);
INSERT INTO `migrations` VALUES (19, '2016_10_01_141934_add_responses_apicustom', 1);
INSERT INTO `migrations` VALUES (20, '2016_10_01_144826_add_table_apikey', 1);
INSERT INTO `migrations` VALUES (21, '2016_11_14_141657_create_cms_menus', 1);
INSERT INTO `migrations` VALUES (22, '2016_11_15_132350_create_cms_email_templates', 1);
INSERT INTO `migrations` VALUES (23, '2016_11_15_190410_create_cms_statistics', 1);
INSERT INTO `migrations` VALUES (24, '2016_11_17_102740_create_cms_statistic_components', 1);
INSERT INTO `migrations` VALUES (25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
INSERT INTO `migrations` VALUES (26, '2019_03_30_022939_create_complains_table', 2);
INSERT INTO `migrations` VALUES (27, '2019_03_30_024731_adds_api_token_to_users_table', 3);

-- ----------------------------
-- Table structure for parameter
-- ----------------------------
DROP TABLE IF EXISTS `parameter`;
CREATE TABLE `parameter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of parameter
-- ----------------------------
INSERT INTO `parameter` VALUES (1, 'Tahun', '2019');

-- ----------------------------
-- Table structure for regional
-- ----------------------------
DROP TABLE IF EXISTS `regional`;
CREATE TABLE `regional`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uraian` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of regional
-- ----------------------------
INSERT INTO `regional` VALUES (1, 'Regional I', '2019-02-12 05:01:22');
INSERT INTO `regional` VALUES (2, 'Regional II', '2019-02-12 05:01:29');
INSERT INTO `regional` VALUES (3, 'Regional III', '2019-02-12 05:01:37');
INSERT INTO `regional` VALUES (4, 'All', '2019-02-12 12:03:54');

-- ----------------------------
-- Table structure for rekap_pemakaian
-- ----------------------------
DROP TABLE IF EXISTS `rekap_pemakaian`;
CREATE TABLE `rekap_pemakaian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aset_id` int(11) NULL DEFAULT NULL,
  `wilayah_id` int(11) NULL DEFAULT NULL,
  `nama_aset` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun` int(11) NULL DEFAULT NULL,
  `jenis_pemakaian` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'Listrik;Air;Limbah;Solar',
  `jenis` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jan` double NULL DEFAULT 0,
  `feb` double NULL DEFAULT 0,
  `mar` double NULL DEFAULT 0,
  `apr` double NULL DEFAULT 0,
  `may` double NULL DEFAULT 0,
  `jun` double NULL DEFAULT 0,
  `jul` double NULL DEFAULT 0,
  `aug` double NULL DEFAULT 0,
  `sep` double NULL DEFAULT 0,
  `oct` double NULL DEFAULT 0,
  `nov` double NULL DEFAULT 0,
  `des` double NULL DEFAULT 0,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rekap_pemakaian
-- ----------------------------
INSERT INTO `rekap_pemakaian` VALUES (37, 3, 2, 'Gedung A Pusat', 2019, 'air', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-04-06 23:44:06');

-- ----------------------------
-- Table structure for rekap_pemakaian_wilayah
-- ----------------------------
DROP TABLE IF EXISTS `rekap_pemakaian_wilayah`;
CREATE TABLE `rekap_pemakaian_wilayah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wilayah_id` int(11) NULL DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_pemakaian` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun` int(11) NULL DEFAULT NULL,
  `jan` double NULL DEFAULT 0,
  `feb` double NULL DEFAULT 0,
  `mar` double NULL DEFAULT 0,
  `apr` double NULL DEFAULT 0,
  `may` double NULL DEFAULT 0,
  `jun` double NULL DEFAULT 0,
  `jul` double NULL DEFAULT 0,
  `aug` double NULL DEFAULT 0,
  `sep` double NULL DEFAULT 0,
  `oct` double NULL DEFAULT 0,
  `nov` double NULL DEFAULT 0,
  `des` double NULL DEFAULT 0,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sla
-- ----------------------------
DROP TABLE IF EXISTS `sla`;
CREATE TABLE `sla`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(255) NULL DEFAULT NULL,
  `uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sla
-- ----------------------------
INSERT INTO `sla` VALUES (1, 2019, 'Pengamanan', '2019-04-07 00:01:10.950461');
INSERT INTO `sla` VALUES (2, 2019, 'Pengelolaan Pemeliharaan Asets', '2019-03-22 19:10:01.909333');
INSERT INTO `sla` VALUES (3, 2019, 'Pengelolaan Perawatan Aset', '2019-03-22 19:10:01.909333');
INSERT INTO `sla` VALUES (4, 2019, 'Penyediaan fasilitas khusus', '2019-03-22 19:10:01.909333');
INSERT INTO `sla` VALUES (5, 2019, 'Penyediaan perijinan terkait bangunan dan lingkungan', '2019-03-22 19:10:01.909333');
INSERT INTO `sla` VALUES (6, 2019, 'Pengelolaan fasilitas perparkiran', '2019-03-22 19:10:01.909333');
INSERT INTO `sla` VALUES (7, 2019, 'Pengelolaan penyediaan assesoris gedung', '2019-03-22 19:10:01.909333');
INSERT INTO `sla` VALUES (8, 2019, 'Pengelolaan Wisma dan Rumah dinas', '2019-03-22 19:10:01.909333');
INSERT INTO `sla` VALUES (9, 2019, 'Pengelolaan Keluhan', '2019-03-22 19:10:01.909333');

-- ----------------------------
-- Table structure for sla_aset
-- ----------------------------
DROP TABLE IF EXISTS `sla_aset`;
CREATE TABLE `sla_aset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sla_id` int(11) NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `aktif` float(255, 0) NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sla_aset
-- ----------------------------
INSERT INTO `sla_aset` VALUES (26, 1, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (27, 5, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (28, 6, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (29, 7, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (30, 8, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (49, NULL, 4, 0, NULL);
INSERT INTO `sla_aset` VALUES (51, 1, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (52, 2, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (53, 3, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (54, 4, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (55, 5, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (56, 6, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (57, 7, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (58, 8, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (59, 9, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (60, 1, 21, 1, NULL);
INSERT INTO `sla_aset` VALUES (61, 2, 21, 1, NULL);
INSERT INTO `sla_aset` VALUES (62, 3, 21, 1, NULL);
INSERT INTO `sla_aset` VALUES (63, 4, 21, 1, NULL);
INSERT INTO `sla_aset` VALUES (64, 5, 21, 1, NULL);
INSERT INTO `sla_aset` VALUES (65, 6, 21, 1, NULL);
INSERT INTO `sla_aset` VALUES (66, 7, 21, 1, NULL);
INSERT INTO `sla_aset` VALUES (67, 8, 21, 1, NULL);
INSERT INTO `sla_aset` VALUES (68, 9, 21, 1, NULL);
INSERT INTO `sla_aset` VALUES (69, 1, 18, 1, NULL);
INSERT INTO `sla_aset` VALUES (70, 2, 18, 1, NULL);
INSERT INTO `sla_aset` VALUES (71, 3, 18, 1, NULL);
INSERT INTO `sla_aset` VALUES (72, 4, 18, 1, NULL);
INSERT INTO `sla_aset` VALUES (73, 5, 18, 1, NULL);
INSERT INTO `sla_aset` VALUES (74, 6, 18, 1, NULL);
INSERT INTO `sla_aset` VALUES (75, 7, 18, 1, NULL);
INSERT INTO `sla_aset` VALUES (76, 8, 18, 1, NULL);
INSERT INTO `sla_aset` VALUES (77, 9, 18, 1, NULL);
INSERT INTO `sla_aset` VALUES (78, 1, 19, 1, NULL);
INSERT INTO `sla_aset` VALUES (79, 2, 19, 1, NULL);
INSERT INTO `sla_aset` VALUES (80, 3, 19, 1, NULL);
INSERT INTO `sla_aset` VALUES (81, 4, 19, 1, NULL);
INSERT INTO `sla_aset` VALUES (82, 5, 19, 1, NULL);
INSERT INTO `sla_aset` VALUES (83, 6, 19, 1, NULL);
INSERT INTO `sla_aset` VALUES (84, 7, 19, 1, NULL);
INSERT INTO `sla_aset` VALUES (85, 8, 19, 1, NULL);
INSERT INTO `sla_aset` VALUES (86, 9, 19, 1, NULL);

-- ----------------------------
-- Table structure for user_aset
-- ----------------------------
DROP TABLE IF EXISTS `user_aset`;
CREATE TABLE `user_aset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `regional_id` int(11) NULL DEFAULT NULL,
  `wilayah_id` int(11) NULL DEFAULT NULL,
  `area_id` int(11) NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_aset
-- ----------------------------
INSERT INTO `user_aset` VALUES (1, 3, 4, 1, 1, 0, '2019-02-12 15:52:42');
INSERT INTO `user_aset` VALUES (2, 25, 2, 6, 18, 0, '2019-02-12 16:45:43');
INSERT INTO `user_aset` VALUES (3, 7, 4, 3, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (4, 12, 4, 1, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (5, 16, 4, 1, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (6, 22, 4, 1, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (7, 26, 4, 1, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (8, 31, 4, 1, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (9, 4, 4, 1, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (10, 5, 4, 1, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (11, 36, 4, 1, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (12, 6, 1, 2, 3, 0, NULL);
INSERT INTO `user_aset` VALUES (13, 37, 1, 2, 3, 0, NULL);
INSERT INTO `user_aset` VALUES (14, 57, 1, 2, 3, 0, NULL);
INSERT INTO `user_aset` VALUES (15, 8, 1, 2, 4, 0, NULL);
INSERT INTO `user_aset` VALUES (16, 38, 1, 2, 4, 0, NULL);
INSERT INTO `user_aset` VALUES (17, 58, 1, 2, 4, 0, NULL);
INSERT INTO `user_aset` VALUES (18, 10, 1, 3, 5, 0, NULL);
INSERT INTO `user_aset` VALUES (19, 40, 1, 3, 5, 0, NULL);
INSERT INTO `user_aset` VALUES (20, 60, 1, 3, 5, 0, NULL);
INSERT INTO `user_aset` VALUES (21, 41, 1, 3, 6, 0, NULL);
INSERT INTO `user_aset` VALUES (22, 61, 1, 3, 6, 0, NULL);
INSERT INTO `user_aset` VALUES (23, 9, 1, 3, 7, 0, NULL);
INSERT INTO `user_aset` VALUES (24, 39, 1, 3, 7, 0, NULL);
INSERT INTO `user_aset` VALUES (25, 59, 1, 3, 7, 0, NULL);
INSERT INTO `user_aset` VALUES (26, 43, 1, 4, 8, 0, NULL);
INSERT INTO `user_aset` VALUES (27, 63, 1, 4, 8, 0, NULL);
INSERT INTO `user_aset` VALUES (28, 14, 1, 4, 8, 0, NULL);
INSERT INTO `user_aset` VALUES (29, 11, 1, 4, 8, 0, NULL);
INSERT INTO `user_aset` VALUES (30, 13, 1, 4, 9, 0, NULL);
INSERT INTO `user_aset` VALUES (31, 42, 1, 4, 9, 0, NULL);
INSERT INTO `user_aset` VALUES (32, 62, 1, 4, 9, 0, NULL);
INSERT INTO `user_aset` VALUES (33, 15, 1, 4, 10, 0, NULL);
INSERT INTO `user_aset` VALUES (34, 44, 1, 4, 10, 0, NULL);
INSERT INTO `user_aset` VALUES (35, 64, 1, 4, 10, 0, NULL);
INSERT INTO `user_aset` VALUES (36, 17, 2, 5, 11, 0, NULL);
INSERT INTO `user_aset` VALUES (37, 18, 2, 5, 12, 0, NULL);
INSERT INTO `user_aset` VALUES (38, 46, 2, 5, 12, 0, NULL);
INSERT INTO `user_aset` VALUES (39, 66, 2, 5, 12, 0, NULL);
INSERT INTO `user_aset` VALUES (40, 19, 2, 5, 13, 0, NULL);
INSERT INTO `user_aset` VALUES (41, 47, 2, 5, 13, 0, NULL);
INSERT INTO `user_aset` VALUES (42, 67, 2, 5, 13, 0, NULL);
INSERT INTO `user_aset` VALUES (43, 20, 2, 5, 14, 0, NULL);
INSERT INTO `user_aset` VALUES (44, 48, 2, 5, 14, 0, NULL);
INSERT INTO `user_aset` VALUES (45, 68, 2, 5, 14, 0, NULL);
INSERT INTO `user_aset` VALUES (46, 21, 2, 5, 15, 0, NULL);
INSERT INTO `user_aset` VALUES (47, 23, 2, 6, 16, 0, NULL);
INSERT INTO `user_aset` VALUES (48, 49, 2, 6, 16, 0, NULL);
INSERT INTO `user_aset` VALUES (49, 69, 2, 6, 16, 0, NULL);
INSERT INTO `user_aset` VALUES (50, 24, 2, 6, 17, 0, NULL);
INSERT INTO `user_aset` VALUES (51, 50, 2, 6, 17, 0, NULL);
INSERT INTO `user_aset` VALUES (52, 70, 2, 6, 17, 0, NULL);
INSERT INTO `user_aset` VALUES (53, 25, 2, 6, 18, 0, NULL);
INSERT INTO `user_aset` VALUES (54, 28, 3, 7, 19, 0, NULL);
INSERT INTO `user_aset` VALUES (55, 45, 3, 7, 19, 0, NULL);
INSERT INTO `user_aset` VALUES (56, 65, 3, 7, 19, 0, NULL);
INSERT INTO `user_aset` VALUES (57, 29, 3, 7, 20, 0, NULL);
INSERT INTO `user_aset` VALUES (58, 52, 3, 7, 20, 0, NULL);
INSERT INTO `user_aset` VALUES (59, 72, 3, 7, 20, 0, NULL);
INSERT INTO `user_aset` VALUES (60, 30, 3, 7, 21, 0, NULL);
INSERT INTO `user_aset` VALUES (61, 53, 3, 7, 21, 0, NULL);
INSERT INTO `user_aset` VALUES (62, 73, 3, 7, 21, 0, NULL);
INSERT INTO `user_aset` VALUES (63, 27, 3, 7, 22, 0, NULL);
INSERT INTO `user_aset` VALUES (64, 51, 3, 7, 22, 0, NULL);
INSERT INTO `user_aset` VALUES (65, 71, 3, 7, 22, 0, NULL);
INSERT INTO `user_aset` VALUES (66, 34, 3, 8, 23, 0, NULL);
INSERT INTO `user_aset` VALUES (67, 56, 3, 8, 23, 0, NULL);
INSERT INTO `user_aset` VALUES (68, 76, 3, 8, 23, 0, NULL);
INSERT INTO `user_aset` VALUES (69, 32, 3, 8, 24, 0, NULL);
INSERT INTO `user_aset` VALUES (70, 54, 3, 8, 24, 0, NULL);
INSERT INTO `user_aset` VALUES (71, 74, 3, 8, 24, 0, NULL);
INSERT INTO `user_aset` VALUES (72, 33, 3, 8, 27, 0, NULL);
INSERT INTO `user_aset` VALUES (73, 55, 3, 8, 27, 0, NULL);
INSERT INTO `user_aset` VALUES (74, 75, 3, 8, 27, 0, NULL);
INSERT INTO `user_aset` VALUES (75, 1, 1, 1, 1, 0, NULL);
INSERT INTO `user_aset` VALUES (77, 77, 1, 3, 6, 0, '2019-03-24 09:01:09');

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
  INDEX `fk_wilayah_regional_1`(`regional_id`) USING BTREE,
  CONSTRAINT `fk_wilayah_regional_1` FOREIGN KEY (`regional_id`) REFERENCES `regional` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wilayah
-- ----------------------------
INSERT INTO `wilayah` VALUES (1, 4, 'All', '2019-02-12 05:26:22');
INSERT INTO `wilayah` VALUES (2, 1, 'Wilayah I', '2019-02-12 05:27:22');
INSERT INTO `wilayah` VALUES (3, 1, 'Wilayah II', '2019-02-12 05:27:41');
INSERT INTO `wilayah` VALUES (4, 1, 'Wilayah III', '2019-02-12 05:27:50');
INSERT INTO `wilayah` VALUES (5, 2, 'Wilayah IV', '2019-02-12 05:28:20');
INSERT INTO `wilayah` VALUES (6, 2, 'Wilayah V', '2019-02-12 05:28:28');
INSERT INTO `wilayah` VALUES (7, 3, 'Wilayah VI', '2019-02-12 05:28:42');
INSERT INTO `wilayah` VALUES (8, 3, 'Wilayah VII', '2019-02-12 05:28:49');

SET FOREIGN_KEY_CHECKS = 1;
