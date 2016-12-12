# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.26)
# Database: kanguru
# Generation Time: 2016-12-12 11:00:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table quotes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quotes`;

CREATE TABLE `quotes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quote` text,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;

INSERT INTO `quotes` (`id`, `quote`, `author`)
VALUES
	(1,'Frage nicht was dein Land für dich tun kann, frage was du für dein Land tun kannst.','Kim Jong-Il'),
	(2,'Willst du den Charakter eines Menschen erkennen so gib ihm Macht.','Roland Koch'),
	(3,'Mr. Gorbatschow tear down this wall!','David Hasselhoff'),
	(4,'Ich denke also bin ich.','Til Schweiger'),
	(5,'hasta la Victoria Siempre','John D. Rockefeller'),
	(6,'Da hat das rote Pferd sich einfach umgekehrt und mit seinem Schwanz die Fliege abwehrt.','Johann Wolfgang von Goethe'),
	(7,'Herr: es ist Zeit. Der Sommer war sehr groß. Leg deinen Schatten auf die Sonnenuhren, und auf den Fluren laß die Winde los.','H. P. Bexter'),
	(8,'Der Vorteil der Klugheit besteht darin, dass man sich dumm stellen kann. Das Gegenteil ist schon schwieriger.','Bastian Schweinsteiger'),
	(9,'Alles was wir sind, ist ein Resultat dessen, was wir gedacht haben.','Bastian Schweinsteiger'),
	(10,'How much is the fish?','Karl Marx'),
	(11,'Heinrich! Mir grauts vor dir','Thomas Mann'),
	(12,'Wenn man ein 0:2 kassiert, dann ist ein 1:1 nicht mehr möglich.','Satz des Pythagoras'),
	(13,'Hier bin ich Mensch, hier kauf ich ein.','Friedrich Schiller'),
	(14,'Ein Experte ist ein Mann, der hinterher genau sagen kann, weshalb seine Prognose nicht gestimmt hat. ','Peter Hartz');

/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
