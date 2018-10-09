/*
SQLyog Community v12.5.0 (64 bit)
MySQL - 5.7.19 : Database - basededatosagenda
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`basededatosagenda` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `basededatosagenda`;

/*Table structure for table `eventos` */

DROP TABLE IF EXISTS `eventos`;

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `fecha_ini` date NOT NULL,
  `hora_ini` time DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `dia_completo` int(11) NOT NULL,
  `Usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Eventos_Usuarios_idx` (`Usuarios_id`),
  CONSTRAINT `fk_Eventos_Usuarios` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `eventos` */

insert  into `eventos`(`id`,`titulo`,`fecha_ini`,`hora_ini`,`fecha_fin`,`hora_fin`,`dia_completo`,`Usuarios_id`) values 
(2,'Prueba 1','2018-05-02','07:00:00','2018-05-03','14:00:00',0,1),
(3,'Prueba 2','2018-05-16',NULL,NULL,NULL,1,1);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nombre`,`email`,`pass`,`nacimiento`) values 
(1,'Usuario 1','user1@prueba.com','$2y$10$0K4dmbBNBvQeNxs55Pbtyu.L9EFCX91kC/fnjDcP8K4ldZv2vDpmW','2018-05-17'),
(2,'Usuario 2','user2@prueba.com','$2y$10$R/W6p27Qe3CFrjnysbW1k.8qVQlExIFKtJMIOgN8pLi9vLZU9ubO2','2018-05-17'),
(3,'Usuario 3','user3@prueba.com','$2y$10$hr3rfNW1QIc67m3znYC4NeBw.mtEHXdnh5gud6LYSfVVIxXFZSvVO','2018-05-17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
