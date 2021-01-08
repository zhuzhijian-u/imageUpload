/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : image

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2021-01-08 14:33:10
*/
create database image;

use image;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '风景');
INSERT INTO `category` VALUES ('2', '美女');
INSERT INTO `category` VALUES ('3', '汽车');
INSERT INTO `category` VALUES ('4', '动漫');
INSERT INTO `category` VALUES ('5', '未知');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `category_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('14', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/2462420c-2adf-4fbc-9213-58c0be2988ab', '1');
INSERT INTO `image` VALUES ('15', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/18adee4a-b24b-4004-97b3-1531a7cdd5ac', '1');
INSERT INTO `image` VALUES ('16', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/e8299606-05b7-48ef-bcf0-62983895ed0f', '1');
INSERT INTO `image` VALUES ('17', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/24ca8b7b-22f2-4ded-8093-9c26ef409d7d', '1');
INSERT INTO `image` VALUES ('18', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/a7896820-9c89-4f17-9a89-6afa7dcd552d', '1');
INSERT INTO `image` VALUES ('19', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/990f75c0-7dde-4a0b-a1e8-2354934a8461', '1');
INSERT INTO `image` VALUES ('20', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/76fe6311-aa67-4f1e-a839-e82fa0fbe5bf', '1');
INSERT INTO `image` VALUES ('21', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/e83bf0cf-e66e-4d9d-8d1e-7a8793e90cc0', '1');
INSERT INTO `image` VALUES ('22', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/f4e8a34a-947a-44e2-b575-f7c471794e1d', '3');
INSERT INTO `image` VALUES ('23', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/8b5d3a1a-417c-4e2a-bc2a-c63b9d6acefa', '3');
INSERT INTO `image` VALUES ('24', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/9c2c0fed-c624-4eb9-ba2f-c07faa3fbb8a', '3');
INSERT INTO `image` VALUES ('25', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/29119fb5-bbd1-4015-b6a5-b12db82f4aa5', '3');
INSERT INTO `image` VALUES ('26', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/7fdacf36-1a04-4033-9eb6-766bcb1c7212', '3');
INSERT INTO `image` VALUES ('27', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/fcd9f420-991c-4d74-9ca9-2ddd481d3f66', '3');
INSERT INTO `image` VALUES ('28', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/f137bd68-73ca-430c-b85d-365049523feb', '3');
INSERT INTO `image` VALUES ('29', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/fc88e49a-4578-408c-8a35-4afc1c2a10a0', '3');
INSERT INTO `image` VALUES ('30', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/8fe1daaf-9d04-4700-8dd8-2131dfd15ef2', '3');
INSERT INTO `image` VALUES ('31', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/57b6bfcf-93dc-4e91-9dd9-f140ed92dd58', '4');
INSERT INTO `image` VALUES ('33', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/7d5142e6-1ffc-41b0-808e-d6bb82ecec13', '4');
INSERT INTO `image` VALUES ('34', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/177cec8e-53a7-4d62-ba2f-f9841b7332d3', '4');
INSERT INTO `image` VALUES ('35', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/1e062f48-38f7-4565-9b31-4f21a50cd4ce', '4');
INSERT INTO `image` VALUES ('45', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/2cf0e726-7697-475d-9bf9-c4c69dc77c85', '1');
INSERT INTO `image` VALUES ('46', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/023dc025-12c7-4917-ab8d-e59b25247cb8', '1');
INSERT INTO `image` VALUES ('47', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/c8ceaebc-dcda-4b00-b65f-66679550795b', '1');
INSERT INTO `image` VALUES ('48', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/efae1b3c-b8d2-484e-9059-d28a21d5cfcf', '2');
INSERT INTO `image` VALUES ('49', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/9aac192d-265a-4789-b94e-d87a5365883c', '2');
INSERT INTO `image` VALUES ('50', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/19103200-b0d9-4f05-86c8-151567bcdae2', '2');
INSERT INTO `image` VALUES ('51', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/81645abf-cbfe-4551-85ac-a13319b6c7c5', '2');
INSERT INTO `image` VALUES ('52', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/94130a65-3ed9-450f-bd3b-600317ae1823', '4');
INSERT INTO `image` VALUES ('53', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/d8a5ad7a-9577-4cba-aa4a-e065d9cb717b', '4');
INSERT INTO `image` VALUES ('54', 'VCG21f0c8afe0c.jpg', 'http://image111111.oss-cn-chengdu.aliyuncs.com/image/c2e68926-e682-4cce-8691-95b1d413cd55', '4');
INSERT INTO `image` VALUES ('103', 'VCG21f0c8afe0c.jpg', 'upload/a4fe906b-4cbc-48f4-af9f-b74aa4ff2547.jpg', '5');
