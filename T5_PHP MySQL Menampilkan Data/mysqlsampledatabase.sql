/*
*********************************************************************
http://www.mysqltutorial.org
*********************************************************************
Name: MySQL Sample Database classicmodels
Link: http://www.mysqltutorial.org/mysql-sample-database.aspx
Version 3.1
+ changed data type from DOUBLE to DECIMAL for amount columns
Version 3.0
+ changed DATETIME to DATE for some colunmns
Version 2.0
+ changed table type from MyISAM to InnoDB
+ added foreign keys for all tables 
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`classicmodels` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `classicmodels`;

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `contactLastName` varchar(50) NOT NULL,
  `contactFirstName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `salesRepEmployeeNumber` int(11) DEFAULT NULL,
  `creditLimit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`customerNumber`),
  KEY `salesRepEmployeeNumber` (`salesRepEmployeeNumber`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customers` */

insert  into `customers`(`customerNumber`,`customerName`,`contactLastName`,`contactFirstName`,`phone`,`addressLine1`,`addressLine2`,`city`,`state`,`postalCode`,`country`,`salesRepEmployeeNumber`,`creditLimit`) values 

(103,'Atelier graphique','Schmitt','Carine ','40.32.2555','54, rue Royale',NULL,'Nantes',NULL,'44000','France',1370,'21000.00'),

(112,'Signal Gift Stores','King','Jean','7025551838','8489 Strong St.',NULL,'Las Vegas','NV','83030','USA',1166,'71800.00'),

(114,'Australian Collectors, Co.','Ferguson','Peter','03 9520 4555','636 St Kilda Road','Level 3','Melbourne','Victoria','3004','Australia',1611,'117300.00'),

(119,'La Rochelle Gifts','Labrune','Janine ','40.67.8555','67, rue des Cinquante Otages',NULL,'Nantes',NULL,'44000','France',1370,'118200.00'),

(121,'Baane Mini Imports','Bergulfsen','Jonas ','07-98 9555','Erling Skakkes gate 78',NULL,'Stavern',NULL,'4110','Norway',1504,'81700.00'),

(124,'Mini Gifts Distributors Ltd.','Nelson','Susan','4155551450','5677 Strong St.',NULL,'San Rafael','CA','97562','USA',1165,'210500.00'),

(125,'Havel & Zbyszek Co','Piestrzeniewicz','Zbyszek ','(26) 642-7555','ul. Filtrowa 68',NULL,'Warszawa',NULL,'01-012','Poland',NULL,'0.00'),

(128,'Blauer See Auto, Co.','Keitel','Roland','+49 69 66 90 2555','Lyonerstr. 34',NULL,'Frankfurt',NULL,'60528','Germany',1504,'59700.00'),

(129,'Mini Wheels Co.','Murphy','Julie','6505555787','5557 North Pendale Street',NULL,'San Francisco','CA','94217','USA',1165,'64600.00'),

(131,'Land of Toys Inc.','Lee','Kwai','2125557818','897 Long Airport Avenue',NULL,'NYC','NY','10022','USA',1323,'114900.00'),

(141,'Euro+ Shopping Channel','Freyre','Diego ','(91) 555 94 44','C/ Moralzarzal, 86',NULL,'Madrid',NULL,'28034','Spain',1370,'227600.00'),

(144,'Volvo Model Replicas, Co','Berglund','Christina ','0921-12 3555','Berguvsvägen  8',NULL,'Luleå',NULL,'S-958 22','Sweden',1504,'53100.00'),

(145,'Danish Wholesale Imports','Petersen','Jytte ','31 12 3555','Vinbæltet 34',NULL,'Kobenhavn',NULL,'1734','Denmark',1401,'83400.00'),

(146,'Saveley & Henriot, Co.','Saveley','Mary ','78.32.5555','2, rue du Commerce',NULL,'Lyon',NULL,'69004','France',1337,'123900.00'),

(148,'Dragon Souveniers, Ltd.','Natividad','Eric','+65 221 7555','Bronz Sok.','Bronz Apt. 3/6 Tesvikiye','Singapore',NULL,'079903','Singapore',1621,'103800.00'),

(151,'Muscle Machine Inc','Young','Jeff','2125557413','4092 Furth Circle','Suite 400','NYC','NY','10022','USA',1286,'138500.00'),

(157,'Diecast Classics Inc.','Leong','Kelvin','2155551555','7586 Pompton St.',NULL,'Allentown','PA','70267','USA',1216,'100600.00'),

(161,'Technics Stores Inc.','Hashimoto','Juri','6505556809','9408 Furth Circle',NULL,'Burlingame','CA','94217','USA',1165,'84600.00'),

(166,'Handji Gifts& Co','Victorino','Wendy','+65 224 1555','106 Linden Road Sandown','2nd Floor','Singapore',NULL,'069045','Singapore',1612,'97900.00'),

(167,'Herkku Gifts','Oeztan','Veysel','+47 2267 3215','Brehmen St. 121','PR 334 Sentrum','Bergen',NULL,'N 5804','Norway  ',1504,'96800.00'),

(168,'American Souvenirs Inc','Franco','Keith','2035557845','149 Spinnaker Dr.','Suite 101','New Haven','CT','97823','USA',1286,'0.00'),

(169,'Porto Imports Co.','de Castro','Isabel ','(1) 356-5555','Estrada da saúde n. 58',NULL,'Lisboa',NULL,'1756','Portugal',NULL,'0.00'),

(171,'Daedalus Designs Imports','Rancé','Martine ','20.16.1555','184, chaussée de Tournai',NULL,'Lille',NULL,'59000','France',1370,'82900.00'),

(172,'La Corne D\'abondance, Co.','Bertrand','Marie','(1) 42.34.2555','265, boulevard Charonne',NULL,'Paris',NULL,'75012','France',1337,'84300.00'),

(173,'Cambridge Collectables Co.','Tseng','Jerry','6175555555','4658 Baden Av.',NULL,'Cambridge','MA','51247','USA',1188,'43400.00'),

(175,'Gift Depot Inc.','King','Julie','2035552570','25593 South Bay Ln.',NULL,'Bridgewater','CT','97562','USA',1323,'84300.00'),

(177,'Osaka Souveniers Co.','Kentary','Mory','+81 06 6342 5555','1-6-20 Dojima',NULL,'Kita-ku','Osaka',' 530-0003','Japan',1621,'81200.00'),

(181,'Vitachrome Inc.','Frick','Michael','2125551500','2678 Kingston Rd.','Suite 101','NYC','NY','10022','USA',1286,'76400.00'),

(186,'Toys of Finland, Co.','Karttunen','Matti','90-224 8555','Keskuskatu 45',NULL,'Helsinki',NULL,'21240','Finland',1501,'96500.00'),

(187,'AV Stores, Co.','Ashworth','Rachel','(171) 555-1555','Fauntleroy Circus',NULL,'Manchester',NULL,'EC2 5NT','UK',1501,'136800.00'),

(189,'Clover Collections, Co.','Cassidy','Dean','+353 1862 1555','25 Maiden Lane','Floor No. 4','Dublin',NULL,'2','Ireland',1504,'69400.00'),

(198,'Auto-Moto Classics Inc.','Taylor','Leslie','6175558428','16780 Pompton St.',NULL,'Brickhaven','MA','58339','USA',1216,'23000.00'),

(201,'UK Collectables, Ltd.','Devon','Elizabeth','(171) 555-2282','12, Berkeley Gardens Blvd',NULL,'Liverpool',NULL,'WX1 6LT','UK',1501,'92700.00'),

(202,'Canadian Gift Exchange Network','Tamuri','Yoshi ','(604) 555-3392','1900 Oak St.',NULL,'Vancouver','BC','V3F 2K1','Canada',1323,'90300.00'),

(204,'Online Mini Collectables','Barajas','Miguel','6175557555','7635 Spinnaker Dr.',NULL,'Brickhaven','MA','58339','USA',1188,'68700.00'),

(205,'Toys4GrownUps.com','Young','Julie','6265557265','78934 Hillside Dr.',NULL,'Pasadena','CA','90003','USA',1166,'90700.00'),

(206,'Asian Shopping Network, Co','Walker','Brydey','+612 9411 1555','Suntec Tower Three','8 Temasek','Singapore',NULL,'038988','Singapore',NULL,'0.00'),

(209,'Mini Caravy','Citeaux','Frédérique ','88.60.1555','24, place Kléber',NULL,'Strasbourg',NULL,'67000','France',1370,'53800.00'),

(211,'King Kong Collectables, Co.','Gao','Mike','+852 2251 1555','Bank of China Tower','1 Garden Road','Central Hong Kong',NULL,NULL,'Hong Kong',1621,'58600.00'),

(216,'Enaco Distributors','Saavedra','Eduardo ','(93) 203 4555','Rambla de Cataluña, 23',NULL,'Barcelona',NULL,'08022','Spain',1702,'60300.00'),

(219,'Boards & Toys Co.','Young','Mary','3105552373','4097 Douglas Av.',NULL,'Glendale','CA','92561','USA',1166,'11000.00'),

(223,'Natürlich Autos','Kloss','Horst ','0372-555188','Taucherstraße 10',NULL,'Cunewalde',NULL,'01307','Germany',NULL,'0.00'),

(227,'Heintze Collectables','Ibsen','Palle','86 21 3555','Smagsloget 45',NULL,'Århus',NULL,'8200','Denmark',1401,'120800.00'),

(233,'Québec Home Shopping Network','Fresnière','Jean ','(514) 555-8054','43 rue St. Laurent',NULL,'Montréal','Québec','H1J 1C3','Canada',1286,'48700.00'),

(237,'ANG Resellers','Camino','Alejandra ','(91) 745 6555','Gran Vía, 1',NULL,'Madrid',NULL,'28001','Spain',NULL,'0.00'),

(239,'Collectable Mini Designs Co.','Thompson','Valarie','7605558146','361 Furth Circle',NULL,'San Diego','CA','91217','USA',1166,'105000.00'),

(240,'giftsbymail.co.uk','Bennett','Helen ','(198) 555-8888','Garden House','Crowther Way 23','Cowes','Isle of Wight','PO31 7PJ','UK',1501,'93900.00'),

(242,'Alpha Cognac','Roulet','Annette ','61.77.6555','1 rue Alsace-Lorraine',NULL,'Toulouse',NULL,'31000','France',1370,'61100.00'),

(247,'Messner Shopping Network','Messner','Renate ','069-0555984','Magazinweg 7',NULL,'Frankfurt',NULL,'60528','Germany',NULL,'0.00'),

(249,'Amica Models & Co.','Accorti','Paolo ','011-4988555','Via Monte Bianco 34',NULL,'Torino',NULL,'10100','Italy',1401,'113000.00'),

(250,'Lyon Souveniers','Da Silva','Daniel','+33 1 46 62 7555','27 rue du Colonel Pierre Avia',NULL,'Paris',NULL,'75508','France',1337,'68100.00'),

(256,'Auto Associés & Cie.','Tonini','Daniel ','30.59.8555','67, avenue de l\'Europe',NULL,'Versailles',NULL,'78000','France',1370,'77900.00'),

(259,'Toms Spezialitäten, Ltd','Pfalzheim','Henriette ','0221-5554327','Mehrheimerstr. 369',NULL,'Köln',NULL,'50739','Germany',1504,'120400.00'),

(260,'Royal Canadian Collectables, Ltd.','Lincoln','Elizabeth ','(604) 555-4555','23 Tsawassen Blvd.',NULL,'Tsawassen','BC','T2F 8M4','Canada',1323,'89600.00'),

(273,'Franken Gifts, Co','Franken','Peter ','089-0877555','Berliner Platz 43',NULL,'München',NULL,'80805','Germany',NULL,'0.00'),

(276,'Anna\'s Decorations, Ltd','O\'Hara','Anna','02 9936 8555','201 Miller Street','Level 15','North Sydney','NSW','2060','Australia',1611,'107800.00'),

(278,'Rovelli Gifts','Rovelli','Giovanni ','035-640555','Via Ludovico il Moro 22',NULL,'Bergamo',NULL,'24100','Italy',1401,'119600.00'),

(282,'Souveniers And Things Co.','Huxley','Adrian','+61 2 9495 8555','Monitor Money Building','815 Pacific Hwy','Chatswood','NSW','2067','Australia',1611,'93300.00'),

(286,'Marta\'s Replicas Co.','Hernandez','Marta','6175558555','39323 Spinnaker Dr.',NULL,'Cambridge','MA','51247','USA',1216,'123700.00'),

(293,'BG&E Collectables','Harrison','Ed','+41 26 425 50 01','Rte des Arsenaux 41 ',NULL,'Fribourg',NULL,'1700','Switzerland',NULL,'0.00'),

(298,'Vida Sport, Ltd','Holz','Mihael','0897-034555','Grenzacherweg 237',NULL,'Genève',NULL,'1203','Switzerland',1702,'141300.00'),

(299,'Norway Gifts By Mail, Co.','Klaeboe','Jan','+47 2212 1555','Drammensveien 126A','PB 211 Sentrum','Oslo',NULL,'N 0106','Norway  ',1504,'95100.00'),

(303,'Schuyler Imports','Schuyler','Bradley','+31 20 491 9555','Kingsfordweg 151',NULL,'Amsterdam',NULL,'1043 GR','Netherlands',NULL,'0.00'),

(307,'Der Hund Imports','Andersen','Mel','030-0074555','Obere Str. 57',NULL,'Berlin',NULL,'12209','Germany',NULL,'0.00'),

(311,'Oulu Toy Supplies, Inc.','Koskitalo','Pirkko','981-443655','Torikatu 38',NULL,'Oulu',NULL,'90110','Finland',1501,'90500.00'),

(314,'Petit Auto','Dewey','Catherine ','(02) 5554 67','Rue Joseph-Bens 532',NULL,'Bruxelles',NULL,'B-1180','Belgium',1401,'79900.00'),

(319,'Mini Classics','Frick','Steve','9145554562','3758 North Pendale Street',NULL,'White Plains','NY','24067','USA',1323,'102700.00'),

(320,'Mini Creations Ltd.','Huang','Wing','5085559555','4575 Hillside Dr.',NULL,'New Bedford','MA','50553','USA',1188,'94500.00'),

(321,'Corporate Gift Ideas Co.','Brown','Julie','6505551386','7734 Strong St.',NULL,'San Francisco','CA','94217','USA',1165,'105000.00'),

(323,'Down Under Souveniers, Inc','Graham','Mike','+64 9 312 5555','162-164 Grafton Road','Level 2','Auckland  ',NULL,NULL,'New Zealand',1612,'88000.00'),

(324,'Stylish Desk Decors, Co.','Brown','Ann ','(171) 555-0297','35 King George',NULL,'London',NULL,'WX3 6FW','UK',1501,'77000.00'),

(328,'Tekni Collectables Inc.','Brown','William','2015559350','7476 Moss Rd.',NULL,'Newark','NJ','94019','USA',1323,'43000.00'),

(333,'Australian Gift Network, Co','Calaghan','Ben','61-7-3844-6555','31 Duncan St. West End',NULL,'South Brisbane','Queensland','4101','Australia',1611,'51600.00'),

(334,'Suominen Souveniers','Suominen','Kalle','+358 9 8045 555','Software Engineering Center','SEC Oy','Espoo',NULL,'FIN-02271','Finland',1501,'98800.00'),

(335,'Cramer Spezialitäten, Ltd','Cramer','Philip ','0555-09555','Maubelstr. 90',NULL,'Brandenburg',NULL,'14776','Germany',NULL,'0.00'),

(339,'Classic Gift Ideas, Inc','Cervantes','Francisca','2155554695','782 First Street',NULL,'Philadelphia','PA','71270','USA',1188,'81100.00'),

(344,'CAF Imports','Fernandez','Jesus','+34 913 728 555','Merchants House','27-30 Merchant\'s Quay','Madrid',NULL,'28023','Spain',1702,'59600.00'),

(347,'Men \'R\' US Retailers, Ltd.','Chandler','Brian','2155554369','6047 Douglas Av.',NULL,'Los Angeles','CA','91003','USA',1166,'57700.00'),

(348,'Asian Treasures, Inc.','McKenna','Patricia ','2967 555','8 Johnstown Road',NULL,'Cork','Co. Cork',NULL,'Ireland',NULL,'0.00'),

(350,'Marseille Mini Autos','Lebihan','Laurence ','91.24.4555','12, rue des Bouchers',NULL,'Marseille',NULL,'13008','France',1337,'65000.00'),

(353,'Reims Collectables','Henriot','Paul ','26.47.1555','59 rue de l\'Abbaye',NULL,'Reims',NULL,'51100','France',1337,'81100.00'),

(356,'SAR Distributors, Co','Kuger','Armand','+27 21 550 3555','1250 Pretorius Street',NULL,'Hatfield','Pretoria','0028','South Africa',NULL,'0.00'),

(357,'GiftsForHim.com','MacKinlay','Wales','64-9-3763555','199 Great North Road',NULL,'Auckland',NULL,NULL,'New Zealand',1612,'77700.00'),

(361,'Kommission Auto','Josephs','Karin','0251-555259','Luisenstr. 48',NULL,'Münster',NULL,'44087','Germany',NULL,'0.00'),

(362,'Gifts4AllAges.com','Yoshido','Juri','6175559555','8616 Spinnaker Dr.',NULL,'Boston','MA','51003','USA',1216,'41900.00'),

(363,'Online Diecast Creations Co.','Young','Dorothy','6035558647','2304 Long Airport Avenue',NULL,'Nashua','NH','62005','USA',1216,'114200.00'),

(369,'Lisboa Souveniers, Inc','Rodriguez','Lino ','(1) 354-2555','Jardim das rosas n. 32',NULL,'Lisboa',NULL,'1675','Portugal',NULL,'0.00'),

(376,'Precious Collectables','Urs','Braun','0452-076555','Hauptstr. 29',NULL,'Bern',NULL,'3012','Switzerland',1702,'0.00'),

(379,'Collectables For Less Inc.','Nelson','Allen','6175558555','7825 Douglas Av.',NULL,'Brickhaven','MA','58339','USA',1188,'70700.00'),

(381,'Royale Belge','Cartrain','Pascale ','(071) 23 67 2555','Boulevard Tirou, 255',NULL,'Charleroi',NULL,'B-6000','Belgium',1401,'23500.00'),

(382,'Salzburg Collectables','Pipps','Georg ','6562-9555','Geislweg 14',NULL,'Salzburg',NULL,'5020','Austria',1401,'71700.00'),

(385,'Cruz & Sons Co.','Cruz','Arnold','+63 2 555 3587','15 McCallum Street','NatWest Center #13-03','Makati City',NULL,'1227 MM','Philippines',1621,'81500.00'),

(386,'L\'ordine Souveniers','Moroni','Maurizio ','0522-556555','Strada Provinciale 124',NULL,'Reggio Emilia',NULL,'42100','Italy',1401,'121400.00'),

(398,'Tokyo Collectables, Ltd','Shimamura','Akiko','+81 3 3584 0555','2-2-8 Roppongi',NULL,'Minato-ku','Tokyo','106-0032','Japan',1621,'94400.00'),

(406,'Auto Canal+ Petit','Perrier','Dominique','(1) 47.55.6555','25, rue Lauriston',NULL,'Paris',NULL,'75016','France',1337,'95000.00'),

(409,'Stuttgart Collectable Exchange','Müller','Rita ','0711-555361','Adenauerallee 900',NULL,'Stuttgart',NULL,'70563','Germany',NULL,'0.00'),

(412,'Extreme Desk Decorations, Ltd','McRoy','Sarah','04 499 9555','101 Lambton Quay','Level 11','Wellington',NULL,NULL,'New Zealand',1612,'86800.00'),

(415,'Bavarian Collectables Imports, Co.','Donnermeyer','Michael',' +49 89 61 08 9555','Hansastr. 15',NULL,'Munich',NULL,'80686','Germany',1504,'77000.00'),

(424,'Classic Legends Inc.','Hernandez','Maria','2125558493','5905 Pompton St.','Suite 750','NYC','NY','10022','USA',1286,'67500.00'),

(443,'Feuer Online Stores, Inc','Feuer','Alexander ','0342-555176','Heerstr. 22',NULL,'Leipzig',NULL,'04179','Germany',NULL,'0.00'),

(447,'Gift Ideas Corp.','Lewis','Dan','2035554407','2440 Pompton St.',NULL,'Glendale','CT','97561','USA',1323,'49700.00'),

(448,'Scandinavian Gift Ideas','Larsson','Martha','0695-34 6555','Åkergatan 24',NULL,'Bräcke',NULL,'S-844 67','Sweden',1504,'116400.00'),

(450,'The Sharp Gifts Warehouse','Frick','Sue','4085553659','3086 Ingle Ln.',NULL,'San Jose','CA','94217','USA',1165,'77600.00'),

(452,'Mini Auto Werke','Mendel','Roland ','7675-3555','Kirchgasse 6',NULL,'Graz',NULL,'8010','Austria',1401,'45300.00'),

(455,'Super Scale Inc.','Murphy','Leslie','2035559545','567 North Pendale Street',NULL,'New Haven','CT','97823','USA',1286,'95400.00'),

(456,'Microscale Inc.','Choi','Yu','2125551957','5290 North Pendale Street','Suite 200','NYC','NY','10022','USA',1286,'39800.00'),

(458,'Corrida Auto Replicas, Ltd','Sommer','Martín ','(91) 555 22 82','C/ Araquil, 67',NULL,'Madrid',NULL,'28023','Spain',1702,'104600.00'),

(459,'Warburg Exchange','Ottlieb','Sven ','0241-039123','Walserweg 21',NULL,'Aachen',NULL,'52066','Germany',NULL,'0.00'),

(462,'FunGiftIdeas.com','Benitez','Violeta','5085552555','1785 First Street',NULL,'New Bedford','MA','50553','USA',1216,'85800.00'),

(465,'Anton Designs, Ltd.','Anton','Carmen','+34 913 728555','c/ Gobelas, 19-1 Urb. La Florida',NULL,'Madrid',NULL,'28023','Spain',NULL,'0.00'),

(471,'Australian Collectables, Ltd','Clenahan','Sean','61-9-3844-6555','7 Allen Street',NULL,'Glen Waverly','Victoria','3150','Australia',1611,'60300.00'),

(473,'Frau da Collezione','Ricotti','Franco','+39 022515555','20093 Cologno Monzese','Alessandro Volta 16','Milan',NULL,NULL,'Italy',1401,'34800.00'),

(475,'West Coast Collectables Co.','Thompson','Steve','3105553722','3675 Furth Circle',NULL,'Burbank','CA','94019','USA',1166,'55400.00'),

(477,'Mit Vergnügen & Co.','Moos','Hanna ','0621-08555','Forsterstr. 57',NULL,'Mannheim',NULL,'68306','Germany',NULL,'0.00'),

(480,'Kremlin Collectables, Co.','Semenov','Alexander ','+7 812 293 0521','2 Pobedy Square',NULL,'Saint Petersburg',NULL,'196143','Russia',NULL,'0.00'),

(481,'Raanan Stores, Inc','Altagar,G M','Raanan','+ 972 9 959 8555','3 Hagalim Blv.',NULL,'Herzlia',NULL,'47625','Israel',NULL,'0.00'),

(484,'Iberia Gift Imports, Corp.','Roel','José Pedro ','(95) 555 82 82','C/ Romero, 33',NULL,'Sevilla',NULL,'41101','Spain',1702,'65700.00'),

(486,'Motor Mint Distributors Inc.','Salazar','Rosa','2155559857','11328 Douglas Av.',NULL,'Philadelphia','PA','71270','USA',1323,'72600.00'),

(487,'Signal Collectibles Ltd.','Taylor','Sue','4155554312','2793 Furth Circle',NULL,'Brisbane','CA','94217','USA',1165,'60300.00'),

(489,'Double Decker Gift Stores, Ltd','Smith','Thomas ','(171) 555-7555','120 Hanover Sq.',NULL,'London',NULL,'WA1 1DP','UK',1501,'43300.00'),

(495,'Diecast Collectables','Franco','Valarie','6175552555','6251 Ingle Ln.',NULL,'Boston','MA','51003','USA',1188,'85100.00'),

(496,'Kelly\'s Gift Shop','Snowden','Tony','+64 9 5555500','Arenales 1938 3\'A\'',NULL,'Auckland  ',NULL,NULL,'New Zealand',1612,'110000.00');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeNumber`),
  KEY `reportsTo` (`reportsTo`),
  KEY `officeCode` (`officeCode`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

insert  into `employees`(`employeeNumber`,`lastName`,`firstName`,`extension`,`email`,`officeCode`,`reportsTo`,`jobTitle`) values 

(1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1',NULL,'President'),

(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1',1002,'VP Sales'),

(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1',1002,'VP Marketing'),

(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6',1056,'Sales Manager (APAC)'),

(1102,'Bondur','Gerard','x5408','gbondur@classicmodelcars.com','4',1056,'Sale Manager (EMEA)'),

(1143,'Bow','Anthony','x5428','abow@classicmodelcars.com','1',1056,'Sales Manager (NA)'),

(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1',1143,'Sales Rep'),

(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1',1143,'Sales Rep'),

(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2',1143,'Sales Rep'),

(1216,'Patterson','Steve','x4334','spatterson@classicmodelcars.com','2',1143,'Sales Rep'),

(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3',1143,'Sales Rep'),

(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3',1143,'Sales Rep'),

(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4',1102,'Sales Rep'),

(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4',1102,'Sales Rep'),

(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4',1102,'Sales Rep'),

(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7',1102,'Sales Rep'),

(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7',1102,'Sales Rep'),

(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6',1088,'Sales Rep'),

(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6',1088,'Sales Rep'),

(1619,'King','Tom','x103','tking@classicmodelcars.com','6',1088,'Sales Rep'),

(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5',1056,'Sales Rep'),

(1625,'Kato','Yoshimi','x102','ykato@classicmodelcars.com','5',1621,'Sales Rep'),

(1702,'Gerard','Martin','x2312','mgerard@classicmodelcars.com','4',1102,'Sales Rep');

/*Table structure for table `offices` */

DROP TABLE IF EXISTS `offices`;

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL,
  PRIMARY KEY (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `offices` */

insert  into `offices`(`officeCode`,`city`,`phone`,`addressLine1`,`addressLine2`,`state`,`country`,`postalCode`,`territory`) values 

('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),

('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),

('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),

('4','Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA'),

('5','Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),

('6','Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),

('7','London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');

/*Table structure for table `orderdetails` */

DROP TABLE IF EXISTS `orderdetails`;

CREATE TABLE `orderdetails` (
  `orderNumber` int(11) NOT NULL,
  `productCode` varchar(15) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `priceEach` decimal(10,2) NOT NULL,
  `orderLineNumber` smallint(6) NOT NULL,
  PRIMARY KEY (`orderNumber`,`productCode`),
  KEY `productCode` (`productCode`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orderdetails` */

insert  into `orderdetails`(`orderNumber`,`productCode`,`quantityOrdered`,`priceEach`,`orderLineNumber`) values 

(10100,'S18_1749',30,'136.00',3),

(10100,'S18_2248',50,'55.09',2),

(10100,'S18_4409',22,'75.46',4),

(10100,'S24_3969',49,'35.29',1),

(10101,'S18_2325',25,'108.06',4),

(10101,'S18_2795',26,'167.06',1),

(10101,'S24_1937',45,'32.53',3),

(10101,'S24_2022',46,'44.35',2),

(10102,'S18_1342',39,'95.55',2),

(10102,'S18_1367',41,'43.13',1),

(10103,'S10_1949',26,'214.30',11),

(10103,'S10_4962',42,'119.67',4),

(10103,'S12_1666',27,'121.64',8),

(10103,'S18_1097',35,'94.50',10),

(10103,'S18_2432',22,'58.34',2),

(10103,'S18_2949',27,'92.19',12),

(10103,'S18_2957',35,'61.84',14),

(10103,'S18_3136',25,'86.92',13),

(10103,'S18_3320',46,'86.31',16),

(10103,'S18_4600',36,'98.07',5),

(10103,'S18_4668',41,'40.75',9),

(10103,'S24_2300',36,'107.34',1),

(10103,'S24_4258',25,'88.62',15),

(10103,'S32_1268',31,'92.46',3),

(10103,'S32_3522',45,'63.35',7),

(10103,'S700_2824',42,'94.07',6),

(10104,'S12_3148',34,'131.44',1),

(10104,'S12_4473',41,'111.39',9),

(10104,'S18_2238',24,'135.90',8),

(10104,'S18_2319',29,'122.73',12),

(10104,'S18_3232',23,'165.95',13),

(10104,'S18_4027',38,'119.20',3),

(10104,'S24_1444',35,'52.02',6),

(10104,'S24_2840',44,'30.41',10),

(10104,'S24_4048',26,'106.45',5),

(10104,'S32_2509',35,'51.95',11),

(10104,'S32_3207',49,'56.55',4),

(10104,'S50_1392',33,'114.59',7),

(10104,'S50_1514',32,'53.31',2),

(10105,'S10_4757',50,'127.84',2),

(10105,'S12_1108',41,'205.72',15),

(10105,'S12_3891',29,'141.88',14),

(10105,'S18_3140',22,'136.59',11),

(10105,'S18_3259',38,'87.73',13),

(10105,'S18_4522',41,'75.48',10),

(10105,'S24_2011',43,'117.97',9),

(10105,'S24_3151',44,'73.46',4),

(10105,'S24_3816',50,'75.47',1),

(10105,'S700_1138',41,'54.00',5),

(10105,'S700_1938',29,'86.61',12),

(10105,'S700_2610',31,'60.72',3),

(10105,'S700_3505',39,'92.16',6),

(10105,'S700_3962',22,'99.31',7),

(10105,'S72_3212',25,'44.77',8),

(10106,'S18_1662',36,'134.04',12),

(10106,'S18_2581',34,'81.10',2),

(10106,'S18_3029',41,'80.86',18),

(10106,'S18_3856',41,'94.22',17),

(10106,'S24_1785',28,'107.23',4),

(10106,'S24_2841',49,'65.77',13),

(10106,'S24_3420',31,'55.89',14),

(10106,'S24_3949',50,'55.96',11),

(10106,'S24_4278',26,'71.00',3),

(10106,'S32_4289',33,'65.35',5),

(10106,'S50_1341',39,'35.78',6),

(10106,'S700_1691',31,'91.34',7),

(10106,'S700_2047',30,'85.09',16),

(10106,'S700_2466',34,'99.72',9),

(10106,'S700_2834',32,'113.90',1),

(10106,'S700_3167',44,'76.00',8),

(10106,'S700_4002',48,'70.33',10),

(10106,'S72_1253',48,'43.70',15),

(10107,'S10_1678',30,'81.35',2),

(10107,'S10_2016',39,'105.86',5),

(10107,'S10_4698',27,'172.36',4),

(10107,'S12_2823',21,'122.00',1),

(10107,'S18_2625',29,'52.70',6),

(10107,'S24_1578',25,'96.92',3),

(10107,'S24_2000',38,'73.12',7),

(10107,'S32_1374',20,'88.90',8),

(10108,'S12_1099',33,'165.38',6),

(10108,'S12_3380',45,'96.30',4),

(10108,'S12_3990',39,'75.81',7),

(10108,'S12_4675',36,'107.10',3),

(10108,'S18_1889',38,'67.76',2),

(10108,'S18_3278',26,'73.17',9),

(10108,'S18_3482',29,'132.29',8),

(10108,'S18_3782',43,'52.84',12),

(10108,'S18_4721',44,'139.87',11),

(10108,'S24_2360',35,'64.41',15),

(10108,'S24_3371',30,'60.01',5),

(10108,'S24_3856',40,'132.00',1),

(10108,'S24_4620',31,'67.10',10),

(10108,'S32_2206',27,'36.21',13),

(10108,'S32_4485',31,'87.76',16),

(10108,'S50_4713',34,'74.85',14),

(10109,'S18_1129',26,'117.48',4),

(10109,'S18_1984',38,'137.98',3),

(10109,'S18_2870',26,'126.72',1),

(10109,'S18_3232',46,'160.87',5),

(10109,'S18_3685',47,'125.74',2),

(10109,'S24_2972',29,'32.10',6),

(10110,'S18_1589',37,'118.22',16),

(10110,'S18_1749',42,'153.00',7),

(10110,'S18_2248',32,'51.46',6),

(10110,'S18_2325',33,'115.69',4),

(10110,'S18_2795',31,'163.69',1),

(10110,'S18_4409',28,'81.91',8),

(10110,'S18_4933',42,'62.00',9),

(10110,'S24_1046',36,'72.02',13),

(10110,'S24_1628',29,'43.27',15),

(10110,'S24_1937',20,'28.88',3),

(10110,'S24_2022',39,'40.77',2),

(10110,'S24_2766',43,'82.69',11),

(10110,'S24_2887',46,'112.74',10),

(10110,'S24_3191',27,'80.47',12),

(10110,'S24_3432',37,'96.37',14),

(10110,'S24_3969',48,'35.29',5),

(10111,'S18_1342',33,'87.33',6),

(10111,'S18_1367',48,'48.52',5),

(10111,'S18_2957',28,'53.09',2),

(10111,'S18_3136',43,'94.25',1),

(10111,'S18_3320',39,'91.27',4),

(10111,'S24_4258',26,'85.70',3),

(10112,'S10_1949',29,'197.16',1),

(10112,'S18_2949',23,'85.10',2),

(10113,'S12_1666',21,'121.64',2),

(10113,'S18_1097',49,'101.50',4),

(10113,'S18_4668',50,'43.27',3),

(10113,'S32_3522',23,'58.82',1),

(10114,'S10_4962',31,'128.53',8),

(10114,'S18_2319',39,'106.78',3),

(10114,'S18_2432',45,'53.48',6),

(10114,'S18_3232',48,'169.34',4),

(10114,'S18_4600',41,'105.34',9),

(10114,'S24_2300',21,'102.23',5),

(10114,'S24_2840',24,'28.64',1),

(10114,'S32_1268',32,'88.61',7),

(10114,'S32_2509',28,'43.83',2),

(10114,'S700_2824',42,'82.94',10),

(10115,'S12_4473',46,'111.39',5),

(10115,'S18_2238',46,'140.81',4),

(10115,'S24_1444',47,'56.64',2),

(10115,'S24_4048',44,'106.45',1),

(10115,'S50_1392',27,'100.70',3),

(10116,'S32_3207',27,'60.28',1),

(10117,'S12_1108',33,'195.33',9),

(10117,'S12_3148',43,'148.06',10),

(10117,'S12_3891',39,'173.02',8),

(10117,'S18_3140',26,'121.57',5),

(10117,'S18_3259',21,'81.68',7),

(10117,'S18_4027',22,'122.08',12),

(10117,'S18_4522',23,'73.73',4),

(10117,'S24_2011',41,'119.20',3),

(10117,'S50_1514',21,'55.65',11),

(10117,'S700_1938',38,'75.35',6),

(10117,'S700_3962',45,'89.38',1),

(10117,'S72_3212',50,'52.42',2),

(10118,'S700_3505',36,'86.15',1),

(10119,'S10_4757',46,'112.88',11),

(10119,'S18_1662',43,'151.38',3),

(10119,'S18_3029',21,'74.84',9),

(10119,'S18_3856',27,'95.28',8),

(10119,'S24_2841',41,'64.40',4),

(10119,'S24_3151',35,'72.58',13),

(10119,'S24_3420',20,'63.12',5),

(10119,'S24_3816',35,'82.18',10),

(10119,'S24_3949',28,'62.10',2),

(10119,'S700_1138',25,'57.34',14),

(10119,'S700_2047',29,'74.23',7),

(10119,'S700_2610',38,'67.22',12),

(10119,'S700_4002',26,'63.67',1),

(10119,'S72_1253',28,'40.22',6),

(10120,'S10_2016',29,'118.94',3),

(10120,'S10_4698',46,'158.80',2),

(10120,'S18_2581',29,'82.79',8),

(10120,'S18_2625',46,'57.54',4),

(10120,'S24_1578',35,'110.45',1),

(10120,'S24_1785',39,'93.01',10),

(10120,'S24_2000',34,'72.36',5),

(10120,'S24_4278',29,'71.73',9),

(10120,'S32_1374',22,'94.90',6),

(10120,'S32_4289',29,'68.79',11),

(10120,'S50_1341',49,'41.46',12),

(10120,'S700_1691',47,'91.34',13),

(10120,'S700_2466',24,'81.77',15),

(10120,'S700_2834',24,'106.79',7),

(10120,'S700_3167',43,'72.00',14),

(10121,'S10_1678',34,'86.13',5),

(10121,'S12_2823',50,'126.52',4),

(10121,'S24_2360',32,'58.18',2),

(10121,'S32_4485',25,'95.93',3),

(10121,'S50_4713',44,'72.41',1),

(10122,'S12_1099',42,'155.66',10),

(10122,'S12_3380',37,'113.92',8),

(10122,'S12_3990',32,'65.44',11),

(10122,'S12_4675',20,'104.80',7),

(10122,'S18_1129',34,'114.65',2),

(10122,'S18_1889',43,'62.37',6),

(10122,'S18_1984',31,'113.80',1),

(10122,'S18_3232',25,'137.17',3),

(10122,'S18_3278',21,'69.15',13),

(10122,'S18_3482',21,'133.76',12),

(10122,'S18_3782',35,'59.06',16),

(10122,'S18_4721',28,'145.82',15),

(10122,'S24_2972',39,'34.74',4),

(10122,'S24_3371',34,'50.82',9),

(10122,'S24_3856',43,'136.22',5),

(10122,'S24_4620',29,'67.10',14),

(10122,'S32_2206',31,'33.79',17),

(10123,'S18_1589',26,'120.71',2),

(10123,'S18_2870',46,'114.84',3),

(10123,'S18_3685',34,'117.26',4),

(10123,'S24_1628',50,'43.27',1),

(10124,'S18_1749',21,'153.00',6),

(10124,'S18_2248',42,'58.12',5),

(10124,'S18_2325',42,'111.87',3),

(10124,'S18_4409',36,'75.46',7),

(10124,'S18_4933',23,'66.28',8),

(10124,'S24_1046',22,'62.47',12),

(10124,'S24_1937',45,'30.53',2),

(10124,'S24_2022',22,'36.29',1),

(10124,'S24_2766',32,'74.51',10),

(10124,'S24_2887',25,'93.95',9),

(10124,'S24_3191',49,'76.19',11),

(10124,'S24_3432',43,'101.73',13),

(10124,'S24_3969',46,'36.11',4),

(10125,'S18_1342',32,'89.38',1),

(10125,'S18_2795',34,'138.38',2),

(10126,'S10_1949',38,'205.73',11),

(10126,'S10_4962',22,'122.62',4),

(10126,'S12_1666',21,'135.30',8),

(10126,'S18_1097',38,'116.67',10),

(10126,'S18_1367',42,'51.21',17),

(10126,'S18_2432',43,'51.05',2),

(10126,'S18_2949',31,'93.21',12),

(10126,'S18_2957',46,'61.84',14),

(10126,'S18_3136',30,'93.20',13),

(10126,'S18_3320',38,'94.25',16),

(10126,'S18_4600',50,'102.92',5),

(10126,'S18_4668',43,'47.29',9),

(10126,'S24_2300',27,'122.68',1),

(10126,'S24_4258',34,'83.76',15),

(10126,'S32_1268',43,'82.83',3),

(10126,'S32_3522',26,'62.05',7),

(10126,'S700_2824',45,'97.10',6),

(10127,'S12_1108',46,'193.25',2),

(10127,'S12_3148',46,'140.50',3),

(10127,'S12_3891',42,'169.56',1),

(10127,'S12_4473',24,'100.73',11),

(10127,'S18_2238',45,'140.81',10),

(10127,'S18_2319',45,'114.14',14),

(10127,'S18_3232',22,'149.02',15),

(10127,'S18_4027',25,'126.39',5),

(10127,'S24_1444',20,'50.86',8),

(10127,'S24_2840',39,'34.30',12),

(10127,'S24_4048',20,'107.63',7),

(10127,'S32_2509',45,'46.53',13),

(10127,'S32_3207',29,'60.90',6),

(10127,'S50_1392',46,'111.12',9),

(10127,'S50_1514',46,'55.65',4),

(10128,'S18_3140',41,'120.20',2),

(10128,'S18_3259',41,'80.67',4),

(10128,'S18_4522',43,'77.24',1),

(10128,'S700_1938',32,'72.75',3),

(10129,'S10_4757',33,'123.76',2),

(10129,'S24_2011',45,'113.06',9),

(10129,'S24_3151',41,'81.43',4),

(10129,'S24_3816',50,'76.31',1),

(10129,'S700_1138',31,'58.67',5),

(10129,'S700_2610',45,'72.28',3),

(10129,'S700_3505',42,'90.15',6),

(10129,'S700_3962',30,'94.34',7),

(10129,'S72_3212',32,'44.23',8),

(10130,'S18_3029',40,'68.82',2),

(10130,'S18_3856',33,'99.52',1),

(10131,'S18_1662',21,'141.92',4),

(10131,'S24_2841',35,'60.97',5),

(10131,'S24_3420',29,'52.60',6),

(10131,'S24_3949',50,'54.59',3),

(10131,'S700_2047',22,'76.94',8),

(10131,'S700_2466',40,'86.76',1),

(10131,'S700_4002',26,'63.67',2),

(10131,'S72_1253',21,'40.22',7),

(10132,'S700_3167',36,'80.00',1),

(10133,'S18_2581',49,'80.26',3),

(10133,'S24_1785',41,'109.42',5),

(10133,'S24_4278',46,'61.58',4),

(10133,'S32_1374',23,'80.91',1),

(10133,'S32_4289',49,'67.41',6),

(10133,'S50_1341',27,'37.09',7),

(10133,'S700_1691',24,'76.73',8),

(10133,'S700_2834',27,'115.09',2),

(10134,'S10_1678',41,'90.92',2),

(10134,'S10_2016',27,'116.56',5),

(10134,'S10_4698',31,'187.85',4),

(10134,'S12_2823',20,'131.04',1),

(10134,'S18_2625',30,'51.48',6),

(10134,'S24_1578',35,'94.67',3),

(10134,'S24_2000',43,'75.41',7),

(10135,'S12_1099',42,'173.17',7),

(10135,'S12_3380',48,'110.39',5),

(10135,'S12_3990',24,'72.62',8),

(10135,'S12_4675',29,'103.64',4),

(10135,'S18_1889',48,'66.99',3),

(10135,'S18_3278',45,'65.94',10),

(10135,'S18_3482',42,'139.64',9),

(10135,'S18_3782',45,'49.74',13),

(10135,'S18_4721',31,'133.92',12),

(10135,'S24_2360',29,'67.18',16),

(10135,'S24_2972',20,'34.36',1),

(10135,'S24_3371',27,'52.05',6),

(10135,'S24_3856',47,'139.03',2),

(10135,'S24_4620',23,'76.80',11),

(10135,'S32_2206',33,'38.62',14),

(10135,'S32_4485',30,'91.85',17),

(10135,'S50_4713',44,'78.92',15),

(10136,'S18_1129',25,'117.48',2),

(10136,'S18_1984',36,'120.91',1),

(10136,'S18_3232',41,'169.34',3),

(10137,'S18_1589',44,'115.73',2),

(10137,'S18_2870',37,'110.88',3),

(10137,'S18_3685',31,'118.68',4),

(10137,'S24_1628',26,'40.25',1),

(10138,'S18_1749',33,'149.60',6),

(10138,'S18_2248',22,'51.46',5),

(10138,'S18_2325',38,'114.42',3),

(10138,'S18_4409',47,'79.15',7),

(10138,'S18_4933',23,'64.86',8),

(10138,'S24_1046',45,'59.53',12),

(10138,'S24_1937',22,'33.19',2),

(10138,'S24_2022',33,'38.53',1),

(10138,'S24_2766',28,'73.60',10),

(10138,'S24_2887',30,'96.30',9),

(10138,'S24_3191',49,'77.05',11),

(10138,'S24_3432',21,'99.58',13),

(10138,'S24_3969',29,'32.82',4),

(10139,'S18_1342',31,'89.38',7),

(10139,'S18_1367',49,'52.83',6),

(10139,'S18_2795',41,'151.88',8),

(10139,'S18_2949',46,'91.18',1),

(10139,'S18_2957',20,'52.47',3),

(10139,'S18_3136',20,'101.58',2),

(10139,'S18_3320',30,'81.35',5),

(10139,'S24_4258',29,'93.49',4),

(10140,'S10_1949',37,'186.44',11),

(10140,'S10_4962',26,'131.49',4),

(10140,'S12_1666',38,'118.90',8),

(10140,'S18_1097',32,'95.67',10),

(10140,'S18_2432',46,'51.05',2),

(10140,'S18_4600',40,'100.50',5),

(10140,'S18_4668',29,'40.25',9),

(10140,'S24_2300',47,'118.84',1),

(10140,'S32_1268',26,'87.64',3),

(10140,'S32_3522',28,'62.05',7),

(10140,'S700_2824',36,'101.15',6),

(10141,'S12_4473',21,'114.95',5),

(10141,'S18_2238',39,'160.46',4),

(10141,'S18_2319',47,'103.09',8),

(10141,'S18_3232',34,'143.94',9),

(10141,'S24_1444',20,'50.86',2),

(10141,'S24_2840',21,'32.18',6),

(10141,'S24_4048',40,'104.09',1),

(10141,'S32_2509',24,'53.03',7),

(10141,'S50_1392',44,'94.92',3),

(10142,'S12_1108',33,'166.24',12),

(10142,'S12_3148',33,'140.50',13),

(10142,'S12_3891',46,'167.83',11),

(10142,'S18_3140',47,'129.76',8),

(10142,'S18_3259',22,'95.80',10),

(10142,'S18_4027',24,'122.08',15),

(10142,'S18_4522',24,'79.87',7),

(10142,'S24_2011',33,'114.29',6),

(10142,'S24_3151',49,'74.35',1),

(10142,'S32_3207',42,'60.90',16),

(10142,'S50_1514',42,'56.24',14),

(10142,'S700_1138',41,'55.34',2),

(10142,'S700_1938',43,'77.08',9),

(10142,'S700_3505',21,'92.16',3),

(10142,'S700_3962',38,'91.37',4),

(10142,'S72_3212',39,'46.96',5),

(10143,'S10_4757',49,'133.28',15),

(10143,'S18_1662',32,'126.15',7),

(10143,'S18_3029',46,'70.54',13),

(10143,'S18_3856',34,'99.52',12),

(10143,'S24_2841',27,'63.71',8),

(10143,'S24_3420',33,'59.83',9),

(10143,'S24_3816',23,'74.64',14),

(10143,'S24_3949',28,'55.96',6),

(10143,'S50_1341',34,'34.91',1),

(10143,'S700_1691',36,'86.77',2),

(10143,'S700_2047',26,'87.80',11),

(10143,'S700_2466',26,'79.78',4),

(10143,'S700_2610',31,'69.39',16),

(10143,'S700_3167',28,'70.40',3),

(10143,'S700_4002',34,'65.15',5),

(10143,'S72_1253',37,'49.66',10),

(10144,'S32_4289',20,'56.41',1),

(10145,'S10_1678',45,'76.56',6),

(10145,'S10_2016',37,'104.67',9),

(10145,'S10_4698',33,'154.93',8),

(10145,'S12_2823',49,'146.10',5),

(10145,'S18_2581',30,'71.81',14),

(10145,'S18_2625',30,'52.70',10),

(10145,'S24_1578',43,'103.68',7),

(10145,'S24_1785',40,'87.54',16),

(10145,'S24_2000',47,'63.98',11),

(10145,'S24_2360',27,'56.10',3),

(10145,'S24_4278',33,'71.73',15),

(10145,'S32_1374',33,'99.89',12),

(10145,'S32_2206',31,'39.43',1),

(10145,'S32_4485',27,'95.93',4),

(10145,'S50_4713',38,'73.22',2),

(10145,'S700_2834',20,'113.90',13),

(10146,'S18_3782',47,'60.30',2),

(10146,'S18_4721',29,'130.94',1),

(10147,'S12_1099',48,'161.49',7),

(10147,'S12_3380',31,'110.39',5),

(10147,'S12_3990',21,'74.21',8),

(10147,'S12_4675',33,'97.89',4),

(10147,'S18_1889',26,'70.84',3),

(10147,'S18_3278',36,'74.78',10),

(10147,'S18_3482',37,'129.35',9),

(10147,'S24_2972',25,'33.23',1),

(10147,'S24_3371',30,'48.98',6),

(10147,'S24_3856',23,'123.58',2),

(10147,'S24_4620',31,'72.76',11),

(10148,'S18_1129',23,'114.65',13),

(10148,'S18_1589',47,'108.26',9),

(10148,'S18_1984',25,'136.56',12),

(10148,'S18_2870',27,'113.52',10),

(10148,'S18_3232',32,'143.94',14),

(10148,'S18_3685',28,'135.63',11),

(10148,'S18_4409',34,'83.75',1),

(10148,'S18_4933',29,'66.28',2),

(10148,'S24_1046',25,'65.41',6),

(10148,'S24_1628',47,'46.29',8),

(10148,'S24_2766',21,'77.24',4),

(10148,'S24_2887',34,'115.09',3),

(10148,'S24_3191',31,'71.91',5),

(10148,'S24_3432',27,'96.37',7),

(10149,'S18_1342',50,'87.33',4),

(10149,'S18_1367',30,'48.52',3),

(10149,'S18_1749',34,'156.40',11),

(10149,'S18_2248',24,'50.85',10),

(10149,'S18_2325',33,'125.86',8),

(10149,'S18_2795',23,'167.06',5),

(10149,'S18_3320',42,'89.29',2),

(10149,'S24_1937',36,'31.20',7),

(10149,'S24_2022',49,'39.87',6),

(10149,'S24_3969',26,'38.57',9),

(10149,'S24_4258',20,'90.57',1),

(10150,'S10_1949',45,'182.16',8),

(10150,'S10_4962',20,'121.15',1),

(10150,'S12_1666',30,'135.30',5),

(10150,'S18_1097',34,'95.67',7),

(10150,'S18_2949',47,'93.21',9),

(10150,'S18_2957',30,'56.21',11),

(10150,'S18_3136',26,'97.39',10),

(10150,'S18_4600',49,'111.39',2),

(10150,'S18_4668',30,'47.29',6),

(10150,'S32_3522',49,'62.05',4),

(10150,'S700_2824',20,'95.08',3),

(10151,'S12_4473',24,'114.95',3),

(10151,'S18_2238',43,'152.27',2),

(10151,'S18_2319',49,'106.78',6),

(10151,'S18_2432',39,'58.34',9),

(10151,'S18_3232',21,'167.65',7),

(10151,'S24_2300',42,'109.90',8),

(10151,'S24_2840',30,'29.35',4),

(10151,'S32_1268',27,'84.75',10),

(10151,'S32_2509',41,'43.29',5),

(10151,'S50_1392',26,'108.81',1),

(10152,'S18_4027',35,'117.77',1),

(10152,'S24_1444',25,'49.13',4),

(10152,'S24_4048',23,'112.37',3),

(10152,'S32_3207',33,'57.17',2),

(10153,'S12_1108',20,'201.57',11),

(10153,'S12_3148',42,'128.42',12),

(10153,'S12_3891',49,'155.72',10),

(10153,'S18_3140',31,'125.66',7),

(10153,'S18_3259',29,'82.69',9),

(10153,'S18_4522',22,'82.50',6),

(10153,'S24_2011',40,'111.83',5),

(10153,'S50_1514',31,'53.31',13),

(10153,'S700_1138',43,'58.00',1),

(10153,'S700_1938',31,'80.55',8),

(10153,'S700_3505',50,'87.15',2),

(10153,'S700_3962',20,'85.41',3),

(10153,'S72_3212',50,'51.87',4),

(10154,'S24_3151',31,'75.23',2),

(10154,'S700_2610',36,'59.27',1),

(10155,'S10_4757',32,'129.20',13),

(10155,'S18_1662',38,'138.77',5),

(10155,'S18_3029',44,'83.44',11),

(10155,'S18_3856',29,'105.87',10),

(10155,'S24_2841',23,'62.34',6),

(10155,'S24_3420',34,'56.55',7),

(10155,'S24_3816',37,'76.31',12),

(10155,'S24_3949',44,'58.69',4),

(10155,'S700_2047',32,'89.61',9),

(10155,'S700_2466',20,'87.75',2),

(10155,'S700_3167',43,'76.80',1),

(10155,'S700_4002',44,'70.33',3),

(10155,'S72_1253',34,'49.16',8),

(10156,'S50_1341',20,'43.64',1),

(10156,'S700_1691',48,'77.64',2),

(10157,'S18_2581',33,'69.27',3),

(10157,'S24_1785',40,'89.72',5),

(10157,'S24_4278',33,'66.65',4),

(10157,'S32_1374',34,'83.91',1),

(10157,'S32_4289',28,'56.41',6),

(10157,'S700_2834',48,'109.16',2),

(10158,'S24_2000',22,'67.79',1),

(10159,'S10_1678',49,'81.35',14),

(10159,'S10_2016',37,'101.10',17),

(10159,'S10_4698',22,'170.42',16),

(10159,'S12_1099',41,'188.73',2),

(10159,'S12_2823',38,'131.04',13),

(10159,'S12_3990',24,'67.03',3),

(10159,'S18_2625',42,'51.48',18),

(10159,'S18_3278',21,'66.74',5),

(10159,'S18_3482',25,'129.35',4),

(10159,'S18_3782',21,'54.71',8),

(10159,'S18_4721',32,'142.85',7),

(10159,'S24_1578',44,'100.30',15),

(10159,'S24_2360',27,'67.18',11),

(10159,'S24_3371',50,'49.60',1),

(10159,'S24_4620',23,'80.84',6),

(10159,'S32_2206',35,'39.43',9),

(10159,'S32_4485',23,'86.74',12),

(10159,'S50_4713',31,'78.11',10),

(10160,'S12_3380',46,'96.30',6),

(10160,'S12_4675',50,'93.28',5),

(10160,'S18_1889',38,'70.84',4),

(10160,'S18_3232',20,'140.55',1),

(10160,'S24_2972',42,'30.59',2),

(10160,'S24_3856',35,'130.60',3),

(10161,'S18_1129',28,'121.72',12),

(10161,'S18_1589',43,'102.04',8),

(10161,'S18_1984',48,'139.41',11),

(10161,'S18_2870',23,'125.40',9),

(10161,'S18_3685',36,'132.80',10),

(10161,'S18_4933',25,'62.72',1),

(10161,'S24_1046',37,'73.49',5),

(10161,'S24_1628',23,'47.29',7),

(10161,'S24_2766',20,'82.69',3),

(10161,'S24_2887',25,'108.04',2),

(10161,'S24_3191',20,'72.77',4),

(10161,'S24_3432',30,'94.23',6),

(10162,'S18_1342',48,'87.33',2),

(10162,'S18_1367',45,'45.28',1),

(10162,'S18_1749',29,'141.10',9),

(10162,'S18_2248',27,'53.28',8),

(10162,'S18_2325',38,'113.15',6),

(10162,'S18_2795',48,'156.94',3),

(10162,'S18_4409',39,'86.51',10),

(10162,'S24_1937',37,'27.55',5),

(10162,'S24_2022',43,'38.98',4),

(10162,'S24_3969',37,'32.82',7),

(10163,'S10_1949',21,'212.16',1),

(10163,'S18_2949',31,'101.31',2),

(10163,'S18_2957',48,'59.96',4),

(10163,'S18_3136',40,'101.58',3),

(10163,'S18_3320',43,'80.36',6),

(10163,'S24_4258',42,'96.42',5),

(10164,'S10_4962',21,'143.31',2),

(10164,'S12_1666',49,'121.64',6),

(10164,'S18_1097',36,'103.84',8),

(10164,'S18_4600',45,'107.76',3),

(10164,'S18_4668',25,'46.29',7),

(10164,'S32_1268',24,'91.49',1),

(10164,'S32_3522',49,'57.53',5),

(10164,'S700_2824',39,'86.99',4),

(10165,'S12_1108',44,'168.32',3),

(10165,'S12_3148',34,'123.89',4),

(10165,'S12_3891',27,'152.26',2),

(10165,'S12_4473',48,'109.02',12),

(10165,'S18_2238',29,'134.26',11),

(10165,'S18_2319',46,'120.28',15),

(10165,'S18_2432',31,'60.77',18),

(10165,'S18_3232',47,'154.10',16),

(10165,'S18_3259',50,'84.71',1),

(10165,'S18_4027',28,'123.51',6),

(10165,'S24_1444',25,'46.82',9),

(10165,'S24_2300',32,'117.57',17),

(10165,'S24_2840',27,'31.12',13),

(10165,'S24_4048',24,'106.45',8),

(10165,'S32_2509',48,'50.86',14),

(10165,'S32_3207',44,'55.30',7),

(10165,'S50_1392',48,'106.49',10),

(10165,'S50_1514',38,'49.21',5),

(10166,'S18_3140',43,'136.59',2),

(10166,'S18_4522',26,'72.85',1),

(10166,'S700_1938',29,'76.22',3),

(10167,'S10_4757',44,'123.76',9),

(10167,'S18_1662',43,'141.92',1),

(10167,'S18_3029',46,'69.68',7),

(10167,'S18_3856',34,'84.70',6),

(10167,'S24_2011',33,'110.60',16),

(10167,'S24_2841',21,'54.81',2),

(10167,'S24_3151',20,'77.00',11),

(10167,'S24_3420',32,'64.44',3),

(10167,'S24_3816',29,'73.80',8),

(10167,'S700_1138',43,'66.00',12),

(10167,'S700_2047',29,'87.80',5),

(10167,'S700_2610',46,'62.16',10),

(10167,'S700_3505',24,'85.14',13),

(10167,'S700_3962',28,'83.42',14),

(10167,'S72_1253',40,'42.71',4),

(10167,'S72_3212',38,'43.68',15),

(10168,'S10_1678',36,'94.74',1),

(10168,'S10_2016',27,'97.53',4),

(10168,'S10_4698',20,'160.74',3),

(10168,'S18_2581',21,'75.19',9),

(10168,'S18_2625',46,'49.06',5),

(10168,'S24_1578',50,'103.68',2),

(10168,'S24_1785',49,'93.01',11),

(10168,'S24_2000',29,'72.36',6),

(10168,'S24_3949',27,'57.32',18),

(10168,'S24_4278',48,'68.10',10),

(10168,'S32_1374',28,'89.90',7),

(10168,'S32_4289',31,'57.78',12),

(10168,'S50_1341',48,'39.71',13),

(10168,'S700_1691',28,'91.34',14),

(10168,'S700_2466',31,'87.75',16),

(10168,'S700_2834',36,'94.92',8),

(10168,'S700_3167',48,'72.00',15),

(10168,'S700_4002',39,'67.37',17),

(10169,'S12_1099',30,'163.44',2),

(10169,'S12_2823',35,'126.52',13),

(10169,'S12_3990',36,'71.82',3),

(10169,'S18_3278',32,'65.13',5),

(10169,'S18_3482',36,'136.70',4),

(10169,'S18_3782',38,'52.84',8),

(10169,'S18_4721',33,'120.53',7),

(10169,'S24_2360',38,'66.49',11),

(10169,'S24_3371',34,'53.27',1),

(10169,'S24_4620',24,'77.61',6),

(10169,'S32_2206',26,'37.01',9),

(10169,'S32_4485',34,'83.68',12),

(10169,'S50_4713',48,'75.66',10),

(10170,'S12_3380',47,'116.27',4),

(10170,'S12_4675',41,'93.28',3),

(10170,'S18_1889',20,'70.07',2),

(10170,'S24_3856',34,'130.60',1),

(10171,'S18_1129',35,'134.46',2),

(10171,'S18_1984',35,'128.03',1),

(10171,'S18_3232',39,'165.95',3),

(10171,'S24_2972',36,'34.74',4),

(10172,'S18_1589',42,'109.51',6),

(10172,'S18_2870',39,'117.48',7),

(10172,'S18_3685',48,'139.87',8),

(10172,'S24_1046',32,'61.00',3),

(10172,'S24_1628',34,'43.27',5),

(10172,'S24_2766',22,'79.97',1),

(10172,'S24_3191',24,'77.91',2),

(10172,'S24_3432',22,'87.81',4),

(10173,'S18_1342',43,'101.71',6),

(10173,'S18_1367',48,'51.75',5),

(10173,'S18_1749',24,'168.30',13),

(10173,'S18_2248',26,'55.09',12),

(10173,'S18_2325',31,'127.13',10),

(10173,'S18_2795',22,'140.06',7),

(10173,'S18_2957',28,'56.84',2),

(10173,'S18_3136',31,'86.92',1),

(10173,'S18_3320',29,'90.28',4),

(10173,'S18_4409',21,'77.31',14),

(10173,'S18_4933',39,'58.44',15),

(10173,'S24_1937',31,'29.87',9),

(10173,'S24_2022',27,'39.42',8),

(10173,'S24_2887',23,'98.65',16),

(10173,'S24_3969',35,'35.70',11),

(10173,'S24_4258',22,'93.49',3),

(10174,'S10_1949',34,'207.87',4),

(10174,'S12_1666',43,'113.44',1),

(10174,'S18_1097',48,'108.50',3),

(10174,'S18_2949',46,'100.30',5),

(10174,'S18_4668',49,'44.27',2),

(10175,'S10_4962',33,'119.67',9),

(10175,'S12_4473',26,'109.02',1),

(10175,'S18_2319',48,'101.87',4),

(10175,'S18_2432',41,'59.55',7),

(10175,'S18_3232',29,'150.71',5),

(10175,'S18_4600',47,'102.92',10),

(10175,'S24_2300',28,'121.40',6),

(10175,'S24_2840',37,'32.18',2),

(10175,'S32_1268',22,'89.57',8),

(10175,'S32_2509',50,'50.86',3),

(10175,'S32_3522',29,'56.24',12),

(10175,'S700_2824',42,'80.92',11),

(10176,'S12_1108',33,'166.24',2),

(10176,'S12_3148',47,'145.04',3),

(10176,'S12_3891',50,'160.91',1),

(10176,'S18_2238',20,'139.17',10),

(10176,'S18_4027',36,'140.75',5),

(10176,'S24_1444',27,'55.49',8),

(10176,'S24_4048',29,'101.72',7),

(10176,'S32_3207',22,'62.14',6),

(10176,'S50_1392',23,'109.96',9),

(10176,'S50_1514',38,'52.14',4),

(10177,'S18_3140',23,'113.37',9),

(10177,'S18_3259',29,'92.77',11),

(10177,'S18_4522',35,'82.50',8),

(10177,'S24_2011',50,'115.52',7),

(10177,'S24_3151',45,'79.66',2),

(10177,'S700_1138',24,'58.67',3),

(10177,'S700_1938',31,'77.95',10),

(10177,'S700_2610',32,'64.33',1),

(10177,'S700_3505',44,'88.15',4),

(10177,'S700_3962',24,'83.42',5),

(10177,'S72_3212',40,'52.96',6),

(10178,'S10_4757',24,'131.92',12),

(10178,'S18_1662',42,'127.73',4),

(10178,'S18_3029',41,'70.54',10),

(10178,'S18_3856',48,'104.81',9),

(10178,'S24_2841',34,'67.82',5),

(10178,'S24_3420',27,'65.75',6),

(10178,'S24_3816',21,'68.77',11),

(10178,'S24_3949',30,'64.15',3),

(10178,'S700_2047',34,'86.90',8),

(10178,'S700_2466',22,'91.74',1),

(10178,'S700_4002',45,'68.11',2),

(10178,'S72_1253',45,'41.71',7),

(10179,'S18_2581',24,'82.79',3),

(10179,'S24_1785',47,'105.04',5),

(10179,'S24_4278',27,'66.65',4),

(10179,'S32_1374',45,'86.90',1),

(10179,'S32_4289',24,'63.97',6),

(10179,'S50_1341',34,'43.20',7),

(10179,'S700_1691',23,'75.81',8),

(10179,'S700_2834',25,'98.48',2),

(10179,'S700_3167',39,'80.00',9),

(10180,'S10_1678',29,'76.56',9),

(10180,'S10_2016',42,'99.91',12),

(10180,'S10_4698',41,'164.61',11),

(10180,'S12_2823',40,'131.04',8),

(10180,'S18_2625',25,'48.46',13),

(10180,'S18_3782',21,'59.06',3),

(10180,'S18_4721',44,'147.31',2),

(10180,'S24_1578',48,'98.05',10),

(10180,'S24_2000',28,'61.70',14),

(10180,'S24_2360',35,'60.95',6),

(10180,'S24_4620',28,'68.71',1),

(10180,'S32_2206',34,'33.39',4),

(10180,'S32_4485',22,'102.05',7),

(10180,'S50_4713',21,'74.85',5),

(10181,'S12_1099',27,'155.66',14),

(10181,'S12_3380',28,'113.92',12),

(10181,'S12_3990',20,'67.03',15),

(10181,'S12_4675',36,'107.10',11),

(10181,'S18_1129',44,'124.56',6),

(10181,'S18_1589',42,'124.44',2),

(10181,'S18_1889',22,'74.69',10),

(10181,'S18_1984',21,'129.45',5),

(10181,'S18_2870',27,'130.68',3),

(10181,'S18_3232',45,'147.33',7),

(10181,'S18_3278',30,'73.17',17),

(10181,'S18_3482',22,'120.53',16),

(10181,'S18_3685',39,'137.04',4),

(10181,'S24_1628',34,'45.28',1),

(10181,'S24_2972',37,'32.85',8),

(10181,'S24_3371',23,'54.49',13),

(10181,'S24_3856',25,'122.17',9),

(10182,'S18_1342',25,'83.22',3),

(10182,'S18_1367',32,'44.21',2),

(10182,'S18_1749',44,'159.80',10),

(10182,'S18_2248',38,'54.49',9),

(10182,'S18_2325',20,'105.52',7),

(10182,'S18_2795',21,'135.00',4),

(10182,'S18_3320',33,'86.31',1),

(10182,'S18_4409',36,'88.35',11),

(10182,'S18_4933',44,'61.29',12),

(10182,'S24_1046',47,'63.20',16),

(10182,'S24_1937',39,'31.86',6),

(10182,'S24_2022',31,'39.87',5),

(10182,'S24_2766',36,'87.24',14),

(10182,'S24_2887',20,'116.27',13),

(10182,'S24_3191',33,'73.62',15),

(10182,'S24_3432',49,'95.30',17),

(10182,'S24_3969',23,'34.88',8),

(10183,'S10_1949',23,'180.01',8),

(10183,'S10_4962',28,'127.06',1),

(10183,'S12_1666',41,'114.80',5),

(10183,'S18_1097',21,'108.50',7),

(10183,'S18_2949',37,'91.18',9),

(10183,'S18_2957',39,'51.22',11),

(10183,'S18_3136',22,'90.06',10),

(10183,'S18_4600',21,'118.66',2),

(10183,'S18_4668',40,'42.26',6),

(10183,'S24_4258',47,'81.81',12),

(10183,'S32_3522',49,'52.36',4),

(10183,'S700_2824',23,'85.98',3),

(10184,'S12_4473',37,'105.47',6),

(10184,'S18_2238',46,'145.72',5),

(10184,'S18_2319',46,'119.05',9),

(10184,'S18_2432',44,'60.77',12),

(10184,'S18_3232',28,'165.95',10),

(10184,'S24_1444',31,'57.22',3),

(10184,'S24_2300',24,'117.57',11),

(10184,'S24_2840',42,'30.06',7),

(10184,'S24_4048',49,'114.73',2),

(10184,'S32_1268',46,'84.75',13),

(10184,'S32_2509',33,'52.49',8),

(10184,'S32_3207',48,'59.03',1),

(10184,'S50_1392',45,'92.60',4),

(10185,'S12_1108',21,'195.33',13),

(10185,'S12_3148',33,'146.55',14),

(10185,'S12_3891',43,'147.07',12),

(10185,'S18_3140',28,'124.30',9),

(10185,'S18_3259',49,'94.79',11),

(10185,'S18_4027',39,'127.82',16),

(10185,'S18_4522',47,'87.77',8),

(10185,'S24_2011',30,'105.69',7),

(10185,'S24_3151',33,'83.20',2),

(10185,'S50_1514',20,'46.86',15),

(10185,'S700_1138',21,'64.67',3),

(10185,'S700_1938',30,'79.68',10),

(10185,'S700_2610',39,'61.44',1),

(10185,'S700_3505',37,'99.17',4),

(10185,'S700_3962',22,'93.35',5),

(10185,'S72_3212',28,'47.50',6),

(10186,'S10_4757',26,'108.80',9),

(10186,'S18_1662',32,'137.19',1),

(10186,'S18_3029',32,'73.12',7),

(10186,'S18_3856',46,'98.46',6),

(10186,'S24_2841',22,'60.29',2),

(10186,'S24_3420',21,'59.83',3),

(10186,'S24_3816',36,'68.77',8),

(10186,'S700_2047',24,'80.56',5),

(10186,'S72_1253',28,'42.71',4),

(10187,'S18_2581',45,'70.12',1),

(10187,'S24_1785',46,'96.29',3),

(10187,'S24_3949',43,'55.96',10),

(10187,'S24_4278',33,'64.48',2),

(10187,'S32_4289',31,'61.22',4),

(10187,'S50_1341',41,'39.71',5),

(10187,'S700_1691',34,'84.95',6),

(10187,'S700_2466',44,'95.73',8),

(10187,'S700_3167',34,'72.00',7),

(10187,'S700_4002',44,'70.33',9),

(10188,'S10_1678',48,'95.70',1),

(10188,'S10_2016',38,'111.80',4),

(10188,'S10_4698',45,'182.04',3),

(10188,'S18_2625',32,'52.09',5),

(10188,'S24_1578',25,'95.80',2),

(10188,'S24_2000',40,'61.70',6),

(10188,'S32_1374',44,'81.91',7),

(10188,'S700_2834',29,'96.11',8),

(10189,'S12_2823',28,'138.57',1),

(10190,'S24_2360',42,'58.87',3),

(10190,'S32_2206',46,'38.62',1),

(10190,'S32_4485',42,'89.80',4),

(10190,'S50_4713',40,'67.53',2),

(10191,'S12_1099',21,'155.66',3),

(10191,'S12_3380',40,'104.52',1),

(10191,'S12_3990',30,'70.22',4),

(10191,'S18_3278',36,'75.59',6),

(10191,'S18_3482',23,'119.06',5),

(10191,'S18_3782',43,'60.93',9),

(10191,'S18_4721',32,'136.90',8),

(10191,'S24_3371',48,'53.27',2),

(10191,'S24_4620',44,'77.61',7),

(10192,'S12_4675',27,'99.04',16),

(10192,'S18_1129',22,'140.12',11),

(10192,'S18_1589',29,'100.80',7),

(10192,'S18_1889',45,'70.84',15),

(10192,'S18_1984',47,'128.03',10),

(10192,'S18_2870',38,'110.88',8),

(10192,'S18_3232',26,'137.17',12),

(10192,'S18_3685',45,'125.74',9),

(10192,'S24_1046',37,'72.02',4),

(10192,'S24_1628',47,'49.30',6),

(10192,'S24_2766',46,'86.33',2),

(10192,'S24_2887',23,'112.74',1),

(10192,'S24_2972',30,'33.23',13),

(10192,'S24_3191',32,'69.34',3),

(10192,'S24_3432',46,'93.16',5),

(10192,'S24_3856',45,'112.34',14),

(10193,'S18_1342',28,'92.47',7),

(10193,'S18_1367',46,'46.36',6),

(10193,'S18_1749',21,'153.00',14),

(10193,'S18_2248',42,'60.54',13),

(10193,'S18_2325',44,'115.69',11),

(10193,'S18_2795',22,'143.44',8),

(10193,'S18_2949',28,'87.13',1),

(10193,'S18_2957',24,'53.09',3),

(10193,'S18_3136',23,'97.39',2),

(10193,'S18_3320',32,'79.37',5),

(10193,'S18_4409',24,'92.03',15),

(10193,'S18_4933',25,'66.28',16),

(10193,'S24_1937',26,'32.19',10),

(10193,'S24_2022',20,'44.80',9),

(10193,'S24_3969',22,'38.16',12),

(10193,'S24_4258',20,'92.52',4),

(10194,'S10_1949',42,'203.59',11),

(10194,'S10_4962',26,'134.44',4),

(10194,'S12_1666',38,'124.37',8),

(10194,'S18_1097',21,'103.84',10),

(10194,'S18_2432',45,'51.05',2),

(10194,'S18_4600',32,'113.82',5),

(10194,'S18_4668',41,'47.79',9),

(10194,'S24_2300',49,'112.46',1),

(10194,'S32_1268',37,'77.05',3),

(10194,'S32_3522',39,'61.41',7),

(10194,'S700_2824',26,'80.92',6),

(10195,'S12_4473',49,'118.50',6),

(10195,'S18_2238',27,'139.17',5),

(10195,'S18_2319',35,'112.91',9),

(10195,'S18_3232',50,'150.71',10),

(10195,'S24_1444',44,'54.33',3),

(10195,'S24_2840',32,'31.82',7),

(10195,'S24_4048',34,'95.81',2),

(10195,'S32_2509',32,'51.95',8),

(10195,'S32_3207',33,'59.03',1),

(10195,'S50_1392',49,'97.23',4),

(10196,'S12_1108',47,'203.64',5),

(10196,'S12_3148',24,'151.08',6),

(10196,'S12_3891',38,'147.07',4),

(10196,'S18_3140',49,'127.03',1),

(10196,'S18_3259',35,'81.68',3),

(10196,'S18_4027',27,'126.39',8),

(10196,'S50_1514',46,'56.82',7),

(10196,'S700_1938',50,'84.88',2),

(10197,'S10_4757',45,'118.32',6),

(10197,'S18_3029',46,'83.44',4),

(10197,'S18_3856',22,'85.75',3),

(10197,'S18_4522',50,'78.99',14),

(10197,'S24_2011',41,'109.37',13),

(10197,'S24_3151',47,'83.20',8),

(10197,'S24_3816',22,'67.93',5),

(10197,'S700_1138',23,'60.00',9),

(10197,'S700_2047',24,'78.75',2),

(10197,'S700_2610',50,'66.50',7),

(10197,'S700_3505',27,'100.17',10),

(10197,'S700_3962',35,'88.39',11),

(10197,'S72_1253',29,'39.73',1),

(10197,'S72_3212',42,'48.59',12),

(10198,'S18_1662',42,'149.81',4),

(10198,'S24_2841',48,'60.97',5),

(10198,'S24_3420',27,'61.81',6),

(10198,'S24_3949',43,'65.51',3),

(10198,'S700_2466',42,'94.73',1),

(10198,'S700_4002',40,'74.03',2),

(10199,'S50_1341',29,'37.97',1),

(10199,'S700_1691',48,'81.29',2),

(10199,'S700_3167',38,'70.40',3),

(10200,'S18_2581',28,'74.34',3),

(10200,'S24_1785',33,'99.57',5),

(10200,'S24_4278',39,'70.28',4),

(10200,'S32_1374',35,'80.91',1),

(10200,'S32_4289',27,'65.35',6),

(10200,'S700_2834',39,'115.09',2),

(10201,'S10_1678',22,'82.30',2),

(10201,'S10_2016',24,'116.56',5),

(10201,'S10_4698',49,'191.72',4),

(10201,'S12_2823',25,'126.52',1),

(10201,'S18_2625',30,'48.46',6),

(10201,'S24_1578',39,'93.54',3),

(10201,'S24_2000',25,'66.27',7),

(10202,'S18_3782',30,'55.33',3),

(10202,'S18_4721',43,'124.99',2),

(10202,'S24_2360',50,'56.10',6),

(10202,'S24_4620',50,'75.18',1),

(10202,'S32_2206',27,'33.39',4),

(10202,'S32_4485',31,'81.64',7),

(10202,'S50_4713',40,'79.73',5),

(10203,'S12_1099',20,'161.49',8),

(10203,'S12_3380',20,'111.57',6),

(10203,'S12_3990',44,'63.84',9),

(10203,'S12_4675',47,'115.16',5),

(10203,'S18_1889',45,'73.15',4),

(10203,'S18_3232',48,'157.49',1),

(10203,'S18_3278',33,'66.74',11),

(10203,'S18_3482',32,'127.88',10),

(10203,'S24_2972',21,'33.23',2),

(10203,'S24_3371',34,'56.94',7),

(10203,'S24_3856',47,'140.43',3),

(10204,'S18_1129',42,'114.65',17),

(10204,'S18_1589',40,'113.24',13),

(10204,'S18_1749',33,'153.00',4),

(10204,'S18_1984',38,'133.72',16),

(10204,'S18_2248',23,'59.33',3),

(10204,'S18_2325',26,'119.50',1),

(10204,'S18_2870',27,'106.92',14),

(10204,'S18_3685',35,'132.80',15),

(10204,'S18_4409',29,'83.75',5),

(10204,'S18_4933',45,'69.84',6),

(10204,'S24_1046',20,'69.82',10),

(10204,'S24_1628',45,'46.79',12),

(10204,'S24_2766',47,'79.06',8),

(10204,'S24_2887',42,'112.74',7),

(10204,'S24_3191',40,'84.75',9),

(10204,'S24_3432',48,'104.94',11),

(10204,'S24_3969',39,'34.88',2),

(10205,'S18_1342',36,'98.63',2),

(10205,'S18_1367',48,'45.82',1),

(10205,'S18_2795',40,'138.38',3),

(10205,'S24_1937',32,'27.88',5),

(10205,'S24_2022',24,'36.74',4),

(10206,'S10_1949',47,'203.59',6),

(10206,'S12_1666',28,'109.34',3),

(10206,'S18_1097',34,'115.50',5),

(10206,'S18_2949',37,'98.27',7),

(10206,'S18_2957',28,'51.84',9),

(10206,'S18_3136',30,'102.63',8),

(10206,'S18_3320',28,'99.21',11),

(10206,'S18_4668',21,'45.78',4),

(10206,'S24_4258',33,'95.44',10),

(10206,'S32_3522',36,'54.94',2),

(10206,'S700_2824',33,'89.01',1),

(10207,'S10_4962',31,'125.58',15),

(10207,'S12_4473',34,'95.99',7),

(10207,'S18_2238',44,'140.81',6),

(10207,'S18_2319',43,'109.23',10),

(10207,'S18_2432',37,'60.77',13),

(10207,'S18_3232',25,'140.55',11),

(10207,'S18_4027',40,'143.62',1),

(10207,'S18_4600',47,'119.87',16),

(10207,'S24_1444',49,'57.80',4),

(10207,'S24_2300',46,'127.79',12),

(10207,'S24_2840',42,'30.76',8),

(10207,'S24_4048',28,'108.82',3),

(10207,'S32_1268',49,'84.75',14),

(10207,'S32_2509',27,'51.95',9),

(10207,'S32_3207',45,'55.30',2),

(10207,'S50_1392',28,'106.49',5),

(10208,'S12_1108',46,'176.63',13),

(10208,'S12_3148',26,'128.42',14),

(10208,'S12_3891',20,'152.26',12),

(10208,'S18_3140',24,'117.47',9),

(10208,'S18_3259',48,'96.81',11),

(10208,'S18_4522',45,'72.85',8),

(10208,'S24_2011',35,'122.89',7),

(10208,'S24_3151',20,'80.54',2),

(10208,'S50_1514',30,'57.99',15),

(10208,'S700_1138',38,'56.67',3),

(10208,'S700_1938',40,'73.62',10),

(10208,'S700_2610',46,'63.61',1),

(10208,'S700_3505',37,'95.16',4),

(10208,'S700_3962',33,'95.34',5),

(10208,'S72_3212',42,'48.05',6),

(10209,'S10_4757',39,'129.20',8),

(10209,'S18_3029',28,'82.58',6),

(10209,'S18_3856',20,'97.40',5),

(10209,'S24_2841',43,'66.45',1),

(10209,'S24_3420',36,'56.55',2),

(10209,'S24_3816',22,'79.67',7),

(10209,'S700_2047',33,'90.52',4),

(10209,'S72_1253',48,'44.20',3),

(10210,'S10_2016',23,'112.99',2),

(10210,'S10_4698',34,'189.79',1),

(10210,'S18_1662',31,'141.92',17),

(10210,'S18_2581',50,'68.43',7),

(10210,'S18_2625',40,'51.48',3),

(10210,'S24_1785',27,'100.67',9),

(10210,'S24_2000',30,'63.22',4),

(10210,'S24_3949',29,'56.64',16),

(10210,'S24_4278',40,'68.10',8),

(10210,'S32_1374',46,'84.91',5),

(10210,'S32_4289',39,'57.10',10),

(10210,'S50_1341',43,'43.20',11),

(10210,'S700_1691',21,'87.69',12),

(10210,'S700_2466',26,'93.74',14),

(10210,'S700_2834',25,'98.48',6),

(10210,'S700_3167',31,'64.00',13),

(10210,'S700_4002',42,'60.70',15),

(10211,'S10_1678',41,'90.92',14),

(10211,'S12_1099',41,'171.22',2),

(10211,'S12_2823',36,'126.52',13),

(10211,'S12_3990',28,'79.80',3),

(10211,'S18_3278',35,'73.17',5),

(10211,'S18_3482',28,'138.17',4),

(10211,'S18_3782',46,'60.30',8),

(10211,'S18_4721',41,'148.80',7),

(10211,'S24_1578',25,'109.32',15),

(10211,'S24_2360',21,'62.33',11),

(10211,'S24_3371',48,'52.66',1),

(10211,'S24_4620',22,'80.84',6),

(10211,'S32_2206',41,'39.83',9),

(10211,'S32_4485',37,'94.91',12),

(10211,'S50_4713',40,'70.78',10),

(10212,'S12_3380',39,'99.82',16),

(10212,'S12_4675',33,'110.55',15),

(10212,'S18_1129',29,'117.48',10),

(10212,'S18_1589',38,'105.77',6),

(10212,'S18_1889',20,'64.68',14),

(10212,'S18_1984',41,'133.72',9),

(10212,'S18_2870',40,'117.48',7),

(10212,'S18_3232',40,'155.79',11),

(10212,'S18_3685',45,'115.85',8),

(10212,'S24_1046',41,'61.73',3),

(10212,'S24_1628',45,'43.27',5),

(10212,'S24_2766',45,'81.78',1),

(10212,'S24_2972',34,'37.38',12),

(10212,'S24_3191',27,'77.91',2),

(10212,'S24_3432',46,'100.66',4),

(10212,'S24_3856',49,'117.96',13),

(10213,'S18_4409',38,'84.67',1),

(10213,'S18_4933',25,'58.44',2),

(10213,'S24_2887',27,'97.48',3),

(10214,'S18_1749',30,'166.60',7),

(10214,'S18_2248',21,'53.28',6),

(10214,'S18_2325',27,'125.86',4),

(10214,'S18_2795',50,'167.06',1),

(10214,'S24_1937',20,'32.19',3),

(10214,'S24_2022',49,'39.87',2),

(10214,'S24_3969',44,'38.57',5),

(10215,'S10_1949',35,'205.73',3),

(10215,'S18_1097',46,'100.34',2),

(10215,'S18_1342',27,'92.47',10),

(10215,'S18_1367',33,'53.91',9),

(10215,'S18_2949',49,'97.26',4),

(10215,'S18_2957',31,'56.21',6),

(10215,'S18_3136',49,'89.01',5),

(10215,'S18_3320',41,'84.33',8),

(10215,'S18_4668',46,'42.76',1),

(10215,'S24_4258',39,'94.47',7),

(10216,'S12_1666',43,'133.94',1),

(10217,'S10_4962',48,'132.97',4),

(10217,'S18_2432',35,'58.34',2),

(10217,'S18_4600',38,'118.66',5),

(10217,'S24_2300',28,'103.51',1),

(10217,'S32_1268',21,'78.97',3),

(10217,'S32_3522',39,'56.24',7),

(10217,'S700_2824',31,'90.02',6),

(10218,'S18_2319',22,'110.46',1),

(10218,'S18_3232',34,'152.41',2),

(10219,'S12_4473',48,'94.80',2),

(10219,'S18_2238',43,'132.62',1),

(10219,'S24_2840',21,'31.12',3),

(10219,'S32_2509',35,'47.62',4),

(10220,'S12_1108',32,'189.10',2),

(10220,'S12_3148',30,'151.08',3),

(10220,'S12_3891',27,'166.10',1),

(10220,'S18_4027',50,'126.39',5),

(10220,'S24_1444',26,'48.55',8),

(10220,'S24_4048',37,'101.72',7),

(10220,'S32_3207',20,'49.71',6),

(10220,'S50_1392',37,'92.60',9),

(10220,'S50_1514',30,'56.82',4),

(10221,'S18_3140',33,'133.86',3),

(10221,'S18_3259',23,'89.75',5),

(10221,'S18_4522',39,'84.26',2),

(10221,'S24_2011',49,'113.06',1),

(10221,'S700_1938',23,'69.29',4),

(10222,'S10_4757',49,'133.28',12),

(10222,'S18_1662',49,'137.19',4),

(10222,'S18_3029',49,'79.14',10),

(10222,'S18_3856',45,'88.93',9),

(10222,'S24_2841',32,'56.86',5),

(10222,'S24_3151',47,'74.35',14),

(10222,'S24_3420',43,'61.15',6),

(10222,'S24_3816',46,'77.99',11),

(10222,'S24_3949',48,'55.27',3),

(10222,'S700_1138',31,'58.67',15),

(10222,'S700_2047',26,'80.56',8),

(10222,'S700_2466',37,'90.75',1),

(10222,'S700_2610',36,'69.39',13),

(10222,'S700_3505',38,'84.14',16),

(10222,'S700_3962',31,'81.43',17),

(10222,'S700_4002',43,'66.63',2),

(10222,'S72_1253',31,'45.19',7),

(10222,'S72_3212',36,'48.59',18),

(10223,'S10_1678',37,'80.39',1),

(10223,'S10_2016',47,'110.61',4),

(10223,'S10_4698',49,'189.79',3),

(10223,'S18_2581',47,'67.58',9),

(10223,'S18_2625',28,'58.75',5),

(10223,'S24_1578',32,'104.81',2),

(10223,'S24_1785',34,'87.54',11),

(10223,'S24_2000',38,'60.94',6),

(10223,'S24_4278',23,'68.10',10),

(10223,'S32_1374',21,'90.90',7),

(10223,'S32_4289',20,'66.73',12),

(10223,'S50_1341',41,'41.02',13),

(10223,'S700_1691',25,'84.03',14),

(10223,'S700_2834',29,'113.90',8),

(10223,'S700_3167',26,'79.20',15),

(10224,'S12_2823',43,'141.58',6),

(10224,'S18_3782',38,'57.20',1),

(10224,'S24_2360',37,'60.26',4),

(10224,'S32_2206',43,'37.01',2),

(10224,'S32_4485',30,'94.91',5),

(10224,'S50_4713',50,'81.36',3),

(10225,'S12_1099',27,'157.60',9),

(10225,'S12_3380',25,'101.00',7),

(10225,'S12_3990',37,'64.64',10),

(10225,'S12_4675',21,'100.19',6),

(10225,'S18_1129',32,'116.06',1),

(10225,'S18_1889',47,'71.61',5),

(10225,'S18_3232',43,'162.57',2),

(10225,'S18_3278',37,'69.96',12),

(10225,'S18_3482',27,'119.06',11),

(10225,'S18_4721',35,'135.41',14),

(10225,'S24_2972',42,'34.74',3),

(10225,'S24_3371',24,'51.43',8),

(10225,'S24_3856',40,'130.60',4),

(10225,'S24_4620',46,'77.61',13),

(10226,'S18_1589',38,'108.26',4),

(10226,'S18_1984',24,'129.45',7),

(10226,'S18_2870',24,'125.40',5),

(10226,'S18_3685',46,'122.91',6),

(10226,'S24_1046',21,'65.41',1),

(10226,'S24_1628',36,'47.79',3),

(10226,'S24_3432',48,'95.30',2),

(10227,'S18_1342',25,'85.27',3),

(10227,'S18_1367',31,'50.14',2),

(10227,'S18_1749',26,'136.00',10),

(10227,'S18_2248',28,'59.93',9),

(10227,'S18_2325',46,'118.23',7),

(10227,'S18_2795',29,'146.81',4),

(10227,'S18_3320',33,'99.21',1),

(10227,'S18_4409',34,'87.43',11),

(10227,'S18_4933',37,'70.56',12),

(10227,'S24_1937',42,'27.22',6),

(10227,'S24_2022',24,'39.42',5),

(10227,'S24_2766',47,'84.51',14),

(10227,'S24_2887',33,'102.17',13),

(10227,'S24_3191',40,'78.76',15),

(10227,'S24_3969',27,'34.88',8),

(10228,'S10_1949',29,'214.30',2),

(10228,'S18_1097',32,'100.34',1),

(10228,'S18_2949',24,'101.31',3),

(10228,'S18_2957',45,'57.46',5),

(10228,'S18_3136',31,'100.53',4),

(10228,'S24_4258',33,'84.73',6),

(10229,'S10_4962',50,'138.88',9),

(10229,'S12_1666',25,'110.70',13),

(10229,'S12_4473',36,'95.99',1),

(10229,'S18_2319',26,'104.32',4),

(10229,'S18_2432',28,'53.48',7),

(10229,'S18_3232',22,'157.49',5),

(10229,'S18_4600',41,'119.87',10),

(10229,'S18_4668',39,'43.77',14),

(10229,'S24_2300',48,'115.01',6),

(10229,'S24_2840',33,'34.65',2),

(10229,'S32_1268',25,'78.97',8),

(10229,'S32_2509',23,'49.78',3),

(10229,'S32_3522',30,'52.36',12),

(10229,'S700_2824',50,'91.04',11),

(10230,'S12_3148',43,'128.42',1),

(10230,'S18_2238',49,'153.91',8),

(10230,'S18_4027',42,'142.18',3),

(10230,'S24_1444',36,'47.40',6),

(10230,'S24_4048',45,'99.36',5),

(10230,'S32_3207',46,'59.03',4),

(10230,'S50_1392',34,'100.70',7),

(10230,'S50_1514',43,'57.41',2),

(10231,'S12_1108',42,'193.25',2),

(10231,'S12_3891',49,'147.07',1),

(10232,'S18_3140',22,'133.86',6),

(10232,'S18_3259',48,'97.81',8),

(10232,'S18_4522',23,'78.12',5),

(10232,'S24_2011',46,'113.06',4),

(10232,'S700_1938',26,'84.88',7),

(10232,'S700_3505',48,'86.15',1),

(10232,'S700_3962',35,'81.43',2),

(10232,'S72_3212',24,'48.59',3),

(10233,'S24_3151',40,'70.81',2),

(10233,'S700_1138',36,'66.00',3),

(10233,'S700_2610',29,'67.94',1),

(10234,'S10_4757',48,'118.32',9),

(10234,'S18_1662',50,'146.65',1),

(10234,'S18_3029',48,'84.30',7),

(10234,'S18_3856',39,'85.75',6),

(10234,'S24_2841',44,'67.14',2),

(10234,'S24_3420',25,'65.09',3),

(10234,'S24_3816',31,'78.83',8),

(10234,'S700_2047',29,'83.28',5),

(10234,'S72_1253',40,'45.69',4),

(10235,'S18_2581',24,'81.95',3),

(10235,'S24_1785',23,'89.72',5),

(10235,'S24_3949',33,'55.27',12),

(10235,'S24_4278',40,'63.03',4),

(10235,'S32_1374',41,'90.90',1),

(10235,'S32_4289',34,'66.73',6),

(10235,'S50_1341',41,'37.09',7),

(10235,'S700_1691',25,'88.60',8),

(10235,'S700_2466',38,'92.74',10),

(10235,'S700_2834',25,'116.28',2),

(10235,'S700_3167',32,'73.60',9),

(10235,'S700_4002',34,'70.33',11),

(10236,'S10_2016',22,'105.86',1),

(10236,'S18_2625',23,'52.70',2),

(10236,'S24_2000',36,'65.51',3),

(10237,'S10_1678',23,'91.87',7),

(10237,'S10_4698',39,'158.80',9),

(10237,'S12_2823',32,'129.53',6),

(10237,'S18_3782',26,'49.74',1),

(10237,'S24_1578',20,'109.32',8),

(10237,'S24_2360',26,'62.33',4),

(10237,'S32_2206',26,'35.00',2),

(10237,'S32_4485',27,'94.91',5),

(10237,'S50_4713',20,'78.92',3),

(10238,'S12_1099',28,'161.49',3),

(10238,'S12_3380',29,'104.52',1),

(10238,'S12_3990',20,'73.42',4),

(10238,'S18_3278',41,'68.35',6),

(10238,'S18_3482',49,'144.05',5),

(10238,'S18_4721',44,'120.53',8),

(10238,'S24_3371',47,'53.88',2),

(10238,'S24_4620',22,'67.91',7),

(10239,'S12_4675',21,'100.19',5),

(10239,'S18_1889',46,'70.07',4),

(10239,'S18_3232',47,'135.47',1),

(10239,'S24_2972',20,'32.47',2),

(10239,'S24_3856',29,'133.41',3),

(10240,'S18_1129',41,'125.97',3),

(10240,'S18_1984',37,'136.56',2),

(10240,'S18_3685',37,'134.22',1),

(10241,'S18_1589',21,'119.46',11),

(10241,'S18_1749',41,'153.00',2),

(10241,'S18_2248',33,'55.70',1),

(10241,'S18_2870',44,'126.72',12),

(10241,'S18_4409',42,'77.31',3),

(10241,'S18_4933',30,'62.72',4),

(10241,'S24_1046',22,'72.02',8),

(10241,'S24_1628',21,'47.29',10),

(10241,'S24_2766',47,'89.05',6),

(10241,'S24_2887',28,'117.44',5),

(10241,'S24_3191',26,'69.34',7),

(10241,'S24_3432',27,'107.08',9),

(10242,'S24_3969',46,'36.52',1),

(10243,'S18_2325',47,'111.87',2),

(10243,'S24_1937',33,'30.87',1),

(10244,'S18_1342',40,'99.66',7),

(10244,'S18_1367',20,'48.52',6),

(10244,'S18_2795',43,'141.75',8),

(10244,'S18_2949',30,'87.13',1),

(10244,'S18_2957',24,'54.96',3),

(10244,'S18_3136',29,'85.87',2),

(10244,'S18_3320',36,'87.30',5),

(10244,'S24_2022',39,'42.11',9),

(10244,'S24_4258',40,'97.39',4),

(10245,'S10_1949',34,'195.01',9),

(10245,'S10_4962',28,'147.74',2),

(10245,'S12_1666',38,'120.27',6),

(10245,'S18_1097',29,'114.34',8),

(10245,'S18_4600',21,'111.39',3),

(10245,'S18_4668',45,'48.80',7),

(10245,'S32_1268',37,'81.86',1),

(10245,'S32_3522',44,'54.94',5),

(10245,'S700_2824',44,'81.93',4),

(10246,'S12_4473',46,'99.54',5),

(10246,'S18_2238',40,'144.08',4),

(10246,'S18_2319',22,'100.64',8),

(10246,'S18_2432',30,'57.73',11),

(10246,'S18_3232',36,'145.63',9),

(10246,'S24_1444',44,'46.24',2),

(10246,'S24_2300',29,'118.84',10),

(10246,'S24_2840',49,'34.65',6),

(10246,'S24_4048',46,'100.54',1),

(10246,'S32_2509',35,'45.45',7),

(10246,'S50_1392',22,'113.44',3),

(10247,'S12_1108',44,'195.33',2),

(10247,'S12_3148',25,'140.50',3),

(10247,'S12_3891',27,'167.83',1),

(10247,'S18_4027',48,'143.62',5),

(10247,'S32_3207',40,'58.41',6),

(10247,'S50_1514',49,'51.55',4),

(10248,'S10_4757',20,'126.48',3),

(10248,'S18_3029',21,'80.86',1),

(10248,'S18_3140',32,'133.86',12),

(10248,'S18_3259',42,'95.80',14),

(10248,'S18_4522',42,'87.77',11),

(10248,'S24_2011',48,'122.89',10),

(10248,'S24_3151',30,'85.85',5),

(10248,'S24_3816',23,'83.02',2),

(10248,'S700_1138',36,'66.00',6),

(10248,'S700_1938',40,'81.41',13),

(10248,'S700_2610',32,'69.39',4),

(10248,'S700_3505',30,'84.14',7),

(10248,'S700_3962',35,'92.36',8),

(10248,'S72_3212',23,'53.51',9),

(10249,'S18_3856',46,'88.93',5),

(10249,'S24_2841',20,'54.81',1),

(10249,'S24_3420',25,'65.75',2),

(10249,'S700_2047',40,'85.99',4),

(10249,'S72_1253',32,'49.16',3),

(10250,'S18_1662',45,'148.23',14),

(10250,'S18_2581',27,'84.48',4),

(10250,'S24_1785',31,'95.20',6),

(10250,'S24_2000',32,'63.22',1),

(10250,'S24_3949',40,'61.42',13),

(10250,'S24_4278',37,'72.45',5),

(10250,'S32_1374',31,'99.89',2),

(10250,'S32_4289',50,'62.60',7),

(10250,'S50_1341',36,'36.66',8),

(10250,'S700_1691',31,'91.34',9),

(10250,'S700_2466',35,'90.75',11),

(10250,'S700_2834',44,'98.48',3),

(10250,'S700_3167',44,'76.00',10),

(10250,'S700_4002',38,'65.89',12),

(10251,'S10_1678',59,'93.79',2),

(10251,'S10_2016',44,'115.37',5),

(10251,'S10_4698',43,'172.36',4),

(10251,'S12_2823',46,'129.53',1),

(10251,'S18_2625',44,'58.15',6),

(10251,'S24_1578',50,'91.29',3),

(10252,'S18_3278',20,'74.78',2),

(10252,'S18_3482',41,'145.52',1),

(10252,'S18_3782',31,'50.36',5),

(10252,'S18_4721',26,'127.97',4),

(10252,'S24_2360',47,'63.03',8),

(10252,'S24_4620',38,'69.52',3),

(10252,'S32_2206',36,'36.21',6),

(10252,'S32_4485',25,'93.89',9),

(10252,'S50_4713',48,'72.41',7),

(10253,'S12_1099',24,'157.60',13),

(10253,'S12_3380',22,'102.17',11),

(10253,'S12_3990',25,'67.03',14),

(10253,'S12_4675',41,'109.40',10),

(10253,'S18_1129',26,'130.22',5),

(10253,'S18_1589',24,'103.29',1),

(10253,'S18_1889',23,'67.76',9),

(10253,'S18_1984',33,'130.87',4),

(10253,'S18_2870',37,'114.84',2),

(10253,'S18_3232',40,'145.63',6),

(10253,'S18_3685',31,'139.87',3),

(10253,'S24_2972',40,'34.74',7),

(10253,'S24_3371',24,'50.82',12),

(10253,'S24_3856',39,'115.15',8),

(10254,'S18_1749',49,'137.70',5),

(10254,'S18_2248',36,'55.09',4),

(10254,'S18_2325',41,'102.98',2),

(10254,'S18_4409',34,'80.99',6),

(10254,'S18_4933',30,'59.87',7),

(10254,'S24_1046',34,'66.88',11),

(10254,'S24_1628',32,'43.27',13),

(10254,'S24_1937',38,'28.88',1),

(10254,'S24_2766',31,'85.42',9),

(10254,'S24_2887',33,'111.57',8),

(10254,'S24_3191',42,'69.34',10),

(10254,'S24_3432',49,'101.73',12),

(10254,'S24_3969',20,'39.80',3),

(10255,'S18_2795',24,'135.00',1),

(10255,'S24_2022',37,'37.63',2),

(10256,'S18_1342',34,'93.49',2),

(10256,'S18_1367',29,'52.83',1),

(10257,'S18_2949',50,'92.19',1),

(10257,'S18_2957',49,'59.34',3),

(10257,'S18_3136',37,'83.78',2),

(10257,'S18_3320',26,'91.27',5),

(10257,'S24_4258',46,'81.81',4),

(10258,'S10_1949',32,'177.87',6),

(10258,'S12_1666',41,'133.94',3),

(10258,'S18_1097',41,'113.17',5),

(10258,'S18_4668',21,'49.81',4),

(10258,'S32_3522',20,'62.70',2),

(10258,'S700_2824',45,'86.99',1),

(10259,'S10_4962',26,'121.15',12),

(10259,'S12_4473',46,'117.32',4),

(10259,'S18_2238',30,'134.26',3),

(10259,'S18_2319',34,'120.28',7),

(10259,'S18_2432',30,'59.55',10),

(10259,'S18_3232',27,'152.41',8),

(10259,'S18_4600',41,'107.76',13),

(10259,'S24_1444',28,'46.82',1),

(10259,'S24_2300',47,'121.40',9),

(10259,'S24_2840',31,'31.47',5),

(10259,'S32_1268',45,'95.35',11),

(10259,'S32_2509',40,'45.99',6),

(10259,'S50_1392',29,'105.33',2),

(10260,'S12_1108',46,'180.79',5),

(10260,'S12_3148',30,'140.50',6),

(10260,'S12_3891',44,'169.56',4),

(10260,'S18_3140',32,'121.57',1),

(10260,'S18_3259',29,'92.77',3),

(10260,'S18_4027',23,'137.88',8),

(10260,'S24_4048',23,'117.10',10),

(10260,'S32_3207',27,'55.30',9),

(10260,'S50_1514',21,'56.24',7),

(10260,'S700_1938',33,'80.55',2),

(10261,'S10_4757',27,'116.96',1),

(10261,'S18_4522',20,'80.75',9),

(10261,'S24_2011',36,'105.69',8),

(10261,'S24_3151',22,'79.66',3),

(10261,'S700_1138',34,'64.00',4),

(10261,'S700_2610',44,'58.55',2),

(10261,'S700_3505',25,'89.15',5),

(10261,'S700_3962',50,'88.39',6),

(10261,'S72_3212',29,'43.68',7),

(10262,'S18_1662',49,'157.69',9),

(10262,'S18_3029',32,'81.72',15),

(10262,'S18_3856',34,'85.75',14),

(10262,'S24_1785',34,'98.48',1),

(10262,'S24_2841',24,'63.71',10),

(10262,'S24_3420',46,'65.75',11),

(10262,'S24_3816',49,'82.18',16),

(10262,'S24_3949',48,'58.69',8),

(10262,'S32_4289',40,'63.97',2),

(10262,'S50_1341',49,'35.78',3),

(10262,'S700_1691',40,'87.69',4),

(10262,'S700_2047',44,'83.28',13),

(10262,'S700_2466',33,'81.77',6),

(10262,'S700_3167',27,'64.80',5),

(10262,'S700_4002',35,'64.41',7),

(10262,'S72_1253',21,'41.71',12),

(10263,'S10_1678',34,'89.00',2),

(10263,'S10_2016',40,'107.05',5),

(10263,'S10_4698',41,'193.66',4),

(10263,'S12_2823',48,'123.51',1),

(10263,'S18_2581',33,'67.58',10),

(10263,'S18_2625',34,'50.27',6),

(10263,'S24_1578',42,'109.32',3),

(10263,'S24_2000',37,'67.03',7),

(10263,'S24_4278',24,'59.41',11),

(10263,'S32_1374',31,'93.90',8),

(10263,'S700_2834',47,'117.46',9),

(10264,'S18_3782',48,'58.44',3),

(10264,'S18_4721',20,'124.99',2),

(10264,'S24_2360',37,'61.64',6),

(10264,'S24_4620',47,'75.18',1),

(10264,'S32_2206',20,'39.02',4),

(10264,'S32_4485',34,'100.01',7),

(10264,'S50_4713',47,'67.53',5),

(10265,'S18_3278',45,'74.78',2),

(10265,'S18_3482',49,'123.47',1),

(10266,'S12_1099',44,'188.73',14),

(10266,'S12_3380',22,'110.39',12),

(10266,'S12_3990',35,'67.83',15),

(10266,'S12_4675',40,'112.86',11),

(10266,'S18_1129',21,'131.63',6),

(10266,'S18_1589',36,'99.55',2),

(10266,'S18_1889',33,'77.00',10),

(10266,'S18_1984',49,'139.41',5),

(10266,'S18_2870',20,'113.52',3),

(10266,'S18_3232',29,'137.17',7),

(10266,'S18_3685',33,'127.15',4),

(10266,'S24_1628',28,'40.25',1),

(10266,'S24_2972',34,'35.12',8),

(10266,'S24_3371',47,'56.33',13),

(10266,'S24_3856',24,'119.37',9),

(10267,'S18_4933',36,'71.27',1),

(10267,'S24_1046',40,'72.02',5),

(10267,'S24_2766',38,'76.33',3),

(10267,'S24_2887',43,'93.95',2),

(10267,'S24_3191',44,'83.90',4),

(10267,'S24_3432',43,'98.51',6),

(10268,'S18_1342',49,'93.49',3),

(10268,'S18_1367',26,'45.82',2),

(10268,'S18_1749',34,'164.90',10),

(10268,'S18_2248',31,'60.54',9),

(10268,'S18_2325',50,'124.59',7),

(10268,'S18_2795',35,'148.50',4),

(10268,'S18_3320',39,'96.23',1),

(10268,'S18_4409',35,'84.67',11),

(10268,'S24_1937',33,'31.86',6),

(10268,'S24_2022',40,'36.29',5),

(10268,'S24_3969',30,'37.75',8),

(10269,'S18_2957',32,'57.46',1),

(10269,'S24_4258',48,'95.44',2),

(10270,'S10_1949',21,'171.44',9),

(10270,'S10_4962',32,'124.10',2),

(10270,'S12_1666',28,'135.30',6),

(10270,'S18_1097',43,'94.50',8),

(10270,'S18_2949',31,'81.05',10),

(10270,'S18_3136',38,'85.87',11),

(10270,'S18_4600',38,'107.76',3),

(10270,'S18_4668',44,'40.25',7),

(10270,'S32_1268',32,'93.42',1),

(10270,'S32_3522',21,'52.36',5),

(10270,'S700_2824',46,'101.15',4),

(10271,'S12_4473',31,'99.54',5),

(10271,'S18_2238',50,'147.36',4),

(10271,'S18_2319',50,'121.50',8),

(10271,'S18_2432',25,'59.55',11),

(10271,'S18_3232',20,'169.34',9),

(10271,'S24_1444',45,'49.71',2),

(10271,'S24_2300',43,'122.68',10),

(10271,'S24_2840',38,'28.64',6),

(10271,'S24_4048',22,'110.00',1),

(10271,'S32_2509',35,'51.95',7),

(10271,'S50_1392',34,'93.76',3),

(10272,'S12_1108',35,'187.02',2),

(10272,'S12_3148',27,'123.89',3),

(10272,'S12_3891',39,'148.80',1),

(10272,'S18_4027',25,'126.39',5),

(10272,'S32_3207',45,'56.55',6),

(10272,'S50_1514',43,'53.89',4),

(10273,'S10_4757',30,'136.00',4),

(10273,'S18_3029',34,'84.30',2),

(10273,'S18_3140',40,'117.47',13),

(10273,'S18_3259',47,'87.73',15),

(10273,'S18_3856',50,'105.87',1),

(10273,'S18_4522',33,'72.85',12),

(10273,'S24_2011',22,'103.23',11),

(10273,'S24_3151',27,'84.08',6),

(10273,'S24_3816',48,'83.86',3),

(10273,'S700_1138',21,'66.00',7),

(10273,'S700_1938',21,'77.95',14),

(10273,'S700_2610',42,'57.82',5),

(10273,'S700_3505',40,'91.15',8),

(10273,'S700_3962',26,'89.38',9),

(10273,'S72_3212',37,'51.32',10),

(10274,'S18_1662',41,'129.31',1),

(10274,'S24_2841',40,'56.86',2),

(10274,'S24_3420',24,'65.09',3),

(10274,'S700_2047',24,'75.13',5),

(10274,'S72_1253',32,'49.66',4),

(10275,'S10_1678',45,'81.35',1),

(10275,'S10_2016',22,'115.37',4),

(10275,'S10_4698',36,'154.93',3),

(10275,'S18_2581',35,'70.12',9),

(10275,'S18_2625',37,'52.09',5),

(10275,'S24_1578',21,'105.94',2),

(10275,'S24_1785',25,'97.38',11),

(10275,'S24_2000',30,'61.70',6),

(10275,'S24_3949',41,'58.00',18),

(10275,'S24_4278',27,'67.38',10),

(10275,'S32_1374',23,'89.90',7),

(10275,'S32_4289',28,'58.47',12),

(10275,'S50_1341',38,'40.15',13),

(10275,'S700_1691',32,'85.86',14),

(10275,'S700_2466',39,'82.77',16),

(10275,'S700_2834',48,'102.04',8),

(10275,'S700_3167',43,'72.00',15),

(10275,'S700_4002',31,'59.96',17),

(10276,'S12_1099',50,'184.84',3),

(10276,'S12_2823',43,'150.62',14),

(10276,'S12_3380',47,'104.52',1),

(10276,'S12_3990',38,'67.83',4),

(10276,'S18_3278',38,'78.00',6),

(10276,'S18_3482',30,'139.64',5),

(10276,'S18_3782',33,'54.71',9),

(10276,'S18_4721',48,'120.53',8),

(10276,'S24_2360',46,'61.64',12),

(10276,'S24_3371',20,'58.17',2),

(10276,'S24_4620',48,'67.10',7),

(10276,'S32_2206',27,'35.40',10),

(10276,'S32_4485',38,'94.91',13),

(10276,'S50_4713',21,'67.53',11),

(10277,'S12_4675',28,'93.28',1),

(10278,'S18_1129',34,'114.65',6),

(10278,'S18_1589',23,'107.02',2),

(10278,'S18_1889',29,'73.15',10),

(10278,'S18_1984',29,'118.07',5),

(10278,'S18_2870',39,'117.48',3),

(10278,'S18_3232',42,'167.65',7),

(10278,'S18_3685',31,'114.44',4),

(10278,'S24_1628',35,'48.80',1),

(10278,'S24_2972',31,'37.38',8),

(10278,'S24_3856',25,'136.22',9),

(10279,'S18_4933',26,'68.42',1),

(10279,'S24_1046',32,'68.35',5),

(10279,'S24_2766',49,'76.33',3),

(10279,'S24_2887',48,'106.87',2),

(10279,'S24_3191',33,'78.76',4),

(10279,'S24_3432',48,'95.30',6),

(10280,'S10_1949',34,'205.73',2),

(10280,'S18_1097',24,'98.00',1),

(10280,'S18_1342',50,'87.33',9),

(10280,'S18_1367',27,'47.44',8),

(10280,'S18_1749',26,'161.50',16),

(10280,'S18_2248',25,'53.28',15),

(10280,'S18_2325',37,'109.33',13),

(10280,'S18_2795',22,'158.63',10),

(10280,'S18_2949',46,'82.06',3),

(10280,'S18_2957',43,'54.34',5),

(10280,'S18_3136',29,'102.63',4),

(10280,'S18_3320',34,'99.21',7),

(10280,'S18_4409',35,'77.31',17),

(10280,'S24_1937',20,'29.87',12),

(10280,'S24_2022',45,'36.29',11),

(10280,'S24_3969',33,'35.29',14),

(10280,'S24_4258',21,'79.86',6),

(10281,'S10_4962',44,'132.97',9),

(10281,'S12_1666',25,'127.10',13),

(10281,'S12_4473',41,'98.36',1),

(10281,'S18_2319',48,'114.14',4),

(10281,'S18_2432',29,'56.52',7),

(10281,'S18_3232',25,'135.47',5),

(10281,'S18_4600',25,'96.86',10),

(10281,'S18_4668',44,'42.76',14),

(10281,'S24_2300',25,'112.46',6),

(10281,'S24_2840',20,'33.95',2),

(10281,'S32_1268',29,'80.90',8),

(10281,'S32_2509',31,'44.91',3),

(10281,'S32_3522',36,'59.47',12),

(10281,'S700_2824',27,'89.01',11),

(10282,'S12_1108',41,'176.63',5),

(10282,'S12_3148',27,'142.02',6),

(10282,'S12_3891',24,'169.56',4),

(10282,'S18_2238',23,'147.36',13),

(10282,'S18_3140',43,'122.93',1),

(10282,'S18_3259',36,'88.74',3),

(10282,'S18_4027',31,'132.13',8),

(10282,'S24_1444',29,'49.71',11),

(10282,'S24_4048',39,'96.99',10),

(10282,'S32_3207',36,'51.58',9),

(10282,'S50_1392',38,'114.59',12),

(10282,'S50_1514',37,'56.24',7),

(10282,'S700_1938',43,'77.95',2),

(10283,'S10_4757',25,'130.56',6),

(10283,'S18_3029',21,'78.28',4),

(10283,'S18_3856',46,'100.58',3),

(10283,'S18_4522',34,'71.97',14),

(10283,'S24_2011',42,'99.54',13),

(10283,'S24_3151',34,'80.54',8),

(10283,'S24_3816',33,'77.15',5),

(10283,'S700_1138',45,'62.00',9),

(10283,'S700_2047',20,'74.23',2),

(10283,'S700_2610',47,'68.67',7),

(10283,'S700_3505',22,'88.15',10),

(10283,'S700_3962',38,'85.41',11),

(10283,'S72_1253',43,'41.22',1),

(10283,'S72_3212',33,'49.14',12),

(10284,'S18_1662',45,'137.19',11),

(10284,'S18_2581',31,'68.43',1),

(10284,'S24_1785',22,'101.76',3),

(10284,'S24_2841',30,'65.08',12),

(10284,'S24_3420',39,'59.83',13),

(10284,'S24_3949',21,'65.51',10),

(10284,'S24_4278',21,'66.65',2),

(10284,'S32_4289',50,'60.54',4),

(10284,'S50_1341',33,'35.78',5),

(10284,'S700_1691',24,'87.69',6),

(10284,'S700_2466',45,'95.73',8),

(10284,'S700_3167',25,'68.00',7),

(10284,'S700_4002',32,'73.29',9),

(10285,'S10_1678',36,'95.70',6),

(10285,'S10_2016',47,'110.61',9),

(10285,'S10_4698',27,'166.55',8),

(10285,'S12_2823',49,'131.04',5),

(10285,'S18_2625',20,'50.88',10),

(10285,'S24_1578',34,'91.29',7),

(10285,'S24_2000',39,'61.70',11),

(10285,'S24_2360',38,'64.41',3),

(10285,'S32_1374',37,'82.91',12),

(10285,'S32_2206',37,'36.61',1),

(10285,'S32_4485',26,'100.01',4),

(10285,'S50_4713',39,'76.48',2),

(10285,'S700_2834',45,'102.04',13),

(10286,'S18_3782',38,'51.60',1),

(10287,'S12_1099',21,'190.68',12),

(10287,'S12_3380',45,'117.44',10),

(10287,'S12_3990',41,'74.21',13),

(10287,'S12_4675',23,'107.10',9),

(10287,'S18_1129',41,'113.23',4),

(10287,'S18_1889',44,'61.60',8),

(10287,'S18_1984',24,'123.76',3),

(10287,'S18_2870',44,'114.84',1),

(10287,'S18_3232',36,'137.17',5),

(10287,'S18_3278',43,'68.35',15),

(10287,'S18_3482',40,'127.88',14),

(10287,'S18_3685',27,'139.87',2),

(10287,'S18_4721',34,'119.04',17),

(10287,'S24_2972',36,'31.34',6),

(10287,'S24_3371',20,'58.17',11),

(10287,'S24_3856',36,'137.62',7),

(10287,'S24_4620',40,'79.22',16),

(10288,'S18_1589',20,'120.71',14),

(10288,'S18_1749',32,'168.30',5),

(10288,'S18_2248',28,'50.25',4),

(10288,'S18_2325',31,'102.98',2),

(10288,'S18_4409',35,'90.19',6),

(10288,'S18_4933',23,'57.02',7),

(10288,'S24_1046',36,'66.88',11),

(10288,'S24_1628',50,'49.30',13),

(10288,'S24_1937',29,'32.19',1),

(10288,'S24_2766',35,'81.78',9),

(10288,'S24_2887',48,'109.22',8),

(10288,'S24_3191',34,'76.19',10),

(10288,'S24_3432',41,'101.73',12),

(10288,'S24_3969',33,'37.75',3),

(10289,'S18_1342',38,'92.47',2),

(10289,'S18_1367',24,'44.75',1),

(10289,'S18_2795',43,'141.75',3),

(10289,'S24_2022',45,'41.22',4),

(10290,'S18_3320',26,'80.36',2),

(10290,'S24_4258',45,'83.76',1),

(10291,'S10_1949',37,'210.01',11),

(10291,'S10_4962',30,'141.83',4),

(10291,'S12_1666',41,'123.00',8),

(10291,'S18_1097',41,'96.84',10),

(10291,'S18_2432',26,'52.26',2),

(10291,'S18_2949',47,'99.28',12),

(10291,'S18_2957',37,'56.21',14),

(10291,'S18_3136',23,'93.20',13),

(10291,'S18_4600',48,'96.86',5),

(10291,'S18_4668',29,'45.28',9),

(10291,'S24_2300',48,'109.90',1),

(10291,'S32_1268',26,'82.83',3),

(10291,'S32_3522',32,'53.00',7),

(10291,'S700_2824',28,'86.99',6),

(10292,'S12_4473',21,'94.80',8),

(10292,'S18_2238',26,'140.81',7),

(10292,'S18_2319',41,'103.09',11),

(10292,'S18_3232',21,'147.33',12),

(10292,'S18_4027',44,'114.90',2),

(10292,'S24_1444',40,'48.55',5),

(10292,'S24_2840',39,'34.30',9),

(10292,'S24_4048',27,'113.55',4),

(10292,'S32_2509',50,'54.11',10),

(10292,'S32_3207',31,'59.65',3),

(10292,'S50_1392',41,'113.44',6),

(10292,'S50_1514',35,'49.79',1),

(10293,'S12_1108',46,'187.02',8),

(10293,'S12_3148',24,'129.93',9),

(10293,'S12_3891',45,'171.29',7),

(10293,'S18_3140',24,'110.64',4),

(10293,'S18_3259',22,'91.76',6),

(10293,'S18_4522',49,'72.85',3),

(10293,'S24_2011',21,'111.83',2),

(10293,'S700_1938',29,'77.95',5),

(10293,'S72_3212',32,'51.32',1),

(10294,'S700_3962',45,'98.32',1),

(10295,'S10_4757',24,'136.00',1),

(10295,'S24_3151',46,'84.08',3),

(10295,'S700_1138',26,'62.00',4),

(10295,'S700_2610',44,'71.56',2),

(10295,'S700_3505',34,'93.16',5),

(10296,'S18_1662',36,'146.65',7),

(10296,'S18_3029',21,'69.68',13),

(10296,'S18_3856',22,'105.87',12),

(10296,'S24_2841',21,'60.97',8),

(10296,'S24_3420',31,'63.78',9),

(10296,'S24_3816',22,'83.02',14),

(10296,'S24_3949',32,'63.46',6),

(10296,'S50_1341',26,'41.02',1),

(10296,'S700_1691',42,'75.81',2),

(10296,'S700_2047',34,'89.61',11),

(10296,'S700_2466',24,'96.73',4),

(10296,'S700_3167',22,'74.40',3),

(10296,'S700_4002',47,'61.44',5),

(10296,'S72_1253',21,'46.68',10),

(10297,'S18_2581',25,'81.95',4),

(10297,'S24_1785',32,'107.23',6),

(10297,'S24_2000',32,'70.08',1),

(10297,'S24_4278',23,'71.73',5),

(10297,'S32_1374',26,'88.90',2),

(10297,'S32_4289',28,'63.29',7),

(10297,'S700_2834',35,'111.53',3),

(10298,'S10_2016',39,'105.86',1),

(10298,'S18_2625',32,'60.57',2),

(10299,'S10_1678',23,'76.56',9),

(10299,'S10_4698',29,'164.61',11),

(10299,'S12_2823',24,'123.51',8),

(10299,'S18_3782',39,'62.17',3),

(10299,'S18_4721',49,'119.04',2),

(10299,'S24_1578',47,'107.07',10),

(10299,'S24_2360',33,'58.87',6),

(10299,'S24_4620',32,'66.29',1),

(10299,'S32_2206',24,'36.21',4),

(10299,'S32_4485',38,'84.70',7),

(10299,'S50_4713',44,'77.29',5),

(10300,'S12_1099',33,'184.84',5),

(10300,'S12_3380',29,'116.27',3),

(10300,'S12_3990',22,'76.61',6),

(10300,'S12_4675',23,'95.58',2),

(10300,'S18_1889',41,'63.14',1),

(10300,'S18_3278',49,'65.94',8),

(10300,'S18_3482',23,'144.05',7),

(10300,'S24_3371',31,'52.05',4),

(10301,'S18_1129',37,'114.65',8),

(10301,'S18_1589',32,'118.22',4),

(10301,'S18_1984',47,'119.49',7),

(10301,'S18_2870',22,'113.52',5),

(10301,'S18_3232',23,'135.47',9),

(10301,'S18_3685',39,'137.04',6),

(10301,'S24_1046',27,'64.67',1),

(10301,'S24_1628',22,'40.75',3),

(10301,'S24_2972',48,'32.10',10),

(10301,'S24_3432',22,'86.73',2),

(10301,'S24_3856',50,'122.17',11),

(10302,'S18_1749',43,'166.60',1),

(10302,'S18_4409',38,'82.83',2),

(10302,'S18_4933',23,'70.56',3),

(10302,'S24_2766',49,'75.42',5),

(10302,'S24_2887',45,'104.52',4),

(10302,'S24_3191',48,'74.48',6),

(10303,'S18_2248',46,'56.91',2),

(10303,'S24_3969',24,'35.70',1),

(10304,'S10_1949',47,'201.44',6),

(10304,'S12_1666',39,'117.54',3),

(10304,'S18_1097',46,'106.17',5),

(10304,'S18_1342',37,'95.55',13),

(10304,'S18_1367',37,'46.90',12),

(10304,'S18_2325',24,'102.98',17),

(10304,'S18_2795',20,'141.75',14),

(10304,'S18_2949',46,'98.27',7),

(10304,'S18_2957',24,'54.34',9),

(10304,'S18_3136',26,'90.06',8),

(10304,'S18_3320',38,'95.24',11),

(10304,'S18_4668',34,'44.27',4),

(10304,'S24_1937',23,'29.21',16),

(10304,'S24_2022',44,'42.11',15),

(10304,'S24_4258',33,'80.83',10),

(10304,'S32_3522',36,'52.36',2),

(10304,'S700_2824',40,'80.92',1),

(10305,'S10_4962',38,'130.01',13),

(10305,'S12_4473',38,'107.84',5),

(10305,'S18_2238',27,'132.62',4),

(10305,'S18_2319',36,'117.82',8),

(10305,'S18_2432',41,'58.95',11),

(10305,'S18_3232',37,'160.87',9),

(10305,'S18_4600',22,'112.60',14),

(10305,'S24_1444',45,'48.55',2),

(10305,'S24_2300',24,'107.34',10),

(10305,'S24_2840',48,'30.76',6),

(10305,'S24_4048',36,'118.28',1),

(10305,'S32_1268',28,'94.38',12),

(10305,'S32_2509',40,'48.70',7),

(10305,'S50_1392',42,'109.96',3),

(10306,'S12_1108',31,'182.86',13),

(10306,'S12_3148',34,'145.04',14),

(10306,'S12_3891',20,'145.34',12),

(10306,'S18_3140',32,'114.74',9),

(10306,'S18_3259',40,'83.70',11),

(10306,'S18_4027',23,'126.39',16),

(10306,'S18_4522',39,'85.14',8),

(10306,'S24_2011',29,'109.37',7),

(10306,'S24_3151',31,'76.12',2),

(10306,'S32_3207',46,'60.28',17),

(10306,'S50_1514',34,'51.55',15),

(10306,'S700_1138',50,'61.34',3),

(10306,'S700_1938',38,'73.62',10),

(10306,'S700_2610',43,'62.16',1),

(10306,'S700_3505',32,'99.17',4),

(10306,'S700_3962',30,'87.39',5),

(10306,'S72_3212',35,'48.05',6),

(10307,'S10_4757',22,'118.32',9),

(10307,'S18_1662',39,'135.61',1),

(10307,'S18_3029',31,'71.40',7),

(10307,'S18_3856',48,'92.11',6),

(10307,'S24_2841',25,'58.23',2),

(10307,'S24_3420',22,'64.44',3),

(10307,'S24_3816',22,'75.47',8),

(10307,'S700_2047',34,'81.47',5),

(10307,'S72_1253',34,'44.20',4),

(10308,'S10_2016',34,'115.37',2),

(10308,'S10_4698',20,'187.85',1),

(10308,'S18_2581',27,'81.95',7),

(10308,'S18_2625',34,'48.46',3),

(10308,'S24_1785',31,'99.57',9),

(10308,'S24_2000',47,'68.55',4),

(10308,'S24_3949',43,'58.00',16),

(10308,'S24_4278',44,'71.73',8),

(10308,'S32_1374',24,'99.89',5),

(10308,'S32_4289',46,'61.22',10),

(10308,'S50_1341',47,'37.09',11),

(10308,'S700_1691',21,'73.07',12),

(10308,'S700_2466',35,'88.75',14),

(10308,'S700_2834',31,'100.85',6),

(10308,'S700_3167',21,'79.20',13),

(10308,'S700_4002',39,'62.93',15),

(10309,'S10_1678',41,'94.74',5),

(10309,'S12_2823',26,'144.60',4),

(10309,'S24_1578',21,'96.92',6),

(10309,'S24_2360',24,'59.56',2),

(10309,'S32_4485',50,'93.89',3),

(10309,'S50_4713',28,'74.04',1),

(10310,'S12_1099',33,'165.38',10),

(10310,'S12_3380',24,'105.70',8),

(10310,'S12_3990',49,'77.41',11),

(10310,'S12_4675',25,'101.34',7),

(10310,'S18_1129',37,'128.80',2),

(10310,'S18_1889',20,'66.99',6),

(10310,'S18_1984',24,'129.45',1),

(10310,'S18_3232',48,'159.18',3),

(10310,'S18_3278',27,'70.76',13),

(10310,'S18_3482',49,'122.00',12),

(10310,'S18_3782',42,'59.06',16),

(10310,'S18_4721',40,'133.92',15),

(10310,'S24_2972',33,'33.23',4),

(10310,'S24_3371',38,'50.21',9),

(10310,'S24_3856',45,'139.03',5),

(10310,'S24_4620',49,'75.18',14),

(10310,'S32_2206',36,'38.62',17),

(10311,'S18_1589',29,'124.44',9),

(10311,'S18_2870',43,'114.84',10),

(10311,'S18_3685',32,'134.22',11),

(10311,'S18_4409',41,'92.03',1),

(10311,'S18_4933',25,'66.99',2),

(10311,'S24_1046',26,'70.55',6),

(10311,'S24_1628',45,'48.80',8),

(10311,'S24_2766',28,'89.05',4),

(10311,'S24_2887',43,'116.27',3),

(10311,'S24_3191',25,'85.61',5),

(10311,'S24_3432',46,'91.02',7),

(10312,'S10_1949',48,'214.30',3),

(10312,'S18_1097',32,'101.50',2),

(10312,'S18_1342',43,'102.74',10),

(10312,'S18_1367',25,'43.67',9),

(10312,'S18_1749',48,'146.20',17),

(10312,'S18_2248',30,'48.43',16),

(10312,'S18_2325',31,'111.87',14),

(10312,'S18_2795',25,'150.19',11),

(10312,'S18_2949',37,'91.18',4),

(10312,'S18_2957',35,'54.34',6),

(10312,'S18_3136',38,'93.20',5),

(10312,'S18_3320',33,'84.33',8),

(10312,'S18_4668',39,'44.27',1),

(10312,'S24_1937',39,'27.88',13),

(10312,'S24_2022',23,'43.46',12),

(10312,'S24_3969',31,'40.21',15),

(10312,'S24_4258',44,'96.42',7),

(10313,'S10_4962',40,'141.83',7),

(10313,'S12_1666',21,'131.20',11),

(10313,'S18_2319',29,'109.23',2),

(10313,'S18_2432',34,'52.87',5),

(10313,'S18_3232',25,'143.94',3),

(10313,'S18_4600',28,'110.18',8),

(10313,'S24_2300',42,'102.23',4),

(10313,'S32_1268',27,'96.31',6),

(10313,'S32_2509',38,'48.70',1),

(10313,'S32_3522',34,'55.59',10),

(10313,'S700_2824',30,'96.09',9),

(10314,'S12_1108',38,'176.63',5),

(10314,'S12_3148',46,'125.40',6),

(10314,'S12_3891',36,'169.56',4),

(10314,'S12_4473',45,'95.99',14),

(10314,'S18_2238',42,'135.90',13),

(10314,'S18_3140',20,'129.76',1),

(10314,'S18_3259',23,'84.71',3),

(10314,'S18_4027',29,'129.26',8),

(10314,'S24_1444',44,'51.44',11),

(10314,'S24_2840',39,'31.82',15),

(10314,'S24_4048',38,'111.18',10),

(10314,'S32_3207',35,'58.41',9),

(10314,'S50_1392',28,'115.75',12),

(10314,'S50_1514',38,'50.38',7),

(10314,'S700_1938',23,'83.15',2),

(10315,'S18_4522',36,'78.12',7),

(10315,'S24_2011',35,'111.83',6),

(10315,'S24_3151',24,'78.77',1),

(10315,'S700_1138',41,'60.67',2),

(10315,'S700_3505',31,'99.17',3),

(10315,'S700_3962',37,'88.39',4),

(10315,'S72_3212',40,'51.32',5),

(10316,'S10_4757',33,'126.48',17),

(10316,'S18_1662',27,'140.34',9),

(10316,'S18_3029',21,'72.26',15),

(10316,'S18_3856',47,'89.99',14),

(10316,'S24_1785',25,'93.01',1),

(10316,'S24_2841',34,'67.14',10),

(10316,'S24_3420',47,'55.23',11),

(10316,'S24_3816',25,'77.15',16),

(10316,'S24_3949',30,'67.56',8),

(10316,'S32_4289',24,'59.16',2),

(10316,'S50_1341',34,'36.66',3),

(10316,'S700_1691',34,'74.90',4),

(10316,'S700_2047',45,'73.32',13),

(10316,'S700_2466',23,'85.76',6),

(10316,'S700_2610',48,'67.22',18),

(10316,'S700_3167',48,'77.60',5),

(10316,'S700_4002',44,'68.11',7),

(10316,'S72_1253',34,'43.70',12),

(10317,'S24_4278',35,'69.55',1),

(10318,'S10_1678',46,'84.22',1),

(10318,'S10_2016',45,'102.29',4),

(10318,'S10_4698',37,'189.79',3),

(10318,'S18_2581',31,'81.95',9),

(10318,'S18_2625',42,'49.67',5),

(10318,'S24_1578',48,'93.54',2),

(10318,'S24_2000',26,'60.94',6),

(10318,'S32_1374',47,'81.91',7),

(10318,'S700_2834',50,'102.04',8),

(10319,'S12_2823',30,'134.05',9),

(10319,'S18_3278',46,'77.19',1),

(10319,'S18_3782',44,'54.71',4),

(10319,'S18_4721',45,'120.53',3),

(10319,'S24_2360',31,'65.80',7),

(10319,'S24_4620',43,'78.41',2),

(10319,'S32_2206',29,'35.00',5),

(10319,'S32_4485',22,'96.95',8),

(10319,'S50_4713',45,'79.73',6),

(10320,'S12_1099',31,'184.84',3),

(10320,'S12_3380',35,'102.17',1),

(10320,'S12_3990',38,'63.84',4),

(10320,'S18_3482',25,'139.64',5),

(10320,'S24_3371',26,'60.62',2),

(10321,'S12_4675',24,'105.95',15),

(10321,'S18_1129',41,'123.14',10),

(10321,'S18_1589',44,'120.71',6),

(10321,'S18_1889',37,'73.92',14),

(10321,'S18_1984',25,'142.25',9),

(10321,'S18_2870',27,'126.72',7),

(10321,'S18_3232',33,'164.26',11),

(10321,'S18_3685',28,'138.45',8),

(10321,'S24_1046',30,'68.35',3),

(10321,'S24_1628',48,'42.76',5),

(10321,'S24_2766',30,'74.51',1),

(10321,'S24_2972',37,'31.72',12),

(10321,'S24_3191',39,'81.33',2),

(10321,'S24_3432',21,'103.87',4),

(10321,'S24_3856',26,'137.62',13),

(10322,'S10_1949',40,'180.01',1),

(10322,'S10_4962',46,'141.83',8),

(10322,'S12_1666',27,'136.67',9),

(10322,'S18_1097',22,'101.50',10),

(10322,'S18_1342',43,'92.47',14),

(10322,'S18_1367',41,'44.21',5),

(10322,'S18_2325',50,'120.77',6),

(10322,'S18_2432',35,'57.12',11),

(10322,'S18_2795',36,'158.63',2),

(10322,'S18_2949',33,'100.30',12),

(10322,'S18_2957',41,'54.34',13),

(10322,'S18_3136',48,'90.06',7),

(10322,'S24_1937',20,'26.55',3),

(10322,'S24_2022',30,'40.77',4),

(10323,'S18_3320',33,'88.30',2),

(10323,'S18_4600',47,'96.86',1),

(10324,'S12_3148',27,'148.06',1),

(10324,'S12_4473',26,'100.73',7),

(10324,'S18_2238',47,'142.45',8),

(10324,'S18_2319',33,'105.55',10),

(10324,'S18_3232',27,'137.17',12),

(10324,'S18_4027',49,'120.64',13),

(10324,'S18_4668',38,'49.81',6),

(10324,'S24_1444',25,'49.71',14),

(10324,'S24_2300',31,'107.34',2),

(10324,'S24_2840',30,'29.35',9),

(10324,'S24_4258',33,'95.44',3),

(10324,'S32_1268',20,'91.49',11),

(10324,'S32_3522',48,'60.76',4),

(10324,'S700_2824',34,'80.92',5),

(10325,'S10_4757',47,'111.52',6),

(10325,'S12_1108',42,'193.25',8),

(10325,'S12_3891',24,'166.10',1),

(10325,'S18_3140',24,'114.74',9),

(10325,'S24_4048',44,'114.73',5),

(10325,'S32_2509',38,'44.37',3),

(10325,'S32_3207',28,'55.30',2),

(10325,'S50_1392',38,'99.55',4),

(10325,'S50_1514',44,'56.24',7),

(10326,'S18_3259',32,'94.79',6),

(10326,'S18_4522',50,'73.73',5),

(10326,'S24_2011',41,'120.43',4),

(10326,'S24_3151',41,'86.74',3),

(10326,'S24_3816',20,'81.34',2),

(10326,'S700_1138',39,'60.67',1),

(10327,'S18_1662',25,'154.54',6),

(10327,'S18_2581',45,'74.34',8),

(10327,'S18_3029',25,'74.84',5),

(10327,'S700_1938',20,'79.68',7),

(10327,'S700_2610',21,'65.05',1),

(10327,'S700_3505',43,'85.14',2),

(10327,'S700_3962',37,'83.42',3),

(10327,'S72_3212',37,'48.05',4),

(10328,'S18_3856',34,'104.81',6),

(10328,'S24_1785',47,'87.54',14),

(10328,'S24_2841',48,'67.82',1),

(10328,'S24_3420',20,'56.55',2),

(10328,'S24_3949',35,'55.96',3),

(10328,'S24_4278',43,'69.55',4),

(10328,'S32_4289',24,'57.10',5),

(10328,'S50_1341',34,'42.33',7),

(10328,'S700_1691',27,'84.03',8),

(10328,'S700_2047',41,'75.13',9),

(10328,'S700_2466',37,'95.73',10),

(10328,'S700_2834',33,'117.46',11),

(10328,'S700_3167',33,'71.20',13),

(10328,'S700_4002',39,'69.59',12),

(10329,'S10_1678',42,'80.39',1),

(10329,'S10_2016',20,'109.42',2),

(10329,'S10_4698',26,'164.61',3),

(10329,'S12_1099',41,'182.90',5),

(10329,'S12_2823',24,'128.03',6),

(10329,'S12_3380',46,'117.44',13),

(10329,'S12_3990',33,'74.21',14),

(10329,'S12_4675',39,'102.49',15),

(10329,'S18_1889',29,'66.22',9),

(10329,'S18_2625',38,'55.72',12),

(10329,'S18_3278',38,'65.13',10),

(10329,'S24_1578',30,'104.81',7),

(10329,'S24_2000',37,'71.60',4),

(10329,'S32_1374',45,'80.91',11),

(10329,'S72_1253',44,'41.22',8),

(10330,'S18_3482',37,'136.70',3),

(10330,'S18_3782',29,'59.06',2),

(10330,'S18_4721',50,'133.92',4),

(10330,'S24_2360',42,'56.10',1),

(10331,'S18_1129',46,'120.31',6),

(10331,'S18_1589',44,'99.55',14),

(10331,'S18_1749',44,'154.70',7),

(10331,'S18_1984',30,'135.14',8),

(10331,'S18_2870',26,'130.68',10),

(10331,'S18_3232',27,'169.34',11),

(10331,'S18_3685',26,'132.80',12),

(10331,'S24_2972',27,'37.00',13),

(10331,'S24_3371',25,'55.11',9),

(10331,'S24_3856',21,'139.03',1),

(10331,'S24_4620',41,'70.33',2),

(10331,'S32_2206',28,'33.39',3),

(10331,'S32_4485',32,'100.01',4),

(10331,'S50_4713',20,'74.04',5),

(10332,'S18_1342',46,'89.38',15),

(10332,'S18_1367',27,'51.21',16),

(10332,'S18_2248',38,'53.88',9),

(10332,'S18_2325',35,'116.96',8),

(10332,'S18_2795',24,'138.38',1),

(10332,'S18_2957',26,'53.09',17),

(10332,'S18_3136',40,'100.53',18),

(10332,'S18_4409',50,'92.03',2),

(10332,'S18_4933',21,'70.56',3),

(10332,'S24_1046',23,'61.73',4),

(10332,'S24_1628',20,'47.29',5),

(10332,'S24_1937',45,'29.87',6),

(10332,'S24_2022',26,'43.01',10),

(10332,'S24_2766',39,'84.51',7),

(10332,'S24_2887',44,'108.04',11),

(10332,'S24_3191',45,'77.91',12),

(10332,'S24_3432',31,'94.23',13),

(10332,'S24_3969',41,'34.47',14),

(10333,'S10_1949',26,'188.58',3),

(10333,'S12_1666',33,'121.64',6),

(10333,'S18_1097',29,'110.84',7),

(10333,'S18_2949',31,'95.23',5),

(10333,'S18_3320',46,'95.24',2),

(10333,'S18_4668',24,'42.26',8),

(10333,'S24_4258',39,'95.44',1),

(10333,'S32_3522',33,'62.05',4),

(10334,'S10_4962',26,'130.01',2),

(10334,'S18_2319',46,'108.00',6),

(10334,'S18_2432',34,'52.87',1),

(10334,'S18_3232',20,'147.33',3),

(10334,'S18_4600',49,'101.71',4),

(10334,'S24_2300',42,'117.57',5),

(10335,'S24_2840',33,'32.88',2),

(10335,'S32_1268',44,'77.05',1),

(10335,'S32_2509',40,'49.78',3),

(10336,'S12_1108',33,'176.63',10),

(10336,'S12_3148',33,'126.91',11),

(10336,'S12_3891',49,'141.88',1),

(10336,'S12_4473',38,'95.99',3),

(10336,'S18_2238',49,'153.91',6),

(10336,'S18_3140',48,'135.22',12),

(10336,'S18_3259',21,'100.84',7),

(10336,'S24_1444',45,'49.71',4),

(10336,'S24_4048',31,'113.55',5),

(10336,'S32_3207',31,'59.03',9),

(10336,'S50_1392',23,'109.96',8),

(10336,'S700_2824',46,'94.07',2),

(10337,'S10_4757',25,'131.92',8),

(10337,'S18_4027',36,'140.75',3),

(10337,'S18_4522',29,'76.36',2),

(10337,'S24_2011',29,'119.20',4),

(10337,'S50_1514',21,'54.48',6),

(10337,'S700_1938',36,'73.62',9),

(10337,'S700_3505',31,'84.14',1),

(10337,'S700_3962',36,'83.42',7),

(10337,'S72_3212',42,'49.14',5),

(10338,'S18_1662',41,'137.19',1),

(10338,'S18_3029',28,'80.86',3),

(10338,'S18_3856',45,'93.17',2),

(10339,'S10_2016',40,'117.75',4),

(10339,'S10_4698',39,'178.17',3),

(10339,'S18_2581',27,'79.41',2),

(10339,'S18_2625',30,'48.46',1),

(10339,'S24_1578',27,'96.92',10),

(10339,'S24_1785',21,'106.14',7),

(10339,'S24_2841',55,'67.82',12),

(10339,'S24_3151',55,'73.46',13),

(10339,'S24_3420',29,'57.86',14),

(10339,'S24_3816',42,'72.96',16),

(10339,'S24_3949',45,'57.32',11),

(10339,'S700_1138',22,'53.34',5),

(10339,'S700_2047',55,'86.90',15),

(10339,'S700_2610',50,'62.16',9),

(10339,'S700_4002',50,'66.63',8),

(10339,'S72_1253',27,'49.66',6),

(10340,'S24_2000',55,'62.46',8),

(10340,'S24_4278',40,'63.76',1),

(10340,'S32_1374',55,'95.89',2),

(10340,'S32_4289',39,'67.41',3),

(10340,'S50_1341',40,'37.09',4),

(10340,'S700_1691',30,'73.99',5),

(10340,'S700_2466',55,'81.77',7),

(10340,'S700_2834',29,'98.48',6),

(10341,'S10_1678',41,'84.22',9),

(10341,'S12_1099',45,'192.62',2),

(10341,'S12_2823',55,'120.50',8),

(10341,'S12_3380',44,'111.57',1),

(10341,'S12_3990',36,'77.41',10),

(10341,'S12_4675',55,'109.40',7),

(10341,'S24_2360',32,'63.03',6),

(10341,'S32_4485',31,'95.93',4),

(10341,'S50_4713',38,'78.11',3),

(10341,'S700_3167',34,'70.40',5),

(10342,'S18_1129',40,'118.89',2),

(10342,'S18_1889',55,'63.14',1),

(10342,'S18_1984',22,'115.22',3),

(10342,'S18_3232',30,'167.65',4),

(10342,'S18_3278',25,'76.39',5),

(10342,'S18_3482',55,'136.70',7),

(10342,'S18_3782',26,'57.82',8),

(10342,'S18_4721',38,'124.99',11),

(10342,'S24_2972',39,'30.59',9),

(10342,'S24_3371',48,'60.01',10),

(10342,'S24_3856',42,'112.34',6),

(10343,'S18_1589',36,'109.51',4),

(10343,'S18_2870',25,'118.80',3),

(10343,'S18_3685',44,'127.15',2),

(10343,'S24_1628',27,'44.78',6),

(10343,'S24_4620',30,'76.80',1),

(10343,'S32_2206',29,'37.41',5),

(10344,'S18_1749',45,'168.30',1),

(10344,'S18_2248',40,'49.04',2),

(10344,'S18_2325',30,'118.23',3),

(10344,'S18_4409',21,'80.99',4),

(10344,'S18_4933',26,'68.42',5),

(10344,'S24_1046',29,'61.00',7),

(10344,'S24_1937',20,'27.88',6),

(10345,'S24_2022',43,'38.98',1),

(10346,'S18_1342',42,'88.36',3),

(10346,'S24_2766',25,'87.24',1),

(10346,'S24_2887',24,'117.44',5),

(10346,'S24_3191',24,'80.47',2),

(10346,'S24_3432',26,'103.87',6),

(10346,'S24_3969',22,'38.57',4),

(10347,'S10_1949',30,'188.58',1),

(10347,'S10_4962',27,'132.97',2),

(10347,'S12_1666',29,'132.57',3),

(10347,'S18_1097',42,'113.17',5),

(10347,'S18_1367',21,'46.36',7),

(10347,'S18_2432',50,'51.05',8),

(10347,'S18_2795',21,'136.69',6),

(10347,'S18_2949',48,'84.09',9),

(10347,'S18_2957',34,'60.59',10),

(10347,'S18_3136',45,'95.30',11),

(10347,'S18_3320',26,'84.33',12),

(10347,'S18_4600',45,'115.03',4),

(10348,'S12_1108',48,'207.80',8),

(10348,'S12_3148',47,'122.37',4),

(10348,'S18_4668',29,'43.77',6),

(10348,'S24_2300',37,'107.34',1),

(10348,'S24_4258',39,'82.78',2),

(10348,'S32_1268',42,'90.53',3),

(10348,'S32_3522',31,'62.70',5),

(10348,'S700_2824',32,'100.14',7),

(10349,'S12_3891',26,'166.10',10),

(10349,'S12_4473',48,'114.95',9),

(10349,'S18_2238',38,'142.45',8),

(10349,'S18_2319',38,'117.82',7),

(10349,'S18_3232',48,'164.26',6),

(10349,'S18_4027',34,'140.75',5),

(10349,'S24_1444',48,'50.29',4),

(10349,'S24_2840',36,'31.47',3),

(10349,'S24_4048',23,'111.18',2),

(10349,'S32_2509',33,'44.37',1),

(10350,'S10_4757',26,'110.16',5),

(10350,'S18_3029',43,'84.30',6),

(10350,'S18_3140',44,'135.22',1),

(10350,'S18_3259',41,'94.79',2),

(10350,'S18_4522',30,'70.22',3),

(10350,'S24_2011',34,'98.31',7),

(10350,'S24_3151',30,'86.74',9),

(10350,'S24_3816',25,'77.15',10),

(10350,'S32_3207',27,'61.52',14),

(10350,'S50_1392',31,'104.18',8),

(10350,'S50_1514',44,'56.82',17),

(10350,'S700_1138',46,'56.00',11),

(10350,'S700_1938',28,'76.22',4),

(10350,'S700_2610',29,'68.67',12),

(10350,'S700_3505',31,'87.15',13),

(10350,'S700_3962',25,'97.32',16),

(10350,'S72_3212',20,'48.05',15),

(10351,'S18_1662',39,'143.50',1),

(10351,'S18_3856',20,'104.81',2),

(10351,'S24_2841',25,'64.40',5),

(10351,'S24_3420',38,'53.92',4),

(10351,'S24_3949',34,'68.24',3),

(10352,'S700_2047',23,'75.13',3),

(10352,'S700_2466',49,'87.75',2),

(10352,'S700_4002',22,'62.19',1),

(10352,'S72_1253',49,'46.18',4),

(10353,'S18_2581',27,'71.81',1),

(10353,'S24_1785',28,'107.23',2),

(10353,'S24_4278',35,'69.55',3),

(10353,'S32_1374',46,'86.90',5),

(10353,'S32_4289',40,'68.10',7),

(10353,'S50_1341',40,'35.78',8),

(10353,'S700_1691',39,'73.07',9),

(10353,'S700_2834',48,'98.48',4),

(10353,'S700_3167',43,'74.40',6),

(10354,'S10_1678',42,'84.22',6),

(10354,'S10_2016',20,'95.15',2),

(10354,'S10_4698',42,'178.17',3),

(10354,'S12_1099',31,'157.60',9),

(10354,'S12_2823',35,'141.58',4),

(10354,'S12_3380',29,'98.65',11),

(10354,'S12_3990',23,'76.61',12),

(10354,'S12_4675',28,'100.19',13),

(10354,'S18_1889',21,'76.23',8),

(10354,'S18_2625',28,'49.06',10),

(10354,'S18_3278',36,'69.15',7),

(10354,'S24_1578',21,'96.92',5),

(10354,'S24_2000',28,'62.46',1),

(10355,'S18_3482',23,'117.59',7),

(10355,'S18_3782',31,'60.30',1),

(10355,'S18_4721',25,'124.99',2),

(10355,'S24_2360',41,'56.10',3),

(10355,'S24_2972',36,'37.38',4),

(10355,'S24_3371',44,'60.62',6),

(10355,'S24_3856',32,'137.62',8),

(10355,'S24_4620',28,'75.18',9),

(10355,'S32_2206',38,'32.99',10),

(10355,'S32_4485',40,'93.89',5),

(10356,'S18_1129',43,'120.31',8),

(10356,'S18_1342',50,'82.19',9),

(10356,'S18_1367',22,'44.75',6),

(10356,'S18_1984',27,'130.87',2),

(10356,'S18_2325',29,'106.79',3),

(10356,'S18_2795',30,'158.63',1),

(10356,'S24_1937',48,'31.86',5),

(10356,'S24_2022',26,'42.11',7),

(10356,'S50_4713',26,'78.11',4),

(10357,'S10_1949',32,'199.30',10),

(10357,'S10_4962',43,'135.92',9),

(10357,'S12_1666',49,'109.34',8),

(10357,'S18_1097',39,'112.00',1),

(10357,'S18_2432',41,'58.95',7),

(10357,'S18_2949',41,'91.18',6),

(10357,'S18_2957',49,'59.34',5),

(10357,'S18_3136',44,'104.72',4),

(10357,'S18_3320',25,'84.33',3),

(10357,'S18_4600',28,'105.34',2),

(10358,'S12_3148',49,'129.93',5),

(10358,'S12_4473',42,'98.36',9),

(10358,'S18_2238',20,'142.45',10),

(10358,'S18_2319',20,'99.41',11),

(10358,'S18_3232',32,'137.17',12),

(10358,'S18_4027',25,'117.77',13),

(10358,'S18_4668',30,'46.29',8),

(10358,'S24_1444',44,'56.07',14),

(10358,'S24_2300',41,'127.79',7),

(10358,'S24_2840',36,'33.59',4),

(10358,'S24_4258',41,'88.62',6),

(10358,'S32_1268',41,'82.83',1),

(10358,'S32_3522',36,'51.71',2),

(10358,'S700_2824',27,'85.98',3),

(10359,'S10_4757',48,'122.40',6),

(10359,'S12_1108',42,'180.79',8),

(10359,'S12_3891',49,'162.64',5),

(10359,'S24_4048',22,'108.82',7),

(10359,'S32_2509',36,'45.45',3),

(10359,'S32_3207',22,'62.14',1),

(10359,'S50_1392',46,'99.55',2),

(10359,'S50_1514',25,'47.45',4),

(10360,'S18_1662',50,'126.15',12),

(10360,'S18_2581',41,'68.43',13),

(10360,'S18_3029',46,'71.40',14),

(10360,'S18_3140',29,'122.93',8),

(10360,'S18_3259',29,'94.79',18),

(10360,'S18_3856',40,'101.64',15),

(10360,'S18_4522',40,'76.36',1),

(10360,'S24_1785',22,'106.14',17),

(10360,'S24_2011',31,'100.77',2),

(10360,'S24_2841',49,'55.49',16),

(10360,'S24_3151',36,'70.81',3),

(10360,'S24_3816',22,'78.83',4),

(10360,'S700_1138',32,'64.67',5),

(10360,'S700_1938',26,'86.61',6),

(10360,'S700_2610',30,'70.11',7),

(10360,'S700_3505',35,'83.14',9),

(10360,'S700_3962',31,'92.36',10),

(10360,'S72_3212',31,'54.05',11),

(10361,'S10_1678',20,'92.83',13),

(10361,'S10_2016',26,'114.18',8),

(10361,'S24_3420',34,'62.46',6),

(10361,'S24_3949',26,'61.42',7),

(10361,'S24_4278',25,'68.83',1),

(10361,'S32_4289',49,'56.41',2),

(10361,'S50_1341',33,'35.78',3),

(10361,'S700_1691',20,'88.60',4),

(10361,'S700_2047',24,'85.99',14),

(10361,'S700_2466',26,'91.74',9),

(10361,'S700_2834',44,'107.97',5),

(10361,'S700_3167',44,'76.80',10),

(10361,'S700_4002',35,'62.19',11),

(10361,'S72_1253',23,'47.67',12),

(10362,'S10_4698',22,'182.04',4),

(10362,'S12_2823',22,'131.04',1),

(10362,'S18_2625',23,'53.91',3),

(10362,'S24_1578',50,'91.29',2),

(10363,'S12_1099',33,'180.95',3),

(10363,'S12_3380',34,'106.87',4),

(10363,'S12_3990',34,'68.63',5),

(10363,'S12_4675',46,'103.64',6),

(10363,'S18_1889',22,'61.60',7),

(10363,'S18_3278',46,'69.15',10),

(10363,'S18_3482',24,'124.94',11),

(10363,'S18_3782',32,'52.22',12),

(10363,'S18_4721',28,'123.50',13),

(10363,'S24_2000',21,'70.08',8),

(10363,'S24_2360',43,'56.10',14),

(10363,'S24_3371',21,'52.05',15),

(10363,'S24_3856',31,'113.75',1),

(10363,'S24_4620',43,'75.99',9),

(10363,'S32_1374',50,'92.90',2),

(10364,'S32_2206',48,'38.22',1),

(10365,'S18_1129',30,'116.06',1),

(10365,'S32_4485',22,'82.66',3),

(10365,'S50_4713',44,'68.34',2),

(10366,'S18_1984',34,'116.65',3),

(10366,'S18_2870',49,'105.60',2),

(10366,'S18_3232',34,'154.10',1),

(10367,'S18_1589',49,'105.77',1),

(10367,'S18_1749',37,'144.50',3),

(10367,'S18_2248',45,'50.25',4),

(10367,'S18_2325',27,'124.59',5),

(10367,'S18_2795',32,'140.06',7),

(10367,'S18_3685',46,'131.39',6),

(10367,'S18_4409',43,'77.31',8),

(10367,'S18_4933',44,'66.99',9),

(10367,'S24_1046',21,'72.76',10),

(10367,'S24_1628',38,'50.31',11),

(10367,'S24_1937',23,'29.54',13),

(10367,'S24_2022',28,'43.01',12),

(10367,'S24_2972',36,'36.25',2),

(10368,'S24_2766',40,'73.60',2),

(10368,'S24_2887',31,'115.09',5),

(10368,'S24_3191',46,'83.04',1),

(10368,'S24_3432',20,'93.16',4),

(10368,'S24_3969',46,'36.52',3),

(10369,'S10_1949',41,'195.01',2),

(10369,'S18_1342',44,'89.38',8),

(10369,'S18_1367',32,'46.36',7),

(10369,'S18_2949',42,'100.30',1),

(10369,'S18_2957',28,'51.84',6),

(10369,'S18_3136',21,'90.06',5),

(10369,'S18_3320',45,'80.36',4),

(10369,'S24_4258',40,'93.49',3),

(10370,'S10_4962',35,'128.53',4),

(10370,'S12_1666',49,'128.47',8),

(10370,'S18_1097',27,'100.34',1),

(10370,'S18_2319',22,'101.87',5),

(10370,'S18_2432',22,'60.16',7),

(10370,'S18_3232',27,'167.65',9),

(10370,'S18_4600',29,'105.34',6),

(10370,'S18_4668',20,'41.76',2),

(10370,'S32_3522',25,'63.99',3),

(10371,'S12_1108',32,'178.71',6),

(10371,'S12_4473',49,'104.28',4),

(10371,'S18_2238',25,'160.46',7),

(10371,'S24_1444',25,'53.75',12),

(10371,'S24_2300',20,'126.51',5),

(10371,'S24_2840',45,'35.01',8),

(10371,'S24_4048',28,'95.81',9),

(10371,'S32_1268',26,'82.83',1),

(10371,'S32_2509',20,'44.37',2),

(10371,'S32_3207',30,'53.44',11),

(10371,'S50_1392',48,'97.23',10),

(10371,'S700_2824',34,'83.95',3),

(10372,'S12_3148',40,'146.55',4),

(10372,'S12_3891',34,'140.15',1),

(10372,'S18_3140',28,'131.13',3),

(10372,'S18_3259',25,'91.76',5),

(10372,'S18_4027',48,'119.20',6),

(10372,'S18_4522',41,'78.99',7),

(10372,'S24_2011',37,'102.00',8),

(10372,'S50_1514',24,'56.82',9),

(10372,'S700_1938',44,'74.48',2),

(10373,'S10_4757',39,'118.32',3),

(10373,'S18_1662',28,'143.50',4),

(10373,'S18_3029',22,'75.70',5),

(10373,'S18_3856',50,'99.52',6),

(10373,'S24_2841',38,'58.92',7),

(10373,'S24_3151',33,'82.31',12),

(10373,'S24_3420',46,'53.92',11),

(10373,'S24_3816',23,'83.86',10),

(10373,'S24_3949',39,'62.10',13),

(10373,'S700_1138',44,'58.00',14),

(10373,'S700_2047',32,'76.94',15),

(10373,'S700_2610',41,'69.39',16),

(10373,'S700_3505',34,'94.16',2),

(10373,'S700_3962',37,'83.42',8),

(10373,'S700_4002',45,'68.11',17),

(10373,'S72_1253',25,'44.20',9),

(10373,'S72_3212',29,'48.05',1),

(10374,'S10_2016',39,'115.37',5),

(10374,'S10_4698',22,'158.80',1),

(10374,'S18_2581',42,'75.19',2),

(10374,'S18_2625',22,'48.46',4),

(10374,'S24_1578',38,'112.70',6),

(10374,'S24_1785',46,'107.23',3),

(10375,'S10_1678',21,'76.56',12),

(10375,'S12_1099',45,'184.84',7),

(10375,'S12_2823',49,'150.62',13),

(10375,'S24_2000',23,'67.03',9),

(10375,'S24_2360',20,'60.26',14),

(10375,'S24_4278',43,'60.13',2),

(10375,'S32_1374',37,'87.90',3),

(10375,'S32_4289',44,'59.85',4),

(10375,'S32_4485',41,'96.95',15),

(10375,'S50_1341',49,'36.22',5),

(10375,'S50_4713',49,'69.16',8),

(10375,'S700_1691',37,'86.77',6),

(10375,'S700_2466',33,'94.73',1),

(10375,'S700_2834',25,'98.48',10),

(10375,'S700_3167',44,'69.60',11),

(10376,'S12_3380',35,'98.65',1),

(10377,'S12_3990',24,'65.44',5),

(10377,'S12_4675',50,'112.86',1),

(10377,'S18_1129',35,'124.56',2),

(10377,'S18_1889',31,'61.60',4),

(10377,'S18_1984',36,'125.18',6),

(10377,'S18_3232',39,'143.94',3),

(10378,'S18_1589',34,'121.95',5),

(10378,'S18_3278',22,'66.74',4),

(10378,'S18_3482',43,'146.99',10),

(10378,'S18_3782',28,'60.30',9),

(10378,'S18_4721',49,'122.02',8),

(10378,'S24_2972',41,'30.59',7),

(10378,'S24_3371',46,'52.66',6),

(10378,'S24_3856',33,'129.20',3),

(10378,'S24_4620',41,'80.84',2),

(10378,'S32_2206',40,'35.80',1),

(10379,'S18_1749',39,'156.40',2),

(10379,'S18_2248',27,'50.85',1),

(10379,'S18_2870',29,'113.52',5),

(10379,'S18_3685',32,'134.22',4),

(10379,'S24_1628',32,'48.80',3),

(10380,'S18_1342',27,'88.36',13),

(10380,'S18_2325',40,'119.50',10),

(10380,'S18_2795',21,'156.94',8),

(10380,'S18_4409',32,'78.23',1),

(10380,'S18_4933',24,'66.99',2),

(10380,'S24_1046',34,'66.88',3),

(10380,'S24_1937',32,'29.87',4),

(10380,'S24_2022',27,'37.63',5),

(10380,'S24_2766',36,'77.24',6),

(10380,'S24_2887',44,'111.57',7),

(10380,'S24_3191',44,'77.05',9),

(10380,'S24_3432',34,'91.02',11),

(10380,'S24_3969',43,'32.82',12),

(10381,'S10_1949',36,'182.16',3),

(10381,'S10_4962',37,'138.88',6),

(10381,'S12_1666',20,'132.57',1),

(10381,'S18_1097',48,'114.34',2),

(10381,'S18_1367',25,'49.60',9),

(10381,'S18_2432',35,'60.77',7),

(10381,'S18_2949',41,'100.30',8),

(10381,'S18_2957',40,'51.22',4),

(10381,'S18_3136',35,'93.20',5),

(10382,'S12_1108',34,'166.24',10),

(10382,'S12_3148',37,'145.04',11),

(10382,'S12_3891',34,'143.61',12),

(10382,'S12_4473',32,'103.10',13),

(10382,'S18_2238',25,'160.46',5),

(10382,'S18_3320',50,'84.33',7),

(10382,'S18_4600',39,'115.03',1),

(10382,'S18_4668',39,'46.29',2),

(10382,'S24_2300',20,'120.12',3),

(10382,'S24_4258',33,'97.39',4),

(10382,'S32_1268',26,'85.72',6),

(10382,'S32_3522',48,'57.53',8),

(10382,'S700_2824',34,'101.15',9),

(10383,'S18_2319',27,'119.05',11),

(10383,'S18_3140',24,'125.66',9),

(10383,'S18_3232',47,'155.79',6),

(10383,'S18_3259',26,'83.70',12),

(10383,'S18_4027',38,'137.88',1),

(10383,'S18_4522',28,'77.24',7),

(10383,'S24_1444',22,'52.60',2),

(10383,'S24_2840',40,'33.24',3),

(10383,'S24_4048',21,'117.10',4),

(10383,'S32_2509',32,'53.57',5),

(10383,'S32_3207',44,'55.93',8),

(10383,'S50_1392',29,'94.92',13),

(10383,'S50_1514',38,'48.62',10),

(10384,'S10_4757',34,'129.20',4),

(10384,'S24_2011',28,'114.29',3),

(10384,'S24_3151',43,'71.69',2),

(10384,'S700_1938',49,'71.02',1),

(10385,'S24_3816',37,'78.83',2),

(10385,'S700_1138',25,'62.00',1),

(10386,'S18_1662',25,'130.88',7),

(10386,'S18_2581',21,'72.65',18),

(10386,'S18_3029',37,'73.12',5),

(10386,'S18_3856',22,'100.58',6),

(10386,'S24_1785',33,'101.76',11),

(10386,'S24_2841',39,'56.86',1),

(10386,'S24_3420',35,'54.57',9),

(10386,'S24_3949',41,'55.96',12),

(10386,'S24_4278',50,'71.73',8),

(10386,'S700_2047',29,'85.09',13),

(10386,'S700_2466',37,'90.75',14),

(10386,'S700_2610',37,'67.22',10),

(10386,'S700_3167',32,'68.00',17),

(10386,'S700_3505',45,'83.14',2),

(10386,'S700_3962',30,'80.44',3),

(10386,'S700_4002',44,'59.22',15),

(10386,'S72_1253',50,'47.67',16),

(10386,'S72_3212',43,'52.42',4),

(10387,'S32_1374',44,'79.91',1),

(10388,'S10_1678',42,'80.39',4),

(10388,'S10_2016',50,'118.94',5),

(10388,'S10_4698',21,'156.86',7),

(10388,'S12_2823',44,'125.01',6),

(10388,'S32_4289',35,'58.47',8),

(10388,'S50_1341',27,'41.02',1),

(10388,'S700_1691',46,'74.90',2),

(10388,'S700_2834',50,'111.53',3),

(10389,'S12_1099',26,'182.90',4),

(10389,'S12_3380',25,'95.13',6),

(10389,'S12_3990',36,'76.61',7),

(10389,'S12_4675',47,'102.49',8),

(10389,'S18_1889',49,'63.91',3),

(10389,'S18_2625',39,'52.09',5),

(10389,'S24_1578',45,'112.70',1),

(10389,'S24_2000',49,'61.70',2),

(10390,'S18_1129',36,'117.48',14),

(10390,'S18_1984',34,'132.29',15),

(10390,'S18_2325',31,'102.98',16),

(10390,'S18_2795',26,'162.00',7),

(10390,'S18_3278',40,'75.59',9),

(10390,'S18_3482',50,'135.23',1),

(10390,'S18_3782',36,'54.09',2),

(10390,'S18_4721',49,'122.02',3),

(10390,'S24_2360',35,'67.87',4),

(10390,'S24_2972',37,'35.87',5),

(10390,'S24_3371',46,'51.43',6),

(10390,'S24_3856',45,'134.81',8),

(10390,'S24_4620',30,'66.29',10),

(10390,'S32_2206',41,'39.02',11),

(10390,'S32_4485',45,'101.03',12),

(10390,'S50_4713',22,'81.36',13),

(10391,'S10_1949',24,'195.01',4),

(10391,'S10_4962',37,'121.15',7),

(10391,'S12_1666',39,'110.70',9),

(10391,'S18_1097',29,'114.34',10),

(10391,'S18_1342',35,'102.74',2),

(10391,'S18_1367',42,'47.44',3),

(10391,'S18_2432',44,'57.73',5),

(10391,'S18_2949',32,'99.28',6),

(10391,'S24_1937',33,'26.55',8),

(10391,'S24_2022',24,'36.29',1),

(10392,'S18_2957',37,'61.21',3),

(10392,'S18_3136',29,'103.67',2),

(10392,'S18_3320',36,'98.22',1),

(10393,'S12_3148',35,'145.04',8),

(10393,'S12_4473',32,'99.54',10),

(10393,'S18_2238',20,'137.53',11),

(10393,'S18_2319',38,'104.32',7),

(10393,'S18_4600',30,'106.55',9),

(10393,'S18_4668',44,'41.76',1),

(10393,'S24_2300',33,'112.46',2),

(10393,'S24_4258',33,'88.62',3),

(10393,'S32_1268',38,'84.75',4),

(10393,'S32_3522',31,'63.35',5),

(10393,'S700_2824',21,'83.95',6),

(10394,'S18_3232',22,'135.47',5),

(10394,'S18_4027',37,'124.95',1),

(10394,'S24_1444',31,'53.18',2),

(10394,'S24_2840',46,'35.36',6),

(10394,'S24_4048',37,'104.09',7),

(10394,'S32_2509',36,'47.08',3),

(10394,'S32_3207',30,'55.93',4),

(10395,'S10_4757',32,'125.12',2),

(10395,'S12_1108',33,'205.72',1),

(10395,'S50_1392',46,'98.39',4),

(10395,'S50_1514',45,'57.99',3),

(10396,'S12_3891',33,'155.72',3),

(10396,'S18_3140',33,'129.76',2),

(10396,'S18_3259',24,'91.76',4),

(10396,'S18_4522',45,'83.38',5),

(10396,'S24_2011',49,'100.77',6),

(10396,'S24_3151',27,'77.00',7),

(10396,'S24_3816',37,'77.99',8),

(10396,'S700_1138',39,'62.00',1),

(10397,'S700_1938',32,'69.29',5),

(10397,'S700_2610',22,'62.88',4),

(10397,'S700_3505',48,'86.15',3),

(10397,'S700_3962',36,'80.44',2),

(10397,'S72_3212',34,'52.96',1),

(10398,'S18_1662',33,'130.88',11),

(10398,'S18_2581',34,'82.79',15),

(10398,'S18_3029',28,'70.54',18),

(10398,'S18_3856',45,'92.11',17),

(10398,'S24_1785',43,'100.67',16),

(10398,'S24_2841',28,'60.29',3),

(10398,'S24_3420',34,'61.15',13),

(10398,'S24_3949',41,'56.64',2),

(10398,'S24_4278',45,'65.93',14),

(10398,'S32_4289',22,'60.54',4),

(10398,'S50_1341',49,'38.84',5),

(10398,'S700_1691',47,'78.55',6),

(10398,'S700_2047',36,'75.13',7),

(10398,'S700_2466',22,'98.72',8),

(10398,'S700_2834',23,'102.04',9),

(10398,'S700_3167',29,'76.80',10),

(10398,'S700_4002',36,'62.19',12),

(10398,'S72_1253',34,'41.22',1),

(10399,'S10_1678',40,'77.52',8),

(10399,'S10_2016',51,'99.91',7),

(10399,'S10_4698',22,'156.86',6),

(10399,'S12_2823',29,'123.51',5),

(10399,'S18_2625',30,'51.48',4),

(10399,'S24_1578',57,'104.81',3),

(10399,'S24_2000',58,'75.41',2),

(10399,'S32_1374',32,'97.89',1),

(10400,'S10_4757',64,'134.64',9),

(10400,'S18_1662',34,'129.31',1),

(10400,'S18_3029',30,'74.84',7),

(10400,'S18_3856',58,'88.93',6),

(10400,'S24_2841',24,'55.49',2),

(10400,'S24_3420',38,'59.18',3),

(10400,'S24_3816',42,'74.64',8),

(10400,'S700_2047',46,'82.37',5),

(10400,'S72_1253',20,'41.71',4),

(10401,'S18_2581',42,'75.19',3),

(10401,'S24_1785',38,'87.54',5),

(10401,'S24_3949',64,'59.37',12),

(10401,'S24_4278',52,'65.93',4),

(10401,'S32_1374',49,'81.91',1),

(10401,'S32_4289',62,'62.60',6),

(10401,'S50_1341',56,'41.46',7),

(10401,'S700_1691',11,'77.64',8),

(10401,'S700_2466',85,'98.72',10),

(10401,'S700_2834',21,'96.11',2),

(10401,'S700_3167',77,'73.60',9),

(10401,'S700_4002',40,'66.63',11),

(10402,'S10_2016',45,'118.94',1),

(10402,'S18_2625',55,'58.15',2),

(10402,'S24_2000',59,'61.70',3),

(10403,'S10_1678',24,'85.17',7),

(10403,'S10_4698',66,'174.29',9),

(10403,'S12_2823',66,'122.00',6),

(10403,'S18_3782',36,'55.33',1),

(10403,'S24_1578',46,'109.32',8),

(10403,'S24_2360',27,'57.49',4),

(10403,'S32_2206',30,'35.80',2),

(10403,'S32_4485',45,'88.78',5),

(10403,'S50_4713',31,'65.09',3),

(10404,'S12_1099',64,'163.44',3),

(10404,'S12_3380',43,'102.17',1),

(10404,'S12_3990',77,'67.03',4),

(10404,'S18_3278',90,'67.54',6),

(10404,'S18_3482',28,'127.88',5),

(10404,'S18_4721',48,'124.99',8),

(10404,'S24_3371',49,'53.27',2),

(10404,'S24_4620',48,'65.48',7),

(10405,'S12_4675',97,'115.16',5),

(10405,'S18_1889',61,'72.38',4),

(10405,'S18_3232',55,'147.33',1),

(10405,'S24_2972',47,'37.38',2),

(10405,'S24_3856',76,'127.79',3),

(10406,'S18_1129',61,'124.56',3),

(10406,'S18_1984',48,'133.72',2),

(10406,'S18_3685',65,'117.26',1),

(10407,'S18_1589',59,'114.48',11),

(10407,'S18_1749',76,'141.10',2),

(10407,'S18_2248',42,'58.12',1),

(10407,'S18_2870',41,'132.00',12),

(10407,'S18_4409',6,'91.11',3),

(10407,'S18_4933',66,'64.14',4),

(10407,'S24_1046',26,'68.35',8),

(10407,'S24_1628',64,'45.78',10),

(10407,'S24_2766',76,'81.78',6),

(10407,'S24_2887',59,'98.65',5),

(10407,'S24_3191',13,'77.05',7),

(10407,'S24_3432',43,'101.73',9),

(10408,'S24_3969',15,'41.03',1),

(10409,'S18_2325',6,'104.25',2),

(10409,'S24_1937',61,'27.88',1),

(10410,'S18_1342',65,'99.66',7),

(10410,'S18_1367',44,'51.21',6),

(10410,'S18_2795',56,'145.13',8),

(10410,'S18_2949',47,'93.21',1),

(10410,'S18_2957',53,'49.97',3),

(10410,'S18_3136',34,'84.82',2),

(10410,'S18_3320',44,'81.35',5),

(10410,'S24_2022',31,'42.56',9),

(10410,'S24_4258',50,'95.44',4),

(10411,'S10_1949',23,'205.73',9),

(10411,'S10_4962',27,'144.79',2),

(10411,'S12_1666',40,'110.70',6),

(10411,'S18_1097',27,'109.67',8),

(10411,'S18_4600',46,'106.55',3),

(10411,'S18_4668',35,'41.25',7),

(10411,'S32_1268',26,'78.01',1),

(10411,'S32_3522',27,'60.76',5),

(10411,'S700_2824',34,'89.01',4),

(10412,'S12_4473',54,'100.73',5),

(10412,'S18_2238',41,'150.63',4),

(10412,'S18_2319',56,'120.28',8),

(10412,'S18_2432',47,'49.83',11),

(10412,'S18_3232',60,'157.49',9),

(10412,'S24_1444',21,'47.40',2),

(10412,'S24_2300',70,'109.90',10),

(10412,'S24_2840',30,'32.88',6),

(10412,'S24_4048',31,'108.82',1),

(10412,'S32_2509',19,'50.86',7),

(10412,'S50_1392',26,'105.33',3),

(10413,'S12_1108',36,'201.57',2),

(10413,'S12_3148',47,'145.04',3),

(10413,'S12_3891',22,'173.02',1),

(10413,'S18_4027',49,'133.57',5),

(10413,'S32_3207',24,'56.55',6),

(10413,'S50_1514',51,'53.31',4),

(10414,'S10_4757',49,'114.24',3),

(10414,'S18_3029',44,'77.42',1),

(10414,'S18_3140',41,'128.39',12),

(10414,'S18_3259',48,'85.71',14),

(10414,'S18_4522',56,'83.38',11),

(10414,'S24_2011',43,'108.14',10),

(10414,'S24_3151',60,'72.58',5),

(10414,'S24_3816',51,'72.96',2),

(10414,'S700_1138',37,'62.00',6),

(10414,'S700_1938',34,'74.48',13),

(10414,'S700_2610',31,'61.44',4),

(10414,'S700_3505',28,'84.14',7),

(10414,'S700_3962',40,'84.41',8),

(10414,'S72_3212',47,'54.60',9),

(10415,'S18_3856',51,'86.81',5),

(10415,'S24_2841',21,'60.97',1),

(10415,'S24_3420',18,'59.83',2),

(10415,'S700_2047',32,'73.32',4),

(10415,'S72_1253',42,'43.20',3),

(10416,'S18_1662',24,'129.31',14),

(10416,'S18_2581',15,'70.96',4),

(10416,'S24_1785',47,'90.82',6),

(10416,'S24_2000',32,'62.46',1),

(10416,'S24_3949',18,'64.83',13),

(10416,'S24_4278',48,'70.28',5),

(10416,'S32_1374',45,'86.90',2),

(10416,'S32_4289',26,'68.10',7),

(10416,'S50_1341',37,'39.71',8),

(10416,'S700_1691',23,'88.60',9),

(10416,'S700_2466',22,'84.76',11),

(10416,'S700_2834',41,'98.48',3),

(10416,'S700_3167',39,'65.60',10),

(10416,'S700_4002',43,'63.67',12),

(10417,'S10_1678',66,'79.43',2),

(10417,'S10_2016',45,'116.56',5),

(10417,'S10_4698',56,'162.67',4),

(10417,'S12_2823',21,'144.60',1),

(10417,'S18_2625',36,'58.75',6),

(10417,'S24_1578',35,'109.32',3),

(10418,'S18_3278',16,'70.76',2),

(10418,'S18_3482',27,'139.64',1),

(10418,'S18_3782',33,'56.57',5),

(10418,'S18_4721',28,'120.53',4),

(10418,'S24_2360',52,'64.41',8),

(10418,'S24_4620',10,'66.29',3),

(10418,'S32_2206',43,'36.61',6),

(10418,'S32_4485',50,'100.01',9),

(10418,'S50_4713',40,'72.41',7),

(10419,'S12_1099',12,'182.90',13),

(10419,'S12_3380',10,'111.57',11),

(10419,'S12_3990',34,'64.64',14),

(10419,'S12_4675',32,'99.04',10),

(10419,'S18_1129',38,'117.48',5),

(10419,'S18_1589',37,'100.80',1),

(10419,'S18_1889',39,'67.76',9),

(10419,'S18_1984',34,'133.72',4),

(10419,'S18_2870',55,'116.16',2),

(10419,'S18_3232',35,'165.95',6),

(10419,'S18_3685',43,'114.44',3),

(10419,'S24_2972',15,'32.10',7),

(10419,'S24_3371',55,'52.66',12),

(10419,'S24_3856',70,'112.34',8),

(10420,'S18_1749',37,'153.00',5),

(10420,'S18_2248',36,'52.06',4),

(10420,'S18_2325',45,'116.96',2),

(10420,'S18_4409',66,'73.62',6),

(10420,'S18_4933',36,'68.42',7),

(10420,'S24_1046',60,'60.26',11),

(10420,'S24_1628',37,'48.80',13),

(10420,'S24_1937',45,'32.19',1),

(10420,'S24_2766',39,'76.33',9),

(10420,'S24_2887',55,'115.09',8),

(10420,'S24_3191',35,'77.05',10),

(10420,'S24_3432',26,'104.94',12),

(10420,'S24_3969',15,'35.29',3),

(10421,'S18_2795',35,'167.06',1),

(10421,'S24_2022',40,'44.80',2),

(10422,'S18_1342',51,'91.44',2),

(10422,'S18_1367',25,'47.44',1),

(10423,'S18_2949',10,'89.15',1),

(10423,'S18_2957',31,'56.21',3),

(10423,'S18_3136',21,'98.44',2),

(10423,'S18_3320',21,'80.36',5),

(10423,'S24_4258',28,'78.89',4),

(10424,'S10_1949',50,'201.44',6),

(10424,'S12_1666',49,'121.64',3),

(10424,'S18_1097',54,'108.50',5),

(10424,'S18_4668',26,'40.25',4),

(10424,'S32_3522',44,'54.94',2),

(10424,'S700_2824',46,'85.98',1),

(10425,'S10_4962',38,'131.49',12),

(10425,'S12_4473',33,'95.99',4),

(10425,'S18_2238',28,'147.36',3),

(10425,'S18_2319',38,'117.82',7),

(10425,'S18_2432',19,'48.62',10),

(10425,'S18_3232',28,'140.55',8),

(10425,'S18_4600',38,'107.76',13),

(10425,'S24_1444',55,'53.75',1),

(10425,'S24_2300',49,'127.79',9),

(10425,'S24_2840',31,'31.82',5),

(10425,'S32_1268',41,'83.79',11),

(10425,'S32_2509',11,'50.32',6),

(10425,'S50_1392',18,'94.92',2);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `comments` text,
  `customerNumber` int(11) NOT NULL,
  PRIMARY KEY (`orderNumber`),
  KEY `customerNumber` (`customerNumber`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`orderNumber`,`orderDate`,`requiredDate`,`shippedDate`,`status`,`comments`,`customerNumber`) values 

(10100,'2003-01-06','2003-01-13','2003-01-10','Shipped',NULL,363),

(10101,'2003-01-09','2003-01-18','2003-01-11','Shipped','Check on availability.',128),

(10102,'2003-01-10','2003-01-18','2003-01-14','Shipped',NULL,181),

(10103,'2003-01-29','2003-02-07','2003-02-02','Shipped',NULL,121),

(10104,'2003-01-31','2003-02-09','2003-02-01','Shipped',NULL,141),

(10105,'2003-02-11','2003-02-21','2003-02-12','Shipped',NULL,145),

(10106,'2003-02-17','2003-02-24','2003-02-21','Shipped',NULL,278),

(10107,'2003-02-24','2003-03-03','2003-02-26','Shipped','Difficult to negotiate with customer. We need more marketing materials',131),

(10108,'2003-03-03','2003-03-12','2003-03-08','Shipped',NULL,385),

(10109,'2003-03-10','2003-03-19','2003-03-11','Shipped','Customer requested that FedEx Ground is used for this shipping',486),

(10110,'2003-03-18','2003-03-24','2003-03-20','Shipped',NULL,187),

(10111,'2003-03-25','2003-03-31','2003-03-30','Shipped',NULL,129),

(10112,'2003-03-24','2003-04-03','2003-03-29','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',144),

(10113,'2003-03-26','2003-04-02','2003-03-27','Shipped',NULL,124),

(10114,'2003-04-01','2003-04-07','2003-04-02','Shipped',NULL,172),

(10115,'2003-04-04','2003-04-12','2003-04-07','Shipped',NULL,424),

(10116,'2003-04-11','2003-04-19','2003-04-13','Shipped',NULL,381),

(10117,'2003-04-16','2003-04-24','2003-04-17','Shipped',NULL,148),

(10118,'2003-04-21','2003-04-29','2003-04-26','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',216),

(10119,'2003-04-28','2003-05-05','2003-05-02','Shipped',NULL,382),

(10120,'2003-04-29','2003-05-08','2003-05-01','Shipped',NULL,114),

(10121,'2003-05-07','2003-05-13','2003-05-13','Shipped',NULL,353),

(10122,'2003-05-08','2003-05-16','2003-05-13','Shipped',NULL,350),

(10123,'2003-05-20','2003-05-29','2003-05-22','Shipped',NULL,103),

(10124,'2003-05-21','2003-05-29','2003-05-25','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',112),

(10125,'2003-05-21','2003-05-27','2003-05-24','Shipped',NULL,114),

(10126,'2003-05-28','2003-06-07','2003-06-02','Shipped',NULL,458),

(10127,'2003-06-03','2003-06-09','2003-06-06','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',151),

(10128,'2003-06-06','2003-06-12','2003-06-11','Shipped',NULL,141),

(10129,'2003-06-12','2003-06-18','2003-06-14','Shipped',NULL,324),

(10130,'2003-06-16','2003-06-24','2003-06-21','Shipped',NULL,198),

(10131,'2003-06-16','2003-06-25','2003-06-21','Shipped',NULL,447),

(10132,'2003-06-25','2003-07-01','2003-06-28','Shipped',NULL,323),

(10133,'2003-06-27','2003-07-04','2003-07-03','Shipped',NULL,141),

(10134,'2003-07-01','2003-07-10','2003-07-05','Shipped',NULL,250),

(10135,'2003-07-02','2003-07-12','2003-07-03','Shipped',NULL,124),

(10136,'2003-07-04','2003-07-14','2003-07-06','Shipped','Customer is interested in buying more Ferrari models',242),

(10137,'2003-07-10','2003-07-20','2003-07-14','Shipped',NULL,353),

(10138,'2003-07-07','2003-07-16','2003-07-13','Shipped',NULL,496),

(10139,'2003-07-16','2003-07-23','2003-07-21','Shipped',NULL,282),

(10140,'2003-07-24','2003-08-02','2003-07-30','Shipped',NULL,161),

(10141,'2003-08-01','2003-08-09','2003-08-04','Shipped',NULL,334),

(10142,'2003-08-08','2003-08-16','2003-08-13','Shipped',NULL,124),

(10143,'2003-08-10','2003-08-18','2003-08-12','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',320),

(10144,'2003-08-13','2003-08-21','2003-08-14','Shipped',NULL,381),

(10145,'2003-08-25','2003-09-02','2003-08-31','Shipped',NULL,205),

(10146,'2003-09-03','2003-09-13','2003-09-06','Shipped',NULL,447),

(10147,'2003-09-05','2003-09-12','2003-09-09','Shipped',NULL,379),

(10148,'2003-09-11','2003-09-21','2003-09-15','Shipped','They want to reevaluate their terms agreement with Finance.',276),

(10149,'2003-09-12','2003-09-18','2003-09-17','Shipped',NULL,487),

(10150,'2003-09-19','2003-09-27','2003-09-21','Shipped','They want to reevaluate their terms agreement with Finance.',148),

(10151,'2003-09-21','2003-09-30','2003-09-24','Shipped',NULL,311),

(10152,'2003-09-25','2003-10-03','2003-10-01','Shipped',NULL,333),

(10153,'2003-09-28','2003-10-05','2003-10-03','Shipped',NULL,141),

(10154,'2003-10-02','2003-10-12','2003-10-08','Shipped',NULL,219),

(10155,'2003-10-06','2003-10-13','2003-10-07','Shipped',NULL,186),

(10156,'2003-10-08','2003-10-17','2003-10-11','Shipped',NULL,141),

(10157,'2003-10-09','2003-10-15','2003-10-14','Shipped',NULL,473),

(10158,'2003-10-10','2003-10-18','2003-10-15','Shipped',NULL,121),

(10159,'2003-10-10','2003-10-19','2003-10-16','Shipped',NULL,321),

(10160,'2003-10-11','2003-10-17','2003-10-17','Shipped',NULL,347),

(10161,'2003-10-17','2003-10-25','2003-10-20','Shipped',NULL,227),

(10162,'2003-10-18','2003-10-26','2003-10-19','Shipped',NULL,321),

(10163,'2003-10-20','2003-10-27','2003-10-24','Shipped',NULL,424),

(10164,'2003-10-21','2003-10-30','2003-10-23','Resolved','This order was disputed, but resolved on 11/1/2003; Customer doesn\'t like the colors and precision of the models.',452),

(10165,'2003-10-22','2003-10-31','2003-12-26','Shipped','This order was on hold because customers\'s credit limit had been exceeded. Order will ship when payment is received',148),

(10166,'2003-10-21','2003-10-30','2003-10-27','Shipped',NULL,462),

(10167,'2003-10-23','2003-10-30',NULL,'Cancelled','Customer called to cancel. The warehouse was notified in time and the order didn\'t ship. They have a new VP of Sales and are shifting their sales model. Our VP of Sales should contact them.',448),

(10168,'2003-10-28','2003-11-03','2003-11-01','Shipped',NULL,161),

(10169,'2003-11-04','2003-11-14','2003-11-09','Shipped',NULL,276),

(10170,'2003-11-04','2003-11-12','2003-11-07','Shipped',NULL,452),

(10171,'2003-11-05','2003-11-13','2003-11-07','Shipped',NULL,233),

(10172,'2003-11-05','2003-11-14','2003-11-11','Shipped',NULL,175),

(10173,'2003-11-05','2003-11-15','2003-11-09','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',278),

(10174,'2003-11-06','2003-11-15','2003-11-10','Shipped',NULL,333),

(10175,'2003-11-06','2003-11-14','2003-11-09','Shipped',NULL,324),

(10176,'2003-11-06','2003-11-15','2003-11-12','Shipped',NULL,386),

(10177,'2003-11-07','2003-11-17','2003-11-12','Shipped',NULL,344),

(10178,'2003-11-08','2003-11-16','2003-11-10','Shipped','Custom shipping instructions sent to warehouse',242),

(10179,'2003-11-11','2003-11-17','2003-11-13','Cancelled','Customer cancelled due to urgent budgeting issues. Must be cautious when dealing with them in the future. Since order shipped already we must discuss who would cover the shipping charges.',496),

(10180,'2003-11-11','2003-11-19','2003-11-14','Shipped',NULL,171),

(10181,'2003-11-12','2003-11-19','2003-11-15','Shipped',NULL,167),

(10182,'2003-11-12','2003-11-21','2003-11-18','Shipped',NULL,124),

(10183,'2003-11-13','2003-11-22','2003-11-15','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',339),

(10184,'2003-11-14','2003-11-22','2003-11-20','Shipped',NULL,484),

(10185,'2003-11-14','2003-11-21','2003-11-20','Shipped',NULL,320),

(10186,'2003-11-14','2003-11-20','2003-11-18','Shipped','They want to reevaluate their terms agreement with the VP of Sales',489),

(10187,'2003-11-15','2003-11-24','2003-11-16','Shipped',NULL,211),

(10188,'2003-11-18','2003-11-26','2003-11-24','Shipped',NULL,167),

(10189,'2003-11-18','2003-11-25','2003-11-24','Shipped','They want to reevaluate their terms agreement with Finance.',205),

(10190,'2003-11-19','2003-11-29','2003-11-20','Shipped',NULL,141),

(10191,'2003-11-20','2003-11-30','2003-11-24','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',259),

(10192,'2003-11-20','2003-11-29','2003-11-25','Shipped',NULL,363),

(10193,'2003-11-21','2003-11-28','2003-11-27','Shipped',NULL,471),

(10194,'2003-11-25','2003-12-02','2003-11-26','Shipped',NULL,146),

(10195,'2003-11-25','2003-12-01','2003-11-28','Shipped',NULL,319),

(10196,'2003-11-26','2003-12-03','2003-12-01','Shipped',NULL,455),

(10197,'2003-11-26','2003-12-02','2003-12-01','Shipped','Customer inquired about remote controlled models and gold models.',216),

(10198,'2003-11-27','2003-12-06','2003-12-03','Shipped',NULL,385),

(10199,'2003-12-01','2003-12-10','2003-12-06','Shipped',NULL,475),

(10200,'2003-12-01','2003-12-09','2003-12-06','Shipped',NULL,211),

(10201,'2003-12-01','2003-12-11','2003-12-02','Shipped',NULL,129),

(10202,'2003-12-02','2003-12-09','2003-12-06','Shipped',NULL,357),

(10203,'2003-12-02','2003-12-11','2003-12-07','Shipped',NULL,141),

(10204,'2003-12-02','2003-12-10','2003-12-04','Shipped',NULL,151),

(10205,'2003-12-03','2003-12-09','2003-12-07','Shipped',' I need all the information I can get on our competitors.',141),

(10206,'2003-12-05','2003-12-13','2003-12-08','Shipped','Can we renegotiate this one?',202),

(10207,'2003-12-09','2003-12-17','2003-12-11','Shipped','Check on availability.',495),

(10208,'2004-01-02','2004-01-11','2004-01-04','Shipped',NULL,146),

(10209,'2004-01-09','2004-01-15','2004-01-12','Shipped',NULL,347),

(10210,'2004-01-12','2004-01-22','2004-01-20','Shipped',NULL,177),

(10211,'2004-01-15','2004-01-25','2004-01-18','Shipped',NULL,406),

(10212,'2004-01-16','2004-01-24','2004-01-18','Shipped',NULL,141),

(10213,'2004-01-22','2004-01-28','2004-01-27','Shipped','Difficult to negotiate with customer. We need more marketing materials',489),

(10214,'2004-01-26','2004-02-04','2004-01-29','Shipped',NULL,458),

(10215,'2004-01-29','2004-02-08','2004-02-01','Shipped','Customer requested that FedEx Ground is used for this shipping',475),

(10216,'2004-02-02','2004-02-10','2004-02-04','Shipped',NULL,256),

(10217,'2004-02-04','2004-02-14','2004-02-06','Shipped',NULL,166),

(10218,'2004-02-09','2004-02-16','2004-02-11','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',473),

(10219,'2004-02-10','2004-02-17','2004-02-12','Shipped',NULL,487),

(10220,'2004-02-12','2004-02-19','2004-02-16','Shipped',NULL,189),

(10221,'2004-02-18','2004-02-26','2004-02-19','Shipped',NULL,314),

(10222,'2004-02-19','2004-02-27','2004-02-20','Shipped',NULL,239),

(10223,'2004-02-20','2004-02-29','2004-02-24','Shipped',NULL,114),

(10224,'2004-02-21','2004-03-02','2004-02-26','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',171),

(10225,'2004-02-22','2004-03-01','2004-02-24','Shipped',NULL,298),

(10226,'2004-02-26','2004-03-06','2004-03-02','Shipped',NULL,239),

(10227,'2004-03-02','2004-03-12','2004-03-08','Shipped',NULL,146),

(10228,'2004-03-10','2004-03-18','2004-03-13','Shipped',NULL,173),

(10229,'2004-03-11','2004-03-20','2004-03-12','Shipped',NULL,124),

(10230,'2004-03-15','2004-03-24','2004-03-20','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',128),

(10231,'2004-03-19','2004-03-26','2004-03-25','Shipped',NULL,344),

(10232,'2004-03-20','2004-03-30','2004-03-25','Shipped',NULL,240),

(10233,'2004-03-29','2004-04-04','2004-04-02','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',328),

(10234,'2004-03-30','2004-04-05','2004-04-02','Shipped',NULL,412),

(10235,'2004-04-02','2004-04-12','2004-04-06','Shipped',NULL,260),

(10236,'2004-04-03','2004-04-11','2004-04-08','Shipped',NULL,486),

(10237,'2004-04-05','2004-04-12','2004-04-10','Shipped',NULL,181),

(10238,'2004-04-09','2004-04-16','2004-04-10','Shipped',NULL,145),

(10239,'2004-04-12','2004-04-21','2004-04-17','Shipped',NULL,311),

(10240,'2004-04-13','2004-04-20','2004-04-20','Shipped',NULL,177),

(10241,'2004-04-13','2004-04-20','2004-04-19','Shipped',NULL,209),

(10242,'2004-04-20','2004-04-28','2004-04-25','Shipped','Customer is interested in buying more Ferrari models',456),

(10243,'2004-04-26','2004-05-03','2004-04-28','Shipped',NULL,495),

(10244,'2004-04-29','2004-05-09','2004-05-04','Shipped',NULL,141),

(10245,'2004-05-04','2004-05-12','2004-05-09','Shipped',NULL,455),

(10246,'2004-05-05','2004-05-13','2004-05-06','Shipped',NULL,141),

(10247,'2004-05-05','2004-05-11','2004-05-08','Shipped',NULL,334),

(10248,'2004-05-07','2004-05-14',NULL,'Cancelled','Order was mistakenly placed. The warehouse noticed the lack of documentation.',131),

(10249,'2004-05-08','2004-05-17','2004-05-11','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',173),

(10250,'2004-05-11','2004-05-19','2004-05-15','Shipped',NULL,450),

(10251,'2004-05-18','2004-05-24','2004-05-24','Shipped',NULL,328),

(10252,'2004-05-26','2004-06-04','2004-05-29','Shipped',NULL,406),

(10253,'2004-06-01','2004-06-09','2004-06-02','Cancelled','Customer disputed the order and we agreed to cancel it. We must be more cautions with this customer going forward, since they are very hard to please. We must cover the shipping fees.',201),

(10254,'2004-06-03','2004-06-13','2004-06-04','Shipped','Customer requested that DHL is used for this shipping',323),

(10255,'2004-06-04','2004-06-12','2004-06-09','Shipped',NULL,209),

(10256,'2004-06-08','2004-06-16','2004-06-10','Shipped',NULL,145),

(10257,'2004-06-14','2004-06-24','2004-06-15','Shipped',NULL,450),

(10258,'2004-06-15','2004-06-25','2004-06-23','Shipped',NULL,398),

(10259,'2004-06-15','2004-06-22','2004-06-17','Shipped',NULL,166),

(10260,'2004-06-16','2004-06-22',NULL,'Cancelled','Customer heard complaints from their customers and called to cancel this order. Will notify the Sales Manager.',357),

(10261,'2004-06-17','2004-06-25','2004-06-22','Shipped',NULL,233),

(10262,'2004-06-24','2004-07-01',NULL,'Cancelled','This customer found a better offer from one of our competitors. Will call back to renegotiate.',141),

(10263,'2004-06-28','2004-07-04','2004-07-02','Shipped',NULL,175),

(10264,'2004-06-30','2004-07-06','2004-07-01','Shipped','Customer will send a truck to our local warehouse on 7/1/2004',362),

(10265,'2004-07-02','2004-07-09','2004-07-07','Shipped',NULL,471),

(10266,'2004-07-06','2004-07-14','2004-07-10','Shipped',NULL,386),

(10267,'2004-07-07','2004-07-17','2004-07-09','Shipped',NULL,151),

(10268,'2004-07-12','2004-07-18','2004-07-14','Shipped',NULL,412),

(10269,'2004-07-16','2004-07-22','2004-07-18','Shipped',NULL,382),

(10270,'2004-07-19','2004-07-27','2004-07-24','Shipped','Can we renegotiate this one?',282),

(10271,'2004-07-20','2004-07-29','2004-07-23','Shipped',NULL,124),

(10272,'2004-07-20','2004-07-26','2004-07-22','Shipped',NULL,157),

(10273,'2004-07-21','2004-07-28','2004-07-22','Shipped',NULL,314),

(10274,'2004-07-21','2004-07-29','2004-07-22','Shipped',NULL,379),

(10275,'2004-07-23','2004-08-02','2004-07-29','Shipped',NULL,119),

(10276,'2004-08-02','2004-08-11','2004-08-08','Shipped',NULL,204),

(10277,'2004-08-04','2004-08-12','2004-08-05','Shipped',NULL,148),

(10278,'2004-08-06','2004-08-16','2004-08-09','Shipped',NULL,112),

(10279,'2004-08-09','2004-08-19','2004-08-15','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',141),

(10280,'2004-08-17','2004-08-27','2004-08-19','Shipped',NULL,249),

(10281,'2004-08-19','2004-08-28','2004-08-23','Shipped',NULL,157),

(10282,'2004-08-20','2004-08-26','2004-08-22','Shipped',NULL,124),

(10283,'2004-08-20','2004-08-30','2004-08-23','Shipped',NULL,260),

(10284,'2004-08-21','2004-08-29','2004-08-26','Shipped','Custom shipping instructions sent to warehouse',299),

(10285,'2004-08-27','2004-09-04','2004-08-31','Shipped',NULL,286),

(10286,'2004-08-28','2004-09-06','2004-09-01','Shipped',NULL,172),

(10287,'2004-08-30','2004-09-06','2004-09-01','Shipped',NULL,298),

(10288,'2004-09-01','2004-09-11','2004-09-05','Shipped',NULL,166),

(10289,'2004-09-03','2004-09-13','2004-09-04','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',167),

(10290,'2004-09-07','2004-09-15','2004-09-13','Shipped',NULL,198),

(10291,'2004-09-08','2004-09-17','2004-09-14','Shipped',NULL,448),

(10292,'2004-09-08','2004-09-18','2004-09-11','Shipped','They want to reevaluate their terms agreement with Finance.',131),

(10293,'2004-09-09','2004-09-18','2004-09-14','Shipped',NULL,249),

(10294,'2004-09-10','2004-09-17','2004-09-14','Shipped',NULL,204),

(10295,'2004-09-10','2004-09-17','2004-09-14','Shipped','They want to reevaluate their terms agreement with Finance.',362),

(10296,'2004-09-15','2004-09-22','2004-09-16','Shipped',NULL,415),

(10297,'2004-09-16','2004-09-22','2004-09-21','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',189),

(10298,'2004-09-27','2004-10-05','2004-10-01','Shipped',NULL,103),

(10299,'2004-09-30','2004-10-10','2004-10-01','Shipped',NULL,186),

(10300,'2003-10-04','2003-10-13','2003-10-09','Shipped',NULL,128),

(10301,'2003-10-05','2003-10-15','2003-10-08','Shipped',NULL,299),

(10302,'2003-10-06','2003-10-16','2003-10-07','Shipped',NULL,201),

(10303,'2004-10-06','2004-10-14','2004-10-09','Shipped','Customer inquired about remote controlled models and gold models.',484),

(10304,'2004-10-11','2004-10-20','2004-10-17','Shipped',NULL,256),

(10305,'2004-10-13','2004-10-22','2004-10-15','Shipped','Check on availability.',286),

(10306,'2004-10-14','2004-10-21','2004-10-17','Shipped',NULL,187),

(10307,'2004-10-14','2004-10-23','2004-10-20','Shipped',NULL,339),

(10308,'2004-10-15','2004-10-24','2004-10-20','Shipped','Customer requested that FedEx Ground is used for this shipping',319),

(10309,'2004-10-15','2004-10-24','2004-10-18','Shipped',NULL,121),

(10310,'2004-10-16','2004-10-24','2004-10-18','Shipped',NULL,259),

(10311,'2004-10-16','2004-10-23','2004-10-20','Shipped','Difficult to negotiate with customer. We need more marketing materials',141),

(10312,'2004-10-21','2004-10-27','2004-10-23','Shipped',NULL,124),

(10313,'2004-10-22','2004-10-28','2004-10-25','Shipped','Customer requested that FedEx Ground is used for this shipping',202),

(10314,'2004-10-22','2004-11-01','2004-10-23','Shipped',NULL,227),

(10315,'2004-10-29','2004-11-08','2004-10-30','Shipped',NULL,119),

(10316,'2004-11-01','2004-11-09','2004-11-07','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',240),

(10317,'2004-11-02','2004-11-12','2004-11-08','Shipped',NULL,161),

(10318,'2004-11-02','2004-11-09','2004-11-07','Shipped',NULL,157),

(10319,'2004-11-03','2004-11-11','2004-11-06','Shipped','Customer requested that DHL is used for this shipping',456),

(10320,'2004-11-03','2004-11-13','2004-11-07','Shipped',NULL,144),

(10321,'2004-11-04','2004-11-12','2004-11-07','Shipped',NULL,462),

(10322,'2004-11-04','2004-11-12','2004-11-10','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',363),

(10323,'2004-11-05','2004-11-12','2004-11-09','Shipped',NULL,128),

(10324,'2004-11-05','2004-11-11','2004-11-08','Shipped',NULL,181),

(10325,'2004-11-05','2004-11-13','2004-11-08','Shipped',NULL,121),

(10326,'2004-11-09','2004-11-16','2004-11-10','Shipped',NULL,144),

(10327,'2004-11-10','2004-11-19','2004-11-13','Resolved','Order was disputed and resolved on 12/1/04. The Sales Manager was involved. Customer claims the scales of the models don\'t match what was discussed.',145),

(10328,'2004-11-12','2004-11-21','2004-11-18','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',278),

(10329,'2004-11-15','2004-11-24','2004-11-16','Shipped',NULL,131),

(10330,'2004-11-16','2004-11-25','2004-11-21','Shipped',NULL,385),

(10331,'2004-11-17','2004-11-23','2004-11-23','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',486),

(10332,'2004-11-17','2004-11-25','2004-11-18','Shipped',NULL,187),

(10333,'2004-11-18','2004-11-27','2004-11-20','Shipped',NULL,129),

(10334,'2004-11-19','2004-11-28',NULL,'On Hold','The outstaniding balance for this customer exceeds their credit limit. Order will be shipped when a payment is received.',144),

(10335,'2004-11-19','2004-11-29','2004-11-23','Shipped',NULL,124),

(10336,'2004-11-20','2004-11-26','2004-11-24','Shipped','Customer requested that DHL is used for this shipping',172),

(10337,'2004-11-21','2004-11-30','2004-11-26','Shipped',NULL,424),

(10338,'2004-11-22','2004-12-02','2004-11-27','Shipped',NULL,381),

(10339,'2004-11-23','2004-11-30','2004-11-30','Shipped',NULL,398),

(10340,'2004-11-24','2004-12-01','2004-11-25','Shipped','Customer is interested in buying more Ferrari models',216),

(10341,'2004-11-24','2004-12-01','2004-11-29','Shipped',NULL,382),

(10342,'2004-11-24','2004-12-01','2004-11-29','Shipped',NULL,114),

(10343,'2004-11-24','2004-12-01','2004-11-26','Shipped',NULL,353),

(10344,'2004-11-25','2004-12-02','2004-11-29','Shipped',NULL,350),

(10345,'2004-11-25','2004-12-01','2004-11-26','Shipped',NULL,103),

(10346,'2004-11-29','2004-12-05','2004-11-30','Shipped',NULL,112),

(10347,'2004-11-29','2004-12-07','2004-11-30','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',114),

(10348,'2004-11-01','2004-11-08','2004-11-05','Shipped',NULL,458),

(10349,'2004-12-01','2004-12-07','2004-12-03','Shipped',NULL,151),

(10350,'2004-12-02','2004-12-08','2004-12-05','Shipped',NULL,141),

(10351,'2004-12-03','2004-12-11','2004-12-07','Shipped',NULL,324),

(10352,'2004-12-03','2004-12-12','2004-12-09','Shipped',NULL,198),

(10353,'2004-12-04','2004-12-11','2004-12-05','Shipped',NULL,447),

(10354,'2004-12-04','2004-12-10','2004-12-05','Shipped',NULL,323),

(10355,'2004-12-07','2004-12-14','2004-12-13','Shipped',NULL,141),

(10356,'2004-12-09','2004-12-15','2004-12-12','Shipped',NULL,250),

(10357,'2004-12-10','2004-12-16','2004-12-14','Shipped',NULL,124),

(10358,'2004-12-10','2004-12-16','2004-12-16','Shipped','Customer requested that DHL is used for this shipping',141),

(10359,'2004-12-15','2004-12-23','2004-12-18','Shipped',NULL,353),

(10360,'2004-12-16','2004-12-22','2004-12-18','Shipped',NULL,496),

(10361,'2004-12-17','2004-12-24','2004-12-20','Shipped',NULL,282),

(10362,'2005-01-05','2005-01-16','2005-01-10','Shipped',NULL,161),

(10363,'2005-01-06','2005-01-12','2005-01-10','Shipped',NULL,334),

(10364,'2005-01-06','2005-01-17','2005-01-09','Shipped',NULL,350),

(10365,'2005-01-07','2005-01-18','2005-01-11','Shipped',NULL,320),

(10366,'2005-01-10','2005-01-19','2005-01-12','Shipped',NULL,381),

(10367,'2005-01-12','2005-01-21','2005-01-16','Resolved','This order was disputed and resolved on 2/1/2005. Customer claimed that container with shipment was damaged. FedEx\'s investigation proved this wrong.',205),

(10368,'2005-01-19','2005-01-27','2005-01-24','Shipped','Can we renegotiate this one?',124),

(10369,'2005-01-20','2005-01-28','2005-01-24','Shipped',NULL,379),

(10370,'2005-01-20','2005-02-01','2005-01-25','Shipped',NULL,276),

(10371,'2005-01-23','2005-02-03','2005-01-25','Shipped',NULL,124),

(10372,'2005-01-26','2005-02-05','2005-01-28','Shipped',NULL,398),

(10373,'2005-01-31','2005-02-08','2005-02-06','Shipped',NULL,311),

(10374,'2005-02-02','2005-02-09','2005-02-03','Shipped',NULL,333),

(10375,'2005-02-03','2005-02-10','2005-02-06','Shipped',NULL,119),

(10376,'2005-02-08','2005-02-18','2005-02-13','Shipped',NULL,219),

(10377,'2005-02-09','2005-02-21','2005-02-12','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',186),

(10378,'2005-02-10','2005-02-18','2005-02-11','Shipped',NULL,141),

(10379,'2005-02-10','2005-02-18','2005-02-11','Shipped',NULL,141),

(10380,'2005-02-16','2005-02-24','2005-02-18','Shipped',NULL,141),

(10381,'2005-02-17','2005-02-25','2005-02-18','Shipped',NULL,321),

(10382,'2005-02-17','2005-02-23','2005-02-18','Shipped','Custom shipping instructions sent to warehouse',124),

(10383,'2005-02-22','2005-03-02','2005-02-25','Shipped',NULL,141),

(10384,'2005-02-23','2005-03-06','2005-02-27','Shipped',NULL,321),

(10385,'2005-02-28','2005-03-09','2005-03-01','Shipped',NULL,124),

(10386,'2005-03-01','2005-03-09','2005-03-06','Resolved','Disputed then Resolved on 3/15/2005. Customer doesn\'t like the craftsmaship of the models.',141),

(10387,'2005-03-02','2005-03-09','2005-03-06','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',148),

(10388,'2005-03-03','2005-03-11','2005-03-09','Shipped',NULL,462),

(10389,'2005-03-03','2005-03-09','2005-03-08','Shipped',NULL,448),

(10390,'2005-03-04','2005-03-11','2005-03-07','Shipped','They want to reevaluate their terms agreement with Finance.',124),

(10391,'2005-03-09','2005-03-20','2005-03-15','Shipped',NULL,276),

(10392,'2005-03-10','2005-03-18','2005-03-12','Shipped',NULL,452),

(10393,'2005-03-11','2005-03-22','2005-03-14','Shipped','They want to reevaluate their terms agreement with Finance.',323),

(10394,'2005-03-15','2005-03-25','2005-03-19','Shipped',NULL,141),

(10395,'2005-03-17','2005-03-24','2005-03-23','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',250),

(10396,'2005-03-23','2005-04-02','2005-03-28','Shipped',NULL,124),

(10397,'2005-03-28','2005-04-09','2005-04-01','Shipped',NULL,242),

(10398,'2005-03-30','2005-04-09','2005-03-31','Shipped',NULL,353),

(10399,'2005-04-01','2005-04-12','2005-04-03','Shipped',NULL,496),

(10400,'2005-04-01','2005-04-11','2005-04-04','Shipped','Customer requested that DHL is used for this shipping',450),

(10401,'2005-04-03','2005-04-14',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',328),

(10402,'2005-04-07','2005-04-14','2005-04-12','Shipped',NULL,406),

(10403,'2005-04-08','2005-04-18','2005-04-11','Shipped',NULL,201),

(10404,'2005-04-08','2005-04-14','2005-04-11','Shipped',NULL,323),

(10405,'2005-04-14','2005-04-24','2005-04-20','Shipped',NULL,209),

(10406,'2005-04-15','2005-04-25','2005-04-21','Disputed','Customer claims container with shipment was damaged during shipping and some items were missing. I am talking to FedEx about this.',145),

(10407,'2005-04-22','2005-05-04',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',450),

(10408,'2005-04-22','2005-04-29','2005-04-27','Shipped',NULL,398),

(10409,'2005-04-23','2005-05-05','2005-04-24','Shipped',NULL,166),

(10410,'2005-04-29','2005-05-10','2005-04-30','Shipped',NULL,357),

(10411,'2005-05-01','2005-05-08','2005-05-06','Shipped',NULL,233),

(10412,'2005-05-03','2005-05-13','2005-05-05','Shipped',NULL,141),

(10413,'2005-05-05','2005-05-14','2005-05-09','Shipped','Customer requested that DHL is used for this shipping',175),

(10414,'2005-05-06','2005-05-13',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',362),

(10415,'2005-05-09','2005-05-20','2005-05-12','Disputed','Customer claims the scales of the models don\'t match what was discussed. I keep all the paperwork though to prove otherwise',471),

(10416,'2005-05-10','2005-05-16','2005-05-14','Shipped',NULL,386),

(10417,'2005-05-13','2005-05-19','2005-05-19','Disputed','Customer doesn\'t like the colors and precision of the models.',141),

(10418,'2005-05-16','2005-05-24','2005-05-20','Shipped',NULL,412),

(10419,'2005-05-17','2005-05-28','2005-05-19','Shipped',NULL,382),

(10420,'2005-05-29','2005-06-07',NULL,'In Process',NULL,282),

(10421,'2005-05-29','2005-06-06',NULL,'In Process','Custom shipping instructions were sent to warehouse',124),

(10422,'2005-05-30','2005-06-11',NULL,'In Process',NULL,157),

(10423,'2005-05-30','2005-06-05',NULL,'In Process',NULL,314),

(10424,'2005-05-31','2005-06-08',NULL,'In Process',NULL,141),

(10425,'2005-05-31','2005-06-07',NULL,'In Process',NULL,119);

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`customerNumber`,`checkNumber`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payments` */

insert  into `payments`(`customerNumber`,`checkNumber`,`paymentDate`,`amount`) values 

(103,'HQ336336','2004-10-19','6066.78'),

(103,'JM555205','2003-06-05','14571.44'),

(103,'OM314933','2004-12-18','1676.14'),

(112,'BO864823','2004-12-17','14191.12'),

(112,'HQ55022','2003-06-06','32641.98'),

(112,'ND748579','2004-08-20','33347.88'),

(114,'GG31455','2003-05-20','45864.03'),

(114,'MA765515','2004-12-15','82261.22'),

(114,'NP603840','2003-05-31','7565.08'),

(114,'NR27552','2004-03-10','44894.74'),

(119,'DB933704','2004-11-14','19501.82'),

(119,'LN373447','2004-08-08','47924.19'),

(119,'NG94694','2005-02-22','49523.67'),

(121,'DB889831','2003-02-16','50218.95'),

(121,'FD317790','2003-10-28','1491.38'),

(121,'KI831359','2004-11-04','17876.32'),

(121,'MA302151','2004-11-28','34638.14'),

(124,'AE215433','2005-03-05','101244.59'),

(124,'BG255406','2004-08-28','85410.87'),

(124,'CQ287967','2003-04-11','11044.30'),

(124,'ET64396','2005-04-16','83598.04'),

(124,'HI366474','2004-12-27','47142.70'),

(124,'HR86578','2004-11-02','55639.66'),

(124,'KI131716','2003-08-15','111654.40'),

(124,'LF217299','2004-03-26','43369.30'),

(124,'NT141748','2003-11-25','45084.38'),

(128,'DI925118','2003-01-28','10549.01'),

(128,'FA465482','2003-10-18','24101.81'),

(128,'FH668230','2004-03-24','33820.62'),

(128,'IP383901','2004-11-18','7466.32'),

(129,'DM826140','2004-12-08','26248.78'),

(129,'ID449593','2003-12-11','23923.93'),

(129,'PI42991','2003-04-09','16537.85'),

(131,'CL442705','2003-03-12','22292.62'),

(131,'MA724562','2004-12-02','50025.35'),

(131,'NB445135','2004-09-11','35321.97'),

(141,'AU364101','2003-07-19','36251.03'),

(141,'DB583216','2004-11-01','36140.38'),

(141,'DL460618','2005-05-19','46895.48'),

(141,'HJ32686','2004-01-30','59830.55'),

(141,'ID10962','2004-12-31','116208.40'),

(141,'IN446258','2005-03-25','65071.26'),

(141,'JE105477','2005-03-18','120166.58'),

(141,'JN355280','2003-10-26','49539.37'),

(141,'JN722010','2003-02-25','40206.20'),

(141,'KT52578','2003-12-09','63843.55'),

(141,'MC46946','2004-07-09','35420.74'),

(141,'MF629602','2004-08-16','20009.53'),

(141,'NU627706','2004-05-17','26155.91'),

(144,'IR846303','2004-12-12','36005.71'),

(144,'LA685678','2003-04-09','7674.94'),

(145,'CN328545','2004-07-03','4710.73'),

(145,'ED39322','2004-04-26','28211.70'),

(145,'HR182688','2004-12-01','20564.86'),

(145,'JJ246391','2003-02-20','53959.21'),

(146,'FP549817','2004-03-18','40978.53'),

(146,'FU793410','2004-01-16','49614.72'),

(146,'LJ160635','2003-12-10','39712.10'),

(148,'BI507030','2003-04-22','44380.15'),

(148,'DD635282','2004-08-11','2611.84'),

(148,'KM172879','2003-12-26','105743.00'),

(148,'ME497970','2005-03-27','3516.04'),

(151,'BF686658','2003-12-22','58793.53'),

(151,'GB852215','2004-07-26','20314.44'),

(151,'IP568906','2003-06-18','58841.35'),

(151,'KI884577','2004-12-14','39964.63'),

(157,'HI618861','2004-11-19','35152.12'),

(157,'NN711988','2004-09-07','63357.13'),

(161,'BR352384','2004-11-14','2434.25'),

(161,'BR478494','2003-11-18','50743.65'),

(161,'KG644125','2005-02-02','12692.19'),

(161,'NI908214','2003-08-05','38675.13'),

(166,'BQ327613','2004-09-16','38785.48'),

(166,'DC979307','2004-07-07','44160.92'),

(166,'LA318629','2004-02-28','22474.17'),

(167,'ED743615','2004-09-19','12538.01'),

(167,'GN228846','2003-12-03','85024.46'),

(171,'GB878038','2004-03-15','18997.89'),

(171,'IL104425','2003-11-22','42783.81'),

(172,'AD832091','2004-09-09','1960.80'),

(172,'CE51751','2004-12-04','51209.58'),

(172,'EH208589','2003-04-20','33383.14'),

(173,'GP545698','2004-05-13','11843.45'),

(173,'IG462397','2004-03-29','20355.24'),

(175,'CITI3434344','2005-05-19','28500.78'),

(175,'IO448913','2003-11-19','24879.08'),

(175,'PI15215','2004-07-10','42044.77'),

(177,'AU750837','2004-04-17','15183.63'),

(177,'CI381435','2004-01-19','47177.59'),

(181,'CM564612','2004-04-25','22602.36'),

(181,'GQ132144','2003-01-30','5494.78'),

(181,'OH367219','2004-11-16','44400.50'),

(186,'AE192287','2005-03-10','23602.90'),

(186,'AK412714','2003-10-27','37602.48'),

(186,'KA602407','2004-10-21','34341.08'),

(187,'AM968797','2004-11-03','52825.29'),

(187,'BQ39062','2004-12-08','47159.11'),

(187,'KL124726','2003-03-27','48425.69'),

(189,'BO711618','2004-10-03','17359.53'),

(189,'NM916675','2004-03-01','32538.74'),

(198,'FI192930','2004-12-06','9658.74'),

(198,'HQ920205','2003-07-06','6036.96'),

(198,'IS946883','2004-09-21','5858.56'),

(201,'DP677013','2003-10-20','23908.24'),

(201,'OO846801','2004-06-15','37258.94'),

(202,'HI358554','2003-12-18','36527.61'),

(202,'IQ627690','2004-11-08','33594.58'),

(204,'GC697638','2004-08-13','51152.86'),

(204,'IS150005','2004-09-24','4424.40'),

(205,'GL756480','2003-12-04','3879.96'),

(205,'LL562733','2003-09-05','50342.74'),

(205,'NM739638','2005-02-06','39580.60'),

(209,'BOAF82044','2005-05-03','35157.75'),

(209,'ED520529','2004-06-21','4632.31'),

(209,'PH785937','2004-05-04','36069.26'),

(211,'BJ535230','2003-12-09','45480.79'),

(216,'BG407567','2003-05-09','3101.40'),

(216,'ML780814','2004-12-06','24945.21'),

(216,'MM342086','2003-12-14','40473.86'),

(219,'BN17870','2005-03-02','3452.75'),

(219,'BR941480','2003-10-18','4465.85'),

(227,'MQ413968','2003-10-31','36164.46'),

(227,'NU21326','2004-11-02','53745.34'),

(233,'BOFA23232','2005-05-20','29070.38'),

(233,'II180006','2004-07-01','22997.45'),

(233,'JG981190','2003-11-18','16909.84'),

(239,'NQ865547','2004-03-15','80375.24'),

(240,'IF245157','2004-11-16','46788.14'),

(240,'JO719695','2004-03-28','24995.61'),

(242,'AF40894','2003-11-22','33818.34'),

(242,'HR224331','2005-06-03','12432.32'),

(242,'KI744716','2003-07-21','14232.70'),

(249,'IJ399820','2004-09-19','33924.24'),

(249,'NE404084','2004-09-04','48298.99'),

(250,'EQ12267','2005-05-17','17928.09'),

(250,'HD284647','2004-12-30','26311.63'),

(250,'HN114306','2003-07-18','23419.47'),

(256,'EP227123','2004-02-10','5759.42'),

(256,'HE84936','2004-10-22','53116.99'),

(259,'EU280955','2004-11-06','61234.67'),

(259,'GB361972','2003-12-07','27988.47'),

(260,'IO164641','2004-08-30','37527.58'),

(260,'NH776924','2004-04-24','29284.42'),

(276,'EM979878','2005-02-09','27083.78'),

(276,'KM841847','2003-11-13','38547.19'),

(276,'LE432182','2003-09-28','41554.73'),

(276,'OJ819725','2005-04-30','29848.52'),

(278,'BJ483870','2004-12-05','37654.09'),

(278,'GP636783','2003-03-02','52151.81'),

(278,'NI983021','2003-11-24','37723.79'),

(282,'IA793562','2003-08-03','24013.52'),

(282,'JT819493','2004-08-02','35806.73'),

(282,'OD327378','2005-01-03','31835.36'),

(286,'DR578578','2004-10-28','47411.33'),

(286,'KH910279','2004-09-05','43134.04'),

(298,'AJ574927','2004-03-13','47375.92'),

(298,'LF501133','2004-09-18','61402.00'),

(299,'AD304085','2003-10-24','36798.88'),

(299,'NR157385','2004-09-05','32260.16'),

(311,'DG336041','2005-02-15','46770.52'),

(311,'FA728475','2003-10-06','32723.04'),

(311,'NQ966143','2004-04-25','16212.59'),

(314,'LQ244073','2004-08-09','45352.47'),

(314,'MD809704','2004-03-03','16901.38'),

(319,'HL685576','2004-11-06','42339.76'),

(319,'OM548174','2003-12-07','36092.40'),

(320,'GJ597719','2005-01-18','8307.28'),

(320,'HO576374','2003-08-20','41016.75'),

(320,'MU817160','2003-11-24','52548.49'),

(321,'DJ15149','2003-11-03','85559.12'),

(321,'LA556321','2005-03-15','46781.66'),

(323,'AL493079','2005-05-23','75020.13'),

(323,'ES347491','2004-06-24','37281.36'),

(323,'HG738664','2003-07-05','2880.00'),

(323,'PQ803830','2004-12-24','39440.59'),

(324,'DQ409197','2004-12-13','13671.82'),

(324,'FP443161','2003-07-07','29429.14'),

(324,'HB150714','2003-11-23','37455.77'),

(328,'EN930356','2004-04-16','7178.66'),

(328,'NR631421','2004-05-30','31102.85'),

(333,'HL209210','2003-11-15','23936.53'),

(333,'JK479662','2003-10-17','9821.32'),

(333,'NF959653','2005-03-01','21432.31'),

(334,'CS435306','2005-01-27','45785.34'),

(334,'HH517378','2003-08-16','29716.86'),

(334,'LF737277','2004-05-22','28394.54'),

(339,'AP286625','2004-10-24','23333.06'),

(339,'DA98827','2003-11-28','34606.28'),

(344,'AF246722','2003-11-24','31428.21'),

(344,'NJ906924','2004-04-02','15322.93'),

(347,'DG700707','2004-01-18','21053.69'),

(347,'LG808674','2003-10-24','20452.50'),

(350,'BQ602907','2004-12-11','18888.31'),

(350,'CI471510','2003-05-25','50824.66'),

(350,'OB648482','2005-01-29','1834.56'),

(353,'CO351193','2005-01-10','49705.52'),

(353,'ED878227','2003-07-21','13920.26'),

(353,'GT878649','2003-05-21','16700.47'),

(353,'HJ618252','2005-06-09','46656.94'),

(357,'AG240323','2003-12-16','20220.04'),

(357,'NB291497','2004-05-15','36442.34'),

(362,'FP170292','2004-07-11','18473.71'),

(362,'OG208861','2004-09-21','15059.76'),

(363,'HL575273','2004-11-17','50799.69'),

(363,'IS232033','2003-01-16','10223.83'),

(363,'PN238558','2003-12-05','55425.77'),

(379,'CA762595','2005-02-12','28322.83'),

(379,'FR499138','2003-09-16','32680.31'),

(379,'GB890854','2004-08-02','12530.51'),

(381,'BC726082','2004-12-03','12081.52'),

(381,'CC475233','2003-04-19','1627.56'),

(381,'GB117430','2005-02-03','14379.90'),

(381,'MS154481','2003-08-22','1128.20'),

(382,'CC871084','2003-05-12','35826.33'),

(382,'CT821147','2004-08-01','6419.84'),

(382,'PH29054','2004-11-27','42813.83'),

(385,'BN347084','2003-12-02','20644.24'),

(385,'CP804873','2004-11-19','15822.84'),

(385,'EK785462','2003-03-09','51001.22'),

(386,'DO106109','2003-11-18','38524.29'),

(386,'HG438769','2004-07-18','51619.02'),

(398,'AJ478695','2005-02-14','33967.73'),

(398,'DO787644','2004-06-21','22037.91'),

(398,'JPMR4544','2005-05-18','615.45'),

(398,'KB54275','2004-11-29','48927.64'),

(406,'BJMPR4545','2005-04-23','12190.85'),

(406,'HJ217687','2004-01-28','49165.16'),

(406,'NA197101','2004-06-17','25080.96'),

(412,'GH197075','2004-07-25','35034.57'),

(412,'PJ434867','2004-04-14','31670.37'),

(415,'ER54537','2004-09-28','31310.09'),

(424,'KF480160','2004-12-07','25505.98'),

(424,'LM271923','2003-04-16','21665.98'),

(424,'OA595449','2003-10-31','22042.37'),

(447,'AO757239','2003-09-15','6631.36'),

(447,'ER615123','2003-06-25','17032.29'),

(447,'OU516561','2004-12-17','26304.13'),

(448,'FS299615','2005-04-18','27966.54'),

(448,'KR822727','2004-09-30','48809.90'),

(450,'EF485824','2004-06-21','59551.38'),

(452,'ED473873','2003-11-15','27121.90'),

(452,'FN640986','2003-11-20','15130.97'),

(452,'HG635467','2005-05-03','8807.12'),

(455,'HA777606','2003-12-05','38139.18'),

(455,'IR662429','2004-05-12','32239.47'),

(456,'GJ715659','2004-11-13','27550.51'),

(456,'MO743231','2004-04-30','1679.92'),

(458,'DD995006','2004-11-15','33145.56'),

(458,'NA377824','2004-02-06','22162.61'),

(458,'OO606861','2003-06-13','57131.92'),

(462,'ED203908','2005-04-15','30293.77'),

(462,'GC60330','2003-11-08','9977.85'),

(462,'PE176846','2004-11-27','48355.87'),

(471,'AB661578','2004-07-28','9415.13'),

(471,'CO645196','2003-12-10','35505.63'),

(473,'LL427009','2004-02-17','7612.06'),

(473,'PC688499','2003-10-27','17746.26'),

(475,'JP113227','2003-12-09','7678.25'),

(475,'PB951268','2004-02-13','36070.47'),

(484,'GK294076','2004-10-26','3474.66'),

(484,'JH546765','2003-11-29','47513.19'),

(486,'BL66528','2004-04-14','5899.38'),

(486,'HS86661','2004-11-23','45994.07'),

(486,'JB117768','2003-03-20','25833.14'),

(487,'AH612904','2003-09-28','29997.09'),

(487,'PT550181','2004-02-29','12573.28'),

(489,'OC773849','2003-12-04','22275.73'),

(489,'PO860906','2004-01-31','7310.42'),

(495,'BH167026','2003-12-26','59265.14'),

(495,'FN155234','2004-05-14','6276.60'),

(496,'EU531600','2005-05-25','30253.75'),

(496,'MB342426','2003-07-16','32077.44'),

(496,'MN89921','2004-12-31','52166.00');

/*Table structure for table `productlines` */

DROP TABLE IF EXISTS `productlines`;

CREATE TABLE `productlines` (
  `productLine` varchar(50) NOT NULL,
  `textDescription` varchar(4000) DEFAULT NULL,
  `htmlDescription` mediumtext,
  `image` mediumblob,
  PRIMARY KEY (`productLine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productlines` */
INSERT INTO `productlines` (`productLine`, `textDescription`, `htmlDescription`, `image`) VALUES
('Classic Cars', 'Attention car enthusiasts: Make your wildest car ownership dreams come true. Whether you are looking for classic muscle cars, dream sports cars or movie-inspired miniatures, you will find great choices in this category. These replicas feature superb attention to detail and craftsmanship and offer features such as working steering system, opening forward compartment, opening rear trunk with removable spare wheel, 4-wheel independent spring suspension, and so on. The models range in size from 1:10 to 1:24 scale and include numerous limited edition and several out-of-production vehicles. All models include a certificate of authenticity from their manufacturers and come fully assembled and ready for display in the home or office.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0xffd8ffe000104a46494600010101006000600000fffe003b43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c207175616c697479203d2038320affdb0043000604040504040605050506060607090e0909080809120d0d0a0e1512161615121414171a211c17181f1914141d271d1f2223252525161c292c28242b21242524ffdb00430106060609080911090911241814182424242424242424242424242424242424242424242424242424242424242424242424242424242424242424242424242424ffc000110802c8042c03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00faa68a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28fc6800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28c8f5a322800a28c8f5a323d450014519f7a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a29b24a912ee760a3dea169a4907eec6c07bb0e7f2a02e4ccea8a5998281d493c5573a8c44e2159263fec2f1f9f4aced46ef4ad223377ab5ec5185e77dcc838fa0e95e67e2afda5bc2da317834b5935399780cbc479faf7ab8d36f63375123d696fddc1f916323aab1c91f9506edba97c7d17fc6be5bbcf8f9e3cf105cbc7a2d84506fe3222276d54974ef897e29e752d72fd55baa4676015baa08cdd491f515debfa759296bad4a1840ebbe65158773f13bc216b912f886cf8ea3cf27f957cf10fc12babb6dd7d7d3c84f5f32626b5ad7e056928a04c771fa9354a8223da3ee7acdd7c6ff0000db13bf5cb77ff7433566cdfb447c3d8b3fe9e5ff00ddb726b8a83e09f87a3e4c40fd6b4a2f845e1e8c01f6743ff01aaf62839fccd87fda57c02a70a2e9fe96c39a8bfe1a67c0dfc36d787feddc5568be16f8723ff9744ffbe45594f869e1def649f90a7ec622e70ff8698f048eb69798ff00ae029e3f696f03ff00cfb5e0ff00b60297fe15a786ff00e7c93f2a77fc2b3f0ce39b04fca8f6310e701fb4c781bfe785e8ff00b7714e1fb4c780fbade2ff00dbbd347c31f0c0181a7a7e54eff8561e1823fe41d1fe54bd8a1f38f1fb4bf80bfe7a5d8ffb77a917f694f0137fcbcdc8ff00b606abff00c2acf0b13ce9d1fe541f84fe1538ff00897a7e547b141ed0b6bfb47f8098e3edd38ffb606a55fda2bc047fe62520ff00b64d59a3e127853271a7a8cd30fc1df09b73f6203e947b15d839fccda4fda1bc06dd35723eb1b548bfb40780dbfe636a3ea8d5ce1f82de11273f62c1f6349ff0a43c23c9168d9fad1ec9760e7f33aa4f8efe037c63c4110fa86a9e3f8dbe077e9e21b7fc49ae29be05f84a43936ce3f1a85be00f849bfe59483fe054bd8a0f69e67a247f187c18e38f105aff00df5ffd6a9d7e2a78464fbbe21b4ffbf83fc2bcb5ff00678f0b37dd332ffc0aab3fece3e1e6fbb7170bff0002a5ec5761fb4f33d8a3f88fe1790fcbe21b3ffbf8b5623f1be832ff00abd7ac8ffdb45af106fd9b7463f76f671ff03a864fd9af4f3feaf52b85ff0081d2f6287ed1f73dfe2f12584bfeaf55b37fa30ff1ab29aa249f727b67fa1ffebd7ce0ff00b38ba7fc7beb374a7fdfa89be037892d8e6d3c497698e9f39a3d820f68fb9f4d0bd63fc087e8d4f17aa3ef230fc8d7cc43e1a7c47d38e6d3c5377c76676a77d9fe34e967f73acadca8ece33fcc527410fda33e9e5ba89bb91f514f5911feeb03f435f2f1f891f17b46e6fb4886e957a948cff4abda7fed2f7b68c23f10787ae21c75745ce3f3a8747ccb551f63e95a2bcb3c35f1b7c2baf8516dac470c87fe594cdb187e0dc7eb5da41e252f179f12c57f6c3abda382cbf55ff0359ca9c914a699bf4553d3f57b2d4d49b59d5d97ef21e197ea0f3572a0b0a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800aa97b7332910daa2b4cdd4b7dd8c7a9ff0aaf797eefa845616d9ddf7e665fe01d87e3543c55e2ad1fc0ba3cba8eab7211064804fcf2b7a014d2626ec5ebbb9b4d1ad1efb52bc48d231979e62140fa7a7e15e21e34fda367b9966d2fc1360d349f77edd20ca83ea05715af788fc55f19f54218c965a4237eee053818f535d77863c17a6f86adc24310925eacec3bfb575428a5ac8e7954b9c2bf81fc5be389c5f788f589be7e70e7f90aeaf44f855e1ed242b4901ba9473ba4e95d8814f0456f6443931b69a75a5963ecd6f145feeae2ae039f5a855bdea4522992482a407151035206a00996a406a00d4fdd40589c1c8a78a80353c31f5a604e0d3c1a815bde9e1a826c4a08a729a8b7734e0d40130a506a20d4f0d401252ad479a50def4ac224c52834dcd00d0161e29c3a5460d385003c734b8e6901a5045218e02971480d19a403852d25283400e146df514808a76ea4006de29061a353f5154ef7c25a2eaa852eec20901f55157d4d588cf149b1a3ca7c45fb37f86b59264b166b09739cc7c8fcab89b8f875f11be15ccf7be19d49efad221bda21ce547aa9afa490e2a468d2453b943023041f4acdbb1a2933e66d37f68192f3518bfb4f4e1617a9f2b4919da41f51fe06be85f0778c6dbc4b67191346f36d1864231271fa1f6af9bfe337c30feced66eaead10f91231946d1ca67fa5727f0ebe20dffc3dd7a04bf67974f76c31cfdd1fde1ee2b37692b75365a6c7dc54565e81aeda6bd6115d5a4e93c722074913a3a9effe35a958356354ee145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500154f55d4534cb192e586e61c227f798f41572b94bdbd8f54d7955e402cec58e4f667c727f0e9f9d34ae26ec3ee353b4f06f87ae75dd62501caf9b2b1eacc7a28af0092d35bf8dbae4daddf96874b80916d07f0ed1df1527c47f1d1f899e338343b7775d0ed27f2cedff96cd9e4fd2bd9f46d16d745d3e3b3b54558c263007b56552b3a6f43484134ee71961a55b6916cb6f6a811547240eb5311f9d5cbb8fcb99d4f62455435eb277573cf6acc4ce2941349f4a4e4530240d52abd400d3d4d202c2b53c1a815a9e1a9813a934edd5086a7eef5a009d4d3c1a803d3d5e9889d4d3b70cd42ad4ecd02250f4f0f50834f078a044a1a9e09a84353835004c1a94362a30dc5381a00941cd3b351034e0d480901a78351034edc2811266941a8f752834864a0d381a881a50d4809734a0d4791de9dbb8a603d4d381a8c1a703480994f15321e2ab29a9636c8a4d01650d585395c554438156236359c9148e6fe2068aba8e8ff006c440cf00c38c7de5ef5f2ff008dbc310db5cbc2462197e7888eded5f630459d65b77195917a1f7af9f7e26e846ca2b989d7e681f7467fd9cd60f43a20ce7fe02fc4bb8f09eb31f84f55948b4b89336b2b1e15cff0fd0d7d65148258d5d7a30cd7c23369c755223b67f2eee13e75bbf4248e715f577c13f1eaf8dfc27134e42ea16a3cab98fb861c67f1e0fe34a5aab96b7b1e87451456658514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140191e27d5ce8fa53c91ff00c7c4a7ca847fb47bfe1c9fc2bc0fe30f8ee5f0be8cbe1fd365c5f5f2625901f9910f5fc4d7a378dfc496e350babc99c7d8f4a8d80c9e1a4eac7f90af9745d5df8f7c6135fdcee224933ec883a0ad62ac8c9bbb3aef87ba47d86d16f664fdebfdccf61eb5f4568f71f6ad2ad66ce4b4633f5af18b545895624002a8000fa57aa7822732e82a8d9cc6e4572e295e37474517a90eb90f9778cdd9c66b208e4d745e228f291483e95cf377f5af43093e6a48e4af1b4d8c3c1a4cd2138a4cfad74190fe294354740a404c1a9eadc5400d3d5a9813ab7ad480f155c35481b8eb4013034f0d5029a7834c44c1e9e1ea00714bba815cb01fdea40d5594d4aa78a044d9cd381f7a8b34a3ad004a09a7ab1a88714e079a00995a9d9a890e69c0d004ca697351834b9a40499a70351834e06901264d28351eea5068b012e6941a6034a0d00480d381e6a3069c0d004a0d4919c542a6a48cf1480b2ad5346dc5550dd2a789aa1a1a6598cfef54fe15c37c5fd03ed9a349a8449968d70f8ee2bb6072a71f853b50b38f54d3e6b49465268ca9ac24b535833e30fb3b44ee61e2781f7afb8af43f845af27877c7365770e4586becb6d328e91cfd067eb5cb78a3499bc39af5d5acaa4490367a7de5ff00f555af0bf9516a3147bb6dbc9225c40ffdc7539a8f23a1ec99f6051515aceb736d14c8c196450c08e8722a5acca0a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800acaf146b2ba0e89717bc79806c881fe273c28ad5af2af8a5e2389f578f4f67c5ae9d17da6e0e78de7381f80e7f1a7157626ec8f17f8c7e247b5d3edfc3b04c4cb31f36e5b3cb67d7ea6b3bc01a38b1d38ddbae1e6e067d2b91babb9bc63e2d92e5c92b34b81eca3a57aac10a5bdba42830a8302b66668b30cb1c255e670880e326bd2fc09af5acd69716eb2a3794bbb20638af1ed667645b78931bddf393d062bb3f0cddc4ba9c315adfdb2acb191261725dbd2b1ab1e683b1ac1a8b57ea7792ea526a16f2325ab9894f0e475ac19eeed0cc55e6851c7552706bb1b3b3bc82c9d249a29f2a4aa85c62bc9edee535ef11dc8bbb14ff00476da644e318f5abcb9bb38b162926ee74136d0df2f43d2a2cd3a56058f1c761ed51e6bbce21dba96999a01e68b0c901a78350e69c1a80270dc538366a10f4e0d40132b53c3d401aa4069889b75286a88352e68249d5aa647aa80d4aa680342d2ce6bd72b101c72493802b563f0c5e360ef8b1ec735811dccb18289d1ba8f5a921d52e611f24b22b0f5a1c64f60e68ad19d02f85ae47de9547e14f5f0b49de703f0aca83c517b18c3bb9fc3357a3f15dc1c704fd56b370aa35281757c300759cfe02a45f0cc7de57a8ff00b6a795711cf06eef938aaa757ba8e6659959f1e9d2a146a3ea3e681a1fd83689d65738aa5776da7c2a424afbc7be6aadcea6f229dc5c2fa60d66cb74243b133cf73deb485397564ca4ba16037b8a76ecd40a7a549b95572e428ab7a1518393b224049352a8f5217eb59cda8e6411dba82deb4efb3c929dd34a727a814b566d2a7187c4cb8d71128e6407da905e4230378355d6ce11fc39fa9a905ac38ff5628b11cd0ec594b88df85704d4b9f71544da45fc20a9f634df2a78bfd5b6e03b1a7617b8cd346cd491b7159f05eee62920da455b89811c1a4d10d58b2ad5346d86aac0d4aadf30a964976271b85588dbe51ec7154a23f30a96393134b1fa618561346917a1e41f1d7c2b24b791eb76f165366c988af1ef0f5c32dd49a7b1f994ef88ff004afacbc4da647ac68b7768ea1b7c671f5c57c87acc3368baaabed29246c47e46b29696674c1f345a3ea4f843e24fed4d14e9b3be67b4e99ea57ffac7f9d77f5f35f82fc432e81ab69fac29ff00469f02503d0f06be918664b889258d83248a1948e8411c1a892d4a8bba1f4552bfd62cb4d205c4db5baed552c7f214eb4d52d2f541865ce7a06054feb4acf71dcb74514521851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514015b52bf874bb0b8bdb83b628236918fb015f277c54f114d16893cb231fb66b13191fd4293d3e98e2bdefe2cea8cd6963e1eb76fdeea3283201da243939fa9c7e55f29fc4ed41f58f16bdb45fea2d7f72807418eb5a41697224f5b163e1c693b19ef645e40dab9f5aefc74c564786ecfec3a541195c311935b30a1918281c9ab213d4e2be213324d6dfeb04607256b7fc1fe35b1b37d2edd34e6091300242c0124f7351f8cf4c797ecef248d1dae76ca40ce056459d8d95d4d1a58c578ec8405da07e67d2b39b69591d7469c6494a5b1f41c7e2a9c5c2c31c264cf033fcab2a7d223d2659c81896e1fcc90fd7b5747e1fb3034cb59268e333aa01b80e4556f13419f2e71fee9ae6c1cdc6aebd43129383b1cd3719a8f352b8ebc5458e7a57b6cf30334b9a4ef487ad218ecd2834d14b9a007834f06a2069c0d3112834f0d50669ca681160353b39a8437bd3837bd0227534f53500703bd4824a009586e5f43eb518bcbc89c1550d8e87ad3d4331e158fd054c96b31e7cb603d4d527613571a355d473c220ff00808a72ea3a9bf04a8fa014c91e2864f2e5b88637f46702ad416d25caee80accbea8c08a39c5ecc834fb579b5385ee82ba3380e3d6aeea2b79697d3410cfb2246c2afa0a7c3617692a3f978dac0f5157b58b592eaf9a6836956032770eb50e7ef0f9158c626ee4e24b9247a53e180467258b1f7ab3f609f9c18c91d7e714c951ed23df234593f7479839a729950a49bb0aceb1328246e3dbd2aade472cd93bfa720544855dbcc9a48cb1e0287071f955940a9d33cfa9a1172938cad1d8a566db2653f81ad91dab39210f24bb10c98e9b39c1abf670dc4910df0b2b0e39ef4e443937b92f6a507f2a536b3a8c94207bd34595cccf82bb53d7350e45d38733b3761049b8ed4193576df4e9651ba494463d2961b2f200c2ee6f5a8aeae2e23754dac9bba31e959b6d9d6a14d6c5b3a540064dc0cfbd566db6e4a2bab0cf635463bcb5964d82ea2964fee87c9fcaacc6c8b9c8007bd166b72ad0eaee4e97084e338ab0ac32083553ca8a5e84034e314b02ef5e40eb8aa30a9462f589a2aff0030a9f1fe940ff7931546094498c75f4abf270636fc2a2673a56d0599f6c6c40ce074af9b3e3168f1a4e6fade3214ca777fb26be9263c73d2b87f883e13b7d4f4cb895532edf31503ae05472a6ac384accf1cf09baea3a1a5a39e70427b115edff0d3c4f349e1efec9bb755bfb321177768c8c863f4e7f4af0cf05e9d753ea126990058ee1262aab21dbcfa5769e22b5d6741d51269aca78acef6dc5bdc4b1f214fae474ac9a56bb354da764759e3df1be8be15124e6f4cb7413e44560db8f72d5e5d63f1a75bd5b5681205f2ed197e7815813273d7d8d50d4bc3fa2dc2dd3eb17577a6c07e482e186f2e40fbb8f7f5a6e91e00f09ea445ae9be24b81aa889888e188b7206793d852e794a375b17c8a32d4fa1be1a78e60f17d94f1a33f996d81f3fdec7a1f5c11fcabb5af08fd9ab4cb9b393539662db7694c375ceeebfa57bbd629df535b5828a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145069b24891233c8ea8aa32598e00a007515ca6b1f14bc23a2965b8d5e19245e36400c873f8715c7ea3fb46e836e48b3d32f67ff6a42a9fd4d03b1eb7457cff007bfb4f5dab116ba05b01eb24ec7f90154cfed3fae21c9d074c29ff005d5c1a047d19457cf36dfb5a471c9b6fbc30f8ee60b8cff315d5e87fb4e780f56711dcc97da6c87afda21cafe6a4ff002a00f5ba2b2744f16683e2340fa46ad677bc676c5282c3f0eb5ad40051451400514556bed4ecb4b84cd7d7705b463f8a570a3f5a00b34571de22f8ade1bf0edbc534b3cb7425194fb32ee07df248e2b89bcfda32191c47a5688d331e079b2f39fa0143d069367b3d15e6da26bff123c448b3bd9691a3dab721a5476931eb82d5635ef165bf862d4cbad78a5e79874b7b4444663e9c026a941bd887248f41a866bcb6b7ff005d71147ecce05787c9f16b50bc2df64d39150fddfb54af2123d48ce2a09bc7de23ba5090a5859e3f8a28467f5ad961a4ccdd648f689bc53a35b8f9af91bda35673ff008e8351c7e2cd3a760b6e97b313e96b2281f8b002bc72cbc57e2c789c43aaab498e8e83f4ace6f891e2a8239a19ef9599b3195641919f4aa7866b56c5edafb237ef75497c41e32d635721fc8b081a3801fe10063f53935e15a168b3788fc50d1451f9b2cf31c67a649af6cf0239b9b5d5ec154bcd25a038f5ce726b8af055ac7a4dcea2eec61bb8c911762ad9e4d38c75b0a52695cec62f853e2241b7cbb7c0e989055983e1f6ada6319aec4438c20570726a9378bb5e8e2564d4f20752719a493c63ac4909ff00899aee03232455aa5adccb9d9b6de161776eb15d4425c8c38db906934cf04da698585a5898b71c9dabd6b9c83c49addf8dab7f316ee133fd2addac3e2f9e52124bf753d085614da80d39dac7a9e8ba7c8d6022c1465e32c29753f0d4f7768d1acb1e73915cef85acfc4b6914d1dec37b26f3952e6b6cd96bcf1baa46f1961805e5e95e7ca2954ba47626f92cd989378275303e430b7fc0b154a6f086b11f22d95fe8e2b7edb43f1546413ab4710f4e5ab56ded7584004fa92487da1aeff6afb9c4e2ce025f0feaf0f2d61263d883542749edb3e7dbcd17fbca6bd704570630ad23b1f5da0554b8b2b6da4dcbe57b89240050aaf7071ec792b5e423f885396e164fba19be809af4268fc23604b3be8d11ea4bc8b9fe7552e7e22781b49cabeb7a5c647f0c2bb8fe82abdaf641cace3921ba93ee5b4ec3d90d584d3751723163718ff72b6e3f8d1e0f9aea2b6b6bbbb99a560a1d2d9820fa93d056278abe306a9a6de49a7e93a2fda4cac161bf2d9880ee4fd297b57d86a0d9a76be18bbb856f3648ed8af51271c7ad54bd4d074a7d97fe25b089c7f029dcdf90af20d46f7c43e20d5e5b9d42e6eb57895f03c8bcf22161dc60738ae9745d6ef74791574df076830a81cc92ee96427dd8d5ae662691db417ba2dd1dba77f6a6a5276f26d4aa9fc4e2b56db45bf9fe71a2b4080702e6e1771fc0572e7c7be3794aadbdb6976d1770b1313fcead378bfc5d2aff00a8b707fd98dbfc69f2c89b9b573a478998116763a4c3e85c17feb5932e81f1259888aff46b74f688715424d6bc6b291b65118c630919ff001a8ed2f3c6f6d1baff006a5cc8cc7399225247b0a6e0c7cc6bc1e14f1fca7fd27c4f6a80ff00cf18466a73e02f14cd8dde2bbc1fee460572736a1f112e26659af353863ecf022f3fa546341f14de1265f12f89013ce3ccdb8fd2972487cc6fdc7c12bed426692f35cbb989e4b16c1353dafc0b9ed90a43e23be850f5549187f5ae365d2aea39cdb5df8d7568e51c32497bb48ad8b6f00eab342aebabeb53a3721fedad822a1d29771f3f99d1c5f04caffacf126a2dff006d5bfc6b4aefe1358dd88fcdd4ee22d8bb7f77215ddee79ae407c36bd3f7aef566cfadf3ff008d432fc3760312cda8903d6f5ffc68f652ee1ce8ec2dfe0b689103e6ea17923139cf9c467f5a91fe0bf8724705aeeec81fc3e7f1fceb8793c0d1400179b503ec2edcff005aa32e87a7dab6d77d4b3ef72c7fad2f60df529556b63d5f49f865a168f399ed679b7918f9a406b63fe118b1ed70ff00f7d0af114d1f4f2415fed1607d2e1bfc6926b2d321ea3542476599bff8aa6a9497525cd3d4f56b8f863a5dc4ed28d4efa12c72c229f686fae2aa4ff09b4f9a4dcbad6a8831cafda4e3f9d79629d3412766ae00f59dbfc69f1dde9887e5fed6e78cf9cc7fad1ec65dc5ce7a1ddfc1b8ee0011f893524e7bcc4ff5a745f082486128baf5c39eccf23647eb5e78753d3623b3fe26dcf4fde9ff001a47f1169d01c15d6b8ee253fe349d17dcb8d668eee7f83daa383e4f896643ebe63ff8d66de7c1bf15796d1c3e2669d1baac92b8c7d39ae3dbc63a5ab73278817e929ff1a46f885a347f20d67c43137f744849a3d93ee3f6ece934ff0083de34d3e5f36df5b8addd7ee947249ad36f067c5083fd5789addc8ff9ea01ae217c75a64cbe60f11f8995477c93fd2a8ddfc478ad831d3b5bd7ee24638c4dc28a7c8fab17b46fa1e8c744f8ad130db7ba4cfec5064d5eb6d2be2788f7c89a6331fe12db47e95e6b69f126d6484452788357597be541e7eb5662f89d1d8ffabf13ea83d4343ba8717d18b9bc8f5ed3ac3c4d0421efad97ceebb607040ad2926d4bcbc7d8aef70191955233f9d78edafc636dc5478aa762067125b115762f8e3222edfedd859f191be223349a93ea82ebb1dd4de29f1269f9fb6784eee68f3c3dab86207a95350de7c47f0fa6c8f556bbd31b39c5d5bb28fcf18ae5ec3e3add4dc1bab37c76e84fe74b7ff1963d42330dcdb5939e989220e3f5a569790ad1f32097c35a6ebbe219757f0ef88f4d265218461f0db87435d84fe30bfd11e1d33c4ba54725bceb8fb540c2446ff7876ac58fe13691e34d39355bb82db4c7957cc8e5d3cf94fed9c715e636d73aff0082fc5d268ada88d56c49dac9712ee555cf727a1151757b17c8ed72dfc5fb9716111d2e68a5b2b59f2e42f2b9e991e958bf01eed61f884a0aab7dae09149f538af44d4fc0526b569773e977d6f7e9731ed96df8dc3e9eb8ae1be177846fb40f891a712dbe2472b26460a7b11516572d49f29ef3f06ede56d1afb51974f8ec7ed374e91aa75744246e3f539af41aa1a1aac7a7a44aa1444cf1e00e986357eb992b688daf70a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005473dc436b0bcf3ca914483733b9c051ea4d677893c4da5f8534b9351d56e5218538504fcd2376551dcd7cb5f127e356a7e2dba68925369a60cf976b19ce4f62e7b9a4d8d2b9eafe39fda12c3482f6de1f896ee45e1aea5ff563fdd1d4fe95e2be2cf8a9ac78ae6126a178ecaa3e5893e541ff00011c579edc5f4b393b9c804f23355cce7d73f5aa4bb89b5d0dc9f5a9a6c9c804fbf4aa333cb70db8dc15f61540c9ef4ab291fc5576136cd0f2cba05f3dd587520f5a74d6734d10c4a64dbd79aa493b7ad5986e994fdea764c96d9149677b660391be2cd452cfe7c662011597ee923e6cd6e5b5d29237fcc9e954f52d2767efe0c329e723b52947b046463dadf5d584892c53491ca8721d0956535ea7e0afda37c5be1cd905e5d7f6adaae014ba1b980f66eb5e64904574e3cc7da7a363ad3208d164f2dc903382deb51728fb47c17f1d7c2de2d8d1269ffb2ee88e52e58043f47e9f9e299e25f8f5e17d137456266d5ae07004031183eec7fa035f2a69d1436ce023c8171dfa1ad9b731c80e115b9c75e6935d8b4bb9e83e20f8fbe2bd543c764b0e9b0b74102e5f1eec7fa62bce355d7b50d465696eeeee2e1dfef34ae58feb52bdab12cabb863afb55291021398da46a230727629c94761d631ea1ae4e96de6b0891700b1e147b57a5f83741d1347b5fb52eb5145a8a1dc04b167a76af2c0f72c0e62718ebb32b8a84dedf46fb525bc4c1e07dead22d45ea6734e48ed3c6ff00103e22ea52dd5ae8e65fb2bfca65070ce3dbd0570be1dd17c5af793cda9c33befc6e776c9c7b55e8754d5dfe55b9b823dd05365d4758438fb45ce3fd95157ed4854fc8eec4ed6f14688181550391cd3e2ba9c30c2b924d79bcbaa6a608065d44fd16a26d5756cfcb36a200f506b58e25a21d0ee7a9bea1776b26f84e09fef1e95465b892eee0cb2b8690f522bcfd6eb549941f3ee727fbf9a484eb31cfb92e65627d471532ace5b92a9d8f489fc4f75e0fd5ac35bb498471cb1f92e4f4dc3b1fa8abbac7c4ad1b58ba5b992cad2293032c840c9ef5e677f6da8df69d2a5e48ad081b98918c63fad62e9fa5e9f7d204764000cf2c466a252eb62d46e8f69b6f1af871b2d2fd906d193923a55ab7f895e0fb670525b107b7ca0d794eafe1cd1f46d36da76b6322b7cef221dff45c66a843e20d26d9976d8a04047fcb21d286c6a363df6d3e3469eb81686693feb85a13fa8157bfe176dc2636e99ad4be98b523f9d723e0cf8a56eb6696b63a788d1472b1c6013f8d74edf10ad26709369f2190f182e33f962b34e37b48d1c5dbdd3423f8e7aa63f77e17d4e43ff4d02aff005a86e3e3678ba5045a785ed6127a35c4c4fe82aa9f15da32179b4bbb8003807c92e0fe22960d6adef6332450c8ab9c64dbb67f2add428f5b98b753c8a773f137e25de711be97679ff9e56e5cfe66b366d6fe22dfb667f11de267f8628d231fcab52e75e82db2b2ce23c7f7edd96a14f11d84a31fdb167131eccb8fe62ba610a5d1184e53ea667d87c51760adc6b5a8480f50f727fa520f045dde63ed171249fefbb30ad07f146d9c4305cc53a9eb2248a00abf25e24d112979e67fb2920c9fd6a92827a213e76b73220f8736c18798b193ee01fe757e2f07e9767feb5e28fea54536101df7be997127a156cff5aa3a86ab6f0ce60ff8476fa72dd772617f335a5d19bb9278874cd0a4d1ae6de1d4ad927643b156704b103a605781de78d3558b4a7d363bbba8ad1495f2c357b16a761a33e99717074586c275462b211f329c75cd781df345342cbbb00b1ea2b9311ba3a68eccf5cf83de21f0be8de1d693539996e1e4388ce5b8af4db3f1de8323aa5a69f7936e1c32c071f9d78b7c1b5d3ec23b9b9d4268842300075dc49f6af48b8d774ffed0b78e0bfbaf2f693e4430e03fa65bb574537eea309a499dd45e24b89580b5d126607bb60014ebdd5f55109548a2b73ea1b24572da4dc6a33c8df6a8a53193f2981c8207e35b86d74e93fd79ba43eb21356414c6a9aadc31125f285e9dc1aa36d7fabe9d248b6faab88c924b300cf9f627b5741068da349832c8001d32c6a95d4de13d0246696f586ee4ed42e0521dccc9b53d6a76ff0090d5e0cff748ff000aa53ff6b31f9fc497899eccf8add83c6be1198ecb7bf79cfaa5b31fe9516a10e8b3c464b77bb795b908f6cd83f8f6a2e82cce4a7f0ecd792b48fa809dcff1bf26b5b4bd1b518e1549758b870bd14395007a629b00b4793cb961bcb293381b90ed6fa1ab9a9681abb58c834dbd30cacbf248cb900d3d04db2fc7a77197999f1d732b7f8d23e990cc30ad17e32b7f8d795aff00c2c6d1a3bc97549efe7788fee562505241ebc0ac66f8afe26b6902dddba965ed2c58359caac63b9a46127b1eda7c36d2a865da41f47273503f85dc125a3fcc9af2bb5f8cd7e0fef2d62623ba92315b961f1b62242cf6d70abfc451c31fd692ad07d46e125d0ee62d06387ef4486a2bad22d646c984a9ff0065b159769f15342ba237dea213fc12a15fd6b5a0f16e8b7670975039ee56418156a49ecc9d7aa2aae8d68dc146ff00bee91fc3d030f9778ff8156b096ca71ba39148fef32e01a5500ffaa31b67a60f34ecc5739abaf0a43272cf28c7fb66ab3786200982d263d779aec76c838218531973fc4695868e353c33680ee55763ff005d0d55b9f0b445cba8947b6eaee4c19e8e3e9c531e071d39fc052b0ee7091e85e42ed09230f76a53a281cb5b165f4dd5da3dbb30e841f702a26b391bbf15360b9c6b699a711fbcd2d891df791503e99a6139fb0cc31dbcc35d9b58dcff00098f1ee2a36b0bb6e3cab76faf14ac55ce4bfb2f4190665d2e7c8ee1e9fa743a1e9be66fd34dd2b1c849a3cfe1915d3369376dc18edc0fad23684ec304443e94b941333b7f82e7d8c7c336d0a91f30677c83f514e7b5f87bd4d84a8dd7e49d87e59ab32786838f98a1fceabbf8597fbb9fa52e51a91278abc45609a1183c2ef7f14a40063697823f3af32b5d396e2da67d56ea6b4b9924c849096e3d735e832f861474b573ef54e5f0b6e27364ec3be79acbd93bb35756e92391b2d22fb4e55bfd37c4ad6b1eec2c8242067d2baaf0bf8935bd37c456bab5f6ad65aa98d94bfef02b301fcea1bcf09adc402178e448d7a28e83f0ac49fc011af31cd32e3b6da974da7a029dcfabfc2bf10742d56e26896f2181a62264591c0e48f99739eb91fad7631cd1caa0c722383dd4e6be147f0aea16fcdbcf29fcc54f6f75e31d1ce6def750880ef1c86b295365a9a3ee7a2be3ad33e2dfc40d33006bd7781d16e230e3f515d5e9bfb4578bedcaadd45a65e8efb90c64fe5c5472b2b991f4d515e2361fb47ccc805e7859cb1fe282e46dfc8ad5dff868bb41cb78635003d44a0ff4a39587323d868af218ff0068bd39880fe1dd4941efb811fcaad27ed05a19e5f4bd4107bad1cac7747aa515e6d07c7bf0a49feb05dc38ea5907f8d6a5afc63f055cff00cc66388ffd340452b319dad158369e3cf0bdf63c8d76c1b3eb285fe75ab0ea763723305e5bc83d52406901668a40cac320823da96800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800ac8f15789f4ff0868971abea526d8611c28fbd231e8a3dc9ad7af94ff687f882faef88df46b594fd8b4d263014f0f2ff00137e1d07e3eb401c5fc43f88faa78d75692f2f663b412218149d90afa01ebea7bd70d24c492c4f26992499249aaeef9aa449234b9a4dfc5424d286a6225de680f51673467140cb024a9164355031a7abfbd3b81a90ce4569dadc71b771c1ec7a573f1c98ef5a5661ee0858d9437a138aa4c868966d1649ee3745801bba9e953c31456ec61876cf28eb238e07d056ce95a05edec0d1c1716c920fbc249304fb0a86ebc17af42dbdf4abb29d9e34c83ef91438f61a6673c04b86595948ee6a64170afbbed408c63eed473d95c5a8c5cdb5c43db2e857f9d408d1a9ea4fe350e1dcbe6b170998138ba624f24926a095656909172cbe9d4d46ed0c9fde5fa1a618a26ff96d28ff00815250b039f72e79b71e518def1c739cd3a695040abf69f987f1724d679b688ffcbccc3f1a7c76b12e3371237d68f663f68c73dddc2156867f97b9eedf5a6c5a9df236e1206c1cfcd532450a1c07047bad29b581f20ede7bd1ecd8b9c726ad7e7739311ddef4cfedbbf8d3632c7b739009aae74640d95b8c8cf4352ff62c041f31d9bd307a535062e7254d4afddb7623da3be720527f6e5e2b6551881ed8151be9b70cab15bbf9512f7cf24fbd577f0fdde73f68663fef53698ae8d54f145e340d03db09217fbc98c8357e1f17c06cd6cae740b068c749562db28ff810ae69743ba53832329f5cd4c346bb03e5bd53f5cd26a4c1348d61e2184218cd9831e7203c79c5075cd39c0dda5dab0ce4ee8eb1cd96a50f49637fc69c65d4553cb31a91ed4ef20b23b0b2f1fdbd8a011e9f6a8aa3a888568c5f14acdf9fb0db31ee4ae2bce0fda79df01fc298f0bcb18c452a9f5c0c52bf90fe67aada7c40d06e30979a633a67ac172eb8fc2ba4b5bcf03eaa025bdc5cdb4ec380d3b8c7e35f3fa5ab938fde0a558678db29712c63d5188a8937dca4cfa0aefe1ed9dec5e7c575a9c8bd7f737c5b3f81ac893e1f5907f9ee7568f1fdf60d9af238356d5ad148b5d5ef13dbcc357a3f18788c2b29d6a663eec4e7f3ada9d7b68d194e17d533d225f87fa79248d5af631e8514d20f0259c4014d4de73d848bb07e95e6c9e37f10ac818df938ece322a45f88baf090ef92093ea315baad4d993a733bf97c39a9c4c059c70f1de3bb64351c8be32b14ff004786fe503f856e524fe75c8c3f142fa2e67b78c9ff0065b15721f8ae7397b62a3d11b26ad5587462e49f635a5f19789228248b55d12e258f182b2da6723eab5cf4facf86aea168ae7c3696b9393b1590fea2b76dbe2ec00006391477c926afa7c50d1ae8edb8b2de0f774073f8527cb2fb40aeba189e1bf15f83bc3e3cab7b79a1563960e03826bb7b0f893e0f99d40d42385bfe9a418fd6b23fe121f026a1ff001f5616c09fefc14eff008477e1a6a9d61b64cff71ca1ab4e4b6b12f95ee8ee6cfc5da44ca1e0d4ad8af6c30a9e6d5a3d463023bc898039ca915e7177f077c3b7a03e89ad5cd9be3852c245ff001ac5b9f859e35d2f2da76a305ec63a6c7284fe068739ae82e58bd99ec0ff0068b88f0d32b718195154a2d3a542de6430c83be4706bc83ed5e38d0b9bbb3bbda3b9c9fd455ab6f8b17f62db2e5a6461fc2dc8fd68f6cbaa2bd93e87b0c4896ea3cbb145cf5f2c002b4ecb5910911bdb02c3b7ff00aebcaf4df8cb148c16516ee4f7e54d76165f10f4ebc55f92424f5d987c552ab17b33374e5d51d65c6ac1972d6be501c8ca83426ae264c195307b102b22dbc49a3de384fb4c4ae78d92aed3fad68c7a759c837a5ba90dcee46eb569a7b19b8f71fe547264e07e159ba9f84f46d5d0a5ee9d6d367b9401bf3ad23a5c2dcc524f0b7b74a416d7f17dc9e19d7d240437e743b3dc169b1e71abfc09d16ef73d85c4f66c7b7de515c46aff00027c4567ba4b268af517a046dadf91af7ffb4cf0f33d94981fc519dc2923d6b4d77d8d3f94fd36c80a9aca5420cd235a68f92b54f0feaba44a63beb2b98197a97522aac2afc90e462beca92c2db518712470dcc647f100c2b97d63e11784f540cf25a2d9b9fe381827e9584b0afecb365895d51f38d9ebda969f836d7d74857b090915d0e9df13755b6f966921989ea654c31fc456f789fe0f0d2a46974bd66c6e50027cb9255493ff00af5c15c69b7502f993425a1ddb7ccc65723a8c8acad560cd3dc96a7a1597c4f8cf9693452420fde6825ddbbf3ae8ec3c6fa75f3955bd8d36fdd8a55d8cdf8d707e1bf0f7857538d56eb5092d2638c165dcb9f7c74aed17e084d35bfda349d4edaea3233b637ff1ae98cea7a9938c3d0e852f048c17c9676619051f2b52a3c5392237236fde2e3681f9d7271781b5bd16e06cbcbab70bd0b2129fa574ba34be24b51219ac6c755b7720b146c3fd47bd6aaa77466e3d992321fe168febb8504cabff002d13eb9ab777ad5840a8f16872f9a4fef1273b427d08eb5cfdef8dee55cac5a569b1fa6f0f9aa7242b33503127fd7afe669fb246e937e46b915f16eb9e6e1a7b18c139c2419c0fc6ac9f17dd5bcebbaf0dc13d5442aa07e553ce87cace88c720eb70c3fe0268c90326773ff00ae36f752bed464673a9df440f3b622140aa22deec386fed7d51c7a34d4b9d7629459df9718ff5efff007c5209233d6e48ff00b666b8db696ee04223baba39ea4b92695354bc058192eb8ee49a5ed176051f33b4dd08e0dc67eb19a0bc0a3fd703ff006ceb91fed49870f7138fab1a55d5a10d87bc7cf71bcd2f69e43e5f33ae0d6edc1653e9fbba1a1840cef03e918ae5bfb490ae56772bea1ea0ff00848ad51ca1bc3bbdd8d2f6a87c8fb9d5b25b7fcb4901cf6d9ffd6a825834a6387087ea0ff85620d4e46c324a5be8d4f1a9cb9f99a4fce8f68bb0f93ccd29748d1e7f976dbf23b835465f0668b3747b753ecd8a61d527c1272c076c734efed40881a488fe40d4b9aea86a0fa3216f87f0839b4d51633d819322ac43e18d6ad70915c5a5d27b9da6887598663fbb0011eab56a3d51c93b5c7d2a6f17d07cb22a5dc73584c2defad8432632318208f5a68689871b4fd2accf225d3f9932876c633ed5035bdb374050d4e8524c6394e86346ff007973552e34cd2ef062e2c2139ea54609ab6d071fbb93f3a8644910720123d2a6c519dff08be88adba33716e7fd890e2aedb69821005a6b574b8e80b66b4f41f1569fa3b343aae8f05f42e79661f3afd2bb2b083e187899c242c2ce76e88ee633f876a3944e767a9c54575e21b620db6bf371d371357e0f1b78e6cb1b3551381fde735d36a9f06f03cdd1b5d9a1cf2a970bbd0fe22b9fbcf87fe2fb0462f696f7aa3a3dac9827fe0268e5ee0a68b517c5af1cdb60bc10ce3fe026b46d3e3beb911db7ba22b01dc03fd0d799ea43c43a6dc7972c52c04f1b668f691f43d0d563aedfda9093c9b4fac8981f9d4f2a2ae7b65b7ed05a682a2f74ab8873d4a927fa7f5adcb2f8d7e12bc214dd49137a32d7cfcbacea5703f7305ace075c1a827d56e573e7e91130f6039a5c88398fa96d7c7fe19bcc797ab5be4f66c8ad4b7d674dba1982feda4ff76406be389b5bb48887934a96223a14245450ebf631e563bcd4ed49e7efe714b910ee7daeac18641047a8a5af90f4ff001bea36802d8f89a5dea3ac9907f4adeb1f8b5e35b40026a36f7601e72fc9fce8e4f30e63e9ea2bc174df8efaea32aded8c6f9ea554301f9106b72cfe3ec32b6c9b4f5dddfef27e841fe74bd9c83991ebd4579fd97c66d12e4e258278ff00dd756fea2b6e0f88be1d99559af1e1ddff003d2161fae3149c5ae83ba3a5a2b26d7c59a05e9c5beb162e7d3ce507f226b551d5d43230653d083906a462d14514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401c7fc57f172f82fc11a86a2afb6e5d3c9b7f5f31b807f0193f857c3b797d24f2bcaee599c9249ea6bddbf6abf159b9d634ff0ec327eeece333cc01eaefd33f403f5af9f99b8c1aa48444c6a226a47c1a663354210fb52734923ac4bbdd82a8f5aa2dacc01b1b588f5a416343b52525b4d1dca6e8db23f5a732ed3405842714aa734d3f9514580995f15a56779611db48b736d2cf293852871b47afd6b24363ad4a870a4fad319a12ea1a658c067916e6499ba248d83edd2ba2b7f18dbdb6931496b26b961741403e4dc1284fa8cd719220620ba751c161d452c6ed0a7948488f39db9e2ae3368971b9bd7bf127c47a884b3d52fee756d307fcb19c00ca7d723b8acff00b486e53214f201eb548c94092a5cae1ca5ff00b41c527da0f6aa624f7a3cca571f29745c35385c30aa065a3ce229dc56347ed4c39a70bb6accf3f14e17068b8ac6aadd902a45ba62bd6b1c5c1c548d747a0ed4ee2b1b2b767fbd8a78bd3eb5842e58f7a78b96f5a2e1636c5eb7ad3c5e1f5ac517069e2e69dc56367ed2add4539664cf071f8d642dc8ef522dd0ed4ee1635d651fdea905d3e31bd4fb11590b700f5e94e1718e8d45c46b8b918e6243f4a8de3b593efc4cbfeed504bb02a55ba1eb46803db4bb59492b3b2fb1a89b4719c0955c7d6a4172a782452f9b1b7a52e443e6644749913954ce3d39a865b73f7648c7e22afa4ae87e49597d8f352fda643f7d51feb52e9a1f3b327fb32d264e5306a17f0d2e3746fd7b035b2de4eedc6223fdda7a48178f95c11c03c1a9f665739cf4be1abad80c4eb27b679aa72d9dedae730c8a4770335d72b237452b526e38da1b8f7a1d31f39c4a5e5e061ce71eb56575a9b1b4c2ad9e09c5750da5a4cdbb08a7dd69ebe1a8a50435bc473fc4a48a5cb25b05e2ce7ad35d9ed5b6abc88a79f95c8c56f59f8db56871f66d5a48c83d1db22b5f45f00697abdc2dbdc5e47a793c0924c95cd770bfb3545730078358b66623ef45ca9ab8caa221a89c4c1f15bc49687125d5bdda63f8e30455a5f8b3a6ea0162d67c376770adf79914035af79fb346bd1296b5d42ca6c745c904d733a8fc18f18699b99b479660bfc511dd9aaf69516e89e58334c1f851ae30f3acae74c94ff12f007e22aca7c36d1ae7127873c590171ca24ce323f1af3ebbf0d6b36c775d6957b122f196848a845af9672259a26ec1d4823f1a7ed17543e46b667a0dc7863c7fa513916fa85b8fe161bb23d8d68691e29934fda2f219aca41c3246e6361f40dc1ae2b48f1578a3451bac75595d57911b9dc08f4e6ba58fe318b88c5bf8a3c3905c2b706445da7eb549c7a313e65ba3d2ec3578b5fb758ed3c4d1c27838ba5f25c1f4dc320d49ab687e3db58cdce957115d478e1722453f4615e7568fe0dd65b7e8ba9c9a45c37fcb399b0bfaf06b7e07f14786116ef47ba92403a9b57055ff00e03ca9abbcd6cc94a0dec4573f113c5ba136dd57480a17ef131919fc69d6bf1a745bff009350b251d8822b7f4af8e51df1fb0f89b438ae5fa3fc9e5c9f5dadd7f0ab371e01f85df11c33697729a65fb7fcb3ddb181ff0074f5fc2a3db490fd8c599b63e2ef075fb136f7f3d8487fb8f804fd2a1d57c35fdbdba5d3bc571cd230c289dfa7d315ce78aff66ef1368caf73a34d1ea70af2157e57c7d3bd7964cde21f0f5d341722eace64ea9321155f5856d49f63d8ed35df02f8f74791a682086f601c878943fe3d2b88d4f57f1244ad69a899e08cf58d936afe55bda47c50f136965192e848a7b6715d147f196d3548fecde23d0ed6f54f0599406fcc5449c65b48a5ccb74795dadf4b66c4c72327ea2bb1f0afc55bad026404b75ea878fc456c4de1cf877e2a6dfa75edc68d3b73b18ef4cd429f04ef964335bdfdadf5ae3224b6f99bf15eb50a3522f429b8c96a7b27853e2be97e2281566951653c107a5758b6b672aacd1c49cf21d38af9b97e1e5e594cb25aea46364390bb36915e83a0f89f55d00c28ec664c61f77dd6fafa57542abda48c1d35f64f561e491b2555957fdb193542fbc2ba06a71b096d4213dd38a8347f12e93e21c46b28b4ba3c796e7e563ec6acde25cd9b10ea47bd6a9465b19be689c2788fe0ecbb1ee343ba1237fcf263cd79a5c78775cd26ecc7768c1f38dbb704fe75ef075578ce7760d437b7f63aac260d4a08e75e818f0cbee0d44a8754546b773c9ac74dbb68c1994a1fad5d5d3d9792335bbaae86fa62b5d584c6ead072c87efc63fad64bead12465dbe550339ac9a71d19b269aba186164c714bb653d781ef58b378e34e8e47df7d1a94e836e735525f897a6f95b91d246e98c62a79d0f94e9c46e463008fa5432e910ce4b3c6777b715c85d78fadc8124370e1ff00b8a78a58be20c640f98e7fdfe6973c47cace9dbc3f6c536b5be41ebcd432f87b4f7ff596d803deb977f89379e6308f6be0f036f149ff000b17529d886d29993a7cbc54f3c076675e2cad22c945da718c83cd55261826cb6a12e3b21ae5e7f126a12a871a4483fbb87eb55ef358be91159b4e31f1d7cce949c9024751777c4483cab82a0776a6beab342466469c77c62b89875ab976cc84eccf2a5813fad4b2ead26e56b7b9f2c0ea0b0a5ce87cacece2d46d4fce5991fbf3599ac6a2a18ac73104f7506b909f56bc9f726f2ebfdec0fe754cde5dc65984cea7d8f5a8750ae53b4d3753ba6982c32819fbccd9e6acc9abeae92314b889c2f551e95c235d5f247b9ae54a373c3734a2faf0400a156ec775253ee3b1d9cbe2cd4e1c136cd27fba2a07f1bdd1f94c6e87d1d78ae4ad75dbeb1725cc98e985e73579f5a7d430ae24c37a000d3e611b6fe30273e759b608e197fc2b3a4f11db4cf8789d41e0071c0f7aaeb1bc9b84cd36074231d2a84b1c170e4312429e87ad2e663b23baf0d7c51f147865d574ed4ccf68bcfd9ee0ef423d07715eb5e17f8fda2eacab0eb11369b75c02ca73193fcc57ce70e936adcc2f7087d0114efece8d242fe6cecdd795ce6b48d492339538b3ec85d4acf5ab4dc86db50b671db0e08ae5b57f01787b535223496c98f653b93f235f3c685af6b3a30f334bd525b56ef113807df06bbcd13e3bde478b7f10580b841c1b98080e3ea3bd74c6ac25b98ba738eccb3aff00c2dbad26533d9466ea01cf9968e55d7eab5caddaea0dbe2b7d41448a31e5dd26c61f8f4af64d17c51a5f88a0fb46917e929032d11e1d7ea2a96b963a66b08c9a859ab31e3cd5f95c7e22a9d14d5e228d5d7de3c0f54bbf135a12cd0bb4607555dc3eb91556c2eb50d65962f3e05949c2abaf39af43bff87b7ba74cd77a16b12bc2bf3185b9603d31deb02feff497522fed6296743869231e4cca7e9deb9654dc773a14efb1237c27f1e3012ae92645619dd19ea2b3ae3c07e32d34932e857caa3baa938fcabb7f047c45d534d29069be218ef2dc702d350f95b1e81abd5f49f89b6178c2defd8e99767f8273f237d1ba1ab8d152d999ba8e3ba3e60b9935db28ca3db5ec247778c8c532d3c45acdac9bdeee6d98e8467f9d7d7b3dec32a6668209e33dca8606b1751f0e784f59465bdd16d493fc48369fd29fd565d182c42ea8f9c13c65236c59046e3fda8c66b42dfc6496ce190104f78a42a6bd5351f823e13bedcd653cd6921fbbf3640ff1ae6ef7f678b924b59eaf0c83b065c1a4e9d4452a906608f8836f28db3dcc847717302c83f31cd5ed3fc5aa83ccb5581c13d6cae5e17fc81ac2d6be13f8974356736a678d7f89066b96bdb1fb1c045d45736f743b6c207e751ef7da45ab7467b4d87c4db9b3210ebde20d3b6ffcf6db711ffe3c335d569ff13bc512806c75ff000eeac0f216e2330bff00e3a40af98e1d6355b4204378d2aff75b07f9d6845e2665f9e7b142e782c8361c7e1c54f341ee87ef1f510f8bde26d34ffc4d3c1325ca63fd669d722407f022acdafed07e1667116a565ad69527f17daad0ed1f8a935f38e89e289d18cb61abde583af3c3f00fd2bb4b4f8afe2286109a943a67882d89dbb64857ccfd0668f669fc2c7ccd6e7d03a57c4ff06eb58169e22d3cb9fe092511b7e4d8ae9229e29d03c52248a7a323020fe55f2cdd6a1f0e7c4f26355f0edd68b7047cd2db31600fd3ad5fd27e1cde2a7da3c03e3e0e4722033147fa609a974e487cd13e9ba2be726f1d7c66f0410baa582eab6e871b9e1c923fde5c1adcd27f6a2d2c32c3e20d0ef34f90f05a33b87e4706a79585d1ee345725e1ff008ade0cf12802c75eb4121ff96533f96df9362bab4912450c8caea7a15390690c7514514005145140051451400514514005145140051451400514518a0028a28a0028a28a0029aee23467638551927d053ab9af895acff60780f5cd4036d923b491633e8ec368fd4d007c5ff133c46de27f1b6afaa13f2cd70c23e73f20e17f402b9276c9a9ee1b7c8c4f5aaee0819ed56843491de8c8c64f6a6b1a8a694470bb37000a60646ab7a677f2d7855acfa73b1672c7b9a4033598c9ecaeded275753f2f71ea2ba6dc25557539561915ca244f21c2a935bda5178e131b9071d3daaa2c45c2b9c521183ed5229cfbd071540446ad69708b9bf823723696e73d2ab38c0a9ec3e5b9073c019a00eabe26dee8f73aada8d1902c71dba2c9b4606fc738fc6b8edf44b2b492331351e4d004a1c53b70fa5419346e34013ee1eb485aa10c69e39a0052c7d6933ef4628c502b86e228df411eb4c240a02e4a8db980f5a716e4f34cb623cd53e99348cdc9340c943e29c1eabeea5dfef4ee2b1683d2f9b8ef557cc3479868158b825f7a709315484a69c2534058bc25f7a5129f5aa425f7a5f36811744cd9eb522cc4753c55012d3d65c50163416607bd4826e7a8ace131a709bde9dc5634d673fdea78b83d9ab2bce3eb4e598fad3b858d65b9607ef548b700f2d8358fe7367ad39656f5a2e2b1b693af6e3f1a9966c9e187e3584b39f5ab11dce3bd3b89a3762bd31f58f8f6356a3d4e32700953e86b012e7de9e275638355724e905fe7bd6969be2cd534a70f657d3c38ec18e3f2ae3938e52461ed9c8a77da675ecac07a51a3dc353d8f47f8d3a95a80ba85b477a38f9836d615de687f13742d699234bb36b3b7fcb29f819faf4af9963d4b69f9832fd7b55b8efd1b077026959ad98dd9ee8fac6568dc626862911b9e5410d595a9f843c3bae4463bbd32db9e8ea80115e1fe1cf893ae682a2286ebcfb6ff009e371f32fe1e95e97e1bf8ada36b2cb6f7d9d32e4f42c731b1faf6aaf696f8d7cc8749fd8672fe29f8177092b5ce832c6ea79f29b83f857137be02f11d8168eeb4ddd18ed22e7f235f483dc4912ab821e36195743953f8d22ea0ae3120561e8466ad528cd5e24fb59c5da48f962f3c11732032a595c46a3a98be7da7f9d47643c45a1b03a66ab2e41ff524919fa835f521b3d3257deb6f1c4e792d18da4d54d57c1fa26b6bfe95650c8f8c09546d917f1149d16b5452ac9ee784dafc46942ac3e26d0a1b951c1976648f7c8e456a416fe14f10059b47d426b1b8eaa99dcb9fe62bb2d67e0e1950be9172b26dff009653f5fceb81d57e146a9653195ec6e6d6453febadff00fad5176b4922d59eb166ed8f89fc75e1425ac75092e6de3eb14a7cc523d4679c56fdafc53f09f8a90da78cbc351c3331da678d3cc5cfe5915e6bf67f1668e56418bf8d015c31db285feb501bdb7bedad29b8b4b94e9bd7f9fad4b8c5ec5733ea7a6ea5f00fc33e228de7f096b42ce761bbecee3729fa83c8ae3352f82faee84acba8e8e93460f3710fce847af1c8aeabc39e3816f6eafac411ccb1e145c5b922503b1c8af4fd27c572cf6a93e9f70baada91968e5f96651f8f5a4e9b5b073aea7cc979f0bd9bf7da65c88d8f55dd9c1aaf6d6be31f0c5c02ab2cc8bc878db9afa7eebc2fe17f18179ec4fd835023e711aec6cffb4bd0d711ae783b5ad064659a037108e567879047b8ed4968f4d18dfde70367f12f0c21d7b4e69b3c1f3536b0fa30ae9613e1bd72256b0bff002cb0e22b8e08fa355292de3bd539b5130ff73359cba4c16b23491c2533cb2118ad79bb99f2f634af7c2f7b60caf1bb2a7552a783f435b3a378db57d136db6ab6eda9581e0927e78fe86b16d750beb388ada5c19216eb0c8772fe47a54b69abc12cc127436ae4e083ca1aa495f46277ea7a01d3ecb5fb4fb668b70b28232623c3a7b115c9ea705d58c85658d948f5ab96f66f6932dd595dac2c7f894e05740750865b3235a92d273d9a33f3115d309b5b98385f63cf24d6a5b56dc1f8f4acad4913548de6d3e306700992d87fcb41dcafbfb5757ab681a36a8cc34cd463494ffcb290e09ae3af7c3bade8774b711a480c672ae9c8ad2518cd589529419e59ade9f04d7ced6ecaa48c953eb54d340bc99d0470bb0619cf402bd4f5bf8772f89ed2e7c45a3227da15737761f74eeeee9fe15e697d777b66041e64b22a0c15e571ec6bc9a94dc5d99df09a6ae825f0fa5ba85b9bc44603eef5c549a6695a5b9225be248edb6b2a7d49ee0a94b145c75ce4863ef504c6ea420bc6224e9951802a394ab9d64d1e93652a98af0a8c77aab7bac69c23622ee4924ec178ac2b182cccfba58ee2e39f9541c73efed5d05e59c17b07d9d2ded526539009552bec4fb557269a0b98c3935491a41e5492b0ff007cd4935f5d4e801555c9c70dcd3ce9caaac6104edebb88c1a95742babbb76992dedd42805b32e1bf2a9e463e645068ce32ccc08f7ce6a6b7b3b9b86ff478249303240ad3d2e6b0b701af6c8c84e46c2c411ef575e6d0e0b5df69737915e33618c44ed0a7d33e94fd9b0e630e313439f3e5f241ea8c3923e948fe44926048c3fbb81d6ad18b4eba9a4125fddcb28190cc8307ea4d4f0e9da589d445a8499dbbbf7b1fca4fa6452e462e6464cf1db02089d43f75a8a2b792452e641b47a1ab97d616de6064b9b670e7e608a46dfad4022b6b76091de26f07e63b4edc7d7bd2e563b9b7a35bdb32132dcc0db86023a9e4fa56c5b785d6ebe60a83774559318fc6b96fb7cb001e4dcdbce83f89148c7e750cfaa4c10088ca243d48738aa4bb88ee22f0bda22b25cca90f6dcd30cd539742d22212037e23ec181c8358d637cb3a6c166ecdb70cee0b93ef5142d119a4fb75c4eb6dfc3b63c64d57c8092e60b58c620b991c29fbcabc0aaa2eae23c7977720fc2b4d65d15adb609dd8ff007981c0aaa91451e3caba4c13c01dbf3a9d468aa27bb972cf3ac98eb9a82495f193b831f6e2b46eacacfca32a5d2b48460aaf1835634c9f4095163ba8ae964030c55f2334b70b94b46f12de68d3acf0485654395653823ebeb5eb9e16f8b3a76b88967e20d96b704612e947cac7fda1dab814d2fc3f39631cc7d0238c7eb4f83c3764b9788a67a80d2022b6a75250d8ce708cb73d7b52b0b9b58c5d5ab096161b9258ce548ae2bc47a3e99e28464b855b5d480fdd5c28c6f3e8dfe354f43d575df0db036f7a1ed5befc2c7721fc2bae5bcf0b788a3537b32e9976dd244e6327dfd2bb1548548da473f24a0ef13c32eeca7d265920b80d1cb19da463bd5fd3bc57a958a888cc2eedc71e54e370c7e35ea9e2bf8772ea762353b5115fbdb8c4cd6ec18cb17f7b1ea2bc86ef4dd93b8b605e20d8c81d2b8a5174e5a33a62d4d6a7a4785fe221b40bf65bb96cc0fbd6d393240df4eeb5ea5a6eb506b76cb2c5fbb908e42b6e527d8d7cd36960c48f9a453dc015d2689aaea7e1e9bceb1bb6423928dca37d457452c43da4653a29ec7b9cb7b2db3618918a58b5f7538df597e1bd7a2f1869a1a48043788b97407823d47b555be89ece52ac0f1debb5599cad58ebedbc4adfc4d9faf350dfc3a1ebaa46a1a75bcf9ea4a806b914bbe786a97edcea061ba50e09ee2527d0abacfc16f0beaa19f4eba9b4e90f231f32e6b88d4be0d789b4a7df68f06a702f3856dac47f8d7a326a722ff155a875e74e8d58cb0d07d0d557923c2aff00c1fa9c4e7cdd3ee2d1f3fc6bc7e62a88b7d574c704efe0f0c8735f47a6beb2e16554917d1d734e116877431369768c0f27e402b2784eccd1623b9e03a7f88ef2294bcd1c7705860f99cb11fceb7b4ef10696ec647f3ac271f718676e7ea3915e8ba9fc28f096b597844b6529390d19e95c76b9f05bc43a62b4da3ddc7a84207fab2006c7d0d67ece7034538c8eb346f88de26b0b348ed6ead357840ff57236e6c7a735626f1ef8375ffdc78b7c2496f21e1a7853a7be315e4d0f87fc47a739926d16fad981ff00596e0f5fa56eda5deb72288eef4a9af9179224848900fad27696e815d1db1f835e06f18a197c23e2316f3f51193820fb8acc9bc03f177e1e869f48d4eeae2de3e4791216523fdc359967a243741aef4a7bdd3ef1393195287f03debd03c23f12f58d2c47a7eb170198f11cb272afec7b8a4e8b7f0b1aa96dce7b43fda3bc5ba2c8b6de24d220bcdbc3900c327e5d3f4af49f0f7ed0be0cd676a5d4f369929ed7084aff00df42ab6b5aa78435b68d3c53a1adb4d21db1de451ee539efb874fc6b23c55f0234e6d1e4bbf0e319ee82ef58a520acabe80fad62e0d7c48d14d3d8f63d3b57d3f57844da7dedbdd46790d1386fe556ebe2fd3ec3c57a3b9bbd3ed6f6cd958a911487823a8c03c577de1bf8dfe30d29d6df53d3ee6f14704cb0927fefa1cd1ecdf40e747d254579e68bf1a744be555d4a0b9d35cff1488593f30323f2aeeac353b3d52013d8dd437311e8f1306150d35b949dcb345145218514514005145140051451400514514005145140057927ed35aa9b0f8762d54f379749191df68058ff00215e89e25f14e97e13d3daf754b85893a220e5e43e8a3bd7ca1f183e29cbf10ae96dbcd8a2b7b47263b443964cff00131ee7f953480f29947cd9151b31c05a9e45c1a85d4f5ab24aee2b2b5a9f01601c7735ad3308c6e3d075ae6af6637172ee7a6693634418ab3696fe7c801e00eb5060d6f69d6621803c9c12322a521966d6158946d8c01ef529440db954026a3128a706cf4aa420c6282714679c521e69808c72287720fca71c6290f5a696e4d0026681499a2810ecd21c52668cd003d7ad483a542a7bd4aad4c4c5229334a4d347ccdb50163e8066988426a36ad28343d42e46e16ec8bfde93e51fad594f0d20c1bad4ada2f509f39a2c3462a7538a71200e4e2bae4d1fc37676314a7edb7b70cc4383f2201db14c3368319f97432ffef4a4d160b9c8171eb4bbd7b1aeb5751d307fabd02d87fbc49a95752b653f2e8b60b9f55268e50b9c6ee1eb4039ef5da0d5501cae99a78ffb659a9e2d5d5bada69a9f5829d85738703dc519aef46af18eb6fa71fa5b53a4d76c2300cd67a681ef0628e50bb381dc05381cfd2bb63ace82e496b4d3893fec9029e9a97878fded374c607fdb2297285ce205381aee41f0bcdcff00645af3ff003cee48a95747f0b4e39b0b8427fe79dc038a2c17382c9a5c9aef97c2be169067cdd4e1fc0301513782342933e56b92459e9e6c268b05d1c3824d3c362bb06f8771303f67f1069b21ec1c9535037c35d6704c0f6573ff005ce7049fc28b30b9cd2b66a4078ad1b8f07f882cc16974bbada3baa6e1fa55296d66b75fdec6f1b7a3a914011efa50f50b13dc5343d2b81712520f5a9d1877359de6e3bd385ce3bd3b8ac6aa363a31a904ac3be6b256f31dea55bcce2a93158d4139ef49bd41c81cfb5505bbcf434f17009a7cc49a0972ea7e56fceaec17f9386e0d628907ae2a45940efc5098cf4df08fc4dd57c3388770bab227982439c7fba7b57a8e87e38f0df8af6ac571f61bc3c18a538c9f6f5af9992e5d7eeb123d2acc37d9230c430e9d8d66e9ebcd1766529e9692ba3ea99ed2ead86ec7989fde4e6a38b502a7ae315e1fe19f8a1aef87d9156e5aead875866e78f63dabd63c3de33d0fc6f1948c7d92fc0c9898f3f51ea2b48e2e74f4aaaebba21e1a13f81d9f63a24d6420e5aac2f8911782d9fad719aa493e9f214978f43d8d6149ab5dde5d476561149737729c24718c93efec3debbe2a138f32d8e36a50972bdcf4cb9d6f479d08bcb5b6917b9751fceb96d474ff0006f88cb5be9fa7decb3f73671ef507ea78adaf0d7c328a244baf15ceb7574fcada2b91147edfed1aefada3b6b088436b0c5046bc048d702b8aace17f751d34e2d7c4cf0e93e176b71032d8e9acb1a8eb2908f8fa0acbb9d435cf0fb08ef2cee54c5f7248d48dbf8d7d1325d470aef95d635f5760a3f5aa6dabe89784c4f7ba7cc4f054c8ac6b3551ae86dcb1678a68de313e2a66b79d5ac354841315da3001c0fef7a1af45f869777377a45cdc5edd3dd4be698cb39c86c56ddcf857c2f72e8f3e9961bc9cab6d0b9ff1ab86c61d3d2382ce048211d11170055baaa4b96c672838ea99c2eb77327c3cd6c6a56b6427d0f5160b3c6ab93049fde1eded5a775e30f0f19151618af6470088e1877bf3ea055cf1de9b7779a344b64892c91ccb23c4ff0076451d4569e92f65f6082eed2c62b569506e0100607d0d4ab5b6b83d756ec7397be13b3f145b36ef0d8b2f3071297f29c7e02b96baf8157e9b9acf5a2c87a4330df8fc6bd6d6e1dfa024d66eade31d0f4153fda5aa5ac0e3ac7bc17fc854ddad8a8b4cf22baf03788b43b664ba80dc4039f90935c7dd69f1deccd8be36c5382b3cbb315ee69f18fc1b2308cea7807bb4640ac8f17e81e0cf1f6992cba7ddd935c329fdec2411ff000203a56b0aaf69214a9f54789dcf85aff72bc1a85aca074f2ee57fc6b6b453e2bb1da91ea76e211c149a5561fceae693e01f0ac177fd93ac6976cf7607eeae6195824e3f3fbc2b77fe156782c0c1d1f3ff006d9ffc6ba12bea8c65a3b32ee93e22834c88cd7d269ff680305a291573fad70d771e8475c9f545d4b4db669b3bb74a8dcfd2baaff8553e07e0ff0061237d6563fd69ebf0cbc151f2be1eb4fc727fad3716c4a491e55a8e9da0dddd34b77e25d2c202785900cfe42b2efb42f0d4a8658bc4f67144a701be6703f4eb5ee11f81bc270fddf0fe9fc7ac79ab51787b408576c7a2d82afa08862a1d2b95ed51e036ba67835729378b2374f48edd89fe55b5629f0ead230a758bd979c9d9659fd4d7b5c7a569111f934ab05fa40bfe156522b28b84b3b65fa44bfe142a160754f28d3b53f8576adbe48756ba63d47d98806b54f883e164b974f0d6a5213d7103026bd212e2143958621f48c7f85594bf4eca83fe022abd993ed11e4b26b9f0d9dbf77e0ad66424633e4374f4aa8d7fe022dba3f86de206f4023602bda85e8ec40fc052fdb1bb31a5ec83da1e172ffc23972ecf69f0e7c4f11618fdd8c7f3acf7f0edacd27eefc07e2adb9ced2ca057d0a2ee4fefb7e74f171211f7cfe747b143f6a7ce737826de5395f87be25c9ea0cca2a03e0361f77e1d78807d6e057d2ab3bff78d48276fef9fce97b141ed8f9b17c0d32e73f0e35a7278c9ba1562d7c1d7301257e176a4dfefdd035f468b83fde34ef3ff00da3f9d1ec90fdb1e076ba36a96e008fe165d71dcdd0cd4f268ba9ca307e144e475ff008fa15eebf681cf279a5175818c9c53f662f6a7837fc239a80ff9a57758ce702ec62b463835245547f851336d1b46650702bda56eff00da34f5bdc7f19fce97b31fb43c67fb2ee6f512193e14dc00a781e6003f3a493e1d1b9f9ffe1593a1f6bb00d7b58bd6fef9fce97ed67fbd49d30f6878737c31f370adf0eefd3dd2f85397e12fa783f588863a2dead7b92ddb7ad3fed67b9a8f6657b53c225f838e41f2f44f114591ff003f11b0acd93e0cddc649161e244fa2a37f5afa285d63a1229eb78c3a31a5ec87ed4f9b57e1ceaba664c49e2a881ebe5c23fa1ac99bc19656619e61e208589c9dd67c935f5726a0e3f88d4bf6a49861d55fea3350e0faa295447c7f2e9165180166d68e7a66c6ab5de867c9c2aeb3283fc02d76d7d89258d9cc7261887fc045577d2630498e1b561e8cb4d241cc7c95e19bdf10e95ac5a4b15bc961696c863026fbf20273c8af76974d8fc4ba1a6a36c0336df9c2f635d46a3e0ad2f536dd77a35b3fab4521535a1a068761a2452db59d94f0c3275123e41ad635b94ce504cf02d484fa65c1560700d6c787752b6b8b59239610ce0e4fb8aee7c75e0c8eea3927b7419eb8af2075bad0aff72ee5da791fd2aebc1d7a4d27a93464a94eed5d1d84f058ccb98d24889f43c553934d7c130b87f6e86b92f882d73aa6916f7fa6cd22188fef1636c5713a5fc43d774b658daebcd54ea928cfeb5e5d1ab888697dba33d0ab4e8cfa7ccf57692481b6b82a47ad5886f5bd6b9bd27e28695a9c6b16a3034121e32795cfd6ba316d6d73189ac66560dc801b23f3aefa598c6f6aaadf91c75306f7a6ee695bea8531ce2af2f891e01c3f23deb97b959ed17322301eb8e2a969ba76a9e2dd662d1f4bc8924e6597b449dc9aee52835cc9e872b8c93b34771a678ab55d77531a668901babaeaec7fd5c43d58d7a3691e0a9176dc6b97cd7771d7cb8fe58d7dbd4d59f0b78634ef06e94961a742a0e332cbfc52b7724d5ebcbcb6d32de6bfbcb95b7b741ba49246c2815c156ab9bb47446f04a3e6cb89a758227962d61dbe9b4571fe32f01f872ee337724b1e9f31e031e50fd4570de2ff008ef702436be1a8844a7a5cdc26e66ff723eff535e5dabfc44f15de5db2cfacea7e61e48d88a07fc07159a8496a745fb9ea9a2e9715b6ab368b16b56571b97fe3d4bee4653fc499ee3d2bd674bb15d334fb6b48e632ac281771eb5f27e9df11f55b0bb8e6d46d6d35589581ded088a74f7565ea6bd87c25f11edbc49aa5a5ee93288d553cbbab799b0cc7b7e35b3f7d25731946cee6debfa48d3bc650ceb2430da6a1f2ccb20f94b763ec6baeb0f0b5bdba8fb4ce67c74550150572bf11f528a4b2b6495025c4b3a24484e4e3d7dabaed3a64b6d2a2171708be426d90b374c567352e55a949d9ed72e4da1e97710b432d95bbc6c3041415e73e24f85fa6e9379fda7a078866f0f5e13b8012e236f623d2b3fc65f1c92d277d3fc316ad7f700ed3305dc8bf4c75af2ed6bc7be3eba999e692707aecf21085fcc566a9bdd9aa91ebde0ff8bf2c5772e95e2696de6303f97fda16ff0074fa171fd457abc52c7346b2c4eae8e32aca7208af8dad3e21dfdb5ca1d6f43b3bf8c303b843e54a3e98e0d7b77803e2ae8773e5456b318eca46d8d0b9ff008f763dc7a0f51f8d29c1742937d4f5ea29010c010410790452d6450514514005145140051451400567788f581e1fd0af755685a616b1349e5af56c76ad1a64d0c7730bc3322c91c8a55d1864303d41a00f92b5af12ea1e30d51efb549de57ce56351f2c4bfdd51d8579af8e3c1d7115cb6b5a2862c4e65897f98af65f89df0cf53f026a4da969714f75a34cdf2b463735b93fc0c3d3d0d71f69a9c4ff2bfcbebc7f3aa51ec0e5a58f22b4d60ca4477286393a1c8c73578f22bb8f12f83b4ed710c96aeb0dcf50ea3827debcf2fadf51f0ddc8b4d4a23b4fdd7ec47a8aa1116a7288a06cf535cd9249cd6a6b37227942237c831cd66c8151c856dca3a1c75a990cb3a6c02e6e143f08bf31af60f027c1dbef195b8d4f539df4dd38f1100b97947a8f415c8fc26f08b78b7c416d6647ee777993b7a20edf8d7d6173e5595b476f6e81228942228e0003a50968078a78abf67f6d3ec1ef3c3fa8bde3443735b4ab8661fec9af2290496d2b24a8c8ea70cac3041afac0ea9245367922bc8fe36f85615687c456318449cec9d546006f5a60cf2d660467d68dd51213b307b1a5a648ecf34c63c9a51d69b834c04a5068c52e2815c4a4e69f8c0a96ded25ba7db12e7d5bb0a02e421bb55db3d2eeef30523d89dddce1455cb682d6c9be4417337f7987caa7d877aba96b777a774ae557b0edf95340cacba769d69feba67bb7feec7f2a8fc6acc179244bb6cad23b71eaab96fccd5d834c8a20323711dcd5b4854745029d8463b457570774d248e7fda353c16391f374f615a7e57b538460516195ed74e85dca107a12327bd49f638c0e100ab76e025c46c7a679fc69d24652575f4268b014d6d231fc23f2a71b741fc22ad84f6a531e4531144db2e3eed20b651daaf05c52f91bba0cd008a62dd3b015475eb656d2a538195c1cd6d792476accf13b793a3499eac40a18ce1703d2928f7a415031452acaebf75d87d0d201cd3b6d02258f50bb8bee5d4c3e8c6ae43afea510c0ba908ff6b9aced9f853f6f14ee23617c557c3eff009527fbcb53c7e2f68ffd65b47f5462b5cbdd5dac20aaf2dfcab2e6ba693804d272b15ca7a5dafc4616a46dbbbb83fdd9b23f235bba7fc4cb6ba3b26bab3b90dc325dc20e7f1af0f24b50a297b40e53e8ab68fc05e20658f53d39f4c77e3ed5a7bef41ee56b3fc65f04755d12cbfb5f42b98f5ed208dc2e2d865d07fb4b5e2365a9dee9f207b6b992323b06e2bd4fe1cfc6ad4fc377f17ef02eef964898e629c7a30ec69dd3d82d638d70f192ae0823ae6a32c6bdf7c63e01d23e26e8d3f8b3c1b125b6a112efbed306073fde4af059e092de468e452aca4820f50681588c31f5a70723bd30f1499a044a2761de9cb76c0fad414d3d6981a097beb5347785881c9aca4c96c2f26ade45b71d643f90a2e1635165c004b853e86a45b9538ce0fb8ac33296e7353c53e31934ee268dd5ba2bd0e455dd2fc432e93a8417d6ee56685c3003bfb5604772b8a77988790707d687aab092b3b9f4d5c5f8f12e896b3a466496e5479089d4b9e31f9d77fe07f02db7846cfcf9409b549d479f39fe1ff657d05798fecf83cad36deeefc33a07296e5f90b93d457bdb2eec0eb5cf494a945c2fa336aad54d56e50b958306e2e4c68910dc64738083d6bcb7c5bf197ca95acfc35179983b45d32ee321ff00617d3dcd41f173c592ea77e7c3f63315b3b770b3ec3833cbfdcff74753589a2787ad608567931248dd58f7f6fa7b575d38736e73b4a3a98d7769e25f14cbe7ea97f3396e4233960bf80c0aaedf0e6ea42c56608c064305c13f8835de5b2b4f3fd9ad2d9a57c678e140f735a834eb28593edfa9c913938f2e15ce3db35b724513ed247915bf8bfc51e1291ec4de3dddb29dbe45d12f19c7a13cafd6bd2fc03e3abef11cb0bd8ea2098fe4b9d2eedb2f17fb48dd5969faf786b4ebdb627c95931939c73f5af20d5b4db9f0deb02f6ca57b79e13be2753b4b2f7535935caf5293535647d1fa878b66b4b9beb7d42d9631041b9515bef027922b42db57d1ec34c125d5dc5690c49bf12b60ed233f8d78fda78a5f5fd36d6e2f5834d27ee77487ef03db354fc61af8d6a68d1225f2ac316e9cee12498e87d71592926dc51a3a5a73336fc67f17350d4a46d3fc3eb25bc327cb1941fbe987f7b3fc23f5ae2a3f0b6a3724c97b72d133f2cb18dcc7eac7935b9e1dd2a3854ca8de75c39ccb2b0fd07b57429359c72edb9b81181fdd5dc4d7546092326ddecb6394b6f02db487134d29c8e0b139ae7b59d1f53f0cdff9f6b15dc080fc9711920fe38ea3eb5ed3a7f89749b33b6db4d321fefbaf26afdeded96b103437962aa1876a52837d0519d99e4fe18f10db78959748d54c363a93307b5bf1c248c3d47f0b7f3af41579e05f26eb1e7270c4746f71ec6bcabc7da041a55db1b77211df298e190f635d1782fc4f2eafa32c379283736df2824fcce0751f8514a76972b0ab0bae647686e07ad30cfef595f6c03bd21bd5f5aecb1c97345a7e7ad4665f7acf37aa69a6f052b0cd1f3c8ef49f6a23a9acc6bdc0a88df7e3405cd8fb5fbd396f6b17edc3b8a72de034580dc5bd3eb5325efa9ac15b9cf7a945d0f5a2c06e8be5f5a78bff007ae7c5d283d69c2f80a2c07402fcfad3c5f7bd73c2fc54ab7c3ae68b01ba2fe9dfda23205608be07bd751e07b486faee7bb9d43a5b2ee00f4cd44df2c6e38ae6762cdae9d7f76824587627f7a4381531d26703fe3e2d09f4f3455b1653ebb726e2f2e658edcf11dbc7c00bea6ad2f8674720af92d91d4935cb2ad23a1538985358df400b340597fbc8770fd2a9fdaf69dadc1f43c1ae917c2f1c67ccb0beb88181e9b8e29b7d660c5b356b45917a0ba886187b9a6b11dc1d0bec73c2ec13d6a45b9f4355f57d16e74d87ed76aff6bb3fefaf54fa8aca8b50dddeba62d495d184938bb33a0174477a945d9358697abeb52ade7a53b0ae6d0bb1de9c2e85628b9cff0011a709c7f7a8e50b9b62f5477a7ade13d38ac44b903bd49f6a3eb4b942e6f25d0ee735612f47ad73c97600e4d482ef3eb50e9a63e63a31740f7a5fb48c75ae745e38e87f3348daaac4332cc883d49a9f648a5336eecacf130ea71d2bca3c5ba45a6a6d39b7c09e23878fb8aee7fb76224042effeea9af3af8a1697716df10e92d243710f12a6301c7ad6908d84ddf6388495b4c9de1994b4320daea7d2bcdbc61a33693aac983ba193e789c0e194d7a545abda78bad59e25115f463f7917afb8ac6d46c86b1a6c9a5ccb9b887325bb11ce7fbbf8d638aa375ed23b9b61ea59f248f3349593b902b5f4af12ea1a53036d75247cf40723f2acebdb95b07db3c2319c118e94c8e6b2b819825284ff0009e95e7f327ba3b396db1ed3e17f88769acd80b5d49956e8023047127d2bdd3e11f8353c3fa1b6a5711edbfd48f98d91cc71ff000afe55f237c398967f185943380423ee3e86bed8f0d6bd1ddc696b23aef03e43ea3d2aa14f91371ea4ce5cdeec8da68d235692460a8a3249e8057807c4bf195c78b7543616727fc4ba290a5bc40fcb3329e656f551d857a77c5bd61ec7c38ba75bca63b9d49c40a54f2abfc47f2af1626d6c860c78dd8485bbac6381f9f5ad6959bbb21c2cb4335b4c6b7731d8ee7b963992e1c724fb56ce87e118190bdf8f3249396723ad6d6930db00b70edb9719c62b427d761117976b6ea8fd37b0aed8b56b18493462dcf80b47bfb078238bca958108ddb35e557da7ea3e0dd777a978a48d81dc0f0eb9e1abd9a7d5dde3412ba39c6085e0ad79ff008e678ee4ab28249f977372715856496a8d295de8cefa5d5a6d6b4fb18f55616b3228ba5b8273e691d31ed5575ef19ea1e3875d16c9becb6ea00bcb85e1a5ff0064563e86c25f8782f6583ed7716d27d94177ff00563b607e35a3656369a1d9c50cc4f9d8f36593a7279c572d09ca527cccde70514b9499b4d8b40b410d95b0460324e324fbe6a6d36c0de6e6b88f3e60ceead7d1751d2b524f30dd452288ca3b1e4038a626a36d1c6a903743cf15e845a7b9c924d6c47378134ed56d8c1241e6a95c6ec7dd35e37e22d0ef3c03af0b8412f901be638c0917d48f6af7bb6f10c702796ae41073803bd729f146f34ed77455132f9170a700e3effb5615a2b746b49cb667aafc2af11aebfe17b706713490a0c367928738cfd318fc2bb4af9c7f6719ee34fd7e4b16918c2f13c58278c83b857d1d5c77b9b5ac145145001451450014514500145145003258a39e368e54574618656190457877c61f869a4e89652f8920431d9a30f3d23fbf1e4e372fa8cf635ee95ca7c55d20ebbf0e3c4562a0977b195d00ea59577003f1514d3b303e55d13c53a7685abc57377026aba623825a3fbfb7dd7d6a2fda2bc7de15f1bd9691ff0008dc6d1fd9f21d0c210a83dabcdad272382d861c1e6997ad1181c800f15b7319daed1ce48fe663200fa530004e28eb524319795171d4d60687d29fb38e80b6ba1deeacc987998448dec3ad7a85ea6fce4e07524fa5677c34d1c68be05d2ad42ed630f98df53cd67fc51d61b45f0b4de536d9ee4f929eb8ef5a242b9e7de2df895711ea4f67a12c42084e1a77192e7be3dab4b43d622f1f687a86877cb1addbc2cc817a3301c115e35a86a62c648d562f34eec953dc56d691afcba26b36baa5a86858382d11e4629e82b9ca4d6ef6b713dbc80878dca91ee29b8cd751f116c92dbc53717112ed8af556e13d3e619fe75cd62815c685e68db4f0a01a50b914088f6d26335295cd0a859801400430991b07a7735ad6b0493a79302ec8bbfbd25869ef72c15410a3a9ae8eded12050aab8029a432a5ae9b1db8071b9bd6ae04c54c131da942d5088c2fb52818a94251e5d031bb78a0afb53c21a779471400c5e808ed56ae97fd20b76650dfa5431447d2adc9192633fec0a00ae07b548a991d2a516fed522438eb408aa63e7a559b5bab18dfcbb97319fa53fcae7a557bbb259d407506803616c6cee4660b98cfe35c47c44436c6dec95812d973835a274f92dcee82578f1e878ae3756bd96fefe492693795f941f6143032da32053765586a66da80b8c54e6a429c5281814eea281dc89b0a4555bcbbf2976a9e6a6ba9442a58fe158771317727b1a4d8d2192c85c9e69a0669073528507a0c566511eda705a795a554ee68011533522a734f44cd4be593d0520b1ddfc31f897a8784358b6916761b182824f0ebdd5bd457a77c60f0569de21d261f1e786221f67b81fe9b027fcb293b9c57cf0b6523907704fad7bb7c03f1dc763712f86b5b9526d3afd7c97ddd071806b58cae4c958f1e7520904533a576bf153c152f82bc537365b4fd9ddbcc81fb321e95c5b1e2aac4a1a4e29ac78f5a7114c2d8a43b125ac811f732f4a562cc4b67a9a87cd38a46938c50049bfe94e5997bd55c8a69603bd032ff9e00e0d3e094cf34708cfcee17f5acbf370783567489b1ab5a64f02553fad007d73e109adb4ed1ed2d232144480003d7bd7a0788fc5d1e87e01b9d6a3903cab16c8b3d4c87803f3af03d3bc4f22b28de0274ad3f887e2d82efc25a168b68e487bc0f3bf624118155516c2a762df86b49fed06779cb4b246b99dcf5f31b963f99a7ea133e9f75f61b667d8c78cf5fc28f00b4d7a6f7ca9a28dbed0410e71e60c7eb55afad597c472ee495ae23190777ca323b566eb5b43554f5f23612e8a59d9ac1349b98b099471df8ad1b3ba4b60199cfcdcf2322a9d8595c79451e3970ca064266b76c7c1b717eaa104db5573891719ada15da5a98ce8a6f4655fed757b8df962a38e4715c5f8e2de1b8b78e6da7cc493b8e0e6bd065f096b16afb16d814f53cf35cd78974cb85b422e90a9f30001454cf109a610a2d3d0f1bd425b8b3dd6eb2b88b7ee5507804fa57a6f83f4a59eeeda1daa60b18067774691f9627debcefc6309b52ae5483e60047e35e9ff000db51517f7f6d2432c9e7797e5f9679071d6a1c9ab346bcaacd32c6b97c74f9cda5ac481770dc41c75a78b624a8f25738dd926a7d734eb9b8f178b358a528d1eec32ee2bf956ebf826f1e1466b894311b50edc0071deaa9d796f62654e16b5cccb57fb20dc63898fbd4973ae4be58d96e8a49e4ad75ba0783b6c0a2e231bc0c333af24d5bbaf8796770cce6e640c4e460600ad6588666a8aea78a78c21b8d434f92e72be62903a572be1d692cf549632e235dab37e3d0d7b1f8afc09358e9b7045c9319c1e99cf35e4172e9a46ace6e62690341e483e8c5b83587b5e69ab1afb3b419d71bd2072c681780f7aca9ee318e9d2a11727d6bd848f24dd17609eb4e174318cd617da0e3ad385c9f5a7611b9f690690cc3d2b216ebfdaa985c6475a2c05f128a709076359de777cd34dc9f5a2c06a89f1d0d385c7bd637da9877a7adc9619cd16035bcef7a3cdf7acb1724f7a3ed4477a2c3b9a9e763bd2fda78eb595f683eb4a273eb4580d53747d6baff86badc76fad496170fb56f536a67a6e1dabcf44def4e59dc10d1c8d148843248bd5187422a2a53e68f2950972b4cf7d123dbb3c2460a92323d2a8d9789ace37b8495654443b7cdda483597e06f1cdbf89a25b1d41e287598570549c0b85fef2ff00857626da29e1319409d88da2bcd9fbbeeb47752e5ea11dd40d6c278e41245d772d449a9a4aed1ca9b170721b9cd4e96c90c7e5c615140c000607e5512e9e0f334ad21cf4e82a341bbf4332f607d2f3a8587cf6ac333db9e411ea05719e2fd223b28e3d674d3bb4fb9c640ff966c7fa57a908d76ecda36e318ae565d357fb0f5dd3645ff478cb3c5edc66ae9d4717714a1756679bc3780fde6ab897408e1ab92fb7a47c17031ea69e9abb31db123487d7a0af4ce03af5b91dcd3c5cfd4d72f1dddeb7468631f9d3da296e7fd7dfcdb7fbb19da2901d335fc700cc92a463fda355c788ad19fcb89a49dfd235247e75916d6965072b10663d5a42589fceb412e420c2281f862981616f356b8276c76f6b19e85cee7c7d055958e423f7b79337d3815496e58fde233ed4f1723b9e6802d88a21c9799beae68021539f2549f56e6ab0ba0475a70981e7348669a5ce540278f4154b5c417ba45ddbe73be26007bd43e76de73419f78c6739e286869db53e57bed4ee746d51a6b690c5246c4715d7693e28b7d7d12556587508f04af40f8ee2b9ff008afa3ff63f88ae6350424877afd0d7076d7b2d9ceb344e55d0e411dab9bdaf2bb33a1d3e65747a17c40d216f54dfdb47b56619703f8641d47e35e6abba37c1254835eade1ef1043aee9ef14c10b38db347ebe8c2b8af12e84d65752055e872a7fbc2b96745c1de3b33a21539959ee8e97e125fdb0f19d9497bb8c611b715ea7d2bdc26f119d03566b5bbb972a1d2488af50a79af9b7c1939b4d6e06e87902be87f13d92ea3e1db4d6ed0879120d9703a918e9449c234d5deeec3846729d9762f78f7c770f8835fd3238448be4c6550377caf27eb583aa99efa458c422380ba2ac8be83a8fad71f7b7fff0013bd36e0b70485cfe15eb9a2e87a85d69305c4d0466c2293ce2a07ce7d71ed51ec9bba4cb955b7426b0b0bb7d39174db7334641024761d69da5e87aa6a776b6f343b73c656bbad1f4ed0e2d3617b78c82c372a163819ae9b4ad26d2cdd658700f27f3a7cae1d48e7e7e879bdff00c36d422546b680b93c9e6b8af19784eeed6c9bed36e632ac0038c8afa48ba81cb0af3ff8a5a9c26d21d3e33ba495b2dc718aca4e6f634838deccf2cd06ca5b3f0ba24acc2de6bf5ca63ae00a35a5d435096e9e6b231585c483cb98f6038e7fc2ba6d7648ad748d3ec2d8c4d3dbca8eeb9e54b0fe215bb61a16a6da2eed4fcb92d55d5841b7e6001e714a8c1c937b0eacd46c715a7e9cba569cf9b748edf69632aa607d6b7343d126d6e34fecf48c961b86f382c3d7e95dfdbe93a01b216de523c3275466ce3dab6f4bd2ac6c995ed2d922558fcb52bfddad65171ea651a89f43cea6f877ad26e90244cffecb5731e2cf0b6a91599fb45aee08771239c57beb301d6b93f8837a96fa4794bc3ccdb381593e7b591aa9c6fa9e67f05f429a3f15c9779db123371ea7657bdd79d7c2cd3985d5e5e608863410a0ec5c9dcc7f20a3f3af45a51bdb509dafa05145154405145140051451400514514005326896689e27195752a47b1a7d1401f9dfe3ad05fc2fe31d634875dbf65ba9235f75cfca7f2c573b76716ed8f4af7ffdacfc1eda778aacfc470447c9d4a2f2e5603812c781cfd548fcabe7fbb53e4376ad2fa12640e95a7e1eb337bad58c007fac9d17ebc8acf0bdabacf86367f6bf1c68f1633fe90a48fc692451f6658daadbd95bc0a30238d547e02bc6fe3aea79bfb7b25395b68f791fed1af7144c715f35fc63bb336b9a8483e63e6ec1f855a445ce1ee22d1e46b7b98cce24dbfbd8e419c37fb27d2ba2f0cc3a2e9ba6ea17bae4535d5fdc42d1d9da46a49463d1dbd07b55af86de1db1d4e479ef079f3a2e52dba853ea6bda3c31f0f4483ed7790c5676a4e4c8c80b3fb01de8690731e11e31b592efc2ba06a52c6e92207b77dc39e0f15c51e2bea7fda17c27a6c1f0be1bcd2edc20b79958b6396cf1935f27bccfdcd4a771b458cf34a3a553594e7ad4c9381d69924dd2ae6996a6e66031c9381540cc8ddebb7f87f656f7d6f7381bae633945f51de81a2dd8d8a4310555c62ad791c55c10ed2548c11486326ac45230d022ab662a5118140157caa708b9ab6220474a5f2bda802a88fda9e23ab1e562811d00421306accaa3cb80f7dbfd69027069f21188863a2d002003bd380140a5c605300db9fa52ecc8a5e0632cab9eec69fb5c7255597b15340199ae482cf4cb89fa6d4207d4d79806eac7bf35dcfc41d4163b382cd090d236f61ec2b8291885150c00b65a9ea29ad04f03289a278c9190186322a451c520055cf34d61c1352741d2a0bc94436cc7a13c0a62b193aa5d0790a03c2d669ce69f2b166c9eb488b93593776682aad4e829638b8e9cd4eb0e3b5161916cef405a9596900a007c4bcd5f8bcb5e98fad6786c702ac408ec4516034238d1eacda992cae23b880ed6439c8a6db458033fa55d8e2c72391fcaa847b7f8ae18be28fc228358846ed57470125eecc98af9ddf20906bdafe06f8823d3fc44da45e366c3528cc122b7ddc9e95e75f13bc292783fc63a86945484472d19f553c8ad1bbab99ad1d8e58be0530b67ad21e3bd44efe95250f6703a544cc4d3327349400a4d30b62863e94c34001739e2a4b394c77b03e7a38a84f5a424a90c3a839a680f52859d9412ec475eb5a9addc83a269f271fe8f3827d866b9bd36ff00ed5630c8adf7979fad6b822f74e9ad18fde1c13eb5b6e885a33e81f833a7da4d677d379f1894481823a820023ad68daf8774ed5bc637a35352ac5165b760d80403c8af30f83fe2c9b4fd88ea0f98bf65b80c78461d1abd1b57b0d5b49d69358b9807d822da59a3e770c74c7d4d66e09bd47aea7a25a58da44a45bdaa08b6f0dd7756942005e00000c552d36e22b8b18da10a0103806aee147f074aca487190e6c63e62315c77c40fb2bdac281e3f337ee200c9e2ba0bcba6b7467930a0f4c9af3bd7b5a8356d4cc31ba2c7029264cf047734fd8f321c6b59e878f7c4cb658eced18aed9aea4926dbdc28e95e89f042e2c2eee7f7d0a4ad736aae84f5574e08af22f19f8a63f11788a59e1c8b280082d811fc03bfe279abfe04d5ae2ca7fb3dbce63b8b76f3adc838dea7ef2d690a6d2b0e5252d4fa26eae6db44f18437f26163b880c457df3c1aea1617bf64927e22539083a66bcf2d3c376fe2cb08359b2ba9a49234c9899b94933c291db15d8785b5992e2cd6dafd521bd8ff00d6c60f43ff00eaa4d69a7425da2ee7459c7ca14e051961db34cf307626b3758f10da6916ed35c4a140eddc9ac941bd01d448cff1d6a42d34bf2cc48e5db904f35f3f78ad22927b48f0be75cdc99c81fc289c0fd735dbf8a3c50faa16bd9a411463708771c00bdd8fd2bc61fc4675bf17992190b410a34683fd91d0fd4d7453a2b995c99557cace867b83bc8350f9c7d6abbc9bcf5cd19af4cf38b426cf5a70971deaa29f7a5c9f5a605cf3b1de9e973ef59c5cfad0ae7d6803545c67a5025f7aa2b21c53c3f3d6802e1933de81201deaaef38a504e6988b625f7a512d55dd4acf8a605af378eb8a4f3b350afbf5a5a0097cf6ec6a4498f526aa804528340170c9b99245768e58cee4950e190fb1aecf44f8d7a9e851883c4b64da8d9af4bdb7e2441fed2f7fad79b5c6a0d1388614f3253d147f5a96de09d8efba9f793fc0a30a2b1a94a353735854940fa33c39f123c2be2b5074bd6ece5623fd4c8e1241f81ae9558b282109f7539af916ebc27a45dc9e7085ada6ff9e9036c39fc2ac5b69daed8a84b1f196b56c83a2098902b8e5839743a63888f53eb4de2352d262351d4b1c62bce3c77f10f4b86c6e74ad1ee12eae66f9669623944f519ee6bc5dec753bb4dbaa78a35ad453bc725c3053f80a9e3892de358a0458e35e8ab574b096779135310ad644bb632d9db93ef5611c8e07154c6ecd4ca585761c85b4948ef5347738e3354413eb46ee3af34580d64ba3eb520bd2bd6b18dc2c7cbb607ad56bbd42228d2c57d1218c64ab72293d0a474cb785bbd4c971bba67f1af368fc4691df1921bf0a927f7dbe407dab6ac7c6f6c8fe55ebc487385914fca695d0ecced524a99653ef5c8b78b6d776f82e609215e24507e65f7157f4bd5edee5c7d9f5049d1b90afc30fa501666dcba8dac32ac524e8b2374527934d3a9d9ab7fc7d44a4750585733e2b974a820f3efcbab670ac80e7f315cacfe29d1ac6d4bc50a3376250963f8d26d2dc145953e3a5ac572b67a8c12248aca632ca73cd788383b88af4bd635d93c496d2c46158a3419451dcfd2b82bbd3e4490ed46fc6b8ab2bbba3ae9bd2c334bbf9f4db949a172a54f3ee2bd28476fe30d20795b56e90654773ed5e66b6b20e0a11f5ad9d1757b8d1265911f0179eb4a1356e496c54a177cc88e50fa3df47291878a4f9857b3e89af48da0bbadf41159cb191224cdc11edef5e57e23bdb3f10e2eedd116523e755e093eb58f15c4b24496d2dc3ac4a70013c0ac5c534e33d4daed494a2ec7a23c725fe9df6f8e16fb2c72944947dd0dd40cd7b47c36f1a47a8e81f62919a491e2f2cc64f4c0e71ef5f3e7837c492785eea7b2bfcdde897b84b9881ce07675ff0068575b6f35c783f518b51d3e7377a4dc36f8ae23e84763ecdea2b68f73296ba1eede1ad53fb175e8ed6f83adb4ca042641d0fa57ad452295c8e87a5787dafc40d23c59a4ac3a8468b3281e5dc443956ec48ea2b7adbe277d8acd6dfc933c88b8f315b86fce89c39896ecee91e8bab6b36da6c0f2cd2222202598f415e33e23f1cdb6a37173ad5c71a769e3f760ff00cb57ec07d6b37c5be30935785e6d56f12cec5724a2b7def6f7af12f1a78edb5b78acf4f75834c80fc918eae7fbc7de924a3a21c53bde46de99e32b99bc433dfdcccc7ed6c77e4f0b93c7e55f4af83fc5cde24d263850069e3016400f503bfe35e0fe0bd6bc0be2ad363d1b5cd3934cbc0a163be8bf88ff00b557d67f107c28d5626f33ed160c4186ee3394957d0fbd52828ebd01cf9b4ea7b19b5d4347f1145f6a18b19dc6d6feeb7ffaebd22d18790b8c1af2cb0f8afa0f8a74e106a2e2de5c643a7556f503d6af41f11ecb4e8cc427fb4471a0fdeb1c6e35324e4acc4ee9f323bfbdba5b75f32470aa3a935e67e26d7df5ebc8e1b5532a349e54083acae78fcab97f11fc4e177b96e2ec98cf0218b3f37b57a0fc31f085ddbc6baf6b70f957722e2dad9bfe5dd0f73fed1fd07e352ed045422dbbb3b2f0fe909a1e930592e0b28dd230fe273c93f9fe98ad1a28ae6360a28a2800a28a2800a28a2800a28a2800a28a280391f8a7e0c8fc75e0cbed28a06b8dbe6db93da41d3f3e9f8d7c11ad584b64f716b3214961728ca4720838afd25af9abf68ef82b3cf2cfe2ff000fdb1955c16beb78d72c0ffcf4503a8f5fceaa2fa09a3e5255aefbe07db79ff11b4c0470afbab84d86376461c838af4ef801067e2359fb231a6b719f5b04c293e9935f2cfc4d6dbaaceedfc533bfeb5f55ba62ddcf7087f957cabf14e291f5858951dd886621467bd688cd9cf7807c5337877c5763a828c2a4a0383d1949e41afb5f578e3d5b4882f613f2aa86017a6d22be28b7f03ebe6f2d60fecc983dcaf9918c7257d6beb9f875ad7fc5b5b396fa299e5854db4a88b960ca7149bd07668aff0013acc6a7f07b56848e6288b0fc0d7c393643115f7178af579b55f07ea9656b65f67b66b67dcd31f9db8f4af886e976cce3d18d4a4d6e3bdcae0f3d29cca54e08a4ef53dc48b2b86518e00229888338ad7f0ceb92685a9a5c2c8caa48dc476ac9c5211401eef0cb6bae5aadcda95136373a0fe2f71558c44751c8af30f0cf89e6d1e648e4918420e5597ac67d47b7b57a9daebd61ac408f3c8914edd265ff005727d7d0d52022f2e93cbf6ab535bbc27e61d7a11d0d4439ed4c43027b538254a1697cba00882fb52ecf6a9bcbe294478a7702b32d376ee6e7b54ef1d31570c7eb4804094f5889a785c54898a7702b5cd9adc44d1b8c8358c2d2fac5ff00d16e6403fbadc8ae98c7c7159fa830b4b69ae1f811a96a4079af89b509f50d55cce57744367ca302a1d134e37f7ea58031c672d59f2ccd3cf24ac79662c4d5ed0ee8daea519dd857f95ab39deda1be1b95558b9ed73d1bc4ba1c9e2cd3b43bcb5891ae109b4997217eef4c9f7158bf117c3ba668535a9b28dace7923532d9c8e1994e3ef023b1a97c2fad5bdc6bcf0c56b24c2302531337cb232f5007b8ad3f88bade8a6da4d22586f5af900684dc4603db83cec247518ab8ea95c312a3ed65c9b5cf3327358fad5c658460fdde4d6bb3796858f41cd73375279d2bb7a9a993d0c628ae493cd4f0a66a30849e956e089bb29ac8b26863e99ab21062991ab28c92a3ea6a5dd128c34c83f1a182207400542559982202598e001561e6b70403367d80ab76416d3376cbf31188c1f4f5a10c64da60b248f7bee91b961fddf6a11d17a57a87c3df817ab78d614d5757b86d374e73952cb99651ea07a7bd7aaa7ecf5e034b7f24c57ecf8c79a66e73eb8aaba158f9921b9da41ad2b7b90e0faf715e8fe39fd9daf747b79750f0edc9bfb68c16685862451fd6bc9a012452bc6e0a4887054f1cd17068e8f4ebd7b3ba8ae2262ad1b06523d457a4fc7bb44f137867c3fe378146eb88841718ecea3bfe55e4b6f2efc0ce2bdabc0889e35f845e22f0c48775cd88377003d7a76ab8f62247ce729eb509352dd46d04cd1b0c1538c54340930a46a00a46a06465b9a4cd2375a426801734d3499a074a571d8e83c2b7c44bf616fe33f27d7d2bb44b4bd56005bcc1c76d879ae6fc1be1b8a746d62f6e041696e43647de247a576961f1d35cd1afe44d2eeeda6b627e54b8815c0fc7ad5c277d1038f523d32f2ef48bf373123876189eddc63cc5fef2fb8af7ff87ff14acf52d17ec1aa3fda13945900dc718e37579c587c54d2fc7f68d6be2bf0ce0ae36df69e00789bd6b2e6f084525c99b43d6e09dc9f95d1c433e3d194fcad5a24a5a10ddb568f73f0eea70e8d27d9d2e924b607f76cdd4ae7249fe55bd73e36d3c44cf0dcc6e572300724d7cf90d978cad06c92079474f33ca233f91c55957d56c10c97f736f6b18e4bcac171f99a7ca9bd88e5eccf42f1378b6f357630c388c05c0c7f5af23f885e345d0b4b7d26d0ac97338c5ccc8790bfdc5f6f53591e2bf8ad15b8363a1ce6f6f09c19147eed7dc93d7f957955ceb572d712cb3482e2e246cbbb7207b0a6da438c6c7b0f837e2868f7367168de20f0fd95c5a01b524450ae3f1adfd53c01677f6dfdb3e06bd9647b73e6b594a7f7d17baff787b57cfe3568a5dbf2881c75c746aea3c37f12af7c3f3c6eb70fb6320a4887e78ffc45529c5ee4ca324ee8f5bf047c43bbd2f5376b8b83a6df8f94a907c9b8c7623b1af433f1023beb95bb7b5856e00c79909c06fad7921f893e1bf17c3bb5cd309b82306f6c4857fab21e0d516b8f0bab66cf5e9d571ca98591bf438a1c6da8277d19edf71f162e0068e248171fc59e6b88d67c5ada84cd35cccd3b8cb633848c7a93d07f3af31bdf17e85620ac4d2dcb8e8c4939fccd733ab78865d73e59af12d6dc74855bf9fad25a0f911b7e39f1fcdacc8da6e9ced2072159d78040e800ecbfce93c39a7a691133972f248a0127b7ad64e85169b1498b705e53cee6ef5d120c726b6a507bb32a93e8684731353893354236a9964c5741cd62dac94fdf9aa624a787a60583cd001f5a8d09353281eb4210f45a95453adacee2e5b6dbc134c7d2342dfcab76c7c07e27be20c3a35d60f775dbfce8724b763516f630f1c53b1ed5da5b7c1ff15dc005ada087fdf92b4a2f821e207c79979651ff00c089fe950ebc1752bd9cbb1e74052e326bd462f8117cdfeb759b75f50a84d5e87e044000136b5267fd88ea7eb54d751fb199e460538e315ecb17c0cd1d71e66a57aff40055c4f829e185c6f6be93eb2e2a7eb94c7f579b3c3323ae40a827bad836c60b39e82be828fe0ef8490826d2e1ff00de94f35693e15784a3e46940e3d64353f5c8762beaf2ee7ce3636a632d349832bf5f6f6ab80d7d14bf0efc291ffcc2a1fc58d483c11e154ff986598fa9a5f5c8f443fabbee7ce8b27bd3c3fa1afa313c27e185fbba65893f4069e7c3de1a841274fb0503d40a3eb8bb07d59f73e7306976e6be8b167e198b1fb9d357ebb68dde1943ff0030a5c7ba52fadff747f57f33e74f2dcf214fe54a9e61fe06fcabe819f5ef09da643c9a71c7f7769accb8f887e0eb63b40b6620e301507f5a7f5993da21f57f33c5364bd91bfef934be5ca3ac327fdf26bd81fe28f861322382c8fa6e96319fd6a29be2ce8112e520d3d8fa7da23a3eb12fe51fd5d773c7a63f290f0c98ff0070d735ac6916975b8ac372ac7bac6d5edf2fc56b794968a4d22153d9e68f22b2effe28dd48ca96d26862307e663751ee6a1d66f740a8ebb9f3b6a1e19bc08521372ea0e42b4447f4ac89f49d7238f635a5cb28f4435ef5aaf8e7c4b7176af67a9e810400e4a35c2166ff000a8e3f17f89db3bb58d01949e8f320c7e358b95d9baa6d23c021b5d5609037917287d761ae8f48d7afed5d7ed366d94e5645420835ebebaf6ba783aa785f9ffa7953513c9e23be2427883c390a8e7e5950e4fa74a71938ec2704f7670b73f11ae9d1239ac91d31860e84d60ea5ad69bad4bba747b565180b1ae17f2af58369e2f9c002e7c337a074e63c9fad365d17c592a3997c27a0dd20ff009e51ae7f0c553a9727d92e878c40ba6c374931b89182b0383d2b4e4d2a3b9ba1344018dce4102ba3f10f866fa021f51f06ac51373badd594ad61da9b0b699a1b49b53b70a0b0578f7003f9d10ad14ecc53a52b5d1d7f86fc3fa6a2896fad629610390ca2b89f89fe0fb6d2268ee2d248da1b8259427f08f4ade83c45abdb5aefb49adae508e8e9838fa573bacebb7fe2080dacb1da4655b24247824d73e260ea545383d11be1e7c907092d4f3878a589f31b9047a54a970f13797771bae7b915ad7da1ddc2776cc83dc0aad25ddd46822bb8c4f10e30e3903d8d4f2b41cc4a8b730c21d7f7f6ec3ef2f3b7eb5b9e19f1c5e7870c96f1c70ddd84dc4d6771ca37b8f43ef5cd5a5dc76b279b68f2c27ba139068babd33c865658f3ec314d49c7540d296e7a641e24f0c5d624b38f50b2997e668188741f43d6aa5e7c4d82d50a5ac934847404579ca6a043128369153c1afb1c466c2de4c74e29fb46251b17f55f106abe26b8c3bbed6e0296ac668e4b790ab82083cd6dc37770c0490d843091d32a4d559a7695d9ee212493c85150e32bdcaba2bc3a84b1ae15c8c77aedbc2ff17754d16d5b4dbd8e2d4b4c7187b6b91b87fc04f635c6791a64f1315b878e6eca4715247a7ea3f67f323b633420677aa6715509496c4c92676a7c59a15ec8cd636d75680f251d83aa0f63d6987c50d248b6d64eb7124ac16354562cc4f418ae04dbcb9e63e7d2bdff00f64af075b6a7e2cbbd6750b60cda7c21edc38e37b1c6efc07f3a1d4ee1cbd8f57f83df057fb192dfc47e2b5fb4eb0c03c36ce7296a08e323bbff002af66a28ac5b6ddd9695828a28a430a28a2800a28a33400514514005145140051451400504060410083d451450078f7c41fd98bc21e34b99350b032685a84872f25b28689cfa98c9c7e44571de11f801a97c2df1658eb173ad59ea16d2c86dd5638991c12a4e4e723f87d6be92ae6fc6ca4c5a5b0fe1be4ffd058535b814e4502da5cf643fcabc57c1d6365e38bfd7e7d845e5b49e52a9e432671c57b46a5730d8e9775737122c71471316627a715f2df857c72fe10d7efae6cb05669091bbbfcd9ad484ce9f54f1cae93e2ab0b06b778ae3480206909ff58a0d7b2fc36bf827d2bc4663cac42e5a50a7b6e506be59f126bb2ea3e269b5bbcf243dc3160a9d2bd63e16fc43bdd4e2d6ece0b18a69aea340a11c26dc2e33cf5a1f90e2afb9d74fab4735a6a16c5f76f85c01f857c7da90db7d70b8e9230fd6be9292c7c4b69787cdd1ee363e4332e18018ebc1af9e1b49bed635dbcb7b281a56595c9c1c63934e6db77628a4b446490281d6af5ee8b7f60c56e2da58c8f51544ab0e08e6a4001a5cd232146c37069719a0618cd5fd3758b9d31b11b6e88fde8db906b3e96988f49d17c669346912ca001d6098f1f81ed5d2db6a3657380ede439e8afd0fd0d788a92a720906b5b4ff00135ed8811b11345fdd7e69dc47b37925464720f71498c1ae1b45f1b463e459cc04f58e5f992baa875f86450678b683cf9911dca69dc0d0029e173da920921b950d04a9203e879a9d6234015a450067d2a344ce0fad58b8819ca46bfc479fa53cc054e314015fcb18a8a42d0a97c12abc9c75aba56a39132b8c5004367a9da5c711dcc65bfba4e0d617c43bff00b1e8463180f3b851ee2ae5de8b6f70492815bd4706bcefc7934b0dec5a79b892548973866ce09a1b030d5b3de9c0e0820f22aa4726dc54e928a802ed95f5c585c2dc5b4cf14ca721d4f22a6d4755bbd62fa5bebf98cd7126373b77c5500e08a1a4c0a6037509b6c0573d78ac948b3d455abc732103b0a6c29f954bd4b434420014847d7f3ab05462a2718a561919db8e4546703a629cd4ddb9a404d636c6eeed23038eac7dabd83e0cfc3d1e38d7c6a57f0ffc49b4ee3691c4ac3a2d795e8904d24e23b652d34ec21403a9278afb57c09e178bc1de12b0d263502548c3cc40fbd211cd006dbba448b1a00a8836aa8e0003b55196eb6938a967e9d6b3a6c4619e4658d075663c0a92d22edb6a003e0b578efc74f8610b407c55a15b6d60737714638ff780aee9fc41a6b5d24105ea3c84e3e5e95d1585cc77513d9ddaac90cca5194f2181a019f19c53f20838f6af50f813e221a578eade09df16fa8a35a4a0f421ba7eb5c9fc4df063f82bc5b736601fb34a7cd81b1c1526b2b40d45f4fd52d2f10e1a195241f81cd6b1329226f8a5e1f6f0df8d354b0642a239db68f63c8ae3fd6bddbf69bd2e39f52d1bc4b6ea3cbd56d15d98776005785b0eb4d9311b4d634ee6908348646c2a36e2a7da690a50320db462a71093d29cb6ec7f84d2633b3d2af1dfc09736d6882497765d40c902b8262c8e720ab67a1e2b7f4cb1d5a363269cb72180c9f2d4f23deb4e3d23c41a92ee7d005c93fc662da4d5c5464ad1224f95de46069fe22bed397114ae3e86b48f8faf9d36bc68c7b1c55e6f05eb4cbbe4d2aded10753238007eb59d73a359599c5d6ab6aa7bac0a5c8ab49a7a03b343bfe13ed6fca6449a650dd312b00bf866b2ae751d475338b8b99a4cf6dc4d5a64d11141fb4dd4a7d366054d6fab59d9736ba7073d9a539a3de7bb168b642e93e1ebab9ea4dbc6df78819635ad3782408bf7319403f8e56db9aaf1788f5ebd023b2842e780218f9ad6d3be1a7c41f15481a2d3351983f77caafeb54a104b5173339c93c39636c49bcbe893d91c1aa92c7a329d96d0dd5dbfa2f02bd834dfd943c657aa1ef26b2b2cf5123ee3fa5751a5fec8fa85a3798de2a8a17c63f75166a1a8873dba9f3a08ee41fdc69d2439ee739a8d85ec3b99669109ea01eb5f50b7ec9f24bfebbc6170c7da2ffebd407f6438b9cf89e463e8d167fad0d47b82a87caaccdb8e49cfbd4b6f0bcac0056624f4afa56f7f643ba8417b4d5adee987211976135caea3f0f6e3c133fd9f50d1dede41d2561b95be8dd2aa9d2527b932ad65a2396f0ee8ed6e9f68994a92005535b9e5e2a5c8ed4878af4146da1c4e5710281de9703d6a3248a697238a62b929ce3d4559b0b7b9d42e12dad2de59e673858e35c935069f6f73a9df43636b1b4934ce11547726bea2f879f0eec3c13a687754975095434f70c06578e83d00acaad554d1708b93b1e77e15f81ba8dea2dc6bb702c908cf9118dd211efe95e8ba5fc2df0a692aa7fb396765fe3b8627f4a8bc5bf14349f0c44d96f3253c22e092c7d80af29d63e2c43791cf2eb5797119dacf059acfe58938e036de715c6e752a1d3ece31dcf6f9b5af0b786e3c4b7da55828ec1956b12ebe34782edcb08f537ba65ed6f0b3e7f215f2e5ff00c63bcd46d85b41e0ed336024a978cbb67b1c9e6a8c9e3df8817517ee5a1d3e2f4891230054fb35bc99a5bc8fa52f3f688f0f4337916da4eaf71291c030ecfe750b7c6cd6aea35934cf064d346e3e577b9403f1af94aeeefc417d2b4b79e2085643c12d723a7e155dee6586dd207f15468a9cfeea4724fe554a305b83bf43eab8fe2f78bee2f56d5b46d1ac19c121ae2f41031ec2abdd7c55f19f94644bcf08c583801ae7935f244f776dbb326af7129ecc0b1cfeb5135de9c71e65d5d37fc069feefb05a67d367e3578e4ea915acf77a4242edb4cd6c55c28f5a9ef3e266bab2ba3fc4dd0d00247eee004d7ccd14da2a22badcea05bfd918c54325d682ac42c77afeed8eb4294174138c99f473fc4a69622b71f14d84e1f0de55b2ed2bea2b0f59f8950c10bf93f136feea51d15600aa7f1af0b8f50d1d07cd6d744fb30a70d534500e6c2e18f6f9c51cf0ec0a12b9ecba3fc4db1bdb7b98756f1a6b31323068ee60e370fee906a3b8f1f7856393f79e2ff115e23641f9c8c7bf15e396d7d6415b7696f2f391fbcc003de99fdaf64b21234a50a7a2990f14fdaab0f91df73d597c6de10d80c9e24f149933fc121c015420f1ce950eb16f22eb3aadcd9f99fbc8ee0b1257d339af3a1afd9ae00d1e238f5734f93c416922058f45855bfbdbc9a9f6886a2cf4fbff00197c3d13caf1a788a53bb2a86e495fa75e950cfe35f8753177fec7d654903005d1e0fe3dabcf86b96fe5945f0edb33e3ef6f6c8fc2a093c456b903fb0ed948e08dc6abdaf72790eb352f12f8666973616da8dba05c11249b893eb5ab77e37f075c695651dce872dc5c41f2f9cafb1a41fed01d7eb5c12788a00a58e856cc3dd8d236bd14e9f26896916ee37026a7daa6538347533f8d3c3124ecf1786f6263014c86a95c78c34790831e822103ae1cf35956f7d75a540b713e8104f031e257c953f88ab5378c61106eff00847b4d23af20d0e696e093e86f689f11b49b6d3a5d3f54f0fc17f6a5bcc40e70cadecc39ab4ff133c2b701524f0359811f0a4391c7bfad71d6fe286bc7648bc3fa6e71bb842702886eb50bc7335ae9764fb06e68e25c9c7d29a9a172bea6b6abe38d0eec32daf85e1b4f9b21924278f4e69da178eacac6f0f9da15b4f6f2aec78e66c803d41ec6b253c6d25aaec7d074872bc1df0f34fb7f169d46e52de3f0fe88af2703311007eb4b9d5c145a3b1b4f1efc3ab78e681bc193c9bc6048d39254fa8a13c75e07b6731daf8724811872ef29735c6493cf35d35bc563629331c08caecfcb359d717d269f72d05f698a9221c3237154e76dc143ccf4bd33c5ba026a497115f43f668d959a092d002c33c8cfd2bd3ecbe28fc3eba9818b4278232789639f6f1eb806be74b0f10786cca05ee832b83d7ca9706ba3b1d23c01e26223b3d6e7d1ae9b858ef13e4cff00bc2aa324f62251bfc47d31a76b1e0cd5d4fd9356bbb71ff4d6560bf99c8ab173f0fec6ec09edae2da72e301a6855d587fbcb5f336a1e16f187c37db7c1ccda74bc79d1379b048be840c8aee7e1b7c56b8b5d96566eb83f31b195f28febe5b1e87da8566ed2427176f719bfaff80b43d3f52235ab1bbd15c7fa8bdb7667b473db3fddac2d63e10c7ad2471d82ccb74ca585ea9dd1487b723b57bbf86bc59a078d34a9e06789e023cbb9b7b8033113eb9fe75e58faedc7c25f1d5de8b6770f79a33e2410bb67603fddf4c54592958716dc6ef747816aba2788740be934fbd79a278cf2adc823d47b5675d49a84257732ca0f66415f55fc49f09e9be3cf0e47ab697b4de469e646cbd597ba9f7af9cee6d81dd1c8b8653820f634b90a53b9ca36d958efb508dfecf4a9adb49379324691b658e302b65b4d2bf3795c7a8ae8bc13a5fdbb588ed5109661904761dcd0a9ea5391a5e0ff00861e13d6e2f26e353985fe79b7f288fc8f7aea0fecfda54254c37d1c5ebe790b8fd6b5bc4badbf8313ec3a645025e4c085bb741ba25c60edf73eb5e437abae4d78f74f7b733331c92d296cfeb4f96cf544eafa9ea6ff0002c416cd2c5a9db4eaa3204249feb5cbddfc21d4eeaf24b6b59763479db2ca08527d2b0acbc77e24d2308ccef18fe139aeaf47f8d382ab76b736ec3f8a3738fc8d69ca9ecccdb6ba1e79a9fc20f115a5ef932242647f987cc0647ad6845e1df10f852c92311ccc8c7f79f29d87db35ee5a0f8dadbc421921934ed5a47fbd0de46049f406adebda8e9d75035ac36173a3de431e52d4209219cfd0f1f88a4a9b8ea37539b43e78bdd12d1e512ce5622dfc0ad939c6735ec9fb27dedbaf882fa0872864b62aea5b3b8ab6411fad719acf87e3b8bf8269f4d934cbe9909f317984e3a923b0ab9f01e593c25f17ad2cef418c5dabc40e7e46241c107deb0a8bc8d20cfb268a28ae7360a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800ae7bc6c00d36d643fc17909fcdb1fd6ba1ac0f1c0ff8a7a593fe794b149f948b4d6e0709f16f4fbbd47c077d159ac8f22ed6289d5803c8af9b2e3c19a85b5dd8dc6ae469f6b70372993ef11f4afb1a13b87d4578efc77d3fcdd134dbe2322da6646f619add2be864f4d4f9ff00c68b6c75258f4d6692da2503cc3d58f7a66893bc5048448e858f0558835d0788f438ade04b88d8347328618ae6a2f91085e945ac3b9d3e81acea9fda76d1a6ab7c10b80c9e73608f4ae2a2f115c683e20bb961da5649dc3823a8dc6ba2f0dc99d6ed40fefe7f4ae0f566dda8dc1f599cfea6a66523d4e1f15472c2a6f6d9b6b0c82eb9068934af0d6b809d8b139ef19c1fcab8ff000beb80c46d2e6f581e91a3a6e5fa56c4b6eb29cac56f27bdbc9b5bf2353cddc7ca3ef3e1a6fcb585fc6fe8b2706b0350f086b1a6e4cd68db07f12f20d6e25f5f5836d8ee64503f8275ebf8d6d58f8b6e61402ee0629fde4f9853d05a9e64d13a70ca41f714c2b5ebb2af87fc46844890891bf8930ac3f0ac0d4be1a4854bd8dcc6e3a847382680b9c0608ed9a406b5effc33a9e9cd89ad6551eb8c8acc92278f87520d170b0ce2ae59ead796041827751e99e2a98029769ed408eaac3c6a011f6b870dfdf8fe535d5e97e325623cabc493fd89c73f9d794ed23a8a724ad19dca4834c2c7d01a7ebfa7cc73744dbc8470187cbf81ad6f2a2b84f32265753dc1cd7cfd6de28d42d404f33cc8c7f0b722b7f4af1cc7011b8cb6cdeb1b71f9555c47adbda6298d6ded5cb69be3c95b1fbe82ed4f63f2b57436de2cd32e30b3892d9cf671c7e74ee21b35bed52c7a0e4d784f88eeff00b435abab8ce419081f415ecbe39f11c3a668b20b156b99ae14aabc7caa0ee4d78536e2c4b039cf7a865219cd28269f8a365200de690b934bb698fc0268018cd92475cd4d1e0673e95554f35386f7a4592135139a7e6a33c9a05622c7b514e2b4dda7207bd219eadfb3e787175cf1c5b4b2207834f4370dc77edfad7d5f29e0e6bc77f662f0f7d8bc337fac3a61ef2511a1ff006573fd6bd86519a188a172e9146f2cae123405998f40057cff00e3cf1dde789efa482d257b7d3223855071bffda35df7c66f1235958c5a25bc8565ba1be52bfdc1dbf1af07d4aec2aed560a80e09f53445756536595bb82d8ef52dbb3c48ce57f2af4ef877e3b790ad8dfcc658b23cb9b3968fd8fa8af1bbbb2b5d420449a56465c912af20fb11573c3b6777617093594f9da780a7a1ab7d88d56a7bc7c6ef0daf897c13fda51460dee9c436e1d593bd7ccd6ef86c735f5bf8335883c53a349a6dea08eed62f26e6161d411c30f6af96fc59a2c9e1cf12df69b202a619481ee3b54ad194f53d7fc4c0f8c7f67cd36f71bee343b83149ea10f4af9f9d48639afa23e0214f11785fc4fe1598822f2d0b460ff7c038af02d52d5ac6f66b69061e276461e841c55b3345122929f498a91805e6a448771a45e4d598471400b15b640c0c927b577be1cf87ad88aeb5797c98786f297efb0faf6ae5b4f84b4c813862460fbd7ab4a976ba54135c83b986d723d6b5a2a0e5691151ced78972ff0056d3e0822b7d3ecd2de2880002f527d49ef5877dafce41692e1d631d403d0553b894eeeb555f1302a7907b576c29429c7960ac724eace6ef377395f166b33ea12b0def1c1d15777def735cc45a7cf74e0223312780057b67843e14df78d2e82d9e9ca60ce1ee6504220fea6be87f057c18f0c78391261691ddde28c99e650429f61dab8a6b91da4cebe6e6d628f95fc17fb3b78c3c5a239fec62cad5b9f3ae0ede3d875af74f08fecabe17d25125d7279b53b81cec53b231fd4d77fe2df8b1e13f0646c977a84735c28f96de0219b3e9c578ef88bf68df10ea6cd1e85631d8407812cbf7b1509ca5b0f97bb3dbad3c35e0ff000740a22d3f4cb0451c1645dc7f3e6a2bff00895e13d2e2264d521c01f76315f2e5fea3e21d7e6fb56a77f7772f27f7381f99ed54ee74499305f4f69c9e85e52dfa0aa5057d5872e973dff50fda37c1f6e4ac1e6ce4772302b9cd4ff69bb108c2ca088376f90b5790a695761f0ba640abebe5138a99b406973e64f630ff00b3244cbfae2b4e48a44a4db3b17fda57c4b34a7c95b248fb7ee49feb5afa1fc7af156a33ac422b1937772a540fd6bc96ebc37a82c724b05b473c29c97b76dc07d7d29ba2dcb5a3f983383c329a8d3b1563e9ed0fe2d46ec22d7ade2b327849a324c6e7d33eb5dacf6d67e22b10934705e59ccbf75802306be64b2f104715b11305bbb47e64848f990fad7a2f81fc7769a4682d6d60c6e2d89dd0ca5b2d037f75c7a554a0adcd132b6b6672df157e14cfe1195b54d299a4d2646e54f2d01f43ed5e71f3742d9afb0749d42c3c65a0b0991248e55315c42dfc27b8ff000af98bc7de191e0ef12dde9ee710025e17278287a56b87ad7f76467568b5aa39c084f5349e51accbdf1558d9b14526561fddaca9bc4fa85e36cb5b765cf7c5692af15a208e1a5bbd0fa07e01f86e1b9d52ef5fba55f26c17084f4de7bfe02bd0bc77e3bb7d2bc3971ab4acf0d947958f3c19dbfc2b99f839a64dff000afb4ab260435f4cd7374c7a6c0781f8d7997ed75e2c91b5bb2f0e5b49b6dede20ec8bd33dab8eacaf3bb3a69414568794f8abe255e6bba94d3bc9208d98fca8d8247d7b0ac4b1d42ff5ed421b2b7090efe06393f99ac0ea6ade9ec60b959d199590865607041a95377b742dc51a1776bab35e7d962b99e493242c79c1cfa62b1e6370aef14ef28752432bb1e0fa57a1e9ba95aebb7565a84b108b52b1b88da474e93c79c648f5157be3ae87630dce95aed840912ea2922ca1463322375fa915552092ba64c24dbb58f29dbcfad6ee98748934e3677abe4dc16dcb718c8c7a1ac40335315dd5946562da3747837ed763773d94c5e6b24f3a543f75a3fef29eff004ac231602e0e41af4ff8111a6abe219f46ba1e6417169346aa7f84953fd6bcd75285ad6fee2dcf1e54ac98fa122aaa5b4b0a17d6e350947520700e71eb5a70db5adddc978115c31e6090e0fd01aca8d9b183d2acaa67691904771daa62c6cdad5fc113a687ff0009169cacda779c2092376cc9049e8dedef5cf3c22dc00c417f6ed5eede0bd34ea5f07bc4aacab299e067427ab18f9cfd6bc3a5b65da1d0e0b724134548a52b20836d5c34fd4a4d3a6f304693230daf1b8c8615af633e9734c4881363fcaf04bc900f756f5158250ab61aa6b5189e3207f10fe755095b41491a7e34f094be11d74e9fe679d149124f0c9d37a38c8ff0ac6463111b7ef67ad7aefc7db710c1e13bcc0f324d3046cc0639535e428726b376e676296cae6cdadf412a8fb5234538e56e21e0fe22bb4d23c316be31f0d6b775247bb56d3201716f7112e1668c7de561eb5e7d1a671ef5ee5f006c0dd695ac7276ccad6c467d509ad53bc5dc86acd1e0cf76586d45e7d4d58b4d4becb188a4823b988f2c8e3183ec7b556ba80c3752c78c6c9197f234800dd8271ef58c34d51a4b5d19d4f8735089750821b232c904ae04d6139ca38cf415b9f19bc2167e15f12cb0e9b198ac6eadd2ea18cf58f70e57f039ae57c1d1993c49a7aa9219a65553ef9af58f8fd019e5d1ae3963f6568493d495635a55778a64d35ef3478a6962451e746c5187008aeaee74e5d3eda1bb9dfca9c8056684e083ee2b93b08a5f24840c72d5b3319dac52395dbe560704d694a492b3264ae74de3ef0d5b4bf0ff0041f13c36f1c372d2bdadcb47d253d558fbd799a02a72a4861d08af7cf14d8a1f80701da07977314c3d7e6e2bc2082ac45653d26d151f8532c41a8b9212f333a740c4fccbee0d7a06bfa31d47e13d86af298e49ad2f5a112ff1b46c32037e55e7014b10476af72b1b75d53f67ed4ee5a18d6486ea32768ec3239aae67c8c4a2b991e196939b1bb59422b819055bb8ad4b57b79e6df6e91392798261d7e959932625351aa7ce1b07822a632b0dab9ed5e11d4f5ad1741bdd7340df35859283a8e8d7a7cd85a32704a83d2b9cf17da693ac04f157846392ca16c3cf6abff2eb27fb27d2bd5fe1069fe7f866fe29203f67d534f9a1463d24dab9fd0d7867833575d0f599ac2f5f6d8dd6e8260dd17b035bcdae7e466715eef323774ef1cdbdd4903decf7165778d971340702603a311ebeb5db5bdb2788f40935e86e65b89ec9b612c382be87bf15e3dad5b98ef641805118aa328e187622bbcf86ba984b4b8b57bb5b78e44d8c8412246ec2ae9b515cac99a727cc8f63f875adb69b633decc866d36dd435cc639daa7f880af3ef8c1a3e9d63e2b37da6ba8b1d4504d19e8324722bbcf85de1fd552fe7b47b333e9d7b6ef6f2b123014f20e3dab94f8c3e129bc3de1bb45b9956e6deda722029fc0a7b66a39b5d4251b6c79bf97237c8a41cd7a6fc05d25dbc4fa81920f3a64b166863f539af195bf48e40f179a31dabd3fe0c78cce9fe259a76170dbad8c7ba25cbaf3d6b58c93b994935a9bdf13bc3d2eb1ad430deccc2e2de10b264720939c71e95c8ff00c20b220ca5c06c76c915d9f89f576bad7eea499f73e402c4f2df5f7aa297a847df15cce6ee74c62ac71d79e16d46152632c71d836e1fad60cf6570b27973c51efe9f30da6bd4bce523a8a82e6ced6fa329322383eb52a7dcbe4b9e5be4de69b20b9b4925b775390c8718af48f027c5e4775d27c58a2e6073b56761f327be7b566cda6c9a739455f3ecdf865c6597e9eb5c8eada542d217b7578467054a9c7d45546b72bd1e84ba3ccb53de3c51a5bf872283529836b3e1e9882b28399ed73df3d197d8d73d71a34fa4ea169a886fb4e9d3324d61a8ac59685b39d871d0572de0df1a6bd6b6c7c252df07d3e665196c30033d89afa87fe11db1b9d021b06b657b2b98009100c2938ea3d2b6f6919bb77d8e7941c15faa3abd1b505d4f4d82e432b3320dfb4e406c73576bc4fc09aa5cfc3af88371e12d4598697a8a896c6424950dd00e7a67a57b6571c959d8e98bbab851451486145145001451450014514500145145001451450014514500158be3488cde14d540eab6cf20ff00808ddfd2b6aab6a76e2ef4ebbb66e92c2e87f15228039ad2e613d9c328e43a2b7e62b9cf1d68e9abe917160c170f28c6ee9f30ff001ab9e04bd379e19b0727e758fcb71eea707f955df115abdc5aca231f398c95ff00797915b2219f245e687e20fb6cba224724a903952c0655547727b57392b1b29de3073b4919afa1ec992dbe21a07877da6b56c63917191923afe045795f8b7c3fa158788e5b6b969ad509209886e19f51fe142977071b6c61785fc99b52598b85922477d9f453cd79e5e4864b9738eac4feb5eb36fa5681a7e9faa5e69d7f733dc5bda3ff00ac40aa73c57914ff00eb3f0a9931a44d692b45731490fc8e8720d769a76ab0ea2812edad3ed19e8e36311ec457176ca5ae14118c54b2e45d0743f30fd2a5968ef260f0ae034e919e3a8953f3eb4d8102af9912bf1fc501dc07d54d73107895e270b341bbb178db69ad8b0d72d2e1f02742c3b3fc8fff007d0a4981a12c02e3f788b1c8fdcc676483ea2add86a77b6636c57aadb79f26e4609fa1a8bcd8f00b32b29e9e70fe4e29d3c2a57702769fe1986f53f46154988d983c669c457d6cd1e7ae46e435667d33c3be208f2c8884ff001c2791f8572eb6c631b90bc69df3fbc8cff85597b40d1099603191ff002ded1b23f15a772794adab7c33b94dd369922dcc7d768fbdf9572775a65d59398e78648d8766522bbab2d7353b5c84916f231e870f5af6fe27d3751c43a84319f559d3a7e34c5a9e48e187041a630070715eb3a8f83342d591a5b090da48474fbc86b95d4be1cead6c86586317318e774473fa521a671e68ab37363716ac56689d08ea1862ab11400e591e320a3953ec6b46dbc47a85a8004dbd476619accc6290d3b8ac75763e324ddb6780a67a943c7e55a9e6f87358189922573fc5f70fe62b80a3247209a0763b5bbf05d9cbf359ceebe9d1c7e95913f846fe0cec55980ee879fcab2adb54bcb320c33bae3deb6acbc6f7f0f13aa4e3fda14c4644da7dc5be77c4eb8f55354a65daa73c577f6fe33d2af1425cdb342dea0ee5fc8d64f8bb52d205898ad60b69659b18942ed64a1ec3471e982722a4e86a18be5c8dc0fbd4bb81e735050ee5a90d28a434c425010b381df3c5380f6abba5db7dab53b3800c992645c7d585033ecff85da50d1be1fe8b6a1769f2048df56e6ba49000092700724d269f6c2d34eb4b75e0450a263e80551f155e0d37c3ba85d93831c2d83ee78a423e73f881ae1d63c41a86a04fc81fc988760abc579a5f334d3ed1938fe75d76ac239658e0965f255be62e46707deb9fbfd2a6d3e5549648a769395785b7061da9cae08b3a2e9cf36b367631b79fe6c891b63907279aeb3e237801bc0ba9b4f6ec5f4d95f10ca1c6e071c8c5627876cf56b4bdf374f802dcc2bb8cd270b6ff00ed13eb5ea1e05f835abf8ee78753d77589ae34d0c4b1e7e7f64cff003a6c2e60fc3ed4b56d3356b4d667f366b4c0864988e361ec7e9553f68fd185af89edb55897e4bd84648e848ef5f4d4de0bb06f0fbf87edb4d8acac5576a600249f5cd78bfc6ff0edc3fc3f84dcaeebad267f2dd8f529d8ff002a872d6cc6ad6d0f19f03f8df53f06de8bcd35d164073f30c83ed597e218751d7b51bbd71ed446b772b48c5148404f5c1a86d74bb816bf6c9711419c293cb3fd07535d317d4f57d012cb48b6bab9b48973349b33b3d78ed57a93a1c1f912f3f2138eb8e69846de0823eb5ab268d749f3e3f0e9514897510e63381d9d770a35028a8e6acc240a69962dc04f6847fb51363f434e5366df72f1a33d9654fea28b81a56936d208382bc8af5fd1b5983c41e1d31ef512aa7cca4f715e2d1a498ca3c32e3fb8e2b6743d626d1ef629a486511e70eb8ea2a5c149a77b586a4e299d6dcda962403822bd1be157c1f9bc4ce9aa6ae1a1d314fcabd1a7fa7b565f8074cb0f1f6b76f6b652075dc1e70472880f35f4f2a59e89a6ed1b20b4b58fe81540aedaf5f9572c773969526dde467dfdee87e05d05ae2e1a0d3f4fb54e070b9c761ea6be7bf17fc6af11f8eda5b2f0ec6da56980e0dc39c338f5cd64fc49f165f7c50f12bf9723c7a2da318e08c9e1f07ef11ef5369f6d05a448ad86d83032381f8573c21d646efb239ed3fc137373399a5937331c9b897259be80f4ae82dbc03a6a307b9692e1bd0b102b446a31af46a8df5900f19ad1c98b94d1b5d1ecad940481001d33ce2ae2c3127dd451f856226b25b8dad4ff00ed390ff0b52d4a364ec1d8556ba8e1950870b8f7ac897529cfdd8db1542f351ba084046cd26df60b2ee65eb53c9e17d45351d365da01fdec43eec8bdc11557c51a7e9f35cdbea1a49db6d791094a0ff966fdc552d72eff00d1a53719071deb9d74d660b1b4b83f6a160e4b45b7918cf359ca762d46e6cd8a5ecb77f63b79312104ab633823d7daae596ab7ba05d3dddb222cebcdd58b74917bb27ad72da7fc44b8f0f6ab3bdb5a413293b419d7e6dbf5a9b56f8836fad4915c3e9ed6d3c6c183a3640f5fce9c6a34d342704d599ef3e0df19ac6f76ba6b6d8afac7ed31216c94913b562fc57f0beb5e22f87d0f8a75494ade472a831a2e0884fad799f81bc6ba0e83af3ea535dcb1c625f92d8a123611c8cf6fa57ae78a7e3af853c43e04bed262be0277882c31888f047404d54ece7ccba8a12718721e1ba6e8d128ff008f71eecd5ade4416f1b1f94374005612eb627c192efcbe395e82ad4be22d3a4b4fb299a28ce0e597963f8d7446714632e667d53e03bf874df861677e8c59e2b7c6c8f962727a0fc6be4df8e3a84da8f8f6ea49c9f3046b9cf6279af4cf04fc6cd33c39e113a44ad37da81f92448c385fcebc6fc7babc5e25f13dd6a7033b2cb8f99860938e6b92a3bc8d60acaece5cf1c9ab1074c8a7dadb349731eeb692e230773c71fde651d6b72f60d26f6e376930c965001f2c53bee627bf35291447e1c0eda988d6429bd083ef8e6bd27e2ee9c47c31f0f5d00488eee55c9ff6941af2fb7b1bd1a84290ab24ccdf21e99af64f1befd7be0769b288cc6d0ea015f71e9f2e3fa5153e1b798e1bfc8f0145c9156628f353b5b2c32f951a97c7538eb52c76c647d908c93d148e73424c573b9f80b3fd8fe2359607dfca93ec78ae47c7f622c7c6faedb0e0477b281f4dc6ba5f862d258f8dec4c8a639172a01eb59ff146c2edbc7babc8ea332cdbfeb9a524ee914adcace42143d7071eb57e28c9031d4d2db5adc79222620c60eec0ec6b4edb48b864124637e3a28fbd56a2c9ba3da3e0bc8b79e0c9b4b3fc71dca32e3fbc86be74b98da2b87897390e500fc715f48fc0fb093fb35e6219185c184a91820904722bc2358d1244d7efa16904652ea45dd8e986351384bda6a545ae4d0ca9edae6d67305e44f14a00f9186081daa5b68492ac0720e6affd8669e76173219c838129392476ad0b7d0ae5595add7cd541f3a81c81ee2b48c1dc872563d03e3747f6cf879e0fd44e33ba488fd36835e310425a2f372a006dbc9af7af89da6b4df06f444756df6b78a0e46080cb5e336168d6f21c469283c157e86b251d59726ac8bb068be6401d254738c951d6bd6ff67c9441a9dc581e04922b7f4ae034982c6ee458487b1b8fe1c9f94d7a9fc2df0f5ee93adcf793dab7948519665fb85b238ad395b4d11ccb7678378874f0be2fd4ecda548025dca373f41f31ac77429230238cf07d6bd17e2cf86cd8fc49d7e1f2f8372645e3b3007fad60d8e9322ae7ecfe6a9e082338a9a74dd915392bb28785898f57b4994f314caff91af6cf8c9189b44d12e946e5779793efcd79e681e0d6bed4a08ad5fcab99640a91b0c2bfe3dabd73e32f82757b3f87ba53c919125add6c6da73952bd7f3aaab4e564854e6aecf0348d6ca0f2e352f862d95e719a7dbffa639575238e01eb5a76b6125b91e6c2587438e08addd334886e6e977c05d01187db865fafad68a991ce8eb6fe3fb6fc0bd415816fb1f9448cf60fff00d7af09d405adc5cefb285a04c0cc6cd9e7eb5f5ac5e02b98fe166bb046629926b4f351939dcc183018af9acf84b5099f79b590b1eeab51ec9b9c8a7523ca8e5d217474dcac013d715eeff0fd3ed5f04fc5962d96f2c79a07d0e6b82d3fc2da8c6ebe669d25c400f31b290a7f1ec6be8bf87ff0e6dd7e1d6af0da5d6f6bfb3917ca64dad1391f74fafd69ce935076146a2e647c7f7bb26b926284c4381b4d5e9b4c853c98e28a5591c02c4f2335db41f0c3c477133a7f66dcbec6299f2fbd743a37c1ef12c127da96c27842f0de60e08ef815a428dc89d448f4af85318874dd212388c768b2b451863f312c9f37e19af05b1f044fe22f1adfe98ac2d2de2b897cdba94623894124926be9af0749e1dd2e4d2b47d5de4b0bb8cf99079adb44cdef5e61e31f855e20bcf186acbe4ea33da4b70cea9698542a7919e79a89526eabb150aa94353c6ef0dbdbdc4b6b6d72f2c70c85524ea1803d40adef0dd9f88ee6e91b4c820bc93782a8d0e19cfd057a9e91f00f5cba85522d1adf4e8d88ccd7520693f2ed5ee1e02f86da5782adc481c5cdf32e1a66030a7fd9156da8efa90e7cdaad0f1ed0bc57f127c17b9a7f00ddcdf211b9492a323af4af3cf18f8e75cd734b9eceff00c3d716bbdf72c8e4e14e7b035f5d6a9a56bba844c96daec5699c8f9200d91f89af27d63e026b9abdc48f77ab35e2139507098fc2b2e58c9fbc529b4b43e5e16d291968c83dc574be06bebdd1b55792ced7cd4963314ca54b0c1fe55ee117ecc8f3f125c0b661c87e1c13ee2aa6a9fb3a789ad88fecdd52d8afa471f967f9d5f2c3b89ce5d8f3fbdd42d26b966b895524e857b8a68b8b051febd7f3ae917f678f1dc7741aeee609212724a15dc7f3abd37ecfde208d4c906a16b00f4b955c0fc7354a30b6e27291c87db2d71f2b9351b6ab0212aa4b11fed575737c17f1ad945e6c5aa685301d1415e7f5aacde0cf897a7a6f5d37459d57fd9434d420fa873cce63edb7774711a9453d3209fe94bfd81e22bf5c5bd9492e4e3fd5915d036a7f11ec084b8d3349b58f3f7de35da3f115d541aa78b62b2469759f0f432b1cfcb82b8a52a74dad46aa545b23cd7fe15578cf5291628b4c6566e77a381b7f1ec6bb3d17c2df14bc2eaab6baaeb5342807ee5c0957f0abba97897c5360a4b789746538ced8580fe55cbde7c47d6564d9278930e3a98d8edfd2b35c90ea54bda4fa1d2eafadebdaa5cdabea37622beb120a19610acb839af5ff000f7c5db0bf548f56b57d3e53c79aa7cc88fe2391f88fc6be637f143cb399ae2f12ed8924869319aded0bc7f6b7a1a158ad2078d73ba79880dec38a9bc24f51da515b1f5cdb5d417912cd6d347344dc878d8303f88a96be77f0eea9e3c88fdb3c3ba424f6f9f99ade7cc6fed83c135e97e0ff008a76fac6a0343d72d1f48d6860086518594ffb27b1f6a8942c38cae77b4514541414514500145145001451450014514500145145001451499a00f27f01c86cb53f12688c4e74fd4e5d80ff0071cef1f8735d95e03f663228c94f9b1ebeb5c36ab2ff00c23df1aee217f962d7ac525427a1923f948fcb15df44c1939e723a56a990cf25bf9d747f13cd6ac02ee4325a4d8e554f2c05797f892eb4df19bceba73a8b9b672a51f82e3fbc0f7af60f89ba149242b2db318ee6df2f0b7f797d2bc2eeef859defda63d28fdb55b819f9377d3fa5368687f8b2c1341f045feeb78229a5f2adf7479cbe7935e2e7e6635eb7f18b50b9b7d1b46d2ef1b37b2ab5edc8e9b4b7dd18f615e4aa391c66a25d868b36609933f788152e332312318e292d53018d2aff0011ce726a4644c3e661daa065cb93563a9624f15091d4d26809ed358bfb105629d8c7fdc6e54fe15e9ff08fc33acfc4c6d461d33c8b796ca2121dce5524e40dbdc6793f957929e0135f52fec8fa7ff67785b56d51c60dd5c2c4a7d428c9ff00d0a9a6070dadf84fc43e0f9cff006ae91716a09c19a2fba7f2ca9acd89e232ef43927af947ca907e1d0d7d7f717d14d1b472aa488c30cac3208f422bcffc4df0c7c27aeee912d8d84c79df6c70b9f75e9f9629dc0f059e08a7390229d87671e4cdf9f43542e2c94be15f9ff9e572307f06af40d6fe176b1a486363710ea56c3a46df780fa1fe86b8eb9867b17686e609add4758e552e83f03c8a0665a493589fddc93dab7a1f990d69d878af51b37dd2279aa3fe5a427fa541b11577c65a243d4c47cc8ff2ea2aac906d7678d4127fe5a5b1c7e6b4d4ac268ead35cd135f8fcabdb7b7989ea1d76b8fc6b3752f86da2ea4a64d2eeded243ff2ce5e41fa1ae7466e0f96f125cb03c32fc928ab7a7dd5cdb3f956f78d0c83fe585d8c7eb55ccba93caee636a9f0f75cd341736de6c63f8a33915ce4f6d340c5658dd08ec457ac5b78c2eac5bcbbeb7920ff00687cc86b4653a1789e03e74513330e5a22030fc29d93d82fdcf103457a76a5f0b21baf9f4bba4cff00cf390e0d71dacf83356d0db1756922a9e8e0657f3a9b5813304d00d39e3642460e7de998a063c9aad724b30f6153e6ab5c1c1cf7c526042af827153092aa83cd480d40c9f752890d440e69c0d50132c9df15d3fc39b61a978e344802e73771923e8d5ca035e89f01ed7ed5f12f4704642485ff00214203ece651bb03b715c67c57b8f27c24f00386b99923fa8ce4d76aa32c6bcfbe2f3974d32d4742cf29fc055211f39eb937fc4ca4c2ef0bc6da4d3db4c8665b8955d253d001b950fae2ab6a3216d4e42b9c962722b3ae6f9a07da89b8e7926b420fa43c05e05f0f7886c74b96e2f8be9ef293e48fbf792ffb78e807a1af7cb5b586ce08edede248a28d42a220c0503b015f22fc07f882fe1cf13436d31cd8df308a556fe063d187a57d750cdb890483e87d6b39aec0a567a8cb9c815c3fc47d0a1d67c3f7d14a06db880ab1f75e41aeeae51997e45dc7d2b8cf13eacb1cd0e8f86b896e032cb1c285844a41e59ba0a976e50826a4fb1e1de0b9fc2fa5b7d92ee28e2be1c319c6770ff649ed5e856be1dd1e5945fe96eb6772c31e641850e3d180e187d6be6ed4f5b7d36f350d0f52b617505b4efe44a0e25839e80f71ec6b67c2de2bbcb150fa5ebd192a326daeb2b9f607a57445c5ee4ca125aa67ba4bf0774df14976b816b04fd8c636eef7c5725adfece3aa44196d834a9d414607f4a7e87f1ae3b72916b3692db49fdf4e54fb835eb1e17f899a5ea50feeeed6753c8c30dcb49a6be1127d19f3c4ff00b3df8b09668b4c3301d37614d729ad7c25f106965bedba05e4207f12a6e07f2afb8ec358b4d487ee2519fee9eb56de359061d430f422b07295f636563f3b6e7c07a80e62b3baff00bf445543a16b560fc0bb8ff022bf412ffc27637aece4b465bb2818ac1bff0086d14ca7c992063e9225546cfe2137d8f8b341f107893c3d77e6e9935edbce460b4190cc3df1d6ba9bff008b3f112e6c1ec6eaf6f65b69976ba48a791ef5ed3aff00c3cf1869331bbd2749b2b92872ad0b00e3f022b8ebef88bf116ca492ceefc33348d1f0caf64ac3f12056bc917b321ce5b58f34d2bc4fa8c4ea2e3c98a2cf381c8fc2ba4b7f165bb101fca71ea1b1fcea19f53d5f52b99247f045b472dc1c3c9e4327e3ed4e97c1ba9ddafcbe1cb2523bc772c0fea2b58f6264cd683c45a739c6d8c7afce2a57f1169519e47fdf38358761e03d4a79595740198ce0eeb8207fe835ba9e0fd52d623bbc062e48e0149dc93ef57b1371c3c5da428fbcc3f0a69f19e8e39ded4e87c23acdc3aac7f0eb613fdf99b8ad787c01aac8023784eca261fde91e9a6989c8c17f19e98e405494e7daabcfe2086704c5137fc08115dd5a7c3bd511413a169cac3d0b9adab7f05f8a18016da4e8c98fef5b1ff1a6eddc5cd63c62e2d2df566c5ecaf145dd214dccdedcd6f5ddd4375158db5a695710d9d943e54684ee67cf563ee6bd6e2f86de2d9954bffc23f037b5ae48aba9f0dfc64abb53c41a55b0f58ec4647e75cf5234dead9ac2735b1f366ade10d06eae5a59e2bfb59db9d8a9d7f0aa03e155cdf6f974f92768873fbc8883f90e6be919be066b579746eaefc5a924c7abfd9413f856fe81f0a6e347ba8679bc4d7d388d8128a8aa1bdba542e42e529743e63b1fd9cfc57abb2982084295dde648db07eb4dd53f674f11695034d732da12bff2ce293731fc057dbde5a6d00a838f514d1040a72218b3fee8a9538f626cfb9f0627c16d75fadb498fa1ab36df03b5c9a658e3b472ec7006c3d6beecf2e2ff009e69ff007c8a50a8a721141f502afdac3f945cb2ee7c8d77fb326a9a3e8efa9dfeb16d0c7145e63a2c6ccca7fba31d4d79b45f0f75bbb9246b6b19d9149ff589b4915fa06551c6d750c3d08cd33ec96d9cfd9e2cff00b82a3daf9028bee7e7c7f606b3a1ddab8865b69471bd411d7b546ba55d34dfbeb399901e4a2e40afd05bad3b4d9226373656ce8064ef8c1af1ef196bfe1585668bc396f7b6fa9c2dc25a40a6297d77e78c554669f429a68f12f047846f35d905bdbdbb4a8afb7cdc02d167b8af58f1d7c33bdd37e105d6996b3ff684ad7514cbe5260a81c74f5a678b7c5d67e10d2e29a5874c4d4a68566b36b6f977bf759901e3ea2b87f117c76f17a69373a7dd1d2a2f3a30cb25b827693c8c1cf5ad66a328a328b9291c4dbfc35d7277551a7dd3b7fd73c56a5a7c21d7a5902b584c0ff782f4ae64fc44f1931f9f539718fef54573e38f1322f992ea52b29e06d98ff8d0a515d0a6a47af7c32f0969de19f10093c656f0a448fe5dbdcc8e03ac87f84fa8ad8f8c5f07e4d6fc58356d2da25b3b98570159472063b9af14d1619fc4b7320bcd4d1a63119622f212323f84fa13507883c47accde459ff685c816abb02ef2428f414a4d37ccc2cd6899dec5f03f518df9960553fc525c20c7eb5a765f07cdaa33dc6b5a5c2ebc8c5c026bc6edefefd987997d296ec59cd6b25e4b0aef9a7219b8decf91f952f6a93d10d536fa9f467803c4fe0cd16487c397f7911bc670ed72bd1df3c02d5c778afe116843c4ba8dc5cf8874cb6fb44cd32c724a43056391d0579d59c493e9b05ddadd6fba42ea7747850073906b8bf10ea57fa96a066699cbe304ee38c0a252d798147a1ec49f0d3c270125fc65a5a0cf0177355b1a0f81b45b887514f18a35c5b1126120387c7f0e3be6bc4a3947968cc64181cf3566d2e2ce6bc88cfe7344187c887191df9a6aaea1c9dd9f54ea3e29f04fc51f87d37daae62b016ce269c6c0ae36f1903bd7989d3fe12c4f9fedad4253d711db05fe75e73e29034f83cbb57904172c422487955f7f535ccd8c25a465dc700fad439f25ec3504cf70177f0ae10367f6b5c1ff007545741e1ef8cba7f85eeedad2c74f9a6d3a57c48b31048f71ef5e21610989c37cb8ee587415d0e966db58d3e489ad8190cd88ee958865503918e98a50a8e7a0e54d451e9ff13bc6df0e64d756fded06a13dec6b233249b0a1031b5863ad72507c47f045b122dbc33193df33927f957956b9a4dcfdadefada45b8b756da0a1c94c7a8acd33ba12c080ded54aab5a213a69ea7b25efc54d19706c7c2f6714f8f90866c86ec6ba8d37e3dc13782ae6c7c556d1dd5c46336ff2e4311d038feb5e0fa26b172ba859cd0450c7710b001c2e777b9cf5ab1e38949303305596e1ccd26c181d7d29f35d5c3955ec77a7e2fa32ee8bc31a3a93dfc9cff3a9edfe296a328ca697a65bc64ffcb3b7009af278f800ee3d3b55d17923a2448ef827150e726528a47b1e91f18b5cf06dd5d7f6b2a4f6b7085becac30a148e08f4ae264f8d1e2491a46b216f1c65895558c0c0cd60f8be431e871091999e660a0b1c9daa2b9cb22a2355ce0e2ae5369e84a8ab1e8317c62f1acf18863ba55ee7e45adeb0f8a3e34f09dcff6acba9a5d0bd83e6dec1e245ff747422bc98852563dc4333000e6b73c44a967a041129c995c0cfb0a49b69dc7648d66f89fe31be99cc3a8dcc81d8b6d8988c64fb53d7c75e2985775cdc6a65f70c3b5c300bf866b83b737512ee85d9491d54e0d46a976d75199659181619cb139a8bb2ac8efefceaeba95b5fdfcb25e3cc3cd8c99f7b01ee7b56eda7c55f12d86a505da6ad71e5850a64b77f302a8ecca79c8ae76f6e7ecb16a378d399fca80451c8463a8e95e7d61a85fd9ca67b592547190597de9b9f2ab02577767d3abf1bbc710c0b7ba54f61e22b1c7ce045b678fd99339fc455dd2ff006af803795abe81e5b8e1bcb7208fc0d7cc161abea16171f69b769a3941cee5241cd74175f11ee359b3fb26bda7c37413ee4ab105941f761d6a5ce2d0b935d4fa9ecff699f055c0fdf437b01ff7734a9fb4df84bcd2ad05f2c79e1f00e7f0af8e9efac00262172a7fba79029a353897a17c7bd34e1d4970ec8fb7a1fda1fc072aa91a8c8848e8f1918aa5ac7c77f0cdd29b7b5d66d6289c6d672ae5c7d315f1b41a8c72901779357d2299d77795263e94d286e1667be6adaff862ed8cadf10b526001db0a86c7d0735952da785756b6121f8817b18ea62b8724935e32b148c71e4cbff7cd4a2de4ebe53fe554b945667aac5a1f867515767f1998a383a86665dc3b6077ab5fd8be1831c51c3f11244247cdb99881ed5e422d2563c42e3ea2965844201930b9ec7afe542487a9eab7be16f0ddc2b3c9f1159dc0e10138ae7af3c3ba2a4588bc5fe6339c6d24f4f7ae5174999e48e2f916595778427903d4fa7e3566c7c2d7fa844f2dbc713469d58be052718f51c64eda1d259f84bc34e258ef7c645028ca9442437b549ff087f81649023f8b2400affac3061735cbeb3e18d4741ba4b5be823599a312ed57c9553ebe958725fdbc4fe5ba9ce71c0a85183d8a6e68efe6f0978291f09e276741d1d22c7e79a16cfc0da7240ae25bd9011b9ccc00fc80aa3e01f879aafc45d49ac3485894a2ef9259f2238c7b900f5fa57ac699fb265eb10752f10db463badb4258fe6d8fe54dc631173c99cfbfc54d3ac6cd74fd1e56b0b78ca9dd1b3163eb8ae9fc0d3dc7c4dd602ae9d717305bcd1483569be536e14e4a83fc44e318aedfc39fb37f823436496ea1b9d5a65e7374f84cff00b8b8fd735e9b65656da75b25ad9dbc56f0463091c4a15547b0151292e838a27a28a2b32828a28a0028a28a0028a28a0028a28a0028a28340084d349c504d44ef401e3ffb475b4da7e9da0f8c6d01f3b44bd1e615ef1498073ed903f3aecb42d5a1d574cb6bfb770d15c46b2291ee2aff008bf45b7f14f86f52d12e80315ec0d164ff00092383f81c1af03f825e3b9342bfbbf01f8864105d584cf140d29c676920afe9c5691133dd751b5b7d460315c2865edea0d720fe05d074a9df53ba1e7188171e60002e39c9aeaccb919edd6bc47e3e7c4f874ed35f40d2ee95ef2e0159da36cf949e9f5355b108f07f89de253e29f17ea1a806cc4d2148bd90702b9441cf7fc29667def9ed5358a2bceaac4804e4d66ddcb2d05f2a2191838cd479db1838f7a9f50642e5509dbd01aab29e31cfa5218de8878eb519c84a7c87000f5a6487a0a006b0ca63b9afadfe1685f0cf8074bb2e15da333c9fef3f3fcb03f0af96fc39a6ff006c6bb69667ee3382f8eca393fa57d0d26bc1502210aaa3000e805203be9fc47b7f8eb36e3c4f8cfcf5c0dcf8809c8dff00ad66cdad3313f37eb4c0ef2e7c4e7fbffad63ea3ab417e852e238e55f4619ae3e4d598ff0015577d4c9fe2a00bf77a35849233dbb3dbb9f439158d79a65d4649da9381d1d3e561f9548da89fef1a8cea0dfdea00cc98b97db261c8e8241b5bf034c69e65705e50c0f1b2e0647fdf55a32ddc73022645907a91cfe7558c1030c4337960ff000483229813c57289182a65b3cf661e6c2dfe14ad65148a67680a1ebf68b16dc07b95aa404f632120346847263f990fe14fb6bc8d5f72a98e4ff9eb6cd83f8ad032f5aea3a9da1cdadec37e83a2b7cae3f035ab69e3e0ade4dea4b6e7a15957729fceb127956760cd15bde1ff009e89fba947d477aa77a8187c9331f58ae97a7e354a4c971573b730785fc4287ed161017618f36dce08fc2b9bd57e15473664d1ef9241ff003ca5e1ab03cb92dc87884b6a7aee8db2b5a167e2bd52cd82c9b6e9077ef4ee98b539dd53c1fac694c45c5948a07f101915cede42f1be0a9e057b7587c40b6962d93e5703fd5cabb81f6ae1fc6faada7892569ad347b7d35a205488bfe5affb46a58d1e76bd6a55a880c64548a6a063c5385301a7034c078af58fd9be112fc47b46ea52276fd2bc9c1af61fd99133f1051bd2dde9a03eb78d6bce3e2a00fa9c008388ad1dabd2e315e69f14558ea32b004edb16fe754847ce134264bd60072c73597a9c216e0a8ed5d469f67249abf96d1386c63953c67b9f4a9b57f879a9465ae3cc8e43bbe68d472055bd49d11cbe929345209a2ce508391d8d7dbff0e35d5f11f82f4cd4b3be630ac720cff1a8c1af23f847f0dfc3baaf8675082e6073a995cee639c0ec40aef3e0b6993787ed354d12490ba4171e6459fe107a8a96f4b035d4f468966393330e7a2af41514f6a82193cb4552c0e70319ab741e78acd31b573e0cf8b5a6ae9fe3fd6612a7e6977051df2335c6dbbac44b94df8e715eb1fb46e9e2d7e23cecb84f3a356cfa5791e76bb2e738c8cfad526365d5d7a689b313b2a1fe06e456a5878aad810cf1cd6528e935b3ff0035ae55ea327de9dec163d7743f8a3ae69322bd8ebd1cc07449f83fad7a4e91fb4ceaf691aaea7a4c372bd3cc8df15f2cee3ea6a58af668be5f35c2fa034dbbee251b1f65d97ed35e1f9c0175a5de427bed60c2b5edff00681f065c150d35cc59fef274af88d35ab98f80c48f7a993c4530fbcbfad09441ab9f785afc58f055d80535eb74cf6738ad08bc67e17b8f9935ed398918e655c9af82ad354bdbd62b6d6f24a4764e6accb7daa5b0ccb6d3c43d5b814ed1e8c8e447de0dab7876e8a9fed3d31cf6fdead3bed3a003cdde9993ff004d12be094d7750623cbf35b3d369352ff6e6b19e12e7f334f45d45c8ba1f79ff0068e830f5bfd317feda2d3478a7c3f167fe273a6aff00db65af839b57d6dbfe595cfe6699f6ad724ff9633d1a771721f784de3af0cc1feb35fd394ffd761551fe26f83a3386d7ec49f6706be162daeb9c8826a4f275e93fe58cd4ad1ee57233ee593e2bf82e3fbdaf5a7e06abbfc66f0447d75c84fd057c4474fd748f99180f734c7d3b5741966551fef51ee8f919f6b3fc75f0329c7f6b13f443559ff680f03a9c7dba63f48ebe2e5b5d41955bcf5c336d5e7a9f6a912c6ec9c35e203dc0a7cb1158fb28fed0be065ff97cb83f48ea297f68cf03274b8ba6fa475f25af86eee6883c57123e7ae16b3ef74f92c1b6dc5ccb1b1e81a234bdcd8af66f73eb993f697f0627dd4bd7fa28aa927ed43e1553f2585fb0fc057c88f2ed198de7931d708715524d42756c61b1ee314fdd1729f5c5d7ed55a2a11f67d1ee5f9e4b381c5509ff006afb7527c9d0d88ff6e51fe15f29fdb6e5cf14f49e527e70c7e945e21cacfa46f3f6aebf3b841a5dba7a6e726b02f3f69ef13ced9896dd1bb6d5cd78cda5a5d5d4b1a436c242ed8cbf02b66fb58b1d0d05a413c525d8ff005924518da87d01ef551682c77977f1b7e226b88552e6548fd4461571f535cc5df8a2f5a47935cd7642a3936b6c7e690fa123802b967f1246cd97bab8901ea3b5665d5cc77729963ce0faf5a6e4ada0b9597752d6ae7c41a94670562538441fc22b535f8fcbb3b38ca9183bb354bc23a5c97fabdb2818579d2327dcd5af1bea51dbeb325a11b8424ae01ee0d4f3595d8ec886455653ce78ef590d102c734d3aca9e91b7e75233861b80ebdaa5cae558e93c036fbb5c0c0021549cf6aafa8ca92ea372e4f590ff003adaf87fe488efa6de43436cd2118ef5c2dc6b534b348422e371ab94ac91296acd2b82ad8c5227cd80c73e959f6d7525c1f9b1c7a56a5a23c9711a2c65c93d0542d595b1d7e9bfe8de1b99dce15633803b135c5cc85a5dd83c8aebfc6f711e91e19b7fb1cca45c228e3b11d6bcdffb5aed87facaa9c96c24ba9a5e7ac24c6dcab7047a55cd36126f628d54b9183c0aa3a7580bfd92cd3ac793939ef5d3f86ad3cff1237945bca55e081d70288ab83641e339f7dedbc231fba8c719f5ac4825f292461f798f15178a6e5aeb5dba903fcaadb460fa541a5962ed9c902a1caf2b0d688dbb41733ab17661185fa0aebb4a8ce97a4bccdf2a240ce3ea7bd7316d24d710f943ee8fc2ba3f175c9b1f035b9fbaf345b54fa8cd6915ca9b15eecf388afa68246305c301213b87ae6ac2c05b04b01eb58b09395c6739ae9d6d2448d0bc6ca586e1918cd670571c997341b0fb45dc491025864918eb4cf1d7fc862184722285548f435d47c3eb7dfaf47b5be5482476e3fd93c5737e24f2af6fdee51f2fe66d20d6ad5a362537732e285ca0eb9ad0d1ec64b9d4218c72d9ce2af5a7876faee06ba8621e4270cc58002b6fc1fa6ecf10dba8192bb9ddfb0502851b6a1739cf881362e2d2cc119863cb0f735cf476c6440c1c03d073563c4b7ffda3aeddcf9caf98429f606ae786b498f5dcc0f796d69b325a49df68c7f5a8f898de887e89a7f9da85b0760f9902f3d073577e20b88afe2b0523fd1c1c81d326b67c39a4d8c3aed8dac572b72a27567b8030814727ad71fe2ad416ff00c417d3a36e469982fd33572d1584b5d42d2d647895941e474ad2874db98425c4d6f22c1da4653b7f3a668be2fbbd234c92d22d261b867185b878f2e83d16a6d2ee750d4a78d6ea29c5b839225930a3f03493570d4bde35b29747d163b13ccd74eaeaa072548c8aa7776d0f86bc350594a99bdbc224947755ed5d2788fc41a5dfebe9ab5d959cdb44915bdb29f95768c026b88d6751b9d7b526b99b82c7818e82a67765448e2b8917e64fbbe845755a1dbd8dec3b6eec9246720039c62b274dd31e50182eec73d2bd67c21e009b5ab28aee1b39922f2d98cec30af27a0fa51182dda0e67d0e3fc49e12f0f58e96b7115a4914cee157f78483ebc5705ab58da5b00d10c7b1e6bb8f1bea464bd5b2046db5186c1e3777af37d5efbed13611b81d6a6718f42b5d99079e14f03a5749a13c860137da1d46785c6735c8126ba6d21b1a7c78e294629bd44dd8ea96fed8463f7c9bf1c8240a85b555c055f2cb7a039fe55cf497ae87848c63bed19a84ea174ff2a48c33d9462ab9624f333a192ea66526695e35f445c67f135506ab6d6cf98c856f543be46ff811e17f0acf874cbfbdf9992423fbce6b734df0dc48bbda192f651d23887ca3ea7a5691496c886efb91d94f71a939503ecf6b9cb9eedfef37535d768bafd9e98a97b226eb2b639820ff009f8947438fee8ae6f5248ed6311dc4b1efed676e72abfef37f4aa26e6491c4b300c546117a2a0f61594e5db734844d3d7357babe6bbd57509b37774c4e0f61e82b1bc39e1abff116b16d656703dc5edd38486203d7b9f403ad044fa95ec50c68f73712b848a34192cc78000ee6bebcf81bf07e3f0169a356d5a34935ebb41bb3cfd950ff00cb307d7d4fe15108f2abc8b9cafa23a9f861f0f6cfe1d786a1d361db25dc9892eee00e65931ce3fd91d00ff1aebe8a29377105145148028a28a0028a28a0028a28a0028a28a0028a28a00290d2d21a0063f4aad31eb565c7155a51d68032eeee02672715f357ed21e0664bb4f1b690a558612f847c107a2c9fd0fe15f49ea16de6a91deb83f13e9d39b79a292313412295746190c0f5069a7603e4d4f89fe2c8ecbec6baf6a020c636f9a7a7d6b97bdbc92e5d9e476766392cc724fe35d47c42f05c9e18d46492d91cd848c4a13c98ff00d93fe35c5b1cd372602649353404870476a845488c117de90165a4dd2633d2a32db9fe951799b47bd377e07bd004a5b2df4a616cb67d2985f03d4d5ed234d7d4a700822153976fe9401d4f812d8594726a320c4920d91e7b2f73f8d7512ea848fbd5851b88d151176aa8c01e8294c86803425bf27bd40d784f7aa6ce69bb8d005b37448a8dae09ef55f3484d2b81399cfad34dc13dea0cfb51f852b812f9c4f7a4f34d4747d680264ba962fb8e47b51f6889dbf790856fefc7c1a868a2e05c0566180e92fb49c30fc6892e4c3fbb25f67f7651bd7f3aa669e97122701811e879aae602c2000650bc6a792633b97f2a1ac84c8644f2e6c725a36dae3f0a804d1f50a50faad39651b83651bddb83f9d170116dcc8db524495b3f71c618556d4ed99700c2622c39e720d5e6728ebe6c64a3777fe8d49ad44120865dafb4f424e45033ceae61315c3a7a1a60e2b47578b65d31241ddcf15440148420a70e28c01462801ea78af64fd98d80f8811fbdbc82bc6d578af5bfd9b64117c45b30720bc6ebfa55203ec58c715e5bf16fc41a5e8d7d241792b79f71665638d1727af5af548feed7cf1fb445b3c5e2fb3b8653e5c96c02b76c8354b711cf7807c4b71178b16fa6713ab0586512282193a62bd33c6fa6369f349259c6bb08f9770e082322bc56da41a2bc720c65f0c0d7ab788be2743a868a51a04322dbaae7dc0c55f3244f2f3684bf0eb5cb9d1f5db6370a61595fca6dc3018357a3784f53f27e246b3a43721a059d1877e79af08f1df8e3edba36937103a09218a30c5783b81ef4ef879f14aeecfe20b6a73406e99ed0c463dd824526eeb41f2d9ea7d31aff0088a7d3ae0436d146e40c92c69fa3f8a16fcf9571018650320af2ad5e4779fb42a453b09bc3009cf53c9aa337ed177617363e1d8d01ff00679cd47b3762afd0e3bf69e432f8b6cae420ccd091b5bd8d787c881256503001e95ebff1df5a9fc4765e1bd66ea0f265b98642d1fa60d78e17fde1c7ad28ab2b31c9dc64c141c29247bd576abaf12bafc8fb98f246318aa8e29b250cc8a6b30a539cd34d031a5b9a01cd21e29b9a00daf0ceb4da16a2b36e211be5603d2bd16e2f23d4ed4c73e1e294707fad79064918ae8f40f1035b20b5b96cc7fc24f6ad20fa32257e85b9619b40b92ad1f9d6cc720f4e3fa56ad96af1cc0794e377612707f3ef538995d55885910f623208a826d134fd418b5b3fd8e73dbf80ff00855b8be84a68d38756888db3c7b08eb9ff001ab90ddda4a328dc7ad71d73a7eada6b12c85d07f1a1dc2abaea7329f9c107dc562e0ba9af333b97bfb543824fe541d46dc29381c7b8ae246a32b8f988607d453bed9231c058f8ff0066870882933a6bad6a00480807d4d519905e90ec7cc8872554ec5fc58d641b89df3b4819ec052456f7374c118bbf3d33428d86e5d0b77577021c46124980da850623857d147f5aaf0c12942c0126ba0d3fc2726c0f3aec079e6ba6d3edb4dd2e1dcea8fee7a5689a919b4d1c968de201633ac372004cf5f4ac5f196a4355d5cec6cc6802ae0d759e21d4346bc8d89b58e374fba634c6efa9ae32d6c61bed60490ee5b6421dcb7f0fa8acdc1735cb527cb63aa98258d8c70a2a299117761403d2b8df155fa9648555770392456fea5a8f9d33ca3010741e8057037f726eeee4973c13c56b52c958ce376209dab6bc22e24d6e30d86001383c8ae7735ade189c45abc7ce3702b592dcb3aef104b3cd632c36a08918fca13835e792432c4e7cd4756cf3b877af40b876c1f2cfce391f5ac89ef5209489e15901392735a4e24a7639418f4ad1d2a25b963106553d7938adb59342947ef2ce5c9feeb814d64d0c30c47328ee720d4a8d8398d2f062083c496290b9204b9663c0cfad72be2494dd7882fe5196067700f5cf26ba08df488be6496f149e0ec700e29ee9a516fdcc9294ff006880d55257490a3a338df2a4fe14627e95d3e93a24571602f6faf92d6dc9da176ee91c8ec076fad5e486cd9498926c67b919a9228edf277c5263b60f7a231b6e5377d8d0d0a35b6d13c437568927922d4449b872493eb5e7a34dbde4f9479f535de43733b5abda6f94444ee31a7dd3f5f5aaaf710c470d02eefad274eeee0e473fa059245a8a9d44bc76a461d906587d0575966d672c9e469d6ed10638f35f9761e99ed55e1ba4dbb96d039f426a19b5a689ce6dcc63b286ab8ae55a92f5357e2869e26974cd36c5c48b6f6ca662bc80e79c715c31f0e5e28191c7aedae8dfc50c570908fcea8cfe209e51b4e14039e2a2514ddc771da7e9f25adba24d6d2c87381b78aeb3c2164d0dcdddd4845b08ad9cc6add5d8f000ae524f10c8f1f94036e1dd4e2a1fed6bc106e129c13d73922aa324909a259fc1d772bb4d248033b127e614fd37423a65d1779636e30518d538f549d1b71919cfbd5e5d4eeee63f9a4f2f1fc40528c56e3bb24303c171e5098ba93c003a5751e325b1f11e95a2d841388e2b283648482373e735c318eeda4256e463a86071503df5e2b6c170ec47a9ab76b5993d7437ecbc19a5072df6fdc8a7e6654ce2aeeb2ba6c91a402fe795edd4247f2e063d2b9485ef640e72e3b9c74a7c16b757049dc41c6727bd0ac96881eaf53a6f0e6ab268af752468ad712c0d0a3349c26e18cd645be873656596fad99739c6fcb67e95992c17a8c70d216abba2584f7133c72ef5661c76e687abd81685abd32dab08feda154f240271f955db5bdbcb4b46fb2ea6479a855d8000e0f500d60dce89a8c5398dd24ce782c3a8a8e5d0f5041cc6e72339a2f2ec2d0b563a4e8d2926eaeee8007e6f2c0cfeb575ec3c2d00020b6d4e793b33ccaabfa0ac8b7d07519880904cdfeea935d0d9f813c413ec6b6b1b897772a02134462df41b6bab33ee6682c17f75652428c3ef198b668b2bf8962611d95b823f8d9335e85a67c29f12cf104b9d31da3957047a7bf357a1f813ac08fc80d6d1a1f98348e07e15a3a4d2b90aa45bb1e6eafa8ea31110dcaaaaf554502a84d6b708921ba99d597a29c9dd5e956fe068f44b92b756f3348870c6195361fc4d3f5bb2d2238225586db7f52ef700941e98152e8e972bda59d8f27b5b279241f239ef9aebbc2da3bdc5c88c5bc4d24df2abcdd23f53cd3ee26b58642b15e5ac71f6c726abff006be9d09c4d7375743fb910d8a7f134282ea1cd7d8f46f017c3297c4fe2996cec6f924b2b7c1b8994601f65af4cf8a3f15743f877e1eff844fc3862b8d4045e51d9cadb8c60927fbd5f3c9f8b5ab695a5c9a5e8d2c7a45a49feb3c8ff005b27d5bad70777ac5cdfcdb202eef2372c796626b3aad3d3a1504d3bb27d67593ba45572d33925989f5eb58514334ed88e37909f404d7556fa45969b146f7005dde373e57f029f73dfe95226ab7f31c218ed80e0244a14565a17a9c8c91490b14910a37a115d0e923362a2a1d6a5fb4401a5e650d80ddea8595fcb66703e653d8d38ee266d4b672cac76818033d6b574396cadd71710b2b7a84049fceb086b919ea8c286d6e361c23e6aac49dbb6b76b100d0e9f036dfe3bb9771ffbe47159d7de20babddc25bc658f3c456ebb107e02b926d5988f92303dcd42d797127f163e948a37defe281490157ddb9355a0b9bad62f22b3b0b796eae667091a2024b31e800ab5e0af877e23f887aa2d868b6525c367f792b711443d59ba0fe75f657c22f815a1fc30b65ba7dba86b6eb892f1d788fd5631d87bf53fa50e490b730fe04fc068bc0f0c7e20f11a25c6bf2ae5223865b207b0ff006fd4f6e82bdaa8a2b26efb96905145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00283451400d2322a1917353d359734019d3439accbcb25954865c8adf78f3daa0920cf6a00f27f197c38b4d7ada54f297e618208e0d7ccfe34f831ac787e791ed226920ce40c1381f5afb966b307b5655f6876f788526855c1f51401f9df71a7ddd9b6d9ada4561ea2a022427fd5b57dbbe21f83fa36ac18fd99158f70b5e69ae7ecf91a3335b2f1f4a607cdbe5ca7f80d58b6d2351bd6c416b2bfb85e3f3af60b8f8397966e7f74481ed56ac3c1f77a7b005081f4a40799e9fe05ba660f7cc117fb89c93f8d74d0690b6b108e18f6201c015e831e81bd7250e7e950cba095ce17a7b53b01c37d85876a4fb19c74aebdf4639fbb511d1cff76901c99b43e94c36c476aea9f48207ddaab2e98c3f868039c3011da9862f6adc92c08ed55a4b4c76a43b19463a429ed57dadf1daa3684fa503b14cad348ab462a8cc74088692a42a69a56801b48453b1498a006d3718e94f22908a0072cd222940c769edda9b3913c5e5905547a1eff4a4a0d170316f74292672f1cca7d985664fa65dc19dd0b11eabcd7584668c51711c4608e0e69ea39aebe5b4b79ffd6c48dee4735467d02ddf989da33f98aab81823a57a47c09bafb2fc47d19b380f36cfcc57112e85751729b651ec79adcf86f72fa6f8db4791d4a347791641ed9614e207de51f23d2b96f1be9167ab5cdb437b6d1dc44f148b8719c1c6462ba889b2723bf359be22881365363eecbb4e7dc62ad6e2b9f2ff00c4dd16db40bab14803f9325aacc01e704920f3f8561da453de689f6838219f0149c12a3ad7a878e348d3f51d77c3916b3bfec0f2c96336c6dac06fe0e7f1a5f89ff0badbc2102c7a53ca6d597e5dc7381532f75d813bea782dfdf3cb398130912b7080e40adaf04cde5ebbf6863d108aa57fa65bda87d8a4484f735634902cc799d19855c22c4d9daea57892c99041a8edae1554f4ae7cde1273eb52a5f6d522b49455813d6e6b7c5e93cdf0b7849fa12928ff00c7abc91fe59587bd7a97c57908f07f83f1d4c3337fe3d5e53b89625bad7394f52ec28a30fe62bfaa81c8a8af60da448176ab76f4a7dbc6c0ab9c053d0e6ae5dc41e1047cdf2e453048c33c1a69e69ec84206ec6a32d48434d308a7920d35a98c6834edfde98d4502b1a565ae5d59100485a3eea6ba0b7d7ecee1577482363d8d7199a335719b42714cf49b6d5e48b063955d7d339ab6353b2b803ed76313fbede6bcc22bb9a0398e465fa1ad0b7f11dd443122ac83df8ad1555d49e56b63bd71a34a73f61403fd96c1fd6a6b48bc3e8e0cd69381fddc673f91ae1e3f1242e3f791383df06a75d7ac48cf992a9f4db49f2c86b9933d0e4b8f0722031e9b781c75c21fea69b1ebba0d9bef82d6f720701601fccd701ff0905aa8c8b86fa739a51e248738f3dea6318aea54a6e5d0eeeefc6725c3ed8b4999f8e1a739c7e02b36e64d5351224940cf60cc142fe15ca49e22832079eec3d466a097c470f60efee4d34a284db674e74db08899357d4fed3dc5b59f23f173fd2a9dedfc291158204b5b5519080f5fa9ee6b9b9fc48c57f71060fab1ce2a3b386eb5b9375d4ecb6e9cb37f414b9927a0598e9e6bed7ae05b69d6d3cddb6c6a493f5c55c4f87dac2ba25e3d9d816e7fd227008fa81d2b506bb3585b0b2d1a1367074774fbf27b9354b50b299d60bc6777594ed6cb679a8e757d4ae57d0a3a9f82f52d3d4bc725a5f20e4b5a4a1f1f875ac58666b69d24c6191b35d4dac0f0c9ba391948ac0d6553edcec00f9b934aeb74166b73a786ec4f1a4d19ce466b52c3c2f65e282c2daf20b6bc23fd54cfb431f626b81b2d4a5b3f954ee4fee9ad04d66263920a1ad9493dcced63b593e0df8a17060d365b8f788861fa53af7e0f789a3456934cb9b73e8d1b127f215cdda78c750b3ff8f5d56ea1c74d92915a51fc4ff12c630be23bf007acc69fba2771e9f0a7c49bcc6ba75d971c8fdcb61c7b1c53a3f85be292dc6937d9f4f21bfc29ebf16bc548303c497d8ffaeb4d3f157c50f9dde24bfe7d25354b904f9fa1a561f0e7c6b000a742be78867ef4246054973f0cfc4515ca4d1db5df96532c8b03103d7f1ac43f133c46df7bc43a81ff00b6e6abbf8ff5a7396d72f8ff00db634f9e22b48db4f87be278e78e34b5bf68dce72613c0ad8ff854badde21c594fb80c65f0b9fceb866f1aea8e72dac5e1ff00b6c6a17f165f3f2fa9dd11ff005d4ff8d3538a071933d36d7e116ab656886e15572701565527f1e6a1b9f83b3ddc52ca6e122953eea493280dfad7993789a63d6f6e09ff00ae86a26f10927e6b898fd58d1ed622e491df27c1bbc7391736b11e9f35d2707f3a993e0b5e16512df69083fbe6f53f515e6e75d42725dcfe34d3ada77673f8d4fb4895cb2ee7a4cff05bee347aae8cac3ef336a0833f8545ff000a9208ee7f7de23f0fa44ff7bfd301da7f0af393ada7a31a67f6d21ff9666a79a21cb23d522f859e19840371e39d0e3c765666fe95765f09780ed6d3c96f1ad8dc3370711b617dc578e7f6d28e919a46d6c36311629fb48f41f2b3d72d749f87563bc4fe26697231fb9b763fcea84963f0ce1909fed6d5251d8476c07f335e61fdaf9fe0e4d30ea8e7b014dd64254cf59b7d67e1bd8464476bad5c3fab1503f2a89fc5fe08590b2e85a8484f669828fd2bc9cea3313c114d37d3ff007aa7db762b90f5397c6de140c1a2f0bc8d83ff002d2e4d347c48d2603badfc2b66ac3a33c8c48af2a6bc98f5734c37326797349d760a99eaf27c58cc9e62f87f4b2feaea5a964f8cbaa32858f4dd1e3c0c0c5b838af26f3dbfbe7f3a4f309fe234bdbb0f668f553f1afc5088522bab2814f68ed907f4aa8ff193c5c06d8f5d6857d22555af3427df34da975643e4477b73f13bc4b739f3bc437ac0f61262b2e5f175f5c67ced56edfeb29ae5a8a5ed65dc7c88db935a2f92d34cff00563cd577d541e887f1359d9a2973b1d9175b5493b28150b5e4f21e5ce2a20334e55345c2c26d676c7249aea3c35a2812ef7e5ffcf1599a2da24b700c8db547538cd777a5d9dada3060d2cc9d7eef963f126934dec09aea67ebba2cd188a58a1310727685e781d4d61dd7fa3b01bc70393ef5d878afc6564b03dbc4f1cd3ba84d901ca44a3f841efee6bcf269e5bb72cff2af61531835d4a9495865e4e6e1b8fba3a557db563cacd3d6d998e00eb5a289172aec3c714e11fb735de784be0d78d7c62ca74bd0aebc86ff009789d7ca887fc09b19fc335ee9e09fd906c6d4c773e2cd55ae9fa9b4b31b53e85cf27f0028ba42d4f98b44f0e6a9e21bd4b2d2b4fb9bdb973858e08cb1fc71d07bd7d0df0dbf648b89cc57fe36b9104470dfd9f6cd973ecefd07d067eb5f46f86fc1fa0f842cc59e85a55b5844060f949f337fbcdd4fe26b66a5cbb156ee67681e1cd27c2da6c7a6e8d61058da47d238971cfa93d49f735a34515030a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a4c52d140084534a669f450040d167b544f6e0f6ab78a423da8033a4b407b5549b4f561ca8ada280d31a107b50072f75a2452673183f85635df85addf27ca5fcabbc7b707b540f680f6a7703cde6f0ac699c20159d71e1a5e7e4af4f96c14f6aa53698a7f86803cae6f0d819f93f4aa52f8780fe0fd2bd526d201fe1159f368fd46de2819e5f3687d7e5aceb8d188fe0af529f451fddaccb8d13afcb480f2bbad23afcb5973e9a54fddaf53bad041cfcb58d77a0f5f96958679bcb62476aab25a11dabbabad11973f2d64dc692cb9f9680b9c93db63b540d01ae926d388cfcb54e5b223f8680305a323ad46c95ad2dafb555920c5006795a691569a223b542c940884e2929e50d26cf6a006518a76da31400da314ec518a0066d34a1734ec52e280100ace590d97896da75382248e4cfd08ad302b2b5a5293dbca3dd734262b1f79e8d702ef4fb59c1e24851bf3151f89a267d1a475fbd1b2b8fc0d637c2fd446a7e06d16e4364b5b2a93ee38ae9efe0fb4d85c45dd908ad56e49e2df15b4c33e91792479f36dae12ea22072370ff115d269faf5afc4df871015643a8da2f97708df794818cfe3534b7d15a6b7a0ea17637da5cc66d2742320b0e9915e57f106c2ff00c09e29b9d57c38b3db6977bce3076293d54d5544a4c51d0e5b5fd1043a9cc654c430f2cdfd2b986bd58ee37f92ae99e10f4ad4d67c4fa86b8163b965603a246b8dc7dfd6b9e72c1c86041cf20d56c23763934abd5f9256b397fbadca9fc6af2f83b5dbad3dafecac64bcb519cc96e43e3ea0722b932d5b5a3f8b754d0a58a5d3277b49c1003c2c46ef661d0d26d8d1aff17d5ad745f075a48363a58b332b0e84b77af276277b73debd5fe3fdfc93eb9a424e43cb1e9e8d276f99b935e4a0e5b359965cb5575917729507919ad99c8488bb1c855cf15896ec77aabee23d0d6d4fb5612586d409d2931a329610f0e481cd50961da5800702b5a0cfd9d73f866abc8a249588e477a81ee65114d278ab734203e075355d908ed4d326c464d21a5614ce95402d18a334530139f5a3345145c05dd8a09e29b484f34ae02d2d369334ae03e9339a6e69734ee0491466591631d49c574f6d1a5bc48883f769dbfbc7d6b9cb360b32935de69afa5dfd9c2920962954619a31bb3ef8aab36b415d7536aeaeed6ff4a812dada0590a856544c1cfad696a7e0b8acf4dd2ade49879f701aea453ff2ce303a9fa9a874382cece5596089a7d9c97bb658a35fae6b37c5df122063751c1225d5d5c00934ea3e50a3a227a2d62e8beacd9545d8e62fa64b532c84e10642fbd72571319e5673dea4bed426be937c8df403a0aaa4d5a56336eec5ce2826928c5310668cfbd1460fa5170173467de93146295c0767de8cd20157b48d1ee759ba582dd38fe273d145080a39c77a42c7d6aceab6474fd427b5c92226db923ad54c0a402eea706a6eda705c5301777b51ba8c521145c0334668c6294014af700068a5db8a5009e314c06d15208ddba231fa0a9a3d2efa623cab2b9933fdc8c9a7a81568fc6ba4d23e1cf8b35c755b1d0af58138def19451f527158dade8f7be1fd4ee34cd42130dd5bb6c9109ce0d0ee172931c77a6124d2b536a407a0539dc4838e2946318a6838a78e7a5001453b69f4a0213d01a006628a90c440c9205444e3a5002e79a70351e4d2e6802506a68f9e955d4d48848ef4ee05e8a4788e51f6fd2a592f279942cd752328ec58e0551070281d39aae6158b6ad0a8f7a513c43b126aaa8e334838c9a5cc162e0bc4070b164fb9afb7be087c32f0ee97e04d0f54bad06c24d5aead92e25b89610ee0b8c8009ce3008e95f17f833c3f278a3c4fa669112966bdb948b8f42793f957e9058da4761656f6910c47046b120f40a303f9517d02c4caa100550001d0014b4515230a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a4c52d1400d2290a034fa280216881a89adc1ed56f1498a00ce7b407b55792c81ed5ae50534c40d00604ba703daa94da583daba86801ed50bda83da8038e9f48073f2d665c68a0e7e5aef64b30474aa92e9c0f6a00f37bad0bafcb58f77a075f96bd4a7d2c1cfcb59d71a4039f96803c92ef413cfcb58d77a291d16bd7aeb43073f2d635de8439f97f4a067925c694c3aad674fa7119e2bd46f341ebf2fe958779a11193b6803cf25b1c6722aa496bed5dadd68eca4fcb59571a691fc38a00e5dedc8ed51344456ecd6257b55392d48ea290ec6618e9852afb5b9a89a1c76a0454d946dab0d1d30c78a008b6fbd2639a936d26da006639aa5ad43becc3774606b436d4775179d6d2c63a953401f477ecd3acff0068780fec6cd97b19cc78f63c8af648b18af96ff65ad74db6b7a9e8ece07da61595149eacb9cd7d436ae24407a1ef5a324f3af17e96cfa56a56d190b3595cade427fd926b9bf14fc62be8b5fd3bc3fade816c340b86486ea5719320703e61e9d6bd27c4f0241a95bdc49ff1ef7486d66cf4e7a1af1af89fa1dc6a7e172b1b0fb66932986e171cb47d51bfa554b540ac99b5e22f01e83e1fd426856ce1fb05c80d148386407d0d79578c3e1c49a4937ba6de26a16ac72541fdea7d477af58f04eb117c42f8771d9dc9dfa8e9abe4be7ef6dec7f4af33f11457da7caf13cd2c890b60af4c67a734a32d01ad6c73fe1af879acf8b15a6b25892d95b634d33850a7d2a08fc277363e2f8747b865778ee11095e8d923a55bd3f5812dfdb5bdc4d2dac0f2059de36e4f3c363b915dde89e11bad3fe2843677771f6c5b7c5d7da0ff001c60654d36f5125a1e69f1d6f05cfc42d42353f2db24700f6daa2bcf14738eb5d078f7513aa78b356bc2d9f36e9c8fa6715808373000726a1145d8048cea9206e3b1ed5a572ca236570480318aa367133483cd639071826ad5e3050dbc1e4f1f5a1811c6311a827a76f4a880dcee57a74fad4e384cf7ef4c8064b30e14d4822ac91832051db9350cd1e38c75abce15e6207f08eb50ca32c171d6917633664c6702acbf87ee4a86578ce46704e0d3a78774b1a63ef381fad7427b629a259ca3e917b1ff00cb12dfee9cd42f6b711fde8241ff000135d852e69dc4715823a8228aeccc68ff007914fd4520b683fe78c7ff007c8a407194983e86bb516d0ffcf18ffef914e10443a469f9500711b1bd0d1e5b7f74fe55dc8893b22fe54bb57d050070e2094f48dcfe14e16b393c4327fdf26bb6da3d05281401c5ad9dc9e904bff7c1a9e3b7d4a320a473afbe08aec063bd04e78cf02a80e45ed7549f874b87ff00789a8c6917c4ff00c7bc95d96d1462803901a25f1ff9776fce9c341be3ff002c40ff00810aebb14b8c7bd203921e1ebe3d635ffbeaa45f0ddf1fe18c7d5abaaa72e31cd303961e17bd3fc508ff00811ff0a77fc22975de48bf026baa18a72902901cc2783ee1864cf10fc0d4a9e0c958e0dca0ff0080d7481bb53d5f07ad023062f02c7bc79b7676e79dab5d669d6f69a5db886d63daa3a9ee7eb5596502a41367d8534055d63c3361ad4e66959a198f564eff00515943e1ed9e4ffc4c25ff00be0574225f714ef3c119ee69e80602f802c88cfdae63ff000102acc7e00d24fde9ae4fb640ad95946061b8f7a992519c6ee94f416a65c3e02d040cb2dc3fd5eaec1e05f0f633f636623d6435704a03704e2a749f69fbdd7b5568229c1e06f0f2ce25fb1965feeb31c56c43e19f0fa607f64dae31dd6a15b9f941c8e3d2a54bbc9e5aa9589d4bb6fa1e8719e34ab4fa7960d68dada69311f934eb453ed12d64c7724f3902a75b8c1e0d3d0353a4b696d232025b409f4402b52db5248f00051f402b8d4bac1ce4d594bdc1eb4580ee60d5ff00dae9dabc63f683f0d2dc496fe26b55e587937400effc2dfd3f2aee62bf20f068d4a2b7d674db8d3aefe686e10a30f4f7a971b8267cb38a422b53c41a2cfa06af71a7ce39898856ecebd8d6762b03518518286ec680c54e452914d20d005a8aeb69cb2e6a46b81821475aa6b4a09f5a007c8c58726a3db4b8cd382e78a008f14e039a52b8340a007aae2a548f34c519ab312e0526037676a715c607ad3d464e695465be940c632ec031f4a42368c7e152e32c47a52dbdacd7d7d15adbc6d2cb2b2c71a28c96627000fc6803debf647f049d57c5977e259e3cdbe951ec8891c195c11c7d067f315f5f5717f087c091fc3cf02e9fa4155fb594f3ae9c7f14adc9fcba7e15da553105145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028c51450026290afb53a8a008cc60d46d0835631498a00a4f6c0f6aad2d983dab54a834c318340181369c0f6acfb8d2c1cfcb5d5bc19ed55e4b607b50070f75a3039f96b1eef43073f257a34d621bb5509f4d07b500796de683d7e4ac2bdd03afc95ebb73a4a9cfcb59175a229cfcb40cf1cbbd10ae70b59371a5119cad7af5e6801b3f25615e681d709401e5d369c413f2d5296cc83c8af42bbd088ce16b1eeb482b9f92819c63db60f4a89a122ba49f4e209f96a84d664678a05631cc54c68ab45edf6f6a81e2228b0d148c7405ab0c869bb29584c6fc37d6cf84be22e9f74cdb6313f96fe9b1b8feb5f6de9d22b21653953c83eb5f056bb1343711dc2f048ea3b115f627c1ef120f1378174cbc2fba558c452f3cee518ab5b12765ade9abab69735b1fbc4650fa30e86bcbbc4912c10aead3ab3c13466d3505519231fc58f51d6bd7636ae4fc4da5456d34b2ba8fb0de8d928c711bf66ab4fa08e2be1678734ad034ebb9ac2f12e6eb57723cde890c40f5fad73bf13754f0d5996d3140d8819e693fe5a6e1dcfd7b556b992fbe1ceb572115e5d3a6562aabc88988e1c0ee075c57936a9a6096f26bf935c8af5ae18b4a65277367d54d26adb0d3ee6e687a1e9babbc77c8e4439f30b11c228ea5bfc2bd0fc29a8cb268de27f1b5e485b6dabc36eec31f201818f4af2bd296e35892df40d17ce8ed1d82b9e85ebd2be34cf0f823e1858f86edc859af9c2b81fdd032687a20b9f35deca6799a463966258fe351c4bb9c0c81ee69256dce7d29f0282796c0a4334f4e8c17cb6095a92e9c3e10824b367e9469db56273c6699211e6aa1ce4739a4c648cc11491c85a65bf0b93df9e3b524b2ec46e33da95408d3804f19a910c8a40ef2374c71cf5a6393e70523803345bb6e52cca016347cc5db701c0e29157121532dfc23fba4b1ad7359da6a6eba964ecaa147e35a469a2589452d28140082940a5a2800a0519a280173466928a005cd2eea6d2d003b7669334945003b34bbb8a68a2801fba8dd4ce68a604a0f19a5cd442941a009430a7eee2a10ded4b9a009777bd28607ad439a507da80270d8a7abe6ab86a557a00b5e67a6714f1273eb55779f7a5f33de802e06ff00f554aadfad50596a4f3d828c67eb4c45f59081cf6a7f9a76ff005acdf35b8f98d3bcd6fef1a2e068aca07dd6c7ad5849718e86b2926f415225c8518a77035967dbd7ad4f14b91c9c5630b820e477fd29e2e997bd5290ac6d2dcf3df02a74b81df835cf8be606a5fed172c318c53e6158e8e3b9c0ebc54e97dcedcfe35ca9d4c83dc528d5c6396c63d6ab98561bf10fc389e20b11776c01beb75f9401cc8be95e38c0a92ac08238e6bdae3d614819618fe75c578d7c391cd236a7a785c1e658d7d7d4567357d5148e1e8c53b18a4acca100069768a0d00d003826694e0526ff00971e949400879a5514ec53d23c9a0761f1479eb53e31803ad0a022d28e7e634805ce06077a3ee8c773480ff111d3a50cc07271c50007e55e3af4afa27f657f848da95f8f1beb107fa1dab11a7a38ff005b28eb27d17b7bfd2b82f827f06ef7e26eaeb7778b25be816ce3cfb8e86523fe59a7b9ee7b57dbda6d9da6956305858c11dbdadba08e28906151474029a4265fcd2d461e9c0e6801d452669734005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400518a28a004c534a834fa280216881a85edf3daade2908f6a00cc96d01ed54a6d3c1cf15bc6306a27801ed401ca5c6980e7e5acabad1c367e5aee24b507b5539ac01ed401e7577a2673f2d61de685d7e5af519f4dce78accb9d255b3f2d007925ee83d7e5ac4bcd19973f2d7aedde880e70b58979a1f5f93f4a0773c92e74e2a7eee2b3a6b320f2b5e9b7da067276573f7ba23213f2d0070ef0107a542d163b574973a632e7e5359d358b2ff09a04739ac5af9d62fc7cc9f30af48fd98fc6834fd5ee7c317526d8eeff007b6f9e9bc751f8d71f25a1c10c383c1ae46def2ebc29e2386fad98acd6b289233ea3ff00d54e2c0fbfa26e29d3c115d42f0cca1d1c6083deb9af03f8b6d3c65e1db4d5ecdd584aa3cc507947ee0d749bb22ac83cff00c55e149120689ad5ef2cff0081939922ff00115e4fa8fc375bcbb2b6f6d3ce49fba2220fe26be9767a82474404e05033ccfc01f0d21f0ba0bdbc8a3178461235e918ff001af03fda0bc54be20f1c4d6f04a1edb4e4102e3a6ffe2afa37e2a78d62f05f84eef51dcbf6971e55ba13cb39ff000af896fee649e5792572f23b16763dc9ea693291519b26a585970411c9e86a02726ac443255428cfafad006b40447683e53963514721695891c8e00a964ca46a3072067150c0f85dc792d48612c9ca8238279a748db63215738e951962f2ed2385e82895d8955038279c526807a9f900e99a891888ce4f39a24ced201e7a54726e0a00ea78c54d80d3d263c5a97eeec4ff004ab7d4d2431f930a47fdd5029d8a620a00e297145300c5281450290062814b49d2800c518a33450018a2968a004a314b8a5c5003714b4b8a3140094b8a314b8a0000a5c5038e29698098f7a503d681c8a51c50002968c518a00334a29053a800a39a28dd45c07668cd01a978c52b80b9f7a50e7a1a6f4e868c51702556c1eb4be61ef515145c09c4c47434198b726a1c1a075e695c2c4de67346f3eb4c2463814023ae0d170b0e924241154e42c49c55ac6ea8de3a2e162b79aebd09a0dd4a8080c453d93350c91e68b858c3d4f4b5959a5800563c95ec6b0e48de362aca548f5aebe484fa5569ac96518740df5a00e58834d3c56ecba346725772d529749914fcac0fd453028034f502a4365327f0e7e942c2cbd54fe54860a326a75c20c9a88654f0a7f2a70576fe063f4140121627af6a0b67af4a9a0d36f6e9808eddf9eedc0ae9b44f87af7f2a9bfbe48233d5631b9bfc28039352d2304405b770028c926bd87e177c06bbf11cd0ea5e270f63a68c30b6e92cc3dffba3f5aea7c17e12f0c7871925b4b5596e87fcb798ee6fc3d3f0af4ab2d546000c3156a04b6775a24163a369f069fa74115b5ac0a1238a3185515af1dd67bd71569aa7039ad58351071cd36847509719ef53aca3d6b060bc079cd5e8ae73dea6c33503d3c1cd528e6cf7ab0af4864d4b9a606cd3a80168a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a003148452d1400c2a0d46d10353d2628029496c0f6aab2d903dab58a834c68c1a00e767d381ed59b73a5039f96bae78011d2ab4b680e78a6070777a286cfcb5897ba0839f947e55e9535803dab36e74ddc0fca2803c9afbc3e39f92b02f34265ce1715ec577a3abe7e5ac4bcd0739c2d00790dce9457395ae2fc6da0b35badec69cc5c3e3d3d6bda757d28c009319c5725a8adb488f0cca0a382a41ee290ce4fe0d7c5693e1fea6d0ddef9b4ab9389a30798cff7c57d75a36b761aed8457fa6dd47756d22e55e339fcfd2be0af10e92fa26a4f1a12d131dd1b7a8abbe19f1debbe1597cdd2354b8b327aa2b1d8df55e956992d1f7a3c9c561f89fc4fa5f8574d9351d5eed2dadd067e63cb9f403b9af969bf68af1db43e59d4adf38c6ff246eae1bc47e32d63c4f722e357d4ae2f641f7448df2a7d07414c1237be28fc46baf1febad7926f8ac21ca5b5b93c2aff0078fb9af3c99f7371d2a59ee0c98f6aac4e6a463a352cdc62aedaa992504f6aab1a8c7bd685b858e224677351701f73336de0f24e0519da00381c542c4493020821463db344993f2f72695d0124449f98f5cfe748096959b230290b0451923a6314c01634ea78e68b8c56f9dc73d3ad3ed104f7a8bd427ce6a02c0297f5ad0d1a1db0999bef4878fa50c468934a0d20534a168b00b9a297149b4e6900b45001a7043e9400de68a7ec3e946c39e94ec0329714fd87d281113da8b00ca5c53cc38a5111c74a40474b8cd3fca34e588d00460518a97caa510fb1a2e321c5153f90dd81a416ede8695c0870452d5816e4f4cd02d8fbd170201473563eca7d29df66f6345c2c56e68ab5f663e947d9bda8b8157068fc2ad0b534e1666802a7269429ab82cdbd29e2c8fa50051db4e0b578591c74a78b13e94019e13d8d2ec3e95a42c09ed4f1a79f434058cb119f4a708b9e6b5469ed8e8681a7b7a503b199b28f2fdab5869ede94e1a713da80b191e59c502335b234d3e94efecc6f4a02c62f97ed47966b6ffb2cff00768fecb6fee9a02c603424f6a69b73fddae87fb2cff7681a51feed01639dfb213da8fb17fb35d28d24ff00769c3492074a02c72e74f07f86a293490ddabaefec93fdda51a573f7680b1c3b68449e9fa527fc23ee7f86bbc1a51feed4b1e8f93f76811e7bff0008f3f65a7a6832aff0d7a426899fe1a78d0ce7fd5fe9408e02df4a9d08e0d6f69914d091906ba55d0bfd8fd2a68f46618f968b01158dc489839ae874fd4a45c658d6743a530fe1abf6f60c08e2a901d358ea4e4039addb4d409c735ca5a5bba63ad6d5aa3002aee23a9b5bd638e6b5edee89ef5cb5a96e3ad6bdabb0c5203a482e33deaf45266b12d9cd69c0d48668a354a39aad19ab0bcd480e14b48296800a28a2800a28a2800a28a2800a28a2800a3145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140052114b4500348a69406a4a3140159e107b55792d81ed5a04534a034018935886cf15427d381ed5d33420f6a81edc1ed401c4df6871cea55e3eb5e7de2bf874f708f2da6437a57b6cb660f6aa7369cadfc34c0f8dfc5be19be851a0bb85b0a72af8e86bcd6e6092da468dc10476afbc75cf06d96af0b24d0a92475c5781fc4af8273c0b25cd946580e46d1d2803c08b9f7a697357351d36eb4c9da1b9899181c723ad5234ee034b134e45cd016a68d3a5170258632c40eb53cadb170bdba0a634cb12e0000fad4065dedb88e074a86c64ca151718e4f34d5396de4723a544d36ee3f3a699481c5160272fb9fb60535e4dc70381dea132ed181535ad9dd5eb6d850907ab91c0a690043135f4eb02fddeac7d05747143b40551800600a974bd0c5ac5b546e63cb37a9ad9834866fe134c4642427d2a416c4f6ae8a1d0a438f96ae45e1e73fc068b81ca0b563da9c2c89ec6bb14f0eb9ff967fa54a9e1b73fc068038c5b16f4a9058b7a576c9e197fee1fcaa78fc2edff003cc9a00e1469cc474a78d3dbfba6bbd5f0bbf4f2cd3c786587fcb33f950070234e727a548ba631ea2bbc5f0d37f70fe552a7869bfb94b519c1ae94c78c1a5fec96feed7a0a786cf74a98786cb7f07e94ac079c8d218f634a7466ebb6bd187864ff0073f4a917c3581feae8b05cf351a538fe1cd28d25cff0d7a57fc235ff004cff004a70f0cffb068b08f351a3c9fdca9174793bad7a52f864ff00729ebe183fdca2c33cd868ae7f869eba2363eed7a5af864ff729ebe183d93f4a2c173cc8686ffddfd294686ffddaf515f0c123ee7e94f5f0b9fee7e9458773cb8684de8694682dfddfd2bd4c785ffd83f9538785f1fc07f2a2c173cac684d9fbbfa54834163cedfd2bd447860e7ee7e9522f85f3fc14582e7972f87dff00ba7f2a917c3cff00ddaf534f0b8fee7e953a785c7f73f4a2c173ca97c3cdfdda957c3adfddaf555f0b81fc1522f8647f729d8573cad7c3ac7f869e3c3adfdd35eaabe1a1fdca70f0e2ff00768b05cf2b1e1e6fee7e94f1e1d61fc15ea63c38b8fbb4a3c3abfdda2c173cb47879bfb94f1e1e3fdcaf511e1e5fee538787d47f07e9405cf2f5f0f30fe0a917c3cdfddaf501a028fe0a7ae80bfdca6173cbc7870ff769e3c387fb9fa57a78d017fb94f1a0aff7280b9e5dff0008d9fee7e94bff0008d9fee1af53fec15fee51fd82bfdca2c173cb07870ff70d1ff08f11fc15ea7fd80bfdca43a02ff77f4a2c2b9e5bff0008f1fee503c3c7fb95ea27411fddfd281a02ff00728b01e64be1e27f82adc3e1d3fddaf455d0547f054c9a2a8fe1a00e023f0f607dda997c3c31f72bbf5d1c7f76a41a40feed0079f8f0ff00fb14f1e1ff00f66bbf1a48feed386923fbb401c1a6818fe0a9e3d0b1fc35dc8d247f76a45d280fe1a00e322d188fe1abb0e944638aea974b1fdda9534e03f868b81cec3a711daafc168476ad85b103b54c966076a77028c101157e18c8a952df1daa748b14ae0118c54eb4d54c548062900a2969052d00145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450026290a834ea2802268ea27801ed56b148450067bda83daa9dd69715cc652440ca7b115b4501a6347401e35e38f81fa578891de2896390e7902bc0fc5ff000135ad119e4b5469631ce00afb75a107b553bad361b942b246ac0fa8a00fce4bcd26f74c9192ead25523daaab492f4589c7e15f73f8afe1368fada337d9915cf70a2bc975bf8102da4630c7f2f6e28b01f38082e2439f26439ed8a9a3d2f5198fc96929fa8af687f85b3dab60c47f2ab56fe07922c663c7e14c0f1b87c27ac4dd2dd501eecc2b46dbe1fdf49feba7541e88b9af69b6f09b8c0d9fa569dbf84f38f93f4a00f19b3f0045110591a53eafd3f2ae8acbc28c00511e00ec057abdbf83fa663fd2b5ed3c1e323f778a00f2fb1f0931c650fe55d059783d8e3f77fa57a659f85513194fd2b6ed7c3c8b8f907e5401e676de0ce994fd2b461f0771feaff004af4d874441fc02ada69083f8451703cc63f070fee7e95613c1e07f07e95e98ba5a0fe114f1a720fe11480f375f08a8fe0fd2a54f09a8fe0fd2bd17fb393fbb4bf604feed0079d9f0ba0fe0fd29a7c36a3f83f4af433a7aff74546d60bfdda00f3eff847507f0538680bfdcfd2bb96b05feed37ec23fbb401c50d047f73f4a917401fdcfd2bb1fb08feed38588f414c0e3ff00b017fbbfa52ff602ff0076bb0fb10f4a6fd847a5203911a0aff7453bfb0d7fba2bacfb08f4a5164be9401cb2e889fdd1f953c68a9fdd1f957522c97d29c2cc7a500730ba327f77f4a7ae8cbfddae9c5a0f4a78b51e9401cdae8cbfdca9068c9fdcae8c5a81d85385b8f41401ce0d197fbb4bfd8cbfdd15d1f9028f217d28039dfec75fee8a70d217fba2ba1f217d28f257d280308694bfdda78d297fbb5b8211e94be50f4a00c41a62ff007694698bfddadaf287a51e50f4a00c71a6afa51fd9cbe82b63ca1e94a22f6a00c7fece5fee8a3fb387f76b63caf6a3ca1e94018ffd9ebe94a34f5feed6bf923d28f287a50064fd807a528b11e95abe57b52f95ed401962c87a538590f4ad3f2bda8f2bd8500670b31e94a2cc7a568f9747974019df631e947d894f615a3e5d1e58a00cdfb12fa51f625f4ad2f2c51e5d00670b25f4a70b31e95a1e58a3cb1401445a0f4a516a3d2af6c146c1e94014beca3d29c2d87a55cd83d28dbed401545b8f4a70b703b559c518a00ae201e94ef247a54d8a5c50042221e94be58a9714628023094a140a7e28c5002014b4b8a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800c5252d1400d2a0d34a53f14500577873daa8dce9e92839515ad4c68f3401c85e78762933fbb1f9565cbe178f3f707e55df3db83d4542d68a7b53b81c2a786d14f0a2adc5a0271f2d759f625feed48b6aa3b628b81cf43a320fe1157e1d2957b0ad74b751daa558d476a4067c762a3b5584b503b55ac0a280235840a70414fa00a006ed029714ec51400dc518a751400c2b4d6406a43484500406314df2c558228db4015fcb14bb054db47a52eda00afe5d1e5d58c0a4c0f4a00afe57d297cba9f68a5db401008e94478a9b14b8a0084474e0952628c50033651b053c0a5a0066c146da7d1400ddbed46da7518a006e29714b8a3140098a36d2e28c5002628c52e28c5002628c53b145003714629d45003714629d45003714629d45002628c52d140098a314b45002628c52d1400628c51450018a314514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400869300d3a8c5003368a5da2971462801302968c518a0028a314b4005145140051451400514514005262968a004c514b45002518a5a280131462968a004c518a5a2800c518a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00ffd9);
INSERT INTO `productlines` (`productLine`, `textDescription`, `htmlDescription`, `image`) VALUES
('Motorcycles', 'Our motorcycles are state of the art replicas of classic as well as contemporary motorcycle legends such as Harley Davidson, Ducati and Vespa. Models contain stunning details such as official logos, rotating wheels, working kickstand, front suspension, gear-shift lever, footbrake lever, and drive chain. Materials used include diecast and plastic. The models range in size from 1:10 to 1:50 scale and include numerous limited edition and several out-of-production vehicles. All models come fully assembled and ready for display in the home or office. Most include a certificate of authenticity.', NULL, NULL),
('Planes', 'Unique, diecast airplane and helicopter replicas suitable for collections, as well as home, office or classroom decorations. Models contain stunning details such as official logos and insignias, rotating jet engines and propellers, retractable wheels, and so on. Most come fully assembled and with a certificate of authenticity from their manufacturers.', NULL, NULL),
('Ships', 'The perfect holiday or anniversary gift for executives, clients, friends, and family. These handcrafted model ships are unique, stunning works of art that will be treasured for generations! They come fully assembled and ready for display in the home or office. We guarantee the highest quality, and best value.', NULL, NULL),
('Trains', 'Model trains are a rewarding hobby for enthusiasts of all ages. Whether you\'re looking for collectible wooden trains, electric streetcars or locomotives, you\'ll find a number of great choices for any budget within this category. The interactive aspect of trains makes toy trains perfect for young children. The wooden train sets are ideal for children under the age of 5.', NULL, NULL),
('Trucks and Buses', 'The Truck and Bus models are realistic replicas of buses and specialized trucks produced from the early 1920s to present. The models range in size from 1:12 to 1:50 scale and include numerous limited edition and several out-of-production vehicles. Materials used include tin, diecast and plastic. All models include a certificate of authenticity from their manufacturers and are a perfect ornament for the home and office.', NULL, NULL),
('Vintage Cars', 'Our Vintage Car models realistically portray automobiles produced from the early 1900s through the 1940s. Materials used include Bakelite, diecast, plastic and wood. Most of the replicas are in the 1:18 and 1:24 scale sizes, which provide the optimum in detail and accuracy. Prices range from $30.00 up to $180.00 for some special limited edition replicas. All models include a certificate of authenticity from their manufacturers and come fully assembled and ready for display in the home or office.', NULL, NULL);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `productCode` varchar(15) NOT NULL,
  `productName` varchar(70) NOT NULL,
  `productLine` varchar(50) NOT NULL,
  `productScale` varchar(10) NOT NULL,
  `productVendor` varchar(50) NOT NULL,
  `productDescription` text NOT NULL,
  `quantityInStock` smallint(6) NOT NULL,
  `buyPrice` decimal(10,2) NOT NULL,
  `MSRP` decimal(10,2) NOT NULL,
  PRIMARY KEY (`productCode`),
  KEY `productLine` (`productLine`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productLine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`productCode`,`productName`,`productLine`,`productScale`,`productVendor`,`productDescription`,`quantityInStock`,`buyPrice`,`MSRP`) values 

('S10_1678','1969 Harley Davidson Ultimate Chopper','Motorcycles','1:10','Min Lin Diecast','This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive chain, wheels and steering. All parts are particularly delicate due to their precise scale and require special care and attention.',7933,'48.81','95.70'),

('S10_1949','1952 Alpine Renault 1300','Classic Cars','1:10','Classic Metal Creations','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',7305,'98.58','214.30'),

('S10_2016','1996 Moto Guzzi 1100i','Motorcycles','1:10','Highway 66 Mini Classics','Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.',6625,'68.99','118.94'),

('S10_4698','2003 Harley-Davidson Eagle Drag Bike','Motorcycles','1:10','Red Start Diecast','Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy diecast metal with resin parts, authentic multi-color tampo-printed graphics, separate engine drive belts, free-turning front fork, rotating tires and rear racing slick, certificate of authenticity, detailed engine, display stand\r\n, precision diecast replica, baked enamel finish, 1:10 scale model, removable fender, seat and tank cover piece for displaying the superior detail of the v-twin engine',5582,'91.02','193.66'),

('S10_4757','1972 Alfa Romeo GTA','Classic Cars','1:10','Motor City Art Classics','Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',3252,'85.68','136.00'),

('S10_4962','1962 LanciaA Delta 16V','Classic Cars','1:10','Second Gear Diecast','Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',6791,'103.42','147.74'),

('S12_1099','1968 Ford Mustang','Classic Cars','1:12','Autoart Studio Design','Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color dark green.',68,'95.34','194.57'),

('S12_1108','2001 Ferrari Enzo','Classic Cars','1:12','Second Gear Diecast','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',3619,'95.59','207.80'),

('S12_1666','1958 Setra Bus','Trucks and Buses','1:12','Welly Diecast Productions','Model features 30 windows, skylights & glare resistant glass, working steering system, original logos',1579,'77.90','136.67'),

('S12_2823','2002 Suzuki XREO','Motorcycles','1:12','Unimax Art Galleries','Official logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.',9997,'66.27','150.62'),

('S12_3148','1969 Corvair Monza','Classic Cars','1:18','Welly Diecast Productions','1:18 scale die-cast about 10\" long doors open, hood opens, trunk opens and wheels roll',6906,'89.14','151.08'),

('S12_3380','1968 Dodge Charger','Classic Cars','1:12','Welly Diecast Productions','1:12 scale model of a 1968 Dodge Charger. Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color black',9123,'75.16','117.44'),

('S12_3891','1969 Ford Falcon','Classic Cars','1:12','Second Gear Diecast','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',1049,'83.05','173.02'),

('S12_3990','1970 Plymouth Hemi Cuda','Classic Cars','1:12','Studio M Art Models','Very detailed 1970 Plymouth Cuda model in 1:12 scale. The Cuda is generally accepted as one of the fastest original muscle cars from the 1970s. This model is a reproduction of one of the orginal 652 cars built in 1970. Red color.',5663,'31.92','79.80'),

('S12_4473','1957 Chevy Pickup','Trucks and Buses','1:12','Exoto Designs','1:12 scale die-cast about 20\" long Hood opens, Rubber wheels',6125,'55.70','118.50'),

('S12_4675','1969 Dodge Charger','Classic Cars','1:12','Welly Diecast Productions','Detailed model of the 1969 Dodge Charger. This model includes finely detailed interior and exterior features. Painted in red and white.',7323,'58.73','115.16'),

('S18_1097','1940 Ford Pickup Truck','Trucks and Buses','1:18','Studio M Art Models','This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood,  removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box',2613,'58.33','116.67'),

('S18_1129','1993 Mazda RX-7','Classic Cars','1:18','Highway 66 Mini Classics','This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color red.',3975,'83.51','141.54'),

('S18_1342','1937 Lincoln Berline','Vintage Cars','1:18','Motor City Art Classics','Features opening engine cover, doors, trunk, and fuel filler cap. Color black',8693,'60.62','102.74'),

('S18_1367','1936 Mercedes-Benz 500K Special Roadster','Vintage Cars','1:18','Studio M Art Models','This 1:18 scale replica is constructed of heavy die-cast metal and has all the features of the original: working doors and rumble seat, independent spring suspension, detailed interior, working steering system, and a bifold hood that reveals an engine so accurate that it even includes the wiring. All this is topped off with a baked enamel finish. Color white.',8635,'24.26','53.91'),

('S18_1589','1965 Aston Martin DB5','Classic Cars','1:18','Classic Metal Creations','Die-cast model of the silver 1965 Aston Martin DB5 in silver. This model includes full wire wheels and doors that open with fully detailed passenger compartment. In 1:18 scale, this model measures approximately 10 inches/20 cm long.',9042,'65.96','124.44'),

('S18_1662','1980s Black Hawk Helicopter','Planes','1:18','Red Start Diecast','1:18 scale replica of actual Army\'s UH-60L BLACK HAWK Helicopter. 100% hand-assembled. Features rotating rotor blades, propeller blades and rubber wheels.',5330,'77.27','157.69'),

('S18_1749','1917 Grand Touring Sedan','Vintage Cars','1:18','Welly Diecast Productions','This 1:18 scale replica of the 1917 Grand Touring car has all the features you would expect from museum quality reproductions: all four doors and bi-fold hood opening, detailed engine and instrument panel, chrome-look trim, and tufted upholstery, all topped off with a factory baked-enamel finish.',2724,'86.70','170.00'),

('S18_1889','1948 Porsche 356-A Roadster','Classic Cars','1:18','Gearbox Collectibles','This precision die-cast replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',8826,'53.90','77.00'),

('S18_1984','1995 Honda Civic','Classic Cars','1:18','Min Lin Diecast','This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color yellow.',9772,'93.89','142.25'),

('S18_2238','1998 Chrysler Plymouth Prowler','Classic Cars','1:18','Gearbox Collectibles','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',4724,'101.51','163.73'),

('S18_2248','1911 Ford Town Car','Vintage Cars','1:18','Motor City Art Classics','Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system.',540,'33.30','60.54'),

('S18_2319','1964 Mercedes Tour Bus','Trucks and Buses','1:18','Unimax Art Galleries','Exact replica. 100+ parts. working steering system, original logos',8258,'74.86','122.73'),

('S18_2325','1932 Model A Ford J-Coupe','Vintage Cars','1:18','Autoart Studio Design','This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine',9354,'58.48','127.13'),

('S18_2432','1926 Ford Fire Engine','Trucks and Buses','1:18','Carousel DieCast Legends','Gleaming red handsome appearance. Everything is here the fire hoses, ladder, axes, bells, lanterns, ready to fight any inferno.',2018,'24.92','60.77'),

('S18_2581','P-51-D Mustang','Planes','1:72','Gearbox Collectibles','Has retractable wheels and comes with a stand',992,'49.00','84.48'),

('S18_2625','1936 Harley Davidson El Knucklehead','Motorcycles','1:18','Welly Diecast Productions','Intricately detailed with chrome accents and trim, official die-struck logos and baked enamel finish.',4357,'24.23','60.57'),

('S18_2795','1928 Mercedes-Benz SSK','Vintage Cars','1:18','Gearbox Collectibles','This 1:18 replica features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine. Color black.',548,'72.56','168.75'),

('S18_2870','1999 Indy 500 Monte Carlo SS','Classic Cars','1:18','Red Start Diecast','Features include opening and closing doors. Color: Red',8164,'56.76','132.00'),

('S18_2949','1913 Ford Model T Speedster','Vintage Cars','1:18','Carousel DieCast Legends','This 250 part reproduction includes moving handbrakes, clutch, throttle and foot pedals, squeezable horn, detailed wired engine, removable water, gas, and oil cans, pivoting monocle windshield, all topped with a baked enamel red finish. Each replica comes with an Owners Title and Certificate of Authenticity. Color red.',4189,'60.78','101.31'),

('S18_2957','1934 Ford V8 Coupe','Vintage Cars','1:18','Min Lin Diecast','Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System',5649,'34.35','62.46'),

('S18_3029','1999 Yamaha Speed Boat','Ships','1:18','Min Lin Diecast','Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.',4259,'51.61','86.02'),

('S18_3136','18th Century Vintage Horse Carriage','Vintage Cars','1:18','Red Start Diecast','Hand crafted diecast-like metal horse carriage is re-created in about 1:18 scale of antique horse carriage. This antique style metal Stagecoach is all hand-assembled with many different parts.\r\n\r\nThis collectible metal horse carriage is painted in classic Red, and features turning steering wheel and is entirely hand-finished.',5992,'60.74','104.72'),

('S18_3140','1903 Ford Model A','Vintage Cars','1:18','Unimax Art Galleries','Features opening trunk,  working steering system',3913,'68.30','136.59'),

('S18_3232','1992 Ferrari 360 Spider red','Classic Cars','1:18','Unimax Art Galleries','his replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',8347,'77.90','169.34'),

('S18_3233','1985 Toyota Supra','Classic Cars','1:18','Highway 66 Mini Classics','This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood, removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box',7733,'57.01','107.57'),

('S18_3259','Collectable Wooden Train','Trains','1:18','Carousel DieCast Legends','Hand crafted wooden toy train set is in about 1:18 scale, 25 inches in total length including 2 additional carts, of actual vintage train. This antique style wooden toy train model set is all hand-assembled with 100% wood.',6450,'67.56','100.84'),

('S18_3278','1969 Dodge Super Bee','Classic Cars','1:18','Min Lin Diecast','This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',1917,'49.05','80.41'),

('S18_3320','1917 Maxwell Touring Car','Vintage Cars','1:18','Exoto Designs','Features Gold Trim, Full Size Spare Tire, Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System',7913,'57.54','99.21'),

('S18_3482','1976 Ford Gran Torino','Classic Cars','1:18','Gearbox Collectibles','Highly detailed 1976 Ford Gran Torino \"Starsky and Hutch\" diecast model. Very well constructed and painted in red and white patterns.',9127,'73.49','146.99'),

('S18_3685','1948 Porsche Type 356 Roadster','Classic Cars','1:18','Gearbox Collectibles','This model features working front and rear suspension on accurately replicated and actuating shock absorbers as well as opening engine cover, rear stabilizer flap,  and 4 opening doors.',8990,'62.16','141.28'),

('S18_3782','1957 Vespa GS150','Motorcycles','1:18','Studio M Art Models','Features rotating wheels , working kick stand. Comes with stand.',7689,'32.95','62.17'),

('S18_3856','1941 Chevrolet Special Deluxe Cabriolet','Vintage Cars','1:18','Exoto Designs','Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system, leather upholstery. Color black.',2378,'64.58','105.87'),

('S18_4027','1970 Triumph Spitfire','Classic Cars','1:18','Min Lin Diecast','Features include opening and closing doors. Color: White.',5545,'91.92','143.62'),

('S18_4409','1932 Alfa Romeo 8C2300 Spider Sport','Vintage Cars','1:18','Exoto Designs','This 1:18 scale precision die cast replica features the 6 front headlights of the original, plus a detailed version of the 142 horsepower straight 8 engine, dual spares and their famous comprehensive dashboard. Color black.',6553,'43.26','92.03'),

('S18_4522','1904 Buick Runabout','Vintage Cars','1:18','Exoto Designs','Features opening trunk,  working steering system',8290,'52.66','87.77'),

('S18_4600','1940s Ford truck','Trucks and Buses','1:18','Motor City Art Classics','This 1940s Ford Pick-Up truck is re-created in 1:18 scale of original 1940s Ford truck. This antique style metal 1940s Ford Flatbed truck is all hand-assembled. This collectible 1940\'s Pick-Up truck is painted in classic dark green color, and features rotating wheels.',3128,'84.76','121.08'),

('S18_4668','1939 Cadillac Limousine','Vintage Cars','1:18','Studio M Art Models','Features completely detailed interior including Velvet flocked drapes,deluxe wood grain floor, and a wood grain casket with seperate chrome handles',6645,'23.14','50.31'),

('S18_4721','1957 Corvette Convertible','Classic Cars','1:18','Classic Metal Creations','1957 die cast Corvette Convertible in Roman Red with white sides and whitewall tires. 1:18 scale quality die-cast with detailed engine and underbvody. Now you can own The Classic Corvette.',1249,'69.93','148.80'),

('S18_4933','1957 Ford Thunderbird','Classic Cars','1:18','Studio M Art Models','This 1:18 scale precision die-cast replica, with its optional porthole hardtop and factory baked-enamel Thunderbird Bronze finish, is a 100% accurate rendition of this American classic.',3209,'34.21','71.27'),

('S24_1046','1970 Chevy Chevelle SS 454','Classic Cars','1:24','Unimax Art Galleries','This model features rotating wheels, working streering system and opening doors. All parts are particularly delicate due to their precise scale and require special care and attention. It should not be picked up by the doors, roof, hood or trunk.',1005,'49.24','73.49'),

('S24_1444','1970 Dodge Coronet','Classic Cars','1:24','Highway 66 Mini Classics','1:24 scale die-cast about 18\" long doors open, hood opens and rubber wheels',4074,'32.37','57.80'),

('S24_1578','1997 BMW R 1100 S','Motorcycles','1:24','Autoart Studio Design','Detailed scale replica with working suspension and constructed from over 70 parts',7003,'60.86','112.70'),

('S24_1628','1966 Shelby Cobra 427 S/C','Classic Cars','1:24','Carousel DieCast Legends','This diecast model of the 1966 Shelby Cobra 427 S/C includes many authentic details and operating parts. The 1:24 scale model of this iconic lighweight sports car from the 1960s comes in silver and it\'s own display case.',8197,'29.18','50.31'),

('S24_1785','1928 British Royal Navy Airplane','Planes','1:24','Classic Metal Creations','Official logos and insignias',3627,'66.74','109.42'),

('S24_1937','1939 Chevrolet Deluxe Coupe','Vintage Cars','1:24','Motor City Art Classics','This 1:24 scale die-cast replica of the 1939 Chevrolet Deluxe Coupe has the same classy look as the original. Features opening trunk, hood and doors and a showroom quality baked enamel finish.',7332,'22.57','33.19'),

('S24_2000','1960 BSA Gold Star DBD34','Motorcycles','1:24','Highway 66 Mini Classics','Detailed scale replica with working suspension and constructed from over 70 parts',15,'37.32','76.17'),

('S24_2011','18th century schooner','Ships','1:24','Carousel DieCast Legends','All wood with canvas sails. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with 4 masts, all square-rigged.',1898,'82.34','122.89'),

('S24_2022','1938 Cadillac V-16 Presidential Limousine','Vintage Cars','1:24','Classic Metal Creations','This 1:24 scale precision die cast replica of the 1938 Cadillac V-16 Presidential Limousine has all the details of the original, from the flags on the front to an opening back seat compartment complete with telephone and rifle. Features factory baked-enamel black finish, hood goddess ornament, working jump seats.',2847,'20.61','44.80'),

('S24_2300','1962 Volkswagen Microbus','Trucks and Buses','1:24','Autoart Studio Design','This 1:18 scale die cast replica of the 1962 Microbus is loaded with features: A working steering system, opening front doors and tailgate, and famous two-tone factory baked enamel finish, are all topped of by the sliding, real fabric, sunroof.',2327,'61.34','127.79'),

('S24_2360','1982 Ducati 900 Monster','Motorcycles','1:24','Highway 66 Mini Classics','Features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand',6840,'47.10','69.26'),

('S24_2766','1949 Jaguar XK 120','Classic Cars','1:24','Classic Metal Creations','Precision-engineered from original Jaguar specification in perfect scale ratio. Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',2350,'47.25','90.87'),

('S24_2840','1958 Chevy Corvette Limited Edition','Classic Cars','1:24','Carousel DieCast Legends','The operating parts of this 1958 Chevy Corvette Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, working streering, opening doors and trunk. Color dark green.',2542,'15.91','35.36'),

('S24_2841','1900s Vintage Bi-Plane','Planes','1:24','Autoart Studio Design','Hand crafted diecast-like metal bi-plane is re-created in about 1:24 scale of antique pioneer airplane. All hand-assembled with many different parts. Hand-painted in classic yellow and features correct markings of original airplane.',5942,'34.25','68.51'),

('S24_2887','1952 Citroen-15CV','Classic Cars','1:24','Exoto Designs','Precision crafted hand-assembled 1:18 scale reproduction of the 1952 15CV, with its independent spring suspension, working steering system, opening doors and hood, detailed engine and instrument panel, all topped of with a factory fresh baked enamel finish.',1452,'72.82','117.44'),

('S24_2972','1982 Lamborghini Diablo','Classic Cars','1:24','Second Gear Diecast','This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',7723,'16.24','37.76'),

('S24_3151','1912 Ford Model T Delivery Wagon','Vintage Cars','1:24','Min Lin Diecast','This model features chrome trim and grille, opening hood, opening doors, opening trunk, detailed engine, working steering system. Color white.',9173,'46.91','88.51'),

('S24_3191','1969 Chevrolet Camaro Z28','Classic Cars','1:24','Exoto Designs','1969 Z/28 Chevy Camaro 1:24 scale replica. The operating parts of this limited edition 1:24 scale diecast model car 1969 Chevy Camaro Z28- hood, trunk, wheels, streering, suspension and doors- are particularly delicate due to their precise scale and require special care and attention.',4695,'50.51','85.61'),

('S24_3371','1971 Alpine Renault 1600s','Classic Cars','1:24','Welly Diecast Productions','This 1971 Alpine Renault 1600s replica Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',7995,'38.58','61.23'),

('S24_3420','1937 Horch 930V Limousine','Vintage Cars','1:24','Autoart Studio Design','Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system',2902,'26.30','65.75'),

('S24_3432','2002 Chevy Corvette','Classic Cars','1:24','Gearbox Collectibles','The operating parts of this limited edition Diecast 2002 Chevy Corvette 50th Anniversary Pace car Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, poseable streering, opening doors and trunk.',9446,'62.11','107.08'),

('S24_3816','1940 Ford Delivery Sedan','Vintage Cars','1:24','Carousel DieCast Legends','Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System. Color black.',6621,'48.64','83.86'),

('S24_3856','1956 Porsche 356A Coupe','Classic Cars','1:18','Classic Metal Creations','Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',6600,'98.30','140.43'),

('S24_3949','Corsair F4U ( Bird Cage)','Planes','1:24','Second Gear Diecast','Has retractable wheels and comes with a stand. Official logos and insignias.',6812,'29.34','68.24'),

('S24_3969','1936 Mercedes Benz 500k Roadster','Vintage Cars','1:24','Red Start Diecast','This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system and rubber wheels. Color black.',2081,'21.75','41.03'),

('S24_4048','1992 Porsche Cayenne Turbo Silver','Classic Cars','1:24','Exoto Designs','This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',6582,'69.78','118.28'),

('S24_4258','1936 Chrysler Airflow','Vintage Cars','1:24','Second Gear Diecast','Features opening trunk,  working steering system. Color dark green.',4710,'57.46','97.39'),

('S24_4278','1900s Vintage Tri-Plane','Planes','1:24','Unimax Art Galleries','Hand crafted diecast-like metal Triplane is Re-created in about 1:24 scale of antique pioneer airplane. This antique style metal triplane is all hand-assembled with many different parts.',2756,'36.23','72.45'),

('S24_4620','1961 Chevrolet Impala','Classic Cars','1:18','Classic Metal Creations','This 1:18 scale precision die-cast reproduction of the 1961 Chevrolet Impala has all the features-doors, hood and trunk that open; detailed 409 cubic-inch engine; chrome dashboard and stick shift, two-tone interior; working steering system; all topped of with a factory baked-enamel finish.',7869,'32.33','80.84'),

('S32_1268','1980’s GM Manhattan Express','Trucks and Buses','1:32','Motor City Art Classics','This 1980’s era new look Manhattan express is still active, running from the Bronx to mid-town Manhattan. Has 35 opeining windows and working lights. Needs a battery.',5099,'53.93','96.31'),

('S32_1374','1997 BMW F650 ST','Motorcycles','1:32','Exoto Designs','Features official die-struck logos and baked enamel finish. Comes with stand.',178,'66.92','99.89'),

('S32_2206','1982 Ducati 996 R','Motorcycles','1:32','Gearbox Collectibles','Features rotating wheels , working kick stand. Comes with stand.',9241,'24.14','40.23'),

('S32_2509','1954 Greyhound Scenicruiser','Trucks and Buses','1:32','Classic Metal Creations','Model features bi-level seating, 50 windows, skylights & glare resistant glass, working steering system, original logos',2874,'25.98','54.11'),

('S32_3207','1950\'s Chicago Surface Lines Streetcar','Trains','1:32','Gearbox Collectibles','This streetcar is a joy to see. It has 80 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).',8601,'26.72','62.14'),

('S32_3522','1996 Peterbilt 379 Stake Bed with Outrigger','Trucks and Buses','1:32','Red Start Diecast','This model features, opening doors, detailed engine, working steering, tinted windows, detailed interior, die-struck logos, removable stakes operating outriggers, detachable second trailer, functioning 360-degree self loader, precision molded resin trailer and trim, baked enamel finish on cab',814,'33.61','64.64'),

('S32_4289','1928 Ford Phaeton Deluxe','Vintage Cars','1:32','Highway 66 Mini Classics','This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system',136,'33.02','68.79'),

('S32_4485','1974 Ducati 350 Mk3 Desmo','Motorcycles','1:32','Second Gear Diecast','This model features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand',3341,'56.13','102.05'),

('S50_1341','1930 Buick Marquette Phaeton','Vintage Cars','1:50','Studio M Art Models','Features opening trunk,  working steering system',7062,'27.06','43.64'),

('S50_1392','Diamond T620 Semi-Skirted Tanker','Trucks and Buses','1:50','Highway 66 Mini Classics','This limited edition model is licensed and perfectly scaled for Lionel Trains. The Diamond T620 has been produced in solid precision diecast and painted with a fire baked enamel finish. It comes with a removable tanker and is a perfect model to add authenticity to your static train or car layout or to just have on display.',1016,'68.29','115.75'),

('S50_1514','1962 City of Detroit Streetcar','Trains','1:50','Classic Metal Creations','This streetcar is a joy to see. It has 99 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).',1645,'37.49','58.58'),

('S50_4713','2002 Yamaha YZR M1','Motorcycles','1:50','Autoart Studio Design','Features rotating wheels , working kick stand. Comes with stand.',600,'34.17','81.36'),

('S700_1138','The Schooner Bluenose','Ships','1:700','Autoart Studio Design','All wood with canvas sails. Measures 31 1/2 inches in Length, 22 inches High and 4 3/4 inches Wide. Many extras.\r\nThe schooner Bluenose was built in Nova Scotia in 1921 to fish the rough waters off the coast of Newfoundland. Because of the Bluenose racing prowess she became the pride of all Canadians. Still featured on stamps and the Canadian dime, the Bluenose was lost off Haiti in 1946.',1897,'34.00','66.67'),

('S700_1691','American Airlines: B767-300','Planes','1:700','Min Lin Diecast','Exact replia with official logos and insignias and retractable wheels',5841,'51.15','91.34'),

('S700_1938','The Mayflower','Ships','1:700','Studio M Art Models','Measures 31 1/2 inches Long x 25 1/2 inches High x 10 5/8 inches Wide\r\nAll wood with canvas sail. Extras include long boats, rigging, ladders, railing, anchors, side cannons, hand painted, etc.',737,'43.30','86.61'),

('S700_2047','HMS Bounty','Ships','1:700','Unimax Art Galleries','Measures 30 inches Long x 27 1/2 inches High x 4 3/4 inches Wide. \r\nMany extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.',3501,'39.83','90.52'),

('S700_2466','America West Airlines B757-200','Planes','1:700','Motor City Art Classics','Official logos and insignias. Working steering system. Rotating jet engines',9653,'68.80','99.72'),

('S700_2610','The USS Constitution Ship','Ships','1:700','Red Start Diecast','All wood with canvas sails. Measures 31 1/2\" Length x 22 3/8\" High x 8 1/4\" Width. Extras include 4 boats on deck, sea sprite on bow, anchors, copper railing, pilot houses, etc.',7083,'33.97','72.28'),

('S700_2824','1982 Camaro Z28','Classic Cars','1:18','Carousel DieCast Legends','Features include opening and closing doors. Color: White. \r\nMeasures approximately 9 1/2\" Long.',6934,'46.53','101.15'),

('S700_2834','ATA: B757-300','Planes','1:700','Highway 66 Mini Classics','Exact replia with official logos and insignias and retractable wheels',7106,'59.33','118.65'),

('S700_3167','F/A 18 Hornet 1/72','Planes','1:72','Motor City Art Classics','10\" Wingspan with retractable landing gears.Comes with pilot',551,'54.40','80.00'),

('S700_3505','The Titanic','Ships','1:700','Carousel DieCast Legends','Completed model measures 19 1/2 inches long, 9 inches high, 3inches wide and is in barn red/black. All wood and metal.',1956,'51.09','100.17'),

('S700_3962','The Queen Mary','Ships','1:700','Welly Diecast Productions','Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.',5088,'53.63','99.31'),

('S700_4002','American Airlines: MD-11S','Planes','1:700','Second Gear Diecast','Polished finish. Exact replia with official logos and insignias and retractable wheels',8820,'36.27','74.03'),

('S72_1253','Boeing X-32A JSF','Planes','1:72','Motor City Art Classics','10\" Wingspan with retractable landing gears.Comes with pilot',4857,'32.77','49.66'),

('S72_3212','Pont Yacht','Ships','1:72','Unimax Art Galleries','Measures 38 inches Long x 33 3/4 inches High. Includes a stand.\r\nMany extras including rigging, long boats, pilot house, anchors, etc. Comes with 2 masts, all square-rigged',414,'33.30','54.60');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
