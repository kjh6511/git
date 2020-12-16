-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: grp
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
-- Table structure for table `grp_article_board`
--

DROP TABLE IF EXISTS `grp_article_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_article_board` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(300) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_article_board`
--

LOCK TABLES `grp_article_board` WRITE;
/*!40000 ALTER TABLE `grp_article_board` DISABLE KEYS */;
INSERT INTO `grp_article_board` VALUES (1,'Y','1111','2222','<p>3333</p>\r\n','2020-11-06 10:59:02',0,'QLtV6TxjJkWTSiwfFxbtFIO12xLDs8WA.pdf','ahjobsupport03_001.pdf','C://upload//article//',1,0,0),(2,'Y','adfadsf','dsaf','<p>assdfadsf</p>\r\n','2020-11-06 11:01:14',0,NULL,NULL,NULL,2,0,0),(3,'N','adfadf','adf','<p>adfsasdfasdf</p>\r\n','2020-11-06 11:02:43',5,NULL,NULL,NULL,3,0,0),(4,'N','[답글] adfadf','관리자','<p>asdfafd</p>\r\n','2020-11-13 07:08:31',2,NULL,NULL,NULL,3,1,1),(5,'N','[답글] [답글] adfadf','관리자','<p>sadfadsf</p>\r\n','2020-11-13 07:08:42',2,NULL,NULL,NULL,3,2,2),(6,'N','gag','관리자','<p>adfgsdfgsdfg</p>\r\n','2020-11-13 07:10:14',15,'Clxbg05c2F5xXAy5VpvR0Aasdj15vSDg.sql','20201106-mvc.sql','C://upload//article//',4,0,0);
/*!40000 ALTER TABLE `grp_article_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_board`
--

DROP TABLE IF EXISTS `grp_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_board` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `boardGrp` varchar(5) DEFAULT NULL,
  `boardCode` varchar(20) NOT NULL,
  `boardColor` varchar(20) DEFAULT NULL,
  `boardMaker` varchar(20) DEFAULT NULL,
  `boardTitle` varchar(255) NOT NULL,
  `boardType` char(1) DEFAULT NULL,
  `boardRead` char(1) DEFAULT NULL,
  `boardWrite` char(1) DEFAULT NULL,
  `boardReply` char(1) DEFAULT NULL,
  `boardDownload` char(1) DEFAULT NULL,
  `boardRegdate` date DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_board`
--

LOCK TABLES `grp_board` WRITE;
/*!40000 ALTER TABLE `grp_board` DISABLE KEYS */;
INSERT INTO `grp_board` VALUES (50,'400','board','#FE5E71','관리자','영업부 답변형 게시판','1','0','0','0','0','2020-11-06');
/*!40000 ALTER TABLE `grp_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_buseo`
--

DROP TABLE IF EXISTS `grp_buseo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_buseo` (
  `buseo_id` varchar(5) NOT NULL,
  `buseo_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_buseo`
--

LOCK TABLES `grp_buseo` WRITE;
/*!40000 ALTER TABLE `grp_buseo` DISABLE KEYS */;
INSERT INTO `grp_buseo` VALUES ('100','관리부'),('200','기획부'),('300','인사부'),('400','영업부'),('500','생산부'),('600','자재부');
/*!40000 ALTER TABLE `grp_buseo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_comment_board`
--

DROP TABLE IF EXISTS `grp_comment_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_comment_board` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_comment_board`
--

LOCK TABLES `grp_comment_board` WRITE;
/*!40000 ALTER TABLE `grp_comment_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_comment_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_company`
--

DROP TABLE IF EXISTS `grp_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_company` (
  `com_name` varchar(100) NOT NULL,
  `com_sub_name` varchar(100) NOT NULL,
  `com_ceo` varchar(10) NOT NULL,
  `com_tel` varchar(15) NOT NULL,
  `com_url` varchar(50) NOT NULL,
  `com_copy` varchar(200) NOT NULL,
  `com_auth` int DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_company`
--

LOCK TABLES `grp_company` WRITE;
/*!40000 ALTER TABLE `grp_company` DISABLE KEYS */;
INSERT INTO `grp_company` VALUES ('GREEN ACADEMY','Enterprise Groupware System','김그린','051-0000-0000','busan.greenart.co.kr','greenart alright reserved',2);
/*!40000 ALTER TABLE `grp_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_employee`
--

DROP TABLE IF EXISTS `grp_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_buseo` varchar(10) NOT NULL,
  `emp_grade` varchar(20) NOT NULL,
  `emp_num` varchar(20) NOT NULL,
  `emp_enter` date DEFAULT NULL,
  `emp_name` varchar(10) NOT NULL,
  `emp_pwd` varchar(12) NOT NULL,
  `emp_regdate` date DEFAULT NULL,
  `emp_head` char(1) DEFAULT 'N',
  `emp_step` int DEFAULT '1',
  `emp_auth` int DEFAULT '1',
  `emp_confirm` char(1) DEFAULT 'N',
  `emp_photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_employee`
--

LOCK TABLES `grp_employee` WRITE;
/*!40000 ALTER TABLE `grp_employee` DISABLE KEYS */;
INSERT INTO `grp_employee` VALUES (6,'','','admin',NULL,'관리자','1234',NULL,'N',1,10,'Y',NULL),(26,'100','6','202010067','2020-11-03','김부장','1234','2020-11-02','N',1,1,'N',NULL),(27,'400','4','2020400427','2020-11-04','박과장','222','2020-11-02','N',1,1,'N',NULL);
/*!40000 ALTER TABLE `grp_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_employee_others`
--

DROP TABLE IF EXISTS `grp_employee_others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_employee_others` (
  `emp_oid` int NOT NULL AUTO_INCREMENT,
  `emp_gender` char(1) DEFAULT NULL,
  `emp_birth` char(10) DEFAULT NULL,
  `emp_cp` char(14) DEFAULT NULL,
  `emp_in` char(14) DEFAULT NULL,
  `emp_tel` char(14) DEFAULT NULL,
  `emp_recruit` char(10) DEFAULT NULL,
  `emp_hope` varchar(30) DEFAULT NULL,
  `emp_height` char(3) DEFAULT NULL,
  `emp_weight` char(3) DEFAULT NULL,
  `emp_service` char(5) DEFAULT NULL,
  `emp_religion` char(10) DEFAULT NULL,
  `emp_hobby` varchar(20) DEFAULT NULL,
  `emp_speciality` varchar(20) DEFAULT NULL,
  `emp_disability` char(3) DEFAULT NULL,
  `emp_reward` char(3) DEFAULT NULL,
  `emp_married` char(2) DEFAULT NULL,
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
  `emp_id_fk` int DEFAULT NULL,
  PRIMARY KEY (`emp_oid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_employee_others`
--

LOCK TABLES `grp_employee_others` WRITE;
/*!40000 ALTER TABLE `grp_employee_others` DISABLE KEYS */;
INSERT INTO `grp_employee_others` VALUES (3,'남','','','','','공개채용','','','','병역필','무교','','','비장애','비대상','미혼','','','','','','','','','','','','','','','','',0),(4,'남','','','','','공개채용','','','','병역필','무교','','','비장애','비대상','미혼','','','','','','','','','','','','','','','','',0),(5,'남','','','','','공개채용','','','','병역필','무교','','','비장애','비대상','미혼','','','','','','','','','','','','','','','','',0),(6,'남','','','','','공개채용','','','','병역필','무교','','','비장애','비대상','미혼','','','','','','','','','','','','','','','','',25),(7,'남','','','','','공개채용','','','','병역필','무교','','','비장애','비대상','미혼','','','','','','','','','','','','','','','','',25);
/*!40000 ALTER TABLE `grp_employee_others` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_grade`
--

DROP TABLE IF EXISTS `grp_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_grade` (
  `grade_id` varchar(2) NOT NULL,
  `grade_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_grade`
--

LOCK TABLES `grp_grade` WRITE;
/*!40000 ALTER TABLE `grp_grade` DISABLE KEYS */;
INSERT INTO `grp_grade` VALUES ('6','부장'),('5','팀장'),('4','과장'),('3','대리'),('2','주임'),('1','사원');
/*!40000 ALTER TABLE `grp_grade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 20:29:47
