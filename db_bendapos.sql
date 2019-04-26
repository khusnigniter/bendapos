/*
Navicat MySQL Data Transfer

Source Server         : MySQL-Server
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : db_bendapos

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2013-07-02 21:17:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `benda`
-- ----------------------------
DROP TABLE IF EXISTS `benda`;
CREATE TABLE `benda` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `nama` varchar(55) NOT NULL,
  `jenis` varchar(55) NOT NULL,
  `nilai` int(8) NOT NULL,
  `jml` int(8) NOT NULL,
  `total` int(13) NOT NULL,
  `tgl_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of benda
-- ----------------------------
INSERT INTO `benda` VALUES ('18', 'materai', '3000', '3000', '63', '252000', '2013-07-02 20:04:59');
INSERT INTO `benda` VALUES ('19', 'materai', '6000', '6000', '81', '489000', '2013-07-02 20:04:59');
INSERT INTO `benda` VALUES ('20', 'perangko', '10000', '10000', '73', '871000', '2013-07-02 20:04:59');
INSERT INTO `benda` VALUES ('21', 'perangko', '1500', '1500', '82', '110000', '2013-06-26 19:11:58');
INSERT INTO `benda` VALUES ('22', 'perangko', '2500', '2500', '24', '59500', '2013-03-08 22:39:46');
INSERT INTO `benda` VALUES ('23', 'perangko', '3000', '3000', '67', '213000', '2013-07-02 20:04:59');
INSERT INTO `benda` VALUES ('24', 'perangko', '5000', '5000', '66', '309500', '2013-03-08 22:39:46');

-- ----------------------------
-- Table structure for `jenis_barang`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(55) NOT NULL,
  `type` enum('materai','perangko','benda') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------
INSERT INTO `jenis_barang` VALUES ('1', '3000', 'materai');
INSERT INTO `jenis_barang` VALUES ('2', '6000', 'materai');
INSERT INTO `jenis_barang` VALUES ('3', '1500', 'perangko');
INSERT INTO `jenis_barang` VALUES ('4', '2500', 'perangko');
INSERT INTO `jenis_barang` VALUES ('5', '3000', 'perangko');
INSERT INTO `jenis_barang` VALUES ('6', '5000', 'perangko');
INSERT INTO `jenis_barang` VALUES ('7', '10000', 'perangko');

-- ----------------------------
-- Table structure for `printer_setting`
-- ----------------------------
DROP TABLE IF EXISTS `printer_setting`;
CREATE TABLE `printer_setting` (
  `id_printer` int(10) NOT NULL AUTO_INCREMENT,
  `host_address` varchar(80) DEFAULT NULL,
  `name_shared` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_printer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of printer_setting
-- ----------------------------
INSERT INTO `printer_setting` VALUES ('1', 'localhost', 'EPSON2');

-- ----------------------------
-- Table structure for `root`
-- ----------------------------
DROP TABLE IF EXISTS `root`;
CREATE TABLE `root` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama_root` varchar(85) NOT NULL,
  `email` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `hak_akses` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of root
-- ----------------------------
INSERT INTO `root` VALUES ('10', 'Loket Satu', 'loket_1@freemail.com', 'loket1', 'c479efa5391ffd6532615543039ce411', '2');
INSERT INTO `root` VALUES ('11', 'Administrator', 'info@khusni.netau.net', 'admin', '787e33d1fa592016673b276f39553b88', '3');
INSERT INTO `root` VALUES ('12', 'Manager Utama', 'mn@freemail.com', 'manager', '202cb962ac59075b964b07152d234b70', '1');
INSERT INTO `root` VALUES ('13', 'rudy', 'rudy.sykes@gmail.com', 'rudy', 'e10adc3949ba59abbe56e057f20f883e', '3');

-- ----------------------------
-- Table structure for `stok`
-- ----------------------------
DROP TABLE IF EXISTS `stok`;
CREATE TABLE `stok` (
  `id_stok` int(13) NOT NULL AUTO_INCREMENT,
  `aksi` varchar(100) NOT NULL,
  `jumlah_masuk` int(13) DEFAULT NULL,
  `jumlah_keluar` int(13) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  PRIMARY KEY (`id_stok`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stok
-- ----------------------------
INSERT INTO `stok` VALUES ('118', '', '0', '6', '2013-02-17', '23:25:44');
INSERT INTO `stok` VALUES ('119', '', '0', '5', '2013-02-18', '10:30:46');
INSERT INTO `stok` VALUES ('120', '', '0', '1', '2013-02-18', '10:30:46');
INSERT INTO `stok` VALUES ('121', '', '0', '3', '2013-02-18', '12:34:42');
INSERT INTO `stok` VALUES ('122', '', '0', '6', '2013-02-18', '12:34:42');
INSERT INTO `stok` VALUES ('123', '', '0', '6', '2013-02-18', '12:43:15');
INSERT INTO `stok` VALUES ('124', '', '0', '7', '2013-02-19', '10:09:53');
INSERT INTO `stok` VALUES ('125', '', '0', '9', '2013-02-19', '10:11:09');
INSERT INTO `stok` VALUES ('126', '', '0', '1', '2013-02-19', '10:11:09');
INSERT INTO `stok` VALUES ('127', '', '0', '9', '2013-02-19', '10:13:14');
INSERT INTO `stok` VALUES ('128', '', '0', '9', '2013-02-20', '10:37:19');
INSERT INTO `stok` VALUES ('129', '', '0', '1', '2013-02-20', '10:38:09');
INSERT INTO `stok` VALUES ('130', '', '0', '5', '2013-02-20', '10:38:09');
INSERT INTO `stok` VALUES ('131', '', '0', '8', '2013-02-20', '10:40:43');
INSERT INTO `stok` VALUES ('132', '', '0', '1', '2013-02-20', '10:55:06');
INSERT INTO `stok` VALUES ('133', '', '0', '8', '2013-02-20', '10:55:06');
INSERT INTO `stok` VALUES ('134', '', '0', '1', '2013-02-20', '14:13:08');
INSERT INTO `stok` VALUES ('135', '', '0', '1', '2013-02-20', '14:13:08');
INSERT INTO `stok` VALUES ('136', '', '700', '0', '2013-02-21', '07:00:33');
INSERT INTO `stok` VALUES ('137', '', '200', '0', '2013-02-21', '07:16:33');
INSERT INTO `stok` VALUES ('138', '', '100', '0', '2013-02-21', '07:20:19');
INSERT INTO `stok` VALUES ('139', '', '100', '0', '2013-02-21', '07:21:44');
INSERT INTO `stok` VALUES ('140', '', '100', '0', '2013-02-21', '07:22:04');
INSERT INTO `stok` VALUES ('141', '', '100', '0', '2013-02-21', '07:22:15');
INSERT INTO `stok` VALUES ('142', '', '0', '100', '2013-02-21', '13:25:14');
INSERT INTO `stok` VALUES ('143', '', '100', '0', '2013-02-21', '07:27:40');
INSERT INTO `stok` VALUES ('144', '', '0', '1', '2013-02-21', '13:37:28');
INSERT INTO `stok` VALUES ('145', '', '0', '1', '2013-02-21', '13:37:28');
INSERT INTO `stok` VALUES ('146', '', '0', '1', '2013-02-21', '13:52:52');
INSERT INTO `stok` VALUES ('147', '', '0', '1', '2013-02-21', '13:52:52');
INSERT INTO `stok` VALUES ('148', 'tambah-transaksi', '0', '1', '2013-02-21', '14:55:18');
INSERT INTO `stok` VALUES ('149', 'tambah-transaksi', '0', '1', '2013-02-21', '14:55:18');
INSERT INTO `stok` VALUES ('150', 'tambah-transaksi', '0', '1', '2013-02-21', '14:55:18');
INSERT INTO `stok` VALUES ('151', 'tambah-transaksi', '0', '1', '2013-02-21', '15:09:53');
INSERT INTO `stok` VALUES ('152', 'tambah-transaksi', '0', '1', '2013-02-21', '15:09:53');
INSERT INTO `stok` VALUES ('153', 'tambah-transaksi', '0', '1', '2013-02-21', '15:10:51');
INSERT INTO `stok` VALUES ('154', 'tambah-transaksi', '0', '1', '2013-02-21', '15:10:51');
INSERT INTO `stok` VALUES ('155', 'tambah-transaksi', '0', '1', '2013-02-21', '15:11:23');
INSERT INTO `stok` VALUES ('156', 'tambah-transaksi', '0', '1', '2013-02-21', '15:11:23');
INSERT INTO `stok` VALUES ('157', 'tambah-transaksi', '0', '1', '2013-02-21', '15:14:02');
INSERT INTO `stok` VALUES ('158', 'tambah-transaksi', '0', '1', '2013-02-21', '15:14:02');
INSERT INTO `stok` VALUES ('159', 'tambah-transaksi', '0', '1', '2013-02-21', '15:15:16');
INSERT INTO `stok` VALUES ('160', 'tambah-transaksi', '0', '1', '2013-02-21', '15:15:16');
INSERT INTO `stok` VALUES ('161', 'tambah-transaksi', '0', '1', '2013-02-21', '15:16:44');
INSERT INTO `stok` VALUES ('162', 'tambah-transaksi', '0', '1', '2013-02-21', '15:16:44');
INSERT INTO `stok` VALUES ('163', 'tambah-transaksi', '0', '2', '2013-02-21', '15:17:25');
INSERT INTO `stok` VALUES ('164', 'tambah-transaksi', '0', '1', '2013-02-21', '15:17:25');
INSERT INTO `stok` VALUES ('165', 'tambah-transaksi', '0', '1', '2013-02-21', '17:42:25');
INSERT INTO `stok` VALUES ('166', 'tambah-transaksi', '0', '1', '2013-02-21', '17:42:25');
INSERT INTO `stok` VALUES ('167', 'tambah-transaksi', '0', '1', '2013-02-21', '17:43:57');
INSERT INTO `stok` VALUES ('168', 'tambah-transaksi', '0', '1', '2013-02-21', '17:43:57');
INSERT INTO `stok` VALUES ('169', 'tambah-transaksi', '0', '1', '2013-02-21', '17:53:07');
INSERT INTO `stok` VALUES ('170', 'tambah-transaksi', '0', '1', '2013-02-21', '17:53:07');
INSERT INTO `stok` VALUES ('171', 'tambah-transaksi', '0', '1', '2013-02-21', '17:57:11');
INSERT INTO `stok` VALUES ('172', 'tambah-transaksi', '0', '1', '2013-02-21', '17:57:11');
INSERT INTO `stok` VALUES ('173', 'tambah-transaksi', '0', '1', '2013-02-21', '17:57:11');
INSERT INTO `stok` VALUES ('174', 'tambah-transaksi', '0', '1', '2013-02-21', '18:00:49');
INSERT INTO `stok` VALUES ('175', 'tambah-transaksi', '0', '1', '2013-02-21', '18:00:49');
INSERT INTO `stok` VALUES ('176', 'tambah-transaksi', '0', '1', '2013-02-21', '18:00:49');
INSERT INTO `stok` VALUES ('177', 'edittransaksi', '0', '5', '2013-02-21', '12:04:48');
INSERT INTO `stok` VALUES ('178', 'edittransaksi', '0', '5', '2013-02-21', '12:06:08');
INSERT INTO `stok` VALUES ('179', 'tambah-transaksi', '0', '1', '2013-02-21', '20:16:23');
INSERT INTO `stok` VALUES ('180', 'tambah-transaksi', '0', '1', '2013-02-21', '20:16:23');
INSERT INTO `stok` VALUES ('181', 'tambah-transaksi', '0', '1', '2013-02-21', '20:19:19');
INSERT INTO `stok` VALUES ('182', 'tambah-transaksi', '0', '1', '2013-02-21', '20:19:19');
INSERT INTO `stok` VALUES ('183', 'tambah-transaksi', '0', '1', '2013-02-21', '20:25:32');
INSERT INTO `stok` VALUES ('184', 'tambah-transaksi', '0', '1', '2013-02-21', '20:25:32');
INSERT INTO `stok` VALUES ('185', 'tambah-transaksi', '0', '1', '2013-02-21', '20:26:16');
INSERT INTO `stok` VALUES ('186', 'tambah-transaksi', '0', '1', '2013-02-21', '20:26:16');
INSERT INTO `stok` VALUES ('187', 'tambah-transaksi', '0', '1', '2013-02-21', '20:26:42');
INSERT INTO `stok` VALUES ('188', 'tambah-transaksi', '0', '3', '2013-02-21', '20:26:42');
INSERT INTO `stok` VALUES ('189', 'tambah-transaksi', '0', '1', '2013-02-21', '20:57:02');
INSERT INTO `stok` VALUES ('190', 'tambah-transaksi', '0', '5', '2013-02-21', '20:57:02');
INSERT INTO `stok` VALUES ('191', 'tambah-transaksi', '0', '1', '2013-02-21', '21:00:15');
INSERT INTO `stok` VALUES ('192', 'tambah-transaksi', '0', '1', '2013-02-21', '21:00:15');
INSERT INTO `stok` VALUES ('193', 'tambah-transaksi', '0', '1', '2013-02-21', '21:01:34');
INSERT INTO `stok` VALUES ('194', 'tambah-transaksi', '0', '1', '2013-02-21', '21:01:34');
INSERT INTO `stok` VALUES ('195', 'tambah-transaksi', '0', '1', '2013-02-21', '21:04:57');
INSERT INTO `stok` VALUES ('196', 'tambah-transaksi', '0', '1', '2013-02-21', '21:04:57');
INSERT INTO `stok` VALUES ('197', 'tambah-transaksi', '0', '4', '2013-02-21', '21:56:23');
INSERT INTO `stok` VALUES ('198', 'tambah-transaksi', '0', '2', '2013-02-21', '21:56:23');
INSERT INTO `stok` VALUES ('199', 'tambah-transaksi', '0', '3', '2013-02-21', '21:56:23');
INSERT INTO `stok` VALUES ('200', 'tambah-transaksi', '0', '2', '2013-02-21', '22:47:25');
INSERT INTO `stok` VALUES ('201', 'tambah-transaksi', '0', '1', '2013-02-21', '22:47:25');
INSERT INTO `stok` VALUES ('202', 'tambah-transaksi', '0', '2', '2013-02-21', '22:47:25');
INSERT INTO `stok` VALUES ('203', 'tambah-transaksi', '0', '2', '2013-02-21', '22:51:20');
INSERT INTO `stok` VALUES ('204', 'tambah-transaksi', '0', '1', '2013-02-21', '22:51:20');
INSERT INTO `stok` VALUES ('205', 'tambah-transaksi', '0', '1', '2013-02-21', '22:52:12');
INSERT INTO `stok` VALUES ('206', 'tambah-transaksi', '0', '1', '2013-02-21', '22:52:12');
INSERT INTO `stok` VALUES ('207', 'tambah-transaksi', '0', '1', '2013-02-21', '22:53:13');
INSERT INTO `stok` VALUES ('208', 'tambah-transaksi', '0', '1', '2013-02-21', '22:54:02');
INSERT INTO `stok` VALUES ('209', 'tambah-transaksi', '0', '1', '2013-02-21', '22:54:02');
INSERT INTO `stok` VALUES ('210', 'tambah-transaksi', '0', '1', '2013-02-21', '22:55:21');
INSERT INTO `stok` VALUES ('211', 'tambah-transaksi', '0', '1', '2013-02-21', '22:55:21');
INSERT INTO `stok` VALUES ('212', 'tambah-transaksi', '0', '1', '2013-02-25', '21:09:55');
INSERT INTO `stok` VALUES ('213', 'tambah-transaksi', '0', '1', '2013-02-25', '21:09:55');
INSERT INTO `stok` VALUES ('214', 'edit-materai', '100', '0', '2013-02-25', '22:11:38');
INSERT INTO `stok` VALUES ('215', 'edit-materai', '100', '0', '2013-02-25', '22:12:03');
INSERT INTO `stok` VALUES ('216', 'edit-perangko', '100', '0', '2013-02-25', '22:12:32');
INSERT INTO `stok` VALUES ('217', 'edit-perangko', '100', '0', '2013-02-25', '22:13:12');
INSERT INTO `stok` VALUES ('218', 'edit-perangko', '100', '0', '2013-02-25', '22:14:43');
INSERT INTO `stok` VALUES ('219', 'edit-perangko', '100', '0', '2013-02-25', '22:14:54');
INSERT INTO `stok` VALUES ('220', 'edit-perangko', '100', '0', '2013-02-25', '22:15:03');
INSERT INTO `stok` VALUES ('221', 'tambah-transaksi', '0', '1', '2013-03-01', '16:32:26');
INSERT INTO `stok` VALUES ('222', 'tambah-transaksi', '0', '1', '2013-03-01', '16:32:26');
INSERT INTO `stok` VALUES ('223', 'tambah-transaksi', '0', '1', '2013-03-01', '16:32:26');
INSERT INTO `stok` VALUES ('224', 'tambah-transaksi', '0', '1', '2013-03-01', '16:32:26');
INSERT INTO `stok` VALUES ('225', 'tambah-transaksi', '0', '1', '2013-03-01', '16:32:26');
INSERT INTO `stok` VALUES ('226', 'tambah-transaksi', '0', '1', '2013-03-01', '16:32:26');
INSERT INTO `stok` VALUES ('227', 'tambah-transaksi', '0', '1', '2013-03-01', '16:32:26');
INSERT INTO `stok` VALUES ('228', 'tambah-transaksi', '0', '1', '2013-03-01', '20:46:04');
INSERT INTO `stok` VALUES ('229', 'tambah-transaksi', '0', '33', '2013-03-08', '22:39:46');
INSERT INTO `stok` VALUES ('230', 'tambah-transaksi', '0', '75', '2013-03-08', '22:39:46');
INSERT INTO `stok` VALUES ('231', 'tambah-transaksi', '0', '1', '2013-03-23', '11:59:08');
INSERT INTO `stok` VALUES ('232', 'tambah-transaksi', '0', '3', '2013-03-23', '11:59:08');
INSERT INTO `stok` VALUES ('233', 'tambah-transaksi', '0', '1', '2013-03-23', '11:59:08');
INSERT INTO `stok` VALUES ('234', 'tambah-materai', '3', '0', '2013-04-12', '01:11:37');
INSERT INTO `stok` VALUES ('235', 'tambah-materai', '3', '0', '2013-04-13', '16:50:23');
INSERT INTO `stok` VALUES ('236', 'tambah-transaksi', '0', '5', '2013-05-09', '14:46:38');
INSERT INTO `stok` VALUES ('237', 'tambah-transaksi', '0', '1', '2013-06-04', '21:19:52');
INSERT INTO `stok` VALUES ('238', 'tambah-transaksi', '0', '1', '2013-06-04', '21:19:52');
INSERT INTO `stok` VALUES ('239', 'tambah-transaksi', '0', '1', '2013-06-04', '21:19:52');
INSERT INTO `stok` VALUES ('240', 'tambah-transaksi', '0', '14', '2013-06-04', '21:20:23');
INSERT INTO `stok` VALUES ('241', 'tambah-transaksi', '0', '1', '2013-06-07', '21:04:49');
INSERT INTO `stok` VALUES ('242', 'tambah-transaksi', '0', '1', '2013-06-07', '21:04:49');
INSERT INTO `stok` VALUES ('243', 'tambah-transaksi', '0', '1', '2013-06-07', '23:23:41');
INSERT INTO `stok` VALUES ('244', 'tambah-transaksi', '0', '5', '2013-06-07', '23:23:41');
INSERT INTO `stok` VALUES ('245', 'tambah-transaksi', '0', '3', '2013-06-07', '23:27:21');
INSERT INTO `stok` VALUES ('246', 'tambah-transaksi', '0', '1', '2013-06-07', '23:27:21');
INSERT INTO `stok` VALUES ('247', 'tambah-transaksi', '0', '2', '2013-06-08', '13:03:10');
INSERT INTO `stok` VALUES ('248', 'tambah-transaksi', '0', '1', '2013-06-08', '13:03:10');
INSERT INTO `stok` VALUES ('249', 'tambah-transaksi', '0', '7', '2013-06-08', '17:45:57');
INSERT INTO `stok` VALUES ('250', 'tambah-transaksi', '0', '6', '2013-06-08', '17:45:57');
INSERT INTO `stok` VALUES ('251', 'tambah-transaksi', '0', '1', '2013-06-13', '13:00:43');
INSERT INTO `stok` VALUES ('252', 'tambah-transaksi', '0', '1', '2013-06-13', '13:00:43');
INSERT INTO `stok` VALUES ('253', 'tambah-transaksi', '0', '23', '2013-06-13', '13:00:43');
INSERT INTO `stok` VALUES ('254', 'tambah-transaksi', '0', '1', '2013-06-13', '13:00:43');
INSERT INTO `stok` VALUES ('255', 'tambah-transaksi', '0', '7', '2013-06-17', '09:13:23');
INSERT INTO `stok` VALUES ('256', 'tambah-transaksi', '0', '2', '2013-06-17', '09:13:23');
INSERT INTO `stok` VALUES ('257', 'tambah-transaksi', '0', '13', '2013-06-17', '09:13:23');
INSERT INTO `stok` VALUES ('258', 'tambah-transaksi', '0', '1', '2013-06-26', '19:11:58');
INSERT INTO `stok` VALUES ('259', 'tambah-transaksi', '0', '1', '2013-06-26', '19:11:58');
INSERT INTO `stok` VALUES ('260', 'tambah-transaksi', '0', '7', '2013-07-01', '15:59:59');
INSERT INTO `stok` VALUES ('261', 'tambah-transaksi', '0', '1', '2013-07-01', '15:59:59');
INSERT INTO `stok` VALUES ('262', 'tambah-transaksi', '0', '3', '2013-07-01', '15:59:59');
INSERT INTO `stok` VALUES ('263', 'tambah-transaksi', '0', '6', '2013-07-02', '20:04:59');
INSERT INTO `stok` VALUES ('264', 'tambah-transaksi', '0', '3', '2013-07-02', '20:04:59');
INSERT INTO `stok` VALUES ('265', 'tambah-transaksi', '0', '2', '2013-07-02', '20:04:59');
INSERT INTO `stok` VALUES ('266', 'tambah-transaksi', '0', '1', '2013-07-02', '20:04:59');

-- ----------------------------
-- Table structure for `transaksi`
-- ----------------------------
DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi` (
  `id_trans` int(13) NOT NULL,
  `id_root` int(13) NOT NULL,
  `id_benda` int(8) NOT NULL,
  `jumlah` int(13) NOT NULL,
  `total_trans` int(13) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `record_id` int(13) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi
-- ----------------------------
INSERT INTO `transaksi` VALUES ('1396182', '11', '24', '1', '5000', '2013-03-01', '16:32:26', '1');
INSERT INTO `transaksi` VALUES ('1396182', '11', '23', '1', '3000', '2013-03-01', '16:32:26', '2');
INSERT INTO `transaksi` VALUES ('1396182', '11', '22', '1', '2500', '2013-03-01', '16:32:26', '3');
INSERT INTO `transaksi` VALUES ('1396182', '11', '21', '1', '1500', '2013-03-01', '16:32:26', '4');
INSERT INTO `transaksi` VALUES ('1396182', '11', '20', '1', '10000', '2013-03-01', '16:32:26', '5');
INSERT INTO `transaksi` VALUES ('1396182', '11', '19', '1', '6000', '2013-03-01', '16:32:26', '6');
INSERT INTO `transaksi` VALUES ('1396182', '11', '18', '1', '3000', '2013-03-01', '16:32:26', '7');
INSERT INTO `transaksi` VALUES ('1320716', '11', '23', '1', '3000', '2013-03-01', '20:46:04', '8');
INSERT INTO `transaksi` VALUES ('1372938', '11', '24', '33', '165000', '2013-03-08', '22:39:46', '9');
INSERT INTO `transaksi` VALUES ('1372938', '11', '22', '75', '187500', '2013-03-08', '22:39:46', '10');
INSERT INTO `transaksi` VALUES ('1304936', '11', '21', '1', '1500', '2013-03-23', '11:59:08', '11');
INSERT INTO `transaksi` VALUES ('1304936', '11', '19', '3', '18000', '2013-03-23', '11:59:08', '12');
INSERT INTO `transaksi` VALUES ('1304936', '11', '18', '1', '3000', '2013-03-23', '11:59:08', '13');
INSERT INTO `transaksi` VALUES ('1326817', '11', '20', '5', '50000', '2013-05-09', '14:46:38', '14');
INSERT INTO `transaksi` VALUES ('1370839', '10', '23', '1', '3000', '2013-06-04', '21:19:52', '15');
INSERT INTO `transaksi` VALUES ('1370839', '10', '21', '1', '1500', '2013-06-04', '21:19:52', '16');
INSERT INTO `transaksi` VALUES ('1370839', '10', '18', '1', '3000', '2013-06-04', '21:19:52', '17');
INSERT INTO `transaksi` VALUES ('1312860', '10', '21', '14', '21000', '2013-06-04', '21:20:23', '18');
INSERT INTO `transaksi` VALUES ('1353741', '11', '23', '1', '3000', '2013-06-07', '21:04:49', '19');
INSERT INTO `transaksi` VALUES ('1353741', '11', '18', '1', '3000', '2013-06-07', '21:04:49', '20');
INSERT INTO `transaksi` VALUES ('1350438', '10', '19', '1', '6000', '2013-06-07', '23:23:41', '21');
INSERT INTO `transaksi` VALUES ('1350438', '10', '18', '5', '15000', '2013-06-07', '23:23:41', '22');
INSERT INTO `transaksi` VALUES ('1356390', '10', '23', '3', '9000', '2013-06-07', '23:27:21', '23');
INSERT INTO `transaksi` VALUES ('1356390', '10', '19', '1', '6000', '2013-06-07', '23:27:21', '24');
INSERT INTO `transaksi` VALUES ('1364092', '11', '20', '2', '20000', '2013-06-08', '13:03:10', '25');
INSERT INTO `transaksi` VALUES ('1364092', '11', '19', '1', '6000', '2013-06-08', '13:03:10', '26');
INSERT INTO `transaksi` VALUES ('1304569', '11', '19', '7', '42000', '2013-06-08', '17:45:57', '27');
INSERT INTO `transaksi` VALUES ('1304569', '11', '23', '6', '18000', '2013-06-08', '17:45:57', '28');
INSERT INTO `transaksi` VALUES ('1313560', '11', '20', '1', '10000', '2013-06-13', '13:00:43', '29');
INSERT INTO `transaksi` VALUES ('1313560', '11', '23', '1', '3000', '2013-06-13', '13:00:43', '30');
INSERT INTO `transaksi` VALUES ('1313560', '11', '18', '23', '69000', '2013-06-13', '13:00:43', '31');
INSERT INTO `transaksi` VALUES ('1313560', '11', '19', '1', '6000', '2013-06-13', '13:00:43', '32');
INSERT INTO `transaksi` VALUES ('1331026', '11', '20', '7', '70000', '2013-06-17', '09:13:23', '33');
INSERT INTO `transaksi` VALUES ('1331026', '11', '19', '2', '12000', '2013-06-17', '09:13:23', '34');
INSERT INTO `transaksi` VALUES ('1331026', '11', '23', '13', '39000', '2013-06-17', '09:13:23', '35');
INSERT INTO `transaksi` VALUES ('1321683', '11', '21', '1', '1500', '2013-06-26', '19:11:58', '36');
INSERT INTO `transaksi` VALUES ('1321683', '11', '20', '1', '10000', '2013-06-26', '19:11:58', '37');
INSERT INTO `transaksi` VALUES ('1343620', '11', '20', '7', '70000', '2013-07-01', '15:59:59', '38');
INSERT INTO `transaksi` VALUES ('1343620', '11', '19', '1', '6000', '2013-07-01', '15:59:59', '39');
INSERT INTO `transaksi` VALUES ('1343620', '11', '18', '3', '9000', '2013-07-01', '15:59:59', '40');
INSERT INTO `transaksi` VALUES ('1319832', '11', '23', '6', '18000', '2013-07-02', '20:04:59', '41');
INSERT INTO `transaksi` VALUES ('1319832', '11', '20', '3', '30000', '2013-07-02', '20:04:59', '42');
INSERT INTO `transaksi` VALUES ('1319832', '11', '18', '2', '6000', '2013-07-02', '20:04:59', '43');
INSERT INTO `transaksi` VALUES ('1319832', '11', '19', '1', '6000', '2013-07-02', '20:04:59', '44');

-- ----------------------------
-- Table structure for `transaksi_temp`
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_temp`;
CREATE TABLE `transaksi_temp` (
  `id_temp` int(8) NOT NULL AUTO_INCREMENT,
  `id_benda` int(13) NOT NULL,
  `nilai_temp` int(13) NOT NULL,
  `id_session` varchar(100) NOT NULL,
  `jumlah` int(8) NOT NULL,
  `tgl_temp` date DEFAULT NULL,
  `jam_temp` time DEFAULT NULL,
  PRIMARY KEY (`id_temp`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_temp
-- ----------------------------
