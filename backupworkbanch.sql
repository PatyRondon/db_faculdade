CREATE DATABASE  IF NOT EXISTS `db_faculdade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_faculdade`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `CPF` char(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nome_pai` char(50) DEFAULT NULL,
  `nome_mae` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `whatsapp` char(20) DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  `fk_cod_turma` int DEFAULT NULL,
  `fk_cod_endereco` int DEFAULT NULL,
  PRIMARY KEY (`RA`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `fk_cod_turma` (`fk_cod_turma`),
  KEY `fk_cod_endereco` (`fk_cod_endereco`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`fk_cod_turma`) REFERENCES `turma` (`cod_turma`),
  CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`fk_cod_endereco`) REFERENCES `endereco` (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Flavio','Alves','81683308115',1,'M','Jose','Maria','flavio@gmail.com','8485-8838',1,2,4),(2,'Mario','Alves','81683308118',0,'M','Lucas','Marilia','mario@gmail.com','8385-8838',2,2,3),(3,'Paulo','Souza','82345508112',1,'M','Joao','Josefa','paulo@gmail.com','9844-2030',3,1,1),(4,'Mariana','Lima','83345508113',1,'F','Josemar','Maria','mariana@gmail.com','8844-2030',4,3,2),(5,'Maria','Duarte','83345508114',0,'F','Mario','Mariana','maria@gmail.com','9844-2030',5,4,5),(6,'Patricia','Rondon','83345508115',1,'F','Jose','Maria','patya@gmail.com','8844-2030',6,5,6),(7,'Amelia','Goncalves','83335508112',1,'F','Joao','Renilda','amelia@gmail.com','9842-2030',7,6,6),(8,'Marcos','Alves','83335508113',1,'M','Lucas','Maria','marcos@gmail.com','9842-2030',8,7,7),(9,'Alexandre','Gontijo','83335508121',1,'M','Joao','Lurde','alex@gmail.com','9822-2030',9,8,8),(10,'Renata','Goncalves','83335508221',1,'F','Lucas','Maria','renata@gmail.com','8844-2030',10,1,9),(11,'Regina','Moraes','83335508331',1,'F','Romario','Josefa','regina@gmail.com','9804-2030',1,1,10),(12,'Anderson','Lima','83335508112',1,'M','Lucas','Maria','ander@gmail.com','8844-2030',2,2,11),(13,'Rodrigo','Moreno','83335508441',1,'M','Jose','Maria','rodrigo@gmail.com','8844-2030',3,3,12),(14,'Debora','Goncalves','83335588111',1,'F','Lucas','Lucia','debora@gmail.com','9844-2030',4,4,13),(15,'Jose','Cardiano','83335508113',1,'M','Mario','Deusa','jose@gmail.com','8844-2030',5,5,14),(16,'Mario','Gomes','83335508114',0,'M','Lucas','Marlene','mario@gmail.com','9844-2018',6,6,15),(17,'Orlando','Almeida','83335508115',1,'M','Alex','Sonia','orland@gmail.com','8844-2030',7,7,16),(18,'Ana','Almeida','83335508111',1,'F','Lucas','Maria','ana@gmail.com','9844-2050',8,8,17),(19,'Nilce','Goncalves','83335508110',1,'F','Jose','Maria','nilce@gmail.com','8844-2030',9,2,18),(20,'Felipe','Santos','83336608111',1,'M','Lucas','Maria','felipe@gmail.com','9844-2030',10,3,19);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_disciplina` (
  `fk_RA` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_RA`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` char(20) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia software',10),(2,'Analise de sistemas',10),(3,'Biologia',8),(4,'Historia',6),(5,'Matematica',7),(6,'Engenharia eletrica',10),(7,'Pscicologia',6),(8,'Banco de Dados',10),(9,'Zootecnia',8),(10,'Botanica',8);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `fk_cod_curso` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_curso`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
INSERT INTO `curso_disciplina` VALUES (1,1),(2,1),(8,1),(7,2),(2,3),(3,6),(6,9),(3,10),(6,12),(5,13),(4,14),(6,15),(4,16),(5,17),(3,21),(10,21),(9,22),(10,23),(9,24),(3,25),(5,26),(5,27),(5,28),(5,29),(10,30);
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `cod_departamento` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` char(20) NOT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (6,'Ciencias Humanas'),(7,'Matematica'),(8,'Biologicas'),(9,'Estagio'),(10,'Tec Informa????o');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `cod_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` char(20) DEFAULT NULL,
  `carga_horaria` int NOT NULL,
  `descricao` char(50) DEFAULT NULL,
  `num_alunos` int NOT NULL,
  `fk_cod_departamento` int NOT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Raciocinio logico',110,'Dominar a Materia',20,7),(2,'Pscicologia cogn',150,'Dominar a Materia',25,6),(3,'Eletronica digital',100,'Dominar a Materia',30,7),(4,'Programa????o em C',150,'Dominar a Materia',20,10),(5,'Geologia',120,'Dominar a Materia',20,6),(6,'Genetica',200,'Dominar a Materia',30,8),(7,'Letras',200,'Dominar a Materia',25,6),(8,'Banco de Dados',150,'Dominar a Materia',30,10),(9,'Logica de Prog',100,'Dominar a Materia',25,10),(10,'Fator RH',200,'Dominar a Materia',28,8),(11,'Estagio TI',110,'Dominar a Materia',30,9),(12,'Matematica I',200,'Dominar a Materia',25,7),(13,'Matematica II',150,'Dominar a Materia',30,7),(14,'Historia Antiga',200,'Dominar a Materia',25,6),(15,'Historia da Arte',150,'Dominar a Materia',29,6),(16,'Historia Medieval',200,'Dominar a Materia',28,6),(17,'Algoritimo',200,'Dominar a Materia',24,7),(18,'Fundamentos Matemat',100,'Dominar a Materia',25,7),(19,'Hist. da Matemat',100,'Dominar a Materia',26,7),(20,'Xadrez',80,'Dominar a Materia',20,7),(21,'Botanica',100,'Dominar a Materia',25,8),(22,'Zoologia',110,'Dominar a Materia',25,8),(23,'Fitopatologia',100,'Dominar a Materia',29,8),(24,'Morfologia',150,'Dominar a Materia',24,8),(25,'Ecologia',100,'Dominar a Materia',20,8),(26,'Integral I',110,'Dominar a Materia',29,7),(27,'Integral II',150,'Dominar a Materia',30,7),(28,'Geometria Analit',110,'Dominar a Materia',30,7),(29,'Geometria Plana',150,'Dominar a Materia',25,7),(30,'Calculo Diferencial',110,'Dominar a Materia',28,7),(31,'Algebra Linear',110,'Dominar a Materia',30,7);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_historico`
--

DROP TABLE IF EXISTS `disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_historico` (
  `fk_cod_historico` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  `nota` float(4,2) DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
  PRIMARY KEY (`fk_cod_historico`,`fk_cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_historico`
--

LOCK TABLES `disciplina_historico` WRITE;
/*!40000 ALTER TABLE `disciplina_historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplina_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cod_endereco` int NOT NULL AUTO_INCREMENT,
  `nome_rua` char(50) NOT NULL,
  `numero_rua` int NOT NULL,
  `complemento` char(20) DEFAULT NULL,
  `CEP` char(8) NOT NULL,
  `fk_cod_tipo_logradouro` int NOT NULL,
  PRIMARY KEY (`cod_endereco`),
  KEY `fk_cod_tipo_logradouro` (`fk_cod_tipo_logradouro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_cod_tipo_logradouro`) REFERENCES `tipo_logradouro` (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'QI 01',2,'Guara 1','71020080',1),(2,'QI 09',6,'Guara 1','71020080',1),(3,'QI 09',8,'Lago Sul','70080020',2),(4,'QI 11',10,'Lago Sul','70080020',2),(5,'Quadra 2',15,'Cruzeiro','71030010',6),(6,'Quadra 3',20,'Cruzeiro','71030010',6),(7,'Quadra 5',13,'Cruzeiro','71030010',6),(8,'Rua Peixoto',16,'PLanltina','72030020',5),(9,'Rua Peixoto',26,'PLanltina','72030020',5),(10,'Rua Peixoto',6,'PLanaltina','72030020',5),(11,'Quadra QRO A',18,'Candanga','72030020',3),(12,'Quadra QRO B',3,'Candanga','72030020',3),(13,'Quadra QRO C',6,'Candanga','72030020',3),(14,'Quadra QRO D',8,'Candanga','72030020',3),(15,'QNL 10',12,'Taguatinga','72020080',1),(16,'QNL 11',15,'Taguatinga','72020080',1),(17,'QNL 12',14,'Taguatinga','72020080',1),(18,'QNL 13',3,'Taguatinga','72020080',1),(19,'Rua Gladioli',11,'Chacara 11','72020030',4);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod_historico` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`cod_historico`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `cod_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` char(20) NOT NULL,
  `sobrenome_professor` char(50) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_professor`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Luis','Alves',1,6),(2,'Pedro','Macedo',1,7),(3,'Manoel','Ramalho',0,8),(4,'Francisco','Cardiano',0,9),(5,'Paulo','Alves',0,6),(6,'Marcia','Rondon',1,7),(7,'Patricia','Monteiro',1,8),(8,'Mariana','Alves',1,9),(9,'Renilda','Figueiredo',1,8),(10,'Tatiana','Bueno',1,7);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_disciplina` (
  `fk_cod_professor` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_professor`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_professor`) REFERENCES `professor` (`cod_professor`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `cod_telefone` int NOT NULL AUTO_INCREMENT,
  `num_telefone` char(20) DEFAULT NULL,
  `fk_cod_tipo` int DEFAULT NULL,
  PRIMARY KEY (`cod_telefone`),
  KEY `fk_cod_tipo` (`fk_cod_tipo`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fk_cod_tipo`) REFERENCES `tipo_telefone` (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'3391-0020',9),(2,'3201-5034',7),(3,'3351-0022',9),(4,'3291-1220',8),(5,'2391-0020',8),(6,'9999-5020',7),(7,'9899-5020',7),(8,'9898-1220',7),(9,'9899-5020',7),(10,'9890-5024',7),(11,'98485-5020',7),(12,'3446-5958',8),(13,'3246-5957',8),(14,'3146-5857',8),(15,'2246-5959',8),(16,'3244-5957',8),(17,'246-5950',8),(18,'4246-5956',9);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_aluno`
--

DROP TABLE IF EXISTS `telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_aluno` (
  `cod_tel_aluno` int NOT NULL AUTO_INCREMENT,
  `fk_RA` int NOT NULL,
  `fk_cod_telefone` int NOT NULL,
  PRIMARY KEY (`cod_tel_aluno`),
  KEY `fk_RA` (`fk_RA`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_logradouro`
--

DROP TABLE IF EXISTS `tipo_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_logradouro` (
  `cod_tipo_logradouro` int NOT NULL AUTO_INCREMENT,
  `tipo_logradouro` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_logradouro`
--

LOCK TABLES `tipo_logradouro` WRITE;
/*!40000 ALTER TABLE `tipo_logradouro` DISABLE KEYS */;
INSERT INTO `tipo_logradouro` VALUES (1,'Avenida'),(2,'Aeroporta'),(3,'Avenida'),(4,'Chacara'),(5,'Campo'),(6,'Condominio');
/*!40000 ALTER TABLE `tipo_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefone` (
  `cod_tipo` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` char(8) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (7,'celular'),(8,'comerc'),(9,'residenc');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `cod_turma` int NOT NULL AUTO_INCREMENT,
  `periodo` char(8) DEFAULT NULL,
  `num_alunos` int DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'2018/22',30,'2018-02-02','2022-02-12',3),(2,'2018/22',28,'2019-02-04','2023-04-12',4),(3,'2018/22',35,'2018-02-02','2022-02-12',8),(4,'2020/24',30,'2020-02-02','2024-04-12',7),(5,'2018/22',35,'2018-02-02','2022-02-12',3),(6,'2018/22',25,'2019-02-04','2023-04-12',5),(7,'2020/24',35,'2020-02-02','2024-04-12',10),(8,'2019/22',30,'2019-02-04','2022-02-12',1);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 16:44:03
