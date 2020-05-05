-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qltv
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `chuongtrinhmuontra`
--

DROP TABLE IF EXISTS `chuongtrinhmuontra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuongtrinhmuontra` (
  `MaMuonDaTra` varchar(255) NOT NULL,
  `MaSach` varchar(255) NOT NULL,
  `GhiChu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DaTra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgayTra` date NOT NULL,
  PRIMARY KEY (`MaMuonDaTra`),
  KEY `MaSach` (`MaSach`),
  CONSTRAINT `chuongtrinhmuontra_ibfk_1` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`MaSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuongtrinhmuontra`
--

LOCK TABLES `chuongtrinhmuontra` WRITE;
/*!40000 ALTER TABLE `chuongtrinhmuontra` DISABLE KEYS */;
/*!40000 ALTER TABLE `chuongtrinhmuontra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docgia`
--

DROP TABLE IF EXISTS `docgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docgia` (
  `MaDocGia` varchar(255) NOT NULL,
  `TenDocGia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SoThe` varchar(255) NOT NULL,
  PRIMARY KEY (`MaDocGia`),
  KEY `SoThe` (`SoThe`),
  CONSTRAINT `docgia_ibfk_1` FOREIGN KEY (`SoThe`) REFERENCES `thethuvien` (`SoThe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docgia`
--

LOCK TABLES `docgia` WRITE;
/*!40000 ALTER TABLE `docgia` DISABLE KEYS */;
/*!40000 ALTER TABLE `docgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muontra`
--

DROP TABLE IF EXISTS `muontra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muontra` (
  `MaMuonTra` varchar(255) NOT NULL,
  `SoThe` varchar(255) NOT NULL,
  `MaNhanVien` varchar(255) NOT NULL,
  `NgayMuon` date NOT NULL,
  `MaSach` varchar(255) NOT NULL,
  `MaTacGia` varchar(255) NOT NULL,
  `MaTheLoai` varchar(255) NOT NULL,
  PRIMARY KEY (`MaMuonTra`),
  KEY `SoThe` (`SoThe`),
  KEY `MaNhanVien` (`MaNhanVien`),
  KEY `MaTheLoai` (`MaTheLoai`),
  KEY `MaTacGia` (`MaTacGia`),
  KEY `MaSach` (`MaSach`),
  CONSTRAINT `muontra_ibfk_1` FOREIGN KEY (`SoThe`) REFERENCES `thethuvien` (`SoThe`),
  CONSTRAINT `muontra_ibfk_2` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`),
  CONSTRAINT `muontra_ibfk_3` FOREIGN KEY (`MaTheLoai`) REFERENCES `theloai` (`MaTheLoai`),
  CONSTRAINT `muontra_ibfk_4` FOREIGN KEY (`MaTacGia`) REFERENCES `tacgia` (`MaTacGia`),
  CONSTRAINT `muontra_ibfk_5` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`MaSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muontra`
--

LOCK TABLES `muontra` WRITE;
/*!40000 ALTER TABLE `muontra` DISABLE KEYS */;
/*!40000 ALTER TABLE `muontra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(255) NOT NULL,
  `HoTen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `SoDienThoai` int NOT NULL,
  PRIMARY KEY (`MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhaxuatban`
--

DROP TABLE IF EXISTS `nhaxuatban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhaxuatban` (
  `MaNXB` varchar(255) NOT NULL,
  `TenNXB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(255) NOT NULL,
  `ThongTinNguoiDaiDien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaNXB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhaxuatban`
--

LOCK TABLES `nhaxuatban` WRITE;
/*!40000 ALTER TABLE `nhaxuatban` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhaxuatban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach` (
  `MaSach` varchar(255) NOT NULL,
  `TenSach` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MaTacGia` varchar(255) NOT NULL,
  `MaTheLoai` varchar(255) NOT NULL,
  `MaNXB` varchar(255) NOT NULL,
  `NamXuatBan` year DEFAULT NULL,
  PRIMARY KEY (`MaSach`),
  KEY `MaTacGia` (`MaTacGia`),
  KEY `MaTheLoai` (`MaTheLoai`),
  KEY `MaNXB` (`MaNXB`),
  CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`MaTacGia`) REFERENCES `tacgia` (`MaTacGia`),
  CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`MaTheLoai`) REFERENCES `theloai` (`MaTheLoai`),
  CONSTRAINT `sach_ibfk_3` FOREIGN KEY (`MaNXB`) REFERENCES `nhaxuatban` (`MaNXB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
/*!40000 ALTER TABLE `sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tacgia`
--

DROP TABLE IF EXISTS `tacgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tacgia` (
  `MaTacGia` varchar(255) NOT NULL,
  `TenTacGia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `GhiChu` text,
  PRIMARY KEY (`MaTacGia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tacgia`
--

LOCK TABLES `tacgia` WRITE;
/*!40000 ALTER TABLE `tacgia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tacgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theloai`
--

DROP TABLE IF EXISTS `theloai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theloai` (
  `MaTheLoai` varchar(255) NOT NULL,
  `TenTheLoai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaTheLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theloai`
--

LOCK TABLES `theloai` WRITE;
/*!40000 ALTER TABLE `theloai` DISABLE KEYS */;
/*!40000 ALTER TABLE `theloai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thethuvien`
--

DROP TABLE IF EXISTS `thethuvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thethuvien` (
  `SoThe` varchar(255) NOT NULL,
  `HoTen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `SoDienThoai` int NOT NULL,
  PRIMARY KEY (`SoThe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thethuvien`
--

LOCK TABLES `thethuvien` WRITE;
/*!40000 ALTER TABLE `thethuvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `thethuvien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-05 16:44:40
