-- MySQL dump 10.13  Distrib 9.6.0, for macos14.8 (x86_64)
--
-- Host: localhost    Database: sistema_academico
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '6ba1ec04-b43d-11f0-9bd4-32f228f03b55:1-3628';

--
-- Table structure for table `acta_ordinaria`
--

DROP TABLE IF EXISTS `acta_ordinaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acta_ordinaria` (
  `solicitud_folio` int NOT NULL AUTO_INCREMENT,
  `session_name` varchar(255) DEFAULT NULL,
  `acta_time` datetime DEFAULT NULL,
  `acta_date` datetime DEFAULT NULL,
  `num_members` int DEFAULT NULL,
  `member_guest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`solicitud_folio`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acta_ordinaria`
--

LOCK TABLES `acta_ordinaria` WRITE;
/*!40000 ALTER TABLE `acta_ordinaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `acta_ordinaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analisis_acta`
--

DROP TABLE IF EXISTS `analisis_acta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analisis_acta` (
  `no_solicitudAct` int NOT NULL AUTO_INCREMENT,
  `nom_alumnAct` varchar(255) NOT NULL,
  `nControlAlumAct` varchar(255) NOT NULL,
  `asuntoAct` varchar(255) NOT NULL,
  `resolucionAct` binary(1) NOT NULL,
  `recomenAct` varchar(255) NOT NULL,
  PRIMARY KEY (`no_solicitudAct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analisis_acta`
--

LOCK TABLES `analisis_acta` WRITE;
/*!40000 ALTER TABLE `analisis_acta` DISABLE KEYS */;
/*!40000 ALTER TABLE `analisis_acta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asuntos_gen`
--

DROP TABLE IF EXISTS `asuntos_gen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asuntos_gen` (
  `AG_Act` int NOT NULL AUTO_INCREMENT,
  `responsableAct` varchar(255) NOT NULL,
  `nom_alumAct` varchar(255) NOT NULL,
  `nControlAlumAct` varchar(255) NOT NULL,
  `carAlumAct` varchar(255) NOT NULL,
  `resolAct` varchar(255) NOT NULL,
  PRIMARY KEY (`AG_Act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asuntos_gen`
--

LOCK TABLES `asuntos_gen` WRITE;
/*!40000 ALTER TABLE `asuntos_gen` DISABLE KEYS */;
/*!40000 ALTER TABLE `asuntos_gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Kevin Alexis','Hi','2025-04-30 10:51:03'),(2,'Kevin Alexis','Documento terminado','2025-04-30 12:30:14');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_actas`
--

DROP TABLE IF EXISTS `control_actas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control_actas` (
  `idCarAct` int NOT NULL AUTO_INCREMENT,
  `totalCarAct` int NOT NULL,
  `fechaActProm` datetime NOT NULL,
  PRIMARY KEY (`idCarAct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_actas`
--

LOCK TABLES `control_actas` WRITE;
/*!40000 ALTER TABLE `control_actas` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_actas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grafica_acta`
--

DROP TABLE IF EXISTS `grafica_acta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grafica_acta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fechaActaProm` date NOT NULL,
  `totalCarActa` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grafica_acta`
--

LOCK TABLES `grafica_acta` WRITE;
/*!40000 ALTER TABLE `grafica_acta` DISABLE KEYS */;
INSERT INTO `grafica_acta` VALUES (1,'2025-04-30',5.00),(2,'2025-03-20',3.00);
/*!40000 ALTER TABLE `grafica_acta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_professors`
--

DROP TABLE IF EXISTS `notifications_professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_professors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `career` varchar(255) DEFAULT NULL,
  `seen` binary(0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_professors`
--

LOCK TABLES `notifications_professors` WRITE;
/*!40000 ALTER TABLE `notifications_professors` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications_professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_students`
--

DROP TABLE IF EXISTS `notifications_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `career` varchar(255) DEFAULT NULL,
  `seen` binary(0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_students`
--

LOCK TABLES `notifications_students` WRITE;
/*!40000 ALTER TABLE `notifications_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiration` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`),
  KEY `index_expiration` (`expiration`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_fdc`
--

DROP TABLE IF EXISTS `solicitudes_fdc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_fdc` (
  `nControl` varchar(255) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `aPaterno` varchar(255) NOT NULL,
  `aMaterno` varchar(255) NOT NULL,
  `carrera` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `asunto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `peticion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fecha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `motivosA` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `motivosP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `otrosM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `anexos` json DEFAULT NULL,
  `firma_alumno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `estado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `resp_solicitud` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`nControl`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_fdc`
--

LOCK TABLES `solicitudes_fdc` WRITE;
/*!40000 ALTER TABLE `solicitudes_fdc` DISABLE KEYS */;
INSERT INTO `solicitudes_fdc` VALUES ('197O02345','Steve','Jobs','Gates','Ingeniería en Sistemas Computacionales','Cambio de carrera','Me gustaría cambiarme a la carrera de Gestión empresarial, ya que no pienso seguir en la misma, debido a problemas de las materias','28/11/2023','He tenido problemas con algunas materias y por ende me gustaría revalidar mis materias con otra carrera','','','null','fdc_files/197O02345/signatures/197O02345.png','(228) 292-0290','197o01657@itsx.edu.mx','No enviado',NULL,NULL);
/*!40000 ALTER TABLE `solicitudes_fdc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_docs`
--

DROP TABLE IF EXISTS `storage_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage_docs` (
  `id_doc` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `owner_file` varchar(255) NOT NULL,
  PRIMARY KEY (`id_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_docs`
--

LOCK TABLES `storage_docs` WRITE;
/*!40000 ALTER TABLE `storage_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `stud_id` int NOT NULL AUTO_INCREMENT,
  `stud_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stud_firstname` varchar(255) DEFAULT NULL,
  `stud_flastname` varchar(255) DEFAULT NULL,
  `stud_slastname` varchar(255) DEFAULT NULL,
  `stud_password` varchar(255) NOT NULL,
  `stud_career` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stud_charge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stud_gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_picture` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'197O02345','Steve','Jobs','Gates','$2a$12$xZXx4r5c.msMfvBZ0VbGFeC4tkEw/4xe/3LI8EAC9H3vkND/u.wcq','Sistemas computacionales','Estudiante','Hombre','2023-11-21 13:49:09',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `flastname` varchar(50) DEFAULT NULL,
  `slastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `charge` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `career` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `file_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `remember_token_expiration` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kevin Alexis',NULL,NULL,'197o01657@itsx.edu.mx','administrator','$2a$12$x81ualqoRWgj9TrpbYjHJu/jD8hDRC912XmR9yOhOK49P.EY/XDRO','Hombre','Director académico','No aplica','2023-10-27 19:07:11',NULL,'../public/img/uploads/administrator/robot.jpg','','',NULL,NULL,'2026-02-22 22:29:04'),(2,'Noemi Martinez',NULL,NULL,'noemi@itsx.edu.mx','noemi001','$2a$12$rwrH1dqPg7MCjjvz8XvEre7G0x6gu0giDaqmqOM1hcOEl5XOZqpeS','Mujer','Secretario','Ingeniería en Sistemas Computacionales','2023-11-14 16:21:14',NULL,NULL,'','',NULL,NULL,'2026-02-22 22:28:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-22 20:08:09
