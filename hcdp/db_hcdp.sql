/*
 Navicat Premium Data Transfer

 Source Server         : biyesheji
 Source Server Type    : MySQL
 Source Server Version : 100132
 Source Host           : localhost:3306
 Source Schema         : db_hcdp

 Target Server Type    : MySQL
 Target Server Version : 100132
 File Encoding         : 65001

 Date: 17/08/2019 12:56:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cusinfo
-- ----------------------------
DROP TABLE IF EXISTS `cusinfo`;
CREATE TABLE `cusinfo`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `cidcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `intime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册时间',
  `cpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '旅客信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cusinfo
-- ----------------------------
INSERT INTO `cusinfo` VALUES (7, '李四', '123456', '2019-08-06 09:08:53', '123456');
INSERT INTO `cusinfo` VALUES (8, '张三丰', '120104199609151111', '2019-08-17 11:49:32', '123456');

-- ----------------------------
-- Table structure for dpiao
-- ----------------------------
DROP TABLE IF EXISTS `dpiao`;
CREATE TABLE `dpiao`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cidcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `pid` int(11) NULL DEFAULT NULL COMMENT '票id',
  `lyflag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订票状态',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订票信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dpiao
-- ----------------------------
INSERT INTO `dpiao` VALUES (1, 'null', 65, '待付款');
INSERT INTO `dpiao` VALUES (2, '120104199609151111', 66, '已领票');

-- ----------------------------
-- Table structure for piao
-- ----------------------------
DROP TABLE IF EXISTS `piao`;
CREATE TABLE `piao`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车id',
  `szdid` int(11) NULL DEFAULT NULL COMMENT '始发站点id',
  `ezdid` int(11) NULL DEFAULT NULL COMMENT '目的站点id',
  `stime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发车时间',
  `pval` float NULL DEFAULT NULL COMMENT '票价',
  `cxzh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车厢座号',
  `ptype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车票类型',
  `yxsj` datetime(0) NULL DEFAULT NULL COMMENT '有效日期',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车票信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of piao
-- ----------------------------
INSERT INTO `piao` VALUES (1, '1', 1, 2, '07：30：00', 50, '一车厢20号', '硬座', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (2, '1', 1, 3, '8:20:00', 50, '1车厢22号', '硬座', '2016-04-05 00:00:00');
INSERT INTO `piao` VALUES (3, '1', 1, 3, '8：00', 50, '二车厢33号', '硬座', '2016-04-05 00:00:00');
INSERT INTO `piao` VALUES (4, '1', 1, 3, '8：00', 50, '二车厢32号', '硬座', '2016-04-05 00:00:00');
INSERT INTO `piao` VALUES (5, '1', 1, 3, '8：00', 50, '二车厢31号', '硬座', '2016-04-05 00:00:00');
INSERT INTO `piao` VALUES (6, '1', 1, 3, '8：00', 50, '二车厢01号', '硬座', '2016-04-05 00:00:00');
INSERT INTO `piao` VALUES (7, '1', 1, 3, '8：00', 50, '二车厢02号', '硬座', '2016-04-05 00:00:00');
INSERT INTO `piao` VALUES (8, '1', 1, 3, '8：00', 50, '二车厢03号', '硬座', '2016-04-05 00:00:00');
INSERT INTO `piao` VALUES (9, '3', 1, 4, '7:00', 10, '一车厢12座号', '软卧', '2016-04-06 00:00:00');
INSERT INTO `piao` VALUES (10, '1', 1, 3, '09:31:00', 120, '12车厢12座号', '软卧', '2016-04-09 00:00:00');
INSERT INTO `piao` VALUES (11, '1', 1, 3, '09:31:00', 120, '12车厢12座号', '软卧', '2016-04-09 00:00:00');
INSERT INTO `piao` VALUES (12, '1', 1, 3, '09:31:00', 120, '12车厢12座号', '软卧', '2016-04-09 00:00:00');
INSERT INTO `piao` VALUES (13, '3', 1, 4, '10:30', 100, '12车厢12座号', '硬座', '2016-04-09 00:00:00');
INSERT INTO `piao` VALUES (14, '2', 1, 3, '12:12', 100, '12车厢12座号', '软卧', '2016-04-16 00:00:00');
INSERT INTO `piao` VALUES (15, '2', 1, 3, '12:30', 100, '1车13座', '硬卧', '2016-04-17 00:00:00');
INSERT INTO `piao` VALUES (16, '2', 1, 3, '12:30', 100, '1车12座', '硬卧', '2016-04-17 00:00:00');
INSERT INTO `piao` VALUES (17, '3', 6, 3, '14:00', 100, '一车厢15座', '硬卧', '2016-04-17 00:00:00');
INSERT INTO `piao` VALUES (18, '1', 1, 2, '10:12', 190, '一车厢12座', '软卧', '2016-04-17 00:00:00');
INSERT INTO `piao` VALUES (19, '1', 1, 3, '10:30', 150, '1车01号', '硬座', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (20, '1', 1, 3, '10:30', 150, '1车02号', '硬座', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (21, '1', 1, 3, '10:30', 150, '1车03号', '硬座', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (22, '1', 1, 3, '10:30', 150, '1车04号', '硬座', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (23, '1', 1, 3, '10:30', 150, '1车05号', '硬座', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (24, '1', 1, 3, '10:30', 350, '2车01号', '硬卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (25, '1', 1, 3, '10:30', 350, '2车02号', '硬卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (26, '1', 1, 3, '10:30', 350, '2车03号', '硬卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (27, '1', 1, 3, '10:30', 650, '3车01号', '软卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (28, '1', 1, 3, '10:30', 650, '3车02号', '软卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (29, '1', 1, 3, '10:30', 650, '3车03号', '软卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (30, '2', 1, 3, '12:30', 650, '8车01号', '硬座', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (31, '2', 1, 3, '12:30', 650, '8车02号', '硬座', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (32, '2', 1, 3, '12:30', 850, '9车02号', '硬卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (33, '5', 1, 3, '14:30', 850, '1车02号', '硬卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (34, '5', 1, 3, '14:30', 1250, '3车01号', '软卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (35, '5', 1, 3, '14:30', 1250, '3车02号', '软卧', '2019-04-24 00:00:00');
INSERT INTO `piao` VALUES (37, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2019-04-25 00:00:00');
INSERT INTO `piao` VALUES (38, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2019-04-26 00:00:00');
INSERT INTO `piao` VALUES (39, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2019-04-27 00:00:00');
INSERT INTO `piao` VALUES (40, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2019-04-28 00:00:00');
INSERT INTO `piao` VALUES (41, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2019-04-29 00:00:00');
INSERT INTO `piao` VALUES (42, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2019-04-30 00:00:00');
INSERT INTO `piao` VALUES (43, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2019-04-25 00:00:00');
INSERT INTO `piao` VALUES (44, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2019-04-26 00:00:00');
INSERT INTO `piao` VALUES (45, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2019-04-27 00:00:00');
INSERT INTO `piao` VALUES (46, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2019-04-28 00:00:00');
INSERT INTO `piao` VALUES (47, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2019-04-29 00:00:00');
INSERT INTO `piao` VALUES (48, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2019-04-30 00:00:00');
INSERT INTO `piao` VALUES (49, '7', 6, 8, '15:20:30', 150, '1', '软卧', '2019-08-06 00:00:00');
INSERT INTO `piao` VALUES (50, '7', 6, 8, '15：20:30', 150, '1车01A', '硬座', '2019-08-07 00:00:00');
INSERT INTO `piao` VALUES (51, '7', 6, 8, '15：20:30', 150, '1车02A', '硬座', '2019-08-07 00:00:00');
INSERT INTO `piao` VALUES (52, '7', 6, 8, '15：20:30', 150, '1车03A', '硬座', '2019-08-07 00:00:00');
INSERT INTO `piao` VALUES (53, '8', 6, 6, '10:30:00', 520.5, '1车01A', '软卧', '2019-08-07 00:00:00');
INSERT INTO `piao` VALUES (54, '8', 6, 6, '10:30:00', 520.5, '1车02A', '软卧', '2019-08-07 00:00:00');
INSERT INTO `piao` VALUES (55, '8', 6, 6, '10:30:00', 520.5, '1车03A', '软卧', '2019-08-07 00:00:00');
INSERT INTO `piao` VALUES (56, '8', 6, 6, '10:30:00', 520.5, '1车01B', '软卧', '2019-08-07 00:00:00');
INSERT INTO `piao` VALUES (57, '8', 6, 6, '10:30:00', 520.5, '1车02B', '软卧', '2019-08-07 00:00:00');
INSERT INTO `piao` VALUES (58, '8', 6, 6, '10:30:00', 520.5, '1车03B', '软卧', '2019-08-07 00:00:00');
INSERT INTO `piao` VALUES (59, '8', 6, 12, '10:30:00', 520.5, '1车01A', '硬座', '2019-08-08 00:00:00');
INSERT INTO `piao` VALUES (60, '8', 6, 12, '10:30:00', 520.5, '1车02A', '硬座', '2019-08-08 00:00:00');
INSERT INTO `piao` VALUES (61, '8', 6, 12, '10:30:00', 520.5, '1车03A', '硬座', '2019-08-08 00:00:00');
INSERT INTO `piao` VALUES (62, '8', 6, 12, '10:30:00', 520.5, '1车03B', '硬座', '2019-08-08 00:00:00');
INSERT INTO `piao` VALUES (63, '8', 6, 12, '10:30:00', 520.5, '1车02B', '硬座', '2019-08-08 00:00:00');
INSERT INTO `piao` VALUES (64, '8', 6, 12, '10:30:00', 520.5, '1车01B', '硬座', '2019-08-08 00:00:00');
INSERT INTO `piao` VALUES (65, '8', 6, 12, '12:25:00', 520.5, '01车01F', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (66, '8', 6, 12, '12:25:00', 520.5, '01车01A', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (67, '8', 6, 12, '12:25:00', 520.5, '01车01B', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (68, '8', 6, 12, '12:25:00', 520.5, '01车01C', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (69, '8', 6, 12, '12:25:00', 520.5, '01车01D', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (70, '8', 6, 12, '12:25:00', 520.5, '01车02B', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (71, '8', 6, 12, '12:25:00', 520.5, '01车03B', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (72, '8', 6, 12, '12:25:00', 520.5, '01车4B', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (73, '9', 1, 13, '09:30:00', 520.5, '01车01A', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (74, '9', 1, 13, '09:30:00', 520.5, '01车02A', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (75, '9', 1, 13, '09:30:00', 520.5, '01车03A', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (76, '9', 1, 13, '09:30:00', 520.5, '01车01B', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (77, '9', 1, 13, '09:30:00', 520.5, '01车02B', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (78, '9', 1, 13, '09:30:00', 520.5, '01车03B', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (79, '9', 1, 13, '09:30:00', 520.5, '01车01C', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (80, '9', 1, 13, '09:30:00', 520.5, '01车02C', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (81, '9', 1, 13, '09:30:00', 520.5, '01车03C', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (82, '9', 1, 13, '09:30:00', 520.5, '01车01D', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (83, '9', 1, 13, '09:30:00', 520.5, '01车02D', '硬卧', '2019-08-18 00:00:00');
INSERT INTO `piao` VALUES (84, '9', 1, 13, '09:30:00', 520.5, '01车03D', '硬卧', '2019-08-18 00:00:00');

-- ----------------------------
-- Table structure for traininfo
-- ----------------------------
DROP TABLE IF EXISTS `traininfo`;
CREATE TABLE `traininfo`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车名',
  `cz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车长',
  `znums` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总座位数',
  `xcnums` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '限乘人数',
  `traintype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '火车类型',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '火车信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of traininfo
-- ----------------------------
INSERT INTO `traininfo` VALUES (1, 'K100', '张军', '400', '600', '普快');
INSERT INTO `traininfo` VALUES (2, 'T200', '李明', '1000', '2000', '特快');
INSERT INTO `traininfo` VALUES (3, 'G123', '李四', '400', '400', '高铁');
INSERT INTO `traininfo` VALUES (5, 'D113', '张伟', '900', '900', '动车');
INSERT INTO `traininfo` VALUES (6, 'T113', '马致远', '1000', '1000', '特快');
INSERT INTO `traininfo` VALUES (7, 'g120', '王大雷', '100', '100', '高铁');
INSERT INTO `traininfo` VALUES (8, 'G135', '王子', '400', '400', '高铁');
INSERT INTO `traininfo` VALUES (9, 'G144', '张军', '500', '600', '高铁');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `upassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `utype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'admin', 'admin', '管理员');
INSERT INTO `userinfo` VALUES (2, 'admin1', 'admin', NULL);

-- ----------------------------
-- Table structure for xianlu
-- ----------------------------
DROP TABLE IF EXISTS `xianlu`;
CREATE TABLE `xianlu`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `xh` int(11) NULL DEFAULT NULL COMMENT '站点序号',
  `tid` int(11) NULL DEFAULT NULL COMMENT '车id',
  `zdid` int(11) NULL DEFAULT NULL COMMENT '站点id',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线路信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xianlu
-- ----------------------------
INSERT INTO `xianlu` VALUES (1, 1, 1, 1);
INSERT INTO `xianlu` VALUES (2, 2, 1, 2);
INSERT INTO `xianlu` VALUES (3, 3, 1, 3);
INSERT INTO `xianlu` VALUES (4, 1, 2, 1);
INSERT INTO `xianlu` VALUES (5, 2, 2, 3);
INSERT INTO `xianlu` VALUES (7, 2, 3, 4);
INSERT INTO `xianlu` VALUES (8, 3, 2, 4);
INSERT INTO `xianlu` VALUES (9, 3, 3, 3);
INSERT INTO `xianlu` VALUES (10, 1, 3, 6);
INSERT INTO `xianlu` VALUES (11, 1, 5, 1);
INSERT INTO `xianlu` VALUES (12, 2, 5, 2);
INSERT INTO `xianlu` VALUES (13, 3, 5, 3);
INSERT INTO `xianlu` VALUES (14, 4, 5, 4);
INSERT INTO `xianlu` VALUES (15, 5, 5, 5);
INSERT INTO `xianlu` VALUES (17, 6, 5, 8);
INSERT INTO `xianlu` VALUES (18, 1, 6, 8);
INSERT INTO `xianlu` VALUES (19, 2, 6, 5);
INSERT INTO `xianlu` VALUES (20, 3, 6, 3);
INSERT INTO `xianlu` VALUES (21, 4, 6, 10);
INSERT INTO `xianlu` VALUES (22, 1, 7, 6);
INSERT INTO `xianlu` VALUES (23, 2, 7, 4);
INSERT INTO `xianlu` VALUES (24, 3, 7, 5);
INSERT INTO `xianlu` VALUES (25, 4, 7, 8);
INSERT INTO `xianlu` VALUES (26, 1, 8, 6);
INSERT INTO `xianlu` VALUES (27, 2, 8, 4);
INSERT INTO `xianlu` VALUES (28, 3, 8, 5);
INSERT INTO `xianlu` VALUES (29, 4, 8, 12);
INSERT INTO `xianlu` VALUES (30, 1, 9, 1);
INSERT INTO `xianlu` VALUES (31, 2, 9, 2);
INSERT INTO `xianlu` VALUES (32, 3, 9, 3);
INSERT INTO `xianlu` VALUES (33, 4, 9, 13);

-- ----------------------------
-- Table structure for zhandian
-- ----------------------------
DROP TABLE IF EXISTS `zhandian`;
CREATE TABLE `zhandian`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `zdname` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '站点名称',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站点信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zhandian
-- ----------------------------
INSERT INTO `zhandian` VALUES (1, '北京西客站');
INSERT INTO `zhandian` VALUES (2, '石家庄站');
INSERT INTO `zhandian` VALUES (3, '洛阳站');
INSERT INTO `zhandian` VALUES (4, '天津站');
INSERT INTO `zhandian` VALUES (5, '南京站');
INSERT INTO `zhandian` VALUES (6, '北京南站');
INSERT INTO `zhandian` VALUES (8, '上海站');
INSERT INTO `zhandian` VALUES (9, '上海南站');
INSERT INTO `zhandian` VALUES (10, '兰州站');
INSERT INTO `zhandian` VALUES (11, '兰州西站');
INSERT INTO `zhandian` VALUES (12, '上海虹桥');
INSERT INTO `zhandian` VALUES (13, '武昌站');

SET FOREIGN_KEY_CHECKS = 1;
