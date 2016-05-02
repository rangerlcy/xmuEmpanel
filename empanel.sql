/*
Navicat MySQL Data Transfer

Source Server         : SQL
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : empanel

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-05-02 15:59:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `degree`
-- ----------------------------
DROP TABLE IF EXISTS `degree`;
CREATE TABLE `degree` (
  `degree` varchar(200) NOT NULL COMMENT '学位名称',
  `type` varchar(200) DEFAULT NULL COMMENT '学位所属的学历(学士、硕士、博士)',
  PRIMARY KEY (`degree`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of degree
-- ----------------------------
INSERT INTO `degree` VALUES ('中药学硕士', '硕士');
INSERT INTO `degree` VALUES ('临床医学博士', '博士');
INSERT INTO `degree` VALUES ('临床医学硕士', '硕士');
INSERT INTO `degree` VALUES ('会计硕士', '硕士');
INSERT INTO `degree` VALUES ('体育硕士', '硕士');
INSERT INTO `degree` VALUES ('保险硕士', '硕士');
INSERT INTO `degree` VALUES ('公共卫生硕士', '硕士');
INSERT INTO `degree` VALUES ('公共管理硕士', '硕士');
INSERT INTO `degree` VALUES ('兽医博士', '博士');
INSERT INTO `degree` VALUES ('兽医硕士', '硕士');
INSERT INTO `degree` VALUES ('军事学博士', '博士');
INSERT INTO `degree` VALUES ('军事学学士', '学士');
INSERT INTO `degree` VALUES ('军事学硕士', '硕士');
INSERT INTO `degree` VALUES ('军事硕士', '硕士');
INSERT INTO `degree` VALUES ('农业推广硕士', '硕士');
INSERT INTO `degree` VALUES ('农学博士', '博士');
INSERT INTO `degree` VALUES ('农学学士', '学士');
INSERT INTO `degree` VALUES ('农学硕士', '硕士');
INSERT INTO `degree` VALUES ('出版硕士', '硕士');
INSERT INTO `degree` VALUES ('医学博士', '博士');
INSERT INTO `degree` VALUES ('医学学士', '学士');
INSERT INTO `degree` VALUES ('医学硕士', '硕士');
INSERT INTO `degree` VALUES ('历史学博士', '博士');
INSERT INTO `degree` VALUES ('历史学学士', '学士');
INSERT INTO `degree` VALUES ('历史学硕士', '硕士');
INSERT INTO `degree` VALUES ('口腔医学博士', '博士');
INSERT INTO `degree` VALUES ('口腔医学硕士', '硕士');
INSERT INTO `degree` VALUES ('哲学博士', '博士');
INSERT INTO `degree` VALUES ('哲学学士', '学士');
INSERT INTO `degree` VALUES ('哲学硕士', '硕士');
INSERT INTO `degree` VALUES ('国际商务硕士', '硕士');
INSERT INTO `degree` VALUES ('图书情报硕士', '硕士');
INSERT INTO `degree` VALUES ('城市规划硕士', '硕士');
INSERT INTO `degree` VALUES ('审计硕士', '硕士');
INSERT INTO `degree` VALUES ('工商管理硕士', '硕士');
INSERT INTO `degree` VALUES ('工学博士', '博士');
INSERT INTO `degree` VALUES ('工学学士', '学士');
INSERT INTO `degree` VALUES ('工学硕士', '硕士');
INSERT INTO `degree` VALUES ('工程博士', '博士');
INSERT INTO `degree` VALUES ('工程硕士博士', '硕士');
INSERT INTO `degree` VALUES ('工程管理硕士', '硕士');
INSERT INTO `degree` VALUES ('应用心理硕士', '硕士');
INSERT INTO `degree` VALUES ('应用统计硕士', '硕士');
INSERT INTO `degree` VALUES ('建筑学学士', '学士');
INSERT INTO `degree` VALUES ('建筑学硕士', '硕士');
INSERT INTO `degree` VALUES ('护理硕士', '硕士');
INSERT INTO `degree` VALUES ('教育博士', '博士');
INSERT INTO `degree` VALUES ('教育学博士', '博士');
INSERT INTO `degree` VALUES ('教育学学士', '学士');
INSERT INTO `degree` VALUES ('教育学硕士', '硕士');
INSERT INTO `degree` VALUES ('教育硕士', '硕士');
INSERT INTO `degree` VALUES ('文学博士', '博士');
INSERT INTO `degree` VALUES ('文学学士', '学士');
INSERT INTO `degree` VALUES ('文学硕士', '硕士');
INSERT INTO `degree` VALUES ('文物和博物馆硕士', '硕士');
INSERT INTO `degree` VALUES ('新闻与传播硕士', '硕士');
INSERT INTO `degree` VALUES ('旅游管理硕士', '硕士');
INSERT INTO `degree` VALUES ('林业硕士', '硕士');
INSERT INTO `degree` VALUES ('汉语国际教育硕士', '硕士');
INSERT INTO `degree` VALUES ('法学博士', '博士');
INSERT INTO `degree` VALUES ('法学学士', '学士');
INSERT INTO `degree` VALUES ('法学硕士', '硕士');
INSERT INTO `degree` VALUES ('法律硕士', '硕士');
INSERT INTO `degree` VALUES ('理学博士', '博士');
INSERT INTO `degree` VALUES ('理学学士', '学士');
INSERT INTO `degree` VALUES ('理学硕士', '硕士');
INSERT INTO `degree` VALUES ('社会工作硕士', '硕士');
INSERT INTO `degree` VALUES ('税务硕士', '硕士');
INSERT INTO `degree` VALUES ('管理学博士', '博士');
INSERT INTO `degree` VALUES ('管理学学士', '学士');
INSERT INTO `degree` VALUES ('管理学硕士', '硕士');
INSERT INTO `degree` VALUES ('经济学博士', '博士');
INSERT INTO `degree` VALUES ('经济学学士', '学士');
INSERT INTO `degree` VALUES ('经济学硕士', '硕士');
INSERT INTO `degree` VALUES ('翻译硕士', '硕士');
INSERT INTO `degree` VALUES ('艺术学博士', '博士');
INSERT INTO `degree` VALUES ('艺术学学士', '学士');
INSERT INTO `degree` VALUES ('艺术学硕士', '硕士');
INSERT INTO `degree` VALUES ('艺术硕士', '硕士');
INSERT INTO `degree` VALUES ('药学硕士', '硕士');
INSERT INTO `degree` VALUES ('警务硕士', '硕士');
INSERT INTO `degree` VALUES ('资产评估硕士', '硕士');
INSERT INTO `degree` VALUES ('金融硕士', '硕士');
INSERT INTO `degree` VALUES ('风景园林硕士', '硕士');

-- ----------------------------
-- Table structure for `education`
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `id` int(20) NOT NULL,
  `education` varchar(200) DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES ('1', '初中');
INSERT INTO `education` VALUES ('2', '高中');
INSERT INTO `education` VALUES ('3', '中专');
INSERT INTO `education` VALUES ('4', '大专');
INSERT INTO `education` VALUES ('5', '专科');
INSERT INTO `education` VALUES ('6', '本科');
INSERT INTO `education` VALUES ('7', '普通班');
INSERT INTO `education` VALUES ('8', '研究生');

-- ----------------------------
-- Table structure for `empanel`
-- ----------------------------
DROP TABLE IF EXISTS `empanel`;
CREATE TABLE `empanel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `flow` varchar(200) DEFAULT NULL COMMENT '当前进行到的流程',
  `start_time` varchar(200) DEFAULT NULL COMMENT '报名开始时间',
  `end_time` varchar(200) DEFAULT NULL COMMENT '报名结束时间',
  `plan` text,
  `avg_max_num` int(11) NOT NULL DEFAULT '1' COMMENT '每人最大可选岗位数量',
  `is_realease` tinyint(4) NOT NULL DEFAULT '0' COMMENT '选任工作是否发布',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除位，若为1则表示该选任工作已经过时无效，是历史选任工作',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empanel
-- ----------------------------
INSERT INTO `empanel` VALUES ('1', '2016年1月科级选任', null, null, null, '2016-5-25', '2016-7-10', '选任计划。。。', '1', '1', '0');
INSERT INTO `empanel` VALUES ('2', 'xxx年x月选任', null, null, null, '2020-1-1', '2020-2-2', '不知道写什么', '1', '1', '0');

-- ----------------------------
-- Table structure for `empanel_job`
-- ----------------------------
DROP TABLE IF EXISTS `empanel_job`;
CREATE TABLE `empanel_job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(10) unsigned NOT NULL,
  `job` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `empanel_id` int(11) unsigned NOT NULL,
  `amount` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_id` (`organization_id`),
  KEY `empanel_id` (`empanel_id`),
  CONSTRAINT `empanel_job_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `empanel_job_ibfk_2` FOREIGN KEY (`empanel_id`) REFERENCES `empanel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empanel_job
-- ----------------------------
INSERT INTO `empanel_job` VALUES ('1', '1', '院长', '正处级', '1', '1');
INSERT INTO `empanel_job` VALUES ('2', '2', '实验室主任', '正科级', '1', '5');
INSERT INTO `empanel_job` VALUES ('3', '3', '办公室秘书', '副科级', '1', '2');
INSERT INTO `empanel_job` VALUES ('4', '2', '院长', '处级', '2', '1');

-- ----------------------------
-- Table structure for `empanel__studygroup`
-- ----------------------------
DROP TABLE IF EXISTS `empanel__studygroup`;
CREATE TABLE `empanel__studygroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `study_group_id` int(11) unsigned NOT NULL,
  `empanel_id` int(11) NOT NULL,
  `organization_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `study_group_id` (`study_group_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `empanel__studygroup_ibfk_1` FOREIGN KEY (`study_group_id`) REFERENCES `studygroup` (`id`),
  CONSTRAINT `empanel__studygroup_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empanel__studygroup
-- ----------------------------

-- ----------------------------
-- Table structure for `entryform`
-- ----------------------------
DROP TABLE IF EXISTS `entryform`;
CREATE TABLE `entryform` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(200) DEFAULT NULL,
  `birth` varchar(200) DEFAULT NULL COMMENT '出生年月',
  `nationality` varchar(255) DEFAULT NULL COMMENT '民族',
  `native_place` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `birth_place` varchar(255) DEFAULT NULL COMMENT '出生地',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '照片',
  `join_party_time` varchar(200) DEFAULT NULL COMMENT '入党时间',
  `work_time` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `college_time` varchar(200) DEFAULT NULL COMMENT '入校时间',
  `special_job` varchar(255) DEFAULT NULL COMMENT '专业技术职务',
  `special_skill` varchar(255) DEFAULT NULL COMMENT '特长',
  `full_time_education_record` varchar(255) DEFAULT NULL COMMENT '全日制教育学历',
  `full_time_education_level` varchar(255) DEFAULT NULL COMMENT '全日制教育学位',
  `full_time_education_college` varchar(255) DEFAULT NULL COMMENT '全日制教育毕业院校',
  `incumbency_education_record` varchar(255) DEFAULT NULL,
  `incumbency_education_level` varchar(255) DEFAULT NULL,
  `incumbency_education_college` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '报名邮箱',
  `organization_id` int(10) unsigned DEFAULT NULL,
  `presently_job` varchar(255) DEFAULT NULL COMMENT '现任职务',
  `resume` text COMMENT '简历',
  `punish_reward` text COMMENT '奖惩情况',
  `appraisal_result` text COMMENT '考核结果',
  `appoint_dismiss_reason` text COMMENT '任免理由',
  `empanel_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL COMMENT '党派名称',
  PRIMARY KEY (`id`),
  KEY `empanel` (`empanel_id`),
  KEY `user_id` (`user_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `entryform_ibfk_1` FOREIGN KEY (`empanel_id`) REFERENCES `empanel` (`id`),
  CONSTRAINT `entryform_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `entryform_ibfk_3` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryform
-- ----------------------------
INSERT INTO `entryform` VALUES ('7', 'admin', '男', '1992-4-5', '景颇族', '广东省-广东市-广县', '福建省-厦门市-厦县', '/empanel/staff_photo/photo-2016-05-02 15-36-25-031.jpg', '2008-6-19', '2007-3-18', '2007-7-18', 'asdqwwe', 'czczxw2', '中专', '出版硕士', 'xx21s', '研究生', '农学硕士', 'cds32fdscv', '18850010090', '12345678@163.com', '1', 'asdsqe21s', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zzxasd', 'qwe123as', null, null, '7', '中共');
INSERT INTO `entryform` VALUES ('27', 'admin', '男', '1992-4-5', '景颇族', '广东省-广东市-广县', '福建省-厦门市-厦县', '/empanel/staff_photo/photo-2016-05-02 01-30-47-990.jpg', '2008-6-19', '2007-3-18', '2007-7-18', 'asdqwwe', 'czczxw2', '中专', '出版硕士', 'xx21s', '研究生', '农学硕士', 'cds32fdscv', '18850010090', '12345678@163.com', '2', 'asdsqe21s', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zzxasd', 'qwe123as', null, '1', '7', '民建');
INSERT INTO `entryform` VALUES ('28', 'admin', '男', '1992-4-5', '景颇族', '广东省-广东市-广县', '福建省-厦门市-厦县', '/empanel/staff_photo/photo-2016-05-02 15-36-25-031.jpg', '2008-6-19', '2007-3-18', '2007-7-18', 'asdqwwe', 'czczxw2', '中专', '出版硕士', 'xx21s', '研究生', '农学硕士', 'cds32fdscv', '18850010090', '12345678@163.com', '1', 'asdsqe21s', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zzxasd', 'qwe123as', null, '2', '7', '中共');

-- ----------------------------
-- Table structure for `entryform_family`
-- ----------------------------
DROP TABLE IF EXISTS `entryform_family`;
CREATE TABLE `entryform_family` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appellation` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birth` varchar(200) NOT NULL,
  `politics` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `entry_form_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_form_id` (`entry_form_id`),
  CONSTRAINT `entryform_family_ibfk_1` FOREIGN KEY (`entry_form_id`) REFERENCES `entryform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryform_family
-- ----------------------------
INSERT INTO `entryform_family` VALUES ('64', 'sas', 'wqe1', '2008-12-', '中共', 'dsf4hgf', '27');
INSERT INTO `entryform_family` VALUES ('66', '天空', 'wqe1', '2008-12-', '中共', 'dsf4hgf', '7');
INSERT INTO `entryform_family` VALUES ('67', '天空', 'wqe1', '2008-12-', '中共', 'dsf4hgf', '28');

-- ----------------------------
-- Table structure for `entryform_job`
-- ----------------------------
DROP TABLE IF EXISTS `entryform_job`;
CREATE TABLE `entryform_job` (
  `id` int(11) unsigned NOT NULL,
  `entry_form_id` int(10) unsigned NOT NULL,
  `job_id` int(11) unsigned NOT NULL,
  `job_num` tinyint(4) NOT NULL COMMENT '第几志愿',
  `is_selected` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_form_id` (`entry_form_id`),
  KEY `job_id` (`job_id`),
  CONSTRAINT `entryform_job_ibfk_1` FOREIGN KEY (`entry_form_id`) REFERENCES `entryform` (`id`),
  CONSTRAINT `entryform_job_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `empanel_job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryform_job
-- ----------------------------

-- ----------------------------
-- Table structure for `entryform_relativemerits`
-- ----------------------------
DROP TABLE IF EXISTS `entryform_relativemerits`;
CREATE TABLE `entryform_relativemerits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_form_id` int(10) unsigned NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '优点还是缺点',
  `content` text,
  PRIMARY KEY (`id`),
  KEY `entry_form_id` (`entry_form_id`),
  CONSTRAINT `entryform_relativemerits_ibfk_1` FOREIGN KEY (`entry_form_id`) REFERENCES `entryform` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryform_relativemerits
-- ----------------------------

-- ----------------------------
-- Table structure for `ethnic`
-- ----------------------------
DROP TABLE IF EXISTS `ethnic`;
CREATE TABLE `ethnic` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ethnic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='民族表';

-- ----------------------------
-- Records of ethnic
-- ----------------------------
INSERT INTO `ethnic` VALUES ('1', '汉族');
INSERT INTO `ethnic` VALUES ('2', '蒙古族');
INSERT INTO `ethnic` VALUES ('3', '彝族');
INSERT INTO `ethnic` VALUES ('4', '侗族');
INSERT INTO `ethnic` VALUES ('5', '哈萨克族');
INSERT INTO `ethnic` VALUES ('6', '畲族');
INSERT INTO `ethnic` VALUES ('7', '纳西族');
INSERT INTO `ethnic` VALUES ('8', '仫佬族');
INSERT INTO `ethnic` VALUES ('9', '仡佬族');
INSERT INTO `ethnic` VALUES ('10', '怒族');
INSERT INTO `ethnic` VALUES ('11', '保安族');
INSERT INTO `ethnic` VALUES ('12', '鄂伦春族');
INSERT INTO `ethnic` VALUES ('13', '回族');
INSERT INTO `ethnic` VALUES ('14', '壮族');
INSERT INTO `ethnic` VALUES ('15', '瑶族');
INSERT INTO `ethnic` VALUES ('16', '傣族');
INSERT INTO `ethnic` VALUES ('17', '高山族');
INSERT INTO `ethnic` VALUES ('18', '景颇族');
INSERT INTO `ethnic` VALUES ('19', '羌族');
INSERT INTO `ethnic` VALUES ('20', '锡伯族');
INSERT INTO `ethnic` VALUES ('21', '乌孜别克族');
INSERT INTO `ethnic` VALUES ('22', '裕固族');
INSERT INTO `ethnic` VALUES ('23', '赫哲族');
INSERT INTO `ethnic` VALUES ('24', '藏族');
INSERT INTO `ethnic` VALUES ('25', '布依族');
INSERT INTO `ethnic` VALUES ('26', '白族');
INSERT INTO `ethnic` VALUES ('27', '黎族');
INSERT INTO `ethnic` VALUES ('28', '拉祜族');
INSERT INTO `ethnic` VALUES ('29', '柯尔克孜族');
INSERT INTO `ethnic` VALUES ('30', '布朗族');
INSERT INTO `ethnic` VALUES ('31', '阿昌族');
INSERT INTO `ethnic` VALUES ('32', '俄罗斯族');
INSERT INTO `ethnic` VALUES ('33', '京族');
INSERT INTO `ethnic` VALUES ('34', '门巴族');
INSERT INTO `ethnic` VALUES ('35', '维吾尔族');
INSERT INTO `ethnic` VALUES ('36', '朝鲜族');
INSERT INTO `ethnic` VALUES ('37', '土家族');
INSERT INTO `ethnic` VALUES ('38', '傈僳族');
INSERT INTO `ethnic` VALUES ('39', '水族');
INSERT INTO `ethnic` VALUES ('40', '土族');
INSERT INTO `ethnic` VALUES ('41', '撒拉族');
INSERT INTO `ethnic` VALUES ('42', '普米族');
INSERT INTO `ethnic` VALUES ('43', '鄂温克族');
INSERT INTO `ethnic` VALUES ('44', '塔塔尔族');
INSERT INTO `ethnic` VALUES ('45', '珞巴族');
INSERT INTO `ethnic` VALUES ('46', '苗族');
INSERT INTO `ethnic` VALUES ('47', '满族');
INSERT INTO `ethnic` VALUES ('48', '哈尼族');
INSERT INTO `ethnic` VALUES ('49', '佤族');
INSERT INTO `ethnic` VALUES ('50', '东乡族');
INSERT INTO `ethnic` VALUES ('51', '达斡尔族');
INSERT INTO `ethnic` VALUES ('52', '毛南族');
INSERT INTO `ethnic` VALUES ('53', '塔吉克族');
INSERT INTO `ethnic` VALUES ('54', '德昂族');
INSERT INTO `ethnic` VALUES ('55', '独龙族');
INSERT INTO `ethnic` VALUES ('56', '基诺族');

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
INSERT INTO `login_user` VALUES ('admin123', '111111', '3');
INSERT INTO `login_user` VALUES ('cadre', 'cadre', '1');

-- ----------------------------
-- Table structure for `organization`
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `del_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '信息科学与技术学院', '0');
INSERT INTO `organization` VALUES ('2', '经济学院', '0');
INSERT INTO `organization` VALUES ('3', '人文学院', '0');

-- ----------------------------
-- Table structure for `party_name`
-- ----------------------------
DROP TABLE IF EXISTS `party_name`;
CREATE TABLE `party_name` (
  `id` int(20) NOT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_name
-- ----------------------------
INSERT INTO `party_name` VALUES ('1', '中共');
INSERT INTO `party_name` VALUES ('2', '民革');
INSERT INTO `party_name` VALUES ('3', '民盟');
INSERT INTO `party_name` VALUES ('4', '民建');
INSERT INTO `party_name` VALUES ('5', '民进');
INSERT INTO `party_name` VALUES ('6', '农工');
INSERT INTO `party_name` VALUES ('7', '致公');
INSERT INTO `party_name` VALUES ('8', '九三');
INSERT INTO `party_name` VALUES ('9', '台盟');
INSERT INTO `party_name` VALUES ('10', '无党派');
INSERT INTO `party_name` VALUES ('11', '群众');

-- ----------------------------
-- Table structure for `place_city`
-- ----------------------------
DROP TABLE IF EXISTS `place_city`;
CREATE TABLE `place_city` (
  `id` int(20) NOT NULL COMMENT '市的id',
  `city` varchar(200) DEFAULT NULL COMMENT '市名',
  `province_id` int(20) DEFAULT NULL COMMENT '省级表id(外键)',
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`),
  CONSTRAINT `province_id` FOREIGN KEY (`province_id`) REFERENCES `place_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_city
-- ----------------------------
INSERT INTO `place_city` VALUES ('1', '长沙市', '1');
INSERT INTO `place_city` VALUES ('2', '厦门市', '2');
INSERT INTO `place_city` VALUES ('3', '广东市', '3');

-- ----------------------------
-- Table structure for `place_province`
-- ----------------------------
DROP TABLE IF EXISTS `place_province`;
CREATE TABLE `place_province` (
  `id` int(20) NOT NULL COMMENT '唯一标识',
  `province` varchar(200) DEFAULT NULL COMMENT '省名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_province
-- ----------------------------
INSERT INTO `place_province` VALUES ('1', '湖南省');
INSERT INTO `place_province` VALUES ('2', '福建省');
INSERT INTO `place_province` VALUES ('3', '广东省');

-- ----------------------------
-- Table structure for `place_town`
-- ----------------------------
DROP TABLE IF EXISTS `place_town`;
CREATE TABLE `place_town` (
  `id` int(20) NOT NULL COMMENT '县id',
  `town` varchar(200) DEFAULT NULL COMMENT '县名',
  `city_id` int(20) DEFAULT NULL COMMENT '市级表id(外键)',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `place_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_town
-- ----------------------------
INSERT INTO `place_town` VALUES ('1', '沙县', '1');
INSERT INTO `place_town` VALUES ('2', '厦县', '2');
INSERT INTO `place_town` VALUES ('3', '广县', '3');

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

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `del_flag` tinyint(4) DEFAULT '0',
  `login_username` varchar(200) NOT NULL COMMENT '关联到登陆表',
  `identify_num` varchar(200) NOT NULL COMMENT '身份证号码',
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `login_pk` (`login_username`),
  CONSTRAINT `login_pk` FOREIGN KEY (`login_username`) REFERENCES `login_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7', null, 'admin123', '1234561111111111', '12345678@163.com');
