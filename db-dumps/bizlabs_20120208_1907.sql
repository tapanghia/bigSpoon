-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.7


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bizlabs
--

CREATE DATABASE IF NOT EXISTS bizlabs;
USE bizlabs;

--
-- Definition of table `bizlabs`.`averageMarginOffered`
--

DROP TABLE IF EXISTS `bizlabs`.`averageMarginOffered`;
CREATE TABLE  `bizlabs`.`averageMarginOffered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supermarket_amo` int(11) NOT NULL,
  `generalStore_amo` int(11) NOT NULL,
  `kiranaStore_amo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`averageMarginOffered`
--

/*!40000 ALTER TABLE `averageMarginOffered` DISABLE KEYS */;
LOCK TABLES `averageMarginOffered` WRITE;
INSERT INTO `bizlabs`.`averageMarginOffered` VALUES  (1,20,15,10);
UNLOCK TABLES;
/*!40000 ALTER TABLE `averageMarginOffered` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`brand_result`
--

DROP TABLE IF EXISTS `bizlabs`.`brand_result`;
CREATE TABLE  `bizlabs`.`brand_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `base_rnd_name` varchar(50) DEFAULT NULL,
  `ave_retail_price` int(12) DEFAULT NULL,
  `revenues` int(14) DEFAULT NULL,
  `units_produced` int(12) DEFAULT NULL,
  `transfer_price` int(12) DEFAULT NULL,
  `cost_of_goods_sold` int(14) DEFAULT NULL,
  `units_in_inventory` int(12) DEFAULT NULL,
  `inventory_holding_cost` int(14) DEFAULT NULL,
  `disposal_loss` int(14) DEFAULT NULL,
  `contribution_before_marketing` int(14) DEFAULT NULL,
  `adv_expense` int(14) DEFAULT NULL,
  `adv_research_expense` int(14) DEFAULT NULL,
  `sales_force_expense` int(14) DEFAULT NULL,
  `contributing_after_marketing` int(14) DEFAULT NULL,
  `units_sold` int(12) DEFAULT NULL,
  `team` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`brand_result`
--

/*!40000 ALTER TABLE `brand_result` DISABLE KEYS */;
LOCK TABLES `brand_result` WRITE;
INSERT INTO `bizlabs`.`brand_result` VALUES  (1,0,'AMAN','ARMAN',172,5102231,40000,125,3703625,10371,311130,0,1087476,1200000,0,910500,-1023024,29629,'Alpha'),
 (2,0,'AYAN','ARYAN',465,14643056,40000,344,10828088,8523,255690,0,3559278,1200000,0,910500,1448778,31477,'Alpha'),
 (3,0,'BISU','BRISU',363,14200176,40000,285,11148915,881,26430,0,3024831,1200000,0,910500,914331,39119,'Bravo'),
 (4,0,'BUNI','BRUNI',228,8581281,40000,203,7633003,2399,71970,0,876308,1200000,0,910500,-1234192,37601,'Bravo'),
 (5,0,'CITU','CRITU',174,5158249,40000,123,3641907,10391,311730,0,1204612,1200000,0,910500,-905888,29609,'Charlie'),
 (6,0,'COWN','CROWN',262,13771700,60000,206,10839308,7382,221460,0,2710932,1200000,0,910500,600432,52618,'Charlie'),
 (7,0,'DINK','DRINK',231,6788014,30000,194,5692542,657,19710,0,1075762,1200000,0,910500,-1034738,29343,'Delta'),
 (8,0,'DOPE','DROPE',463,14601481,40000,342,10792494,8443,253290,0,3555697,1200000,0,910500,1445197,31557,'Delta'),
 (9,0,'ENOT','ERNOT',253,14376436,65000,197,11204572,8124,243720,0,2928144,1200000,0,910500,817644,56876,'Echo'),
 (10,0,'EPAD','ERPAD',187,5022652,35000,143,3837119,8167,245010,0,940523,1200000,0,910500,-1169977,26833,'Echo'),
 (11,0,'FENI','FRENI',188,5703575,40000,135,4091310,9694,290820,0,1321445,1200000,0,910500,-789055,30306,'Foxtrot'),
 (12,0,'FIST','FRIST',447,14407359,40000,337,10856792,7784,233520,0,3317047,1200000,0,910500,1206547,32216,'Foxtrot'),
 (13,0,'GEET','GREET',355,13887976,40000,285,11149485,879,26370,0,2712121,1200000,0,910500,601621,39121,'Golf'),
 (14,0,'GIRU','GRIRU',238,9253216,40000,207,8044848,1136,34080,0,1174288,1200000,0,910500,-936212,38864,'Golf'),
 (15,0,'HIWI','HRIWI',190,5786539,40000,143,4351919,9567,287010,0,1147610,1200000,0,910500,-962890,30433,'Hotel'),
 (16,0,'HOPE','HROPE',366,14305203,40000,282,11032122,879,26370,0,3246711,1200000,0,910500,1136211,39121,'Hotel'),
 (17,0,'IFCO','IRFCO',262,7677823,30000,214,6279188,658,19740,0,1378895,1200000,0,910500,-731605,29342,'India'),
 (18,0,'IPCA','IRPCA',445,14414120,40000,339,10976142,7622,228660,0,3209318,1200000,0,910500,1098818,32378,'India'),
 (19,0,'JANO','JRANO',186,5583978,40000,128,3835264,10037,301110,0,1447604,1200000,0,910500,-662896,29963,'Juliet'),
 (20,0,'JOSE','JROSE',357,13966155,40000,280,10953880,879,26370,0,2985905,1200000,0,910500,875405,39121,'Juliet'),
 (21,0,'AMAN','ARMAN',172,5102231,40000,125,3703625,10371,311130,0,1087476,1200000,0,866250,-978774,29629,'Alpha'),
 (22,0,'AYAN','ARYAN',465,14643056,40000,344,10828088,8523,255690,0,3559278,1200000,0,866250,1493028,31477,'Alpha'),
 (23,0,'BISU','BRISU',363,14200176,40000,285,11148915,881,26430,0,3024831,1200000,0,866250,958581,39119,'Bravo'),
 (24,0,'BUNI','BRUNI',228,8581281,40000,203,7633003,2399,71970,0,876308,1200000,0,866250,-1189942,37601,'Bravo'),
 (25,0,'CITU','CRITU',174,5158249,40000,123,3641907,10391,311730,0,1204612,1200000,0,866250,-861638,29609,'Charlie'),
 (26,0,'COWN','CROWN',262,13771700,60000,206,10839308,7382,221460,0,2710932,1200000,0,866250,644682,52618,'Charlie'),
 (27,0,'DINK','DRINK',231,6788014,30000,194,5692542,657,19710,0,1075762,1200000,0,866250,-990488,29343,'Delta'),
 (28,0,'DOPE','DROPE',463,14601481,40000,342,10792494,8443,253290,0,3555697,1200000,0,866250,1489447,31557,'Delta'),
 (29,0,'ENOT','ERNOT',253,14376436,65000,197,11204572,8124,243720,0,2928144,1200000,0,866250,861894,56876,'Echo'),
 (30,0,'EPAD','ERPAD',187,5022652,35000,143,3837119,8167,245010,0,940523,1200000,0,866250,-1125727,26833,'Echo'),
 (31,0,'FENI','FRENI',188,5703575,40000,135,4091310,9694,290820,0,1321445,1200000,0,866250,-744805,30306,'Foxtrot'),
 (32,0,'FIST','FRIST',447,14407359,40000,337,10856792,7784,233520,0,3317047,1200000,0,866250,1250797,32216,'Foxtrot'),
 (33,0,'GEET','GREET',355,13887976,40000,285,11149485,879,26370,0,2712121,1200000,0,866250,645871,39121,'Golf'),
 (34,0,'GIRU','GRIRU',238,9253216,40000,207,8044848,1136,34080,0,1174288,1200000,0,866250,-891962,38864,'Golf'),
 (35,0,'HIWI','HRIWI',190,5786539,40000,143,4351919,9567,287010,0,1147610,1200000,0,866250,-918640,30433,'Hotel'),
 (36,0,'HOPE','HROPE',366,14305203,40000,282,11032122,879,26370,0,3246711,1200000,0,866250,1180461,39121,'Hotel'),
 (37,0,'IFCO','IRFCO',262,7677823,30000,214,6279188,658,19740,0,1378895,1200000,0,866250,-687355,29342,'India'),
 (38,0,'IPCA','IRPCA',445,14414120,40000,339,10976142,7622,228660,0,3209318,1200000,0,866250,1143068,32378,'India'),
 (39,0,'JANO','JRANO',186,5583978,40000,128,3835264,10037,301110,0,1447604,1200000,0,866250,-618646,29963,'Juliet'),
 (40,0,'JOSE','JROSE',357,13966155,40000,280,10953880,879,26370,0,2985905,1200000,0,866250,919655,39121,'Juliet'),
 (41,1,'AMAN','ARMAN',174,1688833,30000,128,1245696,30639,1011087,0,-567950,990000,0,1218000,-2775950,9732,'Alpha'),
 (42,1,'AYAN','ARYAN',459,24382097,32000,349,18534692,-12585,-415305,0,6262710,975000,0,1218000,4069710,53108,'Alpha'),
 (43,1,'BISU','BRISU',354,21381908,47000,288,17412480,-12579,-415107,0,4384535,1000000,0,910500,2474035,60460,'Bravo'),
 (44,1,'BUNI','BRUNI',249,4009149,47000,205,3300705,33298,1098834,0,-390390,990000,0,910500,-2290890,16101,'Bravo'),
 (45,1,'CITU','CRITU',175,1993770,30000,126,1431864,29027,957891,0,-395985,900000,0,1009643,-2305628,11364,'Charlie'),
 (46,1,'COWN','CROWN',252,7471746,53000,208,6175312,30693,1012869,0,283565,900000,0,1211571,-1828006,29689,'Charlie'),
 (47,1,'DINK','DRINK',244,2328750,35000,197,1880168,26113,861729,0,-413147,1300000,0,1115000,-2828147,9544,'Delta'),
 (48,1,'DOPE','DROPE',461,23604901,32000,348,17829084,-10790,-356070,0,6131887,1300000,0,1115000,3716887,51233,'Delta'),
 (49,1,'ENOT','ERNOT',251,4017742,57000,199,3185393,49117,1620861,0,-788512,1200000,0,1218000,-3206512,16007,'Echo'),
 (50,1,'EPAD','ERPAD',180,1014205,30000,145,815480,32543,1073919,0,-875194,1200000,0,1218000,-3293194,5624,'Echo'),
 (51,1,'FENI','FRENI',186,3805773,60000,136,2779296,49258,1625514,0,-599037,1000000,0,910500,-2509537,20436,'Foxtrot'),
 (52,1,'FIST','FRIST',444,29935170,40000,342,23060376,-19644,-648252,0,7523046,1000000,0,910500,5612546,67428,'Foxtrot'),
 (53,1,'GEET','GREET',355,10615586,40000,289,8641967,10976,362208,0,1611411,1000000,0,809333,-197922,29903,'Golf'),
 (54,1,'GIRU','GRIRU',238,8636768,40000,210,7620690,4847,159951,0,856127,1000000,0,1011667,-1155540,36289,'Golf'),
 (55,1,'HIWI','HRIWI',190,14757556,40000,145,11260120,-28089,-926937,0,4424373,0,0,893200,3531173,77656,'Hotel'),
 (56,1,'HOPE','HROPE',364,25732520,60000,284,20100384,-9897,-326601,0,5958737,0,0,933800,5024937,70776,'Hotel'),
 (57,1,'IFCO','IRFCO',262,10349194,60000,215,8503465,21107,696531,0,1149198,1000000,0,910500,-761302,39551,'India'),
 (58,1,'IPCA','IRPCA',442,29901353,40000,344,23275728,-20040,-661320,0,7286945,1000000,0,910500,5376445,67662,'India'),
 (59,1,'JANO','JRANO',183,2105581,50000,130,1493830,48546,1602018,0,-990267,1000000,0,910500,-2900767,11491,'Juliet'),
 (60,1,'JOSE','JROSE',357,14212863,50000,283,11266796,11067,365211,0,2580856,1000000,0,910500,670356,39812,'Juliet');
UNLOCK TABLES;
/*!40000 ALTER TABLE `brand_result` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`brandadv_metadata`
--

DROP TABLE IF EXISTS `bizlabs`.`brandadv_metadata`;
CREATE TABLE  `bizlabs`.`brandadv_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) NOT NULL,
  `adv_media_budget` int(11) NOT NULL,
  `adv_research_budget` int(11) NOT NULL,
  `Seg_Blueblood_pr` int(11) NOT NULL,
  `Seg_raffles_pr` int(11) NOT NULL,
  `Seg_wannabees_pr` int(11) NOT NULL,
  `Seg_strugglers_pr` int(11) NOT NULL,
  `Seg_deprived_pr` int(11) NOT NULL,
  `Med_print_pr` int(11) NOT NULL,
  `Med_television_pr` int(11) NOT NULL,
  `med_radio_pr` int(11) NOT NULL,
  `med_internet_pr` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1115 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`brandadv_metadata`
--

/*!40000 ALTER TABLE `brandadv_metadata` DISABLE KEYS */;
LOCK TABLES `brandadv_metadata` WRITE;
INSERT INTO `bizlabs`.`brandadv_metadata` VALUES  (1111,'AYAN',1200,100,20,20,20,20,20,20,30,20,30),
 (1112,'BYTE',1200,100,20,20,20,20,20,20,30,20,30),
 (1113,'ARIM',2000,150,30,40,10,10,10,30,40,10,20),
 (1114,'BROM',2000,150,30,40,10,10,10,30,40,10,20);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandadv_metadata` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`brandadvertisement`
--

DROP TABLE IF EXISTS `bizlabs`.`brandadvertisement`;
CREATE TABLE  `bizlabs`.`brandadvertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) DEFAULT NULL,
  `adv_media_budget` int(11) NOT NULL,
  `adv_research_budget` int(11) NOT NULL,
  `Seg_Blueblood_pr` int(11) NOT NULL,
  `Seg_raffles_pr` int(11) NOT NULL,
  `Seg_wannabees_pr` int(11) NOT NULL,
  `Seg_strugglers_pr` int(11) NOT NULL,
  `Seg_deprived_pr` int(11) NOT NULL,
  `Med_print_pr` int(11) NOT NULL,
  `Med_television_pr` int(11) NOT NULL,
  `med_radio_pr` int(11) NOT NULL,
  `med_internet_pr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brandId_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=4220 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`brandadvertisement`
--

/*!40000 ALTER TABLE `brandadvertisement` DISABLE KEYS */;
LOCK TABLES `brandadvertisement` WRITE;
INSERT INTO `bizlabs`.`brandadvertisement` VALUES  (4000,2000,1200000,0,0,25,25,25,25,0,0,0,0),
 (4001,2001,1200000,0,0,25,25,25,25,0,0,0,0),
 (4002,2002,1200000,0,0,25,25,25,25,0,0,0,0),
 (4003,2003,1200000,0,0,25,25,25,25,0,0,0,0),
 (4004,2004,1200000,0,0,25,25,25,25,0,0,0,0),
 (4005,2005,1200000,0,0,25,25,25,25,0,0,0,0),
 (4006,2006,1200000,0,0,25,25,25,25,0,0,0,0),
 (4007,2007,1200000,0,0,25,25,25,25,0,0,0,0),
 (4008,2008,1200000,0,0,25,25,25,25,0,0,0,0),
 (4009,2009,1200000,0,0,25,25,25,25,0,0,0,0),
 (4010,2010,1200000,0,0,25,25,25,25,0,0,0,0),
 (4011,2011,1200000,0,0,25,25,25,25,0,0,0,0),
 (4012,2012,1200000,0,0,25,25,25,25,0,0,0,0),
 (4013,2013,1200000,0,0,25,25,25,25,0,0,0,0),
 (4014,2014,1200000,0,0,25,25,25,25,0,0,0,0),
 (4015,2015,1200000,0,0,25,25,25,25,0,0,0,0),
 (4016,2016,1200000,0,0,25,25,25,25,0,0,0,0),
 (4017,2017,1200000,0,0,25,25,25,25,0,0,0,0),
 (4018,2018,1200000,0,0,25,25,25,25,0,0,0,0),
 (4019,2019,1200000,0,0,25,25,25,25,0,0,0,0),
 (4100,2100,975000,0,0,100,0,0,0,0,0,0,0),
 (4101,2101,990000,0,0,0,0,0,100,0,0,0,0),
 (4102,2102,1000000,0,0,0,100,0,0,0,0,0,0),
 (4103,2103,990000,0,0,0,0,100,0,0,0,0,0),
 (4104,2104,900000,0,0,0,0,100,0,0,0,0,0),
 (4105,2105,900000,0,0,0,0,0,100,0,0,0,0),
 (4106,2106,1300000,0,0,0,0,100,0,0,0,0,0),
 (4107,2107,1300000,0,0,100,0,0,0,0,0,0,0),
 (4108,2108,1200000,0,0,0,0,100,0,0,0,0,0),
 (4109,2109,1200000,0,0,0,0,0,100,0,0,0,0),
 (4110,2110,1000000,0,0,0,0,0,100,0,0,0,0),
 (4111,2111,1000000,0,0,100,0,0,0,0,0,0,0),
 (4112,2112,1000000,0,0,0,100,0,0,0,0,0,0),
 (4113,2113,1000000,0,0,0,0,100,0,0,0,0,0),
 (4114,2114,0,0,0,25,25,25,25,0,0,0,0),
 (4115,2115,0,0,0,25,25,25,25,0,0,0,0),
 (4116,2116,1000000,0,0,100,0,0,0,0,0,0,0),
 (4117,2117,1000000,0,0,0,0,100,0,0,0,0,0),
 (4118,2118,1000000,0,0,0,100,0,0,0,0,0,0),
 (4119,2119,1000000,0,0,0,0,0,100,0,0,0,0),
 (4200,2200,0,0,0,100,0,0,0,0,0,0,0),
 (4201,2201,0,0,0,0,0,0,100,0,0,0,0),
 (4202,2202,0,0,0,0,100,0,0,0,0,0,0),
 (4203,2203,0,0,0,0,0,100,0,0,0,0,0),
 (4204,2204,0,0,0,0,0,100,0,0,0,0,0),
 (4205,2205,0,0,0,0,0,0,100,0,0,0,0),
 (4206,2206,0,0,0,0,0,100,0,0,0,0,0),
 (4207,2207,0,0,0,100,0,0,0,0,0,0,0),
 (4208,2208,0,0,0,0,0,100,0,0,0,0,0),
 (4209,2209,0,0,0,0,0,0,100,0,0,0,0),
 (4210,2210,0,0,0,0,0,0,100,0,0,0,0),
 (4211,2211,0,0,0,100,0,0,0,0,0,0,0),
 (4212,2212,0,0,0,0,100,0,0,0,0,0,0),
 (4213,2213,0,0,0,0,0,100,0,0,0,0,0),
 (4214,2214,0,0,0,25,25,25,25,0,0,0,0),
 (4215,2215,0,0,0,25,25,25,25,0,0,0,0),
 (4216,2216,0,0,0,100,0,0,0,0,0,0,0),
 (4217,2217,0,0,0,0,0,100,0,0,0,0,0),
 (4218,2218,0,0,0,0,100,0,0,0,0,0,0),
 (4219,2219,0,0,0,0,0,0,100,0,0,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandadvertisement` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`brandawareness_metadata`
--

DROP TABLE IF EXISTS `bizlabs`.`brandawareness_metadata`;
CREATE TABLE  `bizlabs`.`brandawareness_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(500) NOT NULL,
  `total_ba` float(10,4) DEFAULT '0.0000',
  `bluebloods_ba` float(10,4) DEFAULT '0.0000',
  `raffles_ba` float(10,4) DEFAULT '0.0000',
  `wannabes_ba` float(10,4) DEFAULT '0.0000',
  `strugglers_ba` float(10,4) DEFAULT '0.0000',
  `deprived_ba` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`brandawareness_metadata`
--

/*!40000 ALTER TABLE `brandawareness_metadata` DISABLE KEYS */;
LOCK TABLES `brandawareness_metadata` WRITE;
INSERT INTO `bizlabs`.`brandawareness_metadata` VALUES  (1,'AYAN',0.4520,0.4520,0.4520,0.4520,0.4520,0.4520),
 (2,'BYTE',0.4520,0.4520,0.4520,0.4520,0.4520,0.4520),
 (3,'ARIM',0.4790,0.5130,0.6024,0.4270,0.4270,0.4270),
 (4,'BROM',0.4790,0.5130,0.6024,0.4270,0.4270,0.4270);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandawareness_metadata` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`brands`
--

DROP TABLE IF EXISTS `bizlabs`.`brands`;
CREATE TABLE  `bizlabs`.`brands` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRANDNAME` varchar(255) NOT NULL,
  `DELETEFLAG` char(1) NOT NULL,
  `RESEARCHPROJECTID` int(11) NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'New',
  `period` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `ID_2` (`ID`),
  KEY `RESEARCHPROJ_FK` (`RESEARCHPROJECTID`),
  CONSTRAINT `RESEARCHPROJ_FK` FOREIGN KEY (`RESEARCHPROJECTID`) REFERENCES `researchproject` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2220 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`brands`
--

/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
LOCK TABLES `brands` WRITE;
INSERT INTO `bizlabs`.`brands` VALUES  (2000,'AYAN','N',1000,'Maintained',0),
 (2001,'AMAN','N',1001,'Maintained',0),
 (2002,'BISU','N',1002,'Maintained',0),
 (2003,'BUNI','N',1003,'Maintained',0),
 (2004,'COWN','N',1004,'Maintained',0),
 (2005,'CITU','N',1005,'Maintained',0),
 (2006,'DINK','N',1006,'Maintained',0),
 (2007,'DOPE','N',1007,'Maintained',0),
 (2008,'ENOT','N',1008,'Maintained',0),
 (2009,'EPAD','N',1009,'Maintained',0),
 (2010,'FENI','N',1010,'Maintained',0),
 (2011,'FIST','N',1011,'Maintained',0),
 (2012,'GEET','N',1012,'Maintained',0),
 (2013,'GIRU','N',1013,'Maintained',0),
 (2014,'HIWI','N',1014,'Maintained',0),
 (2015,'HOPE','N',1015,'Maintained',0),
 (2016,'IPCA','N',1016,'Maintained',0),
 (2017,'IFCO','N',1017,'Maintained',0),
 (2018,'JOSE','N',1018,'Maintained',0),
 (2019,'JANO','N',1019,'Maintained',0),
 (2100,'AYAN','N',1100,'Maintained',1),
 (2101,'AMAN','N',1101,'Maintained',1),
 (2102,'BISU','N',1102,'Maintained',1),
 (2103,'BUNI','N',1103,'Maintained',1),
 (2104,'COWN','N',1104,'Maintained',1),
 (2105,'CITU','N',1105,'Maintained',1),
 (2106,'DINK','N',1106,'Maintained',1),
 (2107,'DOPE','N',1107,'Maintained',1),
 (2108,'ENOT','N',1108,'Maintained',1),
 (2109,'EPAD','N',1109,'Maintained',1),
 (2110,'FENI','N',1110,'Maintained',1),
 (2111,'FIST','N',1111,'Maintained',1),
 (2112,'GEET','N',1112,'Maintained',1),
 (2113,'GIRU','N',1113,'Maintained',1),
 (2114,'HIWI','N',1114,'Maintained',1),
 (2115,'HOPE','N',1115,'Maintained',1),
 (2116,'IPCA','N',1116,'Maintained',1),
 (2117,'IFCO','N',1117,'Maintained',1),
 (2118,'JOSE','N',1118,'Maintained',1),
 (2119,'JANO','N',1119,'Maintained',1),
 (2200,'AYAN','N',1200,'Maintained',2),
 (2201,'AMAN','N',1201,'Maintained',2),
 (2202,'BISU','N',1202,'Maintained',2),
 (2203,'BUNI','N',1203,'Maintained',2),
 (2204,'COWN','N',1204,'Maintained',2),
 (2205,'CITU','N',1205,'Maintained',2),
 (2206,'DINK','N',1206,'Maintained',2),
 (2207,'DOPE','N',1207,'Maintained',2),
 (2208,'ENOT','N',1208,'Maintained',2),
 (2209,'EPAD','N',1209,'Maintained',2),
 (2210,'FENI','N',1210,'Maintained',2),
 (2211,'FIST','N',1211,'Maintained',2),
 (2212,'GEET','N',1212,'Maintained',2),
 (2213,'GIRU','N',1213,'Maintained',2),
 (2214,'HIWI','N',1214,'Maintained',2),
 (2215,'HOPE','N',1215,'Maintained',2),
 (2216,'IPCA','N',1216,'Maintained',2),
 (2217,'IFCO','N',1217,'Maintained',2),
 (2218,'JOSE','N',1218,'Maintained',2),
 (2219,'JANO','N',1219,'Maintained',2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`brands_metadata`
--

DROP TABLE IF EXISTS `bizlabs`.`brands_metadata`;
CREATE TABLE  `bizlabs`.`brands_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) NOT NULL,
  `researchProjectName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brandNameMD_unq` (`brandName`),
  KEY `researchProjNameMD_fk` (`researchProjectName`),
  CONSTRAINT `researchProjNameMD_fk` FOREIGN KEY (`researchProjectName`) REFERENCES `researchproject_metadata` (`projectName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`brands_metadata`
--

/*!40000 ALTER TABLE `brands_metadata` DISABLE KEYS */;
LOCK TABLES `brands_metadata` WRITE;
INSERT INTO `bizlabs`.`brands_metadata` VALUES  (1,'AYAN','ARYAN'),
 (2,'ARIM','ARMAN'),
 (3,'BYTE','BRYAN'),
 (4,'BROM','BRMAN');
UNLOCK TABLES;
/*!40000 ALTER TABLE `brands_metadata` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`brandspecs`
--

DROP TABLE IF EXISTS `bizlabs`.`brandspecs`;
CREATE TABLE  `bizlabs`.`brandspecs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `productionLevel` int(11) NOT NULL,
  `inventorySold` int(11) NOT NULL DEFAULT '0',
  `currentInventory` int(11) NOT NULL DEFAULT '0',
  `retailPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brandAdv_SpecsFK` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=3220 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`brandspecs`
--

/*!40000 ALTER TABLE `brandspecs` DISABLE KEYS */;
LOCK TABLES `brandspecs` WRITE;
INSERT INTO `bizlabs`.`brandspecs` VALUES  (3000,2000,40000,0,0,555),
 (3001,2001,40000,0,0,199),
 (3002,2002,40000,0,0,427),
 (3003,2003,40000,0,0,268),
 (3004,2004,60000,0,0,306),
 (3005,2005,40000,0,0,201),
 (3006,2006,30000,0,0,272),
 (3007,2007,40000,0,0,552),
 (3008,2008,65000,0,0,295),
 (3009,2009,35000,0,0,217),
 (3010,2010,40000,0,0,218),
 (3011,2011,40000,0,0,533),
 (3012,2012,40000,0,0,418),
 (3013,2013,40000,0,0,280),
 (3014,2014,40000,0,0,220),
 (3015,2015,40000,0,0,430),
 (3016,2016,40000,0,0,530),
 (3017,2017,30000,0,0,308),
 (3018,2018,40000,0,0,420),
 (3019,2019,40000,0,0,215),
 (3100,2100,32000,0,8523,550),
 (3101,2101,30000,0,10371,204),
 (3102,2102,47000,0,881,417),
 (3103,2103,47000,0,2399,293),
 (3104,2104,53000,0,7382,296),
 (3105,2105,30000,0,10391,206),
 (3106,2106,35000,0,657,287),
 (3107,2107,32000,0,8443,552),
 (3108,2108,57000,0,8124,295),
 (3109,2109,30000,0,8167,212),
 (3110,2110,60000,0,9694,218),
 (3111,2111,40000,0,7784,533),
 (3112,2112,40000,0,879,418),
 (3113,2113,40000,0,1136,280),
 (3114,2114,40000,0,9567,220),
 (3115,2115,60000,0,879,430),
 (3116,2116,40000,0,7622,530),
 (3117,2117,60000,0,658,308),
 (3118,2118,50000,0,879,420),
 (3119,2119,50000,0,10037,215),
 (3200,2200,32000,0,-12585,550),
 (3201,2201,30000,0,30639,204),
 (3202,2202,47000,0,-12579,417),
 (3203,2203,47000,0,33298,293),
 (3204,2204,53000,0,30693,296),
 (3205,2205,30000,0,29027,206),
 (3206,2206,35000,0,26113,287),
 (3207,2207,32000,0,-10790,552),
 (3208,2208,57000,0,49117,295),
 (3209,2209,30000,0,32543,212),
 (3210,2210,60000,0,49258,218),
 (3211,2211,40000,0,-19644,533),
 (3212,2212,40000,0,10976,418),
 (3213,2213,40000,0,4847,280),
 (3214,2214,40000,0,-28089,220),
 (3215,2215,60000,0,-9897,430),
 (3216,2216,40000,0,-20040,530),
 (3217,2217,60000,0,21107,308),
 (3218,2218,50000,0,11067,420),
 (3219,2219,50000,0,48546,215);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandspecs` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`brandspecsmetadata`
--

DROP TABLE IF EXISTS `bizlabs`.`brandspecsmetadata`;
CREATE TABLE  `bizlabs`.`brandspecsmetadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(100) NOT NULL,
  `productionLevel` int(11) NOT NULL,
  `inventorySold` int(11) NOT NULL DEFAULT '0',
  `currentInventory` int(11) NOT NULL DEFAULT '0',
  `retailPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2004 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`brandspecsmetadata`
--

/*!40000 ALTER TABLE `brandspecsmetadata` DISABLE KEYS */;
LOCK TABLES `brandspecsmetadata` WRITE;
INSERT INTO `bizlabs`.`brandspecsmetadata` VALUES  (2000,'AYAN',80000,0,0,250),
 (2001,'ARIM',50000,0,0,400),
 (2002,'BYTE',80000,0,0,250),
 (2003,'BROM',50000,0,0,400);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandspecsmetadata` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`channel_constants`
--

DROP TABLE IF EXISTS `bizlabs`.`channel_constants`;
CREATE TABLE  `bizlabs`.`channel_constants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constName` varchar(1000) NOT NULL,
  `period` int(11) NOT NULL,
  `supermarket` float(10,4) NOT NULL,
  `generalStore` float(10,4) NOT NULL,
  `kiranaStore` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`channel_constants`
--

/*!40000 ALTER TABLE `channel_constants` DISABLE KEYS */;
LOCK TABLES `channel_constants` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `channel_constants` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`channelallocation`
--

DROP TABLE IF EXISTS `bizlabs`.`channelallocation`;
CREATE TABLE  `bizlabs`.`channelallocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarketAllocation` float(10,4) NOT NULL,
  `generalStoreAllocation` float(10,4) NOT NULL,
  `kiranaStoreAllocation` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelAllocat_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`channelallocation`
--

/*!40000 ALTER TABLE `channelallocation` DISABLE KEYS */;
LOCK TABLES `channelallocation` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `channelallocation` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`channelavailability`
--

DROP TABLE IF EXISTS `bizlabs`.`channelavailability`;
CREATE TABLE  `bizlabs`.`channelavailability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarketAvail` float(10,4) NOT NULL,
  `generalStoreAvail` float(10,4) NOT NULL,
  `kiranaStoreAvail` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelAvail_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`channelavailability`
--

/*!40000 ALTER TABLE `channelavailability` DISABLE KEYS */;
LOCK TABLES `channelavailability` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `channelavailability` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`channelmarketshare`
--

DROP TABLE IF EXISTS `bizlabs`.`channelmarketshare`;
CREATE TABLE  `bizlabs`.`channelmarketshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_cms` float(10,4) NOT NULL,
  `generalStore_cms` float(10,4) NOT NULL,
  `kiranaStore_cms` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelMarketSharebrandId_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`channelmarketshare`
--

/*!40000 ALTER TABLE `channelmarketshare` DISABLE KEYS */;
LOCK TABLES `channelmarketshare` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `channelmarketshare` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`distributioncoverage`
--

DROP TABLE IF EXISTS `bizlabs`.`distributioncoverage`;
CREATE TABLE  `bizlabs`.`distributioncoverage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_dc` float(10,4) NOT NULL,
  `generalStore_dc` float(10,4) NOT NULL,
  `kiranaStore_dc` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `distributionCbrandId_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`distributioncoverage`
--

/*!40000 ALTER TABLE `distributioncoverage` DISABLE KEYS */;
LOCK TABLES `distributioncoverage` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `distributioncoverage` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`finances`
--

DROP TABLE IF EXISTS `bizlabs`.`finances`;
CREATE TABLE  `bizlabs`.`finances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `debt` int(11) DEFAULT NULL,
  `equity` int(11) DEFAULT NULL,
  `debt_equity_ratio` float(10,2) DEFAULT NULL,
  `roi` float(10,2) DEFAULT NULL,
  `interest` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `finances_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10210 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`finances`
--

/*!40000 ALTER TABLE `finances` DISABLE KEYS */;
LOCK TABLES `finances` WRITE;
INSERT INTO `bizlabs`.`finances` VALUES  (10000,0,1,2500000,10000000,0.25,0.13,325000),
 (10001,0,2,2500000,10000000,0.25,0.13,325000),
 (10002,0,3,2500000,10000000,0.25,0.13,325000),
 (10003,0,4,2500000,10000000,0.25,0.13,325000),
 (10004,0,5,2500000,10000000,0.25,0.13,325000),
 (10005,0,6,2500000,10000000,0.25,0.13,325000),
 (10006,0,7,2500000,10000000,0.25,0.13,325000),
 (10007,0,8,2500000,10000000,0.25,0.13,325000),
 (10008,0,9,2500000,10000000,0.25,0.13,325000),
 (10009,0,10,2500000,10000000,0.25,0.13,325000),
 (10100,1,1,3500000,10000000,0.35,0.12,354375),
 (10101,1,2,3850000,10000000,0.38,0.12,364678),
 (10102,1,3,2500000,10000000,0.25,0.13,325000),
 (10103,1,4,2500000,10000000,0.25,0.13,325000),
 (10104,1,5,2500000,10000000,0.25,0.13,325000),
 (10105,1,6,4500000,10000000,0.45,0.12,386250),
 (10106,1,7,2500000,10000000,0.25,0.13,325000),
 (10107,1,8,3500000,10000000,0.35,0.12,354375),
 (10108,1,9,2500000,10000000,0.25,0.13,325000),
 (10109,1,10,2500000,10000000,0.25,0.13,325000),
 (10200,2,1,3500000,10000000,0.35,0.12,354375),
 (10201,2,2,3850000,10000000,0.38,0.12,364678),
 (10202,2,3,2500000,10000000,0.25,0.13,325000),
 (10203,2,4,2500000,10000000,0.25,0.13,325000),
 (10204,2,5,2500000,10000000,0.25,0.13,325000),
 (10205,2,6,4500000,10000000,0.45,0.12,386250),
 (10206,2,7,2500000,10000000,0.25,0.13,325000),
 (10207,2,8,3500000,10000000,0.35,0.12,354375),
 (10208,2,9,2500000,10000000,0.25,0.13,325000),
 (10209,2,10,2500000,10000000,0.25,0.13,325000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `finances` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`fmdsvalues`
--

DROP TABLE IF EXISTS `bizlabs`.`fmdsvalues`;
CREATE TABLE  `bizlabs`.`fmdsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `economicValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FMDSValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`fmdsvalues`
--

/*!40000 ALTER TABLE `fmdsvalues` DISABLE KEYS */;
LOCK TABLES `fmdsvalues` WRITE;
INSERT INTO `bizlabs`.`fmdsvalues` VALUES  (37,18,12.8755,5.7576,4.3434),
 (38,19,8.5837,11.9192,10.0000),
 (39,20,12.8755,5.7576,4.3434),
 (40,21,8.5837,11.9192,10.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `fmdsvalues` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`fsemanticvalues`
--

DROP TABLE IF EXISTS `bizlabs`.`fsemanticvalues`;
CREATE TABLE  `bizlabs`.`fsemanticvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `designValue` float(10,4) NOT NULL,
  `fragranceValue` float(10,4) NOT NULL,
  `persistenceValue` float(10,4) NOT NULL,
  `packagingValue` float(10,4) NOT NULL,
  `safetyValue` float(10,4) NOT NULL,
  `price` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FSemanticValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`fsemanticvalues`
--

/*!40000 ALTER TABLE `fsemanticvalues` DISABLE KEYS */;
LOCK TABLES `fsemanticvalues` WRITE;
INSERT INTO `bizlabs`.`fsemanticvalues` VALUES  (41,18,2.4545,2.7576,3.2424,1.8485,1.8485,3.1373),
 (42,19,4.2727,4.5758,5.3030,3.3636,3.3636,4.4249),
 (43,20,2.4545,2.7576,3.2424,1.8485,1.8485,3.1373),
 (44,21,4.2727,4.5758,5.3030,3.3636,3.3636,4.4249);
UNLOCK TABLES;
/*!40000 ALTER TABLE `fsemanticvalues` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`global_constants`
--

DROP TABLE IF EXISTS `bizlabs`.`global_constants`;
CREATE TABLE  `bizlabs`.`global_constants` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(1000) DEFAULT NULL,
  `VALUE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`global_constants`
--

/*!40000 ALTER TABLE `global_constants` DISABLE KEYS */;
LOCK TABLES `global_constants` WRITE;
INSERT INTO `bizlabs`.`global_constants` VALUES  (1,'CURRENT_PERIOD','1'),
 (2,'MINIMUM_PERIOD','0'),
 (3,'MAXIMUM_PERIOD','12'),
 (4,'INFLATION','2'),
 (5,'BLUE_BLOODS','BlueBloods'),
 (6,'RAFFLES','Raffles'),
 (7,'WANNABES','Wannabes'),
 (8,'STRUGGLERS','Strugglers'),
 (9,'DEPRIVED','Deprived');
UNLOCK TABLES;
/*!40000 ALTER TABLE `global_constants` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`human_resources`
--

DROP TABLE IF EXISTS `bizlabs`.`human_resources`;
CREATE TABLE  `bizlabs`.`human_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `level3_salesforce` int(12) DEFAULT NULL,
  `level2_salesforce` int(12) DEFAULT NULL,
  `level1_salesforce` int(12) DEFAULT NULL,
  `total_salesforce` int(12) DEFAULT NULL,
  `level2_salesforce_training` int(12) DEFAULT NULL,
  `level1_salesforce_training` int(12) DEFAULT NULL,
  `hiring_firing_cost` int(14) DEFAULT NULL,
  `total_sales_cost` int(14) DEFAULT NULL,
  `training_cost` int(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hr_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12210 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`human_resources`
--

/*!40000 ALTER TABLE `human_resources` DISABLE KEYS */;
LOCK TABLES `human_resources` WRITE;
INSERT INTO `bizlabs`.`human_resources` VALUES  (12000,0,1,20,30,40,90,0,0,0,0,0),
 (12001,0,2,20,30,40,90,0,0,0,0,0),
 (12002,0,3,20,30,40,90,0,0,0,0,0),
 (12003,0,4,20,30,40,90,0,0,0,0,0),
 (12004,0,5,20,30,40,90,0,0,0,0,0),
 (12005,0,6,20,30,40,90,0,0,0,0,0),
 (12006,0,7,20,30,40,90,0,0,0,0,0),
 (12007,0,8,20,30,40,90,0,0,0,0,0),
 (12008,0,9,20,30,40,90,0,0,0,0,0),
 (12009,0,10,20,30,40,90,0,0,0,0,0),
 (12100,1,1,70,50,0,120,30,40,640000,1800000,580000),
 (12101,1,2,30,30,30,90,10,10,0,1160000,170000),
 (12102,1,3,50,30,60,140,20,20,540000,1700000,340000),
 (12103,1,4,50,40,20,110,20,20,380000,1540000,340000),
 (12104,1,5,45,40,35,120,5,5,640000,1800000,85000),
 (12105,1,6,20,30,40,90,0,0,0,1160000,0),
 (12106,1,7,30,30,30,90,10,10,0,1160000,170000),
 (12107,1,8,30,30,30,90,0,0,330000,1350000,0),
 (12108,1,9,50,40,0,90,30,40,0,1160000,580000),
 (12109,1,10,20,30,40,90,0,0,0,1160000,0),
 (12200,2,1,0,0,0,0,0,0,0,0,0),
 (12201,2,2,0,0,0,0,0,0,0,0,0),
 (12202,2,3,0,0,0,0,0,0,0,0,0),
 (12203,2,4,0,0,0,0,0,0,0,0,0),
 (12204,2,5,0,0,0,0,0,0,0,0,0),
 (12205,2,6,0,0,0,0,0,0,0,0,0),
 (12206,2,7,0,0,0,0,0,0,0,0,0),
 (12207,2,8,0,0,0,0,0,0,0,0,0),
 (12208,2,9,0,0,0,0,0,0,0,0,0),
 (12209,2,10,0,0,0,0,0,0,0,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `human_resources` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`iadv_brandawareness`
--

DROP TABLE IF EXISTS `bizlabs`.`iadv_brandawareness`;
CREATE TABLE  `bizlabs`.`iadv_brandawareness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `total_ba` float(10,4) DEFAULT '0.0000',
  `bluebloods_ba` float(10,4) DEFAULT '0.0000',
  `raffles_ba` float(10,4) DEFAULT '0.0000',
  `wannabes_ba` float(10,4) DEFAULT '0.0000',
  `strugglers_ba` float(10,4) DEFAULT '0.0000',
  `deprived_ba` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `ba_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`iadv_brandawareness`
--

/*!40000 ALTER TABLE `iadv_brandawareness` DISABLE KEYS */;
LOCK TABLES `iadv_brandawareness` WRITE;
INSERT INTO `bizlabs`.`iadv_brandawareness` VALUES  (64,18,0.4520,0.4520,0.4520,0.4520,0.4520,0.4520),
 (65,19,0.4790,0.5130,0.6024,0.4270,0.4270,0.4270),
 (66,20,0.4520,0.4520,0.4520,0.4520,0.4520,0.4520),
 (67,21,0.4790,0.5130,0.6024,0.4270,0.4270,0.4270);
UNLOCK TABLES;
/*!40000 ALTER TABLE `iadv_brandawareness` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`iadv_effectievsegexpense`
--

DROP TABLE IF EXISTS `bizlabs`.`iadv_effectievsegexpense`;
CREATE TABLE  `bizlabs`.`iadv_effectievsegexpense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `totalEffAdvExpense` int(11) NOT NULL,
  `BlueBloods_EffSegExp` int(11) NOT NULL,
  `Raffles_EffSegExp` int(11) NOT NULL,
  `Wannabes_EffSegExp` int(11) NOT NULL,
  `Strugglers_EffSegExp` int(11) NOT NULL,
  `Deprived_EffSegExp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `EffSegExp_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`iadv_effectievsegexpense`
--

/*!40000 ALTER TABLE `iadv_effectievsegexpense` DISABLE KEYS */;
LOCK TABLES `iadv_effectievsegexpense` WRITE;
INSERT INTO `bizlabs`.`iadv_effectievsegexpense` VALUES  (69,20,1015,203,203,203,203,203),
 (70,21,1678,436,537,235,235,235),
 (67,18,1015,203,203,203,203,203),
 (68,19,1678,436,537,235,235,235);
UNLOCK TABLES;
/*!40000 ALTER TABLE `iadv_effectievsegexpense` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`iadv_segmentexpense`
--

DROP TABLE IF EXISTS `bizlabs`.`iadv_segmentexpense`;
CREATE TABLE  `bizlabs`.`iadv_segmentexpense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `totalAdvExpense` int(11) NOT NULL,
  `BlueBloods_SegExp` int(11) NOT NULL,
  `Raffles_SegExp` int(11) NOT NULL,
  `Wannabes_SegExp` int(11) NOT NULL,
  `Strugglers_SegExp` int(11) NOT NULL,
  `Deprived_SegExp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SegExp_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`iadv_segmentexpense`
--

/*!40000 ALTER TABLE `iadv_segmentexpense` DISABLE KEYS */;
LOCK TABLES `iadv_segmentexpense` WRITE;
INSERT INTO `bizlabs`.`iadv_segmentexpense` VALUES  (72,20,1300,260,260,260,260,260),
 (73,21,2150,559,688,301,301,301),
 (70,18,1300,260,260,260,260,260),
 (71,19,2150,559,688,301,301,301);
UNLOCK TABLES;
/*!40000 ALTER TABLE `iadv_segmentexpense` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`imdsvalues`
--

DROP TABLE IF EXISTS `bizlabs`.`imdsvalues`;
CREATE TABLE  `bizlabs`.`imdsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `economicValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IMDSValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`imdsvalues`
--

/*!40000 ALTER TABLE `imdsvalues` DISABLE KEYS */;
LOCK TABLES `imdsvalues` WRITE;
INSERT INTO `bizlabs`.`imdsvalues` VALUES  (38,18,12.8755,5.7576,4.3434),
 (39,19,8.5837,11.9192,10.0000),
 (40,20,12.8755,5.7576,4.3434),
 (41,21,8.5837,11.9192,10.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `imdsvalues` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`isemanticvalues`
--

DROP TABLE IF EXISTS `bizlabs`.`isemanticvalues`;
CREATE TABLE  `bizlabs`.`isemanticvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `designValue` float(10,4) NOT NULL,
  `fragranceValue` float(10,4) NOT NULL,
  `persistenceValue` float(10,4) NOT NULL,
  `packagingValue` float(10,4) NOT NULL,
  `safetyValue` float(10,4) NOT NULL,
  `price` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ISemanticValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`isemanticvalues`
--

/*!40000 ALTER TABLE `isemanticvalues` DISABLE KEYS */;
LOCK TABLES `isemanticvalues` WRITE;
INSERT INTO `bizlabs`.`isemanticvalues` VALUES  (41,18,2.4545,2.7576,3.2424,1.8485,1.8485,3.1373),
 (42,19,4.2727,4.5758,5.3030,3.3636,3.3636,4.4249),
 (43,20,2.4545,2.7576,3.2424,1.8485,1.8485,3.1373),
 (44,21,4.2727,4.5758,5.3030,3.3636,3.3636,4.4249);
UNLOCK TABLES;
/*!40000 ALTER TABLE `isemanticvalues` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`marginoffered`
--

DROP TABLE IF EXISTS `bizlabs`.`marginoffered`;
CREATE TABLE  `bizlabs`.`marginoffered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_mo` float(10,4) NOT NULL,
  `generalStore_mo` float(10,4) NOT NULL,
  `kiranaStore_mo` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `marginOffbrandId_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=7220 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`marginoffered`
--

/*!40000 ALTER TABLE `marginoffered` DISABLE KEYS */;
LOCK TABLES `marginoffered` WRITE;
INSERT INTO `bizlabs`.`marginoffered` VALUES  (7000,2000,20.0000,15.0000,10.0000),
 (7001,2001,20.0000,15.0000,10.0000),
 (7002,2002,20.0000,15.0000,10.0000),
 (7003,2003,20.0000,15.0000,10.0000),
 (7004,2004,20.0000,15.0000,10.0000),
 (7005,2005,20.0000,15.0000,10.0000),
 (7006,2006,20.0000,15.0000,10.0000),
 (7007,2007,20.0000,15.0000,10.0000),
 (7008,2008,20.0000,15.0000,10.0000),
 (7009,2009,20.0000,15.0000,10.0000),
 (7010,2010,20.0000,15.0000,10.0000),
 (7011,2011,20.0000,15.0000,10.0000),
 (7012,2012,20.0000,15.0000,10.0000),
 (7013,2013,20.0000,15.0000,10.0000),
 (7014,2014,20.0000,15.0000,10.0000),
 (7015,2015,20.0000,15.0000,10.0000),
 (7016,2016,20.0000,15.0000,10.0000),
 (7017,2017,20.0000,15.0000,10.0000),
 (7018,2018,20.0000,15.0000,10.0000),
 (7019,2019,20.0000,15.0000,10.0000),
 (7101,2101,20.0000,15.0000,10.0000),
 (7100,2100,20.0000,15.0000,10.0000),
 (7102,2102,20.0000,15.0000,10.0000),
 (7103,2103,20.0000,15.0000,10.0000),
 (7105,2105,20.0000,15.0000,10.0000),
 (7104,2104,20.0000,15.0000,10.0000),
 (7106,2106,20.0000,15.0000,10.0000),
 (7107,2107,20.0000,15.0000,10.0000),
 (7108,2108,20.0000,15.0000,10.0000),
 (7109,2109,20.0000,15.0000,10.0000),
 (7110,2110,20.0000,15.0000,10.0000),
 (7111,2111,20.0000,15.0000,10.0000),
 (7112,2112,20.0000,15.0000,10.0000),
 (7113,2113,20.0000,15.0000,10.0000),
 (7114,2114,20.0000,15.0000,10.0000),
 (7115,2115,20.0000,15.0000,10.0000),
 (7117,2117,20.0000,15.0000,10.0000),
 (7116,2116,20.0000,15.0000,10.0000),
 (7119,2119,20.0000,15.0000,10.0000),
 (7118,2118,20.0000,15.0000,10.0000),
 (7201,2201,20.0000,15.0000,10.0000),
 (7200,2200,20.0000,15.0000,10.0000),
 (7202,2202,20.0000,15.0000,10.0000),
 (7203,2203,20.0000,15.0000,10.0000),
 (7205,2205,20.0000,15.0000,10.0000),
 (7204,2204,20.0000,15.0000,10.0000),
 (7206,2206,20.0000,15.0000,10.0000),
 (7207,2207,20.0000,15.0000,10.0000),
 (7208,2208,20.0000,15.0000,10.0000),
 (7209,2209,20.0000,15.0000,10.0000),
 (7210,2210,20.0000,15.0000,10.0000),
 (7211,2211,20.0000,15.0000,10.0000),
 (7212,2212,20.0000,15.0000,10.0000),
 (7213,2213,20.0000,15.0000,10.0000),
 (7214,2214,20.0000,15.0000,10.0000),
 (7215,2215,20.0000,15.0000,10.0000),
 (7217,2217,20.0000,15.0000,10.0000),
 (7216,2216,20.0000,15.0000,10.0000),
 (7219,2219,20.0000,15.0000,10.0000),
 (7218,2218,20.0000,15.0000,10.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `marginoffered` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`marginoffered_metadata`
--

DROP TABLE IF EXISTS `bizlabs`.`marginoffered_metadata`;
CREATE TABLE  `bizlabs`.`marginoffered_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` int(11) NOT NULL,
  `supermarket_mo` float(10,4) NOT NULL,
  `generalStore_mo` float(10,4) NOT NULL,
  `kiranaStore_mo` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`marginoffered_metadata`
--

/*!40000 ALTER TABLE `marginoffered_metadata` DISABLE KEYS */;
LOCK TABLES `marginoffered_metadata` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `marginoffered_metadata` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`mds_segment_idealvaluemap`
--

DROP TABLE IF EXISTS `bizlabs`.`mds_segment_idealvaluemap`;
CREATE TABLE  `bizlabs`.`mds_segment_idealvaluemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) NOT NULL,
  `period` int(11) NOT NULL,
  `economyValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`mds_segment_idealvaluemap`
--

/*!40000 ALTER TABLE `mds_segment_idealvaluemap` DISABLE KEYS */;
LOCK TABLES `mds_segment_idealvaluemap` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `mds_segment_idealvaluemap` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`mds_segment_relativeimp`
--

DROP TABLE IF EXISTS `bizlabs`.`mds_segment_relativeimp`;
CREATE TABLE  `bizlabs`.`mds_segment_relativeimp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) NOT NULL,
  `period` int(11) NOT NULL,
  `economyValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`mds_segment_relativeimp`
--

/*!40000 ALTER TABLE `mds_segment_relativeimp` DISABLE KEYS */;
LOCK TABLES `mds_segment_relativeimp` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `mds_segment_relativeimp` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`operations`
--

DROP TABLE IF EXISTS `bizlabs`.`operations`;
CREATE TABLE  `bizlabs`.`operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `max_capacity` int(11) DEFAULT NULL,
  `capacity_increase` int(11) DEFAULT NULL,
  `expansion_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11210 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`operations`
--

/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
LOCK TABLES `operations` WRITE;
INSERT INTO `bizlabs`.`operations` VALUES  (11000,0,1,100000,0,0),
 (11001,0,2,100000,0,0),
 (11002,0,3,100000,0,0),
 (11003,0,4,100000,0,0),
 (11004,0,5,100000,0,0),
 (11005,0,6,100000,0,0),
 (11006,0,7,100000,0,0),
 (11007,0,8,100000,0,0),
 (11008,0,9,100000,0,0),
 (11009,0,10,100000,0,0),
 (11100,1,1,100000,50000,3000000),
 (11101,1,2,100000,50000,3000000),
 (11102,1,3,100000,0,0),
 (11103,1,4,100000,0,0),
 (11104,1,5,100000,0,0),
 (11105,1,6,100000,50000,3000000),
 (11106,1,7,100000,0,0),
 (11107,1,8,100000,100000,4000000),
 (11108,1,9,100000,0,0),
 (11109,1,10,100000,0,0),
 (11200,2,1,150000,0,0),
 (11201,2,2,150000,0,0),
 (11202,2,3,100000,0,0),
 (11203,2,4,100000,0,0),
 (11204,2,5,100000,0,0),
 (11205,2,6,150000,0,0),
 (11206,2,7,100000,0,0),
 (11207,2,8,200000,0,0),
 (11208,2,9,100000,0,0),
 (11209,2,10,100000,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`perceptualobj`
--

DROP TABLE IF EXISTS `bizlabs`.`perceptualobj`;
CREATE TABLE  `bizlabs`.`perceptualobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scale` varchar(100) NOT NULL,
  `dimension1` varchar(100) DEFAULT NULL,
  `objective1` float DEFAULT NULL,
  `dimension2` varchar(100) DEFAULT NULL,
  `objective2` float DEFAULT NULL,
  `brandid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `perceptualobj_fk` (`brandid`)
) ENGINE=MyISAM AUTO_INCREMENT=5220 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`perceptualobj`
--

/*!40000 ALTER TABLE `perceptualobj` DISABLE KEYS */;
LOCK TABLES `perceptualobj` WRITE;
INSERT INTO `bizlabs`.`perceptualobj` VALUES  (5000,'NoObjective','-',0,'-',0,2000),
 (5001,'NoObjective','-',0,'-',0,2001),
 (5002,'NoObjective','-',0,'-',0,2002),
 (5003,'NoObjective','-',0,'-',0,2003),
 (5004,'NoObjective','-',0,'-',0,2004),
 (5005,'NoObjective','-',0,'-',0,2005),
 (5006,'NoObjective','-',0,'-',0,2006),
 (5007,'NoObjective','-',0,'-',0,2007),
 (5008,'NoObjective','-',0,'-',0,2008),
 (5009,'NoObjective','-',0,'-',0,2009),
 (5010,'NoObjective','-',0,'-',0,2010),
 (5011,'NoObjective','-',0,'-',0,2011),
 (5012,'NoObjective','-',0,'-',0,2012),
 (5013,'NoObjective','-',0,'-',0,2013),
 (5014,'NoObjective','-',0,'-',0,2014),
 (5015,'NoObjective','-',0,'-',0,2015),
 (5016,'NoObjective','-',0,'-',0,2016),
 (5017,'NoObjective','-',0,'-',0,2017),
 (5018,'NoObjective','-',0,'-',0,2018),
 (5019,'NoObjective','-',0,'-',0,2019),
 (5101,'NoObjective','-',0,'-',0,2101),
 (5100,'NoObjective','-',0,'-',0,2100),
 (5102,'NoObjective','-',0,'-',0,2102),
 (5103,'NoObjective','-',0,'-',0,2103),
 (5105,'NoObjective','-',0,'-',0,2105),
 (5104,'NoObjective','-',0,'-',0,2104),
 (5106,'NoObjective','-',0,'-',0,2106),
 (5107,'NoObjective','-',0,'-',0,2107),
 (5108,'NoObjective','-',0,'-',0,2108),
 (5109,'NoObjective','-',0,'-',0,2109),
 (5110,'NoObjective','-',0,'-',0,2110),
 (5111,'NoObjective','-',0,'-',0,2111),
 (5112,'NoObjective','-',0,'-',0,2112),
 (5113,'NoObjective','-',0,'-',0,2113),
 (5114,'NoObjective','-',0,'-',0,2114),
 (5115,'NoObjective','-',0,'-',0,2115),
 (5117,'NoObjective','-',0,'-',0,2117),
 (5116,'NoObjective','-',0,'-',0,2116),
 (5119,'NoObjective','-',0,'-',0,2119),
 (5118,'NoObjective','-',0,'-',0,2118),
 (5201,'NoObjective','-',0,'-',0,2201),
 (5200,'NoObjective','-',0,'-',0,2200),
 (5202,'NoObjective','-',0,'-',0,2202),
 (5203,'NoObjective','-',0,'-',0,2203),
 (5205,'NoObjective','-',0,'-',0,2205),
 (5204,'NoObjective','-',0,'-',0,2204),
 (5206,'NoObjective','-',0,'-',0,2206),
 (5207,'NoObjective','-',0,'-',0,2207),
 (5208,'NoObjective','-',0,'-',0,2208),
 (5209,'NoObjective','-',0,'-',0,2209),
 (5210,'NoObjective','-',0,'-',0,2210),
 (5211,'NoObjective','-',0,'-',0,2211),
 (5212,'NoObjective','-',0,'-',0,2212),
 (5213,'NoObjective','-',0,'-',0,2213),
 (5214,'NoObjective','-',0,'-',0,2214),
 (5215,'NoObjective','-',0,'-',0,2215),
 (5217,'NoObjective','-',0,'-',0,2217),
 (5216,'NoObjective','-',0,'-',0,2216),
 (5219,'NoObjective','-',0,'-',0,2219),
 (5218,'NoObjective','-',0,'-',0,2218);
UNLOCK TABLES;
/*!40000 ALTER TABLE `perceptualobj` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`period_constants`
--

DROP TABLE IF EXISTS `bizlabs`.`period_constants`;
CREATE TABLE  `bizlabs`.`period_constants` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERIOD` int(11) DEFAULT NULL,
  `NAME` varchar(1000) DEFAULT NULL,
  `VALUE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`period_constants`
--

/*!40000 ALTER TABLE `period_constants` DISABLE KEYS */;
LOCK TABLES `period_constants` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `period_constants` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`purchaseintention_brand`
--

DROP TABLE IF EXISTS `bizlabs`.`purchaseintention_brand`;
CREATE TABLE  `bizlabs`.`purchaseintention_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `blueBloods_PI` float(10,4) NOT NULL,
  `raffles_PI` float(10,4) NOT NULL,
  `wannabes_PI` float(10,4) NOT NULL,
  `strugglers_PI` float(10,4) NOT NULL,
  `deprived_PI` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pi_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`purchaseintention_brand`
--

/*!40000 ALTER TABLE `purchaseintention_brand` DISABLE KEYS */;
LOCK TABLES `purchaseintention_brand` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `purchaseintention_brand` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`purchaseintention_channel`
--

DROP TABLE IF EXISTS `bizlabs`.`purchaseintention_channel`;
CREATE TABLE  `bizlabs`.`purchaseintention_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `superMarkets_pi` float(10,4) NOT NULL,
  `generalStores_pi` float(10,4) NOT NULL,
  `kiranaStores_pi` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelpi_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`purchaseintention_channel`
--

/*!40000 ALTER TABLE `purchaseintention_channel` DISABLE KEYS */;
LOCK TABLES `purchaseintention_channel` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `purchaseintention_channel` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_brand_awareness`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_brand_awareness`;
CREATE TABLE  `bizlabs`.`rep_brand_awareness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `blueblood` float DEFAULT NULL,
  `raffles` float DEFAULT NULL,
  `wannabes` float DEFAULT NULL,
  `strugglers` float DEFAULT NULL,
  `deprived` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_brand_awareness`
--

/*!40000 ALTER TABLE `rep_brand_awareness` DISABLE KEYS */;
LOCK TABLES `rep_brand_awareness` WRITE;
INSERT INTO `bizlabs`.`rep_brand_awareness` VALUES  (1,0,'Alpha','AMAN',0,0.312,0.312,0.312,0.312,0.312),
 (2,0,'Alpha','AYAN',0,0.312,0.312,0.312,0.312,0.312),
 (3,0,'Bravo','BISU',0,0.312,0.312,0.312,0.312,0.312),
 (4,0,'Bravo','BUNI',0,0.312,0.312,0.312,0.312,0.312),
 (5,0,'Charlie','CITU',0,0.312,0.312,0.312,0.312,0.312),
 (6,0,'Charlie','COWN',0,0.312,0.312,0.312,0.312,0.312),
 (7,0,'Delta','DINK',0,0.312,0.312,0.312,0.312,0.312),
 (8,0,'Delta','DOPE',0,0.312,0.312,0.312,0.312,0.312),
 (9,0,'Echo','ENOT',0,0.312,0.312,0.312,0.312,0.312),
 (10,0,'Echo','EPAD',0,0.312,0.312,0.312,0.312,0.312),
 (11,0,'Foxtrot','FENI',0,0.312,0.312,0.312,0.312,0.312),
 (12,0,'Foxtrot','FIST',0,0.312,0.312,0.312,0.312,0.312),
 (13,0,'Golf','GEET',0,0.312,0.312,0.312,0.312,0.312),
 (14,0,'Golf','GIRU',0,0.312,0.312,0.312,0.312,0.312),
 (15,0,'Hotel','HIWI',0,0.312,0.312,0.312,0.312,0.312),
 (16,0,'Hotel','HOPE',0,0.312,0.312,0.312,0.312,0.312),
 (17,0,'India','IFCO',0,0.312,0.312,0.312,0.312,0.312),
 (18,0,'India','IPCA',0,0.312,0.312,0.312,0.312,0.312),
 (19,0,'Juliet','JANO',0,0.312,0.312,0.312,0.312,0.312),
 (20,0,'Juliet','JOSE',0,0.312,0.312,0.312,0.312,0.312),
 (21,1,'Alpha','AMAN',0,0.2319,0.2329,0.2317,0.4348,0.2615),
 (22,1,'Alpha','AYAN',0,0.4285,0.2328,0.2317,0.232,0.2872),
 (23,1,'Bravo','BISU',0,0.2319,0.4494,0.2318,0.2321,0.3001),
 (24,1,'Bravo','BUNI',0,0.2319,0.2329,0.4193,0.2321,0.2812),
 (25,1,'Charlie','CITU',0,0.2315,0.2324,0.2314,0.4189,0.2589),
 (26,1,'Charlie','COWN',0,0.2315,0.2324,0.3914,0.2317,0.2736),
 (27,1,'Delta','DINK',0,0.2331,0.2345,0.4494,0.2333,0.2901),
 (28,1,'Delta','DOPE',0,0.4494,0.2345,0.2329,0.2333,0.2941),
 (29,1,'Echo','ENOT',0,0.2327,0.234,0.443,0.2329,0.2881),
 (30,1,'Echo','EPAD',0,0.2327,0.234,0.2325,0.4494,0.2644),
 (31,1,'Foxtrot','FENI',0,0.2319,0.2329,0.2318,0.4355,0.2617),
 (32,1,'Foxtrot','FIST',0,0.4301,0.2329,0.2318,0.2321,0.2878),
 (33,1,'Golf','GEET',0,0.2319,0.4494,0.2318,0.2321,0.3001),
 (34,1,'Golf','GIRU',0,0.2319,0.2329,0.4225,0.2321,0.282),
 (35,1,'Hotel','HIWI',0,0.2284,0.2284,0.2284,0.2284,0.2284),
 (36,1,'Hotel','HOPE',0,0.2284,0.2284,0.2284,0.2284,0.2284),
 (37,1,'India','IFCO',0,0.2319,0.2329,0.4225,0.2321,0.282),
 (38,1,'India','IPCA',0,0.4301,0.2329,0.2318,0.2321,0.2878),
 (39,1,'Juliet','JANO',0,0.2319,0.2329,0.2318,0.4355,0.2617),
 (40,1,'Juliet','JOSE',0,0.2319,0.4494,0.2318,0.2321,0.3001);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_brand_awareness` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_brand_characteristics`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_brand_characteristics`;
CREATE TABLE  `bizlabs`.`rep_brand_characteristics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `design` int(11) DEFAULT NULL,
  `fragrance` int(11) DEFAULT NULL,
  `persistence` int(11) DEFAULT NULL,
  `packaging` int(11) DEFAULT NULL,
  `safety` int(11) DEFAULT NULL,
  `basecost` float DEFAULT NULL,
  `retailprice` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_brand_characteristics`
--

/*!40000 ALTER TABLE `rep_brand_characteristics` DISABLE KEYS */;
LOCK TABLES `rep_brand_characteristics` WRITE;
INSERT INTO `bizlabs`.`rep_brand_characteristics` VALUES  (1,0,'Alpha','AMAN','Maintained',31,26,25,32,21,127,199),
 (2,0,'Alpha','AYAN','Maintained',80,85,70,85,71,349,555),
 (3,0,'Bravo','BISU','Maintained',70,65,60,70,55,289,427),
 (4,0,'Bravo','BUNI','Maintained',50,47,45,48,32,206,268),
 (5,0,'Charlie','CITU','Maintained',34,24,22,36,20,125,201),
 (6,0,'Charlie','COWN','Maintained',65,48,44,43,31,211,306),
 (7,0,'Delta','DINK','Maintained',51,52,38,45,30,196,272),
 (8,0,'Delta','DOPE','Maintained',90,81,64,83,78,347,552),
 (9,0,'Echo','ENOT','Maintained',62,51,40,42,28,202,295),
 (10,0,'Echo','EPAD','Maintained',34,32,30,30,26,145,217),
 (11,0,'Foxtrot','FENI','Maintained',35,35,23,32,24,137,218),
 (12,0,'Foxtrot','FIST','Maintained',72,83,72,81,65,342,533),
 (13,0,'Golf','GEET','Maintained',64,76,61,72,45,289,418),
 (14,0,'Golf','GIRU','Maintained',52,46,44,49,37,210,280),
 (15,0,'Hotel','HIWI','Maintained',32,30,26,38,30,145,220),
 (16,0,'Hotel','HOPE','Maintained',71,63,64,69,45,286,430),
 (17,0,'India','IFCO','Maintained',60,48,44,49,37,216,308),
 (18,0,'India','IPCA','Maintained',80,80,74,81,60,344,530),
 (19,0,'Juliet','JANO','Maintained',38,28,23,34,19,130,215),
 (20,0,'Juliet','JOSE','Maintained',65,72,58,76,45,284,420),
 (21,1,'Alpha','AMAN','Maintained',31,26,25,32,21,131,204),
 (22,1,'Alpha','AYAN','Maintained',80,85,70,85,71,359,550),
 (23,1,'Bravo','BISU','Maintained',70,65,60,70,55,298,417),
 (24,1,'Bravo','BUNI','Maintained',50,47,45,48,32,212,293),
 (25,1,'Charlie','CITU','Maintained',34,24,22,36,20,129,206),
 (26,1,'Charlie','COWN','Maintained',65,48,44,43,31,217,296),
 (27,1,'Delta','DINK','Maintained',51,52,38,45,30,202,287),
 (28,1,'Delta','DOPE','Maintained',90,81,64,83,78,357,552),
 (29,1,'Echo','ENOT','Maintained',62,51,40,42,28,208,295),
 (30,1,'Echo','EPAD','Maintained',34,32,30,30,26,149,212),
 (31,1,'Foxtrot','FENI','Maintained',35,35,23,32,24,141,218),
 (32,1,'Foxtrot','FIST','Maintained',72,83,72,81,65,352,533),
 (33,1,'Golf','GEET','Maintained',64,76,61,72,45,298,418),
 (34,1,'Golf','GIRU','Maintained',52,46,44,49,37,216,280),
 (35,1,'Hotel','HIWI','Maintained',32,30,26,38,30,149,220),
 (36,1,'Hotel','HOPE','Maintained',71,63,64,69,45,295,430),
 (37,1,'India','IFCO','Maintained',60,48,44,49,37,222,308),
 (38,1,'India','IPCA','Maintained',80,80,74,81,60,354,530),
 (39,1,'Juliet','JANO','Maintained',38,28,23,34,19,134,215),
 (40,1,'Juliet','JOSE','Maintained',65,72,58,76,45,293,420);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_brand_characteristics` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_brand_map`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_brand_map`;
CREATE TABLE  `bizlabs`.`rep_brand_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `design` float DEFAULT NULL,
  `fragrance` float DEFAULT NULL,
  `persistence` float DEFAULT NULL,
  `packaging` float DEFAULT NULL,
  `safety` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_brand_map`
--

/*!40000 ALTER TABLE `rep_brand_map` DISABLE KEYS */;
LOCK TABLES `rep_brand_map` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_brand_map` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_brand_pi`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_brand_pi`;
CREATE TABLE  `bizlabs`.`rep_brand_pi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `blueblood` float DEFAULT NULL,
  `raffles` float DEFAULT NULL,
  `wannabes` float DEFAULT NULL,
  `strugglers` float DEFAULT NULL,
  `deprived` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_brand_pi`
--

/*!40000 ALTER TABLE `rep_brand_pi` DISABLE KEYS */;
LOCK TABLES `rep_brand_pi` WRITE;
INSERT INTO `bizlabs`.`rep_brand_pi` VALUES  (1,0,'Alpha','AMAN',0,0.0003,0.0018,0.0167,0.1611),
 (2,0,'Alpha','AYAN',0,0.2194,0.0184,0.001,0.0002),
 (3,0,'Bravo','BISU',0,0.0318,0.2,0.0095,0.0015),
 (4,0,'Bravo','BUNI',0,0.0019,0.0135,0.1305,0.027),
 (5,0,'Charlie','CITU',0,0.0003,0.0018,0.0175,0.1509),
 (6,0,'Charlie','COWN',0,0.0027,0.0203,0.1305,0.0168),
 (7,0,'Delta','DINK',0,0.0018,0.0126,0.1417,0.0283),
 (8,0,'Delta','DOPE',0,0.2166,0.0194,0.0011,0.0002),
 (9,0,'Echo','ENOT',0,0.0022,0.0165,0.1537,0.0206),
 (10,0,'Echo','EPAD',0,0.0004,0.0027,0.0248,0.1314),
 (11,0,'Foxtrot','FENI',0,0.0004,0.0026,0.0255,0.1431),
 (12,0,'Foxtrot','FIST',0,0.2076,0.0281,0.0015,0.0003),
 (13,0,'Golf','GEET',0,0.0318,0.208,0.0095,0.0015),
 (14,0,'Golf','GIRU',0,0.0022,0.0159,0.1481,0.0228),
 (15,0,'Hotel','HIWI',0,0.0004,0.0029,0.0278,0.1303),
 (16,0,'Hotel','HOPE',0,0.0293,0.1918,0.0099,0.0015),
 (17,0,'India','IFCO',0,0.0031,0.0233,0.1176,0.015),
 (18,0,'India','IPCA',0,0.2185,0.0288,0.0015,0.0003),
 (19,0,'Juliet','JANO',0,0.0003,0.0022,0.022,0.1457),
 (20,0,'Juliet','JOSE',0,0.029,0.1895,0.0096,0.0016),
 (21,1,'Alpha','AMAN',0,0.0003,0.0015,0.0143,0.1404),
 (22,1,'Alpha','AYAN',0,0.2245,0.0195,0.0012,0.0002),
 (23,1,'Bravo','BISU',0,0.0307,0.2198,0.0114,0.0016),
 (24,1,'Bravo','BUNI',0,0.002,0.0121,0.123,0.0275),
 (25,1,'Charlie','CITU',0,0.0003,0.0015,0.0149,0.1349),
 (26,1,'Charlie','COWN',0,0.0026,0.0168,0.16,0.0187),
 (27,1,'Delta','DINK',0,0.0018,0.0111,0.1239,0.0296),
 (28,1,'Delta','DOPE',0,0.2114,0.0203,0.0012,0.0002),
 (29,1,'Echo','ENOT',0,0.0021,0.014,0.1558,0.0223),
 (30,1,'Echo','EPAD',0,0.0004,0.0023,0.0208,0.1404),
 (31,1,'Foxtrot','FENI',0,0.0004,0.0022,0.0215,0.1529),
 (32,1,'Foxtrot','FIST',0,0.2123,0.0296,0.0018,0.0003),
 (33,1,'Golf','GEET',0,0.0314,0.2056,0.011,0.0017),
 (34,1,'Golf','GIRU',0,0.0022,0.0135,0.1338,0.0247),
 (35,1,'Hotel','HIWI',0,0.0004,0.0024,0.0234,0.1416),
 (36,1,'Hotel','HOPE',0,0.0289,0.1959,0.0115,0.0016),
 (37,1,'India','IFCO',0,0.003,0.0197,0.1392,0.0163),
 (38,1,'India','IPCA',0,0.2164,0.0302,0.0018,0.0003),
 (39,1,'Juliet','JANO',0,0.0003,0.0019,0.0186,0.143),
 (40,1,'Juliet','JOSE',0,0.0285,0.18,0.0111,0.0017);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_brand_pi` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_buying_behaviour`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_buying_behaviour`;
CREATE TABLE  `bizlabs`.`rep_buying_behaviour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `segment` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_buying_behaviour`
--

/*!40000 ALTER TABLE `rep_buying_behaviour` DISABLE KEYS */;
LOCK TABLES `rep_buying_behaviour` WRITE;
INSERT INTO `bizlabs`.`rep_buying_behaviour` VALUES  (1,0,'Raffles',0.5504,0.3764,0.0732,1),
 (2,0,'Wannabes',0.2584,0.5734,0.1682,1),
 (3,0,'Strugglers',0.1503,0.4421,0.4076,1),
 (4,0,'Deprived',0.0365,0.3349,0.6286,1),
 (5,0,'Total',0.261598,0.431439,0.306963,1),
 (6,1,'Raffles',0.559558,0.369725,0.0707167,1),
 (7,1,'Wannabes',0.274542,0.563475,0.161983,1),
 (8,1,'Strugglers',0.155558,0.444542,0.3999,1),
 (9,1,'Deprived',0.0378167,0.338758,0.623425,1),
 (10,1,'Total',0.268279,0.428789,0.302932,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_buying_behaviour` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_competitive_adv`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_competitive_adv`;
CREATE TABLE  `bizlabs`.`rep_competitive_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `blueblood` float DEFAULT NULL,
  `raffles` float DEFAULT NULL,
  `wannabes` float DEFAULT NULL,
  `strugglers` float DEFAULT NULL,
  `deprived` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_competitive_adv`
--

/*!40000 ALTER TABLE `rep_competitive_adv` DISABLE KEYS */;
LOCK TABLES `rep_competitive_adv` WRITE;
INSERT INTO `bizlabs`.`rep_competitive_adv` VALUES  (1,0,'Alpha','AMAN',0,288000,288000,288000,288000,1.152e+06),
 (2,0,'Alpha','AYAN',0,288000,288000,288000,288000,1.152e+06),
 (3,0,'Bravo','BISU',0,288000,288000,288000,288000,1.152e+06),
 (4,0,'Bravo','BUNI',0,288000,288000,288000,288000,1.152e+06),
 (5,0,'Charlie','CITU',0,288000,288000,288000,288000,1.152e+06),
 (6,0,'Charlie','COWN',0,288000,288000,288000,288000,1.152e+06),
 (7,0,'Delta','DINK',0,288000,288000,288000,288000,1.152e+06),
 (8,0,'Delta','DOPE',0,288000,288000,288000,288000,1.152e+06),
 (9,0,'Echo','ENOT',0,288000,288000,288000,288000,1.152e+06),
 (10,0,'Echo','EPAD',0,288000,288000,288000,288000,1.152e+06),
 (11,0,'Foxtrot','FENI',0,288000,288000,288000,288000,1.152e+06),
 (12,0,'Foxtrot','FIST',0,288000,288000,288000,288000,1.152e+06),
 (13,0,'Golf','GEET',0,288000,288000,288000,288000,1.152e+06),
 (14,0,'Golf','GIRU',0,288000,288000,288000,288000,1.152e+06),
 (15,0,'Hotel','HIWI',0,288000,288000,288000,288000,1.152e+06),
 (16,0,'Hotel','HOPE',0,288000,288000,288000,288000,1.152e+06),
 (17,0,'India','IFCO',0,288000,288000,288000,288000,1.152e+06),
 (18,0,'India','IPCA',0,288000,288000,288000,288000,1.152e+06),
 (19,0,'Juliet','JANO',0,288000,288000,288000,288000,1.152e+06),
 (20,0,'Juliet','JOSE',0,288000,288000,288000,288000,1.152e+06),
 (21,1,'Alpha','AMAN',0,39600,39600,39600,831600,2.1024e+06),
 (22,1,'Alpha','AYAN',0,819000,39000,39000,39000,2.088e+06),
 (23,1,'Bravo','BISU',0,40000,840000,40000,40000,2.112e+06),
 (24,1,'Bravo','BUNI',0,39600,39600,831600,39600,2.1024e+06),
 (25,1,'Charlie','CITU',0,36000,36000,36000,756000,2.016e+06),
 (26,1,'Charlie','COWN',0,36000,36000,756000,36000,2.016e+06),
 (27,1,'Delta','DINK',0,52000,52000,1.092e+06,52000,2.4e+06),
 (28,1,'Delta','DOPE',0,1.092e+06,52000,52000,52000,2.4e+06),
 (29,1,'Echo','ENOT',0,48000,48000,1.008e+06,48000,2.304e+06),
 (30,1,'Echo','EPAD',0,48000,48000,48000,1.008e+06,2.304e+06),
 (31,1,'Foxtrot','FENI',0,40000,40000,40000,840000,2.112e+06),
 (32,1,'Foxtrot','FIST',0,840000,40000,40000,40000,2.112e+06),
 (33,1,'Golf','GEET',0,40000,840000,40000,40000,2.112e+06),
 (34,1,'Golf','GIRU',0,40000,40000,840000,40000,2.112e+06),
 (35,1,'Hotel','HIWI',0,0,0,0,0,1.152e+06),
 (36,1,'Hotel','HOPE',0,0,0,0,0,1.152e+06),
 (37,1,'India','IFCO',0,40000,40000,840000,40000,2.112e+06),
 (38,1,'India','IPCA',0,840000,40000,40000,40000,2.112e+06),
 (39,1,'Juliet','JANO',0,40000,40000,40000,840000,2.112e+06),
 (40,1,'Juliet','JOSE',0,40000,840000,40000,40000,2.112e+06);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_competitive_adv` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_competitive_margin`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_competitive_margin`;
CREATE TABLE  `bizlabs`.`rep_competitive_margin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_competitive_margin`
--

/*!40000 ALTER TABLE `rep_competitive_margin` DISABLE KEYS */;
LOCK TABLES `rep_competitive_margin` WRITE;
INSERT INTO `bizlabs`.`rep_competitive_margin` VALUES  (1,0,'Alpha','AMAN',0.2,0.15,0.1),
 (2,0,'Alpha','AYAN',0.2,0.15,0.1),
 (3,0,'Bravo','BISU',0.2,0.15,0.1),
 (4,0,'Bravo','BUNI',0.2,0.15,0.1),
 (5,0,'Charlie','CITU',0.2,0.15,0.1),
 (6,0,'Charlie','COWN',0.2,0.15,0.1),
 (7,0,'Delta','DINK',0.2,0.15,0.1),
 (8,0,'Delta','DOPE',0.2,0.15,0.1),
 (9,0,'Echo','ENOT',0.2,0.15,0.1),
 (10,0,'Echo','EPAD',0.2,0.15,0.1),
 (11,0,'Foxtrot','FENI',0.2,0.15,0.1),
 (12,0,'Foxtrot','FIST',0.2,0.15,0.1),
 (13,0,'Golf','GEET',0.2,0.15,0.1),
 (14,0,'Golf','GIRU',0.2,0.15,0.1),
 (15,0,'Hotel','HIWI',0.2,0.15,0.1),
 (16,0,'Hotel','HOPE',0.2,0.15,0.1),
 (17,0,'India','IFCO',0.2,0.15,0.1),
 (18,0,'India','IPCA',0.2,0.15,0.1),
 (19,0,'Juliet','JANO',0.2,0.15,0.1),
 (20,0,'Juliet','JOSE',0.2,0.15,0.1),
 (21,1,'Alpha','AMAN',0.2,0.15,0.1),
 (22,1,'Alpha','AYAN',0.2,0.15,0.1),
 (23,1,'Bravo','BISU',0.2,0.15,0.1),
 (24,1,'Bravo','BUNI',0.2,0.15,0.1),
 (25,1,'Charlie','CITU',0.2,0.15,0.1),
 (26,1,'Charlie','COWN',0.2,0.15,0.1),
 (27,1,'Delta','DINK',0.2,0.15,0.1),
 (28,1,'Delta','DOPE',0.2,0.15,0.1),
 (29,1,'Echo','ENOT',0.2,0.15,0.1),
 (30,1,'Echo','EPAD',0.2,0.15,0.1),
 (31,1,'Foxtrot','FENI',0.2,0.15,0.1),
 (32,1,'Foxtrot','FIST',0.2,0.15,0.1),
 (33,1,'Golf','GEET',0.2,0.15,0.1),
 (34,1,'Golf','GIRU',0.2,0.15,0.1),
 (35,1,'Hotel','HIWI',0.2,0.15,0.1),
 (36,1,'Hotel','HOPE',0.2,0.15,0.1),
 (37,1,'India','IFCO',0.2,0.15,0.1),
 (38,1,'India','IPCA',0.2,0.15,0.1),
 (39,1,'Juliet','JANO',0.2,0.15,0.1),
 (40,1,'Juliet','JOSE',0.2,0.15,0.1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_competitive_margin` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_competitive_sales_force`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_competitive_sales_force`;
CREATE TABLE  `bizlabs`.`rep_competitive_sales_force` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_competitive_sales_force`
--

/*!40000 ALTER TABLE `rep_competitive_sales_force` DISABLE KEYS */;
LOCK TABLES `rep_competitive_sales_force` WRITE;
INSERT INTO `bizlabs`.`rep_competitive_sales_force` VALUES  (1,0,'Alpha','AMAN',15,15,15,45),
 (2,0,'Alpha','AYAN',15,15,15,45),
 (3,0,'Bravo','BISU',15,15,15,45),
 (4,0,'Bravo','BUNI',15,15,15,45),
 (5,0,'Charlie','CITU',15,15,15,45),
 (6,0,'Charlie','COWN',15,15,15,45),
 (7,0,'Delta','DINK',15,15,15,45),
 (8,0,'Delta','DOPE',15,15,15,45),
 (9,0,'Echo','ENOT',15,15,15,45),
 (10,0,'Echo','EPAD',15,15,15,45),
 (11,0,'Foxtrot','FENI',15,15,15,45),
 (12,0,'Foxtrot','FIST',15,15,15,45),
 (13,0,'Golf','GEET',15,15,15,45),
 (14,0,'Golf','GIRU',15,15,15,45),
 (15,0,'Hotel','HIWI',15,15,15,45),
 (16,0,'Hotel','HOPE',15,15,15,45),
 (17,0,'India','IFCO',15,15,15,45),
 (18,0,'India','IPCA',15,15,15,45),
 (19,0,'Juliet','JANO',15,15,15,45),
 (20,0,'Juliet','JOSE',15,15,15,45),
 (21,1,'Alpha','AMAN',5,20,35,60),
 (22,1,'Alpha','AYAN',35,20,5,60),
 (23,1,'Bravo','BISU',20,20,5,45),
 (24,1,'Bravo','BUNI',5,20,20,45),
 (25,1,'Charlie','CITU',5,20,25,50),
 (26,1,'Charlie','COWN',10,25,25,60),
 (27,1,'Delta','DINK',5,30,20,55),
 (28,1,'Delta','DOPE',31,21,3,55),
 (29,1,'Echo','ENOT',5,30,25,60),
 (30,1,'Echo','EPAD',3,25,32,60),
 (31,1,'Foxtrot','FENI',5,15,25,45),
 (32,1,'Foxtrot','FIST',30,12,3,45),
 (33,1,'Golf','GEET',10,25,5,40),
 (34,1,'Golf','GIRU',15,25,10,50),
 (35,1,'Hotel','HIWI',30,11,3,44),
 (36,1,'Hotel','HOPE',20,20,6,46),
 (37,1,'India','IFCO',10,20,15,45),
 (38,1,'India','IPCA',30,12,3,45),
 (39,1,'Juliet','JANO',3,12,30,45),
 (40,1,'Juliet','JOSE',12,27,6,45);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_competitive_sales_force` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_demand_forecast`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_demand_forecast`;
CREATE TABLE  `bizlabs`.`rep_demand_forecast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `segment` varchar(100) DEFAULT NULL,
  `actual_demand` int(11) DEFAULT NULL,
  `forecast_demand` int(11) DEFAULT NULL,
  `expected_growth` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_demand_forecast`
--

/*!40000 ALTER TABLE `rep_demand_forecast` DISABLE KEYS */;
LOCK TABLES `rep_demand_forecast` WRITE;
INSERT INTO `bizlabs`.`rep_demand_forecast` VALUES  (1,0,'Raffles',202744,211064,0.041),
 (2,0,'Wannabes',348519,372138,0.068),
 (3,0,'Strugglers',469047,510922,0.089),
 (4,0,'Deprived',250219,270802,0.082),
 (5,0,'Total',1393962,1353262,-0.029),
 (6,1,'Raffles',217640,227973,0.047),
 (7,1,'Wannabes',373982,400896,0.072),
 (8,1,'Strugglers',505851,555471,0.098),
 (9,1,'Deprived',275279,302878,0.1),
 (10,1,'Total',1372752,1452412,0.058);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_demand_forecast` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_distribution_cov`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_distribution_cov`;
CREATE TABLE  `bizlabs`.`rep_distribution_cov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_distribution_cov`
--

/*!40000 ALTER TABLE `rep_distribution_cov` DISABLE KEYS */;
LOCK TABLES `rep_distribution_cov` WRITE;
INSERT INTO `bizlabs`.`rep_distribution_cov` VALUES  (1,0,'Alpha','AMAN',0.284572,0.208466,0.2953),
 (2,0,'Alpha','AYAN',0.307902,0.214698,0.277558),
 (3,0,'Bravo','BISU',0.296901,0.22224,0.281777),
 (4,0,'Bravo','BUNI',0.287795,0.211009,0.288135),
 (5,0,'Charlie','CITU',0.284522,0.207854,0.294083),
 (6,0,'Charlie','COWN',0.28816,0.211165,0.287093),
 (7,0,'Delta','DINK',0.288084,0.211975,0.28918),
 (8,0,'Delta','DOPE',0.307649,0.214611,0.277559),
 (9,0,'Echo','ENOT',0.288634,0.212998,0.289327),
 (10,0,'Echo','EPAD',0.284656,0.207304,0.292258),
 (11,0,'Foxtrot','FENI',0.284758,0.208138,0.293783),
 (12,0,'Foxtrot','FIST',0.30712,0.214973,0.277765),
 (13,0,'Golf','GEET',0.297315,0.223158,0.282046),
 (14,0,'Golf','GIRU',0.28845,0.212581,0.289127),
 (15,0,'Hotel','HIWI',0.284749,0.207518,0.292371),
 (16,0,'Hotel','HOPE',0.296214,0.221147,0.281497),
 (17,0,'India','IFCO',0.287958,0.210278,0.285922),
 (18,0,'India','IPCA',0.308356,0.215874,0.277948),
 (19,0,'Juliet','JANO',0.28464,0.207949,0.29381),
 (20,0,'Juliet','JOSE',0.296054,0.220841,0.281404),
 (21,1,'Alpha','AMAN',0.10486,0.255505,0.525656),
 (22,1,'Alpha','AYAN',0.555443,0.263449,0.126568),
 (23,1,'Bravo','BISU',0.3574,0.272693,0.131306),
 (24,1,'Bravo','BUNI',0.10816,0.25884,0.348711),
 (25,1,'Charlie','CITU',0.104837,0.255186,0.414284),
 (26,1,'Charlie','COWN',0.195833,0.313159,0.411929),
 (27,1,'Delta','DINK',0.108127,0.358316,0.349009),
 (28,1,'Delta','DOPE',0.507984,0.273009,0.0942548),
 (29,1,'Echo','ENOT',0.109257,0.361006,0.411944),
 (30,1,'Echo','EPAD',0.0684011,0.307232,0.494488),
 (31,1,'Foxtrot','FENI',0.105228,0.203067,0.41708),
 (32,1,'Foxtrot','FIST',0.496683,0.175798,0.0946293),
 (33,1,'Golf','GEET',0.204659,0.322167,0.130837),
 (34,1,'Golf','GIRU',0.273986,0.310835,0.213027),
 (35,1,'Hotel','HIWI',0.473216,0.156976,0.110097),
 (36,1,'Hotel','HOPE',0.355889,0.269875,0.146216),
 (37,1,'India','IFCO',0.195372,0.260452,0.283224),
 (38,1,'India','IPCA',0.497175,0.176168,0.0947067),
 (39,1,'Juliet','JANO',0.0683192,0.168161,0.472785),
 (40,1,'Juliet','JOSE',0.235394,0.338722,0.145676);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_distribution_cov` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_distribution_cov_mkt_share`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_distribution_cov_mkt_share`;
CREATE TABLE  `bizlabs`.`rep_distribution_cov_mkt_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_distribution_cov_mkt_share`
--

/*!40000 ALTER TABLE `rep_distribution_cov_mkt_share` DISABLE KEYS */;
LOCK TABLES `rep_distribution_cov_mkt_share` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_distribution_cov_mkt_share` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_expert_advice`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_expert_advice`;
CREATE TABLE  `bizlabs`.`rep_expert_advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ov_rank` int(11) DEFAULT NULL,
  `spi` int(12) DEFAULT NULL,
  `ms_chg` float DEFAULT NULL,
  `ms` float DEFAULT NULL,
  `ms_rank` int(11) DEFAULT NULL,
  `rev_chg` float DEFAULT NULL,
  `rev` float DEFAULT NULL,
  `rev_rank` int(11) DEFAULT NULL,
  `pf_mrg` float DEFAULT NULL,
  `pf_mrg_rank` int(11) DEFAULT NULL,
  `np_chg` float DEFAULT NULL,
  `np` float DEFAULT NULL,
  `np_rank` int(11) DEFAULT NULL,
  `awareness` varchar(255) DEFAULT NULL,
  `allocation` varchar(255) DEFAULT NULL,
  `pricing` varchar(255) DEFAULT NULL,
  `inventory` varchar(255) DEFAULT NULL,
  `production` varchar(255) DEFAULT NULL,
  `supply` varchar(255) DEFAULT NULL,
  `global` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_expert_advice`
--

/*!40000 ALTER TABLE `rep_expert_advice` DISABLE KEYS */;
LOCK TABLES `rep_expert_advice` WRITE;
INSERT INTO `bizlabs`.`rep_expert_advice` VALUES  (1,0,'Alpha','Congrats',1,74,0,8.7,8,0,1.97,7,-0.4,1,0,-0.01,1,'','AMAN & AYAN','AMAN & AYAN','','','AMAN & AYAN',''),
 (2,0,'Bravo','Congrats',1,74,0,10.9,4,0,2.28,2,-3.6,7,0,-0.08,7,'','BISU & BUNI','BISU & BUNI','','','BISU & BUNI',''),
 (3,0,'Charlie','Congrats',1,74,0,11.7,2,0,1.89,10,-4.3,9,0,-0.08,7,'','CITU & COWN','CITU & COWN','','','CITU & COWN',''),
 (4,0,'Delta','Congrats',1,74,0,8.6,10,0,2.14,4,-0.4,1,0,-0.01,1,'','DINK & DOPE','DINK & DOPE','','','DINK & DOPE',''),
 (5,0,'Echo','Congrats',1,74,0,11.9,1,0,1.94,9,-4.4,10,0,-0.09,10,'','ENOT & EPAD','ENOT & EPAD','','','ENOT & EPAD',''),
 (6,0,'Foxtrot','Congrats',1,74,0,8.9,7,0,2.01,5,-0.4,1,0,-0.01,1,'','FENI & FIST','FENI & FIST','','','FENI & FIST',''),
 (7,0,'Golf','Congrats',1,74,0,11.1,3,0,2.31,1,-3.6,7,0,-0.08,7,'','GEET & GIRU','GEET & GIRU','','','GEET & GIRU',''),
 (8,0,'Hotel','Congrats',1,74,0,9.9,5,0,2.01,5,-1.7,6,0,-0.03,5,'','HIWI & HOPE','HIWI & HOPE','','','HIWI & HOPE',''),
 (9,0,'India','Congrats',1,74,0,8.7,8,0,2.21,3,-0.6,4,0,-0.01,1,'','IFCO & IPCA','IFCO & IPCA','','','IFCO & IPCA',''),
 (10,0,'Juliet','Congrats',1,74,0,9.8,6,0,1.96,8,-1.5,5,0,-0.03,5,'','JANO & JOSE','JOSE','','','JANO & JOSE',''),
 (11,1,'Alpha','Work Hard',6,86,0,8.7,6,32,2.61,4,1.1,5,3020.4,0.03,5,'','AMAN & AYAN','AMAN & AYAN','AMAN','','AMAN & AYAN',''),
 (12,1,'Bravo','Work Hard',5,88,1.9,10.6,4,28.6,2.54,6,0.7,6,1879.1,0.02,6,'','BISU & BUNI','BISU & BUNI','BUNI','BUNI','BISU',''),
 (13,1,'Charlie','Work Hard',9,36,-5.2,5.7,9,-58.5,0.95,9,-49,9,529.9,-0.46,9,'','CITU & COWN','CITU & COWN','CITU','COWN','CITU',''),
 (14,1,'Delta','Congrats',4,90,-3.3,8.4,7,37,2.59,5,2.9,4,-204.4,0.08,4,'','DINK & DOPE','DINK & DOPE','DINK','DINK','',''),
 (15,1,'Echo','Work Hard',10,31,-5.6,3,10,-76.5,0.5,10,-130.2,10,108321,-0.65,10,'','ENOT & EPAD','ENOT & EPAD','ENOT & EPAD','ENOT & EPAD','',''),
 (16,1,'Foxtrot','Congrats',3,119,0.3,12.1,3,73.9,3.37,3,7.7,3,-437.9,0.26,3,'','FENI & FIST','FENI & FIST','FENI','','FENI',''),
 (17,1,'Golf','Work Hard',7,61,0.3,9.1,5,-4.3,1.93,7,-12.3,7,-237848,-0.24,8,'','GEET & GIRU','GEET & GIRU','','GEET','GIRU',''),
 (18,1,'Hotel','Congrats',1,245,9.5,20.5,1,75,4.05,1,20.4,1,-1197.2,0.82,1,'','HIWI & HOPE','HIWI & HOPE','','','HOPE',''),
 (19,1,'India','Congrats',2,152,5,14.8,2,100.3,4.03,2,11.5,2,-1997.8,0.46,2,'','IFCO & IPCA','IFCO & IPCA','','','IFCO',''),
 (20,1,'Juliet','Work Hard',8,55,-1.7,7.1,8,-26.1,1.63,8,-13.7,8,4425.4,-0.22,7,'','JANO & JOSE','JANO & JOSE','JANO','','JANO & JOSE','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_expert_advice` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_growth_matrix`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_growth_matrix`;
CREATE TABLE  `bizlabs`.`rep_growth_matrix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `rel_market_share` float DEFAULT NULL,
  `market_growth` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_growth_matrix`
--

/*!40000 ALTER TABLE `rep_growth_matrix` DISABLE KEYS */;
LOCK TABLES `rep_growth_matrix` WRITE;
INSERT INTO `bizlabs`.`rep_growth_matrix` VALUES  (1,0,'','',0,0),
 (2,0,'','',1,1),
 (3,0,'Alpha','AMAN',0.764962,0.903915),
 (4,0,'Alpha','AYAN',0.602852,0.805583),
 (5,0,'Bravo','BISU',0.729217,0.817699),
 (6,0,'Bravo','BUNI',0.86753,0.830897),
 (7,0,'Charlie','CITU',0.772736,0.89569),
 (8,0,'Charlie','COWN',0.749364,0.82515),
 (9,0,'Delta','DINK',0.916882,0.834708),
 (10,0,'Delta','DOPE',0.60808,0.805562),
 (11,0,'Echo','ENOT',0.69751,0.833114),
 (12,0,'Echo','EPAD',0.849608,0.881582),
 (13,0,'Foxtrot','FENI',0.804266,0.891812),
 (14,0,'Foxtrot','FIST',0.642995,0.806008),
 (15,0,'Golf','GEET',0.726772,0.818855),
 (16,0,'Golf','GIRU',0.856669,0.833078),
 (17,0,'Hotel','HIWI',0.820067,0.881647),
 (18,0,'Hotel','HOPE',0.730172,0.816456),
 (19,0,'India','IFCO',0.923433,0.821428),
 (20,0,'India','IPCA',0.638322,0.806557),
 (21,0,'Juliet','JANO',0.791292,0.892809),
 (22,0,'Juliet','JOSE',0.729899,0.816112),
 (23,1,'','',0,0),
 (24,1,'','',1,1),
 (25,1,'Alpha','AMAN',0.961411,0.842797),
 (26,1,'Alpha','AYAN',0.622182,0.733142),
 (27,1,'Bravo','BISU',0.61492,0.753913),
 (28,1,'Bravo','BUNI',0.949482,0.764927),
 (29,1,'Charlie','CITU',0.948197,0.836553),
 (30,1,'Charlie','COWN',0.825635,0.771121),
 (31,1,'Delta','DINK',0.981929,0.767009),
 (32,1,'Delta','DOPE',0.651299,0.73247),
 (33,1,'Echo','ENOT',0.94571,0.772393),
 (34,1,'Echo','EPAD',0.988988,0.845921),
 (35,1,'Foxtrot','FENI',0.845124,0.860736),
 (36,1,'Foxtrot','FIST',0.536613,0.733785),
 (37,1,'Golf','GEET',0.890315,0.751017),
 (38,1,'Golf','GIRU',0.763657,0.766488),
 (39,1,'Hotel','HIWI',0.0766999,0.848505),
 (40,1,'Hotel','HOPE',0.513916,0.748916),
 (41,1,'India','IFCO',0.724818,0.762009),
 (42,1,'India','IPCA',0.533076,0.734116),
 (43,1,'Juliet','JANO',0.951345,0.847875),
 (44,1,'Juliet','JOSE',0.818829,0.745834);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_growth_matrix` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_inventory_management`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_inventory_management`;
CREATE TABLE  `bizlabs`.`rep_inventory_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_inventory_management`
--

/*!40000 ALTER TABLE `rep_inventory_management` DISABLE KEYS */;
LOCK TABLES `rep_inventory_management` WRITE;
INSERT INTO `bizlabs`.`rep_inventory_management` VALUES  (1,0,'Alpha','AMAN',9495,3,2,9500),
 (2,0,'Alpha','AYAN',2,2,7648,7652),
 (3,0,'Bravo','BISU',3,3,4,10),
 (4,0,'Bravo','BUNI',1523,3,2,1528),
 (5,0,'Charlie','CITU',9514,3,3,9520),
 (6,0,'Charlie','COWN',6071,3,3,6077),
 (7,0,'Delta','DINK',2,2,2,6),
 (8,0,'Delta','DOPE',3,2,7567,7572),
 (9,0,'Echo','ENOT',6707,2,3,6712),
 (10,0,'Echo','EPAD',7400,3,3,7406),
 (11,0,'Foxtrot','FENI',8818,2,3,8823),
 (12,0,'Foxtrot','FIST',2,2,6909,6913),
 (13,0,'Golf','GEET',3,3,2,8),
 (14,0,'Golf','GIRU',259,3,3,265),
 (15,0,'Hotel','HIWI',8691,2,3,8696),
 (16,0,'Hotel','HOPE',2,2,4,8),
 (17,0,'India','IFCO',2,3,2,7),
 (18,0,'India','IPCA',3,2,6746,6751),
 (19,0,'Juliet','JANO',9161,3,2,9166),
 (20,0,'Juliet','JOSE',2,2,4,8),
 (21,1,'Alpha','AMAN',191,9929,19857,29977),
 (22,1,'Alpha','AYAN',3,-9963,-3289,-13249),
 (23,1,'Bravo','BISU',2,2,-13624,-13620),
 (24,1,'Bravo','BUNI',2,16111,16111,32224),
 (25,1,'Charlie','CITU',510,11883,15843,28236),
 (26,1,'Charlie','COWN',3,14851,14850,29704),
 (27,1,'Delta','DINK',3,15921,9553,25477),
 (28,1,'Delta','DOPE',4,-7219,-4297,-11512),
 (29,1,'Echo','ENOT',2,26692,21355,48049),
 (30,1,'Echo','EPAD',3,13767,18147,31917),
 (31,1,'Foxtrot','FENI',2285,15153,30304,47742),
 (32,1,'Foxtrot','FIST',3,-15225,-5462,-20684),
 (33,1,'Golf','GEET',3,14958,-4983,9978),
 (34,1,'Golf','GIRU',2,8069,-4030,4041),
 (35,1,'Hotel','HIWI',21450,-20906,-29735,-29191),
 (36,1,'Hotel','HOPE',3,3,-11198,-11192),
 (37,1,'India','IFCO',4,13189,6596,19789),
 (38,1,'India','IPCA',3,-15558,-5520,-21075),
 (39,1,'Juliet','JANO',250,11749,35242,47241),
 (40,1,'Juliet','JOSE',2,16593,-6634,9961);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_inventory_management` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_market_share`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_market_share`;
CREATE TABLE  `bizlabs`.`rep_market_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `blueblood` float DEFAULT NULL,
  `raffles` float DEFAULT NULL,
  `wannabes` float DEFAULT NULL,
  `strugglers` float DEFAULT NULL,
  `deprived` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_market_share`
--

/*!40000 ALTER TABLE `rep_market_share` DISABLE KEYS */;
LOCK TABLES `rep_market_share` WRITE;
INSERT INTO `bizlabs`.`rep_market_share` VALUES  (1,0,'Alpha','AMAN',0,0.00159718,0.00470718,0.0210521,0.161097,0.0419956),
 (2,0,'Alpha','AYAN',0,0.22229,0.0272265,0.00300631,0.000821524,0.0446149),
 (3,0,'Bravo','BISU',0,0.0277977,0.175033,0.0105745,0.00205991,0.0554465),
 (4,0,'Bravo','BUNI',0,0.00295285,0.0162329,0.117076,0.0217625,0.0532949),
 (5,0,'Charlie','CITU',0,0.0016227,0.00482943,0.02293,0.158001,0.0419672),
 (6,0,'Charlie','COWN',0,0.00601187,0.0356368,0.167233,0.0205211,0.0745797),
 (7,0,'Delta','DINK',0,0.00196792,0.0106355,0.0914037,0.0160696,0.0415902),
 (8,0,'Delta','DOPE',0,0.220354,0.0287201,0.00328723,0.00081557,0.0447283),
 (9,0,'Echo','ENOT',0,0.00475637,0.0278507,0.187087,0.0235865,0.0806149),
 (10,0,'Echo','EPAD',0,0.00166817,0.0061781,0.0293084,0.125425,0.0380326),
 (11,0,'Foxtrot','FENI',0,0.00181927,0.00634329,0.0319354,0.145134,0.0429551),
 (12,0,'Foxtrot','FIST',0,0.207426,0.039939,0.00411525,0.00111432,0.0456623),
 (13,0,'Golf','GEET',0,0.0269041,0.175971,0.0102305,0.0019937,0.0554493),
 (14,0,'Golf','GIRU',0,0.00302571,0.0170361,0.122182,0.0167721,0.0550851),
 (15,0,'Hotel','HIWI',0,0.0017924,0.00715294,0.036046,0.138456,0.0431351),
 (16,0,'Hotel','HOPE',0,0.0267434,0.174666,0.0114093,0.00212809,0.0554493),
 (17,0,'India','IFCO',0,0.00365825,0.0218442,0.087564,0.0101929,0.0415888),
 (18,0,'India','IPCA',0,0.209158,0.039396,0.0039522,0.001071,0.0458919),
 (19,0,'Juliet','JANO',0,0.00147445,0.0056075,0.0282066,0.150495,0.042469),
 (20,0,'Juliet','JOSE',0,0.0268019,0.174771,0.0112081,0.00229994,0.0554493),
 (21,0,'Total','',0,1,1,1,1,1),
 (22,0,'Total Sales(units)','',0,116922,184384,261892,142329,705527),
 (23,0,'Total Sales(%Total)','',0,0.165723,0.261342,0.371201,0.201734,1),
 (24,1,'Alpha','AMAN',0,0.000245389,0.00107874,0.0101725,0.061505,0.0134445),
 (25,1,'Alpha','AYAN',0,0.215133,0.0363591,0.00906858,0.00206923,0.0733672),
 (26,1,'Bravo','BISU',0,0.021553,0.217821,0.0267721,0.00463729,0.0835237),
 (27,1,'Bravo','BUNI',0,0.000734143,0.00499414,0.0706058,0.0137007,0.0222431),
 (28,1,'Charlie','CITU',0,0.000257684,0.00130559,0.0129171,0.0715232,0.015699),
 (29,1,'Charlie','COWN',0,0.00136889,0.0100661,0.136058,0.0140541,0.0410145),
 (30,1,'Delta','DINK',0,0.000392226,0.00271029,0.0418541,0.00863807,0.0131848),
 (31,1,'Delta','DOPE',0,0.204346,0.037995,0.00903425,0.00205799,0.0707769),
 (32,1,'Echo','ENOT',0,0.000620959,0.00468324,0.0732712,0.00919275,0.0221132),
 (33,1,'Echo','EPAD',0,0.000155961,0.000803358,0.00746172,0.0326096,0.00776939),
 (34,1,'Foxtrot','FENI',0,0.000393714,0.00268384,0.0277548,0.127456,0.0282317),
 (35,1,'Foxtrot','FIST',0,0.247013,0.0692649,0.0166012,0.0037493,0.0931498),
 (36,1,'Golf','GEET',0,0.011453,0.105814,0.0131097,0.00249975,0.0413101),
 (37,1,'Golf','GIRU',0,0.00167957,0.0116398,0.161614,0.0260632,0.0501322),
 (38,1,'Hotel','HIWI',0,0.000788511,0.00988283,0.119363,0.518529,0.10728),
 (39,1,'Hotel','HOPE',0,0.0272279,0.255629,0.0370411,0.00634282,0.097775),
 (40,1,'India','IFCO',0,0.00231821,0.0174394,0.17672,0.0184538,0.0546386),
 (41,1,'India','IPCA',0,0.248349,0.0692173,0.0162459,0.0036699,0.0934731),
 (42,1,'Juliet','JANO',0,0.000248988,0.00144564,0.014315,0.0692551,0.0158745),
 (43,1,'Juliet','JOSE',0,0.0156133,0.138985,0.019715,0.00371223,0.0549991),
 (44,1,'Total','',0,1,1,1,1,1),
 (45,1,'Total Sales(units)','',0,202893,226988,189157,104828,723866),
 (46,1,'Total Sales(%Total)','',0,0.280291,0.313577,0.261315,0.144817,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_market_share` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_perceptual_map`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_perceptual_map`;
CREATE TABLE  `bizlabs`.`rep_perceptual_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `economy` float DEFAULT NULL,
  `quality` float DEFAULT NULL,
  `appeal` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_perceptual_map`
--

/*!40000 ALTER TABLE `rep_perceptual_map` DISABLE KEYS */;
LOCK TABLES `rep_perceptual_map` WRITE;
INSERT INTO `bizlabs`.`rep_perceptual_map` VALUES  (1,0,'Segments','Raffles',4.4,14.3,16.3),
 (2,0,'Segments','Wannabees',8.3,11.6,13.7),
 (3,0,'Segments','Strugglers',11.8,7.8,9.9),
 (4,0,'Segments','Deprived',14.2,4.8,6.2),
 (5,0,'Alpha','AMAN',14.3,4.6,5.8),
 (6,0,'Alpha','AYAN',4.1,14.6,16.7),
 (7,0,'Bravo','BISU',7.8,11.8,13.6),
 (8,0,'Bravo','BUNI',12.4,8.2,9.6),
 (9,0,'Charlie','CITU',14.3,4.2,6.2),
 (10,0,'Charlie','COWN',11.3,8.1,10.1),
 (11,0,'Delta','DINK',12.2,7.6,9.7),
 (12,0,'Delta','DOPE',4.2,14.3,16.9),
 (13,0,'Echo','ENOT',11.6,7.6,10),
 (14,0,'Echo','EPAD',13.8,5.7,6.2),
 (15,0,'Foxtrot','FENI',13.8,5,6.6),
 (16,0,'Foxtrot','FIST',4.8,14.4,15.7),
 (17,0,'Golf','GEET',8.1,11.8,14.1),
 (18,0,'Golf','GIRU',12,8.3,9.7),
 (19,0,'Hotel','HIWI',13.7,5.5,6.6),
 (20,0,'Hotel','HOPE',7.7,11.5,13.5),
 (21,0,'India','IFCO',11.2,8.4,10.3),
 (22,0,'India','IPCA',4.9,14.1,16),
 (23,0,'Juliet','JANO',13.9,4.4,6.5),
 (24,0,'Juliet','JOSE',8,11.3,14.2),
 (25,1,'Segments','Raffles',4.4,14.4,16.2),
 (26,1,'Segments','Wannabees',8,11.7,13.7),
 (27,1,'Segments','Strugglers',11.6,8,10),
 (28,1,'Segments','Deprived',14.1,5,6.4),
 (29,1,'Alpha','AMAN',14.3,4.6,5.8),
 (30,1,'Alpha','AYAN',4.2,14.6,16.7),
 (31,1,'Bravo','BISU',7.9,11.8,13.6),
 (32,1,'Bravo','BUNI',12.2,8.2,9.6),
 (33,1,'Charlie','CITU',14.2,4.2,6.2),
 (34,1,'Charlie','COWN',11.4,8.1,10.1),
 (35,1,'Delta','DINK',12.1,7.6,9.7),
 (36,1,'Delta','DOPE',4.2,14.3,16.9),
 (37,1,'Echo','ENOT',11.6,7.6,10),
 (38,1,'Echo','EPAD',13.9,5.7,6.2),
 (39,1,'Foxtrot','FENI',13.8,5,6.6),
 (40,1,'Foxtrot','FIST',4.8,14.4,15.7),
 (41,1,'Golf','GEET',8.1,11.8,14.1),
 (42,1,'Golf','GIRU',12,8.3,9.7),
 (43,1,'Hotel','HIWI',13.7,5.5,6.6),
 (44,1,'Hotel','HOPE',7.7,11.5,13.5),
 (45,1,'India','IFCO',11.2,8.4,10.3),
 (46,1,'India','IPCA',4.9,14.1,16),
 (47,1,'Juliet','JANO',13.9,4.4,6.5),
 (48,1,'Juliet','JOSE',8,11.3,14.2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_perceptual_map` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_project_characteristics`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_project_characteristics`;
CREATE TABLE  `bizlabs`.`rep_project_characteristics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `resaearchproject` varchar(100) DEFAULT NULL,
  `design` int(11) DEFAULT NULL,
  `fragrance` int(11) DEFAULT NULL,
  `persistence` int(11) DEFAULT NULL,
  `packaging` int(11) DEFAULT NULL,
  `safety` int(11) DEFAULT NULL,
  `reqbasecost` int(11) DEFAULT NULL,
  `minbasecost` int(11) DEFAULT NULL,
  `budgetallocated` float DEFAULT NULL,
  `periodavailable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_project_characteristics`
--

/*!40000 ALTER TABLE `rep_project_characteristics` DISABLE KEYS */;
LOCK TABLES `rep_project_characteristics` WRITE;
INSERT INTO `bizlabs`.`rep_project_characteristics` VALUES  (1,0,'Alpha','ARYAN',80,85,70,85,71,349,349,1.69312e+06,0),
 (2,0,'Alpha','ARMAN',31,26,25,32,21,127,127,934240,0),
 (3,0,'Alpha','ARSMA',84,85,77,85,77,294,294,1.75658e+06,3),
 (4,0,'Alpha','ARPAN',67,76,67,77,62,254,254,1.58315e+06,3),
 (5,0,'Alpha','ARTIL',67,62,56,66,47,216,216,1.42033e+06,3),
 (6,0,'Alpha','ARPEX',41,43,34,44,30,140,140,1.10072e+06,3),
 (7,0,'Alpha','ARCER',29,30,23,31,21,100,100,927968,3),
 (8,0,'Bravo','BRIMA',84,85,77,85,77,294,294,1.75658e+06,3),
 (9,0,'Bravo','BRAND',67,76,67,77,62,254,254,1.58315e+06,3),
 (10,0,'Bravo','BRILO',67,62,56,66,47,216,216,1.42033e+06,3),
 (11,0,'Bravo','BREST',41,43,34,44,30,140,140,1.10072e+06,3),
 (12,0,'Bravo','BROPI',29,30,23,31,21,100,100,927968,3),
 (13,0,'Bravo','BRUNI',50,47,45,48,32,206,206,1.20454e+06,0),
 (14,0,'Bravo','BRISU',70,65,60,70,55,289,289,1.48727e+06,0),
 (15,0,'Charlie','CRASE',84,85,77,85,77,294,294,1.75658e+06,3),
 (16,0,'Charlie','CRIDO',67,76,67,77,62,254,254,1.58315e+06,3),
 (17,0,'Charlie','CRIST',67,62,56,66,47,216,216,1.42033e+06,3),
 (18,0,'Charlie','CRIHU',29,30,23,31,21,100,100,927968,3),
 (19,0,'Charlie','CROWN',65,48,44,43,31,211,211,1.22044e+06,0),
 (20,0,'Charlie','CRALO',41,43,34,44,30,140,140,1.10072e+06,3),
 (21,0,'Charlie','CRITU',34,24,22,36,20,125,125,924118,0),
 (22,0,'Delta','DROPE',90,81,64,83,78,347,347,1.68598e+06,0),
 (23,0,'Delta','DRINK',51,52,38,45,30,196,196,1.17033e+06,0),
 (24,0,'Delta','DRILL',67,76,67,77,62,254,254,1.58315e+06,3),
 (25,0,'Delta','DRADI',29,30,23,31,21,100,100,927968,3),
 (26,0,'Delta','DREWS',41,43,34,44,30,140,140,1.10072e+06,3),
 (27,0,'Delta','DRONE',67,62,56,66,47,216,216,1.42033e+06,3),
 (28,0,'Delta','DROGI',84,85,77,85,77,294,294,1.75658e+06,3),
 (29,0,'Echo','ERTKI',29,30,23,31,21,100,100,927968,3),
 (30,0,'Echo','ERSMA',41,43,34,44,30,140,140,1.10072e+06,3),
 (31,0,'Echo','ERLTA',67,62,56,66,47,216,216,1.42033e+06,3),
 (32,0,'Echo','ERBAC',67,76,67,77,62,254,254,1.58315e+06,3),
 (33,0,'Echo','ERTLO',84,85,77,85,77,294,294,1.75658e+06,3),
 (34,0,'Echo','ERNOT',62,51,40,42,28,202,202,1.19002e+06,0),
 (35,0,'Echo','ERPAD',34,32,30,30,26,145,145,994163,0),
 (36,0,'Foxtrot','FRATU',67,76,67,77,62,254,254,1.58315e+06,3),
 (37,0,'Foxtrot','FROPE',84,85,77,85,77,294,294,1.75658e+06,3),
 (38,0,'Foxtrot','FRENI',35,35,23,32,24,137,137,969377,0),
 (39,0,'Foxtrot','FRIST',72,83,72,81,65,342,342,1.6683e+06,0),
 (40,0,'Foxtrot','FREEL',67,62,56,66,47,216,216,1.42033e+06,3),
 (41,0,'Foxtrot','FRIND',41,43,34,44,30,140,140,1.10072e+06,3),
 (42,0,'Foxtrot','FRETU',29,30,23,31,21,100,100,927968,3),
 (43,0,'Golf','GRAND',84,85,77,85,77,294,294,1.75658e+06,3),
 (44,0,'Golf','GREST',67,76,67,77,62,254,254,1.58315e+06,3),
 (45,0,'Golf','GRIND',41,43,34,44,30,140,140,1.10072e+06,3),
 (46,0,'Golf','GROSE',29,30,23,31,21,100,100,927968,3),
 (47,0,'Golf','GRELL',67,62,56,66,47,216,216,1.42033e+06,3),
 (48,0,'Golf','GREET',64,76,61,72,45,289,289,1.48628e+06,0),
 (49,0,'Golf','GRIRU',52,46,44,49,37,210,210,1.21659e+06,0),
 (50,0,'Hotel','HRUGS',29,30,23,31,21,100,100,927968,3),
 (51,0,'Hotel','HRYAT',41,43,34,44,30,140,140,1.10072e+06,3),
 (52,0,'Hotel','HRITI',67,62,56,66,47,216,216,1.42033e+06,3),
 (53,0,'Hotel','HRUGE',67,76,67,77,62,254,254,1.58315e+06,3),
 (54,0,'Hotel','HRISS',84,85,77,85,77,294,294,1.75658e+06,3),
 (55,0,'Hotel','HROPE',71,63,64,69,45,286,286,1.47578e+06,0),
 (56,0,'Hotel','HRIWI',32,30,26,38,30,145,145,995091,0),
 (57,0,'India','IRMAL',84,85,77,85,77,294,294,1.75658e+06,3),
 (58,0,'India','IRFCO',60,48,44,49,37,216,216,1.23895e+06,0),
 (59,0,'India','IRAQI',29,30,23,31,21,100,100,927968,3),
 (60,0,'India','IRPCA',80,80,74,81,60,344,344,1.67401e+06,0),
 (61,0,'India','IRRIS',41,43,34,44,30,140,140,1.10072e+06,3),
 (62,0,'India','IRPOK',67,76,67,77,62,254,254,1.58315e+06,3),
 (63,0,'India','IRDLI',67,62,56,66,47,216,216,1.42033e+06,3),
 (64,0,'Juliet','JRIPE',41,43,34,44,30,140,140,1.10072e+06,3),
 (65,0,'Juliet','JROLE',67,62,56,66,47,216,216,1.42033e+06,3),
 (66,0,'Juliet','JRIMI',67,76,67,77,62,254,254,1.58315e+06,3),
 (67,0,'Juliet','JRUDE',84,85,77,85,77,294,294,1.75658e+06,3),
 (68,0,'Juliet','JRANO',38,28,23,34,19,130,130,942064,0),
 (69,0,'Juliet','JROSE',65,72,58,76,45,284,284,1.46926e+06,0),
 (70,0,'Juliet','JRAMI',29,30,23,31,21,100,100,927968,3),
 (71,1,'Alpha','ARCER',29,30,23,31,21,103,103,927968,3),
 (72,1,'Alpha','ARPEX',41,43,34,44,30,144,144,1.10072e+06,3),
 (73,1,'Alpha','ARTIL',67,62,56,66,47,222,222,1.42033e+06,3),
 (74,1,'Alpha','ARPAN',67,76,67,77,62,262,262,1.58315e+06,3),
 (75,1,'Alpha','ARSMA',84,85,77,85,77,303,303,1.75658e+06,3),
 (76,1,'Alpha','ARYAN',80,85,70,85,71,359,359,1.69312e+06,0),
 (77,1,'Alpha','ARMAN',31,26,25,32,21,131,131,934240,0),
 (78,1,'Bravo','BRUNI',50,47,45,48,32,212,212,1.20454e+06,0),
 (79,1,'Bravo','BRISU',70,65,60,70,55,298,298,1.48727e+06,0),
 (80,1,'Bravo','BRAND',67,76,67,77,62,262,262,1.58315e+06,3),
 (81,1,'Bravo','BRILO',67,62,56,66,47,222,222,1.42033e+06,3),
 (82,1,'Bravo','BREST',41,43,34,44,30,144,144,1.10072e+06,3),
 (83,1,'Bravo','BROPI',29,30,23,31,21,103,103,927968,3),
 (84,1,'Bravo','BRIMA',84,85,77,85,77,303,303,1.75658e+06,3),
 (85,1,'Charlie','CRIST',67,62,56,66,47,222,222,1.42033e+06,3),
 (86,1,'Charlie','CROWN',65,48,44,43,31,217,217,1.22044e+06,0),
 (87,1,'Charlie','CRIHU',29,30,23,31,21,103,103,927968,3),
 (88,1,'Charlie','CRALO',41,43,34,44,30,144,144,1.10072e+06,3),
 (89,1,'Charlie','CRASE',84,85,77,85,77,303,303,1.75658e+06,3),
 (90,1,'Charlie','CRITU',34,24,22,36,20,129,129,924118,0),
 (91,1,'Charlie','CRIDO',67,76,67,77,62,262,262,1.58315e+06,3),
 (92,1,'Delta','DROGI',84,85,77,85,77,303,303,1.75658e+06,3),
 (93,1,'Delta','DRILL',67,76,67,77,62,262,262,1.58315e+06,3),
 (94,1,'Delta','DRONE',67,62,56,66,47,222,222,1.42033e+06,3),
 (95,1,'Delta','DREWS',41,43,34,44,30,144,144,1.10072e+06,3),
 (96,1,'Delta','DRADI',29,30,23,31,21,103,103,927968,3),
 (97,1,'Delta','DRINK',51,52,38,45,30,202,202,1.17033e+06,0),
 (98,1,'Delta','DROPE',90,81,64,83,78,357,357,1.68598e+06,0),
 (99,1,'Echo','ERPAD',34,32,30,30,26,149,149,994163,0),
 (100,1,'Echo','ERTKI',29,30,23,31,21,103,103,927968,3),
 (101,1,'Echo','ERSMA',41,43,34,44,30,144,144,1.10072e+06,3),
 (102,1,'Echo','ERLTA',67,62,56,66,47,222,222,1.42033e+06,3),
 (103,1,'Echo','ERBAC',67,76,67,77,62,262,262,1.58315e+06,3),
 (104,1,'Echo','ERTLO',84,85,77,85,77,303,303,1.75658e+06,3),
 (105,1,'Echo','ERNOT',62,51,40,42,28,208,208,1.19002e+06,0),
 (106,1,'Foxtrot','FRENI',35,35,23,32,24,141,141,969377,0),
 (107,1,'Foxtrot','FRATU',67,76,67,77,62,262,262,1.58315e+06,3),
 (108,1,'Foxtrot','FROPE',84,85,77,85,77,303,303,1.75658e+06,3),
 (109,1,'Foxtrot','FREEL',67,62,56,66,47,222,222,1.42033e+06,3),
 (110,1,'Foxtrot','FRIND',41,43,34,44,30,144,144,1.10072e+06,3),
 (111,1,'Foxtrot','FRETU',29,30,23,31,21,103,103,927968,3),
 (112,1,'Foxtrot','FRIST',72,83,72,81,65,352,352,1.6683e+06,0),
 (113,1,'Golf','GRAND',84,85,77,85,77,303,303,1.75658e+06,3),
 (114,1,'Golf','GRELL',67,62,56,66,47,222,222,1.42033e+06,3),
 (115,1,'Golf','GRIND',41,43,34,44,30,144,144,1.10072e+06,3),
 (116,1,'Golf','GROSE',29,30,23,31,21,103,103,927968,3),
 (117,1,'Golf','GRIRU',52,46,44,49,37,216,216,1.21659e+06,0),
 (118,1,'Golf','GREST',67,76,67,77,62,262,262,1.58315e+06,3),
 (119,1,'Golf','GREET',64,76,61,72,45,298,298,1.48628e+06,0),
 (120,1,'Hotel','HROPE',71,63,64,69,45,295,295,1.47578e+06,0),
 (121,1,'Hotel','HRUGS',29,30,23,31,21,103,103,927968,3),
 (122,1,'Hotel','HRYAT',41,43,34,44,30,144,144,1.10072e+06,3),
 (123,1,'Hotel','HRITI',67,62,56,66,47,222,222,1.42033e+06,3),
 (124,1,'Hotel','HRUGE',67,76,67,77,62,262,262,1.58315e+06,3),
 (125,1,'Hotel','HRISS',84,85,77,85,77,303,303,1.75658e+06,3),
 (126,1,'Hotel','HRIWI',32,30,26,38,30,149,149,995091,0),
 (127,1,'India','IRDLI',67,62,56,66,47,222,222,1.42033e+06,3),
 (128,1,'India','IRAQI',29,30,23,31,21,103,103,927968,3),
 (129,1,'India','IRRIS',41,43,34,44,30,144,144,1.10072e+06,3),
 (130,1,'India','IRPOK',67,76,67,77,62,262,262,1.58315e+06,3),
 (131,1,'India','IRMAL',84,85,77,85,77,303,303,1.75658e+06,3),
 (132,1,'India','IRPCA',80,80,74,81,60,354,354,1.67401e+06,0),
 (133,1,'India','IRFCO',60,48,44,49,37,222,222,1.23895e+06,0),
 (134,1,'Juliet','JROLE',67,62,56,66,47,222,222,1.42033e+06,3),
 (135,1,'Juliet','JRIPE',41,43,34,44,30,144,144,1.10072e+06,3),
 (136,1,'Juliet','JRIMI',67,76,67,77,62,262,262,1.58315e+06,3),
 (137,1,'Juliet','JRUDE',84,85,77,85,77,303,303,1.75658e+06,3),
 (138,1,'Juliet','JRANO',38,28,23,34,19,134,134,942064,0),
 (139,1,'Juliet','JROSE',65,72,58,76,45,293,293,1.46926e+06,0),
 (140,1,'Juliet','JRAMI',29,30,23,31,21,103,103,927968,3);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_project_characteristics` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`rep_stock_market`
--

DROP TABLE IF EXISTS `bizlabs`.`rep_stock_market`;
CREATE TABLE  `bizlabs`.`rep_stock_market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team_name` varchar(100) DEFAULT NULL,
  `spi` int(11) DEFAULT NULL,
  `market_share` float DEFAULT NULL,
  `net_profit_margin` float DEFAULT NULL,
  `current_net_contribution` int(14) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`rep_stock_market`
--

/*!40000 ALTER TABLE `rep_stock_market` DISABLE KEYS */;
LOCK TABLES `rep_stock_market` WRITE;
INSERT INTO `bizlabs`.`rep_stock_market` VALUES  (1,0,'Alpha',74,0.0866104,-0.00401341,-79246),
 (2,0,'Bravo',74,0.108741,-0.0362076,-824861),
 (3,0,'Charlie',74,0.116547,-0.0428134,-810456),
 (4,0,'Delta',74,0.0863185,-0.00441997,-94541),
 (5,0,'Echo',74,0.118647,-0.0441945,-857333),
 (6,0,'Foxtrot',74,0.0886174,-0.00435126,-87508),
 (7,0,'Golf',74,0.110534,-0.0362812,-839591),
 (8,0,'Hotel',74,0.0985845,-0.0165082,-331679),
 (9,0,'India',74,0.0874807,-0.00623698,-137787),
 (10,0,'Juliet',74,0.0979183,-0.0149611,-292491),
 (11,1,'Alpha',86,0.0868116,0.0110759,288760),
 (12,1,'Bravo',88,0.105767,0.00721297,183145),
 (13,1,'Charlie',36,0.0567135,-0.490056,-4638634),
 (14,1,'Delta',90,0.0839617,0.0290642,753740),
 (15,1,'Echo',31,0.0298826,-1.30162,-6549706),
 (16,1,'Foxtrot',119,0.121382,0.0769987,2598009),
 (17,1,'Golf',61,0.0914423,-0.122503,-2358462),
 (18,1,'Hotel',245,0.205055,0.203534,8241110),
 (19,1,'India',152,0.148112,0.11466,4615143),
 (20,1,'Juliet',55,0.0708736,-0.13668,-2230411);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_stock_market` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`reports`
--

DROP TABLE IF EXISTS `bizlabs`.`reports`;
CREATE TABLE  `bizlabs`.`reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(255) NOT NULL,
  `report_cost` int(12) NOT NULL,
  `period` int(11) NOT NULL,
  `report_app_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8214 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`reports`
--

/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
LOCK TABLES `reports` WRITE;
INSERT INTO `bizlabs`.`reports` VALUES  (8000,'Benchmarking',100000,1,'Benchmarking'),
 (8001,'Brand Characteristics',20000,1,'BrandCharacteristicReport'),
 (8002,'Brand Awareness',30000,1,'BrandAwarenessReport'),
 (8003,'Brand Purchase Intentions',30000,1,'BrandPurchaseIntentionReport'),
 (8004,'Brand Market Share',50000,1,'MarketShareReport'),
 (8005,'Multi Dimensional Scale',100000,1,'MultiDimensionalScaleReport'),
 (8006,'Shopping Habits',10000,1,'ShoppingHabitsReport'),
 (8007,'Demand Forecast',25000,1,'DemandForecastReport'),
 (8008,'Distribution Coverage',25000,1,'DistributionCoverageReport'),
 (8009,'Inventory Management',25000,1,'InventoryManagementReport'),
 (8010,'Competitive Advertisment Expense',30000,1,'CompetitiveAdvExpenseReport'),
 (8011,'Competitive Sales Expense',30000,1,'CompetitiveSalesForceReport'),
 (8012,'Competitive Margin',30000,1,'CompetitiveMarginReport'),
 (8013,'Expert Advice',500000,1,'ExpertAdviceReport'),
 (8100,'Benchmarking',100000,2,'Benchmarking'),
 (8101,'Brand Characteristics',20000,2,'BrandCharacteristicReport'),
 (8102,'Brand Awareness',30000,2,'BrandAwarenessReport'),
 (8103,'Brand Purchase Intentions',30000,2,'BrandPurchaseIntentionReport'),
 (8104,'Brand Market Share',50000,2,'MarketShareReport'),
 (8105,'Multi Dimensional Scale',100000,2,'MultiDimensionalScaleReport'),
 (8106,'Shopping Habits',10000,2,'ShoppingHabitsReport'),
 (8107,'Demand Forecast',25000,2,'DemandForecastReport'),
 (8108,'Distribution Coverage',25000,2,'DistributionCoverageReport'),
 (8109,'Inventory Management',25000,2,'InventoryManagementReport'),
 (8110,'Competitive Advertisment Expense',30000,2,'CompetitiveAdvExpenseReport'),
 (8111,'Competitive Sales Expense',30000,2,'CompetitiveSalesForceReport'),
 (8112,'Competitive Margin',30000,2,'CompetitiveMarginReport'),
 (8113,'Expert Advice',500000,2,'ExpertAdviceReport'),
 (8200,'Benchmarking',100000,3,'Benchmarking'),
 (8201,'Brand Characteristics',20000,3,'BrandCharacteristicReport'),
 (8202,'Brand Awareness',30000,3,'BrandAwarenessReport'),
 (8203,'Brand Purchase Intentions',30000,3,'BrandPurchaseIntentionReport'),
 (8204,'Brand Market Share',50000,3,'MarketShareReport'),
 (8205,'Multi Dimensional Scale',100000,3,'MultiDimensionalScaleReport'),
 (8206,'Shopping Habits',10000,3,'ShoppingHabitsReport'),
 (8207,'Demand Forecast',25000,3,'DemandForecastReport'),
 (8208,'Distribution Coverage',25000,3,'DistributionCoverageReport'),
 (8209,'Inventory Management',25000,3,'InventoryManagementReport'),
 (8210,'Competitive Advertisment Expense',30000,3,'CompetitiveAdvExpenseReport'),
 (8211,'Competitive Sales Expense',30000,3,'CompetitiveSalesForceReport'),
 (8212,'Competitive Margin',30000,3,'CompetitiveMarginReport'),
 (8213,'Expert Advice',500000,3,'ExpertAdviceReport');
UNLOCK TABLES;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`reports_team_purchase_map`
--

DROP TABLE IF EXISTS `bizlabs`.`reports_team_purchase_map`;
CREATE TABLE  `bizlabs`.`reports_team_purchase_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `access_flag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_purchase_reportId_fk` (`report_id`),
  KEY `report_purchase_teamId_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9740 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`reports_team_purchase_map`
--

/*!40000 ALTER TABLE `reports_team_purchase_map` DISABLE KEYS */;
LOCK TABLES `reports_team_purchase_map` WRITE;
INSERT INTO `bizlabs`.`reports_team_purchase_map` VALUES  (9000,8000,1,1,'Y'),
 (9001,8001,1,1,'Y'),
 (9002,8002,1,1,'Y'),
 (9003,8003,1,1,'Y'),
 (9004,8004,1,1,'Y'),
 (9005,8005,1,1,'Y'),
 (9006,8006,1,1,'Y'),
 (9007,8007,1,1,'Y'),
 (9008,8008,1,1,'Y'),
 (9009,8009,1,1,'Y'),
 (9010,8010,1,1,'Y'),
 (9011,8011,1,1,'Y'),
 (9012,8012,1,1,'Y'),
 (9013,8013,1,1,'N'),
 (9014,8000,2,1,'Y'),
 (9015,8001,2,1,'Y'),
 (9016,8002,2,1,'Y'),
 (9017,8003,2,1,'Y'),
 (9018,8004,2,1,'Y'),
 (9019,8005,2,1,'Y'),
 (9020,8006,2,1,'Y'),
 (9021,8007,2,1,'Y'),
 (9022,8008,2,1,'Y'),
 (9023,8009,2,1,'Y'),
 (9024,8010,2,1,'Y'),
 (9025,8011,2,1,'Y'),
 (9026,8012,2,1,'Y'),
 (9027,8013,2,1,'N'),
 (9028,8000,3,1,'Y'),
 (9029,8001,3,1,'Y'),
 (9030,8002,3,1,'Y'),
 (9031,8003,3,1,'Y'),
 (9032,8004,3,1,'Y'),
 (9033,8005,3,1,'Y'),
 (9034,8006,3,1,'Y'),
 (9035,8007,3,1,'Y'),
 (9036,8008,3,1,'Y'),
 (9037,8009,3,1,'Y'),
 (9038,8010,3,1,'Y'),
 (9039,8011,3,1,'Y'),
 (9040,8012,3,1,'Y'),
 (9041,8013,3,1,'N'),
 (9042,8000,4,1,'Y'),
 (9043,8001,4,1,'Y'),
 (9044,8002,4,1,'Y'),
 (9045,8003,4,1,'Y'),
 (9046,8004,4,1,'Y'),
 (9047,8005,4,1,'Y'),
 (9048,8006,4,1,'Y'),
 (9049,8007,4,1,'Y'),
 (9050,8008,4,1,'Y'),
 (9051,8009,4,1,'Y'),
 (9052,8010,4,1,'Y'),
 (9053,8011,4,1,'Y'),
 (9054,8012,4,1,'Y'),
 (9055,8013,4,1,'N'),
 (9056,8000,5,1,'Y'),
 (9057,8001,5,1,'Y'),
 (9058,8002,5,1,'Y'),
 (9059,8003,5,1,'Y'),
 (9060,8004,5,1,'Y'),
 (9061,8005,5,1,'Y'),
 (9062,8006,5,1,'Y'),
 (9063,8007,5,1,'Y'),
 (9064,8008,5,1,'Y'),
 (9065,8009,5,1,'Y'),
 (9066,8010,5,1,'Y'),
 (9067,8011,5,1,'Y'),
 (9068,8012,5,1,'Y'),
 (9069,8013,5,1,'N'),
 (9070,8000,6,1,'Y'),
 (9071,8001,6,1,'Y'),
 (9072,8002,6,1,'Y'),
 (9073,8003,6,1,'Y'),
 (9074,8004,6,1,'Y'),
 (9075,8005,6,1,'Y'),
 (9076,8006,6,1,'Y'),
 (9077,8007,6,1,'Y'),
 (9078,8008,6,1,'Y'),
 (9079,8009,6,1,'Y'),
 (9080,8010,6,1,'Y'),
 (9081,8011,6,1,'Y'),
 (9082,8012,6,1,'Y'),
 (9083,8013,6,1,'N'),
 (9084,8000,7,1,'Y'),
 (9085,8001,7,1,'Y'),
 (9086,8002,7,1,'Y'),
 (9087,8003,7,1,'Y'),
 (9088,8004,7,1,'Y'),
 (9089,8005,7,1,'Y'),
 (9090,8006,7,1,'Y'),
 (9091,8007,7,1,'Y'),
 (9092,8008,7,1,'Y'),
 (9093,8009,7,1,'Y'),
 (9094,8010,7,1,'Y'),
 (9095,8011,7,1,'Y'),
 (9096,8012,7,1,'Y'),
 (9097,8013,7,1,'N'),
 (9098,8000,8,1,'Y'),
 (9099,8001,8,1,'Y'),
 (9100,8002,8,1,'Y'),
 (9101,8003,8,1,'Y'),
 (9102,8004,8,1,'Y'),
 (9103,8005,8,1,'Y'),
 (9104,8006,8,1,'Y'),
 (9105,8007,8,1,'Y'),
 (9106,8008,8,1,'Y'),
 (9107,8009,8,1,'Y'),
 (9108,8010,8,1,'Y'),
 (9109,8011,8,1,'Y'),
 (9110,8012,8,1,'Y'),
 (9111,8013,8,1,'N'),
 (9112,8000,9,1,'Y'),
 (9113,8001,9,1,'Y'),
 (9114,8002,9,1,'Y'),
 (9115,8003,9,1,'Y'),
 (9116,8004,9,1,'Y'),
 (9117,8005,9,1,'Y'),
 (9118,8006,9,1,'Y'),
 (9119,8007,9,1,'Y'),
 (9120,8008,9,1,'Y'),
 (9121,8009,9,1,'Y'),
 (9122,8010,9,1,'Y'),
 (9123,8011,9,1,'Y'),
 (9124,8012,9,1,'Y'),
 (9125,8013,9,1,'N'),
 (9126,8000,10,1,'Y'),
 (9127,8001,10,1,'Y'),
 (9128,8002,10,1,'Y'),
 (9129,8003,10,1,'Y'),
 (9130,8004,10,1,'Y'),
 (9131,8005,10,1,'Y'),
 (9132,8006,10,1,'Y'),
 (9133,8007,10,1,'Y'),
 (9134,8008,10,1,'Y'),
 (9135,8009,10,1,'Y'),
 (9136,8010,10,1,'Y'),
 (9137,8011,10,1,'Y'),
 (9138,8012,10,1,'Y'),
 (9139,8013,10,1,'N'),
 (9300,8100,1,2,'Y'),
 (9301,8101,1,2,'Y'),
 (9302,8102,1,2,'Y'),
 (9303,8103,1,2,'Y'),
 (9304,8104,1,2,'Y'),
 (9305,8105,1,2,'Y'),
 (9306,8106,1,2,'Y'),
 (9307,8107,1,2,'Y'),
 (9308,8108,1,2,'Y'),
 (9309,8109,1,2,'Y'),
 (9310,8110,1,2,'Y'),
 (9311,8111,1,2,'Y'),
 (9312,8112,1,2,'Y'),
 (9313,8113,1,2,'Y'),
 (9314,8100,2,2,'N'),
 (9315,8101,2,2,'N'),
 (9316,8102,2,2,'N'),
 (9317,8103,2,2,'N'),
 (9318,8104,2,2,'N'),
 (9319,8105,2,2,'N'),
 (9320,8106,2,2,'N'),
 (9321,8107,2,2,'N'),
 (9322,8108,2,2,'N'),
 (9323,8109,2,2,'N'),
 (9324,8110,2,2,'N'),
 (9325,8111,2,2,'N'),
 (9326,8112,2,2,'N'),
 (9327,8113,2,2,'N'),
 (9328,8100,3,2,'Y'),
 (9329,8101,3,2,'Y'),
 (9330,8102,3,2,'Y'),
 (9331,8103,3,2,'Y'),
 (9332,8104,3,2,'Y'),
 (9333,8105,3,2,'Y'),
 (9334,8106,3,2,'Y'),
 (9335,8107,3,2,'Y'),
 (9336,8108,3,2,'Y'),
 (9337,8109,3,2,'Y'),
 (9338,8110,3,2,'Y'),
 (9339,8111,3,2,'Y'),
 (9340,8112,3,2,'Y'),
 (9341,8113,3,2,'N'),
 (9342,8100,4,2,'N'),
 (9343,8101,4,2,'N'),
 (9344,8102,4,2,'N'),
 (9345,8103,4,2,'N'),
 (9346,8104,4,2,'N'),
 (9347,8105,4,2,'Y'),
 (9348,8106,4,2,'Y'),
 (9349,8107,4,2,'Y'),
 (9350,8108,4,2,'N'),
 (9351,8109,4,2,'N'),
 (9352,8110,4,2,'N'),
 (9353,8111,4,2,'N'),
 (9354,8112,4,2,'N'),
 (9355,8113,4,2,'N'),
 (9356,8100,5,2,'N'),
 (9357,8101,5,2,'N'),
 (9358,8102,5,2,'N'),
 (9359,8103,5,2,'N'),
 (9360,8104,5,2,'Y'),
 (9361,8105,5,2,'N'),
 (9362,8106,5,2,'N'),
 (9363,8107,5,2,'N'),
 (9364,8108,5,2,'N'),
 (9365,8109,5,2,'N'),
 (9366,8110,5,2,'N'),
 (9367,8111,5,2,'N'),
 (9368,8112,5,2,'N'),
 (9369,8113,5,2,'N'),
 (9370,8100,6,2,'Y'),
 (9371,8101,6,2,'Y'),
 (9372,8102,6,2,'Y'),
 (9373,8103,6,2,'Y'),
 (9374,8104,6,2,'Y'),
 (9375,8105,6,2,'Y'),
 (9376,8106,6,2,'Y'),
 (9377,8107,6,2,'Y'),
 (9378,8108,6,2,'Y'),
 (9379,8109,6,2,'Y'),
 (9380,8110,6,2,'Y'),
 (9381,8111,6,2,'Y'),
 (9382,8112,6,2,'Y'),
 (9383,8113,6,2,'N'),
 (9384,8100,7,2,'Y'),
 (9385,8101,7,2,'Y'),
 (9386,8102,7,2,'Y'),
 (9387,8103,7,2,'Y'),
 (9388,8104,7,2,'Y'),
 (9389,8105,7,2,'Y'),
 (9390,8106,7,2,'Y'),
 (9391,8107,7,2,'Y'),
 (9392,8108,7,2,'Y'),
 (9393,8109,7,2,'Y'),
 (9394,8110,7,2,'Y'),
 (9395,8111,7,2,'Y'),
 (9396,8112,7,2,'Y'),
 (9397,8113,7,2,'Y'),
 (9398,8100,8,2,'N'),
 (9399,8101,8,2,'Y'),
 (9400,8102,8,2,'Y'),
 (9401,8103,8,2,'Y'),
 (9402,8104,8,2,'Y'),
 (9403,8105,8,2,'Y'),
 (9404,8106,8,2,'Y'),
 (9405,8107,8,2,'Y'),
 (9406,8108,8,2,'Y'),
 (9407,8109,8,2,'Y'),
 (9408,8110,8,2,'N'),
 (9409,8111,8,2,'N'),
 (9410,8112,8,2,'N'),
 (9411,8113,8,2,'N'),
 (9412,8100,9,2,'N'),
 (9413,8101,9,2,'N'),
 (9414,8102,9,2,'N'),
 (9415,8103,9,2,'N'),
 (9416,8104,9,2,'N'),
 (9417,8105,9,2,'N'),
 (9418,8106,9,2,'N'),
 (9419,8107,9,2,'N'),
 (9420,8108,9,2,'N'),
 (9421,8109,9,2,'N'),
 (9422,8110,9,2,'N'),
 (9423,8111,9,2,'N'),
 (9424,8112,9,2,'N'),
 (9425,8113,9,2,'N'),
 (9426,8100,10,2,'N'),
 (9427,8101,10,2,'N'),
 (9428,8102,10,2,'N'),
 (9429,8103,10,2,'N'),
 (9430,8104,10,2,'N'),
 (9431,8105,10,2,'N'),
 (9432,8106,10,2,'N'),
 (9433,8107,10,2,'N'),
 (9434,8108,10,2,'N'),
 (9435,8109,10,2,'N'),
 (9436,8110,10,2,'N'),
 (9437,8111,10,2,'N'),
 (9438,8112,10,2,'N'),
 (9439,8113,10,2,'N'),
 (9600,8200,1,3,'N'),
 (9601,8201,1,3,'N'),
 (9602,8202,1,3,'N'),
 (9603,8203,1,3,'N'),
 (9604,8204,1,3,'N'),
 (9605,8205,1,3,'N'),
 (9606,8206,1,3,'N'),
 (9607,8207,1,3,'N'),
 (9608,8208,1,3,'N'),
 (9609,8209,1,3,'N'),
 (9610,8210,1,3,'N'),
 (9611,8211,1,3,'N'),
 (9612,8212,1,3,'N'),
 (9613,8213,1,3,'N'),
 (9614,8200,2,3,'N'),
 (9615,8201,2,3,'N'),
 (9616,8202,2,3,'N'),
 (9617,8203,2,3,'N'),
 (9618,8204,2,3,'N'),
 (9619,8205,2,3,'N'),
 (9620,8206,2,3,'N'),
 (9621,8207,2,3,'N'),
 (9622,8208,2,3,'N'),
 (9623,8209,2,3,'N'),
 (9624,8210,2,3,'N'),
 (9625,8211,2,3,'N'),
 (9626,8212,2,3,'N'),
 (9627,8213,2,3,'N'),
 (9628,8200,3,3,'N'),
 (9629,8201,3,3,'N'),
 (9630,8202,3,3,'N'),
 (9631,8203,3,3,'N'),
 (9632,8204,3,3,'N'),
 (9633,8205,3,3,'N'),
 (9634,8206,3,3,'N'),
 (9635,8207,3,3,'N'),
 (9636,8208,3,3,'N'),
 (9637,8209,3,3,'N'),
 (9638,8210,3,3,'N'),
 (9639,8211,3,3,'N'),
 (9640,8212,3,3,'N'),
 (9641,8213,3,3,'N'),
 (9642,8200,4,3,'N'),
 (9643,8201,4,3,'N'),
 (9644,8202,4,3,'N'),
 (9645,8203,4,3,'N'),
 (9646,8204,4,3,'N'),
 (9647,8205,4,3,'N'),
 (9648,8206,4,3,'N'),
 (9649,8207,4,3,'N'),
 (9650,8208,4,3,'N'),
 (9651,8209,4,3,'N'),
 (9652,8210,4,3,'N'),
 (9653,8211,4,3,'N'),
 (9654,8212,4,3,'N'),
 (9655,8213,4,3,'N'),
 (9656,8200,5,3,'N'),
 (9657,8201,5,3,'N'),
 (9658,8202,5,3,'N'),
 (9659,8203,5,3,'N'),
 (9660,8204,5,3,'N'),
 (9661,8205,5,3,'N'),
 (9662,8206,5,3,'N'),
 (9663,8207,5,3,'N'),
 (9664,8208,5,3,'N'),
 (9665,8209,5,3,'N'),
 (9666,8210,5,3,'N'),
 (9667,8211,5,3,'N'),
 (9668,8212,5,3,'N'),
 (9669,8213,5,3,'N'),
 (9670,8200,6,3,'N'),
 (9671,8201,6,3,'N'),
 (9672,8202,6,3,'N'),
 (9673,8203,6,3,'N'),
 (9674,8204,6,3,'N'),
 (9675,8205,6,3,'N'),
 (9676,8206,6,3,'N'),
 (9677,8207,6,3,'N'),
 (9678,8208,6,3,'N'),
 (9679,8209,6,3,'N'),
 (9680,8210,6,3,'N'),
 (9681,8211,6,3,'N'),
 (9682,8212,6,3,'N'),
 (9683,8213,6,3,'N'),
 (9684,8200,7,3,'N'),
 (9685,8201,7,3,'N'),
 (9686,8202,7,3,'N'),
 (9687,8203,7,3,'N'),
 (9688,8204,7,3,'N'),
 (9689,8205,7,3,'N'),
 (9690,8206,7,3,'N'),
 (9691,8207,7,3,'N'),
 (9692,8208,7,3,'N'),
 (9693,8209,7,3,'N'),
 (9694,8210,7,3,'N'),
 (9695,8211,7,3,'N'),
 (9696,8212,7,3,'N'),
 (9697,8213,7,3,'N'),
 (9698,8200,8,3,'N'),
 (9699,8201,8,3,'N'),
 (9700,8202,8,3,'N'),
 (9701,8203,8,3,'N'),
 (9702,8204,8,3,'N'),
 (9703,8205,8,3,'N'),
 (9704,8206,8,3,'N'),
 (9705,8207,8,3,'N'),
 (9706,8208,8,3,'N'),
 (9707,8209,8,3,'N'),
 (9708,8210,8,3,'N'),
 (9709,8211,8,3,'N'),
 (9710,8212,8,3,'N'),
 (9711,8213,8,3,'N'),
 (9712,8200,9,3,'N'),
 (9713,8201,9,3,'N'),
 (9714,8202,9,3,'N'),
 (9715,8203,9,3,'N'),
 (9716,8204,9,3,'N'),
 (9717,8205,9,3,'N'),
 (9718,8206,9,3,'N'),
 (9719,8207,9,3,'N'),
 (9720,8208,9,3,'N'),
 (9721,8209,9,3,'N'),
 (9722,8210,9,3,'N'),
 (9723,8211,9,3,'N'),
 (9724,8212,9,3,'N'),
 (9725,8213,9,3,'N'),
 (9726,8200,10,3,'N'),
 (9727,8201,10,3,'N'),
 (9728,8202,10,3,'N'),
 (9729,8203,10,3,'N'),
 (9730,8204,10,3,'N'),
 (9731,8205,10,3,'N'),
 (9732,8206,10,3,'N'),
 (9733,8207,10,3,'N'),
 (9734,8208,10,3,'N'),
 (9735,8209,10,3,'N'),
 (9736,8210,10,3,'N'),
 (9737,8211,10,3,'N'),
 (9738,8212,10,3,'N'),
 (9739,8213,10,3,'N');
UNLOCK TABLES;
/*!40000 ALTER TABLE `reports_team_purchase_map` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`researchproject`
--

DROP TABLE IF EXISTS `bizlabs`.`researchproject`;
CREATE TABLE  `bizlabs`.`researchproject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) NOT NULL,
  `DESIGN` int(11) NOT NULL,
  `FRAGRANCE` int(11) NOT NULL,
  `PERSISTENCE` int(11) NOT NULL,
  `PACKAGING` int(11) NOT NULL,
  `SAFETY` int(11) NOT NULL,
  `MINIMUMBASECOST` int(11) NOT NULL,
  `REQUESTEDBASECOST` int(11) NOT NULL,
  `ALLOCATEDBUDGET` int(11) NOT NULL,
  `CURRENTPERIOD` int(11) NOT NULL,
  `ISAVAILABLE` char(1) NOT NULL,
  `BUDGETDEFICIT` int(11) NOT NULL,
  `PROJECTFINISHPERIOD` int(11) DEFAULT NULL,
  `TEAMID` int(11) NOT NULL,
  `RequiredBudgetAtMinBC` int(11) NOT NULL,
  `RequiredBudgetAtReqBC` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `TEAMID_FK` (`TEAMID`),
  CONSTRAINT `TEAMID_FK` FOREIGN KEY (`TEAMID`) REFERENCES `teams` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1270 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`researchproject`
--

/*!40000 ALTER TABLE `researchproject` DISABLE KEYS */;
LOCK TABLES `researchproject` WRITE;
INSERT INTO `bizlabs`.`researchproject` VALUES  (1000,'ARYAN',80,85,70,85,71,349,349,1693120,0,'Y',0,0,1,1693120,1693120),
 (1001,'ARMAN',31,26,25,32,21,127,127,934240,0,'Y',0,0,1,934240,934240),
 (1002,'BRISU',70,65,60,70,55,289,289,1487270,0,'Y',0,0,2,1487270,1487270),
 (1003,'BRUNI',50,47,45,48,32,206,206,1204545,0,'Y',0,0,2,1204545,1204545),
 (1004,'CROWN',65,48,44,43,31,211,211,1220442,0,'Y',0,0,3,1220442,1220442),
 (1005,'CRITU',34,24,22,36,20,125,125,924118,0,'Y',0,0,3,924118,924118),
 (1006,'DRINK',51,52,38,45,30,196,196,1170330,0,'Y',0,0,4,1170330,1170330),
 (1007,'DROPE',90,81,64,83,78,347,347,1685979,0,'Y',0,0,4,1685979,1685979),
 (1008,'ERNOT',62,51,40,42,28,202,202,1190015,0,'Y',0,0,5,1190015,1190015),
 (1009,'ERPAD',34,32,30,30,26,145,145,994163,0,'Y',0,0,5,994163,994163),
 (1010,'FRENI',35,35,23,32,24,137,137,969377,0,'Y',0,0,6,969377,969377),
 (1011,'FRIST',72,83,72,81,65,342,342,1668299,0,'Y',0,0,6,1668299,1668299),
 (1012,'GREET',64,76,61,72,45,289,289,1486277,0,'Y',0,0,7,1486277,1486277),
 (1013,'GRIRU',52,46,44,49,37,210,210,1216592,0,'Y',0,0,7,1216592,1216592),
 (1014,'HRIWI',32,30,26,38,30,145,145,995091,0,'Y',0,0,8,995091,995091),
 (1015,'HROPE',71,63,64,69,45,286,286,1475782,0,'Y',0,0,8,1475782,1475782),
 (1016,'IRPCA',80,80,74,81,60,344,344,1674006,0,'Y',0,0,9,1674006,1674006),
 (1017,'IRFCO',60,48,44,49,37,216,216,1238947,0,'Y',0,0,9,1238947,1238947),
 (1018,'JROSE',65,72,58,76,45,284,284,1469262,0,'Y',0,0,10,1469262,1469262),
 (1019,'JRANO',38,28,23,34,19,130,130,942064,0,'Y',0,0,10,942064,942064),
 (1020,'ARSMA',84,85,77,85,77,294,294,1756582,0,'Y',0,3,1,1756582,1756582),
 (1021,'ARPAN',67,76,67,77,62,254,254,1583147,0,'Y',0,3,1,1583147,1583147),
 (1022,'ARTIL',67,62,56,66,47,216,216,1420330,0,'Y',0,3,1,1420330,1420330),
 (1023,'ARPEX',41,43,34,44,30,140,140,1100720,0,'Y',0,3,1,1100720,1100720),
 (1024,'ARCER',29,30,23,31,21,100,100,927968,0,'Y',0,3,1,927968,927968),
 (1025,'BRIMA',84,85,77,85,77,294,294,1756582,0,'Y',0,3,2,1756582,1756582),
 (1026,'BRAND',67,76,67,77,62,254,254,1583147,0,'Y',0,3,2,1583147,1583147),
 (1027,'BRILO',67,62,56,66,47,216,216,1420330,0,'Y',0,3,2,1420330,1420330),
 (1028,'BREST',41,43,34,44,30,140,140,1100720,0,'Y',0,3,2,1100720,1100720),
 (1029,'BROPI',29,30,23,31,21,100,100,927968,0,'Y',0,3,2,927968,927968),
 (1030,'CRASE',84,85,77,85,77,294,294,1756582,0,'Y',0,3,3,1756582,1756582),
 (1031,'CRIDO',67,76,67,77,62,254,254,1583147,0,'Y',0,3,3,1583147,1583147),
 (1032,'CRIST',67,62,56,66,47,216,216,1420330,0,'Y',0,3,3,1420330,1420330),
 (1033,'CRALO',41,43,34,44,30,140,140,1100720,0,'Y',0,3,3,1100720,1100720),
 (1034,'CRIHU',29,30,23,31,21,100,100,927968,0,'Y',0,3,3,927968,927968),
 (1035,'DROGI',84,85,77,85,77,294,294,1756582,0,'Y',0,3,4,1756582,1756582),
 (1036,'DRILL',67,76,67,77,62,254,254,1583147,0,'Y',0,3,4,1583147,1583147),
 (1037,'DRONE',67,62,56,66,47,216,216,1420330,0,'Y',0,3,4,1420330,1420330),
 (1038,'DREWS',41,43,34,44,30,140,140,1100720,0,'Y',0,3,4,1100720,1100720),
 (1039,'DRADI',29,30,23,31,21,100,100,927968,0,'Y',0,3,4,927968,927968),
 (1040,'ERTLO',84,85,77,85,77,294,294,1756582,0,'Y',0,3,5,1756582,1756582),
 (1041,'ERBAC',67,76,67,77,62,254,254,1583147,0,'Y',0,3,5,1583147,1583147),
 (1042,'ERLTA',67,62,56,66,47,216,216,1420330,0,'Y',0,3,5,1420330,1420330),
 (1043,'ERSMA',41,43,34,44,30,140,140,1100720,0,'Y',0,3,5,1100720,1100720),
 (1044,'ERTKI',29,30,23,31,21,100,100,927968,0,'Y',0,3,5,927968,927968),
 (1045,'FROPE',84,85,77,85,77,294,294,1756582,0,'Y',0,3,6,1756582,1756582),
 (1046,'FRATU',67,76,67,77,62,254,254,1583147,0,'Y',0,3,6,1583147,1583147),
 (1047,'FREEL',67,62,56,66,47,216,216,1420330,0,'Y',0,3,6,1420330,1420330),
 (1048,'FRIND',41,43,34,44,30,140,140,1100720,0,'Y',0,3,6,1100720,1100720),
 (1049,'FRETU',29,30,23,31,21,100,100,927968,0,'Y',0,3,6,927968,927968),
 (1050,'GRAND',84,85,77,85,77,294,294,1756582,0,'Y',0,3,7,1756582,1756582),
 (1051,'GREST',67,76,67,77,62,254,254,1583147,0,'Y',0,3,7,1583147,1583147),
 (1052,'GRELL',67,62,56,66,47,216,216,1420330,0,'Y',0,3,7,1420330,1420330),
 (1053,'GRIND',41,43,34,44,30,140,140,1100720,0,'Y',0,3,7,1100720,1100720),
 (1054,'GROSE',29,30,23,31,21,100,100,927968,0,'Y',0,3,7,927968,927968),
 (1055,'HRISS',84,85,77,85,77,294,294,1756582,0,'Y',0,3,8,1756582,1756582),
 (1056,'HRUGE',67,76,67,77,62,254,254,1583147,0,'Y',0,3,8,1583147,1583147),
 (1057,'HRITI',67,62,56,66,47,216,216,1420330,0,'Y',0,3,8,1420330,1420330),
 (1058,'HRYAT',41,43,34,44,30,140,140,1100720,0,'Y',0,3,8,1100720,1100720),
 (1059,'HRUGS',29,30,23,31,21,100,100,927968,0,'Y',0,3,8,927968,927968),
 (1060,'IRMAL',84,85,77,85,77,294,294,1756582,0,'Y',0,3,9,1756582,1756582),
 (1061,'IRPOK',67,76,67,77,62,254,254,1583147,0,'Y',0,3,9,1583147,1583147),
 (1062,'IRDLI',67,62,56,66,47,216,216,1420330,0,'Y',0,3,9,1420330,1420330),
 (1063,'IRRIS',41,43,34,44,30,140,140,1100720,0,'Y',0,3,9,1100720,1100720),
 (1064,'IRAQI',29,30,23,31,21,100,100,927968,0,'Y',0,3,9,927968,927968),
 (1065,'JRUDE',84,85,77,85,77,294,294,1756582,0,'Y',0,3,10,1756582,1756582),
 (1066,'JRIMI',67,76,67,77,62,254,254,1583147,0,'Y',0,3,10,1583147,1583147),
 (1067,'JROLE',67,62,56,66,47,216,216,1420330,0,'Y',0,3,10,1420330,1420330),
 (1068,'JRIPE',41,43,34,44,30,140,140,1100720,0,'Y',0,3,10,1100720,1100720),
 (1069,'JRAMI',29,30,23,31,21,100,100,927968,0,'Y',0,3,10,927968,927968),
 (1100,'ARYAN',80,85,70,85,71,359,359,1693120,1,'Y',0,0,1,1693120,1693120),
 (1101,'ARMAN',31,26,25,32,21,131,131,934240,1,'Y',0,0,1,934240,934240),
 (1102,'BRISU',70,65,60,70,55,298,298,1487270,1,'Y',0,0,2,1487270,1487270),
 (1103,'BRUNI',50,47,45,48,32,212,212,1204545,1,'Y',0,0,2,1204545,1204545),
 (1104,'CROWN',65,48,44,43,31,217,217,1220442,1,'Y',0,0,3,1220442,1220442),
 (1105,'CRITU',34,24,22,36,20,129,129,924118,1,'Y',0,0,3,924118,924118),
 (1106,'DRINK',51,52,38,45,30,202,202,1170330,1,'Y',0,0,4,1170330,1170330),
 (1107,'DROPE',90,81,64,83,78,357,357,1685979,1,'Y',0,0,4,1685979,1685979),
 (1108,'ERNOT',62,51,40,42,28,208,208,1190015,1,'Y',0,0,5,1190015,1190015),
 (1109,'ERPAD',34,32,30,30,26,149,149,994163,1,'Y',0,0,5,994163,994163),
 (1110,'FRENI',35,35,23,32,24,141,141,969377,1,'Y',0,0,6,969377,969377),
 (1111,'FRIST',72,83,72,81,65,352,352,1668299,1,'Y',0,0,6,1668299,1668299),
 (1112,'GREET',64,76,61,72,45,298,298,1486277,1,'Y',0,0,7,1486277,1486277),
 (1113,'GRIRU',52,46,44,49,37,216,216,1216592,1,'Y',0,0,7,1216592,1216592),
 (1114,'HRIWI',32,30,26,38,30,149,149,995091,1,'Y',0,0,8,995091,995091),
 (1115,'HROPE',71,63,64,69,45,295,295,1475782,1,'Y',0,0,8,1475782,1475782),
 (1116,'IRPCA',80,80,74,81,60,354,354,1674006,1,'Y',0,0,9,1674006,1674006),
 (1117,'IRFCO',60,48,44,49,37,222,222,1238947,1,'Y',0,0,9,1238947,1238947),
 (1118,'JROSE',65,72,58,76,45,293,293,1469262,1,'Y',0,0,10,1469262,1469262),
 (1119,'JRANO',38,28,23,34,19,134,134,942064,1,'Y',0,0,10,942064,942064),
 (1120,'ARSMA',84,85,77,85,77,303,303,1756582,1,'Y',0,3,1,1756582,1756582),
 (1121,'ARPAN',67,76,67,77,62,262,262,1583147,1,'Y',0,3,1,1583147,1583147),
 (1122,'ARTIL',67,62,56,66,47,222,222,1420330,1,'Y',0,3,1,1420330,1420330),
 (1123,'ARPEX',41,43,34,44,30,144,144,1100720,1,'Y',0,3,1,1100720,1100720),
 (1124,'ARCER',29,30,23,31,21,103,103,927968,1,'Y',0,3,1,927968,927968),
 (1125,'BRIMA',84,85,77,85,77,303,303,1756582,1,'Y',0,3,2,1756582,1756582),
 (1126,'BRAND',67,76,67,77,62,262,262,1583147,1,'Y',0,3,2,1583147,1583147),
 (1127,'BRILO',67,62,56,66,47,222,222,1420330,1,'Y',0,3,2,1420330,1420330),
 (1128,'BREST',41,43,34,44,30,144,144,1100720,1,'Y',0,3,2,1100720,1100720),
 (1129,'BROPI',29,30,23,31,21,103,103,927968,1,'Y',0,3,2,927968,927968),
 (1130,'CRASE',84,85,77,85,77,303,303,1756582,1,'Y',0,3,3,1756582,1756582),
 (1131,'CRIDO',67,76,67,77,62,262,262,1583147,1,'Y',0,3,3,1583147,1583147),
 (1132,'CRIST',67,62,56,66,47,222,222,1420330,1,'Y',0,3,3,1420330,1420330),
 (1133,'CRALO',41,43,34,44,30,144,144,1100720,1,'Y',0,3,3,1100720,1100720),
 (1134,'CRIHU',29,30,23,31,21,103,103,927968,1,'Y',0,3,3,927968,927968),
 (1135,'DROGI',84,85,77,85,77,303,303,1756582,1,'Y',0,3,4,1756582,1756582),
 (1136,'DRILL',67,76,67,77,62,262,262,1583147,1,'Y',0,3,4,1583147,1583147),
 (1137,'DRONE',67,62,56,66,47,222,222,1420330,1,'Y',0,3,4,1420330,1420330),
 (1138,'DREWS',41,43,34,44,30,144,144,1100720,1,'Y',0,3,4,1100720,1100720),
 (1139,'DRADI',29,30,23,31,21,103,103,927968,1,'Y',0,3,4,927968,927968),
 (1140,'ERTLO',84,85,77,85,77,303,303,1756582,1,'Y',0,3,5,1756582,1756582),
 (1141,'ERBAC',67,76,67,77,62,262,262,1583147,1,'Y',0,3,5,1583147,1583147),
 (1142,'ERLTA',67,62,56,66,47,222,222,1420330,1,'Y',0,3,5,1420330,1420330),
 (1143,'ERSMA',41,43,34,44,30,144,144,1100720,1,'Y',0,3,5,1100720,1100720),
 (1144,'ERTKI',29,30,23,31,21,103,103,927968,1,'Y',0,3,5,927968,927968),
 (1145,'FROPE',84,85,77,85,77,303,303,1756582,1,'Y',0,3,6,1756582,1756582),
 (1146,'FRATU',67,76,67,77,62,262,262,1583147,1,'Y',0,3,6,1583147,1583147),
 (1147,'FREEL',67,62,56,66,47,222,222,1420330,1,'Y',0,3,6,1420330,1420330),
 (1148,'FRIND',41,43,34,44,30,144,144,1100720,1,'Y',0,3,6,1100720,1100720),
 (1149,'FRETU',29,30,23,31,21,103,103,927968,1,'Y',0,3,6,927968,927968),
 (1150,'GRAND',84,85,77,85,77,303,303,1756582,1,'Y',0,3,7,1756582,1756582),
 (1151,'GREST',67,76,67,77,62,262,262,1583147,1,'Y',0,3,7,1583147,1583147),
 (1152,'GRELL',67,62,56,66,47,222,222,1420330,1,'Y',0,3,7,1420330,1420330),
 (1153,'GRIND',41,43,34,44,30,144,144,1100720,1,'Y',0,3,7,1100720,1100720),
 (1154,'GROSE',29,30,23,31,21,103,103,927968,1,'Y',0,3,7,927968,927968),
 (1155,'HRISS',84,85,77,85,77,303,303,1756582,1,'Y',0,3,8,1756582,1756582),
 (1156,'HRUGE',67,76,67,77,62,262,262,1583147,1,'Y',0,3,8,1583147,1583147),
 (1157,'HRITI',67,62,56,66,47,222,222,1420330,1,'Y',0,3,8,1420330,1420330),
 (1158,'HRYAT',41,43,34,44,30,144,144,1100720,1,'Y',0,3,8,1100720,1100720),
 (1159,'HRUGS',29,30,23,31,21,103,103,927968,1,'Y',0,3,8,927968,927968),
 (1160,'IRMAL',84,85,77,85,77,303,303,1756582,1,'Y',0,3,9,1756582,1756582),
 (1161,'IRPOK',67,76,67,77,62,262,262,1583147,1,'Y',0,3,9,1583147,1583147),
 (1162,'IRDLI',67,62,56,66,47,222,222,1420330,1,'Y',0,3,9,1420330,1420330),
 (1163,'IRRIS',41,43,34,44,30,144,144,1100720,1,'Y',0,3,9,1100720,1100720),
 (1164,'IRAQI',29,30,23,31,21,103,103,927968,1,'Y',0,3,9,927968,927968),
 (1165,'JRUDE',84,85,77,85,77,303,303,1756582,1,'Y',0,3,10,1756582,1756582),
 (1166,'JRIMI',67,76,67,77,62,262,262,1583147,1,'Y',0,3,10,1583147,1583147),
 (1167,'JROLE',67,62,56,66,47,222,222,1420330,1,'Y',0,3,10,1420330,1420330),
 (1168,'JRIPE',41,43,34,44,30,144,144,1100720,1,'Y',0,3,10,1100720,1100720),
 (1169,'JRAMI',29,30,23,31,21,103,103,927968,1,'Y',0,3,10,927968,927968),
 (1200,'ARYAN',80,85,70,85,71,370,370,1693120,2,'Y',0,0,1,1693120,1693120),
 (1201,'ARMAN',31,26,25,32,21,135,135,934240,2,'Y',0,0,1,934240,934240),
 (1202,'BRISU',70,65,60,70,55,307,307,1487270,2,'Y',0,0,2,1487270,1487270),
 (1203,'BRUNI',50,47,45,48,32,218,218,1204545,2,'Y',0,0,2,1204545,1204545),
 (1204,'CROWN',65,48,44,43,31,224,224,1220442,2,'Y',0,0,3,1220442,1220442),
 (1205,'CRITU',34,24,22,36,20,133,133,924118,2,'Y',0,0,3,924118,924118),
 (1206,'DRINK',51,52,38,45,30,208,208,1170330,2,'Y',0,0,4,1170330,1170330),
 (1207,'DROPE',90,81,64,83,78,368,368,1685979,2,'Y',0,0,4,1685979,1685979),
 (1208,'ERNOT',62,51,40,42,28,214,214,1190015,2,'Y',0,0,5,1190015,1190015),
 (1209,'ERPAD',34,32,30,30,26,153,153,994163,2,'Y',0,0,5,994163,994163),
 (1210,'FRENI',35,35,23,32,24,145,145,969377,2,'Y',0,0,6,969377,969377),
 (1211,'FRIST',72,83,72,81,65,363,363,1668299,2,'Y',0,0,6,1668299,1668299),
 (1212,'GREET',64,76,61,72,45,307,307,1486277,2,'Y',0,0,7,1486277,1486277),
 (1213,'GRIRU',52,46,44,49,37,222,222,1216592,2,'Y',0,0,7,1216592,1216592),
 (1214,'HRIWI',32,30,26,38,30,153,153,995091,2,'Y',0,0,8,995091,995091),
 (1215,'HROPE',71,63,64,69,45,304,304,1475782,2,'Y',0,0,8,1475782,1475782),
 (1216,'IRPCA',80,80,74,81,60,365,365,1674006,2,'Y',0,0,9,1674006,1674006),
 (1217,'IRFCO',60,48,44,49,37,229,229,1238947,2,'Y',0,0,9,1238947,1238947),
 (1218,'JROSE',65,72,58,76,45,302,302,1469262,2,'Y',0,0,10,1469262,1469262),
 (1219,'JRANO',38,28,23,34,19,138,138,942064,2,'Y',0,0,10,942064,942064),
 (1220,'ARSMA',84,85,77,85,77,312,312,1756582,2,'Y',0,3,1,1756582,1756582),
 (1221,'ARPAN',67,76,67,77,62,270,270,1583147,2,'Y',0,3,1,1583147,1583147),
 (1222,'ARTIL',67,62,56,66,47,229,229,1420330,2,'Y',0,3,1,1420330,1420330),
 (1223,'ARPEX',41,43,34,44,30,148,148,1100720,2,'Y',0,3,1,1100720,1100720),
 (1224,'ARCER',29,30,23,31,21,106,106,927968,2,'Y',0,3,1,927968,927968),
 (1225,'BRIMA',84,85,77,85,77,312,312,1756582,2,'Y',0,3,2,1756582,1756582),
 (1226,'BRAND',67,76,67,77,62,270,270,1583147,2,'Y',0,3,2,1583147,1583147),
 (1227,'BRILO',67,62,56,66,47,229,229,1420330,2,'Y',0,3,2,1420330,1420330),
 (1228,'BREST',41,43,34,44,30,148,148,1100720,2,'Y',0,3,2,1100720,1100720),
 (1229,'BROPI',29,30,23,31,21,106,106,927968,2,'Y',0,3,2,927968,927968),
 (1230,'CRASE',84,85,77,85,77,312,312,1756582,2,'Y',0,3,3,1756582,1756582),
 (1231,'CRIDO',67,76,67,77,62,270,270,1583147,2,'Y',0,3,3,1583147,1583147),
 (1232,'CRIST',67,62,56,66,47,229,229,1420330,2,'Y',0,3,3,1420330,1420330),
 (1233,'CRALO',41,43,34,44,30,148,148,1100720,2,'Y',0,3,3,1100720,1100720),
 (1234,'CRIHU',29,30,23,31,21,106,106,927968,2,'Y',0,3,3,927968,927968),
 (1235,'DROGI',84,85,77,85,77,312,312,1756582,2,'Y',0,3,4,1756582,1756582),
 (1236,'DRILL',67,76,67,77,62,270,270,1583147,2,'Y',0,3,4,1583147,1583147),
 (1237,'DRONE',67,62,56,66,47,229,229,1420330,2,'Y',0,3,4,1420330,1420330),
 (1238,'DREWS',41,43,34,44,30,148,148,1100720,2,'Y',0,3,4,1100720,1100720),
 (1239,'DRADI',29,30,23,31,21,106,106,927968,2,'Y',0,3,4,927968,927968),
 (1240,'ERTLO',84,85,77,85,77,312,312,1756582,2,'Y',0,3,5,1756582,1756582),
 (1241,'ERBAC',67,76,67,77,62,270,270,1583147,2,'Y',0,3,5,1583147,1583147),
 (1242,'ERLTA',67,62,56,66,47,229,229,1420330,2,'Y',0,3,5,1420330,1420330),
 (1243,'ERSMA',41,43,34,44,30,148,148,1100720,2,'Y',0,3,5,1100720,1100720),
 (1244,'ERTKI',29,30,23,31,21,106,106,927968,2,'Y',0,3,5,927968,927968),
 (1245,'FROPE',84,85,77,85,77,312,312,1756582,2,'Y',0,3,6,1756582,1756582),
 (1246,'FRATU',67,76,67,77,62,270,270,1583147,2,'Y',0,3,6,1583147,1583147),
 (1247,'FREEL',67,62,56,66,47,229,229,1420330,2,'Y',0,3,6,1420330,1420330),
 (1248,'FRIND',41,43,34,44,30,148,148,1100720,2,'Y',0,3,6,1100720,1100720),
 (1249,'FRETU',29,30,23,31,21,106,106,927968,2,'Y',0,3,6,927968,927968),
 (1250,'GRAND',84,85,77,85,77,312,312,1756582,2,'Y',0,3,7,1756582,1756582),
 (1251,'GREST',67,76,67,77,62,270,270,1583147,2,'Y',0,3,7,1583147,1583147),
 (1252,'GRELL',67,62,56,66,47,229,229,1420330,2,'Y',0,3,7,1420330,1420330),
 (1253,'GRIND',41,43,34,44,30,148,148,1100720,2,'Y',0,3,7,1100720,1100720),
 (1254,'GROSE',29,30,23,31,21,106,106,927968,2,'Y',0,3,7,927968,927968),
 (1255,'HRISS',84,85,77,85,77,312,312,1756582,2,'Y',0,3,8,1756582,1756582),
 (1256,'HRUGE',67,76,67,77,62,270,270,1583147,2,'Y',0,3,8,1583147,1583147),
 (1257,'HRITI',67,62,56,66,47,229,229,1420330,2,'Y',0,3,8,1420330,1420330),
 (1258,'HRYAT',41,43,34,44,30,148,148,1100720,2,'Y',0,3,8,1100720,1100720),
 (1259,'HRUGS',29,30,23,31,21,106,106,927968,2,'Y',0,3,8,927968,927968),
 (1260,'IRMAL',84,85,77,85,77,312,312,1756582,2,'Y',0,3,9,1756582,1756582),
 (1261,'IRPOK',67,76,67,77,62,270,270,1583147,2,'Y',0,3,9,1583147,1583147),
 (1262,'IRDLI',67,62,56,66,47,229,229,1420330,2,'Y',0,3,9,1420330,1420330),
 (1263,'IRRIS',41,43,34,44,30,148,148,1100720,2,'Y',0,3,9,1100720,1100720),
 (1264,'IRAQI',29,30,23,31,21,106,106,927968,2,'Y',0,3,9,927968,927968),
 (1265,'JRUDE',84,85,77,85,77,312,312,1756582,2,'Y',0,3,10,1756582,1756582),
 (1266,'JRIMI',67,76,67,77,62,270,270,1583147,2,'Y',0,3,10,1583147,1583147),
 (1267,'JROLE',67,62,56,66,47,229,229,1420330,2,'Y',0,3,10,1420330,1420330),
 (1268,'JRIPE',41,43,34,44,30,148,148,1100720,2,'Y',0,3,10,1100720,1100720),
 (1269,'JRAMI',29,30,23,31,21,106,106,927968,2,'Y',0,3,10,927968,927968);
UNLOCK TABLES;
/*!40000 ALTER TABLE `researchproject` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`researchproject_metadata`
--

DROP TABLE IF EXISTS `bizlabs`.`researchproject_metadata`;
CREATE TABLE  `bizlabs`.`researchproject_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(255) NOT NULL,
  `design` int(11) NOT NULL,
  `fragrance` int(11) NOT NULL,
  `persistence` int(11) NOT NULL,
  `packaging` int(11) NOT NULL,
  `safety` int(11) NOT NULL,
  `teamName` varchar(255) NOT NULL,
  `scenario` int(11) DEFAULT NULL,
  `requestedBaseCost` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projectNameMD_unq` (`projectName`),
  KEY `teamName_fk` (`teamName`),
  CONSTRAINT `teamName_fk` FOREIGN KEY (`teamName`) REFERENCES `team_metadata` (`teamName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`researchproject_metadata`
--

/*!40000 ALTER TABLE `researchproject_metadata` DISABLE KEYS */;
LOCK TABLES `researchproject_metadata` WRITE;
INSERT INTO `bizlabs`.`researchproject_metadata` VALUES  (1,'ARYAN',25,30,38,15,15,'Alpha',1,140),
 (2,'ARMAN',55,60,72,40,40,'Alpha',1,250),
 (3,'BRYAN',25,30,38,15,15,'Bravo',1,140),
 (4,'BRMAN',55,60,72,40,40,'Bravo',1,250);
UNLOCK TABLES;
/*!40000 ALTER TABLE `researchproject_metadata` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`salesforce`
--

DROP TABLE IF EXISTS `bizlabs`.`salesforce`;
CREATE TABLE  `bizlabs`.`salesforce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_sf` float(10,4) NOT NULL,
  `generalStore_sf` float(10,4) NOT NULL,
  `kiranaStore_sf` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salesForcebrandId_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=6220 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`salesforce`
--

/*!40000 ALTER TABLE `salesforce` DISABLE KEYS */;
LOCK TABLES `salesforce` WRITE;
INSERT INTO `bizlabs`.`salesforce` VALUES  (6000,2000,15.0000,15.0000,15.0000),
 (6001,2001,15.0000,15.0000,15.0000),
 (6002,2002,15.0000,15.0000,15.0000),
 (6003,2003,15.0000,15.0000,15.0000),
 (6004,2004,15.0000,15.0000,15.0000),
 (6005,2005,15.0000,15.0000,15.0000),
 (6006,2006,15.0000,15.0000,15.0000),
 (6007,2007,15.0000,15.0000,15.0000),
 (6008,2008,15.0000,15.0000,15.0000),
 (6009,2009,15.0000,15.0000,15.0000),
 (6010,2010,15.0000,15.0000,15.0000),
 (6011,2011,15.0000,15.0000,15.0000),
 (6012,2012,15.0000,15.0000,15.0000),
 (6013,2013,15.0000,15.0000,15.0000),
 (6014,2014,15.0000,15.0000,15.0000),
 (6015,2015,15.0000,15.0000,15.0000),
 (6016,2016,15.0000,15.0000,15.0000),
 (6017,2017,15.0000,15.0000,15.0000),
 (6018,2018,15.0000,15.0000,15.0000),
 (6019,2019,15.0000,15.0000,15.0000),
 (6101,2101,5.0000,20.0000,35.0000),
 (6100,2100,35.0000,20.0000,5.0000),
 (6102,2102,20.0000,20.0000,5.0000),
 (6103,2103,5.0000,20.0000,20.0000),
 (6105,2105,5.0000,20.0000,25.0000),
 (6104,2104,10.0000,25.0000,25.0000),
 (6106,2106,5.0000,30.0000,20.0000),
 (6107,2107,31.0000,21.0000,3.0000),
 (6108,2108,5.0000,30.0000,25.0000),
 (6109,2109,3.0000,25.0000,32.0000),
 (6110,2110,5.0000,15.0000,25.0000),
 (6111,2111,30.0000,12.0000,3.0000),
 (6112,2112,10.0000,25.0000,5.0000),
 (6113,2113,15.0000,25.0000,10.0000),
 (6114,2114,30.0000,11.0000,3.0000),
 (6115,2115,20.0000,20.0000,6.0000),
 (6117,2117,10.0000,20.0000,15.0000),
 (6116,2116,30.0000,12.0000,3.0000),
 (6119,2119,3.0000,12.0000,30.0000),
 (6118,2118,12.0000,27.0000,6.0000),
 (6201,2201,0.0000,0.0000,0.0000),
 (6200,2200,0.0000,0.0000,0.0000),
 (6202,2202,0.0000,0.0000,0.0000),
 (6203,2203,0.0000,0.0000,0.0000),
 (6205,2205,0.0000,0.0000,0.0000),
 (6204,2204,0.0000,0.0000,0.0000),
 (6206,2206,0.0000,0.0000,0.0000),
 (6207,2207,0.0000,0.0000,0.0000),
 (6208,2208,0.0000,0.0000,0.0000),
 (6209,2209,0.0000,0.0000,0.0000),
 (6210,2210,0.0000,0.0000,0.0000),
 (6211,2211,0.0000,0.0000,0.0000),
 (6212,2212,0.0000,0.0000,0.0000),
 (6213,2213,0.0000,0.0000,0.0000),
 (6214,2214,0.0000,0.0000,0.0000),
 (6215,2215,0.0000,0.0000,0.0000),
 (6217,2217,0.0000,0.0000,0.0000),
 (6216,2216,0.0000,0.0000,0.0000),
 (6219,2219,0.0000,0.0000,0.0000),
 (6218,2218,0.0000,0.0000,0.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `salesforce` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`salesforce_metadata`
--

DROP TABLE IF EXISTS `bizlabs`.`salesforce_metadata`;
CREATE TABLE  `bizlabs`.`salesforce_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` int(11) NOT NULL,
  `supermarket_sf` float(10,4) NOT NULL,
  `generalStore_sf` float(10,4) NOT NULL,
  `kiranaStore_sf` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`salesforce_metadata`
--

/*!40000 ALTER TABLE `salesforce_metadata` DISABLE KEYS */;
LOCK TABLES `salesforce_metadata` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `salesforce_metadata` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`segment_constants`
--

DROP TABLE IF EXISTS `bizlabs`.`segment_constants`;
CREATE TABLE  `bizlabs`.`segment_constants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `Seg_BlueBloods` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`segment_constants`
--

/*!40000 ALTER TABLE `segment_constants` DISABLE KEYS */;
LOCK TABLES `segment_constants` WRITE;
INSERT INTO `bizlabs`.`segment_constants` VALUES  (2,'PRINT_REACH',0,0.6000,0.6000,0.6000,0.6000,0.6000),
 (3,'TELEVISION_REACH',0,0.7500,0.7500,0.7500,0.7500,0.7500),
 (4,'RADIO_REACH',0,0.5000,0.5000,0.5000,0.5000,0.5000),
 (5,'INTERNET_REACH',0,0.1500,0.1500,0.1500,0.1500,0.1500),
 (6,'SYNERGY_PRINT_TELEVISION',0,0.0500,0.0500,0.0500,0.0500,0.0500),
 (7,'SYNERGY_PRINT_RADIO',0,0.1000,0.1000,0.1000,0.1000,0.1000),
 (8,'SYNERGY_PRINT_INTERNET',0,0.1500,0.1500,0.1500,0.1500,0.1500),
 (9,'SYNERGY_TELEVISION_RADIO',0,0.1000,0.1000,0.1000,0.1000,0.1000),
 (10,'SYNERGY_TELEVISION_INTERNET',0,0.0500,0.0500,0.0500,0.0500,0.0500),
 (11,'SYNERGY_RADIO_INTERNET',0,0.1000,0.1000,0.1000,0.1000,0.1000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `segment_constants` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`segmentavailability_genstore`
--

DROP TABLE IF EXISTS `bizlabs`.`segmentavailability_genstore`;
CREATE TABLE  `bizlabs`.`segmentavailability_genstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_Avail` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segAvailGS_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`segmentavailability_genstore`
--

/*!40000 ALTER TABLE `segmentavailability_genstore` DISABLE KEYS */;
LOCK TABLES `segmentavailability_genstore` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentavailability_genstore` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`segmentavailability_kiranastore`
--

DROP TABLE IF EXISTS `bizlabs`.`segmentavailability_kiranastore`;
CREATE TABLE  `bizlabs`.`segmentavailability_kiranastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_Avail` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segAvailKS_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`segmentavailability_kiranastore`
--

/*!40000 ALTER TABLE `segmentavailability_kiranastore` DISABLE KEYS */;
LOCK TABLES `segmentavailability_kiranastore` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentavailability_kiranastore` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`segmentavailability_supermarket`
--

DROP TABLE IF EXISTS `bizlabs`.`segmentavailability_supermarket`;
CREATE TABLE  `bizlabs`.`segmentavailability_supermarket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_Avail` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segAvailMS_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`segmentavailability_supermarket`
--

/*!40000 ALTER TABLE `segmentavailability_supermarket` DISABLE KEYS */;
LOCK TABLES `segmentavailability_supermarket` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentavailability_supermarket` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`segmentmarketshare_genstore`
--

DROP TABLE IF EXISTS `bizlabs`.`segmentmarketshare_genstore`;
CREATE TABLE  `bizlabs`.`segmentmarketshare_genstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_ms` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segMsGen_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`segmentmarketshare_genstore`
--

/*!40000 ALTER TABLE `segmentmarketshare_genstore` DISABLE KEYS */;
LOCK TABLES `segmentmarketshare_genstore` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentmarketshare_genstore` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`segmentmarketshare_kiranastore`
--

DROP TABLE IF EXISTS `bizlabs`.`segmentmarketshare_kiranastore`;
CREATE TABLE  `bizlabs`.`segmentmarketshare_kiranastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_ms` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segMsKir_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`segmentmarketshare_kiranastore`
--

/*!40000 ALTER TABLE `segmentmarketshare_kiranastore` DISABLE KEYS */;
LOCK TABLES `segmentmarketshare_kiranastore` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentmarketshare_kiranastore` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`segmentmarketshare_supermarket`
--

DROP TABLE IF EXISTS `bizlabs`.`segmentmarketshare_supermarket`;
CREATE TABLE  `bizlabs`.`segmentmarketshare_supermarket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_ms` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segMsSupMa_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`segmentmarketshare_supermarket`
--

/*!40000 ALTER TABLE `segmentmarketshare_supermarket` DISABLE KEYS */;
LOCK TABLES `segmentmarketshare_supermarket` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentmarketshare_supermarket` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`semantic_mds_map`
--

DROP TABLE IF EXISTS `bizlabs`.`semantic_mds_map`;
CREATE TABLE  `bizlabs`.`semantic_mds_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MDSScale` varchar(100) NOT NULL,
  `DesignEq` float(10,4) NOT NULL,
  `fragranceEq` float(10,4) NOT NULL,
  `persistenceEq` float(10,4) NOT NULL,
  `packagingEq` float(10,4) NOT NULL,
  `safetyEq` float(10,4) NOT NULL,
  `priceEq` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`semantic_mds_map`
--

/*!40000 ALTER TABLE `semantic_mds_map` DISABLE KEYS */;
LOCK TABLES `semantic_mds_map` WRITE;
INSERT INTO `bizlabs`.`semantic_mds_map` VALUES  (1,'Economy',0.0000,0.0000,0.0000,0.0000,0.0000,1.0000),
 (2,'Quality',0.0000,0.2000,0.5000,0.0000,0.3000,0.0000),
 (3,'Appeal',0.3000,0.3000,0.0000,0.4000,0.0000,0.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `semantic_mds_map` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`semantic_segment_idealvaluemap`
--

DROP TABLE IF EXISTS `bizlabs`.`semantic_segment_idealvaluemap`;
CREATE TABLE  `bizlabs`.`semantic_segment_idealvaluemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) NOT NULL,
  `period` int(11) NOT NULL,
  `designValue` float(10,4) NOT NULL,
  `fragranceValue` float(10,4) NOT NULL,
  `persistenceValue` float(10,4) NOT NULL,
  `packagingValue` float(10,4) NOT NULL,
  `safetyValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`semantic_segment_idealvaluemap`
--

/*!40000 ALTER TABLE `semantic_segment_idealvaluemap` DISABLE KEYS */;
LOCK TABLES `semantic_segment_idealvaluemap` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `semantic_segment_idealvaluemap` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`team_bs`
--

DROP TABLE IF EXISTS `bizlabs`.`team_bs`;
CREATE TABLE  `bizlabs`.`team_bs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `share_capital` int(14) DEFAULT NULL,
  `reserves` int(14) DEFAULT NULL,
  `net_worth` int(14) DEFAULT NULL,
  `debt` int(14) DEFAULT NULL,
  `total_liabilities` int(14) DEFAULT NULL,
  `gross_block` int(14) DEFAULT NULL,
  `depreciation` int(14) DEFAULT NULL,
  `net_block` int(14) DEFAULT NULL,
  `inventory` int(14) DEFAULT NULL,
  `cash` int(14) DEFAULT NULL,
  `current_assets` int(14) DEFAULT NULL,
  `current_liabilities` int(14) DEFAULT NULL,
  `net_current_assets` int(14) DEFAULT NULL,
  `total_assets` int(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_bs_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`team_bs`
--

/*!40000 ALTER TABLE `team_bs` DISABLE KEYS */;
LOCK TABLES `team_bs` WRITE;
INSERT INTO `bizlabs`.`team_bs` VALUES  (1,0,'Alpha',1,10000000,66377781,76377781,2500000,68877781,10000000,200000,9800000,3432027,55645754,59077781,0,59077781,68877781),
 (2,0,'Bravo',2,10000000,62970198,72970198,2500000,65470198,10000000,200000,9800000,770059,54900139,55670198,0,55670198,65470198),
 (3,0,'Charlie',3,10000000,64788290,74788290,2500000,67288290,10000000,200000,9800000,2573746,54914544,57488290,0,57488290,67288290),
 (4,0,'Delta',4,10000000,65073514,75073514,2500000,67573514,10000000,200000,9800000,2143055,55630459,57773514,0,57773514,67573514),
 (5,0,'Echo',5,10000000,64618109,74618109,2500000,67118109,10000000,200000,9800000,2450442,54867667,57318109,0,57318109,67118109),
 (6,0,'Foxtrot',6,10000000,66203279,76203279,2500000,68703279,10000000,200000,9800000,3265787,55637492,58903279,0,58903279,68703279),
 (7,0,'Golf',7,10000000,62668866,72668866,2500000,65168866,10000000,200000,9800000,483457,54885409,55368866,0,55368866,65168866),
 (8,0,'Hotel',8,10000000,64702092,74702092,2500000,67202092,10000000,200000,9800000,2008771,55393321,57402092,0,57402092,67202092),
 (9,0,'India',9,10000000,64928272,74928272,2500000,67428272,10000000,200000,9800000,2041059,55587213,57628272,0,57628272,67428272),
 (10,0,'Juliet',10,10000000,64750488,74750488,2500000,67250488,10000000,200000,9800000,2017979,55432509,57450488,0,57450488,67250488),
 (11,0,'Alpha',1,10000000,66466281,76466281,2500000,68966281,10000000,200000,9800000,3432027,55734254,59166281,0,59166281,68966281),
 (12,0,'Bravo',2,10000000,63058698,73058698,2500000,65558698,10000000,200000,9800000,770059,54988639,55758698,0,55758698,65558698),
 (13,0,'Charlie',3,10000000,64876790,74876790,2500000,67376790,10000000,200000,9800000,2573746,55003044,57576790,0,57576790,67376790),
 (14,0,'Delta',4,10000000,65162014,75162014,2500000,67662014,10000000,200000,9800000,2143055,55718959,57862014,0,57862014,67662014),
 (15,0,'Echo',5,10000000,64706609,74706609,2500000,67206609,10000000,200000,9800000,2450442,54956167,57406609,0,57406609,67206609),
 (16,0,'Foxtrot',6,10000000,66291779,76291779,2500000,68791779,10000000,200000,9800000,3265787,55725992,58991779,0,58991779,68791779),
 (17,0,'Golf',7,10000000,62757366,72757366,2500000,65257366,10000000,200000,9800000,483457,54973909,55457366,0,55457366,65257366),
 (18,0,'Hotel',8,10000000,64790592,74790592,2500000,67290592,10000000,200000,9800000,2008771,55481821,57490592,0,57490592,67290592),
 (19,0,'India',9,10000000,65016772,75016772,2500000,67516772,10000000,200000,9800000,2041059,55675713,57716772,0,57716772,67516772),
 (20,0,'Juliet',10,10000000,64838988,74838988,2500000,67338988,10000000,200000,9800000,2017979,55521009,57538988,0,57538988,67338988);
UNLOCK TABLES;
/*!40000 ALTER TABLE `team_bs` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`team_metadata`
--

DROP TABLE IF EXISTS `bizlabs`.`team_metadata`;
CREATE TABLE  `bizlabs`.`team_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamMetadat_unq` (`teamName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`team_metadata`
--

/*!40000 ALTER TABLE `team_metadata` DISABLE KEYS */;
LOCK TABLES `team_metadata` WRITE;
INSERT INTO `bizlabs`.`team_metadata` VALUES  (1,'Alpha'),
 (2,'Bravo');
UNLOCK TABLES;
/*!40000 ALTER TABLE `team_metadata` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`team_pnl`
--

DROP TABLE IF EXISTS `bizlabs`.`team_pnl`;
CREATE TABLE  `bizlabs`.`team_pnl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `turnover` int(14) DEFAULT NULL,
  `fixed_cost` int(14) DEFAULT NULL,
  `variable_cost` int(14) DEFAULT NULL,
  `inventory_cost` int(14) DEFAULT NULL,
  `disposal_loss` int(14) DEFAULT NULL,
  `ad_expense` int(14) DEFAULT NULL,
  `sales_force_expense` int(14) DEFAULT NULL,
  `hiring_firing_expense` int(14) DEFAULT NULL,
  `training_expense` int(14) DEFAULT NULL,
  `market_research_expense` int(14) DEFAULT NULL,
  `rnd_expense` int(14) DEFAULT NULL,
  `admin_expense` int(14) DEFAULT NULL,
  `depreciation` int(14) DEFAULT NULL,
  `interest` int(14) DEFAULT NULL,
  `pbt` int(14) DEFAULT NULL,
  `tax` int(14) DEFAULT NULL,
  `pat` int(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_pnl_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`team_pnl`
--

/*!40000 ALTER TABLE `team_pnl` DISABLE KEYS */;
LOCK TABLES `team_pnl` WRITE;
INSERT INTO `bizlabs`.`team_pnl` VALUES  (1,0,'Alpha',1,19745287,3000000,14531713,566820,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-4354246,0,-4354246),
 (2,0,'Bravo',2,22781457,3000000,18781918,98400,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-5099861,0,-5099861),
 (3,0,'Charlie',3,18929949,3000000,14481215,533190,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-5085456,0,-5085456),
 (4,0,'Delta',4,21389495,3000000,16485036,273000,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-4369541,0,-4369541),
 (5,0,'Echo',5,19399088,3000000,15041691,488730,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-5132333,0,-5132333),
 (6,0,'Foxtrot',6,20110934,3000000,14948102,524340,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-4362508,0,-4362508),
 (7,0,'Golf',7,23141192,3000000,19194333,60450,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-5114591,0,-5114591),
 (8,0,'Hotel',8,20091742,3000000,15384041,313380,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-4606679,0,-4606679),
 (9,0,'India',9,22091943,3000000,17255330,248400,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-4412787,0,-4412787),
 (10,0,'Juliet',10,19550133,3000000,14789144,327480,0,2400000,1821000,0,0,505000,0,750000,200000,325000,-4567491,0,-4567491),
 (11,0,'Alpha',1,19745287,3000000,14531713,566820,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-4265746,0,-4265746),
 (12,0,'Bravo',2,22781457,3000000,18781918,98400,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-5011361,0,-5011361),
 (13,0,'Charlie',3,18929949,3000000,14481215,533190,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-4996956,0,-4996956),
 (14,0,'Delta',4,21389495,3000000,16485036,273000,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-4281041,0,-4281041),
 (15,0,'Echo',5,19399088,3000000,15041691,488730,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-5043833,0,-5043833),
 (16,0,'Foxtrot',6,20110934,3000000,14948102,524340,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-4274008,0,-4274008),
 (17,0,'Golf',7,23141192,3000000,19194333,60450,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-5026091,0,-5026091),
 (18,0,'Hotel',8,20091742,3000000,15384041,313380,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-4518179,0,-4518179),
 (19,0,'India',9,22091943,3000000,17255330,248400,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-4324287,0,-4324287),
 (20,0,'Juliet',10,19550133,3000000,14789144,327480,0,2400000,1732500,0,0,505000,0,750000,200000,325000,-4478991,0,-4478991),
 (21,1,'Alpha',1,26070930,3000000,19780388,595782,0,1965000,2436000,640000,580000,1005000,0,750000,575000,354375,-4390615,0,-4390615),
 (22,1,'Bravo',2,25391057,3000000,20713185,683727,0,1990000,1821000,0,170000,0,0,750000,575000,364678,-4506533,0,-4506533),
 (23,1,'Charlie',3,9465516,3000000,7607176,1970760,0,1800000,2221214,540000,340000,505000,0,750000,200000,325000,-8913634,0,-8913634),
 (24,1,'Delta',4,25933651,3000000,19709252,505659,0,2600000,2230000,380000,340000,135000,0,750000,200000,325000,-3521260,0,-3521260),
 (25,1,'Echo',5,5031947,3000000,4000873,2694780,0,2400000,2436000,640000,85000,50000,0,750000,200000,325000,-10824706,0,-10824706),
 (26,1,'Foxtrot',6,33740943,3000000,25839672,977262,0,2000000,1821000,0,0,505000,0,750000,575000,386250,-2113241,0,-2113241),
 (27,1,'Golf',7,19252354,3000000,16262657,522159,0,2000000,1821000,0,170000,1005000,0,750000,200000,325000,-6633462,0,-6633462),
 (28,1,'Hotel',8,40490076,3000000,31360504,-1253538,0,0,1827000,330000,0,315000,0,750000,700000,354375,3436735,859184,2577551),
 (29,1,'India',9,40250547,3000000,31779193,35211,0,2000000,1821000,0,580000,0,0,750000,200000,325000,340143,85036,255107),
 (30,1,'Juliet',10,16318444,3000000,12760626,1967229,0,2000000,1821000,0,0,0,0,750000,200000,325000,-6505411,0,-6505411);
UNLOCK TABLES;
/*!40000 ALTER TABLE `team_pnl` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`team_result`
--

DROP TABLE IF EXISTS `bizlabs`.`team_result`;
CREATE TABLE  `bizlabs`.`team_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `units_sold` int(11) DEFAULT NULL,
  `revenues` int(14) DEFAULT NULL,
  `units_produced` int(12) DEFAULT NULL,
  `cost_of_goods_sold` int(14) DEFAULT NULL,
  `inventory_holding_cost` int(14) DEFAULT NULL,
  `disposal_loss` int(14) DEFAULT NULL,
  `contribution_before_marketing` int(14) DEFAULT NULL,
  `adv_expense` int(14) DEFAULT NULL,
  `adv_research_expense` int(14) DEFAULT NULL,
  `sales_force_expense` int(14) DEFAULT NULL,
  `contributing_after_marketing` int(14) DEFAULT NULL,
  `market_research_expense` int(14) DEFAULT NULL,
  `rnD_expense` int(14) DEFAULT NULL,
  `net_contribution` int(14) DEFAULT NULL,
  `units_in_inventory` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_result_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`team_result`
--

/*!40000 ALTER TABLE `team_result` DISABLE KEYS */;
LOCK TABLES `team_result` WRITE;
INSERT INTO `bizlabs`.`team_result` VALUES  (1,0,'Alpha',1,61106,19745287,80000,14531713,566820,0,4646754,2400000,0,1821000,425754,505000,0,-79246,18894),
 (2,0,'Bravo',2,76720,22781457,80000,18781918,98400,0,3901139,2400000,0,1821000,-319861,505000,0,-824861,3280),
 (3,0,'Charlie',3,82227,18929949,100000,14481215,533190,0,3915544,2400000,0,1821000,-305456,505000,0,-810456,17773),
 (4,0,'Delta',4,60900,21389495,70000,16485036,273000,0,4631459,2400000,0,1821000,410459,505000,0,-94541,9100),
 (5,0,'Echo',5,83709,19399088,100000,15041691,488730,0,3868667,2400000,0,1821000,-352333,505000,0,-857333,16291),
 (6,0,'Foxtrot',6,62522,20110934,80000,14948102,524340,0,4638492,2400000,0,1821000,417492,505000,0,-87508,17478),
 (7,0,'Golf',7,77985,23141192,80000,19194333,60450,0,3886409,2400000,0,1821000,-334591,505000,0,-839591,2015),
 (8,0,'Hotel',8,69554,20091742,80000,15384041,313380,0,4394321,2400000,0,1821000,173321,505000,0,-331679,10446),
 (9,0,'India',9,61720,22091943,70000,17255330,248400,0,4588213,2400000,0,1821000,367213,505000,0,-137787,8280),
 (10,0,'Juliet',10,69084,19550133,80000,14789144,327480,0,4433509,2400000,0,1821000,212509,505000,0,-292491,10916),
 (11,0,'Alpha',1,61106,19745287,80000,14531713,566820,0,4646754,2400000,0,1732500,514254,505000,0,9254,18894),
 (12,0,'Bravo',2,76720,22781457,80000,18781918,98400,0,3901139,2400000,0,1732500,-231361,505000,0,-736361,3280),
 (13,0,'Charlie',3,82227,18929949,100000,14481215,533190,0,3915544,2400000,0,1732500,-216956,505000,0,-721956,17773),
 (14,0,'Delta',4,60900,21389495,70000,16485036,273000,0,4631459,2400000,0,1732500,498959,505000,0,-6041,9100),
 (15,0,'Echo',5,83709,19399088,100000,15041691,488730,0,3868667,2400000,0,1732500,-263833,505000,0,-768833,16291),
 (16,0,'Foxtrot',6,62522,20110934,80000,14948102,524340,0,4638492,2400000,0,1732500,505992,505000,0,992,17478),
 (17,0,'Golf',7,77985,23141192,80000,19194333,60450,0,3886409,2400000,0,1732500,-246091,505000,0,-751091,2015),
 (18,0,'Hotel',8,69554,20091742,80000,15384041,313380,0,4394321,2400000,0,1732500,261821,505000,0,-243179,10446),
 (19,0,'India',9,61720,22091943,70000,17255330,248400,0,4588213,2400000,0,1732500,455713,505000,0,-49287,8280),
 (20,0,'Juliet',10,69084,19550133,80000,14789144,327480,0,4433509,2400000,0,1732500,301009,505000,0,-203991,10916),
 (21,1,'Alpha',1,62840,26070930,62000,19780388,595782,0,5694760,1965000,0,2436000,1293760,1005000,0,288760,18054),
 (22,1,'Bravo',2,76561,25391057,94000,20713185,683727,0,3994145,1990000,0,1821000,183145,0,0,183145,20719),
 (23,1,'Charlie',3,41053,9465516,83000,7607176,1970760,0,-112420,1800000,0,2221214,-4133634,505000,0,-4638634,59720),
 (24,1,'Delta',4,60777,25933651,67000,19709252,505659,0,5718740,2600000,0,2230000,888740,135000,0,753740,15323),
 (25,1,'Echo',5,21631,5031947,87000,4000873,2694780,0,-1663706,2400000,0,2436000,-6499706,50000,0,-6549706,81660),
 (26,1,'Foxtrot',6,87864,33740943,100000,25839672,977262,0,6924009,2000000,0,1821000,3103009,505000,0,2598009,29614),
 (27,1,'Golf',7,66192,19252354,80000,16262657,522159,0,2467538,2000000,0,1821000,-1353462,1005000,0,-2358462,15823),
 (28,1,'Hotel',8,148432,40490076,100000,31360504,-1253538,0,10383110,0,0,1827000,8556110,315000,0,8241110,-37986),
 (29,1,'India',9,107213,40250547,100000,31779193,35211,0,8436143,2000000,0,1821000,4615143,0,0,4615143,1067),
 (30,1,'Juliet',10,51303,16318444,100000,12760626,1967229,0,1590589,2000000,0,1821000,-2230411,0,0,-2230411,59613);
UNLOCK TABLES;
/*!40000 ALTER TABLE `team_result` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`teams`
--

DROP TABLE IF EXISTS `bizlabs`.`teams`;
CREATE TABLE  `bizlabs`.`teams` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEAMNAME` varchar(255) NOT NULL,
  `TEAMUSERNAME` varchar(255) NOT NULL,
  `TEAMPASSWORD` varchar(255) NOT NULL,
  `currentTeamPeriod` int(11) NOT NULL,
  `budget` int(11) NOT NULL,
  `is_transitioning` char(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TEAMUSERNAME_UNQ` (`TEAMUSERNAME`),
  UNIQUE KEY `TEAMNAME_UNQ` (`TEAMNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`teams`
--

/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
LOCK TABLES `teams` WRITE;
INSERT INTO `bizlabs`.`teams` VALUES  (1,'Alpha','Alpha','435',2,5000000,'N'),
 (2,'Bravo','Bravo','732',2,5000000,'N'),
 (3,'Charlie','Charlie','913',2,5000000,'N'),
 (4,'Delta','Delta','287',2,5000000,'N'),
 (5,'Echo','Echo','504',2,5000000,'N'),
 (6,'Foxtrot','Foxtrot','143',2,5000000,'N'),
 (7,'Golf','Golf','827',2,5000000,'N'),
 (8,'Hotel','Hotel','693',2,9081507,'N'),
 (9,'India','India','946',2,5634241,'N'),
 (10,'Juliet','Juliet','315',2,5000000,'N');
UNLOCK TABLES;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;


--
-- Definition of table `bizlabs`.`user_table`
--

DROP TABLE IF EXISTS `bizlabs`.`user_table`;
CREATE TABLE  `bizlabs`.`user_table` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `USERTYPEID` int(11) NOT NULL,
  PRIMARY KEY (`USERID`),
  UNIQUE KEY `USERNAME_UNQ` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bizlabs`.`user_table`
--

/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
LOCK TABLES `user_table` WRITE;
INSERT INTO `bizlabs`.`user_table` VALUES  (1,'admin','admin',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
