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

 Date: 13/05/2019 08:30:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
-- Records of detail_sla
-- ----------------------------
INSERT INTO `detail_sla` VALUES (107, 2019, 1, 'Melakukan siaga pengamanan 24 jam pada lokasi yang memiliki kegiatan operasional', NULL);
INSERT INTO `detail_sla` VALUES (108, 2019, 1, 'Melakukan pengamanan berkala pada lokasi yang tidak memiliki kegiatan operasional', NULL);
INSERT INTO `detail_sla` VALUES (109, 2019, 1, 'Melakukan pengelolaan, pengoperasian, pemutakhiran dan pemeliharaan CCTV', NULL);
INSERT INTO `detail_sla` VALUES (110, 2019, 1, 'Melakukan koordinasi dengan instansi pengamanan eksternal ', NULL);
INSERT INTO `detail_sla` VALUES (111, 2019, 1, 'Melakukan simulasi tanggap darurat (sesuai dengan tingkat resiko)', NULL);
INSERT INTO `detail_sla` VALUES (112, 2019, 1, 'Melaksanakan pengamanan tanggap darurat ', NULL);
INSERT INTO `detail_sla` VALUES (113, 2019, 1, 'Melakukan penyusunan rencana pengamanan (renpam), rencana kegiatan (rengiat) dan rencana kontijensi (renkon)', NULL);
INSERT INTO `detail_sla` VALUES (114, 2019, 2, 'Melakukan pembersihan gedung dan perlengkapannya', NULL);
INSERT INTO `detail_sla` VALUES (115, 2019, 2, 'Melakukan pemeliharaan dan pembersihan perlengkapan dan peralatan pada area service (pada pantry, toilet, janitor, tangga darurat dan musholla)', NULL);
INSERT INTO `detail_sla` VALUES (116, 2019, 2, 'Melakukan pembersihan halaman, tanah kosong, dan area parkir. ', NULL);
INSERT INTO `detail_sla` VALUES (117, 2019, 2, 'Melakukan pembersihan dan perawatan taman. ', NULL);
INSERT INTO `detail_sla` VALUES (118, 2019, 2, 'Melakukan pemilahan dan pengelolaan sampah dan limbah cair, domestic dan B3 sesuai dengan ketentuan yang berlaku', NULL);
INSERT INTO `detail_sla` VALUES (119, 2019, 2, 'Melakukan pengendalian hama tikus dan serangga', NULL);
INSERT INTO `detail_sla` VALUES (120, 2019, 2, 'Mengelola pengoperasian Elevator diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', NULL);
INSERT INTO `detail_sla` VALUES (121, 2019, 2, 'Mengelola pengoperasian genset diantaranya : pemeliharaan, pencatatan jam operasional, uji emisi genset beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', NULL);
INSERT INTO `detail_sla` VALUES (122, 2019, 2, 'Mengelola pengoperasian instalasi pendingin diantaranya : pemeliharaan, pencatatan jam operasional, beserta pelaporannya dan lain-lain sesuai ketentuan yang berlaku.', NULL);
INSERT INTO `detail_sla` VALUES (123, 2019, 2, 'Mengelola pengoperasian sistem proteksi kebakaran', NULL);
INSERT INTO `detail_sla` VALUES (124, 2019, 2, 'Mengelola pengoperasian sistem tata suara', NULL);
INSERT INTO `detail_sla` VALUES (125, 2019, 2, 'Mengelola pengoperasian instalasi listrik', NULL);
INSERT INTO `detail_sla` VALUES (126, 2019, 2, 'Mengelola pengoperasian telekomunikasi (PABX & telepon) ', NULL);
INSERT INTO `detail_sla` VALUES (127, 2019, 2, 'Mengelola pengoperasian pencahayaan lampu ', NULL);
INSERT INTO `detail_sla` VALUES (128, 2019, 2, 'Melakukan pemeliharaan dan pembersihan Partisi bangunan (pintu, jendela, kaca ) ', NULL);
INSERT INTO `detail_sla` VALUES (129, 2019, 2, 'Mengelola Ground Reservoir', NULL);
INSERT INTO `detail_sla` VALUES (130, 2019, 2, 'Mengoperasikan Pompa Air Bersih', NULL);
INSERT INTO `detail_sla` VALUES (131, 2019, 2, 'Melakukan pemeliharaan Roof Tank', NULL);
INSERT INTO `detail_sla` VALUES (132, 2019, 2, 'Mengoperasikan Cabang Utama Pemipaan Air Bersih', NULL);
INSERT INTO `detail_sla` VALUES (133, 2019, 2, 'Mengelola Infrastruktur dan perlengkapan plumbing dan drainase', NULL);
INSERT INTO `detail_sla` VALUES (134, 2019, 2, 'Mengelola Intake Air Bersih', NULL);
INSERT INTO `detail_sla` VALUES (135, 2019, 2, 'Mengelola Water Treatment Plant', NULL);
INSERT INTO `detail_sla` VALUES (136, 2019, 2, 'Mengelola Sewage Treatment Plan', NULL);
INSERT INTO `detail_sla` VALUES (137, 2019, 2, 'Mengelola Reservoir khusus air olahan', NULL);
INSERT INTO `detail_sla` VALUES (138, 2019, 2, 'Melaksanakan Health Risk Assesment sesuai dengan ketentuan yang berlaku.', NULL);
INSERT INTO `detail_sla` VALUES (139, 2019, 3, 'Melakukan perbaikan dan/atau penggantian bagian aset tanah dan/atau bangunan, komponen, bahan bangunan, dan/atau prasarana dan sarana selama dalam masa umur pakai aset tersebut', NULL);
INSERT INTO `detail_sla` VALUES (140, 2019, 4, 'Penyediaan dan pengelolaan area merokok ', NULL);
INSERT INTO `detail_sla` VALUES (141, 2019, 4, 'Penyediaan dan pengelolaan ruang laktasi ', NULL);
INSERT INTO `detail_sla` VALUES (142, 2019, 4, 'Penyediaan tempat penyimpanan sementara limbah B3 ', NULL);
INSERT INTO `detail_sla` VALUES (143, 2019, 4, 'Penyediaan dan mengelola APAR dan P3K ', NULL);
INSERT INTO `detail_sla` VALUES (144, 2019, 5, 'Pengurusan Baru / Perpanjangan Ijin Pengolahan Limbah Cair dan pelaporannya sesuai ketentuan ijin', NULL);
INSERT INTO `detail_sla` VALUES (145, 2019, 5, 'Melakukan pengurusan perpanjangan Sertifikasi Kelayakan Fungsi Bangunan (SLF) dan Sertifikasi Kelayakan Peralatan Kerja (genset, lift, penangkal petir, instalasi listrik, gondola, instalasi pemadam kebakaran dan sejenisnya)', NULL);
INSERT INTO `detail_sla` VALUES (146, 2019, 5, 'Pengurusan Baru / Perpanjangan Ijin Pengambilan Air Tanah dan pelaporannya sesuai ketentuan ijin', NULL);
INSERT INTO `detail_sla` VALUES (147, 2019, 5, 'Pengurusan Baru / Perpanjangan ijin Tempat Penampungan Sementara limbah B3 dan pelaporannya sesuai ketentuan ijin', NULL);
INSERT INTO `detail_sla` VALUES (148, 2019, 5, 'Pengurusan Ijin Lingkungan (AMDAL/UKL-UPL) dan pelaporannya sesuai ketentuan ijin kepada pihak terkait', NULL);
INSERT INTO `detail_sla` VALUES (149, 2019, 6, 'Mengelola fasilitas dan tata parkir di lingkungan kantor PGN', NULL);
INSERT INTO `detail_sla` VALUES (150, 2019, 7, 'Menyediakan tanaman / bunga dalam ruang kerja Vice President dan ruang rapat', NULL);
INSERT INTO `detail_sla` VALUES (151, 2019, 7, 'Menyediakan tanaman / bunga di lobby atau koridor. ', NULL);
INSERT INTO `detail_sla` VALUES (152, 2019, 7, 'Menyediakan majalah/surat kabar di lobby serta tempat display ', NULL);
INSERT INTO `detail_sla` VALUES (153, 2019, 8, 'Pengelolaan kawasan bangunan wisma dan rumah dinas', NULL);
INSERT INTO `detail_sla` VALUES (154, 2019, 8, 'Pengelolaan Bangunan Wisma', NULL);
INSERT INTO `detail_sla` VALUES (155, 2019, 8, 'Pengelolaan jasa layanan wisma', NULL);
INSERT INTO `detail_sla` VALUES (156, 2019, 9, 'Tindak lanjut atas keluhan / komplain yang masuk 100%', NULL);

SET FOREIGN_KEY_CHECKS = 1;
