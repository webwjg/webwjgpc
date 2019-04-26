
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
时间好比一个良医.它能教我们医治流血的伤口.时间如同一位慈母.它将帮助我们抚平心灵的创伤','../img/god1.jpg','list4detail.html?qid=1',1,1,1),
(null,'厦门市鼓浪屿风景名胜区','  只有波涛汹涌的大海.才能创造出沙滩的光洁与柔软.而平静的湖边.只好让污泥环绕,只有狂风暴雨.才能洗涤污泥浊水
.而和风细雨.只能留下泥沙,只有一望无际的森林.
才能创造出大地的翠绿与娇美.而孤独的树木.只好任狂风摧残','../img/god2.jpg','list4detail.html?qid=1',2,2,2),
(null,'桂林市漓江景区',' 书是我的精神食粮.它 重塑了我的灵魂,当裴多菲说:[若为自由故.二者皆可抛".我懂得了作为人的价值,当鲁迅说:[不在沉默中爆发.就在沉默中灭亡
".我懂得了人应具有的反抗精神,当白朗宁说:[拿走爱.世界将变成一座坟墓".我懂得了为他人奉献爱心是多么重要.','../img/god3.jpg','list4detail.html?qid=1',3,3,3),
(null,'杭州市西湖风景名胜区','  用不着把年轻的心灵装点得沉重.表面上的沧桑.外在的严肃.并不能让你上升为哲人,离开所有的朋友.你有的只能是孤单的背影.
既然现在的我还不能变得深刻.那么.我就让自己变得轻松.哭丧着脸的人.怎能听清花开的响声,伪装自己的人.又怎能听懂蛙鸣一片里的激动.',
'../img/god4.jpg','list4detail.html?qid=1',4,4,4);

/****一楼跳list4****/
create table travel_list4_product(
   qid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   href varchar(48),
   pic VARCHAR(128),

   title1 varchar(64),
   details1 VARCHAR(128),
   href1 varchar(48),
   pic1 VARCHAR(128),

 title2 varchar(64),
   details2 VARCHAR(128),
   href2 varchar(48),
   pic2 VARCHAR(128),

 title3 varchar(64),
   details3 VARCHAR(128),
   href3 varchar(48),
   pic3 VARCHAR(128),

 title4 varchar(64),
   details4 VARCHAR(128),
   href4 varchar(48),
   pic4 VARCHAR(128),

 title5 varchar(64),
   details5 VARCHAR(128),
   href5 varchar(48),
   pic5 VARCHAR(128),

  title6 varchar(64),
   details6 VARCHAR(128),
   href6 varchar(48),
   pic6 VARCHAR(128),

  title7 varchar(64),
   details7 VARCHAR(128),
   href7 varchar(48),
   pic7 VARCHAR(128)
);
INSERT INTO travel_list4_product VALUES
(null,'高尔夫球','您可以在球道上迈出第一步，或者在比赛中将几杆射到Costa Navarino的两个标志性高尔夫球场。学习基础知识,
有经验的参与者将有机会在专家学费和广泛的实践设施的帮助下磨练自己的技能','list2detail.html?bid=1','../listimg/fourlist1.jpg',
'篮球和保龄球','最先进的体育和娱乐中心的室内选择提供数小时的乐趣，包括各种体育活动，如篮球，保龄球，排球，五人足球以及广泛的健身课程',
'list2detail.html?bid=1','../listimg/fourlist2.jpg',
'海滩瑜伽','通过海滩瑜伽放松和伸展，注重身体健康和心理健康，旁边是舒缓的声音和神奇的海洋光环。尝试更多进步SUP瑜伽在水上。
','list2detail.html?bid=1','../listimg/fourlist3.jpg',
'攀岩墙','甲95米2攀爬墙壁与各种攀登路线的等待初学者和有经验的登山者。测试你的技能！适合儿童和成人炎热的夏日。可根据要求提供经过认证的攀岩课程.',
'list2detail.html?bid=1','../listimg/fourlist4.jpg',
'骑自行车','骑自行车探索Navarino Dunes周围的山丘。加入我们经验丰富的自行车导游，分享他们对体育锻炼的热情，充满乐趣，积极的态度和汗水！',
'list2detail.html?bid=1','../listimg/fourlist5.jpg',
'徒步旅行','您可以探索卡拉马里（Kalamari）的瀑布，在小型游泳池的结晶水中游泳，或前往着名的Voidokilia海滩，徒步前往Palaiokastro城堡。',
'list2detail.html?bid=1','../listimg/fourlist6.jpg',
'皮划艇','皮划艇是一种适合所有年龄段的有趣运动方式。与朋友出发或参加前往Voirdokilia海滩的半日游。','list2detail.html?bid=1',
'../listimg/fourlist7.jpg',
'风筝冲浪','学习风筝冲浪，这将是一次令人难忘的经历，将改变您对海洋的看法。Romanos海滩提供初学者私人课程和经验教练的高级辅导',
'list2detail.html?bid=1','../listimg/fourlist8.jpg');





/****二楼****/
create table travel_indtwofl_product(
   tid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href   varchar(48)
);
INSERT INTO travel_indtwofl_product VALUES
(null,'崆峒山风景名胜区','豪华平凉市崆峒山风景名胜区四日游','../img/twofloor1.jpg','list2detail.html?bid=1'),
(null,'嘉峪关文物景区','豪华平凉市崆峒山风景名胜区四日游','../img/twofloor2.jpg','list2detail.html?bid=1');


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
'../img/threefloor1.jpg','list2detail.html?bid=1'),
(null,'领略大好风光','对于一颗高傲的心来说，莫大的屈辱不是遭人嫉妒，而是嫉妒别人，因为这种情绪向他暴露了一个他最不愿承认的事实：他自卑了',
'../img/threefloor2.jpg','list2detail.html?bid=1'),
(null,'领略大好风光','一个成熟的人是不会去刻意寻求外在的奖赏，以为故意做作的奖赏对人有时是一种愚弄',
'../img/threefloor3.jpg','list2detail.html?bid=1'),
(null,'领略大好风光','谁的经历不是平凡而又平凡？内心经历的不同才在人与人之间铺设了巨大的鸿沟',
'../img/threefloor4.jpg','list2detail.html?bid=1');


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
'../img/fourfloor1.jpg','list2detail.html?bid=1'),
(null,'领略风土人情','傣族泼水节','做人，都是人心换人心，珍惜换情深，你若无情，我又何必真心',
'../img/fourfloor2.jpg','list2detail.html?bid=1'),
(null,'领略风土人情','傣族泼水节','我们没有必要压抑自己，更没有必要去奉承巴结，保持我们应有的人格，才会赢得更多的尊重',
'../img/fourfloor3.jpg','list2detail.html?bid=1'),
(null,'领略风土人情','傣族泼水节','.我可以容忍，但是不要超过我的底线',
'../img/fourfloor4.jpg','list2detail.html?bid=1'),
(null,'领略风土人情','傣族泼水节','一定要记住，人生在世，自己过得开心就好，不争不抢，别人的生活永远都是别人的，只有自己开心才是最重要的',
'../img/fourfloor5.jpg','list2detail.html?bid=1'),
(null,'领略风土人情','傣族泼水节','.不要对谁特别好，也不要对谁特别不好，对一个人再好，八分满就足够，留下一些留给自己',
'../img/fourfloor6.jpg','list2detail.html?bid=1'),
(null,'领略风土人情','傣族泼水节','希望有一天，你能遇到那个愿为你弯腰的人。从此以后，其他人不过就是匆匆浮云',
'../img/fourfloor7.jpg','list2detail.html?bid=1');

/****五楼****/
create table travel_indfivefl_product(
   vid int primary key auto_increment,
   title varchar(64),
   details VARCHAR(128),
   pic VARCHAR(128),
   href varchar(48)
);
INSERT INTO travel_indfivefl_product VALUES
(null,'2018/09/06','风吹起如花般破碎的流年，而你的笑容摇晃摇晃，成为我命途中最美的点缀，看天，看雪，看季节深深的暗影','../img/fivefloor1.png','list1detail.html?wid=1'),
(null,'2018/06/16','记忆想是倒在掌心的水，不论你摊开还是紧握，终究还是会从指缝中一滴一滴流淌干净','../img/fivefloor2.jpg','list1detail.html?wid=1'),
(null,'2016/09/06','偶尔会想念童年时光，不知愁滋味，不用担责备，不会为别人心碎，不知人间苦累','../img/fivefloor3.jpg','list1detail.html?wid=1'),
(null,'2019/02/01','过去的一页，能不翻就不要翻，翻落了灰尘会迷了双眼','../img/fivefloor4.jpg','list1detail.html?wid=1'),
(null,'2018/12/12','一个不曾用自己的脚在路上踩下脚印的人，不会找到一条真正属于自己的路','../img/fivefloor5.jpg','list1detail.html?wid=1');


/****五楼跳list1****/
create table travel_list1_product(
   wid int primary key auto_increment,
   title varchar(64),
   subtitle varchar(64),
   details VARCHAR(800),
   subdetail1 varchar(500),
   subdetail2 varchar(500),
   subdetail3 varchar(500),
   subdetail4 varchar(500),
   pic1 VARCHAR(128),
   pic2 VARCHAR(128),
   pic3 VARCHAR(128),
   pic4 VARCHAR(128),
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
梦幻的霓虹灯撩拨着夜的静谧，那一抹岁月的斑斓在茫茫红尘中羞怯，犹如这八月的桂花一样随风飘香。",
"大智慧者必谦和，大善者必宽容，大骄傲者往往谦逊平和，有巨大成就感的人，必定也有包容万物，宽待众生的胸怀，小智者咄咄逼人，小善者斤斤计较，小骄傲才露出不可一世的傲慢脸相。",
"对于一颗高傲的心来说，莫大的屈辱不是遭人嫉妒，而是嫉妒别人，因为这种情绪向他暴露了一个他最不愿承认的事实：他自卑了。",
"人们往往把交往看作一种能力，却忽略了独处也是一种能力，并且在一定意义上是比交往更重要的能力。反过来说，不善交际固然是一种遗憾，不耐孤独也未尝不是一种很严重的缺陷",
"../listimg/onelist1.jpg","../listimg/onelist2.jpg","../listimg/onelist3.jpg","../listimg/onelist4.jpg","list2detail.html?bid=1");


















/****所有商品表****/
create table travel_all_product(
   bid int primary key auto_increment,
   yd varchar(28),  #预定href
   title varchar(32),  #主标题
   subtitle varchar(32),  #副标题
   price varchar(32), #价格
   live varchar(32), #入住方式

   limg1 varchar(32),  #四个轮播图片
   limg2 varchar(32),
   limg3 varchar(32),
   limg4 varchar(32),
  
   imgde1 varchar(32),  #五个商品图片
   imgde2 varchar(32),
   imgde3 varchar(32),
   imgde4 varchar(32),
   imgde5 varchar(32), 
   
   rtit varchar(32),       #右边风景介绍

   litext1 varchar(360),  #li显示的内容
   litext2 varchar(360), 
   litext3 varchar(360), 
   litext4 varchar(360), 
   litext5 varchar(360), 
   litext6 varchar(360), 
   litext7 varchar(360), 
   litext8 varchar(360), 

   xq1 varchar(64),     #横条
   xq2 varchar(64),     #横条
   xq3 varchar(64),     #横条
   xq4 varchar(64),     #横条

   xqimg1 varchar(64),  #横条下的图片 
   xqimg2 varchar(64),  #横条下的图片
   xqimg3 varchar(64),  #横条下的图片
   xqimg4 varchar(64),  #横条下的图片


   day1 varchar(32),    #行程 
   day2 varchar(32),    #行程
   day3 varchar(32),    #行程 
   day4 varchar(32),    #行程

   onedayde varchar(200),  #第一天行程安排 温馨提示

   twodayde varchar(200),  #第二天行程安排 温馨提示
   twojd1 varchar(20),     #第二天景点1
   twodayimg1 varchar(32), #第二天的图片
   twodayimg2 varchar(32), #第二天的图片

   threedayde varchar(32), #第三天 温馨提示
   threejd1 varchar(32),   #第三天 景点1
   threejd2 varchar(32),   #第三天 景点2
   threeimg1 varchar(32),  #第三天图片
   threeimg2 varchar(32),  #第三天图片
   threeimg3 varchar(32),  #第三天图片
   threeimg4 varchar(32),  #第三天图片

  fourde varchar(32),      #第四天 温馨提示  
  fourjd1 varchar(32),     #第四天景点
  fourimg1 varchar(32),    #第四天图片
  fourimg2 varchar(32),    #第四天图片
  fourimg3 varchar(32),    #第四天图片
  fourimg4 varchar(32)   #第四天图片
);





insert into travel_all_product values
(null,"list6.html","泰国,普吉岛及安达曼海岸","泰国安颐私人度假别墅","5888","标准入住",
"../listimg/onelb1.jpg","../listimg/onelb2.jpg","../listimg/onelb3.jpg","../listimg/onelb4.jpg",


"../listimg/twolist1.jpg","../listimg/twolist2.jpg","../listimg/twolist3.jpg","../listimg/twolist4.jpg","../listimg/twolist5.jpg",

" 泰国安颐私人度假别墅坐落于攀牙湾小长岛，Naga Concepts 设计公司将泰国北部的寺庙建筑元素融入别墅设计，打造出了这栋风格独具的奢华别墅。",

" 一定要记住，人生在世，自己过得开心就好，不争不抢，别人的生活永远都是别人的，只有自己开心才是最重",
" 繁华尽处，寻一处无人山谷，建一木制小屋，铺一青石小路，与你晨钟暮鼓，安之若素。",
" 希望有一天，你能遇到那个愿为你弯腰的人。从此以后，其他人不过就是匆匆浮云",
" 偶尔会想念童年时光，不知愁滋味，不用担责备，不会为别人心碎，不知人间苦累。",
" 岁月永远年轻，我们慢慢老去，你会发现，童心未泯，是一件值得骄傲的事情。",
" 如果我们都是孩子，就可以留在时光的原地，坐在一起一边听那些永不老去的故事一边慢慢皓首",
" 记忆想是倒在掌心的水，不论你摊开还是紧握，终究还是会从指缝中一滴一滴流淌干净",
"  如果我们都是孩子，就可以留在时光的原地，坐在一起一边听那些永不老去的故事一边慢慢皓首",

"这里是梦开始的地方","这里是梦开始的地方","这里是梦开始的地方","这里是梦开始的地方",

"../listimg/twolist2.jpg","../listimg/twolist3.jpg","../listimg/twolist3.jpg","../listimg/twolist3.jpg",

"各地,济南","济南,泰安","岱庙,曲阜","泰山,济南",

" 美妙旅程已经开始，请携带好有效证件自行前往火车站，乘坐高铁或动车，前往一城山色半城湖美誉的泉城-济南
终于来到了梦寐以求的度假圣地—济南。接站送往酒店。（24小时接站，让您行程无忧）感谢您的配合导游会在出团前一天22:00之前与您联系，
请保持手机畅通耐心等待~",

"美美的睡个懒觉~约上午11:30左右等待师傅接您开始我们愉快的旅程~","景点: 大明湖","../listimg/twolist4.jpg","../listimg/twolist5.jpg",

"美美的睡个懒觉~约上午10:30左右等待师傅接您开始我们愉快的旅程~","景点: 岱庙","景点: 孔庙","../listimg/twolist9.jpg",
"../listimg/twolist10.jpg","../listimg/twolist11.jpg","../listimg/twolist12.jpg",

"美美的睡个懒觉~约上午11:30左右等待师傅接您开始我们愉快的旅程~","景点: 泰山",
"../listimg/onelist1.jpg","../listimg/twolist2.jpg","../listimg/twolist3.jpg","../listimg/onelist1.jpg"

);


/****预订数据****/
create table travel_yuding(
   yid int primary key auto_increment,
   date varchar(16),   #入住日期
   night varchar(16),  #住几晚
   num varchar(32),   #房间及人数
   outdate varchar(16) #退房日期
);


/****预订成功****/
create table travel_yd_success(
   sid int primary key auto_increment,
   date varchar(16),   #入住日期
   night varchar(16),  #住几晚
   num varchar(32),   #房间及人数
   outdate varchar(16), #退房日期
   adult int(2),   #成人数量
   childsum int(2),  #儿童数量
   sex BOOl,       #先生还是女生
   xings varchar(10), #姓氏
   sname varchar(32),  #名字
   phone int(16),
   email varchar(12),   
   weixin varchar(22),  #微信
   other varchar(200)  #其他
);



/****私人定制****/
create table travel_dz(
   did int primary key auto_increment,
   dest varchar(32),   #目的地
   dzzt varchar(64),   #出行主体
   date varchar(16),   #出发日期
   gocity varchar(32),  #出发城市
   night varchar(16),  #玩几天
   jibei varchar(2),   #酒店级别
   yusuan varchar(32),   #单人预算
   rom varchar(32),   #房间数
   adult int(2),   #成人数量
   childsum int(2),  #儿童数量
   languang varchar(32),  #语言
   xuqiu varchar(200), #特殊需求
   xings varchar(10), #姓氏
   sname varchar(32),  #名字2019/4/3
   phone int(16),
   email varchar(12),   
   weixin varchar(22),  #微信
   lxtime varchar(24)
);











