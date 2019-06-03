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

 Date: 03/06/2019 22:22:53
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
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attractions
-- ----------------------------
INSERT INTO `attractions` VALUES ('1', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('10', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('11', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('12', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('13', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('14', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('15', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('16', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('17', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('18', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('19', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('2', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('20', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('21', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('22', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('23', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('24', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('25', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('26', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('27', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('28', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('29', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('3', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('30', NULL, NULL, NULL, 0);
INSERT INTO `attractions` VALUES ('4', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('5', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('6', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('7', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('8', NULL, 'text1', NULL, 0);
INSERT INTO `attractions` VALUES ('9', NULL, 'text1', NULL, 0);

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('1', NULL, 'test1', 'test1', 0);
INSERT INTO `hotel` VALUES ('10', NULL, 'test10', 'test10', 0);
INSERT INTO `hotel` VALUES ('11', NULL, 'test11', 'test11', 0);
INSERT INTO `hotel` VALUES ('12', NULL, 'test12', 'test12', 0);
INSERT INTO `hotel` VALUES ('13', NULL, 'test13', 'test13', 0);
INSERT INTO `hotel` VALUES ('14', NULL, 'test14', 'test14', 0);
INSERT INTO `hotel` VALUES ('15', NULL, 'test15', 'test15', 0);
INSERT INTO `hotel` VALUES ('16', NULL, 'test16', 'test16', 0);
INSERT INTO `hotel` VALUES ('17', NULL, 'test17', 'test17', 0);
INSERT INTO `hotel` VALUES ('18', NULL, 'test18', 'test18', 0);
INSERT INTO `hotel` VALUES ('19', NULL, 'test19', 'test19', 0);
INSERT INTO `hotel` VALUES ('2', NULL, 'test2', 'test2', 0);
INSERT INTO `hotel` VALUES ('20', NULL, 'test20', 'test20', 0);
INSERT INTO `hotel` VALUES ('21', NULL, 'test21', 'test21', 0);
INSERT INTO `hotel` VALUES ('22', NULL, 'test22', 'test22', 0);
INSERT INTO `hotel` VALUES ('23', NULL, 'tes23', 'tes23', 0);
INSERT INTO `hotel` VALUES ('24', NULL, 'test24', 'test24', 0);
INSERT INTO `hotel` VALUES ('25', NULL, 'test25', 'test25', 0);
INSERT INTO `hotel` VALUES ('26', NULL, 'test26', 'test26', 0);
INSERT INTO `hotel` VALUES ('27', NULL, 'test27', 'test27', 0);
INSERT INTO `hotel` VALUES ('28', NULL, 'test28', 'test28', 0);
INSERT INTO `hotel` VALUES ('29', NULL, 'test29', 'test29', 0);
INSERT INTO `hotel` VALUES ('3', NULL, 'test3', 'test3', 0);
INSERT INTO `hotel` VALUES ('30', NULL, 'test30', 'test30', 0);
INSERT INTO `hotel` VALUES ('4', NULL, 'test4', 'test4', 0);
INSERT INTO `hotel` VALUES ('5', NULL, 'test5', 'test5', 0);
INSERT INTO `hotel` VALUES ('6', NULL, 'test6', 'test6', 0);
INSERT INTO `hotel` VALUES ('7', NULL, 'test7', 'test7', 0);
INSERT INTO `hotel` VALUES ('8', NULL, 'test8', 'test8', 0);
INSERT INTO `hotel` VALUES ('9', NULL, 'test9', 'test9', 0);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1236 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
