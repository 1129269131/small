/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : small

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-04-22 23:19:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_address`
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `consignee` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `detail_area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
INSERT INTO `tb_address` VALUES ('1', '1', '小王', '15259284087', '福建省', '莆田市', '秀屿区', '平海');

-- ----------------------------
-- Table structure for `tb_brand`
-- ----------------------------
DROP TABLE IF EXISTS `tb_brand`;
CREATE TABLE `tb_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `name` varchar(50) NOT NULL COMMENT '品牌名称',
  `image` varchar(200) DEFAULT '' COMMENT '品牌图片地址',
  `letter` char(1) DEFAULT '' COMMENT '品牌的首字母',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=325402 DEFAULT CHARSET=utf8 COMMENT='品牌表，一个品牌下有多个商品（spu），一对多关系';

-- ----------------------------
-- Records of tb_brand
-- ----------------------------
INSERT INTO `tb_brand` VALUES ('1115', 'HTC', '', 'H');
INSERT INTO `tb_brand` VALUES ('1528', 'LG', '', 'L');
INSERT INTO `tb_brand` VALUES ('1912', 'NEC', '', 'N');
INSERT INTO `tb_brand` VALUES ('2032', 'OPPO', 'http://img10.360buyimg.com/popshop/jfs/t2119/133/2264148064/4303/b8ab3755/56b2f385N8e4eb051.jpg', 'O');
INSERT INTO `tb_brand` VALUES ('2505', 'TCL', '', 'T');
INSERT INTO `tb_brand` VALUES ('3177', '爱贝多', '', 'A');
INSERT INTO `tb_brand` VALUES ('3539', '安桥（ONKYO）', '', 'A');
INSERT INTO `tb_brand` VALUES ('3941', '白金（PLATINUM）', '', 'B');
INSERT INTO `tb_brand` VALUES ('4986', '波导（BiRD）', '', 'B');
INSERT INTO `tb_brand` VALUES ('6522', '朵唯（DOOV）', '', 'D');
INSERT INTO `tb_brand` VALUES ('6742', '飞利浦（PHILIPS）', 'http://img12.360buyimg.com/popshop/jfs/t18361/122/1318410299/1870/36fe70c9/5ac43a4dNa44a0ce0.jpg', 'F');
INSERT INTO `tb_brand` VALUES ('7174', '富可视（InFocus）', '', 'F');
INSERT INTO `tb_brand` VALUES ('7203', '富士通（Fujitsu）', '', 'F');
INSERT INTO `tb_brand` VALUES ('7420', '格力（GREE）', '', 'G');
INSERT INTO `tb_brand` VALUES ('7817', '海尔（Haier）', 'http://image.leyou.com/group1/M00/00/00/wKg4ZVrYZcyAVOzoAAB846UcmLg013.png', 'H');
INSERT INTO `tb_brand` VALUES ('7888', '海信（Hisense）', '', 'H');
INSERT INTO `tb_brand` VALUES ('8214', '黑莓（BlackBerry）', '', 'H');
INSERT INTO `tb_brand` VALUES ('8551', '华硕（ASUS）', '', 'H');
INSERT INTO `tb_brand` VALUES ('8557', '华为（HUAWEI）', 'http://img10.360buyimg.com/popshop/jfs/t5662/36/8888655583/7806/1c629c01/598033b4Nd6055897.jpg', 'H');
INSERT INTO `tb_brand` VALUES ('8740', '惠普（HP）', '', 'H');
INSERT INTO `tb_brand` VALUES ('9420', '金立（Gionee）', '', 'J');
INSERT INTO `tb_brand` VALUES ('9637', '京瓷（KYOCERA）', '', 'J');
INSERT INTO `tb_brand` VALUES ('10317', '康佳（KONKA）', '', 'K');
INSERT INTO `tb_brand` VALUES ('10640', '酷派（Coolpad）', 'http://img10.360buyimg.com/popshop/jfs/t2521/347/883897149/3732/91c917ec/5670cf96Ncffa2ae6.jpg', 'K');
INSERT INTO `tb_brand` VALUES ('11516', '联想（Lenovo）', 'http://img11.360buyimg.com/popshop/jfs/t6799/74/1348425607/15774/bc286188/59804c98N1944175e.jpg', 'L');
INSERT INTO `tb_brand` VALUES ('12286', '漫步者（EDIFIER）', '', 'M');
INSERT INTO `tb_brand` VALUES ('12669', '魅族（MEIZU）', 'http://img13.360buyimg.com/popshop/jfs/t3511/131/31887105/4943/48f83fa9/57fdf4b8N6e95624d.jpg', 'M');
INSERT INTO `tb_brand` VALUES ('13066', '摩托罗拉（Motorola）', '', 'M');
INSERT INTO `tb_brand` VALUES ('13539', '诺基亚（NOKIA）', 'http://img11.360buyimg.com/popshop/jfs/t2572/102/189476501/7717/16cc5814/563b33d4N6c59780c.jpg', 'N');
INSERT INTO `tb_brand` VALUES ('14026', 'Apple', 'http://img12.360buyimg.com/popshop/jfs/t2989/240/151377693/3895/30ad9044/574d36dbN262ef26d.jpg', 'A');
INSERT INTO `tb_brand` VALUES ('14478', '青橙（GreenOrange）', '', 'Q');
INSERT INTO `tb_brand` VALUES ('15127', '三星（SAMSUNG）', 'http://img14.360buyimg.com/popshop/jfs/t2701/34/484677369/7439/ee13e8fa/5716e2c4Nc925baf3.jpg', 'S');
INSERT INTO `tb_brand` VALUES ('15539', '神舟（HASEE）', '', 'S');
INSERT INTO `tb_brand` VALUES ('16506', '索爱（soaiy）', '', 'S');
INSERT INTO `tb_brand` VALUES ('16538', '索尼（SONY）', '', 'S');
INSERT INTO `tb_brand` VALUES ('16975', '天语（K-Touch）', '', 'T');
INSERT INTO `tb_brand` VALUES ('17193', '外星人（Alienware）', '', 'W');
INSERT INTO `tb_brand` VALUES ('17424', '威图', '', 'W');
INSERT INTO `tb_brand` VALUES ('17440', '微软（Microsoft）', '', 'W');
INSERT INTO `tb_brand` VALUES ('18078', 'NAMO', '', 'N');
INSERT INTO `tb_brand` VALUES ('18362', '小辣椒', 'http://img14.360buyimg.com/popshop/g14/M00/09/10/rBEhV1K6uOwIAAAAAAAGxx0kTvQAAHWYwPIloIAAAbf434.png', 'X');
INSERT INTO `tb_brand` VALUES ('18374', '小米（MI）', 'http://img10.360buyimg.com/popshop/jfs/t7084/169/439244907/4647/724c7958/598042c9N6e4e79e5.jpg', 'X');
INSERT INTO `tb_brand` VALUES ('20130', '优思（Uniscope）', '', 'Y');
INSERT INTO `tb_brand` VALUES ('20710', '长虹（CHANGHONG）', '', 'C');
INSERT INTO `tb_brand` VALUES ('21011', '中兴（ZTE）', 'http://img13.360buyimg.com/popshop/jfs/t2551/271/1317227522/3284/7419745e/56a855a3Ne38ee719.jpg', 'Z');
INSERT INTO `tb_brand` VALUES ('21360', 'beats', '', 'b');
INSERT INTO `tb_brand` VALUES ('21553', '本易（BENEVE）', '', 'B');
INSERT INTO `tb_brand` VALUES ('22261', 'tonino lamborghini', '', 'T');
INSERT INTO `tb_brand` VALUES ('22575', '布鲁雅尔（Blueair）', '', 'B');
INSERT INTO `tb_brand` VALUES ('23049', '广信（KINGSUN）', '', 'G');
INSERT INTO `tb_brand` VALUES ('23130', '夏普（SHARP）', 'http://img12.360buyimg.com/popshop/jfs/t2458/315/2153417538/12751/2ff4e617/56b15fe9Naae1551d.jpg', 'X');
INSERT INTO `tb_brand` VALUES ('25376', '马歇尔（Marshall）', '', 'M');
INSERT INTO `tb_brand` VALUES ('25591', 'vivo', 'http://img13.360buyimg.com/popshop/jfs/t2458/318/1092287831/5774/b7b4ff89/563b3484N9ba68e13.jpg', 'V');
INSERT INTO `tb_brand` VALUES ('27094', '努比亚（nubia）', 'http://img14.360buyimg.com/popshop/jfs/t2101/155/882410684/3730/b24b14db/5631cd12N7548352d.jpg', 'N');
INSERT INTO `tb_brand` VALUES ('27306', '360', 'http://img10.360buyimg.com/popshop/jfs/t5182/149/2437584670/15334/2e1ebf3/591aa1abN602ebecf.jpg', 'S');
INSERT INTO `tb_brand` VALUES ('32315', '其他', '', 'Q');
INSERT INTO `tb_brand` VALUES ('36404', '金圣达（GRSED）', '', 'J');
INSERT INTO `tb_brand` VALUES ('36652', '贝尔丰（BIFER）', '', 'B');
INSERT INTO `tb_brand` VALUES ('36654', '大显（DaXian）', '', 'D');
INSERT INTO `tb_brand` VALUES ('36657', '朗界（RugGear）', '', 'L');
INSERT INTO `tb_brand` VALUES ('38125', 'SUGAR', '', 'S');
INSERT INTO `tb_brand` VALUES ('38126', '美图（meitu）', 'http://img14.360buyimg.com/popshop/jfs/t3553/225/1930378991/5787/c2ebdd72/5836e479N88a98abb.jpg', 'M');
INSERT INTO `tb_brand` VALUES ('38605', 'MANN', '', 'M');
INSERT INTO `tb_brand` VALUES ('43644', '21KE', '', 'E');
INSERT INTO `tb_brand` VALUES ('45227', '易百年', '', 'Y');
INSERT INTO `tb_brand` VALUES ('45693', '威途（vertu）', '', 'V');
INSERT INTO `tb_brand` VALUES ('45757', '欧奇（ouki）', '', 'o');
INSERT INTO `tb_brand` VALUES ('49144', 'SPIGEN', '', 'S');
INSERT INTO `tb_brand` VALUES ('50450', '亿和源（YHYON）', '', 'Y');
INSERT INTO `tb_brand` VALUES ('51040', 'BIHEE', '', 'B');
INSERT INTO `tb_brand` VALUES ('52302', '优购（UooGou）', '', 'Y');
INSERT INTO `tb_brand` VALUES ('53317', '迪美（DIM）', '', 'D');
INSERT INTO `tb_brand` VALUES ('54347', '尼凯恩（neken）', '', 'N');
INSERT INTO `tb_brand` VALUES ('55524', 'B&O PLAY', '', 'B');
INSERT INTO `tb_brand` VALUES ('56411', '誉品（YEPEN）', '', 'Y');
INSERT INTO `tb_brand` VALUES ('59110', '诺亚信（NOAIN）', '', 'N');
INSERT INTO `tb_brand` VALUES ('60106', '奥乐迪奥（AoleDior）', '', 'A');
INSERT INTO `tb_brand` VALUES ('63032', '一加', 'http://img14.360buyimg.com/popshop/jfs/t2398/233/975959106/6263/a786f5b8/563b33ffN9c288c6c.jpg', 'Y');
INSERT INTO `tb_brand` VALUES ('63833', '雷蛇（Razer）', '', 'L');
INSERT INTO `tb_brand` VALUES ('68927', '詹姆士（GERMY）', '', 'G');
INSERT INTO `tb_brand` VALUES ('89010', '纽曼（Newman）', '', 'N');
INSERT INTO `tb_brand` VALUES ('91515', '锤子（smartisan）', 'http://img13.360buyimg.com/popshop/jfs/t1954/102/907711365/5487/9f26868f/5631ccdeNe8df5efb.jpg', 'C');
INSERT INTO `tb_brand` VALUES ('102501', '赛博宇华（SOP）', '', 'S');
INSERT INTO `tb_brand` VALUES ('104490', '谷歌（Google）', '', 'G');
INSERT INTO `tb_brand` VALUES ('109150', '爱贝多（Babyfit）', '', 'A');
INSERT INTO `tb_brand` VALUES ('110303', '万利达（Malata）', '', 'W');
INSERT INTO `tb_brand` VALUES ('113718', '优它（YOTAPHONE）', '', 'Y');
INSERT INTO `tb_brand` VALUES ('114119', 'TETC', '', 'T');
INSERT INTO `tb_brand` VALUES ('123856', '炫华（xuanhua）', '', 'X');
INSERT INTO `tb_brand` VALUES ('128080', '托尼洛·兰博基尼（Tonino Lamborghini）', '', 'T');
INSERT INTO `tb_brand` VALUES ('129098', '木糖醇（MuTuCu）', '', 'M');
INSERT INTO `tb_brand` VALUES ('130455', '爱玛（EMMA）', '', 'A');
INSERT INTO `tb_brand` VALUES ('131546', '硕尼姆（Sonim）', '', 'S');
INSERT INTO `tb_brand` VALUES ('133747', 'CAT', '', 'C');
INSERT INTO `tb_brand` VALUES ('134922', 'ZUK', '', 'Z');
INSERT INTO `tb_brand` VALUES ('135967', 'sungee', '', 'S');
INSERT INTO `tb_brand` VALUES ('149070', 'AGM', '', 'A');
INSERT INTO `tb_brand` VALUES ('151370', 'SOYES', '', 'S');
INSERT INTO `tb_brand` VALUES ('151844', 'KODAK', '', 'K');
INSERT INTO `tb_brand` VALUES ('155608', '施耐德（schneider）', '', 'S');
INSERT INTO `tb_brand` VALUES ('159313', 'MOQI', '', 'M');
INSERT INTO `tb_brand` VALUES ('174275', 'Essentials', '', 'E');
INSERT INTO `tb_brand` VALUES ('178969', 'SAMWEI', '', 'S');
INSERT INTO `tb_brand` VALUES ('179105', '小霸王（SUBOR）', '', 'X');
INSERT INTO `tb_brand` VALUES ('179528', 'VETAS', '', 'V');
INSERT INTO `tb_brand` VALUES ('179624', '优学派', '', 'Y');
INSERT INTO `tb_brand` VALUES ('180213', '纽曼（Newman）', '', 'N');
INSERT INTO `tb_brand` VALUES ('194213', 'DEVIALET', '', 'D');
INSERT INTO `tb_brand` VALUES ('196065', 'SHANGPREE', '', 'S');
INSERT INTO `tb_brand` VALUES ('197126', 'IMOO', '', 'I');
INSERT INTO `tb_brand` VALUES ('203084', 'FNNI', '', 'F');
INSERT INTO `tb_brand` VALUES ('204089', '小格雷', '', 'X');
INSERT INTO `tb_brand` VALUES ('205278', 'COTTEE', '', 'C');
INSERT INTO `tb_brand` VALUES ('209178', 'YAAO', '', 'Y');
INSERT INTO `tb_brand` VALUES ('214915', '纽曼', '', 'N');
INSERT INTO `tb_brand` VALUES ('219484', 'CONQUEST', '', 'C');
INSERT INTO `tb_brand` VALUES ('221149', '铂爵（BIOJUET）', '', 'B');
INSERT INTO `tb_brand` VALUES ('222294', '荣耀', '', 'R');
INSERT INTO `tb_brand` VALUES ('223023', '保千里（PROTRULY）', '', 'B');
INSERT INTO `tb_brand` VALUES ('223199', 'Blu', '', 'B');
INSERT INTO `tb_brand` VALUES ('223316', 'unruly', '', 'U');
INSERT INTO `tb_brand` VALUES ('225085', 'Tonino Lamborghini', '', 'T');
INSERT INTO `tb_brand` VALUES ('228280', '守护宝', '', 'S');
INSERT INTO `tb_brand` VALUES ('233984', '8848', '', 'B');
INSERT INTO `tb_brand` VALUES ('234746', 'Gold Elite', '', 'G');
INSERT INTO `tb_brand` VALUES ('238798', 'HONOR', '', 'H');
INSERT INTO `tb_brand` VALUES ('240112', 'BIXING', '', 'B');
INSERT INTO `tb_brand` VALUES ('246053', '锐族', '', 'R');
INSERT INTO `tb_brand` VALUES ('247149', '国美（GOME）', '', 'G');
INSERT INTO `tb_brand` VALUES ('247652', '中兴健康（ZTE Health）', '', 'Z');
INSERT INTO `tb_brand` VALUES ('248132', 'YOSTAR', '', 'Y');
INSERT INTO `tb_brand` VALUES ('249404', '创星', '', 'C');
INSERT INTO `tb_brand` VALUES ('253520', 'VERTU', '', 'V');
INSERT INTO `tb_brand` VALUES ('261196', 'LBER', '', 'L');
INSERT INTO `tb_brand` VALUES ('261480', '滝风（ION MEDIC）', '', 'L');
INSERT INTO `tb_brand` VALUES ('262180', '梦幻门（MENG HUAN MEN）', '', 'M');
INSERT INTO `tb_brand` VALUES ('262334', '意龍（E&L）', '', 'Y');
INSERT INTO `tb_brand` VALUES ('264451', '艾尼卡（Anica）', '', 'A');
INSERT INTO `tb_brand` VALUES ('265247', 'DMZ DAMUZHI', '', 'D');
INSERT INTO `tb_brand` VALUES ('267981', 'UNNO', '', 'U');
INSERT INTO `tb_brand` VALUES ('271696', '红鸟', '', 'H');
INSERT INTO `tb_brand` VALUES ('276102', '紐萬（Niuwan）', '', 'N');
INSERT INTO `tb_brand` VALUES ('276381', 'Podor', '', 'B');
INSERT INTO `tb_brand` VALUES ('276780', '海语（HAIYU）', '', 'H');
INSERT INTO `tb_brand` VALUES ('278268', 'YISON', '', 'Y');
INSERT INTO `tb_brand` VALUES ('278755', 'SOAP', '', 'S');
INSERT INTO `tb_brand` VALUES ('279173', 'renebelle', '', 'R');
INSERT INTO `tb_brand` VALUES ('280120', 'AKESR', '', 'A');
INSERT INTO `tb_brand` VALUES ('280152', 'YOTA', '', 'Y');
INSERT INTO `tb_brand` VALUES ('284571', 'HOOLFINE', '', 'H');
INSERT INTO `tb_brand` VALUES ('285331', '金柏利', '', 'J');
INSERT INTO `tb_brand` VALUES ('286273', 'BLACKPOULO', '', 'B');
INSERT INTO `tb_brand` VALUES ('287292', 'SIMPLEWAY', '', 'S');
INSERT INTO `tb_brand` VALUES ('290104', 'KaiDC', '', 'K');
INSERT INTO `tb_brand` VALUES ('290682', '奥缇斯（autrise）', '', 'A');
INSERT INTO `tb_brand` VALUES ('302250', '橄榄树（Olive tree）', '', 'G');
INSERT INTO `tb_brand` VALUES ('304654', 'HIGE', '', 'H');
INSERT INTO `tb_brand` VALUES ('314866', '360手机', '', 'S');
INSERT INTO `tb_brand` VALUES ('316578', '克里特（kreta）', '', 'k');
INSERT INTO `tb_brand` VALUES ('316596', 'HOOLFINE', '', 'H');
INSERT INTO `tb_brand` VALUES ('316618', 'RONXS', '', 'R');
INSERT INTO `tb_brand` VALUES ('325396', '飞利浦（PHILIPS）', '', 'P');
INSERT INTO `tb_brand` VALUES ('325398', '比亚兹（ESK）', '', 'B');
INSERT INTO `tb_brand` VALUES ('325399', '亿色(ESR)', '', 'Y');
INSERT INTO `tb_brand` VALUES ('325401', '黑马', 'http://image.leyou.com/group1/M00/00/00/wKg4ZVro8haAdtRLAALAv4YTyno368.png', 'H');

-- ----------------------------
-- Table structure for `tb_category`
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类目id',
  `name` varchar(20) NOT NULL COMMENT '类目名称',
  `parent_id` bigint(20) NOT NULL COMMENT '父类目id,顶级类目填0',
  `is_parent` tinyint(1) NOT NULL COMMENT '是否为父节点，0为否，1为是',
  `sort` int(4) NOT NULL COMMENT '排序指数，越小越靠前',
  PRIMARY KEY (`id`),
  KEY `key_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1424 DEFAULT CHARSET=utf8 COMMENT='商品类目表，类目和商品(spu)是一对多关系，类目与品牌是多对多关系';

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('1', '图书、音像、电子书刊', '0', '1', '1');
INSERT INTO `tb_category` VALUES ('2', '电子书刊', '1', '1', '1');
INSERT INTO `tb_category` VALUES ('3', '电子书', '2', '0', '1');
INSERT INTO `tb_category` VALUES ('4', '网络原创', '2', '0', '2');
INSERT INTO `tb_category` VALUES ('5', '数字杂志', '2', '0', '3');
INSERT INTO `tb_category` VALUES ('6', '多媒体图书', '2', '0', '4');
INSERT INTO `tb_category` VALUES ('7', '音像', '1', '1', '2');
INSERT INTO `tb_category` VALUES ('8', '音乐', '7', '0', '1');
INSERT INTO `tb_category` VALUES ('9', '影视', '7', '0', '2');
INSERT INTO `tb_category` VALUES ('10', '教育音像', '7', '0', '3');
INSERT INTO `tb_category` VALUES ('11', '英文原版', '1', '1', '3');
INSERT INTO `tb_category` VALUES ('12', '少儿', '11', '0', '1');
INSERT INTO `tb_category` VALUES ('13', '商务投资', '11', '0', '2');
INSERT INTO `tb_category` VALUES ('14', '英语学习与考试', '11', '0', '3');
INSERT INTO `tb_category` VALUES ('15', '文学', '11', '0', '4');
INSERT INTO `tb_category` VALUES ('16', '传记', '11', '0', '5');
INSERT INTO `tb_category` VALUES ('17', '励志', '11', '0', '6');
INSERT INTO `tb_category` VALUES ('18', '文艺', '1', '1', '4');
INSERT INTO `tb_category` VALUES ('19', '小说', '18', '0', '1');
INSERT INTO `tb_category` VALUES ('20', '文学', '18', '0', '2');
INSERT INTO `tb_category` VALUES ('21', '青春文学', '18', '0', '3');
INSERT INTO `tb_category` VALUES ('22', '传记', '18', '0', '4');
INSERT INTO `tb_category` VALUES ('23', '艺术', '18', '0', '5');
INSERT INTO `tb_category` VALUES ('24', '少儿', '1', '1', '5');
INSERT INTO `tb_category` VALUES ('25', '少儿', '24', '0', '1');
INSERT INTO `tb_category` VALUES ('26', '0-2岁', '24', '0', '2');
INSERT INTO `tb_category` VALUES ('27', '3-6岁', '24', '0', '3');
INSERT INTO `tb_category` VALUES ('28', '7-10岁', '24', '0', '4');
INSERT INTO `tb_category` VALUES ('29', '11-14岁', '24', '0', '5');
INSERT INTO `tb_category` VALUES ('30', '人文社科', '1', '1', '6');
INSERT INTO `tb_category` VALUES ('31', '历史', '30', '0', '1');
INSERT INTO `tb_category` VALUES ('32', '哲学', '30', '0', '2');
INSERT INTO `tb_category` VALUES ('33', '国学', '30', '0', '3');
INSERT INTO `tb_category` VALUES ('34', '政治/军事', '30', '0', '4');
INSERT INTO `tb_category` VALUES ('35', '法律', '30', '0', '5');
INSERT INTO `tb_category` VALUES ('36', '人文社科', '30', '0', '6');
INSERT INTO `tb_category` VALUES ('37', '心理学', '30', '0', '7');
INSERT INTO `tb_category` VALUES ('38', '文化', '30', '0', '8');
INSERT INTO `tb_category` VALUES ('39', '社会科学', '30', '0', '9');
INSERT INTO `tb_category` VALUES ('40', '经管励志', '1', '1', '7');
INSERT INTO `tb_category` VALUES ('41', '经济', '40', '0', '1');
INSERT INTO `tb_category` VALUES ('42', '金融与投资', '40', '0', '2');
INSERT INTO `tb_category` VALUES ('43', '管理', '40', '0', '3');
INSERT INTO `tb_category` VALUES ('44', '励志与成功', '40', '0', '4');
INSERT INTO `tb_category` VALUES ('45', '生活', '1', '1', '8');
INSERT INTO `tb_category` VALUES ('46', '生活', '45', '0', '1');
INSERT INTO `tb_category` VALUES ('47', '健身与保健', '45', '0', '2');
INSERT INTO `tb_category` VALUES ('48', '家庭与育儿', '45', '0', '3');
INSERT INTO `tb_category` VALUES ('49', '旅游', '45', '0', '4');
INSERT INTO `tb_category` VALUES ('50', '烹饪美食', '45', '0', '5');
INSERT INTO `tb_category` VALUES ('51', '科技', '1', '1', '9');
INSERT INTO `tb_category` VALUES ('52', '工业技术', '51', '0', '1');
INSERT INTO `tb_category` VALUES ('53', '科普读物', '51', '0', '2');
INSERT INTO `tb_category` VALUES ('54', '建筑', '51', '0', '3');
INSERT INTO `tb_category` VALUES ('55', '医学', '51', '0', '4');
INSERT INTO `tb_category` VALUES ('56', '科学与自然', '51', '0', '5');
INSERT INTO `tb_category` VALUES ('57', '计算机与互联网', '51', '0', '6');
INSERT INTO `tb_category` VALUES ('58', '电子通信', '51', '0', '7');
INSERT INTO `tb_category` VALUES ('59', '教育', '1', '1', '10');
INSERT INTO `tb_category` VALUES ('60', '中小学教辅', '59', '0', '1');
INSERT INTO `tb_category` VALUES ('61', '教育与考试', '59', '0', '2');
INSERT INTO `tb_category` VALUES ('62', '外语学习', '59', '0', '3');
INSERT INTO `tb_category` VALUES ('63', '大中专教材', '59', '0', '4');
INSERT INTO `tb_category` VALUES ('64', '字典词典', '59', '0', '5');
INSERT INTO `tb_category` VALUES ('65', '港台图书', '1', '1', '11');
INSERT INTO `tb_category` VALUES ('66', '艺术/设计/收藏', '65', '0', '1');
INSERT INTO `tb_category` VALUES ('67', '经济管理', '65', '0', '2');
INSERT INTO `tb_category` VALUES ('68', '文化/学术', '65', '0', '3');
INSERT INTO `tb_category` VALUES ('69', '少儿', '65', '0', '4');
INSERT INTO `tb_category` VALUES ('70', '其他', '1', '1', '12');
INSERT INTO `tb_category` VALUES ('71', '工具书', '70', '0', '1');
INSERT INTO `tb_category` VALUES ('72', '杂志/期刊', '70', '0', '2');
INSERT INTO `tb_category` VALUES ('73', '套装书', '70', '0', '3');
INSERT INTO `tb_category` VALUES ('74', '手机', '0', '1', '2');
INSERT INTO `tb_category` VALUES ('75', '手机通讯', '74', '1', '1');
INSERT INTO `tb_category` VALUES ('76', '手机', '75', '0', '1');
INSERT INTO `tb_category` VALUES ('77', '对讲机', '75', '0', '2');
INSERT INTO `tb_category` VALUES ('78', '运营商', '74', '1', '2');
INSERT INTO `tb_category` VALUES ('79', '合约机', '78', '0', '1');
INSERT INTO `tb_category` VALUES ('80', '选号中心', '78', '0', '2');
INSERT INTO `tb_category` VALUES ('81', '装宽带', '78', '0', '3');
INSERT INTO `tb_category` VALUES ('82', '办套餐', '78', '0', '4');
INSERT INTO `tb_category` VALUES ('83', '手机配件', '74', '1', '3');
INSERT INTO `tb_category` VALUES ('84', '移动电源', '83', '0', '1');
INSERT INTO `tb_category` VALUES ('85', '电池/移动电源', '83', '0', '2');
INSERT INTO `tb_category` VALUES ('86', '蓝牙耳机', '83', '0', '3');
INSERT INTO `tb_category` VALUES ('87', '充电器/数据线', '83', '0', '4');
INSERT INTO `tb_category` VALUES ('88', '苹果周边', '83', '0', '5');
INSERT INTO `tb_category` VALUES ('89', '手机耳机', '83', '0', '6');
INSERT INTO `tb_category` VALUES ('90', '手机贴膜', '83', '0', '7');
INSERT INTO `tb_category` VALUES ('91', '手机存储卡', '83', '0', '8');
INSERT INTO `tb_category` VALUES ('92', '充电器', '83', '0', '9');
INSERT INTO `tb_category` VALUES ('93', '数据线', '83', '0', '10');
INSERT INTO `tb_category` VALUES ('94', '手机保护套', '83', '0', '11');
INSERT INTO `tb_category` VALUES ('95', '车载配件', '83', '0', '12');
INSERT INTO `tb_category` VALUES ('96', 'iPhone 配件', '83', '0', '13');
INSERT INTO `tb_category` VALUES ('97', '手机电池', '83', '0', '14');
INSERT INTO `tb_category` VALUES ('98', '创意配件', '83', '0', '15');
INSERT INTO `tb_category` VALUES ('99', '便携/无线音响', '83', '0', '16');
INSERT INTO `tb_category` VALUES ('100', '手机饰品', '83', '0', '17');
INSERT INTO `tb_category` VALUES ('101', '拍照配件', '83', '0', '18');
INSERT INTO `tb_category` VALUES ('102', '手机支架', '83', '0', '19');
INSERT INTO `tb_category` VALUES ('103', '家用电器', '0', '1', '3');
INSERT INTO `tb_category` VALUES ('104', '大 家 电', '103', '1', '1');
INSERT INTO `tb_category` VALUES ('105', '平板电视', '104', '0', '1');
INSERT INTO `tb_category` VALUES ('106', '空调', '104', '0', '2');
INSERT INTO `tb_category` VALUES ('107', '冰箱', '104', '0', '3');
INSERT INTO `tb_category` VALUES ('108', '洗衣机', '104', '0', '4');
INSERT INTO `tb_category` VALUES ('109', '家庭影院', '104', '0', '5');
INSERT INTO `tb_category` VALUES ('110', 'DVD/电视盒子', '104', '0', '6');
INSERT INTO `tb_category` VALUES ('111', '迷你音响', '104', '0', '7');
INSERT INTO `tb_category` VALUES ('112', '冷柜/冰吧', '104', '0', '8');
INSERT INTO `tb_category` VALUES ('113', '家电配件', '104', '0', '9');
INSERT INTO `tb_category` VALUES ('114', '功放', '104', '0', '10');
INSERT INTO `tb_category` VALUES ('115', '回音壁/Soundbar', '104', '0', '11');
INSERT INTO `tb_category` VALUES ('116', 'Hi-Fi专区', '104', '0', '12');
INSERT INTO `tb_category` VALUES ('117', '电视盒子', '104', '0', '13');
INSERT INTO `tb_category` VALUES ('118', '酒柜', '104', '0', '14');
INSERT INTO `tb_category` VALUES ('119', '厨卫大电', '103', '1', '2');
INSERT INTO `tb_category` VALUES ('120', '燃气灶', '119', '0', '1');
INSERT INTO `tb_category` VALUES ('121', '油烟机', '119', '0', '2');
INSERT INTO `tb_category` VALUES ('122', '热水器', '119', '0', '3');
INSERT INTO `tb_category` VALUES ('123', '消毒柜', '119', '0', '4');
INSERT INTO `tb_category` VALUES ('124', '洗碗机', '119', '0', '5');
INSERT INTO `tb_category` VALUES ('125', '厨房小电', '103', '1', '3');
INSERT INTO `tb_category` VALUES ('126', '料理机', '125', '0', '1');
INSERT INTO `tb_category` VALUES ('127', '榨汁机', '125', '0', '2');
INSERT INTO `tb_category` VALUES ('128', '电饭煲', '125', '0', '3');
INSERT INTO `tb_category` VALUES ('129', '电压力锅', '125', '0', '4');
INSERT INTO `tb_category` VALUES ('130', '豆浆机', '125', '0', '5');
INSERT INTO `tb_category` VALUES ('131', '咖啡机', '125', '0', '6');
INSERT INTO `tb_category` VALUES ('132', '微波炉', '125', '0', '7');
INSERT INTO `tb_category` VALUES ('133', '电烤箱', '125', '0', '8');
INSERT INTO `tb_category` VALUES ('134', '电磁炉', '125', '0', '9');
INSERT INTO `tb_category` VALUES ('135', '面包机', '125', '0', '10');
INSERT INTO `tb_category` VALUES ('136', '煮蛋器', '125', '0', '11');
INSERT INTO `tb_category` VALUES ('137', '酸奶机', '125', '0', '12');
INSERT INTO `tb_category` VALUES ('138', '电炖锅', '125', '0', '13');
INSERT INTO `tb_category` VALUES ('139', '电水壶/热水瓶', '125', '0', '14');
INSERT INTO `tb_category` VALUES ('140', '电饼铛', '125', '0', '15');
INSERT INTO `tb_category` VALUES ('141', '多用途锅', '125', '0', '16');
INSERT INTO `tb_category` VALUES ('142', '电烧烤炉', '125', '0', '17');
INSERT INTO `tb_category` VALUES ('143', '果蔬解毒机', '125', '0', '18');
INSERT INTO `tb_category` VALUES ('144', '其它厨房电器', '125', '0', '19');
INSERT INTO `tb_category` VALUES ('145', '养生壶/煎药壶', '125', '0', '20');
INSERT INTO `tb_category` VALUES ('146', '电热饭盒', '125', '0', '21');
INSERT INTO `tb_category` VALUES ('147', '生活电器', '103', '1', '4');
INSERT INTO `tb_category` VALUES ('148', '取暖电器', '147', '0', '1');
INSERT INTO `tb_category` VALUES ('149', '净化器', '147', '0', '2');
INSERT INTO `tb_category` VALUES ('150', '加湿器', '147', '0', '3');
INSERT INTO `tb_category` VALUES ('151', '扫地机器人', '147', '0', '4');
INSERT INTO `tb_category` VALUES ('152', '吸尘器', '147', '0', '5');
INSERT INTO `tb_category` VALUES ('153', '挂烫机/熨斗', '147', '0', '6');
INSERT INTO `tb_category` VALUES ('154', '插座', '147', '0', '7');
INSERT INTO `tb_category` VALUES ('155', '电话机', '147', '0', '8');
INSERT INTO `tb_category` VALUES ('156', '清洁机', '147', '0', '9');
INSERT INTO `tb_category` VALUES ('157', '除湿机', '147', '0', '10');
INSERT INTO `tb_category` VALUES ('158', '干衣机', '147', '0', '11');
INSERT INTO `tb_category` VALUES ('159', '收录/音机', '147', '0', '12');
INSERT INTO `tb_category` VALUES ('160', '电风扇', '147', '0', '13');
INSERT INTO `tb_category` VALUES ('161', '冷风扇', '147', '0', '14');
INSERT INTO `tb_category` VALUES ('162', '其它生活电器', '147', '0', '15');
INSERT INTO `tb_category` VALUES ('163', '生活电器配件', '147', '0', '16');
INSERT INTO `tb_category` VALUES ('164', '净水器', '147', '0', '17');
INSERT INTO `tb_category` VALUES ('165', '饮水机', '147', '0', '18');
INSERT INTO `tb_category` VALUES ('166', '个护健康', '103', '1', '5');
INSERT INTO `tb_category` VALUES ('167', '剃须刀', '166', '0', '1');
INSERT INTO `tb_category` VALUES ('168', '剃/脱毛器', '166', '0', '2');
INSERT INTO `tb_category` VALUES ('169', '口腔护理', '166', '0', '3');
INSERT INTO `tb_category` VALUES ('170', '电吹风', '166', '0', '4');
INSERT INTO `tb_category` VALUES ('171', '美容器', '166', '0', '5');
INSERT INTO `tb_category` VALUES ('172', '理发器', '166', '0', '6');
INSERT INTO `tb_category` VALUES ('173', '卷/直发器', '166', '0', '7');
INSERT INTO `tb_category` VALUES ('174', '按摩椅', '166', '0', '8');
INSERT INTO `tb_category` VALUES ('175', '按摩器', '166', '0', '9');
INSERT INTO `tb_category` VALUES ('176', '足浴盆', '166', '0', '10');
INSERT INTO `tb_category` VALUES ('177', '血压计', '166', '0', '11');
INSERT INTO `tb_category` VALUES ('178', '电子秤/厨房秤', '166', '0', '12');
INSERT INTO `tb_category` VALUES ('179', '血糖仪', '166', '0', '13');
INSERT INTO `tb_category` VALUES ('180', '体温计', '166', '0', '14');
INSERT INTO `tb_category` VALUES ('181', '其它健康电器', '166', '0', '15');
INSERT INTO `tb_category` VALUES ('182', '计步器/脂肪检测仪', '166', '0', '16');
INSERT INTO `tb_category` VALUES ('183', '五金家装', '103', '1', '6');
INSERT INTO `tb_category` VALUES ('184', '电动工具', '183', '0', '1');
INSERT INTO `tb_category` VALUES ('185', '手动工具', '183', '0', '2');
INSERT INTO `tb_category` VALUES ('186', '仪器仪表', '183', '0', '3');
INSERT INTO `tb_category` VALUES ('187', '浴霸/排气扇', '183', '0', '4');
INSERT INTO `tb_category` VALUES ('188', '灯具', '183', '0', '5');
INSERT INTO `tb_category` VALUES ('189', 'LED灯', '183', '0', '6');
INSERT INTO `tb_category` VALUES ('190', '洁身器', '183', '0', '7');
INSERT INTO `tb_category` VALUES ('191', '水槽', '183', '0', '8');
INSERT INTO `tb_category` VALUES ('192', '龙头', '183', '0', '9');
INSERT INTO `tb_category` VALUES ('193', '淋浴花洒', '183', '0', '10');
INSERT INTO `tb_category` VALUES ('194', '厨卫五金', '183', '0', '11');
INSERT INTO `tb_category` VALUES ('195', '家具五金', '183', '0', '12');
INSERT INTO `tb_category` VALUES ('196', '门铃', '183', '0', '13');
INSERT INTO `tb_category` VALUES ('197', '电气开关', '183', '0', '14');
INSERT INTO `tb_category` VALUES ('198', '插座', '183', '0', '15');
INSERT INTO `tb_category` VALUES ('199', '电工电料', '183', '0', '16');
INSERT INTO `tb_category` VALUES ('200', '监控安防', '183', '0', '17');
INSERT INTO `tb_category` VALUES ('201', '电线/线缆', '183', '0', '18');
INSERT INTO `tb_category` VALUES ('202', '数码', '0', '1', '4');
INSERT INTO `tb_category` VALUES ('203', '摄影摄像', '202', '1', '1');
INSERT INTO `tb_category` VALUES ('204', '数码相机', '203', '0', '1');
INSERT INTO `tb_category` VALUES ('205', '单电/微单相机', '203', '0', '2');
INSERT INTO `tb_category` VALUES ('206', '单反相机', '203', '0', '3');
INSERT INTO `tb_category` VALUES ('207', '摄像机', '203', '0', '4');
INSERT INTO `tb_category` VALUES ('208', '拍立得', '203', '0', '5');
INSERT INTO `tb_category` VALUES ('209', '运动相机', '203', '0', '6');
INSERT INTO `tb_category` VALUES ('210', '镜头', '203', '0', '7');
INSERT INTO `tb_category` VALUES ('211', '户外器材', '203', '0', '8');
INSERT INTO `tb_category` VALUES ('212', '影棚器材', '203', '0', '9');
INSERT INTO `tb_category` VALUES ('213', '冲印服务', '203', '0', '10');
INSERT INTO `tb_category` VALUES ('214', '数码相框', '203', '0', '11');
INSERT INTO `tb_category` VALUES ('215', '数码配件', '202', '1', '2');
INSERT INTO `tb_category` VALUES ('216', '存储卡', '215', '0', '1');
INSERT INTO `tb_category` VALUES ('217', '读卡器', '215', '0', '2');
INSERT INTO `tb_category` VALUES ('218', '滤镜', '215', '0', '3');
INSERT INTO `tb_category` VALUES ('219', '闪光灯/手柄', '215', '0', '4');
INSERT INTO `tb_category` VALUES ('220', '相机包', '215', '0', '5');
INSERT INTO `tb_category` VALUES ('221', '三脚架/云台', '215', '0', '6');
INSERT INTO `tb_category` VALUES ('222', '相机清洁/贴膜', '215', '0', '7');
INSERT INTO `tb_category` VALUES ('223', '机身附件', '215', '0', '8');
INSERT INTO `tb_category` VALUES ('224', '镜头附件', '215', '0', '9');
INSERT INTO `tb_category` VALUES ('225', '电池/充电器', '215', '0', '10');
INSERT INTO `tb_category` VALUES ('226', '移动电源', '215', '0', '11');
INSERT INTO `tb_category` VALUES ('227', '数码支架', '215', '0', '12');
INSERT INTO `tb_category` VALUES ('228', '智能设备', '202', '1', '3');
INSERT INTO `tb_category` VALUES ('229', '智能手环', '228', '0', '1');
INSERT INTO `tb_category` VALUES ('230', '智能手表', '228', '0', '2');
INSERT INTO `tb_category` VALUES ('231', '智能眼镜', '228', '0', '3');
INSERT INTO `tb_category` VALUES ('232', '运动跟踪器', '228', '0', '4');
INSERT INTO `tb_category` VALUES ('233', '健康监测', '228', '0', '5');
INSERT INTO `tb_category` VALUES ('234', '智能配饰', '228', '0', '6');
INSERT INTO `tb_category` VALUES ('235', '智能家居', '228', '0', '7');
INSERT INTO `tb_category` VALUES ('236', '体感车', '228', '0', '8');
INSERT INTO `tb_category` VALUES ('237', '其他配件', '228', '0', '9');
INSERT INTO `tb_category` VALUES ('238', '智能机器人', '228', '0', '10');
INSERT INTO `tb_category` VALUES ('239', '无人机', '228', '0', '11');
INSERT INTO `tb_category` VALUES ('240', '影音娱乐', '202', '1', '4');
INSERT INTO `tb_category` VALUES ('241', 'MP3/MP4', '240', '0', '1');
INSERT INTO `tb_category` VALUES ('242', '智能设备', '240', '0', '2');
INSERT INTO `tb_category` VALUES ('243', '耳机/耳麦', '240', '0', '3');
INSERT INTO `tb_category` VALUES ('244', '便携/无线音箱', '240', '0', '4');
INSERT INTO `tb_category` VALUES ('245', '音箱/音响', '240', '0', '5');
INSERT INTO `tb_category` VALUES ('246', '高清播放器', '240', '0', '6');
INSERT INTO `tb_category` VALUES ('247', '收音机', '240', '0', '7');
INSERT INTO `tb_category` VALUES ('248', 'MP3/MP4配件', '240', '0', '8');
INSERT INTO `tb_category` VALUES ('249', '麦克风', '240', '0', '9');
INSERT INTO `tb_category` VALUES ('250', '专业音频', '240', '0', '10');
INSERT INTO `tb_category` VALUES ('251', '苹果配件', '240', '0', '11');
INSERT INTO `tb_category` VALUES ('252', '电子教育', '202', '1', '5');
INSERT INTO `tb_category` VALUES ('253', '学生平板', '252', '0', '1');
INSERT INTO `tb_category` VALUES ('254', '点读机/笔', '252', '0', '2');
INSERT INTO `tb_category` VALUES ('255', '早教益智', '252', '0', '3');
INSERT INTO `tb_category` VALUES ('256', '录音笔', '252', '0', '4');
INSERT INTO `tb_category` VALUES ('257', '电纸书', '252', '0', '5');
INSERT INTO `tb_category` VALUES ('258', '电子词典', '252', '0', '6');
INSERT INTO `tb_category` VALUES ('259', '复读机', '252', '0', '7');
INSERT INTO `tb_category` VALUES ('260', '虚拟商品', '202', '1', '6');
INSERT INTO `tb_category` VALUES ('261', '延保服务', '260', '0', '1');
INSERT INTO `tb_category` VALUES ('262', '杀毒软件', '260', '0', '2');
INSERT INTO `tb_category` VALUES ('263', '积分商品', '260', '0', '3');
INSERT INTO `tb_category` VALUES ('264', '家居家装', '0', '1', '5');
INSERT INTO `tb_category` VALUES ('265', '家纺', '264', '1', '1');
INSERT INTO `tb_category` VALUES ('266', '桌布/罩件', '265', '0', '1');
INSERT INTO `tb_category` VALUES ('267', '地毯地垫', '265', '0', '2');
INSERT INTO `tb_category` VALUES ('268', '沙发垫套/椅垫', '265', '0', '3');
INSERT INTO `tb_category` VALUES ('269', '床品套件', '265', '0', '4');
INSERT INTO `tb_category` VALUES ('270', '被子', '265', '0', '5');
INSERT INTO `tb_category` VALUES ('271', '枕芯', '265', '0', '6');
INSERT INTO `tb_category` VALUES ('272', '床单被罩', '265', '0', '7');
INSERT INTO `tb_category` VALUES ('273', '毯子', '265', '0', '8');
INSERT INTO `tb_category` VALUES ('274', '床垫/床褥', '265', '0', '9');
INSERT INTO `tb_category` VALUES ('275', '蚊帐', '265', '0', '10');
INSERT INTO `tb_category` VALUES ('276', '抱枕靠垫', '265', '0', '11');
INSERT INTO `tb_category` VALUES ('277', '毛巾浴巾', '265', '0', '12');
INSERT INTO `tb_category` VALUES ('278', '电热毯', '265', '0', '13');
INSERT INTO `tb_category` VALUES ('279', '窗帘/窗纱', '265', '0', '14');
INSERT INTO `tb_category` VALUES ('280', '布艺软饰', '265', '0', '15');
INSERT INTO `tb_category` VALUES ('281', '凉席', '265', '0', '16');
INSERT INTO `tb_category` VALUES ('282', '灯具', '264', '1', '2');
INSERT INTO `tb_category` VALUES ('283', '台灯', '282', '0', '1');
INSERT INTO `tb_category` VALUES ('284', '节能灯', '282', '0', '2');
INSERT INTO `tb_category` VALUES ('285', '装饰灯', '282', '0', '3');
INSERT INTO `tb_category` VALUES ('286', '落地灯', '282', '0', '4');
INSERT INTO `tb_category` VALUES ('287', '应急灯/手电', '282', '0', '5');
INSERT INTO `tb_category` VALUES ('288', 'LED灯', '282', '0', '6');
INSERT INTO `tb_category` VALUES ('289', '吸顶灯', '282', '0', '7');
INSERT INTO `tb_category` VALUES ('290', '五金电器', '282', '0', '8');
INSERT INTO `tb_category` VALUES ('291', '筒灯射灯', '282', '0', '9');
INSERT INTO `tb_category` VALUES ('292', '吊灯', '282', '0', '10');
INSERT INTO `tb_category` VALUES ('293', '氛围照明', '282', '0', '11');
INSERT INTO `tb_category` VALUES ('294', '生活日用', '264', '1', '3');
INSERT INTO `tb_category` VALUES ('295', '保暖防护', '294', '0', '1');
INSERT INTO `tb_category` VALUES ('296', '收纳用品', '294', '0', '2');
INSERT INTO `tb_category` VALUES ('297', '雨伞雨具', '294', '0', '3');
INSERT INTO `tb_category` VALUES ('298', '浴室用品', '294', '0', '4');
INSERT INTO `tb_category` VALUES ('299', '缝纫/针织用品', '294', '0', '5');
INSERT INTO `tb_category` VALUES ('300', '洗晒/熨烫', '294', '0', '6');
INSERT INTO `tb_category` VALUES ('301', '净化除味', '294', '0', '7');
INSERT INTO `tb_category` VALUES ('302', '家装软饰', '264', '1', '4');
INSERT INTO `tb_category` VALUES ('303', '相框/照片墙', '302', '0', '1');
INSERT INTO `tb_category` VALUES ('304', '装饰字画', '302', '0', '2');
INSERT INTO `tb_category` VALUES ('305', '节庆饰品', '302', '0', '3');
INSERT INTO `tb_category` VALUES ('306', '手工/十字绣', '302', '0', '4');
INSERT INTO `tb_category` VALUES ('307', '装饰摆件', '302', '0', '5');
INSERT INTO `tb_category` VALUES ('308', '帘艺隔断', '302', '0', '6');
INSERT INTO `tb_category` VALUES ('309', '墙贴/装饰贴', '302', '0', '7');
INSERT INTO `tb_category` VALUES ('310', '钟饰', '302', '0', '8');
INSERT INTO `tb_category` VALUES ('311', '花瓶花艺', '302', '0', '9');
INSERT INTO `tb_category` VALUES ('312', '香薰蜡烛', '302', '0', '10');
INSERT INTO `tb_category` VALUES ('313', '创意家居', '302', '0', '11');
INSERT INTO `tb_category` VALUES ('314', '宠物生活', '264', '1', '5');
INSERT INTO `tb_category` VALUES ('315', '宠物主粮', '314', '0', '1');
INSERT INTO `tb_category` VALUES ('316', '宠物零食', '314', '0', '2');
INSERT INTO `tb_category` VALUES ('317', '医疗保健', '314', '0', '3');
INSERT INTO `tb_category` VALUES ('318', '家居日用', '314', '0', '4');
INSERT INTO `tb_category` VALUES ('319', '宠物玩具', '314', '0', '5');
INSERT INTO `tb_category` VALUES ('320', '出行装备', '314', '0', '6');
INSERT INTO `tb_category` VALUES ('321', '洗护美容', '314', '0', '7');
INSERT INTO `tb_category` VALUES ('322', '电脑办公', '0', '1', '6');
INSERT INTO `tb_category` VALUES ('323', '电脑整机', '322', '1', '1');
INSERT INTO `tb_category` VALUES ('324', '笔记本', '323', '0', '1');
INSERT INTO `tb_category` VALUES ('325', '超极本', '323', '0', '2');
INSERT INTO `tb_category` VALUES ('326', '游戏本', '323', '0', '3');
INSERT INTO `tb_category` VALUES ('327', '平板电脑', '323', '0', '4');
INSERT INTO `tb_category` VALUES ('328', '平板电脑配件', '323', '0', '5');
INSERT INTO `tb_category` VALUES ('329', '台式机', '323', '0', '6');
INSERT INTO `tb_category` VALUES ('330', '服务器/工作站', '323', '0', '7');
INSERT INTO `tb_category` VALUES ('331', '笔记本配件', '323', '0', '8');
INSERT INTO `tb_category` VALUES ('332', '一体机', '323', '0', '9');
INSERT INTO `tb_category` VALUES ('333', '电脑配件', '322', '1', '2');
INSERT INTO `tb_category` VALUES ('334', 'CPU', '333', '0', '1');
INSERT INTO `tb_category` VALUES ('335', '主板', '333', '0', '2');
INSERT INTO `tb_category` VALUES ('336', '显卡', '333', '0', '3');
INSERT INTO `tb_category` VALUES ('337', '硬盘', '333', '0', '4');
INSERT INTO `tb_category` VALUES ('338', 'SSD固态硬盘', '333', '0', '5');
INSERT INTO `tb_category` VALUES ('339', '内存', '333', '0', '6');
INSERT INTO `tb_category` VALUES ('340', '机箱', '333', '0', '7');
INSERT INTO `tb_category` VALUES ('341', '电源', '333', '0', '8');
INSERT INTO `tb_category` VALUES ('342', '显示器', '333', '0', '9');
INSERT INTO `tb_category` VALUES ('343', '刻录机/光驱', '333', '0', '10');
INSERT INTO `tb_category` VALUES ('344', '散热器', '333', '0', '11');
INSERT INTO `tb_category` VALUES ('345', '声卡/扩展卡', '333', '0', '12');
INSERT INTO `tb_category` VALUES ('346', '装机配件', '333', '0', '13');
INSERT INTO `tb_category` VALUES ('347', '组装电脑', '333', '0', '14');
INSERT INTO `tb_category` VALUES ('348', '外设产品', '322', '1', '3');
INSERT INTO `tb_category` VALUES ('349', '移动硬盘', '348', '0', '1');
INSERT INTO `tb_category` VALUES ('350', 'U盘', '348', '0', '2');
INSERT INTO `tb_category` VALUES ('351', '鼠标', '348', '0', '3');
INSERT INTO `tb_category` VALUES ('352', '键盘', '348', '0', '4');
INSERT INTO `tb_category` VALUES ('353', '鼠标垫', '348', '0', '5');
INSERT INTO `tb_category` VALUES ('354', '摄像头', '348', '0', '6');
INSERT INTO `tb_category` VALUES ('355', '手写板', '348', '0', '7');
INSERT INTO `tb_category` VALUES ('356', '硬盘盒', '348', '0', '8');
INSERT INTO `tb_category` VALUES ('357', '插座', '348', '0', '9');
INSERT INTO `tb_category` VALUES ('358', '线缆', '348', '0', '10');
INSERT INTO `tb_category` VALUES ('359', 'UPS电源', '348', '0', '11');
INSERT INTO `tb_category` VALUES ('360', '电脑工具', '348', '0', '12');
INSERT INTO `tb_category` VALUES ('361', '游戏设备', '348', '0', '13');
INSERT INTO `tb_category` VALUES ('362', '电玩', '348', '0', '14');
INSERT INTO `tb_category` VALUES ('363', '电脑清洁', '348', '0', '15');
INSERT INTO `tb_category` VALUES ('364', '网络仪表仪器', '348', '0', '16');
INSERT INTO `tb_category` VALUES ('365', '游戏设备', '322', '1', '4');
INSERT INTO `tb_category` VALUES ('366', '游戏机', '365', '0', '1');
INSERT INTO `tb_category` VALUES ('367', '游戏耳机', '365', '0', '2');
INSERT INTO `tb_category` VALUES ('368', '手柄/方向盘', '365', '0', '3');
INSERT INTO `tb_category` VALUES ('369', '游戏软件', '365', '0', '4');
INSERT INTO `tb_category` VALUES ('370', '游戏周边', '365', '0', '5');
INSERT INTO `tb_category` VALUES ('371', '网络产品', '322', '1', '5');
INSERT INTO `tb_category` VALUES ('372', '路由器', '371', '0', '1');
INSERT INTO `tb_category` VALUES ('373', '网卡', '371', '0', '2');
INSERT INTO `tb_category` VALUES ('374', '交换机', '371', '0', '3');
INSERT INTO `tb_category` VALUES ('375', '网络存储', '371', '0', '4');
INSERT INTO `tb_category` VALUES ('376', '4G/3G上网', '371', '0', '5');
INSERT INTO `tb_category` VALUES ('377', '网络盒子', '371', '0', '6');
INSERT INTO `tb_category` VALUES ('378', '网络配件', '371', '0', '7');
INSERT INTO `tb_category` VALUES ('379', '办公设备', '322', '1', '6');
INSERT INTO `tb_category` VALUES ('380', '投影机', '379', '0', '1');
INSERT INTO `tb_category` VALUES ('381', '投影配件', '379', '0', '2');
INSERT INTO `tb_category` VALUES ('382', '多功能一体机', '379', '0', '3');
INSERT INTO `tb_category` VALUES ('383', '打印机', '379', '0', '4');
INSERT INTO `tb_category` VALUES ('384', '传真设备', '379', '0', '5');
INSERT INTO `tb_category` VALUES ('385', '验钞/点钞机', '379', '0', '6');
INSERT INTO `tb_category` VALUES ('386', '扫描设备', '379', '0', '7');
INSERT INTO `tb_category` VALUES ('387', '复合机', '379', '0', '8');
INSERT INTO `tb_category` VALUES ('388', '碎纸机', '379', '0', '9');
INSERT INTO `tb_category` VALUES ('389', '考勤机', '379', '0', '10');
INSERT INTO `tb_category` VALUES ('390', '收款/POS机', '379', '0', '11');
INSERT INTO `tb_category` VALUES ('391', '会议音频视频', '379', '0', '12');
INSERT INTO `tb_category` VALUES ('392', '保险柜', '379', '0', '13');
INSERT INTO `tb_category` VALUES ('393', '装订/封装机', '379', '0', '14');
INSERT INTO `tb_category` VALUES ('394', '安防监控', '379', '0', '15');
INSERT INTO `tb_category` VALUES ('395', '办公家具', '379', '0', '16');
INSERT INTO `tb_category` VALUES ('396', '白板', '379', '0', '17');
INSERT INTO `tb_category` VALUES ('397', '文具/耗材', '322', '1', '7');
INSERT INTO `tb_category` VALUES ('398', '硒鼓/墨粉', '397', '0', '1');
INSERT INTO `tb_category` VALUES ('399', '墨盒', '397', '0', '2');
INSERT INTO `tb_category` VALUES ('400', '色带', '397', '0', '3');
INSERT INTO `tb_category` VALUES ('401', '纸类', '397', '0', '4');
INSERT INTO `tb_category` VALUES ('402', '办公文具', '397', '0', '5');
INSERT INTO `tb_category` VALUES ('403', '学生文具', '397', '0', '6');
INSERT INTO `tb_category` VALUES ('404', '财会用品', '397', '0', '7');
INSERT INTO `tb_category` VALUES ('405', '文件管理', '397', '0', '8');
INSERT INTO `tb_category` VALUES ('406', '本册/便签', '397', '0', '9');
INSERT INTO `tb_category` VALUES ('407', '计算器', '397', '0', '10');
INSERT INTO `tb_category` VALUES ('408', '笔类', '397', '0', '11');
INSERT INTO `tb_category` VALUES ('409', '画具画材', '397', '0', '12');
INSERT INTO `tb_category` VALUES ('410', '刻录碟片/附件', '397', '0', '13');
INSERT INTO `tb_category` VALUES ('411', '服务产品', '322', '1', '8');
INSERT INTO `tb_category` VALUES ('412', '上门安装', '411', '0', '1');
INSERT INTO `tb_category` VALUES ('413', '延保服务', '411', '0', '2');
INSERT INTO `tb_category` VALUES ('414', '维修保养', '411', '0', '3');
INSERT INTO `tb_category` VALUES ('415', '电脑软件', '411', '0', '4');
INSERT INTO `tb_category` VALUES ('416', '京东服务', '411', '0', '5');
INSERT INTO `tb_category` VALUES ('417', '厨具', '0', '1', '7');
INSERT INTO `tb_category` VALUES ('418', '烹饪锅具', '417', '1', '1');
INSERT INTO `tb_category` VALUES ('419', '炒锅', '418', '0', '1');
INSERT INTO `tb_category` VALUES ('420', '煎锅', '418', '0', '2');
INSERT INTO `tb_category` VALUES ('421', '压力锅', '418', '0', '3');
INSERT INTO `tb_category` VALUES ('422', '蒸锅', '418', '0', '4');
INSERT INTO `tb_category` VALUES ('423', '汤锅', '418', '0', '5');
INSERT INTO `tb_category` VALUES ('424', '奶锅', '418', '0', '6');
INSERT INTO `tb_category` VALUES ('425', '锅具套装', '418', '0', '7');
INSERT INTO `tb_category` VALUES ('426', '煲类', '418', '0', '8');
INSERT INTO `tb_category` VALUES ('427', '水壶', '418', '0', '9');
INSERT INTO `tb_category` VALUES ('428', '火锅', '418', '0', '10');
INSERT INTO `tb_category` VALUES ('429', '刀剪菜板', '417', '1', '2');
INSERT INTO `tb_category` VALUES ('430', '菜刀', '429', '0', '1');
INSERT INTO `tb_category` VALUES ('431', '剪刀', '429', '0', '2');
INSERT INTO `tb_category` VALUES ('432', '刀具套装', '429', '0', '3');
INSERT INTO `tb_category` VALUES ('433', '砧板', '429', '0', '4');
INSERT INTO `tb_category` VALUES ('434', '瓜果刀/刨', '429', '0', '5');
INSERT INTO `tb_category` VALUES ('435', '多功能刀', '429', '0', '6');
INSERT INTO `tb_category` VALUES ('436', '厨房配件', '417', '1', '3');
INSERT INTO `tb_category` VALUES ('437', '保鲜盒', '436', '0', '1');
INSERT INTO `tb_category` VALUES ('438', '烘焙/烧烤', '436', '0', '2');
INSERT INTO `tb_category` VALUES ('439', '饭盒/提锅', '436', '0', '3');
INSERT INTO `tb_category` VALUES ('440', '储物/置物架', '436', '0', '4');
INSERT INTO `tb_category` VALUES ('441', '厨房DIY/小工具', '436', '0', '5');
INSERT INTO `tb_category` VALUES ('442', '水具酒具', '417', '1', '4');
INSERT INTO `tb_category` VALUES ('443', '塑料杯', '442', '0', '1');
INSERT INTO `tb_category` VALUES ('444', '运动水壶', '442', '0', '2');
INSERT INTO `tb_category` VALUES ('445', '玻璃杯', '442', '0', '3');
INSERT INTO `tb_category` VALUES ('446', '陶瓷/马克杯', '442', '0', '4');
INSERT INTO `tb_category` VALUES ('447', '保温杯', '442', '0', '5');
INSERT INTO `tb_category` VALUES ('448', '保温壶', '442', '0', '6');
INSERT INTO `tb_category` VALUES ('449', '酒杯/酒具', '442', '0', '7');
INSERT INTO `tb_category` VALUES ('450', '杯具套装', '442', '0', '8');
INSERT INTO `tb_category` VALUES ('451', '餐具', '417', '1', '5');
INSERT INTO `tb_category` VALUES ('452', '餐具套装', '451', '0', '1');
INSERT INTO `tb_category` VALUES ('453', '碗/碟/盘', '451', '0', '2');
INSERT INTO `tb_category` VALUES ('454', '筷勺/刀叉', '451', '0', '3');
INSERT INTO `tb_category` VALUES ('455', '一次性用品', '451', '0', '4');
INSERT INTO `tb_category` VALUES ('456', '果盘/果篮', '451', '0', '5');
INSERT INTO `tb_category` VALUES ('457', '酒店用品', '417', '1', '6');
INSERT INTO `tb_category` VALUES ('458', '自助餐炉', '457', '0', '1');
INSERT INTO `tb_category` VALUES ('459', '酒店餐具', '457', '0', '2');
INSERT INTO `tb_category` VALUES ('460', '酒店水具', '457', '0', '3');
INSERT INTO `tb_category` VALUES ('461', '茶具/咖啡具', '417', '1', '7');
INSERT INTO `tb_category` VALUES ('462', '整套茶具', '461', '0', '1');
INSERT INTO `tb_category` VALUES ('463', '茶杯', '461', '0', '2');
INSERT INTO `tb_category` VALUES ('464', '茶壶', '461', '0', '3');
INSERT INTO `tb_category` VALUES ('465', '茶盘茶托', '461', '0', '4');
INSERT INTO `tb_category` VALUES ('466', '茶叶罐', '461', '0', '5');
INSERT INTO `tb_category` VALUES ('467', '茶具配件', '461', '0', '6');
INSERT INTO `tb_category` VALUES ('468', '茶宠摆件', '461', '0', '7');
INSERT INTO `tb_category` VALUES ('469', '咖啡具', '461', '0', '8');
INSERT INTO `tb_category` VALUES ('470', '其他', '461', '0', '9');
INSERT INTO `tb_category` VALUES ('471', '个护化妆', '0', '1', '8');
INSERT INTO `tb_category` VALUES ('472', '清洁用品', '471', '1', '1');
INSERT INTO `tb_category` VALUES ('473', '纸品湿巾', '472', '0', '1');
INSERT INTO `tb_category` VALUES ('474', '衣物清洁', '472', '0', '2');
INSERT INTO `tb_category` VALUES ('475', '清洁工具', '472', '0', '3');
INSERT INTO `tb_category` VALUES ('476', '驱虫用品', '472', '0', '4');
INSERT INTO `tb_category` VALUES ('477', '家庭清洁', '472', '0', '5');
INSERT INTO `tb_category` VALUES ('478', '皮具护理', '472', '0', '6');
INSERT INTO `tb_category` VALUES ('479', '一次性用品', '472', '0', '7');
INSERT INTO `tb_category` VALUES ('480', '面部护肤', '471', '1', '2');
INSERT INTO `tb_category` VALUES ('481', '洁面', '480', '0', '1');
INSERT INTO `tb_category` VALUES ('482', '乳液面霜', '480', '0', '2');
INSERT INTO `tb_category` VALUES ('483', '面膜', '480', '0', '3');
INSERT INTO `tb_category` VALUES ('484', '剃须', '480', '0', '4');
INSERT INTO `tb_category` VALUES ('485', '套装', '480', '0', '5');
INSERT INTO `tb_category` VALUES ('486', '精华', '480', '0', '6');
INSERT INTO `tb_category` VALUES ('487', '眼霜', '480', '0', '7');
INSERT INTO `tb_category` VALUES ('488', '卸妆', '480', '0', '8');
INSERT INTO `tb_category` VALUES ('489', '防晒', '480', '0', '9');
INSERT INTO `tb_category` VALUES ('490', '防晒隔离', '480', '0', '10');
INSERT INTO `tb_category` VALUES ('491', 'T区护理', '480', '0', '11');
INSERT INTO `tb_category` VALUES ('492', '眼部护理', '480', '0', '12');
INSERT INTO `tb_category` VALUES ('493', '精华露', '480', '0', '13');
INSERT INTO `tb_category` VALUES ('494', '爽肤水', '480', '0', '14');
INSERT INTO `tb_category` VALUES ('495', '身体护理', '471', '1', '3');
INSERT INTO `tb_category` VALUES ('496', '沐浴', '495', '0', '1');
INSERT INTO `tb_category` VALUES ('497', '润肤', '495', '0', '2');
INSERT INTO `tb_category` VALUES ('498', '颈部', '495', '0', '3');
INSERT INTO `tb_category` VALUES ('499', '手足', '495', '0', '4');
INSERT INTO `tb_category` VALUES ('500', '纤体塑形', '495', '0', '5');
INSERT INTO `tb_category` VALUES ('501', '美胸', '495', '0', '6');
INSERT INTO `tb_category` VALUES ('502', '套装', '495', '0', '7');
INSERT INTO `tb_category` VALUES ('503', '精油', '495', '0', '8');
INSERT INTO `tb_category` VALUES ('504', '洗发护发', '495', '0', '9');
INSERT INTO `tb_category` VALUES ('505', '染发/造型', '495', '0', '10');
INSERT INTO `tb_category` VALUES ('506', '香薰精油', '495', '0', '11');
INSERT INTO `tb_category` VALUES ('507', '磨砂/浴盐', '495', '0', '12');
INSERT INTO `tb_category` VALUES ('508', '手工/香皂', '495', '0', '13');
INSERT INTO `tb_category` VALUES ('509', '洗发', '495', '0', '14');
INSERT INTO `tb_category` VALUES ('510', '护发', '495', '0', '15');
INSERT INTO `tb_category` VALUES ('511', '染发', '495', '0', '16');
INSERT INTO `tb_category` VALUES ('512', '磨砂膏', '495', '0', '17');
INSERT INTO `tb_category` VALUES ('513', '香皂', '495', '0', '18');
INSERT INTO `tb_category` VALUES ('514', '口腔护理', '471', '1', '4');
INSERT INTO `tb_category` VALUES ('515', '牙膏/牙粉', '514', '0', '1');
INSERT INTO `tb_category` VALUES ('516', '牙刷/牙线', '514', '0', '2');
INSERT INTO `tb_category` VALUES ('517', '漱口水', '514', '0', '3');
INSERT INTO `tb_category` VALUES ('518', '套装', '514', '0', '4');
INSERT INTO `tb_category` VALUES ('519', '女性护理', '471', '1', '5');
INSERT INTO `tb_category` VALUES ('520', '卫生巾', '519', '0', '1');
INSERT INTO `tb_category` VALUES ('521', '卫生护垫', '519', '0', '2');
INSERT INTO `tb_category` VALUES ('522', '私密护理', '519', '0', '3');
INSERT INTO `tb_category` VALUES ('523', '脱毛膏', '519', '0', '4');
INSERT INTO `tb_category` VALUES ('524', '其他', '519', '0', '5');
INSERT INTO `tb_category` VALUES ('525', '洗发护发', '471', '1', '6');
INSERT INTO `tb_category` VALUES ('526', '洗发', '525', '0', '1');
INSERT INTO `tb_category` VALUES ('527', '护发', '525', '0', '2');
INSERT INTO `tb_category` VALUES ('528', '染发', '525', '0', '3');
INSERT INTO `tb_category` VALUES ('529', '造型', '525', '0', '4');
INSERT INTO `tb_category` VALUES ('530', '假发', '525', '0', '5');
INSERT INTO `tb_category` VALUES ('531', '套装', '525', '0', '6');
INSERT INTO `tb_category` VALUES ('532', '美发工具', '525', '0', '7');
INSERT INTO `tb_category` VALUES ('533', '脸部护理', '525', '0', '8');
INSERT INTO `tb_category` VALUES ('534', '香水彩妆', '471', '1', '7');
INSERT INTO `tb_category` VALUES ('535', '香水', '534', '0', '1');
INSERT INTO `tb_category` VALUES ('536', '底妆', '534', '0', '2');
INSERT INTO `tb_category` VALUES ('537', '腮红', '534', '0', '3');
INSERT INTO `tb_category` VALUES ('538', '眼影', '534', '0', '4');
INSERT INTO `tb_category` VALUES ('539', '唇部', '534', '0', '5');
INSERT INTO `tb_category` VALUES ('540', '美甲', '534', '0', '6');
INSERT INTO `tb_category` VALUES ('541', '眼线', '534', '0', '7');
INSERT INTO `tb_category` VALUES ('542', '美妆工具', '534', '0', '8');
INSERT INTO `tb_category` VALUES ('543', '套装', '534', '0', '9');
INSERT INTO `tb_category` VALUES ('544', '防晒隔离', '534', '0', '10');
INSERT INTO `tb_category` VALUES ('545', '卸妆', '534', '0', '11');
INSERT INTO `tb_category` VALUES ('546', '眉笔', '534', '0', '12');
INSERT INTO `tb_category` VALUES ('547', '睫毛膏', '534', '0', '13');
INSERT INTO `tb_category` VALUES ('548', '服饰内衣', '0', '1', '9');
INSERT INTO `tb_category` VALUES ('549', '女装', '548', '1', '1');
INSERT INTO `tb_category` VALUES ('550', 'T恤', '549', '0', '1');
INSERT INTO `tb_category` VALUES ('551', '衬衫', '549', '0', '2');
INSERT INTO `tb_category` VALUES ('552', '针织衫', '549', '0', '3');
INSERT INTO `tb_category` VALUES ('553', '雪纺衫', '549', '0', '4');
INSERT INTO `tb_category` VALUES ('554', '卫衣', '549', '0', '5');
INSERT INTO `tb_category` VALUES ('555', '马甲', '549', '0', '6');
INSERT INTO `tb_category` VALUES ('556', '连衣裙', '549', '0', '7');
INSERT INTO `tb_category` VALUES ('557', '半身裙', '549', '0', '8');
INSERT INTO `tb_category` VALUES ('558', '牛仔裤', '549', '0', '9');
INSERT INTO `tb_category` VALUES ('559', '休闲裤', '549', '0', '10');
INSERT INTO `tb_category` VALUES ('560', '打底裤', '549', '0', '11');
INSERT INTO `tb_category` VALUES ('561', '正装裤', '549', '0', '12');
INSERT INTO `tb_category` VALUES ('562', '小西装', '549', '0', '13');
INSERT INTO `tb_category` VALUES ('563', '短外套', '549', '0', '14');
INSERT INTO `tb_category` VALUES ('564', '风衣', '549', '0', '15');
INSERT INTO `tb_category` VALUES ('565', '毛呢大衣', '549', '0', '16');
INSERT INTO `tb_category` VALUES ('566', '真皮皮衣', '549', '0', '17');
INSERT INTO `tb_category` VALUES ('567', '棉服', '549', '0', '18');
INSERT INTO `tb_category` VALUES ('568', '羽绒服', '549', '0', '19');
INSERT INTO `tb_category` VALUES ('569', '大码女装', '549', '0', '20');
INSERT INTO `tb_category` VALUES ('570', '中老年女装', '549', '0', '21');
INSERT INTO `tb_category` VALUES ('571', '婚纱', '549', '0', '22');
INSERT INTO `tb_category` VALUES ('572', '打底衫', '549', '0', '23');
INSERT INTO `tb_category` VALUES ('573', '旗袍/唐装', '549', '0', '24');
INSERT INTO `tb_category` VALUES ('574', '加绒裤', '549', '0', '25');
INSERT INTO `tb_category` VALUES ('575', '吊带/背心', '549', '0', '26');
INSERT INTO `tb_category` VALUES ('576', '羊绒衫', '549', '0', '27');
INSERT INTO `tb_category` VALUES ('577', '短裤', '549', '0', '28');
INSERT INTO `tb_category` VALUES ('578', '皮草', '549', '0', '29');
INSERT INTO `tb_category` VALUES ('579', '礼服', '549', '0', '30');
INSERT INTO `tb_category` VALUES ('580', '仿皮皮衣', '549', '0', '31');
INSERT INTO `tb_category` VALUES ('581', '羊毛衫', '549', '0', '32');
INSERT INTO `tb_category` VALUES ('582', '设计师/潮牌', '549', '0', '33');
INSERT INTO `tb_category` VALUES ('583', '男装', '548', '1', '2');
INSERT INTO `tb_category` VALUES ('584', '衬衫', '583', '0', '1');
INSERT INTO `tb_category` VALUES ('585', 'T恤', '583', '0', '2');
INSERT INTO `tb_category` VALUES ('586', 'POLO衫', '583', '0', '3');
INSERT INTO `tb_category` VALUES ('587', '针织衫', '583', '0', '4');
INSERT INTO `tb_category` VALUES ('588', '羊绒衫', '583', '0', '5');
INSERT INTO `tb_category` VALUES ('589', '卫衣', '583', '0', '6');
INSERT INTO `tb_category` VALUES ('590', '马甲/背心', '583', '0', '7');
INSERT INTO `tb_category` VALUES ('591', '夹克', '583', '0', '8');
INSERT INTO `tb_category` VALUES ('592', '风衣', '583', '0', '9');
INSERT INTO `tb_category` VALUES ('593', '毛呢大衣', '583', '0', '10');
INSERT INTO `tb_category` VALUES ('594', '仿皮皮衣', '583', '0', '11');
INSERT INTO `tb_category` VALUES ('595', '西服', '583', '0', '12');
INSERT INTO `tb_category` VALUES ('596', '棉服', '583', '0', '13');
INSERT INTO `tb_category` VALUES ('597', '羽绒服', '583', '0', '14');
INSERT INTO `tb_category` VALUES ('598', '牛仔裤', '583', '0', '15');
INSERT INTO `tb_category` VALUES ('599', '休闲裤', '583', '0', '16');
INSERT INTO `tb_category` VALUES ('600', '西裤', '583', '0', '17');
INSERT INTO `tb_category` VALUES ('601', '西服套装', '583', '0', '18');
INSERT INTO `tb_category` VALUES ('602', '大码男装', '583', '0', '19');
INSERT INTO `tb_category` VALUES ('603', '中老年男装', '583', '0', '20');
INSERT INTO `tb_category` VALUES ('604', '唐装/中山装', '583', '0', '21');
INSERT INTO `tb_category` VALUES ('605', '工装', '583', '0', '22');
INSERT INTO `tb_category` VALUES ('606', '真皮皮衣', '583', '0', '23');
INSERT INTO `tb_category` VALUES ('607', '加绒裤', '583', '0', '24');
INSERT INTO `tb_category` VALUES ('608', '卫裤/运动裤', '583', '0', '25');
INSERT INTO `tb_category` VALUES ('609', '短裤', '583', '0', '26');
INSERT INTO `tb_category` VALUES ('610', '设计师/潮牌', '583', '0', '27');
INSERT INTO `tb_category` VALUES ('611', '羊毛衫', '583', '0', '28');
INSERT INTO `tb_category` VALUES ('612', '内衣', '548', '1', '3');
INSERT INTO `tb_category` VALUES ('613', '文胸', '612', '0', '1');
INSERT INTO `tb_category` VALUES ('614', '女式内裤', '612', '0', '2');
INSERT INTO `tb_category` VALUES ('615', '男式内裤', '612', '0', '3');
INSERT INTO `tb_category` VALUES ('616', '睡衣/家居服', '612', '0', '4');
INSERT INTO `tb_category` VALUES ('617', '塑身美体', '612', '0', '5');
INSERT INTO `tb_category` VALUES ('618', '泳衣', '612', '0', '6');
INSERT INTO `tb_category` VALUES ('619', '吊带/背心', '612', '0', '7');
INSERT INTO `tb_category` VALUES ('620', '抹胸', '612', '0', '8');
INSERT INTO `tb_category` VALUES ('621', '连裤袜/丝袜', '612', '0', '9');
INSERT INTO `tb_category` VALUES ('622', '美腿袜', '612', '0', '10');
INSERT INTO `tb_category` VALUES ('623', '商务男袜', '612', '0', '11');
INSERT INTO `tb_category` VALUES ('624', '保暖内衣', '612', '0', '12');
INSERT INTO `tb_category` VALUES ('625', '情侣睡衣', '612', '0', '13');
INSERT INTO `tb_category` VALUES ('626', '文胸套装', '612', '0', '14');
INSERT INTO `tb_category` VALUES ('627', '少女文胸', '612', '0', '15');
INSERT INTO `tb_category` VALUES ('628', '休闲棉袜', '612', '0', '16');
INSERT INTO `tb_category` VALUES ('629', '大码内衣', '612', '0', '17');
INSERT INTO `tb_category` VALUES ('630', '内衣配件', '612', '0', '18');
INSERT INTO `tb_category` VALUES ('631', '打底裤袜', '612', '0', '19');
INSERT INTO `tb_category` VALUES ('632', '打底衫', '612', '0', '20');
INSERT INTO `tb_category` VALUES ('633', '秋衣秋裤', '612', '0', '21');
INSERT INTO `tb_category` VALUES ('634', '情趣内衣', '612', '0', '22');
INSERT INTO `tb_category` VALUES ('635', '洗衣服务', '548', '1', '4');
INSERT INTO `tb_category` VALUES ('636', '服装洗护', '635', '0', '1');
INSERT INTO `tb_category` VALUES ('637', '服饰配件', '548', '1', '5');
INSERT INTO `tb_category` VALUES ('638', '太阳镜', '637', '0', '1');
INSERT INTO `tb_category` VALUES ('639', '光学镜架/镜片', '637', '0', '2');
INSERT INTO `tb_category` VALUES ('640', '围巾/手套/帽子套装', '637', '0', '3');
INSERT INTO `tb_category` VALUES ('641', '袖扣', '637', '0', '4');
INSERT INTO `tb_category` VALUES ('642', '棒球帽', '637', '0', '5');
INSERT INTO `tb_category` VALUES ('643', '毛线帽', '637', '0', '6');
INSERT INTO `tb_category` VALUES ('644', '遮阳帽', '637', '0', '7');
INSERT INTO `tb_category` VALUES ('645', '老花镜', '637', '0', '8');
INSERT INTO `tb_category` VALUES ('646', '装饰眼镜', '637', '0', '9');
INSERT INTO `tb_category` VALUES ('647', '防辐射眼镜', '637', '0', '10');
INSERT INTO `tb_category` VALUES ('648', '游泳镜', '637', '0', '11');
INSERT INTO `tb_category` VALUES ('649', '女士丝巾/围巾/披肩', '637', '0', '12');
INSERT INTO `tb_category` VALUES ('650', '男士丝巾/围巾', '637', '0', '13');
INSERT INTO `tb_category` VALUES ('651', '鸭舌帽', '637', '0', '14');
INSERT INTO `tb_category` VALUES ('652', '贝雷帽', '637', '0', '15');
INSERT INTO `tb_category` VALUES ('653', '礼帽', '637', '0', '16');
INSERT INTO `tb_category` VALUES ('654', '真皮手套', '637', '0', '17');
INSERT INTO `tb_category` VALUES ('655', '毛线手套', '637', '0', '18');
INSERT INTO `tb_category` VALUES ('656', '防晒手套', '637', '0', '19');
INSERT INTO `tb_category` VALUES ('657', '男士腰带/礼盒', '637', '0', '20');
INSERT INTO `tb_category` VALUES ('658', '女士腰带/礼盒', '637', '0', '21');
INSERT INTO `tb_category` VALUES ('659', '钥匙扣', '637', '0', '22');
INSERT INTO `tb_category` VALUES ('660', '遮阳伞/雨伞', '637', '0', '23');
INSERT INTO `tb_category` VALUES ('661', '口罩', '637', '0', '24');
INSERT INTO `tb_category` VALUES ('662', '耳罩/耳包', '637', '0', '25');
INSERT INTO `tb_category` VALUES ('663', '假领', '637', '0', '26');
INSERT INTO `tb_category` VALUES ('664', '毛线/布面料', '637', '0', '27');
INSERT INTO `tb_category` VALUES ('665', '领带/领结/领带夹', '637', '0', '28');
INSERT INTO `tb_category` VALUES ('666', '钟表', '0', '1', '10');
INSERT INTO `tb_category` VALUES ('667', '钟表', '666', '1', '1');
INSERT INTO `tb_category` VALUES ('668', '男表', '667', '0', '1');
INSERT INTO `tb_category` VALUES ('669', '瑞表', '667', '0', '2');
INSERT INTO `tb_category` VALUES ('670', '女表', '667', '0', '3');
INSERT INTO `tb_category` VALUES ('671', '国表', '667', '0', '4');
INSERT INTO `tb_category` VALUES ('672', '日韩表', '667', '0', '5');
INSERT INTO `tb_category` VALUES ('673', '欧美表', '667', '0', '6');
INSERT INTO `tb_category` VALUES ('674', '德表', '667', '0', '7');
INSERT INTO `tb_category` VALUES ('675', '儿童手表', '667', '0', '8');
INSERT INTO `tb_category` VALUES ('676', '智能手表', '667', '0', '9');
INSERT INTO `tb_category` VALUES ('677', '闹钟', '667', '0', '10');
INSERT INTO `tb_category` VALUES ('678', '座钟挂钟', '667', '0', '11');
INSERT INTO `tb_category` VALUES ('679', '钟表配件', '667', '0', '12');
INSERT INTO `tb_category` VALUES ('680', '鞋靴', '0', '1', '11');
INSERT INTO `tb_category` VALUES ('681', '流行男鞋', '680', '1', '1');
INSERT INTO `tb_category` VALUES ('682', '商务休闲鞋', '681', '0', '1');
INSERT INTO `tb_category` VALUES ('683', '正装鞋', '681', '0', '2');
INSERT INTO `tb_category` VALUES ('684', '休闲鞋', '681', '0', '3');
INSERT INTO `tb_category` VALUES ('685', '凉鞋/沙滩鞋', '681', '0', '4');
INSERT INTO `tb_category` VALUES ('686', '男靴', '681', '0', '5');
INSERT INTO `tb_category` VALUES ('687', '功能鞋', '681', '0', '6');
INSERT INTO `tb_category` VALUES ('688', '拖鞋/人字拖', '681', '0', '7');
INSERT INTO `tb_category` VALUES ('689', '雨鞋/雨靴', '681', '0', '8');
INSERT INTO `tb_category` VALUES ('690', '传统布鞋', '681', '0', '9');
INSERT INTO `tb_category` VALUES ('691', '鞋配件', '681', '0', '10');
INSERT INTO `tb_category` VALUES ('692', '帆布鞋', '681', '0', '11');
INSERT INTO `tb_category` VALUES ('693', '增高鞋', '681', '0', '12');
INSERT INTO `tb_category` VALUES ('694', '工装鞋', '681', '0', '13');
INSERT INTO `tb_category` VALUES ('695', '定制鞋', '681', '0', '14');
INSERT INTO `tb_category` VALUES ('696', '时尚女鞋', '680', '1', '2');
INSERT INTO `tb_category` VALUES ('697', '高跟鞋', '696', '0', '1');
INSERT INTO `tb_category` VALUES ('698', '单鞋', '696', '0', '2');
INSERT INTO `tb_category` VALUES ('699', '休闲鞋', '696', '0', '3');
INSERT INTO `tb_category` VALUES ('700', '凉鞋', '696', '0', '4');
INSERT INTO `tb_category` VALUES ('701', '女靴', '696', '0', '5');
INSERT INTO `tb_category` VALUES ('702', '雪地靴', '696', '0', '6');
INSERT INTO `tb_category` VALUES ('703', '拖鞋/人字拖', '696', '0', '7');
INSERT INTO `tb_category` VALUES ('704', '踝靴', '696', '0', '8');
INSERT INTO `tb_category` VALUES ('705', '筒靴', '696', '0', '9');
INSERT INTO `tb_category` VALUES ('706', '帆布鞋', '696', '0', '10');
INSERT INTO `tb_category` VALUES ('707', '雨鞋/雨靴', '696', '0', '11');
INSERT INTO `tb_category` VALUES ('708', '妈妈鞋', '696', '0', '12');
INSERT INTO `tb_category` VALUES ('709', '鞋配件', '696', '0', '13');
INSERT INTO `tb_category` VALUES ('710', '特色鞋', '696', '0', '14');
INSERT INTO `tb_category` VALUES ('711', '鱼嘴鞋', '696', '0', '15');
INSERT INTO `tb_category` VALUES ('712', '布鞋/绣花鞋', '696', '0', '16');
INSERT INTO `tb_category` VALUES ('713', '马丁靴', '696', '0', '17');
INSERT INTO `tb_category` VALUES ('714', '坡跟鞋', '696', '0', '18');
INSERT INTO `tb_category` VALUES ('715', '松糕鞋', '696', '0', '19');
INSERT INTO `tb_category` VALUES ('716', '内增高', '696', '0', '20');
INSERT INTO `tb_category` VALUES ('717', '防水台', '696', '0', '21');
INSERT INTO `tb_category` VALUES ('718', '母婴', '0', '1', '12');
INSERT INTO `tb_category` VALUES ('719', '奶粉', '718', '1', '1');
INSERT INTO `tb_category` VALUES ('720', '婴幼奶粉', '719', '0', '1');
INSERT INTO `tb_category` VALUES ('721', '孕妈奶粉', '719', '0', '2');
INSERT INTO `tb_category` VALUES ('722', '营养辅食', '718', '1', '2');
INSERT INTO `tb_category` VALUES ('723', '益生菌/初乳', '722', '0', '1');
INSERT INTO `tb_category` VALUES ('724', '米粉/菜粉', '722', '0', '2');
INSERT INTO `tb_category` VALUES ('725', '果泥/果汁', '722', '0', '3');
INSERT INTO `tb_category` VALUES ('726', 'DHA', '722', '0', '4');
INSERT INTO `tb_category` VALUES ('727', '宝宝零食', '722', '0', '5');
INSERT INTO `tb_category` VALUES ('728', '钙铁锌/维生素', '722', '0', '6');
INSERT INTO `tb_category` VALUES ('729', '清火/开胃', '722', '0', '7');
INSERT INTO `tb_category` VALUES ('730', '面条/粥', '722', '0', '8');
INSERT INTO `tb_category` VALUES ('731', '尿裤湿巾', '718', '1', '3');
INSERT INTO `tb_category` VALUES ('732', '婴儿尿裤', '731', '0', '1');
INSERT INTO `tb_category` VALUES ('733', '拉拉裤', '731', '0', '2');
INSERT INTO `tb_category` VALUES ('734', '婴儿湿巾', '731', '0', '3');
INSERT INTO `tb_category` VALUES ('735', '成人尿裤', '731', '0', '4');
INSERT INTO `tb_category` VALUES ('736', '喂养用品', '718', '1', '4');
INSERT INTO `tb_category` VALUES ('737', '奶瓶奶嘴', '736', '0', '1');
INSERT INTO `tb_category` VALUES ('738', '吸奶器', '736', '0', '2');
INSERT INTO `tb_category` VALUES ('739', '暖奶消毒', '736', '0', '3');
INSERT INTO `tb_category` VALUES ('740', '儿童餐具', '736', '0', '4');
INSERT INTO `tb_category` VALUES ('741', '水壶/水杯', '736', '0', '5');
INSERT INTO `tb_category` VALUES ('742', '牙胶安抚', '736', '0', '6');
INSERT INTO `tb_category` VALUES ('743', '围兜/防溅衣', '736', '0', '7');
INSERT INTO `tb_category` VALUES ('744', '辅食料理机', '736', '0', '8');
INSERT INTO `tb_category` VALUES ('745', '食物存储', '736', '0', '9');
INSERT INTO `tb_category` VALUES ('746', '洗护用品', '718', '1', '5');
INSERT INTO `tb_category` VALUES ('747', '宝宝护肤', '746', '0', '1');
INSERT INTO `tb_category` VALUES ('748', '洗发沐浴', '746', '0', '2');
INSERT INTO `tb_category` VALUES ('749', '奶瓶清洗', '746', '0', '3');
INSERT INTO `tb_category` VALUES ('750', '驱蚊防晒', '746', '0', '4');
INSERT INTO `tb_category` VALUES ('751', '理发器', '746', '0', '5');
INSERT INTO `tb_category` VALUES ('752', '洗澡用具', '746', '0', '6');
INSERT INTO `tb_category` VALUES ('753', '婴儿口腔清洁', '746', '0', '7');
INSERT INTO `tb_category` VALUES ('754', '洗衣液/皂', '746', '0', '8');
INSERT INTO `tb_category` VALUES ('755', '日常护理', '746', '0', '9');
INSERT INTO `tb_category` VALUES ('756', '座便器', '746', '0', '10');
INSERT INTO `tb_category` VALUES ('757', '童车童床', '718', '1', '6');
INSERT INTO `tb_category` VALUES ('758', '婴儿推车', '757', '0', '1');
INSERT INTO `tb_category` VALUES ('759', '餐椅摇椅', '757', '0', '2');
INSERT INTO `tb_category` VALUES ('760', '婴儿床', '757', '0', '3');
INSERT INTO `tb_category` VALUES ('761', '学步车', '757', '0', '4');
INSERT INTO `tb_category` VALUES ('762', '三轮车', '757', '0', '5');
INSERT INTO `tb_category` VALUES ('763', '自行车', '757', '0', '6');
INSERT INTO `tb_category` VALUES ('764', '电动车', '757', '0', '7');
INSERT INTO `tb_category` VALUES ('765', '扭扭车', '757', '0', '8');
INSERT INTO `tb_category` VALUES ('766', '滑板车', '757', '0', '9');
INSERT INTO `tb_category` VALUES ('767', '婴儿床垫', '757', '0', '10');
INSERT INTO `tb_category` VALUES ('768', '寝居服饰', '718', '1', '7');
INSERT INTO `tb_category` VALUES ('769', '婴儿外出服', '768', '0', '1');
INSERT INTO `tb_category` VALUES ('770', '婴儿内衣', '768', '0', '2');
INSERT INTO `tb_category` VALUES ('771', '婴儿礼盒', '768', '0', '3');
INSERT INTO `tb_category` VALUES ('772', '婴儿鞋帽袜', '768', '0', '4');
INSERT INTO `tb_category` VALUES ('773', '安全防护', '768', '0', '5');
INSERT INTO `tb_category` VALUES ('774', '家居床品', '768', '0', '6');
INSERT INTO `tb_category` VALUES ('775', '睡袋/抱被', '768', '0', '7');
INSERT INTO `tb_category` VALUES ('776', '爬行垫', '768', '0', '8');
INSERT INTO `tb_category` VALUES ('777', '妈妈专区', '718', '1', '8');
INSERT INTO `tb_category` VALUES ('778', '妈咪包/背婴带', '777', '0', '1');
INSERT INTO `tb_category` VALUES ('779', '产后塑身', '777', '0', '2');
INSERT INTO `tb_category` VALUES ('780', '文胸/内裤', '777', '0', '3');
INSERT INTO `tb_category` VALUES ('781', '防辐射服', '777', '0', '4');
INSERT INTO `tb_category` VALUES ('782', '孕妈装', '777', '0', '5');
INSERT INTO `tb_category` VALUES ('783', '孕期营养', '777', '0', '6');
INSERT INTO `tb_category` VALUES ('784', '孕妇护肤', '777', '0', '7');
INSERT INTO `tb_category` VALUES ('785', '待产护理', '777', '0', '8');
INSERT INTO `tb_category` VALUES ('786', '月子装', '777', '0', '9');
INSERT INTO `tb_category` VALUES ('787', '防溢乳垫', '777', '0', '10');
INSERT INTO `tb_category` VALUES ('788', '童装童鞋', '718', '1', '9');
INSERT INTO `tb_category` VALUES ('789', '套装', '788', '0', '1');
INSERT INTO `tb_category` VALUES ('790', '上衣', '788', '0', '2');
INSERT INTO `tb_category` VALUES ('791', '裤子', '788', '0', '3');
INSERT INTO `tb_category` VALUES ('792', '裙子', '788', '0', '4');
INSERT INTO `tb_category` VALUES ('793', '内衣/家居服', '788', '0', '5');
INSERT INTO `tb_category` VALUES ('794', '羽绒服/棉服', '788', '0', '6');
INSERT INTO `tb_category` VALUES ('795', '亲子装', '788', '0', '7');
INSERT INTO `tb_category` VALUES ('796', '儿童配饰', '788', '0', '8');
INSERT INTO `tb_category` VALUES ('797', '礼服/演出服', '788', '0', '9');
INSERT INTO `tb_category` VALUES ('798', '运动鞋', '788', '0', '10');
INSERT INTO `tb_category` VALUES ('799', '皮鞋/帆布鞋', '788', '0', '11');
INSERT INTO `tb_category` VALUES ('800', '靴子', '788', '0', '12');
INSERT INTO `tb_category` VALUES ('801', '凉鞋', '788', '0', '13');
INSERT INTO `tb_category` VALUES ('802', '功能鞋', '788', '0', '14');
INSERT INTO `tb_category` VALUES ('803', '户外/运动服', '788', '0', '15');
INSERT INTO `tb_category` VALUES ('804', '安全座椅', '718', '1', '10');
INSERT INTO `tb_category` VALUES ('805', '提篮式', '804', '0', '1');
INSERT INTO `tb_category` VALUES ('806', '安全座椅', '804', '0', '2');
INSERT INTO `tb_category` VALUES ('807', '增高垫', '804', '0', '3');
INSERT INTO `tb_category` VALUES ('808', '礼品箱包', '0', '1', '13');
INSERT INTO `tb_category` VALUES ('809', '潮流女包', '808', '1', '1');
INSERT INTO `tb_category` VALUES ('810', '钱包', '809', '0', '1');
INSERT INTO `tb_category` VALUES ('811', '手拿包', '809', '0', '2');
INSERT INTO `tb_category` VALUES ('812', '单肩包', '809', '0', '3');
INSERT INTO `tb_category` VALUES ('813', '双肩包', '809', '0', '4');
INSERT INTO `tb_category` VALUES ('814', '手提包', '809', '0', '5');
INSERT INTO `tb_category` VALUES ('815', '斜挎包', '809', '0', '6');
INSERT INTO `tb_category` VALUES ('816', '钥匙包', '809', '0', '7');
INSERT INTO `tb_category` VALUES ('817', '卡包/零钱包', '809', '0', '8');
INSERT INTO `tb_category` VALUES ('818', '精品男包', '808', '1', '2');
INSERT INTO `tb_category` VALUES ('819', '男士钱包', '818', '0', '1');
INSERT INTO `tb_category` VALUES ('820', '男士手包', '818', '0', '2');
INSERT INTO `tb_category` VALUES ('821', '卡包名片夹', '818', '0', '3');
INSERT INTO `tb_category` VALUES ('822', '商务公文包', '818', '0', '4');
INSERT INTO `tb_category` VALUES ('823', '双肩包', '818', '0', '5');
INSERT INTO `tb_category` VALUES ('824', '单肩/斜挎包', '818', '0', '6');
INSERT INTO `tb_category` VALUES ('825', '钥匙包', '818', '0', '7');
INSERT INTO `tb_category` VALUES ('826', '功能箱包', '808', '1', '3');
INSERT INTO `tb_category` VALUES ('827', '电脑包', '826', '0', '1');
INSERT INTO `tb_category` VALUES ('828', '拉杆箱', '826', '0', '2');
INSERT INTO `tb_category` VALUES ('829', '旅行包', '826', '0', '3');
INSERT INTO `tb_category` VALUES ('830', '旅行配件', '826', '0', '4');
INSERT INTO `tb_category` VALUES ('831', '休闲运动包', '826', '0', '5');
INSERT INTO `tb_category` VALUES ('832', '拉杆包', '826', '0', '6');
INSERT INTO `tb_category` VALUES ('833', '登山包', '826', '0', '7');
INSERT INTO `tb_category` VALUES ('834', '妈咪包', '826', '0', '8');
INSERT INTO `tb_category` VALUES ('835', '书包', '826', '0', '9');
INSERT INTO `tb_category` VALUES ('836', '相机包', '826', '0', '10');
INSERT INTO `tb_category` VALUES ('837', '腰包/胸包', '826', '0', '11');
INSERT INTO `tb_category` VALUES ('838', '礼品', '808', '1', '4');
INSERT INTO `tb_category` VALUES ('839', '火机烟具', '838', '0', '1');
INSERT INTO `tb_category` VALUES ('840', '礼品文具', '838', '0', '2');
INSERT INTO `tb_category` VALUES ('841', '军刀军具', '838', '0', '3');
INSERT INTO `tb_category` VALUES ('842', '收藏品', '838', '0', '4');
INSERT INTO `tb_category` VALUES ('843', '工艺礼品', '838', '0', '5');
INSERT INTO `tb_category` VALUES ('844', '创意礼品', '838', '0', '6');
INSERT INTO `tb_category` VALUES ('845', '礼盒礼券', '838', '0', '7');
INSERT INTO `tb_category` VALUES ('846', '鲜花绿植', '838', '0', '8');
INSERT INTO `tb_category` VALUES ('847', '婚庆节庆', '838', '0', '9');
INSERT INTO `tb_category` VALUES ('848', '京东卡', '838', '0', '10');
INSERT INTO `tb_category` VALUES ('849', '美妆礼品', '838', '0', '11');
INSERT INTO `tb_category` VALUES ('850', '礼品定制', '838', '0', '12');
INSERT INTO `tb_category` VALUES ('851', '京东福卡', '838', '0', '13');
INSERT INTO `tb_category` VALUES ('852', '古董文玩', '838', '0', '14');
INSERT INTO `tb_category` VALUES ('853', '奢侈品', '808', '1', '5');
INSERT INTO `tb_category` VALUES ('854', '箱包', '853', '0', '1');
INSERT INTO `tb_category` VALUES ('855', '钱包', '853', '0', '2');
INSERT INTO `tb_category` VALUES ('856', '服饰', '853', '0', '3');
INSERT INTO `tb_category` VALUES ('857', '腰带', '853', '0', '4');
INSERT INTO `tb_category` VALUES ('858', '太阳镜/眼镜框', '853', '0', '5');
INSERT INTO `tb_category` VALUES ('859', '配件', '853', '0', '6');
INSERT INTO `tb_category` VALUES ('860', '鞋靴', '853', '0', '7');
INSERT INTO `tb_category` VALUES ('861', '饰品', '853', '0', '8');
INSERT INTO `tb_category` VALUES ('862', '名品腕表', '853', '0', '9');
INSERT INTO `tb_category` VALUES ('863', '高档化妆品', '853', '0', '10');
INSERT INTO `tb_category` VALUES ('864', '婚庆', '808', '1', '6');
INSERT INTO `tb_category` VALUES ('865', '婚嫁首饰', '864', '0', '1');
INSERT INTO `tb_category` VALUES ('866', '婚纱摄影', '864', '0', '2');
INSERT INTO `tb_category` VALUES ('867', '婚纱礼服', '864', '0', '3');
INSERT INTO `tb_category` VALUES ('868', '婚庆服务', '864', '0', '4');
INSERT INTO `tb_category` VALUES ('869', '婚庆礼品/用品', '864', '0', '5');
INSERT INTO `tb_category` VALUES ('870', '婚宴', '864', '0', '6');
INSERT INTO `tb_category` VALUES ('871', '食品饮料、保健食品', '0', '1', '14');
INSERT INTO `tb_category` VALUES ('872', '进口食品', '871', '1', '1');
INSERT INTO `tb_category` VALUES ('873', '饼干蛋糕', '872', '0', '1');
INSERT INTO `tb_category` VALUES ('874', '糖果/巧克力', '872', '0', '2');
INSERT INTO `tb_category` VALUES ('875', '休闲零食', '872', '0', '3');
INSERT INTO `tb_category` VALUES ('876', '冲调饮品', '872', '0', '4');
INSERT INTO `tb_category` VALUES ('877', '粮油调味', '872', '0', '5');
INSERT INTO `tb_category` VALUES ('878', '牛奶', '872', '0', '6');
INSERT INTO `tb_category` VALUES ('879', '地方特产', '871', '1', '2');
INSERT INTO `tb_category` VALUES ('880', '其他特产', '879', '0', '1');
INSERT INTO `tb_category` VALUES ('881', '新疆', '879', '0', '2');
INSERT INTO `tb_category` VALUES ('882', '北京', '879', '0', '3');
INSERT INTO `tb_category` VALUES ('883', '山西', '879', '0', '4');
INSERT INTO `tb_category` VALUES ('884', '内蒙古', '879', '0', '5');
INSERT INTO `tb_category` VALUES ('885', '福建', '879', '0', '6');
INSERT INTO `tb_category` VALUES ('886', '湖南', '879', '0', '7');
INSERT INTO `tb_category` VALUES ('887', '四川', '879', '0', '8');
INSERT INTO `tb_category` VALUES ('888', '云南', '879', '0', '9');
INSERT INTO `tb_category` VALUES ('889', '东北', '879', '0', '10');
INSERT INTO `tb_category` VALUES ('890', '休闲食品', '871', '1', '3');
INSERT INTO `tb_category` VALUES ('891', '休闲零食', '890', '0', '1');
INSERT INTO `tb_category` VALUES ('892', '坚果炒货', '890', '0', '2');
INSERT INTO `tb_category` VALUES ('893', '肉干肉脯', '890', '0', '3');
INSERT INTO `tb_category` VALUES ('894', '蜜饯果干', '890', '0', '4');
INSERT INTO `tb_category` VALUES ('895', '糖果/巧克力', '890', '0', '5');
INSERT INTO `tb_category` VALUES ('896', '饼干蛋糕', '890', '0', '6');
INSERT INTO `tb_category` VALUES ('897', '无糖食品', '890', '0', '7');
INSERT INTO `tb_category` VALUES ('898', '粮油调味', '871', '1', '4');
INSERT INTO `tb_category` VALUES ('899', '米面杂粮', '898', '0', '1');
INSERT INTO `tb_category` VALUES ('900', '食用油', '898', '0', '2');
INSERT INTO `tb_category` VALUES ('901', '调味品', '898', '0', '3');
INSERT INTO `tb_category` VALUES ('902', '南北干货', '898', '0', '4');
INSERT INTO `tb_category` VALUES ('903', '方便食品', '898', '0', '5');
INSERT INTO `tb_category` VALUES ('904', '有机食品', '898', '0', '6');
INSERT INTO `tb_category` VALUES ('905', '饮料冲调', '871', '1', '5');
INSERT INTO `tb_category` VALUES ('906', '饮用水', '905', '0', '1');
INSERT INTO `tb_category` VALUES ('907', '饮料', '905', '0', '2');
INSERT INTO `tb_category` VALUES ('908', '牛奶乳品', '905', '0', '3');
INSERT INTO `tb_category` VALUES ('909', '咖啡/奶茶', '905', '0', '4');
INSERT INTO `tb_category` VALUES ('910', '冲饮谷物', '905', '0', '5');
INSERT INTO `tb_category` VALUES ('911', '蜂蜜/柚子茶', '905', '0', '6');
INSERT INTO `tb_category` VALUES ('912', '成人奶粉', '905', '0', '7');
INSERT INTO `tb_category` VALUES ('913', '食品礼券', '871', '1', '6');
INSERT INTO `tb_category` VALUES ('914', '月饼', '913', '0', '1');
INSERT INTO `tb_category` VALUES ('915', '大闸蟹', '913', '0', '2');
INSERT INTO `tb_category` VALUES ('916', '粽子', '913', '0', '3');
INSERT INTO `tb_category` VALUES ('917', '卡券', '913', '0', '4');
INSERT INTO `tb_category` VALUES ('918', '茗茶', '871', '1', '7');
INSERT INTO `tb_category` VALUES ('919', '铁观音', '918', '0', '1');
INSERT INTO `tb_category` VALUES ('920', '普洱', '918', '0', '2');
INSERT INTO `tb_category` VALUES ('921', '龙井', '918', '0', '3');
INSERT INTO `tb_category` VALUES ('922', '绿茶', '918', '0', '4');
INSERT INTO `tb_category` VALUES ('923', '红茶', '918', '0', '5');
INSERT INTO `tb_category` VALUES ('924', '乌龙茶', '918', '0', '6');
INSERT INTO `tb_category` VALUES ('925', '花草茶', '918', '0', '7');
INSERT INTO `tb_category` VALUES ('926', '花果茶', '918', '0', '8');
INSERT INTO `tb_category` VALUES ('927', '养生茶', '918', '0', '9');
INSERT INTO `tb_category` VALUES ('928', '黑茶', '918', '0', '10');
INSERT INTO `tb_category` VALUES ('929', '白茶', '918', '0', '11');
INSERT INTO `tb_category` VALUES ('930', '其它茶', '918', '0', '12');
INSERT INTO `tb_category` VALUES ('931', '珠宝', '0', '1', '15');
INSERT INTO `tb_category` VALUES ('932', '时尚饰品', '931', '1', '1');
INSERT INTO `tb_category` VALUES ('933', '项链', '932', '0', '1');
INSERT INTO `tb_category` VALUES ('934', '手链/脚链', '932', '0', '2');
INSERT INTO `tb_category` VALUES ('935', '戒指', '932', '0', '3');
INSERT INTO `tb_category` VALUES ('936', '耳饰', '932', '0', '4');
INSERT INTO `tb_category` VALUES ('937', '毛衣链', '932', '0', '5');
INSERT INTO `tb_category` VALUES ('938', '发饰/发卡', '932', '0', '6');
INSERT INTO `tb_category` VALUES ('939', '胸针', '932', '0', '7');
INSERT INTO `tb_category` VALUES ('940', '饰品配件', '932', '0', '8');
INSERT INTO `tb_category` VALUES ('941', '婚庆饰品', '932', '0', '9');
INSERT INTO `tb_category` VALUES ('942', '黄金', '931', '1', '2');
INSERT INTO `tb_category` VALUES ('943', '黄金吊坠', '942', '0', '1');
INSERT INTO `tb_category` VALUES ('944', '黄金项链', '942', '0', '2');
INSERT INTO `tb_category` VALUES ('945', '黄金转运珠', '942', '0', '3');
INSERT INTO `tb_category` VALUES ('946', '黄金手镯/手链/脚链', '942', '0', '4');
INSERT INTO `tb_category` VALUES ('947', '黄金耳饰', '942', '0', '5');
INSERT INTO `tb_category` VALUES ('948', '黄金戒指', '942', '0', '6');
INSERT INTO `tb_category` VALUES ('949', 'K金饰品', '931', '1', '3');
INSERT INTO `tb_category` VALUES ('950', 'K金吊坠', '949', '0', '1');
INSERT INTO `tb_category` VALUES ('951', 'K金项链', '949', '0', '2');
INSERT INTO `tb_category` VALUES ('952', 'K金手镯/手链/脚链', '949', '0', '3');
INSERT INTO `tb_category` VALUES ('953', 'K金戒指', '949', '0', '4');
INSERT INTO `tb_category` VALUES ('954', 'K金耳饰', '949', '0', '5');
INSERT INTO `tb_category` VALUES ('955', '金银投资', '931', '1', '4');
INSERT INTO `tb_category` VALUES ('956', '投资金', '955', '0', '1');
INSERT INTO `tb_category` VALUES ('957', '投资银', '955', '0', '2');
INSERT INTO `tb_category` VALUES ('958', '投资收藏', '955', '0', '3');
INSERT INTO `tb_category` VALUES ('959', '银饰', '931', '1', '5');
INSERT INTO `tb_category` VALUES ('960', '银吊坠/项链', '959', '0', '1');
INSERT INTO `tb_category` VALUES ('961', '银手镯/手链/脚链', '959', '0', '2');
INSERT INTO `tb_category` VALUES ('962', '银戒指', '959', '0', '3');
INSERT INTO `tb_category` VALUES ('963', '银耳饰', '959', '0', '4');
INSERT INTO `tb_category` VALUES ('964', '足银手镯', '959', '0', '5');
INSERT INTO `tb_category` VALUES ('965', '宝宝银饰', '959', '0', '6');
INSERT INTO `tb_category` VALUES ('966', '钻石', '931', '1', '6');
INSERT INTO `tb_category` VALUES ('967', '裸钻', '966', '0', '1');
INSERT INTO `tb_category` VALUES ('968', '钻戒', '966', '0', '2');
INSERT INTO `tb_category` VALUES ('969', '钻石项链/吊坠', '966', '0', '3');
INSERT INTO `tb_category` VALUES ('970', '钻石耳饰', '966', '0', '4');
INSERT INTO `tb_category` VALUES ('971', '钻石手镯/手链', '966', '0', '5');
INSERT INTO `tb_category` VALUES ('972', '翡翠玉石', '931', '1', '7');
INSERT INTO `tb_category` VALUES ('973', '项链/吊坠', '972', '0', '1');
INSERT INTO `tb_category` VALUES ('974', '手镯/手串', '972', '0', '2');
INSERT INTO `tb_category` VALUES ('975', '戒指', '972', '0', '3');
INSERT INTO `tb_category` VALUES ('976', '耳饰', '972', '0', '4');
INSERT INTO `tb_category` VALUES ('977', '挂件/摆件/把件', '972', '0', '5');
INSERT INTO `tb_category` VALUES ('978', '玉石孤品', '972', '0', '6');
INSERT INTO `tb_category` VALUES ('979', '水晶玛瑙', '931', '1', '8');
INSERT INTO `tb_category` VALUES ('980', '项链/吊坠', '979', '0', '1');
INSERT INTO `tb_category` VALUES ('981', '耳饰', '979', '0', '2');
INSERT INTO `tb_category` VALUES ('982', '手镯/手链/脚链', '979', '0', '3');
INSERT INTO `tb_category` VALUES ('983', '戒指', '979', '0', '4');
INSERT INTO `tb_category` VALUES ('984', '头饰/胸针', '979', '0', '5');
INSERT INTO `tb_category` VALUES ('985', '摆件/挂件', '979', '0', '6');
INSERT INTO `tb_category` VALUES ('986', '彩宝', '931', '1', '9');
INSERT INTO `tb_category` VALUES ('987', '琥珀/蜜蜡', '986', '0', '1');
INSERT INTO `tb_category` VALUES ('988', '碧玺', '986', '0', '2');
INSERT INTO `tb_category` VALUES ('989', '红宝石/蓝宝石', '986', '0', '3');
INSERT INTO `tb_category` VALUES ('990', '坦桑石', '986', '0', '4');
INSERT INTO `tb_category` VALUES ('991', '珊瑚', '986', '0', '5');
INSERT INTO `tb_category` VALUES ('992', '祖母绿', '986', '0', '6');
INSERT INTO `tb_category` VALUES ('993', '葡萄石', '986', '0', '7');
INSERT INTO `tb_category` VALUES ('994', '其他天然宝石', '986', '0', '8');
INSERT INTO `tb_category` VALUES ('995', '项链/吊坠', '986', '0', '9');
INSERT INTO `tb_category` VALUES ('996', '耳饰', '986', '0', '10');
INSERT INTO `tb_category` VALUES ('997', '手镯/手链', '986', '0', '11');
INSERT INTO `tb_category` VALUES ('998', '戒指', '986', '0', '12');
INSERT INTO `tb_category` VALUES ('999', '铂金', '931', '1', '10');
INSERT INTO `tb_category` VALUES ('1000', '铂金项链/吊坠', '999', '0', '1');
INSERT INTO `tb_category` VALUES ('1001', '铂金手镯/手链/脚链', '999', '0', '2');
INSERT INTO `tb_category` VALUES ('1002', '铂金戒指', '999', '0', '3');
INSERT INTO `tb_category` VALUES ('1003', '铂金耳饰', '999', '0', '4');
INSERT INTO `tb_category` VALUES ('1004', '木手串/把件', '931', '1', '11');
INSERT INTO `tb_category` VALUES ('1005', '小叶紫檀', '1004', '0', '1');
INSERT INTO `tb_category` VALUES ('1006', '黄花梨', '1004', '0', '2');
INSERT INTO `tb_category` VALUES ('1007', '沉香木', '1004', '0', '3');
INSERT INTO `tb_category` VALUES ('1008', '金丝楠', '1004', '0', '4');
INSERT INTO `tb_category` VALUES ('1009', '菩提', '1004', '0', '5');
INSERT INTO `tb_category` VALUES ('1010', '其他', '1004', '0', '6');
INSERT INTO `tb_category` VALUES ('1011', '橄榄核/核桃', '1004', '0', '7');
INSERT INTO `tb_category` VALUES ('1012', '檀香', '1004', '0', '8');
INSERT INTO `tb_category` VALUES ('1013', '珍珠', '931', '1', '12');
INSERT INTO `tb_category` VALUES ('1014', '珍珠项链', '1013', '0', '1');
INSERT INTO `tb_category` VALUES ('1015', '珍珠吊坠', '1013', '0', '2');
INSERT INTO `tb_category` VALUES ('1016', '珍珠耳饰', '1013', '0', '3');
INSERT INTO `tb_category` VALUES ('1017', '珍珠手链', '1013', '0', '4');
INSERT INTO `tb_category` VALUES ('1018', '珍珠戒指', '1013', '0', '5');
INSERT INTO `tb_category` VALUES ('1019', '珍珠胸针', '1013', '0', '6');
INSERT INTO `tb_category` VALUES ('1020', '汽车用品', '0', '1', '16');
INSERT INTO `tb_category` VALUES ('1021', '维修保养', '1020', '1', '1');
INSERT INTO `tb_category` VALUES ('1022', '机油', '1021', '0', '1');
INSERT INTO `tb_category` VALUES ('1023', '正时皮带', '1021', '0', '2');
INSERT INTO `tb_category` VALUES ('1024', '添加剂', '1021', '0', '3');
INSERT INTO `tb_category` VALUES ('1025', '汽车喇叭', '1021', '0', '4');
INSERT INTO `tb_category` VALUES ('1026', '防冻液', '1021', '0', '5');
INSERT INTO `tb_category` VALUES ('1027', '汽车玻璃', '1021', '0', '6');
INSERT INTO `tb_category` VALUES ('1028', '滤清器', '1021', '0', '7');
INSERT INTO `tb_category` VALUES ('1029', '火花塞', '1021', '0', '8');
INSERT INTO `tb_category` VALUES ('1030', '减震器', '1021', '0', '9');
INSERT INTO `tb_category` VALUES ('1031', '柴机油/辅助油', '1021', '0', '10');
INSERT INTO `tb_category` VALUES ('1032', '雨刷', '1021', '0', '11');
INSERT INTO `tb_category` VALUES ('1033', '车灯', '1021', '0', '12');
INSERT INTO `tb_category` VALUES ('1034', '后视镜', '1021', '0', '13');
INSERT INTO `tb_category` VALUES ('1035', '轮胎', '1021', '0', '14');
INSERT INTO `tb_category` VALUES ('1036', '轮毂', '1021', '0', '15');
INSERT INTO `tb_category` VALUES ('1037', '刹车片/盘', '1021', '0', '16');
INSERT INTO `tb_category` VALUES ('1038', '维修配件', '1021', '0', '17');
INSERT INTO `tb_category` VALUES ('1039', '蓄电池', '1021', '0', '18');
INSERT INTO `tb_category` VALUES ('1040', '底盘装甲/护板', '1021', '0', '19');
INSERT INTO `tb_category` VALUES ('1041', '贴膜', '1021', '0', '20');
INSERT INTO `tb_category` VALUES ('1042', '汽修工具', '1021', '0', '21');
INSERT INTO `tb_category` VALUES ('1043', '改装配件', '1021', '0', '22');
INSERT INTO `tb_category` VALUES ('1044', '车载电器', '1020', '1', '2');
INSERT INTO `tb_category` VALUES ('1045', '导航仪', '1044', '0', '1');
INSERT INTO `tb_category` VALUES ('1046', '安全预警仪', '1044', '0', '2');
INSERT INTO `tb_category` VALUES ('1047', '行车记录仪', '1044', '0', '3');
INSERT INTO `tb_category` VALUES ('1048', '倒车雷达', '1044', '0', '4');
INSERT INTO `tb_category` VALUES ('1049', '蓝牙设备', '1044', '0', '5');
INSERT INTO `tb_category` VALUES ('1050', '车载影音', '1044', '0', '6');
INSERT INTO `tb_category` VALUES ('1051', '净化器', '1044', '0', '7');
INSERT INTO `tb_category` VALUES ('1052', '电源', '1044', '0', '8');
INSERT INTO `tb_category` VALUES ('1053', '智能驾驶', '1044', '0', '9');
INSERT INTO `tb_category` VALUES ('1054', '车载电台', '1044', '0', '10');
INSERT INTO `tb_category` VALUES ('1055', '车载电器配件', '1044', '0', '11');
INSERT INTO `tb_category` VALUES ('1056', '吸尘器', '1044', '0', '12');
INSERT INTO `tb_category` VALUES ('1057', '智能车机', '1044', '0', '13');
INSERT INTO `tb_category` VALUES ('1058', '冰箱', '1044', '0', '14');
INSERT INTO `tb_category` VALUES ('1059', '汽车音响', '1044', '0', '15');
INSERT INTO `tb_category` VALUES ('1060', '车载生活电器', '1044', '0', '16');
INSERT INTO `tb_category` VALUES ('1061', '美容清洗', '1020', '1', '3');
INSERT INTO `tb_category` VALUES ('1062', '车蜡', '1061', '0', '1');
INSERT INTO `tb_category` VALUES ('1063', '补漆笔', '1061', '0', '2');
INSERT INTO `tb_category` VALUES ('1064', '玻璃水', '1061', '0', '3');
INSERT INTO `tb_category` VALUES ('1065', '清洁剂', '1061', '0', '4');
INSERT INTO `tb_category` VALUES ('1066', '洗车工具', '1061', '0', '5');
INSERT INTO `tb_category` VALUES ('1067', '镀晶镀膜', '1061', '0', '6');
INSERT INTO `tb_category` VALUES ('1068', '打蜡机', '1061', '0', '7');
INSERT INTO `tb_category` VALUES ('1069', '洗车配件', '1061', '0', '8');
INSERT INTO `tb_category` VALUES ('1070', '洗车机', '1061', '0', '9');
INSERT INTO `tb_category` VALUES ('1071', '洗车水枪', '1061', '0', '10');
INSERT INTO `tb_category` VALUES ('1072', '毛巾掸子', '1061', '0', '11');
INSERT INTO `tb_category` VALUES ('1073', '汽车装饰', '1020', '1', '4');
INSERT INTO `tb_category` VALUES ('1074', '脚垫', '1073', '0', '1');
INSERT INTO `tb_category` VALUES ('1075', '座垫', '1073', '0', '2');
INSERT INTO `tb_category` VALUES ('1076', '座套', '1073', '0', '3');
INSERT INTO `tb_category` VALUES ('1077', '后备箱垫', '1073', '0', '4');
INSERT INTO `tb_category` VALUES ('1078', '头枕腰靠', '1073', '0', '5');
INSERT INTO `tb_category` VALUES ('1079', '方向盘套', '1073', '0', '6');
INSERT INTO `tb_category` VALUES ('1080', '香水', '1073', '0', '7');
INSERT INTO `tb_category` VALUES ('1081', '空气净化', '1073', '0', '8');
INSERT INTO `tb_category` VALUES ('1082', '挂件摆件', '1073', '0', '9');
INSERT INTO `tb_category` VALUES ('1083', '功能小件', '1073', '0', '10');
INSERT INTO `tb_category` VALUES ('1084', '车身装饰件', '1073', '0', '11');
INSERT INTO `tb_category` VALUES ('1085', '车衣', '1073', '0', '12');
INSERT INTO `tb_category` VALUES ('1086', '安全自驾', '1020', '1', '5');
INSERT INTO `tb_category` VALUES ('1087', '安全座椅', '1086', '0', '1');
INSERT INTO `tb_category` VALUES ('1088', '胎压监测', '1086', '0', '2');
INSERT INTO `tb_category` VALUES ('1089', '防盗设备', '1086', '0', '3');
INSERT INTO `tb_category` VALUES ('1090', '应急救援', '1086', '0', '4');
INSERT INTO `tb_category` VALUES ('1091', '保温箱', '1086', '0', '5');
INSERT INTO `tb_category` VALUES ('1092', '地锁', '1086', '0', '6');
INSERT INTO `tb_category` VALUES ('1093', '摩托车', '1086', '0', '7');
INSERT INTO `tb_category` VALUES ('1094', '充气泵', '1086', '0', '8');
INSERT INTO `tb_category` VALUES ('1095', '储物箱', '1086', '0', '9');
INSERT INTO `tb_category` VALUES ('1096', '自驾野营', '1086', '0', '10');
INSERT INTO `tb_category` VALUES ('1097', '摩托车装备', '1086', '0', '11');
INSERT INTO `tb_category` VALUES ('1098', '汽车服务', '1020', '1', '6');
INSERT INTO `tb_category` VALUES ('1099', '清洗美容', '1098', '0', '1');
INSERT INTO `tb_category` VALUES ('1100', '功能升级', '1098', '0', '2');
INSERT INTO `tb_category` VALUES ('1101', '保养维修', '1098', '0', '3');
INSERT INTO `tb_category` VALUES ('1102', '油卡充值', '1098', '0', '4');
INSERT INTO `tb_category` VALUES ('1103', '车险', '1098', '0', '5');
INSERT INTO `tb_category` VALUES ('1104', '加油卡', '1098', '0', '6');
INSERT INTO `tb_category` VALUES ('1105', 'ETC', '1098', '0', '7');
INSERT INTO `tb_category` VALUES ('1106', '驾驶培训', '1098', '0', '8');
INSERT INTO `tb_category` VALUES ('1107', '赛事改装', '1020', '1', '7');
INSERT INTO `tb_category` VALUES ('1108', '赛事服装', '1107', '0', '1');
INSERT INTO `tb_category` VALUES ('1109', '赛事用品', '1107', '0', '2');
INSERT INTO `tb_category` VALUES ('1110', '制动系统', '1107', '0', '3');
INSERT INTO `tb_category` VALUES ('1111', '悬挂系统', '1107', '0', '4');
INSERT INTO `tb_category` VALUES ('1112', '进气系统', '1107', '0', '5');
INSERT INTO `tb_category` VALUES ('1113', '排气系统', '1107', '0', '6');
INSERT INTO `tb_category` VALUES ('1114', '电子管理', '1107', '0', '7');
INSERT INTO `tb_category` VALUES ('1115', '车身强化', '1107', '0', '8');
INSERT INTO `tb_category` VALUES ('1116', '赛事座椅', '1107', '0', '9');
INSERT INTO `tb_category` VALUES ('1117', '运动健康', '0', '1', '17');
INSERT INTO `tb_category` VALUES ('1118', '运动鞋包', '1117', '1', '1');
INSERT INTO `tb_category` VALUES ('1119', '跑步鞋', '1118', '0', '1');
INSERT INTO `tb_category` VALUES ('1120', '休闲鞋', '1118', '0', '2');
INSERT INTO `tb_category` VALUES ('1121', '篮球鞋', '1118', '0', '3');
INSERT INTO `tb_category` VALUES ('1122', '板鞋', '1118', '0', '4');
INSERT INTO `tb_category` VALUES ('1123', '帆布鞋', '1118', '0', '5');
INSERT INTO `tb_category` VALUES ('1124', '足球鞋', '1118', '0', '6');
INSERT INTO `tb_category` VALUES ('1125', '乒羽网鞋', '1118', '0', '7');
INSERT INTO `tb_category` VALUES ('1126', '专项运动鞋', '1118', '0', '8');
INSERT INTO `tb_category` VALUES ('1127', '训练鞋', '1118', '0', '9');
INSERT INTO `tb_category` VALUES ('1128', '拖鞋', '1118', '0', '10');
INSERT INTO `tb_category` VALUES ('1129', '运动包', '1118', '0', '11');
INSERT INTO `tb_category` VALUES ('1130', '运动服饰', '1117', '1', '2');
INSERT INTO `tb_category` VALUES ('1131', '羽绒服', '1130', '0', '1');
INSERT INTO `tb_category` VALUES ('1132', '棉服', '1130', '0', '2');
INSERT INTO `tb_category` VALUES ('1133', '运动裤', '1130', '0', '3');
INSERT INTO `tb_category` VALUES ('1134', '夹克/风衣', '1130', '0', '4');
INSERT INTO `tb_category` VALUES ('1135', '卫衣/套头衫', '1130', '0', '5');
INSERT INTO `tb_category` VALUES ('1136', 'T恤', '1130', '0', '6');
INSERT INTO `tb_category` VALUES ('1137', '套装', '1130', '0', '7');
INSERT INTO `tb_category` VALUES ('1138', '乒羽网服', '1130', '0', '8');
INSERT INTO `tb_category` VALUES ('1139', '健身服', '1130', '0', '9');
INSERT INTO `tb_category` VALUES ('1140', '运动背心', '1130', '0', '10');
INSERT INTO `tb_category` VALUES ('1141', '毛衫/线衫', '1130', '0', '11');
INSERT INTO `tb_category` VALUES ('1142', '运动配饰', '1130', '0', '12');
INSERT INTO `tb_category` VALUES ('1143', '骑行运动', '1117', '1', '3');
INSERT INTO `tb_category` VALUES ('1144', '折叠车', '1143', '0', '1');
INSERT INTO `tb_category` VALUES ('1145', '山地车/公路车', '1143', '0', '2');
INSERT INTO `tb_category` VALUES ('1146', '电动车', '1143', '0', '3');
INSERT INTO `tb_category` VALUES ('1147', '其他整车', '1143', '0', '4');
INSERT INTO `tb_category` VALUES ('1148', '骑行服', '1143', '0', '5');
INSERT INTO `tb_category` VALUES ('1149', '骑行装备', '1143', '0', '6');
INSERT INTO `tb_category` VALUES ('1150', '平衡车', '1143', '0', '7');
INSERT INTO `tb_category` VALUES ('1151', '垂钓用品', '1117', '1', '4');
INSERT INTO `tb_category` VALUES ('1152', '鱼竿鱼线', '1151', '0', '1');
INSERT INTO `tb_category` VALUES ('1153', '浮漂鱼饵', '1151', '0', '2');
INSERT INTO `tb_category` VALUES ('1154', '钓鱼桌椅', '1151', '0', '3');
INSERT INTO `tb_category` VALUES ('1155', '钓鱼配件', '1151', '0', '4');
INSERT INTO `tb_category` VALUES ('1156', '钓箱鱼包', '1151', '0', '5');
INSERT INTO `tb_category` VALUES ('1157', '其它', '1151', '0', '6');
INSERT INTO `tb_category` VALUES ('1158', '游泳用品', '1117', '1', '5');
INSERT INTO `tb_category` VALUES ('1159', '泳镜', '1158', '0', '1');
INSERT INTO `tb_category` VALUES ('1160', '泳帽', '1158', '0', '2');
INSERT INTO `tb_category` VALUES ('1161', '游泳包防水包', '1158', '0', '3');
INSERT INTO `tb_category` VALUES ('1162', '女士泳衣', '1158', '0', '4');
INSERT INTO `tb_category` VALUES ('1163', '男士泳衣', '1158', '0', '5');
INSERT INTO `tb_category` VALUES ('1164', '比基尼', '1158', '0', '6');
INSERT INTO `tb_category` VALUES ('1165', '其它', '1158', '0', '7');
INSERT INTO `tb_category` VALUES ('1166', '户外鞋服', '1117', '1', '6');
INSERT INTO `tb_category` VALUES ('1167', '冲锋衣裤', '1166', '0', '1');
INSERT INTO `tb_category` VALUES ('1168', '速干衣裤', '1166', '0', '2');
INSERT INTO `tb_category` VALUES ('1169', '滑雪服', '1166', '0', '3');
INSERT INTO `tb_category` VALUES ('1170', '羽绒服/棉服', '1166', '0', '4');
INSERT INTO `tb_category` VALUES ('1171', '休闲衣裤', '1166', '0', '5');
INSERT INTO `tb_category` VALUES ('1172', '抓绒衣裤', '1166', '0', '6');
INSERT INTO `tb_category` VALUES ('1173', '软壳衣裤', '1166', '0', '7');
INSERT INTO `tb_category` VALUES ('1174', 'T恤', '1166', '0', '8');
INSERT INTO `tb_category` VALUES ('1175', '户外风衣', '1166', '0', '9');
INSERT INTO `tb_category` VALUES ('1176', '功能内衣', '1166', '0', '10');
INSERT INTO `tb_category` VALUES ('1177', '军迷服饰', '1166', '0', '11');
INSERT INTO `tb_category` VALUES ('1178', '登山鞋', '1166', '0', '12');
INSERT INTO `tb_category` VALUES ('1179', '雪地靴', '1166', '0', '13');
INSERT INTO `tb_category` VALUES ('1180', '徒步鞋', '1166', '0', '14');
INSERT INTO `tb_category` VALUES ('1181', '越野跑鞋', '1166', '0', '15');
INSERT INTO `tb_category` VALUES ('1182', '休闲鞋', '1166', '0', '16');
INSERT INTO `tb_category` VALUES ('1183', '工装鞋', '1166', '0', '17');
INSERT INTO `tb_category` VALUES ('1184', '溯溪鞋', '1166', '0', '18');
INSERT INTO `tb_category` VALUES ('1185', '沙滩/凉拖', '1166', '0', '19');
INSERT INTO `tb_category` VALUES ('1186', '户外袜', '1166', '0', '20');
INSERT INTO `tb_category` VALUES ('1187', '户外装备', '1117', '1', '7');
INSERT INTO `tb_category` VALUES ('1188', '帐篷/垫子', '1187', '0', '1');
INSERT INTO `tb_category` VALUES ('1189', '睡袋/吊床', '1187', '0', '2');
INSERT INTO `tb_category` VALUES ('1190', '登山攀岩', '1187', '0', '3');
INSERT INTO `tb_category` VALUES ('1191', '户外配饰', '1187', '0', '4');
INSERT INTO `tb_category` VALUES ('1192', '背包', '1187', '0', '5');
INSERT INTO `tb_category` VALUES ('1193', '户外照明', '1187', '0', '6');
INSERT INTO `tb_category` VALUES ('1194', '户外仪表', '1187', '0', '7');
INSERT INTO `tb_category` VALUES ('1195', '户外工具', '1187', '0', '8');
INSERT INTO `tb_category` VALUES ('1196', '望远镜', '1187', '0', '9');
INSERT INTO `tb_category` VALUES ('1197', '旅游用品', '1187', '0', '10');
INSERT INTO `tb_category` VALUES ('1198', '便携桌椅床', '1187', '0', '11');
INSERT INTO `tb_category` VALUES ('1199', '野餐烧烤', '1187', '0', '12');
INSERT INTO `tb_category` VALUES ('1200', '军迷用品', '1187', '0', '13');
INSERT INTO `tb_category` VALUES ('1201', '救援装备', '1187', '0', '14');
INSERT INTO `tb_category` VALUES ('1202', '滑雪装备', '1187', '0', '15');
INSERT INTO `tb_category` VALUES ('1203', '极限户外', '1187', '0', '16');
INSERT INTO `tb_category` VALUES ('1204', '冲浪潜水', '1187', '0', '17');
INSERT INTO `tb_category` VALUES ('1205', '健身训练', '1117', '1', '8');
INSERT INTO `tb_category` VALUES ('1206', '综合训练器', '1205', '0', '1');
INSERT INTO `tb_category` VALUES ('1207', '其他大型器械', '1205', '0', '2');
INSERT INTO `tb_category` VALUES ('1208', '哑铃', '1205', '0', '3');
INSERT INTO `tb_category` VALUES ('1209', '仰卧板/收腹机', '1205', '0', '4');
INSERT INTO `tb_category` VALUES ('1210', '其他中小型器材', '1205', '0', '5');
INSERT INTO `tb_category` VALUES ('1211', '瑜伽舞蹈', '1205', '0', '6');
INSERT INTO `tb_category` VALUES ('1212', '甩脂机', '1205', '0', '7');
INSERT INTO `tb_category` VALUES ('1213', '踏步机', '1205', '0', '8');
INSERT INTO `tb_category` VALUES ('1214', '武术搏击', '1205', '0', '9');
INSERT INTO `tb_category` VALUES ('1215', '健身车/动感单车', '1205', '0', '10');
INSERT INTO `tb_category` VALUES ('1216', '跑步机', '1205', '0', '11');
INSERT INTO `tb_category` VALUES ('1217', '运动护具', '1205', '0', '12');
INSERT INTO `tb_category` VALUES ('1218', '体育用品', '1117', '1', '9');
INSERT INTO `tb_category` VALUES ('1219', '羽毛球', '1218', '0', '1');
INSERT INTO `tb_category` VALUES ('1220', '乒乓球', '1218', '0', '2');
INSERT INTO `tb_category` VALUES ('1221', '篮球', '1218', '0', '3');
INSERT INTO `tb_category` VALUES ('1222', '足球', '1218', '0', '4');
INSERT INTO `tb_category` VALUES ('1223', '网球', '1218', '0', '5');
INSERT INTO `tb_category` VALUES ('1224', '排球', '1218', '0', '6');
INSERT INTO `tb_category` VALUES ('1225', '高尔夫', '1218', '0', '7');
INSERT INTO `tb_category` VALUES ('1226', '台球', '1218', '0', '8');
INSERT INTO `tb_category` VALUES ('1227', '棋牌麻将', '1218', '0', '9');
INSERT INTO `tb_category` VALUES ('1228', '轮滑滑板', '1218', '0', '10');
INSERT INTO `tb_category` VALUES ('1229', '其他', '1218', '0', '11');
INSERT INTO `tb_category` VALUES ('1230', '玩具乐器', '0', '1', '18');
INSERT INTO `tb_category` VALUES ('1231', '适用年龄', '1230', '1', '1');
INSERT INTO `tb_category` VALUES ('1232', '0-6个月', '1231', '0', '1');
INSERT INTO `tb_category` VALUES ('1233', '6-12个月', '1231', '0', '2');
INSERT INTO `tb_category` VALUES ('1234', '1-3岁', '1231', '0', '3');
INSERT INTO `tb_category` VALUES ('1235', '3-6岁', '1231', '0', '4');
INSERT INTO `tb_category` VALUES ('1236', '6-14岁', '1231', '0', '5');
INSERT INTO `tb_category` VALUES ('1237', '14岁以上', '1231', '0', '6');
INSERT INTO `tb_category` VALUES ('1238', '遥控/电动', '1230', '1', '2');
INSERT INTO `tb_category` VALUES ('1239', '遥控车', '1238', '0', '1');
INSERT INTO `tb_category` VALUES ('1240', '遥控飞机', '1238', '0', '2');
INSERT INTO `tb_category` VALUES ('1241', '遥控船', '1238', '0', '3');
INSERT INTO `tb_category` VALUES ('1242', '机器人', '1238', '0', '4');
INSERT INTO `tb_category` VALUES ('1243', '轨道/助力', '1238', '0', '5');
INSERT INTO `tb_category` VALUES ('1244', '毛绒布艺', '1230', '1', '3');
INSERT INTO `tb_category` VALUES ('1245', '毛绒/布艺', '1244', '0', '1');
INSERT INTO `tb_category` VALUES ('1246', '靠垫/抱枕', '1244', '0', '2');
INSERT INTO `tb_category` VALUES ('1247', '娃娃玩具', '1230', '1', '4');
INSERT INTO `tb_category` VALUES ('1248', '芭比娃娃', '1247', '0', '1');
INSERT INTO `tb_category` VALUES ('1249', '卡通娃娃', '1247', '0', '2');
INSERT INTO `tb_category` VALUES ('1250', '智能娃娃', '1247', '0', '3');
INSERT INTO `tb_category` VALUES ('1251', '模型玩具', '1230', '1', '5');
INSERT INTO `tb_category` VALUES ('1252', '仿真模型', '1251', '0', '1');
INSERT INTO `tb_category` VALUES ('1253', '拼插模型', '1251', '0', '2');
INSERT INTO `tb_category` VALUES ('1254', '收藏爱好', '1251', '0', '3');
INSERT INTO `tb_category` VALUES ('1255', '健身玩具', '1230', '1', '6');
INSERT INTO `tb_category` VALUES ('1256', '炫舞毯', '1255', '0', '1');
INSERT INTO `tb_category` VALUES ('1257', '爬行垫/毯', '1255', '0', '2');
INSERT INTO `tb_category` VALUES ('1258', '户外玩具', '1255', '0', '3');
INSERT INTO `tb_category` VALUES ('1259', '戏水玩具', '1255', '0', '4');
INSERT INTO `tb_category` VALUES ('1260', '动漫玩具', '1230', '1', '7');
INSERT INTO `tb_category` VALUES ('1261', '电影周边', '1260', '0', '1');
INSERT INTO `tb_category` VALUES ('1262', '卡通周边', '1260', '0', '2');
INSERT INTO `tb_category` VALUES ('1263', '网游周边', '1260', '0', '3');
INSERT INTO `tb_category` VALUES ('1264', '益智玩具', '1230', '1', '8');
INSERT INTO `tb_category` VALUES ('1265', '摇铃/床铃', '1264', '0', '1');
INSERT INTO `tb_category` VALUES ('1266', '健身架', '1264', '0', '2');
INSERT INTO `tb_category` VALUES ('1267', '早教启智', '1264', '0', '3');
INSERT INTO `tb_category` VALUES ('1268', '拖拉玩具', '1264', '0', '4');
INSERT INTO `tb_category` VALUES ('1269', '积木拼插', '1230', '1', '9');
INSERT INTO `tb_category` VALUES ('1270', '积木', '1269', '0', '1');
INSERT INTO `tb_category` VALUES ('1271', '拼图', '1269', '0', '2');
INSERT INTO `tb_category` VALUES ('1272', '磁力棒', '1269', '0', '3');
INSERT INTO `tb_category` VALUES ('1273', '立体拼插', '1269', '0', '4');
INSERT INTO `tb_category` VALUES ('1274', 'DIY玩具', '1230', '1', '10');
INSERT INTO `tb_category` VALUES ('1275', '手工彩泥', '1274', '0', '1');
INSERT INTO `tb_category` VALUES ('1276', '绘画工具', '1274', '0', '2');
INSERT INTO `tb_category` VALUES ('1277', '情景玩具', '1274', '0', '3');
INSERT INTO `tb_category` VALUES ('1278', '创意减压', '1230', '1', '11');
INSERT INTO `tb_category` VALUES ('1279', '减压玩具', '1278', '0', '1');
INSERT INTO `tb_category` VALUES ('1280', '创意玩具', '1278', '0', '2');
INSERT INTO `tb_category` VALUES ('1281', '乐器', '1230', '1', '12');
INSERT INTO `tb_category` VALUES ('1282', '钢琴', '1281', '0', '1');
INSERT INTO `tb_category` VALUES ('1283', '电子琴/电钢琴', '1281', '0', '2');
INSERT INTO `tb_category` VALUES ('1284', '吉他/尤克里里', '1281', '0', '3');
INSERT INTO `tb_category` VALUES ('1285', '打击乐器', '1281', '0', '4');
INSERT INTO `tb_category` VALUES ('1286', '西洋管弦', '1281', '0', '5');
INSERT INTO `tb_category` VALUES ('1287', '民族管弦乐器', '1281', '0', '6');
INSERT INTO `tb_category` VALUES ('1288', '乐器配件', '1281', '0', '7');
INSERT INTO `tb_category` VALUES ('1289', '电脑音乐', '1281', '0', '8');
INSERT INTO `tb_category` VALUES ('1290', '工艺礼品乐器', '1281', '0', '9');
INSERT INTO `tb_category` VALUES ('1291', '口琴/口风琴/竖笛', '1281', '0', '10');
INSERT INTO `tb_category` VALUES ('1292', '手风琴', '1281', '0', '11');
INSERT INTO `tb_category` VALUES ('1293', '彩票、旅行、充值、票务', '0', '1', '19');
INSERT INTO `tb_category` VALUES ('1294', '彩票', '1293', '1', '1');
INSERT INTO `tb_category` VALUES ('1295', '双色球', '1294', '0', '1');
INSERT INTO `tb_category` VALUES ('1296', '大乐透', '1294', '0', '2');
INSERT INTO `tb_category` VALUES ('1297', '福彩3D', '1294', '0', '3');
INSERT INTO `tb_category` VALUES ('1298', '排列三', '1294', '0', '4');
INSERT INTO `tb_category` VALUES ('1299', '排列五', '1294', '0', '5');
INSERT INTO `tb_category` VALUES ('1300', '七星彩', '1294', '0', '6');
INSERT INTO `tb_category` VALUES ('1301', '七乐彩', '1294', '0', '7');
INSERT INTO `tb_category` VALUES ('1302', '竞彩足球', '1294', '0', '8');
INSERT INTO `tb_category` VALUES ('1303', '竞彩篮球', '1294', '0', '9');
INSERT INTO `tb_category` VALUES ('1304', '新时时彩', '1294', '0', '10');
INSERT INTO `tb_category` VALUES ('1305', '机票', '1293', '1', '2');
INSERT INTO `tb_category` VALUES ('1306', '国内机票', '1305', '0', '1');
INSERT INTO `tb_category` VALUES ('1307', '酒店', '1293', '1', '3');
INSERT INTO `tb_category` VALUES ('1308', '国内酒店', '1307', '0', '1');
INSERT INTO `tb_category` VALUES ('1309', '酒店团购', '1307', '0', '2');
INSERT INTO `tb_category` VALUES ('1310', '旅行', '1293', '1', '4');
INSERT INTO `tb_category` VALUES ('1311', '度假', '1310', '0', '1');
INSERT INTO `tb_category` VALUES ('1312', '景点', '1310', '0', '2');
INSERT INTO `tb_category` VALUES ('1313', '租车', '1310', '0', '3');
INSERT INTO `tb_category` VALUES ('1314', '火车票', '1310', '0', '4');
INSERT INTO `tb_category` VALUES ('1315', '旅游团购', '1310', '0', '5');
INSERT INTO `tb_category` VALUES ('1316', '充值', '1293', '1', '5');
INSERT INTO `tb_category` VALUES ('1317', '手机充值', '1316', '0', '1');
INSERT INTO `tb_category` VALUES ('1318', '游戏', '1293', '1', '6');
INSERT INTO `tb_category` VALUES ('1319', '游戏点卡', '1318', '0', '1');
INSERT INTO `tb_category` VALUES ('1320', 'QQ充值', '1318', '0', '2');
INSERT INTO `tb_category` VALUES ('1321', '票务', '1293', '1', '7');
INSERT INTO `tb_category` VALUES ('1322', '电影票', '1321', '0', '1');
INSERT INTO `tb_category` VALUES ('1323', '演唱会', '1321', '0', '2');
INSERT INTO `tb_category` VALUES ('1324', '话剧歌剧', '1321', '0', '3');
INSERT INTO `tb_category` VALUES ('1325', '音乐会', '1321', '0', '4');
INSERT INTO `tb_category` VALUES ('1326', '体育赛事', '1321', '0', '5');
INSERT INTO `tb_category` VALUES ('1327', '舞蹈芭蕾', '1321', '0', '6');
INSERT INTO `tb_category` VALUES ('1328', '戏曲综艺', '1321', '0', '7');
INSERT INTO `tb_category` VALUES ('1329', '生鲜', '0', '1', '20');
INSERT INTO `tb_category` VALUES ('1330', '产地直供', '1329', '1', '1');
INSERT INTO `tb_category` VALUES ('1331', '东北', '1330', '0', '1');
INSERT INTO `tb_category` VALUES ('1332', '华北', '1330', '0', '2');
INSERT INTO `tb_category` VALUES ('1333', '西北', '1330', '0', '3');
INSERT INTO `tb_category` VALUES ('1334', '华中', '1330', '0', '4');
INSERT INTO `tb_category` VALUES ('1335', '华东', '1330', '0', '5');
INSERT INTO `tb_category` VALUES ('1336', '华南', '1330', '0', '6');
INSERT INTO `tb_category` VALUES ('1337', '西南', '1330', '0', '7');
INSERT INTO `tb_category` VALUES ('1338', '水果', '1329', '1', '2');
INSERT INTO `tb_category` VALUES ('1339', '苹果', '1338', '0', '1');
INSERT INTO `tb_category` VALUES ('1340', '橙子', '1338', '0', '2');
INSERT INTO `tb_category` VALUES ('1341', '奇异果/猕猴桃', '1338', '0', '3');
INSERT INTO `tb_category` VALUES ('1342', '车厘子/樱桃', '1338', '0', '4');
INSERT INTO `tb_category` VALUES ('1343', '芒果', '1338', '0', '5');
INSERT INTO `tb_category` VALUES ('1344', '蓝莓', '1338', '0', '6');
INSERT INTO `tb_category` VALUES ('1345', '火龙果', '1338', '0', '7');
INSERT INTO `tb_category` VALUES ('1346', '葡萄/提子', '1338', '0', '8');
INSERT INTO `tb_category` VALUES ('1347', '柚子', '1338', '0', '9');
INSERT INTO `tb_category` VALUES ('1348', '香蕉', '1338', '0', '10');
INSERT INTO `tb_category` VALUES ('1349', '牛油果', '1338', '0', '11');
INSERT INTO `tb_category` VALUES ('1350', '梨', '1338', '0', '12');
INSERT INTO `tb_category` VALUES ('1351', '菠萝/凤梨', '1338', '0', '13');
INSERT INTO `tb_category` VALUES ('1352', '桔/橘', '1338', '0', '14');
INSERT INTO `tb_category` VALUES ('1353', '柠檬', '1338', '0', '15');
INSERT INTO `tb_category` VALUES ('1354', '草莓', '1338', '0', '16');
INSERT INTO `tb_category` VALUES ('1355', '桃/李/杏', '1338', '0', '17');
INSERT INTO `tb_category` VALUES ('1356', '更多水果', '1338', '0', '18');
INSERT INTO `tb_category` VALUES ('1357', '水果礼盒/券', '1338', '0', '19');
INSERT INTO `tb_category` VALUES ('1358', '猪牛羊肉', '1329', '1', '3');
INSERT INTO `tb_category` VALUES ('1359', '牛肉', '1358', '0', '1');
INSERT INTO `tb_category` VALUES ('1360', '羊肉', '1358', '0', '2');
INSERT INTO `tb_category` VALUES ('1361', '猪肉', '1358', '0', '3');
INSERT INTO `tb_category` VALUES ('1362', '内脏类', '1358', '0', '4');
INSERT INTO `tb_category` VALUES ('1363', '海鲜水产', '1329', '1', '4');
INSERT INTO `tb_category` VALUES ('1364', '鱼类', '1363', '0', '1');
INSERT INTO `tb_category` VALUES ('1365', '虾类', '1363', '0', '2');
INSERT INTO `tb_category` VALUES ('1366', '蟹类', '1363', '0', '3');
INSERT INTO `tb_category` VALUES ('1367', '贝类', '1363', '0', '4');
INSERT INTO `tb_category` VALUES ('1368', '海参', '1363', '0', '5');
INSERT INTO `tb_category` VALUES ('1369', '海产干货', '1363', '0', '6');
INSERT INTO `tb_category` VALUES ('1370', '其他水产', '1363', '0', '7');
INSERT INTO `tb_category` VALUES ('1371', '海产礼盒', '1363', '0', '8');
INSERT INTO `tb_category` VALUES ('1372', '禽肉蛋品', '1329', '1', '5');
INSERT INTO `tb_category` VALUES ('1373', '鸡肉', '1372', '0', '1');
INSERT INTO `tb_category` VALUES ('1374', '鸭肉', '1372', '0', '2');
INSERT INTO `tb_category` VALUES ('1375', '蛋类', '1372', '0', '3');
INSERT INTO `tb_category` VALUES ('1376', '其他禽类', '1372', '0', '4');
INSERT INTO `tb_category` VALUES ('1377', '冷冻食品', '1329', '1', '6');
INSERT INTO `tb_category` VALUES ('1378', '水饺/馄饨', '1377', '0', '1');
INSERT INTO `tb_category` VALUES ('1379', '汤圆/元宵', '1377', '0', '2');
INSERT INTO `tb_category` VALUES ('1380', '面点', '1377', '0', '3');
INSERT INTO `tb_category` VALUES ('1381', '火锅丸串', '1377', '0', '4');
INSERT INTO `tb_category` VALUES ('1382', '速冻半成品', '1377', '0', '5');
INSERT INTO `tb_category` VALUES ('1383', '奶酪黄油', '1377', '0', '6');
INSERT INTO `tb_category` VALUES ('1384', '熟食腊味', '1329', '1', '7');
INSERT INTO `tb_category` VALUES ('1385', '熟食', '1384', '0', '1');
INSERT INTO `tb_category` VALUES ('1386', '腊肠/腊肉', '1384', '0', '2');
INSERT INTO `tb_category` VALUES ('1387', '火腿', '1384', '0', '3');
INSERT INTO `tb_category` VALUES ('1388', '糕点', '1384', '0', '4');
INSERT INTO `tb_category` VALUES ('1389', '礼品卡券', '1384', '0', '5');
INSERT INTO `tb_category` VALUES ('1390', '饮品甜品', '1329', '1', '8');
INSERT INTO `tb_category` VALUES ('1391', '冷藏果蔬汁', '1390', '0', '1');
INSERT INTO `tb_category` VALUES ('1392', '冰激凌', '1390', '0', '2');
INSERT INTO `tb_category` VALUES ('1393', '其他', '1390', '0', '3');
INSERT INTO `tb_category` VALUES ('1394', '蔬菜', '1329', '1', '9');
INSERT INTO `tb_category` VALUES ('1395', '叶菜类', '1394', '0', '1');
INSERT INTO `tb_category` VALUES ('1396', '茄果瓜类', '1394', '0', '2');
INSERT INTO `tb_category` VALUES ('1397', '根茎类', '1394', '0', '3');
INSERT INTO `tb_category` VALUES ('1398', '鲜菌菇', '1394', '0', '4');
INSERT INTO `tb_category` VALUES ('1399', '葱姜蒜椒', '1394', '0', '5');
INSERT INTO `tb_category` VALUES ('1400', '半加工蔬菜', '1394', '0', '6');
INSERT INTO `tb_category` VALUES ('1401', '整车', '0', '1', '21');
INSERT INTO `tb_category` VALUES ('1402', '全新整车', '1401', '1', '1');
INSERT INTO `tb_category` VALUES ('1403', '微型车', '1402', '0', '1');
INSERT INTO `tb_category` VALUES ('1404', '小型车', '1402', '0', '2');
INSERT INTO `tb_category` VALUES ('1405', '紧凑型车', '1402', '0', '3');
INSERT INTO `tb_category` VALUES ('1406', '中型车', '1402', '0', '4');
INSERT INTO `tb_category` VALUES ('1407', '中大型车', '1402', '0', '5');
INSERT INTO `tb_category` VALUES ('1408', '豪华车', '1402', '0', '6');
INSERT INTO `tb_category` VALUES ('1409', 'MPV', '1402', '0', '7');
INSERT INTO `tb_category` VALUES ('1410', 'SUV', '1402', '0', '8');
INSERT INTO `tb_category` VALUES ('1411', '跑车', '1402', '0', '9');
INSERT INTO `tb_category` VALUES ('1412', '二手车', '1401', '1', '2');
INSERT INTO `tb_category` VALUES ('1413', '微型车（二手）', '1412', '0', '1');
INSERT INTO `tb_category` VALUES ('1414', '小型车（二手）', '1412', '0', '2');
INSERT INTO `tb_category` VALUES ('1415', '紧凑型车（二手）', '1412', '0', '3');
INSERT INTO `tb_category` VALUES ('1416', '中型车（二手）', '1412', '0', '4');
INSERT INTO `tb_category` VALUES ('1417', '中大型车（二手）', '1412', '0', '5');
INSERT INTO `tb_category` VALUES ('1418', '豪华车（二手）', '1412', '0', '6');
INSERT INTO `tb_category` VALUES ('1419', 'MPV（二手）', '1412', '0', '7');
INSERT INTO `tb_category` VALUES ('1420', 'SUV（二手）', '1412', '0', '8');
INSERT INTO `tb_category` VALUES ('1421', '跑车（二手）', '1412', '0', '9');
INSERT INTO `tb_category` VALUES ('1422', '皮卡（二手）', '1412', '0', '10');
INSERT INTO `tb_category` VALUES ('1423', '面包车（二手）', '1412', '0', '11');

-- ----------------------------
-- Table structure for `tb_category_brand`
-- ----------------------------
DROP TABLE IF EXISTS `tb_category_brand`;
CREATE TABLE `tb_category_brand` (
  `category_id` bigint(20) NOT NULL COMMENT '商品类目id',
  `brand_id` bigint(20) NOT NULL COMMENT '品牌id',
  PRIMARY KEY (`category_id`,`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类和品牌的中间表，两者是多对多关系';

-- ----------------------------
-- Records of tb_category_brand
-- ----------------------------
INSERT INTO `tb_category_brand` VALUES ('76', '1528');
INSERT INTO `tb_category_brand` VALUES ('76', '1912');
INSERT INTO `tb_category_brand` VALUES ('76', '2032');
INSERT INTO `tb_category_brand` VALUES ('76', '2505');
INSERT INTO `tb_category_brand` VALUES ('76', '3177');
INSERT INTO `tb_category_brand` VALUES ('76', '3539');
INSERT INTO `tb_category_brand` VALUES ('76', '3941');
INSERT INTO `tb_category_brand` VALUES ('76', '4986');
INSERT INTO `tb_category_brand` VALUES ('76', '6522');
INSERT INTO `tb_category_brand` VALUES ('76', '6742');
INSERT INTO `tb_category_brand` VALUES ('76', '7174');
INSERT INTO `tb_category_brand` VALUES ('76', '7203');
INSERT INTO `tb_category_brand` VALUES ('76', '7420');
INSERT INTO `tb_category_brand` VALUES ('76', '7817');
INSERT INTO `tb_category_brand` VALUES ('76', '7888');
INSERT INTO `tb_category_brand` VALUES ('76', '8214');
INSERT INTO `tb_category_brand` VALUES ('76', '8551');
INSERT INTO `tb_category_brand` VALUES ('76', '8557');
INSERT INTO `tb_category_brand` VALUES ('76', '8740');
INSERT INTO `tb_category_brand` VALUES ('76', '9420');
INSERT INTO `tb_category_brand` VALUES ('76', '9637');
INSERT INTO `tb_category_brand` VALUES ('76', '10317');
INSERT INTO `tb_category_brand` VALUES ('76', '10640');
INSERT INTO `tb_category_brand` VALUES ('76', '11516');
INSERT INTO `tb_category_brand` VALUES ('76', '12286');
INSERT INTO `tb_category_brand` VALUES ('76', '12669');
INSERT INTO `tb_category_brand` VALUES ('76', '13066');
INSERT INTO `tb_category_brand` VALUES ('76', '13539');
INSERT INTO `tb_category_brand` VALUES ('76', '14026');
INSERT INTO `tb_category_brand` VALUES ('76', '14478');
INSERT INTO `tb_category_brand` VALUES ('76', '15127');
INSERT INTO `tb_category_brand` VALUES ('76', '15539');
INSERT INTO `tb_category_brand` VALUES ('76', '16506');
INSERT INTO `tb_category_brand` VALUES ('76', '16538');
INSERT INTO `tb_category_brand` VALUES ('76', '16975');
INSERT INTO `tb_category_brand` VALUES ('76', '17193');
INSERT INTO `tb_category_brand` VALUES ('76', '17424');
INSERT INTO `tb_category_brand` VALUES ('76', '17440');
INSERT INTO `tb_category_brand` VALUES ('76', '18078');
INSERT INTO `tb_category_brand` VALUES ('76', '18362');
INSERT INTO `tb_category_brand` VALUES ('76', '18374');
INSERT INTO `tb_category_brand` VALUES ('76', '20130');
INSERT INTO `tb_category_brand` VALUES ('76', '20710');
INSERT INTO `tb_category_brand` VALUES ('76', '21011');
INSERT INTO `tb_category_brand` VALUES ('76', '21360');
INSERT INTO `tb_category_brand` VALUES ('76', '21553');
INSERT INTO `tb_category_brand` VALUES ('76', '22261');
INSERT INTO `tb_category_brand` VALUES ('76', '22575');
INSERT INTO `tb_category_brand` VALUES ('76', '23049');
INSERT INTO `tb_category_brand` VALUES ('76', '23130');
INSERT INTO `tb_category_brand` VALUES ('76', '25376');
INSERT INTO `tb_category_brand` VALUES ('76', '25591');
INSERT INTO `tb_category_brand` VALUES ('76', '27094');
INSERT INTO `tb_category_brand` VALUES ('76', '27306');
INSERT INTO `tb_category_brand` VALUES ('76', '32315');
INSERT INTO `tb_category_brand` VALUES ('76', '36404');
INSERT INTO `tb_category_brand` VALUES ('76', '36652');
INSERT INTO `tb_category_brand` VALUES ('76', '36654');
INSERT INTO `tb_category_brand` VALUES ('76', '36657');
INSERT INTO `tb_category_brand` VALUES ('76', '38125');
INSERT INTO `tb_category_brand` VALUES ('76', '38126');
INSERT INTO `tb_category_brand` VALUES ('76', '38605');
INSERT INTO `tb_category_brand` VALUES ('76', '43644');
INSERT INTO `tb_category_brand` VALUES ('76', '45227');
INSERT INTO `tb_category_brand` VALUES ('76', '45693');
INSERT INTO `tb_category_brand` VALUES ('76', '45757');
INSERT INTO `tb_category_brand` VALUES ('76', '49144');
INSERT INTO `tb_category_brand` VALUES ('76', '50450');
INSERT INTO `tb_category_brand` VALUES ('76', '51040');
INSERT INTO `tb_category_brand` VALUES ('76', '52302');
INSERT INTO `tb_category_brand` VALUES ('76', '53317');
INSERT INTO `tb_category_brand` VALUES ('76', '54347');
INSERT INTO `tb_category_brand` VALUES ('76', '55524');
INSERT INTO `tb_category_brand` VALUES ('76', '56411');
INSERT INTO `tb_category_brand` VALUES ('76', '59110');
INSERT INTO `tb_category_brand` VALUES ('76', '60106');
INSERT INTO `tb_category_brand` VALUES ('76', '63032');
INSERT INTO `tb_category_brand` VALUES ('76', '63833');
INSERT INTO `tb_category_brand` VALUES ('76', '68927');
INSERT INTO `tb_category_brand` VALUES ('76', '89010');
INSERT INTO `tb_category_brand` VALUES ('76', '91515');
INSERT INTO `tb_category_brand` VALUES ('76', '102501');
INSERT INTO `tb_category_brand` VALUES ('76', '104490');
INSERT INTO `tb_category_brand` VALUES ('76', '109150');
INSERT INTO `tb_category_brand` VALUES ('76', '110303');
INSERT INTO `tb_category_brand` VALUES ('76', '113718');
INSERT INTO `tb_category_brand` VALUES ('76', '114119');
INSERT INTO `tb_category_brand` VALUES ('76', '123856');
INSERT INTO `tb_category_brand` VALUES ('76', '128080');
INSERT INTO `tb_category_brand` VALUES ('76', '129098');
INSERT INTO `tb_category_brand` VALUES ('76', '130455');
INSERT INTO `tb_category_brand` VALUES ('76', '131546');
INSERT INTO `tb_category_brand` VALUES ('76', '133747');
INSERT INTO `tb_category_brand` VALUES ('76', '134922');
INSERT INTO `tb_category_brand` VALUES ('76', '135967');
INSERT INTO `tb_category_brand` VALUES ('76', '149070');
INSERT INTO `tb_category_brand` VALUES ('76', '151370');
INSERT INTO `tb_category_brand` VALUES ('76', '151844');
INSERT INTO `tb_category_brand` VALUES ('76', '155608');
INSERT INTO `tb_category_brand` VALUES ('76', '159313');
INSERT INTO `tb_category_brand` VALUES ('76', '174275');
INSERT INTO `tb_category_brand` VALUES ('76', '178969');
INSERT INTO `tb_category_brand` VALUES ('76', '179105');
INSERT INTO `tb_category_brand` VALUES ('76', '179528');
INSERT INTO `tb_category_brand` VALUES ('76', '179624');
INSERT INTO `tb_category_brand` VALUES ('76', '180213');
INSERT INTO `tb_category_brand` VALUES ('76', '194213');
INSERT INTO `tb_category_brand` VALUES ('76', '196065');
INSERT INTO `tb_category_brand` VALUES ('76', '197126');
INSERT INTO `tb_category_brand` VALUES ('76', '203084');
INSERT INTO `tb_category_brand` VALUES ('76', '204089');
INSERT INTO `tb_category_brand` VALUES ('76', '205278');
INSERT INTO `tb_category_brand` VALUES ('76', '209178');
INSERT INTO `tb_category_brand` VALUES ('76', '214915');
INSERT INTO `tb_category_brand` VALUES ('76', '219484');
INSERT INTO `tb_category_brand` VALUES ('76', '221149');
INSERT INTO `tb_category_brand` VALUES ('76', '222294');
INSERT INTO `tb_category_brand` VALUES ('76', '223023');
INSERT INTO `tb_category_brand` VALUES ('76', '223199');
INSERT INTO `tb_category_brand` VALUES ('76', '223316');
INSERT INTO `tb_category_brand` VALUES ('76', '225085');
INSERT INTO `tb_category_brand` VALUES ('76', '228280');
INSERT INTO `tb_category_brand` VALUES ('76', '233984');
INSERT INTO `tb_category_brand` VALUES ('76', '234746');
INSERT INTO `tb_category_brand` VALUES ('76', '238798');
INSERT INTO `tb_category_brand` VALUES ('76', '240112');
INSERT INTO `tb_category_brand` VALUES ('76', '246053');
INSERT INTO `tb_category_brand` VALUES ('76', '247149');
INSERT INTO `tb_category_brand` VALUES ('76', '247652');
INSERT INTO `tb_category_brand` VALUES ('76', '248132');
INSERT INTO `tb_category_brand` VALUES ('76', '249404');
INSERT INTO `tb_category_brand` VALUES ('76', '253520');
INSERT INTO `tb_category_brand` VALUES ('76', '261196');
INSERT INTO `tb_category_brand` VALUES ('76', '261480');
INSERT INTO `tb_category_brand` VALUES ('76', '262180');
INSERT INTO `tb_category_brand` VALUES ('76', '262334');
INSERT INTO `tb_category_brand` VALUES ('76', '264451');
INSERT INTO `tb_category_brand` VALUES ('76', '265247');
INSERT INTO `tb_category_brand` VALUES ('76', '267981');
INSERT INTO `tb_category_brand` VALUES ('76', '271696');
INSERT INTO `tb_category_brand` VALUES ('76', '276102');
INSERT INTO `tb_category_brand` VALUES ('76', '276381');
INSERT INTO `tb_category_brand` VALUES ('76', '276780');
INSERT INTO `tb_category_brand` VALUES ('76', '278268');
INSERT INTO `tb_category_brand` VALUES ('76', '278755');
INSERT INTO `tb_category_brand` VALUES ('76', '279173');
INSERT INTO `tb_category_brand` VALUES ('76', '280120');
INSERT INTO `tb_category_brand` VALUES ('76', '280152');
INSERT INTO `tb_category_brand` VALUES ('76', '284571');
INSERT INTO `tb_category_brand` VALUES ('76', '285331');
INSERT INTO `tb_category_brand` VALUES ('76', '286273');
INSERT INTO `tb_category_brand` VALUES ('76', '287292');
INSERT INTO `tb_category_brand` VALUES ('76', '290104');
INSERT INTO `tb_category_brand` VALUES ('76', '290682');
INSERT INTO `tb_category_brand` VALUES ('76', '302250');
INSERT INTO `tb_category_brand` VALUES ('76', '304654');
INSERT INTO `tb_category_brand` VALUES ('76', '314866');
INSERT INTO `tb_category_brand` VALUES ('76', '316578');
INSERT INTO `tb_category_brand` VALUES ('76', '316596');
INSERT INTO `tb_category_brand` VALUES ('76', '316618');
INSERT INTO `tb_category_brand` VALUES ('76', '325396');
INSERT INTO `tb_category_brand` VALUES ('76', '325397');
INSERT INTO `tb_category_brand` VALUES ('76', '325400');
INSERT INTO `tb_category_brand` VALUES ('76', '325401');
INSERT INTO `tb_category_brand` VALUES ('84', '18374');
INSERT INTO `tb_category_brand` VALUES ('86', '18374');
INSERT INTO `tb_category_brand` VALUES ('90', '325398');
INSERT INTO `tb_category_brand` VALUES ('90', '325399');
INSERT INTO `tb_category_brand` VALUES ('94', '18374');
INSERT INTO `tb_category_brand` VALUES ('105', '1115');
INSERT INTO `tb_category_brand` VALUES ('105', '6742');
INSERT INTO `tb_category_brand` VALUES ('105', '7817');
INSERT INTO `tb_category_brand` VALUES ('105', '7888');
INSERT INTO `tb_category_brand` VALUES ('105', '16538');
INSERT INTO `tb_category_brand` VALUES ('105', '18374');
INSERT INTO `tb_category_brand` VALUES ('105', '23130');
INSERT INTO `tb_category_brand` VALUES ('106', '7817');
INSERT INTO `tb_category_brand` VALUES ('107', '7817');
INSERT INTO `tb_category_brand` VALUES ('108', '7817');
INSERT INTO `tb_category_brand` VALUES ('117', '18374');
INSERT INTO `tb_category_brand` VALUES ('128', '18374');
INSERT INTO `tb_category_brand` VALUES ('167', '6742');
INSERT INTO `tb_category_brand` VALUES ('170', '6742');
INSERT INTO `tb_category_brand` VALUES ('324', '18374');
INSERT INTO `tb_category_brand` VALUES ('326', '18374');
INSERT INTO `tb_category_brand` VALUES ('327', '18374');

-- ----------------------------
-- Table structure for `tb_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `comment_type` int(1) DEFAULT NULL,
  `comment_content` text,
  `img` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('1', '1', '1', '0', '很好吃', 'a', '2019');
INSERT INTO `tb_comment` VALUES ('2', '2', '1', '1', '很难吃', 'b', '2017');
INSERT INTO `tb_comment` VALUES ('3', '3', '1', '2', '还好', 'c', '2018');

-- ----------------------------
-- Table structure for `tb_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupon`;
CREATE TABLE `tb_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '优惠卷id',
  `name` varchar(20) NOT NULL COMMENT '优惠卷名称',
  `type` enum('1','2') NOT NULL COMMENT '优惠卷类型,1、抵扣  2、折扣(打折）',
  `condition` bigint(20) DEFAULT '0' COMMENT '抵扣或折扣条件，如果没有限制，则设置为0',
  `reduction` bigint(20) DEFAULT '0' COMMENT '优惠金额',
  `discount` int(3) DEFAULT '100' COMMENT '如果没有折扣，为100。如果是八五折，折扣为85',
  `targets` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠券可以生效的sku的id拼接，以,分割',
  `stock` int(6) NOT NULL COMMENT '剩余优惠券数量',
  `start_time` datetime NOT NULL COMMENT '优惠券生效时间',
  `end_time` datetime NOT NULL COMMENT '优惠券失效时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠卷表';

-- ----------------------------
-- Records of tb_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chaping` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `deletestatus` int(11) DEFAULT NULL,
  `haoping` int(11) DEFAULT NULL,
  `imgpath` varchar(255) DEFAULT NULL,
  `info` text,
  `kucun` int(11) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `price1` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `tuijian` varchar(255) DEFAULT NULL,
  `xiaoliang` int(11) DEFAULT NULL,
  `zhongping` int(11) DEFAULT NULL,
  `cateid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('1', '1', '1', '1', '1', '1', '1', null, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('2', '24', null, null, null, 'c', 'fhfd', null, '榴莲', '899', '366', null, null, null, null);
INSERT INTO `tb_goods` VALUES ('3', '59', null, null, null, 'b', 'sdf', null, '香蕉', '999', '567', null, null, null, null);

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `total_pay` bigint(20) NOT NULL COMMENT '总金额，单位为分',
  `actual_pay` bigint(20) NOT NULL COMMENT '实付金额。单位:分。如:20007，表示:200元7分',
  `promotion_ids` varchar(255) COLLATE utf8_bin DEFAULT '',
  `payment_type` tinyint(1) unsigned zerofill NOT NULL COMMENT '支付类型，1、在线支付，2、货到付款',
  `post_fee` bigint(20) NOT NULL COMMENT '邮费。单位:分。如:20007，表示:200元7分',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `shipping_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流单号',
  `user_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户id',
  `buyer_message` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '买家留言',
  `buyer_nick` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '买家昵称',
  `buyer_rate` tinyint(1) DEFAULT NULL COMMENT '买家是否已经评价,0未评价，1已评价',
  `receiver_state` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '收获地址（省）',
  `receiver_city` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '收获地址（市）',
  `receiver_district` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '收获地址（区/县）',
  `receiver_address` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '收获地址（街道、住址等详细地址）',
  `receiver_mobile` varchar(12) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人手机',
  `receiver_zip` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人邮编',
  `receiver` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人',
  `invoice_type` int(1) DEFAULT '0' COMMENT '发票类型(0无发票1普通发票，2电子发票，3增值税发票)',
  `source_type` int(1) DEFAULT '2' COMMENT '订单来源：1:app端，2：pc端，3：M端，4：微信端，5：手机qq端',
  PRIMARY KEY (`order_id`),
  KEY `create_time` (`create_time`),
  KEY `buyer_nick` (`buyer_nick`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('992320617728577536', '199900', '199900', '', '2', '0', '2018-05-04 16:30:46', null, null, '16', null, 'huge', '0', '上海', '上海', '浦东新区', '航头镇航头路18号传智播客 3号楼', '15800000000', '210000', '虎哥', '0', '2');
INSERT INTO `tb_order` VALUES ('992320724226150400', '169900', '169900', '', '2', '0', '2018-05-04 16:31:12', null, null, '16', null, 'huge', '0', '上海', '上海', '浦东新区', '航头镇航头路18号传智播客 3号楼', '15800000000', '210000', '虎哥', '0', '2');
INSERT INTO `tb_order` VALUES ('992320901993336832', '142900', '142900', '', '2', '0', '2018-05-04 16:31:54', null, null, '16', null, 'huge', '0', '上海', '上海', '浦东新区', '航头镇航头路18号传智播客 3号楼', '15800000000', '210000', '虎哥', '0', '2');
INSERT INTO `tb_order` VALUES ('992342776106586112', '322800', '322800', '', '2', '0', '2018-05-04 17:58:49', null, null, '16', null, 'huge', '0', '上海', '上海', '浦东新区', '航头镇航头路18号传智播客 3号楼', '15800000000', '210000', '虎哥', '0', '2');

-- ----------------------------
-- Table structure for `tb_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_detail`;
CREATE TABLE `tb_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单详情id ',
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `sku_id` bigint(20) NOT NULL COMMENT 'sku商品id',
  `num` int(11) NOT NULL COMMENT '购买数量',
  `title` varchar(200) NOT NULL COMMENT '商品标题',
  `own_spec` varchar(1000) DEFAULT '' COMMENT '商品动态属性键值集',
  `price` bigint(20) NOT NULL COMMENT '价格,单位：分',
  `image` varchar(200) DEFAULT '' COMMENT '商品图片',
  PRIMARY KEY (`id`),
  KEY `key_order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- ----------------------------
-- Records of tb_order_detail
-- ----------------------------
INSERT INTO `tb_order_detail` VALUES ('19', '992320617728577536', '27179308371', '1', '锤子（smartisan） 坚果32 手机  4GB 4GB 炫黑色特别版 27179308371', '{\"机身颜色\":\"炫黑色特别版\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', '199900', 'http://image.leyou.com/images/1/5/1524297608684.jpg');
INSERT INTO `tb_order_detail` VALUES ('20', '992320724226150400', '27038143959', '1', '锤子（smartisan） 坚果32 手机  4GB 4GB 酒红色 27038143959', '{\"机身颜色\":\"酒红色\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', '169900', 'http://image.leyou.com/images/8/14/1524297608290.jpg');
INSERT INTO `tb_order_detail` VALUES ('21', '992320901993336832', '10987960993', '1', '华为（HUAWEI） nova 智能手机 4G手机 皓月银 (4G+64G)高配', '{\"机身颜色\":\"皓月银\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', '142900', 'http://image.leyou.com/images/10/5/1524297467695.jpg');
INSERT INTO `tb_order_detail` VALUES ('22', '992342776106586112', '27179308373', '1', '锤子（smartisan） 坚果32 手机  4GB 4GB 炫红色特别版 27179308373', '{\"机身存储\":\"4GB\",\"内存\":\"4GB\",\"机身颜色\":\"炫红色特别版\"}', '179900', 'http://image.leyou.com/images/5/11/1524297608996.jpg');
INSERT INTO `tb_order_detail` VALUES ('23', '992342776106586112', '10987960993', '1', '华为（HUAWEI） nova 智能手机 4G手机 皓月银 (4G+64G)高配', '{\"机身颜色\":\"皓月银\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', '142900', 'http://image.leyou.com/images/10/5/1524297467695.jpg');

-- ----------------------------
-- Table structure for `tb_packing`
-- ----------------------------
DROP TABLE IF EXISTS `tb_packing`;
CREATE TABLE `tb_packing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_packing
-- ----------------------------
INSERT INTO `tb_packing` VALUES ('1', '1', '手袋单人份');
INSERT INTO `tb_packing` VALUES ('2', '1', '礼盒双人份');
INSERT INTO `tb_packing` VALUES ('3', '1', '全家福礼包');

-- ----------------------------
-- Table structure for `tb_taste`
-- ----------------------------
DROP TABLE IF EXISTS `tb_taste`;
CREATE TABLE `tb_taste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_taste
-- ----------------------------
INSERT INTO `tb_taste` VALUES ('1', '1', '原味');
INSERT INTO `tb_taste` VALUES ('2', '1', '奶油');
INSERT INTO `tb_taste` VALUES ('3', '1', '炭烧');
INSERT INTO `tb_taste` VALUES ('4', '1', '咸香');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `deletestatus` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '999', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('2', '9tttt99', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('3', '9tttt99', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('4', '9tttt99', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('5', '9tttt99', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('6', '9刚刚更换t99', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('7', '9刚刚更换t99', null, null, 'a', null, null, null, 'a');
INSERT INTO `tb_user` VALUES ('8', '9刚刚更换t99', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('9', '9刚刚555t99', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('10', '9刚刚更换t99', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('11', '9刚刚更换t99', null, null, null, null, null, null, null);
