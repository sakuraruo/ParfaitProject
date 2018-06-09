/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : parfait

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-09 21:08:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '账户id',
  `user_id` bigint(12) NOT NULL COMMENT '用户id',
  `password` varchar(250) NOT NULL COMMENT '密码',
  `user_final_login_date` date DEFAULT NULL COMMENT '最近一次登陆时间',
  `account_name` varchar(50) DEFAULT NULL COMMENT '帐户名',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='账户表，与用户表一一对应';

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '1', 'sakura', '2018-05-14', '小木曾雪菜丶', '2018-05-14', '1', '2018-05-14');
INSERT INTO `account` VALUES ('2', '2', 'setsuna', '2018-05-14', 'sakuraruo', '2018-05-14', '1', '2018-05-14');
INSERT INTO `account` VALUES ('3', '3', 'ogiso', '2018-05-14', 'ogiso', '2018-05-14', '1', '2018-05-14');

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `album_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '专辑id，主键id，唯一标识',
  `album_name` varchar(50) DEFAULT NULL COMMENT '专辑名',
  `album_des` varchar(250) DEFAULT NULL COMMENT '专辑描述',
  `publish_time` date DEFAULT NULL COMMENT '发行时间',
  `singer_name` varchar(250) DEFAULT NULL COMMENT '歌手名',
  `publisher` varchar(250) DEFAULT NULL COMMENT '发行公司',
  `cover_id` bigint(12) DEFAULT NULL COMMENT '封面id',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='专辑表，存储专辑的信息';

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('1', 'WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～', '「アクアプラス作品キャラクター人気投票」で女性キャラクター1位に輝いた「冬馬かずさ」の「ヴォーカルCD」発売を記念して、オンリーセットを販売いたします！', '2016-12-29', '冬馬かずさ', 'AQUAPLUS', '1', '2018-04-03', '1', '2018-04-03');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '评论表id，主键id，唯一标识',
  `singles_id` bigint(12) DEFAULT NULL COMMENT '单曲id',
  `compliment_count` bigint(12) DEFAULT NULL COMMENT '点赞数',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表，存储所有单曲下的评论信息';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for cover
-- ----------------------------
DROP TABLE IF EXISTS `cover`;
CREATE TABLE `cover` (
  `cover_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '封面id，主键id，唯一标识',
  `cover_name` varchar(250) DEFAULT NULL COMMENT '封面名，指图片文件名',
  `cover_path` varchar(250) DEFAULT NULL COMMENT '封面路径',
  `cover_type` varchar(250) DEFAULT NULL COMMENT '封面类型',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`cover_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='封面表，存储所有封面图的信息';

-- ----------------------------
-- Records of cover
-- ----------------------------
INSERT INTO `cover` VALUES ('1', 'WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\albumcover\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～.jpg', 'album', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('2', 'After All~綴る想い~ (After All~谱写的心意~)', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\After All~綴る想い~ (After All~谱写的心意~).jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('3', 'Answer', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\Answer.jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('4', 'closing', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\closing.jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('5', 'POWDER SNOW', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\POWDER SNOW.jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('6', 'SOUND OF DESTINY', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\SOUND OF DESTINY.jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('7', 'Twinkle Snow', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\Twinkle Snow.jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('8', 'WHITE ALBUM', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\WHITE ALBUM.jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('9', '届かない恋 (无法传达的爱恋)', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\届かない恋.jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('10', '心はいつもあなたのそばに', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\心はいつもあなたのそばに.jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('11', '幸せな記憶', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\singlecover\\幸せな記憶.jpg', 'single', '2018-05-12', '1', '2018-05-12');
INSERT INTO `cover` VALUES ('12', '小木曾雪菜丶', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\usercover\\小木曾雪菜丶.jpg', 'user', '2018-05-14', '1', '2018-05-14');
INSERT INTO `cover` VALUES ('13', 'sakuraruo', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\usercover\\sakuraruo.jpg', 'user', '2018-05-14', '1', '2018-05-14');
INSERT INTO `cover` VALUES ('14', 'ogiso', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\img\\cover\\usercover\\ogiso.jpg', 'user', '2018-05-14', '1', '2018-05-14');

-- ----------------------------
-- Table structure for lyric
-- ----------------------------
DROP TABLE IF EXISTS `lyric`;
CREATE TABLE `lyric` (
  `lyric_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '歌词id，主键id，唯一标识',
  `singles_id` bigint(12) DEFAULT NULL COMMENT '单曲id',
  `lyric_path` varchar(250) DEFAULT NULL COMMENT '歌词文件路径',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`lyric_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='歌词表，存储歌词的所有信息';

-- ----------------------------
-- Records of lyric
-- ----------------------------
INSERT INTO `lyric` VALUES ('1', '1', 'C:\\\\Users\\\\sakuraruo\\\\Desktop\\\\ParfaitProject\\\\parfait-web\\\\src\\\\main\\\\webapp\\\\WEB-INF\\\\static\\\\video\\\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\After All~綴る想い~ (After All~谱写的心意~).lrc', '2018-05-10', '1', '2018-05-10');
INSERT INTO `lyric` VALUES ('2', '2', 'C:\\\\Users\\\\sakuraruo\\\\Desktop\\\\ParfaitProject\\\\parfait-web\\\\src\\\\main\\\\webapp\\\\WEB-INF\\\\static\\\\video\\\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\Answer.lrc', '2018-05-10', '1', '2018-05-10');
INSERT INTO `lyric` VALUES ('3', '3', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\video\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\closing.lrc', '2018-05-11', '1', '2018-05-11');
INSERT INTO `lyric` VALUES ('4', '4', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\video\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\POWDER SNOW.lrc', '2018-05-11', '1', '2018-05-11');
INSERT INTO `lyric` VALUES ('5', '5', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\video\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\SOUND OF DESTINY.lrc', '2018-05-16', '1', '2018-05-16');
INSERT INTO `lyric` VALUES ('6', '6', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\video\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\Twinkle Snow.lrc', '2018-05-16', '1', '2018-05-16');
INSERT INTO `lyric` VALUES ('7', '7', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\video\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\WHITE ALBUM.lrc', '2018-05-16', '1', '2018-05-16');
INSERT INTO `lyric` VALUES ('8', '8', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\video\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\届かない恋 (无法传达的爱恋).lrc', '2018-05-16', null, '2018-05-16');
INSERT INTO `lyric` VALUES ('9', '9', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\video\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\心はいつもあなたのそばに.lrc', '2018-05-16', '1', '2018-05-16');
INSERT INTO `lyric` VALUES ('10', '10', 'C:\\Users\\sakuraruo\\Desktop\\ParfaitProject\\parfait-web\\src\\main\\webapp\\WEB-INF\\static\\video\\WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～\\\\幸せな記憶.lrc', '2018-05-16', '1', '2018-05-16');

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `privilege_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '权限id，主键id，唯一标识',
  `privilege_name` varchar(50) DEFAULT NULL COMMENT '权限名',
  `privilege_path` varchar(250) DEFAULT NULL COMMENT '权限路径，有权才能访问的地址',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表，存储所有对应权限';

-- ----------------------------
-- Records of privilege
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '角色id，主键id，唯一标识',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表，不同角色拥有不同权限';

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege`;
CREATE TABLE `role_privilege` (
  `role_privilege_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '角色权限表id，主键id，唯一标识',
  `role_id` bigint(12) DEFAULT NULL COMMENT '角色表id，对应外键',
  `privilege_id` bigint(12) DEFAULT NULL COMMENT '权限表id，对应外键',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`role_privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表，角色所对应的权限';

-- ----------------------------
-- Records of role_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singer_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '歌手id，主键id，唯一标识',
  `singer_name` varchar(50) DEFAULT NULL COMMENT '歌手名',
  `singer_des` varchar(250) DEFAULT NULL COMMENT '歌手描述',
  `cover_id` bigint(12) DEFAULT NULL COMMENT '封面id',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='歌手表，存储歌手的信息';

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('1', '生天目仁美 ', '著名声优', '1', '2018-05-05', '1', '2018-05-05');

-- ----------------------------
-- Table structure for singles
-- ----------------------------
DROP TABLE IF EXISTS `singles`;
CREATE TABLE `singles` (
  `singles_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '单曲id，主键id，唯一标识',
  `singles_name` varchar(50) DEFAULT NULL COMMENT '单曲名',
  `singles_path` varchar(250) DEFAULT NULL COMMENT '单曲存放路径',
  `singles_duration` varchar(50) DEFAULT NULL COMMENT '音乐时长',
  `singles_des` varchar(250) DEFAULT NULL COMMENT '单曲描述',
  `album_id` bigint(12) DEFAULT NULL COMMENT '专辑id',
  `singer_id` bigint(12) DEFAULT NULL COMMENT '歌手id',
  `remark_id` bigint(12) DEFAULT NULL COMMENT '评论id',
  `cover_id` bigint(12) DEFAULT NULL COMMENT '封面id',
  `lyric_id` bigint(12) DEFAULT NULL COMMENT '歌词id',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`singles_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='单曲表，存储所有单曲信息';

-- ----------------------------
-- Records of singles
-- ----------------------------
INSERT INTO `singles` VALUES ('1', 'After All~綴る想い~ (After All~谱写的心意~)', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/After All~綴る想い~ (After All~谱写的心意~).mp3', '05:28', '永远的冬之回忆', '1', '1', null, '2', '1', '2018-04-03', '1', '2018-04-03');
INSERT INTO `singles` VALUES ('2', 'Answer', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/Answer.mp3', '04:55', '雪菜处刑曲', '1', '1', null, '3', '2', '2018-05-05', '1', '2018-05-05');
INSERT INTO `singles` VALUES ('3', 'closing', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/closing.mp3', '05:59', 'coda 冬马Te ED', '1', '1', null, '4', '3', '2018-05-05', '1', '2018-05-05');
INSERT INTO `singles` VALUES ('4', 'POWDER SNOW', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/POWDER SNOW.mp3', '05:07', 'WA经典歌曲', '1', '1', null, '5', '4', '2018-05-05', '1', '2018-05-05');
INSERT INTO `singles` VALUES ('5', 'SOUND OF DESTINY', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/SOUND OF DESTINY.mp3', '04:07', 'WA经典歌曲', '1', '1', null, '6', '5', '2018-05-11', '1', '2018-05-11');
INSERT INTO `singles` VALUES ('6', 'Twinkle Snow', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/Twinkle Snow.mp3', '06:52', '一首冬日恋歌', '1', '1', null, '7', '6', '2018-05-11', '1', '2018-05-11');
INSERT INTO `singles` VALUES ('7', 'WHITE ALBUM', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/WHITE ALBUM.mp3', '04:39', '白色相簿', '1', '1', null, '8', '7', '2018-05-11', '1', '2018-05-11');
INSERT INTO `singles` VALUES ('8', '届かない恋 (无法传达的爱恋)', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/届かない恋 (无法传达的爱恋).mp3', '05:05', '传达不到恋爱', '1', '1', null, '9', '8', '2018-05-11', '1', '2018-05-11');
INSERT INTO `singles` VALUES ('9', '心はいつもあなたのそばに', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/心はいつもあなたのそばに.mp3', '05:49', '冬马NE ED', '1', '1', null, '10', '9', '2018-05-11', '1', '2018-05-11');
INSERT INTO `singles` VALUES ('10', '幸せな記憶', '../video/WHITE ALBUM2 ORIGINAL SOUNDTRACK～kazusa～/幸せな記憶.mp3', '04:01', 'CC OP', '1', '1', null, '11', '10', '2018-05-11', '1', '2018-05-11');

-- ----------------------------
-- Table structure for songlist_single_rel
-- ----------------------------
DROP TABLE IF EXISTS `songlist_single_rel`;
CREATE TABLE `songlist_single_rel` (
  `songlist_single_id` bigint(12) NOT NULL,
  `song_list_id` bigint(12) DEFAULT NULL,
  `single_id` bigint(12) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_user` bigint(12) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`songlist_single_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌单单曲关系表';

-- ----------------------------
-- Records of songlist_single_rel
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '用户id，主键id，唯一标识',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `user_sex` char(2) DEFAULT NULL COMMENT '用户性别',
  `user_status` bigint(12) NOT NULL COMMENT '用户状态',
  `user_email` varchar(250) DEFAULT NULL COMMENT '用户邮箱',
  `user_phonenum` varchar(50) DEFAULT NULL COMMENT '用户手机号',
  `cover_id` bigint(12) DEFAULT NULL COMMENT '封面id',
  `create_date` date DEFAULT NULL COMMENT '记录创建时间',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改时期',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表，存储用户信息';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'sakura', null, '1000', null, null, '12', '2018-05-14', '1', '2018-05-14');
INSERT INTO `user` VALUES ('2', 'setsuna', null, '1000', null, null, '13', '2018-05-14', '1', '2018-05-14');
INSERT INTO `user` VALUES ('3', 'ogiso', null, '1000', null, null, '14', '2018-05-14', '1', '2018-05-14');

-- ----------------------------
-- Table structure for user_song_list
-- ----------------------------
DROP TABLE IF EXISTS `user_song_list`;
CREATE TABLE `user_song_list` (
  `user_song_list_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '用户歌单id，主键id，唯一标识',
  `user_song_list_name` varchar(250) DEFAULT NULL COMMENT '歌单名',
  `user_id` bigint(12) DEFAULT NULL COMMENT '所属人',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` bigint(12) DEFAULT NULL COMMENT '创建人',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`user_song_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户歌单，存储用户创建的所有歌单信息';

-- ----------------------------
-- Records of user_song_list
-- ----------------------------
