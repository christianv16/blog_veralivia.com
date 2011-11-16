-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema Blogs
--

CREATE DATABASE IF NOT EXISTS Blogs;
USE Blogs;

--
-- Definition of table `Blogs`.`auth_group`
--

DROP TABLE IF EXISTS `Blogs`.`auth_group`;
CREATE TABLE  `Blogs`.`auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`auth_group`
--

/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
LOCK TABLES `auth_group` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`auth_group_permissions`
--

DROP TABLE IF EXISTS `Blogs`.`auth_group_permissions`;
CREATE TABLE  `Blogs`.`auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`auth_group_permissions`
--

/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
LOCK TABLES `auth_group_permissions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`auth_message`
--

DROP TABLE IF EXISTS `Blogs`.`auth_message`;
CREATE TABLE  `Blogs`.`auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=598 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`auth_message`
--

/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
LOCK TABLES `auth_message` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`auth_permission`
--

DROP TABLE IF EXISTS `Blogs`.`auth_permission`;
CREATE TABLE  `Blogs`.`auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`auth_permission`
--

/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
LOCK TABLES `auth_permission` WRITE;
INSERT INTO `Blogs`.`auth_permission` VALUES  (1,'Can add Navigation',1,'add_navigation'),
 (2,'Can change Navigation',1,'change_navigation'),
 (3,'Can delete Navigation',1,'delete_navigation'),
 (4,'Can add Navigation Item',2,'add_navigationitem'),
 (5,'Can change Navigation Item',2,'change_navigationitem'),
 (6,'Can delete Navigation Item',2,'delete_navigationitem'),
 (7,'Can add Bookmark',3,'add_bookmark'),
 (8,'Can change Bookmark',3,'change_bookmark'),
 (9,'Can delete Bookmark',3,'delete_bookmark'),
 (10,'Can add Bookmark Item',4,'add_bookmarkitem'),
 (11,'Can change Bookmark Item',4,'change_bookmarkitem'),
 (12,'Can delete Bookmark Item',4,'delete_bookmarkitem'),
 (13,'Can add Help',5,'add_help'),
 (14,'Can change Help',5,'change_help'),
 (15,'Can delete Help',5,'delete_help'),
 (16,'Can add Help Entry',6,'add_helpitem'),
 (17,'Can change Help Entry',6,'change_helpitem'),
 (18,'Can delete Help Entry',6,'delete_helpitem'),
 (19,'Can add permission',7,'add_permission'),
 (20,'Can change permission',7,'change_permission'),
 (21,'Can delete permission',7,'delete_permission'),
 (22,'Can add group',8,'add_group'),
 (23,'Can change group',8,'change_group'),
 (24,'Can delete group',8,'delete_group'),
 (25,'Can add user',9,'add_user'),
 (26,'Can change user',9,'change_user'),
 (27,'Can delete user',9,'delete_user'),
 (28,'Can add message',10,'add_message'),
 (29,'Can change message',10,'change_message'),
 (30,'Can delete message',10,'delete_message'),
 (31,'Can add content type',11,'add_contenttype'),
 (32,'Can change content type',11,'change_contenttype'),
 (33,'Can delete content type',11,'delete_contenttype'),
 (34,'Can add session',12,'add_session'),
 (35,'Can change session',12,'change_session'),
 (36,'Can delete session',12,'delete_session'),
 (37,'Can add site',13,'add_site'),
 (38,'Can change site',13,'change_site'),
 (39,'Can delete site',13,'delete_site'),
 (40,'Can add log entry',14,'add_logentry'),
 (41,'Can change log entry',14,'change_logentry'),
 (42,'Can delete log entry',14,'delete_logentry'),
 (43,'Can add author',15,'add_author'),
 (44,'Can change author',15,'change_author'),
 (45,'Can delete author',15,'delete_author'),
 (46,'Can add tag',16,'add_tag'),
 (47,'Can change tag',16,'change_tag'),
 (48,'Can delete tag',16,'delete_tag'),
 (49,'Can add channel',17,'add_channel'),
 (50,'Can change channel',17,'change_channel'),
 (51,'Can delete channel',17,'delete_channel'),
 (52,'Can add blog',18,'add_blog'),
 (53,'Can change blog',18,'change_blog'),
 (54,'Can delete blog',18,'delete_blog'),
 (55,'Can add post',19,'add_post'),
 (56,'Can change post',19,'change_post'),
 (57,'Can delete post',19,'delete_post'),
 (58,'Can add microblog',20,'add_microblog'),
 (59,'Can change microblog',20,'change_microblog'),
 (60,'Can delete microblog',20,'delete_microblog'),
 (61,'Can add comment',21,'add_comment'),
 (62,'Can change comment',21,'change_comment'),
 (63,'Can delete comment',21,'delete_comment'),
 (64,'Can add page base',22,'add_pagebase'),
 (65,'Can change page base',22,'change_pagebase'),
 (66,'Can delete page base',22,'delete_pagebase'),
 (67,'Can add page',23,'add_page'),
 (68,'Can change page',23,'change_page'),
 (69,'Can delete page',23,'delete_page'),
 (70,'Can add image upload',24,'add_imageupload'),
 (71,'Can change image upload',24,'change_imageupload'),
 (72,'Can delete image upload',24,'delete_imageupload'),
 (73,'Can add file upload',25,'add_fileupload'),
 (74,'Can change file upload',25,'change_fileupload'),
 (75,'Can delete file upload',25,'delete_fileupload');
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`auth_user`
--

DROP TABLE IF EXISTS `Blogs`.`auth_user`;
CREATE TABLE  `Blogs`.`auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`auth_user`
--

/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
LOCK TABLES `auth_user` WRITE;
INSERT INTO `Blogs`.`auth_user` VALUES  (1,'admin','','','christian@hotmail.com','sha1$17cc2$ca50a03e7d6c5aa9ff4b60d91fe6a853380871dc',1,1,1,'2011-06-28 17:40:50','2011-06-02 16:38:54');
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`auth_user_groups`
--

DROP TABLE IF EXISTS `Blogs`.`auth_user_groups`;
CREATE TABLE  `Blogs`.`auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`auth_user_groups`
--

/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
LOCK TABLES `auth_user_groups` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`auth_user_user_permissions`
--

DROP TABLE IF EXISTS `Blogs`.`auth_user_user_permissions`;
CREATE TABLE  `Blogs`.`auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`auth_user_user_permissions`
--

/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
LOCK TABLES `auth_user_user_permissions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`blog_author`
--

DROP TABLE IF EXISTS `Blogs`.`blog_author`;
CREATE TABLE  `Blogs`.`blog_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bio` longtext NOT NULL,
  `bio_markup_type` varchar(20) NOT NULL,
  `bio_version` int(11) NOT NULL,
  `bio_html` longtext NOT NULL,
  `bio_summary_html` longtext NOT NULL,
  `bio_text` longtext NOT NULL,
  `bio_data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_author_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`blog_author`
--

/*!40000 ALTER TABLE `blog_author` DISABLE KEYS */;
LOCK TABLES `blog_author` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog_author` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`blog_blog`
--

DROP TABLE IF EXISTS `Blogs`.`blog_blog`;
CREATE TABLE  `Blogs`.`blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `tagline` varchar(200) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `posts_per_page` int(11) NOT NULL,
  `template` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `description_markup_type` varchar(20) NOT NULL,
  `description_version` int(11) NOT NULL,
  `description_html` longtext NOT NULL,
  `description_summary_html` longtext NOT NULL,
  `description_text` longtext NOT NULL,
  `description_data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `blog_blog_5d52dd10` (`owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`blog_blog`
--

/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
LOCK TABLES `blog_blog` WRITE;
INSERT INTO `Blogs`.`blog_blog` VALUES  (1,1,'2011-06-02 16:45:58','Ubuntu para todos','','default',10,'','','postmarkup',0,'','','','KGRwMQou\n'),
 (2,1,'2011-06-24 09:54:58','Centos','','centos',10,'','DSD','postmarkup',0,'<p>DSD</p>','','DSD','KGRwMQou\n'),
 (3,1,'2011-06-24 10:02:31','Home','Christian Vera Livia','christian-vera-livia',10,'','sasa','postmarkup',0,'<p>sasa</p>','','sasa','KGRwMQou\n');
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`blog_channel`
--

DROP TABLE IF EXISTS `Blogs`.`blog_channel`;
CREATE TABLE  `Blogs`.`blog_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `tagline` varchar(200) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `posts_per_page` int(11) NOT NULL,
  `template` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `description_markup_type` varchar(20) NOT NULL,
  `description_version` int(11) NOT NULL,
  `description_html` longtext NOT NULL,
  `description_summary_html` longtext NOT NULL,
  `description_text` longtext NOT NULL,
  `description_data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_channel_a951d5d6` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`blog_channel`
--

/*!40000 ALTER TABLE `blog_channel` DISABLE KEYS */;
LOCK TABLES `blog_channel` WRITE;
INSERT INTO `Blogs`.`blog_channel` VALUES  (1,'Arquitectura','linux,android,centos,ubuntu','Arquitectura',10,'','','postmarkup',0,'','','','KGRwMQou\n');
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog_channel` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`blog_channel_blogs`
--

DROP TABLE IF EXISTS `Blogs`.`blog_channel_blogs`;
CREATE TABLE  `Blogs`.`blog_channel_blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `channel_id` (`channel_id`,`blog_id`),
  KEY `blog_channel_blogs_f9972756` (`channel_id`),
  KEY `blog_channel_blogs_472bc96c` (`blog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`blog_channel_blogs`
--

/*!40000 ALTER TABLE `blog_channel_blogs` DISABLE KEYS */;
LOCK TABLES `blog_channel_blogs` WRITE;
INSERT INTO `Blogs`.`blog_channel_blogs` VALUES  (5,1,2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog_channel_blogs` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`blog_microblog`
--

DROP TABLE IF EXISTS `Blogs`.`blog_microblog`;
CREATE TABLE  `Blogs`.`blog_microblog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `service` varchar(100) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `url` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `poll_minutes` int(11) NOT NULL,
  `template_path` varchar(255) NOT NULL,
  `next_poll_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_microblog_472bc96c` (`blog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`blog_microblog`
--

/*!40000 ALTER TABLE `blog_microblog` DISABLE KEYS */;
LOCK TABLES `blog_microblog` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog_microblog` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`blog_post`
--

DROP TABLE IF EXISTS `Blogs`.`blog_post`;
CREATE TABLE  `Blogs`.`blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `show_comments` tinyint(1) NOT NULL,
  `series` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `created_time` datetime NOT NULL,
  `edit_time` datetime NOT NULL,
  `display_time` datetime NOT NULL,
  `tags_text` longtext NOT NULL,
  `content` longtext NOT NULL,
  `version` varchar(100) NOT NULL,
  `version_id` int(11) DEFAULT NULL,
  `template_path` varchar(100) NOT NULL,
  `content_markup_type` varchar(20) NOT NULL,
  `content_version` int(11) NOT NULL,
  `content_html` longtext NOT NULL,
  `content_summary_html` longtext NOT NULL,
  `content_text` longtext NOT NULL,
  `content_data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_472bc96c` (`blog_id`),
  KEY `blog_post_a951d5d6` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`blog_post`
--

/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
LOCK TABLES `blog_post` WRITE;
INSERT INTO `Blogs`.`blog_post` VALUES  (1,1,'Curso Linux: Taller de Ubuntu','ubuntu',1,'',1,1,'00001','','2011-06-02 16:47:07','2011-06-20 17:33:35','2011-06-02 16:46:17','ubuntu','Está es la clase mas teórica del curso pero es importante para tener un marco de referencia en el cual desarrollar el curso.\r\n\r\n \r\n\r\nIntroduccion: - Richard Stallman creó el movimiento del Software Libre con el proyecto GNU (GNU not UNIX) que intentaba crear un sistema operativo superior a Unix y que fuera completamente Libre; por ello creo el proyecto GNU en 1983 y la Fundación de Software Libre (FSF) en 1985, donde estableció de un marco de referencia moral, político y legal para el movimiento del software libre, como una alternativa al desarrollo y distribución del software no libre o privativo.\r\n\r\n \r\n\r\n- Fruto de este trabajo se creó la licencia GPL y LPGL.\r\n\r\nLa GPL establece 4 libertades [1]\r\n\r\n* Libertad 0: la libertad de usar el programa, con cualquier propósito.\r\n\r\n* Libertad 1: la libertad de estudiar cómo funciona el programa y modificarlo, adaptándolo a tus necesidades.\r\n\r\n* Libertad 2: la libertad de distribuir copias del programa, con lo cual puedes ayudar a tu prójimo.\r\n\r\n* Libertad 3: la libertad de mejorar el programa y hacer públicas esas mejoras a los demás, de modo que toda la comunidad se beneficie.\r\n\r\n \r\n\r\nCuando uno publica o distribuye un software bajo la GPL esta obligado a publicar el código fuente del mismo.\r\n\r\nQuien recibe el software puede modificarlo a su gusto; pero no puede redistribuir el código modificado sin que estas tengan el código fuente de sus modificaciones, con lo cual se asegura la libertad del usuario.\r\n\r\nSin embargo lo que no obliga la GPL, es que tu tengas que publicar obligatoriamente las modificaciones del software GPL que hayas tomado como base. Por ejemplo Google gana miles de millones de dólares usando Linux y software libre (GPL y otros) pero solo publica un porcentaje muy limitado de sus proyectos internos.\r\n\r\n \r\n\r\n- En 1991, en Helsinki, Linus Torvalds comenzó un proyecto que más tarde se llegó a ser el núcleo Linux; en ese instante el no sabía la dimensión que iba a alcanzar su proyecto. A fines de 1992, Linux libera su kernel con la licencia GPL, consiguiendo que el Sistema Operativo lograra un crecimiento espectacular. - Linux como proyecto es solamente el núcleo (kernel) del sistema operativo; la combinación con las herramientas de GNU (compilador de C, bash, el debugger) ha creado la base para desarrollar las distribuciones; por eso es común referirse a Linux como GNU/Linux.\r\n\r\n \r\n\r\n- Las distribuciones toman en un momento determinado una versión del kernel de Linux y la combinan con herramientas GNU, le crean un instalador y herramientas de administración, algunas distribuciones se basan en otras distribuciones y le dan un valor añadido.\r\n\r\nSin embargo del universo de distribuciones las más importantes; por su relevancia e influencia en las demás distribuciones, son dos: Debian (basado en deb y apt) y RedHat (basado en rpm y yum).\r\n\r\n Mapa de Distribuciones\r\n \r\n\r\n* Distribuciones\r\nDebian  (Servidor)              |RedHat\r\n Ubuntu (Distro mas popular)    |   Fedora (Escritorio)\r\n   Desktop (Escritorio)         |   RHEL   (Servidor)\r\n   Server  (Servidor)           |     CentOS (clon de RHEL) \r\n Knoppix   (Escritorio)         |SuSE\r\n   1er LiveCD                   |   OpenSuSE (Escritorio)\r\n                                |   SLES (Servidor)\r\n                                |Mandriva (Escritorio)\r\n\r\n\r\nOtros: Slackware, Gentoo, DanSmall Linux, etc\r\n\r\n \r\n\r\n- Debian representa el éxito de la comunidad, garantizando la libertad de sus usuarios y apoyo desinteresado de los mismos para hacer de Debian una distribución de excelente calidad.\r\n\r\n \r\n\r\n- RedHat representa el éxito de la empresa y consolida a Linux dentro de los servidores corporativos.\r\n\r\n \r\n\r\nLinux: ------> Tiene su propio sistema de archivos ext2,ext3,ext4,reiserfs @\r\n\r\nSwat --> es una memoria virtual en el disco duro @\r\n\r\nLinux soporta: FAT, NTFS, JFS, XFS\r\n\r\nPara instalar en linux se necesita como mínimo una particion Swap y una partición raíz.\r\n\r\nDirectorios: -----------\r\n \r\n\r\n /   ----> raiz\r\n\r\n /boot ----> directorio de arranque del sistema operativo\r\n             configuración de grub\r\n \r\n /etc  ----> archivos de configuración\r\n                                            \r\n /home ----> directorios de los usuarios\r\n\r\n /usr  ----> binarios,librerías,documentacion\r\n\r\n /var  ----> archivos que crecen o modifican (correo,base de datos, logs)\r\n\r\n /dev  ----> referencia de los perifericos (hardware)\r\n\r\n /proc ----> directorio temporal con punteros a los recursos fisicos\r\n             de la computadora\r\n\r\n /root ----> directorio principal de Dios\r\n\r\n /tmp  ----> directorio temporal\r\n\r\n /opt  ----> algunos programas instalan aquí\r\n\r\n /mnt  --|>[sirven para mostrar dispositivos de media, unidades de red.\r\n /media--|\r\n\r\n\r\n\r\nLinux trabaja con archivos y directorios. Los archivos pueden ser planos-binarios-enlaces\r\n\r\nPermisos: Lectura-Escritura-Ejecucion','live',NULL,'','postmarkup',0,'<p>Está es la clase mas teórica del curso pero es importante para tener un marco de referencia en el cual desarrollar el curso.\r</p><p>Introduccion: - Richard Stallman creó el movimiento del Software Libre con el proyecto GNU (GNU not UNIX) que intentaba crear un sistema operativo superior a Unix y que fuera completamente Libre; por ello creo el proyecto GNU en 1983 y la Fundación de Software Libre (FSF) en 1985, donde estableció de un marco de referencia moral, político y legal para el movimiento del software libre, como una alternativa al desarrollo y distribución del software no libre o privativo.\r</p><p>- Fruto de este trabajo se creó la licencia GPL y LPGL.\r</p><p>La GPL establece 4 libertades \r</p><p>* Libertad 0: la libertad de usar el programa, con cualquier propósito.\r</p><p>* Libertad 1: la libertad de estudiar cómo funciona el programa y modificarlo, adaptándolo a tus necesidades.\r</p><p>* Libertad 2: la libertad de distribuir copias del programa, con lo cual puedes ayudar a tu prójimo.\r</p><p>* Libertad 3: la libertad de mejorar el programa y hacer públicas esas mejoras a los demás, de modo que toda la comunidad se beneficie.\r</p><p>Cuando uno publica o distribuye un software bajo la GPL esta obligado a publicar el código fuente del mismo.\r</p><p>Quien recibe el software puede modificarlo a su gusto; pero no puede redistribuir el código modificado sin que estas tengan el código fuente de sus modificaciones, con lo cual se asegura la libertad del usuario.\r</p><p>Sin embargo lo que no obliga la GPL, es que tu tengas que publicar obligatoriamente las modificaciones del software GPL que hayas tomado como base. Por ejemplo Google gana miles de millones de dólares usando Linux y software libre (GPL y otros) pero solo publica un porcentaje muy limitado de sus proyectos internos.\r</p><p>- En 1991, en Helsinki, Linus Torvalds comenzó un proyecto que más tarde se llegó a ser el núcleo Linux; en ese instante el no sabía la dimensión que iba a alcanzar su proyecto. A fines de 1992, Linux libera su kernel con la licencia GPL, consiguiendo que el Sistema Operativo lograra un crecimiento espectacular. - Linux como proyecto es solamente el núcleo (kernel) del sistema operativo; la combinación con las herramientas de GNU (compilador de C, bash, el debugger) ha creado la base para desarrollar las distribuciones; por eso es común referirse a Linux como GNU/Linux.\r</p><p>- Las distribuciones toman en un momento determinado una versión del kernel de Linux y la combinan con herramientas GNU, le crean un instalador y herramientas de administración, algunas distribuciones se basan en otras distribuciones y le dan un valor añadido.\r</p><p>Sin embargo del universo de distribuciones las más importantes; por su relevancia e influencia en las demás distribuciones, son dos: Debian (basado en deb y apt) y RedHat (basado en rpm y yum).\r</p><p> Mapa de Distribuciones\r</p><p>* Distribuciones\r</p><p>Debian  (Servidor)              |RedHat\r</p><p> Ubuntu (Distro mas popular)    |   Fedora (Escritorio)\r</p><p>   Desktop (Escritorio)         |   RHEL   (Servidor)\r</p><p>   Server  (Servidor)           |     CentOS (clon de RHEL) \r</p><p> Knoppix   (Escritorio)         |SuSE\r</p><p>   1er LiveCD                   |   OpenSuSE (Escritorio)\r</p><p>                                |   SLES (Servidor)\r</p><p>                                |Mandriva (Escritorio)\r</p><p>Otros: Slackware, Gentoo, DanSmall Linux, etc\r</p><p>- Debian representa el éxito de la comunidad, garantizando la libertad de sus usuarios y apoyo desinteresado de los mismos para hacer de Debian una distribución de excelente calidad.\r</p><p>- RedHat representa el éxito de la empresa y consolida a Linux dentro de los servidores corporativos.\r</p><p>Linux: ------&gt; Tiene su propio sistema de archivos ext2,ext3,ext4,reiserfs @\r</p><p>Swat --&gt; es una memoria virtual en el disco duro @\r</p><p>Linux soporta: FAT, NTFS, JFS, XFS\r</p><p>Para instalar en linux se necesita como mínimo una particion Swap y una partición raíz.\r</p><p>Directorios: -----------\r</p><p> /   ----&gt; raiz\r</p><p> /boot ----&gt; directorio de arranque del sistema operativo\r</p><p>             configuración de grub\r</p><p> /etc  ----&gt; archivos de configuración\r</p><p> /home ----&gt; directorios de los usuarios\r</p><p> /usr  ----&gt; binarios,librerías,documentacion\r</p><p> /var  ----&gt; archivos que crecen o modifican (correo,base de datos, logs)\r</p><p> /dev  ----&gt; referencia de los perifericos (hardware)\r</p><p> /proc ----&gt; directorio temporal con punteros a los recursos fisicos\r</p><p>             de la computadora\r</p><p> /root ----&gt; directorio principal de Dios\r</p><p> /tmp  ----&gt; directorio temporal\r</p><p> /opt  ----&gt; algunos programas instalan aquí\r</p><p> /mnt  --|&gt;[sirven para mostrar dispositivos de media, unidades de red.\r</p><p> /media--|\r</p><p>Linux trabaja con archivos y directorios. Los archivos pueden ser planos-binarios-enlaces\r</p><p>Permisos: Lectura-Escritura-Ejecucion</p>','','Está es la clase mas teórica del curso pero es importante para tener un marco de referencia en el cual desarrollar el curso.\rIntroduccion: - Richard Stallman creó el movimiento del Software Libre con el proyecto GNU (GNU not UNIX) que intentaba crear un sistema operativo superior a Unix y que fuera completamente Libre; por ello creo el proyecto GNU en 1983 y la Fundación de Software Libre (FSF) en 1985, donde estableció de un marco de referencia moral, político y legal para el movimiento del software libre, como una alternativa al desarrollo y distribución del software no libre o privativo.\r- Fruto de este trabajo se creó la licencia GPL y LPGL.\rLa GPL establece 4 libertades \r* Libertad 0: la libertad de usar el programa, con cualquier propósito.\r* Libertad 1: la libertad de estudiar cómo funciona el programa y modificarlo, adaptándolo a tus necesidades.\r* Libertad 2: la libertad de distribuir copias del programa, con lo cual puedes ayudar a tu prójimo.\r* Libertad 3: la libertad de mejorar el programa y hacer públicas esas mejoras a los demás, de modo que toda la comunidad se beneficie.\rCuando uno publica o distribuye un software bajo la GPL esta obligado a publicar el código fuente del mismo.\rQuien recibe el software puede modificarlo a su gusto; pero no puede redistribuir el código modificado sin que estas tengan el código fuente de sus modificaciones, con lo cual se asegura la libertad del usuario.\rSin embargo lo que no obliga la GPL, es que tu tengas que publicar obligatoriamente las modificaciones del software GPL que hayas tomado como base. Por ejemplo Google gana miles de millones de dólares usando Linux y software libre (GPL y otros) pero solo publica un porcentaje muy limitado de sus proyectos internos.\r- En 1991, en Helsinki, Linus Torvalds comenzó un proyecto que más tarde se llegó a ser el núcleo Linux; en ese instante el no sabía la dimensión que iba a alcanzar su proyecto. A fines de 1992, Linux libera su kernel con la licencia GPL, consiguiendo que el Sistema Operativo lograra un crecimiento espectacular. - Linux como proyecto es solamente el núcleo (kernel) del sistema operativo; la combinación con las herramientas de GNU (compilador de C, bash, el debugger) ha creado la base para desarrollar las distribuciones; por eso es común referirse a Linux como GNU/Linux.\r- Las distribuciones toman en un momento determinado una versión del kernel de Linux y la combinan con herramientas GNU, le crean un instalador y herramientas de administración, algunas distribuciones se basan en otras distribuciones y le dan un valor añadido.\rSin embargo del universo de distribuciones las más importantes; por su relevancia e influencia en las demás distribuciones, son dos: Debian (basado en deb y apt) y RedHat (basado en rpm y yum).\r Mapa de Distribuciones\r* Distribuciones\rDebian  (Servidor)              |RedHat\r Ubuntu (Distro mas popular)    |   Fedora (Escritorio)\r   Desktop (Escritorio)         |   RHEL   (Servidor)\r   Server  (Servidor)           |     CentOS (clon de RHEL) \r Knoppix   (Escritorio)         |SuSE\r   1er LiveCD                   |   OpenSuSE (Escritorio)\r                                |   SLES (Servidor)\r                                |Mandriva (Escritorio)\rOtros: Slackware, Gentoo, DanSmall Linux, etc\r- Debian representa el éxito de la comunidad, garantizando la libertad de sus usuarios y apoyo desinteresado de los mismos para hacer de Debian una distribución de excelente calidad.\r- RedHat representa el éxito de la empresa y consolida a Linux dentro de los servidores corporativos.\rLinux: ------ Tiene su propio sistema de archivos ext2,ext3,ext4,reiserfs @\rSwat -- es una memoria virtual en el disco duro @\rLinux soporta: FAT, NTFS, JFS, XFS\rPara instalar en linux se necesita como mínimo una particion Swap y una partición raíz.\rDirectorios: -----------\r /   ---- raiz\r /boot ---- directorio de arranque del sistema operativo\r             configuración de grub\r /etc  ---- archivos de configuración\r /home ---- directorios de los usuarios\r /usr  ---- binarios,librerías,documentacion\r /var  ---- archivos que crecen o modifican (correo,base de datos, logs)\r /dev  ---- referencia de los perifericos (hardware)\r /proc ---- directorio temporal con punteros a los recursos fisicos\r             de la computadora\r /root ---- directorio principal de Dios\r /tmp  ---- directorio temporal\r /opt  ---- algunos programas instalan aquí\r /mnt  --|[sirven para mostrar dispositivos de media, unidades de red.\r /media--|\rLinux trabaja con archivos y directorios. Los archivos pueden ser planos-binarios-enlaces\rPermisos: Lectura-Escritura-Ejecucion','KGRwMQou\n'),
 (2,1,'Curso Linux: Taller de Ubuntu III ( comandos básicos )','curso-linux-taller-de-ubuntu-iii-comandos-basicos',1,'',1,1,'00002','','2011-06-20 16:27:52','2011-06-20 16:48:45','2011-06-20 16:26:19','ubuntu,linux,centos,RHEL','Una vez instalado Ubuntu, hemos configurado el usuario alumno, con clave alumno, haremos uso ahora de los comandos básicos. Convenciones $> ---> Representa el prompt por lo tanto no debe escribirse como comando Los comandos se ejecutan secuencialmente, es importante ver el resultado de los mismos.\r\n\r\nFicheros (Archivos)\r\n--------------------\r\n@ Planos	/etc/network/interfaces\r\n@ Binarios	/usr/bin/vim\r\n@ Enlaces	/vmlinuz-->/boot/vmlinuz...\r\n@ Especiales	/dev/sda1-->partición montada en la raiz /\r\n	tty1\r\n	.	]\r\n	.	]--->consolas de texto\r\n	.	]\r\n	ty6     ] \r\n	ty7	--->consola de gráfica\r\n\r\n tty1  --> Entrar con Ctrl+Alt+F1, para tty3 (Ctrl+Alt+F3) \r\n\r\nEntrar en una de las consolas con el usuario creado en la instalación:\r\n	user:alumno\r\n	pass:alumno\r\n\r\nmuestra informacion de uid (identificador de usuario) gid, \r\n(grupo principal) y grupos adicionales del usuario actual\r\n\r\n[code linux] $> id[/code] \r\n\r\nmuestra la ruta del directorio actual\r\n[code linux] $>pwd[/code] \r\n\r\nabre una sesion como root, ejecuta comando como root\r\n[code linux] $> sudo su -[/code] \r\n\r\ncierra la sesion actual\r\n[code linux] $> exit[/code] \r\n\r\n\r\n\r\n','live',NULL,'','postmarkup',0,'<p>Una vez instalado Ubuntu, hemos configurado el usuario alumno, con clave alumno, haremos uso ahora de los comandos básicos. Convenciones $&gt; ---&gt; Representa el prompt por lo tanto no debe escribirse como comando Los comandos se ejecutan secuencialmente, es importante ver el resultado de los mismos.\r</p><p>Ficheros (Archivos)\r</p><p>--------------------\r</p><p>@ Planos	/etc/network/interfaces\r</p><p>@ Binarios	/usr/bin/vim\r</p><p>@ Enlaces	/vmlinuz--&gt;/boot/vmlinuz...\r</p><p>@ Especiales	/dev/sda1--&gt;partición montada en la raiz /\r</p><p>	tty1\r</p><p>	.	]\r</p><p>	.	]---&gt;consolas de texto\r</p><p>	.	]\r</p><p>	ty6     ] \r</p><p>	ty7	---&gt;consola de gráfica\r</p><p> tty1  --&gt; Entrar con Ctrl+Alt+F1, para tty3 (Ctrl+Alt+F3) \r</p><p>Entrar en una de las consolas con el usuario creado en la instalación:\r</p><p>	user:alumno\r</p><p>	pass:alumno\r</p><p>muestra informacion de uid (identificador de usuario) gid, \r</p><p>(grupo principal) y grupos adicionales del usuario actual\r</p><p><div class=\"code\"><pre> $&gt; id</pre></div>\r</p><p>muestra la ruta del directorio actual\r</p><p><div class=\"code\"><pre> $&gt;pwd</pre></div>\r</p><p>abre una sesion como root, ejecuta comando como root\r</p><p><div class=\"code\"><pre> $&gt; sudo su -</pre></div>\r</p><p>cierra la sesion actual\r</p><p><div class=\"code\"><pre> $&gt; exit</pre></div>\r</p>','','Una vez instalado Ubuntu, hemos configurado el usuario alumno, con clave alumno, haremos uso ahora de los comandos básicos. Convenciones $ --- Representa el prompt por lo tanto no debe escribirse como comando Los comandos se ejecutan secuencialmente, es importante ver el resultado de los mismos.\rFicheros (Archivos)\r--------------------\r@ Planos	/etc/network/interfaces\r@ Binarios	/usr/bin/vim\r@ Enlaces	/vmlinuz--/boot/vmlinuz...\r@ Especiales	/dev/sda1--partición montada en la raiz /\r	tty1\r	.	]\r	.	]---consolas de texto\r	.	]\r	ty6     ] \r	ty7	---consola de gráfica\r tty1  -- Entrar con Ctrl+Alt+F1, para tty3 (Ctrl+Alt+F3) \rEntrar en una de las consolas con el usuario creado en la instalación:\r	user:alumno\r	pass:alumno\rmuestra informacion de uid (identificador de usuario) gid, \r(grupo principal) y grupos adicionales del usuario actual\r $ id\rmuestra la ruta del directorio actual\r $pwd\rabre una sesion como root, ejecuta comando como root\r $ sudo su -\rcierra la sesion actual\r $ exit\r','KGRwMQou\n'),
 (3,2,'virtualevn para todos','virtualevn-para-todos',1,'',0,1,'00005','','2011-06-24 09:43:17','2011-06-24 09:55:46','2011-06-24 09:42:15','entorno,desarrollo,arquitectura','Una de las cosas que me traje del último pyday en Córdoba de fin de abril, fue la idea de empezar a usar virtualenv.\r\n\r\nVirtualenv es un software que virtualizar entornos python. Esto permite tener distintas configuraciones sin romper la dependencia de paquetes entre los distintos proyectos. Permite tener distintas versiones de paquetes instalados y sobre todo para cuando necesitamos instalar paquetes, no tenemos permisos de root y tenemos que andar rogando al sysadmin que los instale.\r\n\r\nA continuación unas notas de instalación y uso. Fueron hechas usando ubuntu, pero son similares en debian y parecidas en cualquier otro linux. Para los demás, vean la doc oficial de virtualenv.\r\n\r\nInstalando\r\n\r\nLo primero es instalar virtualenv y pip para instalar los paquetes dentro de nuestro entorno.\r\n\r\n    apt-get install python-virtualenv\r\n    apt-get install python-pi\r\n\r\n','live',NULL,'','postmarkup',0,'<p>Una de las cosas que me traje del último pyday en Córdoba de fin de abril, fue la idea de empezar a usar virtualenv.\r</p><p>Virtualenv es un software que virtualizar entornos python. Esto permite tener distintas configuraciones sin romper la dependencia de paquetes entre los distintos proyectos. Permite tener distintas versiones de paquetes instalados y sobre todo para cuando necesitamos instalar paquetes, no tenemos permisos de root y tenemos que andar rogando al sysadmin que los instale.\r</p><p>A continuación unas notas de instalación y uso. Fueron hechas usando ubuntu, pero son similares en debian y parecidas en cualquier otro linux. Para los demás, vean la doc oficial de virtualenv.\r</p><p>Instalando\r</p><p>Lo primero es instalar virtualenv y pip para instalar los paquetes dentro de nuestro entorno.\r</p><p>    apt-get install python-virtualenv\r</p><p>    apt-get install python-pi\r</p>','','Una de las cosas que me traje del último pyday en Córdoba de fin de abril, fue la idea de empezar a usar virtualenv.\rVirtualenv es un software que virtualizar entornos python. Esto permite tener distintas configuraciones sin romper la dependencia de paquetes entre los distintos proyectos. Permite tener distintas versiones de paquetes instalados y sobre todo para cuando necesitamos instalar paquetes, no tenemos permisos de root y tenemos que andar rogando al sysadmin que los instale.\rA continuación unas notas de instalación y uso. Fueron hechas usando ubuntu, pero son similares en debian y parecidas en cualquier otro linux. Para los demás, vean la doc oficial de virtualenv.\rInstalando\rLo primero es instalar virtualenv y pip para instalar los paquetes dentro de nuestro entorno.\r    apt-get install python-virtualenv\r    apt-get install python-pi\r','KGRwMQou\n'),
 (4,3,'Blog Christian Vera Livia','personal',1,'',1,1,'00006','','2011-06-24 10:03:58','2011-06-24 10:03:58','2011-06-24 10:02:58','christian,vera,livia','You are reading the Blog of Will McGugan.\r\n\r\nI am software developer with more than 10 years of experience. I specialize in Python technologies, which has been the focus of my career for a number of years. My recent work has been in developing web applications with the Django framework, but I have also used Python for desktop applications (mainly in wxPython), video games and tools.\r\n\r\nI am the author of Game Development with Python and Pygame, an introductory guide to developing video games with the PyGame module for Python. I was also the technical reviewer for Foundations of Agile Python Development.','live',NULL,'','postmarkup',0,'<p>You are reading the Blog of Will McGugan.\r</p><p>I am software developer with more than 10 years of experience. I specialize in Python technologies, which has been the focus of my career for a number of years. My recent work has been in developing web applications with the Django framework, but I have also used Python for desktop applications (mainly in wxPython), video games and tools.\r</p><p>I am the author of Game Development with Python and Pygame, an introductory guide to developing video games with the PyGame module for Python. I was also the technical reviewer for Foundations of Agile Python Development.</p>','','You are reading the Blog of Will McGugan.\rI am software developer with more than 10 years of experience. I specialize in Python technologies, which has been the focus of my career for a number of years. My recent work has been in developing web applications with the Django framework, but I have also used Python for desktop applications (mainly in wxPython), video games and tools.\rI am the author of Game Development with Python and Pygame, an introductory guide to developing video games with the PyGame module for Python. I was also the technical reviewer for Foundations of Agile Python Development.','KGRwMQou\n');
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`blog_post_tags`
--

DROP TABLE IF EXISTS `Blogs`.`blog_post_tags`;
CREATE TABLE  `Blogs`.`blog_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`,`tag_id`),
  KEY `blog_post_tags_699ae8ca` (`post_id`),
  KEY `blog_post_tags_3747b463` (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`blog_post_tags`
--

/*!40000 ALTER TABLE `blog_post_tags` DISABLE KEYS */;
LOCK TABLES `blog_post_tags` WRITE;
INSERT INTO `Blogs`.`blog_post_tags` VALUES  (42,1,5),
 (38,2,2),
 (39,2,3),
 (40,2,4),
 (41,2,5),
 (48,3,11),
 (47,3,10),
 (46,3,9),
 (49,4,12),
 (50,4,13),
 (51,4,14);
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog_post_tags` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`blog_tag`
--

DROP TABLE IF EXISTS `Blogs`.`blog_tag`;
CREATE TABLE  `Blogs`.`blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `template` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `description_markup_type` varchar(20) NOT NULL,
  `description_version` int(11) NOT NULL,
  `description_html` longtext NOT NULL,
  `description_summary_html` longtext NOT NULL,
  `description_text` longtext NOT NULL,
  `description_data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_tag_472bc96c` (`blog_id`),
  KEY `blog_tag_a951d5d6` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`blog_tag`
--

/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
LOCK TABLES `blog_tag` WRITE;
INSERT INTO `Blogs`.`blog_tag` VALUES  (1,1,'christian','christian','',0,'','postmarkup',0,'','','','KGRwMQou\n'),
 (2,1,'linux','linux','',1,'','postmarkup',0,'','','','KGRwMQou\n'),
 (3,1,'RHEL','rhel','',1,'','postmarkup',0,'','','','KGRwMQou\n'),
 (4,1,'centos','centos','',1,'','postmarkup',0,'','','','KGRwMQou\n'),
 (5,1,'ubuntu','ubuntu','',2,'','postmarkup',0,'','','','KGRwMQou\n'),
 (6,1,'desarrollo','desarrollo','',0,'','postmarkup',0,'','','','KGRwMQou\n'),
 (7,1,'arquitectura','arquitectura','',0,'','postmarkup',0,'','','','KGRwMQou\n'),
 (8,1,'entorno','entorno','',0,'','postmarkup',0,'','','','KGRwMQou\n'),
 (9,2,'desarrollo','desarrollo','',1,'','postmarkup',0,'','','','KGRwMQou\n'),
 (10,2,'arquitectura','arquitectura','',1,'','postmarkup',0,'','','','KGRwMQou\n'),
 (11,2,'entorno','entorno','',1,'','postmarkup',0,'','','','KGRwMQou\n'),
 (12,3,'vera','vera','',1,'','postmarkup',0,'','','','KGRwMQou\n'),
 (13,3,'livia','livia','',1,'','postmarkup',0,'','','','KGRwMQou\n'),
 (14,3,'christian','christian','',1,'','postmarkup',0,'','','','KGRwMQou\n');
UNLOCK TABLES;
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`comments_comment`
--

DROP TABLE IF EXISTS `Blogs`.`comments_comment`;
CREATE TABLE  `Blogs`.`comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `moderated` tinyint(1) NOT NULL,
  `created_time` datetime NOT NULL,
  `type` varchar(100) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `group` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `content_markup_type` varchar(20) NOT NULL,
  `content_version` int(11) NOT NULL,
  `content_html` longtext NOT NULL,
  `content_summary_html` longtext NOT NULL,
  `content_text` longtext NOT NULL,
  `content_data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_e4470c6e` (`content_type_id`),
  KEY `comments_comment_829e37fd` (`object_id`),
  KEY `comments_comment_5d52dd10` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`comments_comment`
--

/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
LOCK TABLES `comments_comment` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`django_admin_log`
--

DROP TABLE IF EXISTS `Blogs`.`django_admin_log`;
CREATE TABLE  `Blogs`.`django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`django_admin_log`
--

/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
LOCK TABLES `django_admin_log` WRITE;
INSERT INTO `Blogs`.`django_admin_log` VALUES  (1,'2011-06-02 16:45:58',1,18,'1','Christian Vera Livia',1,''),
 (2,'2011-06-02 16:47:07',1,19,'1','Blog Christian Vera Livia',1,''),
 (3,'2011-06-20 16:14:49',1,18,'1','Christian Vera Livia',2,'Modificado/a description y description_html.'),
 (4,'2011-06-20 16:17:15',1,19,'1','Curso Linux: Taller de Ubuntu',2,'Modificado/a title, slug, content y content_html.'),
 (5,'2011-06-20 16:18:23',1,19,'1','Curso Linux: Taller de Ubuntu',2,'Modificado/a content y content_html.'),
 (6,'2011-06-20 16:19:11',1,19,'1','Curso Linux: Taller de Ubuntu',2,'Modificado/a content y content_html.'),
 (7,'2011-06-20 16:19:29',1,19,'1','Curso Linux: Taller de Ubuntu',2,'Modificado/a content y content_html.'),
 (8,'2011-06-20 16:27:52',1,19,'2','Curso Linux: Taller de Ubuntu III ( comandos básicos )',1,''),
 (9,'2011-06-20 16:30:40',1,19,'2','Curso Linux: Taller de Ubuntu III ( comandos básicos )',2,'Modificado/a content_html y content_summary_html.'),
 (10,'2011-06-20 16:31:23',1,19,'2','Curso Linux: Taller de Ubuntu III ( comandos básicos )',2,'Modificado/a content_html.'),
 (11,'2011-06-20 16:32:42',1,19,'2','Curso Linux: Taller de Ubuntu III ( comandos básicos )',2,'Modificado/a content_html y content_summary_html.'),
 (12,'2011-06-20 16:33:23',1,19,'2','Curso Linux: Taller de Ubuntu III ( comandos básicos )',2,'Modificado/a content y content_html.'),
 (13,'2011-06-20 16:34:04',1,19,'2','Curso Linux: Taller de Ubuntu III ( comandos básicos )',2,'Modificado/a content y content_html.'),
 (14,'2011-06-20 16:34:54',1,19,'2','Curso Linux: Taller de Ubuntu III ( comandos básicos )',2,'Modificado/a content y content_html.'),
 (15,'2011-06-20 16:37:17',1,19,'2','Curso Linux: Taller de Ubuntu III ( comandos básicos )',2,'Modificado/a content y content_html.'),
 (16,'2011-06-20 16:48:45',1,19,'2','Curso Linux: Taller de Ubuntu III ( comandos básicos )',2,'Modificado/a content y content_html.'),
 (17,'2011-06-20 17:33:35',1,19,'1','Curso Linux: Taller de Ubuntu',2,'Modificado/a tags_text y content_html.'),
 (18,'2011-06-22 11:23:47',1,17,'1','INFORMATICA',1,''),
 (19,'2011-06-22 11:26:26',1,17,'1','INFORMATICA',2,'Modificado/a description y description_html.'),
 (20,'2011-06-22 11:29:20',1,17,'1','INFORMATICA',2,'Modificado/a description.'),
 (21,'2011-06-24 09:12:30',1,22,'1','INFORMATICA',1,''),
 (22,'2011-06-24 09:29:33',1,22,'1','INFORMATICA',2,'Modificado/a template.'),
 (23,'2011-06-24 09:30:08',1,23,'1','informatica',1,''),
 (24,'2011-06-24 09:30:15',1,23,'1','informatica',2,'Modificado/a published.'),
 (25,'2011-06-24 09:31:10',1,23,'1','informatica',2,'Modificado/a parent.'),
 (26,'2011-06-24 09:33:29',1,23,'1','informatica',2,'Modificado/a parent.'),
 (27,'2011-06-24 09:34:28',1,23,'1','informatica',2,'Modificado/a allow_comments, show_comments y content.'),
 (28,'2011-06-24 09:36:45',1,23,'2','new-page-1',3,''),
 (29,'2011-06-24 09:43:17',1,19,'3','virtualevn para todos',1,''),
 (30,'2011-06-24 09:44:39',1,22,'1','Arquitectura',2,'Modificado/a name.'),
 (31,'2011-06-24 09:44:42',1,22,'1','Arquitectura',2,'No ha cambiado ningún campo.'),
 (32,'2011-06-24 09:45:28',1,23,'1','informatica',2,'Modificado/a title.'),
 (33,'2011-06-24 09:46:16',1,23,'3','informatica/sasas',1,''),
 (34,'2011-06-24 09:47:30',1,23,'3','informatica/sasas',2,'Modificado/a published y show_comments.'),
 (35,'2011-06-24 09:48:53',1,23,'3','informatica/sasas',3,''),
 (36,'2011-06-24 09:48:53',1,23,'1','informatica',3,''),
 (37,'2011-06-24 09:49:33',1,23,'4','virtualevn-para-todos',1,''),
 (38,'2011-06-24 09:50:32',1,23,'4','virtualevn-para-todos',2,'Modificado/a parent.'),
 (39,'2011-06-24 09:52:33',1,17,'1','Arquitectura',2,'Modificado/a title, slug, description y description_html.'),
 (40,'2011-06-24 09:53:51',1,18,'1','Ubuntu para todos',2,'Modificado/a title y description.'),
 (41,'2011-06-24 09:54:58',1,18,'2','CENTOS',1,''),
 (42,'2011-06-24 09:55:17',1,18,'2','Centos',2,'Modificado/a title.'),
 (43,'2011-06-24 09:55:46',1,19,'3','virtualevn para todos',2,'Modificado/a blog y content_html.'),
 (44,'2011-06-24 10:02:31',1,18,'3','Christian Vera Livia',1,''),
 (45,'2011-06-24 10:03:58',1,19,'4','Blog Christian Vera Livia',1,''),
 (46,'2011-06-24 10:10:17',1,18,'3','Home',2,'Modificado/a title.'),
 (47,'2011-06-24 10:12:10',1,17,'1','Arquitectura',2,'Modificado/a blogs.'),
 (48,'2011-06-24 11:58:24',1,24,'1','ImageUpload object',1,''),
 (49,'2011-06-24 12:00:57',1,24,'1','ImageUpload object',2,'Modificado/a image.'),
 (50,'2011-06-24 12:02:47',1,24,'1','ImageUpload object',3,''),
 (51,'2011-06-24 12:03:17',1,24,'2','ImageUpload object',1,''),
 (52,'2011-06-24 12:07:52',1,24,'2','ImageUpload object',2,'No ha cambiado ningún campo.'),
 (53,'2011-06-24 14:57:44',1,24,'3','ImageUpload object',1,''),
 (54,'2011-06-24 15:03:43',1,24,'3','ImageUpload object',2,'Modificado/a image.'),
 (55,'2011-06-24 16:23:40',1,24,'3','ImageUpload object',2,'Modificado/a image.'),
 (56,'2011-06-24 16:29:02',1,24,'4','ImageUpload object',1,''),
 (57,'2011-06-24 16:43:37',1,24,'5','ImageUpload object',1,''),
 (58,'2011-06-27 10:59:26',1,24,'5','ImageUpload object',2,'Modificado/a image.'),
 (59,'2011-06-28 14:31:19',1,24,'6','ImageUpload object',1,''),
 (60,'2011-06-28 15:10:52',1,24,'7','ImageUpload object',1,''),
 (61,'2011-06-28 15:49:36',1,24,'7','ImageUpload object',2,'Modificado/a name y image.'),
 (62,'2011-06-28 17:44:45',1,24,'8','ImageUpload object',1,''),
 (63,'2011-06-28 17:45:29',1,24,'8','ImageUpload object',2,'Modificado/a name.'),
 (64,'2011-06-28 17:45:49',1,24,'8','ImageUpload object',2,'Modificado/a description.'),
 (65,'2011-06-28 17:48:19',1,24,'8','ImageUpload object',2,'Modificado/a image.');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`django_content_type`
--

DROP TABLE IF EXISTS `Blogs`.`django_content_type`;
CREATE TABLE  `Blogs`.`django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`django_content_type`
--

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
LOCK TABLES `django_content_type` WRITE;
INSERT INTO `Blogs`.`django_content_type` VALUES  (1,'Navigation','grappelli','navigation'),
 (2,'Navigation Item','grappelli','navigationitem'),
 (3,'Bookmark','grappelli','bookmark'),
 (4,'Bookmark Item','grappelli','bookmarkitem'),
 (5,'Help','grappelli','help'),
 (6,'Help Entry','grappelli','helpitem'),
 (7,'permission','auth','permission'),
 (8,'group','auth','group'),
 (9,'user','auth','user'),
 (10,'message','auth','message'),
 (11,'content type','contenttypes','contenttype'),
 (12,'session','sessions','session'),
 (13,'site','sites','site'),
 (14,'log entry','admin','logentry'),
 (15,'author','blog','author'),
 (16,'tag','blog','tag'),
 (17,'channel','blog','channel'),
 (18,'blog','blog','blog'),
 (19,'post','blog','post'),
 (20,'microblog','blog','microblog'),
 (21,'comment','comments','comment'),
 (22,'page base','pages','pagebase'),
 (23,'page','pages','page'),
 (24,'image upload','resources','imageupload'),
 (25,'file upload','resources','fileupload');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`django_session`
--

DROP TABLE IF EXISTS `Blogs`.`django_session`;
CREATE TABLE  `Blogs`.`django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`django_session`
--

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
LOCK TABLES `django_session` WRITE;
INSERT INTO `Blogs`.`django_session` VALUES  ('97473ae1bfb51b16b8d7f6f3414d4291','YzliYzM2NzEyZWUxZTFkYzY4YTJlNGM1NTMwMmNhZWNmMGI3NDZlOTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2011-07-12 17:40:47'),
 ('f54ffd8692781ec43a544262d8f8cb3c','NGM1ODAzYjdjYWEyOTI4Mzc0Y2RlMzExYWU3NGRhODExYjliMzI2MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-06-16 16:40:24'),
 ('9e53ad73be141a833fb393186781c79b','NGM1ODAzYjdjYWEyOTI4Mzc0Y2RlMzExYWU3NGRhODExYjliMzI2MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-07-12 12:57:04'),
 ('5048370e5fc38f0c7a892ab809114eb7','NGM1ODAzYjdjYWEyOTI4Mzc0Y2RlMzExYWU3NGRhODExYjliMzI2MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-07-12 12:46:14'),
 ('3301955219c362221be1c8d2c226e917','NGM1ODAzYjdjYWEyOTI4Mzc0Y2RlMzExYWU3NGRhODExYjliMzI2MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-07-08 09:32:22'),
 ('b74b2e52466c9def06c3332232b39a34','NGM1ODAzYjdjYWEyOTI4Mzc0Y2RlMzExYWU3NGRhODExYjliMzI2MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-07-12 14:41:38'),
 ('c452e10d4ecae696489d2f71e5cd363a','YzliYzM2NzEyZWUxZTFkYzY4YTJlNGM1NTMwMmNhZWNmMGI3NDZlOTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2011-07-12 17:40:47'),
 ('ab66814650903d4bfd6d9f8c12e8bc5d','NGM1ODAzYjdjYWEyOTI4Mzc0Y2RlMzExYWU3NGRhODExYjliMzI2MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-07-12 17:40:50');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`django_site`
--

DROP TABLE IF EXISTS `Blogs`.`django_site`;
CREATE TABLE  `Blogs`.`django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`django_site`
--

/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
LOCK TABLES `django_site` WRITE;
INSERT INTO `Blogs`.`django_site` VALUES  (1,'example.com','example.com');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`grappelli_bookmark`
--

DROP TABLE IF EXISTS `Blogs`.`grappelli_bookmark`;
CREATE TABLE  `Blogs`.`grappelli_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grappelli_bookmark_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`grappelli_bookmark`
--

/*!40000 ALTER TABLE `grappelli_bookmark` DISABLE KEYS */;
LOCK TABLES `grappelli_bookmark` WRITE;
INSERT INTO `Blogs`.`grappelli_bookmark` VALUES  (1,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `grappelli_bookmark` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`grappelli_bookmarkitem`
--

DROP TABLE IF EXISTS `Blogs`.`grappelli_bookmarkitem`;
CREATE TABLE  `Blogs`.`grappelli_bookmarkitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookmark_id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `link` varchar(200) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grappelli_bookmarkitem_424927c4` (`bookmark_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`grappelli_bookmarkitem`
--

/*!40000 ALTER TABLE `grappelli_bookmarkitem` DISABLE KEYS */;
LOCK TABLES `grappelli_bookmarkitem` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `grappelli_bookmarkitem` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`grappelli_help`
--

DROP TABLE IF EXISTS `Blogs`.`grappelli_help`;
CREATE TABLE  `Blogs`.`grappelli_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`grappelli_help`
--

/*!40000 ALTER TABLE `grappelli_help` DISABLE KEYS */;
LOCK TABLES `grappelli_help` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `grappelli_help` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`grappelli_helpitem`
--

DROP TABLE IF EXISTS `Blogs`.`grappelli_helpitem`;
CREATE TABLE  `Blogs`.`grappelli_helpitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `help_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grappelli_helpitem_b4fcaabf` (`help_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`grappelli_helpitem`
--

/*!40000 ALTER TABLE `grappelli_helpitem` DISABLE KEYS */;
LOCK TABLES `grappelli_helpitem` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `grappelli_helpitem` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`grappelli_navigation`
--

DROP TABLE IF EXISTS `Blogs`.`grappelli_navigation`;
CREATE TABLE  `Blogs`.`grappelli_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`grappelli_navigation`
--

/*!40000 ALTER TABLE `grappelli_navigation` DISABLE KEYS */;
LOCK TABLES `grappelli_navigation` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `grappelli_navigation` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`grappelli_navigationitem`
--

DROP TABLE IF EXISTS `Blogs`.`grappelli_navigationitem`;
CREATE TABLE  `Blogs`.`grappelli_navigationitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navigation_id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `link` varchar(200) NOT NULL,
  `category` varchar(1) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grappelli_navigationitem_f8e4a364` (`navigation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`grappelli_navigationitem`
--

/*!40000 ALTER TABLE `grappelli_navigationitem` DISABLE KEYS */;
LOCK TABLES `grappelli_navigationitem` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `grappelli_navigationitem` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`grappelli_navigationitem_groups`
--

DROP TABLE IF EXISTS `Blogs`.`grappelli_navigationitem_groups`;
CREATE TABLE  `Blogs`.`grappelli_navigationitem_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navigationitem_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigationitem_id` (`navigationitem_id`,`group_id`),
  KEY `grappelli_navigationitem_groups_77063c1` (`navigationitem_id`),
  KEY `grappelli_navigationitem_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`grappelli_navigationitem_groups`
--

/*!40000 ALTER TABLE `grappelli_navigationitem_groups` DISABLE KEYS */;
LOCK TABLES `grappelli_navigationitem_groups` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `grappelli_navigationitem_groups` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`grappelli_navigationitem_users`
--

DROP TABLE IF EXISTS `Blogs`.`grappelli_navigationitem_users`;
CREATE TABLE  `Blogs`.`grappelli_navigationitem_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navigationitem_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigationitem_id` (`navigationitem_id`,`user_id`),
  KEY `grappelli_navigationitem_users_77063c1` (`navigationitem_id`),
  KEY `grappelli_navigationitem_users_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`grappelli_navigationitem_users`
--

/*!40000 ALTER TABLE `grappelli_navigationitem_users` DISABLE KEYS */;
LOCK TABLES `grappelli_navigationitem_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `grappelli_navigationitem_users` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`pages_page`
--

DROP TABLE IF EXISTS `Blogs`.`pages_page`;
CREATE TABLE  `Blogs`.`pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `inherit` tinyint(1) NOT NULL,
  `created_time` datetime NOT NULL,
  `edit_time` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `promoted` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `version` varchar(100) NOT NULL,
  `version_id` int(11) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `show_comments` tinyint(1) NOT NULL,
  `content_markup_type` varchar(20) NOT NULL,
  `content_version` int(11) NOT NULL,
  `content_html` longtext NOT NULL,
  `content_summary_html` longtext NOT NULL,
  `content_text` longtext NOT NULL,
  `content_data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_page_56f2c585` (`base_id`),
  KEY `pages_page_63f17a16` (`parent_id`),
  KEY `pages_page_a951d5d6` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`pages_page`
--

/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
LOCK TABLES `pages_page` WRITE;
INSERT INTO `Blogs`.`pages_page` VALUES  (5,NULL,NULL,'new-page-1','New Page','new-page-1',0,'2011-06-24 10:33:57','2011-06-24 10:33:57',0,0,'','live',NULL,1,1,'postmarkup',0,'','','','KGRwMQou\n'),
 (4,1,4,'virtualevn-para-todos','virtualevn-para-todos','virtualevn-para-todos',0,'2011-06-24 09:49:33','2011-06-24 09:50:32',1,1,'xzxz','live',NULL,0,1,'postmarkup',0,'<p>xzxz</p>','','xzxz','KGRwMQou\n');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`pages_pagebase`
--

DROP TABLE IF EXISTS `Blogs`.`pages_pagebase`;
CREATE TABLE  `Blogs`.`pages_pagebase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`pages_pagebase`
--

/*!40000 ALTER TABLE `pages_pagebase` DISABLE KEYS */;
LOCK TABLES `pages_pagebase` WRITE;
INSERT INTO `Blogs`.`pages_pagebase` VALUES  (1,'Arquitectura','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pages_pagebase` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`resources_fileupload`
--

DROP TABLE IF EXISTS `Blogs`.`resources_fileupload`;
CREATE TABLE  `Blogs`.`resources_fileupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resources_fileupload_5d52dd10` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`resources_fileupload`
--

/*!40000 ALTER TABLE `resources_fileupload` DISABLE KEYS */;
LOCK TABLES `resources_fileupload` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `resources_fileupload` ENABLE KEYS */;


--
-- Definition of table `Blogs`.`resources_imageupload`
--

DROP TABLE IF EXISTS `Blogs`.`resources_imageupload`;
CREATE TABLE  `Blogs`.`resources_imageupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resources_imageupload_5d52dd10` (`owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blogs`.`resources_imageupload`
--

/*!40000 ALTER TABLE `resources_imageupload` DISABLE KEYS */;
LOCK TABLES `resources_imageupload` WRITE;
INSERT INTO `Blogs`.`resources_imageupload` VALUES  (8,1,'Christian Vera','uploads/sony.gif','Analista de Sistemas Desarrollador');
UNLOCK TABLES;
/*!40000 ALTER TABLE `resources_imageupload` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
