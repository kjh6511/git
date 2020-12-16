-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mvc
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admn_tb`
--

DROP TABLE IF EXISTS `admn_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admn_tb` (
  `ADMN_ID` varchar(20) DEFAULT NULL,
  `ADMN_PWD` varchar(20) DEFAULT NULL,
  `ADMN_NM` varchar(20) DEFAULT NULL,
  `ADMN_TPHON` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admn_tb`
--

LOCK TABLES `admn_tb` WRITE;
/*!40000 ALTER TABLE `admn_tb` DISABLE KEYS */;
INSERT INTO `admn_tb` VALUES ('admin','1234',NULL,NULL);
/*!40000 ALTER TABLE `admn_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_article_test`
--

DROP TABLE IF EXISTS `gat_article_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_test` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_test`
--

LOCK TABLES `gat_article_test` WRITE;
/*!40000 ALTER TABLE `gat_article_test` DISABLE KEYS */;
INSERT INTO `gat_article_test` VALUES (1,'N','게시판&nbsp;작성','관리자','&lt;p>게시판 작성&lt;/p>\r<br />','2020-11-05 09:15:10',62,'pU8gluxObK6gNMjxRjixo0jL3Hae58Zp.jpg','20201012_135126.jpg','c://upload//fileUpload//',1,0,0),(2,'Y','asdfasdf','관리자','&lt;p>asdfasdfsadf&lt;/p>\r<br />','2020-11-06 11:41:55',0,NULL,NULL,NULL,2,0,0),(3,'Y','r3er4e','관리자','&lt;p>rererere&lt;/p>\r<br />','2020-11-06 11:42:00',1,NULL,NULL,NULL,3,0,0),(4,NULL,'[답글] adsf','adf','<p>게시판 작성</p>\r\n<br />','2020-12-14 10:05:06',28,NULL,NULL,NULL,1,1,1),(5,NULL,'asdf','관리자','','2020-12-14 10:05:18',28,NULL,NULL,NULL,4,0,0),(6,'N','[답글] adsf','dsaf','<p>게시판 작성</p>\r\n\r\n<p>dsaf</p>\r\n','2020-12-14 10:17:52',49,NULL,NULL,NULL,1,2,2);
/*!40000 ALTER TABLE `gat_article_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_comment_test`
--

DROP TABLE IF EXISTS `gat_comment_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_test` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_test`
--

LOCK TABLES `gat_comment_test` WRITE;
/*!40000 ALTER TABLE `gat_comment_test` DISABLE KEYS */;
INSERT INTO `gat_comment_test` VALUES (1,6,'adfasdfsf','관리자','2020-12-14 14:00:11'),(10,6,'댓글 내용 테스트','관리자','2020-12-15 11:57:46'),(11,5,'aaaaaaaaaaaaaaaa666666666666666','관리자','2020-12-15 14:02:54');
/*!40000 ALTER TABLE `gat_comment_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_board`
--

DROP TABLE IF EXISTS `grp_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_board` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `boardGrp` varchar(20) NOT NULL,
  `boardCode` varchar(20) NOT NULL,
  `boardColor` varchar(20) NOT NULL,
  `boardMaker` varchar(20) NOT NULL,
  `boardTitle` varchar(255) NOT NULL,
  `boardRead` char(1) DEFAULT '0',
  `boardWrite` char(1) DEFAULT '0',
  `boardReply` char(1) DEFAULT '0',
  `boardDownload` char(1) DEFAULT '0',
  `boardType` char(1) DEFAULT '1',
  `boardRegdate` date DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_board`
--

LOCK TABLES `grp_board` WRITE;
/*!40000 ALTER TABLE `grp_board` DISABLE KEYS */;
INSERT INTO `grp_board` VALUES (41,'100','test','#6F809A','관리자','ㅅㄷㄴㅅ','0','0','0','0','1','2020-11-03');
/*!40000 ALTER TABLE `grp_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_buseo`
--

DROP TABLE IF EXISTS `grp_buseo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_buseo` (
  `buseo_id` varchar(5) DEFAULT NULL,
  `buseo_name` varchar(50) DEFAULT NULL,
  `buseo_grp` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_buseo`
--

LOCK TABLES `grp_buseo` WRITE;
/*!40000 ALTER TABLE `grp_buseo` DISABLE KEYS */;
INSERT INTO `grp_buseo` VALUES ('100','관리부','1'),('101','관리과','1'),('200','기획부','2'),('201','기획과','2'),('202','TF팀','2'),('300','인사부','3'),('301','총무과','3'),('302','인사과','3'),('400','영업부','4'),('401','영업외주','4'),('500','생산부','5'),('501','생산과','5'),('600','자재부','6'),('601','자재과','6'),('700','비서실','7');
/*!40000 ALTER TABLE `grp_buseo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_company`
--

DROP TABLE IF EXISTS `grp_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_company` (
  `com_name` varchar(100) DEFAULT NULL,
  `com_sub_name` varchar(100) DEFAULT NULL,
  `com_ceo` varchar(10) DEFAULT NULL,
  `com_tel` varchar(15) DEFAULT NULL,
  `com_url` varchar(100) DEFAULT NULL,
  `com_copy` varchar(300) DEFAULT NULL,
  `com_auth` int DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_company`
--

LOCK TABLES `grp_company` WRITE;
/*!40000 ALTER TABLE `grp_company` DISABLE KEYS */;
INSERT INTO `grp_company` VALUES ('GREEN ACADEMY','Enterprise Groupware System','그린컴퓨터학원','051-0000-0000','https://busan.greenart.co.kr','copyright greenart alright reserved.',2);
/*!40000 ALTER TABLE `grp_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_emp_others`
--

DROP TABLE IF EXISTS `grp_emp_others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_emp_others` (
  `emp_gender` char(2) DEFAULT NULL,
  `emp_birth` char(8) DEFAULT NULL,
  `emp_cp` char(8) DEFAULT NULL,
  `emp_in` char(8) DEFAULT NULL,
  `emp_tel` char(8) DEFAULT NULL,
  `emp_recruit` char(5) DEFAULT NULL,
  `emp_hope` varchar(20) DEFAULT NULL,
  `emp_height` char(3) DEFAULT NULL,
  `emp_weight` char(3) DEFAULT NULL,
  `emp_service` char(5) DEFAULT NULL,
  `emp_religion` char(5) DEFAULT NULL,
  `emp_hobby` varchar(20) DEFAULT NULL,
  `emp_speciality` varchar(20) DEFAULT NULL,
  `emp_disability` char(3) DEFAULT NULL,
  `emp_reward` char(3) DEFAULT NULL,
  `emp_married` char(3) DEFAULT NULL,
  `emp_license1` varchar(20) DEFAULT NULL,
  `emp_license2` varchar(20) DEFAULT NULL,
  `emp_license3` varchar(20) DEFAULT NULL,
  `emp_license4` varchar(20) DEFAULT NULL,
  `emp_license5` varchar(20) DEFAULT NULL,
  `emp_lang1` varchar(20) DEFAULT NULL,
  `emp_lang2` varchar(20) DEFAULT NULL,
  `emp_lang3` varchar(20) DEFAULT NULL,
  `emp_lang4` varchar(20) DEFAULT NULL,
  `emp_lang5` varchar(20) DEFAULT NULL,
  `emp_rnp1` varchar(20) DEFAULT NULL,
  `emp_rnp2` varchar(20) DEFAULT NULL,
  `emp_rnp3` varchar(20) DEFAULT NULL,
  `emp_rnp4` varchar(20) DEFAULT NULL,
  `emp_rnp5` varchar(20) DEFAULT NULL,
  `emp_comment` text,
  `emp_num` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_emp_others`
--

LOCK TABLES `grp_emp_others` WRITE;
/*!40000 ALTER TABLE `grp_emp_others` DISABLE KEYS */;
INSERT INTO `grp_emp_others` VALUES ('남자','3','3','051','051','공개채용','3','','','병역필','무교','3','3','비장애','비대상','미혼','3','3','3','3','3','상','상','상','3','3','3','3','3','3','3','','2020200710'),('남자','1','1','051','051','공개채용','1','1','1','병역필','무교','1','1','비장애','비대상','미혼','1','1','1','1','1','상','상','상','1','1','1','1','1','1','1','','20201006'),('남자','1','1','051','051','공개채용','1','1','1','병역필','무교','1','1','비장애','비대상','미혼','1','1','1','1','1','상','상','상','1','1','1','1','1','1','1','','20201006'),('남자','1','1','051','051','공개채용','1','1','1','병역필','무교','1','1','비장애','비대상','미혼','1','1','1','1','1','상','상','상','1','1','1','1','1','1','1','','20201006'),('남자','1','1','051','051','공개채용','1','1','1','병역필','무교','1','1','비장애','비대상','미혼','1','1','1','1','1','상','상','상','1','1','1','1','1','1','1','<p>1</p>\r\n','20201006'),('남자','3','3','051','051','공개채용','3','3','3','병역필','무교','3','3','비장애','비대상','미혼','3','3','3','3','3','상','상','상','3','3','3','3','3','3','3','','20201006'),('남자','3','3','051','051','공개채용','3','3','3','병역필','무교','3','3','비장애','비대상','미혼','3','3','3','3','3','상','상','상','3','3','3','3','3','3','3','<p>3</p>\r\n','20201006'),('남자','5','5','051','051','공개채용','5','5','5','병역필','무교','5','5','비장애','비대상','미혼','5','5','5','5','5','상','상','상','5','5','5','5','5','5','5','<p>5</p>\r\n','20201006'),('남자','5','5','051','051','공개채용','5','5','5','병역필','무교','5','5','비장애','비대상','미혼','5','5','5','5','5','상','상','상','5','5','5','5','5','5','5','<p>5</p>\r\n','20201006'),('남자','3','','051','051','공개채용','3','3','3','병역필','무교','3','3','비장애','비대상','미혼','3','3','3','3','3','상','상','상','3','3','3','3','3','3','3','','20201006'),('남자','4','4','051','051','공개채용','4','','','병역필','무교','4','4','비장애','비대상','미혼','4','44','4','4','4','상','상','상','4','4','4','4','4','4','4','','20201006'),('남자','4','4','051','051','공개채용','4','','','병역필','무교','4','4','비장애','비대상','미혼','4','44','4','4','4','상','상','상','4','4','4','4','4','4','4','<p>4</p>\r\n','20201006'),('남자','5','5','051','051','공개채용','5','5','5','병역필','무교','5','5','비장애','비대상','미혼','5','5','5','5','5','상','상','상','5','5','5','5','5','5','5','','20201006'),('남자','6','6','051','051','공개채용','6','','','병역필','무교','6','6','비장애','비대상','미혼','6','6','6','6','6','상','상','상','6','6','6','6','6','6','6','','20201006'),('남자','5','5','051','051','공개채용','5','5','5','병역필','무교','5','5','비장애','비대상','미혼','5','5','5','5','5','상','상','상','5','5','5','5','5','5','5','','20201006'),('남자','4','4','051','051','공개채용','4','4','4','병역필','무교','4','4','비장애','비대상','미혼','4','4','4','4','4','상','상','상','4','4','4','4','4','4','4','','20201006'),('남자','4','4','051','051','공개채용','4','4','','병역필','무교','4','4','비장애','비대상','미혼','4','4','4','4','4','상','상','상','4','4','4','4','4','4','4','<p>4</p>\r\n','20201006'),('남자','4','4','051','051','공개채용','4','4','','병역필','무교','4','4','비장애','비대상','미혼','4','4','4','4','4','상','상','상','4','4','4','4','4','4','4','<p>4</p>\r\n','20201006'),('남자','4','4','051','051','공개채용','4','4','','병역필','무교','4','4','비장애','비대상','미혼','4','4','4','4','4','상','상','상','4','4','4','4','4','4','4','<p>4</p>\r\n','20201006'),('남자','6','6','051','051','공개채용','6','','','병역필','무교','6','6','비장애','비대상','미혼','6','6','6','6','6','상','상','상','6','6','6','6','6','6','6','<p>6</p>\r\n','20201006'),('남자','3','3','051','051','공개채용','3','','','병역필','무교','','3','비장애','비대상','미혼','3','3','3','3','3','상','상','상','5','5','5','5','5','5','5','<p>5</p>\r\n','20201006'),('남자','1','1','051','051','공개채용','1','1','1','병역필','무교','1','11','비장애','비대상','미혼','1','1','1','1','1','상','상','상','1','1','1','1','1','','1','<p>1</p>\r\n','20201006'),('남자','3','3','051','051','공개채용','','','','병역필','무교','','','비장애','비대상','미혼','','','','','','상','상','상','','','','','','','','<p>3</p>\r\n','20201006'),('남자','3','3','051','051','공개채용','','','','병역필','무교','','','비장애','비대상','미혼','','','','','','상','상','상','','','','','','','','<p>3</p>\r\n','20201006'),('남자','4','4','051','051','공개채용','4','','','병역필','무교','4','4','비장애','비대상','미혼','4','4','4','4','4','상','상','상','4','4','4','4','4','4','4','<p>4</p>\r\n','20201006'),('남자','3','3','051','051','공개채용','','','','병역필','무교','','','비장애','비대상','미혼','','','','','','상','상','상','','','','','','','','<p>3</p>\r\n','20201006');
/*!40000 ALTER TABLE `grp_emp_others` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_employee`
--

DROP TABLE IF EXISTS `grp_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_buseo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `emp_grade` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `emp_num` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `emp_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `emp_pwd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `emp_enter` date DEFAULT NULL,
  `emp_reg` date DEFAULT NULL,
  `emp_confirm` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N',
  `emp_head` char(1) DEFAULT 'N',
  `emp_step` int DEFAULT '1',
  `emp_auth` int DEFAULT '1',
  `emp_photo` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_employee`
--

LOCK TABLES `grp_employee` WRITE;
/*!40000 ALTER TABLE `grp_employee` DISABLE KEYS */;
INSERT INTO `grp_employee` VALUES (21,'','','admin','관리자','admin',NULL,NULL,'Y','N',1,10,NULL),(23,'500','7','2005500721','홍길동','1111','2005-09-01','2020-09-27','N','Y',15,1,NULL),(24,'200','10','20152001023','박철수','1111','2015-09-01','2020-09-27','Y','N',5,1,NULL),(25,'100','6','2020100624','1','1','2020-01-01','2020-09-28','Y','N',1,10,NULL),(26,'100','6','2020100625','1','1','2020-01-01','2020-09-28','N','N',1,1,NULL),(27,'100','6','2020100626','1','1','2020-01-01','2020-10-03','N','N',1,1,NULL),(28,'100','6','2020100627','1','1','2020-01-01','2020-10-03','N','N',1,1,NULL),(29,'100','6','2020100628','3','3','2020-01-01','2020-10-03','N','N',1,1,NULL),(30,'100','6','2020100629','3','3','2020-01-01','2020-10-03','N','N',1,1,NULL),(31,'100','6','2020100630','5','5','2020-01-01','2020-10-03','N','N',1,1,NULL),(32,'100','6','2020100631','5','5','2020-01-01','2020-10-03','N','N',1,1,NULL),(33,'100','6','2020100632','3','13','2020-01-01','2020-10-03','N','N',1,1,NULL),(34,'100','6','2020100633','4','4','2020-01-01','2020-10-03','N','N',1,1,NULL),(35,'100','6','2020100634','4','4','2020-01-01','2020-10-03','N','N',1,1,NULL),(36,'100','6','2020100635','5','5','2020-01-01','2020-10-03','N','N',1,1,NULL),(37,'100','6','2020100636','6','6','2020-01-01','2020-10-03','N','N',1,1,NULL),(38,'100','6','2020100637','5','5','2020-01-01','2020-10-03','N','N',1,1,NULL),(39,'100','6','2020100638','4','4','2020-01-01','2020-10-03','N','N',1,1,NULL),(40,'100','6','2020100639','4','4','2020-01-01','2020-10-03','N','N',1,1,NULL),(41,'100','6','2020100640','4','4','2020-01-01','2020-10-03','N','N',1,1,NULL),(42,'100','6','2020100641','4','4','2020-01-01','2020-10-03','N','N',1,1,NULL),(43,'100','6','2020100642','16','6','2020-01-01','2020-10-03','N','N',1,1,NULL),(44,'100','6','2020100643','3','3','2020-01-01','2020-10-03','N','N',1,1,NULL),(45,'100','6','2020100644','1','1','2020-01-01','2020-10-03','N','N',1,1,NULL),(46,'100','6','2020100645','3','3','2020-01-01','2020-10-03','N','N',1,1,NULL),(47,'100','6','2020100646','3','3','2020-01-01','2020-10-03','N','N',1,1,NULL),(48,'100','6','2020100647','4','4','2020-01-01','2020-10-03','N','N',1,1,NULL),(51,'100','6','2020100648','홍길동','1234','2020-11-01','2020-11-11','N','N',1,1,NULL);
/*!40000 ALTER TABLE `grp_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_grade`
--

DROP TABLE IF EXISTS `grp_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_grade` (
  `grade_id` varchar(10) NOT NULL,
  `grade_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_grade`
--

LOCK TABLES `grp_grade` WRITE;
/*!40000 ALTER TABLE `grp_grade` DISABLE KEYS */;
INSERT INTO `grp_grade` VALUES ('6','부장'),('7','팀장'),('8','과장'),('9','대리'),('10','사원');
/*!40000 ALTER TABLE `grp_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_major`
--

DROP TABLE IF EXISTS `grp_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_major` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `majorUrl0` varchar(500) DEFAULT NULL,
  `majorName0` varchar(50) DEFAULT NULL,
  `majorUrl1` varchar(500) DEFAULT NULL,
  `majorName1` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_major`
--

LOCK TABLES `grp_major` WRITE;
/*!40000 ALTER TABLE `grp_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `regupdate` date DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (3,'22','33','44','55','2020-08-19','2020-08-19');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(20) DEFAULT NULL,
  `user_pw` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_regdate` datetime DEFAULT NULL,
  `user_updatedate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('1','2','3','4',NULL,NULL),('2','2','2','2',NULL,NULL),('43','3','3','3',NULL,NULL),('4','4','4','4','2020-08-18 16:15:04',NULL);
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 14:13:48
