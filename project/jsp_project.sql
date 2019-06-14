CREATE DATABASE  IF NOT EXISTS `jsp_project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jsp_project`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: jsp_project
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad` (
  `ADID` int(11) NOT NULL AUTO_INCREMENT,
  `ad_file` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `akternate` text NOT NULL,
  `adcontent` text NOT NULL,
  PRIMARY KEY (`ADID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (1,'ad1.gif','localhost:8080/test/project/html/','play store 遊戲銷售','play store 遊戲銷售'),(2,'ad1.gif','localhost:8080/test/project/html/','play store 遊戲銷售','play store 遊戲銷售'),(3,'ad2.gif','www.trivago.com.tw/','trivago','triavago'),(4,'ad3.gif','www1.kfcclub.com.tw/tw/','肯德基','肯德基'),(5,'ad4.gif','www.google.com/','google','google'),(6,'ad5.gif','www.uniqlo.com/tw/','uniqlo','uniqlo');
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `car_no` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` varchar(45) NOT NULL,
  `product_id` varchar(45) NOT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `product_number` varchar(45) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `original_price` int(11) DEFAULT NULL,
  `product_left` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`car_no`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (80,'1','B1','惡靈古堡7','1',1400,1400,'27'),(82,'1234','B1','惡靈古堡7','1',1400,1400,'27');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `count` bigint(20) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (53);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `name` varchar(10) NOT NULL,
  `id` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`pwd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('dennis','1','1','japan','man','12','1'),('范姜','11','123','台灣','man','1',''),('dennis','123','123','台灣','man','',''),('1234','1234','1234','','man','',''),('你','aa','123','','man','',''),('范姜','aaa','aaa','台灣','man','1','1'),('你','BB','123','台','woman','123','123'),('Nancy','happy','time','taiwan','woman','1','abc@gmail.com'),('管理員','yy','1234','taiwan','man','1234','yy@gmail');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_form`
--

DROP TABLE IF EXISTS `order_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` varchar(45) DEFAULT NULL,
  `product_name` text,
  `price` varchar(45) DEFAULT NULL,
  `pay_way` varchar(45) DEFAULT NULL,
  `howto` varchar(45) DEFAULT NULL,
  `coupon` varchar(45) DEFAULT NULL,
  `person` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_form`
--

LOCK TABLES `order_form` WRITE;
/*!40000 ALTER TABLE `order_form` DISABLE KEYS */;
INSERT INTO `order_form` VALUES (11,'1','仙劍奇俠傳4*2<br>惡靈古堡7*2<br>','3600','7-11取貨付現','7-11取貨','','范姜','america',1,'a','2019-06-07'),(12,'1','惡靈古堡7*1<br>陰屍路:第二季*3<br>刺客教條:兄弟會*3<br>','8900','7-11取貨付現','7-11取貨','威秀電影票乙張','好玩','讚讚',11,'a','2019-06-07'),(13,'1','古墓奇兵：崛起*2<br>陰屍路:第二季*1<br>古墓奇兵：光之守護者*1<br>','5600','信用卡線上刷卡','7-11取貨','威秀電影票乙張','范姜','a',1,'as','2019-06-12'),(14,'aa','刺客教條:奧德賽*3<br>陰屍路:第一季*1<br>','6050','7-11取貨付現','7-11取貨','','AA','AA',123,'123','2019-06-13'),(15,'aa','古墓奇兵：地城奪寶*1<br>陰屍路:第三季*3<br>','5200','7-11取貨付現','7-11取貨','','AA','AA',123,'123','2019-06-13'),(16,'aa','陰屍路:第二季*4<br>','5200','7-11取貨付現','7-11取貨','威秀電影票乙張','AA','台灣灣',123,'123','2019-06-13'),(17,'aa','陰屍路:第二季*4<br>','5200','7-11取貨付現','7-11取貨','抽獎券乙張','1111','1111',11,'11','2019-06-13');
/*!40000 ALTER TABLE `order_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_note` text NOT NULL,
  `product_price` varchar(45) NOT NULL,
  `product_left` varchar(45) NOT NULL,
  `product_rightnote` text,
  `product_downnote` text,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('A1','新仙劍奇俠傳','《仙劍奇俠傳》是由台灣大宇資訊開發，並於1995年7月出品的DOS電子角色扮演遊戲。遊戲之後移植於Windows 95平台和SEGA土星遊戲機。2001年，基於《軒轅劍參》引擎的重製版《新仙劍奇俠傳》發行，該版本升級了畫面，並在保持主線劇情的情況下修改了部分劇本。故事以古代中國為背景，以武俠為題材，宿命為主軸。','399','2','首次 發行日於1995年7月7日登錄於DOC玩家以第三人稱視角控制屏幕中的角色，與遊戲中的人物、對象和敵人互動。遊戲地圖，採用斜45度視角。遊戲沒有採用隨機遇敵方式，敵人會顯示在地圖上。玩家可以選擇避開或與其接觸進入戰鬥。當發生戰鬥後，屏幕會切換到專門的戰鬥畫面。戰鬥採用第三人稱回合制戰鬥，和地圖同樣採用斜45度視角。玩家至多能同時控制三名角色。','大宇2001年出品的角色扮演遊戲，採3D斜角畫面呈現，以團隊回合方式 戰鬥。劇情以苗族及女媧為主要題材，故事則描寫主角李逍遙與趙靈兒、林月如等人的生死戀情。本遊戲其實是利用軒轅劍3的遊戲引擎改編重製 DOS版的仙劍奇俠傳，因此原版的支線道具、仙術、怪物等，除了少部 份略做新增與變更外，其他大部份都加以沿用，甚至某些bug都繼承了下 來。新仙劍最大的變動是迷宮、傷害計算公式、煉蠱皿、靈葫煉藥、以 及隱藏結局這幾個部份。由於各種攻擊傷害被大幅減低，使得初期的戰 鬥比原版困難很多，但只要拿到煉蠱皿，藉由煉化來不斷增強能力，戰 鬥反而比原版簡單很多。遊戲平衡上雖然做得不算是很好，但加入類似 煉妖壺的煉蠱系統，還是值得讚許的。至於額外增加的隱藏結局，反而 導致最終的劇情有點突兀與混亂，其褒貶不一。綜合來看，本遊戲雖然 有不少缺點，但基本上還算是成功的，值得喜好仙劍的玩家來體驗另一 種版本的仙劍奇俠傳。'),('A2','仙劍奇俠傳3','《仙劍奇俠傳三》是由大宇資訊旗下上海軟星製作的角色扮演遊戲，於2003年7月31日推出，為仙劍奇俠傳系列的第三代作品，主題為「輪迴」。故事環繞在兩把劍，述說著主角兩個前世與今生的糾葛。於2017年5月24日宣布重製，採用3D技術。並加入新配音及原本音樂','500','2','首次 發行日於2003年7月31日登錄於PC','遊戲劇情年代設定為故事初代50年前。從本作開始，仙劍奇俠傳系列確立了五靈（水、火、雷、風、土）六界（神、魔、鬼、人、妖、仙）的世界觀。渝州最大當鋪──永安當的夥計景天每日幻想能富甲天下或成為蜀山劍仙，認識了當鋪主人唐家堡的大小姐雪見。同雪見、雪見的寵物五毒獸花楹展開冒險。在結識蜀山派棄徒徐長卿及其戀人紫萱後，開始為協助蜀山找尋失散各地的五顆靈珠。另一面愛慕紫萱的魔尊重樓與景天前世神界神將飛蓬惺惺相惜，為助景天而交予他其另一前世姜國王子龍陽所鑄魔劍。景天又遇到劍中宿靈的龍陽妹妹龍葵。在與主要敵人邪劍仙的糾纏鬥爭中，冒險完全展開。'),('A3','仙劍奇俠傳4','《仙劍奇俠傳四》是仙劍奇俠傳系列的第五部作品，由臺灣大宇資訊公司於上海成立的子公司上海軟星製作的角色扮演遊戲，於2007年8月1日在亞洲地區推出，本作的主題為「尋仙」','400','18','首次 發行日於2007年8月1日登錄於PC。','不再以歷代的蜀山為背景，使用了全新的崑崙山瓊華派為背景。於青鸞峰上生活的雲天河在捕獵野豬時，撞見一名少女韓菱紗正準備闖入父母墓室。兩人誤打誤撞前往墓室之際，雲天河身上的望舒劍突然發生異樣。雲天河將望舒一揮，頓時破壞整個墓室。其後雲天河為得昔父母往事而隨菱紗下山，機緣巧合下分別結識了壽陽柳家令千金柳夢璃和崑崙瓊華派弟子慕容紫英並結為好友。在上天入地的求仙之旅中，雲天河漸漸知曉了一件陳年舊事，並由此引出了重重疑雲。自己的父母為何隱居青鸞峰？父母的墓室中為何會有一層堅冰？父親似乎是一位用劍高手，卻為何從不向自己傳授高深的武學？昆侖派為修仙不惜一切代價，其背後到底隱藏著怎樣的秘密？隨著那掩埋在歲月風沙之下的沉重往事日漸清晰，重重謎團終將完全解開，而迷途的終點，卻又是另一場驚人的災難與情劫……'),('B1','惡靈古堡7','《惡靈古堡7》（日版名：バイオハザード7 レジデント イービル，BIOHAZARD 7 resident evil，英文版名：Resident Evil 7:Biohazard，中國大陸譯作「生化危機7」，香港譯作「生化危機7 惡靈古堡」）是一款由卡普空開發與發行惡靈古堡系列恐怖遊戲。海外版、日本版於2017年1月24日、26日發行，登陸PlayStation 4、Xbox One和Windows平台，並全程支援PlayStation VR。於2018年5月24日以雲端版本登陸任天堂Switch。','1400','27','首次 發行日2017年1月24日登陸 PS4、XBox One、PC。《惡靈古堡7》以第一人稱視角進行。玩家可以使用武器與敵人作戰，其它解謎、資源管理和草藥治療等流行元素也會在《惡靈古堡7》得以延續。本作決定回歸一代的恐怖體驗，另一方面，也去除了快速反應事件（QTE）元素。該作大量使用了心理暗示、一驚一乍、血腥與令人感到噁心的元素等傳統恐怖片的嚇人方法。','本作採用第一人稱視角增加恐怖氣氛，其次是配合PSVR版本的推出。藉助PSVR，能使玩家每一次玩的體驗都非常緊張，進而增加遊戲的耐玩度。本作延續難度調整系統，可根據玩家的實際發揮，在遊戲進行的過程中自動適當調整難度。作為增多了解密要素的遊戲，本作控制了謎題的難度，不會有太難的謎題出現。2017年，一名平凡男性市民「伊森·溫特斯」，突然收到3年前原本以為已身亡的妻子「米婭」的訊息，為了追尋米婭於是前往美國路易斯安那州一處名為「達爾維」的城鎮。在一處廢棄大宅中尋找愛妻時卻被襲擊，醒來後發現已經被困，被「貝克」家族「招待」。'),('B2','惡靈古堡:啟示','《惡靈古堡：啟示》(日版名：日語：バイオハザード リベレーションズ，Biohazard Revelations；英文版名：英語：Resident Evil: Revelations)是卡普空於2012年1月26日發行的動作驚悚遊戲，其平台為任天堂3DS。由於本系列一直以來多往家用主機開發，因此本作乃GBC《惡靈古堡 Gaiden(未被官方列為正史)以來，系列史上第二部開發在掌機上的作品。','1600','23','首次 發行日2012年1月26日登陸 3DS。本作除了英文配音和日、英文字幕之外還首次加入日文、法文、義大利文、德文及西班牙文的配音及法、義、德及西文的字幕，在遊戲中的設定模式(Option Mode)裡可切換配音和字幕。','2004年，恐怖主義集團灰獵犬(Veltro)因對地中海海上城市「浮島」(Terragrigia，又稱Grey Earth)的太陽能發展不滿而派出生化武器進行襲擊，聯邦生化恐怖委員會(Federation Bioterroism Commission，簡稱FBC)特工(包括潔西卡·席拉瓦德(Jessica Sherawat)和帕克．路奇亞尼(Parker Luciani))前往對應，城市最終被摧毀廢棄，事件被稱為浮島恐慌(Terragrigia Panic)。2005年，灰獵犬據報有復活跡象，生化恐怖主義安全評估聯盟(Bioterrorism Security Assessment Alliance，簡稱BSAA)成員克里斯．雷德菲爾(Chris Redfield)與潔西卡因此前往調查，但二人在郵輪潔諾比亞女王號(Queen Zenobia)發出最後訊號後失去聯絡。聯盟主席克萊夫．R．奧布萊恩(Clive R. OBrian)遂派遣吉兒．范倫廷(Jill Valentine)與帕克尋找二人下落。因此BSAA與恐怖組織的對決正式拉開序幕。'),('B3','惡靈古堡零(重製版)','《惡靈古堡0》（日版名：バイオハザード0，biohazard 0，英文版名：Resident Evil Zero，中國大陸和香港譯作「生化危機0」是卡普空開發的電子遊戲，是《惡靈古堡》的前傳，於2002年11月21日發售。本作原本計劃在任天堂64上發售，由於任天堂64的機能不足與遊戲開發進度的拖延而決定在下一代任天堂GameCube上發售。但由於GameCube不景氣的情況所累，本作雖然畫面與遊戲性都有所創新，卻銷售不佳。','1500','0','首次 發行日 2002年11月21日 登陸 GameCube，後因銷售不佳，重新銷售，並於2016年推出高畫質復刻版「惡靈古堡0 HD」（Biohazard Zero HD Remaster）。','故事開始發生在1998年7月23日的一列火車上，車上乘客受到不明掉落的怪物襲擊而全數死亡。兩個小時後，S.T.A.R.S.的布拉弗隊（Bravo Team）前往拉昆市郊外調查離奇殺人事件時，小隊直昇機引擎故障而降落。 降落時發現了一輪押犯車，而負責押送的士兵已經死亡，得知車上的死刑犯是殺了23個人而被判死刑的海軍陸戰隊少尉比利（ビリー·コーエン，Billy Coen)，小隊隊長下令展開搜尋，這時隊員蕾貝卡發現了因遇襲而停滯的火車，進而進入搜查，卻發現上面的乘客全變成殭屍......'),('B4','惡靈古堡二(重製版)','《惡靈古堡2 重製版》（日版名：バイオハザード RE:2，Biohazard RE:2，英文版名：Resident Evil 2，中國大陸和香港譯作「生化危機2 重製版」是一款由卡普空開發與發行在PlayStation 4、Xbox One和Microsoft Windows等平台上的第三人稱射擊恐怖遊戲。本作是《惡靈古堡2》的完全重製版本。遊戲於2019年1月25日上市，包含中文字幕與現代標準漢語配音。','1600','32','首次 發行日1998年1月21日登陸PlayStation，新人警官里昂·史考特·甘乃迪（Leon Scott Kennedy）來到拉昆市警察局上任。但是，在進入市區以後卻遭遇了被T病毒感染的殭屍。','同一時刻，S克蕾兒·雷德菲爾（Claire Redfield），為了尋找失去音訊的哥哥也來到了拉昆市，並且也遭遇了殭屍，因此兩人陰錯陽差的相遇了。相遇後，兩人計劃結伴去拉昆市警察局，但在路途中卻遭遇了車禍，兩人被爆炸的油罐車所引燃的火災分開了。兩人在火焰的兩邊約定：各自找到去警察局的路，然後在那裡碰頭，於是，遊戲的雙劇情線由此展開。並於2019年1月25日發佈高畫質重製版本惡靈古堡2 (重製版)登陸PlayStion 4、Xbox One以及Windows平台。'),('B5','惡靈古堡四','《惡靈古堡4》（日版名：バイオハザード４，biohazard 4，英文版名：Resident Evil 4，中國大陸和香港譯作「生化危機4」）是2005年由卡普空第四開發部（卡普空 Production Studio 4）開發，並由卡普空發行的電子遊戲，最早為GameCube平台作品，其後被移植至PlayStation 2、Wii及Windows上。《惡靈古堡4》也是第一款支援Dolby Digital Pro-Logic 2 Surrround環繞音效的系列作。','1200','21','首次 發行日2005年1月11日登陸 GameCube本作亦引進金錢買賣系統，可利用在環境內或擊敗敵人而拾獲的金錢向武器商人購買武裝和補給品，或是出售物品以換取金錢。主角生命值與可攜帶物品量可透過使用特殊藥草和增加貯藏箱容量而逐漸提高。本作容許無限次進度儲存。本集廢除第三人稱固定鏡頭或3D轉換視角，改為第三人稱肩後視點，同時使用動作捕捉技術（Mo-Cap）使角色動作更真實。','2004年（《惡靈古堡2》六年後），保護傘公司製作的T病毒因洩漏導致生化災害，連串的負面新聞導致公司股票價格暴跌。美國聯邦政府在各國政府的壓力下暫停保護傘公司的業務，其後公司便宣告破產，所有地下研究中斷，T病毒的傳播得以停止。當年被捲進拉昆市惡靈古堡之前警員里昂·史考特·甘乃迪（Leon S. Kennedy）已成為美國總統直轄的最高機密組織成員，奉命到西班牙某村莊營救總統被拐去的女兒愛旭莉·葛拉漢（Ashley Graham）。里昂發現所有村民均與他敵對，且在對抗時發現他們效忠於一個名為「光明教團」（Los Illuminados）之邪教團體。因此里昂最嚴苛的冒險就此展開。'),('B6','惡靈古堡五','《惡靈古堡5》是系列本篇的新作，已於2009年3月5日在日本同時推出PlayStation 3及XBOX 360版本，北美版為2009年3月13日，PC版預計在2009年9月17日在日本推出。惡靈古堡5是首度支援連線雙人合作過關的正篇故事，而傭兵模式中還支援分割畫面的形式供2位玩家協力挑戰。三上真司不負責本作，表示自己並不會去玩該遊戲，並稱其劇本為「一個失敗的創作」。','1300','12','首次 發行日2009年3月5日登陸 PlayStation 3。二人在消滅了該不明生命體後把硬盤內的資料傳回本部並奉命繼續追捕亞文。因此兩人的正式任務就此展開。本集增加了對戰模式，而PC版本則沒。','2009年，已成為生化恐怖主義安全評估聯盟（Bioterrorism Security Assessment Alliance，簡稱BSAA）成員的克里斯·雷德菲爾被部署到非洲小鎮吉鳩就（Kijuju），與席娃·亞洛瑪合作逮捕試圖在黑市出售生化武器的里卡德·亞文（Ricardo Irving）。當地被強迫餵食寄生體的居民迅速變成馬吉尼（Majini）並多次向二人作出攻擊。在前往亞文交易地點時，克里斯和席娃發現Alpha隊伍被不明生命體殺死，在場奄奄一息的隊長迪恰恩特（Dechant）在死前交出了一個裝有亞文資料的硬盤。'),('C1','刺客教條:奧德賽','《刺客教條：奧德賽》（英語：Assassins Creed Odyssey，中國大陸譯作「刺客信條：奧德賽」）是一款由育碧魁北克開發，育碧發行的動作角色扮演遊戲，是刺客教條系列的第二十部作品和第十一部主系列作品，2017年《刺客教條：起源》的後繼作品。遊戲上市於2018年10月5日，在Microsoft Windows、PlayStation 4、Xbox One和任天堂Switch平台全球發售，其中任天堂Switch版本將採用雲端計算的遊戲方式進行。','1600','31','首次 發行日於2018年10月5日，登錄於PC、PS4、Xbox 360、Switch。遊戲中有專精系統，玩家可以扮演三個不同的專精：戰士、刺客、獵人。每個專精都有各自的獨特技能，如戰士的斯巴達踢擊；也有各自的專精天賦技能樹，玩家可以此加強被動能力及解鎖新技能。三個專精中，「戰士」提高近戰能力，「刺客」加強潛行能力，「獵人」則改善箭術能力。此外，前作中的盾牌系統被移除，改以閃避與格擋招架系統代替，使遊戲更有動作感。遊戲新加入裝備系統，每件的裝備都有不同的資料，優點與缺點。','加強了角色扮演元素。遊戲將包含對話選項、分支任務和多結局。玩家可選擇男性主角亞歷克西歐斯（Alexios）或女性主角卡珊卓（Kassandra）。無論選擇哪種性別，玩家都可以與男女非玩家角色發展戀愛關係。遊戲有一個懸賞系統，玩家在遊戲所造的每個行為或決定都會令某個勢力不滿，致使他們雇用雇傭兵襲擊玩家，隨著不滿指數的上升，雇傭兵的出現數量與頻率也會提高。主角為斯巴達國王列奧尼達一世的後裔，遊戲中為一名僱傭兵。繼承了國王的列奧尼達斯斷矛，玩家藉此擁有了特殊的戰鬥能力。本作中，深受玩家喜愛的海戰元素回歸，玩家可以擁有個人的戰船，並可對其進行升級，招募新副手上船，以探索愛琴海更遠的海域以及應付更危險的海戰。遊戲另有勢力衝突系統，玩家可支援斯巴達或雅典的任一方，雙方將進行征服戰；以目前所知，在此戰鬥系統中的影響不會對故事造成任何影響。'),('C2','刺客教條:起源','刺客教條：《起源》（英語：Assassins Creed Origins，中國大陸譯作「刺客信條：起源」）是一部由育碧蒙特婁開發由育碧公司發行的動作冒險遊戲。本作是刺客教條主系列的第十部作品，也是系列首次把時間線推前到刺客教條初代以前。遊戲將於2017年10月27日發售在PlayStation 4、Xbox One和Microsoft Windows等平台；同時將支援新的Xbox One X主機。','1500','42','首次 發行日於2017年10月27，登錄於PC、PS4、Xbox 360。同時，法老的守護者已經失去了原來的作用，最後的守護者巴耶克仍執行著家族歷代以來的傳統，守護著埃及與阿蒙的神殿。可是在某日，五名戴著假面的男子挾持了巴耶克的兒子卡慕，脅迫他說出阿蒙神殿的寶物庫的開啟方式，否則就要殺害卡慕，但巴耶克即使說出自己真的不知道開啟寶物庫的方法，卡慕仍慘遭面具男子的殺害。','遊戲的舞台是在托勒密王朝及埃及豔后統治下的埃及，玩家所操控的角色是一位隸屬於法老的護衛，稱為守護者（Medjai），來自錫瓦（Siwa）名為巴耶克（Bayek）的埃及刺客。2017年，Abstergo的員工蕾拉·哈桑被指派到埃及，她在那裡發現了一具木乃伊，並利用自己開發的攜帶型Animus開始回溯該具木乃伊的記憶，在西元前49年，統治埃及的克麗歐佩特拉七世與托勒密十三世之間發生了戰爭，時局動盪不安。'),('C3','刺客教條:梟雄','刺客教條：《梟雄》（英語：Assassins Creed Syndicate，中國大陸譯作「刺客信條：梟雄」）是一部由育碧魁北克開發、育碧公司發行的第三人稱歷史奇幻動作冒險遊戲。本作是刺客教條主系列的第九部作品，登陸於PlayStation 4、Xbox One和Microsoft Windows平台','1500','0','首次 發行日於2015年10月23日，登錄於PC、PS4、Xbox 360。引進主角切換設定，也能首次在系列主要作品中使用女性主角。兩名主角可利用新引進之繩索發射器迅速攀上建築物或於兩個壁面間造出溜索作迅速滑行，市內亦將有馬車和火車協助主角來往兩地。戰鬥節奏將比前作更高，一眾敵人將同時對主角進行攻擊，屋頂、馬車頂部和火車車廂頂部亦可以作為戰鬥地點。','1868年，英國刺客組織已近滅絕，首都倫敦被聖殿騎士團和黑幫組織「暴徒幫」全面控制。刺客姊弟雅各和伊薇於克勞利各自刺殺了騎士團工業家盧波特·費里斯與科學家大衛·布魯斯特後前往倫敦，在印籍刺客亨利·葛林安排下按各自的方式解放城市：雅各欲成立幫派「黑鴉幫」對抗暴徒幫和刺殺各騎士團要員；伊薇則欲找尋先父追尋的伊甸碎片。'),('C4','刺客教條:大革命','《刺客教條：大革命》（英語：Assassins Creed Unity，中國大陸譯作「刺客信條：大革命」）是育碧公司開發的一部動作冒險隱蔽類遊戲。本作是《刺客教條系列》的第八部作品，登陸PlayStation 4、Xbox One 和Microsoft Windows 平台。','1200','26','首次 發行日於2014年11月13日，登錄於PC、PS4、Xbox 360。','新增潛行模式，自由奔跑與戰鬥系統被重新處理，使主角能更迅速地攀上建築物和從高處返回地面；連殺系統被廢除，變更為以劍擊為基礎的系統以提高對戰鬥技術的考驗。於各任務之間，主角可進行多項支線活動。遊戲首次引進服飾個人化及強化系統：有別於以往作品中主角之服裝乃一整套的袍子而必須全套更換，主角進行指定行為（如特定刺殺方式、跑酷、同步殺敵等）後可取得「教條點數」（Creed point）用作強化服飾和武裝。作為一名Helix 使用者之一的玩家進入聖殿騎士團最後一任大團長兼「聖者」（Sage）雅克·德·莫萊（Jaques de Molay）的一段記憶。1307年，刺客組織襲擊聖殿騎士團位於法國聖殿塔的總部，莫萊託部下到地下密室藏好其管有之人類以前「第一文明」（First Civilization）遺物「伊甸之劍」（Sword of Eden）和一部法典後被捕和處死。此時現代刺客組織接觸玩家，表示Abstergo 欲重組第一文明基因組從而實行一項目的不明的「鳳凰計畫」（Phoenix Project）'),('C5','刺客教條:兄弟會','《刺客教條：兄弟會》（Assassins Creed: Brotherhood）是育碧公司的蒙特婁工作室開發的一款第三人稱歷史奇幻類遊戲。它支援Microsoft Windows、PlayStation 3 和Xbox 360 三個平臺。本作是育碧公司2009年遊戲《刺客教條II》的續集，已經發行在市面上。另於2016年11月17日在PlayStation 4 和Xbox One 發售與《刺客教條II》和《刺客教條：啟示錄》三部曲合併的《刺客教條：埃齊歐合輯》。2017年5月23日提供簡體中文支援。','1200','51','首次 發行日於2010年11月16日，登錄於PC、PS3、Xbox 360。','新增見習刺客管理系統：在解除一區域內之教宗勢力後，主角可拯救被迫害的市民並招覽其進入刺客兄弟會以派遣他們到歐洲各地執行任務，或在任務進行時作出支援。本作除繼續新增更多戰鬥動作、可使用武器和敵兵種類，也首次強調採取主動及先制之戰鬥風格：有別於前二作偏重反擊，本作加強敵兵之兇暴性並引入連殺系統：在成功殺死一個敵兵後，主角可運用連殺以便快速消減敵兵數量。承接前作的城鎮重建及商店投資系統，本作將之擴大至可以重建整個羅馬市。本作也在任務中首次引入100%同步要求設定：部分記憶須滿足特定要求才能達至完全同步。'),('C6','刺客教條:啟示錄','《刺客教條：啟示錄》（Assassins Creed: Revelations）是育碧公司的蒙特婁工作室開發的一款第三人稱歷史奇幻類遊戲。它支援Microsoft Windows、PlayStation 3和Xbox 360三個平臺。另於2016年11月17日在PlayStation 4和Xbox One發售與刺客教條II和刺客教條：兄弟會三部曲合併的刺客教條：埃齊歐合輯。2017年7月11日提供簡體中文支援。','1600','22','首次 發行日於2011年11月15日，登錄於PC、PS3、Xbox 360。','緊接前作，現代刺客戴斯蒙·邁爾斯（Desmond Miles）與同伴露西·斯蒂爾曼（Lucy Stillman）、肖恩‧海斯汀（Shuan Hastings）及麗貝卡‧克琳（Rebecca Crane）已在朱諾神殿尋得「第一文明」（First Civilization）古代遺物「伊甸碎片」（Piece of Eden），而戴斯蒙於刺死露西後陷入昏迷狀態並被送返基因記憶追溯機器「Animus 2.0」以免精神崩潰。於安全模式「黑房」（Black Room）中，戴斯蒙遇上第十六實驗體之意識，獲告悉必須進入其兩名刺客祖先阿泰爾·伊本·拉哈德（Altaïr ibn La-Ahad）以及艾吉奧·奧迪托雷·達·佛羅倫斯（Ezio Auditore da Firenze）仍未讀取的記憶，使Animus 2.0能把三人的記憶分開，重組其意識從而甦醒。於黑房中，戴斯蒙除探索記憶也回憶自己的過去：從小在森林接受各項刺客訓練，但在渴望自由下於十六歲逃走，乘坐便車到達紐約後以酒保為業，最終被跨國製藥公司Abstergo（現代聖殿騎士團）尋獲和脅逼成為Animus實驗體，至此始後悔沒有重視刺客的訓練和承認自己乃一名刺客。新增炸彈製作系統：炸彈之種類、成分及炸藥均可自行設定及製造。'),('C7','刺客教條:黑旗','《刺客教條IV：黑旗》（英語：Assassins Creed IV: Black Flag））是育碧公司蒙特婁工作室開發的一款動作冒險歷史奇幻類遊戲。本作是《刺客教條》主系列的第六部作品兼第四款正統續作，亦是《刺客教條III》的前傳。2018年3月8日提供簡體中文支援。','1400','62','首次 發行日於2013年10月29日，登錄於PS3、Xbox 360、PC、PS4、Xbox One、Wii U。','本作強化海戰與動態天氣系統，首次引進以加勒比海為版圖的開放式海上世界。主角可在海底及海島間尋找寶物、掠奪船隻，進行海上狩獵以及攻佔沿海碉堡。見習刺客招攬與管理系統被刪除，改為招募各處被英軍攻擊的海盜至旗艦「寒鴉」（The Jackdaw）以壯大船員隊伍。背景將回到1715年的加勒比海，海盜在此建立起無法無天的國度，腐敗、貪婪以及兇殘手段早已司空見慣。玩家將扮演年少輕狂的叛逆刺客「愛德華·肯威」，他是海爾森的父親、也就是前作主角「康納」的祖父。這位海盜船長能駕輕就熟地使用刺客組織的袖劍以及全新的武器，包括全身上下四把燧發槍以及雙手各持西洋彎刀等戰鬥姿態。'),('D1','陰屍路:第一季','《陰屍路》（英語：The Walking Dead）是改編自羅伯特．柯克曼（Robert Kirkman）的漫畫作品陰屍路的互動式冒險遊戲，分別在iOS、Mac OS X、Microsoft Windows、PlayStation 3及Xbox 360平台推出。由Telltale Games製作，第一季共五個章節，由2012年6月至11月分階段推出。與原創漫畫相同，遊戲故事發生在虛構的世界的美國喬治亞州，殭屍爆發事件後。但遊戲角色大部分皆全新創作。第一季以大學教授及已定謀殺罪的李·埃弗里特為中心，過程中拯救及暫時地照顧小女孩克萊門汀。','1250','25','遊戲類型：動作冒險。遊戲平台：/PC/PS3/Xbox360。遊戲制作：TellTale Games。遊戲發行：TellTale Games。',' 此遊戲是圖像形式的冒險遊戲，配合不同鏡頭角度以第三人稱進行遊戲。玩家會遇上其他生還者團隊，合力在殭屍爆發的環境下生存。玩家可向其他角色及物品進行檢查及互動，及利用物品來生存。玩家的抉擇會決定與其他角色的互動。遊戲故事發生在虛構的世界的美國喬治亞州，殭屍爆發事件後。但遊戲角色大部分皆全新創作。第一季以大學教授及已定謀殺罪的李·埃弗里特（Lee Everett）為中心，過程中拯救及暫時地照顧小女孩克萊門汀（Clementine）。'),('D2','陰屍路:第二季','《陰屍路：第二季》（英語：The Walking Dead: Season Two）是電子遊戲《陰屍路》第一季的續集，以Robert Kirkman原創漫畫《陰屍路》為本的冒險遊戲。遊戲由Telltale Games開發。第二季第一集數位版在2013年12月起發售，零售DVD版則會在整季完結後發售。第二季繼續由第一季相同演員旁白聲演。玩家在第一季、額外集數《陰屍路400天》（The Walking Dead 400 Days）和第二季內的決定都會被記錄，永久影響接下來的劇情。本來第一季出現的克萊門汀會在第二季成為遊戲主角。','1300','34','遊戲類型：動作冒險。遊戲平台：/PC/PS3/Xbox360。遊戲制作：TellTale Games。遊戲發行：TellTale Games。','《行屍走肉：第二季》將繼續講述前作中女孩克萊芒蒂娜的故事，她要在喪屍攻陷的世界中生存下來，並且尋找出路。玩家扮演的這個普通女孩在遊戲中的敵人不僅僅是喪屍，還有這個道德淪陷世界中的人類，你必須把控劇情走向，做出自己的選擇。'),('D3','陰屍路:第三季','《行屍走肉》系列是由美劇改編的恐怖生存遊戲，系列遊戲的重點並不是打殭屍或者是動作，遊戲旨在刻畫人類在極端環境下的狀態以及如何去建立一個人物關係，劇情是絕對不可逆的。每個章節都會對後續章節做出影響，這也增加了遊戲的遊戲性增加了重複遊戲的價值，也許這一點就是遊戲的價值所在，根據個人喜好安排劇情走向是非常吸引人的亮點。《行屍走肉：第三季》會在2016年發售，故事將承接部分第二季劇情。 ','1400','30','遊戲類型：動作冒險。遊戲平台：/PC/PS3/Xbox360。遊戲制作：TellTale Games。遊戲發行：TellTale Games。','這一季會以古巴裔美籍Javier García（哈維賈西亞）的視角來進行遊戲。巧遇前兩季可愛的小蘿莉Clementine（柯里文坦，也是玩家過去飾演的角色）後並肩作戰，但在第二與第三季故事間隔的三年間，Clementine似乎藏著相當驚人的秘密，這些秘密勢必衝擊著團隊內的人際關係與作戰計畫。'),('D4','陰屍路:第四季','《行屍走肉》系列是由美劇改編的恐怖生存遊戲，系列遊戲的重點並不是打殭屍或者是動作，遊戲旨在刻畫人類在極端環境下的狀態以及如何去建立一個人物關係， 劇情是絕對不可逆的。每個章節都會對後續章節做出影響，這也增加了遊戲的遊戲性增加了重複遊戲的價值，也許這一點就是遊戲的價值所在，根據個人喜好安排劇情走向 是非常吸引人的亮點。《行屍走肉：第四季》會在2018年發售，故事將承接部分第三季劇情 以及第二季 AJ等事蹟。 ','1500','9','遊戲類型：動作冒險。遊戲平台：/PC/PS3/Xbox360。遊戲制作：TellTale Games。遊戲發行：Skybound Games。','在《最終季》中，玩家從成為少女的克萊門汀角度開始遊戲，同時身邊帶著剛懂事沒多久的 AJ，而這樣的組合，幾乎正如同當時李與克萊門汀一樣。不同的是這回克萊門汀從受人照顧的小女孩，角色對調成為照顧別人的少女。在前幾作中並沒有太多對這方面情境描寫，但在本作可以看到她的不安與動搖。'),('E1','古墓奇兵：地城奪寶','《古墓奇兵：地城奪寶》（英語：Tomb Raider: Underworld， 中國大陸譯作「古墓麗影：地下世界」，香港譯作「盜墓者羅拉： 地城奪寶」是一款由Crystal Dynamics開發，Eidos Interactive發行的動作冒險遊戲。這是第三部由Crystal Dynamics開發的古墓奇兵系列遊戲，也是第八部古墓奇兵系列遊戲。','1000','17','首次 發行日2008年11月18日，登陸 PC。除了將繼續使用動作捕捉技術外，還將使用混合動畫系統，動態天氣系統、動態碰撞系統等全新技術，用以營造真實的遊戲世界。蘿拉將與環境產生互動，她身上會被雨水打濕，會在淤泥上留下腳印，穿越一片樹叢時會用手分開樹叢，在積水的地面會更容易滑倒。','敵人的屍體和所有碎片都會保留下來，不再消失。新的近身作戰系統可以使蘿拉在某些情況下直接打擊敵人或通過一些動作迴避襲擊她的人，可以使用雙槍同時射擊兩個不同的目標，也可以用一隻手來抓住一些物體，另一隻手掏槍向敵人射擊，攀爬鉤在固定在物體上之後可以用於懸空並可以伸展或拉緊。'),('E2','古墓奇兵：光之守護者','《古墓奇兵：光之守護者》（英語：Lara Croft and the Guardian of Light，中國大陸譯作「勞拉與光之守護者」）是由晶體動力開發、史克威爾艾尼克斯發行的一款跨平台動作遊戲，2010年8月18日於Xbox 360平台發售，隨後陸續於Windows、PlayStation 3、iOS、Android等平台發售。與前幾部關於蘿拉的遊戲不同，該遊戲英文名並未冠以「古墓奇兵」的標題，並十分注重合作遊戲模式。目前已有單機合作模式，聯網合作將於後續的升級修正檔中加上。','1300','35','首次 發行日2010年8月18日，登陸 Xbox 360。在中美洲的叢林廢墟中，玩家所扮演的蘿拉將與一位具有瑪雅部族血統的托特克共同進行冒險。','故事描述一個具有神祕力量的古老文物引發眾人的爭奪，而蘿拉與托特克發現他們自己不僅正處於這場爭鬥中，還得面對神祕的惡靈、不死族等眾多的挑戰。'),('E3','古墓奇兵：崛起','《古墓奇兵：崛起》（英語：Rise of the Tomb Raider，中國大陸譯作「古墓麗影：崛起」，香港譯作「盜墓者羅拉：崛起」)是一款由晶體動力開發，微軟工作室和史克威爾艾尼克斯發行的動作冒險遊戲。本作是2013年發行之《古墓奇兵》的續作，首發於2015年11月10日在Xbox 360和Xbox One平台，2016年1月29日登上Microsoft Windows平台，2016年10月11日登上PlayStation 4平台，並且包含支援PlayStationVR的遊戲內容。','1500','48','首次 發行日2015年11月10日，登陸PS4, Xbox One、Xbox One、PC、Mac OS X。古墓奇兵重啟系列的第二部作品，《古墓奇兵：崛起》的故事發生於蘿拉在超自然的「邪馬台國」的冒險結束後一年。','在島上發現了不死生物後，蘿拉開始在世界各地尋找這個傳說的真相。遊戲將跟隨蘿拉·卡芙特和約拿·邁亞瓦（Jonah Maiava）一起探索位於西伯利亞的古代城市「基特城」，這座城市由弗拉基米爾的大親王喬治二世於13世紀建立，蘿拉認為它隱藏著長生不死背後的秘密。在與神秘組織「聖三一（Trinity）」——他們的目的與蘿拉相同——競爭的過程中，蘿拉必須在敵人、猛獸及惡劣環境的威脅下存活並尋找傳說背後的真相。新增了打造系統，允許玩家使用從惡劣環境中搜尋的動植物材料打造新的物件。'),('E4','古墓奇兵：暗影','《古墓奇兵：暗影》（英語：Shadow of the Tomb Raider）是一款由藝奪蒙特婁開發，史克威爾艾尼克斯發行的動作冒險遊戲，是繼2013年《古墓奇兵》和2015年《古墓奇兵：崛起》後古墓奇兵重啟系列的第三部作品。遊戲在2018年9月14日發行於Microsoft Windows、PlayStation 4和Xbox One平台。本作包含繁簡中文字幕及普通話配音。','1600','46','首次 發行日2018年9月14日，登陸PS4, Xbox One、PC。古墓奇兵重啟系列的第三部作品。','本作新增水中探險，此為本作的重點系統及在南美洲的茂密叢林中隱匿作戰。蘿拉必須成功穿越危機四伏的叢林及恐怖的古墓，不向黑暗屈服，並且需拯救世界於馬雅末日危機，成為命定的古墓奇兵。'),('E5','古墓奇兵：重返禁地','《古墓奇兵：重返禁地》（英語：Tomb Raider: Anniversary，中國大陸譯作「古墓麗影：十周年紀念版」）是古墓奇兵系列的第七套作品與第八套作品之間的紀念性作品，也是1996年推出的第一代古墓奇兵的重製版本，遊戲改用前作 《古墓奇兵：不死傳奇》使用的遊戲引擎，並收錄全部在第一代作品中出現的關卡。','1700','25','首次 發行日2007年6月1日，登陸 PS2、PC。以前的亞特蘭提斯,因為擁有了一種叫做錫安秘寶的力量，而使其擁有媲美現代的文明制度。','至於錫安共有三片，擁有者依序為:庫亞羅派克、泰侯肯與娜堤拉。(都是統治者)然而娜堤拉濫用這些力量創造一些生物，而後被其他兩位統治者做制裁並封印她。碎片也因此流落它處;文明也消逝了。有一天新墨西哥進行核彈試爆，卻好死不死炸到被封印的娜提拉，因而遭到解放。緊接著娜堤拉為了東山再起，想要重新收集三片錫安來完成其計畫。也就是召集了尋寶獵人來幫她找回各錫安，因此蘿拉就是在這樣的情況下開始冒險。'),('E6','古墓奇兵：暗黑天使','《古墓奇兵：暗黑天使》（Tomb Raider: The Angel of Darkness）是《古墓奇兵》系列的第六套作品，也是最後一套由Core Design小組開發的作品，由Eidos Interactive發行。黑暗天使上市後飽受批評，Eidos 最終做出剝奪 Core Design 古墓奇兵系列開發權的決定。','1400','33','首次 發行日2003年6月20日，登陸 PlayStation 2、PC、Mac。拉被指控謀殺自己以前的導師維爾納·馮·克羅伊，為了查明事情真相，蘿拉又開始了她的冒險旅程……。','追隨維爾納·馮·克羅伊死後留下的蛛絲馬跡，蘿拉發現了一些列恐怖的謀殺案件。巴黎和社會的種種跡象和離奇事件使蘿拉捲入與一名叫埃卡德特的鍊金術士及其強大黑暗勢力的密謀聯盟的衝突中。事件的核心是五幅奧布斯丘拉古畫——鍊金術士在14世紀創造的宗教藝術品。現在埃卡德特正不顧一切的要收回它們，因為傳言這些畫擁有能喚醒沉睡者Nephilim——人類和天使的後代——的能力，蘿拉必須阻止他陰謀得逞！'),('E7','古墓奇兵：不死傳奇','《古墓奇兵：不死傳奇》（Lara Croft Tomb Raider: Legend）是《古墓奇兵》系列的第七套作品，也是首套改由美國Crystal Dynamics小組開發的作品，以及由Eidos Interactive發行。PS2、PC、Xbox及Xbox360版本的遊戲分別於2006年4月7日及4月11日起在歐洲及北美地區發售，至6月20日於北美推出PSP版本，任天堂的GBA、GameCube及NDS版本也於同年11月推出。','1500','10','首次 發行日2006年4月7日，登陸 PS2、PC、Mac。本作從蘿拉對幼年發生在尼泊爾的一次飛機事故的回憶中開始。','幸運的是蘿拉和她的母親並沒有在此次事故中遇難，並找到了一處古蹟，但是年幼的蘿拉出於好奇，觸發了古蹟中的機關打開了一座時空之門，媽媽為了保護蘿拉立刻上前拔出了插在機關中的劍，剎那間所有的一切都在蘿拉的眼前消失了……時空門、劍，以及蘿拉的母親……。若干年後，蘿拉來到了玻利維亞，尋找一座古代石壇。在那裡她遇見了一名男子，在與他的交談中，蘿拉隱約感覺到，在飛機失事的那一天，在自己失去母親的那一天，似乎隱藏了什麼秘密……');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_num`
--

DROP TABLE IF EXISTS `product_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_num` (
  `product` varchar(45) NOT NULL,
  `num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_num`
--

LOCK TABLES `product_num` WRITE;
/*!40000 ALTER TABLE `product_num` DISABLE KEYS */;
INSERT INTO `product_num` VALUES ('A','10'),('B','6'),('C','8'),('D','4'),('E','10');
/*!40000 ALTER TABLE `product_num` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view`
--

DROP TABLE IF EXISTS `view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view` (
  `view_no` int(11) NOT NULL AUTO_INCREMENT,
  `view_memberid` varchar(45) NOT NULL,
  `view_subject` varchar(45) DEFAULT NULL,
  `view_content` text,
  `view_putdate` date DEFAULT NULL,
  `view_product` varchar(45) NOT NULL,
  `view_score` int(11) NOT NULL,
  PRIMARY KEY (`view_no`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view`
--

LOCK TABLES `view` WRITE;
/*!40000 ALTER TABLE `view` DISABLE KEYS */;
INSERT INTO `view` VALUES (1,'1','1','11','2018-12-04','A1',5),(2,'1','Hello','Hello','2019-06-02','E2',9),(3,'1','不爽','HH','2019-06-02','E2',10),(4,'1','','','2019-06-02','E2',10),(5,'1','','','2019-06-02','E2',10),(6,'1','','','2019-06-02','E2',10),(7,'1','','','2019-06-02','E2',10),(8,'1','','','2019-06-02','E2',10),(9,'1','','','2019-06-02','E2',10),(10,'1','','','2019-06-02','E2',10),(11,'1','','','2019-06-02','D1',10),(12,'1','a','1\r\n2\r\n3','2019-06-03','A1',9),(13,'1','','我\r\n你','2019-06-03','A1',10),(14,'1','a','111\r\n333','2019-06-03','A1',10),(15,'1','a','111\r\n333','2019-06-03','A1',10),(16,'1','a','aaa\r\nddd','2019-06-03','A1',10),(17,'1','','a\r\nb','2019-06-03','A1',10),(18,'1','aa','a\r<br>b\r<br>c','2019-06-03','A1',10),(19,'happy','不爽','爽爽','2019-06-04','A1',10),(20,'happy','不爽','爽\r<br>歪歪','2019-06-04','A1',10),(21,'1','開心','還不錯','2019-06-09','C5',7),(22,'1','終於啦','再來啊','2019-06-09','B5',10),(23,'1','a','aa','2019-06-09','E5',10),(24,'1','成功','1','2019-06-11','C2',10),(25,'1','成功','2','2019-06-11','C2',10),(26,'1','a','1\r<br>2\r<br>3\r<br>4\r<br>5\r<br>6\r<br>7\r<br>8','2019-06-11','A1',10),(27,'1','b','12\r<br>3','2019-06-12','C2',10),(28,'1','1','中文，測試\r<br>中文，\r<br>測試','2019-06-12','C2',10),(29,'1','test','test\r<br>test\r<br>test','2019-06-12','A1',10),(30,'1','test','test\r<br>test\r<br>test','2019-06-12','A1',10),(31,'1','test','test\r<br>test\r<br>test','2019-06-12','A1',10),(32,'1','test','test\r<br>test\r<br>test','2019-06-12','A1',10),(33,'aa','成功','1\r<br>2\r<br>3','2019-06-13','A1',8);
/*!40000 ALTER TABLE `view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wait_product`
--

DROP TABLE IF EXISTS `wait_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wait_product` (
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `product_note` text,
  `product_price` varchar(45) DEFAULT NULL,
  `product_left` varchar(45) DEFAULT NULL,
  `product_rightnote` text,
  `product_downnote` text,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wait_product`
--

LOCK TABLES `wait_product` WRITE;
/*!40000 ALTER TABLE `wait_product` DISABLE KEYS */;
INSERT INTO `wait_product` VALUES ('A5','第一季','不可愛','1000','18','抓到','bug了'),('C8','三四五','可愛YAYA','100','17','沒有資訊','沒有');
/*!40000 ALTER TABLE `wait_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-13 15:01:24
