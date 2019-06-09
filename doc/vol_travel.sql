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

 Date: 09/06/2019 21:25:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attractions
-- ----------------------------
DROP TABLE IF EXISTS `attractions`;
CREATE TABLE `attractions`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attractions_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attractions_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attractions_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `attractions_status` int(2) DEFAULT 0,
  `create_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attractions
-- ----------------------------
INSERT INTO `attractions` VALUES ('1', NULL, '清凉寨景区', '蔡店街道西北部', '景区总面积6000余亩，年平均温度低于武汉市中心城区4-6度；山体高大陡峭，植被丰富，层峦叠嶂。木兰清凉寨十里中华樱花、映山红、油菜花、茶花花花飘香，推出的攀水瀑布、古炭窑、滴水观音、九龙飞瀑等旅游景点，加入丰富多彩的祈福、采茶等活动。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('10', NULL, '黄山风景区', '黄山市', '黄山自古以来就是中国数一数二的名山，奇松、怪石、云海、温泉被称为黄山的“四绝”。除此之外，雾凇、雪景、日出也是游人不会错过的景观，古人有“五岳归来不看山，黄山归来不看岳”的说法。 景区游览主要分为前山、后山两条上山路线，都通向主峰之一光明顶，在光明顶的另一侧，还有一条环线-西海大峡谷。\r\n\r\n', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('11', NULL, '屯溪老街', '黄山市屯溪区中心地段', '市内有名的小吃街、商业街。老街不宽，铺着青石板路，两侧林立着一幢幢徽派建筑，店铺便开在临街的屋子里，出售的也都是徽州特产。 一般晚上的老街要比白天更热闹些，店铺开了灯，一串串红灯笼与白墙黑瓦相映，带个三脚架，吃饭、逛街之余可以拍拍夜景。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('12', NULL, '宏村景区', '黄山市', '徽派古村中的代表，可拍摄南湖、月沼美景，欣赏精致的徽派三雕。 宏村是徽派古村中的代表，有“中国画里乡村”的美誉。来宏村一是看水利系统带来的水景，南湖、月沼是精华所在，二是看建筑上的徽派三雕，砖雕、石雕、木雕，像剪纸一样精细。而来此写生的美院学生又是另一道风景。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('13', NULL, '九寨沟', '四川省南坪县城西45千米处', '自然风景点都集中在沟两侧。九寨沟以原始的生态环境，一尘不染的清新空气和雪山、森林、湖泊组合成神妙、奇幻、幽美的自然风光，显现“自然的美，美的自然”，被誉为“童话世界”、“人间仙境”。九寨沟的高峰、彩林、翠海、叠瀑和藏族风情被称为“五绝”。\r\n', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('14', NULL, '峨眉山', '四川中南部，四川盆地西南边缘的峨眉境内，距成都约一百六十公里', '峨眉山以其秀丽的自然风光和神话般的佛教胜迹而闻名于世。她古雅神奇，巍峨媚丽。其山脉绵亘曲折、千岩万壑、瀑布溪流、奇秀清雅，故有“峨眉天下秀”之美称。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('15', NULL, '青城山', '都江堰市西南', '位于邛崃山东坡与成都平原交接处，背靠岷山雪岭，面向成都平原，山体主要由砾岸组成，有36峰，最高峰海拔1600余米。为道教第五洞天，全称洞天第五宝仙九室之天。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('16', NULL, '乐山大佛', '岷江、青衣江、大渡河三江汇流处', '景区周广17.88平方公里，人文景观和自然景观独具特色。山下江河争流、波光云影、沙鸥翔集、帆影点点；山上繁花似锦、茂林修竹、朱楼画檐、丹崖峭壁。有世界第一——乐山大佛、自然和人文奇观——“巨型睡佛”、西部普陀——乌尤寺、东汉麻浩崖墓、佛教艺术荟萃——东方佛都、宋元遗址——三龟九顶城、弥勒经变故事——佛国天堂、水上游江观佛诸壮景。此外，尚有著名历史文化景观和景点。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('17', NULL, '蜈支洲岛', '海南省三亚市', '这里海水能见度高，水下世界绚丽多彩，是我国热门的潜水胜地。同时，还是进行摩托艇、香蕉船、水上降落伞等水上活动的好地方。岛上有妈祖庙等历史遗迹，有兴趣的也可以去参观。除了美丽的风光，蜈支洲岛还有极具特色的别墅、木屋以及酒吧、海鲜餐厅等配套设施。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('18', NULL, '亚龙湾热带天堂森林公园', '海南省三亚市', '以雨林特色景观为主的亚龙湾热带天堂森林公园，是大多数游客来三亚的必去地之一，这里树木繁多茂密，登至山顶可将“天下第一湾”——亚龙湾的美景尽收眼底。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('19', NULL, '东方明珠塔', '上海市', '东方明珠电视塔选用了东方民族喜爱的圆曲线体作为基本建筑线条。主体有三个斜筒体，三个直筒体和11个球体组成，形成巨大空间框架结构。筒体内有6部电梯，其中一部是可载50人的双层电梯，还有一部在上球体和太空舱间运行。\r\n', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('2', NULL, '南京路步行街', '上海市南京东路', '整条南京东路灯光闪亮，五光十色。南京路以其华美的建筑、林立的商店、繁华的街市、辉煌的夜景而不负其中华商业第一街的美誉。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('20', NULL, '西安鼓楼', '陕西省西安市', '西安的标志性建筑，西安鼓楼位于古都西安市中心，明城墙内东西南北四条大街交汇处的西安钟楼西北方约200米处。建于明太祖朱元璋洪武十三年(1380年)，是中国古代遗留下来众多鼓楼中形制最大、保存最完整鼓楼之一。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('21', NULL, '西湖', '浙江省杭州市', '西湖，是一首诗，一幅天然图画，一个美丽动人的故事，不论是多年居住在这里的人还是匆匆而过的旅人，无不为这天下无双的美景所倾倒。 阳春三月，莺飞草长。苏白两堤，桃柳夹岸。两边是水波潋滟，游船点点，远处是山色空蒙，青黛含翠。此时走在堤上，你会被眼前的景色所惊叹，甚至心醉神驰，怀疑自己是否进入了世外仙境。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('22', NULL, '庐山', '江西省九江市。位于九江市南36公里处', '庐山，又称匡山或匡庐，隶属于江西省九江市。位于九江市南36公里处，北靠长江，南傍鄱阳湖。南北长约25公里，东西宽约20公里。大部分山峰在海拔1000米以上，主峰汉阳峰海拔1474米，云中山城牯岭镇海拔约1167米。 庐山雄奇秀拔，云雾缭绕，山中多飞泉瀑布和奇洞怪石，名胜古迹遍布，夏天气候凉爽宜人，是我国著名的旅游风景区和避暑疗养胜地。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('23', NULL, '西安曲江大雁塔', '西安曲江', '中国唯一的唐文化主题景区。这里有唐都长安玄奘译经之地、佛教祖庭-大慈恩寺；西安地标、千年古迹-大雁塔；构架山水、师法自然，保存唐大慈恩寺大雄宝殿殿基遗址的唐大慈恩寺遗址公园。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('24', NULL, '重庆人民解放碑', '重庆', '碑通高27.5有旋梯可达顶端。该碑落成于1940年3月12日孙中山逝世纪念日，原为低矮木结构。1945年抗战胜利后重建，题名为“抗战胜利纪功碑”。1950年由刘伯承改题为“重庆人民解放纪念碑”。解放碑是重庆的标志性建筑之一。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('25', NULL, '丽江古城', '丽江市古城区', '中国历史文化名城中唯一没有城墙的古城', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('26', NULL, '泸沽湖', '丽江市宁蒗县', '清澈的湖水，神秘的母系社会奇特的走婚习俗，古朴的民风都在诉说着这里的美丽与神秘。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('27', NULL, '西双版纳', '云南省西南端', '吊脚竹楼、异域风情，孔雀森林、佛国茶香、热带水果、绿色生态', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('28', NULL, '石林', '昆明市石林彝族自治县', '以其幽、奇的特点在世界自然景观中堪称一绝被誉为“天下第一奇观”\r\n', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('29', NULL, '故宫', '北京故宫', '北京故宫是中国明清两代的皇家宫殿，旧称为紫禁城，位于北京中轴线的中心，是中国古代宫廷建筑之精华。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('3', NULL, '圆明园', '北京圆明园', '圆明园又称圆明三园，是清代大型皇家园林，它坐落在北京西北郊，与颐和园毗邻，由圆明园、长春园和绮春园组成，所以也叫圆明三园。此外，还有许多小园，分布在东、西、南三面，众星拱月般环绕周围\r\n', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('30', NULL, '希拉穆仁草原', '内蒙古希拉穆仁草原', '草原旅游区的旅游活动内容丰富，各观赏美丽的草原，看草原日出日落；欣赏蒙古族的传统体育活动赛马、摔跤、射箭、和马术表演，以及蒙古族歌舞表演、篝火晚 会等；体验民俗风情，访问牧户，参加牧民的生产活劳动场面，如放牧、挤奶、制奶食品等；品尝蒙古族的传统食品手把肉、烤羊肉、奶食品等。在草原上骑马漫 游，充分领略草原风光等。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('4', NULL, '响沙湾', '内蒙古响沙湾', '这里因沙子会唱歌而蜚声中外，景区内的游玩项目众多，就像一个沙漠大型游乐园一样，在这里你可以尽情体验各种刺激和浪漫的沙漠娱乐项目。景区除传统的骑马、骑骆驼、篝火晚会、沙漠探险等沙漠旅游活动外，还新引进了沙漠滑翔伞、沙漠太空球、沙漠冲浪车等一系列', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('5', NULL, '广州石室圣心大教堂', '广州市区中心的一德路', '天主教广州教区宏伟而有特色的一间大教堂。该教堂建于1863年，落成于1888年，历时25年始建成，至今有130多年的历史。由于教堂的全部墙壁和柱子都是用花岗岩石砌造，所以又称之为\"石室\"或\"石室耶稣圣心堂\"、\"石室天主教堂\"。是省重点文物保护单位。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('6', NULL, '白云山', '广东省广州市广园中路白云山南路', '由30多座山峰组成，登高可俯览全市，遥望珠江。每当雨后天晴或暮春时节，山间白云综绕，山名由此得来。白云山自古以来就是有名的风景胜地，“蒲润源泉”、“白云晚望”、“景泰归增”等均被列入“羊城八景”。近年来又开辟了山顶和山北公园，修建了庭园式山庄旅舍、双溪别墅、松涛别院及观鸟园。\r\n', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('7', NULL, '鼓浪屿', '福建省厦门市思明区鼓浪屿龙头路', '鼓浪屿几乎是每一个到厦门旅游的人出行的第1站。鼓浪屿可是小清新们的真爱，清新的空气，好看的建筑，纯净的海风，耳边不时传来海浪拍岸的声音，在街角的小店给未来的自己慢递一张明信片，或者单纯逗趣一只偶遇的喵。\r\n', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('8', NULL, '西塘古镇', '浙江省嘉善县西塘镇南苑路258号', '：西塘全镇总面积83.61平方公里，其中古镇区面积1.04平方公里，人口近8.6万。西塘被誉为生活着的千年古镇。已被列入世界历史文化遗产预备名单，中国首批历史文化名镇，国家AAAA级景区。历史文化西塘历史悠久，是古代吴越文化的发祥地之一。', 0, '2019-06-04 20:00:09');
INSERT INTO `attractions` VALUES ('9', NULL, '桐乡乌镇古镇旅游区', '：浙江省嘉兴桐乡市乌镇石佛南路18号', '乌镇是典型的江南水乡古镇，素有“鱼米之乡，丝绸之府”之称。全镇以河成街，桥街相连，依河筑屋，深宅大 院，重脊高檐，河埠廊坊，过街骑楼，穿竹石栏，临河水阁，古色古香，水镇一体，呈现一派古朴、明洁的幽静，是江南典型的“小桥、流水、人家”石板小路，古旧木屋，还有清清湖水的气息，仿佛都在提示着一种情致，一种氛围。\r\n', 0, '2019-06-04 20:00:09');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hotel_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotel_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotel_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotel_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hotel_status` int(2) DEFAULT 0,
  `create_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('1', '', '吉安国际酒店111', '吉安县城庐陵大道庐陵广场111', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场，可为宾客提供各式全新五星水准的酒店住宿、饮食、宴会、会议、康体和娱乐一体化的服务。另500多个车位的大型停车场，为宾客的出行提供了更多的便利。', 0, '2019-06-05 19:36:37');
INSERT INTO `hotel` VALUES ('10', '', ' 营口仙人岛宾馆', '辽宁省营口仙人岛国家森林公园', '一座集度假、会议、住宿、餐饮、娱乐、温泉洗浴等多功能为一体的园林别墅式酒店。曾多次接待中央及省、市领导。是您迎春踏青、消夏避暑、金秋赏月、冬觅清幽的上佳之选。酒店环境——仙人岛宾馆依林傍海，景色怡人，万亩槐林环抱之中，形成了天然氧吧，漫步林间，享受大自然带给您的清幽与恬淡。', 0, '2019-06-04 19:37:01');
INSERT INTO `hotel` VALUES ('11', NULL, '海澜大酒店', '江阴市苏南工业重镇新桥镇海澜工业园内', '海澜大酒店是一家商务、会议型豪华酒店，是江阴市首家五星级酒店。酒店座落在苏南工业重镇新桥镇海澜工业园内，北枕长江，南靠太湖，毗邻张家港市中心，宁太（沿江）高速横亘其侧，交通极其便利。酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', 0, '2019-06-04 19:37:04');
INSERT INTO `hotel` VALUES ('12', NULL, '湖南隆华国际酒店（长沙）', '长沙市芙蓉区人民东路与红旗路交汇处', '  酒店设有各具风味特色的中、西、料理餐厅有6个，提供丰盛的美味佳肴，让您滋养身心，愉悦味蕾。法香咖啡厅24小时为您提供美味的自助餐及散点；会大堂吧是您品尝放飞心扉的鸡尾酒和香溢浓浓咖啡的舒适之所；禾荟中餐厅提供品质粤式美肴和湘式风味佳肴。', 0, '2019-06-04 19:37:06');
INSERT INTO `hotel` VALUES ('12da045fb5cc4f16a28f0c46c2ba3d7f', '', '首都大酒店', '北京市东城区前门东大街3号', '北京首都大酒店座落于前门、王府井商业风景区内，近临故宫、天坛、景山等著名景点，步行就可到达闻名遐尔的天安门广场。酒店周围不仅名胜景点汇聚，还有市政府、商务部、对外友协、最高人民法院等市委政府机关和部委。酒店周边交通四通八达，横贯东西，纵穿南北，十分方便。', 1, '2019-06-04 11:50:32');
INSERT INTO `hotel` VALUES ('13', NULL, '嘉兴富悦大酒店', '嘉兴市中环西路28号', '嘉兴富悦大酒店总面积7.4万平方米，拥有各类豪华客房450间套，宽敞豪华的大开间、通透舒适的落地大玻璃窗、风格时尚的卫浴设计、细心周到的贴身管家、无微不至的用心服务。豪华温馨的客房设施，将带给您品位非凡的享受。', 0, '2019-06-04 19:37:11');
INSERT INTO `hotel` VALUES ('14', NULL, '西安W酒店', '西安 雁塔区 曲江池东路333号', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有W酒店特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。酒店中所有细节都展现着自成一格的独特品味，阐述了古典雅致与现代趣味的惊喜碰撞。', 0, '2019-06-04 19:37:15');
INSERT INTO `hotel` VALUES ('15', NULL, '宏远酒店', '广东省中山市', '宏远酒店以其优质的服务、典雅的环境、精美特色的餐饮文化而远近闻名，并荣获多项荣誉，其中包括在首届全国饭店系统服务技能比赛中荣获2005年全国十佳餐饮企业服务质量金奖、个人赛金奖、团体赛金奖、“国家级特级酒家（五钻级）”称号、“广东省餐饮名店”、“全国绿色餐饮企业”，“广东省的消费者最信赖的质量放心酒店”，2008年5月份宏远酒店被评为中国“优质服务酒店”。', 0, '2019-06-04 19:37:17');
INSERT INTO `hotel` VALUES ('16', NULL, '北京京仪大酒店 ', '海淀区中关村科技园区', '酒店由美国著名的设计师设计，独特的天井式大堂富丽堂皇，三部观光电梯可从不同方位欣赏到酒店中西合璧的建筑艺术。步入大堂您会感受到优雅和奢华的氛围，同时享受到温馨周到的服务。\r\n', 0, '2019-06-04 19:37:19');
INSERT INTO `hotel` VALUES ('17', NULL, '逸佳酒店', '武汉市江岸区', '：酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', 0, '2019-06-04 19:37:21');
INSERT INTO `hotel` VALUES ('18', NULL, '怡观海酒店', '湖南省长沙市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', 0, '2019-06-04 19:37:23');
INSERT INTO `hotel` VALUES ('19', NULL, '友谊酒店', '湖南省岳阳市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所', 0, '2019-06-04 19:37:24');
INSERT INTO `hotel` VALUES ('2', NULL, '洲际酒店', '山东省青岛市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。\r\n酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。\r\n', 0, '2019-06-04 19:36:57');
INSERT INTO `hotel` VALUES ('20', NULL, '堂舍酒店', '山东省济南市', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', 0, '2019-06-04 19:37:26');
INSERT INTO `hotel` VALUES ('21', NULL, '帝盛酒店', '广东珠海市省', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', 0, '2019-06-04 19:37:28');
INSERT INTO `hotel` VALUES ('22', NULL, '云鼎酒店', '海南省海口市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', 0, '2019-06-04 19:37:33');
INSERT INTO `hotel` VALUES ('23', NULL, '浪漫满屋酒店', '海南省三亚市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', 0, '2019-06-04 19:37:35');
INSERT INTO `hotel` VALUES ('24', NULL, '丽豪酒店', '云南省昆明市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所', 0, '2019-06-04 19:37:37');
INSERT INTO `hotel` VALUES ('25', NULL, '静澜栈酒店', '陕西省西安市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', 0, '2019-06-04 19:37:39');
INSERT INTO `hotel` VALUES ('26', NULL, '品尚酒店', '江西省南昌市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', 0, '2019-06-04 19:37:40');
INSERT INTO `hotel` VALUES ('27', NULL, '她他酒店', '四川省成都市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', 0, '2019-06-04 19:37:42');
INSERT INTO `hotel` VALUES ('28', NULL, '丹枫白露酒店', '贵州省贵阳市', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', 1, '2019-06-04 19:37:43');
INSERT INTO `hotel` VALUES ('29', NULL, '米兰酒店', '广西省南宁市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', 0, '2019-06-04 19:37:49');
INSERT INTO `hotel` VALUES ('2b330bf809484945ad9ffa95a41f95fd', '', '东方大酒店', '武汉市武昌区', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', 1, '2019-06-04 19:37:47');
INSERT INTO `hotel` VALUES ('3', NULL, '白玫瑰大酒店酒店', '武汉市江夏区', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所', 0, '2019-06-04 19:32:56');
INSERT INTO `hotel` VALUES ('30', NULL, '国际饭店', '北京市清华大学旁', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', 0, '2019-06-04 19:32:54');
INSERT INTO `hotel` VALUES ('4', NULL, '一百假日酒店', '上海市黄浦区', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', 0, '2019-06-04 19:32:51');
INSERT INTO `hotel` VALUES ('5', NULL, '百合花酒店', '上海市硚口区', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', 0, '2019-06-04 19:32:48');
INSERT INTO `hotel` VALUES ('6', NULL, '福州如家快捷酒店', '福州市', '酒店按欧式风格设计装修，环境优美，格调高雅。客房舒适、豪华，餐饮风味独特，各类康乐休闲设施一应俱全，设施先进的商务中心随时为您提供周到、快捷的服务。', 0, '2019-06-04 19:32:46');
INSERT INTO `hotel` VALUES ('7', NULL, '宝丽来酒店', '深圳市', '酒店店拥有三百余间客房和套房，步入其中令人耳目一新。每间客房均配有景观阳台，置身于此，便可一览壮丽的曲江盛景。房内配有特色睡床，及备受喜爱的Bliss洗浴用品、先进的娱乐设施等，为您打造潮奢的入住体验。', 0, '2019-06-04 19:32:43');
INSERT INTO `hotel` VALUES ('8', NULL, '联城酒店', '安徽省合肥市', '酒店功能完善，设有包括总统套房、豪华商务套房等各色客房297间，酒店拥有中餐厅、西餐厅、韩国餐厅、火锅餐厅四个不同风味的餐饮场所，就餐总座位数1600余位，另设有可接待500人的宴会厅、可容纳400人的国际会议中心以及夜总会、spa桑拿及足道、露天泳池、健身中心和网球场', 0, '2019-06-04 19:32:41');
INSERT INTO `hotel` VALUES ('84756b62364c4ac79bd42df482ffcdbe', '', '12312', '3123123', '12312312', 0, '2019-06-04 19:32:38');
INSERT INTO `hotel` VALUES ('8477c26de2bd493394849358ef0b1107', '', '123123', '3123123123', '1231232131231', 0, '2019-06-04 19:32:35');
INSERT INTO `hotel` VALUES ('9', NULL, 'test9', NULL, 'test9', 0, '2019-06-04 19:32:31');
INSERT INTO `hotel` VALUES ('a681c8c228724482a5635b5706665f4d', '', '111111111111', '11111111111111', '111111111111111111', 1, '2019-06-04 11:51:32');
INSERT INTO `hotel` VALUES ('ba1e6b9f82714fa3b3ac204a340b7850', '', '12312312', '1321321312', '321312312231', 1, '2019-06-05 11:57:40');
INSERT INTO `hotel` VALUES ('fb548675a46646d3915ecfb10b677af5', '', '11111111111', '111111111111', '1111111111111111111', 1, '2019-06-05 11:57:51');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for travel_diary
-- ----------------------------
DROP TABLE IF EXISTS `travel_diary`;
CREATE TABLE `travel_diary`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '旅游攻略',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diary_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `travel_diary_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_diary
-- ----------------------------
INSERT INTO `travel_diary` VALUES ('1', '123123123', '这是旅行游记测试1', '2019-06-09 16:51:50.000000');

-- ----------------------------
-- Table structure for travel_route
-- ----------------------------
DROP TABLE IF EXISTS `travel_route`;
CREATE TABLE `travel_route`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `route_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `route_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `route_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `collect_number` int(32) NOT NULL DEFAULT 0,
  `create_date` datetime(0) DEFAULT NULL,
  `update_date` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_route
-- ----------------------------
INSERT INTO `travel_route` VALUES ('1', '线路一', '这是线路一', '湖北', 0, '2019-06-09 16:52:12', '2019-06-09 16:52:15');

-- ----------------------------
-- Table structure for travel_strategy
-- ----------------------------
DROP TABLE IF EXISTS `travel_strategy`;
CREATE TABLE `travel_strategy`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '旅游攻略strategy',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `strategy_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `strategy_status` int(255) DEFAULT NULL COMMENT '0是审核通过,1是未审核,2是审核未通过',
  `create_date` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `travel_strategy_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel_strategy
-- ----------------------------
INSERT INTO `travel_strategy` VALUES ('1', '123123123', '这是第一篇攻略', 1, '2019-06-09 16:52:39');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123123123', 'root', '1234', 'admin');

-- ----------------------------
-- Table structure for user_attractions
-- ----------------------------
DROP TABLE IF EXISTS `user_attractions`;
CREATE TABLE `user_attractions`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attractions_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_attraction_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `attractions_id`(`attractions_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `user_attractions_ibfk_1` FOREIGN KEY (`attractions_id`) REFERENCES `attractions` (`id`) ON DELETE NO ACTION ON UPDATE RESTRICT,
  CONSTRAINT `user_attractions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_hotel
-- ----------------------------
DROP TABLE IF EXISTS `user_hotel`;
CREATE TABLE `user_hotel`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hotel_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_hotel_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_hotel_ibfk_1`(`user_id`) USING BTREE,
  INDEX `user_hotel_ibfk_2`(`hotel_id`) USING BTREE,
  CONSTRAINT `user_hotel_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_hotel_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_hotel
-- ----------------------------
INSERT INTO `user_hotel` VALUES ('f5fb7a484b884b5e8eab1a24a3db4a81', '123123123', '1', NULL, '2019-06-09 02:26:50');
INSERT INTO `user_hotel` VALUES ('fb5a06e2b260426db9c0db7859916674', '123123123', '25', NULL, '2019-06-08 04:59:12');

-- ----------------------------
-- Table structure for user_route
-- ----------------------------
DROP TABLE IF EXISTS `user_route`;
CREATE TABLE `user_route`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `route_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `route_id`(`route_id`) USING BTREE,
  CONSTRAINT `user_route_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_route_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `travel_route` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_route
-- ----------------------------
INSERT INTO `user_route` VALUES ('1', '123123123', '1');

SET FOREIGN_KEY_CHECKS = 1;
