-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hashtech
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add book',7,'add_book'),(20,'Can change book',7,'change_book'),(21,'Can delete book',7,'delete_book'),(22,'Can add coordinators',8,'add_coordinators'),(23,'Can change coordinators',8,'change_coordinators'),(24,'Can delete coordinators',8,'delete_coordinators'),(25,'Can add cs go model',9,'add_csgomodel'),(26,'Can change cs go model',9,'change_csgomodel'),(27,'Can delete cs go model',9,'delete_csgomodel'),(28,'Can add dj night model',10,'add_djnightmodel'),(29,'Can change dj night model',10,'change_djnightmodel'),(30,'Can delete dj night model',10,'delete_djnightmodel'),(31,'Can add drone building workshop model',11,'add_dronebuildingworkshopmodel'),(32,'Can change drone building workshop model',11,'change_dronebuildingworkshopmodel'),(33,'Can delete drone building workshop model',11,'delete_dronebuildingworkshopmodel'),(34,'Can add ethical hacking workshop model',12,'add_ethicalhackingworkshopmodel'),(35,'Can change ethical hacking workshop model',12,'change_ethicalhackingworkshopmodel'),(36,'Can delete ethical hacking workshop model',12,'delete_ethicalhackingworkshopmodel'),(37,'Can add fastest line follower challenge model',13,'add_fastestlinefollowerchallengemodel'),(38,'Can change fastest line follower challenge model',13,'change_fastestlinefollowerchallengemodel'),(39,'Can delete fastest line follower challenge model',13,'delete_fastestlinefollowerchallengemodel'),(40,'Can add fifa19 model',14,'add_fifa19model'),(41,'Can change fifa19 model',14,'change_fifa19model'),(42,'Can delete fifa19 model',14,'delete_fifa19model'),(43,'Can add five_participant',15,'add_five_participant'),(44,'Can change five_participant',15,'change_five_participant'),(45,'Can delete five_participant',15,'delete_five_participant'),(46,'Can add four_participant',16,'add_four_participant'),(47,'Can change four_participant',16,'change_four_participant'),(48,'Can delete four_participant',16,'delete_four_participant'),(49,'Can add fun games model',17,'add_fungamesmodel'),(50,'Can change fun games model',17,'change_fungamesmodel'),(51,'Can delete fun games model',17,'delete_fungamesmodel'),(52,'Can add go cart model',18,'add_gocartmodel'),(53,'Can change go cart model',18,'change_gocartmodel'),(54,'Can delete go cart model',18,'delete_gocartmodel'),(55,'Can add Hackathon',19,'add_hackathonmodel'),(56,'Can change Hackathon',19,'change_hackathonmodel'),(57,'Can delete Hackathon',19,'delete_hackathonmodel'),(58,'Can add individual_participant',20,'add_individual_participant'),(59,'Can change individual_participant',20,'change_individual_participant'),(60,'Can delete individual_participant',20,'delete_individual_participant'),(61,'Can add into the next dimension model',21,'add_intothenextdimensionmodel'),(62,'Can change into the next dimension model',21,'change_intothenextdimensionmodel'),(63,'Can delete into the next dimension model',21,'delete_intothenextdimensionmodel'),(64,'Can add machine learning workshop model',22,'add_machinelearningworkshopmodel'),(65,'Can change machine learning workshop model',22,'change_machinelearningworkshopmodel'),(66,'Can delete machine learning workshop model',22,'delete_machinelearningworkshopmodel'),(67,'Can add NFS Most Wanted',23,'add_nfsmostwantedmodel'),(68,'Can change NFS Most Wanted',23,'change_nfsmostwantedmodel'),(69,'Can delete NFS Most Wanted',23,'delete_nfsmostwantedmodel'),(70,'Can add paintball model',24,'add_paintballmodel'),(71,'Can change paintball model',24,'change_paintballmodel'),(72,'Can delete paintball model',24,'delete_paintballmodel'),(73,'Can add pcb design workshop model',25,'add_pcbdesignworkshopmodel'),(74,'Can change pcb design workshop model',25,'change_pcbdesignworkshopmodel'),(75,'Can delete pcb design workshop model',25,'delete_pcbdesignworkshopmodel'),(76,'Can add pitch it up model',26,'add_pitchitupmodel'),(77,'Can change pitch it up model',26,'change_pitchitupmodel'),(78,'Can delete pitch it up model',26,'delete_pitchitupmodel'),(79,'Can add pradyo geeky model',27,'add_pradyogeekymodel'),(80,'Can change pradyo geeky model',27,'change_pradyogeekymodel'),(81,'Can delete pradyo geeky model',27,'delete_pradyogeekymodel'),(82,'Can add pubg mobile model',28,'add_pubgmobilemodel'),(83,'Can change pubg mobile model',28,'change_pubgmobilemodel'),(84,'Can delete pubg mobile model',28,'delete_pubgmobilemodel'),(85,'Can add robo race model',29,'add_roboracemodel'),(86,'Can change robo race model',29,'change_roboracemodel'),(87,'Can delete robo race model',29,'delete_roboracemodel'),(88,'Can add robo soccer model',30,'add_robosoccermodel'),(89,'Can change robo soccer model',30,'change_robosoccermodel'),(90,'Can delete robo soccer model',30,'delete_robosoccermodel'),(91,'Can add tall building design analysis workshop model',31,'add_tallbuildingdesignanalysisworkshopmodel'),(92,'Can change tall building design analysis workshop model',31,'change_tallbuildingdesignanalysisworkshopmodel'),(93,'Can delete tall building design analysis workshop model',31,'delete_tallbuildingdesignanalysisworkshopmodel'),(94,'Can add the excelsiors quest model',32,'add_theexcelsiorsquestmodel'),(95,'Can change the excelsiors quest model',32,'change_theexcelsiorsquestmodel'),(96,'Can delete the excelsiors quest model',32,'delete_theexcelsiorsquestmodel'),(97,'Can add three_participant',33,'add_three_participant'),(98,'Can change three_participant',33,'change_three_participant'),(99,'Can delete three_participant',33,'delete_three_participant'),(100,'Can add volunteers',34,'add_volunteers'),(101,'Can change volunteers',34,'change_volunteers'),(102,'Can delete volunteers',34,'delete_volunteers'),(103,'Can add event',35,'add_event'),(104,'Can change event',35,'change_event'),(105,'Can delete event',35,'delete_event'),(106,'Can add event_ category',36,'add_event_category'),(107,'Can change event_ category',36,'change_event_category'),(108,'Can delete event_ category',36,'delete_event_category'),(109,'Can add Calendar Event',37,'add_calendar'),(110,'Can change Calendar Event',37,'change_calendar'),(111,'Can delete Calendar Event',37,'delete_calendar'),(112,'Can add Sponsor',38,'add_sponsors'),(113,'Can change Sponsor',38,'change_sponsors'),(114,'Can delete Sponsor',38,'delete_sponsors');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$27TIqwVVaudY$879Z+9f7koSuEbYoA9tJFkJBpZmNuqmnjAm6oKzMgUI=','2019-02-28 01:43:42.282135',1,'AnwaySomani','','','anwaysomani@gmail.com',1,1,'2019-02-28 01:43:31.220872'),(2,'pbkdf2_sha256$36000$3iDUmFve3raD$mk4xGtcI6CoHd1VNvoF/VTfCMLmYbQtlnwnkhwPJvf0=','2019-03-03 14:23:19.364886',0,'Tanay','Tanay','Mitkari','tanaymitkari1@gmail.com',1,1,'2019-03-03 09:54:27.000000'),(3,'pbkdf2_sha256$36000$gOH6zASnU5P8$CiBHV+oFjYMwf552N6EMxTRWUV5E07wBqjQht9apHn4=','2019-03-06 11:21:37.682634',1,'BiswajeetChampaty','Biswajeet','Champaty','biswajeet.champaty@adypu.edu.in',1,1,'2019-03-06 11:20:13.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,109),(2,2,110),(3,2,111);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-02-28 01:47:23.181831','1','Competitions',1,'[{\"added\": {}}]',36,1),(2,'2019-02-28 01:47:27.796090','2','Gaming',1,'[{\"added\": {}}]',36,1),(3,'2019-02-28 01:47:35.745088','3','Fun Events',1,'[{\"added\": {}}]',36,1),(4,'2019-02-28 01:47:41.909454','4','Workshops',1,'[{\"added\": {}}]',36,1),(5,'2019-02-28 01:49:48.826139','1','Robo Soccer',1,'[{\"added\": {}}]',35,1),(6,'2019-02-28 01:52:37.528269','2','Fastest Line Follower Challenge',1,'[{\"added\": {}}]',35,1),(7,'2019-02-28 01:54:39.347068','3','Pradyo-Geeky',1,'[{\"added\": {}}]',35,1),(8,'2019-02-28 01:56:57.658890','4','Robo Race',1,'[{\"added\": {}}]',35,1),(9,'2019-02-28 01:57:16.781161','5','Hackathon',1,'[{\"added\": {}}]',35,1),(10,'2019-02-28 02:00:42.400111','6','Pitch-It-Up',1,'[{\"added\": {}}]',35,1),(11,'2019-02-28 02:01:27.890193','7','Tall Building Design Analysis Workshop',1,'[{\"added\": {}}]',35,1),(12,'2019-02-28 02:01:45.809765','8','Ethical Hacking Workshop',1,'[{\"added\": {}}]',35,1),(13,'2019-02-28 02:02:13.293830','9','Python & Machine LEarning Workshop',1,'[{\"added\": {}}]',35,1),(14,'2019-02-28 02:02:33.706305','10','Drone Building Workshop',1,'[{\"added\": {}}]',35,1),(15,'2019-02-28 02:03:12.194893','11','GoKart Designing Workshop',1,'[{\"added\": {}}]',35,1),(16,'2019-02-28 02:03:33.476771','12','PCB Designing Workshop',1,'[{\"added\": {}}]',35,1),(17,'2019-02-28 02:04:10.102470','13','PUBG Mobile',1,'[{\"added\": {}}]',35,1),(18,'2019-02-28 02:04:33.357394','14','NFS Most Wanted',1,'[{\"added\": {}}]',35,1),(19,'2019-02-28 02:04:58.944822','15','CS Go',1,'[{\"added\": {}}]',35,1),(20,'2019-02-28 02:05:12.700955','16','FIFA 19',1,'[{\"added\": {}}]',35,1),(21,'2019-02-28 02:09:57.987718','17','The Excelsiors Quest',1,'[{\"added\": {}}]',35,1),(22,'2019-02-28 02:10:31.622959','18','The Ultimate Paintball Tournament',1,'[{\"added\": {}}]',35,1),(23,'2019-02-28 02:10:53.085998','19','Bike Show',1,'[{\"added\": {}}]',35,1),(24,'2019-02-28 02:15:14.076601','20','Into The Next Dimension',1,'[{\"added\": {}}]',35,1),(25,'2019-02-28 02:15:34.208740','21','Live DJ Night',1,'[{\"added\": {}}]',35,1),(26,'2019-02-28 02:16:44.702191','1','Anway Somani',1,'[{\"added\": {}}]',8,1),(27,'2019-02-28 02:17:50.992356','1','Anway Somani',3,'',8,1),(28,'2019-02-28 06:01:43.545655','1','Anway Somani',1,'[{\"added\": {}}]',8,1),(29,'2019-02-28 06:02:44.462564','2','Shubham Nandi',1,'[{\"added\": {}}]',8,1),(30,'2019-02-28 06:04:00.451298','3','Tanay Mitkari',1,'[{\"added\": {}}]',8,1),(31,'2019-02-28 06:05:08.822984','4','Manish Thakur',1,'[{\"added\": {}}]',8,1),(32,'2019-02-28 06:07:09.224955','5','G Santosh',1,'[{\"added\": {}}]',8,1),(33,'2019-02-28 06:08:49.100353','6','Kshitij Raje',1,'[{\"added\": {}}]',8,1),(34,'2019-02-28 06:09:24.284439','7','Kshitij Raje',1,'[{\"added\": {}}]',8,1),(35,'2019-02-28 06:09:40.650805','7','Kshitij Raje',3,'',8,1),(36,'2019-02-28 06:09:40.656642','6','Kshitij Raje',3,'',8,1),(37,'2019-02-28 06:10:05.787320','8','Kshitij Raje',1,'[{\"added\": {}}]',8,1),(38,'2019-02-28 06:10:52.452368','9','Darshan Lad',1,'[{\"added\": {}}]',8,1),(39,'2019-02-28 06:11:38.861332','10','Etisha Gurav',1,'[{\"added\": {}}]',8,1),(40,'2019-02-28 06:12:59.677807','11','Yatish Kumavat',1,'[{\"added\": {}}]',8,1),(41,'2019-02-28 06:13:35.260367','12','Pranshu Tople',1,'[{\"added\": {}}]',8,1),(42,'2019-02-28 06:14:20.132745','13','Pallavi Saha',1,'[{\"added\": {}}]',8,1),(43,'2019-02-28 06:14:51.702692','14','Tasneem Khan',1,'[{\"added\": {}}]',8,1),(44,'2019-02-28 06:15:41.088023','15','Pallavi Saha',1,'[{\"added\": {}}]',8,1),(45,'2019-02-28 06:16:20.201086','16','Tasneem Khan',1,'[{\"added\": {}}]',8,1),(46,'2019-02-28 06:16:56.251291','17','Minerva Sarma',1,'[{\"added\": {}}]',8,1),(47,'2019-02-28 06:17:34.626619','18','Pankaj Penmetcha',1,'[{\"added\": {}}]',8,1),(48,'2019-02-28 06:18:08.049847','19','Dhawal Patil',1,'[{\"added\": {}}]',8,1),(49,'2019-02-28 06:18:47.797930','20','Abhinav Tripathi',1,'[{\"added\": {}}]',8,1),(50,'2019-02-28 06:33:33.235423','1','Anway Somani',3,'',23,1),(51,'2019-02-28 06:35:11.119187','2','Anway Somani',3,'',23,1),(52,'2019-02-28 06:39:13.867069','3','Anway Somani',3,'',23,1),(53,'2019-02-28 06:40:35.461084','4','Anway Somani',3,'',23,1),(54,'2019-02-28 06:42:05.069258','5','Anway Somani',3,'',23,1),(55,'2019-02-28 06:45:02.303078','6','Anway Somani',3,'',23,1),(56,'2019-02-28 06:48:06.121192','7','Anway Somani',3,'',23,1),(57,'2019-02-28 06:51:48.822852','8','Anway Somani',3,'',23,1),(58,'2019-02-28 06:52:47.433067','9','Anway Somani',3,'',23,1),(59,'2019-02-28 06:53:25.414139','10','Anway Somani',3,'',23,1),(60,'2019-02-28 06:54:30.768577','11','Anway Somani',3,'',23,1),(61,'2019-02-28 06:55:47.065979','12','Anway Somani',3,'',23,1),(62,'2019-02-28 06:59:05.652858','13','Anway Somani',3,'',23,1),(63,'2019-02-28 06:59:40.996875','14','Anway Somani',3,'',23,1),(64,'2019-02-28 07:01:31.866258','15','anway',3,'',23,1),(65,'2019-02-28 07:06:29.819147','16','anway',3,'',23,1),(66,'2019-02-28 07:06:51.184248','17','anway',3,'',23,1),(67,'2019-02-28 07:13:49.241031','18','Anway Somani',3,'',23,1),(68,'2019-02-28 07:30:17.763482','20','aditya Somani',3,'',23,1),(69,'2019-02-28 07:30:17.773063','19','Anway Somani',3,'',23,1),(70,'2019-02-28 07:31:52.274346','21','Anway Somani',3,'',23,1),(71,'2019-02-28 07:32:31.980801','22','Anway Somani',3,'',23,1),(72,'2019-02-28 12:52:48.886834','18','Paintball',2,'[{\"changed\": {\"fields\": [\"event_name\", \"description\"]}}]',35,1),(73,'2019-02-28 12:53:30.571206','18','Paintball',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(74,'2019-02-28 12:55:16.311894','21','Hrishikesh Naik',1,'[{\"added\": {}}]',8,1),(75,'2019-02-28 12:56:03.043839','18','Paintball',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(76,'2019-02-28 14:25:06.205938','1','Robo Soccer',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(77,'2019-02-28 14:36:35.463530','1','Pilot',3,'',30,1),(78,'2019-02-28 15:08:50.364723','4','Harshal Singh',1,'[{\"added\": {}}]',34,1),(79,'2019-02-28 15:09:07.121152','5','Rutuja',1,'[{\"added\": {}}]',34,1),(80,'2019-02-28 15:09:26.937226','6','Amey Sawant',1,'[{\"added\": {}}]',34,1),(81,'2019-02-28 15:10:35.796818','7','Sheldon',1,'[{\"added\": {}}]',34,1),(82,'2019-02-28 15:10:58.133396','7','Vinit Patil',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',34,1),(83,'2019-02-28 15:11:18.626267','8','Jaysd Shaikh',1,'[{\"added\": {}}]',34,1),(84,'2019-02-28 15:11:28.837840','9','Sheldon',1,'[{\"added\": {}}]',34,1),(85,'2019-02-28 15:11:41.937843','10','Andhu Singh',1,'[{\"added\": {}}]',34,1),(86,'2019-02-28 15:12:40.425890','11','Shivani',1,'[{\"added\": {}}]',34,1),(87,'2019-02-28 15:12:51.850521','12','Harshada',1,'[{\"added\": {}}]',34,1),(88,'2019-02-28 15:13:06.552153','13','Vighnesh',1,'[{\"added\": {}}]',34,1),(89,'2019-02-28 15:13:24.919267','14','Nandini Kumar',1,'[{\"added\": {}}]',34,1),(90,'2019-02-28 15:13:39.961814','15','Shivaji Patil',1,'[{\"added\": {}}]',34,1),(91,'2019-02-28 15:13:57.594488','16','Aditi Rao',1,'[{\"added\": {}}]',34,1),(92,'2019-02-28 15:14:10.657476','17','Muskan Agarwal',1,'[{\"added\": {}}]',34,1),(93,'2019-02-28 15:14:22.375570','18','Sarvesh Angadi',1,'[{\"added\": {}}]',34,1),(94,'2019-02-28 15:14:44.680879','19','Pradnya Kambley',1,'[{\"added\": {}}]',34,1),(95,'2019-02-28 16:16:21.129048','20','Jay Vyas',1,'[{\"added\": {}}]',34,1),(96,'2019-02-28 16:16:39.435556','21','Siddharth Singh',1,'[{\"added\": {}}]',34,1),(97,'2019-02-28 16:17:36.665360','22','Vishal Dudgikar',1,'[{\"added\": {}}]',34,1),(98,'2019-02-28 16:17:53.106838','23','Tapan Shah',1,'[{\"added\": {}}]',34,1),(99,'2019-02-28 16:18:42.463906','24','Sonu Kangade',1,'[{\"added\": {}}]',34,1),(100,'2019-02-28 17:03:32.316344','8','Jaysd Shaikh',2,'[{\"changed\": {\"fields\": [\"mobile\"]}}]',34,1),(101,'2019-02-28 17:04:00.303641','8','Jaysd Shaikh',2,'[{\"changed\": {\"fields\": [\"mobile\"]}}]',34,1),(102,'2019-03-02 09:05:54.173119','2','Anway Somani',3,'',12,1),(103,'2019-03-02 09:06:28.737240','3','Anway Somani',3,'',12,1),(104,'2019-03-02 09:08:56.317017','4','Anway Somani',3,'',12,1),(105,'2019-03-02 09:10:15.683967','5','Anway Somani',3,'',12,1),(106,'2019-03-02 13:06:58.760713','2','Anway Somani',3,'',19,1),(107,'2019-03-02 13:09:07.541423','3','Anway Somani',3,'',19,1),(108,'2019-03-02 13:13:38.972593','4','Anway Somani',3,'',19,1),(109,'2019-03-02 13:35:25.176458','5','Anway Somani',3,'',19,1),(110,'2019-03-02 13:36:19.628033','6','Anway Somani',3,'',19,1),(111,'2019-03-02 13:41:15.541612','7','Anway Somani',3,'',19,1),(112,'2019-03-02 13:47:01.974692','8','Kanika Kapoor',3,'',19,1),(113,'2019-03-02 13:48:13.833413','9','Kanika Kapoor',3,'',19,1),(114,'2019-03-02 13:49:52.934129','10','Kanika Kapoor',3,'',19,1),(115,'2019-03-02 13:53:06.031012','11','Kanika Kapoor',3,'',19,1),(116,'2019-03-02 13:54:59.038586','12','Kanika Kapoor',3,'',19,1),(117,'2019-03-02 13:56:03.674568','13','Kanika Kapoor',3,'',19,1),(118,'2019-03-03 07:22:07.765188','6','Anway Somani',3,'',12,1),(119,'2019-03-03 07:22:07.774860','1','Biswajeet',3,'',12,1),(120,'2019-03-03 07:22:31.971001','1','Pilot',3,'',13,1),(121,'2019-03-03 07:22:51.178943','14','Kanika Kapoor',3,'',19,1),(122,'2019-03-03 07:22:51.184676','1','tanay',3,'',19,1),(123,'2019-03-03 07:28:46.640538','23','Anway Somani',3,'',23,1),(124,'2019-03-03 07:29:35.786198','1','Pilot',3,'',24,1),(125,'2019-03-03 07:29:45.526288','1','Pilot',3,'',29,1),(126,'2019-03-03 07:29:51.945560','3','Tanay',3,'',30,1),(127,'2019-03-03 07:29:51.950503','2','Pilot',3,'',30,1),(128,'2019-03-03 08:57:55.164355','16','FIFA 19',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(129,'2019-03-03 08:58:59.270462','14','NFS Most Wanted',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(130,'2019-03-03 09:00:21.080821','13','PUBG Mobile',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(131,'2019-03-03 09:01:14.814362','15','CS Go',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(132,'2019-03-03 09:02:32.110964','14','NFS Most Wanted',2,'[]',35,1),(133,'2019-03-03 09:46:51.649619','1','Calendar object',1,'[{\"added\": {}}]',37,1),(134,'2019-03-03 09:50:05.539150','1','Robo Soccer',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',37,1),(135,'2019-03-03 09:54:27.772740','2','Tanay',1,'[{\"added\": {}}]',4,1),(136,'2019-03-03 09:55:12.765487','2','Tanay',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"user_permissions\"]}}]',4,1),(137,'2019-03-03 14:16:44.996721','2','Tanay',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',4,1),(138,'2019-03-03 14:37:50.553820','2','Fastest Line Follower Challange',1,'[{\"added\": {}}]',37,2),(139,'2019-03-03 16:28:59.998923','2','Fastest Line Follower Challange',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,2),(140,'2019-03-03 16:32:36.493152','3','Robo Race',1,'[{\"added\": {}}]',37,2),(141,'2019-03-03 16:34:01.801260','4','Hackathon',1,'[{\"added\": {}}]',37,2),(142,'2019-03-03 16:35:20.294603','5','Pitch it up',1,'[{\"added\": {}}]',37,2),(143,'2019-03-03 16:36:30.946855','6','Pradyo-Geeky',1,'[{\"added\": {}}]',37,2),(144,'2019-03-03 16:39:09.588000','7','The Excelsior\'s Quest',1,'[{\"added\": {}}]',37,2),(145,'2019-03-03 16:40:35.062995','8','The Ultimate Paintball Tournament',1,'[{\"added\": {}}]',37,2),(146,'2019-03-03 16:41:56.686901','9','Into The Next Dimention',1,'[{\"added\": {}}]',37,2),(147,'2019-03-03 16:43:20.188903','10','Drone Building Workshop',1,'[{\"added\": {}}]',37,2),(148,'2019-03-03 16:44:27.616127','11','Ethical Hacking',1,'[{\"added\": {}}]',37,2),(149,'2019-03-03 16:45:39.401587','12','Python and Machine Learning',1,'[{\"added\": {}}]',37,2),(150,'2019-03-03 16:49:31.201909','13','PUBG-Mobile',1,'[{\"added\": {}}]',37,2),(151,'2019-03-03 16:50:25.832673','14','CS-Go',1,'[{\"added\": {}}]',37,2),(152,'2019-03-03 17:41:56.892757','15','FIFA 19',1,'[{\"added\": {}}]',37,2),(153,'2019-03-03 17:42:52.090047','16','NFS-Most-Wanted',1,'[{\"added\": {}}]',37,2),(154,'2019-03-03 17:43:46.888073','17','PCB-Design-Workshop',1,'[{\"added\": {}}]',37,2),(155,'2019-03-03 17:44:31.597257','18','Building-Design-Analysis-Workshop',1,'[{\"added\": {}}]',37,2),(156,'2019-03-03 21:34:04.069417','18','Building-Design-Analysis-Workshop',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(157,'2019-03-03 21:37:58.586544','18','Building-Design-Analysis-Workshop',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(158,'2019-03-03 21:40:44.490050','2','Fastest Line Follower Challange',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(159,'2019-03-03 22:00:20.510228','8','The Ultimate Paintball Tournament',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',37,1),(160,'2019-03-03 22:00:40.034843','9','Into The Next Dimention',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',37,1),(161,'2019-03-03 22:00:54.073618','10','Drone Building Workshop',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',37,1),(162,'2019-03-03 22:01:20.935743','11','Ethical Hacking',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',37,1),(163,'2019-03-03 22:01:33.102571','15','FIFA 19',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',37,1),(164,'2019-03-03 22:02:30.469347','18','Building-Design-Analysis-Workshop',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(165,'2019-03-03 22:08:40.836878','18','Building-Design-Analysis-Workshop',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(166,'2019-03-03 22:09:15.003208','18','Building-Design-Analysis-Workshop',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(167,'2019-03-03 22:09:39.243913','18','Building-Design-Analysis-Workshop',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(168,'2019-03-03 22:10:26.126975','17','PCB-Design-Workshop',2,'[{\"changed\": {\"fields\": [\"date\", \"url\"]}}]',37,1),(169,'2019-03-03 22:10:49.360417','16','NFS-Most-Wanted',2,'[{\"changed\": {\"fields\": [\"date\", \"url\"]}}]',37,1),(170,'2019-03-03 22:11:27.756781','15','FIFA 19',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(171,'2019-03-03 22:11:54.407415','14','CS-Go',2,'[{\"changed\": {\"fields\": [\"date\", \"url\"]}}]',37,1),(172,'2019-03-03 22:12:08.868990','13','PUBG-Mobile',2,'[{\"changed\": {\"fields\": [\"date\", \"url\"]}}]',37,1),(173,'2019-03-03 22:12:55.100827','12','Python and Machine Learning',2,'[{\"changed\": {\"fields\": [\"date\", \"url\"]}}]',37,1),(174,'2019-03-03 22:14:16.608790','11','Ethical Hacking',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(175,'2019-03-03 22:15:07.274689','10','Drone Building Workshop',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(176,'2019-03-03 22:15:16.040219','9','Into The Next Dimention',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(177,'2019-03-03 22:15:28.806009','8','The Ultimate Paintball Tournament',2,'[{\"changed\": {\"fields\": [\"time\", \"url\"]}}]',37,1),(178,'2019-03-03 22:15:41.817441','7','The Excelsior\'s Quest',2,'[{\"changed\": {\"fields\": [\"date\", \"time\", \"url\"]}}]',37,1),(179,'2019-03-03 22:15:53.837602','6','Pradyo-Geeky',2,'[{\"changed\": {\"fields\": [\"time\", \"url\"]}}]',37,1),(180,'2019-03-03 22:16:30.304712','5','Pitch-It-Up',2,'[{\"changed\": {\"fields\": [\"event\", \"time\", \"url\"]}}]',37,1),(181,'2019-03-03 22:16:49.087203','4','Hackathon',2,'[{\"changed\": {\"fields\": [\"date\", \"time\", \"url\"]}}]',37,1),(182,'2019-03-03 22:17:02.266495','3','Robo Race',2,'[{\"changed\": {\"fields\": [\"time\", \"url\"]}}]',37,1),(183,'2019-03-03 22:17:23.737331','2','Fastest Line Follower Challange',2,'[{\"changed\": {\"fields\": [\"time\", \"url\"]}}]',37,1),(184,'2019-03-03 22:17:37.733995','1','Robo Soccer',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',37,1),(185,'2019-03-03 22:18:47.387779','12','Python and Machine Learning',2,'[{\"changed\": {\"fields\": [\"time\"]}}]',37,1),(186,'2019-03-03 22:19:15.414956','13','PUBG-Mobile',2,'[{\"changed\": {\"fields\": [\"time\"]}}]',37,1),(187,'2019-03-03 22:19:28.753236','14','CS-Go',2,'[{\"changed\": {\"fields\": [\"time\"]}}]',37,1),(188,'2019-03-03 22:19:35.832624','15','FIFA 19',2,'[{\"changed\": {\"fields\": [\"time\"]}}]',37,1),(189,'2019-03-03 22:19:46.868692','16','NFS-Most-Wanted',2,'[{\"changed\": {\"fields\": [\"time\"]}}]',37,1),(190,'2019-03-03 22:19:54.940753','17','PCB-Design-Workshop',2,'[{\"changed\": {\"fields\": [\"time\"]}}]',37,1),(191,'2019-03-03 22:20:02.262710','18','Building-Design-Analysis-Workshop',2,'[{\"changed\": {\"fields\": [\"time\"]}}]',37,1),(192,'2019-03-03 22:20:24.685726','18','Building-Design-Analysis-Workshop',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',37,1),(193,'2019-03-05 11:53:08.970266','9','Darshan Chaudhari',2,'[{\"changed\": {\"fields\": [\"firstName\", \"name\", \"email\"]}}]',8,1),(194,'2019-03-05 11:54:38.380404','22','Pranshu Tople',1,'[{\"added\": {}}]',8,1),(195,'2019-03-05 11:55:22.943437','23','Yatish Kumavat',1,'[{\"added\": {}}]',8,1),(196,'2019-03-05 11:56:15.609080','24','Hemendra Lalawat',1,'[{\"added\": {}}]',8,1),(197,'2019-03-05 11:57:52.218859','25','Priyanka Radhanpura',1,'[{\"added\": {}}]',8,1),(198,'2019-03-05 11:58:45.013061','26','Minerva Sarma',1,'[{\"added\": {}}]',8,1),(199,'2019-03-05 11:59:21.859837','27','Gokul Menon',1,'[{\"added\": {}}]',8,1),(200,'2019-03-05 12:01:13.787945','28','Shivani Radhanpura',1,'[{\"added\": {}}]',8,1),(201,'2019-03-05 12:02:06.025657','29','Dhruvin Jasani',1,'[{\"added\": {}}]',8,1),(202,'2019-03-05 16:30:58.747403','1','HackerEarth Inc',1,'[{\"added\": {}}]',38,1),(203,'2019-03-05 16:31:14.001585','2','Dalvik Apps',1,'[{\"added\": {}}]',38,1),(204,'2019-03-05 16:31:44.091333','3','International Organization of Software Developers',1,'[{\"added\": {}}]',38,1),(205,'2019-03-05 16:31:57.590854','4','Onyomarx',1,'[{\"added\": {}}]',38,1),(206,'2019-03-05 16:32:13.385708','5','Drona Aviation',1,'[{\"added\": {}}]',38,1),(207,'2019-03-05 16:32:33.532712','6','Society of Hydraulics and Automation',1,'[{\"added\": {}}]',38,1),(208,'2019-03-05 16:32:46.238056','7','Nexus MotorSport',1,'[{\"added\": {}}]',38,1),(209,'2019-03-05 16:33:02.623364','8','The Souled Store',1,'[{\"added\": {}}]',38,1),(210,'2019-03-05 16:33:24.119296','9','WeCan Educational Organization',1,'[{\"added\": {}}]',38,1),(211,'2019-03-05 16:33:57.703679','10','Skillenza',1,'[{\"added\": {}}]',38,1),(212,'2019-03-05 17:15:01.527165','Test','Test',3,'',9,1),(213,'2019-03-05 17:15:01.534618','dlad','dlad',3,'',9,1),(214,'2019-03-05 17:15:12.178279','1','dd',3,'',11,1),(215,'2019-03-05 17:15:22.790342','9','ddd',3,'',12,1),(216,'2019-03-05 17:15:22.795504','8','Kanika Kapoor',3,'',12,1),(217,'2019-03-05 17:15:22.798347','7','Test',3,'',12,1),(218,'2019-03-05 17:15:50.034056','4','dlad',3,'',13,1),(219,'2019-03-05 17:15:50.042863','3','try',3,'',13,1),(220,'2019-03-05 17:15:50.045879','2','Tets',3,'',13,1),(221,'2019-03-05 17:15:58.295297','16','dd',3,'',19,1),(222,'2019-03-05 17:15:58.299817','15','Test',3,'',19,1),(223,'2019-03-05 17:16:04.785951','2','dd',3,'',21,1),(224,'2019-03-05 17:16:04.791077','1','Test',3,'',21,1),(225,'2019-03-05 17:16:41.759142','4','Minerva srama',3,'',22,1),(226,'2019-03-05 17:16:41.764258','3','dd',3,'',22,1),(227,'2019-03-05 17:16:41.767432','1','Test',3,'',22,1),(228,'2019-03-05 17:16:48.068542','25','dd',3,'',23,1),(229,'2019-03-05 17:16:48.076512','24','Test',3,'',23,1),(230,'2019-03-05 17:16:54.303862','2','ddd',3,'',25,1),(231,'2019-03-05 17:16:54.308829','1','Test',3,'',25,1),(232,'2019-03-05 17:17:01.164016','2','dlad',3,'',26,1),(233,'2019-03-05 17:17:01.176041','1','Test',3,'',26,1),(234,'2019-03-05 17:17:06.857683','2','dlad',3,'',28,1),(235,'2019-03-05 17:17:06.864039','1','Test',3,'',28,1),(236,'2019-03-05 17:17:29.010176','3','Team',3,'',27,1),(237,'2019-03-05 17:17:29.016205','2','dlad',3,'',27,1),(238,'2019-03-05 17:17:29.021710','1','Test',3,'',27,1),(239,'2019-03-05 17:17:35.106419','3','dlad',3,'',29,1),(240,'2019-03-05 17:17:35.125336','2','Test',3,'',29,1),(241,'2019-03-05 17:17:47.497064','5','dlad',3,'',30,1),(242,'2019-03-05 17:17:47.511794','4','Twts',3,'',30,1),(243,'2019-03-05 17:17:53.303394','2','dd',3,'',31,1),(244,'2019-03-05 17:17:53.319948','1','Test',3,'',31,1),(245,'2019-03-05 17:17:58.011721','2','dd',3,'',32,1),(246,'2019-03-05 17:17:58.019148','1','Test',3,'',32,1),(247,'2019-03-05 20:10:42.148422','2','Sample Trial',3,'',24,1),(248,'2019-03-05 20:19:38.917784','Team1','Team1',3,'',9,1),(249,'2019-03-05 20:35:31.172288','19','Pradnya Kambley',3,'',34,1),(250,'2019-03-05 20:35:31.177408','18','Sarvesh Angadi',3,'',34,1),(251,'2019-03-05 21:35:08.922743','30','Yatish Kumavat',1,'[{\"added\": {}}]',8,1),(252,'2019-03-05 21:35:13.514608','23','Yatish Kumavat',3,'',8,1),(253,'2019-03-05 21:37:52.196616','10','Etisha Gurav',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',8,1),(254,'2019-03-05 21:38:02.409038','10','Etisha Gurav',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',8,1),(255,'2019-03-05 21:43:04.055058','5','Hackathon',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(256,'2019-03-05 21:44:17.893138','25','Rakesh Kadam',1,'[{\"added\": {}}]',34,1),(257,'2019-03-05 21:44:40.342271','26','Sayli Ambore',1,'[{\"added\": {}}]',34,1),(258,'2019-03-05 21:45:05.733918','27','Kanika Kapoor',1,'[{\"added\": {}}]',34,1),(259,'2019-03-05 22:08:03.717679','9','Python & Machine Learning Workshop',2,'[{\"changed\": {\"fields\": [\"event_name\", \"description\"]}}]',35,1),(260,'2019-03-05 22:08:22.969688','9','Python & Machine Learning Workshop',2,'[]',35,1),(261,'2019-03-05 22:11:30.742052','9','Python & Machine Learning Workshop',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(262,'2019-03-06 03:59:01.461475','8','Ethical Hacking Workshop',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',35,1),(263,'2019-03-06 11:20:13.743021','3','BiswajeetChampaty',1,'[{\"added\": {}}]',4,1),(264,'2019-03-06 11:21:19.267594','3','BiswajeetChampaty',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"is_superuser\"]}}]',4,1),(265,'2019-03-06 11:36:14.350036','9','Darshan Chaudhari',2,'[{\"changed\": {\"fields\": [\"firstName\"]}}]',8,1),(266,'2019-03-06 11:37:29.142809','28','Akshay Kapadnis',1,'[{\"added\": {}}]',34,1),(267,'2019-03-06 11:37:50.966521','29','Niraj Sarvaiya',1,'[{\"added\": {}}]',34,1),(268,'2019-03-06 11:38:16.089532','30','Shubh Shah',1,'[{\"added\": {}}]',34,1),(269,'2019-03-06 11:38:30.148637','31','Aditi Joshi',1,'[{\"added\": {}}]',34,1),(270,'2019-03-06 11:38:51.524795','32','Shalu',1,'[{\"added\": {}}]',34,1),(271,'2019-03-06 11:39:11.663978','33','Mrudul',1,'[{\"added\": {}}]',34,1),(272,'2019-03-06 11:46:53.064466','33','Mrudul Pawar',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',34,1),(273,'2019-03-06 11:47:02.024325','32','Shalu Gopinathan',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',34,1),(274,'2019-03-06 11:47:16.187829','34','Vidit Kesarvani',1,'[{\"added\": {}}]',34,1),(275,'2019-03-06 11:47:30.682372','35','Vaishnavi Arsekar',1,'[{\"added\": {}}]',34,1),(276,'2019-03-06 11:59:15.773404','29','Dhruvin Jasani',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',8,1),(277,'2019-03-06 12:01:31.206637','Sample Trial','Sample Trial',3,'',9,1),(278,'2019-03-06 18:52:34.517447','1','Sample Team Name',1,'[{\"added\": {}}]',29,1),(279,'2019-03-06 18:54:28.073552','1','Sample Team Name',3,'',29,1),(280,'2019-03-06 18:55:40.026997','2','Sample Team',3,'',29,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'event_info','book'),(37,'event_info','calendar'),(38,'event_info','sponsors'),(8,'registration','coordinators'),(9,'registration','csgomodel'),(10,'registration','djnightmodel'),(11,'registration','dronebuildingworkshopmodel'),(12,'registration','ethicalhackingworkshopmodel'),(35,'registration','event'),(36,'registration','event_category'),(13,'registration','fastestlinefollowerchallengemodel'),(14,'registration','fifa19model'),(15,'registration','five_participant'),(16,'registration','four_participant'),(17,'registration','fungamesmodel'),(18,'registration','gocartmodel'),(19,'registration','hackathonmodel'),(20,'registration','individual_participant'),(21,'registration','intothenextdimensionmodel'),(22,'registration','machinelearningworkshopmodel'),(23,'registration','nfsmostwantedmodel'),(24,'registration','paintballmodel'),(25,'registration','pcbdesignworkshopmodel'),(26,'registration','pitchitupmodel'),(27,'registration','pradyogeekymodel'),(28,'registration','pubgmobilemodel'),(29,'registration','roboracemodel'),(30,'registration','robosoccermodel'),(31,'registration','tallbuildingdesignanalysisworkshopmodel'),(32,'registration','theexcelsiorsquestmodel'),(33,'registration','three_participant'),(34,'registration','volunteers'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-02-28 01:38:34.621465'),(2,'auth','0001_initial','2019-02-28 01:38:35.342751'),(3,'admin','0001_initial','2019-02-28 01:38:35.505042'),(4,'admin','0002_logentry_remove_auto_add','2019-02-28 01:38:35.550441'),(5,'contenttypes','0002_remove_content_type_name','2019-02-28 01:38:35.694145'),(6,'auth','0002_alter_permission_name_max_length','2019-02-28 01:38:35.827139'),(7,'auth','0003_alter_user_email_max_length','2019-02-28 01:38:35.906178'),(8,'auth','0004_alter_user_username_opts','2019-02-28 01:38:35.985315'),(9,'auth','0005_alter_user_last_login_null','2019-02-28 01:38:36.037744'),(10,'auth','0006_require_contenttypes_0002','2019-02-28 01:38:36.044229'),(11,'auth','0007_alter_validators_add_error_messages','2019-02-28 01:38:36.077832'),(12,'auth','0008_alter_user_username_max_length','2019-02-28 01:38:36.145872'),(13,'event_info','0001_initial','2019-02-28 01:38:36.187588'),(15,'sessions','0001_initial','2019-02-28 01:42:36.625421'),(16,'registration','0002_remove_coordinators_eventname','2019-02-28 01:44:39.952910'),(26,'event_info','0002_auto_20190303_0939','2019-03-03 09:39:44.311797'),(27,'event_info','0003_auto_20190303_2136','2019-03-03 21:36:51.130191'),(28,'event_info','0004_sponsors','2019-03-05 16:29:33.497708'),(29,'event_info','0005_sponsors_link','2019-03-05 16:48:40.436996'),(30,'event_info','0006_delete_sponsors','2019-03-05 17:14:02.926584');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('mzngufip0isre2yivf6g83gunc13uza7','OWQ0YTQyMWU1N2U4ODVmNDlkZjNhY2I3OGQ0MzlmOTE2YzIzYzY5MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVlMTlkOTNhMTJiNjQwMmE5MDY2OWEwNDhmNjQ4MzcwZjdkNWYwMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-03-14 01:43:42.290653'),('pgwfjzojl3gh3qh9hincl1mb1wuzx4wp','ZDBmZjBkNzhiZjA1ZWJiNDY3ZTFlZTg2ZDgzMzYyMjNmNWQ0NTRiZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2MjE4NzQ4Nzg3MTg3OWNjMjBlNDVmNGQwYzRlZjRkNWE3YzRkMjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2019-03-17 14:23:19.373965'),('s3ko59wo58yk9fwurgblzak3g1ez4zq8','NDk3MjZlYTExZjY5YWRiNGFhYjkyM2E5NGRjMjIxYjdlYjlkMzE2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwZTlhZjUyNzdlYzA4MWEyNDZjMzRlNzA5MTU4MDEzMGE5YTVhNmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2019-03-20 11:21:37.691634');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_info_calendar`
--

DROP TABLE IF EXISTS `event_info_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_info_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  `event` varchar(50) NOT NULL,
  `time` varchar(40) NOT NULL,
  `category` varchar(40) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_info_calendar`
--

LOCK TABLES `event_info_calendar` WRITE;
/*!40000 ALTER TABLE `event_info_calendar` DISABLE KEYS */;
INSERT INTO `event_info_calendar` VALUES (1,'01soccer','28','Robo Soccer','09 am to 06 pm','Competition','Robo-Soccer'),(2,'02line','28','Fastest Line Follower Challange','09 am to 06 pm','Competition','Fastest-Line-Follower-Challenge'),(3,'03roborace','28','Robo Race','09 am to 06 pm','Competition','Robo-Race'),(4,'04hackathon','28','Hackathon','09 am to 06 pm','Competition','Hackathon'),(5,'05business','29','Pitch-It-Up','09 am to 06 pm','Competition','Pitch-It-Up'),(6,'06project','28','Pradyo-Geeky','09 am to 06 pm','Competition','Pradyo-Geeky'),(7,'07quest','28','The Excelsior\'s Quest','09 am to 06 pm','Fun Attraction','The-Excelsiors-Quest'),(8,'08paintball','28','The Ultimate Paintball Tournament','09 am to 06 pm','Fun Attraction','Paintball'),(9,'09vr','26','Into The Next Dimention','09 am to 06pm','Fun Attraction','Into-The-Next-Dimension'),(10,'10drone','26','Drone Building Workshop','09 am to 06pm','Workshops','Drone-Building-Workshop'),(11,'11ethhacking','30','Ethical Hacking','09 am to 06pm','Workshops','Ethical-Hacking-Workshop'),(12,'12ML','26','Python and Machine Learning','09 am to 06 pm','Workshops','Machine-Learning-Workshop'),(13,'13pubg','26','PUBG-Mobile','09 am to 06 pm','Gaming Event','PUBG-Mobile'),(14,'14csgo','26','CS-Go','09 am to 06 pm','Gaming Event','CS-Go'),(15,'15fifa','26','FIFA 19','09 am to 06 pm','Gaming Event','Fifa-19'),(16,'16nfs','26','NFS-Most-Wanted','09 am to 06 pm','Gaming Event','NFS-Most-Wanted'),(17,'pcb','26','PCB-Design-Workshop','09 am to 06 pm','Workshops','PCB-Design-Workshop'),(18,'tall','26','Building-Design-Analysis-Workshop','09 am to 06 pm','Workshops','Building-Design-Analysis-Workshop');
/*!40000 ALTER TABLE `event_info_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_coordinators`
--

DROP TABLE IF EXISTS `registration_coordinators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_coordinators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `event` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_coordinators`
--

LOCK TABLES `registration_coordinators` WRITE;
/*!40000 ALTER TABLE `registration_coordinators` DISABLE KEYS */;
INSERT INTO `registration_coordinators` VALUES (1,'anway','Anway Somani','anway.somani@adypu.edu.in','9096052940','Hackathon'),(2,'shubham','Shubham Nandi','shubham.nandi@gmail.com','9970367853','Hackathon'),(3,'tanay','Tanay Mitkari','tanay.mitkari@adypu.edu.in','7756080462','Robo Soccer'),(4,'manish','Manish Thakur','manish.thakur@adypu.edu.in','9','Robo Soccer'),(5,'santosh','G Santosh','g.santosh@adypu.edu.in','9725989900','Fastest Line Follower Challenge'),(8,'kshitij','Kshitij Raje','kshitij.raje@adypu.edu.in','7972985417','Gaming'),(9,'darshanc','Darshan Chaudhari','darshan.chaudhari@adypu.edu.in','8422006503','Gaming'),(10,'etisha','Etisha Gurav','etisha.gurav@adypu.edu.in','9867579546','Pradyo-Geeky'),(11,'yatish','Yatish Kumavat','yatish.kumavat@adypu.edu.in','8668947792','Into The Next Dimension'),(12,'pranshu','Pranshu Tople','pranshu.tople@adypu.edu.in','8668947792','Into The Next Dimension'),(13,'pallavi','Pallavi Saha','pallavi.saha@adypu.edu.in','9561372659','The Excelsiors Quest'),(14,'tasneem','Tasneem Khan','tasneem.khan@adypu.edu.in','9730738710','The Excelsiors Quest'),(15,'pallavi','Pallavi Saha','pallavi.saha@adypu.edu.in','9561372659','Pitch-It-Up'),(16,'tasneem','Tasneem Khan','tasneem.khan@adypu.edu.in','9730738710','Pitch-It-Up'),(17,'minerva','Minerva Sarma','minerva.sarma@adypu.edu.in','7086012396','Pradyo-Geeky'),(18,'pankaj','Pankaj Penmetcha','pankaj.penmetcha@adypu.edu.in','7013256068','Robo Race'),(19,'dhawal','Dhawal Patil','dhawal.patil@adypu.edu.in','8600998379','Robo Race'),(20,'abhinav','Abhinav Tripathi','abhinav.tripathi@adypu.edu.in','8115310549','Fastest Line Follower Challenge'),(21,'hrishi','Hrishikesh Naik','hrishikesh.naik@adypu.edu.in','7387399990','Paintball'),(22,'pranshu','Pranshu Tople','pranshu.tople@adypu.edu.in','8983592752','Drone Building Workshop'),(24,'hemedra','Hemendra Lalawat','hemedra.lalawat@adypu.edu.in','9730934953','Ethical Hacking Workshop'),(25,'priyanka','Priyanka Radhanpura','priyanka.radhanpura@adypu.edu.in','7387296982','Ethical Hacking Workshop'),(26,'minerva','Minerva Sarma','minerva.sarma@adypu.edu.in','7086102396','Machine Learning Workshop'),(27,'gokul','Gokul Menon','gokul.menon@adypu.edu.in','9877170175','Machine Learning Workshop'),(28,'shivani','Shivani Radhanpura','shivani.radhanpura@adypu.edu.in','9408844323','PCB Design Workshop'),(29,'dhruvin','Dhruvin Jasani','dhruvinkumar.jasani@adypu.edu.in','9321371973','PCB Design Workshop'),(30,'yatish','Yatish Kumavat','yatish.kumavat@adypu.edu.in','8668947792','Drone Building Workshop');
/*!40000 ALTER TABLE `registration_coordinators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_csgomodel`
--

DROP TABLE IF EXISTS `registration_csgomodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_csgomodel` (
  `teamName` varchar(35) NOT NULL,
  `firstPlayer` varchar(75) NOT NULL,
  `secondPlayer` varchar(75) DEFAULT NULL,
  `thirdPlayer` varchar(75) DEFAULT NULL,
  `fourthPlayer` varchar(75) DEFAULT NULL,
  `fifthPlayer` varchar(75) DEFAULT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`teamName`),
  UNIQUE KEY `contactEmail` (`contactEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_csgomodel`
--

LOCK TABLES `registration_csgomodel` WRITE;
/*!40000 ALTER TABLE `registration_csgomodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_csgomodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_djnightmodel`
--

DROP TABLE IF EXISTS `registration_djnightmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_djnightmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_djnightmodel`
--

LOCK TABLES `registration_djnightmodel` WRITE;
/*!40000 ALTER TABLE `registration_djnightmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_djnightmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_dronebuildingworkshopmodel`
--

DROP TABLE IF EXISTS `registration_dronebuildingworkshopmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_dronebuildingworkshopmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_dronebuildingworkshopmodel`
--

LOCK TABLES `registration_dronebuildingworkshopmodel` WRITE;
/*!40000 ALTER TABLE `registration_dronebuildingworkshopmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_dronebuildingworkshopmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_ethicalhackingworkshopmodel`
--

DROP TABLE IF EXISTS `registration_ethicalhackingworkshopmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_ethicalhackingworkshopmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_ethicalhackingworkshopmodel`
--

LOCK TABLES `registration_ethicalhackingworkshopmodel` WRITE;
/*!40000 ALTER TABLE `registration_ethicalhackingworkshopmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_ethicalhackingworkshopmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_event`
--

DROP TABLE IF EXISTS `registration_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(75) NOT NULL,
  `description` longtext,
  `amount` int(11) DEFAULT NULL,
  `event_start_date` int(11) DEFAULT NULL,
  `event_end_date` int(11) DEFAULT NULL,
  `event_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_event_event_category_id_58a8c019_fk_registrat` (`event_category_id`),
  CONSTRAINT `registration_event_event_category_id_58a8c019_fk_registrat` FOREIGN KEY (`event_category_id`) REFERENCES `registration_event_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_event`
--

LOCK TABLES `registration_event` WRITE;
/*!40000 ALTER TABLE `registration_event` DISABLE KEYS */;
INSERT INTO `registration_event` VALUES (1,'Robo Soccer','The participants have to make a manually controlled robot that can play Soccer on wheels. The robot can be wired or wirelesssly controlled, Scoring a goal in opponent\'s goal post will gain points. The team that scores maximum points in given play time will be declared as winner.',200,28,29,1),(2,'Fastest Line Follower Challenge','The participant has to make an autonomous line following robot. A track of black line on white background will be laid out and an autonomous robot has to follow that line. The path will have several checkpoints. Every checkpoint will earn some points. Number of checkpoints covered, time taken to cover these checkpoints and the robot stopping inside the finish box will decide final points earned by robot. The team that completes the task in minimum time will be declared as winner',200,28,29,1),(3,'Pradyo-Geeky','It is a Model Presentation Competition, where participants just need to submit their innovative ideas with the pictures and videos of the working model and a poster in a PDF format. The competition will be platform to present your idea in front of expereinced industry people and jury. They will guide you the future scope of your project.',200,28,NULL,1),(4,'Robo Race','The participant\'s have to make an \'All-Terrain Robot\' that can complete the track comprising of different obstacles and difficulties and cross the finish line in minimum time. The robot can be wired or wirelessly controlled. The path will have several checkpoints. Every checkpoint will earn some points. The team that completes the task in minimum time will be declared as winner.',200,28,29,1),(5,'Hackathon','EVENT INFORMATION WILL BE AVAILABLE SOON......\r\nHAPPY CODING!',150,28,29,1),(6,'Pitch-It-Up','Pitch-It-Up is a business model presentation completition wherein participants have to present an idea which the participants think can be the need of time and want of the market. This competition allows you to present a million-dollar idea in front of some angel investors who could guide you in the process of turning the idea into a business. All you need to do is draft and submit your idea with the market study, a business model, use cases and unique value proposition.\r\nAlong with sharing of experiences and views with industry experts and investors, we also offer exciting cash prizes for the winners.',150,29,NULL,1),(7,'Tall Building Design Analysis Workshop','',800,26,27,4),(8,'Ethical Hacking Workshop','Ethical Hacking Workshop mainly focuses on the students eager to be a White Hat Hacker. It features a brief introduction to the world of hacking starting with the importance of ethical hackers and their need in today\'s world scenario, including to the basics of networking that will help you have a deep understanding of the working of internet.\r\nLater, windows hacking using various methods will be introduced and in the module of steganography you will learn how to hide files in other files in order to protect sensitive data. After the end of the aforementioned module you will be learning phishing in which you will be taught How to hack Facebook Accounts and Gmail Accounts and thus how to avoid it.\r\nIn the end you will gain knowledge about the basics of Backtrack 5 and the concept of man in the middle attack (MITM ATTACK).\r\nThe duration of this workshop will be two consecutive days with eight hours session each day, in a total of sixteen hours properly divided into theory and hand on practical sessions.',900,30,31,4),(9,'Python & Machine Learning Workshop','Course Overview: \r\nThis course aims to provide an introduction to the basic principles, techniques, and applications of Machine Learning & AI. Programming assignments are used to help clarify basic concepts.......\r\n Develop expertise in popular AI & ML technologies and problem-solving methodologies\r\n Develop ability to independently solve business problems using AI & ML\r\n Learn to use popular AI & ML technologies like Python, Tensorflow and Keras to develop applications\r\n Develop a verified portfolio with 8 projects that will showcase the new skills acquired',800,26,27,4),(10,'Drone Building Workshop','',1000,26,27,4),(11,'GoKart Designing Workshop','',NULL,26,NULL,4),(12,'PCB Designing Workshop','',900,26,27,4),(13,'PUBG Mobile','Are you a PUBG fanatic? This is the time for you and your squad to gear up and showcase your skills in this PUBG tournament and win exclusive cash prizes.',300,26,29,2),(14,'NFS Most Wanted','Is speed one of the key factor that drives you?  If it is, we have a perfect oppurtunity for you to speed your way throughothers in our NFS Most Wanted tournament',50,26,29,2),(15,'CS Go','Want to test out your shooting skills? Now you can join 4 other gunslingers to eliminate 5 others in the intense battles of CS Go.',NULL,26,29,2),(16,'FIFA 19','Is football your true passion? Then this is your time to showcase your skills, dribbles and strategies in this exciting battle for goals in our FIFA tournament.',100,26,29,2),(17,'The Excelsiors Quest','In the loving memory of Stan Lee, the creator and the person who made us love Science Fiction and Superhero movies and shows, #Tech 2K19 presents to you - \'The Excelsior\'s Quest\', a trivia game which would be based on some of the most renowned Science Fiction & Superhero Movies & Series.\r\nThe quiz would be based on renowned movies from the Marvel & DC Universe. Apart from them, we have some amzing brainteasing question from other much loved movies and series like The Big Bang Theory, Star Wars, Stranger Things, Harry Potter, etc.\r\nThe winners of the quiz stand a chance to win amazing Sci-Fi merchandise from some of the largest merchandise stores in India.',50,28,29,3),(18,'Paintball','Paintball is an extreme sport in which player compete in teams or indicidually, to eliminate opponents by tagging themwith capsules containing water-soluble dye and gelatin shell outside. Paintball is a activity which can be part of  your college events, fun-events, and corporate events.\r\nPaintball promotes teamwork, planning and good-natured competition. An ever-increasing number of companies(large and small), schools and youth groups are all incorporating paintball as a powerful tool into their strategic team development plans.',NULL,28,29,3),(19,'Bike Show','',NULL,28,NULL,3),(20,'Into The Next Dimension','Into The Next Dimension is a fun gaming zone at HashTech \'19. This gaming zone consists of various Virtual Realitym Augmented Reality,, Computer Vision and Gesture Controlled games which are developed by the students of Ajeenkya DY Patil University. Visitors during HashTech \'19 will be able to play and experience these games first hand. Various games are:\r\n- Virtual Reality Maze\r\n- Virtual Reality Zombie Attack\r\n- Virtual Reality Mystery Room\r\n- Augmented Whack-A-Mole\r\n- Gesture-Controlled NFS\r\n- Live Subway Surfers\r\n- Rock-Paper-Scissor Bot',20,26,29,3),(21,'Live DJ Night','',NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `registration_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_event_category`
--

DROP TABLE IF EXISTS `registration_event_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_event_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_event_category`
--

LOCK TABLES `registration_event_category` WRITE;
/*!40000 ALTER TABLE `registration_event_category` DISABLE KEYS */;
INSERT INTO `registration_event_category` VALUES (1,'Competitions'),(2,'Gaming'),(3,'Fun Events'),(4,'Workshops');
/*!40000 ALTER TABLE `registration_event_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_fastestlinefollowerchallengemodel`
--

DROP TABLE IF EXISTS `registration_fastestlinefollowerchallengemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_fastestlinefollowerchallengemodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(35) NOT NULL,
  `firstPlayer` varchar(75) NOT NULL,
  `secondPlayer` varchar(75) DEFAULT NULL,
  `thirdPlayer` varchar(75) DEFAULT NULL,
  `fourthPlayer` varchar(75) DEFAULT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamName` (`teamName`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_fastestlinefollowerchallengemodel`
--

LOCK TABLES `registration_fastestlinefollowerchallengemodel` WRITE;
/*!40000 ALTER TABLE `registration_fastestlinefollowerchallengemodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_fastestlinefollowerchallengemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_fifa19model`
--

DROP TABLE IF EXISTS `registration_fifa19model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_fifa19model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_fifa19model`
--

LOCK TABLES `registration_fifa19model` WRITE;
/*!40000 ALTER TABLE `registration_fifa19model` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_fifa19model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_fungamesmodel`
--

DROP TABLE IF EXISTS `registration_fungamesmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_fungamesmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_fungamesmodel`
--

LOCK TABLES `registration_fungamesmodel` WRITE;
/*!40000 ALTER TABLE `registration_fungamesmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_fungamesmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_gocartmodel`
--

DROP TABLE IF EXISTS `registration_gocartmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_gocartmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(35) NOT NULL,
  `firstPlayer` varchar(75) NOT NULL,
  `secondPlayer` varchar(75) DEFAULT NULL,
  `thirdPlayer` varchar(75) DEFAULT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamName` (`teamName`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_gocartmodel`
--

LOCK TABLES `registration_gocartmodel` WRITE;
/*!40000 ALTER TABLE `registration_gocartmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_gocartmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_hackathonmodel`
--

DROP TABLE IF EXISTS `registration_hackathonmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_hackathonmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_hackathonmodel`
--

LOCK TABLES `registration_hackathonmodel` WRITE;
/*!40000 ALTER TABLE `registration_hackathonmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_hackathonmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_individual_participant`
--

DROP TABLE IF EXISTS `registration_individual_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_individual_participant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `college` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_individual_participant`
--

LOCK TABLES `registration_individual_participant` WRITE;
/*!40000 ALTER TABLE `registration_individual_participant` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_individual_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_intothenextdimensionmodel`
--

DROP TABLE IF EXISTS `registration_intothenextdimensionmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_intothenextdimensionmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_intothenextdimensionmodel`
--

LOCK TABLES `registration_intothenextdimensionmodel` WRITE;
/*!40000 ALTER TABLE `registration_intothenextdimensionmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_intothenextdimensionmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_machinelearningworkshopmodel`
--

DROP TABLE IF EXISTS `registration_machinelearningworkshopmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_machinelearningworkshopmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_machinelearningworkshopmodel`
--

LOCK TABLES `registration_machinelearningworkshopmodel` WRITE;
/*!40000 ALTER TABLE `registration_machinelearningworkshopmodel` DISABLE KEYS */;
INSERT INTO `registration_machinelearningworkshopmodel` VALUES (2,'Nitin','somanick02@gmail.com','8830805661','JSPM\'s','Pune','Maharashtra',0),(5,'Nitin Chauhan','nitinchauhan.bsiotr@gmail.com','9075694782','JSPM\'s','Pune','Maharashtra',0);
/*!40000 ALTER TABLE `registration_machinelearningworkshopmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_nfsmostwantedmodel`
--

DROP TABLE IF EXISTS `registration_nfsmostwantedmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_nfsmostwantedmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_nfsmostwantedmodel`
--

LOCK TABLES `registration_nfsmostwantedmodel` WRITE;
/*!40000 ALTER TABLE `registration_nfsmostwantedmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_nfsmostwantedmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_paintballmodel`
--

DROP TABLE IF EXISTS `registration_paintballmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_paintballmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(35) NOT NULL,
  `firstPlayer` varchar(75) DEFAULT NULL,
  `secondPlayer` varchar(75) DEFAULT NULL,
  `thirdPlayer` varchar(75) DEFAULT NULL,
  `fourthPlayer` varchar(75) DEFAULT NULL,
  `fifthPlayer` varchar(75) DEFAULT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `alternateContactNumber` varchar(10) DEFAULT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `ball30` int(11) DEFAULT NULL,
  `ball60` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamName` (`teamName`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_paintballmodel`
--

LOCK TABLES `registration_paintballmodel` WRITE;
/*!40000 ALTER TABLE `registration_paintballmodel` DISABLE KEYS */;
INSERT INTO `registration_paintballmodel` VALUES (3,'Sample Trial','Anway Somani','Biswajit Champaty',NULL,NULL,NULL,'anwaysomani@gmail.com','9096052194',NULL,'ADYPU','Pune','Maharashtra',0,3,2);
/*!40000 ALTER TABLE `registration_paintballmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_pcbdesignworkshopmodel`
--

DROP TABLE IF EXISTS `registration_pcbdesignworkshopmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_pcbdesignworkshopmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_pcbdesignworkshopmodel`
--

LOCK TABLES `registration_pcbdesignworkshopmodel` WRITE;
/*!40000 ALTER TABLE `registration_pcbdesignworkshopmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_pcbdesignworkshopmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_pitchitupmodel`
--

DROP TABLE IF EXISTS `registration_pitchitupmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_pitchitupmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(35) NOT NULL,
  `firstPlayer` varchar(75) NOT NULL,
  `secondPlayer` varchar(75) DEFAULT NULL,
  `thirdPlayer` varchar(75) DEFAULT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamName` (`teamName`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_pitchitupmodel`
--

LOCK TABLES `registration_pitchitupmodel` WRITE;
/*!40000 ALTER TABLE `registration_pitchitupmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_pitchitupmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_pradyogeekymodel`
--

DROP TABLE IF EXISTS `registration_pradyogeekymodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_pradyogeekymodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(35) NOT NULL,
  `firstPlayer` varchar(75) NOT NULL,
  `secondPlayer` varchar(75) DEFAULT NULL,
  `thirdPlayer` varchar(75) DEFAULT NULL,
  `fourthPlayer` varchar(75) DEFAULT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamName` (`teamName`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_pradyogeekymodel`
--

LOCK TABLES `registration_pradyogeekymodel` WRITE;
/*!40000 ALTER TABLE `registration_pradyogeekymodel` DISABLE KEYS */;
INSERT INTO `registration_pradyogeekymodel` VALUES (4,'Team1','Etisha','Lina','Harshada','Shivani','etisha98@gmail.com','7086012396','ADYPU','Pune','Maharashtra',0);
/*!40000 ALTER TABLE `registration_pradyogeekymodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_pubgmobilemodel`
--

DROP TABLE IF EXISTS `registration_pubgmobilemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_pubgmobilemodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(35) NOT NULL,
  `firstPlayer` varchar(75) NOT NULL,
  `secondPlayer` varchar(75) DEFAULT NULL,
  `thirdPlayer` varchar(75) DEFAULT NULL,
  `fourthPlayer` varchar(75) DEFAULT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamName` (`teamName`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_pubgmobilemodel`
--

LOCK TABLES `registration_pubgmobilemodel` WRITE;
/*!40000 ALTER TABLE `registration_pubgmobilemodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_pubgmobilemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_roboracemodel`
--

DROP TABLE IF EXISTS `registration_roboracemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_roboracemodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(35) NOT NULL,
  `firstPlayer` varchar(75) NOT NULL,
  `secondPlayer` varchar(75) DEFAULT NULL,
  `thirdPlayer` varchar(75) DEFAULT NULL,
  `fourthPlayer` varchar(75) DEFAULT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamName` (`teamName`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_roboracemodel`
--

LOCK TABLES `registration_roboracemodel` WRITE;
/*!40000 ALTER TABLE `registration_roboracemodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_roboracemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_robosoccermodel`
--

DROP TABLE IF EXISTS `registration_robosoccermodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_robosoccermodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(35) NOT NULL,
  `firstPlayer` varchar(75) NOT NULL,
  `secondPlayer` varchar(75) DEFAULT NULL,
  `thirdPlayer` varchar(75) DEFAULT NULL,
  `fourthPlayer` varchar(75) DEFAULT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamName` (`teamName`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_robosoccermodel`
--

LOCK TABLES `registration_robosoccermodel` WRITE;
/*!40000 ALTER TABLE `registration_robosoccermodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_robosoccermodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_tallbuildingdesignanalysisworkshopmodel`
--

DROP TABLE IF EXISTS `registration_tallbuildingdesignanalysisworkshopmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_tallbuildingdesignanalysisworkshopmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_tallbuildingdesignanalysisworkshopmodel`
--

LOCK TABLES `registration_tallbuildingdesignanalysisworkshopmodel` WRITE;
/*!40000 ALTER TABLE `registration_tallbuildingdesignanalysisworkshopmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_tallbuildingdesignanalysisworkshopmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_theexcelsiorsquestmodel`
--

DROP TABLE IF EXISTS `registration_theexcelsiorsquestmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_theexcelsiorsquestmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(75) NOT NULL,
  `contactEmail` varchar(254) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `city` varchar(75) NOT NULL,
  `state` varchar(75) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactEmail` (`contactEmail`),
  UNIQUE KEY `contactNumber` (`contactNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_theexcelsiorsquestmodel`
--

LOCK TABLES `registration_theexcelsiorsquestmodel` WRITE;
/*!40000 ALTER TABLE `registration_theexcelsiorsquestmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_theexcelsiorsquestmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_volunteers`
--

DROP TABLE IF EXISTS `registration_volunteers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_volunteers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `event` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_volunteers`
--

LOCK TABLES `registration_volunteers` WRITE;
/*!40000 ALTER TABLE `registration_volunteers` DISABLE KEYS */;
INSERT INTO `registration_volunteers` VALUES (4,'Harshal Singh','-','Robo Soccer'),(5,'Rutuja','-','Robo Soccer'),(6,'Amey Sawant','-','Robo Soccer'),(7,'Vinit Patil','-','Fastest Line Follower Challenge'),(8,'Jaysd Shaikh','-','Fastest Line Follower Challenge'),(9,'Sheldon','-','Robo Race'),(10,'Andhu Singh','-','Pradyo-Geeky'),(11,'Shivani','-','Pradyo-Geeky'),(12,'Harshada','-','Pradyo-Geeky'),(13,'Vighnesh','-','Pitch-It-Up'),(14,'Nandini Kumar','-','Pitch-It-Up'),(15,'Shivaji Patil','-','Pitch-it-Up'),(16,'Aditi Rao','-','Pitch-It-Up'),(17,'Muskan Agarwal','-','Hackathon'),(20,'Jay Vyas','-','Into The Next Dimension'),(21,'Siddharth Singh','-','Into The Next Dimension'),(22,'Vishal Dudgikar','-','Into The Next Dimension'),(23,'Tapan Shah','-','Into The Next Dimension'),(24,'Sonu Kangade','-','Paintball'),(25,'Rakesh Kadam','8149925989','Hackathon'),(26,'Sayli Ambore','7276590503','Hackathon'),(27,'Kanika Kapoor','8286784675','Hackathon'),(28,'Akshay Kapadnis','7972776397','Gaming'),(29,'Niraj Sarvaiya','9769120298','Gaming'),(30,'Shubh Shah','9821476247','Gaming'),(31,'Aditi Joshi','7559438298','Gaming'),(32,'Shalu Gopinathan','7057034454','Gaming'),(33,'Mrudul Pawar','9930666060','Gaming'),(34,'Vidit Kesarvani','7007962754','Gaming'),(35,'Vaishnavi Arsekar','9145112278','Gaming');
/*!40000 ALTER TABLE `registration_volunteers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-07  4:06:38
