/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 22/04/2023 21:07:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_describe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '描述',
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES (1, 'iphoneX', 'https://img12.360buyimg.com/n7/jfs/t1/103831/29/35003/82673/63aec17fF1fef4340/a45aecf79cb796e2.jpg', 'iphoneX', '10', '手机', '京东');
INSERT INTO `commodity` VALUES (2, 'iphoneX', 'https://img12.360buyimg.com/n7/jfs/t1/103831/29/35003/82673/63aec17fF1fef4340/a45aecf79cb796e2.jpg', '11', '11.11', '手机', '淘宝');
INSERT INTO `commodity` VALUES (3, 'iphone11', 'https://img10.360buyimg.com//n0/jfs/t1/216578/34/14150/121785/62286978E1a6f4ef0/b6b32191c26d161b.jpg', '11', '4299', '手机', '京东');
INSERT INTO `commodity` VALUES (4, 'iphone11', 'https://gd3.alicdn.com/imgextra/i2/3182511188/O1CN01UJDIkg1Ke9DRyu7qI_!!3182511188.jpg_400x400.jpg', '22', '3498', '手机', '淘宝');
INSERT INTO `commodity` VALUES (5, 'iPhone12', 'https://img11.360buyimg.com//n0/jfs/t1/6685/38/14565/72913/6132e2bdE1cfeacd5/61201a0c1bd5688e.jpg', '3344', '5199', '手机', '京东');
INSERT INTO `commodity` VALUES (6, 'iphone12', 'https://img11.360buyimg.com//n0/jfs/t1/6685/38/14565/72913/6132e2bdE1cfeacd5/61201a0c1bd5688e.jpg', '4', '4699', '手机', '淘宝');
INSERT INTO `commodity` VALUES (7, '联想拯救者Y9000P', 'https://img12.360buyimg.com//n0/jfs/t1/185639/37/31677/163790/63da33a4Faae68067/e4f1fef7f6f4889b.jpg', '5', '8999', '电脑', '京东');
INSERT INTO `commodity` VALUES (8, '联想', 'https://img.alicdn.com/imgextra/i1/68910596/O1CN01MGXzzG1GH0rWL2quZ_!!68910596.jpg', '6', '8999', '电脑', '淘宝');
INSERT INTO `commodity` VALUES (9, '华为', 'https://img12.360buyimg.com//n0/jfs/t1/197678/28/29296/38315/63a6b9ccE9d8245d3/7844f8bdf0d77071.jpg', '8', '5299', '电脑', '京东');
INSERT INTO `commodity` VALUES (10, '\n\n魅族 20 12GB+512GB 先锋灰 第二代骁龙8旗舰芯片 144Hz电竞直屏 支持67W快充 超薄机身设计 5G手机\n\n\n', 'http://img13.360buyimg.com/n7/jfs/t1/189867/9/34270/57646/643d6f2aFe98c6493/56f58b1153b6b0ac.jpg', 'xx', '3799.00', '手机', '京东');
INSERT INTO `commodity` VALUES (11, '\n\n华为智选 Hi nova 9z 5G全网通手机 6.67英寸120Hz原彩屏hinova 6400万像素超清摄影 8GB+128GB幻境森林\n【华为智选Hinova9z】6.67英寸120Hz原彩屏,6400万像素超清摄影,66W快充;华为智选手机热销爆款，限量抢购，猛戳》》》\n\n', 'http://img11.360buyimg.com/n7/jfs/t1/82881/12/24861/48296/6437dfbcFf24332f1/f720ad4746774dc8.jpg', 'xx', '1099.00', '手机', '京东');
INSERT INTO `commodity` VALUES (12, '\n\nOPPO K10x 极光 8GB+128GB 67W超级闪充 5000mAh长续航 120Hz高帧屏 6400万三摄 高通骁龙695 拍照 5G手机\nFindX6系列新品上市，购机享白条免息+49.9换购1年无限次碎屏保+180天只换不修，晒单至高赢200元京豆，立即抢购\n\n', 'http://img12.360buyimg.com/n7/jfs/t1/148438/31/31879/50964/643e416aF78d21f6c/7dc602d439e87c8a.jpg', 'xx', '1299.00', '手机', '京东');
INSERT INTO `commodity` VALUES (13, '\n\nOPPO K9x 8GB+128GB 银紫超梦 天玑810 5000mAh长续航 33W快充 90Hz电竞屏 6400万三摄 拍照5G手机oppok9x\nFindX6系列新品上市，购机享白条免息+49.9换购1年无限次碎屏保+180天只换不修，晒单至高赢200元京豆，立即抢购\n\n', 'http://img13.360buyimg.com/n7/jfs/t1/143788/3/34033/81520/643e3f1dF84e6f691/a6619d07c272d2c3.jpg', 'xx', '1199.00', '手机', '京东');
INSERT INTO `commodity` VALUES (14, '\n\n荣耀X40 120Hz OLED硬核曲屏 5100mAh 快充大电池 7.9mm轻薄设计 5G手机 8GB+128GB 彩云追月\n荣耀|X系列|荣耀X40|荣耀5g手机|荣耀新品|X40手机|荣耀X30|X40系列|X40新品|双卡双待|内存|人脸识别|优惠|分期|学生|旗舰|推荐手机\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/7169/20/17985/33829/63241b3aE7dcfd261/efb35507276509cd.jpg', 'xx', '1599.00', '手机', '京东');
INSERT INTO `commodity` VALUES (15, '\n\nRedmi Note 11 5G 天玑810 33W Pro快充 5000mAh大电池  6GB +128GB 神秘黑境 智能手机 小米 红米\n\n\n', 'http://img12.360buyimg.com/n7/jfs/t1/175598/39/34704/41284/6412c14cF116ff088/622c954a56e2b970.jpg', 'xx', '969.00', '手机', '京东');
INSERT INTO `commodity` VALUES (16, '\n\n【新品上市】Note12Turbo 性能魔法 旗舰体验\n\n\n', 'http://img13.360buyimg.com/n7/jfs/t1/223630/32/17380/69801/642e3afdFad3517f4/ff8164c9dd25b70c.jpg', 'xx', '2099.00', '手机', '京东');
INSERT INTO `commodity` VALUES (17, '\n\n荣耀Play7T 6000mAh 长续航 8.27mm轻薄机身 6.74英寸高刷护眼屏 5G手机 8GB+128GB 钛空银\n长续航~轻薄机身~查看play7tpro更多版本~\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/160535/22/36813/30975/64216a29F2e47044c/eb5996f2ea154513.jpg', 'xx', '1099.00', '手机', '京东');
INSERT INTO `commodity` VALUES (18, '\n\nOPPO A36 6GB+128GB 晴川蓝 高通骁龙680 5000mAh长续航 90Hz炫彩屏 大内存游戏拍照手机oppoa36\nOPPOA1新品上市，购机享6期免息+MH135耳机，店铺会员领取10元优惠券，立即抢购\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/134465/25/31479/64655/643e4bb7Ff86e4be8/1a7480f28405687e.jpg', 'xx', '899.00', '手机', '京东');
INSERT INTO `commodity` VALUES (19, '\n\n荣耀80 1.6亿像素超清主摄 AI Vlog视频大师 全新Magic OS 7.0系统 5G手机 8GB+256GB 墨玉青\n【限时12期免息，180天只换不修】全新MagicOS系统，更好的用机体验~荣耀70到手价2199\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/33645/27/21820/60979/643cfc0dF2c55939c/a28fb07fd5dda9f0.jpg', 'xx', '2399.00', '手机', '京东');
INSERT INTO `commodity` VALUES (20, '\n\nOPPO 一加 Ace 2 12GB+256GB 冰河蓝 满血版骁龙®8+旗舰平台 1.5K灵犀触控屏 超帧超画引擎 5G游戏电竞手机\n一加Ace2原神定制礼盒预售开启，满血版18GB豪华内存，预定享12期免息，晒单赢50元京豆【立即预定】\n\n', 'http://img12.360buyimg.com/n7/jfs/t1/167669/25/33602/74250/643e637dFf188cc1b/000205071435a4e9.jpg', 'xx', '2799.00', '手机', '京东');
INSERT INTO `commodity` VALUES (21, '\n\nRedmi Note11T Pro 5G 天玑8100 144HzLCD旗舰直屏 67W快充 6GB+128GB子夜黑 5G智能手机 小米红米\n\n\n', 'http://img11.360buyimg.com/n7/jfs/t1/200324/3/33168/45393/6426afd8F8c632180/0b23d700ce75fe53.jpg', 'xx', '1379.00', '手机', '京东');
INSERT INTO `commodity` VALUES (22, '\n\n小米13 徕卡光学镜头 超窄边屏幕 8+256GB 5G手机\n\n\n', 'http://img13.360buyimg.com/n7/jfs/t1/193827/27/34587/89675/643cfe04Fc585fb34/b6d8db7431d9671a.jpg', 'xx', '4599.00', '手机', '京东');
INSERT INTO `commodity` VALUES (23, '\n\nvivo iQOO Neo7 SE 8GB+256GB 银河  天玑8200 120W超快闪充 120Hz柔性直屏 5G游戏电竞性能手机\n【尊享3期免息+学生赠无线运动耳机活力版+直播间下单限时赠入耳式耳机】iQOONeo7,2399起!\n\n', 'http://img14.360buyimg.com/n7/jfs/t1/77210/36/21012/48380/643e7c5bF5724c165/4f3bd4021f78a6c6.jpg', 'xx', '1665.00', '手机', '京东');
INSERT INTO `commodity` VALUES (24, '\n\nOPPO 一加 Ace 2V 12GB+256GB 青釉 天玑 9000 移动平台 1.5K 灵犀触控直屏 6400 万超清三摄 5G游戏性能手机\n一加Ace2原神定制礼盒预售开启，满血版18GB豪华内存，预定享12期免息，晒单赢50元京豆【立即预定】\n\n', 'http://img13.360buyimg.com/n7/jfs/t1/200201/19/33042/71430/643e6ce0F0be313ca/b47215b87f033f92.jpg', 'xx', '2268.00', '手机', '京东');
INSERT INTO `commodity` VALUES (25, '\n\nRedmi K60 骁龙8+处理器 2K高光屏 6400万超清相机 5500mAh长续航 12GB+256GB 墨羽 小米红米5G\n\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/127221/38/35461/54661/6433de1eF57f10b14/27f7b3780f93d0da.jpg', 'xx', '2699.00', '手机', '京东');
INSERT INTO `commodity` VALUES (26, '\n\nRedmi Note 12 Turbo 5G 第二代骁龙7+ 超细四窄边OLED直屏 6400万像素 12GB+512GB碳纤黑 智能手机 小米红米\n\n\n', 'http://img13.360buyimg.com/n7/jfs/t1/164539/34/31551/48771/643c06d1F59a610e3/239c5e408fe12fe7.jpg', 'xx', '2299.00', '手机', '京东');
INSERT INTO `commodity` VALUES (27, '\n\nRedmi K40S 骁龙870 三星E4 AMOLED 120Hz直屏 OIS光学防抖 67W快充 幻镜 12GB+256GB 5G智能手机 小米红米\n\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/149909/27/21980/296225/62331f88E5f6cecef/e9e71b07fabfb5d2.jpg', 'xx', '1899.00', '手机', '京东');
INSERT INTO `commodity` VALUES (28, '\n\nvivo iQOO Z7 8GB+256GB 深空黑 120W超快闪充 等效5000mAh强续航 6400万像素 OIS光学防抖 护眼竞速屏5G手机\n【3期免息+赠iQOO入耳式耳机+学生额外加赠蓝牙音箱+评价晒单赠20元京豆+直播间下单限时赠指套】iQOOZ7x新品上市！\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/115127/37/36556/57052/643e5acbFcdd18869/12c42d95568f8159.jpg', 'xx', '1799.00', '手机', '京东');
INSERT INTO `commodity` VALUES (29, '\n\nOPPO Reno9 8GB+256GB 明日金 6400万水光人像镜头 120Hz OLED超清曲面屏 4500mAh大电池 7.19mm轻薄 5G手机\n【购机享白条免息|参与店铺以旧换新享补贴|晒单赢20元京豆|直播间下单赢好礼！】【Reno9榜单热卖，购机享多重好礼！】\n\n', 'http://img11.360buyimg.com/n7/jfs/t1/187842/26/34756/69417/643e5c66F280baa0a/470d17afc7700e30.jpg', 'xx', '2499.00', '手机', '京东');
INSERT INTO `commodity` VALUES (30, '\n\n荣耀X40 GT 骁龙888旗舰芯 144Hz高刷电竞屏 66W超级快充 5G手机 12GB+256GB 幻夜黑\n【限时优惠100元，到手价2299元，12期免息】骁龙888旗舰芯，144Hz高刷电竞屏，13层立体散热，GT级调优，配备66W超级快充~查看X40~\n\n', 'http://img12.360buyimg.com/n7/jfs/t1/188041/9/28595/24477/63469204E0e155b4c/c18bd2097196ccfa.jpg', 'xx', '2075.00', '手机', '京东');
INSERT INTO `commodity` VALUES (31, '\n\nrealme真我10 Pro+ 2160Hz旗舰曲面屏* 天玑1080旗舰芯 一亿像素街拍相机 8GB+128GB 星曜之光 5G手机\n【新品越级登场】2160Hz旗舰曲面屏*，天玑1080旗舰芯，一亿像素街拍相机！\n\n', 'http://img11.360buyimg.com/n7/jfs/t1/41304/19/20552/68606/643d1435F46745b06/c5406907a56b196b.jpg', 'xx', '1399.00', '手机', '京东');
INSERT INTO `commodity` VALUES (32, '\n\n京品手机	\nOPPO 一加 Ace 竞速版 8GB+256GB竞技灰享OPPO官方售后 天玑8100-MAX 120Hz变速电竞直屏 游戏稳帧引擎5G手机\n一加Ace2原神定制礼盒预售开启，满血版18GB豪华内存，预定享12期免息，晒单赢50元京豆【立即预定】\n\n', 'http://img11.360buyimg.com/n7/jfs/t1/139708/40/35654/82673/643e7362Fb29c50ab/bb486551151f40ac.jpg', 'xx', '1589.00', '手机', '京东');
INSERT INTO `commodity` VALUES (33, '\n\nrealme真我GT Neo5 240W光速秒充 觉醒光环系统 144Hz 1.5K直屏 骁龙8+ 5G芯 16+1T 圣境白 5G手机\n【潮玩电竞旗舰】240W光速秒充，觉醒光环系统，144Hz旗舰直屏，骁龙8+5G芯，王者荣耀官方赛事指定用机！\n\n', 'http://img13.360buyimg.com/n7/jfs/t1/87933/33/36908/41742/64391110Ff6772ad6/81836ab2452a1318.jpg', 'xx', '3499.00', '手机', '京东');
INSERT INTO `commodity` VALUES (34, '\n\nvivo iQOO 11 12GB+256GB 赛道版 第二代骁龙8 2K 144Hz E6全感屏 120W闪充 自研芯片V2 5G电竞手机iqoo11\n【尊享24期免息+赠无线运动耳机活力版+直播间下单限时赠背包】iQOO11Pro尊享24期免息！\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/120125/27/35474/57953/643e759bFd9c2ee97/c1baed59dc4edd25.jpg', 'xx', '4399.00', '手机', '京东');
INSERT INTO `commodity` VALUES (35, '\n\nOPPO 一加 11 16GB+256GB 一瞬青 第二代骁龙 8 哈苏影像拍照 2K + 120Hz 高刷屏 游戏电竞5G旗舰手机\n一加Ace2原神定制礼盒预售开启，满血版18GB豪华内存，预定享12期免息，晒单赢50元京豆【立即预定】\n\n', 'http://img12.360buyimg.com/n7/jfs/t1/200145/1/32957/66463/643d16f5Fa53d012b/054f786d7655d3f3.jpg', 'xx', '4399.00', '手机', '京东');
INSERT INTO `commodity` VALUES (36, '\n\nApple iPhone 14 Pro Max (A2896) 256GB 暗紫色 支持移动联通电信5G 双卡双待手机\n【尽享热爱就此刻】指定iPhone14Pro系列领券立减800元！！！点击\n\n', 'http://img14.360buyimg.com/n7/jfs/t1/139066/9/36115/33375/643e5aa6F9ab3b251/e4efc24520aaa7b4.jpg', 'xx', '9899.00', '手机', '京东');
INSERT INTO `commodity` VALUES (37, '\n\nvivo iQOO Neo7 12GB+256GB 几何黑 天玑9000+ 独显芯片Pro+ E5柔性直屏 120W超快闪充 5G全网通手机iqooneo7\n【PLUS会员赠入耳式耳机+以旧换新享专属补贴】iQOONeo7SE尊享3期免息！\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/119650/14/32057/50043/643e7ccfF35554512/81a191c0f5c732c9.jpg', 'xx', '2494.00', '手机', '京东');
INSERT INTO `commodity` VALUES (38, '\n\nApple iPhone 14 Pro  (A2892) 256GB 暗紫色 支持移动联通电信5G 双卡双待手机\n【尽享热爱就此刻】指定iPhone14Pro系列领券立减800元！！！点击\n\n', 'http://img14.360buyimg.com/n7/jfs/t1/168215/25/36434/33375/64352608F4ffbe75e/0f2ca05cbab9460f.jpg', 'xx', '8899.00', '手机', '京东');
INSERT INTO `commodity` VALUES (39, '\n\nApple iPhone 13 (A2634) 128GB 午夜色 支持移动联通电信5G 双卡双待手机\n【尽享热爱就此刻】指定iPhone13到手低至4799元！！！点击\n\n', 'http://img10.360buyimg.com/n7/jfs/t1/128930/6/25398/106509/62286809Ecde9efc5/16e8ebc319a86f4c.jpg', 'xx', '4799.00', '手机', '京东');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123456', '123456', '2023-01-07 20:39:40');
INSERT INTO `user` VALUES (2, 'root', 'root', '2023-01-11 23:48:02');
INSERT INTO `user` VALUES (3, 'root', 'root1', '2023-04-18 22:36:05');
INSERT INTO `user` VALUES (4, '1', '1', '2023-04-18 22:37:34');

SET FOREIGN_KEY_CHECKS = 1;
