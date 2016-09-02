-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: student_info
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `Course2Stu`
--

DROP TABLE IF EXISTS `Course2Stu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course2Stu` (
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  KEY `weakCourse2Stu_to_Stu_idx` (`s_id`),
  KEY `weakCourse2Stu_to_Course_idx` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course2Stu`
--

LOCK TABLES `Course2Stu` WRITE;
/*!40000 ALTER TABLE `Course2Stu` DISABLE KEYS */;
INSERT INTO `Course2Stu` VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(2,8),(3,9),(3,10),(3,11),(3,12),(4,13),(4,14),(4,15),(4,16),(5,17),(5,18),(5,19),(5,20),(6,21),(6,22),(6,23),(6,24),(7,25),(7,26),(7,27),(7,28),(8,29),(8,30),(8,31),(8,32),(9,33),(9,34),(9,35),(9,36),(10,37),(10,38),(10,39),(10,40),(11,41),(11,42),(11,43),(11,44),(12,45),(12,46),(12,47),(12,48),(13,49),(13,50),(13,51),(13,5),(14,51),(14,3),(14,17),(14,24);
/*!40000 ALTER TABLE `Course2Stu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Courses`
--

DROP TABLE IF EXISTS `Courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Courses` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(45) NOT NULL,
  `m_id` int(11) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `Course_to_Majors_idx` (`m_id`),
  CONSTRAINT `Course_to_Majors` FOREIGN KEY (`m_id`) REFERENCES `Majors` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Courses`
--

LOCK TABLES `Courses` WRITE;
/*!40000 ALTER TABLE `Courses` DISABLE KEYS */;
INSERT INTO `Courses` VALUES (1,'Intro Accounting I',1),(2,'Intro Accounting II',1),(3,'Actg for Entrepreneurs',1),(4,'Cost Accounting',1),(5,'Gateway to Media I',2),(6,'Gateway to Media II',2),(7,'Digital Video Prod',2),(8,'Strat Writ & Media Rel',2),(9,'Media History',2),(10,'Intro to Architecture',3),(11,'Design Skills',3),(12,'Introduction to Architecture Computing',3),(13,'Media for Design Development',3),(14,'Human Context of Design',3),(15,'Structural Behavior',3),(16,'Biology of Cancer',4),(17,'Science, Polic, & Biol',4),(18,'Gen Biol II: Organisms',4),(19,'Developmental Biology',4),(20,'General Chemistry',5),(21,'Honors Gen Chemistry',5),(22,'Organic Chemistry II',5),(23,'Org Chem Lab Majors',5),(24,'Print Media Digital Arts',6),(25,'Time-Based Digital Art',6),(26,'Interactive Digital Arts',6),(27,'Digital Drawing',6),(28,'Intro Econ Analy Micro',7),(29,'Interm Microec Theory',7),(30,'Intro to Econometrics',7),(31,'Intro to Game Theory',7),(32,'Intro Sociology ',8),(33,'Social Inequality',8),(34,'Commun Envir & Society',8),(35,'Developmt of Sociology',8),(36,'Natural Environment',9),(37,'Sp St Wrld & Big Data',9),(38,'World Regional Geog',9),(39,'Geography of Europe',9),(40,'Western Civilization',10),(41,'World History',10),(42,'Cultures of India',10),(43,'Japan Past & Present ',10),(44,'Structur English Words',11),(45,'Languages of the World',11),(46,'Child Language',11),(47,'Sp St Intro Ling Behav',11),(48,'Introduction to Web Programming',12),(49,'Intermediate Data Structures',12),(50,'C/C++ & Unix',12),(51,'Operating Systems',12);
/*!40000 ALTER TABLE `Courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Devices`
--

DROP TABLE IF EXISTS `Devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Devices` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(45) NOT NULL,
  `d_catagory` varchar(45) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Devices`
--

LOCK TABLES `Devices` WRITE;
/*!40000 ALTER TABLE `Devices` DISABLE KEYS */;
INSERT INTO `Devices` VALUES (1,'Iphone6','Smart Phone'),(2,'Iphone6s','Smart Phone'),(3,'Iphone6+','Smart Phone'),(4,'Iphone6s+','Smart Phone'),(5,'MacBook Pro','Laptop'),(6,'MacBook Air','Laptop'),(7,'IMac','PC'),(8,'Ipad','Tablet'),(9,'Surface Pro','Tablet'),(10,'Surface Book','Tablet'),(11,'IWatch','Smart Watch'),(12,'Hp laptop','Laptop'),(13,'Hp PC','PC'),(14,'IBM laptop','Laptop'),(15,'Lenovo Laptop','Laptop'),(16,'Dell PC','PC'),(17,'Toshiba PC','PC'),(18,'Go Pro','Camera'),(19,'New 3DS LL','Game Console'),(20,'Allienware PC','PC'),(21,'Digital Piano','Instruments');
/*!40000 ALTER TABLE `Devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Health_Status`
--

DROP TABLE IF EXISTS `Health_Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Health_Status` (
  `s_id` int(11) NOT NULL,
  `male` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `allergy` varchar(45) DEFAULT NULL,
  `medical_history` varchar(100) DEFAULT NULL,
  `insurrance` varchar(45) DEFAULT NULL,
  KEY `Health_to_students_idx` (`s_id`),
  CONSTRAINT `Health_to_students` FOREIGN KEY (`s_id`) REFERENCES `Students` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Health_Status`
--

LOCK TABLES `Health_Status` WRITE;
/*!40000 ALTER TABLE `Health_Status` DISABLE KEYS */;
INSERT INTO `Health_Status` VALUES (1,'M','21','no',NULL,'no'),(2,'M','22','no',NULL,'yes'),(3,'M','23','no',NULL,'yes'),(4,'M','24','no',NULL,'yes'),(5,'M','24','no',NULL,'yes'),(6,'M','21','no',NULL,'yes'),(7,'F','22','no',NULL,'no'),(8,'M','21','no',NULL,'yes'),(9,'M','23','no',NULL,'yes'),(10,'M','25','no',NULL,'yes'),(11,'M','24','no',NULL,'yes'),(12,'M','23','no',NULL,'yes'),(13,'F','21','no',NULL,'yes'),(14,'F','20','no',NULL,'yes');
/*!40000 ALTER TABLE `Health_Status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomeTown`
--

DROP TABLE IF EXISTS `HomeTown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomeTown` (
  `s_id` int(11) NOT NULL,
  `ht_name` varchar(45) NOT NULL,
  KEY `HomeTown_to_stu_idx` (`s_id`),
  CONSTRAINT `HomeTown_to_stu` FOREIGN KEY (`s_id`) REFERENCES `Students` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomeTown`
--

LOCK TABLES `HomeTown` WRITE;
/*!40000 ALTER TABLE `HomeTown` DISABLE KEYS */;
INSERT INTO `HomeTown` VALUES (1,'Jiangmen, China'),(2,'Dalian, China'),(3,'Xiamen, China'),(4,'Chongqing, China'),(5,'Hangzhou, China'),(6,'Chengdu, China'),(7,'Dongguan, China'),(8,'Shanghai, China'),(9,'Beijing, China'),(10,'Beijing, China'),(11,'Shanghai, China'),(12,'Inner Mongolia, China'),(13,'Beijing, China'),(14,'Beijing, China');
/*!40000 ALTER TABLE `HomeTown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interest`
--

DROP TABLE IF EXISTS `Interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interest` (
  `s_id` int(11) NOT NULL,
  `Int_details` varchar(45) NOT NULL,
  KEY `Interest_to_Stu_idx` (`s_id`),
  CONSTRAINT `Interest_to_Stu` FOREIGN KEY (`s_id`) REFERENCES `Students` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interest`
--

LOCK TABLES `Interest` WRITE;
/*!40000 ALTER TABLE `Interest` DISABLE KEYS */;
INSERT INTO `Interest` VALUES (1,'Stay with Hanmeimei'),(2,'Play Piano'),(3,'Play 3DS'),(4,'Watch Japanese Movies'),(5,'Write C++ programs'),(6,'Play Games'),(7,'Stay with Lilei'),(8,'Play Basketball'),(9,'Traveling'),(10,'Play PC Games'),(11,'Go to Party'),(12,'Watch movies'),(13,'Play 3DS'),(14,'Play LOL');
/*!40000 ALTER TABLE `Interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Majors`
--

DROP TABLE IF EXISTS `Majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Majors` (
  `major_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_name` varchar(45) NOT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Majors`
--

LOCK TABLES `Majors` WRITE;
/*!40000 ALTER TABLE `Majors` DISABLE KEYS */;
INSERT INTO `Majors` VALUES (1,'Accounting'),(2,'Advertising'),(3,'Architecture'),(4,'Biology'),(5,'Chemistry'),(6,'Digital arts'),(7,'Economics'),(8,'General science'),(9,'Geography'),(10,'History'),(11,'Linguistics'),(12,'Computer and information science');
/*!40000 ALTER TABLE `Majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Students` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(45) NOT NULL,
  `s_gender` varchar(45) NOT NULL,
  `s_email` varchar(45) DEFAULT NULL,
  `s_phoneNum` varchar(45) DEFAULT NULL,
  `m_id` int(11) NOT NULL,
  PRIMARY KEY (`s_id`),
  UNIQUE KEY `s_email_UNIQUE` (`s_email`),
  UNIQUE KEY `s_phoneNum_UNIQUE` (`s_phoneNum`),
  KEY `Students_to_Majors_idx` (`m_id`),
  CONSTRAINT `Students_to_Majors` FOREIGN KEY (`m_id`) REFERENCES `Majors` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (1,'Lei Li','M','LoveMeimei@gmail.com','5415415411',12),(2,'Haotian Qian','M','Qiantian@gmail.com','5415415412',12),(3,'Qili Ou','M','Qili@gmail.com','5415415413',12),(4,'Zekun Tang','M','ZKT.AVI@gmail.com','5415415414',11),(5,'Honglu Xu','M','Masterxu@gmail.com','5415415415',10),(6,'Zhixin Liu','M','zhige@gmail.com','5415415416',9),(7,'Meimei Han','F','loveLilei@gmail.com','5415415417',8),(8,'Kai Huang','F','Gaoji@gmail.com','5415415418',7),(9,'Xun Liu','M','Xunge@gmail.com','5415415419',6),(10,'Yuanfei Xu','M','Feige@gmail.com','5415415420',5),(11,'Heqian Li','M','Qianqian@gmail.com','5415415421',4),(12,'Dong He','M','Dongdong@gmai.com','5415415422',3),(13,'Shiya Jun','F','Nvxueba@gmail.com','5415415423',2),(14,'Jiatong Chen','F','Tong@gmail.com','5415415424',1);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `University`
--

DROP TABLE IF EXISTS `University`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `University` (
  `uni_id` int(11) NOT NULL AUTO_INCREMENT,
  `uni_name` varchar(45) NOT NULL,
  `uni_location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uni_id`,`uni_name`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `University`
--

LOCK TABLES `University` WRITE;
/*!40000 ALTER TABLE `University` DISABLE KEYS */;
INSERT INTO `University` VALUES (100,'Princeton University','Princeton, NJ'),(101,'Harvard University','Cambridge, MA'),(102,'Yale University','New Haven, CT'),(103,'Columbia University','New York, NY'),(104,'Stanford University','Stanford, CA'),(105,'University of Chicago','Chicago, IL'),(106,'Massachusetts Institute of Technology','Cambridge, MA'),(107,'Duke University','Durham, NC'),(108,'University of Pennsylvania','Philadelphia, PA'),(109,'California Institute of Technology','Pasadena, CA'),(110,'Johns Hopkins University','Baltimore, MD'),(111,'University of Oregon','Eugene, OR');
/*!40000 ALTER TABLE `University` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weakDevice2Stu`
--

DROP TABLE IF EXISTS `weakDevice2Stu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weakDevice2Stu` (
  `s_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  KEY `weakDevice2Stu_to_Device_idx` (`d_id`),
  KEY `weakDevice2Stu_to_Stu_idx` (`s_id`),
  CONSTRAINT `weakDevice2Stu_to_Device` FOREIGN KEY (`d_id`) REFERENCES `Devices` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `weakDevice2Stu_to_Stu` FOREIGN KEY (`s_id`) REFERENCES `Students` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weakDevice2Stu`
--

LOCK TABLES `weakDevice2Stu` WRITE;
/*!40000 ALTER TABLE `weakDevice2Stu` DISABLE KEYS */;
INSERT INTO `weakDevice2Stu` VALUES (1,19),(1,20),(1,7),(2,21),(2,1),(3,2),(3,18),(3,19),(4,1),(4,5),(5,18),(5,8),(5,10),(6,1),(6,5),(6,19),(7,14),(7,11),(8,16),(8,6),(9,11),(9,5),(10,6),(10,20),(11,5),(11,11),(12,5),(12,2),(13,3),(13,6),(14,4),(14,7);
/*!40000 ALTER TABLE `weakDevice2Stu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weakDevice2Unviersity`
--

DROP TABLE IF EXISTS `weakDevice2Unviersity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weakDevice2Unviersity` (
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  KEY `weakDevice2University_to_University_idx` (`u_id`),
  KEY `weakDevice2University_to_Device_idx` (`d_id`),
  CONSTRAINT `weakDevice2University_to_Device` FOREIGN KEY (`d_id`) REFERENCES `Devices` (`d_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `weakDevice2University_to_University` FOREIGN KEY (`u_id`) REFERENCES `University` (`uni_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weakDevice2Unviersity`
--

LOCK TABLES `weakDevice2Unviersity` WRITE;
/*!40000 ALTER TABLE `weakDevice2Unviersity` DISABLE KEYS */;
INSERT INTO `weakDevice2Unviersity` VALUES (100,16),(100,13),(100,7),(100,17),(101,7),(101,13),(101,16),(101,17),(102,7),(102,13),(102,16),(102,17),(103,7),(103,16),(104,7),(104,17),(105,7),(105,13),(106,7),(106,16),(106,13),(107,13),(107,17),(107,16),(108,7),(108,16),(109,7),(109,17),(110,7),(110,13),(111,7),(111,13),(111,21),(111,20);
/*!40000 ALTER TABLE `weakDevice2Unviersity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weakMajor2University`
--

DROP TABLE IF EXISTS `weakMajor2University`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weakMajor2University` (
  `u_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  KEY `weakMajor2University_to_Major_idx` (`m_id`),
  KEY `weakMajor2University_to_University_idx` (`u_id`),
  CONSTRAINT `weakMajor2University_to_Major` FOREIGN KEY (`m_id`) REFERENCES `Majors` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `weakMajor2University_to_University` FOREIGN KEY (`u_id`) REFERENCES `University` (`uni_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weakMajor2University`
--

LOCK TABLES `weakMajor2University` WRITE;
/*!40000 ALTER TABLE `weakMajor2University` DISABLE KEYS */;
INSERT INTO `weakMajor2University` VALUES (100,1),(100,2),(100,3),(100,4),(100,5),(100,6),(100,7),(100,8),(100,9),(100,10),(100,11),(100,12),(101,1),(101,2),(101,3),(101,4),(101,5),(101,6),(101,7),(101,8),(101,9),(101,10),(101,11),(101,12),(102,1),(102,2),(102,3),(102,4),(102,5),(102,6),(102,7),(102,8),(102,9),(102,10),(102,11),(102,12),(103,1),(103,2),(103,3),(103,4),(103,5),(103,6),(103,7),(103,8),(103,9),(103,10),(103,11),(103,12),(104,1),(104,2),(104,3),(104,4),(104,5),(104,6),(104,7),(104,8),(104,9),(104,10),(104,11),(104,12),(105,1),(105,2),(105,3),(105,4),(105,5),(105,6),(105,7),(105,8),(105,9),(105,10),(105,11),(105,12),(106,1),(106,2),(106,3),(106,4),(106,5),(106,6),(106,7),(106,8),(106,9),(106,10),(106,11),(106,12),(107,1),(107,2),(107,3),(107,4),(107,5),(107,6),(107,7),(107,8),(107,9),(107,10),(107,11),(107,12),(108,1),(108,2),(108,3),(108,4),(108,5),(108,6),(108,7),(108,8),(108,9),(108,10),(108,11),(108,12),(109,1),(109,2),(109,3),(109,4),(109,5),(109,6),(109,7),(109,8),(109,9),(109,10),(109,11),(109,12),(110,1),(110,2),(110,3),(110,4),(110,5),(110,6),(110,7),(110,8),(110,9),(110,10),(110,11),(110,12),(111,1),(111,2),(111,3),(111,4),(111,5),(111,6),(111,7),(111,8),(111,9),(111,10),(111,11),(111,12);
/*!40000 ALTER TABLE `weakMajor2University` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-09 16:57:33
