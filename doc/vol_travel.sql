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

 Date: 01/06/2019 10:52:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '非空唯一',
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('root', '1111', '123456', '123');
INSERT INTO `user` VALUES ('1111', '397947c09f0f4acd8fe4a79bca925564', '11111', '132');
INSERT INTO `user` VALUES ('3333333333333', '7b3d7605056043d4857fffd0562425f2', '3333333333333333333', '12312');
INSERT INTO `user` VALUES ('11111111111', '810b908d8cf1475fa69b420a5dda36f3', '211111111111111', '123');
INSERT INTO `user` VALUES ('chenzhen', '82429178ee714b0da8de83c7473a5c68', '123456', '123');

SET FOREIGN_KEY_CHECKS = 1;
