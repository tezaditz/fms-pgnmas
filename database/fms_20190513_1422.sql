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

 Date: 13/05/2019 14:22:18
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
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-02-07 04:18:26', NULL);
INSERT INTO `cms_email_templates` VALUES (2, 'Complain', 'Complain', 'Complain', '<p>Yth Bapak/Ibu</p>\r\n<p>PEMBERITAHUAN</p>\r\n<p>Complain/Request Baru telah masuk di Facility Management System.</p>\r\n<table>\r\n    <tbody><tr>\r\n        <td>No Work Order</td>\r\n        <td>:</td>\r\n        <td>[no_workorder]</td>\r\n    </tr>\r\n    <tr><td>Tanggal</td>\r\n        <td>:</td>\r\n        <td>[tanggal]</td>\r\n    </tr>\r\n    <tr><td>User</td>\r\n        <td>:</td>\r\n        <td>[user]</td>\r\n    </tr>\r\n    <tr><td>Divisi/Satker</td>\r\n        <td>:</td>\r\n        <td>[divisi]</td>\r\n    </tr>\r\n    <tr><td>No Telepon</td>\r\n        <td>:</td>\r\n        <td>[no_telp]</td>\r\n    </tr>\r\n    <tr><td>Jenis/Kategori</td>\r\n        <td>:</td>\r\n        <td>[kategori]</td>\r\n    </tr>\r\n    <tr><td>Informasi</td>\r\n        <td>:</td>\r\n        <td>[informasi]</td>\r\n    </tr>\r\n</tbody></table>\r\n<p>Mohon agar dapat ditindaklanjuti dengan unit terkait</p>\r\n\r\n<p>\r\n        Catatan :\r\n\r\n        Email ini dikirim secara otomatis by system \r\n        \r\n        <strong>Mohon untuk tidak mereply</strong>\r\n        \r\n</p>', 'Complain', 'Facility Management System', 'fms.pgnmas@gmail.com', 'dsc.pgnmas@gmail.com', '2019-05-06 03:17:20', '2019-05-10 00:49:39');
INSERT INTO `cms_email_templates` VALUES (3, 'ComplainDone', 'ComplainDone', 'Complain Done', '<p>Yth Bapak/Ibu,&nbsp;</p>\r\n<p>Facility Management System telah menerima hasil penyelesaian complain/request sebagai berikut,\r\n</p><div>\r\n        <table>\r\n                <tbody><tr>\r\n                    <td>NO TICKET HALOMAS</td>\r\n                    <td>:</td>\r\n                    <td>[no_halomas]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>NO WORK ORDER</td>\r\n                    <td>:</td>\r\n                    <td>[no_workorder]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>LOKASI</td>\r\n                    <td>:</td>\r\n                    <td>[lokasi]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>JENIS/KATEGORI</td>\r\n                    <td>:</td>\r\n                    <td>[kategori]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>KELUHAN CUSTOMER</td>\r\n                    <td>:</td>\r\n                    <td>[uraian_complain]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>CATATAN PENGELOLA</td>\r\n                    <td>:</td>\r\n                    <td>[catatan]</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>STATUS</td>\r\n                    <td>:</td>\r\n                    <td>[status]</td>\r\n                </tr>\r\n            </tbody></table>\r\n</div>   \r\n   \r\n    <p>Klik tautan berikut LINK</p>\r\n    \r\n    Mohon agar dilakukan pengecekan kembali\r\n    Catatan : Email ini dikirim secara otomatis by system &gt;Mohon untuk tidak mereply', 'Complain Done', 'Facility Management System', 'fms.pgnmas@gmail.com', 'dsc.pgnmas@gmail.com', '2019-05-09 06:00:13', '2019-05-09 06:06:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 844 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES (1, 'SLA', 'Route', 'AdminSlaControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 1, '2019-02-09 03:38:22', '2019-03-21 08:19:50');
INSERT INTO `cms_menus` VALUES (2, 'Detail SLA', 'Route', 'AdminDslaControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 2, '2019-02-09 03:45:19', '2019-03-21 08:19:59');
INSERT INTO `cms_menus` VALUES (3, 'Master Aset', 'Route', 'AdminAsetControllerGetIndex', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 4, '2019-02-09 04:41:31', '2019-04-22 10:42:05');
INSERT INTO `cms_menus` VALUES (4, 'Work Order', 'URL', '#', 'normal', 'fa fa-th', 0, 1, 0, 1, 1, '2019-02-09 05:49:43', '2019-04-23 03:56:08');
INSERT INTO `cms_menus` VALUES (5, 'Rutin Terencana', 'URL', '#', 'normal', 'fa fa-th', 4, 1, 0, 1, 1, '2019-02-09 05:50:39', '2019-04-23 03:54:50');
INSERT INTO `cms_menus` VALUES (6, 'Setting SLA Aset', 'Route', 'AdminSaControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 3, '2019-02-09 11:05:15', '2019-03-21 08:20:11');
INSERT INTO `cms_menus` VALUES (7, 'Rutin  Non Rutin Terencana', 'URL', '#', 'normal', 'fa fa-th', 4, 1, 0, 1, 2, '2019-02-09 11:54:29', '2019-04-23 03:48:49');
INSERT INTO `cms_menus` VALUES (8, 'Complain', 'Route', 'AdminComplainControllerGetIndex', 'normal', 'fa fa-th-list', 7, 1, 0, 1, 1, '2019-02-09 11:55:02', '2019-04-23 03:49:01');
INSERT INTO `cms_menus` VALUES (9, 'Request', 'Route', 'AdminRequestControllerGetIndex', 'normal', 'fa fa-th-list', 7, 1, 0, 1, 2, '2019-02-09 13:13:04', '2019-04-23 03:49:14');
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
INSERT INTO `cms_menus` VALUES (25, 'Tindaklanjut Leader', 'Module', 'm_krj', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 6, '2019-04-07 08:50:20', '2019-04-09 00:32:10');
INSERT INTO `cms_menus` VALUES (26, 'test', 'Route', 'AdminArea36ControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 6, '2019-04-29 04:36:33', NULL);
INSERT INTO `cms_menus` VALUES (27, 'Jadwal Pekerjaan', 'Module', 'master_jadwal_sla', 'normal', 'fa fa-calendar', 5, 1, 0, 1, 5, '2019-05-02 06:40:01', NULL);
INSERT INTO `cms_menus` VALUES (28, 'Dashboard Halomas', 'Route', 'DashboardHalomas', 'normal', 'fa fa-dashboard', 0, 1, 0, 1, NULL, '2019-05-07 06:03:36', '2019-05-07 06:05:46');

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 243 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
INSERT INTO `cms_menus_privileges` VALUES (189, 4, 8);
INSERT INTO `cms_menus_privileges` VALUES (190, 4, 5);
INSERT INTO `cms_menus_privileges` VALUES (191, 4, 4);
INSERT INTO `cms_menus_privileges` VALUES (192, 4, 6);
INSERT INTO `cms_menus_privileges` VALUES (193, 4, 3);
INSERT INTO `cms_menus_privileges` VALUES (194, 4, 7);
INSERT INTO `cms_menus_privileges` VALUES (195, 4, 1);
INSERT INTO `cms_menus_privileges` VALUES (196, 4, 9);
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
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
INSERT INTO `cms_moduls` VALUES (32, 'Complain', 'fa fa-glass', 'complain', 'complain', 'AdminComplainController', 0, 0, '2019-04-18 07:17:11', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (33, 'Request', 'fa fa-glass', 'request', 'request', 'AdminRequestController', 0, 0, '2019-04-18 07:42:02', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (34, 'Tindaklanjut Complain', 'fa fa-th-list', 'tindaklanjut_complain', 'tindaklanjut_complain', 'AdminTindaklanjutComplainController', 0, 0, '2019-04-30 01:03:36', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (35, 'Sub Detail Pekerjaan', 'fa fa-th-list', 'sub_detail_pekerjaan', 'sub_detail_pekerjaan', 'AdminSubDetailPekerjaanController', 0, 0, '2019-05-01 13:39:56', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (36, 'Master Jadwal SLA', 'fa fa-th-list', 'master_jadwal_sla', 'master_jadwal_sla', 'AdminMasterJadwalSlaController', 0, 0, '2019-05-02 06:23:19', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 253 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
INSERT INTO `cms_privileges_roles` VALUES (117, 1, 1, 1, 1, 1, 1, 28, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (123, 1, 1, 1, 1, 1, 1, 29, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (124, 1, 1, 1, 1, 1, 1, 30, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (125, 1, 1, 1, 1, 1, 1, 31, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (146, 1, 1, 1, 1, 1, 7, 23, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (147, 1, 1, 1, 1, 1, 1, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (156, 1, 1, 1, 1, 1, 8, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (157, 1, 1, 1, 1, 1, 8, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (158, 1, 1, 1, 1, 1, 8, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (159, 1, 1, 1, 1, 1, 8, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (160, 1, 1, 1, 1, 1, 8, 20, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (161, 1, 1, 1, 1, 1, 8, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (162, 1, 1, 1, 1, 1, 8, 25, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (163, 1, 1, 1, 1, 1, 8, 24, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (164, 1, 1, 1, 1, 1, 8, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (165, 1, 1, 1, 1, 1, 8, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (166, 1, 1, 1, 1, 1, 8, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (167, 1, 1, 1, 1, 1, 8, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (168, 1, 1, 1, 1, 1, 8, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (169, 1, 1, 1, 1, 1, 8, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (170, 1, 1, 1, 1, 1, 8, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (171, 1, 1, 1, 1, 1, 1, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (206, 1, 1, 1, 1, 1, 9, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (207, 1, 1, 1, 1, 1, 9, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (208, 1, 1, 1, 1, 1, 1, 34, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (209, 1, 1, 1, 1, 1, 1, 35, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (210, 1, 1, 1, 1, 1, 1, 36, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (211, 1, 1, 1, 1, 1, 1, 37, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (212, 1, 1, 1, 1, 1, 1, 38, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (213, 1, 1, 1, 1, 1, 1, 34, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (214, 1, 1, 1, 1, 1, 4, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (215, 1, 1, 1, 1, 1, 4, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (216, 1, 1, 1, 1, 1, 4, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (217, 1, 1, 1, 1, 1, 4, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (218, 1, 1, 1, 1, 1, 4, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (219, 1, 1, 1, 1, 1, 4, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (220, 1, 1, 1, 1, 1, 4, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (221, 1, 1, 1, 1, 1, 4, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (222, 1, 1, 1, 1, 1, 4, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (223, 1, 1, 1, 1, 1, 4, 34, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (224, 1, 1, 1, 1, 1, 4, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (225, 1, 1, 1, 1, 1, 1, 35, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (226, 1, 1, 1, 1, 1, 6, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (227, 1, 1, 1, 1, 1, 6, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (228, 1, 1, 1, 1, 1, 6, 30, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (229, 1, 1, 1, 1, 1, 6, 25, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (230, 1, 1, 1, 1, 1, 6, 24, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (231, 1, 1, 1, 1, 1, 6, 31, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (232, 1, 1, 1, 1, 1, 6, 23, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (233, 1, 1, 1, 1, 1, 6, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (234, 1, 1, 1, 1, 1, 6, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (235, 1, 1, 1, 1, 1, 6, 35, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (236, 1, 1, 1, 1, 1, 1, 36, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (237, 1, 1, 1, 1, 1, 5, 27, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (238, 1, 1, 1, 1, 1, 5, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (239, 1, 1, 1, 1, 1, 5, 32, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (240, 1, 1, 1, 1, 1, 5, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (241, 1, 1, 1, 1, 1, 5, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (242, 1, 1, 1, 1, 1, 5, 25, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (243, 1, 1, 1, 1, 1, 5, 24, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (244, 1, 1, 1, 1, 1, 5, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (245, 1, 1, 1, 1, 1, 5, 36, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (246, 1, 1, 1, 1, 1, 5, 23, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (247, 1, 1, 1, 1, 1, 5, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (248, 1, 1, 1, 1, 1, 5, 33, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (249, 1, 1, 1, 1, 1, 5, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (250, 1, 1, 1, 1, 1, 5, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (251, 1, 1, 1, 1, 1, 5, 26, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (252, 1, 1, 1, 1, 1, 5, 18, NULL, NULL);

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
INSERT INTO `cms_settings` VALUES (9, 'smtp_password', 'pgnm452019@', 'text', NULL, NULL, '2019-02-07 04:18:26', NULL, 'Email Setting', 'SMTP Password');
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
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES (1, 'SA', '', 'uploads/1/2019-02/avatar_372_456324.png', 'admin@crudbooster.com', '$2y$10$9mt3jqtbsdeoSCAdiGdtaOWNWcPw7Esx1GJNy2z0asXQ7W3UwqWEu', 1, '2019-02-07 04:18:24', '2019-02-12 13:44:02', 'Active');
INSERT INTO `cms_users` VALUES (79, 'korwil1', 'Bernadeta Katina', 'uploads/1/2019-05/user_logo_png_4.png', 'bernadeta1707@gmail.com', '$2y$10$G1iFq3OjaBL6BZstZe45OeVsE8Emsm3BZ6VYeXEsygqaRN0Km9eXe', 4, '2019-05-13 03:30:22', '2019-05-13 03:31:47', NULL);
INSERT INTO `cms_users` VALUES (80, 'korea1', 'Addy Prastyo', 'uploads/1/2019-05/user_logo_png_4.png', 'addy.prasetio1@gmail.com', '$2y$10$aUjS.II1WixgTIgp340fhOFVoCx3TBWZ2viz/CfmEAlVFtdhCFbTW', 5, '2019-05-13 06:06:29', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
  `status_jadwal` int(1) NULL DEFAULT NULL COMMENT '1 = ada jadwal ; 2 = belum terjadwal;',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 313 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1005 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
INSERT INTO `jenis_complain` VALUES (1, 'Mekanikal');
INSERT INTO `jenis_complain` VALUES (2, 'Electrical');
INSERT INTO `jenis_complain` VALUES (3, 'Sipil');
INSERT INTO `jenis_complain` VALUES (4, 'Housekeeping');
INSERT INTO `jenis_complain` VALUES (5, 'Security');
INSERT INTO `jenis_complain` VALUES (6, 'Parkir');
INSERT INTO `jenis_complain` VALUES (7, 'Taman');
INSERT INTO `jenis_complain` VALUES (999, 'Umum');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1080 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_jadwal_sla
-- ----------------------------
INSERT INTO `master_jadwal_sla` VALUES (3, 1, 107, 1001, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_listrik
-- ----------------------------
INSERT INTO `master_listrik` VALUES (1, 2019, 'jan', 47, 100, 100, NULL, NULL, '2019-05-13 14:12:04');

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
INSERT INTO `nomor_tiket` VALUES (1, 'Work Order', 'WO-', 35, NULL, '2019-05-10 13:14:09');
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
) ENGINE = InnoDB AUTO_INCREMENT = 13846 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 5343 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 11226 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rekap_pemakaian_wilayah
-- ----------------------------
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11094, 2, 'Bandung', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11095, 2, 'Bandung', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11096, 2, 'Bandung', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11097, 2, 'Bandung', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11098, 2, 'Bandung', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11099, 2, 'Bandung', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11100, 3, 'Batam', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11101, 3, 'Batam', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11102, 3, 'Batam', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11103, 3, 'Batam', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11104, 3, 'Batam', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11105, 3, 'Batam', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:48');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11106, 4, 'Bekasi', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11107, 4, 'Bekasi', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11108, 4, 'Bekasi', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11109, 4, 'Bekasi', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11110, 4, 'Bekasi', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11111, 4, 'Bekasi', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11112, 5, 'Bogor', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11113, 5, 'Bogor', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11114, 5, 'Bogor', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11115, 5, 'Bogor', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11116, 5, 'Bogor', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11117, 5, 'Bogor', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11118, 6, 'Cilegon', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11119, 6, 'Cilegon', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11120, 6, 'Cilegon', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11121, 6, 'Cilegon', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11122, 6, 'Cilegon', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11123, 6, 'Cilegon', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11124, 7, 'Cirebon', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11125, 7, 'Cirebon', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11126, 7, 'Cirebon', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11127, 7, 'Cirebon', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11128, 7, 'Cirebon', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11129, 7, 'Cirebon', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11130, 8, 'Jakarta', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11131, 8, 'Jakarta', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:49');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11132, 8, 'Jakarta', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11133, 8, 'Jakarta', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11134, 8, 'Jakarta', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11135, 8, 'Jakarta', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11136, 9, 'Jambi', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11137, 9, 'Jambi', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11138, 9, 'Jambi', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11139, 9, 'Jambi', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11140, 9, 'Jambi', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11141, 9, 'Jambi', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11142, 10, 'Karawang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11143, 10, 'Karawang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11144, 10, 'Karawang', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11145, 10, 'Karawang', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11146, 10, 'Karawang', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11147, 10, 'Karawang', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11148, 11, 'Lampung', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11149, 11, 'Lampung', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11150, 11, 'Lampung', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11151, 11, 'Lampung', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11152, 11, 'Lampung', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11153, 11, 'Lampung', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11154, 12, 'Makassar', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:50');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11155, 12, 'Makassar', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11156, 12, 'Makassar', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11157, 12, 'Makassar', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11158, 12, 'Makassar', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11159, 12, 'Makassar', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11160, 13, 'Medan', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11161, 13, 'Medan', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11162, 13, 'Medan', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11163, 13, 'Medan', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11164, 13, 'Medan', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11165, 13, 'Medan', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11166, 14, 'Palembang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11167, 14, 'Palembang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11168, 14, 'Palembang', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11169, 14, 'Palembang', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11170, 14, 'Palembang', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11171, 14, 'Palembang', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11172, 15, 'Pasuruan', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11173, 15, 'Pasuruan', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11174, 15, 'Pasuruan', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11175, 15, 'Pasuruan', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11176, 15, 'Pasuruan', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11177, 15, 'Pasuruan', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11178, 16, 'Pekanbaru', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:51');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11179, 16, 'Pekanbaru', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11180, 16, 'Pekanbaru', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11181, 16, 'Pekanbaru', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11182, 16, 'Pekanbaru', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11183, 16, 'Pekanbaru', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11184, 17, 'Probolinggo', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11185, 17, 'Probolinggo', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11186, 17, 'Probolinggo', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11187, 17, 'Probolinggo', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11188, 17, 'Probolinggo', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11189, 17, 'Probolinggo', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11190, 18, 'Semarang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11191, 18, 'Semarang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11192, 18, 'Semarang', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11193, 18, 'Semarang', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11194, 18, 'Semarang', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11195, 18, 'Semarang', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11196, 19, 'Serang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11197, 19, 'Serang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11198, 19, 'Serang', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11199, 19, 'Serang', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11200, 19, 'Serang', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11201, 19, 'Serang', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11202, 20, 'Sidoarjo', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11203, 20, 'Sidoarjo', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11204, 20, 'Sidoarjo', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11205, 20, 'Sidoarjo', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11206, 20, 'Sidoarjo', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:52');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11207, 20, 'Sidoarjo', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11208, 21, 'Surabaya', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11209, 21, 'Surabaya', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11210, 21, 'Surabaya', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11211, 21, 'Surabaya', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11212, 21, 'Surabaya', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11213, 21, 'Surabaya', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11214, 22, 'Tangerang', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11215, 22, 'Tangerang', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11216, 22, 'Tangerang', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11217, 22, 'Tangerang', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11218, 22, 'Tangerang', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11219, 22, 'Tangerang', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11220, 23, 'Tarakan', 'listrik', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11221, 23, 'Tarakan', 'solar', '', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11222, 23, 'Tarakan', 'air', 'Sumur', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11223, 23, 'Tarakan', 'air', 'PAM', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11224, 23, 'Tarakan', 'limbah', 'basah', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');
INSERT INTO `rekap_pemakaian_wilayah` VALUES (11225, 23, 'Tarakan', 'limbah', 'kering', 2019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-13 13:05:53');

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
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
  `created_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 782 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_aset
-- ----------------------------
INSERT INTO `user_aset` VALUES (80, 1, 1, 1, 1, 1, NULL);
INSERT INTO `user_aset` VALUES (82, 79, 31, 8, 2, 15, '2019-05-13 03:47:41');
INSERT INTO `user_aset` VALUES (83, 80, 31, 8, 2, 15, '2019-05-13 13:09:49');

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
