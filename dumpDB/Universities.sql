CREATE DATABASE  IF NOT EXISTS `Universities` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Universities`;
-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Universities
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.04.1

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
-- Table structure for table `Departments`
--

DROP TABLE IF EXISTS `Departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Departments` (
  `id_department` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `year_of_foundation` int(11) NOT NULL,
  `head_of_department` varchar(60) NOT NULL,
  `address` varchar(45) NOT NULL,
  `university_id` int(11) NOT NULL,
  PRIMARY KEY (`id_department`),
  KEY `fk_Departments_1_idx` (`university_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departments`
--

LOCK TABLES `Departments` WRITE;
/*!40000 ALTER TABLE `Departments` DISABLE KEYS */;
INSERT INTO `Departments` VALUES (16,'Welding Machine Setter',2001,'Prof. Remington Tremblay II','362 Marianna Stream Apt. 152\nPort Darbymouth,',1),(17,'Prepress Technician',2003,'Cloyd Koepp','742 Odie Field\nEast Angelitaborough, NY 65383',2),(18,'Medical Transcriptionist',2004,'Dr. Elyssa Roob IV','564 Kaya Station\nNew Audraberg, MT 84226',3),(19,'Emergency Management Specialist',2014,'Prof. Bessie Oberbrunner','1282 Hintz Vista Suite 127\nWest Savanahmouth,',4),(20,'Fast Food Cook',2009,'Mrs. Valentine Halvorson','595 Altenwerth Common Suite 685\nAlexandroches',1),(21,'Epidemiologist',1973,'Verona Herman','94867 Albert Grove\nNorth Justentown, VA 82844',1),(22,'Metal Fabricator',1976,'Mrs. Abby Auer IV','65236 Augustine Points Apt. 380\nEast Kian, VA',4),(23,'Supervisor Fire Fighting Worker',1996,'Bert Schmeler','8415 Waelchi Coves Apt. 283\nWest Lewiston, WV',2),(24,'Entertainment Attendant',1971,'Sydnie Wolf','82514 Strosin Manor\nNorth Winnifred, VA 99978',2),(25,'Civil Engineering Technician',1979,'Alexandria Medhurst','406 Cummings Shores\nHermanmouth, AK 57230',3),(26,'Manager of Weapons Specialists',1992,'Kelsie Jerde','4337 Lakin Fords\nWest Tracytown, OR 43180',1),(27,'Diesel Engine Specialist',1977,'Libby Denesik','260 Jazmyne River Apt. 118\nGreenfeldertown, V',4),(28,'Explosives Expert',1986,'Giovanni Satterfield','95227 Wolf Terrace\nBernitaberg, WV 35789-6683',2),(29,'Typesetting Machine Operator',1977,'Julien Howe','96690 Schulist Islands Apt. 172\nPort Cecelia,',3),(30,'Forensic Science Technician',2011,'Mac Murray','66063 Heaney Port Suite 435\nLake Serenaton, M',3),(31,'Precision Printing Worker',1976,'Kylie Predovic','793 Moises Light Suite 192\nNorth Alyceton, IL',1),(32,'Radiation Therapist',2015,'Tina Ruecker','1818 Nikolaus Hollow Suite 950\nDanteburgh, WV',3),(33,'Laundry OR Dry-Cleaning Worker',1980,'Marietta Ankunding','8885 Lebsack Motorway\nSouth Gavinhaven, IL 07',4),(34,'Occupational Health Safety Technician',1973,'Richard Schowalter','58732 Schowalter Bridge Suite 101\nEichmannhav',2),(35,'Coaches and Scout',2004,'Hassan White DDS','63598 Davis Mews Apt. 634\nSouth Alfredoton, C',2),(36,'Butcher',1980,'Kiara Kemmer','3805 Murphy Cove Suite 812\nWest Melyna, GA 36',1),(37,'Furnace Operator',1977,'Manuel Hettinger','3163 Ankunding Point\nNorth Andrew, IA 59420',1),(38,'Sociology Teacher',1987,'Jaida Cronin','6394 Golda Mission Apt. 609\nHomenickside, CA ',2),(39,'Housekeeping Supervisor',1999,'Trystan Von PhD','65126 Leta Parkways Apt. 602\nNew Granville, A',3),(40,'Boilermaker',1981,'Mrs. Aglae Osinski','452 Reanna Tunnel Suite 459\nNorth Katelynshir',3),(41,'Recordkeeping Clerk',1983,'Cruz Stehr','790 Elaina Prairie Apt. 515\nEast Aliya, AK 76',4),(42,'Host and Hostess',1999,'Dr. Dimitri Smith Sr.','955 Garett Underpass Apt. 323\nFarrellbury, IA',2);
/*!40000 ALTER TABLE `Departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Homeworks`
--

DROP TABLE IF EXISTS `Homeworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Homeworks` (
  `id_homework` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `mark` varchar(45) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  PRIMARY KEY (`id_homework`),
  KEY `homework_with_student_idx` (`lecturer_id`),
  KEY `homework_with_subject_idx` (`subject_id`),
  CONSTRAINT `homework_with_lecturer` FOREIGN KEY (`lecturer_id`) REFERENCES `Lecturers` (`id_lecturer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `homework_with_subject` FOREIGN KEY (`subject_id`) REFERENCES `Subjects` (`id_subject`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Homeworks`
--

LOCK TABLES `Homeworks` WRITE;
/*!40000 ALTER TABLE `Homeworks` DISABLE KEYS */;
INSERT INTO `Homeworks` VALUES (1,'Ut nisi est est libero fugit. Similique nisi modi tenetur qui quasi su','1',47,35),(2,'Magnam dolorum adipisci amet eaque repellendus eligendi sit. Doloremqu','1',63,36),(3,'Unde et omnis similique qui cumque. Sint necessitatibus soluta laborio','1',62,42),(4,'Aliquid fugiat fugit et. Consectetur rerum delectus vitae sint nemo iu','0',49,23),(5,'Esse perferendis expedita inventore eius voluptate necessitatibus. Ex ','1',53,29),(6,'Necessitatibus facere consequuntur et laboriosam quis aut itaque. Volu','1',61,12),(7,'Aspernatur eveniet ab iste minus mollitia suscipit quasi. Aperiam dolo','1',59,8),(8,'Adipisci non ipsum nihil quod in autem. Et molestiae dolore explicabo ','0',49,40),(9,'Optio laudantium quisquam sed provident sit ut pariatur. Enim optio ad','1',56,50),(10,'Repudiandae et nesciunt sed ea voluptatem. Et repellendus architecto a','1',57,50),(11,'Quibusdam eos est soluta ab repellat dolorem. A quod consectetur in eu','1',58,29),(12,'Quia doloribus ut aut qui. Necessitatibus at ea accusamus aut. Omnis a','1',46,9),(13,'Voluptatem necessitatibus repellendus rerum. Voluptatem molestiae est ','0',59,33),(14,'Ut consequuntur cupiditate blanditiis iure temporibus soluta. Ex exerc','1',50,31),(15,'Dolores hic natus voluptatem officia. Sed aliquam ipsum quo.','1',53,25),(16,'Dolorum voluptas qui a neque est. Inventore aut eligendi natus archite','0',48,44),(17,'Ut saepe asperiores porro quidem. Adipisci aliquam assumenda tempora v','1',51,1),(18,'A non quisquam commodi illo nesciunt. Rerum magni qui voluptas consequ','1',46,36),(19,'Facere quod dicta perspiciatis similique quia velit distinctio unde. A','1',60,5),(20,'Nihil rerum quos aut nihil nihil et sit. Harum doloribus nemo quia qui','0',50,2),(21,'A cumque fugit dolorem velit ab amet modi fuga. Nisi ab deserunt nulla','0',45,11),(22,'Numquam non sunt rerum at vero vitae esse. Officiis aspernatur odit te','0',51,4),(23,'Cum ratione minima facere illo placeat eveniet. Voluptate eos occaecat','0',56,6),(24,'Dignissimos autem ullam sunt laudantium quo. Quod a sed dolorem et qui','1',51,13),(25,'Dolore ipsum eveniet et ut magni ex. Et tempore porro repellat ipsa no','0',65,41),(26,'Voluptas aperiam veniam et voluptas voluptatibus nesciunt. Impedit del','1',51,7),(27,'Dolorem rem eveniet nesciunt explicabo molestiae. A sit voluptatem bla','1',54,24),(28,'Consequatur magnam non et aliquid rerum aut nisi. Et at voluptatibus s','0',56,24),(29,'Et et nobis at velit officiis recusandae praesentium. Illo odit vel ar','1',48,49),(30,'nemo','1',58,37),(31,'ducimus','1',65,13),(32,'molestiae','1',51,20),(33,'dolorum','1',62,30),(34,'quia','1',64,7),(35,'dolor','0',61,4),(36,'sed','0',65,46),(37,'voluptatem','0',47,22),(38,'incidunt','1',66,35),(39,'consequuntur','0',57,24),(40,'soluta','0',52,35),(41,'ea','0',65,10),(42,'accusantium','0',49,35),(43,'qui','0',46,21),(44,'provident','1',65,31),(45,'sunt','1',50,31),(46,'voluptatibus','1',63,23),(47,'et','1',47,18),(48,'temporibus','0',63,4),(49,'adipisci','1',47,38),(50,'quaerat','1',60,38),(51,'sint','1',48,25),(52,'minus','1',51,17),(53,'labore','1',48,39),(54,'fugiat','0',50,25),(55,'soluta','1',63,2),(56,'sit','0',48,48),(57,'aspernatur','1',56,35),(58,'et','1',47,25),(59,'nisi','0',48,36),(60,'reiciendis','1',51,17),(61,'voluptatem','0',63,30),(62,'quo','0',53,9),(63,'incidunt','1',60,19),(64,'ullam','1',65,29),(65,'eligendi','1',51,31),(66,'dolores','0',60,38),(67,'consequatur','1',47,48),(68,'unde','1',58,25),(69,'reiciendis','1',46,12),(70,'amet','1',53,19);
/*!40000 ALTER TABLE `Homeworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lecturers`
--

DROP TABLE IF EXISTS `Lecturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lecturers` (
  `id_lecturer` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id_lecturer`),
  KEY `fk_Lecturer_1_idx` (`department_id`),
  CONSTRAINT `lecturer_with_department` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`id_department`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lecturers`
--

LOCK TABLES `Lecturers` WRITE;
/*!40000 ALTER TABLE `Lecturers` DISABLE KEYS */;
INSERT INTO `Lecturers` VALUES (1,'Barrett','Dietrich',20),(2,'Sadye','Boehm',18),(3,'Maryjane','Pfeffer',39),(4,'Donnie','Toy',33),(5,'Bertha','Tillman',16),(6,'Florida','Monahan',19),(7,'Mustafa','Mertz',31),(8,'Nova','Runte',20),(9,'Gladyce','Treutel',17),(10,'Lela','Barrows',30),(11,'Dallas','Murray',25),(12,'Arielle','Schuster',32),(13,'Keeley','Kemmer',37),(14,'Precious','Jakubowski',18),(15,'Diamond','Franecki',42),(16,'Monte','Gleichner',41),(17,'Rafaela','Kuhn',38),(18,'Zelda','Wiza',27),(19,'Winona','Barton',35),(20,'Tatyana','Beier',36),(21,'Dudley','Smith',22),(22,'Liliane','Bogan',17),(23,'Florine','Littel',21),(24,'Jerrell','Parker',22),(25,'Jedediah','Anderson',26),(26,'Mina','Lesch',41),(27,'Jordyn','Torp',35),(28,'Finn','Ebert',37),(29,'Ophelia','Keeling',28),(30,'Edyth','Swaniawski',25),(31,'Karlee','Schuster',38),(32,'Sherwood','Heller',40),(33,'Omari','VonRueden',42),(34,'Shawn','Beahan',17),(35,'Mia','Torp',39),(36,'Eric','Reichel',40),(37,'Keely','Gleason',32),(38,'Elisa','Johns',23),(39,'Sabrina','Muller',33),(40,'Josie','Koepp',19),(41,'Gaston','Mante',42),(42,'Kelsie','Bernier',29),(43,'Rusty','Thompson',24),(44,'Herminio','Gutmann',37),(45,'Riley','Kuhlman',19),(46,'Gilberto','O\'Reilly',16),(47,'Bernhard','Zulauf',24),(48,'Lolita','Crooks',38),(49,'Elna','Kerluke',26),(50,'Rashawn','White',21);
/*!40000 ALTER TABLE `Lecturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Students` (
  `id_student` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`id_student`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (1,'Laron','Kutch','jeramy39@hotmail.com','(932) 330-2534 x65551'),(2,'Domenica','Kautzer','kessler.josephine@hodkiewicz.com','908.920.7215'),(3,'Ted','Lueilwitz','nherzog@weissnat.com','+1-748-530-1701'),(4,'Ana','Langworth','dooley.philip@murray.com','978.613.0523'),(5,'Ella','Botsford','skylar63@lueilwitz.info','396.549.1015'),(6,'Ana','Nitzsche','vivien18@stiedemann.com','+1-959-412-2295'),(7,'Hosea','Anderson','walter.grant@gmail.com','1-961-245-1810'),(8,'Grant','Stoltenberg','santino57@bailey.com','+1.462.682.7095'),(9,'Brian','O\'Hara','arden.prohaska@gmail.com','1-569-539-8005'),(10,'Toby','Wehner','adolfo.dach@hotmail.com','278.218.4885'),(11,'Alexie','McLaughlin','anabelle.glover@gmail.com','708.937.7627'),(12,'Carlo','O\'Conner','dooley.madeline@yahoo.com','1-246-753-0822 x540'),(13,'Giovani','Kilback','reynolds.cheyenne@hotmail.com','974.983.3881 x80148'),(14,'Destini','McClure','fwintheiser@frami.com','864.787.4185 x0713'),(15,'Geoffrey','Upton','dominic.brekke@jaskolski.com','(572) 279-3651'),(16,'Kris','Spinka','eshanahan@yahoo.com','1-365-745-3382'),(17,'Alena','Sanford','wfunk@gmail.com','1-251-363-9697 x678'),(18,'Dallas','Douglas','kub.arvilla@rowe.info','1-448-861-5938'),(19,'Amelie','Reilly','logan.bayer@walker.com','+1 (761) 403-9291'),(20,'Violette','Cruickshank','bkulas@schultz.info','(814) 379-9818'),(21,'Myriam','Kris','gerhold.hilma@gmail.com','520-287-8058 x83691'),(22,'Sammy','Terry','jordyn02@bosco.com','1-578-478-1913'),(23,'Gerard','Kassulke','maverick06@yahoo.com','+1 (406) 553-9584'),(24,'German','Hyatt','rosemary22@tremblay.biz','+1 (821) 509-8292'),(25,'Kolby','Braun','chadrick81@yahoo.com','+1.234.515.1111'),(26,'Carlee','Lemke','obaumbach@yahoo.com','+14673640207'),(27,'Van','Upton','hessel.kim@doyle.com','1-859-782-3842 x553'),(28,'Christiana','Kihn','parker21@yahoo.com','+1.904.302.0269'),(29,'Francisca','Renner','roberta.prosacco@herman.com','1-948-422-9671'),(30,'Hilario','Spencer','bosco.fredrick@yahoo.com','+1-286-612-0003'),(31,'Shany','Dicki','jschumm@gutkowski.com','574.946.9920'),(32,'Amaya','Gulgowski','mbins@yahoo.com','+1.972.265.8198'),(33,'Joaquin','Mertz','hohara@medhurst.com','427.671.6377'),(34,'Herman','Leffler','hessel.tess@gmail.com','+18764894664'),(35,'Maryse','Marquardt','cydney.nader@hotmail.com','443.700.0579'),(36,'Waldo','Graham','maryjane.lynch@gmail.com','580-527-7369 x71657'),(37,'Mckenzie','Wiegand','agoyette@ruecker.com','1-792-599-7549'),(38,'Alycia','Schmidt','roberts.mike@hettinger.com','+1.836.792.6755'),(39,'Gregory','Auer','henriette37@schultz.com','+16517149643'),(40,'Kathlyn','Pouros','fidel.koss@toy.biz','(706) 532-2952'),(41,'Cassidy','Leffler','laron09@mills.com','1-852-969-9282'),(42,'Cordia','Aufderhar','hubert66@heller.biz','(856) 604-3098 x773'),(43,'Dakota','Harris','carolyne88@hotmail.com','+1.935.659.2578'),(44,'Bonita','Boehm','reed.roob@hotmail.com','245.373.4306 x359'),(45,'Freddie','Willms','owelch@hotmail.com','+1-502-262-2462'),(46,'Joelle','Mann','lorine.schaden@hotmail.com','281.601.5087 x203'),(47,'Rowland','Mills','jaylan.kulas@hyatt.info','291.996.7311 x524'),(48,'Nayeli','Kris','lindgren.rene@gmail.com','1-679-614-1826'),(49,'Earlene','Rippin','fwelch@hotmail.com','+1-457-559-3319'),(50,'Christian','Wilderman','keaton99@yahoo.com','(483) 232-4760 x9829'),(51,'Morton','Wunsch','phoebe.prohaska@hotmail.com','402.704.4309 x6027'),(52,'Leila','Huel','mathilde.mayert@ortiz.com','1-243-666-2915'),(53,'Estevan','Kuhic','keeley.walsh@hotmail.com','1-676-329-6436 x860'),(54,'Dulce','Dickinson','romaguera.shana@gmail.com','+17439366837'),(55,'Elfrieda','Ankunding','nbecker@lakin.com','405-672-3401'),(56,'Valerie','Lindgren','randall.vonrueden@yahoo.com','(465) 569-5866 x274'),(57,'Gage','Bode','cindy.emard@roberts.com','(585) 226-5057 x243'),(58,'Jessika','Pfeffer','judah53@schuppe.info','1-275-931-5906 x35647'),(59,'Sammy','Willms','jacquelyn.runte@hotmail.com','+1 (920) 830-2238'),(60,'Maximillia','Daugherty','vinnie02@wyman.com','575.721.3372 x8780'),(61,'Lauriane','Eichmann','freeda88@yahoo.com','1-618-387-5247 x249'),(62,'Sage','Bartoletti','brice91@ondricka.org','608.972.3600 x70871'),(63,'Wilford','Jaskolski','watson23@yahoo.com','1-935-900-1223 x7957'),(64,'Kristina','D\'Amore','janessa.wintheiser@feeney.com','806.731.2052');
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subjects`
--

DROP TABLE IF EXISTS `Subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subjects` (
  `id_subject` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id_subject`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `subject_with_department_idx` (`department_id`),
  CONSTRAINT `subject_with_department` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`id_department`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subjects`
--

LOCK TABLES `Subjects` WRITE;
/*!40000 ALTER TABLE `Subjects` DISABLE KEYS */;
INSERT INTO `Subjects` VALUES (45,'OOP',16),(46,'Datebases',16),(47,'Professional English',17),(48,'Project Manegment',17),(49,'Qulity Assurence',18),(50,'Advenced PHP',16),(51,'Front-end+CMS',19),(52,'Ruby on Rails',19),(53,'Java for Web',25),(54,'JavaScript',20),(55,'Game Development',23),(56,'Motion Graphics',26),(57,'Pyton',19),(58,'Web Design',23),(59,'Design DB structure',22),(60,'MySql',18),(61,'PostgreSql',21),(62,'NoSql',21),(63,'MongoDB',24),(64,'SQLite',25),(65,'System Analize',25),(66,'Bisnes Analize',24);
/*!40000 ALTER TABLE `Subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Universities`
--

DROP TABLE IF EXISTS `Universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Universities` (
  `id_university` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `city` varchar(10) NOT NULL,
  `site` varchar(50) NOT NULL,
  `year_of_foundation` int(11) NOT NULL,
  `head_of_university` varchar(50) NOT NULL,
  PRIMARY KEY (`id_university`),
  UNIQUE KEY `name_university_UNIQUE` (`name`),
  UNIQUE KEY `site_UNIQUE` (`site`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universities`
--

LOCK TABLES `Universities` WRITE;
/*!40000 ALTER TABLE `Universities` DISABLE KEYS */;
INSERT INTO `Universities` VALUES (1,'Rodriguez Ltd','Loweton','halvorson.com',1985,'Prof. Justice Bogisich'),(2,'Grant, Muller and Schumm','South Dell','connelly.biz',2007,'Dr. Tyshawn Cremin V'),(3,'Schinner PLC','Lake Deion','runte.com',1980,'Dr. Madaline Nicolas'),(4,'Gorczany-Carter','Kutchland','wisozk.com',2008,'Mr. Carson Rogahn');
/*!40000 ALTER TABLE `Universities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-07 22:15:43
