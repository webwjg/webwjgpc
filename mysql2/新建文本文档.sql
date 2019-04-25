
SET NAMES UTF8;

DROP DATABASE IF EXISTS  universe_travel;
CREATE DATABASE universe_travel CHARSET=UTF8;
USE universe_travel;

/**用户信息表**/
create table travel_user(
  uid int primary key auto_increment,
	uname varchar(32),
	upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男

);
/**用户信息**/
INSERT INTO travel_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');

/****首页轮播广告商品****/
create table travel_lunbo(
  lid int primary key auto_increment,
  img_url varchar(32),
  title varchar(64),
  href   varchar(48)
);

INSERT INTO travel_lunbo VALUES
(null,'../img/lunbo1.jpg','轮播广告商品1','list1detail.html?bid=1'),
(null,'../img/lunbo2.jpg','轮播广告商品2','list1detail.html?bid=16'),
(null,'../img/lunbo3.jpg','轮播广告商品3','list1detail.html?bid=2'),
(null,'../img/lunbo4.jpg','轮播广告商品4','list1detail.html?bid=17');




/****首页商品****/


/****一楼****/
create table travel_indonefl_product(
   pid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href   varchar(48),
   seq_recommended TINYINT,
   seq_new_arrival TINYINT,
   seq_top_sale TINYINT
);
INSERT INTO travel_indonefl_product VALUES

(null,'烟台市蓬莱阁旅游区',' 书籍好比一架梯子.它能引导我们登上知识的殿堂,书籍如同一把钥匙,它将帮助我们开启心灵的智慧之窗,
时间好比一个良医.它能教我们医治流血的伤口.时间如同一位慈母.它将帮助我们抚平心灵的创伤','../img/god1.png','list4detail.html?bid=3',1,1,1),
(null,'厦门市鼓浪屿风景名胜区','  只有波涛汹涌的大海.才能创造出沙滩的光洁与柔软.而平静的湖边.只好让污泥环绕,只有狂风暴雨.才能洗涤污泥浊水
.而和风细雨.只能留下泥沙,只有一望无际的森林.
才能创造出大地的翠绿与娇美.而孤独的树木.只好任狂风摧残','../img/god2.png','list4detail.html?bid=4',2,2,2),
(null,'桂林市漓江景区',' 书是我的精神食粮.它 重塑了我的灵魂,当裴多菲说:[若为自由故.二者皆可抛".我懂得了作为人的价值,当鲁迅说:[不在沉默中爆发.就在沉默中灭亡
".我懂得了人应具有的反抗精神,当白朗宁说:[拿走爱.世界将变成一座坟墓".我懂得了为他人奉献爱心是多么重要.','../img/god3.png','list4detail.html?bid=5',3,3,3),
(null,'杭州市西湖风景名胜区','  用不着把年轻的心灵装点得沉重.表面上的沧桑.外在的严肃.并不能让你上升为哲人,离开所有的朋友.你有的只能是孤单的背影.
既然现在的我还不能变得深刻.那么.我就让自己变得轻松.哭丧着脸的人.怎能听清花开的响声,伪装自己的人.又怎能听懂蛙鸣一片里的激动.',
'../img/god4.png','list4detail.html?bid=6',4,4,4);

/****一楼跳list4****/
create table travel_list4_product(
   qid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   href varchar(48),
   pic VARCHAR(128)
);
INSERT INTO travel_list4_product VALUES
(null,'高尔夫球','您可以在球道上迈出第一步，或者在比赛中将几杆射到Costa Navarino的两个标志性高尔夫球场。学习基础知识,
有经验的参与者将有机会在专家学费和广泛的实践设施的帮助下磨练自己的技能','list2detail.html?bid=4','../listimg/fourlist1.jpg'),
(null,'篮球和保龄球','最先进的体育和娱乐中心的室内选择提供数小时的乐趣，包括各种体育活动，如篮球，保龄球，排球，五人足球以及广泛的健身课程',
'list2detail.html?bid=4','../listimg/fourlist2.jpg'),
(null,'海滩瑜伽','通过海滩瑜伽放松和伸展，注重身体健康和心理健康，旁边是舒缓的声音和神奇的海洋光环。尝试更多进步SUP瑜伽在水上。
','list2detail.html?bid=4','../listimg/fourlist3.jpg'),
(null,'攀岩墙','甲95米2攀爬墙壁与各种攀登路线的等待初学者和有经验的登山者。测试你的技能！适合儿童和成人炎热的夏日。可根据要求提供经过认证的攀岩课程.',
'list2detail.html?bid=4','../listimg/fourlist4.jpg'),
(null,'骑自行车','骑自行车探索Navarino Dunes周围的山丘。加入我们经验丰富的自行车导游，分享他们对体育锻炼的热情，充满乐趣，积极的态度和汗水！',
'list2detail.html?bid=4','../listimg/fourlist5.jpg'),
(null,'徒步旅行','您可以探索卡拉马里（Kalamari）的瀑布，在小型游泳池的结晶水中游泳，或前往着名的Voidokilia海滩，徒步前往Palaiokastro城堡。',
'list2detail.html?bid=4','../listimg/fourlist6.jpg'),
(null,'皮划艇','皮划艇是一种适合所有年龄段的有趣运动方式。与朋友出发或参加前往Voirdokilia海滩的半日游。','list2detail.html?bid=4',
'../listimg/fourlist7.jpg'),
(null,'风筝冲浪','学习风筝冲浪，这将是一次令人难忘的经历，将改变您对海洋的看法。Romanos海滩提供初学者私人课程和经验教练的高级辅导',
'list2detail.html?bid=4','../listimg/fourlist8.jpg');





/****二楼****/
create table travel_indtwofl_product(
   tid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href   varchar(48)
);
INSERT INTO travel_indtwofl_product VALUES
(null,'崆峒山风景名胜区','豪华平凉市崆峒山风景名胜区四日游','../img/twofloor1.jpg','list2detail.html?bid=7'),
(null,'嘉峪关文物景区','豪华平凉市崆峒山风景名胜区四日游','../img/twofloor2.jpg','list2detail.html?bid=8');

/****三楼****/
create table travel_indthreefl_product(
   eid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href   varchar(48)
);
INSERT INTO travel_indthreefl_product VALUES
(null,'领略大好风光','佛的智慧把爱当作痛苦得根源加以弃绝，扼杀生命的意志；人的智慧应把痛苦当作爱的必然结果加以接受，化为生命的财富',
'../img/threefloor1.jpg','list2detail.html?bid=9'),
(null,'领略大好风光','对于一颗高傲的心来说，莫大的屈辱不是遭人嫉妒，而是嫉妒别人，因为这种情绪向他暴露了一个他最不愿承认的事实：他自卑了',
'../img/threefloor2.jpg','list2detail.html?bid=9'),
(null,'领略大好风光','一个成熟的人是不会去刻意寻求外在的奖赏，以为故意做作的奖赏对人有时是一种愚弄',
'../img/threefloor3.jpg','list2detail.html?bid=10'),
(null,'领略大好风光','谁的经历不是平凡而又平凡？内心经历的不同才在人与人之间铺设了巨大的鸿沟',
'../img/threefloor4.jpg','list2detail.html?bid=18');


/****四楼****/
create table travel_indfourfl_product(
   fid int primary key auto_increment,
   daohang varchar(64),
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href varchar(48)
);
INSERT INTO travel_indfourfl_product VALUES
(null,'领略风土人情','傣族泼水节','我们没有必要压抑自己，更没有必要去奉承巴结，保持我们应有的人格，才会赢得更多的尊重',
'../img/fourfloor1.jpg','list2detail.html?bid=11'),
(null,'领略风土人情','傣族泼水节','做人，都是人心换人心，珍惜换情深，你若无情，我又何必真心',
'../img/fourfloor2.jpg','list2detail.html?bid=11'),
(null,'领略风土人情','傣族泼水节','我们没有必要压抑自己，更没有必要去奉承巴结，保持我们应有的人格，才会赢得更多的尊重',
'../img/fourfloor3.jpg','list2detail.html?bid=12'),
(null,'领略风土人情','傣族泼水节','.我可以容忍，但是不要超过我的底线',
'../img/fourfloor4.jpg','list2detail.html?bid=12'),
(null,'领略风土人情','傣族泼水节','一定要记住，人生在世，自己过得开心就好，不争不抢，别人的生活永远都是别人的，只有自己开心才是最重要的',
'../img/fourfloor5.jpg','list2detail.html?bid=13'),
(null,'领略风土人情','傣族泼水节','.不要对谁特别好，也不要对谁特别不好，对一个人再好，八分满就足够，留下一些留给自己',
'../img/fourfloor6.jpg','list2detail.html?bid=13'),
(null,'领略风土人情','傣族泼水节','希望有一天，你能遇到那个愿为你弯腰的人。从此以后，其他人不过就是匆匆浮云',
'../img/fourfloor7.jpg','list2detail.html?bid=13');

/****五楼****/
create table travel_indfivefl_product(
   vid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href varchar(48)
);
INSERT INTO travel_indfivefl_product VALUES
(null,'2018/09/06','风吹起如花般破碎的流年，而你的笑容摇晃摇晃，成为我命途中最美的点缀，看天，看雪，看季节深深的暗影','../img/fivefloor1.png','list1detail.html?bid=14'),
(null,'2018/06/16','记忆想是倒在掌心的水，不论你摊开还是紧握，终究还是会从指缝中一滴一滴流淌干净','../img/fivefloor2.jpg','list1detail.html?bid=14'),
(null,'2016/09/06','偶尔会想念童年时光，不知愁滋味，不用担责备，不会为别人心碎，不知人间苦累','../img/fivefloor3.jpg','list1detail.html?bid=15'),
(null,'2019/02/01','过去的一页，能不翻就不要翻，翻落了灰尘会迷了双眼','../img/fivefloor4.jpg','list1detail.html?bid=15'),
(null,'2018/12/12','一个不曾用自己的脚在路上踩下脚印的人，不会找到一条真正属于自己的路','../img/fivefloor5.jpg','list1detail.html?bid=15');


/****五楼跳list1****/
create table travel_list1_product(
   wid int primary key auto_increment,
   title varchar(64),
   subtitle varchar(64)
   details VARCHAR(2000),
   subdetails varchar(500)
   pic VARCHAR(128),
   href varchar(48)
);
INSERT INTO travel_list1_product VALUES
(null,"登泰山而小天下","优美文字"," 暖春花开，大地复苏，持续阴雨绵绵，竟也惹人甚是寂累泛念，思虹如彩，气秀蘩漪，一切顺乎自然的东西也都是美好的。踟躇的情感，我把对扪生于心涧的爱，
寄予对兀自无可厚非的自然，将是那么深，那么真，那么透彻心扉的明亮。大自然从来不欺骗我们，欺骗我们的，也还将永远是我们自己。只有顺从自然，才能驾驭自然;只有从自然中了解自然，
才能迎来大自然的每一个领域时期，美妙绝伦的精彩绝伦。谈谈心，说说爱，爱一个人需要理由吗?爱一个人是不需要理由的，也无需太多借口。那些需要理由的人，无非是想找一个死心的原因，
但这往往会逼得那些不爱的人，编造出一个又一个无聊的借口。月满则亏，水满则溢，物极必反，是否能相对应否极泰来，那就得看这个人的造化了。
人生得意须尽欢，莫使金樽空对月，有些欢喜是发自于我们内在的内心，所以无关风情冷暖，风花雪月天。虽累，虽痛，但快乐、并能够彻彻底底、透彻心扉的痛彻、爽朗、明镜、能心如止水般的通透、
明亮、大方与开怀。想笑就笑，想言就言;知无不言，言无不尽，虽印记深刻，又何乐而不为呢?",
"被遗忘的角落，寂寥落寞，流落的光阴，穿戳于尘世的苍白，极力追寻着它原来的模样。依恋于黑夜之中渴望黎明的阳光，
梦幻的霓虹灯撩拨着夜的静谧，那一抹岁月的斑斓在茫茫红尘中羞怯，犹如这八月的桂花一样随风飘香。","../listimg/onelist1.jpg","list2detail.html?bid=14"),

(null,"登泰山而小天下","优美文字"," 暖春花开，大地复苏，持续阴雨绵绵，竟也惹人甚是寂累泛念，思虹如彩，气秀蘩漪，一切顺乎自然的东西也都是美好的。踟躇的情感，我把对扪生于心涧的爱，
寄予对兀自无可厚非的自然，将是那么深，那么真，那么透彻心扉的明亮。大自然从来不欺骗我们，欺骗我们的，也还将永远是我们自己。只有顺从自然，才能驾驭自然;只有从自然中了解自然，
才能迎来大自然的每一个领域时期，美妙绝伦的精彩绝伦。谈谈心，说说爱，爱一个人需要理由吗?爱一个人是不需要理由的，也无需太多借口。那些需要理由的人，无非是想找一个死心的原因，
但这往往会逼得那些不爱的人，编造出一个又一个无聊的借口。月满则亏，水满则溢，物极必反，是否能相对应否极泰来，那就得看这个人的造化了。
人生得意须尽欢，莫使金樽空对月，有些欢喜是发自于我们内在的内心，所以无关风情冷暖，风花雪月天。虽累，虽痛，但快乐、并能够彻彻底底、透彻心扉的痛彻、爽朗、明镜、能心如止水般的通透、
明亮、大方与开怀。想笑就笑，想言就言;知无不言，言无不尽，虽印记深刻，又何乐而不为呢?",
"被遗忘的角落，寂寥落寞，流落的光阴，穿戳于尘世的苍白，极力追寻着它原来的模样。依恋于黑夜之中渴望黎明的阳光，
梦幻的霓虹灯撩拨着夜的静谧，那一抹岁月的斑斓在茫茫红尘中羞怯，犹如这八月的桂花一样随风飘香。","../listimg/onelist1.jpg","list2detail.html?bid=14"),

(null,"登泰山而小天下","优美文字"," 暖春花开，大地复苏，持续阴雨绵绵，竟也惹人甚是寂累泛念，思虹如彩，气秀蘩漪，一切顺乎自然的东西也都是美好的。踟躇的情感，我把对扪生于心涧的爱，
寄予对兀自无可厚非的自然，将是那么深，那么真，那么透彻心扉的明亮。大自然从来不欺骗我们，欺骗我们的，也还将永远是我们自己。只有顺从自然，才能驾驭自然;只有从自然中了解自然，
才能迎来大自然的每一个领域时期，美妙绝伦的精彩绝伦。谈谈心，说说爱，爱一个人需要理由吗?爱一个人是不需要理由的，也无需太多借口。那些需要理由的人，无非是想找一个死心的原因，
但这往往会逼得那些不爱的人，编造出一个又一个无聊的借口。月满则亏，水满则溢，物极必反，是否能相对应否极泰来，那就得看这个人的造化了。
人生得意须尽欢，莫使金樽空对月，有些欢喜是发自于我们内在的内心，所以无关风情冷暖，风花雪月天。虽累，虽痛，但快乐、并能够彻彻底底、透彻心扉的痛彻、爽朗、明镜、能心如止水般的通透、
明亮、大方与开怀。想笑就笑，想言就言;知无不言，言无不尽，虽印记深刻，又何乐而不为呢?",
"被遗忘的角落，寂寥落寞，流落的光阴，穿戳于尘世的苍白，极力追寻着它原来的模样。依恋于黑夜之中渴望黎明的阳光，
梦幻的霓虹灯撩拨着夜的静谧，那一抹岁月的斑斓在茫茫红尘中羞怯，犹如这八月的桂花一样随风飘香。","../listimg/onelist1.jpg","list2detail.html?bid=15"),

(null,"登泰山而小天下","优美文字"," 暖春花开，大地复苏，持续阴雨绵绵，竟也惹人甚是寂累泛念，思虹如彩，气秀蘩漪，一切顺乎自然的东西也都是美好的。踟躇的情感，我把对扪生于心涧的爱，
寄予对兀自无可厚非的自然，将是那么深，那么真，那么透彻心扉的明亮。大自然从来不欺骗我们，欺骗我们的，也还将永远是我们自己。只有顺从自然，才能驾驭自然;只有从自然中了解自然，
才能迎来大自然的每一个领域时期，美妙绝伦的精彩绝伦。谈谈心，说说爱，爱一个人需要理由吗?爱一个人是不需要理由的，也无需太多借口。那些需要理由的人，无非是想找一个死心的原因，
但这往往会逼得那些不爱的人，编造出一个又一个无聊的借口。月满则亏，水满则溢，物极必反，是否能相对应否极泰来，那就得看这个人的造化了。
人生得意须尽欢，莫使金樽空对月，有些欢喜是发自于我们内在的内心，所以无关风情冷暖，风花雪月天。虽累，虽痛，但快乐、并能够彻彻底底、透彻心扉的痛彻、爽朗、明镜、能心如止水般的通透、
明亮、大方与开怀。想笑就笑，想言就言;知无不言，言无不尽，虽印记深刻，又何乐而不为呢?",
"被遗忘的角落，寂寥落寞，流落的光阴，穿戳于尘世的苍白，极力追寻着它原来的模样。依恋于黑夜之中渴望黎明的阳光，
梦幻的霓虹灯撩拨着夜的静谧，那一抹岁月的斑斓在茫茫红尘中羞怯，犹如这八月的桂花一样随风飘香。","../listimg/onelist1.jpg","list2detail.html?bid=15");

















/****所有商品表****/
create table travel_all_product(
   bid int primary key auto_increment,
   family_id INT,              #所去城市编号
   title varchar(64),
   subtitle varchar(400),
   price decimal(10,2),
   promise VARCHAR(64),        #服务承诺
   details VARCHAR(428)       #产品详细说明

);
insert into travel_all_product values
(null,1,'曲阜-泰山四日游,揽胜迹/泰山，儒乡情/三孔，沐水乡/趵突泉',
'【火车票自选，纯玩0购物，含泰山60元景交，星级导游服务，充足游览时间，国家研学旅行八大试点之一--孔子故里曲阜！+帝王封天禅地之地--独尊泰山！】',
'6666','未出发前可退','曲阜-泰山四日游'),

(null,2,'海南三亚双飞5日游>人气&亲子&蜜月',
'【火车票自选，纯玩0购物，，错峰爆款0购物，康年/红树林等酒店自选连住，接机0等待，畅享蜈支洲一整天，万人出游甄选！】',
'4625','未出发前可退','海南三亚双飞5日游'),

(null,3,'新加坡+马来西亚+波德申6日游>',
'【郑州直飞，住1晚铂尔曼酒店1晚丽笙水上泳池别墅，圣淘沙鱼尾狮公园，云顶高原，双峰塔，DFS扫货！】',
'9024','未出发前可退','新加坡+马来西亚+波德申6日游'),

(null,4,'马尔代夫阿雅达岛Ayada5晚7日自由行',
'【白色婚礼教堂，浪漫海上吊床，网红美拍地,畅游大海！】',
'6999','未出发前可退','马尔代夫阿雅达岛Ayada5晚7日自由行'),

(null,5,'巴厘岛机票+5晚7日游',
'【自营mini小包团，2人起订，独栋别墅/海边五星，蓝梦岛出海（送海底漫步），阿勇河漂流，悦榕庄下午茶，纯玩无购物！】',
'6256','未出发前可退','巴厘岛机票+5晚7日游'),

(null,6,'普吉岛CLUB MED地中海俱乐部6日自由行',
'【价全含，儿童俱乐部服务，针对不同年龄段的小朋友设计的儿童设施、少年俱乐部！】',
'8888','未出发前可退','普吉岛CLUB MED地中海俱乐部4晚5或6日自由行'),

(null,7,'丽江-香格里拉-大理-玉龙雪山双飞6日游',
'【火车票自选,一车1导,0购物15人小团,大理海景房,洱海旅拍,雪山大索道/蓝月谷,5A普达措,98满意度,云南热销万人精选！】',
'9666','未出发前可退','丽江-香格里拉-大理-玉龙雪山双飞6日游'),

(null,8,'云南-西双版纳-昆明-大理-丽江4飞8日游',
'【火车票自选，纯玩0购物，北纬21度避寒/花园洋房温泉体验/大理海景房/5A石林/玉龙雪山/印象丽江震撼表演/父母安心游    乐开花爸妈游！】',
'6188','未出发前可退','云南-西双版纳-昆明-大理-丽江4飞8日游'),

(null,9,'厦门-鼓浪屿双飞5日游',
'【火车票自选，纯玩0购物，万人点评，高满意度，住1晚鼓浪屿，观网红唱片博物馆，3晚市区舒适酒店，游市区精华景点，自选云水谣一日游 ！】',
'5888','未出发前可退','厦门-鼓浪屿双飞5日游'),

(null,10,'桂林-漓江-阳朔双飞5日游',
'【自营销冠,超4万人0购物,竹筏/游船徜徉漓江,阳朔2晚挂四/1晚桂林五星酒店,4月1后团期赠260元刘三姐,打卡澳门酒家,24H接送机！】',
'4266','未出发前可退','桂林-漓江-阳朔双飞5日游'),

(null,11,'华东六市+扬州+乌镇+西塘双高6日游',
'【0购物0自费，品早茶，全景江南，含宋城千古情（含表演）、上海环球金融中心，烟花三月下扬州！】',
'3888','未出发前可退','华东六市+扬州+乌镇+西塘双高6日游'),

(null,12,'拉萨-林芝大峡谷-鲁朗林海-羊湖双飞8日游>',
'【奢华12人mini团0购0自，5晚高端藏式酒店1晚鲁朗小镇，280元藏地风味餐，4月享阿可丁下午茶（可选升级洲际） ！】',
'2666','未出发前可退','拉萨-林芝大峡谷-鲁朗林海-羊湖双飞8日游'),

(null,13,'成都-都江堰-青城山-熊猫基地双飞5日半自助游',
'【入住洲际智选假日/青都9点半出发配无线耳麦/熊猫半日游/宽窄巷子内赏川剧 ！】',
'3888','未出发前可退','成都-都江堰-青城山-熊猫基地双飞5日半自助游'),

(null,14,'澳大利亚悉尼-凯恩斯-墨尔本9晚11日自由行',
'【自选机票、酒店，推荐参考行程，歌剧院、大堡礁全体验，更多自选项目，可定内陆机票，可选拒签退机票服务！】',
'2666','未出发前可退','澳大利亚悉尼-凯恩斯-墨尔本9晚11日自由行'),

(null,15,'美国洛杉矶一地5晚7日自由行',
'【机票、酒店、当地玩乐，一日游任选（含景点首道大门票），棕榈泉购物，圣地亚哥（海洋世界），可选拒签退机票服务！】',
'6886','未出发前可退','美国洛杉矶一地5晚7日自由行'),

(null,16,'俄罗斯莫斯科+圣彼得堡8日游',
'【郑州直航，莫斯科圣彼得堡游，莫斯科大学，红场，莫斯科地铁，古姆商场，金环谢镇，冬宫，夏宫花园！】',
'9666','未出发前可退','俄罗斯莫斯科+圣彼得堡8日游'),

(null,17,'云台山-红石峡-潭瀑峡-泉瀑峡-茱萸峰2日游',
'【住景区内快捷酒店空调房，含1早两正餐，无购物，火车站、三环内可接,畅游云台山！】',
'6188','未出发前可退','云台山-红石峡-潭瀑峡-泉瀑峡-茱萸峰2日游'),

(null,18,'加拿大东西全景+班芙12-15日游',
'【无购物,精致小团,真实好评,四大国家公园,冰原雪车,硫磺山缆车,SkylonTower观瀑自助餐,4D电影,奥莱嗨购,WIFI！】',
'5888','未出发前可退','加拿大东西全景+班芙12-15日游');


/**图片**/
CREATE TABLE travel_product_pic(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,              #编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);
INSERT INTO travel_product_pic VALUES
(null,1,'../listimg/smonelist1.jpg','../listimg/mdonelist1.jpg','../listimg/lgonelist1.jpg'),
(null,1,'../listimg/smonelist2.jpg','../listimg/mdonelist2.jpg','../listimg/lgonelist2.jpg'),
(null,1,'../listimg/smonelist3.jpg','../listimg/mdonelist3.jpg','../listimg/lgonelist3.jpg'),
(null,1,'../listimg/smonelist4.jpg','../listimg/mdonelist4.jpg','../listimg/lgonelist4.jpg');





/**list2详情表**/
create table travel_product_listdet2(
   t1 varchar(64),
   p1 varchar(32),
   t2 varchar(64),
   p2 varchar(32),
   t3 varchar(64),
   p3 varchar(32),
   t4 varchar(64),
   p4 varchar(32),
   trip1 varchar(32),  #行程1
   trip2 varchar(32),
   trip3 varchar(32),
   trip4 varchar(32),
   onedayspot varchar(32)  #第一天景点名
     
);









#(null,'平凉市崆峒山风景名胜区','豪华平凉市崆峒山风景名胜区四日游','../img/twofloor5.jpg','6999','list2detail.html?did=5',5,5,5),
#(null,'嘉峪关市嘉峪关文物景区','豪华嘉峪关市嘉峪关文物景区四日游','../img/twofloor6.jpg','8888','list2detail.html?did=6',6,6,6),
#(null,'石嘴山市沙湖旅游景区','豪华石嘴山市沙湖旅游景区四日游','../img/twofloor7.jpg','3888','list2detail.html?did=7',7,7,7),
#(null,'温州市雁荡山风景名胜区','豪华温州市雁荡山风景名胜区四日游','../img/twofloor8.jpg','7264','list2detail.html?did=8',8,8,8),
#(null,'舟山市普陀山风景名胜区','豪华舟山市普陀山风景名胜区四日游','../img/twofloor9.jpg','9868','list2detail.html?did=9',9,9,9); 













/****list1details 轮播广告商品****/
create table travel_lunbo(
  lid int primary key auto_increment,
	img_url varchar(32),
	title varchar(64)
);


INSERT INTO travel_lunbo VALUES
(null,'../listimg/onelist1.jpg','轮播广告商品1',),
(null,'../listimg/onelist1.jpg','轮播广告商品2'),
(null,'../listimg/onelist1.jpg','轮播广告商品3'),
(null,'../listimg/onelist1.jpg','轮播广告商品4');

/****list1商品详情****/
create table travel_oneProduct(
  kid int primary key auto_increment,
	onetitle varchar(32),
	onedetail varchar(1000),
	twotitle varchar(32),
	twotitle varchar(500),
	twoimg_url varchar(32),
	threeimg_url1 varchar(32),
	threeimg_url2 varchar(32),
	threeimg_url3 varchar(32),
	threeimg_url4 varchar(32),
	threeimg_url5 varchar(32)
);

INSERT INTO travel_lunbo VALUES
(null,
'登泰山而小天下',
'天色慢慢亮了起来,几乎跟视线平齐的帷幔似的云彩淡淡地镶上了一道美丽的金边.云海也渐渐地层次分明起来,
甚至能够清晰地看到那些距离较近的云彩开始不安分地翻滚和流动.而稍远的地方,云海还是与大山融为一体地默默地耸立着
.很快,这种的翻滚和流动就由近及远地影响到了那些山峰一样的云海,他们先是慢慢变矮,慢慢变得起伏不再柔和,
终于在一段时间之后被慢慢拉平.这个时候的云海更加象如水月色下的平静的大海,只是没有波涛翻滚所产生的哗哗的波浪声.',
'望岳',
'岱宗夫如何？齐鲁青未了。造化钟神秀，阴阳割昏晓。荡胸生层云，决眦入归鸟。会当凌绝顶，一览众山小',
'../listimg/onelist1.jpg',
'../listimg/onelist2.jpg',
'../listimg/onelist3.jpg',
'../listimg/onelist4.jpg',
'../listimg/onelist5.jpg');












/****list2details cart 轮播广告商品****/
create table travel_lunbo(
  lid int primary key auto_increment,
	img_url varchar(32),
	title varchar(64)
);


INSERT INTO travel_lunbo VALUES
(null,'../listimg/twolist1.jpg','轮播广告商品1',),
(null,'../listimg/twolist1.jpg','轮播广告商品2'),
(null,'../listimg/twolist1.jpg','轮播广告商品3'),
(null,'../listimg/twolist1.jpg','轮播广告商品4');

SET NAMES UTF8;

DROP DATABASE IF EXISTS  universe_travel;
CREATE DATABASE universe_travel CHARSET=UTF8;
USE universe_travel;

/**用户信息表**/
create table travel_user(
  uid int primary key auto_increment,
	uname varchar(32),
	upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男

);
/**用户信息**/
INSERT INTO travel_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');

/****首页轮播广告商品****/
create table travel_lunbo(
  lid int primary key auto_increment,
  img_url varchar(32),
  title varchar(64),
  href   varchar(48)
);

INSERT INTO travel_lunbo VALUES
(null,'../img/lunbo1.jpg','轮播广告商品1','list1detail.html?bid=1'),
(null,'../img/lunbo2.jpg','轮播广告商品2','list1detail.html?bid=16'),
(null,'../img/lunbo3.jpg','轮播广告商品3','list1detail.html?bid=2'),
(null,'../img/lunbo4.jpg','轮播广告商品4','list1detail.html?bid=17');




/****首页商品****/


/****一楼****/
create table travel_indonefl_product(
   pid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href   varchar(48),
   seq_recommended TINYINT,
   seq_new_arrival TINYINT,
   seq_top_sale TINYINT
);
INSERT INTO travel_indonefl_product VALUES

(null,'烟台市蓬莱阁旅游区',' 书籍好比一架梯子.它能引导我们登上知识的殿堂,书籍如同一把钥匙,它将帮助我们开启心灵的智慧之窗,
时间好比一个良医.它能教我们医治流血的伤口.时间如同一位慈母.它将帮助我们抚平心灵的创伤','../img/god1.png','list4detail.html?bid=3',1,1,1),
(null,'厦门市鼓浪屿风景名胜区','  只有波涛汹涌的大海.才能创造出沙滩的光洁与柔软.而平静的湖边.只好让污泥环绕,只有狂风暴雨.才能洗涤污泥浊水
.而和风细雨.只能留下泥沙,只有一望无际的森林.
才能创造出大地的翠绿与娇美.而孤独的树木.只好任狂风摧残','../img/god2.png','list4detail.html?bid=4',2,2,2),
(null,'桂林市漓江景区',' 书是我的精神食粮.它 重塑了我的灵魂,当裴多菲说:[若为自由故.二者皆可抛".我懂得了作为人的价值,当鲁迅说:[不在沉默中爆发.就在沉默中灭亡
".我懂得了人应具有的反抗精神,当白朗宁说:[拿走爱.世界将变成一座坟墓".我懂得了为他人奉献爱心是多么重要.','../img/god3.png','list4detail.html?bid=5',3,3,3),
(null,'杭州市西湖风景名胜区','  用不着把年轻的心灵装点得沉重.表面上的沧桑.外在的严肃.并不能让你上升为哲人,离开所有的朋友.你有的只能是孤单的背影.
既然现在的我还不能变得深刻.那么.我就让自己变得轻松.哭丧着脸的人.怎能听清花开的响声,伪装自己的人.又怎能听懂蛙鸣一片里的激动.',
'../img/god4.png','list4detail.html?bid=6',4,4,4);

/****一楼跳list4****/
create table travel_list4_product(
   qid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   href varchar(48),
   pic VARCHAR(128)
);
INSERT INTO travel_list4_product VALUES
(null,'高尔夫球','您可以在球道上迈出第一步，或者在比赛中将几杆射到Costa Navarino的两个标志性高尔夫球场。学习基础知识,
有经验的参与者将有机会在专家学费和广泛的实践设施的帮助下磨练自己的技能','list2detail.html?bid=4','../listimg/fourlist1.jpg'),
(null,'篮球和保龄球','最先进的体育和娱乐中心的室内选择提供数小时的乐趣，包括各种体育活动，如篮球，保龄球，排球，五人足球以及广泛的健身课程',
'list2detail.html?bid=4','../listimg/fourlist2.jpg'),
(null,'海滩瑜伽','通过海滩瑜伽放松和伸展，注重身体健康和心理健康，旁边是舒缓的声音和神奇的海洋光环。尝试更多进步SUP瑜伽在水上。
','list2detail.html?bid=4','../listimg/fourlist3.jpg'),
(null,'攀岩墙','甲95米2攀爬墙壁与各种攀登路线的等待初学者和有经验的登山者。测试你的技能！适合儿童和成人炎热的夏日。可根据要求提供经过认证的攀岩课程.',
'list2detail.html?bid=4','../listimg/fourlist4.jpg'),
(null,'骑自行车','骑自行车探索Navarino Dunes周围的山丘。加入我们经验丰富的自行车导游，分享他们对体育锻炼的热情，充满乐趣，积极的态度和汗水！',
'list2detail.html?bid=4','../listimg/fourlist5.jpg'),
(null,'徒步旅行','您可以探索卡拉马里（Kalamari）的瀑布，在小型游泳池的结晶水中游泳，或前往着名的Voidokilia海滩，徒步前往Palaiokastro城堡。',
'list2detail.html?bid=4','../listimg/fourlist6.jpg'),
(null,'皮划艇','皮划艇是一种适合所有年龄段的有趣运动方式。与朋友出发或参加前往Voirdokilia海滩的半日游。','list2detail.html?bid=4',
'../listimg/fourlist7.jpg'),
(null,'风筝冲浪','学习风筝冲浪，这将是一次令人难忘的经历，将改变您对海洋的看法。Romanos海滩提供初学者私人课程和经验教练的高级辅导',
'list2detail.html?bid=4','../listimg/fourlist8.jpg');





/****二楼****/
create table travel_indtwofl_product(
   tid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href   varchar(48)
);
INSERT INTO travel_indtwofl_product VALUES
(null,'崆峒山风景名胜区','豪华平凉市崆峒山风景名胜区四日游','../img/twofloor1.jpg','list2detail.html?bid=7'),
(null,'嘉峪关文物景区','豪华平凉市崆峒山风景名胜区四日游','../img/twofloor2.jpg','list2detail.html?bid=8');

/****三楼****/
create table travel_indthreefl_product(
   eid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href   varchar(48)
);
INSERT INTO travel_indthreefl_product VALUES
(null,'领略大好风光','佛的智慧把爱当作痛苦得根源加以弃绝，扼杀生命的意志；人的智慧应把痛苦当作爱的必然结果加以接受，化为生命的财富',
'../img/threefloor1.jpg','list2detail.html?bid=9'),
(null,'领略大好风光','对于一颗高傲的心来说，莫大的屈辱不是遭人嫉妒，而是嫉妒别人，因为这种情绪向他暴露了一个他最不愿承认的事实：他自卑了',
'../img/threefloor2.jpg','list2detail.html?bid=9'),
(null,'领略大好风光','一个成熟的人是不会去刻意寻求外在的奖赏，以为故意做作的奖赏对人有时是一种愚弄',
'../img/threefloor3.jpg','list2detail.html?bid=10'),
(null,'领略大好风光','谁的经历不是平凡而又平凡？内心经历的不同才在人与人之间铺设了巨大的鸿沟',
'../img/threefloor4.jpg','list2detail.html?bid=18');


/****四楼****/
create table travel_indfourfl_product(
   fid int primary key auto_increment,
   daohang varchar(64),
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href varchar(48)
);
INSERT INTO travel_indfourfl_product VALUES
(null,'领略风土人情','傣族泼水节','我们没有必要压抑自己，更没有必要去奉承巴结，保持我们应有的人格，才会赢得更多的尊重',
'../img/fourfloor1.jpg','list2detail.html?bid=11'),
(null,'领略风土人情','傣族泼水节','做人，都是人心换人心，珍惜换情深，你若无情，我又何必真心',
'../img/fourfloor2.jpg','list2detail.html?bid=11'),
(null,'领略风土人情','傣族泼水节','我们没有必要压抑自己，更没有必要去奉承巴结，保持我们应有的人格，才会赢得更多的尊重',
'../img/fourfloor3.jpg','list2detail.html?bid=12'),
(null,'领略风土人情','傣族泼水节','.我可以容忍，但是不要超过我的底线',
'../img/fourfloor4.jpg','list2detail.html?bid=12'),
(null,'领略风土人情','傣族泼水节','一定要记住，人生在世，自己过得开心就好，不争不抢，别人的生活永远都是别人的，只有自己开心才是最重要的',
'../img/fourfloor5.jpg','list2detail.html?bid=13'),
(null,'领略风土人情','傣族泼水节','.不要对谁特别好，也不要对谁特别不好，对一个人再好，八分满就足够，留下一些留给自己',
'../img/fourfloor6.jpg','list2detail.html?bid=13'),
(null,'领略风土人情','傣族泼水节','希望有一天，你能遇到那个愿为你弯腰的人。从此以后，其他人不过就是匆匆浮云',
'../img/fourfloor7.jpg','list2detail.html?bid=13');

/****五楼****/
create table travel_indfivefl_product(
   vid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href varchar(48)
);
INSERT INTO travel_indfivefl_product VALUES
(null,'2018/09/06','风吹起如花般破碎的流年，而你的笑容摇晃摇晃，成为我命途中最美的点缀，看天，看雪，看季节深深的暗影','../img/fivefloor1.png','list1detail.html?bid=14'),
(null,'2018/06/16','记忆想是倒在掌心的水，不论你摊开还是紧握，终究还是会从指缝中一滴一滴流淌干净','../img/fivefloor2.jpg','list1detail.html?bid=14'),
(null,'2016/09/06','偶尔会想念童年时光，不知愁滋味，不用担责备，不会为别人心碎，不知人间苦累','../img/fivefloor3.jpg','list1detail.html?bid=15'),
(null,'2019/02/01','过去的一页，能不翻就不要翻，翻落了灰尘会迷了双眼','../img/fivefloor4.jpg','list1detail.html?bid=15'),
(null,'2018/12/12','一个不曾用自己的脚在路上踩下脚印的人，不会找到一条真正属于自己的路','../img/fivefloor5.jpg','list1detail.html?bid=15');


/****五楼跳list1****/
create table travel_list1_product(
   wid int primary key auto_increment,
   title varchar(64),
   subtitle varchar(64)
   details VARCHAR(2000),
   subdetails varchar(500)
   pic VARCHAR(128),
   href varchar(48)
);
INSERT INTO travel_list1_product VALUES
(null,"登泰山而小天下","优美文字"," 暖春花开，大地复苏，持续阴雨绵绵，竟也惹人甚是寂累泛念，思虹如彩，气秀蘩漪，一切顺乎自然的东西也都是美好的。踟躇的情感，我把对扪生于心涧的爱，
寄予对兀自无可厚非的自然，将是那么深，那么真，那么透彻心扉的明亮。大自然从来不欺骗我们，欺骗我们的，也还将永远是我们自己。只有顺从自然，才能驾驭自然;只有从自然中了解自然，
才能迎来大自然的每一个领域时期，美妙绝伦的精彩绝伦。谈谈心，说说爱，爱一个人需要理由吗?爱一个人是不需要理由的，也无需太多借口。那些需要理由的人，无非是想找一个死心的原因，
但这往往会逼得那些不爱的人，编造出一个又一个无聊的借口。月满则亏，水满则溢，物极必反，是否能相对应否极泰来，那就得看这个人的造化了。
人生得意须尽欢，莫使金樽空对月，有些欢喜是发自于我们内在的内心，所以无关风情冷暖，风花雪月天。虽累，虽痛，但快乐、并能够彻彻底底、透彻心扉的痛彻、爽朗、明镜、能心如止水般的通透、
明亮、大方与开怀。想笑就笑，想言就言;知无不言，言无不尽，虽印记深刻，又何乐而不为呢?",
"被遗忘的角落，寂寥落寞，流落的光阴，穿戳于尘世的苍白，极力追寻着它原来的模样。依恋于黑夜之中渴望黎明的阳光，
梦幻的霓虹灯撩拨着夜的静谧，那一抹岁月的斑斓在茫茫红尘中羞怯，犹如这八月的桂花一样随风飘香。","../listimg/onelist1.jpg","list2detail.html?bid=14"),

(null,"登泰山而小天下","优美文字"," 暖春花开，大地复苏，持续阴雨绵绵，竟也惹人甚是寂累泛念，思虹如彩，气秀蘩漪，一切顺乎自然的东西也都是美好的。踟躇的情感，我把对扪生于心涧的爱，
寄予对兀自无可厚非的自然，将是那么深，那么真，那么透彻心扉的明亮。大自然从来不欺骗我们，欺骗我们的，也还将永远是我们自己。只有顺从自然，才能驾驭自然;只有从自然中了解自然，
才能迎来大自然的每一个领域时期，美妙绝伦的精彩绝伦。谈谈心，说说爱，爱一个人需要理由吗?爱一个人是不需要理由的，也无需太多借口。那些需要理由的人，无非是想找一个死心的原因，
但这往往会逼得那些不爱的人，编造出一个又一个无聊的借口。月满则亏，水满则溢，物极必反，是否能相对应否极泰来，那就得看这个人的造化了。
人生得意须尽欢，莫使金樽空对月，有些欢喜是发自于我们内在的内心，所以无关风情冷暖，风花雪月天。虽累，虽痛，但快乐、并能够彻彻底底、透彻心扉的痛彻、爽朗、明镜、能心如止水般的通透、
明亮、大方与开怀。想笑就笑，想言就言;知无不言，言无不尽，虽印记深刻，又何乐而不为呢?",
"被遗忘的角落，寂寥落寞，流落的光阴，穿戳于尘世的苍白，极力追寻着它原来的模样。依恋于黑夜之中渴望黎明的阳光，
梦幻的霓虹灯撩拨着夜的静谧，那一抹岁月的斑斓在茫茫红尘中羞怯，犹如这八月的桂花一样随风飘香。","../listimg/onelist1.jpg","list2detail.html?bid=14"),

(null,"登泰山而小天下","优美文字"," 暖春花开，大地复苏，持续阴雨绵绵，竟也惹人甚是寂累泛念，思虹如彩，气秀蘩漪，一切顺乎自然的东西也都是美好的。踟躇的情感，我把对扪生于心涧的爱，
寄予对兀自无可厚非的自然，将是那么深，那么真，那么透彻心扉的明亮。大自然从来不欺骗我们，欺骗我们的，也还将永远是我们自己。只有顺从自然，才能驾驭自然;只有从自然中了解自然，
才能迎来大自然的每一个领域时期，美妙绝伦的精彩绝伦。谈谈心，说说爱，爱一个人需要理由吗?爱一个人是不需要理由的，也无需太多借口。那些需要理由的人，无非是想找一个死心的原因，
但这往往会逼得那些不爱的人，编造出一个又一个无聊的借口。月满则亏，水满则溢，物极必反，是否能相对应否极泰来，那就得看这个人的造化了。
人生得意须尽欢，莫使金樽空对月，有些欢喜是发自于我们内在的内心，所以无关风情冷暖，风花雪月天。虽累，虽痛，但快乐、并能够彻彻底底、透彻心扉的痛彻、爽朗、明镜、能心如止水般的通透、
明亮、大方与开怀。想笑就笑，想言就言;知无不言，言无不尽，虽印记深刻，又何乐而不为呢?",
"被遗忘的角落，寂寥落寞，流落的光阴，穿戳于尘世的苍白，极力追寻着它原来的模样。依恋于黑夜之中渴望黎明的阳光，
梦幻的霓虹灯撩拨着夜的静谧，那一抹岁月的斑斓在茫茫红尘中羞怯，犹如这八月的桂花一样随风飘香。","../listimg/onelist1.jpg","list2detail.html?bid=15"),

(null,"登泰山而小天下","优美文字"," 暖春花开，大地复苏，持续阴雨绵绵，竟也惹人甚是寂累泛念，思虹如彩，气秀蘩漪，一切顺乎自然的东西也都是美好的。踟躇的情感，我把对扪生于心涧的爱，
寄予对兀自无可厚非的自然，将是那么深，那么真，那么透彻心扉的明亮。大自然从来不欺骗我们，欺骗我们的，也还将永远是我们自己。只有顺从自然，才能驾驭自然;只有从自然中了解自然，
才能迎来大自然的每一个领域时期，美妙绝伦的精彩绝伦。谈谈心，说说爱，爱一个人需要理由吗?爱一个人是不需要理由的，也无需太多借口。那些需要理由的人，无非是想找一个死心的原因，
但这往往会逼得那些不爱的人，编造出一个又一个无聊的借口。月满则亏，水满则溢，物极必反，是否能相对应否极泰来，那就得看这个人的造化了。
人生得意须尽欢，莫使金樽空对月，有些欢喜是发自于我们内在的内心，所以无关风情冷暖，风花雪月天。虽累，虽痛，但快乐、并能够彻彻底底、透彻心扉的痛彻、爽朗、明镜、能心如止水般的通透、
明亮、大方与开怀。想笑就笑，想言就言;知无不言，言无不尽，虽印记深刻，又何乐而不为呢?",
"被遗忘的角落，寂寥落寞，流落的光阴，穿戳于尘世的苍白，极力追寻着它原来的模样。依恋于黑夜之中渴望黎明的阳光，
梦幻的霓虹灯撩拨着夜的静谧，那一抹岁月的斑斓在茫茫红尘中羞怯，犹如这八月的桂花一样随风飘香。","../listimg/onelist1.jpg","list2detail.html?bid=15");

















/****所有商品表****/
create table travel_all_product(
   bid int primary key auto_increment,
   family_id INT,              #所去城市编号
   title varchar(64),
   subtitle varchar(400),
   price decimal(10,2),
   promise VARCHAR(64),        #服务承诺
   details VARCHAR(428)       #产品详细说明

);
insert into travel_all_product values
(null,1,'曲阜-泰山四日游,揽胜迹/泰山，儒乡情/三孔，沐水乡/趵突泉',
'【火车票自选，纯玩0购物，含泰山60元景交，星级导游服务，充足游览时间，国家研学旅行八大试点之一--孔子故里曲阜！+帝王封天禅地之地--独尊泰山！】',
'6666','未出发前可退','曲阜-泰山四日游'),

(null,2,'海南三亚双飞5日游>人气&亲子&蜜月',
'【火车票自选，纯玩0购物，，错峰爆款0购物，康年/红树林等酒店自选连住，接机0等待，畅享蜈支洲一整天，万人出游甄选！】',
'4625','未出发前可退','海南三亚双飞5日游'),

(null,3,'新加坡+马来西亚+波德申6日游>',
'【郑州直飞，住1晚铂尔曼酒店1晚丽笙水上泳池别墅，圣淘沙鱼尾狮公园，云顶高原，双峰塔，DFS扫货！】',
'9024','未出发前可退','新加坡+马来西亚+波德申6日游'),

(null,4,'马尔代夫阿雅达岛Ayada5晚7日自由行',
'【白色婚礼教堂，浪漫海上吊床，网红美拍地,畅游大海！】',
'6999','未出发前可退','马尔代夫阿雅达岛Ayada5晚7日自由行'),

(null,5,'巴厘岛机票+5晚7日游',
'【自营mini小包团，2人起订，独栋别墅/海边五星，蓝梦岛出海（送海底漫步），阿勇河漂流，悦榕庄下午茶，纯玩无购物！】',
'6256','未出发前可退','巴厘岛机票+5晚7日游'),

(null,6,'普吉岛CLUB MED地中海俱乐部6日自由行',
'【价全含，儿童俱乐部服务，针对不同年龄段的小朋友设计的儿童设施、少年俱乐部！】',
'8888','未出发前可退','普吉岛CLUB MED地中海俱乐部4晚5或6日自由行'),

(null,7,'丽江-香格里拉-大理-玉龙雪山双飞6日游',
'【火车票自选,一车1导,0购物15人小团,大理海景房,洱海旅拍,雪山大索道/蓝月谷,5A普达措,98满意度,云南热销万人精选！】',
'9666','未出发前可退','丽江-香格里拉-大理-玉龙雪山双飞6日游'),

(null,8,'云南-西双版纳-昆明-大理-丽江4飞8日游',
'【火车票自选，纯玩0购物，北纬21度避寒/花园洋房温泉体验/大理海景房/5A石林/玉龙雪山/印象丽江震撼表演/父母安心游    乐开花爸妈游！】',
'6188','未出发前可退','云南-西双版纳-昆明-大理-丽江4飞8日游'),

(null,9,'厦门-鼓浪屿双飞5日游',
'【火车票自选，纯玩0购物，万人点评，高满意度，住1晚鼓浪屿，观网红唱片博物馆，3晚市区舒适酒店，游市区精华景点，自选云水谣一日游 ！】',
'5888','未出发前可退','厦门-鼓浪屿双飞5日游'),

(null,10,'桂林-漓江-阳朔双飞5日游',
'【自营销冠,超4万人0购物,竹筏/游船徜徉漓江,阳朔2晚挂四/1晚桂林五星酒店,4月1后团期赠260元刘三姐,打卡澳门酒家,24H接送机！】',
'4266','未出发前可退','桂林-漓江-阳朔双飞5日游'),

(null,11,'华东六市+扬州+乌镇+西塘双高6日游',
'【0购物0自费，品早茶，全景江南，含宋城千古情（含表演）、上海环球金融中心，烟花三月下扬州！】',
'3888','未出发前可退','华东六市+扬州+乌镇+西塘双高6日游'),

(null,12,'拉萨-林芝大峡谷-鲁朗林海-羊湖双飞8日游>',
'【奢华12人mini团0购0自，5晚高端藏式酒店1晚鲁朗小镇，280元藏地风味餐，4月享阿可丁下午茶（可选升级洲际） ！】',
'2666','未出发前可退','拉萨-林芝大峡谷-鲁朗林海-羊湖双飞8日游'),

(null,13,'成都-都江堰-青城山-熊猫基地双飞5日半自助游',
'【入住洲际智选假日/青都9点半出发配无线耳麦/熊猫半日游/宽窄巷子内赏川剧 ！】',
'3888','未出发前可退','成都-都江堰-青城山-熊猫基地双飞5日半自助游'),

(null,14,'澳大利亚悉尼-凯恩斯-墨尔本9晚11日自由行',
'【自选机票、酒店，推荐参考行程，歌剧院、大堡礁全体验，更多自选项目，可定内陆机票，可选拒签退机票服务！】',
'2666','未出发前可退','澳大利亚悉尼-凯恩斯-墨尔本9晚11日自由行'),

(null,15,'美国洛杉矶一地5晚7日自由行',
'【机票、酒店、当地玩乐，一日游任选（含景点首道大门票），棕榈泉购物，圣地亚哥（海洋世界），可选拒签退机票服务！】',
'6886','未出发前可退','美国洛杉矶一地5晚7日自由行'),

(null,16,'俄罗斯莫斯科+圣彼得堡8日游',
'【郑州直航，莫斯科圣彼得堡游，莫斯科大学，红场，莫斯科地铁，古姆商场，金环谢镇，冬宫，夏宫花园！】',
'9666','未出发前可退','俄罗斯莫斯科+圣彼得堡8日游'),

(null,17,'云台山-红石峡-潭瀑峡-泉瀑峡-茱萸峰2日游',
'【住景区内快捷酒店空调房，含1早两正餐，无购物，火车站、三环内可接,畅游云台山！】',
'6188','未出发前可退','云台山-红石峡-潭瀑峡-泉瀑峡-茱萸峰2日游'),

(null,18,'加拿大东西全景+班芙12-15日游',
'【无购物,精致小团,真实好评,四大国家公园,冰原雪车,硫磺山缆车,SkylonTower观瀑自助餐,4D电影,奥莱嗨购,WIFI！】',
'5888','未出发前可退','加拿大东西全景+班芙12-15日游');


/**图片**/
CREATE TABLE travel_product_pic(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,              #编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);
INSERT INTO travel_product_pic VALUES
(null,1,'../listimg/smonelist1.jpg','../listimg/mdonelist1.jpg','../listimg/lgonelist1.jpg'),
(null,1,'../listimg/smonelist2.jpg','../listimg/mdonelist2.jpg','../listimg/lgonelist2.jpg'),
(null,1,'../listimg/smonelist3.jpg','../listimg/mdonelist3.jpg','../listimg/lgonelist3.jpg'),
(null,1,'../listimg/smonelist4.jpg','../listimg/mdonelist4.jpg','../listimg/lgonelist4.jpg');





/**list2详情表**/
create table travel_product_listdet2(
   t1 varchar(64),
   p1 varchar(32),
   t2 varchar(64),
   p2 varchar(32),
   t3 varchar(64),
   p3 varchar(32),
   t4 varchar(64),
   p4 varchar(32),
   trip1 varchar(32),  #行程1
   trip2 varchar(32),
   trip3 varchar(32),
   trip4 varchar(32),
   onedayspot varchar(32)  #第一天景点名
     
);









#(null,'平凉市崆峒山风景名胜区','豪华平凉市崆峒山风景名胜区四日游','../img/twofloor5.jpg','6999','list2detail.html?did=5',5,5,5),
#(null,'嘉峪关市嘉峪关文物景区','豪华嘉峪关市嘉峪关文物景区四日游','../img/twofloor6.jpg','8888','list2detail.html?did=6',6,6,6),
#(null,'石嘴山市沙湖旅游景区','豪华石嘴山市沙湖旅游景区四日游','../img/twofloor7.jpg','3888','list2detail.html?did=7',7,7,7),
#(null,'温州市雁荡山风景名胜区','豪华温州市雁荡山风景名胜区四日游','../img/twofloor8.jpg','7264','list2detail.html?did=8',8,8,8),
#(null,'舟山市普陀山风景名胜区','豪华舟山市普陀山风景名胜区四日游','../img/twofloor9.jpg','9868','list2detail.html?did=9',9,9,9); 













/****list1details 轮播广告商品****/
create table travel_lunbo(
  lid int primary key auto_increment,
	img_url varchar(32),
	title varchar(64)
);


INSERT INTO travel_lunbo VALUES
(null,'../listimg/onelist1.jpg','轮播广告商品1',),
(null,'../listimg/onelist1.jpg','轮播广告商品2'),
(null,'../listimg/onelist1.jpg','轮播广告商品3'),
(null,'../listimg/onelist1.jpg','轮播广告商品4');

/****list1商品详情****/
create table travel_oneProduct(
  kid int primary key auto_increment,
	onetitle varchar(32),
	onedetail varchar(1000),
	twotitle varchar(32),
	twotitle varchar(500),
	twoimg_url varchar(32),
	threeimg_url1 varchar(32),
	threeimg_url2 varchar(32),
	threeimg_url3 varchar(32),
	threeimg_url4 varchar(32),
	threeimg_url5 varchar(32)
);

INSERT INTO travel_lunbo VALUES
(null,
'登泰山而小天下',
'天色慢慢亮了起来,几乎跟视线平齐的帷幔似的云彩淡淡地镶上了一道美丽的金边.云海也渐渐地层次分明起来,
甚至能够清晰地看到那些距离较近的云彩开始不安分地翻滚和流动.而稍远的地方,云海还是与大山融为一体地默默地耸立着
.很快,这种的翻滚和流动就由近及远地影响到了那些山峰一样的云海,他们先是慢慢变矮,慢慢变得起伏不再柔和,
终于在一段时间之后被慢慢拉平.这个时候的云海更加象如水月色下的平静的大海,只是没有波涛翻滚所产生的哗哗的波浪声.',
'望岳',
'岱宗夫如何？齐鲁青未了。造化钟神秀，阴阳割昏晓。荡胸生层云，决眦入归鸟。会当凌绝顶，一览众山小',
'../listimg/onelist1.jpg',
'../listimg/onelist2.jpg',
'../listimg/onelist3.jpg',
'../listimg/onelist4.jpg',
'../listimg/onelist5.jpg');












/****list2details cart 轮播广告商品****/
create table travel_lunbo(
  lid int primary key auto_increment,
	img_url varchar(32),
	title varchar(64)
);


INSERT INTO travel_lunbo VALUES
(null,'../listimg/twolist1.jpg','轮播广告商品1',),
(null,'../listimg/twolist1.jpg','轮播广告商品2'),
(null,'../listimg/twolist1.jpg','轮播广告商品3'),
(null,'../listimg/twolist1.jpg','轮播广告商品4');
