/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : vol_travel

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 04/06/2019 20:02:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attractions
-- ----------------------------
DROP TABLE IF EXISTS `attractions`;
CREATE TABLE `attractions`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attractions_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attractions_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attractions_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attractions_status` int(2) DEFAULT 0,
  `create_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attractions
-- ----------------------------
INSERT INTO `attractions` VALUES ('1', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('10', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('11', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('12', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('13', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('14', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('15', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('16', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('17', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('18', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('19', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('2', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('20', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('21', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('22', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('23', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('24', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('25', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('26', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('27', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('28', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('29', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('3', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('30', NULL, NULL, NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('4', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('5', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('6', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('7', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('8', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('9', NULL, 'text1', NULL, NULL, 0, '2019-06-04 20:00:09');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hotel_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotel_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotel_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotel_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotel_status` int(2) DEFAULT 0,
  `create_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('1', '', '吉安国际酒店111', '吉安县城庐陵大道庐陵广场111', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场，可为宾客提供各式全新五星水准的酒店住宿、饮食、宴会、会议、康体和娱乐一体化的服务。另500多个车位的大型停车场，为宾客的出行提供了更多的便利。', 0, '2019-06-05 19:36:37');
INSERT INTO `hotel` VALUES ('10', '', 'test10', '21312321312312', 'test10123123123', 0, '2019-06-04 19:37:01');
INSERT INTO `hotel` VALUES ('11', NULL, 'test11', NULL, 'test11', 0, '2019-06-04 19:37:04');
INSERT INTO `hotel` VALUES ('12', NULL, 'test12', NULL, 'test12', 0, '2019-06-04 19:37:06');
INSERT INTO `hotel` VALUES ('12da045fb5cc4f16a28f0c46c2ba3d7f', '', '213123123', '12312312321', '3213213123123', 1, '2019-06-04 11:50:32');
INSERT INTO `hotel` VALUES ('13', NULL, 'test13', NULL, 'test13', 0, '2019-06-04 19:37:11');
INSERT INTO `hotel` VALUES ('14', NULL, 'test14', NULL, 'test14', 0, '2019-06-04 19:37:15');
INSERT INTO `hotel` VALUES ('15', NULL, 'test15', NULL, 'test15', 0, '2019-06-04 19:37:17');
INSERT INTO `hotel` VALUES ('16', NULL, 'test16', NULL, 'test16', 0, '2019-06-04 19:37:19');
INSERT INTO `hotel` VALUES ('17', NULL, 'test17', NULL, 'test17', 0, '2019-06-04 19:37:21');
INSERT INTO `hotel` VALUES ('18', NULL, 'test18', NULL, 'test18', 0, '2019-06-04 19:37:23');
INSERT INTO `hotel` VALUES ('19', NULL, 'test19', NULL, 'test19', 0, '2019-06-04 19:37:24');
INSERT INTO `hotel` VALUES ('2', NULL, 'test2', NULL, 'test2', 0, '2019-06-04 19:36:57');
INSERT INTO `hotel` VALUES ('20', NULL, 'test20', NULL, 'test20', 0, '2019-06-04 19:37:26');
INSERT INTO `hotel` VALUES ('21', NULL, 'test21', NULL, 'test21', 0, '2019-06-04 19:37:28');
INSERT INTO `hotel` VALUES ('22', NULL, 'test22', NULL, 'test22', 0, '2019-06-04 19:37:33');
INSERT INTO `hotel` VALUES ('23', NULL, 'tes23', NULL, 'tes23', 0, '2019-06-04 19:37:35');
INSERT INTO `hotel` VALUES ('24', NULL, 'test24', NULL, 'test24', 0, '2019-06-04 19:37:37');
INSERT INTO `hotel` VALUES ('25', NULL, 'test25', NULL, 'test25', 0, '2019-06-04 19:37:39');
INSERT INTO `hotel` VALUES ('26', NULL, 'test26', NULL, 'test26', 0, '2019-06-04 19:37:40');
INSERT INTO `hotel` VALUES ('27', NULL, 'test27', NULL, 'test27', 0, '2019-06-04 19:37:42');
INSERT INTO `hotel` VALUES ('28', NULL, 'test28', NULL, 'test28', 0, '2019-06-04 19:37:43');
INSERT INTO `hotel` VALUES ('29', NULL, 'test29', NULL, 'test29', 0, '2019-06-04 19:37:49');
INSERT INTO `hotel` VALUES ('2b330bf809484945ad9ffa95a41f95fd', '', '21312312', '3123123123', '312312312312', 0, '2019-06-04 19:37:47');
INSERT INTO `hotel` VALUES ('3', NULL, 'test3', NULL, 'test3', 0, '2019-06-04 19:32:56');
INSERT INTO `hotel` VALUES ('30', NULL, 'test30', NULL, 'test30', 0, '2019-06-04 19:32:54');
INSERT INTO `hotel` VALUES ('4', NULL, 'test4', NULL, 'test4', 0, '2019-06-04 19:32:51');
INSERT INTO `hotel` VALUES ('5', NULL, 'test5', NULL, 'test5', 0, '2019-06-04 19:32:48');
INSERT INTO `hotel` VALUES ('6', NULL, 'test6', NULL, 'test6', 0, '2019-06-04 19:32:46');
INSERT INTO `hotel` VALUES ('7', NULL, 'test7', NULL, 'test7', 0, '2019-06-04 19:32:43');
INSERT INTO `hotel` VALUES ('8', NULL, 'test8', NULL, 'test8', 0, '2019-06-04 19:32:41');
INSERT INTO `hotel` VALUES ('84756b62364c4ac79bd42df482ffcdbe', '', '12312', '3123123', '12312312', 0, '2019-06-04 19:32:38');
INSERT INTO `hotel` VALUES ('8477c26de2bd493394849358ef0b1107', '', '123123', '3123123123', '1231232131231', 0, '2019-06-04 19:32:35');
INSERT INTO `hotel` VALUES ('9', NULL, 'test9', NULL, 'test9', 0, '2019-06-04 19:32:31');
INSERT INTO `hotel` VALUES ('a681c8c228724482a5635b5706665f4d', '', '111111111111', '11111111111111', '111111111111111111', 1, '2019-06-04 11:51:32');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123123123', 'root', '1234', 'admin');

-- ----------------------------
-- Table structure for user_attractions
-- ----------------------------
DROP TABLE IF EXISTS `user_attractions`;
CREATE TABLE `user_attractions`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attractions_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `attractions_id`(`attractions_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `user_attractions_ibfk_1` FOREIGN KEY (`attractions_id`) REFERENCES `attractions` (`id`) ON DELETE NO ACTION ON UPDATE RESTRICT,
  CONSTRAINT `user_attractions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_hotel
-- ----------------------------
DROP TABLE IF EXISTS `user_hotel`;
CREATE TABLE `user_hotel`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotel_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `hotel_id`(`hotel_id`) USING BTREE,
  CONSTRAINT `user_hotel_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE RESTRICT,
  CONSTRAINT `user_hotel_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE NO ACTION ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_hotel
-- ----------------------------
INSERT INTO `user_hotel` VALUES ('1', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('10', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('11', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('12', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('13', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('14', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('15', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('16', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('17', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('18', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('19', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('2', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('20', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('21', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('22', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('23', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('24', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('25', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('26', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('27', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('28', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('29', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('3', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('30', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('4', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('5', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('6', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('7', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('8', NULL, NULL, NULL);
INSERT INTO `user_hotel` VALUES ('9', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
