/*
Navicat MySQL Data Transfer

Source Server         : hadoop02
Source Server Version : 50626
Source Host           : hadoop02:3306
Source Database       : jdbc_test1704

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-08-06 11:47:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('101', 'huangbo', '男', '11', 'CS');
INSERT INTO `student` VALUES ('111', 'huangbo', '男', '11', 'CS');
INSERT INTO `student` VALUES ('95005', '刘刚', '男', '18', 'MA');
INSERT INTO `student` VALUES ('95006', '孙庆', '男', '23', 'CS');
INSERT INTO `student` VALUES ('95007', '易思玲', '女', '19', 'MA');
INSERT INTO `student` VALUES ('95008', '李娜', '女', '18', 'CS');
INSERT INTO `student` VALUES ('95009', '梦圆圆', '女', '18', 'MA');
INSERT INTO `student` VALUES ('95010', '孔小涛', '男', '19', 'CS');
INSERT INTO `student` VALUES ('95011', '包小柏', '男', '18', 'MA');
INSERT INTO `student` VALUES ('95012', '孙花', '女', '20', 'CS');
INSERT INTO `student` VALUES ('95013', '冯伟', '男', '21', 'CS');
INSERT INTO `student` VALUES ('95014', '王小丽', '女', '19', 'CS');
INSERT INTO `student` VALUES ('95015', '王君', '男', '18', 'MA');
INSERT INTO `student` VALUES ('95016', '钱国', '男', '21', 'MA');
INSERT INTO `student` VALUES ('95017', '王风娟', '女', '18', 'IS');
INSERT INTO `student` VALUES ('95018', '王一', '女', '19', 'IS');
INSERT INTO `student` VALUES ('95019', '邢小丽', '女', '19', 'IS');
INSERT INTO `student` VALUES ('95020', '赵钱', '男', '21', 'IS');
INSERT INTO `student` VALUES ('95021', '周二', '男', '17', 'MA');
INSERT INTO `student` VALUES ('95022', '郑明', '男', '20', 'MA');
