/*
MySQL Data Transfer
Source Host: localhost
Source Database: lottery
Target Host: localhost
Target Database: lottery
Date: 2017/5/22 11:56:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for awardperson
-- ----------------------------
CREATE TABLE `awardperson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eMsg` varchar(40) DEFAULT NULL,
  `msg` varchar(40) DEFAULT NULL,
  `typeAward` varchar(40) DEFAULT NULL,
  `round` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `awardName` varchar(40) DEFAULT NULL,
  `price` int(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for originperson
-- ----------------------------
CREATE TABLE `originperson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eMsg` varchar(40) DEFAULT NULL,
  `msg` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for person
-- ----------------------------
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eMsg` varchar(40) DEFAULT NULL,
  `msg` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rank
-- ----------------------------
CREATE TABLE `rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(20) DEFAULT NULL,
  `typeAward` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `timesNum` int(4) DEFAULT NULL,
  `totalNum` int(4) DEFAULT NULL,
  `awardPic` varchar(40) DEFAULT NULL,
  `awardName` varchar(40) DEFAULT NULL,
  `price` int(4) DEFAULT NULL,
  `endNum` int(4) DEFAULT NULL,
  `personWidth` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `originperson` VALUES ('1', 'cwzx-caoqiong', '财务中心曹琼');
INSERT INTO `originperson` VALUES ('2', 'cwzx-chenkeqi', '财务中心陈珂琪');
INSERT INTO `originperson` VALUES ('3', 'cwzx-chenliqi', '财务中心陈丽琦');
INSERT INTO `originperson` VALUES ('4', 'cwzx-chenzena', '财务中心陈泽娜');
INSERT INTO `originperson` VALUES ('5', 'cwzx-dengxingming', '财务中心邓兴明');
INSERT INTO `originperson` VALUES ('6', 'cwzx-guoyuxia', '财务中心郭宇霞');
INSERT INTO `originperson` VALUES ('7', 'cwzx-huangweiting', '财务中心黄伟婷');
INSERT INTO `originperson` VALUES ('8', 'cwzx-jidan', '财务中心纪丹');
INSERT INTO `originperson` VALUES ('9', 'cwzx-jiangxiaowei', '财务中心江小伟');
INSERT INTO `originperson` VALUES ('10', 'cwzx-lishaoyan', '财务中心李少艳');
INSERT INTO `originperson` VALUES ('11', 'cwzx-liujingjing', '财务中心刘晶晶');
INSERT INTO `originperson` VALUES ('12', 'cwzx-luodongling', '财务中心罗冬玲');
INSERT INTO `originperson` VALUES ('13', 'cwzx-luohuijuan', '财务中心罗惠娟');
INSERT INTO `originperson` VALUES ('14', 'cwzx-luojiebing', '财务中心罗洁冰');
INSERT INTO `originperson` VALUES ('15', 'cwzx-luoxiaoming', '财务中心罗晓敏');
INSERT INTO `originperson` VALUES ('16', 'cwzx-tanlifang', '财务中心覃丽芳');
INSERT INTO `originperson` VALUES ('17', 'cwzx-tanhao', '财务中心谭浩');
INSERT INTO `originperson` VALUES ('18', 'cwzx-wangdongling', '财务中心王冬玲');
INSERT INTO `originperson` VALUES ('19', 'cwzx-wangjing', '财务中心王静');
INSERT INTO `originperson` VALUES ('20', 'cwzx-wangxiaoxia', '财务中心王晓霞');
INSERT INTO `originperson` VALUES ('21', 'cwzx-xiexueling', '财务中心谢雪玲');
INSERT INTO `originperson` VALUES ('22', 'cwzx-xudanping', '财务中心许丹萍');
INSERT INTO `originperson` VALUES ('23', 'cwzx-xujingting', '财务中心许静婷');
INSERT INTO `originperson` VALUES ('24', 'cwzx-xuyuting', '财务中心许宇婷');
INSERT INTO `originperson` VALUES ('25', 'cwzx-xuzhengwei', '财务中心许政威');
INSERT INTO `originperson` VALUES ('26', 'cwzx-youqingqing', '财务中心游琴琴');
INSERT INTO `originperson` VALUES ('27', 'cwzx-yuanyiping', '财务中心袁怡坪');
INSERT INTO `originperson` VALUES ('28', 'cwzx-zhangjuqing', '财务中心张菊清');
INSERT INTO `originperson` VALUES ('29', 'cwzx-zhanglin', '财务中心张琳');
INSERT INTO `originperson` VALUES ('30', 'cwzx-zhangzipan', '财务中心张子盼');
INSERT INTO `originperson` VALUES ('31', 'cwzx-zhaolongyuan', '财务中心赵龙源');
INSERT INTO `originperson` VALUES ('32', 'cwzx-zhengcunyu', '财务中心郑纯玉');
INSERT INTO `originperson` VALUES ('33', 'cwzx-zhongkailin', '财务中心钟凯琳');
INSERT INTO `originperson` VALUES ('34', 'gyzx-lijianping', '供应中心- 黎建平');
INSERT INTO `originperson` VALUES ('35', 'gyzx-chenbaoxian', '供应中心-陈保贤');
INSERT INTO `originperson` VALUES ('36', 'gyzx-chenchaozhong', '供应中心-陈潮忠');
INSERT INTO `originperson` VALUES ('37', 'gyzx-chenhouyan', '供应中心-陈后艳');
INSERT INTO `originperson` VALUES ('38', 'gyzx-chenhuiyin', '供应中心－陈慧英');
INSERT INTO `originperson` VALUES ('39', 'gyzx-chenjuan', '供应中心-陈娟');
INSERT INTO `originperson` VALUES ('40', 'gyzx-chenshulian', '供应中心－陈树廉');
INSERT INTO `originperson` VALUES ('41', 'gyzx-chenxiaohong', '供应中心－陈小红');
INSERT INTO `originperson` VALUES ('42', 'gyzx-chuyanan', '供应中心-褚亚楠');
INSERT INTO `originperson` VALUES ('43', 'gyzx-dengjianping', '供应中心-邓健平');
INSERT INTO `originperson` VALUES ('44', 'gyzx-dengliping', '供应中心-邓丽萍');
INSERT INTO `originperson` VALUES ('45', 'gyzx-dengliyun', '供应中心-邓利云');
INSERT INTO `originperson` VALUES ('46', 'gyzx-dengyangjin', '供应中心－邓杨进');
INSERT INTO `originperson` VALUES ('47', 'gyzx-dingweidong', '供应中心-丁维东');
INSERT INTO `originperson` VALUES ('48', 'gyzx-fudongping', '供应中心-付冬平');
INSERT INTO `originperson` VALUES ('49', 'gyzx-ganxiaoli', '供应中心-甘小丽');
INSERT INTO `originperson` VALUES ('50', 'gyzx-guorongfeng', '供应中心-郭荣峰');
INSERT INTO `originperson` VALUES ('51', 'gyzx-hetangwei', '供应中心-何汤文');
INSERT INTO `originperson` VALUES ('52', 'gyzx-huchunyan', '供应中心-胡春燕');
INSERT INTO `originperson` VALUES ('53', 'gyzx-huangjiayu', '供应中心-黄佳瑜');
INSERT INTO `originperson` VALUES ('54', 'gyzx-huanglisha', '供应中心-黄莉莎');
INSERT INTO `originperson` VALUES ('55', 'gyzx-huangmeiling', '供应中心-黄美玲');
INSERT INTO `originperson` VALUES ('56', 'gyzx-huangweifang', '供应中心-黄伟芳');
INSERT INTO `originperson` VALUES ('57', 'gyzx-jinglvmei', '供应中心-敬绿妹');
INSERT INTO `originperson` VALUES ('58', 'gyzx-lijianjun', '供应中心-李建军');
INSERT INTO `originperson` VALUES ('59', 'gyzx-liliulian', '供应中心-李柳连');
INSERT INTO `originperson` VALUES ('60', 'gyzx-lishan', '供应中心-李珊');
INSERT INTO `originperson` VALUES ('61', 'gyzx-liweiwei', '供应中心-李维维');
INSERT INTO `originperson` VALUES ('62', 'gyzx-liweiyuan', '供应中心-李伟元');
INSERT INTO `originperson` VALUES ('63', 'gyzx-linchunli', '供应中心-林春丽');
INSERT INTO `originperson` VALUES ('64', 'gyzx-liubingbing', '供应中心-刘冰冰');
INSERT INTO `originperson` VALUES ('65', 'gyzx-liuhongfei', '供应中心-刘洪飞');
INSERT INTO `originperson` VALUES ('66', 'gyzx-meijunjie', '供应中心-梅俊杰');
INSERT INTO `originperson` VALUES ('67', 'gyzx-mojunrui', '供应中心-莫均锐');
INSERT INTO `originperson` VALUES ('68', 'gyzx-pankangwei', '供应中心-潘康维');
INSERT INTO `originperson` VALUES ('69', 'gyzx-pengxiaoling', '供应中心－彭小玲');
INSERT INTO `originperson` VALUES ('70', 'gyzx-pengzhangliang', '供应中心-彭樟良');
INSERT INTO `originperson` VALUES ('71', 'gyzx-quanxi', '供应中心-全溪');
INSERT INTO `originperson` VALUES ('72', 'gyzx-yuanxiaoqing', '供应中心-阮晓庆');
INSERT INTO `originperson` VALUES ('73', 'gyzx-tanziquan', '供应中心-谭子权');
INSERT INTO `originperson` VALUES ('74', 'gyzx-weishanshan', '供应中心-魏珊珊');
INSERT INTO `originperson` VALUES ('75', 'gyzx-xiaoyu', '供应中心-肖瑜');
INSERT INTO `originperson` VALUES ('76', 'gyzx-yangdengming', '供应中心-杨登明');
INSERT INTO `originperson` VALUES ('77', 'gyzx-yangming', '供应中心-杨敏');
INSERT INTO `originperson` VALUES ('78', 'gyzx-yangwenfang', '供应中心-杨文芳');
INSERT INTO `originperson` VALUES ('79', 'gyzx-yuming', '供应中心-於明');
INSERT INTO `originperson` VALUES ('80', 'gyzx-zhangxi', '供应中心-张希');
INSERT INTO `originperson` VALUES ('81', 'gyzx-zhongminghua', '供应中心-钟明花');
INSERT INTO `originperson` VALUES ('82', 'gyzx-zhouchunjie', '供应中心-周春洁');
INSERT INTO `originperson` VALUES ('83', 'gyzx-zhuqiaoling', '供应中心-朱俏玲');
INSERT INTO `originperson` VALUES ('84', 'gyzx-zhuqiaoping', '供应中心-朱俏萍');
INSERT INTO `originperson` VALUES ('85', 'gyzx-zhuweizhong', '供应中心-朱伟忠');
INSERT INTO `originperson` VALUES ('86', 'hlwzx-aibing', '互联网中心-艾兵 ');
INSERT INTO `originperson` VALUES ('87', 'hlwzx-zengshuhui', '互联网中心-曾淑慧');
INSERT INTO `originperson` VALUES ('88', 'hlwzx-chenjingqiao', '互联网中心-陈精巧');
INSERT INTO `originperson` VALUES ('89', 'hlwzx-chenxingming', '互联网中心-陈幸明');
INSERT INTO `originperson` VALUES ('90', 'hlwzx-chenxumin', '互联网中心-陈旭敏');
INSERT INTO `originperson` VALUES ('91', 'hlwzx-chenyunxi', '互联网中心-陈允希');
INSERT INTO `originperson` VALUES ('92', 'hlwzx-fangyajun', '互联网中心-方亚军 ');
INSERT INTO `originperson` VALUES ('93', 'hlwzx-fengli', '互联网中心-冯丽');
INSERT INTO `originperson` VALUES ('94', 'hlwzx-goumin', '互联网中心-勾敏');
INSERT INTO `originperson` VALUES ('95', 'hlwzx-heguangyin', '互联网中心-何光英');
INSERT INTO `originperson` VALUES ('96', 'hlwzx-hujin', '互联网中心-胡锦');
INSERT INTO `originperson` VALUES ('97', 'hlwzx-hujing', '互联网中心-胡靖');
INSERT INTO `originperson` VALUES ('98', 'hlwzx-hushuang', '互联网中心-胡爽');
INSERT INTO `originperson` VALUES ('99', 'hlwzx-lizhaobing', '互联网中心-李兆兵 ');
INSERT INTO `originperson` VALUES ('100', 'hlwzx-liling', '互联网中心-李菱');
INSERT INTO `originperson` VALUES ('101', 'hlwzx-lihuiting', '互联网中心-李穗婷');
INSERT INTO `originperson` VALUES ('102', 'hlwzx-liangzirui', '互联网中心-梁子锐 ');
INSERT INTO `originperson` VALUES ('103', 'hlwzx-liufaming', '互联网中心-刘发明');
INSERT INTO `originperson` VALUES ('104', 'hlwzx-ouyanghai', '互联网中心-欧阳海');
INSERT INTO `originperson` VALUES ('105', 'hlwzx-panyane', '互联网中心-潘燕娥');
INSERT INTO `originperson` VALUES ('106', 'hlwzx-pengxianli', '互联网中心-彭仙丽');
INSERT INTO `originperson` VALUES ('107', 'hlwzx-shenziqing', '互联网中心-沈子晴');
INSERT INTO `originperson` VALUES ('108', 'hlwzx-shimingfen', '互联网中心-石明芬');
INSERT INTO `originperson` VALUES ('109', 'hlwzx-wangpei', '互联网中心-汪佩');
INSERT INTO `originperson` VALUES ('110', 'hlwzx-wangdaiwu', '互联网中心-王代武');
INSERT INTO `originperson` VALUES ('111', 'hlwzx-wenshuilian', '互联网中心-温水莲');
INSERT INTO `originperson` VALUES ('112', 'hlwzx-wuke', '互联网中心-吴克');
INSERT INTO `originperson` VALUES ('113', 'hlwzx-wumingxia', '互联网中心-吴明霞');
INSERT INTO `originperson` VALUES ('114', 'hlwzx-xieguoxiu', '互联网中心-谢国秀');
INSERT INTO `originperson` VALUES ('115', 'hlwzx-yanxiaoyu', '互联网中心-颜小宇');
INSERT INTO `originperson` VALUES ('116', 'hlwzx-yangmeiling', '互联网中心-杨美玲');
INSERT INTO `originperson` VALUES ('117', 'hlwzx-yangmingwei', '互联网中心-杨明伟');
INSERT INTO `originperson` VALUES ('118', 'hlwzx-zhanglijuan', '互联网中心-张莉娟');
INSERT INTO `originperson` VALUES ('119', 'hlwzx-zhoudaode', '互联网中心-周道德');
INSERT INTO `originperson` VALUES ('120', 'hlwzx-zhouxin', '互联网中心-周新 ');
INSERT INTO `originperson` VALUES ('121', 'hndq-zengjinhua', '华南大区·曾进华');
INSERT INTO `originperson` VALUES ('122', 'hndq-chenguangye', '华南大区·陈光业');
INSERT INTO `originperson` VALUES ('123', 'hndq-chenruijun', '华南大区·陈睿君');
INSERT INTO `originperson` VALUES ('124', 'hndq-wangdanxia', '华南大区·王丹霞');
INSERT INTO `originperson` VALUES ('125', 'hzpzx-hejianyu', '化妆品中心-何健宇');
INSERT INTO `originperson` VALUES ('126', 'hzpzx-jiangweiqian', '化妆品中心-蒋韦倩');
INSERT INTO `originperson` VALUES ('127', 'hzpzx-leiqiuxiang', '化妆品中心-雷秋香');
INSERT INTO `originperson` VALUES ('128', 'hzpzx-liujian', '化妆品中心-刘建');
INSERT INTO `originperson` VALUES ('129', 'hzpzx-luoya', '化妆品中心-罗雅');
INSERT INTO `originperson` VALUES ('130', 'hzpzx-yanhaodao', '化妆品中心-严浩钊');
INSERT INTO `originperson` VALUES ('131', 'hzpzx-zhangying', '化妆品中心-张莹');
INSERT INTO `originperson` VALUES ('132', 'hzpzx-zhiyanqiong', '化妆品中心-植燕琼');
INSERT INTO `originperson` VALUES ('133', 'nqzy-chenwenyuan', '南区直营-陈文渊');
INSERT INTO `originperson` VALUES ('134', 'nqzy-jiangjingyun', '南区直营-蒋静云');
INSERT INTO `originperson` VALUES ('135', 'nqzy-luoyuanmin', '南区直营-罗苑敏');
INSERT INTO `originperson` VALUES ('136', 'nqzy-xiexiaojun', '南区直营-谢晓君');
INSERT INTO `originperson` VALUES ('137', 'rzzx-hanxiuling', '人资中心韩秀玲');
INSERT INTO `originperson` VALUES ('138', 'rzzx-huangguangtao', '人资中心黄广桃');
INSERT INTO `originperson` VALUES ('139', 'rzzx-huanglixia', '人资中心黄丽霞');
INSERT INTO `originperson` VALUES ('140', 'rzzx-huangmanting', '人资中心黄满婷');
INSERT INTO `originperson` VALUES ('141', 'rzzx-liuyuxin', '人资中心刘玉新');
INSERT INTO `originperson` VALUES ('142', 'rzzx-tangjingjun', '人资中心唐景君');
INSERT INTO `originperson` VALUES ('143', 'rzzx-tangsihua', '人资中心唐思华');
INSERT INTO `originperson` VALUES ('144', 'rzzx-wangpingping', '人资中心王萍萍');
INSERT INTO `originperson` VALUES ('145', 'rzzx-xiongyuanyun', '人资中心熊苑云');
INSERT INTO `originperson` VALUES ('146', 'rzzx-xuxueling', '人资中心许雪玲');
INSERT INTO `originperson` VALUES ('147', 'rzzx-yecui', '人资中心叶萃');
INSERT INTO `originperson` VALUES ('148', 'rzzx-zhangshaozhen', '人资中心张少贞');
INSERT INTO `originperson` VALUES ('149', 'rzzx-zhengjiaping', '人资中心郑嘉平');
INSERT INTO `originperson` VALUES ('150', 'spzx-dengjiezhen', '饰品中心邓洁桢');
INSERT INTO `originperson` VALUES ('151', 'spzx-liujie', '饰品中心刘洁');
INSERT INTO `originperson` VALUES ('152', 'spzx-liuyanhong', '饰品中心刘燕虹');
INSERT INTO `originperson` VALUES ('153', 'spzx-meiluanjiao', '饰品中心梅鸾姣');
INSERT INTO `originperson` VALUES ('154', 'spzx-tanyoulan', '饰品中心谭佑兰');
INSERT INTO `originperson` VALUES ('155', 'spzx-wangyiou', '饰品中心王译欧');
INSERT INTO `originperson` VALUES ('156', 'spzx-yuxiaoyong', '饰品中心於小勇');
INSERT INTO `originperson` VALUES ('157', 'spzx-yudaiyi', '饰品中心于代毅');
INSERT INTO `originperson` VALUES ('158', 'spzx-yuhang', '饰品中心于航');
INSERT INTO `originperson` VALUES ('159', 'spzx-yueyu', '饰品中心岳宇');
INSERT INTO `originperson` VALUES ('160', 'spzx-zhaoying', '饰品中心赵颖');
INSERT INTO `originperson` VALUES ('161', 'spzx-zhengliangqing', '饰品中心郑良清');
INSERT INTO `originperson` VALUES ('162', 'spzx-zhongjiamei', '饰品中心钟嘉美');
INSERT INTO `originperson` VALUES ('163', 'spzx-zhoumeiling', '饰品中心周美玲');
INSERT INTO `originperson` VALUES ('164', 'hrbp-wanglina', 'HRBP-王丽娜');
INSERT INTO `originperson` VALUES ('165', 'hrbp-yangrui', 'HRBP-杨锐');
INSERT INTO `originperson` VALUES ('166', 'hrbp-luoyuan', 'HRBP-罗媛');
INSERT INTO `originperson` VALUES ('167', 'pxb-dengfenmei', '培训部-邓芬玫');
INSERT INTO `originperson` VALUES ('168', 'pxb-huangshijin', '培训部-黄石金');
INSERT INTO `originperson` VALUES ('169', 'pxb-huangxiaohong', '培训部-黄小红');
INSERT INTO `originperson` VALUES ('170', 'pxb-jijuanjuan', '培训部-吉娟娟');
INSERT INTO `originperson` VALUES ('171', 'pxb-liujian', '培训部-刘健');
INSERT INTO `originperson` VALUES ('172', 'pxb-pengnianxi', '培训部-彭年西');
INSERT INTO `originperson` VALUES ('173', 'pxb-yichenglong', '培训部-易成龙');
INSERT INTO `originperson` VALUES ('174', 'pxb-yinjuan', '培训部-尹娟');
INSERT INTO `originperson` VALUES ('175', 'pxb-zhouqianyi', '培训部-周倩怡');
INSERT INTO `originperson` VALUES ('176', 'pxb-zouhanqiong', '培训部-邹罕琼');
INSERT INTO `originperson` VALUES ('177', 'zxtt-chenli', '造型天团-陈礼');
INSERT INTO `originperson` VALUES ('178', 'zxtt-chenming', '造型天团-陈明');
INSERT INTO `originperson` VALUES ('179', 'zxtt-lishuang', '造型天团-李爽');
INSERT INTO `originperson` VALUES ('180', 'zxtt-liuqifeng', '造型天团-刘其峰');
INSERT INTO `originperson` VALUES ('181', 'zxtt-mowenhao', '造型天团-莫文浩');
INSERT INTO `originperson` VALUES ('182', 'zxtt-tanzhiyong', '造型天团-谭志勇');
INSERT INTO `originperson` VALUES ('183', 'zxtt-wujiacheng', '造型天团-吴嘉诚');
INSERT INTO `originperson` VALUES ('184', 'zxtt-zhangchangchun', '造型天团-张长春');
INSERT INTO `originperson` VALUES ('185', 'zxtt-zhaolei', '造型天团-赵磊');
INSERT INTO `originperson` VALUES ('186', 'xsglb-chenguoyu', '销售管理部-陈国余');
INSERT INTO `originperson` VALUES ('187', 'xsglb-chenhaijing', '销售管理部-陈海静');
INSERT INTO `originperson` VALUES ('188', 'xsglb-chenxiaochun', '销售管理部-陈晓春');
INSERT INTO `originperson` VALUES ('189', 'xsglb-dengyaqing', '销售管理部-邓雅馨');
INSERT INTO `originperson` VALUES ('190', 'xsglb-huangbichun', '销售管理部--黄碧纯');
INSERT INTO `originperson` VALUES ('191', 'xsglb-jiangdanmei', '销售管理部-姜丹妹');
INSERT INTO `originperson` VALUES ('192', 'xsglb-jieyingwen', '销售管理部-揭英文');
INSERT INTO `originperson` VALUES ('193', 'xsglb-lisiting', '销售管理部-黎斯婷');
INSERT INTO `originperson` VALUES ('194', 'xsglb-lianxiaoling', '销售管理部-练小玲');
INSERT INTO `originperson` VALUES ('195', 'xsglb-luofeng', '销售管理部-罗凤');
INSERT INTO `originperson` VALUES ('196', 'xsglb-luorong', '销售管理部-罗蓉');
INSERT INTO `originperson` VALUES ('197', 'xsglb-tanminmin', '销售管理部-谭敏敏');
INSERT INTO `originperson` VALUES ('198', 'xsglb-wangtingting', '销售管理部-王亭亭');
INSERT INTO `originperson` VALUES ('199', 'xsglb-xiexiaoya', '销售管理部-谢小雅');
INSERT INTO `originperson` VALUES ('200', 'xsglb-xuqiuling', '销售管理部-徐秋玲');
INSERT INTO `originperson` VALUES ('201', 'xsglb-yaomao', '销售管理部-姚茂');
INSERT INTO `originperson` VALUES ('202', 'xsglb-zhongshuman', '销售管理部-钟舒漫');
INSERT INTO `originperson` VALUES ('203', 'xsglb-zhoulu', '销售管理部-周露');
INSERT INTO `originperson` VALUES ('204', 'xsglb-zhouxiaohui', '销售管理部-周小慧');
INSERT INTO `originperson` VALUES ('205', 'xsglzx-hexiaofeng', '销售管理中心-何小芬');
INSERT INTO `originperson` VALUES ('206', 'xsglzx-kangchuanxuan', '销售管理中心-康传璇');
INSERT INTO `originperson` VALUES ('207', 'xsglzx-linmeixin', '销售管理中心-林美欣');
INSERT INTO `originperson` VALUES ('208', 'zxsjb-weiwenlong', '造型设计部-温文龙');
INSERT INTO `originperson` VALUES ('209', 'zxsjb-yexhaojin', '造型设计部-叶超锦');
INSERT INTO `originperson` VALUES ('210', 'cxgc-huangweijun', '创新工厂-黄薇君');
INSERT INTO `originperson` VALUES ('211', 'cxgc-liangzicong', '创新工厂-梁梓聪');
INSERT INTO `originperson` VALUES ('212', 'zjb-baiyu', '总经办-白玉');
INSERT INTO `originperson` VALUES ('213', 'zjb-chendawen', '总经办-陈达文');
INSERT INTO `originperson` VALUES ('214', 'zjb-chenxiaoqian', '总经办-陈小倩');
INSERT INTO `originperson` VALUES ('215', 'zjb-chenyongzheng', '总经办-陈永正');
INSERT INTO `originperson` VALUES ('216', 'zjb-fugenping', '总经办-傅根平');
INSERT INTO `originperson` VALUES ('217', 'zjb-heguoqing', '总经办-何国清');
INSERT INTO `originperson` VALUES ('218', 'zjb-hezaifu', '总经办-何再福');
INSERT INTO `originperson` VALUES ('219', 'zjb-huangguoxiong', '总经办-黄国雄');
INSERT INTO `originperson` VALUES ('220', 'zjb-huangzijian', '总经办-黄自建');
INSERT INTO `originperson` VALUES ('221', 'zjb-laisheng', '总经办-赖生');
INSERT INTO `originperson` VALUES ('222', 'zjb-laishiqing', '总经办-赖仕青');
INSERT INTO `originperson` VALUES ('223', 'zjb-laizini', '总经办-赖紫霓');
INSERT INTO `originperson` VALUES ('224', 'zjb-lanhanrong', '总经办-蓝汉荣');
INSERT INTO `originperson` VALUES ('225', 'zjb-lidong', '总经办-李东');
INSERT INTO `originperson` VALUES ('226', 'zjb-ligang', '总经办-李刚');
INSERT INTO `originperson` VALUES ('227', 'zjb-ligangdong', '总经办-李钢东');
INSERT INTO `originperson` VALUES ('228', 'zjb-lianghuifang', '总经办-梁惠芳');
INSERT INTO `originperson` VALUES ('229', 'zjb-liuruifeng', '总经办-刘锐峰');
INSERT INTO `originperson` VALUES ('230', 'zjb-maojianrong', '总经办-毛建荣');
INSERT INTO `originperson` VALUES ('231', 'zjb-qiuxiaoxia', '总经办-丘晓霞');
INSERT INTO `originperson` VALUES ('232', 'zjb-yuanhanjun', '总经办-阮汉君');
INSERT INTO `originperson` VALUES ('233', 'zjb-tongxinxing', '总经办-童新星');
INSERT INTO `originperson` VALUES ('234', 'zjb-wanghuanxiang', '总经办-王焕祥');
INSERT INTO `originperson` VALUES ('235', 'zjb-wangqiong', '总经办-王琼');
INSERT INTO `originperson` VALUES ('236', 'zjb-wangyoumin', '总经办-王有民');
INSERT INTO `originperson` VALUES ('237', 'zjb-weihaiyan', '总经办-魏海燕');
INSERT INTO `originperson` VALUES ('238', 'zjb-xiejunni', '总经办-谢君霓');
INSERT INTO `originperson` VALUES ('239', 'zjb-xiemiaoxuan', '总经办-谢妙璇');
INSERT INTO `originperson` VALUES ('240', 'zjb-xuyuanwei', '总经办-许远威');
INSERT INTO `originperson` VALUES ('241', 'zjb-yangwensheng', '总经办-杨文生');
INSERT INTO `originperson` VALUES ('242', 'zjb-yaomaoxian', '总经办-姚茂先');
INSERT INTO `originperson` VALUES ('243', 'zjb-yuxiaojie', '总经办-於小姐');
INSERT INTO `originperson` VALUES ('244', 'zjb-zhangshaohao', '总经办-张绍浩');
INSERT INTO `originperson` VALUES ('245', 'zjb-zhangyaohua', '总经办-张耀华');
INSERT INTO `originperson` VALUES ('246', 'zjb-zhengtingting', '总经办-郑婷婷');
INSERT INTO `originperson` VALUES ('247', 'zjb-zhengwenqing', '总经办-郑文清');
INSERT INTO `originperson` VALUES ('248', 'zjb-zhongshengfa', '总经办-钟声发');
INSERT INTO `originperson` VALUES ('249', 'hndq-huanghaihong', '华南大区-黄海鸿');
INSERT INTO `originperson` VALUES ('250', 'hndq-huangjiaqi', '华南大区-黄家琪');
INSERT INTO `originperson` VALUES ('251', 'hndq-huanglizhen', '华南大区-黄丽贞');
INSERT INTO `originperson` VALUES ('252', 'hndq-huanglingrong', '华南大区-黄玲容');
INSERT INTO `originperson` VALUES ('253', 'hndq-liyuhan', '华南大区-李雨韩');
INSERT INTO `originperson` VALUES ('254', 'hndq-liangzhaoqing', '华南大区-梁兆青');
INSERT INTO `originperson` VALUES ('255', 'hndq-liuyongqiang', '华南大区-刘永强');
INSERT INTO `originperson` VALUES ('256', 'hndq-sulijuan', '华南大区-苏李娟');
INSERT INTO `originperson` VALUES ('257', 'hndq-sunyuchao', '华南大区-孙宇超');
INSERT INTO `originperson` VALUES ('258', 'hndq-tanyiting', '华南大区-谭伊婷');
INSERT INTO `originperson` VALUES ('259', 'hndq-tanyi', '华南大区-谭亿');
INSERT INTO `originperson` VALUES ('260', 'hndq-yuanyuan', '华南大区-袁媛');
INSERT INTO `originperson` VALUES ('261', 'hndq-zhangli', '华南大区-张丽');
INSERT INTO `originperson` VALUES ('262', 'nq-hehuang', '南区-何欢');
INSERT INTO `originperson` VALUES ('263', 'nq-liuting', '南区-刘婷');
INSERT INTO `person` VALUES ('1', 'cwzx-caoqiong', '财务中心曹琼');
INSERT INTO `person` VALUES ('2', 'cwzx-chenkeqi', '财务中心陈珂琪');
INSERT INTO `person` VALUES ('3', 'cwzx-chenliqi', '财务中心陈丽琦');
INSERT INTO `person` VALUES ('4', 'cwzx-chenzena', '财务中心陈泽娜');
INSERT INTO `person` VALUES ('5', 'cwzx-dengxingming', '财务中心邓兴明');
INSERT INTO `person` VALUES ('6', 'cwzx-guoyuxia', '财务中心郭宇霞');
INSERT INTO `person` VALUES ('7', 'cwzx-huangweiting', '财务中心黄伟婷');
INSERT INTO `person` VALUES ('8', 'cwzx-jidan', '财务中心纪丹');
INSERT INTO `person` VALUES ('9', 'cwzx-jiangxiaowei', '财务中心江小伟');
INSERT INTO `person` VALUES ('10', 'cwzx-lishaoyan', '财务中心李少艳');
INSERT INTO `person` VALUES ('11', 'cwzx-liujingjing', '财务中心刘晶晶');
INSERT INTO `person` VALUES ('12', 'cwzx-luodongling', '财务中心罗冬玲');
INSERT INTO `person` VALUES ('13', 'cwzx-luohuijuan', '财务中心罗惠娟');
INSERT INTO `person` VALUES ('14', 'cwzx-luojiebing', '财务中心罗洁冰');
INSERT INTO `person` VALUES ('15', 'cwzx-luoxiaoming', '财务中心罗晓敏');
INSERT INTO `person` VALUES ('16', 'cwzx-tanlifang', '财务中心覃丽芳');
INSERT INTO `person` VALUES ('17', 'cwzx-tanhao', '财务中心谭浩');
INSERT INTO `person` VALUES ('18', 'cwzx-wangdongling', '财务中心王冬玲');
INSERT INTO `person` VALUES ('19', 'cwzx-wangjing', '财务中心王静');
INSERT INTO `person` VALUES ('20', 'cwzx-wangxiaoxia', '财务中心王晓霞');
INSERT INTO `person` VALUES ('21', 'cwzx-xiexueling', '财务中心谢雪玲');
INSERT INTO `person` VALUES ('22', 'cwzx-xudanping', '财务中心许丹萍');
INSERT INTO `person` VALUES ('23', 'cwzx-xujingting', '财务中心许静婷');
INSERT INTO `person` VALUES ('24', 'cwzx-xuyuting', '财务中心许宇婷');
INSERT INTO `person` VALUES ('25', 'cwzx-xuzhengwei', '财务中心许政威');
INSERT INTO `person` VALUES ('26', 'cwzx-youqingqing', '财务中心游琴琴');
INSERT INTO `person` VALUES ('27', 'cwzx-yuanyiping', '财务中心袁怡坪');
INSERT INTO `person` VALUES ('28', 'cwzx-zhangjuqing', '财务中心张菊清');
INSERT INTO `person` VALUES ('29', 'cwzx-zhanglin', '财务中心张琳');
INSERT INTO `person` VALUES ('30', 'cwzx-zhangzipan', '财务中心张子盼');
INSERT INTO `person` VALUES ('31', 'cwzx-zhaolongyuan', '财务中心赵龙源');
INSERT INTO `person` VALUES ('32', 'cwzx-zhengcunyu', '财务中心郑纯玉');
INSERT INTO `person` VALUES ('33', 'cwzx-zhongkailin', '财务中心钟凯琳');
INSERT INTO `person` VALUES ('34', 'gyzx-lijianping', '供应中心- 黎建平');
INSERT INTO `person` VALUES ('35', 'gyzx-chenbaoxian', '供应中心-陈保贤');
INSERT INTO `person` VALUES ('36', 'gyzx-chenchaozhong', '供应中心-陈潮忠');
INSERT INTO `person` VALUES ('37', 'gyzx-chenhouyan', '供应中心-陈后艳');
INSERT INTO `person` VALUES ('38', 'gyzx-chenhuiyin', '供应中心－陈慧英');
INSERT INTO `person` VALUES ('39', 'gyzx-chenjuan', '供应中心-陈娟');
INSERT INTO `person` VALUES ('40', 'gyzx-chenshulian', '供应中心－陈树廉');
INSERT INTO `person` VALUES ('41', 'gyzx-chenxiaohong', '供应中心－陈小红');
INSERT INTO `person` VALUES ('42', 'gyzx-chuyanan', '供应中心-褚亚楠');
INSERT INTO `person` VALUES ('43', 'gyzx-dengjianping', '供应中心-邓健平');
INSERT INTO `person` VALUES ('44', 'gyzx-dengliping', '供应中心-邓丽萍');
INSERT INTO `person` VALUES ('45', 'gyzx-dengliyun', '供应中心-邓利云');
INSERT INTO `person` VALUES ('46', 'gyzx-dengyangjin', '供应中心－邓杨进');
INSERT INTO `person` VALUES ('47', 'gyzx-dingweidong', '供应中心-丁维东');
INSERT INTO `person` VALUES ('48', 'gyzx-fudongping', '供应中心-付冬平');
INSERT INTO `person` VALUES ('49', 'gyzx-ganxiaoli', '供应中心-甘小丽');
INSERT INTO `person` VALUES ('50', 'gyzx-guorongfeng', '供应中心-郭荣峰');
INSERT INTO `person` VALUES ('51', 'gyzx-hetangwei', '供应中心-何汤文');
INSERT INTO `person` VALUES ('52', 'gyzx-huchunyan', '供应中心-胡春燕');
INSERT INTO `person` VALUES ('53', 'gyzx-huangjiayu', '供应中心-黄佳瑜');
INSERT INTO `person` VALUES ('54', 'gyzx-huanglisha', '供应中心-黄莉莎');
INSERT INTO `person` VALUES ('55', 'gyzx-huangmeiling', '供应中心-黄美玲');
INSERT INTO `person` VALUES ('56', 'gyzx-huangweifang', '供应中心-黄伟芳');
INSERT INTO `person` VALUES ('57', 'gyzx-jinglvmei', '供应中心-敬绿妹');
INSERT INTO `person` VALUES ('58', 'gyzx-lijianjun', '供应中心-李建军');
INSERT INTO `person` VALUES ('59', 'gyzx-liliulian', '供应中心-李柳连');
INSERT INTO `person` VALUES ('60', 'gyzx-lishan', '供应中心-李珊');
INSERT INTO `person` VALUES ('61', 'gyzx-liweiwei', '供应中心-李维维');
INSERT INTO `person` VALUES ('62', 'gyzx-liweiyuan', '供应中心-李伟元');
INSERT INTO `person` VALUES ('63', 'gyzx-linchunli', '供应中心-林春丽');
INSERT INTO `person` VALUES ('64', 'gyzx-liubingbing', '供应中心-刘冰冰');
INSERT INTO `person` VALUES ('65', 'gyzx-liuhongfei', '供应中心-刘洪飞');
INSERT INTO `person` VALUES ('66', 'gyzx-meijunjie', '供应中心-梅俊杰');
INSERT INTO `person` VALUES ('67', 'gyzx-mojunrui', '供应中心-莫均锐');
INSERT INTO `person` VALUES ('68', 'gyzx-pankangwei', '供应中心-潘康维');
INSERT INTO `person` VALUES ('69', 'gyzx-pengxiaoling', '供应中心－彭小玲');
INSERT INTO `person` VALUES ('70', 'gyzx-pengzhangliang', '供应中心-彭樟良');
INSERT INTO `person` VALUES ('71', 'gyzx-quanxi', '供应中心-全溪');
INSERT INTO `person` VALUES ('72', 'gyzx-yuanxiaoqing', '供应中心-阮晓庆');
INSERT INTO `person` VALUES ('73', 'gyzx-tanziquan', '供应中心-谭子权');
INSERT INTO `person` VALUES ('74', 'gyzx-weishanshan', '供应中心-魏珊珊');
INSERT INTO `person` VALUES ('75', 'gyzx-xiaoyu', '供应中心-肖瑜');
INSERT INTO `person` VALUES ('76', 'gyzx-yangdengming', '供应中心-杨登明');
INSERT INTO `person` VALUES ('77', 'gyzx-yangming', '供应中心-杨敏');
INSERT INTO `person` VALUES ('78', 'gyzx-yangwenfang', '供应中心-杨文芳');
INSERT INTO `person` VALUES ('79', 'gyzx-yuming', '供应中心-於明');
INSERT INTO `person` VALUES ('80', 'gyzx-zhangxi', '供应中心-张希');
INSERT INTO `person` VALUES ('81', 'gyzx-zhongminghua', '供应中心-钟明花');
INSERT INTO `person` VALUES ('82', 'gyzx-zhouchunjie', '供应中心-周春洁');
INSERT INTO `person` VALUES ('83', 'gyzx-zhuqiaoling', '供应中心-朱俏玲');
INSERT INTO `person` VALUES ('84', 'gyzx-zhuqiaoping', '供应中心-朱俏萍');
INSERT INTO `person` VALUES ('85', 'gyzx-zhuweizhong', '供应中心-朱伟忠');
INSERT INTO `person` VALUES ('86', 'hlwzx-aibing', '互联网中心-艾兵 ');
INSERT INTO `person` VALUES ('87', 'hlwzx-zengshuhui', '互联网中心-曾淑慧');
INSERT INTO `person` VALUES ('88', 'hlwzx-chenjingqiao', '互联网中心-陈精巧');
INSERT INTO `person` VALUES ('89', 'hlwzx-chenxingming', '互联网中心-陈幸明');
INSERT INTO `person` VALUES ('90', 'hlwzx-chenxumin', '互联网中心-陈旭敏');
INSERT INTO `person` VALUES ('91', 'hlwzx-chenyunxi', '互联网中心-陈允希');
INSERT INTO `person` VALUES ('92', 'hlwzx-fangyajun', '互联网中心-方亚军 ');
INSERT INTO `person` VALUES ('93', 'hlwzx-fengli', '互联网中心-冯丽');
INSERT INTO `person` VALUES ('94', 'hlwzx-goumin', '互联网中心-勾敏');
INSERT INTO `person` VALUES ('95', 'hlwzx-heguangyin', '互联网中心-何光英');
INSERT INTO `person` VALUES ('96', 'hlwzx-hujin', '互联网中心-胡锦');
INSERT INTO `person` VALUES ('97', 'hlwzx-hujing', '互联网中心-胡靖');
INSERT INTO `person` VALUES ('98', 'hlwzx-hushuang', '互联网中心-胡爽');
INSERT INTO `person` VALUES ('99', 'hlwzx-lizhaobing', '互联网中心-李兆兵 ');
INSERT INTO `person` VALUES ('100', 'hlwzx-liling', '互联网中心-李菱');
INSERT INTO `person` VALUES ('101', 'hlwzx-lihuiting', '互联网中心-李穗婷');
INSERT INTO `person` VALUES ('102', 'hlwzx-liangzirui', '互联网中心-梁子锐 ');
INSERT INTO `person` VALUES ('103', 'hlwzx-liufaming', '互联网中心-刘发明');
INSERT INTO `person` VALUES ('104', 'hlwzx-ouyanghai', '互联网中心-欧阳海');
INSERT INTO `person` VALUES ('105', 'hlwzx-panyane', '互联网中心-潘燕娥');
INSERT INTO `person` VALUES ('106', 'hlwzx-pengxianli', '互联网中心-彭仙丽');
INSERT INTO `person` VALUES ('107', 'hlwzx-shenziqing', '互联网中心-沈子晴');
INSERT INTO `person` VALUES ('108', 'hlwzx-shimingfen', '互联网中心-石明芬');
INSERT INTO `person` VALUES ('109', 'hlwzx-wangpei', '互联网中心-汪佩');
INSERT INTO `person` VALUES ('110', 'hlwzx-wangdaiwu', '互联网中心-王代武');
INSERT INTO `person` VALUES ('111', 'hlwzx-wenshuilian', '互联网中心-温水莲');
INSERT INTO `person` VALUES ('112', 'hlwzx-wuke', '互联网中心-吴克');
INSERT INTO `person` VALUES ('113', 'hlwzx-wumingxia', '互联网中心-吴明霞');
INSERT INTO `person` VALUES ('114', 'hlwzx-xieguoxiu', '互联网中心-谢国秀');
INSERT INTO `person` VALUES ('115', 'hlwzx-yanxiaoyu', '互联网中心-颜小宇');
INSERT INTO `person` VALUES ('116', 'hlwzx-yangmeiling', '互联网中心-杨美玲');
INSERT INTO `person` VALUES ('117', 'hlwzx-yangmingwei', '互联网中心-杨明伟');
INSERT INTO `person` VALUES ('118', 'hlwzx-zhanglijuan', '互联网中心-张莉娟');
INSERT INTO `person` VALUES ('119', 'hlwzx-zhoudaode', '互联网中心-周道德');
INSERT INTO `person` VALUES ('120', 'hlwzx-zhouxin', '互联网中心-周新 ');
INSERT INTO `person` VALUES ('121', 'hndq-zengjinhua', '华南大区·曾进华');
INSERT INTO `person` VALUES ('122', 'hndq-chenguangye', '华南大区·陈光业');
INSERT INTO `person` VALUES ('123', 'hndq-chenruijun', '华南大区·陈睿君');
INSERT INTO `person` VALUES ('124', 'hndq-wangdanxia', '华南大区·王丹霞');
INSERT INTO `person` VALUES ('125', 'hzpzx-hejianyu', '化妆品中心-何健宇');
INSERT INTO `person` VALUES ('126', 'hzpzx-jiangweiqian', '化妆品中心-蒋韦倩');
INSERT INTO `person` VALUES ('127', 'hzpzx-leiqiuxiang', '化妆品中心-雷秋香');
INSERT INTO `person` VALUES ('128', 'hzpzx-liujian', '化妆品中心-刘建');
INSERT INTO `person` VALUES ('129', 'hzpzx-luoya', '化妆品中心-罗雅');
INSERT INTO `person` VALUES ('130', 'hzpzx-yanhaodao', '化妆品中心-严浩钊');
INSERT INTO `person` VALUES ('131', 'hzpzx-zhangying', '化妆品中心-张莹');
INSERT INTO `person` VALUES ('132', 'hzpzx-zhiyanqiong', '化妆品中心-植燕琼');
INSERT INTO `person` VALUES ('133', 'nqzy-chenwenyuan', '南区直营-陈文渊');
INSERT INTO `person` VALUES ('134', 'nqzy-jiangjingyun', '南区直营-蒋静云');
INSERT INTO `person` VALUES ('135', 'nqzy-luoyuanmin', '南区直营-罗苑敏');
INSERT INTO `person` VALUES ('136', 'nqzy-xiexiaojun', '南区直营-谢晓君');
INSERT INTO `person` VALUES ('137', 'rzzx-hanxiuling', '人资中心韩秀玲');
INSERT INTO `person` VALUES ('138', 'rzzx-huangguangtao', '人资中心黄广桃');
INSERT INTO `person` VALUES ('139', 'rzzx-huanglixia', '人资中心黄丽霞');
INSERT INTO `person` VALUES ('140', 'rzzx-huangmanting', '人资中心黄满婷');
INSERT INTO `person` VALUES ('141', 'rzzx-liuyuxin', '人资中心刘玉新');
INSERT INTO `person` VALUES ('142', 'rzzx-tangjingjun', '人资中心唐景君');
INSERT INTO `person` VALUES ('143', 'rzzx-tangsihua', '人资中心唐思华');
INSERT INTO `person` VALUES ('144', 'rzzx-wangpingping', '人资中心王萍萍');
INSERT INTO `person` VALUES ('145', 'rzzx-xiongyuanyun', '人资中心熊苑云');
INSERT INTO `person` VALUES ('146', 'rzzx-xuxueling', '人资中心许雪玲');
INSERT INTO `person` VALUES ('147', 'rzzx-yecui', '人资中心叶萃');
INSERT INTO `person` VALUES ('148', 'rzzx-zhangshaozhen', '人资中心张少贞');
INSERT INTO `person` VALUES ('149', 'rzzx-zhengjiaping', '人资中心郑嘉平');
INSERT INTO `person` VALUES ('150', 'spzx-dengjiezhen', '饰品中心邓洁桢');
INSERT INTO `person` VALUES ('151', 'spzx-liujie', '饰品中心刘洁');
INSERT INTO `person` VALUES ('152', 'spzx-liuyanhong', '饰品中心刘燕虹');
INSERT INTO `person` VALUES ('153', 'spzx-meiluanjiao', '饰品中心梅鸾姣');
INSERT INTO `person` VALUES ('154', 'spzx-tanyoulan', '饰品中心谭佑兰');
INSERT INTO `person` VALUES ('155', 'spzx-wangyiou', '饰品中心王译欧');
INSERT INTO `person` VALUES ('156', 'spzx-yuxiaoyong', '饰品中心於小勇');
INSERT INTO `person` VALUES ('157', 'spzx-yudaiyi', '饰品中心于代毅');
INSERT INTO `person` VALUES ('158', 'spzx-yuhang', '饰品中心于航');
INSERT INTO `person` VALUES ('159', 'spzx-yueyu', '饰品中心岳宇');
INSERT INTO `person` VALUES ('160', 'spzx-zhaoying', '饰品中心赵颖');
INSERT INTO `person` VALUES ('161', 'spzx-zhengliangqing', '饰品中心郑良清');
INSERT INTO `person` VALUES ('162', 'spzx-zhongjiamei', '饰品中心钟嘉美');
INSERT INTO `person` VALUES ('163', 'spzx-zhoumeiling', '饰品中心周美玲');
INSERT INTO `person` VALUES ('164', 'hrbp-wanglina', 'HRBP-王丽娜');
INSERT INTO `person` VALUES ('165', 'hrbp-yangrui', 'HRBP-杨锐');
INSERT INTO `person` VALUES ('166', 'hrbp-luoyuan', 'HRBP-罗媛');
INSERT INTO `person` VALUES ('167', 'pxb-dengfenmei', '培训部-邓芬玫');
INSERT INTO `person` VALUES ('168', 'pxb-huangshijin', '培训部-黄石金');
INSERT INTO `person` VALUES ('169', 'pxb-huangxiaohong', '培训部-黄小红');
INSERT INTO `person` VALUES ('170', 'pxb-jijuanjuan', '培训部-吉娟娟');
INSERT INTO `person` VALUES ('171', 'pxb-liujian', '培训部-刘健');
INSERT INTO `person` VALUES ('172', 'pxb-pengnianxi', '培训部-彭年西');
INSERT INTO `person` VALUES ('173', 'pxb-yichenglong', '培训部-易成龙');
INSERT INTO `person` VALUES ('174', 'pxb-yinjuan', '培训部-尹娟');
INSERT INTO `person` VALUES ('175', 'pxb-zhouqianyi', '培训部-周倩怡');
INSERT INTO `person` VALUES ('176', 'pxb-zouhanqiong', '培训部-邹罕琼');
INSERT INTO `person` VALUES ('177', 'zxtt-chenli', '造型天团-陈礼');
INSERT INTO `person` VALUES ('178', 'zxtt-chenming', '造型天团-陈明');
INSERT INTO `person` VALUES ('179', 'zxtt-lishuang', '造型天团-李爽');
INSERT INTO `person` VALUES ('180', 'zxtt-liuqifeng', '造型天团-刘其峰');
INSERT INTO `person` VALUES ('181', 'zxtt-mowenhao', '造型天团-莫文浩');
INSERT INTO `person` VALUES ('182', 'zxtt-tanzhiyong', '造型天团-谭志勇');
INSERT INTO `person` VALUES ('183', 'zxtt-wujiacheng', '造型天团-吴嘉诚');
INSERT INTO `person` VALUES ('184', 'zxtt-zhangchangchun', '造型天团-张长春');
INSERT INTO `person` VALUES ('185', 'zxtt-zhaolei', '造型天团-赵磊');
INSERT INTO `person` VALUES ('186', 'xsglb-chenguoyu', '销售管理部-陈国余');
INSERT INTO `person` VALUES ('187', 'xsglb-chenhaijing', '销售管理部-陈海静');
INSERT INTO `person` VALUES ('188', 'xsglb-chenxiaochun', '销售管理部-陈晓春');
INSERT INTO `person` VALUES ('189', 'xsglb-dengyaqing', '销售管理部-邓雅馨');
INSERT INTO `person` VALUES ('190', 'xsglb-huangbichun', '销售管理部--黄碧纯');
INSERT INTO `person` VALUES ('191', 'xsglb-jiangdanmei', '销售管理部-姜丹妹');
INSERT INTO `person` VALUES ('192', 'xsglb-jieyingwen', '销售管理部-揭英文');
INSERT INTO `person` VALUES ('193', 'xsglb-lisiting', '销售管理部-黎斯婷');
INSERT INTO `person` VALUES ('194', 'xsglb-lianxiaoling', '销售管理部-练小玲');
INSERT INTO `person` VALUES ('195', 'xsglb-luofeng', '销售管理部-罗凤');
INSERT INTO `person` VALUES ('196', 'xsglb-luorong', '销售管理部-罗蓉');
INSERT INTO `person` VALUES ('197', 'xsglb-tanminmin', '销售管理部-谭敏敏');
INSERT INTO `person` VALUES ('198', 'xsglb-wangtingting', '销售管理部-王亭亭');
INSERT INTO `person` VALUES ('199', 'xsglb-xiexiaoya', '销售管理部-谢小雅');
INSERT INTO `person` VALUES ('200', 'xsglb-xuqiuling', '销售管理部-徐秋玲');
INSERT INTO `person` VALUES ('201', 'xsglb-yaomao', '销售管理部-姚茂');
INSERT INTO `person` VALUES ('202', 'xsglb-zhongshuman', '销售管理部-钟舒漫');
INSERT INTO `person` VALUES ('203', 'xsglb-zhoulu', '销售管理部-周露');
INSERT INTO `person` VALUES ('204', 'xsglb-zhouxiaohui', '销售管理部-周小慧');
INSERT INTO `person` VALUES ('205', 'xsglzx-hexiaofeng', '销售管理中心-何小芬');
INSERT INTO `person` VALUES ('206', 'xsglzx-kangchuanxuan', '销售管理中心-康传璇');
INSERT INTO `person` VALUES ('207', 'xsglzx-linmeixin', '销售管理中心-林美欣');
INSERT INTO `person` VALUES ('208', 'zxsjb-weiwenlong', '造型设计部-温文龙');
INSERT INTO `person` VALUES ('209', 'zxsjb-yexhaojin', '造型设计部-叶超锦');
INSERT INTO `person` VALUES ('210', 'cxgc-huangweijun', '创新工厂-黄薇君');
INSERT INTO `person` VALUES ('211', 'cxgc-liangzicong', '创新工厂-梁梓聪');
INSERT INTO `person` VALUES ('212', 'zjb-baiyu', '总经办-白玉');
INSERT INTO `person` VALUES ('213', 'zjb-chendawen', '总经办-陈达文');
INSERT INTO `person` VALUES ('214', 'zjb-chenxiaoqian', '总经办-陈小倩');
INSERT INTO `person` VALUES ('215', 'zjb-chenyongzheng', '总经办-陈永正');
INSERT INTO `person` VALUES ('216', 'zjb-fugenping', '总经办-傅根平');
INSERT INTO `person` VALUES ('217', 'zjb-heguoqing', '总经办-何国清');
INSERT INTO `person` VALUES ('218', 'zjb-hezaifu', '总经办-何再福');
INSERT INTO `person` VALUES ('219', 'zjb-huangguoxiong', '总经办-黄国雄');
INSERT INTO `person` VALUES ('220', 'zjb-huangzijian', '总经办-黄自建');
INSERT INTO `person` VALUES ('221', 'zjb-laisheng', '总经办-赖生');
INSERT INTO `person` VALUES ('222', 'zjb-laishiqing', '总经办-赖仕青');
INSERT INTO `person` VALUES ('223', 'zjb-laizini', '总经办-赖紫霓');
INSERT INTO `person` VALUES ('224', 'zjb-lanhanrong', '总经办-蓝汉荣');
INSERT INTO `person` VALUES ('225', 'zjb-lidong', '总经办-李东');
INSERT INTO `person` VALUES ('226', 'zjb-ligang', '总经办-李刚');
INSERT INTO `person` VALUES ('227', 'zjb-ligangdong', '总经办-李钢东');
INSERT INTO `person` VALUES ('228', 'zjb-lianghuifang', '总经办-梁惠芳');
INSERT INTO `person` VALUES ('229', 'zjb-liuruifeng', '总经办-刘锐峰');
INSERT INTO `person` VALUES ('230', 'zjb-maojianrong', '总经办-毛建荣');
INSERT INTO `person` VALUES ('231', 'zjb-qiuxiaoxia', '总经办-丘晓霞');
INSERT INTO `person` VALUES ('232', 'zjb-yuanhanjun', '总经办-阮汉君');
INSERT INTO `person` VALUES ('233', 'zjb-tongxinxing', '总经办-童新星');
INSERT INTO `person` VALUES ('234', 'zjb-wanghuanxiang', '总经办-王焕祥');
INSERT INTO `person` VALUES ('235', 'zjb-wangqiong', '总经办-王琼');
INSERT INTO `person` VALUES ('236', 'zjb-wangyoumin', '总经办-王有民');
INSERT INTO `person` VALUES ('237', 'zjb-weihaiyan', '总经办-魏海燕');
INSERT INTO `person` VALUES ('238', 'zjb-xiejunni', '总经办-谢君霓');
INSERT INTO `person` VALUES ('239', 'zjb-xiemiaoxuan', '总经办-谢妙璇');
INSERT INTO `person` VALUES ('240', 'zjb-xuyuanwei', '总经办-许远威');
INSERT INTO `person` VALUES ('241', 'zjb-yangwensheng', '总经办-杨文生');
INSERT INTO `person` VALUES ('242', 'zjb-yaomaoxian', '总经办-姚茂先');
INSERT INTO `person` VALUES ('243', 'zjb-yuxiaojie', '总经办-於小姐');
INSERT INTO `person` VALUES ('244', 'zjb-zhangshaohao', '总经办-张绍浩');
INSERT INTO `person` VALUES ('245', 'zjb-zhangyaohua', '总经办-张耀华');
INSERT INTO `person` VALUES ('246', 'zjb-zhengtingting', '总经办-郑婷婷');
INSERT INTO `person` VALUES ('247', 'zjb-zhengwenqing', '总经办-郑文清');
INSERT INTO `person` VALUES ('248', 'zjb-zhongshengfa', '总经办-钟声发');
INSERT INTO `person` VALUES ('249', 'hndq-huanghaihong', '华南大区-黄海鸿');
INSERT INTO `person` VALUES ('250', 'hndq-huangjiaqi', '华南大区-黄家琪');
INSERT INTO `person` VALUES ('251', 'hndq-huanglizhen', '华南大区-黄丽贞');
INSERT INTO `person` VALUES ('252', 'hndq-huanglingrong', '华南大区-黄玲容');
INSERT INTO `person` VALUES ('253', 'hndq-liyuhan', '华南大区-李雨韩');
INSERT INTO `person` VALUES ('254', 'hndq-liangzhaoqing', '华南大区-梁兆青');
INSERT INTO `person` VALUES ('255', 'hndq-liuyongqiang', '华南大区-刘永强');
INSERT INTO `person` VALUES ('256', 'hndq-sulijuan', '华南大区-苏李娟');
INSERT INTO `person` VALUES ('257', 'hndq-sunyuchao', '华南大区-孙宇超');
INSERT INTO `person` VALUES ('258', 'hndq-tanyiting', '华南大区-谭伊婷');
INSERT INTO `person` VALUES ('259', 'hndq-tanyi', '华南大区-谭亿');
INSERT INTO `person` VALUES ('260', 'hndq-yuanyuan', '华南大区-袁媛');
INSERT INTO `person` VALUES ('261', 'hndq-zhangli', '华南大区-张丽');
INSERT INTO `person` VALUES ('262', 'nq-hehuang', '南区-何欢');
INSERT INTO `person` VALUES ('263', 'nq-liuting', '南区-刘婷');
INSERT INTO `rank` VALUES ('1', 'firstRound', 'luckyAward', '幸运奖抽奖', '20', '40', 'luckyAward.jpg', '迷人密码补水面膜+发夹', '50', '0', '10');
INSERT INTO `rank` VALUES ('2', 'firstRound', 'rankAward', '三等奖抽奖', '15', '30', 'thirdAward.png', '小米 米加 飞利浦台灯', '200', '0', '10');
INSERT INTO `rank` VALUES ('3', 'secondRound', 'luckyAward', '幸运奖抽奖', '20', '40', 'luckyAward.jpg', '迷人密码补水面膜+发夹', '50', '0', '10');
INSERT INTO `rank` VALUES ('4', 'secondRound', 'rankAward', '二等奖抽奖', '5', '10', 'secondAward.png', '无页风扇', '500', '0', '10');
INSERT INTO `rank` VALUES ('5', 'thirdRound', 'luckyAward', '幸运奖抽奖', '20', '40', 'luckyAward.jpg', '迷人密码补水面膜+发夹', '50', '0', '10');
INSERT INTO `rank` VALUES ('6', 'thirdRound', 'rankAward', '一等奖抽奖', '5', '5', 'firstAward.png', '空气净化器', '800', '0', '10');
INSERT INTO `rank` VALUES ('7', 'fourthRound', 'rankAward', '特等奖抽奖', '1', '1', 'specialAward.png', '京东购物卡', '2000', '0', '10');
