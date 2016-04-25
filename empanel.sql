/*
Navicat MySQL Data Transfer

Source Server         : SQL
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : empanel

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-04-25 21:24:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `login_user`
-- ----------------------------
DROP TABLE IF EXISTS `login_user`;
CREATE TABLE `login_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roleId` int(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登陆用户名、密码表';

-- ----------------------------
-- Records of login_user
-- ----------------------------
INSERT INTO `login_user` VALUES ('cadre', 'cadre', '1');
INSERT INTO `login_user` VALUES ('checkgp', 'checkgp', '2');
INSERT INTO `login_user` VALUES ('staff', 'staff', '3');

-- ----------------------------
-- Table structure for `role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `roleId` int(10) NOT NULL,
  `resourceUrl` varchar(200) NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `sysrole`
-- ----------------------------
DROP TABLE IF EXISTS `sysrole`;
CREATE TABLE `sysrole` (
  `id` int(10) NOT NULL,
  `roleCode` varchar(50) NOT NULL,
  `roleName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色表';

-- ----------------------------
-- Records of sysrole
-- ----------------------------
INSERT INTO `sysrole` VALUES ('1', 'cadre', '组织部');
INSERT INTO `sysrole` VALUES ('2', 'checkgp', '考察组');
INSERT INTO `sysrole` VALUES ('3', 'staff', '普通员工');
