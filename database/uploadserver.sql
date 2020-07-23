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

 Date: 27/05/2019 16:18:39
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
  INDEX `fk_area_wilayah_1`(`wilayah_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, 1, 'All', NULL);
INSERT INTO `area` VALUES (2, 8, 'Anyer', NULL);
INSERT INTO `area` VALUES (3, 2, 'Bandung', NULL);
INSERT INTO `area` VALUES (4, 3, 'Batam', NULL);
INSERT INTO `area` VALUES (5, 4, 'Bekasi', NULL);
INSERT INTO `area` VALUES (6, 5, 'Bogor', NULL);
INSERT INTO `area` VALUES (7, 6, 'Cilegon', NULL);
INSERT INTO `area` VALUES (8, 7, 'Cirebon', NULL);
INSERT INTO `area` VALUES (9, 8, 'Daan Mogot', NULL);
INSERT INTO `area` VALUES (10, 8, 'Jakarta', NULL);
INSERT INTO `area` VALUES (11, 9, 'Jambi', NULL);
INSERT INTO `area` VALUES (12, 8, 'Juanda', NULL);
INSERT INTO `area` VALUES (13, 10, 'Karawang', NULL);
INSERT INTO `area` VALUES (14, 8, 'Ketapang', NULL);
INSERT INTO `area` VALUES (15, 8, 'Klender', NULL);
INSERT INTO `area` VALUES (16, 11, 'Lampung', NULL);
INSERT INTO `area` VALUES (17, 12, 'Makassar', NULL);
INSERT INTO `area` VALUES (18, 8, 'Manhattan', NULL);
INSERT INTO `area` VALUES (19, 13, 'Medan', NULL);
INSERT INTO `area` VALUES (20, 5, 'Megamendung', NULL);
INSERT INTO `area` VALUES (21, 14, 'Palembang', NULL);
INSERT INTO `area` VALUES (22, 15, 'Pasuruan', NULL);
INSERT INTO `area` VALUES (23, 16, 'Pekanbaru', NULL);
INSERT INTO `area` VALUES (24, 17, 'Probolinggo', NULL);
INSERT INTO `area` VALUES (25, 4, 'Sabilillah', NULL);
INSERT INTO `area` VALUES (26, 18, 'Semarang', NULL);
INSERT INTO `area` VALUES (27, 19, 'Serang', NULL);
INSERT INTO `area` VALUES (28, 20, 'Sidoarjo', NULL);
INSERT INTO `area` VALUES (29, 8, 'Sinergi 8', NULL);
INSERT INTO `area` VALUES (30, 21, 'Surabaya', NULL);
INSERT INTO `area` VALUES (31, 22, 'Tangerang', NULL);
INSERT INTO `area` VALUES (32, 23, 'Tarakan', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of aset
-- ----------------------------
INSERT INTO `aset` VALUES (1, 1, 'All', 0, 0, '-', '-', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (2, 14, 'Gedung A', 0, 0, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Gedung A)', 'Bangunan', '4824', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (3, 14, 'Gedung B', 0, 0, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Gedung B)', 'Bangunan', '5299.13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (4, 14, 'Gedung C', 0, 0, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Gedung C)', 'Bangunan', '3708', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (5, 14, 'Graha PGAS', 0, 0, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Graha PGAS)', 'Bangunan', '14975.05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (6, 14, 'Gedung Parkir', 0, 0, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Gedung Parkir)', 'Bangunan', '5384', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (7, 14, 'Gedung Utilitas', 0, 0, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Gedung Utilitas)', 'Bangunan', '1215', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (8, 14, 'Gedung Penunjang', 0, 0, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Gedung Penunjang)', 'Bangunan', '993', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (9, 14, 'Masjid Al Istiqomah', 0, 0, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Masjid)', 'Bangunan', '723.03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (10, 18, 'Gedung Manhattan', 0, 0, 'The Manhattan Square Lt. 26-30, Jl. TB. Simatupang, Cilandak Timur, Jakarta Selatan', 'Bangunan', '6275', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (11, 12, 'Gedung Juanda', 0, 0, 'Jl. Juanda 4B, Kebon Kelapa, Gambir, Jakarta Pusat', 'Bangunan', '649.92', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (12, 9, 'Masjid Daan Mogot', 0, 0, 'Jl. Daan Mogot Gg. Macan, Duri, Kebon Jeruk, Jakarta Barat (Masjid)', 'Bangunan', '1270.86', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (13, 9, 'GOR Daan Mogot', 0, 0, 'Jl. Daan Mogot Gg. Macan, Duri, Kebon Jeruk, Jakarta Barat (Gedung Serba Guna)', 'Bangunan', '4221.5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (14, 9, 'Gedung PGASOL', 0, 0, 'Jl. Daan Mogot Gg. Macan, Duri, Kebon Jeruk, Jakarta Barat (Gedung Eks. PDJB)', 'Bangunan', '900', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (15, 2, 'Gedung Area Jakarta (A, B, C)', 0, 0, 'Jl. Anyer 10-11, Menteng, Jakarta Pusat', 'Bangunan', '1627', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (16, 15, 'Gedung Arsip', 0, 0, 'Jl. Swadaya PLN, Klender, Jakarta Timur (Gedung Arsip)', 'Bangunan', '544', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (17, 5, 'Gedung Area Bekasi', 0, 0, 'Jl. Pekayon Raya, Bekasi ', 'Bangunan', '328', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (18, 25, 'Gudang Sabilillah Bekasi', 0, 0, 'Gang Sabilillah, Jl. Raya Sultan Agung, Medan Satria, Bekasi', 'Bangunan', '365', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (19, 6, 'Gedung Area Bogor', 0, 0, 'Jl. M.A. Salmun No. 41, Ciwaringin, Bogor (kecuali gudang dan workshop)', 'Bangunan', '5199', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (20, 20, 'Wisma Direksi', 0, 0, 'Wisma Megamendung, Bogor (Wisma Direksi)', 'Bangunan', '921.73', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (21, 20, 'Gedung Sunyaragi & Bojonegoro', 0, 0, 'Wisma Megamendung, Bogor (Wisma Diklat 2 lantai)', 'Bangunan', '733', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (22, 20, 'Gedung Pagardewa dan Panaran', 0, 0, 'Wisma Megamendung, Bogor (Wisma Baru)', 'Bangunan', '733', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (23, 3, 'Gedung Braga', 0, 0, 'Jl. Braga No. 40, Braga, Sumur Bandung, Bandung', 'Bangunan', '1707', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (24, 3, 'Wisma Diklat', 0, 0, 'Jl. Serang No. 2-12 (Bangunan Wisma dan Kantor)', 'Bangunan', '2045', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (25, 3, 'Wisma Diklat', 0, 0, 'Jl. Serang No. 2-12 (Bangunan Diklat)', 'Bangunan', '600', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (26, 3, 'Rumah Serang 10', 0, 0, 'Jl. Serang No. 2-12 (Bangunan Serang 10)', 'Bangunan', '135', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (27, 3, 'Rumah Serang 12', 0, 0, 'Jl. Serang No. 2-12 (Bangunan Serang 12)', 'Bangunan', '124', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (28, 3, 'Rumah Serang 3 - Arsip', 0, 0, 'Jl. Serang No. 1-9 (Bangunan Serang 3/Arsip TSJ)', 'Bangunan', '726.42', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (29, 3, 'Rumah Serang 1 sd 9 - Arsip', 0, 0, 'Jl. Serang No. 1-9 (Gedung Arsip)', 'Bangunan', '1668', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (30, 3, 'Rumah Serang 5 - Direksi', 0, 0, 'Jl. Serang No. 1-9 (Bangunan Serang 5/Wisma Direksi)', 'Bangunan', '392.27', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (31, 3, 'Rumah Serang 9', 0, 0, 'Jl. Serang No. 1-9 (Bangunan Serang 9)', 'Bangunan', '419.74', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (32, 3, 'Gedung Pengelola dan Arsip', 0, 0, 'Jl. Serang No. 1-9 (Bangunan Kantor Pengelola & Arsip)', 'Bangunan', '1651', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (33, 3, 'Gedung Penunjang Bandung', 0, 0, 'Jl. Serang No. 1-9 (Bangunan Penunjang)', 'Bangunan', '100', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (34, 17, 'Rumah Makassar', 0, 0, 'Jl Sungai Cerekang, Gaddong, Bontoala, Makassar', 'Bangunan', '561', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (35, 17, 'Ruko Makassar', 0, 0, 'Kompleks Panakkukang Mas, Jl. Tulip Blok C1 No. 12, Panakkukang, Makassar', 'Bangunan', '160', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (36, 26, 'Gedung Kantor Semarang Diponogoro', 0, 0, 'Jl. Diponegoro No. 35, Lempong Sari, Gajah Mungkur, Semarang', 'Bangunan', '785.05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (37, 26, 'Gedung Kantor Semarang Wahidin', 0, 0, 'Jl. Dr. Wahidin S No. 32, Karanganyar Gunung, Candisari, Semarang', 'Bangunan', '125', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (38, 30, 'Gedung Kantor Surabaya', 0, 0, 'Jl. Pemuda No. 56 - 58, Surabaya', 'Bangunan', '7679.85', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (39, 30, 'Gedung Kantor PGASOL Ngagel', 0, 0, 'Jl Ngagel 129-131, Surabaya', 'Bangunan', '1301.07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (40, 22, 'Gedung Kantor Pasuruan', 0, 0, 'Jl. Rembang Industri Raya, Kawasan PIER, Pasuruan', 'Bangunan', '653.03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (41, 28, 'Gedung Kantor Sidoarjo', 0, 0, 'Jl. Jaksa Agung Suprapto No.17, Sidoklumpuk, Sidoarjo ', 'Bangunan', '928.27', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (42, 13, 'Gedung Kantor Karawang', 0, 0, 'Jl. Ahmad Yani, Karang Pawitan, Karawang ', 'Bangunan', '1609.29', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (43, 31, 'Gedung Kantor Tangerang', 0, 0, 'Jl. Pahlawan Seribu, Rawabuntu, Serpong, Tangerang Selatan', 'Bangunan', '1822.47', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (44, 7, 'Gedung Kantor Cilegon', 0, 0, 'Jl. Raya Merak, Cilegon', 'Bangunan', '960', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (45, 8, 'Gedung Kantor Cirebon', 0, 0, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon (Gedung Utama)', 'Bangunan', '909', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (46, 8, 'Gedung PGASOL Cirebon', 0, 0, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon (Gedung PGASOL Depan exclude workshop)', 'Bangunan', '378', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (47, 8, 'Gedung PGASOL Cirebon 2', 0, 0, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon (Gedung PGASOL Belakang)', 'Bangunan', '346', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (48, 8, 'Gedung HBB dan Arsip Cirebon', 0, 0, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon (Gudang HBB dan Arsip)', 'Bangunan', '480', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (49, 8, 'Rumah Dinas Cirebon A,B,C', 0, 0, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon (Rumah Dinas A,B,C)', 'Bangunan', '337', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (50, 8, 'Rumah Dinas Cirebon Belakang', 0, 0, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon (Rumah Dinas Belakang)', 'Bangunan', '108', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (51, 8, 'Gedung PI Cirebon', 0, 0, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon (Gedung PI)', 'Bangunan', '148', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (52, 8, 'GOR Cirebon', 0, 0, 'Jl. Veteran, Kejaksan, Kebonbaru, Cirebon (GOR)', 'Bangunan', '826', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (53, 21, 'Gedung Kantor Palembang', 0, 0, 'Jl. Merdeka, Bukit Kecil, Palembang', 'Bangunan', '6118.12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (54, 16, 'Gedung Kantor Lampung ', 0, 0, 'Graha Sucofindo Lt.3, Bandarlampung', 'Bangunan', '400', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (55, 19, 'Gedung Kantor Medan Imam Bonjol', 0, 0, 'Jl. Imam Bonjol No.15-D, Medan', 'Bangunan', '725.8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (56, 19, 'Gedung Kantor Medan Glugur', 0, 0, 'Jl. Yos Sudarso Lorong XII, Glugur (Kantor Area Medan kecuali BMCS dan Gudang)', 'Bangunan', '3716', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (57, 19, 'Rumah Dinas Uskup Agung', 0, 0, 'Jl. Uskup Agung S Pranoto No.16, Medan', 'Bangunan', '405.55', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (58, 4, 'Gedung Batam Center', 0, 0, 'Jl. Engku Putri Batam Center, Batam', 'Bangunan', '4939.31', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (59, 23, 'Gedung Kantor Pekanbaru', 0, 0, 'Jl. Jenderal Sudirman, Tengkerang, Pekanbaru', 'Bangunan', '514', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (60, 32, 'Gedung Kantor Tarakan', 0, 0, 'Jl. Mulawarman No. 14B, Tarakan', 'Bangunan', '459', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (61, 29, 'Gedung Sinergi 8 - BUMN', 0, 0, 'Jl. Kebun Sirih No. 8 Jakara Pusat', 'Bangunan', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (62, 10, 'Tanah Kosong Klender', 0, 0, 'Komplek PLN, Jl. Gas Negara Blok I, Jatinegara, Jakarta Timur', 'Tanah', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (63, 10, 'Tanah Kosong Klender', 0, 0, 'Komplek PLN, Jl. Gas Negara Blok III, Jatinegara, Jakarta Timur', 'Tanah', '670', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (64, 10, 'Tanah dan Bangunan Mirra 8', 0, 0, 'Jl. M.I. Ridwan Rais No. 8, Gambir, Jakarta Pusat', 'Tanah', '985', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (65, 10, 'Tanah dan Bangunan Mirra 2-4', 0, 0, 'Jl. M.I. Ridwan Rais No. 2-4, Gambir, Jakarta Pusat', 'Tanah', '2735', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (66, 10, 'Tanah Kosong Ahmad Yani', 0, 0, 'Jl. Jend. Ahmad Yani, Utan Kayu Utara, Matraman, Jakarta Timur', 'Tanah', '816', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (67, 10, 'Tanah Kosong Ketapang', 0, 0, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Halaman)', 'Tanah', '14846', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (68, 5, 'Tanah Kosong Pekayon', 0, 0, 'Jl. Pekayon Raya, Bekasi (Halaman)', 'Tanah', '3930', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (69, 5, 'Tanah Kosong Pondok Hijau', 0, 0, 'Jl Melati Raya J-1 no. 6-7, Pondok Hijau Permai, Pengasinan, Rawalumbu, Bekasi', 'Tanah', '453.11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (70, 5, 'Tanah Kosong Pondok Hijau 2', 0, 0, 'Pondok Hijau Permai, Pengasinan, Bekasi', 'Tanah', '1185', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (71, 6, 'Tanah Kosong Megamendung', 0, 0, 'Kawasan Wisma Megamendung, Bogor (Halaman)', 'Tanah', '14640', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (72, 6, 'Tanah Kosong dan Lapangan Bogor', 0, 0, 'Jl. M.A. Salmun No. 41, Ciwaringin, Bogor (Lapangan Tenis & Halaman)', 'Tanah', '18562', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (73, 3, 'Tanah Kosong Bandung', 0, 0, 'Jl. Serang No. 3-9, Kebon Waru, Batu Nunggal, Bandung (Halaman)', 'Tanah', '74525', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (74, 11, 'Tanah Kosong Jambi', 0, 0, 'Jl. Sri Sudewi MS d/h. H.M Yusuf Singadikane, Sungai Putri, Telanaipura, Jambi', 'Tanah', '649', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (75, 11, 'Tanah Kosong Jambi 2', 0, 0, 'Jl. Lorong Purnawira, Sungai Putri, Telanaipura, Jambi (Halaman)', 'Tanah', '352', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (76, 17, 'Tanah Kosong Makassar', 0, 0, 'Jl Sungai Cerekang, Gaddong, Bontoala, Makassar', 'Tanah', '2830', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (77, 26, 'Tanah Kosong Sleko Semarang', 0, 0, 'Jl. Sleko, Bandarharjo, Semarang Utara, Semarang (Halaman)', 'Tanah', '15128', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (78, 26, 'Tanah Kosong Wahidin Semarang', 0, 0, 'Jl. Dr. Wahidin S No. 32, Karanganyar Gunung, Candisari, Semarang (Halaman)', 'Tanah', '5106', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (79, 27, 'Tanah Kosong Serang Banten', 0, 0, 'Jl. Lingkar, Kedaleman, Cibeber, Cilegon & Serdang, Kramatwatu, Serang', 'Tanah', '2998', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (80, 16, 'Tanah Kosong Lampung', 0, 0, 'Jl. Antasari, Bandar Lampung', 'Tanah', '6767', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (81, 19, 'Tanah Kosong Yos Sudarso Medan', 0, 0, 'Jl. Yos Sudarso, Glugur, Medan', 'Tanah', '713', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (82, 19, 'Tanah Kosong Glugur Medan', 0, 0, 'Jl. Yos Sudarso Lorong XII, Glugur, Medan (Halaman)', 'Tanah', '24473', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (83, 19, 'Tanah Kosong Glugur Medan 2', 0, 0, 'Jl.Yos Sudarso Lorong XV, Glugur', 'Tanah', '2233', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (84, 23, 'Tanah Kosong Pekanbaru', 0, 0, 'Jl. T. Tambusai, Labuhan Baru Barat, P Sekaki, Pekanbaru', 'Tanah', '4126', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (85, 28, 'Tanah Kosong Probolinggo', 0, 0, 'Desa Pesisir, Sumberasih, Probolinggo', 'Tanah', '150', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `aset` VALUES (86, 24, 'Tanah Kosong Sidoarjo', 0, 0, 'Desa Trompoasri, Sidoarjo', 'Tanah', '2310', NULL, NULL, NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------
INSERT INTO `cms_apicustom` VALUES (10, 'complain_halomas', 'complain_halomas', 'save_add', NULL, NULL, NULL, NULL, 'complain_halomas', NULL, NULL, NULL, NULL, 'post', 'a:9:{i:0;a:5:{s:4:\"name\";s:11:\"complain_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:13:\"complain_date\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:4:\"city\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:8:\"location\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:7:\"company\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:5:\"notes\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:7:\"problem\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:7;a:5:{s:4:\"name\";s:8:\"category\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:8;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"complain_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:13:\"complain_date\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:4:\"city\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"location\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:7:\"company\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:5:\"notes\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:7:\"problem\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:8:\"category\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

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
INSERT INTO `cms_apikey` VALUES (3, 'c8d23cda2264f21ff7d555c62f2e114c', 32, 'active', '2019-03-30 14:37:13', NULL);
INSERT INTO `cms_apikey` VALUES (4, '829c063c422afb317bed7b57f31a96bf', 19, 'active', '2019-03-30 18:35:55', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-02-07 04:18:26', NULL);
INSERT INTO `cms_email_templates` VALUES (2, 'Complain', 'Complain', 'Complain', '<p>Yth Bapak/Ibu</p>\r\n<p>PEMBERITAHUAN</p>\r\n<p>Complain/Request Baru telah masuk di Facility Management System.</p>\r\n<table>\r\n    <tbody><tr>\r\n        <td>No Work Order</td>\r\n        <td>:</td>\r\n        <td>[no_workorder]</td>\r\n    </tr>\r\n    <tr><td>Tanggal</td>\r\n        <td>:</td>\r\n        <td>[tanggal]</td>\r\n    </tr>\r\n    <tr><td>User</td>\r\n        <td>:</td>\r\n        <td>[user]</td>\r\n    </tr>\r\n    <tr><td>Divisi/Satker</td>\r\n        <td>:</td>\r\n        <td>[divisi]</td>\r\n    </tr>\r\n    <tr><td>No Telepon</td>\r\n        <td>:</td>\r\n        <td>[no_telp]</td>\r\n    </tr>\r\n    <tr><td>Jenis/Kategori</td>\r\n        <td>:</td>\r\n        <td>[kategori]</td>\r\n    </tr>\r\n    <tr><td>Informasi</td>\r\n        <td>:</td>\r\n        <td>[informasi]</td>\r\n    </tr>\r\n</tbody></table>\r\n<p>Mohon agar dapat ditindaklanjuti dengan unit terkait</p>\r\n\r\n<p>\r\n        Catatan :\r\n\r\n        Email ini dikirim secara otomatis by system \r\n        \r\n        <strong>Mohon untuk tidak mereply</strong>\r\n        \r\n</p>', 'Complain', 'Facility Management System', 'fms.pgnmas@gmail.com', 'dsc.pgnmas@gmail.com', '2019-05-06 03:17:20', '2019-05-10 00:49:39');
INSERT INTO `cms_email_templates` VALUES (3, 'ComplainDone', 'ComplainDone', 'Complain Done', '<p>Yth Bapak/Ibu,&nbsp;</p>\r\n<p>Facility Management System telah menerima hasil penyelesaian complain/request sebagai berikut,\r\n</p><div>\r\n        <table>\r\n                <tbody><tr>\r\n                    <td>NO TICKET HALOMAS</td>\r\n                    <td>:</td>\r\n                    <td>[no_halomas]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>NO WORK ORDER</td>\r\n                    <td>:</td>\r\n                    <td>[no_workorder]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>LOKASI</td>\r\n                    <td>:</td>\r\n                    <td>[lokasi]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>JENIS/KATEGORI</td>\r\n                    <td>:</td>\r\n                    <td>[kategori]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>KELUHAN CUSTOMER</td>\r\n                    <td>:</td>\r\n                    <td>[uraian_complain]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>CATATAN PENGELOLA</td>\r\n                    <td>:</td>\r\n                    <td>[catatan]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>STATUS</td>\r\n                    <td>:</td>\r\n                    <td>[status]</td>\r\n                </tr>\r\n            </tbody></table>\r\n</div>   \r\n   \r\n    <p>Klik tautan berikut LINK</p>\r\n    \r\n    Mohon agar dilakukan pengecekan kembali\r\n    Catatan : Email ini dikirim secara otomatis by system &gt;Mohon untuk tidak mereply', 'Complain Done', 'Facility Management System', 'fms.pgnmas@gmail.com', 'dsc.pgnmas@gmail.com', '2019-05-09 06:00:13', '2019-05-09 06:06:46');
INSERT INTO `cms_email_templates` VALUES (4, 'PenilaianSla', 'LaporanSLA', 'Laporan Penilaian SLA', '<p>Yth Bpk/Ibu,</p>\r\n<p>[nama_sa]</p> \r\n<p>[jabatan]</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode [bulan] [tahun] sebagai berikut :</p>\r\n\r\n<p> LOKASI : <b>[lokasi]</b><br></p>\r\n<p> PELAKSANAAN 	: [pelaksanaan]</p>\r\n<p> PENCAPAIAN : [pencapaian]</p>\r\n\r\n<p> Klik tautan berikut <a href=\"[link]\" target=\"_blank\">link</a><br></p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p>', 'Penilaian SLA', 'Facility Management System', 'donotreply@pgnmas.co.id', 'dsc.pgnmas@gmail.com', '2019-05-15 14:45:19', '2019-05-24 10:10:44');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
INSERT INTO `cms_logs` VALUES (429, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabekasi@fms.com login with IP Address 127.0.0.1', '', 9, '2019-04-13 11:09:26', NULL);
INSERT INTO `cms_logs` VALUES (430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreabogor@fms.com login with IP Address 127.0.0.1', '', 10, '2019-04-13 15:23:48', NULL);
INSERT INTO `cms_logs` VALUES (431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreabogor@fms.com logout', '', 10, '2019-04-13 15:34:35', NULL);
INSERT INTO `cms_logs` VALUES (432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-13 15:36:01', NULL);
INSERT INTO `cms_logs` VALUES (433, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-13 16:24:35', NULL);
INSERT INTO `cms_logs` VALUES (434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-13 16:24:44', NULL);
INSERT INTO `cms_logs` VALUES (435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-13 16:57:09', NULL);
INSERT INTO `cms_logs` VALUES (436, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-04-13 16:57:18', NULL);
INSERT INTO `cms_logs` VALUES (437, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-04-13 17:03:08', NULL);
INSERT INTO `cms_logs` VALUES (438, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-04-14 12:07:14', NULL);
INSERT INTO `cms_logs` VALUES (439, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai', 'Try view the data :name at Master Penilaian', '', 6, '2019-04-14 12:08:01', NULL);
INSERT INTO `cms_logs` VALUES (440, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-04-14 12:08:16', NULL);
INSERT INTO `cms_logs` VALUES (441, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-14 12:08:23', NULL);
INSERT INTO `cms_logs` VALUES (442, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-14 12:09:21', NULL);
INSERT INTO `cms_logs` VALUES (443, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-04-14 12:09:49', NULL);
INSERT INTO `cms_logs` VALUES (444, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 6, '2019-04-14 14:47:23', NULL);
INSERT INTO `cms_logs` VALUES (445, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/edit-save/58', 'Update data  at Master Penilaian', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Baru</td><td></td></tr></tbody></table>', 6, '2019-04-14 14:49:14', NULL);
INSERT INTO `cms_logs` VALUES (446, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-04-15 14:10:50', NULL);
INSERT INTO `cms_logs` VALUES (447, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-04-15 17:02:32', NULL);
INSERT INTO `cms_logs` VALUES (448, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'salesareaketapang@fms.com login with IP Address 127.0.0.1', '', 57, '2019-04-15 17:02:44', NULL);
INSERT INTO `cms_logs` VALUES (449, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai', 'Try view the data :name at Master Penilaian', '', 57, '2019-04-15 17:03:01', NULL);
INSERT INTO `cms_logs` VALUES (450, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai', 'Try view the data :name at Master Penilaian', '', 57, '2019-04-15 17:03:12', NULL);
INSERT INTO `cms_logs` VALUES (451, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'salesareaketapang@fms.com logout', '', 57, '2019-04-15 17:03:24', NULL);
INSERT INTO `cms_logs` VALUES (452, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-15 17:03:32', NULL);
INSERT INTO `cms_logs` VALUES (453, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-15 17:04:02', NULL);
INSERT INTO `cms_logs` VALUES (454, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'salesareaketapang@fms.com login with IP Address 127.0.0.1', '', 57, '2019-04-15 17:04:14', NULL);
INSERT INTO `cms_logs` VALUES (455, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-18 07:15:59', NULL);
INSERT INTO `cms_logs` VALUES (456, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/8', 'Update data Complain at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminComplainControllerGetIndex</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr></tbody></table>', 1, '2019-04-18 07:20:19', NULL);
INSERT INTO `cms_logs` VALUES (457, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/9', 'Update data Request at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>path</td><td>#</td><td>AdminRequestControllerGetIndex</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-18 07:45:17', NULL);
INSERT INTO `cms_logs` VALUES (458, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-19 07:16:34', NULL);
INSERT INTO `cms_logs` VALUES (459, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', ' logout', '', NULL, '2019-04-19 22:26:33', NULL);
INSERT INTO `cms_logs` VALUES (460, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-04-19 22:26:42', NULL);
INSERT INTO `cms_logs` VALUES (461, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-04-19 22:27:20', NULL);
INSERT INTO `cms_logs` VALUES (462, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-04-19 22:28:40', NULL);
INSERT INTO `cms_logs` VALUES (463, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-04-19 22:28:55', NULL);
INSERT INTO `cms_logs` VALUES (464, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-04-19 22:29:02', NULL);
INSERT INTO `cms_logs` VALUES (465, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-04-20 08:24:35', NULL);
INSERT INTO `cms_logs` VALUES (466, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-04-20 21:19:32', NULL);
INSERT INTO `cms_logs` VALUES (467, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-04-21 11:08:06', NULL);
INSERT INTO `cms_logs` VALUES (468, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-04-21 13:39:29', NULL);
INSERT INTO `cms_logs` VALUES (469, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-04-21 14:21:25', NULL);
INSERT INTO `cms_logs` VALUES (470, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-21 14:21:30', NULL);
INSERT INTO `cms_logs` VALUES (471, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/statistic_builder/add-save', 'Add New Data test at Statistic Builder', '', 1, '2019-04-21 14:21:44', NULL);
INSERT INTO `cms_logs` VALUES (472, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-04-21 22:04:58', NULL);
INSERT INTO `cms_logs` VALUES (473, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-04-22 09:36:04', NULL);
INSERT INTO `cms_logs` VALUES (474, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-04-22 10:41:20', NULL);
INSERT INTO `cms_logs` VALUES (475, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-22 10:41:26', NULL);
INSERT INTO `cms_logs` VALUES (476, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/3', 'Update data Master Aset at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-04-22 10:42:05', NULL);
INSERT INTO `cms_logs` VALUES (477, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-22 10:42:12', NULL);
INSERT INTO `cms_logs` VALUES (478, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-22 10:42:22', NULL);
INSERT INTO `cms_logs` VALUES (479, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwil2@fms.com login with IP Address 127.0.0.1', '', 7, '2019-04-23 01:33:02', NULL);
INSERT INTO `cms_logs` VALUES (480, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/aset/edit-save/18', 'Update data Kantor PGN Bekasi at Master Aset', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>provinsi_id</td><td>32</td><td></td></tr><tr><td>kota_id</td><td>3275</td><td></td></tr><tr><td>telp</td><td></td><td></td></tr><tr><td>pln_id</td><td></td><td>-</td></tr><tr><td>pam_id</td><td></td><td>-</td></tr></tbody></table>', 7, '2019-04-23 02:46:22', NULL);
INSERT INTO `cms_logs` VALUES (481, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwil2@fms.com logout', '', 7, '2019-04-23 02:46:34', NULL);
INSERT INTO `cms_logs` VALUES (482, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 2, '2019-04-23 02:46:48', NULL);
INSERT INTO `cms_logs` VALUES (483, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 2, '2019-04-23 02:46:59', NULL);
INSERT INTO `cms_logs` VALUES (484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-04-23 03:21:09', NULL);
INSERT INTO `cms_logs` VALUES (485, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-04-23 03:21:25', NULL);
INSERT INTO `cms_logs` VALUES (486, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-23 03:21:33', NULL);
INSERT INTO `cms_logs` VALUES (487, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/7', 'Update data Rutin  Non Rutin Terencana at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-23 03:22:04', NULL);
INSERT INTO `cms_logs` VALUES (488, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/8', 'Update data Complain at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>7</td><td></td></tr></tbody></table>', 1, '2019-04-23 03:22:22', NULL);
INSERT INTO `cms_logs` VALUES (489, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/9', 'Update data Request at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-23 03:22:48', NULL);
INSERT INTO `cms_logs` VALUES (490, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-23 03:24:31', NULL);
INSERT INTO `cms_logs` VALUES (491, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-23 03:24:43', NULL);
INSERT INTO `cms_logs` VALUES (492, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tr@fms.com login with IP Address 127.0.0.1', '', 5, '2019-04-23 03:47:00', NULL);
INSERT INTO `cms_logs` VALUES (493, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tr@fms.com logout', '', 5, '2019-04-23 03:47:28', NULL);
INSERT INTO `cms_logs` VALUES (494, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-23 03:48:24', NULL);
INSERT INTO `cms_logs` VALUES (495, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/7', 'Update data Rutin  Non Rutin Terencana at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-23 03:48:50', NULL);
INSERT INTO `cms_logs` VALUES (496, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/8', 'Update data Complain at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>7</td><td></td></tr></tbody></table>', 1, '2019-04-23 03:49:03', NULL);
INSERT INTO `cms_logs` VALUES (497, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/9', 'Update data Request at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-04-23 03:49:15', NULL);
INSERT INTO `cms_logs` VALUES (498, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-23 03:49:40', NULL);
INSERT INTO `cms_logs` VALUES (499, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tr@fms.com login with IP Address 127.0.0.1', '', 5, '2019-04-23 03:50:49', NULL);
INSERT INTO `cms_logs` VALUES (500, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tr@fms.com logout', '', 5, '2019-04-23 03:51:17', NULL);
INSERT INTO `cms_logs` VALUES (501, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tr@fms.com login with IP Address 127.0.0.1', '', 5, '2019-04-23 03:54:12', NULL);
INSERT INTO `cms_logs` VALUES (502, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tr@fms.com logout', '', 5, '2019-04-23 03:54:20', NULL);
INSERT INTO `cms_logs` VALUES (503, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-23 03:54:28', NULL);
INSERT INTO `cms_logs` VALUES (504, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/5', 'Update data Rutin Terencana at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-04-23 03:54:51', NULL);
INSERT INTO `cms_logs` VALUES (505, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-23 03:55:01', NULL);
INSERT INTO `cms_logs` VALUES (506, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tr@fms.com login with IP Address 127.0.0.1', '', 5, '2019-04-23 03:55:07', NULL);
INSERT INTO `cms_logs` VALUES (507, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-23 03:55:38', NULL);
INSERT INTO `cms_logs` VALUES (508, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/4', 'Update data Work Order at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-04-23 03:56:09', NULL);
INSERT INTO `cms_logs` VALUES (509, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tr@fms.com login with IP Address 127.0.0.1', '', 5, '2019-04-24 07:16:56', NULL);
INSERT INTO `cms_logs` VALUES (510, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/complain/add-save', 'Add New Data test at Complain', '', 5, '2019-04-24 07:56:03', NULL);
INSERT INTO `cms_logs` VALUES (511, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/complain/add-save', 'Add New Data test at Complain', '', 5, '2019-04-24 08:00:37', NULL);
INSERT INTO `cms_logs` VALUES (512, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/complain/delete/9', 'Delete data test at Complain', '', 5, '2019-04-24 08:01:20', NULL);
INSERT INTO `cms_logs` VALUES (513, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/complain/delete/10', 'Delete data test at Complain', '', 5, '2019-04-24 08:01:24', NULL);
INSERT INTO `cms_logs` VALUES (514, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/complain/add-save', 'Add New Data test at Complain', '', 5, '2019-04-24 08:01:41', NULL);
INSERT INTO `cms_logs` VALUES (515, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tr@fms.com logout', '', 5, '2019-04-24 08:27:24', NULL);
INSERT INTO `cms_logs` VALUES (516, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-24 08:28:19', NULL);
INSERT INTO `cms_logs` VALUES (517, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-04-24 08:28:55', NULL);
INSERT INTO `cms_logs` VALUES (518, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-24 08:29:09', NULL);
INSERT INTO `cms_logs` VALUES (519, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-24 16:09:42', NULL);
INSERT INTO `cms_logs` VALUES (520, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-25 00:51:14', NULL);
INSERT INTO `cms_logs` VALUES (521, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-25 01:07:35', NULL);
INSERT INTO `cms_logs` VALUES (522, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-04-25 01:07:45', NULL);
INSERT INTO `cms_logs` VALUES (523, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 6, '2019-04-25 02:43:24', NULL);
INSERT INTO `cms_logs` VALUES (524, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-04-25 02:48:24', NULL);
INSERT INTO `cms_logs` VALUES (525, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-25 02:48:32', NULL);
INSERT INTO `cms_logs` VALUES (526, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-04-25 02:48:48', NULL);
INSERT INTO `cms_logs` VALUES (527, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-04-25 02:48:55', NULL);
INSERT INTO `cms_logs` VALUES (528, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-04-25 02:50:26', NULL);
INSERT INTO `cms_logs` VALUES (529, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-25 02:50:39', NULL);
INSERT INTO `cms_logs` VALUES (530, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-29 02:30:17', NULL);
INSERT INTO `cms_logs` VALUES (531, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-04-29 03:33:05', NULL);
INSERT INTO `cms_logs` VALUES (532, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-29 03:33:10', NULL);
INSERT INTO `cms_logs` VALUES (533, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/module_generator/delete/34', 'Delete data Tindaklanjut KoorWill at Module Generator', '', 1, '2019-04-29 04:04:08', NULL);
INSERT INTO `cms_logs` VALUES (534, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/module_generator/delete/35', 'Delete data Tindaklanjut Complain at Module Generator', '', 1, '2019-04-29 06:21:37', NULL);
INSERT INTO `cms_logs` VALUES (535, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/module_generator/delete/37', 'Delete data test at Module Generator', '', 1, '2019-04-29 06:40:03', NULL);
INSERT INTO `cms_logs` VALUES (536, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-30 00:51:29', NULL);
INSERT INTO `cms_logs` VALUES (537, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-30 01:07:31', NULL);
INSERT INTO `cms_logs` VALUES (538, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-30 01:07:38', NULL);
INSERT INTO `cms_logs` VALUES (539, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-30 05:52:43', NULL);
INSERT INTO `cms_logs` VALUES (540, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-04-30 06:28:52', NULL);
INSERT INTO `cms_logs` VALUES (541, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-30 06:29:00', NULL);
INSERT INTO `cms_logs` VALUES (542, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data HaloMas at Users Management', '', 1, '2019-04-30 06:32:17', NULL);
INSERT INTO `cms_logs` VALUES (543, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-30 06:43:43', NULL);
INSERT INTO `cms_logs` VALUES (544, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-30 06:43:54', NULL);
INSERT INTO `cms_logs` VALUES (545, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/tindaklanjut_complain', 'Try view the data :name at Tindaklanjut Complain', '', 35, '2019-04-30 06:44:14', NULL);
INSERT INTO `cms_logs` VALUES (546, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-04-30 06:44:35', NULL);
INSERT INTO `cms_logs` VALUES (547, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-04-30 06:44:40', NULL);
INSERT INTO `cms_logs` VALUES (548, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-04-30 06:45:12', NULL);
INSERT INTO `cms_logs` VALUES (549, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-30 06:45:25', NULL);
INSERT INTO `cms_logs` VALUES (550, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-30 08:33:48', NULL);
INSERT INTO `cms_logs` VALUES (551, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-30 08:42:50', NULL);
INSERT INTO `cms_logs` VALUES (552, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-04-30 09:11:32', NULL);
INSERT INTO `cms_logs` VALUES (553, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-04-30 09:11:41', NULL);
INSERT INTO `cms_logs` VALUES (554, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-04-30 09:12:44', NULL);
INSERT INTO `cms_logs` VALUES (555, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-04-30 09:12:55', NULL);
INSERT INTO `cms_logs` VALUES (556, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-04-30 09:13:21', NULL);
INSERT INTO `cms_logs` VALUES (557, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-04-30 09:20:06', NULL);
INSERT INTO `cms_logs` VALUES (558, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-04-30 09:22:05', NULL);
INSERT INTO `cms_logs` VALUES (559, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 6, '2019-04-30 09:23:04', NULL);
INSERT INTO `cms_logs` VALUES (560, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-04-30 09:58:01', NULL);
INSERT INTO `cms_logs` VALUES (561, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-04-30 09:58:11', NULL);
INSERT INTO `cms_logs` VALUES (562, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-05-01 07:11:35', NULL);
INSERT INTO `cms_logs` VALUES (563, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-01 07:12:17', NULL);
INSERT INTO `cms_logs` VALUES (564, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/add-save', 'Add New Data  at Detail SLA', '', 3, '2019-05-01 07:12:45', NULL);
INSERT INTO `cms_logs` VALUES (565, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/add-save', 'Add New Data  at Detail SLA', '', 3, '2019-05-01 07:13:02', NULL);
INSERT INTO `cms_logs` VALUES (566, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-05-01 07:13:13', NULL);
INSERT INTO `cms_logs` VALUES (567, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-05-01 07:13:27', NULL);
INSERT INTO `cms_logs` VALUES (568, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-05-01 07:14:22', NULL);
INSERT INTO `cms_logs` VALUES (569, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-01 07:14:31', NULL);
INSERT INTO `cms_logs` VALUES (570, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-01 07:23:35', NULL);
INSERT INTO `cms_logs` VALUES (571, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-05-01 07:23:45', NULL);
INSERT INTO `cms_logs` VALUES (572, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-01 07:24:21', NULL);
INSERT INTO `cms_logs` VALUES (573, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-01 07:24:32', NULL);
INSERT INTO `cms_logs` VALUES (574, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/add-save', 'Add New Data  at Detail SLA', '', 3, '2019-05-01 07:24:57', NULL);
INSERT INTO `cms_logs` VALUES (575, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/add-save', 'Add New Data  at Detail SLA', '', 3, '2019-05-01 07:25:07', NULL);
INSERT INTO `cms_logs` VALUES (576, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/add-save', 'Add New Data  at Detail SLA', '', 3, '2019-05-01 07:25:16', NULL);
INSERT INTO `cms_logs` VALUES (577, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dsla/add-save', 'Add New Data  at Detail SLA', '', 3, '2019-05-01 07:25:28', NULL);
INSERT INTO `cms_logs` VALUES (578, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-05-01 07:25:35', NULL);
INSERT INTO `cms_logs` VALUES (579, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-05-01 07:25:42', NULL);
INSERT INTO `cms_logs` VALUES (580, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-05-01 07:28:25', NULL);
INSERT INTO `cms_logs` VALUES (581, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-01 08:06:35', NULL);
INSERT INTO `cms_logs` VALUES (582, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-01 08:14:06', NULL);
INSERT INTO `cms_logs` VALUES (583, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-01 08:14:14', NULL);
INSERT INTO `cms_logs` VALUES (584, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 08:23:43', NULL);
INSERT INTO `cms_logs` VALUES (585, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 08:25:16', NULL);
INSERT INTO `cms_logs` VALUES (586, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 09:33:59', NULL);
INSERT INTO `cms_logs` VALUES (587, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 09:40:09', NULL);
INSERT INTO `cms_logs` VALUES (588, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 09:40:42', NULL);
INSERT INTO `cms_logs` VALUES (589, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 09:43:23', NULL);
INSERT INTO `cms_logs` VALUES (590, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 09:47:42', NULL);
INSERT INTO `cms_logs` VALUES (591, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 09:50:00', NULL);
INSERT INTO `cms_logs` VALUES (592, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-05-01 12:58:41', NULL);
INSERT INTO `cms_logs` VALUES (593, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-01 13:22:31', NULL);
INSERT INTO `cms_logs` VALUES (594, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-01 13:48:49', NULL);
INSERT INTO `cms_logs` VALUES (595, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-01 13:49:14', NULL);
INSERT INTO `cms_logs` VALUES (596, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 13:49:41', NULL);
INSERT INTO `cms_logs` VALUES (597, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 13:52:17', NULL);
INSERT INTO `cms_logs` VALUES (598, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 13:54:50', NULL);
INSERT INTO `cms_logs` VALUES (599, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 13:55:44', NULL);
INSERT INTO `cms_logs` VALUES (600, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 13:56:23', NULL);
INSERT INTO `cms_logs` VALUES (601, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 13:57:06', NULL);
INSERT INTO `cms_logs` VALUES (602, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 14:04:32', NULL);
INSERT INTO `cms_logs` VALUES (603, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 14:05:21', NULL);
INSERT INTO `cms_logs` VALUES (604, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan', 'Try view the data :name at Sub Detail Pekerjaan', '', 37, '2019-05-01 14:17:28', NULL);
INSERT INTO `cms_logs` VALUES (605, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-01 14:18:06', NULL);
INSERT INTO `cms_logs` VALUES (606, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-05-01 14:25:27', NULL);
INSERT INTO `cms_logs` VALUES (607, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-01 14:25:36', NULL);
INSERT INTO `cms_logs` VALUES (608, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 14:57:55', NULL);
INSERT INTO `cms_logs` VALUES (609, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 15:02:39', NULL);
INSERT INTO `cms_logs` VALUES (610, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-01 15:04:02', NULL);
INSERT INTO `cms_logs` VALUES (611, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-02 00:06:00', NULL);
INSERT INTO `cms_logs` VALUES (612, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/2', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>warna</td><td></td><td>#0080ff</td></tr></tbody></table>', 1, '2019-05-02 00:08:43', NULL);
INSERT INTO `cms_logs` VALUES (613, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 00:19:59', NULL);
INSERT INTO `cms_logs` VALUES (614, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/1', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-05-02 00:20:23', NULL);
INSERT INTO `cms_logs` VALUES (615, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 00:21:18', NULL);
INSERT INTO `cms_logs` VALUES (616, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 01:47:35', NULL);
INSERT INTO `cms_logs` VALUES (617, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/delete/5', 'Delete data 5 at Frekuensi', '', 1, '2019-05-02 01:48:30', NULL);
INSERT INTO `cms_logs` VALUES (618, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 01:49:28', NULL);
INSERT INTO `cms_logs` VALUES (619, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 01:51:37', NULL);
INSERT INTO `cms_logs` VALUES (620, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>0</td><td></td></tr><tr><td>B2</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>0</td><td></td></tr><tr><td>B8</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 03:56:00', NULL);
INSERT INTO `cms_logs` VALUES (621, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:01:19', NULL);
INSERT INTO `cms_logs` VALUES (622, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>0</td><td>1</td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:03:10', NULL);
INSERT INTO `cms_logs` VALUES (623, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:03:17', NULL);
INSERT INTO `cms_logs` VALUES (624, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:03:39', NULL);
INSERT INTO `cms_logs` VALUES (625, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:04:00', NULL);
INSERT INTO `cms_logs` VALUES (626, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:07:14', NULL);
INSERT INTO `cms_logs` VALUES (627, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:07:39', NULL);
INSERT INTO `cms_logs` VALUES (628, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:08:04', NULL);
INSERT INTO `cms_logs` VALUES (629, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:10:27', NULL);
INSERT INTO `cms_logs` VALUES (630, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:11:26', NULL);
INSERT INTO `cms_logs` VALUES (631, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:14:56', NULL);
INSERT INTO `cms_logs` VALUES (632, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:15:29', NULL);
INSERT INTO `cms_logs` VALUES (633, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:16:56', NULL);
INSERT INTO `cms_logs` VALUES (634, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td></td></tr><tr><td>H2</td><td>0</td><td></td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:17:16', NULL);
INSERT INTO `cms_logs` VALUES (635, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H2</td><td>0</td><td>1</td></tr><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:17:37', NULL);
INSERT INTO `cms_logs` VALUES (636, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H3</td><td>0</td><td></td></tr><tr><td>H4</td><td>0</td><td></td></tr><tr><td>H5</td><td>0</td><td></td></tr><tr><td>H6</td><td>0</td><td></td></tr><tr><td>H7</td><td>0</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:17:44', NULL);
INSERT INTO `cms_logs` VALUES (637, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-05-02 04:19:31', NULL);
INSERT INTO `cms_logs` VALUES (638, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td>0</td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:19:39', NULL);
INSERT INTO `cms_logs` VALUES (639, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-05-02 04:19:48', NULL);
INSERT INTO `cms_logs` VALUES (640, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>1</td><td>0</td></tr><tr><td>H2</td><td>1</td><td>0</td></tr><tr><td>H3</td><td>1</td><td>0</td></tr><tr><td>M1</td><td>1</td><td></td></tr><tr><td>M2</td><td>1</td><td></td></tr><tr><td>B1</td><td>1</td><td></td></tr><tr><td>B2</td><td>1</td><td></td></tr><tr><td>B7</td><td>1</td><td></td></tr><tr><td>B8</td><td>1</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:19:57', NULL);
INSERT INTO `cms_logs` VALUES (641, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H1</td><td>0</td><td>1</td></tr><tr><td>H2</td><td>0</td><td>1</td></tr><tr><td>H3</td><td>0</td><td>1</td></tr><tr><td>H4</td><td>0</td><td>1</td></tr><tr><td>H5</td><td>0</td><td>1</td></tr><tr><td>H6</td><td>0</td><td>1</td></tr><tr><td>H7</td><td>0</td><td>1</td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:20:53', NULL);
INSERT INTO `cms_logs` VALUES (642, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:21:07', NULL);
INSERT INTO `cms_logs` VALUES (643, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:21:18', NULL);
INSERT INTO `cms_logs` VALUES (644, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:21:58', NULL);
INSERT INTO `cms_logs` VALUES (645, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:23:19', NULL);
INSERT INTO `cms_logs` VALUES (646, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:23:31', NULL);
INSERT INTO `cms_logs` VALUES (647, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:24:36', NULL);
INSERT INTO `cms_logs` VALUES (648, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/7', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:24:59', NULL);
INSERT INTO `cms_logs` VALUES (649, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 04:25:28', NULL);
INSERT INTO `cms_logs` VALUES (650, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/1000', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-05-02 04:25:37', NULL);
INSERT INTO `cms_logs` VALUES (651, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/1000', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-05-02 04:25:47', NULL);
INSERT INTO `cms_logs` VALUES (652, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/1000', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>H4</td><td>0</td><td>1</td></tr><tr><td>M1</td><td>0</td><td></td></tr><tr><td>M2</td><td>0</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>0</td><td></td></tr><tr><td>B2</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>0</td><td></td></tr><tr><td>B8</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:38:22', NULL);
INSERT INTO `cms_logs` VALUES (653, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/1000', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>M1</td><td>0</td><td></td></tr><tr><td>M2</td><td>0</td><td></td></tr><tr><td>M3</td><td>0</td><td></td></tr><tr><td>M4</td><td>0</td><td></td></tr><tr><td>B1</td><td>0</td><td></td></tr><tr><td>B2</td><td>0</td><td></td></tr><tr><td>B3</td><td>0</td><td></td></tr><tr><td>B4</td><td>0</td><td></td></tr><tr><td>B5</td><td>0</td><td></td></tr><tr><td>B6</td><td>0</td><td></td></tr><tr><td>B7</td><td>0</td><td></td></tr><tr><td>B8</td><td>0</td><td></td></tr><tr><td>B9</td><td>0</td><td></td></tr><tr><td>B10</td><td>0</td><td></td></tr><tr><td>B11</td><td>0</td><td></td></tr><tr><td>B12</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-05-02 04:42:27', NULL);
INSERT INTO `cms_logs` VALUES (654, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/1000', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-05-02 04:44:57', NULL);
INSERT INTO `cms_logs` VALUES (655, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/1000', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-05-02 04:47:08', NULL);
INSERT INTO `cms_logs` VALUES (656, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/edit-save/1000', 'Update data  at Frekuensi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>M2</td><td>0</td><td>1</td></tr><tr><td>M3</td><td>0</td><td>1</td></tr><tr><td>M4</td><td>0</td><td>1</td></tr><tr><td>B2</td><td>0</td><td>1</td></tr><tr><td>B3</td><td>0</td><td>1</td></tr><tr><td>B4</td><td>0</td><td>1</td></tr><tr><td>B5</td><td>0</td><td>1</td></tr><tr><td>B6</td><td>0</td><td>1</td></tr><tr><td>B8</td><td>0</td><td>1</td></tr><tr><td>B9</td><td>0</td><td>1</td></tr><tr><td>B10</td><td>0</td><td>1</td></tr><tr><td>B11</td><td>0</td><td>1</td></tr><tr><td>B12</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2019-05-02 04:47:26', NULL);
INSERT INTO `cms_logs` VALUES (657, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/delete/1000', 'Delete data 1000 at Frekuensi', '', 1, '2019-05-02 05:40:20', NULL);
INSERT INTO `cms_logs` VALUES (658, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 05:41:19', NULL);
INSERT INTO `cms_logs` VALUES (659, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 05:42:17', NULL);
INSERT INTO `cms_logs` VALUES (660, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 05:43:04', NULL);
INSERT INTO `cms_logs` VALUES (661, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-02 06:21:27', NULL);
INSERT INTO `cms_logs` VALUES (662, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-02 06:21:49', NULL);
INSERT INTO `cms_logs` VALUES (663, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-02 06:22:02', NULL);
INSERT INTO `cms_logs` VALUES (664, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Jadwal Pekerjaan at Menu Management', '', 1, '2019-05-02 06:40:01', NULL);
INSERT INTO `cms_logs` VALUES (665, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-02 06:40:25', NULL);
INSERT INTO `cms_logs` VALUES (666, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-02 06:40:32', NULL);
INSERT INTO `cms_logs` VALUES (667, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/add-save', 'Add New Data  at Master Jadwal SLA', '', 6, '2019-05-02 07:53:11', NULL);
INSERT INTO `cms_logs` VALUES (668, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/edit-save/1', 'Update data  at Master Jadwal SLA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sla_id</td><td>11</td><td>12</td></tr><tr><td>detail_sla_id</td><td>103</td><td>105</td></tr><tr><td>create_at</td><td></td><td></td></tr></tbody></table>', 6, '2019-05-02 08:16:29', NULL);
INSERT INTO `cms_logs` VALUES (669, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-03 00:49:17', NULL);
INSERT INTO `cms_logs` VALUES (670, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/add-save', 'Add New Data  at Master Jadwal SLA', '', 6, '2019-05-03 00:49:55', NULL);
INSERT INTO `cms_logs` VALUES (671, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/edit-save/1', 'Update data  at Master Jadwal SLA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sla_id</td><td>12</td><td>11</td></tr><tr><td>detail_sla_id</td><td>105</td><td>103</td></tr><tr><td>create_at</td><td>2019-05-02 15:16:29</td><td></td></tr></tbody></table>', 6, '2019-05-03 00:50:10', NULL);
INSERT INTO `cms_logs` VALUES (672, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-03 00:51:15', NULL);
INSERT INTO `cms_logs` VALUES (673, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-03 00:51:24', NULL);
INSERT INTO `cms_logs` VALUES (674, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 00:54:42', NULL);
INSERT INTO `cms_logs` VALUES (675, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:04:21', NULL);
INSERT INTO `cms_logs` VALUES (676, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:33:13', NULL);
INSERT INTO `cms_logs` VALUES (677, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:39:13', NULL);
INSERT INTO `cms_logs` VALUES (678, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:39:32', NULL);
INSERT INTO `cms_logs` VALUES (679, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:43:11', NULL);
INSERT INTO `cms_logs` VALUES (680, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:43:55', NULL);
INSERT INTO `cms_logs` VALUES (681, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:45:26', NULL);
INSERT INTO `cms_logs` VALUES (682, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:47:54', NULL);
INSERT INTO `cms_logs` VALUES (683, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:48:24', NULL);
INSERT INTO `cms_logs` VALUES (684, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 01:49:00', NULL);
INSERT INTO `cms_logs` VALUES (685, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 02:02:35', NULL);
INSERT INTO `cms_logs` VALUES (686, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 02:03:22', NULL);
INSERT INTO `cms_logs` VALUES (687, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 02:05:30', NULL);
INSERT INTO `cms_logs` VALUES (688, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 02:07:35', NULL);
INSERT INTO `cms_logs` VALUES (689, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 37, '2019-05-03 02:09:23', NULL);
INSERT INTO `cms_logs` VALUES (690, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-05-06 02:26:00', NULL);
INSERT INTO `cms_logs` VALUES (691, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-05-06 03:14:50', NULL);
INSERT INTO `cms_logs` VALUES (692, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-06 03:14:56', NULL);
INSERT INTO `cms_logs` VALUES (693, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/email_templates/add-save', 'Add New Data Complain at Email Templates', '', 1, '2019-05-06 03:17:20', NULL);
INSERT INTO `cms_logs` VALUES (694, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-05-06 03:46:36', NULL);
INSERT INTO `cms_logs` VALUES (695, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-05-06 03:47:44', NULL);
INSERT INTO `cms_logs` VALUES (696, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-06 03:47:51', NULL);
INSERT INTO `cms_logs` VALUES (697, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-06 04:15:05', NULL);
INSERT INTO `cms_logs` VALUES (698, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-05-06 04:15:23', NULL);
INSERT INTO `cms_logs` VALUES (699, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'korwilI@fms.com logout', '', 35, '2019-05-06 04:22:18', NULL);
INSERT INTO `cms_logs` VALUES (700, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-06 04:22:23', NULL);
INSERT INTO `cms_logs` VALUES (701, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/2', 'Update data Complain at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Hi.</p><p><br></p><p>Anda Mendapatkan Complain Baru</p></td><td><p>Hi. [name]</p><p><br></p><p>Anda Mendapatkan Complain Baru</p></td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-06 04:22:49', NULL);
INSERT INTO `cms_logs` VALUES (702, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-06 04:30:54', NULL);
INSERT INTO `cms_logs` VALUES (703, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'korwilI@fms.com login with IP Address 127.0.0.1', '', 35, '2019-05-06 04:31:02', NULL);
INSERT INTO `cms_logs` VALUES (704, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-06 05:48:29', NULL);
INSERT INTO `cms_logs` VALUES (705, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/2', 'Update data Complain at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Hi. [name]</p><p><br></p><p>Anda Mendapatkan Complain Baru</p></td><td><p>Yth Bapak/Ibu, <br><br>Facility Management System telah menerima complain/request baru untuk melihat detail sebagai berikut,<br><br>NO WORK ORDER &nbsp;&nbsp; &nbsp;:<br>LOKASI&nbsp;&nbsp; &nbsp;:<br>JENIS/KATEGORI &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;<br>INFORMASI :<br><br>Klik tautan berikut LINK&nbsp;&nbsp; &nbsp;<br><br>Mohon untuk menindaklanjuti segera dan melaporkan kepada Contact Center untuk penyelesaian nya<br><br>Email ini tidak menerima reply/balasan, PT PERMATA GRAHA NUSANTARA tidak akan membaca/mereply email dari alamat ini</p></td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-06 05:49:17', NULL);
INSERT INTO `cms_logs` VALUES (706, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/2', 'Update data Complain at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Yth Bapak/Ibu, <br><br>Facility Management System telah menerima complain/request baru untuk melihat detail sebagai berikut,<br><br>NO WORK ORDER &nbsp;&nbsp; &nbsp;:<br>LOKASI&nbsp;&nbsp; &nbsp;:<br>JENIS/KATEGORI &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;<br>INFORMASI :<br><br>Klik tautan berikut LINK&nbsp;&nbsp; &nbsp;<br><br>Mohon untuk menindaklanjuti segera dan melaporkan kepada Contact Center untuk penyelesaian nya<br><br>Email ini tidak menerima reply/balasan, PT PERMATA GRAHA NUSANTARA tidak akan membaca/mereply email dari alamat ini</p></td><td><p>Yth Bapak/Ibu, <br><br>Facility Management System telah menerima complain/request baru untuk melihat detail sebagai berikut,<br><br>NO WORK ORDER &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [nomor_wo]<br>LOKASI&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp; [lokasi]<br>JENIS/KATEGORI &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;[jenis_kategori]<br>INFORMASI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [informasi]<br><br>Klik tautan berikut LINK&nbsp;&nbsp; &nbsp;<br><br>Mohon untuk menindaklanjuti segera dan melaporkan kepada Contact Center untuk penyelesaian nya<br><br>Email ini tidak menerima reply/balasan, PT PERMATA GRAHA NUSANTARA tidak akan membaca/mereply email dari alamat ini</p></td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-06 06:27:39', NULL);
INSERT INTO `cms_logs` VALUES (707, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/2', 'Update data Complain at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Yth Bapak/Ibu, <br><br>Facility Management System telah menerima complain/request baru untuk melihat detail sebagai berikut,<br><br>NO WORK ORDER &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [nomor_wo]<br>LOKASI&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp; [lokasi]<br>JENIS/KATEGORI &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;[jenis_kategori]<br>INFORMASI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [informasi]<br><br>Klik tautan berikut LINK&nbsp;&nbsp; &nbsp;<br><br>Mohon untuk menindaklanjuti segera dan melaporkan kepada Contact Center untuk penyelesaian nya<br><br>Email ini tidak menerima reply/balasan, PT PERMATA GRAHA NUSANTARA tidak akan membaca/mereply email dari alamat ini</p></td><td><p>Yth Bapak/Ibu, <br><br>Facility Management System telah menerima complain/request baru untuk melihat detail sebagai berikut,<br><br>NO WORK ORDER &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [nomor_wo]<br>LOKASI&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp; [lokasi]<br>JENIS/KATEGORI &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;[jenis_kategori]<br>INFORMASI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [informasi]<br><br>Klik tautan berikut [link] &nbsp; <br><br>Mohon untuk menindaklanjuti segera dan melaporkan kepada Contact Center untuk penyelesaian nya<br><br>Email ini tidak menerima reply/balasan, PT PERMATA GRAHA NUSANTARA tidak akan membaca/mereply email dari alamat ini</p></td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-06 06:32:32', NULL);
INSERT INTO `cms_logs` VALUES (708, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-06 06:33:33', NULL);
INSERT INTO `cms_logs` VALUES (709, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/2', 'Update data Complain at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Yth Bapak/Ibu, <br><br>Facility Management System telah menerima complain/request baru untuk melihat detail sebagai berikut,<br><br>NO WORK ORDER &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [nomor_wo]<br>LOKASI&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp; [lokasi]<br>JENIS/KATEGORI &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;[jenis_kategori]<br>INFORMASI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [informasi]<br><br>Klik tautan berikut [link] &nbsp; <br><br>Mohon untuk menindaklanjuti segera dan melaporkan kepada Contact Center untuk penyelesaian nya<br><br>Email ini tidak menerima reply/balasan, PT PERMATA GRAHA NUSANTARA tidak akan membaca/mereply email dari alamat ini</p></td><td><p>Yth Bapak/Ibu, <br><br>Facility Management System telah menerima complain/request baru untuk melihat detail sebagai berikut,<br><br>NO WORK ORDER &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [nomor_wo]<br>LOKASI&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp; [lokasi]<br>JENIS/KATEGORI &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;[jenis_kategori]<br>INFORMASI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [informasi]<br><br>Klik tautan berikut&nbsp;<a href=\"http://[link]\">link</a>&nbsp; <br><br>Mohon untuk menindaklanjuti segera dan melaporkan kepada Contact Center untuk penyelesaian nya<br><br>Email ini tidak menerima reply/balasan, PT PERMATA GRAHA NUSANTARA tidak akan membaca/mereply email dari alamat ini</p></td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-06 06:35:33', NULL);
INSERT INTO `cms_logs` VALUES (710, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-07 00:56:13', NULL);
INSERT INTO `cms_logs` VALUES (711, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/2', 'Update data Complain at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cc_email</td><td></td><td>dsc.pgnmas@gmail.com</td></tr></tbody></table>', 1, '2019-05-07 00:56:49', NULL);
INSERT INTO `cms_logs` VALUES (712, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-07 00:57:15', NULL);
INSERT INTO `cms_logs` VALUES (713, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-07 01:01:27', NULL);
INSERT INTO `cms_logs` VALUES (714, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-07 03:23:42', NULL);
INSERT INTO `cms_logs` VALUES (715, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-07 03:23:49', NULL);
INSERT INTO `cms_logs` VALUES (716, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-07 03:24:14', NULL);
INSERT INTO `cms_logs` VALUES (717, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-07 03:25:59', NULL);
INSERT INTO `cms_logs` VALUES (718, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-07 03:26:06', NULL);
INSERT INTO `cms_logs` VALUES (719, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-07 03:26:32', NULL);
INSERT INTO `cms_logs` VALUES (720, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-07 03:26:40', NULL);
INSERT INTO `cms_logs` VALUES (721, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-07 04:03:51', NULL);
INSERT INTO `cms_logs` VALUES (722, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-07 04:03:59', NULL);
INSERT INTO `cms_logs` VALUES (723, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-07 04:05:16', NULL);
INSERT INTO `cms_logs` VALUES (724, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-07 04:05:25', NULL);
INSERT INTO `cms_logs` VALUES (725, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-07 04:09:42', NULL);
INSERT INTO `cms_logs` VALUES (726, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-07 04:09:53', NULL);
INSERT INTO `cms_logs` VALUES (727, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-07 04:11:27', NULL);
INSERT INTO `cms_logs` VALUES (728, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-07 04:11:35', NULL);
INSERT INTO `cms_logs` VALUES (729, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-07 04:13:44', NULL);
INSERT INTO `cms_logs` VALUES (730, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-07 04:13:52', NULL);
INSERT INTO `cms_logs` VALUES (731, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-07 04:15:10', NULL);
INSERT INTO `cms_logs` VALUES (732, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-07 04:15:17', NULL);
INSERT INTO `cms_logs` VALUES (733, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-07 04:35:27', NULL);
INSERT INTO `cms_logs` VALUES (734, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-07 04:37:59', NULL);
INSERT INTO `cms_logs` VALUES (735, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-05-07 05:30:29', NULL);
INSERT INTO `cms_logs` VALUES (736, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-07 05:30:36', NULL);
INSERT INTO `cms_logs` VALUES (737, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-07 05:31:11', NULL);
INSERT INTO `cms_logs` VALUES (738, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-07 05:31:17', NULL);
INSERT INTO `cms_logs` VALUES (739, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-07 05:32:02', NULL);
INSERT INTO `cms_logs` VALUES (740, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-07 05:32:10', NULL);
INSERT INTO `cms_logs` VALUES (741, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-05-07 06:02:35', NULL);
INSERT INTO `cms_logs` VALUES (742, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-07 06:02:42', NULL);
INSERT INTO `cms_logs` VALUES (743, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Dashboard Halomas at Menu Management', '', 1, '2019-05-07 06:03:36', NULL);
INSERT INTO `cms_logs` VALUES (744, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/28', 'Update data Dashboard Halomas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Controller & Method</td></tr><tr><td>path</td><td>#</td><td>DashboardController@dashboard_halomas</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-07 06:05:07', NULL);
INSERT INTO `cms_logs` VALUES (745, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/28', 'Update data Dashboard Halomas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>DashboardController@dashboard_halomas</td><td>DashboardHalomas</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-07 06:05:35', NULL);
INSERT INTO `cms_logs` VALUES (746, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/28', 'Update data Dashboard Halomas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Controller & Method</td><td>Route</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-07 06:05:47', NULL);
INSERT INTO `cms_logs` VALUES (747, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-07 06:16:13', NULL);
INSERT INTO `cms_logs` VALUES (748, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-07 06:16:19', NULL);
INSERT INTO `cms_logs` VALUES (749, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-07 06:31:23', NULL);
INSERT INTO `cms_logs` VALUES (750, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-07 06:31:36', NULL);
INSERT INTO `cms_logs` VALUES (751, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-07 13:23:44', NULL);
INSERT INTO `cms_logs` VALUES (752, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/delete-image', 'Delete the image of HaloMas at Users Management', '', 1, '2019-05-07 13:25:18', NULL);
INSERT INTO `cms_logs` VALUES (753, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/edit-save/77', 'Update data HaloMas at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>username</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-05/user_logo.png</td></tr><tr><td>password</td><td>$2y$10$TlaSORqpp1Gu4vVjqDPIeu8eijbveqCulOAxRd0DddWmsiUAmSXaa</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-07 13:25:35', NULL);
INSERT INTO `cms_logs` VALUES (754, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/edit-save/77', 'Update data HaloMas at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>username</td><td></td><td></td></tr><tr><td>password</td><td>$2y$10$TlaSORqpp1Gu4vVjqDPIeu8eijbveqCulOAxRd0DddWmsiUAmSXaa</td><td>$2y$10$dfSyptsF4cMoJrjW2lV0l.IpZPG.2QH7oBBnue637Ty1s78LEqm1O</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-07 13:25:51', NULL);
INSERT INTO `cms_logs` VALUES (755, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-07 13:48:22', NULL);
INSERT INTO `cms_logs` VALUES (756, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-07 13:48:40', NULL);
INSERT INTO `cms_logs` VALUES (757, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-07 13:52:01', NULL);
INSERT INTO `cms_logs` VALUES (758, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-07 13:52:11', NULL);
INSERT INTO `cms_logs` VALUES (759, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-07 13:54:32', NULL);
INSERT INTO `cms_logs` VALUES (760, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-07 13:54:41', NULL);
INSERT INTO `cms_logs` VALUES (761, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-07 18:56:57', NULL);
INSERT INTO `cms_logs` VALUES (762, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/complain/detail/59', 'Try view the data test at Complain', '', 37, '2019-05-07 20:24:35', NULL);
INSERT INTO `cms_logs` VALUES (763, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-05-07 20:28:07', NULL);
INSERT INTO `cms_logs` VALUES (764, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-07 20:28:14', NULL);
INSERT INTO `cms_logs` VALUES (765, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-07 20:52:32', NULL);
INSERT INTO `cms_logs` VALUES (766, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-07 20:52:43', NULL);
INSERT INTO `cms_logs` VALUES (767, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-08 00:28:33', NULL);
INSERT INTO `cms_logs` VALUES (768, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', ' logout', '', NULL, '2019-05-09 00:14:13', NULL);
INSERT INTO `cms_logs` VALUES (769, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-09 00:43:25', NULL);
INSERT INTO `cms_logs` VALUES (770, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-09 00:49:36', NULL);
INSERT INTO `cms_logs` VALUES (771, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-09 00:49:44', NULL);
INSERT INTO `cms_logs` VALUES (772, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-09 01:34:13', NULL);
INSERT INTO `cms_logs` VALUES (773, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-09 01:34:20', NULL);
INSERT INTO `cms_logs` VALUES (774, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-09 01:34:48', NULL);
INSERT INTO `cms_logs` VALUES (775, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-09 01:34:55', NULL);
INSERT INTO `cms_logs` VALUES (776, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-05-09 01:38:35', NULL);
INSERT INTO `cms_logs` VALUES (777, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-09 01:38:42', NULL);
INSERT INTO `cms_logs` VALUES (778, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-09 01:39:02', NULL);
INSERT INTO `cms_logs` VALUES (779, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-09 01:39:09', NULL);
INSERT INTO `cms_logs` VALUES (780, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-05-09 01:56:53', NULL);
INSERT INTO `cms_logs` VALUES (781, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-09 01:56:59', NULL);
INSERT INTO `cms_logs` VALUES (782, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-09 01:59:31', NULL);
INSERT INTO `cms_logs` VALUES (783, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-09 01:59:39', NULL);
INSERT INTO `cms_logs` VALUES (784, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'leaderketapang@fms.com logout', '', 37, '2019-05-09 03:23:22', NULL);
INSERT INTO `cms_logs` VALUES (785, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-09 04:06:12', NULL);
INSERT INTO `cms_logs` VALUES (786, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Contact Center at Users Management', '', 1, '2019-05-09 04:08:32', NULL);
INSERT INTO `cms_logs` VALUES (787, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-09 04:10:49', NULL);
INSERT INTO `cms_logs` VALUES (788, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-09 04:14:26', NULL);
INSERT INTO `cms_logs` VALUES (789, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-09 04:21:25', NULL);
INSERT INTO `cms_logs` VALUES (790, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-09 05:40:42', NULL);
INSERT INTO `cms_logs` VALUES (791, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-09 05:40:50', NULL);
INSERT INTO `cms_logs` VALUES (792, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/email_templates/add-save', 'Add New Data Complain Done at Email Templates', '', 1, '2019-05-09 06:00:13', NULL);
INSERT INTO `cms_logs` VALUES (793, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/3', 'Update data Complain Done at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>from_name</td><td></td><td>Facility Management System</td></tr><tr><td>from_email</td><td></td><td>fms.pgnmas@gmail.com</td></tr><tr><td>cc_email</td><td></td><td>dsc.pgnmas@gmail.com</td></tr></tbody></table>', 1, '2019-05-09 06:06:46', NULL);
INSERT INTO `cms_logs` VALUES (794, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-09 06:07:11', NULL);
INSERT INTO `cms_logs` VALUES (795, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-09 06:07:34', NULL);
INSERT INTO `cms_logs` VALUES (796, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-10 00:19:01', NULL);
INSERT INTO `cms_logs` VALUES (797, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/2', 'Update data Complain at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Yth Bapak/Ibu, <br><br>Facility Management System telah menerima complain/request baru untuk melihat detail sebagai berikut,<br><br>NO WORK ORDER &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [nomor_wo]<br>LOKASI&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp; [lokasi]<br>JENIS/KATEGORI &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;[jenis_kategori]<br>INFORMASI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; [informasi]<br><br>Klik tautan berikut&nbsp;<a href=\"http://[link]\">link</a>&nbsp; <br><br>Mohon untuk menindaklanjuti segera dan melaporkan kepada Contact Center untuk penyelesaian nya<br><br>Email ini tidak menerima reply/balasan, PT PERMATA GRAHA NUSANTARA tidak akan membaca/mereply email dari alamat ini</p></td><td><p>Yth Bapak/Ibu</p>\r\n<p>PEMBERITAHUAN</p>\r\n<p>Complain/Request Baru telah masuk di Facility Management System.</p>\r\n<table>\r\n    <tbody><tr>\r\n        <td>No Work Order</td>\r\n        <td>:</td>\r\n        <td>[no_workorder]</td>\r\n    </tr>\r\n    <tr><td>Tanggal</td>\r\n        <td>:</td>\r\n        <td>[tanggal]</td>\r\n    </tr>\r\n    <tr><td>User</td>\r\n        <td>:</td>\r\n        <td>[user]</td>\r\n    </tr>\r\n    <tr><td>Divisi/Satker</td>\r\n        <td>:</td>\r\n        <td>[divisi]</td>\r\n    </tr>\r\n    <tr><td>No Telepon</td>\r\n        <td>:</td>\r\n        <td>[no_telp]</td>\r\n    </tr>\r\n    <tr><td>Jenis/Kategori</td>\r\n        <td>:</td>\r\n        <td>[ketegori]</td>\r\n    </tr>\r\n    <tr><td>Informasi</td>\r\n        <td>:</td>\r\n        <td>[informasi]</td>\r\n    </tr>\r\n</tbody></table>\r\n<p>Mohon agar dapat ditindaklanjuti dengan unit terkait</p>\r\n\r\n<p>\r\n        Catatan :\r\n\r\n        Email ini dikirim secara otomatis by system \r\n        \r\n        <strong>Mohon untuk tidak mereply</strong>\r\n        \r\n</p></td></tr></tbody></table>', 1, '2019-05-10 00:37:36', NULL);
INSERT INTO `cms_logs` VALUES (798, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/2', 'Update data Complain at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Yth Bapak/Ibu</p>\r\n<p>PEMBERITAHUAN</p>\r\n<p>Complain/Request Baru telah masuk di Facility Management System.</p>\r\n<table>\r\n    <tbody><tr>\r\n        <td>No Work Order</td>\r\n        <td>:</td>\r\n        <td>[no_workorder]</td>\r\n    </tr>\r\n    <tr><td>Tanggal</td>\r\n        <td>:</td>\r\n        <td>[tanggal]</td>\r\n    </tr>\r\n    <tr><td>User</td>\r\n        <td>:</td>\r\n        <td>[user]</td>\r\n    </tr>\r\n    <tr><td>Divisi/Satker</td>\r\n        <td>:</td>\r\n        <td>[divisi]</td>\r\n    </tr>\r\n    <tr><td>No Telepon</td>\r\n        <td>:</td>\r\n        <td>[no_telp]</td>\r\n    </tr>\r\n    <tr><td>Jenis/Kategori</td>\r\n        <td>:</td>\r\n        <td>[ketegori]</td>\r\n    </tr>\r\n    <tr><td>Informasi</td>\r\n        <td>:</td>\r\n        <td>[informasi]</td>\r\n    </tr>\r\n</tbody></table>\r\n<p>Mohon agar dapat ditindaklanjuti dengan unit terkait</p>\r\n\r\n<p>\r\n        Catatan :\r\n\r\n        Email ini dikirim secara otomatis by system \r\n        \r\n        <strong>Mohon untuk tidak mereply</strong>\r\n        \r\n</p></td><td><p>Yth Bapak/Ibu</p>\r\n<p>PEMBERITAHUAN</p>\r\n<p>Complain/Request Baru telah masuk di Facility Management System.</p>\r\n<table>\r\n    <tbody><tr>\r\n        <td>No Work Order</td>\r\n        <td>:</td>\r\n        <td>[no_workorder]</td>\r\n    </tr>\r\n    <tr><td>Tanggal</td>\r\n        <td>:</td>\r\n        <td>[tanggal]</td>\r\n    </tr>\r\n    <tr><td>User</td>\r\n        <td>:</td>\r\n        <td>[user]</td>\r\n    </tr>\r\n    <tr><td>Divisi/Satker</td>\r\n        <td>:</td>\r\n        <td>[divisi]</td>\r\n    </tr>\r\n    <tr><td>No Telepon</td>\r\n        <td>:</td>\r\n        <td>[no_telp]</td>\r\n    </tr>\r\n    <tr><td>Jenis/Kategori</td>\r\n        <td>:</td>\r\n        <td>[kategori]</td>\r\n    </tr>\r\n    <tr><td>Informasi</td>\r\n        <td>:</td>\r\n        <td>[informasi]</td>\r\n    </tr>\r\n</tbody></table>\r\n<p>Mohon agar dapat ditindaklanjuti dengan unit terkait</p>\r\n\r\n<p>\r\n        Catatan :\r\n\r\n        Email ini dikirim secara otomatis by system \r\n        \r\n        <strong>Mohon untuk tidak mereply</strong>\r\n        \r\n</p></td></tr></tbody></table>', 1, '2019-05-10 00:49:39', NULL);
INSERT INTO `cms_logs` VALUES (799, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-10 01:29:36', NULL);
INSERT INTO `cms_logs` VALUES (800, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@fms.com login with IP Address 127.0.0.1', '', 3, '2019-05-10 01:50:20', NULL);
INSERT INTO `cms_logs` VALUES (801, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-10 02:01:05', NULL);
INSERT INTO `cms_logs` VALUES (802, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-10 02:01:14', NULL);
INSERT INTO `cms_logs` VALUES (803, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-10 02:01:20', NULL);
INSERT INTO `cms_logs` VALUES (804, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-10 02:01:28', NULL);
INSERT INTO `cms_logs` VALUES (805, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-10 02:01:37', NULL);
INSERT INTO `cms_logs` VALUES (806, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-10 02:01:45', NULL);
INSERT INTO `cms_logs` VALUES (807, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-10 02:01:54', NULL);
INSERT INTO `cms_logs` VALUES (808, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-10 02:02:03', NULL);
INSERT INTO `cms_logs` VALUES (809, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sla/add-save', 'Add New Data  at SLA', '', 3, '2019-05-10 02:02:11', NULL);
INSERT INTO `cms_logs` VALUES (810, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@fms.com logout', '', 3, '2019-05-10 02:14:25', NULL);
INSERT INTO `cms_logs` VALUES (811, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-10 02:14:42', NULL);
INSERT INTO `cms_logs` VALUES (812, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-10 02:50:42', NULL);
INSERT INTO `cms_logs` VALUES (813, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-10 02:50:51', NULL);
INSERT INTO `cms_logs` VALUES (814, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'koreaketapang@fms.com logout', '', 6, '2019-05-10 02:53:54', NULL);
INSERT INTO `cms_logs` VALUES (815, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 35, '2019-05-10 02:54:02', NULL);
INSERT INTO `cms_logs` VALUES (816, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 35, '2019-05-10 03:08:47', NULL);
INSERT INTO `cms_logs` VALUES (817, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'koreaketapang@fms.com login with IP Address 127.0.0.1', '', 6, '2019-05-10 03:08:55', NULL);
INSERT INTO `cms_logs` VALUES (818, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/add-save', 'Add New Data  at Master Jadwal SLA', '', 6, '2019-05-10 03:09:42', NULL);
INSERT INTO `cms_logs` VALUES (819, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'leaderketapang@fms.com login with IP Address 127.0.0.1', '', 37, '2019-05-10 03:28:40', NULL);
INSERT INTO `cms_logs` VALUES (820, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-13 01:46:40', NULL);
INSERT INTO `cms_logs` VALUES (821, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-13 01:47:15', NULL);
INSERT INTO `cms_logs` VALUES (822, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-13 02:20:29', NULL);
INSERT INTO `cms_logs` VALUES (823, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-13 03:19:54', NULL);
INSERT INTO `cms_logs` VALUES (824, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-13 03:20:14', NULL);
INSERT INTO `cms_logs` VALUES (825, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Bernadeta Katina at Users Management', '', 1, '2019-05-13 03:30:22', NULL);
INSERT INTO `cms_logs` VALUES (826, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/edit-save/79', 'Update data korwil1 at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>username</td><td></td><td>Bernadeta Katina</td></tr><tr><td>password</td><td>$2y$10$jLi6gzXHyEnEzcPfXpy38.NSKy8ALZEzzM4rH3jfQv0RPExwNq3yO</td><td>$2y$10$G1iFq3OjaBL6BZstZe45OeVsE8Emsm3BZ6VYeXEsygqaRN0Km9eXe</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-13 03:31:47', NULL);
INSERT INTO `cms_logs` VALUES (827, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/ua/add-save', 'Add New Data  at User Aset', '', 1, '2019-05-13 03:43:06', NULL);
INSERT INTO `cms_logs` VALUES (828, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/ua/delete/81', 'Delete data 81 at User Aset', '', 1, '2019-05-13 03:47:27', NULL);
INSERT INTO `cms_logs` VALUES (829, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/ua/add-save', 'Add New Data  at User Aset', '', 1, '2019-05-13 03:47:41', NULL);
INSERT INTO `cms_logs` VALUES (830, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-13 03:53:37', NULL);
INSERT INTO `cms_logs` VALUES (831, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'bernadeta1707@gmail.com login with IP Address 127.0.0.1', '', 79, '2019-05-13 03:53:44', NULL);
INSERT INTO `cms_logs` VALUES (832, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/ua/add', 'Try add data at User Aset', '', 79, '2019-05-13 04:08:17', NULL);
INSERT INTO `cms_logs` VALUES (833, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/ua', 'Try view the data :name at User Aset', '', 79, '2019-05-13 04:08:37', NULL);
INSERT INTO `cms_logs` VALUES (834, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/ua/add', 'Try add data at User Aset', '', 79, '2019-05-13 04:08:54', NULL);
INSERT INTO `cms_logs` VALUES (835, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'bernadeta1707@gmail.com logout', '', 79, '2019-05-13 05:10:57', NULL);
INSERT INTO `cms_logs` VALUES (836, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-13 05:11:22', NULL);
INSERT INTO `cms_logs` VALUES (837, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-13 06:02:26', NULL);
INSERT INTO `cms_logs` VALUES (838, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-13 06:02:48', NULL);
INSERT INTO `cms_logs` VALUES (839, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-13 06:04:41', NULL);
INSERT INTO `cms_logs` VALUES (840, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-13 06:05:24', NULL);
INSERT INTO `cms_logs` VALUES (841, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data korea1 at Users Management', '', 1, '2019-05-13 06:06:29', NULL);
INSERT INTO `cms_logs` VALUES (842, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-13 06:06:35', NULL);
INSERT INTO `cms_logs` VALUES (843, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'addy.prasetio1@gmail.com login with IP Address 127.0.0.1', '', 80, '2019-05-13 06:06:49', NULL);
INSERT INTO `cms_logs` VALUES (844, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-14 11:55:48', NULL);
INSERT INTO `cms_logs` VALUES (845, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-14 12:12:38', NULL);
INSERT INTO `cms_logs` VALUES (846, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'bobby.mahardika@pgn.co.id  login with IP Address 127.0.0.1', '', 107, '2019-05-14 12:12:46', NULL);
INSERT INTO `cms_logs` VALUES (847, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'bobby.mahardika@pgn.co.id  logout', '', 107, '2019-05-14 12:13:01', NULL);
INSERT INTO `cms_logs` VALUES (848, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-14 12:13:35', NULL);
INSERT INTO `cms_logs` VALUES (849, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/delete-image', 'Delete the image of Korwil2 at Users Management', '', 1, '2019-05-14 12:13:52', NULL);
INSERT INTO `cms_logs` VALUES (850, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/edit-save/107', 'Update data Korwil2 at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-05/1024px_no_image_availablesvg.png</td></tr><tr><td>email</td><td>bobby.mahardika@pgn.co.id </td><td>bobby.mahardika@pgn.co.id</td></tr><tr><td>password</td><td>$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-14 12:14:35', NULL);
INSERT INTO `cms_logs` VALUES (851, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/delete-image', 'Delete the image of korea1 at Users Management', '', 1, '2019-05-14 12:14:47', NULL);
INSERT INTO `cms_logs` VALUES (852, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/edit-save/80', 'Update data korea1 at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-05/1024px_no_image_availablesvg.png</td></tr><tr><td>password</td><td>$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-14 12:14:53', NULL);
INSERT INTO `cms_logs` VALUES (853, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/delete-image', 'Delete the image of korwil1 at Users Management', '', 1, '2019-05-14 12:15:02', NULL);
INSERT INTO `cms_logs` VALUES (854, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/edit-save/79', 'Update data korwil1 at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-05/1024px_no_image_availablesvg.png</td></tr><tr><td>password</td><td>$2y$10$G1iFq3OjaBL6BZstZe45OeVsE8Emsm3BZ6VYeXEsygqaRN0Km9eXe</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-14 12:15:09', NULL);
INSERT INTO `cms_logs` VALUES (855, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data GM at Users Management', '', 1, '2019-05-14 12:17:25', NULL);
INSERT INTO `cms_logs` VALUES (856, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data HaloMas at Users Management', '', 1, '2019-05-14 12:18:04', NULL);
INSERT INTO `cms_logs` VALUES (857, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Manager at Users Management', '', 1, '2019-05-14 12:18:54', NULL);
INSERT INTO `cms_logs` VALUES (858, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Admin at Users Management', '', 1, '2019-05-14 12:19:27', NULL);
INSERT INTO `cms_logs` VALUES (859, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-14 12:20:36', NULL);
INSERT INTO `cms_logs` VALUES (860, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin.fms@gmail.com login with IP Address 127.0.0.1', '', 165, '2019-05-14 12:20:42', NULL);
INSERT INTO `cms_logs` VALUES (861, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin.fms@gmail.com logout', '', 165, '2019-05-14 12:20:56', NULL);
INSERT INTO `cms_logs` VALUES (862, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-14 12:21:02', NULL);
INSERT INTO `cms_logs` VALUES (863, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/delete/26', 'Delete data test at Menu Management', '', 1, '2019-05-14 12:22:05', NULL);
INSERT INTO `cms_logs` VALUES (864, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data User Management at Menu Management', '', 1, '2019-05-14 12:22:40', NULL);
INSERT INTO `cms_logs` VALUES (865, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/29', 'Update data User Management at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2019-05-14 12:23:23', NULL);
INSERT INTO `cms_logs` VALUES (866, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-14 12:26:25', NULL);
INSERT INTO `cms_logs` VALUES (867, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin.fms@gmail.com login with IP Address 127.0.0.1', '', 165, '2019-05-14 12:26:33', NULL);
INSERT INTO `cms_logs` VALUES (868, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin.fms@gmail.com logout', '', 165, '2019-05-14 12:42:26', NULL);
INSERT INTO `cms_logs` VALUES (869, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin.fms@gmail.com login with IP Address 127.0.0.1', '', 165, '2019-05-14 12:47:51', NULL);
INSERT INTO `cms_logs` VALUES (870, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin.fms@gmail.com logout', '', 165, '2019-05-14 12:50:01', NULL);
INSERT INTO `cms_logs` VALUES (871, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-14 12:50:11', NULL);
INSERT INTO `cms_logs` VALUES (872, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-14 13:18:39', NULL);
INSERT INTO `cms_logs` VALUES (873, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-14 13:18:47', NULL);
INSERT INTO `cms_logs` VALUES (874, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-14 13:19:08', NULL);
INSERT INTO `cms_logs` VALUES (875, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-14 13:19:13', NULL);
INSERT INTO `cms_logs` VALUES (876, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data pgasol.jkt at Users Management', '', 1, '2019-05-14 13:20:47', NULL);
INSERT INTO `cms_logs` VALUES (877, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-14 13:29:45', NULL);
INSERT INTO `cms_logs` VALUES (878, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'bernadeta1707@gmail.com login with IP Address 127.0.0.1', '', 79, '2019-05-14 13:29:52', NULL);
INSERT INTO `cms_logs` VALUES (879, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'bernadeta1707@gmail.com logout', '', 79, '2019-05-14 13:31:00', NULL);
INSERT INTO `cms_logs` VALUES (880, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'addy.prasetio1@gmail.com login with IP Address 127.0.0.1', '', 80, '2019-05-14 13:31:07', NULL);
INSERT INTO `cms_logs` VALUES (881, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'addy.prasetio1@gmail.com logout', '', 80, '2019-05-14 13:32:23', NULL);
INSERT INTO `cms_logs` VALUES (882, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'fms.gmpgnmas@gmail.com login with IP Address 127.0.0.1', '', 162, '2019-05-14 13:32:31', NULL);
INSERT INTO `cms_logs` VALUES (883, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'fms.gmpgnmas@gmail.com logout', '', 162, '2019-05-14 13:32:41', NULL);
INSERT INTO `cms_logs` VALUES (884, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'dsc.pgnmas@gmail.com login with IP Address 127.0.0.1', '', 167, '2019-05-14 13:51:21', NULL);
INSERT INTO `cms_logs` VALUES (885, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'dsc.pgnmas@gmail.com logout', '', 167, '2019-05-14 13:56:31', NULL);
INSERT INTO `cms_logs` VALUES (886, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'dsc.pgnmas@gmail.com login with IP Address 127.0.0.1', '', 179, '2019-05-14 13:56:39', NULL);
INSERT INTO `cms_logs` VALUES (887, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/delete/2', 'Delete data 2 at listrik', '', 179, '2019-05-14 14:05:28', NULL);
INSERT INTO `cms_logs` VALUES (888, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/delete/3', 'Delete data 3 at listrik', '', 179, '2019-05-14 14:06:11', NULL);
INSERT INTO `cms_logs` VALUES (889, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/listrik/add-save', 'Add New Data  at listrik', '', 179, '2019-05-14 14:06:54', NULL);
INSERT INTO `cms_logs` VALUES (890, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'dsc.pgnmas@gmail.com logout', '', 179, '2019-05-14 14:51:10', NULL);
INSERT INTO `cms_logs` VALUES (891, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-14 14:51:16', NULL);
INSERT INTO `cms_logs` VALUES (892, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/module_generator/delete/24', 'Delete data listrik at Module Generator', '', 1, '2019-05-14 14:51:37', NULL);
INSERT INTO `cms_logs` VALUES (893, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/21', 'Update data Listrik at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>listrik</td><td>master_listrik</td></tr><tr><td>parent_id</td><td>20</td><td></td></tr></tbody></table>', 1, '2019-05-14 14:54:34', NULL);
INSERT INTO `cms_logs` VALUES (894, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-14 14:55:37', NULL);
INSERT INTO `cms_logs` VALUES (895, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'dsc.pgnmas@gmail.com login with IP Address 127.0.0.1', '', 179, '2019-05-14 14:55:47', NULL);
INSERT INTO `cms_logs` VALUES (896, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_listrik', 'Try view the data :name at listrik', '', 179, '2019-05-14 14:55:54', NULL);
INSERT INTO `cms_logs` VALUES (897, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-14 14:56:29', NULL);
INSERT INTO `cms_logs` VALUES (898, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_listrik', 'Try view the data :name at listrik', '', 179, '2019-05-14 14:57:08', NULL);
INSERT INTO `cms_logs` VALUES (899, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'dsc.pgnmas@gmail.com logout', '', 179, '2019-05-14 14:57:20', NULL);
INSERT INTO `cms_logs` VALUES (900, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'dsc.pgnmas@gmail.com login with IP Address 127.0.0.1', '', 179, '2019-05-14 14:57:28', NULL);
INSERT INTO `cms_logs` VALUES (901, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_listrik', 'Try view the data :name at listrik', '', 179, '2019-05-14 14:57:36', NULL);
INSERT INTO `cms_logs` VALUES (902, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_listrik', 'Try view the data :name at listrik', '', 179, '2019-05-14 14:58:06', NULL);
INSERT INTO `cms_logs` VALUES (903, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'dsc.pgnmas@gmail.com logout', '', 179, '2019-05-14 14:58:17', NULL);
INSERT INTO `cms_logs` VALUES (904, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'dsc.pgnmas@gmail.com login with IP Address 127.0.0.1', '', 179, '2019-05-14 14:58:25', NULL);
INSERT INTO `cms_logs` VALUES (905, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_listrik/add-save', 'Add New Data  at listrik', '', 179, '2019-05-14 15:13:15', NULL);
INSERT INTO `cms_logs` VALUES (906, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_listrik/add-save', 'Add New Data  at listrik', '', 179, '2019-05-14 15:17:15', NULL);
INSERT INTO `cms_logs` VALUES (907, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_listrik/delete/6', 'Delete data 6 at listrik', '', 179, '2019-05-14 15:17:55', NULL);
INSERT INTO `cms_logs` VALUES (908, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_listrik/delete/5', 'Delete data 5 at listrik', '', 179, '2019-05-14 15:17:59', NULL);
INSERT INTO `cms_logs` VALUES (909, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_listrik/add-save', 'Add New Data  at listrik', '', 179, '2019-05-14 15:27:07', NULL);
INSERT INTO `cms_logs` VALUES (910, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Air/add-save', 'Add New Data  at Air', '', 179, '2019-05-14 15:50:54', NULL);
INSERT INTO `cms_logs` VALUES (911, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Air/add-save', 'Add New Data  at Air', '', 179, '2019-05-14 15:53:50', NULL);
INSERT INTO `cms_logs` VALUES (912, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Air/delete/2', 'Delete data 2 at Air', '', 179, '2019-05-14 15:54:24', NULL);
INSERT INTO `cms_logs` VALUES (913, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Air/delete/1', 'Delete data 1 at Air', '', 179, '2019-05-14 15:54:29', NULL);
INSERT INTO `cms_logs` VALUES (914, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Solar/add-save', 'Add New Data  at Solar', '', 179, '2019-05-14 16:00:13', NULL);
INSERT INTO `cms_logs` VALUES (915, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Solar/delete/1', 'Delete data 1 at Solar', '', 179, '2019-05-14 16:05:12', NULL);
INSERT INTO `cms_logs` VALUES (916, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/limbah/add-save', 'Add New Data  at Limbah', '', 179, '2019-05-14 16:07:00', NULL);
INSERT INTO `cms_logs` VALUES (917, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/limbah/add-save', 'Add New Data  at Limbah', '', 179, '2019-05-14 16:09:58', NULL);
INSERT INTO `cms_logs` VALUES (918, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/Solar/add-save', 'Add New Data  at Solar', '', 179, '2019-05-14 16:47:03', NULL);
INSERT INTO `cms_logs` VALUES (919, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'dsc.pgnmas@gmail.com logout', '', 179, '2019-05-14 16:56:53', NULL);
INSERT INTO `cms_logs` VALUES (920, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'addy.prasetio1@gmail.com login with IP Address 127.0.0.1', '', 80, '2019-05-14 16:57:07', NULL);
INSERT INTO `cms_logs` VALUES (921, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'addy.prasetio1@gmail.com logout', '', 80, '2019-05-14 17:00:45', NULL);
INSERT INTO `cms_logs` VALUES (922, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'ibat.trafalgar@gmail.com  login with IP Address 127.0.0.1', '', 126, '2019-05-14 17:00:56', NULL);
INSERT INTO `cms_logs` VALUES (923, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'ibat.trafalgar@gmail.com  logout', '', 126, '2019-05-14 17:01:41', NULL);
INSERT INTO `cms_logs` VALUES (924, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'bernadeta1707@gmail.com login with IP Address 127.0.0.1', '', 79, '2019-05-14 17:02:18', NULL);
INSERT INTO `cms_logs` VALUES (925, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'bernadeta1707@gmail.com logout', '', 79, '2019-05-14 17:06:08', NULL);
INSERT INTO `cms_logs` VALUES (926, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'ibat.trafalgar@gmail.com  login with IP Address 127.0.0.1', '', 126, '2019-05-14 17:06:15', NULL);
INSERT INTO `cms_logs` VALUES (927, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/frekuensi/add-save', 'Add New Data  at Frekuensi', '', 1, '2019-05-14 17:08:35', NULL);
INSERT INTO `cms_logs` VALUES (928, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/add-save', 'Add New Data  at Master Jadwal SLA', '', 126, '2019-05-14 17:10:09', NULL);
INSERT INTO `cms_logs` VALUES (929, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'ibat.trafalgar@gmail.com  logout', '', 126, '2019-05-14 17:10:24', NULL);
INSERT INTO `cms_logs` VALUES (930, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'dsc.pgnmas@gmail.com login with IP Address 127.0.0.1', '', 179, '2019-05-14 17:11:33', NULL);
INSERT INTO `cms_logs` VALUES (931, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 179, '2019-05-14 17:13:28', NULL);
INSERT INTO `cms_logs` VALUES (932, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/edit-save/782', 'Update data  at Sub Detail Pekerjaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>foto_sebelum</td><td></td><td>uploads/179/2019-05/45a4120e20c67ad920f8580f3455543d.png</td></tr><tr><td>foto_sesudah</td><td></td><td>uploads/179/2019-05/ba1275966d4232e847f869878830bb81.jpg</td></tr></tbody></table>', 179, '2019-05-14 17:20:41', NULL);
INSERT INTO `cms_logs` VALUES (933, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 179, '2019-05-14 17:53:01', NULL);
INSERT INTO `cms_logs` VALUES (934, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 179, '2019-05-14 17:55:15', NULL);
INSERT INTO `cms_logs` VALUES (935, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 179, '2019-05-14 17:59:53', NULL);
INSERT INTO `cms_logs` VALUES (936, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 179, '2019-05-14 18:05:48', NULL);
INSERT INTO `cms_logs` VALUES (937, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 179, '2019-05-14 18:08:17', NULL);
INSERT INTO `cms_logs` VALUES (938, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 179, '2019-05-14 18:41:36', NULL);
INSERT INTO `cms_logs` VALUES (939, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'dsc.pgnmas@gmail.com logout', '', 179, '2019-05-14 18:43:04', NULL);
INSERT INTO `cms_logs` VALUES (940, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'addy.prasetio1@gmail.com login with IP Address 127.0.0.1', '', 80, '2019-05-14 18:43:20', NULL);
INSERT INTO `cms_logs` VALUES (941, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/add-save', 'Add New Data  at Master Jadwal SLA', '', 80, '2019-05-14 18:43:52', NULL);
INSERT INTO `cms_logs` VALUES (942, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/delete/5', 'Delete data 5 at Master Jadwal SLA', '', 80, '2019-05-14 18:53:35', NULL);
INSERT INTO `cms_logs` VALUES (943, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/add-save', 'Add New Data  at Master Jadwal SLA', '', 80, '2019-05-14 18:54:49', NULL);
INSERT INTO `cms_logs` VALUES (944, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/delete/8', 'Delete data 8 at Master Jadwal SLA', '', 80, '2019-05-14 18:57:04', NULL);
INSERT INTO `cms_logs` VALUES (945, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/delete/7', 'Delete data 7 at Master Jadwal SLA', '', 80, '2019-05-14 18:57:14', NULL);
INSERT INTO `cms_logs` VALUES (946, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/delete/6', 'Delete data 6 at Master Jadwal SLA', '', 80, '2019-05-14 18:57:21', NULL);
INSERT INTO `cms_logs` VALUES (947, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'addy.prasetio1@gmail.com login with IP Address 127.0.0.1', '', 80, '2019-05-15 01:31:16', NULL);
INSERT INTO `cms_logs` VALUES (948, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/delete/4', 'Delete data 4 at Master Jadwal SLA', '', 80, '2019-05-15 01:31:43', NULL);
INSERT INTO `cms_logs` VALUES (949, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'addy.prasetio1@gmail.com logout', '', 80, '2019-05-15 01:36:51', NULL);
INSERT INTO `cms_logs` VALUES (950, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'ibat.trafalgar@gmail.com  login with IP Address 127.0.0.1', '', 126, '2019-05-15 01:38:25', NULL);
INSERT INTO `cms_logs` VALUES (951, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 126, '2019-05-15 01:40:21', NULL);
INSERT INTO `cms_logs` VALUES (952, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'ibat.trafalgar@gmail.com  logout', '', 126, '2019-05-15 02:02:56', NULL);
INSERT INTO `cms_logs` VALUES (953, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'taat.udjianto@pgn.co.id login with IP Address 127.0.0.1', '', 158, '2019-05-15 02:04:15', NULL);
INSERT INTO `cms_logs` VALUES (954, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-15 02:04:53', NULL);
INSERT INTO `cms_logs` VALUES (955, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/4', 'Update data Work Order at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-05-15 02:06:16', NULL);
INSERT INTO `cms_logs` VALUES (956, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'taat.udjianto@pgn.co.id logout', '', 158, '2019-05-15 02:06:29', NULL);
INSERT INTO `cms_logs` VALUES (957, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-15 02:13:31', NULL);
INSERT INTO `cms_logs` VALUES (958, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-15 02:13:44', NULL);
INSERT INTO `cms_logs` VALUES (959, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 158, '2019-05-15 02:13:53', NULL);
INSERT INTO `cms_logs` VALUES (960, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 158, '2019-05-15 02:20:51', NULL);
INSERT INTO `cms_logs` VALUES (961, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-15 02:21:03', NULL);
INSERT INTO `cms_logs` VALUES (962, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-15 02:29:24', NULL);
INSERT INTO `cms_logs` VALUES (963, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 158, '2019-05-15 02:29:32', NULL);
INSERT INTO `cms_logs` VALUES (964, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 158, '2019-05-15 02:34:06', NULL);
INSERT INTO `cms_logs` VALUES (965, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-15 02:34:18', NULL);
INSERT INTO `cms_logs` VALUES (966, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-15 03:14:17', NULL);
INSERT INTO `cms_logs` VALUES (967, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 158, '2019-05-15 03:14:25', NULL);
INSERT INTO `cms_logs` VALUES (968, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 158, '2019-05-15 03:29:59', NULL);
INSERT INTO `cms_logs` VALUES (969, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-15 03:33:57', NULL);
INSERT INTO `cms_logs` VALUES (970, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 125, '2019-05-15 06:55:07', NULL);
INSERT INTO `cms_logs` VALUES (971, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 125, '2019-05-15 06:55:16', NULL);
INSERT INTO `cms_logs` VALUES (972, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-15 06:55:43', NULL);
INSERT INTO `cms_logs` VALUES (973, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 126, '2019-05-15 06:56:09', NULL);
INSERT INTO `cms_logs` VALUES (974, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-15 09:21:12', NULL);
INSERT INTO `cms_logs` VALUES (975, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-15 09:21:19', NULL);
INSERT INTO `cms_logs` VALUES (976, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-15 11:40:02', NULL);
INSERT INTO `cms_logs` VALUES (977, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-15 11:40:20', NULL);
INSERT INTO `cms_logs` VALUES (978, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 79, '2019-05-15 11:41:39', NULL);
INSERT INTO `cms_logs` VALUES (979, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-15 11:41:49', NULL);
INSERT INTO `cms_logs` VALUES (980, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-15 11:43:23', NULL);
INSERT INTO `cms_logs` VALUES (981, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-15 11:43:37', NULL);
INSERT INTO `cms_logs` VALUES (982, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 179, '2019-05-15 12:47:42', NULL);
INSERT INTO `cms_logs` VALUES (983, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 80, '2019-05-15 12:48:14', NULL);
INSERT INTO `cms_logs` VALUES (984, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-15 12:50:22', NULL);
INSERT INTO `cms_logs` VALUES (985, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/users/add-save', 'Add New Data Contact Center at Users Management', '', 1, '2019-05-15 12:51:55', NULL);
INSERT INTO `cms_logs` VALUES (986, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 80, '2019-05-15 13:47:17', NULL);
INSERT INTO `cms_logs` VALUES (987, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-15 13:47:27', NULL);
INSERT INTO `cms_logs` VALUES (988, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 79, '2019-05-15 13:49:02', NULL);
INSERT INTO `cms_logs` VALUES (989, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-15 13:51:02', NULL);
INSERT INTO `cms_logs` VALUES (990, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-15 14:01:37', NULL);
INSERT INTO `cms_logs` VALUES (991, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-15 14:01:46', NULL);
INSERT INTO `cms_logs` VALUES (992, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 179, '2019-05-15 14:25:53', NULL);
INSERT INTO `cms_logs` VALUES (993, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-15 14:26:01', NULL);
INSERT INTO `cms_logs` VALUES (994, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 126, '2019-05-15 14:32:38', NULL);
INSERT INTO `cms_logs` VALUES (995, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/email_templates/add-save', 'Add New Data PenilaianSla at Email Templates', '', 1, '2019-05-15 14:45:19', NULL);
INSERT INTO `cms_logs` VALUES (996, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/4', 'Update data PenilaianSla at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Yth Bpk/Ibu,</p>\r\n<p>Nama</p> \r\n<p>Jabatan</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode nama bulan + tahun sebagai berikut :</p>\r\n\r\n<p> LOKASI :</p>\r\n<p> PELAKSANAAN 	: ... %</p>\r\n<p> PENCAPAIAN : ... %</p>\r\n\r\n<p> Klik tautan berikut LINK</p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p></td><td><p>Yth Bpk/Ibu,</p>\r\n<p>[nama_sa]</p> \r\n<p>[jabatan]</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode nama bulan + tahun sebagai berikut :</p>\r\n\r\n<p> LOKASI : <b>[lokasi]</b><br></p>\r\n<p> PELAKSANAAN 	: [pelaksanaan]</p>\r\n<p> PENCAPAIAN : [pencapaian]</p>\r\n\r\n<p> Klik tautan berikut [link]<br></p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p></td></tr></tbody></table>', 1, '2019-05-15 14:58:52', NULL);
INSERT INTO `cms_logs` VALUES (997, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-16 00:16:26', NULL);
INSERT INTO `cms_logs` VALUES (998, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 126, '2019-05-16 00:18:31', NULL);
INSERT INTO `cms_logs` VALUES (999, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-16 00:19:16', NULL);
INSERT INTO `cms_logs` VALUES (1000, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/4', 'Update data PenilaianSla at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Yth Bpk/Ibu,</p>\r\n<p>[nama_sa]</p> \r\n<p>[jabatan]</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode nama bulan + tahun sebagai berikut :</p>\r\n\r\n<p> LOKASI : <b>[lokasi]</b><br></p>\r\n<p> PELAKSANAAN 	: [pelaksanaan]</p>\r\n<p> PENCAPAIAN : [pencapaian]</p>\r\n\r\n<p> Klik tautan berikut [link]<br></p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p></td><td><p>Yth Bpk/Ibu,</p>\r\n<p>[nama_sa]</p> \r\n<p>[jabatan]</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode [bulan] [tahun] sebagai berikut :</p>\r\n\r\n<p> LOKASI : <b>[lokasi]</b><br></p>\r\n<p> PELAKSANAAN 	: [pelaksanaan]</p>\r\n<p> PENCAPAIAN : [pencapaian]</p>\r\n\r\n<p> Klik tautan berikut [link]<br></p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p></td></tr></tbody></table>', 1, '2019-05-16 01:25:36', NULL);
INSERT INTO `cms_logs` VALUES (1001, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-16 01:29:41', NULL);
INSERT INTO `cms_logs` VALUES (1002, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-16 01:29:54', NULL);
INSERT INTO `cms_logs` VALUES (1003, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 165, '2019-05-17 05:42:12', NULL);
INSERT INTO `cms_logs` VALUES (1004, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 165, '2019-05-17 05:49:44', NULL);
INSERT INTO `cms_logs` VALUES (1005, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-17 05:49:54', NULL);
INSERT INTO `cms_logs` VALUES (1006, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-17 05:51:03', NULL);
INSERT INTO `cms_logs` VALUES (1007, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-17 05:51:12', NULL);
INSERT INTO `cms_logs` VALUES (1008, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 126, '2019-05-17 05:51:32', NULL);
INSERT INTO `cms_logs` VALUES (1009, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-17 05:53:56', NULL);
INSERT INTO `cms_logs` VALUES (1010, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 165, '2019-05-17 15:43:47', NULL);
INSERT INTO `cms_logs` VALUES (1011, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-18 02:08:50', NULL);
INSERT INTO `cms_logs` VALUES (1012, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sa/updatedata/bulan/2', 'Update table bulan', 'Update Field id From  to 2', 79, '2019-05-18 02:27:10', NULL);
INSERT INTO `cms_logs` VALUES (1013, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sa/updatedata/bulan/2', 'Update table bulan', 'Update Field nama From  to test', 79, '2019-05-18 02:27:11', NULL);
INSERT INTO `cms_logs` VALUES (1014, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sa/updatedata/bulan/2', 'Update table bulan', 'Update Field nama_singkat From  to Feb', 79, '2019-05-18 02:27:11', NULL);
INSERT INTO `cms_logs` VALUES (1015, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', ' logout', '', NULL, '2019-05-18 10:12:47', NULL);
INSERT INTO `cms_logs` VALUES (1016, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-18 10:12:56', NULL);
INSERT INTO `cms_logs` VALUES (1017, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Dokumentasi at Menu Management', '', 1, '2019-05-18 10:14:28', NULL);
INSERT INTO `cms_logs` VALUES (1018, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/add-save', 'Add New Data Dokumentasi Pekerjaan Rutin at Menu Management', '', 1, '2019-05-18 10:16:04', NULL);
INSERT INTO `cms_logs` VALUES (1019, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-18 10:18:20', NULL);
INSERT INTO `cms_logs` VALUES (1020, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-18 10:18:30', NULL);
INSERT INTO `cms_logs` VALUES (1021, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 79, '2019-05-18 10:19:34', NULL);
INSERT INTO `cms_logs` VALUES (1022, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-18 10:19:43', NULL);
INSERT INTO `cms_logs` VALUES (1023, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/master_jadwal_sla/add-save', 'Add New Data  at Master Jadwal SLA', '', 126, '2019-05-18 10:26:02', NULL);
INSERT INTO `cms_logs` VALUES (1024, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-18 10:31:25', NULL);
INSERT INTO `cms_logs` VALUES (1025, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-18 10:31:37', NULL);
INSERT INTO `cms_logs` VALUES (1026, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sa/updatedata/bulan/2', 'Update table bulan', 'Update Field id From  to 2', 179, '2019-05-18 10:32:19', NULL);
INSERT INTO `cms_logs` VALUES (1027, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sa/updatedata/bulan/2', 'Update table bulan', 'Update Field nama From  to Februari', 179, '2019-05-18 10:32:19', NULL);
INSERT INTO `cms_logs` VALUES (1028, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sa/updatedata/bulan/2', 'Update table bulan', 'Update Field nama_singkat From  to Feb', 179, '2019-05-18 10:32:20', NULL);
INSERT INTO `cms_logs` VALUES (1029, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-18 13:54:30', NULL);
INSERT INTO `cms_logs` VALUES (1030, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-18 13:54:47', NULL);
INSERT INTO `cms_logs` VALUES (1031, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-18 13:54:59', NULL);
INSERT INTO `cms_logs` VALUES (1032, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 179, '2019-05-18 13:58:50', NULL);
INSERT INTO `cms_logs` VALUES (1033, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/m_krj/add-save', 'Add New Data  at Master Pekerjaan', '', 179, '2019-05-18 14:25:50', NULL);
INSERT INTO `cms_logs` VALUES (1034, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/edit-save/55', 'Update data  at Sub Detail Pekerjaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tanggal</td><td>2019-01-01</td><td>2019-01-02</td></tr></tbody></table>', 179, '2019-05-18 14:29:11', NULL);
INSERT INTO `cms_logs` VALUES (1035, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/edit-save/55', 'Update data  at Sub Detail Pekerjaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tanggal</td><td>2019-01-02</td><td>2019-01-01</td></tr></tbody></table>', 179, '2019-05-18 14:29:57', NULL);
INSERT INTO `cms_logs` VALUES (1036, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/edit-save/55', 'Update data  at Sub Detail Pekerjaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tanggal</td><td>2019-01-01</td><td>2019-01-02</td></tr></tbody></table>', 179, '2019-05-18 14:30:21', NULL);
INSERT INTO `cms_logs` VALUES (1037, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/edit-save/55', 'Update data  at Sub Detail Pekerjaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tanggal</td><td>2019-01-02</td><td>2019-01-01</td></tr></tbody></table>', 179, '2019-05-18 14:30:33', NULL);
INSERT INTO `cms_logs` VALUES (1038, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/delete-image', 'Delete the image of 55 at Sub Detail Pekerjaan', '', 179, '2019-05-18 14:31:06', NULL);
INSERT INTO `cms_logs` VALUES (1039, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/delete-image', 'Delete the image of 55 at Sub Detail Pekerjaan', '', 179, '2019-05-18 14:31:15', NULL);
INSERT INTO `cms_logs` VALUES (1040, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/edit-save/55', 'Update data  at Sub Detail Pekerjaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>foto_sebelum</td><td></td><td>uploads/179/2019-05/45a4120e20c67ad920f8580f3455543d.png</td></tr><tr><td>foto_sesudah</td><td></td><td>uploads/179/2019-05/ba1275966d4232e847f869878830bb81.jpg</td></tr></tbody></table>', 179, '2019-05-18 14:31:24', NULL);
INSERT INTO `cms_logs` VALUES (1041, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/delete-image', 'Delete the image of 82 at Sub Detail Pekerjaan', '', 179, '2019-05-18 14:32:20', NULL);
INSERT INTO `cms_logs` VALUES (1042, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/delete-image', 'Delete the image of 82 at Sub Detail Pekerjaan', '', 179, '2019-05-18 14:32:24', NULL);
INSERT INTO `cms_logs` VALUES (1043, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/edit-save/82', 'Update data  at Sub Detail Pekerjaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>foto_sebelum</td><td></td><td>uploads/179/2019-05/45a4120e20c67ad920f8580f3455543d.png</td></tr><tr><td>foto_sesudah</td><td></td><td>uploads/179/2019-05/ba1275966d4232e847f869878830bb81.jpg</td></tr></tbody></table>', 179, '2019-05-18 14:32:34', NULL);
INSERT INTO `cms_logs` VALUES (1044, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 179, '2019-05-18 14:34:18', NULL);
INSERT INTO `cms_logs` VALUES (1045, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-19 01:22:01', NULL);
INSERT INTO `cms_logs` VALUES (1046, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-19 01:24:31', NULL);
INSERT INTO `cms_logs` VALUES (1047, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-19 01:24:39', NULL);
INSERT INTO `cms_logs` VALUES (1048, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/delete/32', 'Delete data Dokumentasi Pekerjaan Rutin at Menu Management', '', 1, '2019-05-19 02:04:07', NULL);
INSERT INTO `cms_logs` VALUES (1049, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/33', 'Update data Dokumentasi Pekerjaan Rutin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>31</td><td></td></tr></tbody></table>', 1, '2019-05-19 04:29:53', NULL);
INSERT INTO `cms_logs` VALUES (1050, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-19 04:30:12', NULL);
INSERT INTO `cms_logs` VALUES (1051, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-19 04:34:20', NULL);
INSERT INTO `cms_logs` VALUES (1052, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 79, '2019-05-19 04:34:55', NULL);
INSERT INTO `cms_logs` VALUES (1053, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-19 04:35:46', NULL);
INSERT INTO `cms_logs` VALUES (1054, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 79, '2019-05-19 04:37:36', NULL);
INSERT INTO `cms_logs` VALUES (1055, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-19 04:37:45', NULL);
INSERT INTO `cms_logs` VALUES (1056, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-19 04:38:22', NULL);
INSERT INTO `cms_logs` VALUES (1057, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-19 04:38:30', NULL);
INSERT INTO `cms_logs` VALUES (1058, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-19 10:19:05', NULL);
INSERT INTO `cms_logs` VALUES (1059, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/photo_rutin', 'Try view the data :name at Dokumentasi Pekerjaan Rutin', '', 179, '2019-05-19 12:45:49', NULL);
INSERT INTO `cms_logs` VALUES (1060, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 179, '2019-05-19 12:45:59', NULL);
INSERT INTO `cms_logs` VALUES (1061, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-19 12:46:09', NULL);
INSERT INTO `cms_logs` VALUES (1062, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/menu_management/edit-save/34', 'Update data Dokumentasi Complain at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>31</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-05-19 12:49:27', NULL);
INSERT INTO `cms_logs` VALUES (1063, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-19 12:49:38', NULL);
INSERT INTO `cms_logs` VALUES (1064, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-19 12:50:22', NULL);
INSERT INTO `cms_logs` VALUES (1065, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dok_complain', 'Try view the data :name at Dokumentasi Complain', '', 79, '2019-05-19 12:53:41', NULL);
INSERT INTO `cms_logs` VALUES (1066, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-19 12:55:42', NULL);
INSERT INTO `cms_logs` VALUES (1067, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/dok_complain', 'Try view the data :name at Dokumentasi Complain', '', 79, '2019-05-19 13:29:58', NULL);
INSERT INTO `cms_logs` VALUES (1068, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 79, '2019-05-19 13:30:28', NULL);
INSERT INTO `cms_logs` VALUES (1069, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-19 13:30:39', NULL);
INSERT INTO `cms_logs` VALUES (1070, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-20 04:32:29', NULL);
INSERT INTO `cms_logs` VALUES (1071, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-20 13:51:27', NULL);
INSERT INTO `cms_logs` VALUES (1072, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 79, '2019-05-21 02:05:50', NULL);
INSERT INTO `cms_logs` VALUES (1073, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 79, '2019-05-21 07:32:03', NULL);
INSERT INTO `cms_logs` VALUES (1074, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-21 07:32:14', NULL);
INSERT INTO `cms_logs` VALUES (1075, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/delete-image', 'Delete the image of 56 at Sub Detail Pekerjaan', '', 179, '2019-05-21 07:40:56', NULL);
INSERT INTO `cms_logs` VALUES (1076, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/delete-image', 'Delete the image of 56 at Sub Detail Pekerjaan', '', 179, '2019-05-21 07:41:01', NULL);
INSERT INTO `cms_logs` VALUES (1077, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-22 13:12:56', NULL);
INSERT INTO `cms_logs` VALUES (1078, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 179, '2019-05-22 13:15:42', NULL);
INSERT INTO `cms_logs` VALUES (1079, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-22 13:15:49', NULL);
INSERT INTO `cms_logs` VALUES (1080, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-22 13:52:31', NULL);
INSERT INTO `cms_logs` VALUES (1081, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-22 13:56:17', NULL);
INSERT INTO `cms_logs` VALUES (1082, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/edit-save/56', 'Update data  at Sub Detail Pekerjaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>foto_sebelum</td><td></td><td>uploads/179/2019-05/after_1557928983_5cdc1c17c3edc.jpg</td></tr><tr><td>foto_sesudah</td><td></td><td>uploads/179/2019-05/after_1557930337_5cdc21614eade.png</td></tr><tr><td>status_kirim</td><td>0</td><td></td></tr></tbody></table>', 179, '2019-05-22 14:30:35', NULL);
INSERT INTO `cms_logs` VALUES (1083, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/sub_detail_pekerjaan/edit-save/56', 'Update data  at Sub Detail Pekerjaan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>foto_sebelum</td><td></td><td>uploads/179/2019-05/after_1557921903_5cdc006f1c750.jpg</td></tr><tr><td>foto_sesudah</td><td></td><td>uploads/179/2019-05/after_1557930337_5cdc21614eade.png</td></tr><tr><td>status_kirim</td><td>0</td><td></td></tr></tbody></table>', 179, '2019-05-22 15:00:58', NULL);
INSERT INTO `cms_logs` VALUES (1084, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-23 00:34:02', NULL);
INSERT INTO `cms_logs` VALUES (1085, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-24 07:33:53', NULL);
INSERT INTO `cms_logs` VALUES (1086, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-24 07:40:26', NULL);
INSERT INTO `cms_logs` VALUES (1087, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 179, '2019-05-24 07:40:34', NULL);
INSERT INTO `cms_logs` VALUES (1088, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 179, '2019-05-24 08:56:08', NULL);
INSERT INTO `cms_logs` VALUES (1089, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/loginfromemail/sa/password', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-24 09:16:15', NULL);
INSERT INTO `cms_logs` VALUES (1090, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/loginfromemail/SA.Bogor/123456/\'m_penilaian\'', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:20:02', NULL);
INSERT INTO `cms_logs` VALUES (1091, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/loginfromemail/SA.Bogor/123456', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:21:34', NULL);
INSERT INTO `cms_logs` VALUES (1092, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/loginfromemail/SA.Bogor/123456', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:21:52', NULL);
INSERT INTO `cms_logs` VALUES (1093, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 134, '2019-05-24 09:22:23', NULL);
INSERT INTO `cms_logs` VALUES (1094, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:22:30', NULL);
INSERT INTO `cms_logs` VALUES (1095, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 134, '2019-05-24 09:22:46', NULL);
INSERT INTO `cms_logs` VALUES (1096, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-24 09:22:53', NULL);
INSERT INTO `cms_logs` VALUES (1097, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-24 09:23:48', NULL);
INSERT INTO `cms_logs` VALUES (1098, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:23:55', NULL);
INSERT INTO `cms_logs` VALUES (1099, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 134, '2019-05-24 09:27:27', NULL);
INSERT INTO `cms_logs` VALUES (1100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:27:33', NULL);
INSERT INTO `cms_logs` VALUES (1101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 134, '2019-05-24 09:28:46', NULL);
INSERT INTO `cms_logs` VALUES (1102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/loginfromemail/SA.Bogor/123456', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:35:06', NULL);
INSERT INTO `cms_logs` VALUES (1103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 134, '2019-05-24 09:35:56', NULL);
INSERT INTO `cms_logs` VALUES (1104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/loginfromemail/SA.Bogor/123456', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:36:04', NULL);
INSERT INTO `cms_logs` VALUES (1105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 134, '2019-05-24 09:36:27', NULL);
INSERT INTO `cms_logs` VALUES (1106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-24 09:36:35', NULL);
INSERT INTO `cms_logs` VALUES (1107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-24 09:39:33', NULL);
INSERT INTO `cms_logs` VALUES (1108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 141, '2019-05-24 09:39:42', NULL);
INSERT INTO `cms_logs` VALUES (1109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 141, '2019-05-24 09:42:09', NULL);
INSERT INTO `cms_logs` VALUES (1110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 158, '2019-05-24 09:42:14', NULL);
INSERT INTO `cms_logs` VALUES (1111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/loginfromemail/SA.Bogor/123456', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:43:06', NULL);
INSERT INTO `cms_logs` VALUES (1112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 134, '2019-05-24 09:46:48', NULL);
INSERT INTO `cms_logs` VALUES (1113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/loginfromemail/SA.Bogor/123456/1', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 134, '2019-05-24 09:48:55', NULL);
INSERT INTO `cms_logs` VALUES (1114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 134, '2019-05-24 09:49:04', NULL);
INSERT INTO `cms_logs` VALUES (1115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-24 09:49:19', NULL);
INSERT INTO `cms_logs` VALUES (1116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 126, '2019-05-24 09:49:38', NULL);
INSERT INTO `cms_logs` VALUES (1117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 126, '2019-05-24 09:56:19', NULL);
INSERT INTO `cms_logs` VALUES (1118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-24 09:56:24', NULL);
INSERT INTO `cms_logs` VALUES (1119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-24 09:56:45', NULL);
INSERT INTO `cms_logs` VALUES (1120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/4', 'Update data PenilaianSla at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Yth Bpk/Ibu,</p>\r\n<p>[nama_sa]</p> \r\n<p>[jabatan]</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode [bulan] [tahun] sebagai berikut :</p>\r\n\r\n<p> LOKASI : <b>[lokasi]</b><br></p>\r\n<p> PELAKSANAAN 	: [pelaksanaan]</p>\r\n<p> PENCAPAIAN : [pencapaian]</p>\r\n\r\n<p> Klik tautan berikut [link]<br></p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p></td><td><p>Yth Bpk/Ibu,</p>\r\n<p>[nama_sa]</p> \r\n<p>[jabatan]</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode [bulan] [tahun] sebagai berikut :</p>\r\n\r\n<p> LOKASI : <b>[lokasi]</b><br></p>\r\n<p> PELAKSANAAN 	: [pelaksanaan]</p>\r\n<p> PENCAPAIAN : [pencapaian]</p>\r\n\r\n<p> Klik tautan berikut <a href=\"[link]\" target=\"_blank\">[link]</a><br></p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p></td></tr><tr><td>from_email</td><td>fms.pgnmas@gmail.com</td><td>donotreply@pgnmas.co.id</td></tr></tbody></table>', 1, '2019-05-24 09:58:40', NULL);
INSERT INTO `cms_logs` VALUES (1121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/logout', 'tezadwiaditya@yahoo.co.id logout', '', 1, '2019-05-24 09:58:45', NULL);
INSERT INTO `cms_logs` VALUES (1122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 126, '2019-05-24 10:02:14', NULL);
INSERT INTO `cms_logs` VALUES (1123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 126, '2019-05-24 10:02:37', NULL);
INSERT INTO `cms_logs` VALUES (1124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/login', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 1, '2019-05-24 10:09:25', NULL);
INSERT INTO `cms_logs` VALUES (1125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'http://127.0.0.1:8000/pgnmas/email_templates/edit-save/4', 'Update data PenilaianSla at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Yth Bpk/Ibu,</p>\r\n<p>[nama_sa]</p> \r\n<p>[jabatan]</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode [bulan] [tahun] sebagai berikut :</p>\r\n\r\n<p> LOKASI : <b>[lokasi]</b><br></p>\r\n<p> PELAKSANAAN 	: [pelaksanaan]</p>\r\n<p> PENCAPAIAN : [pencapaian]</p>\r\n\r\n<p> Klik tautan berikut <a href=\"[link]\" target=\"_blank\">[link]</a><br></p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p></td><td><p>Yth Bpk/Ibu,</p>\r\n<p>[nama_sa]</p> \r\n<p>[jabatan]</p>\r\n\r\n<p>PGNMAS telah menyelesaikan ceklist pelaksanaan SLA Pengelolaan Gedung Periode [bulan] [tahun] sebagai berikut :</p>\r\n\r\n<p> LOKASI : <b>[lokasi]</b><br></p>\r\n<p> PELAKSANAAN 	: [pelaksanaan]</p>\r\n<p> PENCAPAIAN : [pencapaian]</p>\r\n\r\n<p> Klik tautan berikut <a href=\"[link]\" target=\"_blank\">link</a><br></p>	\r\n\r\n<p> Atas review dan persetujuan dari Bapak/Ibu kami ucapkan terimakasih</p>\r\n\r\n<p>Catatan :</p>\r\n<p>Email ini dikirim secara otomatis by system\r\nMohon untuk tidak mereply</p></td></tr></tbody></table>', 1, '2019-05-24 10:10:44', NULL);
INSERT INTO `cms_logs` VALUES (1126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 126, '2019-05-24 10:10:59', NULL);
INSERT INTO `cms_logs` VALUES (1127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/mnilai/add-save', 'Add New Data  at Master Penilaian', '', 126, '2019-05-24 10:11:13', NULL);
INSERT INTO `cms_logs` VALUES (1128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'http://127.0.0.1:8000/pgnmas/loginfromemail/LFM4/123456/41', 'tezadwiaditya@yahoo.co.id login with IP Address 127.0.0.1', '', 158, '2019-05-24 10:16:17', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES (1, 'SLA', 'Route', 'AdminSlaControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 1, '2019-02-09 03:38:22', '2019-03-21 08:19:50');
INSERT INTO `cms_menus` VALUES (2, 'Detail SLA', 'Route', 'AdminDslaControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 2, '2019-02-09 03:45:19', '2019-03-21 08:19:59');
INSERT INTO `cms_menus` VALUES (3, 'Master Aset', 'Route', 'AdminAsetControllerGetIndex', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 5, '2019-02-09 04:41:31', '2019-04-22 10:42:05');
INSERT INTO `cms_menus` VALUES (4, 'Work Order', 'URL', '#', 'normal', 'fa fa-th', 0, 1, 0, 1, 2, '2019-02-09 05:49:43', '2019-05-15 02:06:15');
INSERT INTO `cms_menus` VALUES (5, 'Rutin Terencana', 'URL', '#', 'normal', 'fa fa-th', 4, 1, 0, 1, 1, '2019-02-09 05:50:39', '2019-04-23 03:54:50');
INSERT INTO `cms_menus` VALUES (6, 'Setting SLA Aset', 'Route', 'AdminSaControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 3, '2019-02-09 11:05:15', '2019-03-21 08:20:11');
INSERT INTO `cms_menus` VALUES (7, 'Rutin  Non Rutin Terencana', 'URL', '#', 'normal', 'fa fa-th', 4, 1, 0, 1, 2, '2019-02-09 11:54:29', '2019-04-23 03:48:49');
INSERT INTO `cms_menus` VALUES (8, 'Complain', 'Route', 'AdminComplainControllerGetIndex', 'normal', 'fa fa-th-list', 7, 1, 0, 1, 1, '2019-02-09 11:55:02', '2019-04-23 03:49:01');
INSERT INTO `cms_menus` VALUES (9, 'Request', 'Route', 'AdminRequestControllerGetIndex', 'normal', 'fa fa-th-list', 7, 1, 0, 1, 2, '2019-02-09 13:13:04', '2019-04-23 03:49:14');
INSERT INTO `cms_menus` VALUES (10, 'Setting Ketersediaan', 'Route', 'AdminSdasetControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 4, '2019-02-09 13:28:50', '2019-03-21 08:20:21');
INSERT INTO `cms_menus` VALUES (11, 'Regional', 'Route', 'AdminRegControllerGetIndex', NULL, 'fa fa-th-list', 14, 1, 0, 1, 3, '2019-02-12 05:00:54', NULL);
INSERT INTO `cms_menus` VALUES (12, 'Wilayah', 'Route', 'AdminWilControllerGetIndex', NULL, 'fa fa-th-list', 14, 1, 0, 1, 4, '2019-02-12 05:02:18', NULL);
INSERT INTO `cms_menus` VALUES (13, 'Area', 'Route', 'AdminAreaControllerGetIndex', NULL, 'fa fa-th-list', 14, 1, 0, 1, 5, '2019-02-12 05:31:52', NULL);
INSERT INTO `cms_menus` VALUES (14, 'Referensi', 'URL', '#', 'normal', 'fa fa-th', 0, 1, 0, 1, 7, '2019-02-12 06:54:40', NULL);
INSERT INTO `cms_menus` VALUES (15, 'Frekuensi', 'Route', 'AdminFrekuensiControllerGetIndex', NULL, 'fa fa-glass', 14, 1, 0, 1, 1, '2019-02-12 08:21:46', NULL);
INSERT INTO `cms_menus` VALUES (16, 'User Aset', 'Route', 'AdminUaControllerGetIndex', NULL, 'fa fa-th-list', 14, 1, 0, 1, 2, '2019-02-12 15:37:12', NULL);
INSERT INTO `cms_menus` VALUES (18, 'Penilaian SLA', 'Route', 'AdminMnilaiControllerGetIndex', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 3, '2019-02-12 17:23:24', '2019-04-09 06:49:10');
INSERT INTO `cms_menus` VALUES (20, 'Utilitas', 'URL', '#', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 4, '2019-02-13 00:50:02', '2019-04-09 06:41:43');
INSERT INTO `cms_menus` VALUES (21, 'Listrik', 'Module', 'master_listrik', 'normal', 'fa fa-th-list', 20, 1, 0, 1, 1, '2019-02-13 00:50:37', '2019-05-14 14:54:34');
INSERT INTO `cms_menus` VALUES (22, 'Air', 'Route', 'AdminAirControllerGetIndex', 'normal', 'fa fa-th-list', 20, 1, 0, 1, 2, '2019-02-13 00:51:07', '2019-04-09 06:42:28');
INSERT INTO `cms_menus` VALUES (23, 'Solar', 'Route', 'AdminSolarControllerGetIndex', 'normal', 'fa fa-th-list', 20, 1, 0, 1, 3, '2019-02-13 00:51:39', '2019-04-09 06:42:49');
INSERT INTO `cms_menus` VALUES (24, 'Limbah', 'Route', 'AdminLimbahControllerGetIndex', 'normal', 'fa fa-table', 20, 1, 0, 1, 4, '2019-02-13 00:51:58', '2019-04-09 06:43:12');
INSERT INTO `cms_menus` VALUES (25, 'Tindaklanjut Leader', 'Module', 'm_krj', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 6, '2019-04-07 08:50:20', '2019-04-09 00:32:10');
INSERT INTO `cms_menus` VALUES (27, 'Jadwal Pekerjaan', 'Module', 'master_jadwal_sla', 'normal', 'fa fa-calendar', 5, 1, 0, 1, 5, '2019-05-02 06:40:01', NULL);
INSERT INTO `cms_menus` VALUES (28, 'Dashboard Halomas', 'Route', 'DashboardHalomas', 'normal', 'fa fa-dashboard', 0, 1, 0, 1, 1, '2019-05-07 06:03:36', '2019-05-07 06:05:46');
INSERT INTO `cms_menus` VALUES (29, 'User Management', 'Module', 'users', 'normal', 'fa fa-users', 0, 1, 0, 1, 8, '2019-05-14 12:22:40', '2019-05-14 12:23:22');
INSERT INTO `cms_menus` VALUES (30, 'listrik', 'Route', 'AdminMasterListrikControllerGetIndex', NULL, 'fa fa-th-list', 0, 1, 0, 1, 9, '2019-05-14 14:52:45', NULL);
INSERT INTO `cms_menus` VALUES (31, 'Dokumentasi', 'URL', '#', 'normal', 'fa fa-photo', 0, 1, 0, 1, 6, '2019-05-18 10:14:27', NULL);
INSERT INTO `cms_menus` VALUES (33, 'Dokumentasi Pekerjaan Rutin', 'Route', 'AdminPhotoRutinControllerGetIndex', 'normal', 'fa fa-file-photo-o', 31, 1, 0, 1, 1, '2019-05-19 02:01:55', '2019-05-19 04:29:51');
INSERT INTO `cms_menus` VALUES (34, 'Dokumentasi Complain', 'Route', 'AdminDokComplainControllerGetIndex', 'normal', 'fa fa-photo', 31, 1, 0, 1, 2, '2019-05-19 12:48:11', '2019-05-19 12:49:25');

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 288 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
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
INSERT INTO `cms_menus_privileges` VALUES (109, 25, 8);
INSERT INTO `cms_menus_privileges` VALUES (110, 25, 6);
INSERT INTO `cms_menus_privileges` VALUES (111, 25, 1);
INSERT INTO `cms_menus_privileges` VALUES (112, 20, 8);
INSERT INTO `cms_menus_privileges` VALUES (113, 20, 5);
INSERT INTO `cms_menus_privileges` VALUES (114, 20, 6);
INSERT INTO `cms_menus_privileges` VALUES (115, 20, 1);
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
INSERT INTO `cms_menus_privileges` VALUES (136, 18, 5);
INSERT INTO `cms_menus_privileges` VALUES (137, 18, 7);
INSERT INTO `cms_menus_privileges` VALUES (138, 18, 1);
INSERT INTO `cms_menus_privileges` VALUES (145, 3, 8);
INSERT INTO `cms_menus_privileges` VALUES (146, 3, 2);
INSERT INTO `cms_menus_privileges` VALUES (147, 3, 4);
INSERT INTO `cms_menus_privileges` VALUES (148, 3, 3);
INSERT INTO `cms_menus_privileges` VALUES (149, 3, 1);
INSERT INTO `cms_menus_privileges` VALUES (164, 7, 5);
INSERT INTO `cms_menus_privileges` VALUES (165, 7, 4);
INSERT INTO `cms_menus_privileges` VALUES (166, 7, 6);
INSERT INTO `cms_menus_privileges` VALUES (167, 7, 1);
INSERT INTO `cms_menus_privileges` VALUES (168, 7, 9);
INSERT INTO `cms_menus_privileges` VALUES (169, 8, 8);
INSERT INTO `cms_menus_privileges` VALUES (170, 8, 5);
INSERT INTO `cms_menus_privileges` VALUES (171, 8, 4);
INSERT INTO `cms_menus_privileges` VALUES (172, 8, 6);
INSERT INTO `cms_menus_privileges` VALUES (173, 8, 1);
INSERT INTO `cms_menus_privileges` VALUES (174, 8, 9);
INSERT INTO `cms_menus_privileges` VALUES (175, 9, 8);
INSERT INTO `cms_menus_privileges` VALUES (176, 9, 5);
INSERT INTO `cms_menus_privileges` VALUES (177, 9, 4);
INSERT INTO `cms_menus_privileges` VALUES (178, 9, 6);
INSERT INTO `cms_menus_privileges` VALUES (179, 9, 1);
INSERT INTO `cms_menus_privileges` VALUES (180, 9, 9);
INSERT INTO `cms_menus_privileges` VALUES (181, 5, 8);
INSERT INTO `cms_menus_privileges` VALUES (182, 5, 5);
INSERT INTO `cms_menus_privileges` VALUES (183, 5, 4);
INSERT INTO `cms_menus_privileges` VALUES (184, 5, 6);
INSERT INTO `cms_menus_privileges` VALUES (185, 5, 3);
INSERT INTO `cms_menus_privileges` VALUES (186, 5, 7);
INSERT INTO `cms_menus_privileges` VALUES (187, 5, 1);
INSERT INTO `cms_menus_privileges` VALUES (188, 5, 9);
INSERT INTO `cms_menus_privileges` VALUES (197, 26, 1);
INSERT INTO `cms_menus_privileges` VALUES (198, 27, 8);
INSERT INTO `cms_menus_privileges` VALUES (199, 27, 2);
INSERT INTO `cms_menus_privileges` VALUES (200, 27, 5);
INSERT INTO `cms_menus_privileges` VALUES (201, 27, 3);
INSERT INTO `cms_menus_privileges` VALUES (202, 27, 1);
INSERT INTO `cms_menus_privileges` VALUES (233, 28, 8);
INSERT INTO `cms_menus_privileges` VALUES (234, 28, 2);
INSERT INTO `cms_menus_privileges` VALUES (235, 28, 10);
INSERT INTO `cms_menus_privileges` VALUES (236, 28, 5);
INSERT INTO `cms_menus_privileges` VALUES (237, 28, 4);
INSERT INTO `cms_menus_privileges` VALUES (238, 28, 6);
INSERT INTO `cms_menus_privileges` VALUES (239, 28, 3);
INSERT INTO `cms_menus_privileges` VALUES (240, 28, 7);
INSERT INTO `cms_menus_privileges` VALUES (241, 28, 1);
INSERT INTO `cms_menus_privileges` VALUES (242, 28, 9);
INSERT INTO `cms_menus_privileges` VALUES (244, 29, 8);
INSERT INTO `cms_menus_privileges` VALUES (245, 29, 1);
INSERT INTO `cms_menus_privileges` VALUES (246, 30, 1);
INSERT INTO `cms_menus_privileges` VALUES (247, 21, 8);
INSERT INTO `cms_menus_privileges` VALUES (248, 21, 5);
INSERT INTO `cms_menus_privileges` VALUES (249, 21, 6);
INSERT INTO `cms_menus_privileges` VALUES (250, 21, 1);
INSERT INTO `cms_menus_privileges` VALUES (251, 4, 8);
INSERT INTO `cms_menus_privileges` VALUES (252, 4, 5);
INSERT INTO `cms_menus_privileges` VALUES (253, 4, 4);
INSERT INTO `cms_menus_privileges` VALUES (254, 4, 6);
INSERT INTO `cms_menus_privileges` VALUES (255, 4, 3);
INSERT INTO `cms_menus_privileges` VALUES (256, 4, 1);
INSERT INTO `cms_menus_privileges` VALUES (257, 4, 9);
INSERT INTO `cms_menus_privileges` VALUES (258, 31, 8);
INSERT INTO `cms_menus_privileges` VALUES (259, 31, 2);
INSERT INTO `cms_menus_privileges` VALUES (260, 31, 5);
INSERT INTO `cms_menus_privileges` VALUES (261, 31, 4);
INSERT INTO `cms_menus_privileges` VALUES (262, 31, 6);
INSERT INTO `cms_menus_privileges` VALUES (263, 31, 3);
INSERT INTO `cms_menus_privileges` VALUES (264, 31, 1);
INSERT INTO `cms_menus_privileges` VALUES (265, 32, 8);
INSERT INTO `cms_menus_privileges` VALUES (266, 32, 2);
INSERT INTO `cms_menus_privileges` VALUES (267, 32, 5);
INSERT INTO `cms_menus_privileges` VALUES (268, 32, 4);
INSERT INTO `cms_menus_privileges` VALUES (269, 32, 6);
INSERT INTO `cms_menus_privileges` VALUES (270, 32, 3);
INSERT INTO `cms_menus_privileges` VALUES (271, 32, 1);
INSERT INTO `cms_menus_privileges` VALUES (273, 33, 8);
INSERT INTO `cms_menus_privileges` VALUES (274, 33, 2);
INSERT INTO `cms_menus_privileges` VALUES (275, 33, 5);
INSERT INTO `cms_menus_privileges` VALUES (276, 33, 4);
INSERT INTO `cms_menus_privileges` VALUES (277, 33, 6);
INSERT INTO `cms_menus_privileges` VALUES (278, 33, 3);
INSERT INTO `cms_menus_privileges` VALUES (279, 33, 1);
INSERT INTO `cms_menus_privileges` VALUES (281, 34, 8);
INSERT INTO `cms_menus_privileges` VALUES (282, 34, 2);
INSERT INTO `cms_menus_privileges` VALUES (283, 34, 5);
INSERT INTO `cms_menus_privileges` VALUES (284, 34, 4);
INSERT INTO `cms_menus_privileges` VALUES (285, 34, 6);
INSERT INTO `cms_menus_privileges` VALUES (286, 34, 3);
INSERT INTO `cms_menus_privileges` VALUES (287, 34, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
INSERT INTO `cms_moduls` VALUES (24, 'listrik', 'fa fa-gear', 'listrik', 'master_listrik', 'AdminListrikController', 0, 0, '2019-03-22 12:48:16', NULL, '2019-05-14 14:51:37');
INSERT INTO `cms_moduls` VALUES (25, 'Limbah', 'fa fa-gear', 'limbah', 'master_limbah', 'AdminLimbahController', 0, 0, '2019-04-01 14:41:32', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (26, 'Solar', 'fa fa-glass', 'Solar', 'master_solar', 'AdminSolarController', 0, 0, '2019-04-01 14:41:32', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (27, 'Air', 'fa fa-glass', 'Air', 'master_air', 'AdminAirController', 0, 0, '2019-04-01 14:42:49', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (28, 'Detail Penilaian', 'fa fa-th-list', 'detail_nilai', 'detail_penilaian', 'AdminDetailNilaiController', 0, 0, '2019-04-07 01:39:24', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (29, 'Master Pekerjaan', 'fa fa-th-list', 'pekerjaan', 'm_penilaian', 'AdminPekerjaanController', 0, 0, '2019-04-07 10:42:49', NULL, '2019-04-09 00:31:04');
INSERT INTO `cms_moduls` VALUES (30, 'Detail Pekerjaan', 'fa fa-th-list', 'detail_pekerjaan', 'detail_pekerjaan', 'AdminDetailPekerjaanController', 0, 0, '2019-04-07 10:50:09', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (31, 'Master Pekerjaan', 'fa fa-th-list', 'm_krj', 'm_pekerjaan', 'AdminMKrjController', 0, 0, '2019-04-09 00:28:41', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (32, 'Complain', 'fa fa-glass', 'complain', 'complain', 'AdminComplainController', 0, 0, '2019-04-18 07:17:11', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (33, 'Request', 'fa fa-glass', 'request', 'request', 'AdminRequestController', 0, 0, '2019-04-18 07:42:02', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (34, 'Tindaklanjut Complain', 'fa fa-th-list', 'tindaklanjut_complain', 'tindaklanjut_complain', 'AdminTindaklanjutComplainController', 0, 0, '2019-04-30 01:03:36', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (35, 'Sub Detail Pekerjaan', 'fa fa-th-list', 'sub_detail_pekerjaan', 'sub_detail_pekerjaan', 'AdminSubDetailPekerjaanController', 0, 0, '2019-05-01 13:39:56', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (36, 'Master Jadwal SLA', 'fa fa-th-list', 'master_jadwal_sla', 'master_jadwal_sla', 'AdminMasterJadwalSlaController', 0, 0, '2019-05-02 06:23:19', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (37, 'listrik', 'fa fa-th-list', 'master_listrik', 'master_listrik', 'AdminMasterListrikController', 0, 0, '2019-05-14 14:52:45', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (38, 'Dokumentasi Pekerjaan Rutin', 'fa fa-file-photo-o', 'photo_rutin', 'dokumentasi_pekerjaan', 'AdminPhotoRutinController', 0, 0, '2019-05-19 02:01:55', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (39, 'Dokumentasi Complain', 'fa fa-photo', 'dok_complain', 'dokumentasi_pekerjaan', 'AdminDokComplainController', 0, 0, '2019-05-19 12:48:10', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------
INSERT INTO `cms_notifications` VALUES (1, 35, 'Complain Baru', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-06 06:25:59', NULL);
INSERT INTO `cms_notifications` VALUES (2, 35, 'Complain Baru', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-06 06:28:08', NULL);
INSERT INTO `cms_notifications` VALUES (3, 35, 'Complain Baru', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-06 06:29:22', NULL);
INSERT INTO `cms_notifications` VALUES (4, 35, 'Complain Baru', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-06 06:34:26', NULL);
INSERT INTO `cms_notifications` VALUES (5, 35, 'Complain Baru', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-06 06:35:47', NULL);
INSERT INTO `cms_notifications` VALUES (6, 35, 'Complain Baru', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-06 06:36:42', NULL);
INSERT INTO `cms_notifications` VALUES (7, 35, 'Complain Baru', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-07 01:01:10', NULL);
INSERT INTO `cms_notifications` VALUES (8, 35, 'Complain Baru No. WO-0025', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-07 02:13:46', NULL);
INSERT INTO `cms_notifications` VALUES (9, 35, 'Complain Baru No. WO-0026', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-07 03:06:47', NULL);
INSERT INTO `cms_notifications` VALUES (10, 35, 'Complain Baru No. WO-0027', 'http://127.0.0.1:8000/pgnmas/complain', 0, '2019-05-07 04:03:31', NULL);
INSERT INTO `cms_notifications` VALUES (11, 35, 'Complain Baru No. WO-0028', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-07 04:09:32', NULL);
INSERT INTO `cms_notifications` VALUES (12, 35, 'Complain Baru No. WO-0029', 'http://127.0.0.1:8000/pgnmas/complain', 0, '2019-05-07 04:38:55', NULL);
INSERT INTO `cms_notifications` VALUES (13, 35, 'Complain Baru No. WO-0030', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-07 13:26:47', NULL);
INSERT INTO `cms_notifications` VALUES (14, 35, 'Complain Baru No. WO-0031', 'http://127.0.0.1:8000/pgnmas/complain', 0, '2019-05-09 00:43:03', NULL);
INSERT INTO `cms_notifications` VALUES (15, 35, 'Complain Baru No. WO-0032', 'http://127.0.0.1:8000/pgnmas/complain', 0, '2019-05-10 00:39:34', NULL);
INSERT INTO `cms_notifications` VALUES (16, 35, 'Complain Baru No. WO-0033', 'http://127.0.0.1:8000/pgnmas/complain', 0, '2019-05-10 01:11:43', NULL);
INSERT INTO `cms_notifications` VALUES (17, 35, 'Complain Baru No. WO-0034', 'http://127.0.0.1:8000/pgnmas/complain', 0, '2019-05-10 01:13:23', NULL);
INSERT INTO `cms_notifications` VALUES (18, 35, 'Complain Baru No. WO-0035', 'http://127.0.0.1:8000/pgnmas/complain', 0, '2019-05-10 06:14:16', NULL);
INSERT INTO `cms_notifications` VALUES (19, 158, 'Form Penilaian SLA Baru : Period Tahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/172', 0, '2019-05-15 02:02:30', NULL);
INSERT INTO `cms_notifications` VALUES (20, 158, 'Form Penilaian SLA Baru : Period Tahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/172', 0, '2019-05-15 03:13:12', NULL);
INSERT INTO `cms_notifications` VALUES (21, 158, 'Form Penilaian SLA Baru : Period Tahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/172', 0, '2019-05-15 03:16:04', NULL);
INSERT INTO `cms_notifications` VALUES (22, 158, 'Form Penilaian SLA Baru : Period Tahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/173', 0, '2019-05-15 06:56:24', NULL);
INSERT INTO `cms_notifications` VALUES (23, 79, 'Complain Baru No. WO-0036', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-15 11:31:11', NULL);
INSERT INTO `cms_notifications` VALUES (24, 79, 'Complain Baru No. WO-0037', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-15 13:45:16', NULL);
INSERT INTO `cms_notifications` VALUES (25, 158, 'Form Penilaian SLA Baru : Period Tahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/174', 0, '2019-05-15 15:08:39', NULL);
INSERT INTO `cms_notifications` VALUES (26, 158, 'Form Penilaian SLA Baru : Period Tahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/174', 0, '2019-05-15 15:11:48', NULL);
INSERT INTO `cms_notifications` VALUES (27, 158, 'Form Penilaian SLA Baru : Period Tahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/1', 0, '2019-05-16 01:28:14', NULL);
INSERT INTO `cms_notifications` VALUES (28, 158, 'Form Penilaian SLA Baru : Period FebruariTahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/2', 0, '2019-05-17 05:52:06', NULL);
INSERT INTO `cms_notifications` VALUES (29, 79, 'Complain Baru No. WO-0038', 'http://127.0.0.1:8000/pgnmas/complain', 0, '2019-05-19 04:33:24', NULL);
INSERT INTO `cms_notifications` VALUES (30, 79, 'Complain Baru No. WO-0039', 'http://127.0.0.1:8000/pgnmas/complain', 1, '2019-05-19 04:35:37', NULL);
INSERT INTO `cms_notifications` VALUES (31, 158, 'Form Penilaian SLA Baru : Period MaretTahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/39', 0, '2019-05-24 09:49:59', NULL);
INSERT INTO `cms_notifications` VALUES (32, 158, 'Form Penilaian SLA Baru : Period JanuariTahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/40', 0, '2019-05-24 10:02:49', NULL);
INSERT INTO `cms_notifications` VALUES (33, 158, 'Form Penilaian SLA Baru : Period JanuariTahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/42', 0, '2019-05-24 10:12:07', NULL);
INSERT INTO `cms_notifications` VALUES (34, 158, 'Form Penilaian SLA Baru : Period FebruariTahun 2019', 'http://127.0.0.1:8000/pgnmas//mnilai/detail/41', 0, '2019-05-24 10:15:57', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
INSERT INTO `cms_privileges` VALUES (10, 'HaloMas', 0, 'skin-green-light', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 345 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
INSERT INTO `cms_privileges_roles` VALUES (70, 1, 1, 1, 1, 1, 1, 20, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (81, 1, 1, 1, 1, 1, 1, 21, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (82, 1, 1, 1, 1, 1, 1, 22, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (83, 1, 1, 1, 1, 1, 1, 23, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (84, 1, 1, 1, 1, 1, 1, 24, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (97, 1, 1, 1, 1, 1, 1, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (98, 1, 1, 1, 1, 1, 1, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (117, 1, 1, 1, 1, 1, 1, 28, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (123, 1, 1, 1, 1, 1, 1, 29, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (124, 1, 1, 1, 1, 1, 1, 30, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (125, 1, 1, 1, 1, 1, 1, 31, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (147, 1, 1, 1, 1, 1, 1, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (171, 1, 1, 1, 1, 1, 1, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (206, 1, 1, 1, 1, 1, 9, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (207, 1, 1, 1, 1, 1, 9, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (208, 1, 1, 1, 1, 1, 1, 34, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (209, 1, 1, 1, 1, 1, 1, 35, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (210, 1, 1, 1, 1, 1, 1, 36, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (211, 1, 1, 1, 1, 1, 1, 37, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (212, 1, 1, 1, 1, 1, 1, 38, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (213, 1, 1, 1, 1, 1, 1, 34, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (225, 1, 1, 1, 1, 1, 1, 35, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (236, 1, 1, 1, 1, 1, 1, 36, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (253, 1, 1, 1, 1, 1, 1, 37, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (264, 1, 1, 1, 1, 1, 7, 23, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (265, 1, 1, 1, 1, 1, 1, 38, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (266, 1, 1, 1, 1, 1, 1, 39, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (267, 1, 1, 1, 1, 1, 8, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (268, 1, 1, 1, 1, 1, 8, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (269, 1, 1, 1, 1, 1, 8, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (270, 1, 1, 1, 1, 1, 8, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (271, 1, 1, 1, 1, 1, 8, 39, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (272, 1, 1, 1, 1, 1, 8, 38, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (273, 1, 1, 1, 1, 1, 8, 20, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (274, 1, 1, 1, 1, 1, 8, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (275, 1, 1, 1, 1, 1, 8, 25, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (276, 1, 1, 1, 1, 1, 8, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (277, 1, 1, 1, 1, 1, 8, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (278, 1, 1, 1, 1, 1, 8, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (279, 1, 1, 1, 1, 1, 8, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (280, 1, 1, 1, 1, 1, 8, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (281, 1, 1, 1, 1, 1, 8, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (282, 1, 1, 1, 1, 1, 8, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (283, 1, 1, 1, 1, 1, 6, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (284, 1, 1, 1, 1, 1, 6, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (285, 1, 1, 1, 1, 1, 6, 30, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (286, 1, 1, 1, 1, 1, 6, 39, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (287, 1, 1, 1, 1, 1, 6, 38, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (288, 1, 1, 1, 1, 1, 6, 25, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (289, 1, 1, 1, 1, 1, 6, 37, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (290, 1, 1, 1, 1, 1, 6, 31, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (291, 1, 1, 1, 1, 1, 6, 23, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (292, 1, 1, 1, 1, 1, 6, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (293, 1, 1, 1, 1, 1, 6, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (294, 1, 1, 1, 1, 1, 6, 35, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (295, 1, 1, 1, 1, 1, 5, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (296, 1, 1, 1, 1, 1, 5, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (297, 1, 1, 1, 1, 1, 5, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (298, 1, 1, 1, 1, 1, 5, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (299, 1, 1, 1, 1, 1, 5, 39, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (300, 1, 1, 1, 1, 1, 5, 38, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (301, 1, 1, 1, 1, 1, 5, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (302, 1, 1, 1, 1, 1, 5, 25, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (303, 1, 1, 1, 1, 1, 5, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (304, 1, 1, 1, 1, 1, 5, 36, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (305, 1, 1, 1, 1, 1, 5, 23, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (306, 1, 1, 1, 1, 1, 5, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (307, 1, 1, 1, 1, 1, 5, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (308, 1, 1, 1, 1, 1, 5, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (309, 1, 1, 1, 1, 1, 5, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (310, 1, 1, 1, 1, 1, 5, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (311, 1, 1, 1, 1, 1, 5, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (312, 1, 1, 1, 1, 1, 4, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (313, 1, 1, 1, 1, 1, 4, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (314, 1, 1, 1, 1, 1, 4, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (315, 1, 1, 1, 1, 1, 4, 39, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (316, 1, 1, 1, 1, 1, 4, 38, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (317, 1, 1, 1, 1, 1, 4, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (318, 1, 1, 1, 1, 1, 4, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (319, 1, 1, 1, 1, 1, 4, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (320, 1, 1, 1, 1, 1, 4, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (321, 1, 1, 1, 1, 1, 4, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (322, 1, 1, 1, 1, 1, 4, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (323, 1, 1, 1, 1, 1, 4, 34, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (324, 1, 1, 1, 1, 1, 4, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (325, 1, 1, 1, 1, 1, 3, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (326, 1, 1, 1, 1, 1, 3, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (327, 1, 1, 1, 1, 1, 3, 39, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (328, 1, 1, 1, 1, 1, 3, 38, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (329, 1, 1, 1, 1, 1, 3, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (330, 1, 1, 1, 1, 1, 3, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (331, 1, 1, 1, 1, 1, 3, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (332, 1, 1, 1, 1, 1, 3, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (333, 1, 1, 1, 1, 1, 3, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (334, 1, 1, 1, 1, 1, 3, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (335, 1, 1, 1, 1, 1, 2, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (336, 1, 1, 1, 1, 1, 2, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (337, 1, 1, 1, 1, 1, 2, 39, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (338, 1, 1, 1, 1, 1, 2, 38, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (339, 1, 1, 1, 1, 1, 2, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (340, 1, 1, 1, 1, 1, 2, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (341, 1, 1, 1, 1, 1, 2, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (342, 1, 1, 1, 1, 1, 2, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (343, 1, 1, 1, 1, 1, 2, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (344, 1, 1, 1, 1, 1, 2, 18, NULL, NULL);

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
INSERT INTO `cms_settings` VALUES (3, 'login_background_image', 'uploads/2019-05/17a427e2ed4112ca7ca1c300d21ca775.png', 'upload_image', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES (4, 'email_sender', 'fms.pgnmas@gmail.com', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES (5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES (6, 'smtp_host', 'smtp.gmail.com', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES (7, 'smtp_port', '465', 'text', NULL, 'default 25', '2019-02-07 04:18:26', NULL, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES (8, 'smtp_username', 'fms.pgnmas@gmail.com', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES (9, 'smtp_password', 'pgnmas2019@', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES (10, 'appname', 'FMS', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES (11, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-02-07 04:18:26', NULL, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES (12, 'logo', 'uploads/2019-05/577ad32c06d06bf7814c2c972ad105e6.png', 'upload_image', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES (13, 'favicon', NULL, 'upload_image', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES (14, 'api_debug_mode', 'false', 'select', 'true,false', NULL, '2019-02-07 04:18:26', NULL, 'Application Setting', 'API Debug Mode');
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------
INSERT INTO `cms_statistic_components` VALUES (1, 1, '3b089f022c8a0fa2df93c77f75c7f64c', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Complain Open\",\"icon\":\"ion-bag\",\"color\":\"bg-red\",\"link\":\"\\/pgnmas\\/complain\",\"sql\":\"Select Count(id) as value from complain where status_id = 1\"}', '2019-04-21 14:22:02', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------
INSERT INTO `cms_statistics` VALUES (1, 'test', 'test', '2019-04-21 14:21:44', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES (1, 'SA', 'Super Administrator', 'uploads/1/2019-02/avatar_372_456324.png', 'admin@crudbooster.com', '$2y$10$9mt3jqtbsdeoSCAdiGdtaOWNWcPw7Esx1GJNy2z0asXQ7W3UwqWEu', 1, '2019-02-07 04:18:24', '2019-02-12 13:44:02', 'Active');
INSERT INTO `cms_users` VALUES (79, 'korwil1', 'Bernadeta Katina', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'bernadeta1707@gmail.com', '$2y$10$G1iFq3OjaBL6BZstZe45OeVsE8Emsm3BZ6VYeXEsygqaRN0Km9eXe', 4, '2019-05-13 03:30:22', '2019-05-14 12:15:09', NULL);
INSERT INTO `cms_users` VALUES (80, 'korea1', 'Addy Prastyo', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'addy.prasetio1@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, '2019-05-13 06:06:29', '2019-05-14 12:14:53', NULL);
INSERT INTO `cms_users` VALUES (107, 'Korwil2', 'Bobby Bayu Mahardika', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'bobby.mahardika@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 4, NULL, '2019-05-14 12:14:35', NULL);
INSERT INTO `cms_users` VALUES (108, 'Korwil3', 'Dewi Rusdiyanti', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'dewi.rusdiyanti@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 4, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (109, 'Korwil4', 'Gusti Eka Mahardipa', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'gustimahardipa@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 4, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (110, 'Korwil5', 'Habib Bahri Alhakimi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'habibbahrialhakimi@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 4, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (111, 'Korwil6', 'Labudi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'labudi@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 4, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (112, 'Korwil7', 'Sigit Prayitno', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'sigitp07@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 4, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (113, 'Korea2', 'Ario Surawisena', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'ariosurawisena@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (114, 'Korea3', 'Aulia Fazrin', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'aulia.fazrin13@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (115, 'Korea4', 'Bambang Triatmaja', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'bams.triatmaja@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (116, 'Korea5', 'Demy Amelia', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'amelia.demy@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (117, 'Korea6', 'Doni Ariyanto', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'doniariyanto.koreabekasi@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (118, 'Korea7', 'Donny Ariestian', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'donnyariestian@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (119, 'Korea8', 'Hadi Susanto', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'hadisusanto628@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (120, 'Korea9', 'Hari Susanto', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'susanto.hari88@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (121, 'Korea10', 'ilmansyah', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'ilmansyah.24@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (122, 'Korea11', 'Kusnadi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'Kusnadi@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (123, 'Korea12', 'Labudi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'labudi@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (124, 'Korea13', 'Miranti', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'miranti.nurindah.s@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (125, 'Korea14', 'Koor Area', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (126, 'Korea15', 'Najihul Hibatullah', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'ibat.trafalgar@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (127, 'Korea16', 'Ramadhan Rangkuti', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'ramadhan.efendi.rangkuti@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (128, 'Korea17', 'Ridwan', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'ridwan08pgnmas@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (129, 'Korea18', 'Rizal Anami', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'rizal.qw@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (130, 'Korea19', 'Septyan Permana', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'septyan.hariyanto@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (131, 'Korea20', 'Sukemi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'sukemi@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (132, 'Korea21', 'Usep Subandi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'usep.subandi78@gmail.com ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (133, 'Korea22', 'KoorArea Sinergi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (134, 'SA.Bogor', 'Ade Sutisna', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'ade.sutisna@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (135, 'SA.Pasuruan', 'Agus Hadi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'agus.hadi@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (136, 'SA.Karawang', 'Amin Hidayat', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'amin.Hidayat@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (137, 'SA.Sidoarjo', 'Andaya Saputra', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'andaya.saputra@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (138, 'SA.Pekanbaru', 'Arief Nurrachman', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'arief.nurrachman@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (139, 'SA.Bekasi', 'Bambang Purwanto', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'bambang.purwanto@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (140, 'SA.Cilegon', 'Dini Mentari', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'dini.mentari@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (141, 'LFM1', 'Efi Mudzalifah', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'efi.muzdalifah@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (142, 'SA.Surabaya', 'Hary Sukartono', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'hary0475@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (143, 'SA.Semarang', 'Heri Frastiono', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'heri.Frastiono@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (144, 'SA.Cirebon', 'M. Makki Nuruddin', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'm.makki.nuruddin@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (145, 'LFM2', 'Made Setiawan', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'made.setiawan@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (146, 'SA.Palembang', 'Makmuri', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'makmuri@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (147, 'SA.Surabaya', 'Misbachul Munir', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'misbachul.munir@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (148, 'LFM3', 'Nanda Prawita', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'nanda.prawita@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (149, 'Pgasol1', 'pgasol1', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (150, 'Pgasol2', 'pgasol2', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (151, 'SA.Sinergi', 'SA Sinergi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (152, 'SA.Tarakan', 'SA Tarakan', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (153, 'SA.Lampung', 'SA.Lampung', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (154, 'SA.Makassar', 'SA.Makassar', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (155, 'SA.Medan', 'Saeful Hadi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'saeful.hadi@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (156, 'SA.Jakarta', 'Sheila Merlianty', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'sheila.merlianty@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (157, 'SA.Tangerang', 'Sony Rahmawan Abdi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (158, 'LFM4', 'Taat Udjianto', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'taat.udjianto@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (159, 'LFM5', 'Titis Wulandari', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'titis.wulandari@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (160, 'LFM6', 'Wawan Hermawan', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'wawan.hermawan@pgn.co.id ', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (161, 'SA.Batam', 'Wendi Purwanto', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'wendi.purwanto@pgn.co.id', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 7, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (162, 'GM', 'General Manager', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.gmpgnmas@gmail.com', '$2y$10$7agXxYOnxsgR8FTOWoY5u.XVF46ai4FTVIB1u9UcPWGbzRo.ZmMsi', 2, '2019-05-14 12:17:24', NULL, NULL);
INSERT INTO `cms_users` VALUES (163, 'HaloMas', 'HaloMas', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'halomas.fms@gmail.com', '$2y$10$s.QIO8bMSH.paL5xDEx3c.SVADU8KdIq.a.XwHwmoxE56etXnFv4W', 10, '2019-05-14 12:18:03', NULL, NULL);
INSERT INTO `cms_users` VALUES (164, 'Manager', 'Manager', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.manager@gmail.com', '$2y$10$ur8rjZSd2Y44Rf3ns5tyeezzsRFEM8v06S9VrjauhcY8vaeqW1VGm', 3, '2019-05-14 12:18:54', NULL, NULL);
INSERT INTO `cms_users` VALUES (165, 'Admin', 'Administrator', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'admin.fms@gmail.com', '$2y$10$WJo8Rg0K5VY9I9Lik0xyEO/5r.punztcVCaFvDEuZ1WLOeS9iNZKy', 8, '2019-05-14 12:19:27', NULL, NULL);
INSERT INTO `cms_users` VALUES (166, 'pgasol.jkt', 'SA Pgasol Daan Mogot', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'dsc1.pgnmas@gmail.com', '$2y$10$XbzRUk.zTZSXTEEzPDRF4O7BrTiEmXHnMjfeSzqHcKj828w4zqMxq', 7, '2019-05-14 13:20:47', NULL, NULL);
INSERT INTO `cms_users` VALUES (167, 'leader.Anyer', 'leader Area Anyer', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (168, 'leader.Bandung', 'leader Area Bandung', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (169, 'leader.Batam', 'leader Area Batam', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (170, 'leader.Bekasi', 'leader Area Bekasi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (171, 'leader.Bogor', 'leader Area Bogor', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (172, 'leader.Cilegon', 'leader Area Cilegon', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (173, 'leader.Cirebon', 'leader Area Cirebon', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (174, 'leader.Daan Mogot', 'leader Area Daan Mogot', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (175, 'leader.Jakarta', 'leader Area Jakarta', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (176, 'leader.Jambi', 'leader Area Jambi', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (177, 'leader.Juanda', 'leader Area Juanda', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (178, 'leader.Karawang', 'leader Area Karawang', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (179, 'leader.Ketapang', 'leader Area Ketapang', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (180, 'leader.Klender', 'leader Area Klender', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (181, 'leader.Lampung', 'leader Area Lampung', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (182, 'leader.Makassar', 'leader Area Makassar', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (183, 'leader.Manhattan', 'leader Area Manhattan', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (184, 'leader.Medan', 'leader Area Medan', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (185, 'leader.Megamendung', 'leader Area Megamendung', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (186, 'leader.Palembang', 'leader Area Palembang', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (187, 'leader.Pasuruan', 'leader Area Pasuruan', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (188, 'leader.Pekanbaru', 'leader Area Pekanbaru', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (189, 'leader.Probolinggo', 'leader Area Probolinggo', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (190, 'leader.Sabilillah', 'leader Area Sabilillah', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (191, 'leader.Semarang', 'leader Area Semarang', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (192, 'leader.Serang', 'leader Area Serang', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (193, 'leader.Sidoarjo', 'leader Area Sidoarjo', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (194, 'leader.Sinergi 8', 'leader Area Sinergi 8', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (195, 'leader.Surabaya', 'leader Area Surabaya', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (196, 'leader.Tangerang', 'leader Area Tangerang', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);
INSERT INTO `cms_users` VALUES (197, 'leader.Tarakan', 'leader Area Tarakan', 'uploads/1/2019-05/1024px_no_image_availablesvg.png', 'fms.pgnmas@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 6, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for complain
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `complain_halomas_id` int(11) NULL DEFAULT NULL,
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of complain
-- ----------------------------
INSERT INTO `complain` VALUES (1, 90, 'WO-0038', 'test', 'umum', 999, 'test', 2, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Gedung A)', 1, '2019-05-05 00:00:00', '2019-05-05 00:00:00', NULL);
INSERT INTO `complain` VALUES (2, 2, 'WO-0039', 'nama pemohon', 'umum', 3, 'uraian complain', 2, 'Jl. K.H. Zainul Arifin No. 20, Jakarta Barat (Gedung A)', 5, '2019-05-05 13:15:00', '2019-05-05 00:00:00', NULL);

-- ----------------------------
-- Table structure for complain_halomas
-- ----------------------------
DROP TABLE IF EXISTS `complain_halomas`;
CREATE TABLE `complain_halomas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complain_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `complain_id` int(11) NULL DEFAULT NULL,
  `complain_date` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `problem` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `send_fms` int(255) NULL DEFAULT 0,
  `photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of complain_halomas
-- ----------------------------
INSERT INTO `complain_halomas` VALUES (1, NULL, 90, '2019-05-05 00:00:00', 'test', 'Jakarta Barat', 'gedung a', 'umum', 'test', 'test', 'electrical', 'open', NULL, 0, 'https://media.travelingyuk.com/wp-content/uploads/2018/01/Wisata-Alam-malang.jpg', '0856979797');
INSERT INTO `complain_halomas` VALUES (2, NULL, 2, '2019-05-05 00:00:00', 'test', 'Jakarta Barat', 'gedung a', 'umum', 'test', 'test', 'Engineering', 'open', NULL, 0, 'https://media.travelingyuk.com/wp-content/uploads/2018/01/Wisata-Alam-malang.jpg', '0856979797');

-- ----------------------------
-- Table structure for complaint
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_pemohon` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `unit_pelapor` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_jenis_complaint` int(10) NULL DEFAULT NULL,
  `uraian_komplain` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_id` int(11) NULL DEFAULT 1,
  `tanggal_masuk` datetime(0) NULL DEFAULT NULL,
  `tanggal_selesai` datetime(0) NULL DEFAULT NULL,
  `flag` int(1) NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of complaint
-- ----------------------------
INSERT INTO `complaint` VALUES (9, 'WO-0007', 'test', 'test', 2, 'test', 20, 'Jl. Pekayon Raya, Bekasi', 3, '2018-10-24 14:13:10', NULL, 1, '2018-10-24 14:13:10', '2018-10-24 15:39:20');

-- ----------------------------
-- Table structure for d_jadwalcomplain
-- ----------------------------
DROP TABLE IF EXISTS `d_jadwalcomplain`;
CREATE TABLE `d_jadwalcomplain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_jadwalcomplain_id` int(11) NULL DEFAULT NULL,
  `tindaklanjut_id` int(11) NULL DEFAULT NULL,
  `complain_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_selesai` date NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_sebelum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_sesudah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `flag` int(1) NULL DEFAULT 0,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for d_jadwalrequest
-- ----------------------------
DROP TABLE IF EXISTS `d_jadwalrequest`;
CREATE TABLE `d_jadwalrequest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_jadwalcomplain_id` int(11) NULL DEFAULT NULL,
  `tindaklanjut_id` int(11) NULL DEFAULT NULL,
  `complain_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_selesai` date NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_sebelum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_sesudah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `flag` int(1) NULL DEFAULT 0,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
  `status_jadwal` int(1) NULL DEFAULT NULL COMMENT '1 = ada jadwal ; 0 = belum terjadwal;',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `sla_uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `detail_sla_uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detail_pekerjaan
-- ----------------------------
INSERT INTO `detail_pekerjaan` VALUES (51, 2019, 2, 1, 4, NULL, 1, NULL, 'Pengamanan', 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional');
INSERT INTO `detail_pekerjaan` VALUES (52, 2019, 2, 1, 5, NULL, 1, NULL, 'Pengamanan', 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional');
INSERT INTO `detail_pekerjaan` VALUES (53, 2019, 2, 1, 6, NULL, 0, NULL, 'Pengamanan', 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV');
INSERT INTO `detail_pekerjaan` VALUES (54, 2019, 2, 1, 7, NULL, 0, NULL, 'Pengamanan', 'Melakukan koordinasi dengan instansi pengamanan eksternal ');
INSERT INTO `detail_pekerjaan` VALUES (55, 2019, 2, 1, 8, NULL, 0, NULL, 'Pengamanan', 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)');
INSERT INTO `detail_pekerjaan` VALUES (56, 2019, 2, 1, 9, NULL, 0, NULL, 'Pengamanan', 'Melaksanakan pengamanan tanggap darurat ');
INSERT INTO `detail_pekerjaan` VALUES (57, 2019, 2, 1, 10, NULL, 0, NULL, 'Pengamanan', 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)');
INSERT INTO `detail_pekerjaan` VALUES (58, 2019, 2, 2, 11, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Melakukan pembersihan gedung dan perlengkapannya');
INSERT INTO `detail_pekerjaan` VALUES (59, 2019, 2, 2, 12, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)');
INSERT INTO `detail_pekerjaan` VALUES (60, 2019, 2, 2, 13, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ');
INSERT INTO `detail_pekerjaan` VALUES (61, 2019, 2, 2, 14, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Melakukan pembersihan dan perawatan taman. ');
INSERT INTO `detail_pekerjaan` VALUES (62, 2019, 2, 2, 15, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku');
INSERT INTO `detail_pekerjaan` VALUES (63, 2019, 2, 2, 16, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Melakukan pengendalian hama tikus dan serangga');
INSERT INTO `detail_pekerjaan` VALUES (64, 2019, 2, 2, 17, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.');
INSERT INTO `detail_pekerjaan` VALUES (65, 2019, 2, 2, 18, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.');
INSERT INTO `detail_pekerjaan` VALUES (66, 2019, 2, 2, 19, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.');
INSERT INTO `detail_pekerjaan` VALUES (67, 2019, 2, 2, 20, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola pengoperasian sistem proteksi kebakaran');
INSERT INTO `detail_pekerjaan` VALUES (68, 2019, 2, 2, 21, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola pengoperasian sistem tata suara');
INSERT INTO `detail_pekerjaan` VALUES (69, 2019, 2, 2, 22, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola pengoperasian instalasi listrik');
INSERT INTO `detail_pekerjaan` VALUES (70, 2019, 2, 2, 23, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ');
INSERT INTO `detail_pekerjaan` VALUES (71, 2019, 2, 2, 24, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola pengoperasian pencahayaan lampu ');
INSERT INTO `detail_pekerjaan` VALUES (72, 2019, 2, 2, 25, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ');
INSERT INTO `detail_pekerjaan` VALUES (73, 2019, 2, 2, 26, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola Ground Reservoir');
INSERT INTO `detail_pekerjaan` VALUES (74, 2019, 2, 2, 27, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengoperasikan Pompa Air Bersih');
INSERT INTO `detail_pekerjaan` VALUES (75, 2019, 2, 2, 28, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Melakukan pemeliharaan Roof Tank');
INSERT INTO `detail_pekerjaan` VALUES (76, 2019, 2, 2, 29, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengoperasikan Cabang Utama Pemipaan Air Bersih');
INSERT INTO `detail_pekerjaan` VALUES (77, 2019, 2, 2, 30, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase');
INSERT INTO `detail_pekerjaan` VALUES (78, 2019, 2, 2, 31, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola Intake Air Bersih');
INSERT INTO `detail_pekerjaan` VALUES (79, 2019, 2, 2, 32, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola Water Treatment Plant');
INSERT INTO `detail_pekerjaan` VALUES (80, 2019, 2, 2, 33, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola Sewage Treatment Plan');
INSERT INTO `detail_pekerjaan` VALUES (81, 2019, 2, 2, 34, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Mengelola Reservoir khusus air olahan');
INSERT INTO `detail_pekerjaan` VALUES (82, 2019, 2, 2, 35, NULL, 0, NULL, 'Pengelolaan Pemeliharaan Asets', 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.');
INSERT INTO `detail_pekerjaan` VALUES (83, 2019, 2, 3, 36, NULL, 0, NULL, 'Pengelolaan Perawatan Aset', 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut');
INSERT INTO `detail_pekerjaan` VALUES (84, 2019, 2, 4, 37, NULL, 0, NULL, 'Penyediaan fasilitas khusus', 'Penyediaan dan pengelolaan area merokok ');
INSERT INTO `detail_pekerjaan` VALUES (85, 2019, 2, 4, 38, NULL, 0, NULL, 'Penyediaan fasilitas khusus', 'Penyediaan dan pengelolaan ruang laktasi ');
INSERT INTO `detail_pekerjaan` VALUES (86, 2019, 2, 4, 39, NULL, 0, NULL, 'Penyediaan fasilitas khusus', 'Penyediaan tempat penyimpanan sementara limbah B3 ');
INSERT INTO `detail_pekerjaan` VALUES (87, 2019, 2, 4, 40, NULL, 0, NULL, 'Penyediaan fasilitas khusus', 'Penyediaan dan mengelola APAR dan P3K ');
INSERT INTO `detail_pekerjaan` VALUES (88, 2019, 2, 5, 41, NULL, 0, NULL, 'Penyediaan perijinan terkait bangunan dan lingkungan', 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin');
INSERT INTO `detail_pekerjaan` VALUES (89, 2019, 2, 5, 42, NULL, 0, NULL, 'Penyediaan perijinan terkait bangunan dan lingkungan', 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)');
INSERT INTO `detail_pekerjaan` VALUES (90, 2019, 2, 5, 43, NULL, 0, NULL, 'Penyediaan perijinan terkait bangunan dan lingkungan', 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin');
INSERT INTO `detail_pekerjaan` VALUES (91, 2019, 2, 5, 44, NULL, 0, NULL, 'Penyediaan perijinan terkait bangunan dan lingkungan', 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin');
INSERT INTO `detail_pekerjaan` VALUES (92, 2019, 2, 5, 45, NULL, 0, NULL, 'Penyediaan perijinan terkait bangunan dan lingkungan', 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait');
INSERT INTO `detail_pekerjaan` VALUES (93, 2019, 2, 6, 46, NULL, 0, NULL, 'Pengelolaan fasilitas perparkiran', 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN');
INSERT INTO `detail_pekerjaan` VALUES (94, 2019, 2, 7, 47, NULL, 0, NULL, 'Pengelolaan penyediaan assesoris gedung', 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat');
INSERT INTO `detail_pekerjaan` VALUES (95, 2019, 2, 7, 48, NULL, 0, NULL, 'Pengelolaan penyediaan assesoris gedung', 'Menyediakan tanaman / bunga di lobby atau koridor. ');
INSERT INTO `detail_pekerjaan` VALUES (96, 2019, 2, 7, 49, NULL, 0, NULL, 'Pengelolaan penyediaan assesoris gedung', 'Menyediakan majalah/surat kabar di lobby serta tempat display ');
INSERT INTO `detail_pekerjaan` VALUES (97, 2019, 2, 8, 50, NULL, 0, NULL, 'Pengelolaan Wisma dan Rumah dinas', 'Pengelolaan kawasan bangunan wisma dan rumah dinas');
INSERT INTO `detail_pekerjaan` VALUES (98, 2019, 2, 8, 51, NULL, 0, NULL, 'Pengelolaan Wisma dan Rumah dinas', 'Pengelolaan Bangunan Wisma');
INSERT INTO `detail_pekerjaan` VALUES (99, 2019, 2, 8, 52, NULL, 0, NULL, 'Pengelolaan Wisma dan Rumah dinas', 'Pengelolaan jasa layanan wisma');
INSERT INTO `detail_pekerjaan` VALUES (100, 2019, 2, 9, 53, NULL, 0, NULL, 'Pengelolaan Keluhan', 'Tindak lanjut atas keluhan / komplain yang masuk 100%');

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
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detail_penilaian
-- ----------------------------
INSERT INTO `detail_penilaian` VALUES (201, 41, 1, 4, 1, 1, 3, '', '2019-05-24 17:13:30');
INSERT INTO `detail_penilaian` VALUES (202, 41, 1, 5, 1, 1, 3, '', '2019-05-24 17:13:30');
INSERT INTO `detail_penilaian` VALUES (203, 41, 1, 6, 1, 1, 3, '', '2019-05-24 17:13:30');
INSERT INTO `detail_penilaian` VALUES (204, 41, 1, 7, 1, 1, 3, '', '2019-05-24 17:13:30');
INSERT INTO `detail_penilaian` VALUES (205, 41, 1, 8, 1, 1, 3, '', '2019-05-24 17:13:30');
INSERT INTO `detail_penilaian` VALUES (206, 41, 1, 9, 1, 1, 3, '', '2019-05-24 17:13:30');
INSERT INTO `detail_penilaian` VALUES (207, 41, 1, 10, 1, 1, 3, '', '2019-05-24 17:13:30');
INSERT INTO `detail_penilaian` VALUES (208, 41, 2, 11, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (209, 41, 2, 12, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (210, 41, 2, 13, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (211, 41, 2, 14, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (212, 41, 2, 15, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (213, 41, 2, 16, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (214, 41, 2, 17, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (215, 41, 2, 18, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (216, 41, 2, 19, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (217, 41, 2, 20, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (218, 41, 2, 21, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (219, 41, 2, 22, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (220, 41, 2, 23, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (221, 41, 2, 24, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (222, 41, 2, 25, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (223, 41, 2, 26, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (224, 41, 2, 27, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (225, 41, 2, 28, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (226, 41, 2, 29, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (227, 41, 2, 30, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (228, 41, 2, 31, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (229, 41, 2, 32, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (230, 41, 2, 33, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (231, 41, 2, 34, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (232, 41, 2, 35, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (233, 41, 3, 36, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (234, 41, 4, 37, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (235, 41, 4, 38, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (236, 41, 4, 39, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (237, 41, 4, 40, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (238, 41, 5, 41, 1, 1, 3, '', '2019-05-24 17:13:31');
INSERT INTO `detail_penilaian` VALUES (239, 41, 5, 42, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (240, 41, 5, 43, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (241, 41, 5, 44, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (242, 41, 5, 45, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (243, 41, 6, 46, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (244, 41, 7, 47, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (245, 41, 7, 48, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (246, 41, 7, 49, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (247, 41, 8, 50, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (248, 41, 8, 51, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (249, 41, 8, 52, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (250, 41, 9, 53, 1, 1, 3, '', '2019-05-24 17:13:32');
INSERT INTO `detail_penilaian` VALUES (251, 42, 1, 4, 1, 1, 3, '', '2019-05-24 17:11:26');
INSERT INTO `detail_penilaian` VALUES (252, 42, 1, 5, 1, 1, 3, '', '2019-05-24 17:11:32');
INSERT INTO `detail_penilaian` VALUES (253, 42, 1, 6, 1, 1, 3, '', '2019-05-24 17:11:33');
INSERT INTO `detail_penilaian` VALUES (254, 42, 1, 7, 1, 1, 3, '', '2019-05-24 17:11:34');
INSERT INTO `detail_penilaian` VALUES (255, 42, 1, 8, 1, 1, 3, '', '2019-05-24 17:11:35');
INSERT INTO `detail_penilaian` VALUES (256, 42, 1, 9, 1, 1, 3, '', '2019-05-24 17:11:36');
INSERT INTO `detail_penilaian` VALUES (257, 42, 1, 10, 1, 1, 3, '', '2019-05-24 17:11:44');
INSERT INTO `detail_penilaian` VALUES (258, 42, 2, 11, 1, 1, 3, '', '2019-05-24 17:11:49');
INSERT INTO `detail_penilaian` VALUES (259, 42, 2, 12, 1, 1, 3, '', '2019-05-24 17:11:59');
INSERT INTO `detail_penilaian` VALUES (260, 42, 2, 13, 1, 1, 3, '', '2019-05-24 17:12:00');
INSERT INTO `detail_penilaian` VALUES (261, 42, 2, 14, 1, 1, 3, '', '2019-05-24 17:12:00');
INSERT INTO `detail_penilaian` VALUES (262, 42, 2, 15, 1, 1, 3, '', '2019-05-24 17:12:00');
INSERT INTO `detail_penilaian` VALUES (263, 42, 2, 16, 1, 1, 3, '', '2019-05-24 17:12:01');
INSERT INTO `detail_penilaian` VALUES (264, 42, 2, 17, 1, 1, 3, '', '2019-05-24 17:12:01');
INSERT INTO `detail_penilaian` VALUES (265, 42, 2, 18, 1, 1, 3, '', '2019-05-24 17:12:01');
INSERT INTO `detail_penilaian` VALUES (266, 42, 2, 19, 1, 1, 3, '', '2019-05-24 17:12:01');
INSERT INTO `detail_penilaian` VALUES (267, 42, 2, 20, 1, 1, 3, '', '2019-05-24 17:12:01');
INSERT INTO `detail_penilaian` VALUES (268, 42, 2, 21, 1, 1, 3, '', '2019-05-24 17:12:01');
INSERT INTO `detail_penilaian` VALUES (269, 42, 2, 22, 1, 1, 3, '', '2019-05-24 17:12:01');
INSERT INTO `detail_penilaian` VALUES (270, 42, 2, 23, 1, 1, 3, '', '2019-05-24 17:12:01');
INSERT INTO `detail_penilaian` VALUES (271, 42, 2, 24, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (272, 42, 2, 25, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (273, 42, 2, 26, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (274, 42, 2, 27, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (275, 42, 2, 28, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (276, 42, 2, 29, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (277, 42, 2, 30, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (278, 42, 2, 31, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (279, 42, 2, 32, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (280, 42, 2, 33, 1, 1, 3, '', '2019-05-24 17:12:02');
INSERT INTO `detail_penilaian` VALUES (281, 42, 2, 34, 1, 1, 3, '', '2019-05-24 17:12:03');
INSERT INTO `detail_penilaian` VALUES (282, 42, 2, 35, 1, 1, 3, '', '2019-05-24 17:12:03');
INSERT INTO `detail_penilaian` VALUES (283, 42, 3, 36, 1, 1, 3, '', '2019-05-24 17:12:03');
INSERT INTO `detail_penilaian` VALUES (284, 42, 4, 37, 1, 1, 3, '', '2019-05-24 17:12:03');
INSERT INTO `detail_penilaian` VALUES (285, 42, 4, 38, 1, 1, 3, '', '2019-05-24 17:12:03');
INSERT INTO `detail_penilaian` VALUES (286, 42, 4, 39, 1, 1, 3, '', '2019-05-24 17:12:03');
INSERT INTO `detail_penilaian` VALUES (287, 42, 4, 40, 1, 1, 3, '', '2019-05-24 17:12:03');
INSERT INTO `detail_penilaian` VALUES (288, 42, 5, 41, 1, 1, 3, '', '2019-05-24 17:12:03');
INSERT INTO `detail_penilaian` VALUES (289, 42, 5, 42, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (290, 42, 5, 43, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (291, 42, 5, 44, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (292, 42, 5, 45, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (293, 42, 6, 46, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (294, 42, 7, 47, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (295, 42, 7, 48, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (296, 42, 7, 49, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (297, 42, 8, 50, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (298, 42, 8, 51, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (299, 42, 8, 52, 1, 1, 3, '', '2019-05-24 17:12:04');
INSERT INTO `detail_penilaian` VALUES (300, 42, 9, 53, 1, 1, 3, '', '2019-05-24 17:12:04');

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
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detail_sla
-- ----------------------------
INSERT INTO `detail_sla` VALUES (4, NULL, 1, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', NULL);
INSERT INTO `detail_sla` VALUES (5, NULL, 1, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', NULL);
INSERT INTO `detail_sla` VALUES (6, NULL, 1, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', NULL);
INSERT INTO `detail_sla` VALUES (7, NULL, 1, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', NULL);
INSERT INTO `detail_sla` VALUES (8, NULL, 1, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', NULL);
INSERT INTO `detail_sla` VALUES (9, NULL, 1, 'Melaksanakan pengamanan tanggap darurat ', NULL);
INSERT INTO `detail_sla` VALUES (10, NULL, 1, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', NULL);
INSERT INTO `detail_sla` VALUES (11, NULL, 2, 'Melakukan pembersihan gedung dan perlengkapannya', NULL);
INSERT INTO `detail_sla` VALUES (12, NULL, 2, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', NULL);
INSERT INTO `detail_sla` VALUES (13, NULL, 2, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', NULL);
INSERT INTO `detail_sla` VALUES (14, NULL, 2, 'Melakukan pembersihan dan perawatan taman. ', NULL);
INSERT INTO `detail_sla` VALUES (15, NULL, 2, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', NULL);
INSERT INTO `detail_sla` VALUES (16, NULL, 2, 'Melakukan pengendalian hama tikus dan serangga', NULL);
INSERT INTO `detail_sla` VALUES (17, NULL, 2, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', NULL);
INSERT INTO `detail_sla` VALUES (18, NULL, 2, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', NULL);
INSERT INTO `detail_sla` VALUES (19, NULL, 2, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', NULL);
INSERT INTO `detail_sla` VALUES (20, NULL, 2, 'Mengelola pengoperasian sistem proteksi kebakaran', NULL);
INSERT INTO `detail_sla` VALUES (21, NULL, 2, 'Mengelola pengoperasian sistem tata suara', NULL);
INSERT INTO `detail_sla` VALUES (22, NULL, 2, 'Mengelola pengoperasian instalasi listrik', NULL);
INSERT INTO `detail_sla` VALUES (23, NULL, 2, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', NULL);
INSERT INTO `detail_sla` VALUES (24, NULL, 2, 'Mengelola pengoperasian pencahayaan lampu ', NULL);
INSERT INTO `detail_sla` VALUES (25, NULL, 2, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', NULL);
INSERT INTO `detail_sla` VALUES (26, NULL, 2, 'Mengelola Ground Reservoir', NULL);
INSERT INTO `detail_sla` VALUES (27, NULL, 2, 'Mengoperasikan Pompa Air Bersih', NULL);
INSERT INTO `detail_sla` VALUES (28, NULL, 2, 'Melakukan pemeliharaan Roof Tank', NULL);
INSERT INTO `detail_sla` VALUES (29, NULL, 2, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', NULL);
INSERT INTO `detail_sla` VALUES (30, NULL, 2, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', NULL);
INSERT INTO `detail_sla` VALUES (31, NULL, 2, 'Mengelola Intake Air Bersih', NULL);
INSERT INTO `detail_sla` VALUES (32, NULL, 2, 'Mengelola Water Treatment Plant', NULL);
INSERT INTO `detail_sla` VALUES (33, NULL, 2, 'Mengelola Sewage Treatment Plan', NULL);
INSERT INTO `detail_sla` VALUES (34, NULL, 2, 'Mengelola Reservoir khusus air olahan', NULL);
INSERT INTO `detail_sla` VALUES (35, NULL, 2, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', NULL);
INSERT INTO `detail_sla` VALUES (36, NULL, 3, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', NULL);
INSERT INTO `detail_sla` VALUES (37, NULL, 4, 'Penyediaan dan pengelolaan area merokok ', NULL);
INSERT INTO `detail_sla` VALUES (38, NULL, 4, 'Penyediaan dan pengelolaan ruang laktasi ', NULL);
INSERT INTO `detail_sla` VALUES (39, NULL, 4, 'Penyediaan tempat penyimpanan sementara limbah B3 ', NULL);
INSERT INTO `detail_sla` VALUES (40, NULL, 4, 'Penyediaan dan mengelola APAR dan P3K ', NULL);
INSERT INTO `detail_sla` VALUES (41, NULL, 5, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', NULL);
INSERT INTO `detail_sla` VALUES (42, NULL, 5, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', NULL);
INSERT INTO `detail_sla` VALUES (43, NULL, 5, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', NULL);
INSERT INTO `detail_sla` VALUES (44, NULL, 5, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', NULL);
INSERT INTO `detail_sla` VALUES (45, NULL, 5, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', NULL);
INSERT INTO `detail_sla` VALUES (46, NULL, 6, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', NULL);
INSERT INTO `detail_sla` VALUES (47, NULL, 7, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', NULL);
INSERT INTO `detail_sla` VALUES (48, NULL, 7, 'Menyediakan tanaman / bunga di lobby atau koridor. ', NULL);
INSERT INTO `detail_sla` VALUES (49, NULL, 7, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', NULL);
INSERT INTO `detail_sla` VALUES (50, NULL, 8, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', NULL);
INSERT INTO `detail_sla` VALUES (51, NULL, 8, 'Pengelolaan Bangunan Wisma', NULL);
INSERT INTO `detail_sla` VALUES (52, NULL, 8, 'Pengelolaan jasa layanan wisma', NULL);
INSERT INTO `detail_sla` VALUES (53, NULL, 9, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dokumentasi_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `dokumentasi_pekerjaan`;
CREATE TABLE `dokumentasi_pekerjaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_transaksi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'Complain;Rutin',
  `id_t` int(11) NULL DEFAULT NULL,
  `sla_id` int(11) NULL DEFAULT 0,
  `detail_sla_id` int(11) NULL DEFAULT 0,
  `tanggal` date NULL DEFAULT NULL,
  `foto_sebelum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_sesudah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dokumentasi_pekerjaan
-- ----------------------------
INSERT INTO `dokumentasi_pekerjaan` VALUES (2, 'Complain', 2, 0, 0, '2019-05-05', 'https://media.travelingyuk.com/wp-content/uploads/2018/01/Wisata-Alam-malang.jpg', '/uploads/complain/after_1558269913_5ce14fd941e32.jpg', NULL);
INSERT INTO `dokumentasi_pekerjaan` VALUES (4, 'Rutin', 56, 1, 4, '2019-01-02', 'uploads/179/2019-05/after_1557921903_5cdc006f1c750.jpg', 'uploads/179/2019-05/after_1557930337_5cdc21614eade.png', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for frekuensi
-- ----------------------------
DROP TABLE IF EXISTS `frekuensi`;
CREATE TABLE `frekuensi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uraian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `warna` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `H1` float NULL DEFAULT 0,
  `H2` int(1) NULL DEFAULT 0,
  `H3` int(1) NULL DEFAULT 0,
  `H4` int(1) NULL DEFAULT 0,
  `H5` int(1) NULL DEFAULT 0,
  `H6` int(1) NULL DEFAULT 0,
  `H7` int(1) NULL DEFAULT 0,
  `M1` int(1) NULL DEFAULT 0,
  `M2` int(1) NULL DEFAULT 0,
  `M3` int(1) NULL DEFAULT 0,
  `M4` int(1) NULL DEFAULT 0,
  `M5` int(1) NULL DEFAULT 0,
  `B1` int(1) NULL DEFAULT 0,
  `B2` int(1) NULL DEFAULT 0,
  `B3` int(1) NULL DEFAULT 0,
  `B4` int(1) NULL DEFAULT 0,
  `B5` int(1) NULL DEFAULT 0,
  `B6` int(1) NULL DEFAULT 0,
  `B7` int(1) NULL DEFAULT 0,
  `B8` int(1) NULL DEFAULT 0,
  `B9` int(1) NULL DEFAULT 0,
  `B10` int(1) NULL DEFAULT 0,
  `B11` int(1) NULL DEFAULT 0,
  `B12` int(1) NULL DEFAULT 0,
  `created_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1006 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of frekuensi
-- ----------------------------
INSERT INTO `frekuensi` VALUES (1005, 'Harian', 'H', '#80ff00', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-05-14 17:08:35.000000');

-- ----------------------------
-- Table structure for jenis_complain
-- ----------------------------
DROP TABLE IF EXISTS `jenis_complain`;
CREATE TABLE `jenis_complain`  (
  `id` int(10) NOT NULL,
  `uraian` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jenis_complain
-- ----------------------------
INSERT INTO `jenis_complain` VALUES (1, 'Security');
INSERT INTO `jenis_complain` VALUES (2, 'Housekeeping');
INSERT INTO `jenis_complain` VALUES (3, 'Engineering');
INSERT INTO `jenis_complain` VALUES (4, 'Fasilitas Khusus');
INSERT INTO `jenis_complain` VALUES (5, 'Perizinan');
INSERT INTO `jenis_complain` VALUES (6, 'Aksesoris Gedung');
INSERT INTO `jenis_complain` VALUES (7, 'Resepsionis');
INSERT INTO `jenis_complain` VALUES (8, 'Parkir');
INSERT INTO `jenis_complain` VALUES (9, 'Layanan Wisma');
INSERT INTO `jenis_complain` VALUES (999, 'Tidak Berkategori');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1330 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ketersediaan_sla
-- ----------------------------
INSERT INTO `ketersediaan_sla` VALUES (1130, 2019, 2, 1, 4, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1131, 2019, 2, 1, 5, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1132, 2019, 2, 1, 6, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1133, 2019, 2, 1, 7, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1134, 2019, 2, 1, 8, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1135, 2019, 2, 1, 9, 'Melaksanakan pengamanan tanggap darurat ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1136, 2019, 2, 1, 10, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1137, 2019, 2, 2, 11, 'Melakukan pembersihan gedung dan perlengkapannya', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1138, 2019, 2, 2, 12, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1139, 2019, 2, 2, 13, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1140, 2019, 2, 2, 14, 'Melakukan pembersihan dan perawatan taman. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1141, 2019, 2, 2, 15, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1142, 2019, 2, 2, 16, 'Melakukan pengendalian hama tikus dan serangga', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1143, 2019, 2, 2, 17, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1144, 2019, 2, 2, 18, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1145, 2019, 2, 2, 19, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1146, 2019, 2, 2, 20, 'Mengelola pengoperasian sistem proteksi kebakaran', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1147, 2019, 2, 2, 21, 'Mengelola pengoperasian sistem tata suara', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1148, 2019, 2, 2, 22, 'Mengelola pengoperasian instalasi listrik', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1149, 2019, 2, 2, 23, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1150, 2019, 2, 2, 24, 'Mengelola pengoperasian pencahayaan lampu ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1151, 2019, 2, 2, 25, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1152, 2019, 2, 2, 26, 'Mengelola Ground Reservoir', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1153, 2019, 2, 2, 27, 'Mengoperasikan Pompa Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1154, 2019, 2, 2, 28, 'Melakukan pemeliharaan Roof Tank', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1155, 2019, 2, 2, 29, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1156, 2019, 2, 2, 30, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1157, 2019, 2, 2, 31, 'Mengelola Intake Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1158, 2019, 2, 2, 32, 'Mengelola Water Treatment Plant', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1159, 2019, 2, 2, 33, 'Mengelola Sewage Treatment Plan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1160, 2019, 2, 2, 34, 'Mengelola Reservoir khusus air olahan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1161, 2019, 2, 2, 35, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1162, 2019, 2, 3, 36, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1163, 2019, 2, 4, 37, 'Penyediaan dan pengelolaan area merokok ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1164, 2019, 2, 4, 38, 'Penyediaan dan pengelolaan ruang laktasi ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1165, 2019, 2, 4, 39, 'Penyediaan tempat penyimpanan sementara limbah B3 ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1166, 2019, 2, 4, 40, 'Penyediaan dan mengelola APAR dan P3K ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1167, 2019, 2, 5, 41, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1168, 2019, 2, 5, 42, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1169, 2019, 2, 5, 43, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1170, 2019, 2, 5, 44, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1171, 2019, 2, 5, 45, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1172, 2019, 2, 6, 46, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1173, 2019, 2, 7, 47, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1174, 2019, 2, 7, 48, 'Menyediakan tanaman / bunga di lobby atau koridor. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1175, 2019, 2, 7, 49, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1176, 2019, 2, 8, 50, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1177, 2019, 2, 8, 51, 'Pengelolaan Bangunan Wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1178, 2019, 2, 8, 52, 'Pengelolaan jasa layanan wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1179, 2019, 2, 9, 53, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1180, 2019, 3, 1, 4, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1181, 2019, 3, 1, 5, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1182, 2019, 3, 1, 6, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1183, 2019, 3, 1, 7, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1184, 2019, 3, 1, 8, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1185, 2019, 3, 1, 9, 'Melaksanakan pengamanan tanggap darurat ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1186, 2019, 3, 1, 10, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1187, 2019, 3, 2, 11, 'Melakukan pembersihan gedung dan perlengkapannya', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1188, 2019, 3, 2, 12, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1189, 2019, 3, 2, 13, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1190, 2019, 3, 2, 14, 'Melakukan pembersihan dan perawatan taman. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1191, 2019, 3, 2, 15, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1192, 2019, 3, 2, 16, 'Melakukan pengendalian hama tikus dan serangga', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1193, 2019, 3, 2, 17, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1194, 2019, 3, 2, 18, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1195, 2019, 3, 2, 19, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1196, 2019, 3, 2, 20, 'Mengelola pengoperasian sistem proteksi kebakaran', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1197, 2019, 3, 2, 21, 'Mengelola pengoperasian sistem tata suara', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1198, 2019, 3, 2, 22, 'Mengelola pengoperasian instalasi listrik', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1199, 2019, 3, 2, 23, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1200, 2019, 3, 2, 24, 'Mengelola pengoperasian pencahayaan lampu ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1201, 2019, 3, 2, 25, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1202, 2019, 3, 2, 26, 'Mengelola Ground Reservoir', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1203, 2019, 3, 2, 27, 'Mengoperasikan Pompa Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1204, 2019, 3, 2, 28, 'Melakukan pemeliharaan Roof Tank', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1205, 2019, 3, 2, 29, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1206, 2019, 3, 2, 30, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1207, 2019, 3, 2, 31, 'Mengelola Intake Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1208, 2019, 3, 2, 32, 'Mengelola Water Treatment Plant', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1209, 2019, 3, 2, 33, 'Mengelola Sewage Treatment Plan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1210, 2019, 3, 2, 34, 'Mengelola Reservoir khusus air olahan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1211, 2019, 3, 2, 35, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1212, 2019, 3, 3, 36, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1213, 2019, 3, 4, 37, 'Penyediaan dan pengelolaan area merokok ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1214, 2019, 3, 4, 38, 'Penyediaan dan pengelolaan ruang laktasi ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1215, 2019, 3, 4, 39, 'Penyediaan tempat penyimpanan sementara limbah B3 ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1216, 2019, 3, 4, 40, 'Penyediaan dan mengelola APAR dan P3K ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1217, 2019, 3, 5, 41, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1218, 2019, 3, 5, 42, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1219, 2019, 3, 5, 43, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1220, 2019, 3, 5, 44, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1221, 2019, 3, 5, 45, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1222, 2019, 3, 6, 46, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1223, 2019, 3, 7, 47, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1224, 2019, 3, 7, 48, 'Menyediakan tanaman / bunga di lobby atau koridor. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1225, 2019, 3, 7, 49, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1226, 2019, 3, 8, 50, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1227, 2019, 3, 8, 51, 'Pengelolaan Bangunan Wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1228, 2019, 3, 8, 52, 'Pengelolaan jasa layanan wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1229, 2019, 3, 9, 53, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1230, 2019, 4, 1, 4, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1231, 2019, 4, 1, 5, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1232, 2019, 4, 1, 6, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1233, 2019, 4, 1, 7, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1234, 2019, 4, 1, 8, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1235, 2019, 4, 1, 9, 'Melaksanakan pengamanan tanggap darurat ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1236, 2019, 4, 1, 10, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1237, 2019, 4, 2, 11, 'Melakukan pembersihan gedung dan perlengkapannya', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1238, 2019, 4, 2, 12, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1239, 2019, 4, 2, 13, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1240, 2019, 4, 2, 14, 'Melakukan pembersihan dan perawatan taman. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1241, 2019, 4, 2, 15, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1242, 2019, 4, 2, 16, 'Melakukan pengendalian hama tikus dan serangga', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1243, 2019, 4, 2, 17, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1244, 2019, 4, 2, 18, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1245, 2019, 4, 2, 19, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1246, 2019, 4, 2, 20, 'Mengelola pengoperasian sistem proteksi kebakaran', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1247, 2019, 4, 2, 21, 'Mengelola pengoperasian sistem tata suara', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1248, 2019, 4, 2, 22, 'Mengelola pengoperasian instalasi listrik', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1249, 2019, 4, 2, 23, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1250, 2019, 4, 2, 24, 'Mengelola pengoperasian pencahayaan lampu ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1251, 2019, 4, 2, 25, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1252, 2019, 4, 2, 26, 'Mengelola Ground Reservoir', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1253, 2019, 4, 2, 27, 'Mengoperasikan Pompa Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1254, 2019, 4, 2, 28, 'Melakukan pemeliharaan Roof Tank', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1255, 2019, 4, 2, 29, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1256, 2019, 4, 2, 30, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1257, 2019, 4, 2, 31, 'Mengelola Intake Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1258, 2019, 4, 2, 32, 'Mengelola Water Treatment Plant', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1259, 2019, 4, 2, 33, 'Mengelola Sewage Treatment Plan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1260, 2019, 4, 2, 34, 'Mengelola Reservoir khusus air olahan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1261, 2019, 4, 2, 35, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1262, 2019, 4, 3, 36, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1263, 2019, 4, 4, 37, 'Penyediaan dan pengelolaan area merokok ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1264, 2019, 4, 4, 38, 'Penyediaan dan pengelolaan ruang laktasi ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1265, 2019, 4, 4, 39, 'Penyediaan tempat penyimpanan sementara limbah B3 ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1266, 2019, 4, 4, 40, 'Penyediaan dan mengelola APAR dan P3K ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1267, 2019, 4, 5, 41, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1268, 2019, 4, 5, 42, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1269, 2019, 4, 5, 43, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1270, 2019, 4, 5, 44, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1271, 2019, 4, 5, 45, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1272, 2019, 4, 6, 46, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1273, 2019, 4, 7, 47, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1274, 2019, 4, 7, 48, 'Menyediakan tanaman / bunga di lobby atau koridor. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1275, 2019, 4, 7, 49, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1276, 2019, 4, 8, 50, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1277, 2019, 4, 8, 51, 'Pengelolaan Bangunan Wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1278, 2019, 4, 8, 52, 'Pengelolaan jasa layanan wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1279, 2019, 4, 9, 53, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1280, 2019, 5, 1, 4, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1281, 2019, 5, 1, 5, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1282, 2019, 5, 1, 6, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1283, 2019, 5, 1, 7, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1284, 2019, 5, 1, 8, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1285, 2019, 5, 1, 9, 'Melaksanakan pengamanan tanggap darurat ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1286, 2019, 5, 1, 10, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1287, 2019, 5, 2, 11, 'Melakukan pembersihan gedung dan perlengkapannya', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1288, 2019, 5, 2, 12, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1289, 2019, 5, 2, 13, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1290, 2019, 5, 2, 14, 'Melakukan pembersihan dan perawatan taman. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1291, 2019, 5, 2, 15, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1292, 2019, 5, 2, 16, 'Melakukan pengendalian hama tikus dan serangga', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1293, 2019, 5, 2, 17, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1294, 2019, 5, 2, 18, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1295, 2019, 5, 2, 19, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1296, 2019, 5, 2, 20, 'Mengelola pengoperasian sistem proteksi kebakaran', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1297, 2019, 5, 2, 21, 'Mengelola pengoperasian sistem tata suara', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1298, 2019, 5, 2, 22, 'Mengelola pengoperasian instalasi listrik', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1299, 2019, 5, 2, 23, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1300, 2019, 5, 2, 24, 'Mengelola pengoperasian pencahayaan lampu ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1301, 2019, 5, 2, 25, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1302, 2019, 5, 2, 26, 'Mengelola Ground Reservoir', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1303, 2019, 5, 2, 27, 'Mengoperasikan Pompa Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1304, 2019, 5, 2, 28, 'Melakukan pemeliharaan Roof Tank', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1305, 2019, 5, 2, 29, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1306, 2019, 5, 2, 30, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1307, 2019, 5, 2, 31, 'Mengelola Intake Air Bersih', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1308, 2019, 5, 2, 32, 'Mengelola Water Treatment Plant', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1309, 2019, 5, 2, 33, 'Mengelola Sewage Treatment Plan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1310, 2019, 5, 2, 34, 'Mengelola Reservoir khusus air olahan', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1311, 2019, 5, 2, 35, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1312, 2019, 5, 3, 36, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1313, 2019, 5, 4, 37, 'Penyediaan dan pengelolaan area merokok ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1314, 2019, 5, 4, 38, 'Penyediaan dan pengelolaan ruang laktasi ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1315, 2019, 5, 4, 39, 'Penyediaan tempat penyimpanan sementara limbah B3 ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1316, 2019, 5, 4, 40, 'Penyediaan dan mengelola APAR dan P3K ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1317, 2019, 5, 5, 41, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1318, 2019, 5, 5, 42, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1319, 2019, 5, 5, 43, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1320, 2019, 5, 5, 44, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1321, 2019, 5, 5, 45, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1322, 2019, 5, 6, 46, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1323, 2019, 5, 7, 47, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1324, 2019, 5, 7, 48, 'Menyediakan tanaman / bunga di lobby atau koridor. ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1325, 2019, 5, 7, 49, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1326, 2019, 5, 8, 50, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1327, 2019, 5, 8, 51, 'Pengelolaan Bangunan Wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1328, 2019, 5, 8, 52, 'Pengelolaan jasa layanan wisma', 1, NULL);
INSERT INTO `ketersediaan_sla` VALUES (1329, 2019, 5, 9, 53, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', 1, NULL);

-- ----------------------------
-- Table structure for kota
-- ----------------------------
DROP TABLE IF EXISTS `kota`;
CREATE TABLE `kota`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi_id` int(10) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `provinsi_id`(`provinsi_id`) USING BTREE,
  CONSTRAINT `kota_ibfk_1` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9472 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kota
-- ----------------------------
INSERT INTO `kota` VALUES (1101, 11, 'KABUPATEN SIMEULUE', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1102, 11, 'KABUPATEN ACEH SINGKIL', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1103, 11, 'KABUPATEN ACEH SELATAN', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1104, 11, 'KABUPATEN ACEH TENGGARA', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1105, 11, 'KABUPATEN ACEH TIMUR', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1106, 11, 'KABUPATEN ACEH TENGAH', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1107, 11, 'KABUPATEN ACEH BARAT', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1108, 11, 'KABUPATEN ACEH BESAR', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1109, 11, 'KABUPATEN PIDIE', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1110, 11, 'KABUPATEN BIREUEN', '2018-06-07 12:40:35', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1111, 11, 'KABUPATEN ACEH UTARA', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1112, 11, 'KABUPATEN ACEH BARAT DAYA', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1113, 11, 'KABUPATEN GAYO LUES', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1114, 11, 'KABUPATEN ACEH TAMIANG', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1115, 11, 'KABUPATEN NAGAN RAYA', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1116, 11, 'KABUPATEN ACEH JAYA', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1117, 11, 'KABUPATEN BENER MERIAH', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1118, 11, 'KABUPATEN PIDIE JAYA', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1171, 11, 'KOTA BANDA ACEH', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1172, 11, 'KOTA SABANG', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1173, 11, 'KOTA LANGSA', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1174, 11, 'KOTA LHOKSEUMAWE', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1175, 11, 'KOTA SUBULUSSALAM', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1201, 12, 'KABUPATEN NIAS', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1202, 12, 'KABUPATEN MANDAILING NATAL', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1203, 12, 'KABUPATEN TAPANULI SELATAN', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1204, 12, 'KABUPATEN TAPANULI TENGAH', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1205, 12, 'KABUPATEN TAPANULI UTARA', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1206, 12, 'KABUPATEN TOBA SAMOSIR', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1207, 12, 'KABUPATEN LABUHAN BATU', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1208, 12, 'KABUPATEN ASAHAN', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1209, 12, 'KABUPATEN SIMALUNGUN', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1210, 12, 'KABUPATEN DAIRI', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1211, 12, 'KABUPATEN KARO', '2018-06-07 12:40:36', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1212, 12, 'KABUPATEN DELI SERDANG', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1213, 12, 'KABUPATEN LANGKAT', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1214, 12, 'KABUPATEN NIAS SELATAN', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1215, 12, 'KABUPATEN HUMBANG HASUNDUTAN', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1216, 12, 'KABUPATEN PAKPAK BHARAT', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1217, 12, 'KABUPATEN SAMOSIR', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1218, 12, 'KABUPATEN SERDANG BEDAGAI', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1219, 12, 'KABUPATEN BATU BARA', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1220, 12, 'KABUPATEN PADANG LAWAS UTARA', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1221, 12, 'KABUPATEN PADANG LAWAS', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1222, 12, 'KABUPATEN LABUHAN BATU SELATAN', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1223, 12, 'KABUPATEN LABUHAN BATU UTARA', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1224, 12, 'KABUPATEN NIAS UTARA', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1225, 12, 'KABUPATEN NIAS BARAT', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1271, 12, 'KOTA SIBOLGA', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1272, 12, 'KOTA TANJUNG BALAI', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1273, 12, 'KOTA PEMATANG SIANTAR', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1274, 12, 'KOTA TEBING TINGGI', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1275, 12, 'KOTA MEDAN', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1276, 12, 'KOTA BINJAI', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1277, 12, 'KOTA PADANGSIDIMPUAN', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1278, 12, 'KOTA GUNUNGSITOLI', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1301, 13, 'KABUPATEN KEPULAUAN MENTAWAI', '2018-06-07 12:40:37', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1302, 13, 'KABUPATEN PESISIR SELATAN', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1303, 13, 'KABUPATEN SOLOK', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1304, 13, 'KABUPATEN SIJUNJUNG', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1305, 13, 'KABUPATEN TANAH DATAR', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1306, 13, 'KABUPATEN PADANG PARIAMAN', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1307, 13, 'KABUPATEN AGAM', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1308, 13, 'KABUPATEN LIMA PULUH KOTA', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1309, 13, 'KABUPATEN PASAMAN', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1310, 13, 'KABUPATEN SOLOK SELATAN', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1311, 13, 'KABUPATEN DHARMASRAYA', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1312, 13, 'KABUPATEN PASAMAN BARAT', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1371, 13, 'KOTA PADANG', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1372, 13, 'KOTA SOLOK', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1373, 13, 'KOTA SAWAH LUNTO', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1374, 13, 'KOTA PADANG PANJANG', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1375, 13, 'KOTA BUKITTINGGI', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1376, 13, 'KOTA PAYAKUMBUH', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1377, 13, 'KOTA PARIAMAN', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1401, 14, 'KABUPATEN KUANTAN SINGINGI', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1402, 14, 'KABUPATEN INDRAGIRI HULU', '2018-06-07 12:40:38', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1403, 14, 'KABUPATEN INDRAGIRI HILIR', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1404, 14, 'KABUPATEN PELALAWAN', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1405, 14, 'KABUPATEN S I A K', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1406, 14, 'KABUPATEN KAMPAR', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1407, 14, 'KABUPATEN ROKAN HULU', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1408, 14, 'KABUPATEN BENGKALIS', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1409, 14, 'KABUPATEN ROKAN HILIR', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1410, 14, 'KABUPATEN KEPULAUAN MERANTI', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1471, 14, 'KOTA PEKANBARU', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1473, 14, 'KOTA D U M A I', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1501, 15, 'KABUPATEN KERINCI', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1502, 15, 'KABUPATEN MERANGIN', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1503, 15, 'KABUPATEN SAROLANGUN', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1504, 15, 'KABUPATEN BATANG HARI', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1505, 15, 'KABUPATEN MUARO JAMBI', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1506, 15, 'KABUPATEN TANJUNG JABUNG TIMUR', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1507, 15, 'KABUPATEN TANJUNG JABUNG BARAT', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1508, 15, 'KABUPATEN TEBO', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1509, 15, 'KABUPATEN BUNGO', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1571, 15, 'KOTA JAMBI', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1572, 15, 'KOTA SUNGAI PENUH', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1601, 16, 'KABUPATEN OGAN KOMERING ULU', '2018-06-07 12:40:39', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1602, 16, 'KABUPATEN OGAN KOMERING ILIR', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1603, 16, 'KABUPATEN MUARA ENIM', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1604, 16, 'KABUPATEN LAHAT', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1605, 16, 'KABUPATEN MUSI RAWAS', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1606, 16, 'KABUPATEN MUSI BANYUASIN', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1607, 16, 'KABUPATEN BANYU ASIN', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1608, 16, 'KABUPATEN OGAN KOMERING ULU SELATAN', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1609, 16, 'KABUPATEN OGAN KOMERING ULU TIMUR', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1610, 16, 'KABUPATEN OGAN ILIR', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1611, 16, 'KABUPATEN EMPAT LAWANG', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1612, 16, 'KABUPATEN PENUKAL ABAB LEMATANG ILIR', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1613, 16, 'KABUPATEN MUSI RAWAS UTARA', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1671, 16, 'KOTA PALEMBANG', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1672, 16, 'KOTA PRABUMULIH', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1673, 16, 'KOTA PAGAR ALAM', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1674, 16, 'KOTA LUBUKLINGGAU', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1701, 17, 'KABUPATEN BENGKULU SELATAN', '2018-06-07 12:40:40', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1702, 17, 'KABUPATEN REJANG LEBONG', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1703, 17, 'KABUPATEN BENGKULU UTARA', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1704, 17, 'KABUPATEN KAUR', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1705, 17, 'KABUPATEN SELUMA', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1706, 17, 'KABUPATEN MUKOMUKO', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1707, 17, 'KABUPATEN LEBONG', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1708, 17, 'KABUPATEN KEPAHIANG', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1709, 17, 'KABUPATEN BENGKULU TENGAH', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1771, 17, 'KOTA BENGKULU', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1801, 18, 'KABUPATEN LAMPUNG BARAT', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1802, 18, 'KABUPATEN TANGGAMUS', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1803, 18, 'KABUPATEN LAMPUNG SELATAN', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1804, 18, 'KABUPATEN LAMPUNG TIMUR', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1805, 18, 'KABUPATEN LAMPUNG TENGAH', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1806, 18, 'KABUPATEN LAMPUNG UTARA', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1807, 18, 'KABUPATEN WAY KANAN', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1808, 18, 'KABUPATEN TULANGBAWANG', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1809, 18, 'KABUPATEN PESAWARAN', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1810, 18, 'KABUPATEN PRINGSEWU', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1811, 18, 'KABUPATEN MESUJI', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1812, 18, 'KABUPATEN TULANG BAWANG BARAT', '2018-06-07 12:40:41', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1813, 18, 'KABUPATEN PESISIR BARAT', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1871, 18, 'KOTA BANDAR LAMPUNG', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1872, 18, 'KOTA METRO', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1901, 19, 'KABUPATEN BANGKA', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1902, 19, 'KABUPATEN BELITUNG', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1903, 19, 'KABUPATEN BANGKA BARAT', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1904, 19, 'KABUPATEN BANGKA TENGAH', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1905, 19, 'KABUPATEN BANGKA SELATAN', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1906, 19, 'KABUPATEN BELITUNG TIMUR', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (1971, 19, 'KOTA PANGKAL PINANG', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (2101, 21, 'KABUPATEN KARIMUN', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (2102, 21, 'KABUPATEN BINTAN', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (2103, 21, 'KABUPATEN NATUNA', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (2104, 21, 'KABUPATEN LINGGA', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (2105, 21, 'KABUPATEN KEPULAUAN ANAMBAS', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (2171, 21, 'KOTA B A T A M', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (2172, 21, 'KOTA TANJUNG PINANG', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3101, 31, 'KABUPATEN KEPULAUAN SERIBU', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3171, 31, 'KOTA JAKARTA SELATAN', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3172, 31, 'KOTA JAKARTA TIMUR', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3173, 31, 'KOTA JAKARTA PUSAT', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3174, 31, 'KOTA JAKARTA BARAT', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3175, 31, 'KOTA JAKARTA UTARA', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3201, 32, 'KABUPATEN BOGOR', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3202, 32, 'KABUPATEN SUKABUMI', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3203, 32, 'KABUPATEN CIANJUR', '2018-06-07 12:40:42', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3204, 32, 'KABUPATEN BANDUNG', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3205, 32, 'KABUPATEN GARUT', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3206, 32, 'KABUPATEN TASIKMALAYA', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3207, 32, 'KABUPATEN CIAMIS', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3208, 32, 'KABUPATEN KUNINGAN', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3209, 32, 'KABUPATEN CIREBON', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3210, 32, 'KABUPATEN MAJALENGKA', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3211, 32, 'KABUPATEN SUMEDANG', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3212, 32, 'KABUPATEN INDRAMAYU', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3213, 32, 'KABUPATEN SUBANG', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3214, 32, 'KABUPATEN PURWAKARTA', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3215, 32, 'KABUPATEN KARAWANG', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3216, 32, 'KABUPATEN BEKASI', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3217, 32, 'KABUPATEN BANDUNG BARAT', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3218, 32, 'KABUPATEN PANGANDARAN', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3271, 32, 'KOTA BOGOR', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3272, 32, 'KOTA SUKABUMI', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3273, 32, 'KOTA BANDUNG', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3274, 32, 'KOTA CIREBON', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3275, 32, 'KOTA BEKASI', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3276, 32, 'KOTA DEPOK', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3277, 32, 'KOTA CIMAHI', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3278, 32, 'KOTA TASIKMALAYA', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3279, 32, 'KOTA BANJAR', '2018-06-07 12:40:43', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3301, 33, 'KABUPATEN CILACAP', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3302, 33, 'KABUPATEN BANYUMAS', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3303, 33, 'KABUPATEN PURBALINGGA', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3304, 33, 'KABUPATEN BANJARNEGARA', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3305, 33, 'KABUPATEN KEBUMEN', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3306, 33, 'KABUPATEN PURWOREJO', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3307, 33, 'KABUPATEN WONOSOBO', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3308, 33, 'KABUPATEN MAGELANG', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3309, 33, 'KABUPATEN BOYOLALI', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3310, 33, 'KABUPATEN KLATEN', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3311, 33, 'KABUPATEN SUKOHARJO', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3312, 33, 'KABUPATEN WONOGIRI', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3313, 33, 'KABUPATEN KARANGANYAR', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3314, 33, 'KABUPATEN SRAGEN', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3315, 33, 'KABUPATEN GROBOGAN', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3316, 33, 'KABUPATEN BLORA', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3317, 33, 'KABUPATEN REMBANG', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3318, 33, 'KABUPATEN PATI', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3319, 33, 'KABUPATEN KUDUS', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3320, 33, 'KABUPATEN JEPARA', '2018-06-07 12:40:44', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3321, 33, 'KABUPATEN DEMAK', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3322, 33, 'KABUPATEN SEMARANG', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3323, 33, 'KABUPATEN TEMANGGUNG', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3324, 33, 'KABUPATEN KENDAL', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3325, 33, 'KABUPATEN BATANG', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3326, 33, 'KABUPATEN PEKALONGAN', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3327, 33, 'KABUPATEN PEMALANG', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3328, 33, 'KABUPATEN TEGAL', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3329, 33, 'KABUPATEN BREBES', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3371, 33, 'KOTA MAGELANG', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3372, 33, 'KOTA SURAKARTA', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3373, 33, 'KOTA SALATIGA', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3374, 33, 'KOTA SEMARANG', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3375, 33, 'KOTA PEKALONGAN', '2018-06-07 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3376, 33, 'KOTA TEGAL', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3401, 34, 'KABUPATEN KULON PROGO', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3402, 34, 'KABUPATEN BANTUL', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3403, 34, 'KABUPATEN GUNUNG KIDUL', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3404, 34, 'KABUPATEN SLEMAN', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3471, 34, 'KOTA YOGYAKARTA', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3501, 35, 'KABUPATEN PACITAN', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3502, 35, 'KABUPATEN PONOROGO', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3503, 35, 'KABUPATEN TRENGGALEK', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3504, 35, 'KABUPATEN TULUNGAGUNG', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3505, 35, 'KABUPATEN BLITAR', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3506, 35, 'KABUPATEN KEDIRI', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3507, 35, 'KABUPATEN MALANG', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3508, 35, 'KABUPATEN LUMAJANG', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3509, 35, 'KABUPATEN JEMBER', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3510, 35, 'KABUPATEN BANYUWANGI', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3511, 35, 'KABUPATEN BONDOWOSO', '2018-06-07 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3512, 35, 'KABUPATEN SITUBONDO', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3513, 35, 'KABUPATEN PROBOLINGGO', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3514, 35, 'KABUPATEN PASURUAN', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3515, 35, 'KABUPATEN SIDOARJO', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3516, 35, 'KABUPATEN MOJOKERTO', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3517, 35, 'KABUPATEN JOMBANG', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3518, 35, 'KABUPATEN NGANJUK', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3519, 35, 'KABUPATEN MADIUN', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3520, 35, 'KABUPATEN MAGETAN', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3521, 35, 'KABUPATEN NGAWI', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3522, 35, 'KABUPATEN BOJONEGORO', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3523, 35, 'KABUPATEN TUBAN', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3524, 35, 'KABUPATEN LAMONGAN', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3525, 35, 'KABUPATEN GRESIK', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3526, 35, 'KABUPATEN BANGKALAN', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3527, 35, 'KABUPATEN SAMPANG', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3528, 35, 'KABUPATEN PAMEKASAN', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3529, 35, 'KABUPATEN SUMENEP', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3571, 35, 'KOTA KEDIRI', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3572, 35, 'KOTA BLITAR', '2018-06-07 12:40:47', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3573, 35, 'KOTA MALANG', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3574, 35, 'KOTA PROBOLINGGO', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3575, 35, 'KOTA PASURUAN', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3576, 35, 'KOTA MOJOKERTO', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3577, 35, 'KOTA MADIUN', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3578, 35, 'KOTA SURABAYA', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3579, 35, 'KOTA BATU', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3601, 36, 'KABUPATEN PANDEGLANG', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3602, 36, 'KABUPATEN LEBAK', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3603, 36, 'KABUPATEN TANGERANG', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3604, 36, 'KABUPATEN SERANG', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3671, 36, 'KOTA TANGERANG', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3672, 36, 'KOTA CILEGON', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3673, 36, 'KOTA SERANG', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (3674, 36, 'KOTA TANGERANG SELATAN', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5101, 51, 'KABUPATEN JEMBRANA', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5102, 51, 'KABUPATEN TABANAN', '2018-06-07 12:40:48', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5103, 51, 'KABUPATEN BADUNG', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5104, 51, 'KABUPATEN GIANYAR', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5105, 51, 'KABUPATEN KLUNGKUNG', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5106, 51, 'KABUPATEN BANGLI', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5107, 51, 'KABUPATEN KARANG ASEM', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5108, 51, 'KABUPATEN BULELENG', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5171, 51, 'KOTA DENPASAR', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5201, 52, 'KABUPATEN LOMBOK BARAT', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5202, 52, 'KABUPATEN LOMBOK TENGAH', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5203, 52, 'KABUPATEN LOMBOK TIMUR', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5204, 52, 'KABUPATEN SUMBAWA', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5205, 52, 'KABUPATEN DOMPU', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5206, 52, 'KABUPATEN BIMA', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5207, 52, 'KABUPATEN SUMBAWA BARAT', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5208, 52, 'KABUPATEN LOMBOK UTARA', '2018-06-07 12:40:49', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5271, 52, 'KOTA MATARAM', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5272, 52, 'KOTA BIMA', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5301, 53, 'KABUPATEN SUMBA BARAT', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5302, 53, 'KABUPATEN SUMBA TIMUR', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5303, 53, 'KABUPATEN KUPANG', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5304, 53, 'KABUPATEN TIMOR TENGAH SELATAN', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5305, 53, 'KABUPATEN TIMOR TENGAH UTARA', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5306, 53, 'KABUPATEN BELU', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5307, 53, 'KABUPATEN ALOR', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5308, 53, 'KABUPATEN LEMBATA', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5309, 53, 'KABUPATEN FLORES TIMUR', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5310, 53, 'KABUPATEN SIKKA', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5311, 53, 'KABUPATEN ENDE', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5312, 53, 'KABUPATEN NGADA', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5313, 53, 'KABUPATEN MANGGARAI', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5314, 53, 'KABUPATEN ROTE NDAO', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5315, 53, 'KABUPATEN MANGGARAI BARAT', '2018-06-07 12:40:50', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5316, 53, 'KABUPATEN SUMBA TENGAH', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5317, 53, 'KABUPATEN SUMBA BARAT DAYA', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5318, 53, 'KABUPATEN NAGEKEO', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5319, 53, 'KABUPATEN MANGGARAI TIMUR', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5320, 53, 'KABUPATEN SABU RAIJUA', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5321, 53, 'KABUPATEN MALAKA', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (5371, 53, 'KOTA KUPANG', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6101, 61, 'KABUPATEN SAMBAS', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6102, 61, 'KABUPATEN BENGKAYANG', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6103, 61, 'KABUPATEN LANDAK', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6104, 61, 'KABUPATEN MEMPAWAH', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6105, 61, 'KABUPATEN SANGGAU', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6106, 61, 'KABUPATEN KETAPANG', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6107, 61, 'KABUPATEN SINTANG', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6108, 61, 'KABUPATEN KAPUAS HULU', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6109, 61, 'KABUPATEN SEKADAU', '2018-06-07 12:40:51', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6110, 61, 'KABUPATEN MELAWI', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6111, 61, 'KABUPATEN KAYONG UTARA', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6112, 61, 'KABUPATEN KUBU RAYA', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6171, 61, 'KOTA PONTIANAK', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6172, 61, 'KOTA SINGKAWANG', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6201, 62, 'KABUPATEN KOTAWARINGIN BARAT', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6202, 62, 'KABUPATEN KOTAWARINGIN TIMUR', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6203, 62, 'KABUPATEN KAPUAS', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6204, 62, 'KABUPATEN BARITO SELATAN', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6205, 62, 'KABUPATEN BARITO UTARA', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6206, 62, 'KABUPATEN SUKAMARA', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6207, 62, 'KABUPATEN LAMANDAU', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6208, 62, 'KABUPATEN SERUYAN', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6209, 62, 'KABUPATEN KATINGAN', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6210, 62, 'KABUPATEN PULANG PISAU', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6211, 62, 'KABUPATEN GUNUNG MAS', '2018-06-07 12:40:52', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6212, 62, 'KABUPATEN BARITO TIMUR', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6213, 62, 'KABUPATEN MURUNG RAYA', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6271, 62, 'KOTA PALANGKA RAYA', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6301, 63, 'KABUPATEN TANAH LAUT', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6302, 63, 'KABUPATEN KOTA BARU', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6303, 63, 'KABUPATEN BANJAR', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6304, 63, 'KABUPATEN BARITO KUALA', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6305, 63, 'KABUPATEN TAPIN', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6306, 63, 'KABUPATEN HULU SUNGAI SELATAN', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6307, 63, 'KABUPATEN HULU SUNGAI TENGAH', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6308, 63, 'KABUPATEN HULU SUNGAI UTARA', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6309, 63, 'KABUPATEN TABALONG', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6310, 63, 'KABUPATEN TANAH BUMBU', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6311, 63, 'KABUPATEN BALANGAN', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6371, 63, 'KOTA BANJARMASIN', '2018-06-07 12:40:53', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6372, 63, 'KOTA BANJAR BARU', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6401, 64, 'KABUPATEN PASER', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6402, 64, 'KABUPATEN KUTAI BARAT', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6403, 64, 'KABUPATEN KUTAI KARTANEGARA', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6404, 64, 'KABUPATEN KUTAI TIMUR', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6405, 64, 'KABUPATEN BERAU', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6409, 64, 'KABUPATEN PENAJAM PASER UTARA', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6411, 64, 'KABUPATEN MAHAKAM HULU', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6471, 64, 'KOTA BALIKPAPAN', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6472, 64, 'KOTA SAMARINDA', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6474, 64, 'KOTA BONTANG', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6501, 65, 'KABUPATEN MALINAU', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6502, 65, 'KABUPATEN BULUNGAN', '2018-06-07 12:40:54', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6503, 65, 'KABUPATEN TANA TIDUNG', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6504, 65, 'KABUPATEN NUNUKAN', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (6571, 65, 'KOTA TARAKAN', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7101, 71, 'KABUPATEN BOLAANG MONGONDOW', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7102, 71, 'KABUPATEN MINAHASA', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7103, 71, 'KABUPATEN KEPULAUAN SANGIHE', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7104, 71, 'KABUPATEN KEPULAUAN TALAUD', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7105, 71, 'KABUPATEN MINAHASA SELATAN', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7106, 71, 'KABUPATEN MINAHASA UTARA', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7107, 71, 'KABUPATEN BOLAANG MONGONDOW UTARA', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7108, 71, 'KABUPATEN SIAU TAGULANDANG BIARO', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7109, 71, 'KABUPATEN MINAHASA TENGGARA', '2018-06-07 12:40:55', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7110, 71, 'KABUPATEN BOLAANG MONGONDOW SELATAN', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7111, 71, 'KABUPATEN BOLAANG MONGONDOW TIMUR', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7171, 71, 'KOTA MANADO', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7172, 71, 'KOTA BITUNG', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7173, 71, 'KOTA TOMOHON', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7174, 71, 'KOTA KOTAMOBAGU', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7201, 72, 'KABUPATEN BANGGAI KEPULAUAN', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7202, 72, 'KABUPATEN BANGGAI', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7203, 72, 'KABUPATEN MOROWALI', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7204, 72, 'KABUPATEN POSO', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7205, 72, 'KABUPATEN DONGGALA', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7206, 72, 'KABUPATEN TOLI-TOLI', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7207, 72, 'KABUPATEN BUOL', '2018-06-07 12:40:56', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7208, 72, 'KABUPATEN PARIGI MOUTONG', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7209, 72, 'KABUPATEN TOJO UNA-UNA', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7210, 72, 'KABUPATEN SIGI', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7211, 72, 'KABUPATEN BANGGAI LAUT', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7212, 72, 'KABUPATEN MOROWALI UTARA', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7271, 72, 'KOTA PALU', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7301, 73, 'KABUPATEN KEPULAUAN SELAYAR', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7302, 73, 'KABUPATEN BULUKUMBA', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7303, 73, 'KABUPATEN BANTAENG', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7304, 73, 'KABUPATEN JENEPONTO', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7305, 73, 'KABUPATEN TAKALAR', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7306, 73, 'KABUPATEN GOWA', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7307, 73, 'KABUPATEN SINJAI', '2018-06-07 12:40:57', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7308, 73, 'KABUPATEN MAROS', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7309, 73, 'KABUPATEN PANGKAJENE DAN KEPULAUAN', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7310, 73, 'KABUPATEN BARRU', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7311, 73, 'KABUPATEN BONE', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7312, 73, 'KABUPATEN SOPPENG', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7313, 73, 'KABUPATEN WAJO', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7314, 73, 'KABUPATEN SIDENRENG RAPPANG', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7315, 73, 'KABUPATEN PINRANG', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7316, 73, 'KABUPATEN ENREKANG', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7317, 73, 'KABUPATEN LUWU', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7318, 73, 'KABUPATEN TANA TORAJA', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7322, 73, 'KABUPATEN LUWU UTARA', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7325, 73, 'KABUPATEN LUWU TIMUR', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7326, 73, 'KABUPATEN TORAJA UTARA', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7371, 73, 'KOTA MAKASSAR', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7372, 73, 'KOTA PAREPARE', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7373, 73, 'KOTA PALOPO', '2018-06-07 12:40:58', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7401, 74, 'KABUPATEN BUTON', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7402, 74, 'KABUPATEN MUNA', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7403, 74, 'KABUPATEN KONAWE', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7404, 74, 'KABUPATEN KOLAKA', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7405, 74, 'KABUPATEN KONAWE SELATAN', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7406, 74, 'KABUPATEN BOMBANA', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7407, 74, 'KABUPATEN WAKATOBI', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7408, 74, 'KABUPATEN KOLAKA UTARA', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7409, 74, 'KABUPATEN BUTON UTARA', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7410, 74, 'KABUPATEN KONAWE UTARA', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7411, 74, 'KABUPATEN KOLAKA TIMUR', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7412, 74, 'KABUPATEN KONAWE KEPULAUAN', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7413, 74, 'KABUPATEN MUNA BARAT', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7414, 74, 'KABUPATEN BUTON TENGAH', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7415, 74, 'KABUPATEN BUTON SELATAN', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7471, 74, 'KOTA KENDARI', '2018-06-07 12:40:59', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7472, 74, 'KOTA BAUBAU', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7501, 75, 'KABUPATEN BOALEMO', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7502, 75, 'KABUPATEN GORONTALO', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7503, 75, 'KABUPATEN POHUWATO', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7504, 75, 'KABUPATEN BONE BOLANGO', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7505, 75, 'KABUPATEN GORONTALO UTARA', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7571, 75, 'KOTA GORONTALO', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7601, 76, 'KABUPATEN MAJENE', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7602, 76, 'KABUPATEN POLEWALI MANDAR', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7603, 76, 'KABUPATEN MAMASA', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7604, 76, 'KABUPATEN MAMUJU', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7605, 76, 'KABUPATEN MAMUJU UTARA', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (7606, 76, 'KABUPATEN MAMUJU TENGAH', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8101, 81, 'KABUPATEN MALUKU TENGGARA BARAT', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8102, 81, 'KABUPATEN MALUKU TENGGARA', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8103, 81, 'KABUPATEN MALUKU TENGAH', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8104, 81, 'KABUPATEN BURU', '2018-06-07 12:41:00', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8105, 81, 'KABUPATEN KEPULAUAN ARU', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8106, 81, 'KABUPATEN SERAM BAGIAN BARAT', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8107, 81, 'KABUPATEN SERAM BAGIAN TIMUR', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8108, 81, 'KABUPATEN MALUKU BARAT DAYA', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8109, 81, 'KABUPATEN BURU SELATAN', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8171, 81, 'KOTA AMBON', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8172, 81, 'KOTA TUAL', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8201, 82, 'KABUPATEN HALMAHERA BARAT', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8202, 82, 'KABUPATEN HALMAHERA TENGAH', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8203, 82, 'KABUPATEN KEPULAUAN SULA', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8204, 82, 'KABUPATEN HALMAHERA SELATAN', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8205, 82, 'KABUPATEN HALMAHERA UTARA', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8206, 82, 'KABUPATEN HALMAHERA TIMUR', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8207, 82, 'KABUPATEN PULAU MOROTAI', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8208, 82, 'KABUPATEN PULAU TALIABU', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8271, 82, 'KOTA TERNATE', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (8272, 82, 'KOTA TIDORE KEPULAUAN', '2018-06-07 12:41:01', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9101, 91, 'KABUPATEN FAKFAK', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9102, 91, 'KABUPATEN KAIMANA', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9103, 91, 'KABUPATEN TELUK WONDAMA', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9104, 91, 'KABUPATEN TELUK BINTUNI', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9105, 91, 'KABUPATEN MANOKWARI', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9106, 91, 'KABUPATEN SORONG SELATAN', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9107, 91, 'KABUPATEN SORONG', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9108, 91, 'KABUPATEN RAJA AMPAT', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9109, 91, 'KABUPATEN TAMBRAUW', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9110, 91, 'KABUPATEN MAYBRAT', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9111, 91, 'KABUPATEN MANOKWARI SELATAN', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9112, 91, 'KABUPATEN PEGUNUNGAN ARFAK', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9171, 91, 'KOTA SORONG', '2018-06-07 12:41:02', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9401, 94, 'KABUPATEN MERAUKE', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9402, 94, 'KABUPATEN JAYAWIJAYA', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9403, 94, 'KABUPATEN JAYAPURA', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9404, 94, 'KABUPATEN NABIRE', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9408, 94, 'KABUPATEN KEPULAUAN YAPEN', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9409, 94, 'KABUPATEN BIAK NUMFOR', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9410, 94, 'KABUPATEN PANIAI', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9411, 94, 'KABUPATEN PUNCAK JAYA', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9412, 94, 'KABUPATEN MIMIKA', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9413, 94, 'KABUPATEN BOVEN DIGOEL', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9414, 94, 'KABUPATEN MAPPI', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9415, 94, 'KABUPATEN ASMAT', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9416, 94, 'KABUPATEN YAHUKIMO', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9417, 94, 'KABUPATEN PEGUNUNGAN BINTANG', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9418, 94, 'KABUPATEN TOLIKARA', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9419, 94, 'KABUPATEN SARMI', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9420, 94, 'KABUPATEN KEEROM', '2018-06-07 12:41:03', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9426, 94, 'KABUPATEN WAROPEN', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9427, 94, 'KABUPATEN SUPIORI', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9428, 94, 'KABUPATEN MAMBERAMO RAYA', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9429, 94, 'KABUPATEN NDUGA', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9430, 94, 'KABUPATEN LANNY JAYA', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9431, 94, 'KABUPATEN MAMBERAMO TENGAH', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9432, 94, 'KABUPATEN YALIMO', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9433, 94, 'KABUPATEN PUNCAK', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9434, 94, 'KABUPATEN DOGIYAI', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9435, 94, 'KABUPATEN INTAN JAYA', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9436, 94, 'KABUPATEN DEIYAI', '2018-06-07 12:41:04', '0000-00-00 00:00:00');
INSERT INTO `kota` VALUES (9471, 94, 'KOTA JAYAPURA', '2018-06-07 12:41:04', '0000-00-00 00:00:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_pekerjaan
-- ----------------------------
INSERT INTO `m_pekerjaan` VALUES (2, 1, 2019, 2, 'Gedung A', '2019-05-18 14:25:43');

-- ----------------------------
-- Table structure for m_penilaian
-- ----------------------------
DROP TABLE IF EXISTS `m_penilaian`;
CREATE TABLE `m_penilaian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NULL DEFAULT NULL,
  `bulan` int(11) NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ketersediaan_fasilitas` double NULL DEFAULT NULL,
  `nilai_maksimum` double NULL DEFAULT NULL,
  `persentase_pelaksanaan` double NULL DEFAULT NULL,
  `pencapaian` double NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `catatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_penilaian
-- ----------------------------
INSERT INTO `m_penilaian` VALUES (41, 2019, 2, 2, 'Sales Area / LFM', 50, 150, 100, 100, '2019-05-24 10:10:59', '');
INSERT INTO `m_penilaian` VALUES (42, 2019, 1, 2, 'Sales Area / LFM', 50, 150, 100, 100, '2019-05-24 10:11:12', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for master_jadwal_sla
-- ----------------------------
DROP TABLE IF EXISTS `master_jadwal_sla`;
CREATE TABLE `master_jadwal_sla`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sla_id` int(11) NULL DEFAULT NULL,
  `detail_sla_id` int(11) NULL DEFAULT NULL,
  `frekuensi_id` int(11) NULL DEFAULT NULL,
  `H1` int(1) NULL DEFAULT 0,
  `H2` int(1) NULL DEFAULT 0,
  `H3` int(1) NULL DEFAULT 0,
  `H4` int(1) NULL DEFAULT 0,
  `H5` int(1) NULL DEFAULT 0,
  `H6` int(1) NULL DEFAULT 0,
  `H7` int(1) NULL DEFAULT 0,
  `M1` int(1) NULL DEFAULT 0,
  `M2` int(1) NULL DEFAULT 0,
  `M3` int(1) NULL DEFAULT 0,
  `M4` int(1) NULL DEFAULT 0,
  `M5` int(1) NULL DEFAULT 0,
  `B1` int(1) NULL DEFAULT 0,
  `B2` int(1) NULL DEFAULT 0,
  `B3` int(1) NULL DEFAULT 0,
  `B4` int(1) NULL DEFAULT 0,
  `B5` int(1) NULL DEFAULT 0,
  `B6` int(1) NULL DEFAULT 0,
  `B7` int(1) NULL DEFAULT 0,
  `B8` int(1) NULL DEFAULT 0,
  `B9` int(1) NULL DEFAULT 0,
  `B10` int(1) NULL DEFAULT 0,
  `B11` int(1) NULL DEFAULT 0,
  `B12` int(1) NULL DEFAULT 0,
  `create_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_jadwal_sla
-- ----------------------------
INSERT INTO `master_jadwal_sla` VALUES (4, 1, 4, 1005, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL);
INSERT INTO `master_jadwal_sla` VALUES (5, 1, 5, 1005, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_limbah
-- ----------------------------
INSERT INTO `master_limbah` VALUES (1, 2019, '1', 2, 'Basah', 200, 10000, 'uploads/179/2019-05/ba1275966d4232e847f869878830bb81.jpg', 'uploads/179/2019-05/45a4120e20c67ad920f8580f3455543d.png', '2019-05-14 23:49:30');
INSERT INTO `master_limbah` VALUES (2, 2019, '1', 2, 'Kering', 100, 100000, 'uploads/179/2019-05/ba1275966d4232e847f869878830bb81.jpg', 'uploads/179/2019-05/45a4120e20c67ad920f8580f3455543d.png', '2019-05-14 23:49:35');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_listrik
-- ----------------------------
INSERT INTO `master_listrik` VALUES (7, 2019, '1', 2, 123123, 10000, 'uploads/179/2019-05/ba1275966d4232e847f869878830bb81.jpg', 'uploads/179/2019-05/45a4120e20c67ad920f8580f3455543d.png', '2019-05-14 23:45:13');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_solar
-- ----------------------------
INSERT INTO `master_solar` VALUES (2, 2019, '1', 2, 100000, 1000, 'uploads/179/2019-05/ba1275966d4232e847f869878830bb81.jpg', 'uploads/179/2019-05/45a4120e20c67ad920f8580f3455543d.png', '2019-05-14 16:47:02');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
-- Table structure for nomor_tiket
-- ----------------------------
DROP TABLE IF EXISTS `nomor_tiket`;
CREATE TABLE `nomor_tiket`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai` int(11) NULL DEFAULT NULL,
  `tahun` int(255) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nomor_tiket
-- ----------------------------
INSERT INTO `nomor_tiket` VALUES (1, 'Work Order', 'WO-', 39, NULL, '2019-05-19 11:35:35');
INSERT INTO `nomor_tiket` VALUES (2, 'Request', 'Req-', 2, NULL, '2018-08-03 04:09:26');
INSERT INTO `nomor_tiket` VALUES (3, 'Request', 'Req-', 2, NULL, '2018-08-03 04:09:26');
INSERT INTO `nomor_tiket` VALUES (5, 'Work Order', 'WO-', 13, 2019, '2019-05-06 13:06:07');

-- ----------------------------
-- Table structure for parameter
-- ----------------------------
DROP TABLE IF EXISTS `parameter`;
CREATE TABLE `parameter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 557 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of parameter
-- ----------------------------
INSERT INTO `parameter` VALUES (1, 'Tahun', '2019');
INSERT INTO `parameter` VALUES (555, '1', '01');
INSERT INTO `parameter` VALUES (556, 'Link Halomas', 'http://solutechdemo.com/pgnmas/fms/dashboard');

-- ----------------------------
-- Table structure for provinsi
-- ----------------------------
DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE `provinsi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of provinsi
-- ----------------------------
INSERT INTO `provinsi` VALUES (11, 'ACEH', '2018-06-07 12:44:28', '2018-06-07 05:44:28');
INSERT INTO `provinsi` VALUES (12, 'SUMATERA UTARA', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (13, 'SUMATERA BARAT', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (14, 'RIAU', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (15, 'JAMBI', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (16, 'SUMATERA SELATAN', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (17, 'BENGKULU', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (18, 'LAMPUNG', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (19, 'KEPULAUAN BANGKA BELITUNG', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (21, 'KEPULAUAN RIAU', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (31, 'DKI JAKARTA', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (32, 'JAWA BARAT', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (33, 'JAWA TENGAH', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (34, 'DI YOGYAKARTA', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (35, 'JAWA TIMUR', '2018-06-07 12:40:23', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (36, 'BANTEN', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (51, 'BALI', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (52, 'NUSA TENGGARA BARAT', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (53, 'NUSA TENGGARA TIMUR', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (61, 'KALIMANTAN BARAT', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (62, 'KALIMANTAN TENGAH', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (63, 'KALIMANTAN SELATAN', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (64, 'KALIMANTAN TIMUR', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (65, 'KALIMANTAN UTARA', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (71, 'SULAWESI UTARA', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (72, 'SULAWESI TENGAH', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (73, 'SULAWESI SELATAN', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (74, 'SULAWESI TENGGARA', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (75, 'GORONTALO', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (76, 'SULAWESI BARAT', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (81, 'MALUKU', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (82, 'MALUKU UTARA', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (91, 'PAPUA BARAT', '2018-06-07 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `provinsi` VALUES (94, 'PAPUA', '2018-06-07 12:40:24', '0000-00-00 00:00:00');

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

-- ----------------------------
-- Table structure for rekap_pemakaian
-- ----------------------------
DROP TABLE IF EXISTS `rekap_pemakaian`;
CREATE TABLE `rekap_pemakaian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aset_id` int(11) NULL DEFAULT NULL,
  `area_id` int(11) NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 16473 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rekap_pemakaian
-- ----------------------------
INSERT INTO `rekap_pemakaian` VALUES (15963, 2, 14, 8, 'Gedung A', 2019, 'listrik', '', 123123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (15964, 3, 14, 8, 'Gedung B', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:25');
INSERT INTO `rekap_pemakaian` VALUES (15965, 4, 14, 8, 'Gedung C', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:25');
INSERT INTO `rekap_pemakaian` VALUES (15966, 5, 14, 8, 'Graha PGAS', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15967, 6, 14, 8, 'Gedung Parkir', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15968, 7, 14, 8, 'Gedung Utilitas', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15969, 8, 14, 8, 'Gedung Penunjang', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15970, 9, 14, 8, 'Masjid Al Istiqomah', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15971, 10, 18, 8, 'Gedung Manhattan', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15972, 11, 12, 8, 'Gedung Juanda', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15973, 12, 9, 8, 'Masjid Daan Mogot', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15974, 13, 9, 8, 'GOR Daan Mogot', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15975, 14, 9, 8, 'Gedung PGASOL', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15976, 15, 2, 8, 'Gedung Area Jakarta (A, B, C)', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15977, 16, 15, 8, 'Gedung Arsip', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15978, 17, 5, 4, 'Gedung Area Bekasi', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15979, 18, 25, 4, 'Gudang Sabilillah Bekasi', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15980, 19, 6, 5, 'Gedung Area Bogor', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15981, 20, 20, 5, 'Wisma Direksi', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15982, 21, 20, 5, 'Gedung Sunyaragi & Bojonegoro', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15983, 22, 20, 5, 'Gedung Pagardewa dan Panaran', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15984, 23, 3, 2, 'Gedung Braga', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15985, 24, 3, 2, 'Wisma Diklat', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15986, 25, 3, 2, 'Wisma Diklat', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15987, 26, 3, 2, 'Rumah Serang 10', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15988, 27, 3, 2, 'Rumah Serang 12', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15989, 28, 3, 2, 'Rumah Serang 3 - Arsip', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15990, 29, 3, 2, 'Rumah Serang 1 sd 9 - Arsip', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15991, 30, 3, 2, 'Rumah Serang 5 - Direksi', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15992, 31, 3, 2, 'Rumah Serang 9', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15993, 32, 3, 2, 'Gedung Pengelola dan Arsip', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15994, 33, 3, 2, 'Gedung Penunjang Bandung', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:26');
INSERT INTO `rekap_pemakaian` VALUES (15995, 34, 17, 12, 'Rumah Makassar', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (15996, 35, 17, 12, 'Ruko Makassar', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (15997, 36, 26, 18, 'Gedung Kantor Semarang Diponogoro', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (15998, 37, 26, 18, 'Gedung Kantor Semarang Wahidin', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (15999, 38, 30, 21, 'Gedung Kantor Surabaya', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16000, 39, 30, 21, 'Gedung Kantor PGASOL Ngagel', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16001, 40, 22, 15, 'Gedung Kantor Pasuruan', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16002, 41, 28, 20, 'Gedung Kantor Sidoarjo', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16003, 42, 13, 10, 'Gedung Kantor Karawang', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16004, 43, 31, 22, 'Gedung Kantor Tangerang', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16005, 44, 7, 6, 'Gedung Kantor Cilegon', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16006, 45, 8, 7, 'Gedung Kantor Cirebon', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16007, 46, 8, 7, 'Gedung PGASOL Cirebon', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16008, 47, 8, 7, 'Gedung PGASOL Cirebon 2', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16009, 48, 8, 7, 'Gedung HBB dan Arsip Cirebon', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16010, 49, 8, 7, 'Rumah Dinas Cirebon A,B,C', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16011, 50, 8, 7, 'Rumah Dinas Cirebon Belakang', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16012, 51, 8, 7, 'Gedung PI Cirebon', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16013, 52, 8, 7, 'GOR Cirebon', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16014, 53, 21, 14, 'Gedung Kantor Palembang', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16015, 54, 16, 11, 'Gedung Kantor Lampung ', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16016, 55, 19, 13, 'Gedung Kantor Medan Imam Bonjol', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16017, 56, 19, 13, 'Gedung Kantor Medan Glugur', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16018, 57, 19, 13, 'Rumah Dinas Uskup Agung', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16019, 58, 4, 3, 'Gedung Batam Center', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16020, 59, 23, 16, 'Gedung Kantor Pekanbaru', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16021, 60, 32, 23, 'Gedung Kantor Tarakan', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16022, 61, 29, 8, 'Gedung Sinergi 8 - BUMN', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16023, 62, 10, 8, 'Tanah Kosong Klender', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16024, 63, 10, 8, 'Tanah Kosong Klender', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16025, 64, 10, 8, 'Tanah dan Bangunan Mirra 8', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16026, 65, 10, 8, 'Tanah dan Bangunan Mirra 2-4', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16027, 66, 10, 8, 'Tanah Kosong Ahmad Yani', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16028, 67, 10, 8, 'Tanah Kosong Ketapang', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16029, 68, 5, 4, 'Tanah Kosong Pekayon', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:27');
INSERT INTO `rekap_pemakaian` VALUES (16030, 69, 5, 4, 'Tanah Kosong Pondok Hijau', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16031, 70, 5, 4, 'Tanah Kosong Pondok Hijau 2', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16032, 71, 6, 5, 'Tanah Kosong Megamendung', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16033, 72, 6, 5, 'Tanah Kosong dan Lapangan Bogor', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16034, 73, 3, 2, 'Tanah Kosong Bandung', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16035, 74, 11, 9, 'Tanah Kosong Jambi', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16036, 75, 11, 9, 'Tanah Kosong Jambi 2', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16037, 76, 17, 12, 'Tanah Kosong Makassar', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16038, 77, 26, 18, 'Tanah Kosong Sleko Semarang', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16039, 78, 26, 18, 'Tanah Kosong Wahidin Semarang', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16040, 79, 27, 19, 'Tanah Kosong Serang Banten', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16041, 80, 16, 11, 'Tanah Kosong Lampung', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16042, 81, 19, 13, 'Tanah Kosong Yos Sudarso Medan', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16043, 82, 19, 13, 'Tanah Kosong Glugur Medan', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16044, 83, 19, 13, 'Tanah Kosong Glugur Medan 2', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16045, 84, 23, 16, 'Tanah Kosong Pekanbaru', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16046, 85, 28, 20, 'Tanah Kosong Probolinggo', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16047, 86, 24, 17, 'Tanah Kosong Sidoarjo', 2019, 'listrik', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16048, 2, 14, 8, 'Gedung A', 2019, 'solar', '', 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:33');
INSERT INTO `rekap_pemakaian` VALUES (16049, 3, 14, 8, 'Gedung B', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16050, 4, 14, 8, 'Gedung C', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16051, 5, 14, 8, 'Graha PGAS', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16052, 6, 14, 8, 'Gedung Parkir', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16053, 7, 14, 8, 'Gedung Utilitas', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16054, 8, 14, 8, 'Gedung Penunjang', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16055, 9, 14, 8, 'Masjid Al Istiqomah', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16056, 10, 18, 8, 'Gedung Manhattan', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16057, 11, 12, 8, 'Gedung Juanda', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16058, 12, 9, 8, 'Masjid Daan Mogot', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16059, 13, 9, 8, 'GOR Daan Mogot', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:28');
INSERT INTO `rekap_pemakaian` VALUES (16060, 14, 9, 8, 'Gedung PGASOL', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16061, 15, 2, 8, 'Gedung Area Jakarta (A, B, C)', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16062, 16, 15, 8, 'Gedung Arsip', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16063, 17, 5, 4, 'Gedung Area Bekasi', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16064, 18, 25, 4, 'Gudang Sabilillah Bekasi', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16065, 19, 6, 5, 'Gedung Area Bogor', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16066, 20, 20, 5, 'Wisma Direksi', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16067, 21, 20, 5, 'Gedung Sunyaragi & Bojonegoro', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16068, 22, 20, 5, 'Gedung Pagardewa dan Panaran', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16069, 23, 3, 2, 'Gedung Braga', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16070, 24, 3, 2, 'Wisma Diklat', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16071, 25, 3, 2, 'Wisma Diklat', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16072, 26, 3, 2, 'Rumah Serang 10', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16073, 27, 3, 2, 'Rumah Serang 12', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16074, 28, 3, 2, 'Rumah Serang 3 - Arsip', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16075, 29, 3, 2, 'Rumah Serang 1 sd 9 - Arsip', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16076, 30, 3, 2, 'Rumah Serang 5 - Direksi', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16077, 31, 3, 2, 'Rumah Serang 9', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16078, 32, 3, 2, 'Gedung Pengelola dan Arsip', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16079, 33, 3, 2, 'Gedung Penunjang Bandung', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16080, 34, 17, 12, 'Rumah Makassar', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16081, 35, 17, 12, 'Ruko Makassar', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16082, 36, 26, 18, 'Gedung Kantor Semarang Diponogoro', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16083, 37, 26, 18, 'Gedung Kantor Semarang Wahidin', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16084, 38, 30, 21, 'Gedung Kantor Surabaya', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16085, 39, 30, 21, 'Gedung Kantor PGASOL Ngagel', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16086, 40, 22, 15, 'Gedung Kantor Pasuruan', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16087, 41, 28, 20, 'Gedung Kantor Sidoarjo', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:29');
INSERT INTO `rekap_pemakaian` VALUES (16088, 42, 13, 10, 'Gedung Kantor Karawang', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:30');
INSERT INTO `rekap_pemakaian` VALUES (16089, 43, 31, 22, 'Gedung Kantor Tangerang', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:30');
INSERT INTO `rekap_pemakaian` VALUES (16090, 44, 7, 6, 'Gedung Kantor Cilegon', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:30');
INSERT INTO `rekap_pemakaian` VALUES (16091, 45, 8, 7, 'Gedung Kantor Cirebon', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:30');
INSERT INTO `rekap_pemakaian` VALUES (16092, 46, 8, 7, 'Gedung PGASOL Cirebon', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:30');
INSERT INTO `rekap_pemakaian` VALUES (16093, 47, 8, 7, 'Gedung PGASOL Cirebon 2', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:30');
INSERT INTO `rekap_pemakaian` VALUES (16094, 48, 8, 7, 'Gedung HBB dan Arsip Cirebon', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16095, 49, 8, 7, 'Rumah Dinas Cirebon A,B,C', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16096, 50, 8, 7, 'Rumah Dinas Cirebon Belakang', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16097, 51, 8, 7, 'Gedung PI Cirebon', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16098, 52, 8, 7, 'GOR Cirebon', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16099, 53, 21, 14, 'Gedung Kantor Palembang', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16100, 54, 16, 11, 'Gedung Kantor Lampung ', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16101, 55, 19, 13, 'Gedung Kantor Medan Imam Bonjol', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16102, 56, 19, 13, 'Gedung Kantor Medan Glugur', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16103, 57, 19, 13, 'Rumah Dinas Uskup Agung', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16104, 58, 4, 3, 'Gedung Batam Center', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16105, 59, 23, 16, 'Gedung Kantor Pekanbaru', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16106, 60, 32, 23, 'Gedung Kantor Tarakan', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16107, 61, 29, 8, 'Gedung Sinergi 8 - BUMN', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16108, 62, 10, 8, 'Tanah Kosong Klender', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16109, 63, 10, 8, 'Tanah Kosong Klender', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:31');
INSERT INTO `rekap_pemakaian` VALUES (16110, 64, 10, 8, 'Tanah dan Bangunan Mirra 8', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16111, 65, 10, 8, 'Tanah dan Bangunan Mirra 2-4', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16112, 66, 10, 8, 'Tanah Kosong Ahmad Yani', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16113, 67, 10, 8, 'Tanah Kosong Ketapang', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16114, 68, 5, 4, 'Tanah Kosong Pekayon', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16115, 69, 5, 4, 'Tanah Kosong Pondok Hijau', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16116, 70, 5, 4, 'Tanah Kosong Pondok Hijau 2', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16117, 71, 6, 5, 'Tanah Kosong Megamendung', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16118, 72, 6, 5, 'Tanah Kosong dan Lapangan Bogor', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16119, 73, 3, 2, 'Tanah Kosong Bandung', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16120, 74, 11, 9, 'Tanah Kosong Jambi', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16121, 75, 11, 9, 'Tanah Kosong Jambi 2', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16122, 76, 17, 12, 'Tanah Kosong Makassar', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16123, 77, 26, 18, 'Tanah Kosong Sleko Semarang', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16124, 78, 26, 18, 'Tanah Kosong Wahidin Semarang', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16125, 79, 27, 19, 'Tanah Kosong Serang Banten', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16126, 80, 16, 11, 'Tanah Kosong Lampung', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16127, 81, 19, 13, 'Tanah Kosong Yos Sudarso Medan', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16128, 82, 19, 13, 'Tanah Kosong Glugur Medan', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16129, 83, 19, 13, 'Tanah Kosong Glugur Medan 2', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16130, 84, 23, 16, 'Tanah Kosong Pekanbaru', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:32');
INSERT INTO `rekap_pemakaian` VALUES (16131, 85, 28, 20, 'Tanah Kosong Probolinggo', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:33');
INSERT INTO `rekap_pemakaian` VALUES (16132, 86, 24, 17, 'Tanah Kosong Sidoarjo', 2019, 'solar', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:33');
INSERT INTO `rekap_pemakaian` VALUES (16133, 2, 14, 8, 'Gedung A', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16134, 3, 14, 8, 'Gedung B', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16135, 4, 14, 8, 'Gedung C', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16136, 5, 14, 8, 'Graha PGAS', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16137, 6, 14, 8, 'Gedung Parkir', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16138, 7, 14, 8, 'Gedung Utilitas', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16139, 8, 14, 8, 'Gedung Penunjang', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16140, 9, 14, 8, 'Masjid Al Istiqomah', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16141, 10, 18, 8, 'Gedung Manhattan', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16142, 11, 12, 8, 'Gedung Juanda', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16143, 12, 9, 8, 'Masjid Daan Mogot', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:34');
INSERT INTO `rekap_pemakaian` VALUES (16144, 13, 9, 8, 'GOR Daan Mogot', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16145, 14, 9, 8, 'Gedung PGASOL', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16146, 15, 2, 8, 'Gedung Area Jakarta (A, B, C)', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16147, 16, 15, 8, 'Gedung Arsip', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16148, 17, 5, 4, 'Gedung Area Bekasi', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16149, 18, 25, 4, 'Gudang Sabilillah Bekasi', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16150, 19, 6, 5, 'Gedung Area Bogor', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16151, 20, 20, 5, 'Wisma Direksi', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16152, 21, 20, 5, 'Gedung Sunyaragi & Bojonegoro', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16153, 22, 20, 5, 'Gedung Pagardewa dan Panaran', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:36');
INSERT INTO `rekap_pemakaian` VALUES (16154, 23, 3, 2, 'Gedung Braga', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16155, 24, 3, 2, 'Wisma Diklat', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16156, 25, 3, 2, 'Wisma Diklat', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16157, 26, 3, 2, 'Rumah Serang 10', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16158, 27, 3, 2, 'Rumah Serang 12', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16159, 28, 3, 2, 'Rumah Serang 3 - Arsip', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16160, 29, 3, 2, 'Rumah Serang 1 sd 9 - Arsip', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16161, 30, 3, 2, 'Rumah Serang 5 - Direksi', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16162, 31, 3, 2, 'Rumah Serang 9', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16163, 32, 3, 2, 'Gedung Pengelola dan Arsip', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16164, 33, 3, 2, 'Gedung Penunjang Bandung', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16165, 34, 17, 12, 'Rumah Makassar', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16166, 35, 17, 12, 'Ruko Makassar', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16167, 36, 26, 18, 'Gedung Kantor Semarang Diponogoro', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16168, 37, 26, 18, 'Gedung Kantor Semarang Wahidin', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16169, 38, 30, 21, 'Gedung Kantor Surabaya', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16170, 39, 30, 21, 'Gedung Kantor PGASOL Ngagel', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16171, 40, 22, 15, 'Gedung Kantor Pasuruan', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16172, 41, 28, 20, 'Gedung Kantor Sidoarjo', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16173, 42, 13, 10, 'Gedung Kantor Karawang', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16174, 43, 31, 22, 'Gedung Kantor Tangerang', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16175, 44, 7, 6, 'Gedung Kantor Cilegon', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16176, 45, 8, 7, 'Gedung Kantor Cirebon', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16177, 46, 8, 7, 'Gedung PGASOL Cirebon', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16178, 47, 8, 7, 'Gedung PGASOL Cirebon 2', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16179, 48, 8, 7, 'Gedung HBB dan Arsip Cirebon', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:37');
INSERT INTO `rekap_pemakaian` VALUES (16180, 49, 8, 7, 'Rumah Dinas Cirebon A,B,C', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16181, 50, 8, 7, 'Rumah Dinas Cirebon Belakang', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16182, 51, 8, 7, 'Gedung PI Cirebon', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16183, 52, 8, 7, 'GOR Cirebon', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16184, 53, 21, 14, 'Gedung Kantor Palembang', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16185, 54, 16, 11, 'Gedung Kantor Lampung ', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16186, 55, 19, 13, 'Gedung Kantor Medan Imam Bonjol', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16187, 56, 19, 13, 'Gedung Kantor Medan Glugur', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16188, 57, 19, 13, 'Rumah Dinas Uskup Agung', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16189, 58, 4, 3, 'Gedung Batam Center', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16190, 59, 23, 16, 'Gedung Kantor Pekanbaru', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16191, 60, 32, 23, 'Gedung Kantor Tarakan', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16192, 61, 29, 8, 'Gedung Sinergi 8 - BUMN', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16193, 62, 10, 8, 'Tanah Kosong Klender', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16194, 63, 10, 8, 'Tanah Kosong Klender', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16195, 64, 10, 8, 'Tanah dan Bangunan Mirra 8', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16196, 65, 10, 8, 'Tanah dan Bangunan Mirra 2-4', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16197, 66, 10, 8, 'Tanah Kosong Ahmad Yani', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16198, 67, 10, 8, 'Tanah Kosong Ketapang', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16199, 68, 5, 4, 'Tanah Kosong Pekayon', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16200, 69, 5, 4, 'Tanah Kosong Pondok Hijau', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16201, 70, 5, 4, 'Tanah Kosong Pondok Hijau 2', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16202, 71, 6, 5, 'Tanah Kosong Megamendung', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16203, 72, 6, 5, 'Tanah Kosong dan Lapangan Bogor', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:38');
INSERT INTO `rekap_pemakaian` VALUES (16204, 73, 3, 2, 'Tanah Kosong Bandung', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:39');
INSERT INTO `rekap_pemakaian` VALUES (16205, 74, 11, 9, 'Tanah Kosong Jambi', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:39');
INSERT INTO `rekap_pemakaian` VALUES (16206, 75, 11, 9, 'Tanah Kosong Jambi 2', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:39');
INSERT INTO `rekap_pemakaian` VALUES (16207, 76, 17, 12, 'Tanah Kosong Makassar', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:39');
INSERT INTO `rekap_pemakaian` VALUES (16208, 77, 26, 18, 'Tanah Kosong Sleko Semarang', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:39');
INSERT INTO `rekap_pemakaian` VALUES (16209, 78, 26, 18, 'Tanah Kosong Wahidin Semarang', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:39');
INSERT INTO `rekap_pemakaian` VALUES (16210, 79, 27, 19, 'Tanah Kosong Serang Banten', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:40');
INSERT INTO `rekap_pemakaian` VALUES (16211, 80, 16, 11, 'Tanah Kosong Lampung', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:40');
INSERT INTO `rekap_pemakaian` VALUES (16212, 81, 19, 13, 'Tanah Kosong Yos Sudarso Medan', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:40');
INSERT INTO `rekap_pemakaian` VALUES (16213, 82, 19, 13, 'Tanah Kosong Glugur Medan', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:40');
INSERT INTO `rekap_pemakaian` VALUES (16214, 83, 19, 13, 'Tanah Kosong Glugur Medan 2', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:40');
INSERT INTO `rekap_pemakaian` VALUES (16215, 84, 23, 16, 'Tanah Kosong Pekanbaru', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:40');
INSERT INTO `rekap_pemakaian` VALUES (16216, 85, 28, 20, 'Tanah Kosong Probolinggo', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:40');
INSERT INTO `rekap_pemakaian` VALUES (16217, 86, 24, 17, 'Tanah Kosong Sidoarjo', 2019, 'air', 'sumur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:40');
INSERT INTO `rekap_pemakaian` VALUES (16218, 2, 14, 8, 'Gedung A', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16219, 3, 14, 8, 'Gedung B', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16220, 4, 14, 8, 'Gedung C', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16221, 5, 14, 8, 'Graha PGAS', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16222, 6, 14, 8, 'Gedung Parkir', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16223, 7, 14, 8, 'Gedung Utilitas', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16224, 8, 14, 8, 'Gedung Penunjang', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16225, 9, 14, 8, 'Masjid Al Istiqomah', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16226, 10, 18, 8, 'Gedung Manhattan', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16227, 11, 12, 8, 'Gedung Juanda', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16228, 12, 9, 8, 'Masjid Daan Mogot', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16229, 13, 9, 8, 'GOR Daan Mogot', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16230, 14, 9, 8, 'Gedung PGASOL', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16231, 15, 2, 8, 'Gedung Area Jakarta (A, B, C)', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16232, 16, 15, 8, 'Gedung Arsip', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16233, 17, 5, 4, 'Gedung Area Bekasi', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16234, 18, 25, 4, 'Gudang Sabilillah Bekasi', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16235, 19, 6, 5, 'Gedung Area Bogor', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16236, 20, 20, 5, 'Wisma Direksi', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16237, 21, 20, 5, 'Gedung Sunyaragi & Bojonegoro', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16238, 22, 20, 5, 'Gedung Pagardewa dan Panaran', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16239, 23, 3, 2, 'Gedung Braga', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16240, 24, 3, 2, 'Wisma Diklat', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:41');
INSERT INTO `rekap_pemakaian` VALUES (16241, 25, 3, 2, 'Wisma Diklat', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16242, 26, 3, 2, 'Rumah Serang 10', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16243, 27, 3, 2, 'Rumah Serang 12', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16244, 28, 3, 2, 'Rumah Serang 3 - Arsip', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16245, 29, 3, 2, 'Rumah Serang 1 sd 9 - Arsip', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16246, 30, 3, 2, 'Rumah Serang 5 - Direksi', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16247, 31, 3, 2, 'Rumah Serang 9', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16248, 32, 3, 2, 'Gedung Pengelola dan Arsip', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16249, 33, 3, 2, 'Gedung Penunjang Bandung', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16250, 34, 17, 12, 'Rumah Makassar', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16251, 35, 17, 12, 'Ruko Makassar', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16252, 36, 26, 18, 'Gedung Kantor Semarang Diponogoro', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16253, 37, 26, 18, 'Gedung Kantor Semarang Wahidin', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16254, 38, 30, 21, 'Gedung Kantor Surabaya', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16255, 39, 30, 21, 'Gedung Kantor PGASOL Ngagel', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16256, 40, 22, 15, 'Gedung Kantor Pasuruan', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16257, 41, 28, 20, 'Gedung Kantor Sidoarjo', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16258, 42, 13, 10, 'Gedung Kantor Karawang', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16259, 43, 31, 22, 'Gedung Kantor Tangerang', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16260, 44, 7, 6, 'Gedung Kantor Cilegon', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16261, 45, 8, 7, 'Gedung Kantor Cirebon', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16262, 46, 8, 7, 'Gedung PGASOL Cirebon', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16263, 47, 8, 7, 'Gedung PGASOL Cirebon 2', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16264, 48, 8, 7, 'Gedung HBB dan Arsip Cirebon', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16265, 49, 8, 7, 'Rumah Dinas Cirebon A,B,C', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16266, 50, 8, 7, 'Rumah Dinas Cirebon Belakang', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:42');
INSERT INTO `rekap_pemakaian` VALUES (16267, 51, 8, 7, 'Gedung PI Cirebon', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16268, 52, 8, 7, 'GOR Cirebon', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16269, 53, 21, 14, 'Gedung Kantor Palembang', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16270, 54, 16, 11, 'Gedung Kantor Lampung ', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16271, 55, 19, 13, 'Gedung Kantor Medan Imam Bonjol', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16272, 56, 19, 13, 'Gedung Kantor Medan Glugur', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16273, 57, 19, 13, 'Rumah Dinas Uskup Agung', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16274, 58, 4, 3, 'Gedung Batam Center', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16275, 59, 23, 16, 'Gedung Kantor Pekanbaru', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16276, 60, 32, 23, 'Gedung Kantor Tarakan', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16277, 61, 29, 8, 'Gedung Sinergi 8 - BUMN', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16278, 62, 10, 8, 'Tanah Kosong Klender', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16279, 63, 10, 8, 'Tanah Kosong Klender', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16280, 64, 10, 8, 'Tanah dan Bangunan Mirra 8', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16281, 65, 10, 8, 'Tanah dan Bangunan Mirra 2-4', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16282, 66, 10, 8, 'Tanah Kosong Ahmad Yani', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16283, 67, 10, 8, 'Tanah Kosong Ketapang', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16284, 68, 5, 4, 'Tanah Kosong Pekayon', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16285, 69, 5, 4, 'Tanah Kosong Pondok Hijau', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16286, 70, 5, 4, 'Tanah Kosong Pondok Hijau 2', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16287, 71, 6, 5, 'Tanah Kosong Megamendung', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16288, 72, 6, 5, 'Tanah Kosong dan Lapangan Bogor', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16289, 73, 3, 2, 'Tanah Kosong Bandung', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16290, 74, 11, 9, 'Tanah Kosong Jambi', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:43');
INSERT INTO `rekap_pemakaian` VALUES (16291, 75, 11, 9, 'Tanah Kosong Jambi 2', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16292, 76, 17, 12, 'Tanah Kosong Makassar', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16293, 77, 26, 18, 'Tanah Kosong Sleko Semarang', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16294, 78, 26, 18, 'Tanah Kosong Wahidin Semarang', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16295, 79, 27, 19, 'Tanah Kosong Serang Banten', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16296, 80, 16, 11, 'Tanah Kosong Lampung', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16297, 81, 19, 13, 'Tanah Kosong Yos Sudarso Medan', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16298, 82, 19, 13, 'Tanah Kosong Glugur Medan', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16299, 83, 19, 13, 'Tanah Kosong Glugur Medan 2', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16300, 84, 23, 16, 'Tanah Kosong Pekanbaru', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16301, 85, 28, 20, 'Tanah Kosong Probolinggo', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16302, 86, 24, 17, 'Tanah Kosong Sidoarjo', 2019, 'air', 'Pam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16303, 2, 14, 8, 'Gedung A', 2019, 'limbah', 'Basah', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16304, 3, 14, 8, 'Gedung B', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16305, 4, 14, 8, 'Gedung C', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16306, 5, 14, 8, 'Graha PGAS', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16307, 6, 14, 8, 'Gedung Parkir', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16308, 7, 14, 8, 'Gedung Utilitas', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16309, 8, 14, 8, 'Gedung Penunjang', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:44');
INSERT INTO `rekap_pemakaian` VALUES (16310, 9, 14, 8, 'Masjid Al Istiqomah', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16311, 10, 18, 8, 'Gedung Manhattan', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16312, 11, 12, 8, 'Gedung Juanda', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16313, 12, 9, 8, 'Masjid Daan Mogot', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16314, 13, 9, 8, 'GOR Daan Mogot', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16315, 14, 9, 8, 'Gedung PGASOL', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16316, 15, 2, 8, 'Gedung Area Jakarta (A, B, C)', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16317, 16, 15, 8, 'Gedung Arsip', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16318, 17, 5, 4, 'Gedung Area Bekasi', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16319, 18, 25, 4, 'Gudang Sabilillah Bekasi', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16320, 19, 6, 5, 'Gedung Area Bogor', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16321, 20, 20, 5, 'Wisma Direksi', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16322, 21, 20, 5, 'Gedung Sunyaragi & Bojonegoro', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16323, 22, 20, 5, 'Gedung Pagardewa dan Panaran', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16324, 23, 3, 2, 'Gedung Braga', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:45');
INSERT INTO `rekap_pemakaian` VALUES (16325, 24, 3, 2, 'Wisma Diklat', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:46');
INSERT INTO `rekap_pemakaian` VALUES (16326, 25, 3, 2, 'Wisma Diklat', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:46');
INSERT INTO `rekap_pemakaian` VALUES (16327, 26, 3, 2, 'Rumah Serang 10', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:46');
INSERT INTO `rekap_pemakaian` VALUES (16328, 27, 3, 2, 'Rumah Serang 12', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:46');
INSERT INTO `rekap_pemakaian` VALUES (16329, 28, 3, 2, 'Rumah Serang 3 - Arsip', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:46');
INSERT INTO `rekap_pemakaian` VALUES (16330, 29, 3, 2, 'Rumah Serang 1 sd 9 - Arsip', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:47');
INSERT INTO `rekap_pemakaian` VALUES (16331, 30, 3, 2, 'Rumah Serang 5 - Direksi', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:47');
INSERT INTO `rekap_pemakaian` VALUES (16332, 31, 3, 2, 'Rumah Serang 9', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:47');
INSERT INTO `rekap_pemakaian` VALUES (16333, 32, 3, 2, 'Gedung Pengelola dan Arsip', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:47');
INSERT INTO `rekap_pemakaian` VALUES (16334, 33, 3, 2, 'Gedung Penunjang Bandung', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:47');
INSERT INTO `rekap_pemakaian` VALUES (16335, 34, 17, 12, 'Rumah Makassar', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:48');
INSERT INTO `rekap_pemakaian` VALUES (16336, 35, 17, 12, 'Ruko Makassar', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:48');
INSERT INTO `rekap_pemakaian` VALUES (16337, 36, 26, 18, 'Gedung Kantor Semarang Diponogoro', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:48');
INSERT INTO `rekap_pemakaian` VALUES (16338, 37, 26, 18, 'Gedung Kantor Semarang Wahidin', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:48');
INSERT INTO `rekap_pemakaian` VALUES (16339, 38, 30, 21, 'Gedung Kantor Surabaya', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:48');
INSERT INTO `rekap_pemakaian` VALUES (16340, 39, 30, 21, 'Gedung Kantor PGASOL Ngagel', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:48');
INSERT INTO `rekap_pemakaian` VALUES (16341, 40, 22, 15, 'Gedung Kantor Pasuruan', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:48');
INSERT INTO `rekap_pemakaian` VALUES (16342, 41, 28, 20, 'Gedung Kantor Sidoarjo', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:48');
INSERT INTO `rekap_pemakaian` VALUES (16343, 42, 13, 10, 'Gedung Kantor Karawang', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:51');
INSERT INTO `rekap_pemakaian` VALUES (16344, 43, 31, 22, 'Gedung Kantor Tangerang', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:51');
INSERT INTO `rekap_pemakaian` VALUES (16345, 44, 7, 6, 'Gedung Kantor Cilegon', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:52');
INSERT INTO `rekap_pemakaian` VALUES (16346, 45, 8, 7, 'Gedung Kantor Cirebon', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:52');
INSERT INTO `rekap_pemakaian` VALUES (16347, 46, 8, 7, 'Gedung PGASOL Cirebon', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:52');
INSERT INTO `rekap_pemakaian` VALUES (16348, 47, 8, 7, 'Gedung PGASOL Cirebon 2', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:53');
INSERT INTO `rekap_pemakaian` VALUES (16349, 48, 8, 7, 'Gedung HBB dan Arsip Cirebon', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:53');
INSERT INTO `rekap_pemakaian` VALUES (16350, 49, 8, 7, 'Rumah Dinas Cirebon A,B,C', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:53');
INSERT INTO `rekap_pemakaian` VALUES (16351, 50, 8, 7, 'Rumah Dinas Cirebon Belakang', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:53');
INSERT INTO `rekap_pemakaian` VALUES (16352, 51, 8, 7, 'Gedung PI Cirebon', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:53');
INSERT INTO `rekap_pemakaian` VALUES (16353, 52, 8, 7, 'GOR Cirebon', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:53');
INSERT INTO `rekap_pemakaian` VALUES (16354, 53, 21, 14, 'Gedung Kantor Palembang', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:53');
INSERT INTO `rekap_pemakaian` VALUES (16355, 54, 16, 11, 'Gedung Kantor Lampung ', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16356, 55, 19, 13, 'Gedung Kantor Medan Imam Bonjol', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16357, 56, 19, 13, 'Gedung Kantor Medan Glugur', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16358, 57, 19, 13, 'Rumah Dinas Uskup Agung', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16359, 58, 4, 3, 'Gedung Batam Center', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16360, 59, 23, 16, 'Gedung Kantor Pekanbaru', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16361, 60, 32, 23, 'Gedung Kantor Tarakan', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16362, 61, 29, 8, 'Gedung Sinergi 8 - BUMN', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16363, 62, 10, 8, 'Tanah Kosong Klender', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16364, 63, 10, 8, 'Tanah Kosong Klender', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16365, 64, 10, 8, 'Tanah dan Bangunan Mirra 8', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16366, 65, 10, 8, 'Tanah dan Bangunan Mirra 2-4', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16367, 66, 10, 8, 'Tanah Kosong Ahmad Yani', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16368, 67, 10, 8, 'Tanah Kosong Ketapang', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16369, 68, 5, 4, 'Tanah Kosong Pekayon', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:54');
INSERT INTO `rekap_pemakaian` VALUES (16370, 69, 5, 4, 'Tanah Kosong Pondok Hijau', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16371, 70, 5, 4, 'Tanah Kosong Pondok Hijau 2', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16372, 71, 6, 5, 'Tanah Kosong Megamendung', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16373, 72, 6, 5, 'Tanah Kosong dan Lapangan Bogor', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16374, 73, 3, 2, 'Tanah Kosong Bandung', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16375, 74, 11, 9, 'Tanah Kosong Jambi', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16376, 75, 11, 9, 'Tanah Kosong Jambi 2', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16377, 76, 17, 12, 'Tanah Kosong Makassar', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16378, 77, 26, 18, 'Tanah Kosong Sleko Semarang', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16379, 78, 26, 18, 'Tanah Kosong Wahidin Semarang', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16380, 79, 27, 19, 'Tanah Kosong Serang Banten', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16381, 80, 16, 11, 'Tanah Kosong Lampung', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:55');
INSERT INTO `rekap_pemakaian` VALUES (16382, 81, 19, 13, 'Tanah Kosong Yos Sudarso Medan', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16383, 82, 19, 13, 'Tanah Kosong Glugur Medan', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16384, 83, 19, 13, 'Tanah Kosong Glugur Medan 2', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16385, 84, 23, 16, 'Tanah Kosong Pekanbaru', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16386, 85, 28, 20, 'Tanah Kosong Probolinggo', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16387, 86, 24, 17, 'Tanah Kosong Sidoarjo', 2019, 'limbah', 'Basah', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16388, 2, 14, 8, 'Gedung A', 2019, 'limbah', 'Kering', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16389, 3, 14, 8, 'Gedung B', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16390, 4, 14, 8, 'Gedung C', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16391, 5, 14, 8, 'Graha PGAS', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16392, 6, 14, 8, 'Gedung Parkir', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16393, 7, 14, 8, 'Gedung Utilitas', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16394, 8, 14, 8, 'Gedung Penunjang', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16395, 9, 14, 8, 'Masjid Al Istiqomah', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16396, 10, 18, 8, 'Gedung Manhattan', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16397, 11, 12, 8, 'Gedung Juanda', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:56');
INSERT INTO `rekap_pemakaian` VALUES (16398, 12, 9, 8, 'Masjid Daan Mogot', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16399, 13, 9, 8, 'GOR Daan Mogot', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16400, 14, 9, 8, 'Gedung PGASOL', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16401, 15, 2, 8, 'Gedung Area Jakarta (A, B, C)', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16402, 16, 15, 8, 'Gedung Arsip', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16403, 17, 5, 4, 'Gedung Area Bekasi', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16404, 18, 25, 4, 'Gudang Sabilillah Bekasi', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16405, 19, 6, 5, 'Gedung Area Bogor', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16406, 20, 20, 5, 'Wisma Direksi', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16407, 21, 20, 5, 'Gedung Sunyaragi & Bojonegoro', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16408, 22, 20, 5, 'Gedung Pagardewa dan Panaran', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16409, 23, 3, 2, 'Gedung Braga', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16410, 24, 3, 2, 'Wisma Diklat', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16411, 25, 3, 2, 'Wisma Diklat', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16412, 26, 3, 2, 'Rumah Serang 10', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16413, 27, 3, 2, 'Rumah Serang 12', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16414, 28, 3, 2, 'Rumah Serang 3 - Arsip', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16415, 29, 3, 2, 'Rumah Serang 1 sd 9 - Arsip', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16416, 30, 3, 2, 'Rumah Serang 5 - Direksi', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16417, 31, 3, 2, 'Rumah Serang 9', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16418, 32, 3, 2, 'Gedung Pengelola dan Arsip', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16419, 33, 3, 2, 'Gedung Penunjang Bandung', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:57');
INSERT INTO `rekap_pemakaian` VALUES (16420, 34, 17, 12, 'Rumah Makassar', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16421, 35, 17, 12, 'Ruko Makassar', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16422, 36, 26, 18, 'Gedung Kantor Semarang Diponogoro', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16423, 37, 26, 18, 'Gedung Kantor Semarang Wahidin', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16424, 38, 30, 21, 'Gedung Kantor Surabaya', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16425, 39, 30, 21, 'Gedung Kantor PGASOL Ngagel', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16426, 40, 22, 15, 'Gedung Kantor Pasuruan', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16427, 41, 28, 20, 'Gedung Kantor Sidoarjo', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16428, 42, 13, 10, 'Gedung Kantor Karawang', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16429, 43, 31, 22, 'Gedung Kantor Tangerang', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16430, 44, 7, 6, 'Gedung Kantor Cilegon', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16431, 45, 8, 7, 'Gedung Kantor Cirebon', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16432, 46, 8, 7, 'Gedung PGASOL Cirebon', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16433, 47, 8, 7, 'Gedung PGASOL Cirebon 2', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16434, 48, 8, 7, 'Gedung HBB dan Arsip Cirebon', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16435, 49, 8, 7, 'Rumah Dinas Cirebon A,B,C', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16436, 50, 8, 7, 'Rumah Dinas Cirebon Belakang', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16437, 51, 8, 7, 'Gedung PI Cirebon', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16438, 52, 8, 7, 'GOR Cirebon', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16439, 53, 21, 14, 'Gedung Kantor Palembang', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16440, 54, 16, 11, 'Gedung Kantor Lampung ', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16441, 55, 19, 13, 'Gedung Kantor Medan Imam Bonjol', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16442, 56, 19, 13, 'Gedung Kantor Medan Glugur', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16443, 57, 19, 13, 'Rumah Dinas Uskup Agung', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16444, 58, 4, 3, 'Gedung Batam Center', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16445, 59, 23, 16, 'Gedung Kantor Pekanbaru', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16446, 60, 32, 23, 'Gedung Kantor Tarakan', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:58');
INSERT INTO `rekap_pemakaian` VALUES (16447, 61, 29, 8, 'Gedung Sinergi 8 - BUMN', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16448, 62, 10, 8, 'Tanah Kosong Klender', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16449, 63, 10, 8, 'Tanah Kosong Klender', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16450, 64, 10, 8, 'Tanah dan Bangunan Mirra 8', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16451, 65, 10, 8, 'Tanah dan Bangunan Mirra 2-4', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16452, 66, 10, 8, 'Tanah Kosong Ahmad Yani', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16453, 67, 10, 8, 'Tanah Kosong Ketapang', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16454, 68, 5, 4, 'Tanah Kosong Pekayon', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16455, 69, 5, 4, 'Tanah Kosong Pondok Hijau', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16456, 70, 5, 4, 'Tanah Kosong Pondok Hijau 2', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16457, 71, 6, 5, 'Tanah Kosong Megamendung', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16458, 72, 6, 5, 'Tanah Kosong dan Lapangan Bogor', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16459, 73, 3, 2, 'Tanah Kosong Bandung', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16460, 74, 11, 9, 'Tanah Kosong Jambi', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16461, 75, 11, 9, 'Tanah Kosong Jambi 2', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16462, 76, 17, 12, 'Tanah Kosong Makassar', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16463, 77, 26, 18, 'Tanah Kosong Sleko Semarang', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16464, 78, 26, 18, 'Tanah Kosong Wahidin Semarang', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16465, 79, 27, 19, 'Tanah Kosong Serang Banten', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16466, 80, 16, 11, 'Tanah Kosong Lampung', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16467, 81, 19, 13, 'Tanah Kosong Yos Sudarso Medan', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16468, 82, 19, 13, 'Tanah Kosong Glugur Medan', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16469, 83, 19, 13, 'Tanah Kosong Glugur Medan 2', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16470, 84, 23, 16, 'Tanah Kosong Pekanbaru', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16471, 85, 28, 20, 'Tanah Kosong Probolinggo', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');
INSERT INTO `rekap_pemakaian` VALUES (16472, 86, 24, 17, 'Tanah Kosong Sidoarjo', 2019, 'limbah', 'Kering', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 17:09:59');

-- ----------------------------
-- Table structure for rekap_pemakaian_area
-- ----------------------------
DROP TABLE IF EXISTS `rekap_pemakaian_area`;
CREATE TABLE `rekap_pemakaian_area`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 11524 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rekap_pemakaian_wilayah
-- ----------------------------
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11259, 8, 'Jakarta', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:11');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11260, 8, 'Jakarta', 'limbah', 'Basah', 2019, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11261, 8, 'Jakarta', 'limbah', 'Kering', 2019, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:24:33');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11262, 8, 'Jakarta', 'listrik', '', 2019, 123123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:22:58');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11263, 8, 'Jakarta', 'solar', ' ', 2019, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:22:42');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11264, 8, 'Jakarta', 'solar', '', 2019, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:03');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11265, 2, 'Bandung', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:06');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11266, 3, 'Batam', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11267, 4, 'Bekasi', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11268, 5, 'Bogor', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11269, 6, 'Cilegon', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11270, 7, 'Cirebon', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11271, 8, 'Jakarta', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11272, 9, 'Jambi', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11273, 10, 'Karawang', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11274, 11, 'Lampung', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11275, 12, 'Makassar', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11276, 13, 'Medan', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11277, 14, 'Palembang', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11278, 15, 'Pasuruan', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11279, 16, 'Pekanbaru', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11280, 17, 'Probolinggo', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11281, 18, 'Semarang', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11282, 19, 'Serang', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11283, 20, 'Sidoarjo', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:07');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11284, 21, 'Surabaya', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:08');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11285, 22, 'Tangerang', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:08');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11286, 23, 'Tarakan', 'air', 'sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:23:08');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11287, 2, 'Bandung', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11288, 3, 'Batam', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11289, 4, 'Bekasi', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11290, 5, 'Bogor', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11291, 6, 'Cilegon', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11292, 7, 'Cirebon', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11293, 9, 'Jambi', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11294, 10, 'Karawang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11295, 11, 'Lampung', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11296, 12, 'Makassar', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11297, 13, 'Medan', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11298, 14, 'Palembang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11299, 15, 'Pasuruan', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11300, 16, 'Pekanbaru', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11301, 17, 'Probolinggo', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:28');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11302, 18, 'Semarang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:29');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11303, 19, 'Serang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:29');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11304, 20, 'Sidoarjo', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:29');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11305, 21, 'Surabaya', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:29');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11306, 22, 'Tangerang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:29');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11307, 23, 'Tarakan', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:29');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11308, 2, 'Bandung', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:33');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11309, 3, 'Batam', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:33');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11310, 4, 'Bekasi', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:33');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11311, 5, 'Bogor', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:33');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11312, 6, 'Cilegon', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11313, 7, 'Cirebon', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11314, 9, 'Jambi', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11315, 10, 'Karawang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11316, 11, 'Lampung', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11317, 12, 'Makassar', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11318, 13, 'Medan', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11319, 14, 'Palembang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11320, 15, 'Pasuruan', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11321, 16, 'Pekanbaru', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11322, 17, 'Probolinggo', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11323, 18, 'Semarang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11324, 19, 'Serang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11325, 20, 'Sidoarjo', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11326, 21, 'Surabaya', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11327, 22, 'Tangerang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11328, 23, 'Tarakan', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:34');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11329, 2, 'Bandung', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:40');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11330, 3, 'Batam', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:40');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11331, 4, 'Bekasi', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:40');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11332, 5, 'Bogor', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:40');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11333, 6, 'Cilegon', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:40');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11334, 7, 'Cirebon', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:40');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11335, 9, 'Jambi', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11336, 10, 'Karawang', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11337, 11, 'Lampung', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11338, 12, 'Makassar', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11339, 13, 'Medan', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11340, 14, 'Palembang', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11341, 15, 'Pasuruan', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11342, 16, 'Pekanbaru', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11343, 17, 'Probolinggo', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11344, 18, 'Semarang', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11345, 19, 'Serang', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11346, 20, 'Sidoarjo', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11347, 21, 'Surabaya', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11348, 22, 'Tangerang', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11349, 23, 'Tarakan', 'air', 'Pam', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:41');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11350, 2, 'Bandung', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11351, 3, 'Batam', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11352, 4, 'Bekasi', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11353, 5, 'Bogor', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11354, 6, 'Cilegon', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11355, 7, 'Cirebon', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11356, 9, 'Jambi', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11357, 10, 'Karawang', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11358, 11, 'Lampung', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11359, 12, 'Makassar', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11360, 13, 'Medan', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11361, 14, 'Palembang', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11362, 15, 'Pasuruan', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11363, 16, 'Pekanbaru', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11364, 17, 'Probolinggo', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11365, 18, 'Semarang', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11366, 19, 'Serang', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11367, 20, 'Sidoarjo', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11368, 21, 'Surabaya', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11369, 22, 'Tangerang', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11370, 23, 'Tarakan', 'limbah', 'Basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:45');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11371, 2, 'Bandung', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11372, 3, 'Batam', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11373, 4, 'Bekasi', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11374, 5, 'Bogor', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11375, 6, 'Cilegon', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11376, 7, 'Cirebon', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11377, 9, 'Jambi', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11378, 10, 'Karawang', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11379, 11, 'Lampung', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11380, 12, 'Makassar', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11381, 13, 'Medan', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11382, 14, 'Palembang', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11383, 15, 'Pasuruan', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11384, 16, 'Pekanbaru', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11385, 17, 'Probolinggo', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11386, 18, 'Semarang', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11387, 19, 'Serang', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11388, 20, 'Sidoarjo', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11389, 21, 'Surabaya', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11390, 22, 'Tangerang', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11391, 23, 'Tarakan', 'limbah', 'Kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-16 08:20:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11392, 2, 'Bandung', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11393, 3, 'Batam', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11394, 4, 'Bekasi', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11395, 5, 'Bogor', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11396, 6, 'Cilegon', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11397, 7, 'Cirebon', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11398, 8, 'Jakarta', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11399, 9, 'Jambi', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11400, 10, 'Karawang', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11401, 11, 'Lampung', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11402, 12, 'Makassar', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11403, 13, 'Medan', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11404, 14, 'Palembang', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11405, 15, 'Pasuruan', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11406, 16, 'Pekanbaru', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11407, 17, 'Probolinggo', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11408, 18, 'Semarang', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11409, 19, 'Serang', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11410, 20, 'Sidoarjo', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11411, 21, 'Surabaya', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:18');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11412, 22, 'Tangerang', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:19');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11413, 23, 'Tarakan', 'listrik', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:19');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11414, 2, 'Bandung', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11415, 3, 'Batam', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11416, 4, 'Bekasi', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11417, 5, 'Bogor', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11418, 6, 'Cilegon', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11419, 7, 'Cirebon', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11420, 8, 'Jakarta', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11421, 9, 'Jambi', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11422, 10, 'Karawang', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11423, 11, 'Lampung', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11424, 12, 'Makassar', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11425, 13, 'Medan', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11426, 14, 'Palembang', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11427, 15, 'Pasuruan', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11428, 16, 'Pekanbaru', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11429, 17, 'Probolinggo', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11430, 18, 'Semarang', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11431, 19, 'Serang', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11432, 20, 'Sidoarjo', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11433, 21, 'Surabaya', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11434, 22, 'Tangerang', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11435, 23, 'Tarakan', 'solar', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:26');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11436, 2, 'Bandung', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11437, 3, 'Batam', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11438, 4, 'Bekasi', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11439, 5, 'Bogor', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11440, 6, 'Cilegon', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11441, 7, 'Cirebon', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11442, 8, 'Jakarta', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11443, 9, 'Jambi', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11444, 10, 'Karawang', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11445, 11, 'Lampung', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11446, 12, 'Makassar', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11447, 13, 'Medan', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11448, 14, 'Palembang', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11449, 15, 'Pasuruan', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11450, 16, 'Pekanbaru', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11451, 17, 'Probolinggo', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11452, 18, 'Semarang', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11453, 19, 'Serang', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11454, 20, 'Sidoarjo', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:31');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11455, 21, 'Surabaya', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:32');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11456, 22, 'Tangerang', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:32');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11457, 23, 'Tarakan', 'air', 'sumur', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:32');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11458, 2, 'Bandung', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:43');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11459, 3, 'Batam', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:43');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11460, 4, 'Bekasi', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:43');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11461, 5, 'Bogor', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:43');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11462, 6, 'Cilegon', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:43');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11463, 7, 'Cirebon', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11464, 8, 'Jakarta', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11465, 9, 'Jambi', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11466, 10, 'Karawang', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11467, 11, 'Lampung', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11468, 12, 'Makassar', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11469, 13, 'Medan', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11470, 14, 'Palembang', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11471, 15, 'Pasuruan', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11472, 16, 'Pekanbaru', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11473, 17, 'Probolinggo', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11474, 18, 'Semarang', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11475, 19, 'Serang', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11476, 20, 'Sidoarjo', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11477, 21, 'Surabaya', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11478, 22, 'Tangerang', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11479, 23, 'Tarakan', 'air', 'Pam', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:44');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11480, 2, 'Bandung', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11481, 3, 'Batam', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11482, 4, 'Bekasi', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11483, 5, 'Bogor', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11484, 6, 'Cilegon', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11485, 7, 'Cirebon', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11486, 8, 'Jakarta', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11487, 9, 'Jambi', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11488, 10, 'Karawang', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11489, 11, 'Lampung', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11490, 12, 'Makassar', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11491, 13, 'Medan', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11492, 14, 'Palembang', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11493, 15, 'Pasuruan', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11494, 16, 'Pekanbaru', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11495, 17, 'Probolinggo', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11496, 18, 'Semarang', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11497, 19, 'Serang', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11498, 20, 'Sidoarjo', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11499, 21, 'Surabaya', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11500, 22, 'Tangerang', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11501, 23, 'Tarakan', 'limbah', 'Basah', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11502, 2, 'Bandung', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:54');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11503, 3, 'Batam', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:54');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11504, 4, 'Bekasi', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11505, 5, 'Bogor', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11506, 6, 'Cilegon', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11507, 7, 'Cirebon', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11508, 8, 'Jakarta', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11509, 9, 'Jambi', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11510, 10, 'Karawang', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11511, 11, 'Lampung', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11512, 12, 'Makassar', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11513, 13, 'Medan', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11514, 14, 'Palembang', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11515, 15, 'Pasuruan', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11516, 16, 'Pekanbaru', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11517, 17, 'Probolinggo', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11518, 18, 'Semarang', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11519, 19, 'Serang', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:55');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11520, 20, 'Sidoarjo', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:56');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11521, 21, 'Surabaya', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:56');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11522, 22, 'Tangerang', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:57');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11523, 23, 'Tarakan', 'limbah', 'Kering', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-24 16:16:57');

-- ----------------------------
-- Table structure for request
-- ----------------------------
DROP TABLE IF EXISTS `request`;
CREATE TABLE `request`  (
  `id` int(10) NULL DEFAULT NULL,
  `nomor` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `waktu` time(0) NULL DEFAULT NULL,
  `nama_pemohon` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `unit_pelapor` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_jenis_complain` int(10) NULL DEFAULT NULL,
  `uraian_komplain` varchar(600) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `aset_id` int(11) NULL DEFAULT NULL,
  `lokasi` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `tanggal_masuk` datetime(0) NULL DEFAULT NULL,
  `tanggal_selesai` datetime(0) NULL DEFAULT NULL,
  `flag` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
INSERT INTO `sla` VALUES (1, 'Pengamanan', 2019, '2019-05-14 19:49:20.414825');
INSERT INTO `sla` VALUES (2, 'Pengelolaan Pemeliharaan Asets', 2019, '2019-05-14 19:49:20.414825');
INSERT INTO `sla` VALUES (3, 'Pengelolaan Perawatan Aset', 2019, '2019-05-14 19:49:20.414825');
INSERT INTO `sla` VALUES (4, 'Penyediaan fasilitas khusus', 2019, '2019-05-14 19:49:20.414825');
INSERT INTO `sla` VALUES (5, 'Penyediaan perijinan terkait bangunan dan lingkungan', 2019, '2019-05-14 19:49:20.414825');
INSERT INTO `sla` VALUES (6, 'Pengelolaan fasilitas perparkiran', 2019, '2019-05-14 19:49:20.414825');
INSERT INTO `sla` VALUES (7, 'Pengelolaan penyediaan assesoris gedung', 2019, '2019-05-14 19:49:20.414825');
INSERT INTO `sla` VALUES (8, 'Pengelolaan Wisma dan Rumah dinas', 2019, '2019-05-14 19:49:20.414825');
INSERT INTO `sla` VALUES (9, 'Pengelolaan Keluhan', 2019, '2019-05-14 19:49:20.414825');

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
) ENGINE = InnoDB AUTO_INCREMENT = 256 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sla_aset
-- ----------------------------
INSERT INTO `sla_aset` VALUES (214, 1, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (215, 2, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (216, 3, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (217, 4, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (218, 5, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (219, 6, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (220, 7, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (221, 8, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (222, 9, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (223, 10, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (224, 11, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (225, 12, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (226, 13, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (227, 14, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (228, 15, 2, 1, NULL);
INSERT INTO `sla_aset` VALUES (229, 1, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (230, 2, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (231, 3, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (232, 4, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (233, 5, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (234, 6, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (235, 7, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (236, 8, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (237, 9, 3, 1, NULL);
INSERT INTO `sla_aset` VALUES (238, 1, 4, 1, NULL);
INSERT INTO `sla_aset` VALUES (239, 2, 4, 1, NULL);
INSERT INTO `sla_aset` VALUES (240, 3, 4, 1, NULL);
INSERT INTO `sla_aset` VALUES (241, 4, 4, 1, NULL);
INSERT INTO `sla_aset` VALUES (242, 5, 4, 1, NULL);
INSERT INTO `sla_aset` VALUES (243, 6, 4, 1, NULL);
INSERT INTO `sla_aset` VALUES (244, 7, 4, 1, NULL);
INSERT INTO `sla_aset` VALUES (245, 8, 4, 1, NULL);
INSERT INTO `sla_aset` VALUES (246, 9, 4, 1, NULL);
INSERT INTO `sla_aset` VALUES (247, 1, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (248, 2, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (249, 3, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (250, 4, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (251, 5, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (252, 6, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (253, 7, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (254, 8, 5, 1, NULL);
INSERT INTO `sla_aset` VALUES (255, 9, 5, 1, NULL);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` int(11) NOT NULL,
  `modul` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `posisi_wo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (1, 'WO2', 'Open', 'Koor Will', '2019-05-07 10:12:28', '0000-00-00 00:00:00');
INSERT INTO `status` VALUES (2, 'WO2', 'Work Order', 'Koor Area', '2019-05-07 10:12:35', '0000-00-00 00:00:00');
INSERT INTO `status` VALUES (3, 'WO2', 'Terjadwal', 'Leader', '2019-05-07 11:21:00', '0000-00-00 00:00:00');
INSERT INTO `status` VALUES (4, 'WO2', 'On Progress', 'Leader', '2019-05-07 11:21:29', '0000-00-00 00:00:00');
INSERT INTO `status` VALUES (5, 'WO2', 'Terlaksana', 'Koor Area', '2019-05-08 03:20:35', '0000-00-00 00:00:00');
INSERT INTO `status` VALUES (6, 'WO2', 'Out Standing', 'Leader', '2019-05-08 03:20:12', '0000-00-00 00:00:00');
INSERT INTO `status` VALUES (7, 'WO2', 'Done', 'Koor Area', '2019-05-08 03:20:16', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for sub_detail_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `sub_detail_pekerjaan`;
CREATE TABLE `sub_detail_pekerjaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_pekerjaan_id` int(10) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `foto_sebelum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_sesudah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_kirim` int(1) NULL DEFAULT 0,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sub_detail_pekerjaan
-- ----------------------------
INSERT INTO `sub_detail_pekerjaan` VALUES (55, 51, '2019-01-01', 'uploads/179/2019-05/45a4120e20c67ad920f8580f3455543d.png', 'uploads/179/2019-05/ba1275966d4232e847f869878830bb81.jpg', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (56, 51, '2019-01-02', 'uploads/179/2019-05/after_1557921903_5cdc006f1c750.jpg', 'uploads/179/2019-05/after_1557930337_5cdc21614eade.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (57, 51, '2019-01-03', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (58, 51, '2019-01-04', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (59, 51, '2019-01-05', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (60, 51, '2019-01-07', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (61, 51, '2019-01-08', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (62, 51, '2019-01-09', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (63, 51, '2019-01-10', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (64, 51, '2019-01-11', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (65, 51, '2019-01-12', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (66, 51, '2019-01-14', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (67, 51, '2019-01-15', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (68, 51, '2019-01-16', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (69, 51, '2019-01-17', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (70, 51, '2019-01-18', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (71, 51, '2019-01-19', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (72, 51, '2019-01-21', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (73, 51, '2019-01-22', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (74, 51, '2019-01-23', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (75, 51, '2019-01-24', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (76, 51, '2019-01-25', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (77, 51, '2019-01-26', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (78, 51, '2019-01-28', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (79, 51, '2019-01-29', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (80, 51, '2019-01-30', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (81, 51, '2019-01-31', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (82, 52, '2019-01-01', 'uploads/179/2019-05/45a4120e20c67ad920f8580f3455543d.png', 'uploads/179/2019-05/ba1275966d4232e847f869878830bb81.jpg', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (83, 52, '2019-01-02', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (84, 52, '2019-01-03', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (85, 52, '2019-01-04', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (86, 52, '2019-01-05', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (87, 52, '2019-01-07', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (88, 52, '2019-01-08', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (89, 52, '2019-01-09', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (90, 52, '2019-01-10', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (91, 52, '2019-01-11', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (92, 52, '2019-01-12', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (93, 52, '2019-01-14', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (94, 52, '2019-01-15', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (95, 52, '2019-01-16', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (96, 52, '2019-01-17', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (97, 52, '2019-01-18', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (98, 52, '2019-01-19', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (99, 52, '2019-01-21', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (100, 52, '2019-01-22', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (101, 52, '2019-01-23', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (102, 52, '2019-01-24', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (103, 52, '2019-01-25', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (104, 52, '2019-01-26', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (105, 52, '2019-01-28', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (106, 52, '2019-01-29', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (107, 52, '2019-01-30', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);
INSERT INTO `sub_detail_pekerjaan` VALUES (108, 52, '2019-01-31', 'uploads/img/no_images.png', 'uploads/img/no_images.png', 0, NULL);

-- ----------------------------
-- Table structure for tindaklanjut_complain
-- ----------------------------
DROP TABLE IF EXISTS `tindaklanjut_complain`;
CREATE TABLE `tindaklanjut_complain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complain_id` int(11) NULL DEFAULT NULL,
  `pusat_biaya` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan_biaya` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `biaya` double NULL DEFAULT NULL,
  `waktu_pekerjaan` int(11) NULL DEFAULT NULL,
  `satuan_waktu` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_mulai` date NULL DEFAULT NULL,
  `tanggal_selesai` date NULL DEFAULT NULL,
  `foto_sebelum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_sesudah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dimensions` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path_foto_sebelum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path_foto_sesudah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `notes_leader` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tindaklanjut_complain
-- ----------------------------
INSERT INTO `tindaklanjut_complain` VALUES (1, 2, 'PGNMAS', 'PGNMAS', 10000, 1, 'Jam', 'Tolong Segera di Tindaklanjuti', '2019-05-20', '2019-05-21', 'https://media.travelingyuk.com/wp-content/uploads/2018/01/Wisata-Alam-malang.jpg', 'after_1558269913_5ce14fd941e32.jpg', '245|300|500', 'Tidak Ada', 'uploads\\complain', '2019-05-21 11:39:03', 'test catatan leader');

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
) ENGINE = InnoDB AUTO_INCREMENT = 424 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_aset
-- ----------------------------
INSERT INTO `user_aset` VALUES (84, 79, 31, 8, 14, 2, NULL);
INSERT INTO `user_aset` VALUES (85, 79, 31, 8, 14, 3, NULL);
INSERT INTO `user_aset` VALUES (86, 79, 31, 8, 14, 4, NULL);
INSERT INTO `user_aset` VALUES (87, 79, 31, 8, 14, 5, NULL);
INSERT INTO `user_aset` VALUES (88, 79, 31, 8, 14, 6, NULL);
INSERT INTO `user_aset` VALUES (89, 79, 31, 8, 14, 7, NULL);
INSERT INTO `user_aset` VALUES (90, 79, 31, 8, 14, 8, NULL);
INSERT INTO `user_aset` VALUES (91, 79, 31, 8, 14, 9, NULL);
INSERT INTO `user_aset` VALUES (92, 79, 31, 8, 18, 10, NULL);
INSERT INTO `user_aset` VALUES (93, 79, 31, 8, 12, 11, NULL);
INSERT INTO `user_aset` VALUES (94, 79, 31, 8, 9, 12, NULL);
INSERT INTO `user_aset` VALUES (95, 79, 31, 8, 9, 13, NULL);
INSERT INTO `user_aset` VALUES (96, 79, 31, 8, 9, 14, NULL);
INSERT INTO `user_aset` VALUES (97, 110, 31, 8, 2, 15, NULL);
INSERT INTO `user_aset` VALUES (98, 110, 31, 8, 15, 16, NULL);
INSERT INTO `user_aset` VALUES (99, 110, 32, 4, 5, 17, NULL);
INSERT INTO `user_aset` VALUES (100, 110, 32, 4, 25, 18, NULL);
INSERT INTO `user_aset` VALUES (101, 110, 32, 5, 6, 19, NULL);
INSERT INTO `user_aset` VALUES (102, 110, 32, 5, 20, 20, NULL);
INSERT INTO `user_aset` VALUES (103, 110, 32, 5, 20, 21, NULL);
INSERT INTO `user_aset` VALUES (104, 110, 32, 5, 20, 22, NULL);
INSERT INTO `user_aset` VALUES (105, 107, 32, 2, 3, 23, NULL);
INSERT INTO `user_aset` VALUES (106, 107, 32, 2, 3, 24, NULL);
INSERT INTO `user_aset` VALUES (107, 107, 32, 2, 3, 25, NULL);
INSERT INTO `user_aset` VALUES (108, 107, 32, 2, 3, 26, NULL);
INSERT INTO `user_aset` VALUES (109, 107, 32, 2, 3, 27, NULL);
INSERT INTO `user_aset` VALUES (110, 107, 32, 2, 3, 28, NULL);
INSERT INTO `user_aset` VALUES (111, 107, 32, 2, 3, 29, NULL);
INSERT INTO `user_aset` VALUES (112, 107, 32, 2, 3, 30, NULL);
INSERT INTO `user_aset` VALUES (113, 107, 32, 2, 3, 31, NULL);
INSERT INTO `user_aset` VALUES (114, 107, 32, 2, 3, 32, NULL);
INSERT INTO `user_aset` VALUES (115, 107, 32, 2, 3, 33, NULL);
INSERT INTO `user_aset` VALUES (116, 111, 73, 12, 17, 34, NULL);
INSERT INTO `user_aset` VALUES (117, 111, 73, 12, 17, 35, NULL);
INSERT INTO `user_aset` VALUES (118, 109, 33, 18, 26, 36, NULL);
INSERT INTO `user_aset` VALUES (119, 109, 33, 18, 26, 37, NULL);
INSERT INTO `user_aset` VALUES (120, 109, 35, 21, 30, 38, NULL);
INSERT INTO `user_aset` VALUES (121, 109, 35, 21, 30, 39, NULL);
INSERT INTO `user_aset` VALUES (122, 109, 35, 15, 22, 40, NULL);
INSERT INTO `user_aset` VALUES (123, 109, 35, 20, 28, 41, NULL);
INSERT INTO `user_aset` VALUES (124, 107, 32, 10, 13, 42, NULL);
INSERT INTO `user_aset` VALUES (125, 112, 36, 22, 31, 43, NULL);
INSERT INTO `user_aset` VALUES (126, 112, 36, 6, 7, 44, NULL);
INSERT INTO `user_aset` VALUES (127, 107, 32, 7, 8, 45, NULL);
INSERT INTO `user_aset` VALUES (128, 107, 32, 7, 8, 46, NULL);
INSERT INTO `user_aset` VALUES (129, 107, 32, 7, 8, 47, NULL);
INSERT INTO `user_aset` VALUES (130, 107, 32, 7, 8, 48, NULL);
INSERT INTO `user_aset` VALUES (131, 107, 32, 7, 8, 49, NULL);
INSERT INTO `user_aset` VALUES (132, 107, 32, 7, 8, 50, NULL);
INSERT INTO `user_aset` VALUES (133, 107, 32, 7, 8, 51, NULL);
INSERT INTO `user_aset` VALUES (134, 107, 32, 7, 8, 52, NULL);
INSERT INTO `user_aset` VALUES (135, 112, 16, 14, 21, 53, NULL);
INSERT INTO `user_aset` VALUES (136, 112, 18, 11, 16, 54, NULL);
INSERT INTO `user_aset` VALUES (137, 108, 12, 13, 19, 55, NULL);
INSERT INTO `user_aset` VALUES (138, 108, 12, 13, 19, 56, NULL);
INSERT INTO `user_aset` VALUES (139, 108, 12, 13, 19, 57, NULL);
INSERT INTO `user_aset` VALUES (140, 108, 21, 3, 4, 58, NULL);
INSERT INTO `user_aset` VALUES (141, 108, 14, 16, 23, 59, NULL);
INSERT INTO `user_aset` VALUES (142, 111, 61, 23, 32, 60, NULL);
INSERT INTO `user_aset` VALUES (143, 79, 31, 8, 29, 61, NULL);
INSERT INTO `user_aset` VALUES (144, 110, 31, 8, 10, 62, NULL);
INSERT INTO `user_aset` VALUES (145, 110, 31, 8, 10, 63, NULL);
INSERT INTO `user_aset` VALUES (146, 110, 31, 8, 10, 64, NULL);
INSERT INTO `user_aset` VALUES (147, 110, 31, 8, 10, 65, NULL);
INSERT INTO `user_aset` VALUES (148, 110, 31, 8, 10, 66, NULL);
INSERT INTO `user_aset` VALUES (149, 79, 31, 8, 10, 67, NULL);
INSERT INTO `user_aset` VALUES (150, 110, 32, 4, 5, 68, NULL);
INSERT INTO `user_aset` VALUES (151, 110, 32, 4, 5, 69, NULL);
INSERT INTO `user_aset` VALUES (152, 110, 32, 4, 5, 70, NULL);
INSERT INTO `user_aset` VALUES (153, 110, 32, 5, 6, 71, NULL);
INSERT INTO `user_aset` VALUES (154, 110, 32, 5, 6, 72, NULL);
INSERT INTO `user_aset` VALUES (155, 110, 32, 2, 3, 73, NULL);
INSERT INTO `user_aset` VALUES (156, 108, 15, 9, 11, 74, NULL);
INSERT INTO `user_aset` VALUES (157, 108, 15, 9, 11, 75, NULL);
INSERT INTO `user_aset` VALUES (158, 111, 73, 12, 17, 34, NULL);
INSERT INTO `user_aset` VALUES (159, 109, 33, 18, 26, 77, NULL);
INSERT INTO `user_aset` VALUES (160, 109, 33, 18, 26, 78, NULL);
INSERT INTO `user_aset` VALUES (161, 112, 36, 19, 27, 79, NULL);
INSERT INTO `user_aset` VALUES (162, 112, 18, 11, 16, 80, NULL);
INSERT INTO `user_aset` VALUES (163, 108, 12, 13, 19, 81, NULL);
INSERT INTO `user_aset` VALUES (164, 108, 12, 13, 19, 82, NULL);
INSERT INTO `user_aset` VALUES (165, 108, 12, 13, 19, 83, NULL);
INSERT INTO `user_aset` VALUES (166, 108, 14, 16, 23, 84, NULL);
INSERT INTO `user_aset` VALUES (167, 109, 35, 20, 28, 85, NULL);
INSERT INTO `user_aset` VALUES (168, 109, 35, 17, 24, 86, NULL);
INSERT INTO `user_aset` VALUES (169, 126, 31, 8, 14, 2, NULL);
INSERT INTO `user_aset` VALUES (170, 126, 31, 8, 14, 3, NULL);
INSERT INTO `user_aset` VALUES (171, 126, 31, 8, 14, 4, NULL);
INSERT INTO `user_aset` VALUES (172, 126, 31, 8, 14, 5, NULL);
INSERT INTO `user_aset` VALUES (173, 126, 31, 8, 14, 6, NULL);
INSERT INTO `user_aset` VALUES (174, 126, 31, 8, 14, 7, NULL);
INSERT INTO `user_aset` VALUES (175, 126, 31, 8, 14, 8, NULL);
INSERT INTO `user_aset` VALUES (176, 126, 31, 8, 14, 9, NULL);
INSERT INTO `user_aset` VALUES (177, 126, 31, 8, 18, 10, NULL);
INSERT INTO `user_aset` VALUES (178, 126, 31, 8, 12, 11, NULL);
INSERT INTO `user_aset` VALUES (179, 122, 31, 8, 9, 12, NULL);
INSERT INTO `user_aset` VALUES (180, 122, 31, 8, 9, 13, NULL);
INSERT INTO `user_aset` VALUES (181, 122, 31, 8, 9, 14, NULL);
INSERT INTO `user_aset` VALUES (182, 115, 31, 8, 2, 15, NULL);
INSERT INTO `user_aset` VALUES (183, 115, 31, 8, 15, 16, NULL);
INSERT INTO `user_aset` VALUES (184, 117, 32, 4, 5, 17, NULL);
INSERT INTO `user_aset` VALUES (185, 117, 32, 4, 25, 18, NULL);
INSERT INTO `user_aset` VALUES (186, 132, 32, 5, 6, 19, NULL);
INSERT INTO `user_aset` VALUES (187, 132, 32, 5, 20, 20, NULL);
INSERT INTO `user_aset` VALUES (188, 132, 32, 5, 20, 21, NULL);
INSERT INTO `user_aset` VALUES (189, 132, 32, 5, 20, 22, NULL);
INSERT INTO `user_aset` VALUES (190, 131, 32, 2, 3, 23, NULL);
INSERT INTO `user_aset` VALUES (191, 131, 32, 2, 3, 24, NULL);
INSERT INTO `user_aset` VALUES (192, 131, 32, 2, 3, 25, NULL);
INSERT INTO `user_aset` VALUES (193, 131, 32, 2, 3, 26, NULL);
INSERT INTO `user_aset` VALUES (194, 131, 32, 2, 3, 27, NULL);
INSERT INTO `user_aset` VALUES (195, 131, 32, 2, 3, 28, NULL);
INSERT INTO `user_aset` VALUES (196, 131, 32, 2, 3, 29, NULL);
INSERT INTO `user_aset` VALUES (197, 131, 32, 2, 3, 30, NULL);
INSERT INTO `user_aset` VALUES (198, 131, 32, 2, 3, 31, NULL);
INSERT INTO `user_aset` VALUES (199, 131, 32, 2, 3, 32, NULL);
INSERT INTO `user_aset` VALUES (200, 131, 32, 2, 3, 33, NULL);
INSERT INTO `user_aset` VALUES (201, 111, 73, 12, 17, 34, NULL);
INSERT INTO `user_aset` VALUES (202, 111, 73, 12, 17, 35, NULL);
INSERT INTO `user_aset` VALUES (203, 119, 33, 18, 26, 36, NULL);
INSERT INTO `user_aset` VALUES (204, 119, 33, 18, 26, 37, NULL);
INSERT INTO `user_aset` VALUES (205, 113, 35, 21, 30, 38, NULL);
INSERT INTO `user_aset` VALUES (206, 113, 35, 21, 30, 39, NULL);
INSERT INTO `user_aset` VALUES (207, 114, 35, 15, 22, 40, NULL);
INSERT INTO `user_aset` VALUES (208, 130, 35, 20, 28, 41, NULL);
INSERT INTO `user_aset` VALUES (209, 116, 32, 10, 13, 42, NULL);
INSERT INTO `user_aset` VALUES (210, 120, 36, 22, 31, 43, NULL);
INSERT INTO `user_aset` VALUES (211, 80, 36, 6, 7, 44, NULL);
INSERT INTO `user_aset` VALUES (212, 129, 32, 7, 8, 45, NULL);
INSERT INTO `user_aset` VALUES (213, 129, 32, 7, 8, 46, NULL);
INSERT INTO `user_aset` VALUES (214, 129, 32, 7, 8, 47, NULL);
INSERT INTO `user_aset` VALUES (215, 129, 32, 7, 8, 48, NULL);
INSERT INTO `user_aset` VALUES (216, 129, 32, 7, 8, 49, NULL);
INSERT INTO `user_aset` VALUES (217, 129, 32, 7, 8, 50, NULL);
INSERT INTO `user_aset` VALUES (218, 129, 32, 7, 8, 51, NULL);
INSERT INTO `user_aset` VALUES (219, 129, 32, 7, 8, 52, NULL);
INSERT INTO `user_aset` VALUES (220, 121, 16, 14, 21, 53, NULL);
INSERT INTO `user_aset` VALUES (221, 128, 18, 11, 16, 54, NULL);
INSERT INTO `user_aset` VALUES (222, 124, 12, 13, 19, 55, NULL);
INSERT INTO `user_aset` VALUES (223, 124, 12, 13, 19, 56, NULL);
INSERT INTO `user_aset` VALUES (224, 124, 12, 13, 19, 57, NULL);
INSERT INTO `user_aset` VALUES (225, 118, 21, 3, 4, 58, NULL);
INSERT INTO `user_aset` VALUES (226, 127, 14, 16, 23, 59, NULL);
INSERT INTO `user_aset` VALUES (227, 111, 61, 23, 32, 60, NULL);
INSERT INTO `user_aset` VALUES (228, 133, 31, 8, 29, 61, NULL);
INSERT INTO `user_aset` VALUES (229, 115, 31, 8, 10, 62, NULL);
INSERT INTO `user_aset` VALUES (230, 115, 31, 8, 10, 63, NULL);
INSERT INTO `user_aset` VALUES (231, 115, 31, 8, 10, 64, NULL);
INSERT INTO `user_aset` VALUES (232, 115, 31, 8, 10, 65, NULL);
INSERT INTO `user_aset` VALUES (233, 115, 31, 8, 10, 66, NULL);
INSERT INTO `user_aset` VALUES (234, 126, 31, 8, 10, 67, NULL);
INSERT INTO `user_aset` VALUES (235, 117, 32, 4, 5, 68, NULL);
INSERT INTO `user_aset` VALUES (236, 117, 32, 4, 5, 69, NULL);
INSERT INTO `user_aset` VALUES (237, 117, 32, 4, 5, 70, NULL);
INSERT INTO `user_aset` VALUES (238, 117, 32, 5, 6, 71, NULL);
INSERT INTO `user_aset` VALUES (239, 117, 32, 5, 6, 72, NULL);
INSERT INTO `user_aset` VALUES (240, 117, 32, 2, 3, 73, NULL);
INSERT INTO `user_aset` VALUES (241, 127, 15, 9, 11, 74, NULL);
INSERT INTO `user_aset` VALUES (242, 127, 15, 9, 11, 75, NULL);
INSERT INTO `user_aset` VALUES (243, 111, 73, 12, 17, 34, NULL);
INSERT INTO `user_aset` VALUES (244, 119, 33, 18, 26, 77, NULL);
INSERT INTO `user_aset` VALUES (245, 119, 33, 18, 26, 78, NULL);
INSERT INTO `user_aset` VALUES (246, 80, 36, 19, 27, 79, NULL);
INSERT INTO `user_aset` VALUES (247, 128, 18, 11, 16, 80, NULL);
INSERT INTO `user_aset` VALUES (248, 124, 12, 13, 19, 81, NULL);
INSERT INTO `user_aset` VALUES (249, 124, 12, 13, 19, 82, NULL);
INSERT INTO `user_aset` VALUES (250, 124, 12, 13, 19, 83, NULL);
INSERT INTO `user_aset` VALUES (251, 127, 14, 16, 23, 84, NULL);
INSERT INTO `user_aset` VALUES (252, 130, 35, 20, 28, 85, NULL);
INSERT INTO `user_aset` VALUES (253, 130, 35, 17, 24, 86, NULL);
INSERT INTO `user_aset` VALUES (254, 158, 31, 8, 14, 2, NULL);
INSERT INTO `user_aset` VALUES (255, 158, 31, 8, 14, 3, NULL);
INSERT INTO `user_aset` VALUES (256, 158, 31, 8, 14, 4, NULL);
INSERT INTO `user_aset` VALUES (257, 158, 31, 8, 14, 5, NULL);
INSERT INTO `user_aset` VALUES (258, 158, 31, 8, 14, 6, NULL);
INSERT INTO `user_aset` VALUES (259, 158, 31, 8, 14, 7, NULL);
INSERT INTO `user_aset` VALUES (260, 158, 31, 8, 14, 8, NULL);
INSERT INTO `user_aset` VALUES (261, 158, 31, 8, 14, 9, NULL);
INSERT INTO `user_aset` VALUES (262, 159, 31, 8, 18, 10, NULL);
INSERT INTO `user_aset` VALUES (263, 159, 31, 8, 12, 11, NULL);
INSERT INTO `user_aset` VALUES (264, 159, 31, 8, 9, 12, NULL);
INSERT INTO `user_aset` VALUES (265, 159, 31, 8, 9, 13, NULL);
INSERT INTO `user_aset` VALUES (266, 166, 31, 8, 9, 14, NULL);
INSERT INTO `user_aset` VALUES (267, 156, 31, 8, 2, 15, NULL);
INSERT INTO `user_aset` VALUES (268, 145, 31, 8, 15, 16, NULL);
INSERT INTO `user_aset` VALUES (269, 139, 32, 4, 5, 17, NULL);
INSERT INTO `user_aset` VALUES (270, 145, 32, 4, 25, 18, NULL);
INSERT INTO `user_aset` VALUES (271, 134, 32, 5, 6, 19, NULL);
INSERT INTO `user_aset` VALUES (272, 141, 32, 5, 20, 20, NULL);
INSERT INTO `user_aset` VALUES (273, 141, 32, 5, 20, 21, NULL);
INSERT INTO `user_aset` VALUES (274, 141, 32, 5, 20, 22, NULL);
INSERT INTO `user_aset` VALUES (275, 141, 32, 2, 3, 23, NULL);
INSERT INTO `user_aset` VALUES (276, 141, 32, 2, 3, 24, NULL);
INSERT INTO `user_aset` VALUES (277, 141, 32, 2, 3, 25, NULL);
INSERT INTO `user_aset` VALUES (278, 141, 32, 2, 3, 26, NULL);
INSERT INTO `user_aset` VALUES (279, 141, 32, 2, 3, 27, NULL);
INSERT INTO `user_aset` VALUES (280, 145, 32, 2, 3, 28, NULL);
INSERT INTO `user_aset` VALUES (281, 145, 32, 2, 3, 29, NULL);
INSERT INTO `user_aset` VALUES (282, 148, 32, 2, 3, 30, NULL);
INSERT INTO `user_aset` VALUES (283, 148, 32, 2, 3, 31, NULL);
INSERT INTO `user_aset` VALUES (284, 145, 32, 2, 3, 32, NULL);
INSERT INTO `user_aset` VALUES (285, 148, 32, 2, 3, 33, NULL);
INSERT INTO `user_aset` VALUES (286, 160, 73, 12, 17, 34, NULL);
INSERT INTO `user_aset` VALUES (287, 160, 73, 12, 17, 35, NULL);
INSERT INTO `user_aset` VALUES (288, 143, 33, 18, 26, 36, NULL);
INSERT INTO `user_aset` VALUES (289, 143, 33, 18, 26, 37, NULL);
INSERT INTO `user_aset` VALUES (290, 147, 35, 21, 30, 38, NULL);
INSERT INTO `user_aset` VALUES (291, 142, 35, 21, 30, 39, NULL);
INSERT INTO `user_aset` VALUES (292, 135, 35, 15, 22, 40, NULL);
INSERT INTO `user_aset` VALUES (293, 137, 35, 20, 28, 41, NULL);
INSERT INTO `user_aset` VALUES (294, 136, 32, 10, 13, 42, NULL);
INSERT INTO `user_aset` VALUES (295, 157, 36, 22, 31, 43, NULL);
INSERT INTO `user_aset` VALUES (296, 140, 36, 6, 7, 44, NULL);
INSERT INTO `user_aset` VALUES (297, 144, 32, 7, 8, 45, NULL);
INSERT INTO `user_aset` VALUES (298, 149, 32, 7, 8, 46, NULL);
INSERT INTO `user_aset` VALUES (299, 150, 32, 7, 8, 47, NULL);
INSERT INTO `user_aset` VALUES (300, 144, 32, 7, 8, 48, NULL);
INSERT INTO `user_aset` VALUES (301, 144, 32, 7, 8, 49, NULL);
INSERT INTO `user_aset` VALUES (302, 144, 32, 7, 8, 50, NULL);
INSERT INTO `user_aset` VALUES (303, 144, 32, 7, 8, 51, NULL);
INSERT INTO `user_aset` VALUES (304, 144, 32, 7, 8, 52, NULL);
INSERT INTO `user_aset` VALUES (305, 146, 16, 14, 21, 53, NULL);
INSERT INTO `user_aset` VALUES (306, 153, 18, 11, 16, 54, NULL);
INSERT INTO `user_aset` VALUES (307, 155, 12, 13, 19, 55, NULL);
INSERT INTO `user_aset` VALUES (308, 155, 12, 13, 19, 56, NULL);
INSERT INTO `user_aset` VALUES (309, 155, 12, 13, 19, 57, NULL);
INSERT INTO `user_aset` VALUES (310, 161, 21, 3, 4, 58, NULL);
INSERT INTO `user_aset` VALUES (311, 138, 14, 16, 23, 59, NULL);
INSERT INTO `user_aset` VALUES (312, 152, 61, 23, 32, 60, NULL);
INSERT INTO `user_aset` VALUES (313, 151, 31, 8, 29, 61, NULL);
INSERT INTO `user_aset` VALUES (314, 160, 31, 8, 10, 62, NULL);
INSERT INTO `user_aset` VALUES (315, 160, 31, 8, 10, 63, NULL);
INSERT INTO `user_aset` VALUES (316, 160, 31, 8, 10, 64, NULL);
INSERT INTO `user_aset` VALUES (317, 160, 31, 8, 10, 65, NULL);
INSERT INTO `user_aset` VALUES (318, 160, 31, 8, 10, 66, NULL);
INSERT INTO `user_aset` VALUES (319, 158, 31, 8, 10, 67, NULL);
INSERT INTO `user_aset` VALUES (320, 145, 32, 4, 5, 68, NULL);
INSERT INTO `user_aset` VALUES (321, 145, 32, 4, 5, 69, NULL);
INSERT INTO `user_aset` VALUES (322, 145, 32, 4, 5, 70, NULL);
INSERT INTO `user_aset` VALUES (323, 145, 32, 5, 6, 71, NULL);
INSERT INTO `user_aset` VALUES (324, 145, 32, 5, 6, 72, NULL);
INSERT INTO `user_aset` VALUES (325, 145, 32, 2, 3, 73, NULL);
INSERT INTO `user_aset` VALUES (326, 138, 15, 9, 11, 74, NULL);
INSERT INTO `user_aset` VALUES (327, 138, 15, 9, 11, 75, NULL);
INSERT INTO `user_aset` VALUES (328, 154, 73, 12, 17, 34, NULL);
INSERT INTO `user_aset` VALUES (329, 143, 33, 18, 26, 77, NULL);
INSERT INTO `user_aset` VALUES (330, 143, 33, 18, 26, 78, NULL);
INSERT INTO `user_aset` VALUES (331, 140, 36, 19, 27, 79, NULL);
INSERT INTO `user_aset` VALUES (332, 153, 18, 11, 16, 80, NULL);
INSERT INTO `user_aset` VALUES (333, 155, 12, 13, 19, 81, NULL);
INSERT INTO `user_aset` VALUES (334, 155, 12, 13, 19, 82, NULL);
INSERT INTO `user_aset` VALUES (335, 155, 12, 13, 19, 83, NULL);
INSERT INTO `user_aset` VALUES (336, 138, 14, 16, 23, 84, NULL);
INSERT INTO `user_aset` VALUES (337, 137, 35, 20, 28, 85, NULL);
INSERT INTO `user_aset` VALUES (338, 137, 35, 17, 24, 86, NULL);
INSERT INTO `user_aset` VALUES (339, 179, 31, 8, 14, 2, NULL);
INSERT INTO `user_aset` VALUES (340, 179, 31, 8, 14, 3, NULL);
INSERT INTO `user_aset` VALUES (341, 179, 31, 8, 14, 4, NULL);
INSERT INTO `user_aset` VALUES (342, 179, 31, 8, 14, 5, NULL);
INSERT INTO `user_aset` VALUES (343, 179, 31, 8, 14, 6, NULL);
INSERT INTO `user_aset` VALUES (344, 179, 31, 8, 14, 7, NULL);
INSERT INTO `user_aset` VALUES (345, 179, 31, 8, 14, 8, NULL);
INSERT INTO `user_aset` VALUES (346, 179, 31, 8, 14, 9, NULL);
INSERT INTO `user_aset` VALUES (347, 183, 31, 8, 18, 10, NULL);
INSERT INTO `user_aset` VALUES (348, 177, 31, 8, 12, 11, NULL);
INSERT INTO `user_aset` VALUES (349, 174, 31, 8, 9, 12, NULL);
INSERT INTO `user_aset` VALUES (350, 174, 31, 8, 9, 13, NULL);
INSERT INTO `user_aset` VALUES (351, 174, 31, 8, 9, 14, NULL);
INSERT INTO `user_aset` VALUES (352, 167, 31, 8, 2, 15, NULL);
INSERT INTO `user_aset` VALUES (353, 180, 31, 8, 15, 16, NULL);
INSERT INTO `user_aset` VALUES (354, 170, 32, 4, 5, 17, NULL);
INSERT INTO `user_aset` VALUES (355, 190, 32, 4, 25, 18, NULL);
INSERT INTO `user_aset` VALUES (356, 171, 32, 5, 6, 19, NULL);
INSERT INTO `user_aset` VALUES (357, 185, 32, 5, 20, 20, NULL);
INSERT INTO `user_aset` VALUES (358, 185, 32, 5, 20, 21, NULL);
INSERT INTO `user_aset` VALUES (359, 185, 32, 5, 20, 22, NULL);
INSERT INTO `user_aset` VALUES (360, 168, 32, 2, 3, 23, NULL);
INSERT INTO `user_aset` VALUES (361, 168, 32, 2, 3, 24, NULL);
INSERT INTO `user_aset` VALUES (362, 168, 32, 2, 3, 25, NULL);
INSERT INTO `user_aset` VALUES (363, 168, 32, 2, 3, 26, NULL);
INSERT INTO `user_aset` VALUES (364, 168, 32, 2, 3, 27, NULL);
INSERT INTO `user_aset` VALUES (365, 168, 32, 2, 3, 28, NULL);
INSERT INTO `user_aset` VALUES (366, 168, 32, 2, 3, 29, NULL);
INSERT INTO `user_aset` VALUES (367, 168, 32, 2, 3, 30, NULL);
INSERT INTO `user_aset` VALUES (368, 168, 32, 2, 3, 31, NULL);
INSERT INTO `user_aset` VALUES (369, 168, 32, 2, 3, 32, NULL);
INSERT INTO `user_aset` VALUES (370, 168, 32, 2, 3, 33, NULL);
INSERT INTO `user_aset` VALUES (371, 182, 73, 12, 17, 34, NULL);
INSERT INTO `user_aset` VALUES (372, 182, 73, 12, 17, 35, NULL);
INSERT INTO `user_aset` VALUES (373, 191, 33, 18, 26, 36, NULL);
INSERT INTO `user_aset` VALUES (374, 191, 33, 18, 26, 37, NULL);
INSERT INTO `user_aset` VALUES (375, 195, 35, 21, 30, 38, NULL);
INSERT INTO `user_aset` VALUES (376, 195, 35, 21, 30, 39, NULL);
INSERT INTO `user_aset` VALUES (377, 187, 35, 15, 22, 40, NULL);
INSERT INTO `user_aset` VALUES (378, 193, 35, 20, 28, 41, NULL);
INSERT INTO `user_aset` VALUES (379, 178, 32, 10, 13, 42, NULL);
INSERT INTO `user_aset` VALUES (380, 196, 36, 22, 31, 43, NULL);
INSERT INTO `user_aset` VALUES (381, 172, 36, 6, 7, 44, NULL);
INSERT INTO `user_aset` VALUES (382, 173, 32, 7, 8, 45, NULL);
INSERT INTO `user_aset` VALUES (383, 173, 32, 7, 8, 46, NULL);
INSERT INTO `user_aset` VALUES (384, 173, 32, 7, 8, 47, NULL);
INSERT INTO `user_aset` VALUES (385, 173, 32, 7, 8, 48, NULL);
INSERT INTO `user_aset` VALUES (386, 173, 32, 7, 8, 49, NULL);
INSERT INTO `user_aset` VALUES (387, 173, 32, 7, 8, 50, NULL);
INSERT INTO `user_aset` VALUES (388, 173, 32, 7, 8, 51, NULL);
INSERT INTO `user_aset` VALUES (389, 173, 32, 7, 8, 52, NULL);
INSERT INTO `user_aset` VALUES (390, 186, 16, 14, 21, 53, NULL);
INSERT INTO `user_aset` VALUES (391, 181, 18, 11, 16, 54, NULL);
INSERT INTO `user_aset` VALUES (392, 184, 12, 13, 19, 55, NULL);
INSERT INTO `user_aset` VALUES (393, 184, 12, 13, 19, 56, NULL);
INSERT INTO `user_aset` VALUES (394, 184, 12, 13, 19, 57, NULL);
INSERT INTO `user_aset` VALUES (395, 169, 21, 3, 4, 58, NULL);
INSERT INTO `user_aset` VALUES (396, 188, 14, 16, 23, 59, NULL);
INSERT INTO `user_aset` VALUES (397, 197, 61, 23, 32, 60, NULL);
INSERT INTO `user_aset` VALUES (398, 194, 31, 8, 29, 61, NULL);
INSERT INTO `user_aset` VALUES (399, 175, 31, 8, 10, 62, NULL);
INSERT INTO `user_aset` VALUES (400, 175, 31, 8, 10, 63, NULL);
INSERT INTO `user_aset` VALUES (401, 175, 31, 8, 10, 64, NULL);
INSERT INTO `user_aset` VALUES (402, 175, 31, 8, 10, 65, NULL);
INSERT INTO `user_aset` VALUES (403, 175, 31, 8, 10, 66, NULL);
INSERT INTO `user_aset` VALUES (404, 175, 31, 8, 10, 67, NULL);
INSERT INTO `user_aset` VALUES (405, 170, 32, 4, 5, 68, NULL);
INSERT INTO `user_aset` VALUES (406, 170, 32, 4, 5, 69, NULL);
INSERT INTO `user_aset` VALUES (407, 170, 32, 4, 5, 70, NULL);
INSERT INTO `user_aset` VALUES (408, 171, 32, 5, 6, 71, NULL);
INSERT INTO `user_aset` VALUES (409, 171, 32, 5, 6, 72, NULL);
INSERT INTO `user_aset` VALUES (410, 168, 32, 2, 3, 73, NULL);
INSERT INTO `user_aset` VALUES (411, 176, 15, 9, 11, 74, NULL);
INSERT INTO `user_aset` VALUES (412, 176, 15, 9, 11, 75, NULL);
INSERT INTO `user_aset` VALUES (413, 182, 73, 12, 17, 34, NULL);
INSERT INTO `user_aset` VALUES (414, 191, 33, 18, 26, 77, NULL);
INSERT INTO `user_aset` VALUES (415, 191, 33, 18, 26, 78, NULL);
INSERT INTO `user_aset` VALUES (416, 192, 36, 19, 27, 79, NULL);
INSERT INTO `user_aset` VALUES (417, 181, 18, 11, 16, 80, NULL);
INSERT INTO `user_aset` VALUES (418, 184, 12, 13, 19, 81, NULL);
INSERT INTO `user_aset` VALUES (419, 184, 12, 13, 19, 82, NULL);
INSERT INTO `user_aset` VALUES (420, 184, 12, 13, 19, 83, NULL);
INSERT INTO `user_aset` VALUES (421, 188, 14, 16, 23, 84, NULL);
INSERT INTO `user_aset` VALUES (422, 193, 35, 20, 28, 85, NULL);
INSERT INTO `user_aset` VALUES (423, 189, 35, 17, 24, 86, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wilayah
-- ----------------------------
INSERT INTO `wilayah` VALUES (1, 1, 'All', NULL);
INSERT INTO `wilayah` VALUES (2, 32, 'Bandung', NULL);
INSERT INTO `wilayah` VALUES (3, 21, 'Batam', NULL);
INSERT INTO `wilayah` VALUES (4, 32, 'Bekasi', NULL);
INSERT INTO `wilayah` VALUES (5, 32, 'Bogor', NULL);
INSERT INTO `wilayah` VALUES (6, 36, 'Cilegon', NULL);
INSERT INTO `wilayah` VALUES (7, 32, 'Cirebon', NULL);
INSERT INTO `wilayah` VALUES (8, 31, 'Jakarta', NULL);
INSERT INTO `wilayah` VALUES (9, 15, 'Jambi', NULL);
INSERT INTO `wilayah` VALUES (10, 32, 'Karawang', NULL);
INSERT INTO `wilayah` VALUES (11, 18, 'Lampung', NULL);
INSERT INTO `wilayah` VALUES (12, 73, 'Makassar', NULL);
INSERT INTO `wilayah` VALUES (13, 12, 'Medan', NULL);
INSERT INTO `wilayah` VALUES (14, 16, 'Palembang', NULL);
INSERT INTO `wilayah` VALUES (15, 35, 'Pasuruan', NULL);
INSERT INTO `wilayah` VALUES (16, 14, 'Pekanbaru', NULL);
INSERT INTO `wilayah` VALUES (17, 35, 'Probolinggo', NULL);
INSERT INTO `wilayah` VALUES (18, 33, 'Semarang', NULL);
INSERT INTO `wilayah` VALUES (19, 36, 'Serang', NULL);
INSERT INTO `wilayah` VALUES (20, 35, 'Sidoarjo', NULL);
INSERT INTO `wilayah` VALUES (21, 35, 'Surabaya', NULL);
INSERT INTO `wilayah` VALUES (22, 36, 'Tangerang', NULL);
INSERT INTO `wilayah` VALUES (23, 61, 'Tarakan', NULL);

SET FOREIGN_KEY_CHECKS = 1;
