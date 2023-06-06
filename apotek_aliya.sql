/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.4.13-MariaDB : Database - apotek_aliya
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`apotek_aliya` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `apotek_aliya`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `user` varchar(30) NOT NULL,
  `password` char(30) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `admin` */

LOCK TABLES `admin` WRITE;

insert  into `admin`(`user`,`password`) values 
('aliya','123');

UNLOCK TABLES;

/*Table structure for table `akun` */

DROP TABLE IF EXISTS `akun`;

CREATE TABLE `akun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `password` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4;

/*Data for the table `akun` */

LOCK TABLES `akun` WRITE;

insert  into `akun`(`id`,`user`,`password`) values 
(62,'aliya','123');

UNLOCK TABLES;

/*Table structure for table `obat` */

DROP TABLE IF EXISTS `obat`;

CREATE TABLE `obat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_obat` varchar(50) DEFAULT NULL,
  `harga_obat` char(50) NOT NULL,
  `kode_obat` char(10) NOT NULL,
  `stok_obat` int(12) DEFAULT NULL,
  `foto` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;

/*Data for the table `obat` */

LOCK TABLES `obat` WRITE;

insert  into `obat`(`id`,`nama_obat`,`harga_obat`,`kode_obat`,`stok_obat`,`foto`) values 
(68,'VITALOG C PLUS ZING ','45.000','001',400,'b79d796ce926fafbbb83cb5b9b17977a'),
(69,'BECOM ZET TABLET','26.000','002',100,'16c1e96ca049f58f2bd90c6ece50ac5a'),
(70,'ZEGAVIT KAPLET','30.000','003',30,'f46d77723797e6264b9775d337809c5d'),
(71,'HEPATIN  TABLET','45.000','004',50,'4966fa91841f314ed801b8807e6f17e3'),
(72,'VIDORAN SMART STRAW TABLET','15.000','005',30,'423a94baa5fe9f1157cfa6c72cd981a8'),
(73,'LACTO B BAYI','9.000','008',50,'e7bb306fb2cad67120768d315a76f0b0'),
(74,'BISOPROLOL FUMARATE TABLET','2.000','009',100,'e8da16f6b851d75f8410696d580d7735'),
(75,'PAARACETAMOL TABLET','3.000','010',200,'c6f868044970b9ae4bd2305e43d897d5'),
(76,'AMPLODIPINE TABLET','4.000','011',300,'c7667a448e93f26af3864b0dd0ee1ac0'),
(77,'SENSODYNE HERBAL ','35.000','012',100,'b6434e9638fe44daf20a208ec37998d6'),
(78,'ALBIBET','200.000','013',50,'9dddd8ad33ca4d7502582e10ee42f51d'),
(79,'TOLAKLINU HERBAL MINT','15.000','014',100,'fcd611cb5b2fb93bdf71079f8c6735f6'),
(80,'PERMEN OB ','2.500','014',500,'cf8abb8bcde6d475f72bdc94971b1545'),
(81,'OB HERBAL SIRUP','10.000','015',20,'51b480781f6e40e1d24b02e37365f097'),
(82,'KONIDIN LOZ HERBAL','4.000','016',200,'61b4181f68497cce59ef26aa92a49d70'),
(83,'OBASA HERBAL','18.000','018',100,'946a9d4113545266cc1762d1ec6a3304'),
(84,'SIDOMUNCUL LINGZHI','63.000','017',100,'3bc3eb23a95146aa4abfa52ae5b52608');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
