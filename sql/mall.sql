/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 26/11/2025 21:51:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '具体地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地址管理';

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` (`id`, `name`, `address`, `phone`, `user_id`) VALUES (2, '王兰花', 'xxxx地址', '18888888888', 1);
INSERT INTO `address` (`id`, `name`, `address`, `phone`, `user_id`) VALUES (3, '陈寻', '天津市滨海新区第二大街62号伊势丹百货(滨海店)B2', '17688888888', 2);
INSERT INTO `address` (`id`, `name`, `address`, `phone`, `user_id`) VALUES (4, '牛仔蓝', '邢台市清河县葛仙庄镇长城大街西头与外环路交叉口新奥加油站北邻', '16577778888', 2);
INSERT INTO `address` (`id`, `name`, `address`, `phone`, `user_id`) VALUES (5, '小溪', 'xxxxxxxxx', '1679998778', 3);
COMMIT;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '时间',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文章管理\n';

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `type`) VALUES (1, '探寻美食多维度：文化传承、情感纽带与生活多彩体现 ', '2025-11-26 19:08:10', 'http://127.0.0.1:9090/web/download/5b93d8af3f0e4c00886e7092523b052b.jpeg', '<p style=\"text-align: left;\">味蕾所享之美食，远非仅止于此，实乃情感之载体，文化之体现也。无论是街头小吃之举足轻重，还是精致宴席之和光同尘，每一道美食背后，皆蕴藏着独一无二之故事，铭刻着难以忘怀之记忆。其于人与人之间情感相连，唤醒之于生活怀有的热爱之情。于这篇文章之中，我们将会寻觅美食之多个维度，从文化范畴至健康领域，从家庭场景以迄旅行经历，分享究应如何令美食变身为生活里更为丰富多彩之一部分。</p><p style=\"text-align: left;\"><span style=\"font-size: 16px;\"><strong>美食如何体现文化传承</strong></span></p><p style=\"text-align: left;\">具有独特印记的一个民族或者地区，是借由代代传承下去的食谱以及烹饪技艺，将美食当作文化的关键载体予以展现的。就像中国的饺子，它可不单单只是一种食物，更是团圆以及节日氛围此类象征的代表，每一个家庭都拥有属于自身的包饺子方法与馅料配方，这些存在些许差异之处，彰显出地域文化富含的多样性。当我们去品尝传统美食时，能够使我们感受到历史沉淀以及人们所在的生活方式，进而能够更好地理解并尊重不同的文化背景。</p><p style=\"text-align: left;\">在当下社会情形时势下，全球一体化致使菜肴饮食文化愈发相互融合交汇，然而传统的特色菜品仍旧处在关键重要位置。众多具备地缘特色的区域借助美食节或者烹饪培训课程用以推广地方文化，从而吸引旅客之行客以及年轻人群加入进来。这不但增进了经济之发展进步，还使得传统的手艺技能得以持续延续下去。身为品尝美食之人，也就是大家口中所说的食客，我们能够通过给予本地餐馆以及本地食材予以支撑，进而尽力协助留存这些弥足珍贵的文化遗产，最终促使美食成为连接往昔岁月与未来时光的一座沟通之桥梁。</p><p style=\"text-align: left;\"><span style=\"font-size: 16px;\"><strong>为什么健康饮食离不开美食</strong></span></p><p style=\"text-align: center;\"><img src=\"https://q6.itc.cn/images01/20251122/4ab080b50f424775b9eb3dd9032b6ac0.jpeg\" alt=\"\" data-href=\"\" style=\"height: auto;\"></p><p style=\"text-align: left;\">合理膳食并非就意味着要舍弃口味，恰恰相异，美味的食物能够借由均衡的食材组合以及烹饪方式，来提高营养摄取，比如，运用新鲜蔬菜跟瘦肉烹制而成的菜品，不但能够让味蕾得以满足，还可以提供不可或缺的维生素与蛋白质，重点在于挑选天然食材，防止过度加工，如此一来能够在品味美食之际，保持身体的健康状态。</p><p style=\"text-align: left;\">诸多研究显示，美食所带来的愉悦之感能够推动心理健康，进而减轻压力。每当我们全神贯注地去品味那样一道精心筹备的菜肴之际，大脑便会释放出多巴胺，从而带来满足之感。这般积极的情绪有益于提升整体的生活质量。所以，健康饮食并非仅仅关乎卡路里以及营养，还涵盖心理层面的平衡。经由把美食融入日常饮食之中，我们能够培育更为积极的生活态度。</p><p style=\"text-align: left;\"><span style=\"font-size: 16px;\"><strong>家庭美食如何增进情感</strong></span></p><p style=\"text-align: left;\">于家庭里头，将共同去准备而后一块儿享用美食，当作是强化亲情的紧要方式。在周末之时所进行的聚餐，或者是节日之际举办的盛宴，不但给予了营养，更是营造出了珍贵的交流之际。孩子们借由参与烹饪，从而去学习生活技能，与此同时体会到家庭的温暖。这般的时刻常常会变成人一生中最为珍贵的回忆，进而加固了家庭成员相互之间的纽带联系 。</p><p style=\"text-align: left;\">家庭食谱的继承同样是一种情感的赓续，祖辈流传下来的擅长之菜肴，常常负载着故事与情感，每一回制作都仿若在再次品味往昔，借由分享这些佳肴，我们不但传递了滋味，还传递了爱意与关照，于现代快节奏的生活里，抽出些时间一道烹饪与用餐，能够助力减轻压力，重塑亲密关系 。</p><p style=\"text-align: left;\"><span style=\"font-size: 16px;\"><strong>旅行中如何探索地道美食</strong></span></p><p style=\"text-align: left;\">去旅行之际，通过品尝当地美食可为剖析一处地方文化谋得便捷通路。街区的小吃以及市场常常是地道风味的典型呈现，其反映出当地人日常吃食以及生活习性。就比如，在泰国，那种街边的冬阴功汤或者芒果糯米饭，不但能够使味蕾得以满足，而且还能够让您体会到当地的热闹氛围以及友好人情。</p><p style=\"text-align: left;\">要想更深入地去探索，建议预先研究 destination 的美食地图，或者参与当地的美食之旅。跟当地人交流，知晓他们所推荐的餐馆或者家庭式餐厅，常常能够发觉隐藏起来的宝藏。借由这种互动，旅行可不单单只是观光了，而是一场味觉以及文化的冒险，能让你带回更多别具一格的记忆。</p><p style=\"text-align: left;\"><span style=\"font-size: 16px;\"><strong>美食如何激发创造力</strong></span></p><p style=\"text-align: left;\">把烹饪视为一种艺术形式，它促使人们去发挥想象力，尝试全新型食材组合以及烹饪技巧。比如说哈，把传统菜肴跟现代元素相结合，能够创造出独具特色的融合菜肴，这不单是对味蕾的一大挑战，而且还增进了烹饪界那方面的创新。好多厨师与家庭做菜女主人通过做试验，寻觅新的口味搭配情况，从而让平日里饮食变得更有意思 。</p><p style=\"text-align: left;\">哪怕是别的领域的创造力，美食也能够将其激发出来，像摄影领域、写作领域或者设计领域。把精美的食物照片拍摄出来，将食谱故事记录一下，又或者把餐桌布置设计一番，这些全都是能够用来表达个人风格的方式。借助美食，我们最终学会观察其间的细节，学会欣赏其中的美感，进而在生活里找到较多的灵感的情况发生。不管是作为业余爱好者，还是身为专业人士，美食都能够成为创意的源泉 。</p><p style=\"text-align: left;\"><span style=\"font-size: 16px;\"><strong>如何通过美食促进社交</strong></span></p><p style=\"text-align: left;\">佳肴可是社交天然造就催发的因素，它能够消除陌生之感，促使人们之间展开交流。举行聚餐或者派对之际，共同享用美食会让氛围变得更加没有拘束，参与其中的人更易于开启话头。不管是商务性质的宴请还是朋友之间的相聚，一桌品质精妙的菜肴总是会拉近彼此距离，营造出令人愉悦的相互交流的环境。</p><p style=\"text-align: left;\">于社区活动里头，美食同样有着关键的效应。就好像，邻里之间举办的美食分享聚会或者慈善性质的烘焙活动等，它不但能够助力构建更为紧密的社区联系网络，而且还能够对公益事业予以支持。借由一块儿制作与品尝美食，人们彼此分享各自的故事以及经验经历，进而增强了那种归属感。这样的社交形态不仅丰富了个体的生活，还推动了社会的和谐状态。</p>', '美食文化');
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `type`) VALUES (2, '探寻中国美食：从北京烤鸭到四川火锅，地域口味差异与饮食文化全解析', '2025-11-26 19:10:35', 'http://127.0.0.1:9090/web/download/adc6b4e7d35540889b35aa883f2bfb29.jpeg', '<h2 style=\"text-align: center;\"><span style=\"background-color: rgb(255, 255, 255);\">中国饮食主要特点</span></h2><p>中国饮食文化历经近5000年沉淀，凭借精湛的烹饪技艺与深厚的文化底蕴，成为世界饮食文化宝库中的璀璨明珠。从日常三餐到节庆宴席，每一道菜品都承载着中国人对生活的热爱与对文化的传承。</p><h3>中国人讲究“顺时而食”，会根据季节变化调整饮食的口味与品类，让饮食与自然节律相契合。夏季暑热难耐，饮食便以清淡爽口为主，凉拌黄瓜、麻酱凉面等菜品成为餐桌常客，既能清热解腻，又能补充水分；冬季天寒地冻，则偏爱味醇浓郁的炖品与焖锅，比如萝卜炖牛腩、黄豆焖猪蹄，热气腾腾的菜品下肚，能驱散寒意、温暖身心，尽显“天人合一”的饮食哲学。</h3><p><img src=\"http://127.0.0.1:9090/web/download/5f17a30edf6846debf6eb112e641134d.png\" alt=\"\" data-href=\"\" style=\"\"/></p><h3><span style=\"color: transparent;\">审美追求：“色香形味器”的融合之美</span></h3><p>中国人对美食的追求，从不只停留在味觉层面，更讲究“色、香、味、形、器”五位一体的协调统一。厨师会通过精巧的手法，将食材塑造成极具观赏性的形态——比如把酥皮糕点雕成绽放的荷花（荷花酥），将白菜雕琢得晶莹剔透（开水白菜），让菜品刚上桌就成为视觉焦点。同时，还会搭配雅致的餐具，让食物的色泽、香气与器皿的质感相得益彰，带来“食未入口，美已入心”的双重享受。</p><p><img src=\"http://127.0.0.1:9090/web/download/13993c652f5448afbd28517589b24bdd.png\" alt=\"\" data-href=\"\" style=\"\"/></p><h3><span style=\"color: transparent;\">：品里的故事与情怀</span></h3><p>中国美食往往自带“故事属性”，从菜品命名到品尝方式，都蕴含着丰富的文化内涵。有些菜品的名字与历史典故、神话传说紧密相连——“东坡肉”源自北宋文学家苏轼改良的烹饪方法，承载着文人与美食的佳话；“鸿门宴”则以历史事件命名，让食客在品尝时能联想到楚汉相争的往事。还有些菜品因形态得名，比如形似狮子头的肉丸（狮子头）、用荷叶包裹烤制的“叫化鸡”，生动的名字让食物更具记忆点，也让饮食成为传承文化的载体。</p><p><img src=\"http://127.0.0.1:9090/web/download/395e142d64cf4bb98b7d63209acd5efc.png\" alt=\"\" data-href=\"\" style=\"\"/></p><h3>中国饮食自古便有“药食同源”的理念，擅长将具有养生功效的食材与中药搭配，让美食兼具美味与保健作用。比如用乌鸡搭配当归、红枣炖煮的乌鸡汤，能滋补气血、提升免疫力，是秋冬季节的养生佳品；西芹炒百合则以清爽的口感，帮助调节血压、舒缓情绪，适合日常食用。这种“以食为药、以食养生”的智慧，让饮食成为守护健康的重要方式。</h3><p><img src=\"http://127.0.0.1:9090/web/download/45431b2a03b542cdaf40dd6a7e625efb.png\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><h3><span style=\"color: transparent;\">地域风味：舌尖上的中国地图</span></h3><h3>中国地大物博，不同地域因气候、物产差异，孕育出独具特色的美食。下图标注了各地的招牌美味——北京烤鸭皮脆肉嫩，搭配薄饼、甜面酱堪称经典；四川火锅麻辣鲜香，尽显山城的热烈；广东佛跳墙食材丰富、汤汁浓郁，是粤菜中的巅峰之作。</h3><p>这些地域美食不仅口味各异，还形成了鲜明的城市饮食标签：成都以“无辣不欢”闻名，是全国最能吃辣的城市；广州偏爱清甜口味，糖水、清蒸菜是当地特色；太原则对醋情有独钟，吃面、拌菜都离不开陈醋提味。</p><p>中国饮食的魅力，在于它既是味蕾的享受，也是文化的传承。相信每一个品尝过正宗中国美食的人，都会被这份舌尖上的智慧所打动——欢迎走进中国的各个城市，亲身感受这份跨越千年的饮食文化。</p>', '美食文化');
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `type`) VALUES (3, '探索传统美食文化的魅力', '2025-11-26 19:11:56', 'http://127.0.0.1:9090/web/download/08d4edc9247e4fd3abdd006eec3b633b.webp', '<p style=\"text-align: start;\">在人类悠久的历史长河中，饮食不仅仅是满足生存的基本需求，更是一种文化、一种艺术、一种情感的传递。传统美食文化作为民族文化的瑰宝，蕴含着丰富的历史底蕴和地域特色，是连接过去与现在的桥梁，也是展现一个国家或地区独特风貌的重要窗口。</p><h4 style=\"text-align: start;\">一、传统美食的历史渊源</h4><p style=\"text-align: start;\">每一种传统美食背后都有其独特的起源故事和历史背景。比如中国的饺子，相传起源于东汉时期，为医圣张仲景首创，最初用于驱寒治病，后来逐渐演变成春节等节日的必备食品，象征着团圆和辞旧迎新。再如意大利的比萨饼，据说最早可以追溯到古罗马时期，那时的人们用面团覆盖着各种食材烘烤而成，随着时间的推移，比萨成为了意大利乃至世界范围内广受欢迎的美食。</p><h4 style=\"text-align: start;\">二、地域特色的体现</h4><p style=\"text-align: start;\">传统美食往往与当地的气候条件、地理环境、物产资源以及民俗习惯紧密相连，形成了各具特色的地方风味。在中国，川菜麻辣鲜香，得益于四川盆地湿润多雨的环境和丰富的辣椒资源；粤菜清淡鲜美，则反映了岭南地区温和的气候和海鲜资源的丰富。而在法国，北部地区的奶酪和香肠与寒冷的气候和畜牧业发达有关，南部的地中海风味则体现了温暖气候下橄榄油和蔬菜的丰富使用。</p><h4 style=\"text-align: start;\">三、制作工艺的传承与创新</h4><p style=\"text-align: start;\">传统美食的制作工艺往往需要经过世代匠人的精心打磨和传承，每一道工序都承载着对食材的尊重和对味道的追求。如日本的寿司制作，从选材到切割，再到调味和摆盘，每一步都要求极致的精细和技巧。同时，随着时代的发展，传统美食也在不断创新中焕发新的活力。例如，中式点心与现代烘焙技术的结合，创造出了一系列既保留传统韵味又符合现代口味的新式糕点。</p><h4 style=\"text-align: start;\">四、美食文化的交流与融合</h4><p style=\"text-align: start;\">在全球化的今天，传统美食不再局限于某一特定区域，而是通过各种渠道走向世界，成为文化交流的重要载体。国际美食节的举办、旅游业的兴起以及互联网的普及，使得世界各地的人们能够轻松接触到并品尝到异国他乡的传统美食。这种跨文化的交流不仅促进了美食的多样化发展，也加深了人们对不同文化和习俗的理解和尊重。</p>', '美食文化');
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `type`) VALUES (4, '一位清华厨师的匠心与坚守', '2025-11-26 19:13:18', 'http://127.0.0.1:9090/web/download/bcdabb14765346c08db03ffb18d568ce.jpg', '<p style=\"text-indent: 2em; text-align: justify;\">张奇，男，1973年2月生，汉族，本科学历，2001年4月因技能突出被聘入饮食中心工作，现任观畴园经理，食堂饭菜深受师生好评。曾获高级工人技师（一级）、国家技能鉴定高级评委资格、第七届全国烹饪技能比赛北京赛区个人银奖、“后勤技能标兵”、“校先进工作者”称号。</p><p style=\"text-indent: 2em; text-align: justify;\">2016年3月5日的“两会”上，工匠精神第一次正式写入政府工作报告，李克强总理讲到：“鼓励企业开展个性化定制、柔性化生产，培育精益求精的工匠精神，增品种、提品质、创品牌。”</p><p style=\"text-indent: 2em; text-align: justify;\">总理讲到的“工匠精神”，不仅是中国优秀传统文化的精髓之一，更是在新时代弘扬爱国奋斗精神，建功立业共筑中国梦的必备品质。它是脚踏实地、一丝不苟的认真态度，是精雕细琢、精益求精的执着追求，更是兢兢业业、心无旁骛的可贵情怀。</p><p style=\"text-indent: 2em; text-align: justify;\">而在我们身边，就有这样一位新时代清华工匠，在清华后勤的餐饮岗位上十几年如一日地工作，始终专注于为师生做好餐饮服务工作，在平凡的岗位上彰显朴实的劳动之美。他就是故事的主人公张奇。</p><p style=\"text-align: center;\"><strong>一日三餐 责任千斤</strong></p><p style=\"text-indent: 2em; text-align: justify;\">作为一名清华厨师，每天担负着六万人的一日三餐。这些人中，有的曾经为国家建设建功立业，有的正在负责重要的科研项目，更多的则是国家未来的栋梁，民族未来的希望。责任千斤，不言而喻。张奇曾说：“保证每一口饭菜的美味健康安全，让广大师生专心学习科研，没有后顾之忧，是我们应尽的责任和义务。每当看到师生们吃着可口的饭菜，我的心里就踏实多了，再苦再累也值了。”</p><p style=\"text-indent: 2em; text-align: justify;\">他是这么说，也是这么做的。张奇刚应聘到饮食中心工作时，正赶上观畴园食堂开业筹备。为确保90周年校庆之际食堂如期开业，他每天工作都在12个小时以上，因为在他心中有这样一种朴实而坚定的想法：“在清华大学做餐饮工作很有意义，为广大师生制作饭菜很光荣。”</p><p style=\"text-indent: 2em; text-align: justify;\">百年校庆时，观畴园食堂承接了千人宴会大型任务。而此时，张奇的双胞胎小儿子被医院诊断为恶性肿瘤已近一年，直至2011年6月份孩子去世的一年中，作为父亲的他却很少陪在孩子身边。为了保障百年校庆餐饮工作顺利进行，他始终奋战在餐饮工作的第一线。牺牲陪伴孩子的时间使张奇觉得“很愧疚，很对不起孩子和家人”，但另一方面，他对工作的付出使他始终无愧于心中的责任、肩上的担当。</p><p style=\"text-indent: 2em; text-align: justify;\">张奇自在饮食中心工作以来，十几年如一日，每天披星戴月起早贪黑；三伏天炙热的灶火旁，一站就是好几个小时，工作服可以拧出水来；寒冬腊月里，在刺骨的凉水里杀鱼洗菜，冻伤烫伤刀伤对他来说不过是“家常便饭”。每逢春节，阖家团圆之际，他总是舍小家、为大家，留在食堂为广大师生准备年夜饭。张奇所在的岗位虽然平凡，但他始终坚守着自己的职责，爱岗敬业，默默奉献，彰显着一位清华工匠的平凡与伟大。</p><p style=\"text-align: center;\"><strong>精益求精 追求卓越</strong></p><p style=\"text-indent: 2em; text-align: justify;\">在全面深化改革的崭新时代，对劳动者的要求不只是勤劳，更需要过硬的素质和本领。新时代的大国工匠精神，是对一门技术的坚持与热爱，是敢于下苦功夫、坐冷板凳的刻苦钻研，是精益求精、争创一流的永恒追求。</p><p style=\"text-indent: 2em; text-align: justify;\">张奇深深热爱着餐饮行业，他始终以极大的热情和认真的态度钻研伙食业务，勤学苦练，主动学习，刻苦钻研，不仅自己在学中干、干中学，还带领着食堂技术骨干到各大高校、社会餐饮企业参观学习，并将所学知识及时有效地运用到日常工作中，增加食堂花色品种。同时，积极参与中国烹协、药膳协会、首都营养美食学会等餐饮交流研讨活动，不断提高专业技术水平。 </p><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\">张奇作品：求真务实</p><p style=\"text-align: center;\"> <img src=\"https://www.tsinghua.edu.cn/_mediafile/qh2021b/publish/thunews/12040/20181229150037376593699/1546067331197.jpg\" alt=\"\" data-href=\"\" style=\"height: auto;\"></p><p style=\"text-align: center;\">张奇作品：脚踏实地</p><p style=\"text-indent: 2em; text-align: justify;\">2007年，挪威首相访华到清华来用餐，他亲自为挪威首相制作菜肴，获得了首相与同行人员的一致好评；2008年，清华大学教学评估验收，他参与菜肴展台设计，并制作了与校风、校训相结合的“求真务实”“脚踏实地”两道菜肴，将美食与文化巧妙融合，得到了专家组的充分认可。</p><p style=\"text-align: center;\"><img src=\"https://www.tsinghua.edu.cn/_mediafile/qh2021b/publish/thunews/12040/20181229150037376593699/1546067429547.jpg\" alt=\"\" data-href=\"\" style=\"height: auto;\"></p><p style=\"text-align: center;\">张奇担任2018年中国科学院后勤协会第三届厨艺技能大赛评委</p><p style=\"text-indent: 2em; text-align: justify;\">由于对职业有着一以贯之的敬畏，对烹饪有着止于至善的追求，张奇始终精益求精，争创一流，在历次饮食中心岗位考核中均名列第一。2004年3月，张奇参加全国第三届药膳烹饪大赛，夺得头筹。同年4月，参加全国第五届烹饪大赛，荣获团体金奖。2013年，参加第七届全国烹饪技能比赛，摘得北京赛区个人银奖。2005年被校工会、技师协会评为技术能手，2008年取得人力资源和社会保障部颁发的高级工人技师（一级）职业资格证书，2014年取得北京理工大学本科学历，2015年取得国家技能鉴定高级评委证书。</p><p style=\"text-align: center;\"><strong>执着坚守 匠人匠心</strong></p><p style=\"text-indent: 2em; text-align: justify;\">工匠精神，匠心为本。对张奇而言，多干让师生满意的好事实事，为师生做好餐饮服务就是他一生的事业和不变的匠心。</p><p style=\"text-indent: 2em; text-align: justify;\">观畴园食堂是清华最大的食堂之一，包括基本伙、风味档口、餐厅、清青永和、清真餐厅等不同经营形式，现有职工190人，一日三餐承担着1.3万人次的就餐任务。</p><p style=\"text-align: center;\"><img src=\"https://www.tsinghua.edu.cn/_mediafile/qh2021b/publish/thunews/12040/20181229150037376593699/1546067452371.jpg\" alt=\"\" data-href=\"\" style=\"height: auto;\"></p><p style=\"text-indent: 2em; text-align: center;\"><span style=\"font-size: 16px; font-family: 楷体;\">张奇检查观畴园二层基本伙服务</span></p><p style=\"text-indent: 2em; text-align: justify;\">为了满足师生的多元化需求，张奇给二层基本伙规划设计了十大风味窗口，如炖菜系列，蒸菜系列，炒菜系列，干锅系列，瓦罐系列，低盐无糖系列，大师菜系列等等。二层基本伙主副食品种已经达到250种以上。针对师生喜欢的复合口味，还特别在一楼推出了麻辣鲜香锅，赢得了师生的喜爱。在三楼餐厅经营上，他利用自身业务技能特长，加大菜品的创新力度，坚持“走出去”学习，“引进来”教学，努力提升菜肴品味和档次，为就餐师生提供更多的就餐选择。</p><p style=\"text-indent: 2em; text-align: justify;\">张奇的辛勤付出也得到了广大师生的认可。在历年师生满意度问卷调查中，观畴园食堂的师生满意度始终保持在95%以上，无愧于食堂“工人先锋号”的荣誉称号。</p><p style=\"text-indent: 2em; text-align: justify;\">用心活，用心干，用心服务师生，用心诠释人生。只有坚守初心，执着专注，方能得始终。</p><p style=\"text-indent: 2em; text-align: justify;\">经营好每一个细节、每一项技术，这就是最为平常的劳动者的姿态，也成就了最优雅的劳动之美。</p><p style=\"text-indent: 2em; text-align: justify;\">心有精诚，手有精艺，必出精品。相信，随着岁月而沉淀的工匠精神，新时代必将焕发更加夺目的光彩。</p>', '匠人故事');
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `type`) VALUES (5, '匠心之作：揭秘佳肴背后的故事与制作工艺！', '2025-11-26 19:15:16', 'http://127.0.0.1:9090/web/download/c8bfc25b9aaa48f79fa0107717a809d0.webp', '<p><span style=\"color: rgb(25, 25, 25); background-color: rgb(255, 255, 255); font-size: 14px;\">在人类文明的长河中，美食不仅是一种满足生理需求的物质存在，更是一种文化的传承与情感的寄托。每一道佳肴背后，都蕴含着厨师们的心血与智慧，他们通过精湛的技艺和对食材的深刻理解，将普通的食材转化为令人垂涎欲滴的美食艺术品。这些匠心之作，不仅令人回味无穷，更承载着丰富的故事与深厚的文化底蕴。本文将深入揭秘佳肴背后的故事与制作工艺，带您领略美食世界的无限魅力。</span></p><p><img src=\"http://127.0.0.1:9090/web/download/8919d887717441c0b551bb06c60d62c6.png\" alt=\"\" data-href=\"\" style=\"\"/></p><h3 style=\"text-align: left;\">匠心独运：佳肴背后的故事</h3><p style=\"text-align: left;\">每一道佳肴的诞生，都源于厨师对食材的热爱与对烹饪艺术的追求。他们深入挖掘食材的特性和潜力，通过巧妙的搭配和创新的烹饪手法，将食材的美味发挥到极致。这些佳肴背后，往往隐藏着厨师们的辛勤付出和无数次尝试的故事。</p><p style=\"text-align: left;\">比如，一道经典的法式鹅肝，背后是厨师对鹅肝的精心挑选、腌制、烹饪和调味的全过程。他们需要确保鹅肝的质地细腻、口感丰富，同时又要保持其独特的香气和味道。这需要厨师对温度、时间和调料的精准掌控，以及对鹅肝特性的深入了解。</p><p style=\"text-align: left;\">又如，一道地道的中华美食——宫保鸡丁，其背后是厨师对鸡肉、花生米和辣椒的精心搭配，以及独特的烹饪技艺。他们需要确保鸡肉的鲜嫩多汁，花生米的香脆可口，以及辣椒的香辣适中。这需要厨师对食材的挑选、切割、烹饪和调味的全过程都充满匠心。</p><p style=\"text-align: left;\">制作工艺：佳肴的诞生过程</p><p style=\"text-align: left;\">佳肴的制作工艺是厨师们匠心独运的体现，也是美食文化的重要组成部分。不同的地域和文化背景，孕育了各具特色的烹饪技艺和制作工艺。</p><p style=\"text-align: left;\">在法式烹饪中，厨师们注重食材的新鲜和原汁原味，他们擅长运用各种烹饪技巧，如煎、烤、蒸、煮等，将食材的美味发挥到极致。同时，他们还注重调料的搭配和使用，通过巧妙的调味，使佳肴的味道更加丰富多样。</p><p style=\"text-align: left;\">而在中华烹饪中，厨师们则更注重食材的切割和烹饪火候的掌握。他们通过精湛的刀工，将食材切割成各种形状和大小，以便更好地烹饪和入味。同时，他们还注重火候的掌控，通过不同的烹饪时间和温度，使食材的口感和味道达到最佳状态。</p><p style=\"text-align: left;\">此外，佳肴的制作工艺还包括对食材的腌制、发酵、熏烤等特殊处理。这些处理不仅可以增加食材的口感和味道，还可以使其更加易于消化和吸收。比如，腌制可以使食材更加入味，发酵可以使食材更加鲜美，熏烤则可以使食材更加香脆可口。</p><p style=\"text-align: left;\">匠心与传承：美食文化的延续</p><p style=\"text-align: left;\">佳肴背后的匠心独运和制作工艺，不仅是厨师们个人技艺的体现，更是美食文化的延续和传承。每一道佳肴都承载着历史的记忆和文化的烙印，它们通过口耳相传和师徒传承的方式，代代相传，不断发扬光大。</p><p style=\"text-align: left;\">在现代社会，随着科技的进步和全球化的加速，美食文化也在不断地交流和融合。越来越多的厨师开始尝试将不同地域和文化背景的食材和烹饪技艺相结合，创造出独具特色的创新美食。这些创新美食不仅满足了人们对美食的多样化需求，也推动了美食文化的不断发展和繁荣。</p><p style=\"text-align: left;\">结语</p><p style=\"text-align: left;\">佳肴背后的故事与制作工艺，是美食世界中最具魅力和价值的部分。它们不仅令人回味无穷，更承载着丰富的文化内涵和深厚的历史底蕴。通过深入揭秘佳肴背后的故事与制作工艺，我们可以更加深刻地理解美食世界的无限魅力和可能性。</p>', '匠人故事');
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `type`) VALUES (6, '从「匠人」到「匠企」：手作美食的文化创新', '2025-11-26 19:17:41', 'http://127.0.0.1:9090/web/download/02c187aa35454c6580bc881f6e8791ef.jpg', '<p style=\"text-align: start;\"><img src=\"http://127.0.0.1:9090/web/download/555893ee0e754f2597f0df11dfeecb87.png\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\">若谷是一家以传统手工作坊的方式专注于传统美食品牌，根据时间与季节推出应季产品。关于若谷的名字的由来，龚斌先生讲述了其故事。在学习《道德经》期间，老师让每一个学生以「若」字开头给自己取个名字。龚斌找到了「谷」字，这也是「若谷」的由来。 「不是虚怀若谷，而是『敦兮其若朴，旷兮其若谷』，形容有德之人的心胸宽广幽深如山谷。」</p><p style=\"text-align: start;\">「为什么我会做食物？完全是出自于对记忆的追寻」龚斌先生如是说，但是传统的食物如何创新，龚斌先生从多年的食品行业从业经验与食物的因缘中获得了独到感悟，「其实我们是在做一种文化的创新」。</p><h1 style=\"text-align: start;\"><strong>寻找食物本真，若谷从未停下脚步</strong></h1><p><br><img src=\"http://127.0.0.1:9090/web/download/4ee153d436ff4d87a8e6a092fe051e17.png\" alt=\"\" data-href=\"\" style=\"\"/></p><p style=\"text-align: start;\">2011年，若谷推出酸梅汤。以原料的形式，配以传统的中国红为包装，去销售给目标客户。如果自己熬煮酸梅汤，两个小时浸的浸泡，大火煮开之后转小火继续熬煮，从开始准备到喝上酸梅汤需要三个小时。龚斌先生去原料产地亲自采摘原料，并去拜访当地的老师傅不断地学习并改进酸梅汤的配方，由此提供的原料包可以保证食物本身纯正的口味。 「我希望人们可以从比较快的生活节奏，工作节奏当中慢慢的静下来，慢下来。通过给自己或者是给家人准备一份这样的带有新意的饮料或者是食物加强跟身边人的沟通，包括跟自己的沟通。」<br><img src=\"http://127.0.0.1:9090/web/download/c4e0509b47f041dea2296dd887e50926.png\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\">2014年，推出以桂花为原材料的桂花糖露。这款产品是若谷从《影梅庵忆语》对鲜花糖露制作的描述获得灵感并研制出来的。 「酿饴为露，和以盐梅，凡有色香，皆于初放时采渍之，经年香味、颜色不变，红鲜如摘。而花汁融液露中，入口喷鼻，奇香异艳，非复恒有。」于是龚斌去拜访当地制作桂花糖露的老师傅，并在其基础上改善工艺形成能够受大众喜欢的食品。</p><p style=\"text-align: start;\">为找寻食物本真的味道与追溯传统的记忆，若谷每年9月到10月便会去山里收购桂花，经过挑选和烘干后的桂花后及时进行腌制，再经过近3个月的翻缸、搅拌、晾晒，最后将桂花酱与梅子酱混合封存。不计时间成本，坚守初心，这也就是秋季若谷的桂花糖露一上架便迅速售罄的原因。<br><br></p><p style=\"text-align: start;\"><br></p>', '匠人故事');
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `type`) VALUES (7, '手艺传承匠人精神｜晴隆美食背后的故事～', '2025-11-26 19:19:21', 'http://127.0.0.1:9090/web/download/7f6f2bbb6ada4ac09c9502f4298d9f6e.jpg', '<p style=\"text-align: start;\">每一道美食背后都有其独有的故事，或简单美好；或悠远绵长；或传承流年。就如同晴隆的美食一样，从古至今，传承是对美食最完美的诠释，香的诱惑，辣的风味，唇齿之间，满口余香，这是对美食的一种崇拜。</p><p style=\"text-align: start;\">晴隆辣子鸡的那些事</p><p style=\"text-align: start;\">在贵州，辣子鸡是传统家常名菜，每逢佳节，家家户户都会烧上一盘，全家人一起享用。那种香香的辣，滋味悠长而绵软，添了一份贵州风情的自然与醇厚。在黔西南，辣子鸡最出名的当数晴隆。晴隆辣子鸡最早源于沙子镇，沙子镇位于晴隆县中部西南隅，镇政府驻地距县城15公里，地处320国道和65号镇胜高速公路干线上。在高速公路还不普及的年代，320国道是进入滇缅的主要干道，沙子镇也因优越的地理位置而发展迅速。<br><br><img src=\"http://127.0.0.1:9090/web/download/1e299d951a4d4b5ebd0951d88356e7cf.png\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\">辣子鸡</p><p style=\"text-align: start;\">上世纪80年代，舒腾华就看到沙子镇大好的发展前景，毅然决然地把自家主干道边上的那块菜地盖成瓦房，做起了饭馆生意。在大山的荒凉小镇上，舒家饭馆无疑是给过往司机注入了前行的动力，一来二去，饭馆生意也慢慢好了起来。然而，当时的辣子鸡只是舒腾华无意琢磨出来的一道菜，配着其他家常菜卖着，也没什么特色。</p><p style=\"text-align: start;\">1994年，舒腾华的女儿舒伯梅接手了饭馆生意，她便开始潜心研究辣子鸡的做法，每次客人吃完，她都会下意识地跟客人聊聊辣子鸡的口感，虚心听取意见，不断地改良。经过三年的积累和不断实践，她发现来点辣子鸡的客人越来越多，她暗自欣喜，说明辣子鸡的做法已经得到了客人们的肯定。于是，在1997年，舒伯梅大胆地决定，饭馆升级，专卖辣子鸡。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\">一道美食，能被人们口口相传，百吃不厌20年，食材是相当讲究的。舒家从开始做辣子鸡一直用的本地优质土公鸡，鸡重在三斤半以上，这样肉质才有韧性；切的鸡块要大小均匀，便于更好入味；炒前还需用料酒、盐等佐料腌制片刻；混合油爆鸡，油温要拿捏得恰到好处，待鸡块七八成熟时捞出；炼制辣椒是关键，用子弹头辣椒来做糍粑辣椒，一直是舒伯梅的首先，这种辣椒肉比较厚，炒出来的味香、色亮，炼制中加入花椒、葱、姜、蒜等佐料，待香味炒出后，再放入鸡块继续翻炒；炒好后，用小火焖上几分钟，让油汁与鸡肉在温火中充分融合。出炉的辣子鸡色、香俱佳，鸡肉集香、辣、糯、麻为一体，老少皆宜。</p><p style=\"text-align: start;\">舒伯梅从20多岁开始研究辣子鸡的制作，一做就是20多年。 20多年来，她一直坚持每个环节都亲力亲为，从选食材到油料供应商、从厨房卫生到制作，20年如一日。所以，舒家辣子鸡生意一直红火，特别是电视剧《二十四道拐》上映后，很多外地游客慕名而来，舒家辣子鸡也因此供不应求，那段时间算下来，一天差不多要炒70多只鸡。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\">舒伯梅说：「舒家辣子鸡从来没有宣传过，靠的都是客人们的口碑才走到今天。我觉得，其实炒鸡并没有什么奥妙所在，最重要的是贵在坚持，贵在诚信！」<br><br></p><p style=\"text-align: start;\">青椒辣子鸡</p><p style=\"text-align: start;\">现在，在沙子镇，辣子鸡店随处可见，而吴德英做饭馆生活也有些年头了，她寻思着大家都炒辣子鸡，千篇一律，可不可以创新做法，炒青椒鸡如何？敢想敢干的吴德英经过几个月的不断实践，不断积累，做的青椒鸡终于得到了客人们的好评。 2009年，一个机缘巧合的机会，她报名参加了黔西南州庆60华诞乡村女大厨烹饪大赛，青椒辣子鸡获得的金奖，之后参加省第二届乡村女大厨烹饪大赛又喜获一等奖，从那以后，吴德英的青椒辣子鸡名声大噪，吴德英也因此从原来只有一张桌子的小饭馆变成了两层楼房8张桌子的农家乐了，十多年来，生意一直不错。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\">其实，在晴隆，不管是吃舒家辣子鸡，还是吃吴德英的青椒鸡，品尝的已不仅仅是一种味道，更多的是一种匠人的精神和品质。</p><p style=\"text-align: start;\">三十年用心打造一碗鸡汤面</p><p style=\"text-align: start;\">「徐伯来了，今天还是吃面吗？」早上九点多，一位年过七旬的老人刚走到店门口，50岁的杨兴芬便热情的招呼起来。</p><p style=\"text-align: start;\">「面条！」老人简短的回应道。</p><p style=\"text-align: start;\">杨兴芬娴熟地抓起一份面条，放到沸水锅中，用漏勺不停地翻腾，以使每一根面条都能在沸水中充分烧煮。将热气腾腾的鸡汤盛入碗中，放入盐、葱花、豆芽、盐菜等佐料，再放上辣子鸡、肉沫以及大肠三种哨子……一碗鲜香四溢的鸡汤面便上了桌。</p><p style=\"text-align: start;\">在一碗面中放入三种口感决然不同的哨子，是杨兴芬的大胆创新，也是她三十年来的经验。而对于食客来说，这既是味觉上的惊喜，也是心理上的满足。</p><p style=\"text-align: start;\">杨兴芬的早餐店于1986年开店经营，店面位于晴隆县城中心街一条巷子内的普通民房里，没有显眼的招牌，店门也没有正对巷口，不熟悉的人若不是刻意找寻，很难发现它的存在，然而前来吃早餐的食客却络绎不绝。</p><p style=\"text-align: start;\"><br></p>', '匠人故事');
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '说明',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `goods_id` int DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='轮播图管理';

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` (`id`, `name`, `info`, `img`, `goods_id`) VALUES (1, '奢华护肤，尽在赫莲娜', '让每一寸肌肤都焕发光彩，重拾年轻的自信！', 'http://127.0.0.1:9090/web/download/3b50c155eed748199b66b14229eb91b2.jpg', 12);
INSERT INTO `banner` (`id`, `name`, `info`, `img`, `goods_id`) VALUES (2, '穿出你的风格，绽放自信', '舒适与时尚兼具，助你在任何场合都能自信满满！', 'http://127.0.0.1:9090/web/download/e11cd0c175b14827a405b0ad832730d8.webp', 10);
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `goods_id` int DEFAULT NULL COMMENT '商品id',
  `num` int DEFAULT NULL COMMENT '数量',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `unit_id` int DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='购物车管理';

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `item_id` int DEFAULT NULL COMMENT '收藏id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收藏管理';

-- ----------------------------
-- Records of collect
-- ----------------------------
BEGIN;
INSERT INTO `collect` (`id`, `user_id`, `item_id`) VALUES (28, 1, 6);
INSERT INTO `collect` (`id`, `user_id`, `item_id`) VALUES (27, 1, 8);
COMMIT;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `type_id` int DEFAULT NULL COMMENT '分类id',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品简介',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '商品详情',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品图',
  `img_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更多商品图',
  `inventory` int DEFAULT NULL COMMENT '库存数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '价格计量单位',
  `unit_id` int DEFAULT NULL COMMENT '商家id',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上架日期',
  `status` tinyint DEFAULT NULL COMMENT '上架状态',
  `sales` int DEFAULT NULL COMMENT '销量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品管理';

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (1, 'Redmi Note 14 Pro+', 5, '更抗摔，更防水，更长续航', '<p><img src=\"http://127.0.0.1:9090/web/download/6c3c4c528b29436f9b2f7f293dd75e26.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 'http://127.0.0.1:9090/web/download/702e9accdd5d44e39c71c0f8972a9a78.png', 'http://127.0.0.1:9090/web/download/107fe5307bd64b5ca9f4f2cf759ee9c1.png,http://127.0.0.1:9090/web/download/a47680e6d69f453ca6a025625ab8f43e.png,http://127.0.0.1:9090/web/download/7d2a6a7415a54d92a8cb718586182a14.png', 0, 1899.00, '台', 1, '2024-10-17', 1, 1);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (2, 'Redmi K70 至尊版', 5, '天玑 9300+ 搭档狂暴游戏独显 D1 芯片', '<p>双芯旗舰，狂暴登场！天玑 9300+ 搭档狂暴游戏独显 D1 芯片，依托狂暴引擎 3.0 贯穿双芯调校、及全新 3D 冰封散热&trade;系统，实现更激进、持久的游戏性能释放。</p><p><img src=\"http://127.0.0.1:9090/web/download/7222c4bc51d743f28191f6a4133bff22.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 'http://127.0.0.1:9090/web/download/cf7cfda9d76a4dd48c491f4080647d45.png', 'http://127.0.0.1:9090/web/download/b4d4b6d9ac3c4c2091cf9f533341021d.png', 11, 2499.00, '台', 1, '2024-10-15', 1, 0);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (3, 'HUAWEI nova 13 256GB 羽砂紫 双卡 全网通版', 5, ' 前置6000万超广角人像，AI修图，北斗卫星图片消息', '<p><img src=\"http://127.0.0.1:9090/web/download/37c12e8c60134cc187395929d090a358.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 'http://127.0.0.1:9090/web/download/86add18d361244829cf4e4d71ee61b1a.webp', 'http://127.0.0.1:9090/web/download/72be7af6eb5c48458b35498b9e2beedc.png', 12, 2699.00, '台', 1, '2024-10-14', 1, 0);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (4, 'HUAWEI Mate 60 Pro 12GB+1TB 雅丹黑', 5, '卫星通话，超可靠玄武架构，全焦段超清影像', '华为 Mate 60 Pro 采用了Mate系列以往的设计风格，此次共推出了4款配色，其中雅川青、白沙银采用锦纤材质，南糯紫、雅丹黑采用素皮材质。机身采用超可靠玄武架构，超耐摔第二代昆仑玻璃、超坚韧玄武机身和超耐用锦纤材质，集三层防护于一身，整机耐摔能力提升1倍，抗挤压能力提升10倍，抗冲击能力提升5倍。机身尺寸163.65mm（长）x 79mm（宽）x 8.1mm（厚），重约225克。', 'http://127.0.0.1:9090/web/download/5b9ae9eeac3a4c43b7d91c57b4f13e3b.webp', 'http://127.0.0.1:9090/web/download/fec560422f18453da6741e9d9df40785.png', 12, 7999.00, '台', 2, '2024-10-13', 1, 0);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (5, 'HUAWEI MatePad Pro 12.2英寸 WiFi 12GB+256GB 宣白', 4, '12.2英寸双层OLED全面屏，天生会画App，支持华为星跃键盘', '华为 MatePad Pro 12.2 平板电脑，拥有流金、宣白、砚黑配色，厚度 5.5mm，重量 508g。\n\n该机业界首次搭载 12.2 英寸 2.8K+144Hz 双层 OLED 屏幕，3:2 屏幕比例，Tandem 峰值亮度 2000nits，号称寿命提升 3 倍、能耗优化提升 33%。新平板可选柔光版，相比 iPad Pro 纳米纹理玻璃版在点状光下显示效果更好。\n\n拥有 10000mAh 电池 + 100W 快充；前置 8Mp、后置 13Mp+8Mp 镜头，拥有 8 驱高低分频 4 扬声器，支持北斗卫星消息。', 'http://127.0.0.1:9090/web/download/f853ac5831a6430889ce8431c1a1070b.png', 'http://127.0.0.1:9090/web/download/c66681851cdc49b8abc31df4a5336a8a.png', 11, 3999.00, '台', 2, '2024-10-12', 0, 0);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (6, 'HUAWEI WATCH 4 Pro  木星棕 深棕色真皮表带', 2, '一键微体检，高血糖风险评估研究，球面蓝宝石玻璃 ¥ 2799 ', '华为WATCH 4 Pro eSIM智能手表以其航天级钛合金表壳和超窄边框的1.5英寸大屏幕吸引了众多消费者的关注。这款智能手表采用全新设计和材质打造，坚固耐用，具有出色的耐腐蚀性能。\n\n华为WATCH 4 Pro支持eSIM一号双终端和独立号码功能，可以实现电话、短信的独立收发，并且在蓝牙连接手机时还可以随时查看微信图文、语音消息等。此外，它还配备了一键微体检、高血糖风险评估研究、ECG心电分析以及健康趋势分析等功能。\n\n在续航方面，华为WATCH 4 Pro表现也非常出色。它采用了智能双芯架构2.0技术，在保证强大功能和运行流畅性的同时，实现了更长的续航时间。在常规使用下，它可以连续使用4.5天；而在需要延长续航时间的情况下，它可以切换到长续航模式，在这种模式下可以使用长达12天。另外，它还支持无线超级快充技术，在90分钟内即可充满电。', 'http://127.0.0.1:9090/web/download/084343c41da84c42881e4412e2d5792f.png', 'http://127.0.0.1:9090/web/download/2ca1bdb83a9b4dd1a105383dfbaa5bf9.png', 11, 2999.00, '只', 2, '2024-10-11', 1, 1);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (7, 'Redmi Buds 6 青春版', 2, '42dB深度主动降噪 | 双麦AI通话抗风噪 | 12.4mm超大镀钛动圈', 'Redmi Buds 6 搭载了 12.4mm 的超大镀钛振膜单元和 5.5mm 的微压电陶瓷单元，在声音方面的表现还算不错，还可以在耳机 APP 内设置 Sound ID 定制音效。\n\n另外，它还支持了降噪深度可达 49dB 的主动降噪，实际体验下来，升级的幅度很大，尽管降噪开到最高时候略微有一些耳压感，但确实也能深入消除噪音，考虑到它的定价，这个降噪体验足够让人感到惊喜。', 'http://127.0.0.1:9090/web/download/7720f3880c074dd0a6e98505571ea8fe.png', 'http://127.0.0.1:9090/web/download/1d022467b8dd4bd1ad48fd624edfffe2.png', 9, 139.00, '个', 2, '2024-10-21', 1, 0);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (8, 'HUAWEI FreeClip 耳夹耳机 无线充 流光紫', 2, '舒适稳固佩戴，开放式近耳聆听，8小时连续播放', '华为FreeClip 开放式 耳夹耳机由舒适豆（Comfort Bean）、声学球（Acoustic Ball）和C桥（C-bridge）三个部分组成。同时支持自动左右识别，不分左右耳。同时配有自适应传感器，可以自动调节夹力。单耳重为5.6克。\n\n内采用10.8mm直径双磁动圈单元。支持反向声波系统以及多通道深度神经网络(DNN)通话降噪，减少漏音提高通话质量。续航方面搭配充电盒整机播放音乐续航长达36小时， 耳机单次充满聆听8小时。支持充电十分钟，听歌三小时以及支持无线充电。\n\n其他方面支持双设备连接和切换、IP54等级防水、麦克风支持AI通话降噪、手势触控、离线查找、多设备连接等功能。', 'http://127.0.0.1:9090/web/download/85bb6b004a65445f960b65bba4367a4a.png', 'http://127.0.0.1:9090/web/download/356fff752b2f428899b2085fe7bc83b1.png', 0, 1299.00, '个', 2, '2024-10-24', 1, 12);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (9, '寻喜XUNXI 毛衣水貂绒毛巾绣上衣', 7, '马海毛慵懒风软糯针织衫毛衣女冬季水貂绒毛巾绣上衣', '![image.png](http://127.0.0.1:9090/web/download/02e45b44e8144f5eaf979060b31fabff.png)', 'http://127.0.0.1:9090/web/download/dcd4d88f3eaf44ae9e796dc3781fad5e.png', 'http://127.0.0.1:9090/web/download/947dc5b404394a0187860813f264797b.png', 7, 119.50, '件', 3, '2024-10-23', 1, 1);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (10, '寻喜XUNXI 秋季水貂绒套头毛衣', 7, '马海毛小狗刺绣蓝色针织衫毛衣女秋季水貂绒套头毛衣', '![image.png](http://127.0.0.1:9090/web/download/184876ad7555438e9dd01ebe0c0300a7.png)', 'http://127.0.0.1:9090/web/download/f661193d314a45ebae2cf0abf8c08c9e.png', 'http://127.0.0.1:9090/web/download/2e1bbfab1af84a8d8ffb952c874faf66.png', 11, 128.80, '件', 3, '2024-10-22', 1, 1);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (11, '寻喜XUNXI 美式打底衫上衣', 7, '美式甜酷露肩针织衫T恤罩衫女秋季y2k打底衫辣妹上衣', '![image.png](http://127.0.0.1:9090/web/download/ea0ceef8a11242a28331df72c77a759d.png)', 'http://127.0.0.1:9090/web/download/b89178fd9f58429e924a4ae33835e92d.png', 'http://127.0.0.1:9090/web/download/5765b886aed94640be2707e57ca88949.png,http://127.0.0.1:9090/web/download/125df900e36646b49027b96d838fb6b3.png', 9, 75.90, '件', 3, '2024-10-20', 1, 0);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (12, '赫莲娜黑绷带面霜', 8, '抗皱紧致晚霜护肤品化妆品礼盒', '![image.png](http://127.0.0.1:9090/web/download/b0ecd9b7d8264cf8ad96354d7ad68dea.png)', 'http://127.0.0.1:9090/web/download/19b757653be84caa86ec7fee1386fd09.png', 'http://127.0.0.1:9090/web/download/841f312c899743e895eab057cdfefcc7.png,http://127.0.0.1:9090/web/download/4cdff59233bb4072b2693c8129ab144b.png', 2, 1499.00, '套', 4, '2024-10-12', 1, 0);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (13, '赫莲娜白绷带面霜', 8, '抗皱紧致日霜护肤品HR礼盒', '![image.png](http://127.0.0.1:9090/web/download/acf14ac5623a4e85a90cf8724de0bd5b.png)', 'http://127.0.0.1:9090/web/download/7f527eb6a5aa433cb1eaaa140ed4a211.png', 'http://127.0.0.1:9090/web/download/841f312c899743e895eab057cdfefcc7.png', 8, 1499.00, '套', 4, '2024-10-21', 1, 2);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (14, 'REDMI Book Pro 14 2025', 4, 'Ultra5-225H/16G/1T/2.8K/120Hz', '<p><img src=\"http://127.0.0.1:9090/web/download/ffc2ba3439474266a02b4b05c1924d31.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 'http://127.0.0.1:9090/web/download/9182010c30a141a8b9dedcf2889e8750.png', 'http://127.0.0.1:9090/web/download/411fa68b146c49f885f108fbd3463156.webp', 19, 5699.00, '台', 1, '2025-09-04', 1, 1);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (15, '至美琉光恒采精萃露', 8, '30ml小样保湿修护皮肤屏障紧致官方正品', '<p><img src=\"http://127.0.0.1:9090/web/download/d00d4a05779248bfacb3c5c8d0438524.png\" alt=\"\" data-href=\"\" style=\"\"/></p><p><img src=\"http://127.0.0.1:9090/web/download/8071b3f6575647738be104cb1b4a940f.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 'http://127.0.0.1:9090/web/download/d20689c5b29a42d19c8918de4d3cf151.png', 'http://127.0.0.1:9090/web/download/6f6126a7182646d2a98373222ec40eb3.png', 195, 109.00, '瓶', 4, '2025-09-04', 1, 5);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (16, '赫莲娜绿宝瓶', 8, '新肌水修护提亮补水水乳套组礼盒100ml', '<p><img src=\"http://127.0.0.1:9090/web/download/6f456364b7be4cd4b8b0de7b6d9b15f3.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 'http://127.0.0.1:9090/web/download/02b1545ac20f4aeba176b7d310e64683.png', 'http://127.0.0.1:9090/web/download/f8c48934c2874642bae13376ea96b0d7.png', 9999, 990.00, '套', 4, '2025-09-04', 1, 0);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (17, '蓝牙太阳镜穿戴开车骑行音频', 2, '蓝牙太阳镜穿戴开车骑行音频智能墨镜新款开放式无线音乐耳机眼镜 黑色', '', 'http://127.0.0.1:9090/web/download/fa88e4145c27463a8e26b8494e1f1708.png', 'http://127.0.0.1:9090/web/download/522325e2edb946e3bbf6d83b4d7427cb.png,http://127.0.0.1:9090/web/download/09c6fa4e39b148f19032ebb85053c726.png', 9997, 159.00, '副', 2, '2025-09-04', 1, 2);
INSERT INTO `goods` (`id`, `name`, `type_id`, `info`, `content`, `img`, `img_list`, `inventory`, `price`, `unit`, `unit_id`, `date`, `status`, `sales`) VALUES (18, 'BJHG不计后果美式巴恩风夹克外套男款秋季灯芯绒卡其色工装棒球服', 7, '做旧卡其 L 130-160斤', '<p><img src=\"http://127.0.0.1:9090/web/download/4c6e78144f534017bf8b996a712e0634.png\" alt=\"\" data-href=\"\" style=\"\"/></p>', 'http://127.0.0.1:9090/web/download/2d04f6aa9dfe4bc388fdb616beff53ea.png', 'http://127.0.0.1:9090/web/download/a2c8c4328f6049409bf628456080b4eb.png', 996, 269.00, '件', 3, '2025-09-04', 1, 3);
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='公告管理';

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`id`, `name`) VALUES (1, '为了提供更好的服务，我们将于每日凌晨2点至5点进行系统维护。在此期间，商城将暂时无法访问，敬请谅解！');
INSERT INTO `notice` (`id`, `name`) VALUES (2, '我们希望听到您的声音！请您点击网站下方链接，帮助我们改进服务，感谢您的支持！');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单号',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单时间',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品封面',
  `goods_id` int DEFAULT NULL COMMENT '商品id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `unit_id` int DEFAULT NULL COMMENT '商家id',
  `num` int DEFAULT NULL COMMENT '商品数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单用户名',
  `user_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单地址',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单电话',
  `rate` int DEFAULT NULL COMMENT '评分',
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '评价',
  `reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '回复',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单管理';

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (2, '20250904194636555335', '2025-09-04 19:46:36', '蓝牙太阳镜穿戴开车骑行音频', 'http://127.0.0.1:9090/web/download/fa88e4145c27463a8e26b8494e1f1708.png', 17, 1, 2, 1, 159.00, '王兰花', 'xxxx地址', '18888888888', NULL, NULL, NULL, '待评价');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (3, '20250904194653179222', '2025-09-04 19:46:53', '寻喜XUNXI 毛衣水貂绒毛巾绣上衣', 'http://127.0.0.1:9090/web/download/dcd4d88f3eaf44ae9e796dc3781fad5e.png', 9, 2, 3, 1, 119.50, '王兰花', 'xxxx地址', '18888888888', NULL, NULL, NULL, '待评价');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (4, '20250904194717637942', '2025-09-04 19:47:17', 'Redmi Note 14 Pro+', 'http://127.0.0.1:9090/web/download/702e9accdd5d44e39c71c0f8972a9a78.png', 1, 3, 1, 1, 1899.00, '王兰花', 'xxxx地址', '18888888888', 5, '<p>好用，颜值很高</p>', NULL, '已完成');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (5, '20250904194717597042', '2025-09-04 19:47:17', 'HUAWEI FreeClip 耳夹耳机 无线充 流光紫', 'http://127.0.0.1:9090/web/download/85bb6b004a65445f960b65bba4367a4a.png', 8, 2, 2, 12, 15588.00, '王兰花', 'xxxx地址', '18888888888', NULL, NULL, NULL, '待评价');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (6, '20250904194717169159', '2025-09-04 19:47:17', 'HUAWEI WATCH 4 Pro  木星棕 深棕色真皮表带', 'http://127.0.0.1:9090/web/download/084343c41da84c42881e4412e2d5792f.png', 6, 2, 2, 1, 2999.00, '王兰花', 'xxxx地址', '18888888888', 5, '<p>哇塞</p>', '感谢您的好评', '已完成');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (7, '20250904194717837143', '2025-09-04 19:47:17', '蓝牙太阳镜穿戴开车骑行音频', 'http://127.0.0.1:9090/web/download/fa88e4145c27463a8e26b8494e1f1708.png', 17, 1, 2, 1, 159.00, '王兰花', 'xxxx地址', '18888888888', 5, '<p>很好</p>', '感谢您的评价', '已完成');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (8, '20250904194717872957', '2025-09-04 19:47:17', '赫莲娜白绷带面霜', 'http://127.0.0.1:9090/web/download/7f527eb6a5aa433cb1eaaa140ed4a211.png', 13, 1, 4, 2, 2998.00, '王兰花', 'xxxx地址', '18888888888', NULL, NULL, NULL, '待退款');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (9, '20250904195231941448', '2025-09-04 19:52:31', '寻喜XUNXI 秋季水貂绒套头毛衣', 'http://127.0.0.1:9090/web/download/f661193d314a45ebae2cf0abf8c08c9e.png', 10, 3, 3, 1, 128.80, '小溪', 'xxxxxxxxx', '1679998778', NULL, NULL, NULL, '待发货');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (10, '20250904195257403955', '2025-09-04 19:52:57', 'REDMI Book Pro 14 2025', 'http://127.0.0.1:9090/web/download/9182010c30a141a8b9dedcf2889e8750.png', 14, 3, 1, 1, 5699.00, '小溪', 'xxxxxxxxx', '1679998778', NULL, NULL, NULL, '待发货');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (11, '20250904195323814069', '2025-09-04 19:53:23', 'BJHG不计后果美式巴恩风夹克外套男款秋季灯芯绒卡其色工装棒球服', 'http://127.0.0.1:9090/web/download/2d04f6aa9dfe4bc388fdb616beff53ea.png', 18, 1, 3, 3, 807.00, '王兰花', 'xxxx地址', '18888888888', NULL, NULL, NULL, '待发货');
INSERT INTO `orders` (`id`, `no`, `time`, `name`, `img`, `goods_id`, `user_id`, `unit_id`, `num`, `price`, `user_name`, `user_address`, `user_phone`, `rate`, `comment`, `reply`, `status`) VALUES (12, '20250904195357906291', '2025-09-04 19:53:57', '至美琉光恒采精萃露', 'http://127.0.0.1:9090/web/download/d20689c5b29a42d19c8918de4d3cf151.png', 15, 2, 4, 5, 545.00, '牛仔蓝', '邢台市清河县葛仙庄镇长城大街西头与外环路交叉口新奥加油站北邻', '16577778888', NULL, NULL, NULL, '待发货');
COMMIT;

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员管理';

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
BEGIN;
INSERT INTO `sys_admin` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`) VALUES (1, 'admin', 'admin', '管理员', 'http://127.0.0.1:9090/web/download/080632bbd36a4c74a66efa4fb9e23684.jpg', 'admin@email.com', '18888888888');
COMMIT;

-- ----------------------------
-- Table structure for sys_unit
-- ----------------------------
DROP TABLE IF EXISTS `sys_unit`;
CREATE TABLE `sys_unit` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '说明',
  `tag_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签ids',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商家管理';

-- ----------------------------
-- Records of sys_unit
-- ----------------------------
BEGIN;
INSERT INTO `sys_unit` (`id`, `username`, `password`, `nickname`, `avatar_url`, `address`, `phone`, `info`, `tag_ids`) VALUES (1, '111', '111', '诚信万家店铺', 'http://127.0.0.1:9090/web/download/f3fe5e13365243459bc6c58aa4afbe92.webp', '山东济南', '18888888888', '一家诚信经营的数码产品小店，欢迎选购', '2,3');
INSERT INTO `sys_unit` (`id`, `username`, `password`, `nickname`, `avatar_url`, `address`, `phone`, `info`, `tag_ids`) VALUES (2, '222', '222', '富士商店', 'http://127.0.0.1:9090/web/download/621e717431fe45da85e9be1ec5d7f99b.gif', '山东济南', '18888888888', '数码产品', '1,2');
INSERT INTO `sys_unit` (`id`, `username`, `password`, `nickname`, `avatar_url`, `address`, `phone`, `info`, `tag_ids`) VALUES (3, '333', '333', '寻喜XUNXI', 'http://127.0.0.1:9090/web/download/67391f15ddca4954b7069fa1d2335a62.png', '湖北武汉', '17688889999', '原创设计，小众穿搭', '2,1');
INSERT INTO `sys_unit` (`id`, `username`, `password`, `nickname`, `avatar_url`, `address`, `phone`, `info`, `tag_ids`) VALUES (4, '444', '444', 'HR赫莲娜官方旗舰店', 'http://127.0.0.1:9090/web/download/f23e43a5f6ce436e8e9b0ae4c44f5b14.png', '江苏苏州', '16788889999', '宝藏护肤神器，拒绝焦虑，都给我冲！', '2,1,3');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户管理';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`) VALUES (1, '111', '111', '阿水', 'http://127.0.0.1:9090/web/download/8795504079ad47b9a4d29d93138c7a84.webp', 'user@email.com', '18888888888');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`) VALUES (2, '123', '123', '锦鲤', 'http://127.0.0.1:9090/web/download/516555da8b3846629962e1fbc2bf6260.jpg', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`) VALUES (3, '222', '222', '板栗', 'http://127.0.0.1:9090/web/download/71c9154eb8934b88a3cc1211be332161.webp', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`) VALUES (4, '333', '333', '果汁分你一半', 'http://127.0.0.1:9090/web/download/5537ab8f0ffd4282800fb8c93d6c2874.jpeg', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签名称',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商家标签管理';

-- ----------------------------
-- Records of tag
-- ----------------------------
BEGIN;
INSERT INTO `tag` (`id`, `name`, `info`) VALUES (1, '服务体验优秀', '服务体验优秀');
INSERT INTO `tag` (`id`, `name`, `info`) VALUES (2, '细节处理得当', '细节处理得当');
INSERT INTO `tag` (`id`, `name`, `info`) VALUES (3, '体验超出预期', '体验超出预期');
COMMIT;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面图',
  `status` tinyint DEFAULT NULL COMMENT '是否推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类管理';

-- ----------------------------
-- Records of type
-- ----------------------------
BEGIN;
INSERT INTO `type` (`id`, `name`, `img`, `status`) VALUES (2, '智能穿戴', 'http://127.0.0.1:9090/web/download/6542d86e69bb4f8eb7373099bf07772d.png', 1);
INSERT INTO `type` (`id`, `name`, `img`, `status`) VALUES (4, '笔记本平板', 'http://127.0.0.1:9090/web/download/698fd32e84a942c38150cdabcff9ebd4.png', 0);
INSERT INTO `type` (`id`, `name`, `img`, `status`) VALUES (5, '智能手机', 'http://127.0.0.1:9090/web/download/38c478c6f58545018a7bb88cbf9e96f7.png', 1);
INSERT INTO `type` (`id`, `name`, `img`, `status`) VALUES (6, '家具家装', 'http://127.0.0.1:9090/web/download/7c40a53bcdab4181ad3a7b6472da6084.png', 0);
INSERT INTO `type` (`id`, `name`, `img`, `status`) VALUES (7, '服饰配饰', 'http://127.0.0.1:9090/web/download/1b88c448d95045d2b433c2a3fa1d292b.jpeg', 1);
INSERT INTO `type` (`id`, `name`, `img`, `status`) VALUES (8, '美妆个护', 'http://127.0.0.1:9090/web/download/567024baeec7421797d269867f3eb40e.jpeg', 1);
INSERT INTO `type` (`id`, `name`, `img`, `status`) VALUES (9, '珠宝文玩', 'http://127.0.0.1:9090/web/download/83c10f1d1eb8464f8a665ccd547f1eb6.png', 0);
INSERT INTO `type` (`id`, `name`, `img`, `status`) VALUES (10, '户外运动', 'http://127.0.0.1:9090/web/download/39864945fe8f4b77a0659d7bca6d3747.png', 0);
INSERT INTO `type` (`id`, `name`, `img`, `status`) VALUES (11, '玩具潮玩', 'http://127.0.0.1:9090/web/download/0c7c5602d8fa4f1798b3e528713f7ad2.png', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
