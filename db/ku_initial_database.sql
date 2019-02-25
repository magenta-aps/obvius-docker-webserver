-- MySQL dump 10.17  Distrib 10.3.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ku
-- ------------------------------------------------------
-- Server version	10.3.11-MariaDB-1:10.3.11+maria~bionic

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
-- Table structure for table `access_specifications`
--

DROP TABLE IF EXISTS `access_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_specifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apply_type` enum('only','also','not','always','never') DEFAULT NULL,
  `view` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `create` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `edit` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `publish` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `delete` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `change_access` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_specifications`
--

LOCK TABLES `access_specifications` WRITE;
/*!40000 ALTER TABLE `access_specifications` DISABLE KEYS */;
INSERT INTO `access_specifications` VALUES (1,'always',1,1,1,1,1,1),(2,'also',1,1,1,1,1,1);
/*!40000 ALTER TABLE `access_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_leftmenu_cache`
--

DROP TABLE IF EXISTS `admin_leftmenu_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_leftmenu_cache` (
  `id` varchar(255) NOT NULL,
  `cache_data` blob DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
--
-- Table structure for table `all_tags`
--

DROP TABLE IF EXISTS `all_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_tags` (
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_tags`
--

LOCK TABLES `all_tags` WRITE;
/*!40000 ALTER TABLE `all_tags` DISABLE KEYS */;
INSERT INTO `all_tags` VALUES (''),('10-20-30'),('Africa'),('Afrika'),('Afrikas Horn'),('akc'),('alumne'),('Anne-Marie Elbe'),('Annette Michelsen la Cour'),('Arne Astrup'),('august krogh symposium 2010'),('Avancerede funktioner'),('Ã†Ã˜Ã…'),('bente kiens'),('Bente Rona Jensen'),('bevilling'),('bevillinger'),('bfh'),('bfs'),('bie'),('Billeder'),('bmk'),('bog'),('Bogudgivelse'),('cen'),('Chantal Mouffe'),('Charlotte Svendler Nielsen'),('coaching'),('coaching-uk'),('Copenhagen Competition'),('Crime'),('Culture'),('cws'),('Dansens Dag'),('Den gode uddannelse'),('Design og layout'),('Design_og_layout'),('Det Juridiske Fakultet'),('Det Samfundsvidenskabelige Fakultet'),('Dokumenttyper'),('doping'),('Eliteforsk'),('Eliteforsker'),('Eliteforskpris'),('Else TrangbÃ¦k'),('ENG'),('Erik A. Richter'),('Erik Mygind'),('Erik Richter'),('Et andet'),('EU'),('EURECO'),('Europa'),('Eva Wulff Helge'),('Faculty of Law'),('fah'),('fanger'),('Fast test 2'),('fÃ¦ngselsliv'),('fÃ¦ngsler'),('Flemming Balvig'),('fodbold'),('fodboldsundhed'),('Forhandlingsspil'),('fysisk aktivitet'),('Gertrud Pfister'),('Glen Nielsen'),('Globalisering'),('Gode websider'),('GrundlÃ¦ggende Obvius'),('hans bonde'),('HÃ¸jrebokse'),('Helle Winther'),('holdspil'),('Horn of Africa'),('hs'),('hs-bog'),('hss'),('hss-book'),('I gang'),('if'),('Indhold og struktur'),('Institut for IdrÃ¦t'),('Institut for Statskundskab'),('international ret'),('ip'),('ipv'),('Jacob Winecke'),('JÃ¸rgen Wojtaszewski'),('Jens Bangsbo'),('Jens Bo Nielsen'),('Jesper Sandfeld Melcher'),('Johan Wikman'),('JUR'),('Jura'),('Kalender'),('kee'),('kli'),('kredslÃ¸b'),('kredslÃ¸bssygdomme'),('kriminalitet'),('Krop'),('Kultur'),('Kulturnat 2010'),('kurt hÃ¸jlund'),('Kurt JÃ¸rgensen'),('Laila Ottesen'),('Lars Nybo'),('Laura Nielsen'),('Law'),('Legislation'),('Linda KjÃ¦r Minke'),('livsstil'),('livsstilssygdomme'),('Lone Friis Thing'),('Love'),('Lovgigning'),('Lykke Sylow'),('Lykke Sylow Hansen'),('Mads Bendiksen'),('Maria Willerslev-Olsen'),('Mark Schram Christensen'),('Martin Friedrichsen'),('Martin H. Rose'),('Medicin'),('mf'),('Michael Nyberg'),('Migration'),('Mit tag'),('Mogens Theisen Pedersen'),('Morten B. Randers'),('Morten Broberg'),('Morten Hostrup Nielsen'),('Morten Rosenmeier'),('motion'),('mp'),('Muhko'),('Natur'),('navne'),('NÃ¸dhjÃ¦lp'),('ncm'),('neurodag'),('Nicolas Caesar Petersen'),('NNF Center for Protein Research'),('nordcorp'),('Ny Nordisk Hverdagsmad'),('Obvius topmenu'),('Ophavsret'),('opus'),('or'),('Peter Krustrup'),('PhD dissertation'),('phd-course'),('phd-defence'),('phd-forsvar'),('phd-kursus'),('Pia Melcher'),('pin'),('Politik'),('presse'),('pris'),('priser'),('Prison'),('Punishment'),('Rebecca Adler-Nissen'),('Reinhard Stelter'),('research'),('Samfund'),('sf'),('Sine Agergaard'),('skot'),('Society'),('spes'),('Sprog'),('spw'),('Sundhed'),('Tabeller'),('Teachout'),('team sport'),('Test1'),('Thomas Gunnarsson'),('Thomas Rostgaard'),('tvÃ¦rs-projektet'),('TYSK'),('Udeskole'),('udviklingslande'),('Universitetsliv'),('Vejledning i Obvius'),('Venstremenu'),('Vibeke VindelÃ¸v'),('Webstedsansvarlige'),('wp4'),('Ylva Hellsten');
/*!40000 ALTER TABLE `all_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annotations`
--

DROP TABLE IF EXISTS `annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annotations` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `version` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `docid` (`docid`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations`
--

LOCK TABLES `annotations` WRITE;
/*!40000 ALTER TABLE `annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apache_edit_sessions`
--

DROP TABLE IF EXISTS `apache_edit_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apache_edit_sessions` (
  `id` char(32) NOT NULL,
  `a_session` mediumblob DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apache_edit_sessions`
--

LOCK TABLES `apache_edit_sessions` WRITE;
/*!40000 ALTER TABLE `apache_edit_sessions` DISABLE KEYS */;
INSERT INTO `apache_edit_sessions` VALUES ('07f1dd4e521cc12e04bb4dbd55e680bf','\n\0\0\0\n 07f1dd4e521cc12e04bb4dbd55e680bf\0\0\0_session_id','2019-02-25 12:02:07'),('17025417323a396e436034c23d777b8e','\n\0\0\0\n 17025417323a396e436034c23d777b8e\0\0\0_session_id','2019-02-25 12:02:45'),('1d9b8f65ee8a841e20a4c7279b246f9a','\n\0\0\0\n 1d9b8f65ee8a841e20a4c7279b246f9a\0\0\0_session_id','2019-02-25 12:06:17'),('2b07eb0a1f77e5837fb8a56968cfda43','\n\0\0\0\n 2b07eb0a1f77e5837fb8a56968cfda43\0\0\0_session_id','2019-02-25 11:56:08'),('3e066e64b3b054d20df5fa1ade7f49c6','\n\0\0\0\n 3e066e64b3b054d20df5fa1ade7f49c6\0\0\0_session_id','2019-02-25 11:43:46'),('48b6e2c5d1448a90e58e0fedc45cd8a2','\n\0\0\0\n 48b6e2c5d1448a90e58e0fedc45cd8a2\0\0\0_session_id','2019-02-25 12:01:01'),('4cee571a3584ad6ab73f82c6cf6a0271','\n\0\0\0\n 4cee571a3584ad6ab73f82c6cf6a0271\0\0\0_session_id','2019-02-25 11:47:35'),('4fed42f4222f8127c6ad4a4455f119f4','\n\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\nPreview\0\0\0label\nexisting\0\0\0object\0\0\0preview\0\0\0\0\0\0\nSave and publish\0\0\0label\nexisting\0\0\0object\0\0\0save_and_publish\0\0\0\nexisting\0\0\0object\nSave\0\0\0label\0\0\0save\0\0\0	functions\0\0\0\nTemporary_Data\0\0\0source\n	Temporary\0\0\0class\0\0\0\nkey\0\0\0identifiers\0\0\0organization\0\0\0\0\0\0\ntext\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\nextra_html_head_thisonly\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\0\0\0extra_html_head_thisonly\0\0\0\nline\0\0\0type�\0\0\0	mandatory\0\0\0key\0\0\0�\0\0\0	mandatory�\0\0\0\nrepeatable\nkontaktfelt\0\0\0type\0\0\0�\0\0\0	doctypeid\nenhed\0\0\0name\0\0\0validate_by_fieldspec\0\0\0enhed\0\0\0\0\0\0\n\rfree_keywords\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\nline\0\0\0type\0\0\0\rfree_keywords\0\0\0\0\0\0�\0\0\0	doctypeid\ndocref\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\nline\0\0\0type�\0\0\0\nrepeatable\0\0\0docref\0\0\0\0\0\0\nkeyword\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\n\rhumfakkeyword\0\0\0type\0\0\0keyword\0\0\0\0\0\0�\0\0\0	doctypeid\nauthor\0\0\0name\0\0\0validate_by_fieldspec\nauthor\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0author\0\0\0\ndatetime\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nexpires\0\0\0name\0\0\0validate_by_fieldspec\0\0\0expires\0\0\0\0\0\0\nupdatealertuser\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory\nupdatealertuser\0\0\0type�\0\0\0\nrepeatable\0\0\0updatealertuser\0\0\0�\0\0\0\nrepeatable\ntext\0\0\0type�\0\0\0	mandatory\0\0\0\nextra_html_body_thisonly\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\0\0\0extra_html_body_thisonly\0\0\0\0\0\0�\0\0\0	doctypeid\n	enhed_url\0\0\0name\0\0\0validate_by_fieldspec\nkontaktfelt\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0	enhed_url\0\0\0\0\0\0\nteaser\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\ntinymce4\0\0\0type�\0\0\0	mandatory\0\0\0teaser\0\0\0\ndate\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\ndocdate\0\0\0name\0\0\0validate_by_fieldspec\0\0\0docdate\0\0\0\0\0\0\nenable_comments\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\nradio\0\0\0type\0\0\0enable_comments\0\0\0\0\0\0�\0\0\0	doctypeid\n\nshow_title\0\0\0name\0\0\0validate_by_fieldspec\ncheckbox\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\nshow_title\0\0\0\nline\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\nsource\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\0\0\0source\0\0\0\0\0\0�\0\0\0	doctypeid\nseq\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\nsequence\0\0\0type\0\0\0seq\0\0\0\0\0\0�\0\0\0	doctypeid\ncontent\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\ntinymce4\0\0\0type�\0\0\0\nrepeatable\0\0\0content\0\0\0\0\0\0\nkontakt_tlf\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\nkontaktfelt\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0kontakt_tlf\0\0\0\0\0\0\ntitle\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\ntitle\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0title\0\0\0\n\nrobotsmeta\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\n\nrobotsmeta\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\0\0\0\nrobotsmeta\0\0\0�\0\0\0	mandatory\ndatetime\0\0\0type�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\nupdatealerttime\0\0\0name\0\0\0validate_by_fieldspec\0\0\0updatealerttime\0\0\0\0\0\0�\0\0\0	doctypeid\n\rkontakt_email\0\0\0name\0\0\0validate_by_fieldspec\nkontaktfelt\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\rkontakt_email\0\0\0\0\0\0�\0\0\0	doctypeid\n\nrightboxes\0\0\0name\0\0\0validate_by_fieldspec\n	multipath\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\nrightboxes\0\0\0\0\0\0\nkontakt_navn\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\nkontaktfelt\0\0\0type\0\0\0kontakt_navn\0\0\0\0\0\0�\0\0\0	doctypeid\nkontakt_adresse\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\nkontaktfelt\0\0\0type�\0\0\0\nrepeatable\0\0\0kontakt_adresse\0\0\0\0\0\0�\0\0\0	doctypeid\ncontributors\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\nline\0\0\0type�\0\0\0	mandatory\0\0\0contributors\0\0\0\0\0\0\nupdatealertsent\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\nupdatealertsent\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0updatealertsent\0\0\0�\0\0\0	mandatory�\0\0\0\nrepeatable\nline\0\0\0type\0\0\0\nshort_title\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\0\0\0short_title\0\0\0data\0\0\0storage\0\0\0%\0\0\0�\0\0\0obvius_command_edit\n	editstart\0\0\0name\0\0\0\n4\n3\n1\n2\0\0\0all_nums\nmarkup\0\0\0content\0\0\0\n�vrige oplysninger\0\0\0label\n	startpage\0\0\0name\nmarkup\0\0\0content\n\0\0\0\0description\nobvius-edit-page-4\0\0\0id\0\0\0\nenable_comments\0\0\0name\ndata\0\0\0content\0\0\0\nYes\0\0\0label_1\nNo\0\0\0label_0\n1\0\0\0reverse_options\0\0\0options\nKommentarer\0\0\0label\n0|1\0\0\0	edit_args\0\0\0\n(Ekstra HTML i head-tag som ikke nedarves\0\0\0label\n\0\0\0\0	edit_args\0\0\0\n4\0\0\0rows\0\0\0options\ndata\0\0\0content\nextra_html_head_thisonly\0\0\0name\0\0\0\n\0\0\0\0	edit_args\n(Ekstra HTML i body-tag som ikke nedarves\0\0\0label\0\0\0\n4\0\0\0rows\0\0\0options\ndata\0\0\0content\nextra_html_body_thisonly\0\0\0name\0\0\0\nmarkup\0\0\0content\nendpage\0\0\0name\0\0\0\nobvius-edit-page-3\0\0\0id\0\07P� alle websider inds�tter CMS\'et f�lgende n�gleord automatisk: K�benhavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan ogs� selv inds�tte nogle mere specifikke n�gleord ved at v�lge fra listerne herunder eller skrive dem i tekstfeltet.\0\0\0description\n	startpage\0\0\0name\nmarkup\0\0\0content\nMeta\0\0\0label\0\0\0\nV�lg n�gleord for siden:\0\0\0label\n\0\0\0\0	edit_args\0\0\0\nN�gleord\0\0\0subtitle\n1\0\0\0	nopagenav\0\0\0options\ndata\0\0\0content\nkeyword\0\0\0name\0\0\0\0\0\0\0\0\0\0options\n�Frie n�gleord: Her kan du skrive n�gleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\0\0\0label\n\0\0\0\0	edit_args\n\rfree_keywords\0\0\0name\ndata\0\0\0content\0\0\0\ndata\0\0\0content\ndocref\0\0\0name\n	Reference\0\0\0label\n\0\0\0\0	edit_args\0\0\0\nMetadata\0\0\0subtitle\n1\0\0\0	nopagenav\0\0\0options\0\0\0\0\0\0\0\0\0\0options\n\0\0\0\0	edit_args\nBidragydere\0\0\0label\ncontributors\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\0\0\0\0options\n\0\0\0\0	edit_args\nKilde\0\0\0label\nsource\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\0\0\0\0options\nBesked til s�gemaskiner\0\0\0label\n\0\0\0\0	edit_args\n\nrobotsmeta\0\0\0name\ndata\0\0\0content\0\0\0\nendpage\0\0\0name\nmarkup\0\0\0content\0\0\0\nmarkup\0\0\0content\n	startpage\0\0\0name\nIndhold\0\0\0label\nobvius-edit-page-1\0\0\0id\n\0\0\0\0description\0\0\0\ntitle\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\0options\nTitle\0\0\0label\n\0\0\0\0	edit_args\0\0\0\n\nshow_title\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\0options\n\0\0\0\0	edit_args\n.Brug titel som overskrift p� siden (anbefales)\0\0\0label\0\0\0\ndata\0\0\0content\nshort_title\0\0\0name\nShort title\0\0\0label\n\0\0\0\0	edit_args\0\0\0\0\0\0\0options\0\0\0\n\0\0\0\0	edit_args\nOrder of succession\0\0\0label\0\0\0\0\0\0\0options\ndata\0\0\0content\nseq\0\0\0name\0\0\0\0\0\0\n10\0\0\0rows\0\0\0options\n\0\0\0\0	edit_args\nTeaser\0\0\0label\nteaser\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\n20\0\0\0rows\0\0\0options\n\0\0\0\0	edit_args\nText\0\0\0label\ncontent\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\n1\0\0\0distinct\0\0\0options\n\0\0\0\0	edit_args\nSidens kontaktperson\0\0\0label\nauthor\0\0\0name\ndata\0\0\0content\0\0\0\nkontakt_navn\0\0\0name\ndata\0\0\0content\0\0\0\nSidefod\0\0\0subtitle\0\0\0options\n\0\0\0\0	edit_args\nNavn\0\0\0label\0\0\0\n\rkontakt_email\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\0options\nEmail\0\0\0label\n\0\0\0\0	edit_args\0\0\0\0\0\0\0\0\0\0options\n\0\0\0\0	edit_args\nTelefon\0\0\0label\nkontakt_tlf\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\n1\0\0\0showinheritedvalue\0\0\0options\nAdresse\0\0\0label\n\0\0\0\0	edit_args\nkontakt_adresse\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\n1\0\0\0showinheritedvalue\0\0\0options\n\0\0\0\0	edit_args\nEnhed\0\0\0label\nenhed\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\n1\0\0\0showinheritedvalue\0\0\0options\nAdresse til enhedens hjemmeside\0\0\0label\n\0\0\0\0	edit_args\n	enhed_url\0\0\0name\ndata\0\0\0content\0\0\0\ndocdate\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\0options\n\0\0\0\0	edit_args\nOprettelsesdato (dd-mm-����)\0\0\0label\0\0\0\n\0\0\0\0	edit_args\nFor�ldelsestidspunkt\0\0\0label\0\0\0\0\0\0\0options\ndata\0\0\0content\nexpires\0\0\0name\0\0\0\nupdatealerttime\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\0options\n\0\0\0\0	edit_args\nTidspunkt for opdateringsalarm\0\0\0label\0\0\0\nupdatealertuser\0\0\0name\ndata\0\0\0content\0\0\0options\n\'Bruger opdateringsalarm skal sendes til\0\0\0label\n\0\0\0\0	edit_args\0\0\0\ndata\0\0\0content\nupdatealertsent\0\0\0name\n\0\0\0\0	edit_args\n,Bruges internt som flag til opdateringsalarm\0\0\0label\0\0\0options\0\0\0\nendpage\0\0\0name\nmarkup\0\0\0content\0\0\0\nmarkup\0\0\0content\n	startpage\0\0\0name\nRight boxes\0\0\0label\n\0\0\0\0description\nobvius-edit-page-2\0\0\0id\0\0\0\ndata\0\0\0content\n\nrightboxes\0\0\0name\nV�lg h�jrebokse\0\0\0label\n\0\0\0\0	edit_args\0\0\0\0\0\0\0options\0\0\0\nendpage\0\0\0name\nmarkup\0\0\0content\0\0\0display\nscheme/editsheet\0\0\0type\nEdit\0\0\0label\nreturn onsubmit_handler(event);\0\0\0javascript_onsubmit\0\0\0\neditpage\0\0\0context\0\0\0style\0\0\0edit\0\0\0\neditscheme\n 4fed42f4222f8127c6ad4a4455f119f4\0\0\0_session_id\n0\0\0\0cesi_debug_recursion\n0\0\0\0\rcesi_validate\0\0\0\0\0\0\n0000-00-00 00:00:00\0\0\0updatealerttime\nindex,follow\0\0\0\nrobotsmeta\nForside\0\0\0title\n\0\0\0\0kontakt_tlf\n<p>Hej med dig.</p>\0\0\0content\n170\0\0\0seq\n\0\0\0\0source\n\0\0\0\0short_title\n0\0\0\0updatealertsent\n\0\0\0\0contributors\n\0\0\0\0kontakt_adresse\n\0\0\0\0kontakt_navn\n\0\0\0\0\rkontakt_email\nadmin\0\0\0updatealertuser\n9999-01-01 00:00:00\0\0\0expires\nadmin\0\0\0author\n\0\0\0\0\rfree_keywords\n\0\0\0\0docref\n\0\0\0\0enhed\n\0\0\0\0extra_html_head_thisonly\n1\0\0\0\nshow_title\n170\0\0\0	seq_radio\n0\0\0\0enable_comments\n\0\0\0\0teaser\n\n2019-02-25\0\0\0docdate\n\0\0\0\0	enhed_url\n\0\0\0\0extra_html_body_thisonly\0\0\0KRAKOW\0\0\0Temporary_Data\n1\0\0\0obvius_new_grpid\nForside\0\0\0obvius_new_document_title\nda\0\0\0obvius_new_language\0\0\0\0\0\0\nedit:do\0\0\0edit[save]store\n\npreview:do\0\0\0edit[preview]store\nsave_and_publish:do\0\0\0edit[save_and_publish]store\nedit:cancel\0\0\0edit[]cancel\0\0\0actions\0\0\0\0\0\0\0\0\0edit[]cancel\0\0\0edit[save_and_publish]store\0\0\0edit[preview]store\0\0\0edit[save]store\0\0\0sink\0\0\0pool\0\0\0\0\0\0�\0\0\0sink\0\0\0edit[save_and_publish]store\0\0\0�\0\0\0sink\0\0\0edit[]cancel\0\0\0�\0\0\0sink\0\0\0edit[preview]store\0\0\0�\0\0\0sink\0\0\0edit[save]store\0\0\0edges\0\0\0\0\0\0\0queue\0\0\0cesi\nedit\0\0\0\nold_action�\0\0\0use_save_and_publish\n0\0\0\0\rcesi_log_data\0\0\0(\0\0\0contributors\0\0\0kontakt_adresse\0\0\0mimetype\0\0\0short_title\n0\0\0\0updatealertsent\0\0\0content\n10.00\0\0\0seq\n0\0\0\0show_subdoc_date\0\0\0	farvevalg\n0\0\0\0enable_comments\0\0\0teaser\n1\0\0\0	show_news\nnone\0\0\0\rsubscribeable\n0\0\0\0	show_date\n+seq,+title\0\0\0	sortorder\0\0\0extra_html_head_thisonly\0\0\0keyword\0\0\0pagesize\0\0\0\nrightboxes\0\0\0kontakt_navn\0\0\0picture\0\0\0\rkontakt_email\n0\0\0\0show_subdocs\0\0\0source\n0000-00-00 00:00:00\0\0\0updatealerttime\nindex,follow\0\0\0\nrobotsmeta\nForside\0\0\0title\0\0\0kontakt_tlf\n\n2019-02-25\0\0\0docdate\n0\0\0\0show_subdoc_teaser\0\0\0	enhed_url\0\0\0extra_html_body_thisonly\n1\0\0\0\nshow_title\0\0\0docref\0\0\0\rfree_keywords\0\0\0enhed\0\0\0updatealertuser\n9999-01-01 00:00:00\0\0\0expires\0\0\0author\n1\0\0\0show_teaser\0\0\0edit_data_in','2019-02-25 11:44:01'),('5dde6cd8a37e6edffd3d024829a0c119','\n\0\0\0\n 5dde6cd8a37e6edffd3d024829a0c119\0\0\0_session_id','2019-02-25 11:45:49'),('682734095d1bbbbba17886d9f56ecc2b','\n\0\0\0\n 682734095d1bbbbba17886d9f56ecc2b\0\0\0_session_id','2019-02-25 12:01:21'),('6e50958f7801fbd8c894ca76cbef6131','\n\0\0\0\r\n 6e50958f7801fbd8c894ca76cbef6131\0\0\0_session_id\n0\0\0\0\rcesi_validate\nEn side mere\0\0\0obvius_new_document_title\0\0\0\0\0\0\n9999-01-01 00:00:00\0\0\0expires\nadmin\0\0\0author\n0\0\0\0updatealertsent\n\0\0\0\0kontakt_tlf\n0000-00-00 00:00:00\0\0\0updatealerttime\n\0\0\0\0	enhed_url\n20\0\0\0	seq_radio\nindex,follow\0\0\0\nrobotsmeta\n\0\0\0\0extra_html_body_thisonly\n0\0\0\0enable_comments\n1\0\0\0\nshow_title\n\0\0\0\0source\n\0\0\0\0kontakt_adresse\n\0\0\0\0contributors\n\n2019-02-25\0\0\0docdate\n\0\0\0\0teaser\n\0\0\0\0docref\n20\0\0\0seq\n\0\0\0\0\rkontakt_email\nadmin\0\0\0updatealertuser\nEn side mere\0\0\0title\n\0\0\0\0short_title\n\0\0\0\0extra_html_head_thisonly\n\0\0\0\0enhed\n\0\0\0\0\rfree_keywords\n<p>Med lidt indhold.</p>\0\0\0content\n\0\0\0\0kontakt_navn\0\0\0KRAKOW\0\0\0Temporary_Data\n0\0\0\0\rcesi_log_data\0\0\0\0\0\0\0\0\0%\0\0\0\nmarkup\0\0\0content\0\0\0\n4\n1\n2\n3\0\0\0all_nums\n	editstart\0\0\0name�\0\0\0obvius_command_edit\0\0\0\n\0\0\0\0description\nobvius-edit-page-4\0\0\0id\n�vrige oplysninger\0\0\0label\nmarkup\0\0\0content\n	startpage\0\0\0name\0\0\0\n0|1\0\0\0	edit_args\0\0\0\nNo\0\0\0label_0\n1\0\0\0reverse_options\nYes\0\0\0label_1\0\0\0options\nKommentarer\0\0\0label\ndata\0\0\0content\nenable_comments\0\0\0name\0\0\0\n(Ekstra HTML i head-tag som ikke nedarves\0\0\0label\ndata\0\0\0content\0\0\0\n4\0\0\0rows\0\0\0options\nextra_html_head_thisonly\0\0\0name\n\0\0\0\0	edit_args\0\0\0\ndata\0\0\0content\0\0\0\n4\0\0\0rows\0\0\0options\n(Ekstra HTML i body-tag som ikke nedarves\0\0\0label\nextra_html_body_thisonly\0\0\0name\n\0\0\0\0	edit_args\0\0\0\nendpage\0\0\0name\nmarkup\0\0\0content\0\0\0\n\0\0\0\0description\nobvius-edit-page-1\0\0\0id\nIndhold\0\0\0label\nmarkup\0\0\0content\n	startpage\0\0\0name\0\0\0\ntitle\0\0\0name\ndata\0\0\0content\nTitle\0\0\0label\0\0\0\0\0\0\0options\n\0\0\0\0	edit_args\0\0\0\ndata\0\0\0content\0\0\0\0\0\0\0options\n.Brug titel som overskrift p� siden (anbefales)\0\0\0label\n\nshow_title\0\0\0name\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\nshort_title\0\0\0name\0\0\0\0\0\0\0options\nShort title\0\0\0label\ndata\0\0\0content\0\0\0\n\0\0\0\0	edit_args\nseq\0\0\0name\ndata\0\0\0content\nOrder of succession\0\0\0label\0\0\0\0\0\0\0options\0\0\0\nTeaser\0\0\0label\ndata\0\0\0content\0\0\0\n10\0\0\0rows\0\0\0options\nteaser\0\0\0name\n\0\0\0\0	edit_args\0\0\0\ncontent\0\0\0name\0\0\0\n20\0\0\0rows\0\0\0options\nText\0\0\0label\ndata\0\0\0content\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\0\0\0\n1\0\0\0distinct\0\0\0options\nSidens kontaktperson\0\0\0label\ndata\0\0\0content\nauthor\0\0\0name\0\0\0\nkontakt_navn\0\0\0name\ndata\0\0\0content\nNavn\0\0\0label\0\0\0\nSidefod\0\0\0subtitle\0\0\0options\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\n\rkontakt_email\0\0\0name\ndata\0\0\0content\nEmail\0\0\0label\0\0\0\0\0\0\0options\0\0\0\nTelefon\0\0\0label\ndata\0\0\0content\0\0\0\0\0\0\0options\nkontakt_tlf\0\0\0name\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\nkontakt_adresse\0\0\0name\ndata\0\0\0content\0\0\0\n1\0\0\0showinheritedvalue\0\0\0options\nAdresse\0\0\0label\0\0\0\n\0\0\0\0	edit_args\nEnhed\0\0\0label\ndata\0\0\0content\0\0\0\n1\0\0\0showinheritedvalue\0\0\0options\nenhed\0\0\0name\0\0\0\n\0\0\0\0	edit_args\n	enhed_url\0\0\0name\nAdresse til enhedens hjemmeside\0\0\0label\ndata\0\0\0content\0\0\0\n1\0\0\0showinheritedvalue\0\0\0options\0\0\0\n\0\0\0\0	edit_args\ndocdate\0\0\0name\ndata\0\0\0content\nOprettelsesdato (dd-mm-����)\0\0\0label\0\0\0\0\0\0\0options\0\0\0\n\0\0\0\0	edit_args\nexpires\0\0\0name\ndata\0\0\0content\nFor�ldelsestidspunkt\0\0\0label\0\0\0\0\0\0\0options\0\0\0\nupdatealerttime\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\0options\nTidspunkt for opdateringsalarm\0\0\0label\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\nupdatealertuser\0\0\0name\n\'Bruger opdateringsalarm skal sendes til\0\0\0label\ndata\0\0\0content\0\0\0options\0\0\0\nupdatealertsent\0\0\0name\n,Bruges internt som flag til opdateringsalarm\0\0\0label\0\0\0options\ndata\0\0\0content\n\0\0\0\0	edit_args\0\0\0\nendpage\0\0\0name\nmarkup\0\0\0content\0\0\0\n	startpage\0\0\0name\nRight boxes\0\0\0label\nmarkup\0\0\0content\nobvius-edit-page-2\0\0\0id\n\0\0\0\0description\0\0\0\0\0\0\0\0\0\0options\nV�lg h�jrebokse\0\0\0label\ndata\0\0\0content\n\nrightboxes\0\0\0name\n\0\0\0\0	edit_args\0\0\0\nendpage\0\0\0name\nmarkup\0\0\0content\0\0\0\nobvius-edit-page-3\0\0\0id\0\07P� alle websider inds�tter CMS\'et f�lgende n�gleord automatisk: K�benhavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan ogs� selv inds�tte nogle mere specifikke n�gleord ved at v�lge fra listerne herunder eller skrive dem i tekstfeltet.\0\0\0description\n	startpage\0\0\0name\nmarkup\0\0\0content\nMeta\0\0\0label\0\0\0\ndata\0\0\0content\0\0\0\nN�gleord\0\0\0subtitle\n1\0\0\0	nopagenav\0\0\0options\nV�lg n�gleord for siden:\0\0\0label\nkeyword\0\0\0name\n\0\0\0\0	edit_args\0\0\0\n�Frie n�gleord: Her kan du skrive n�gleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\0\0\0label\ndata\0\0\0content\0\0\0\0\0\0\0options\n\rfree_keywords\0\0\0name\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\n	Reference\0\0\0label\ndata\0\0\0content\0\0\0\nMetadata\0\0\0subtitle\n1\0\0\0	nopagenav\0\0\0options\ndocref\0\0\0name\0\0\0\n\0\0\0\0	edit_args\0\0\0\0\0\0\0options\ndata\0\0\0content\nBidragydere\0\0\0label\ncontributors\0\0\0name\0\0\0\nKilde\0\0\0label\0\0\0\0\0\0\0options\ndata\0\0\0content\nsource\0\0\0name\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\0\0\0\0\0\0\0options\ndata\0\0\0content\nBesked til s�gemaskiner\0\0\0label\n\nrobotsmeta\0\0\0name\0\0\0\nmarkup\0\0\0content\nendpage\0\0\0name\0\0\0display\nEdit\0\0\0label\nscheme/editsheet\0\0\0type\0\0\0\0\0\0\0\0\0�\0\0\0	mandatory\0\0\0\ndocdate\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\ndate\0\0\0type\0\0\0docdate\0\0\0\ntinymce4\0\0\0type\0\0\0�\0\0\0	doctypeid\nteaser\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\0\0\0teaser\0\0\0\nline\0\0\0type�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\ndocref\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0docref\0\0\0�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nseq\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\nsequence\0\0\0type\0\0\0seq\0\0\0\nkontaktfelt\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\n\rkontakt_email\0\0\0name\0\0\0validate_by_fieldspec\0\0\0\rkontakt_email\0\0\0�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\nupdatealertuser\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\nupdatealertuser\0\0\0type\0\0\0updatealertuser\0\0\0�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\ntitle\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\ntitle\0\0\0type\0\0\0title\0\0\0�\0\0\0	mandatory\0\0\0\nshort_title\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\nline\0\0\0type\0\0\0short_title\0\0\0�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\nextra_html_head_thisonly\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\ntext\0\0\0type\0\0\0extra_html_head_thisonly\0\0\0\nkontaktfelt\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\nenhed\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\0\0\0enhed\0\0\0\nline\0\0\0type\0\0\0\n\rfree_keywords\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\0\0\0\rfree_keywords\0\0\0�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\ncontent\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\ntinymce4\0\0\0type\0\0\0content\0\0\0�\0\0\0\nrepeatable\0\0\0\nkontakt_navn\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory\nkontaktfelt\0\0\0type\0\0\0kontakt_navn\0\0\0�\0\0\0	mandatory\0\0\0\nexpires\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\ndatetime\0\0\0type\0\0\0expires\0\0\0�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\n\nrightboxes\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\n	multipath\0\0\0type\0\0\0\nrightboxes\0\0\0\nauthor\0\0\0type�\0\0\0	mandatory\0\0\0\nauthor\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\0\0\0author\0\0\0\nline\0\0\0type�\0\0\0	mandatory\0\0\0key\0\0\0�\0\0\0	mandatory\0\0\0\nupdatealertsent\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\nupdatealertsent\0\0\0type\0\0\0updatealertsent\0\0\0�\0\0\0\nrepeatable\0\0\0\nkontakt_tlf\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory\nkontaktfelt\0\0\0type\0\0\0kontakt_tlf\0\0\0\0\0\0\nupdatealerttime\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\ndatetime\0\0\0type\0\0\0updatealerttime\0\0\0\n\rhumfakkeyword\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nkeyword\0\0\0name\0\0\0validate_by_fieldspec\0\0\0keyword\0\0\0�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\n	enhed_url\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\nkontaktfelt\0\0\0type\0\0\0	enhed_url\0\0\0\n\nrobotsmeta\0\0\0type�\0\0\0\nrepeatable\0\0\0\n\nrobotsmeta\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0\nrobotsmeta\0\0\0\nradio\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\nenable_comments\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\0\0\0enable_comments\0\0\0�\0\0\0	mandatory\0\0\0\nextra_html_body_thisonly\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\ntext\0\0\0type\0\0\0extra_html_body_thisonly\0\0\0�\0\0\0\nrepeatable\0\0\0\n\nshow_title\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory\ncheckbox\0\0\0type\0\0\0\nshow_title\0\0\0\0\0\0\nsource\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\nline\0\0\0type\0\0\0source\0\0\0�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nkontakt_adresse\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\nkontaktfelt\0\0\0type\0\0\0kontakt_adresse\0\0\0\nline\0\0\0type�\0\0\0\nrepeatable\0\0\0\ncontributors\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0contributors\0\0\0data\0\0\0\nTemporary_Data\0\0\0source\n	Temporary\0\0\0class\0\0\0\nkey\0\0\0identifiers\0\0\0organization\0\0\0\nPreview\0\0\0label\nexisting\0\0\0object\0\0\0preview\0\0\0\0\0\0\nSave and publish\0\0\0label\nexisting\0\0\0object\0\0\0save_and_publish\0\0\0\nexisting\0\0\0object\nSave\0\0\0label\0\0\0save\0\0\0	functions\0\0\0storage\nreturn onsubmit_handler(event);\0\0\0javascript_onsubmit\0\0\0\neditpage\0\0\0context\0\0\0style\0\0\0edit\0\0\0\neditscheme\0\0\0(\0\0\0extra_html_head_thisonly\0\0\0\rfree_keywords\n0\0\0\0show_subdoc_date\0\0\0enhed\0\0\0mimetype\0\0\0kontakt_navn\nnone\0\0\0\rsubscribeable\0\0\0picture\n\n2019-02-25\0\0\0docdate\0\0\0teaser\0\0\0docref\n1\0\0\0show_teaser\0\0\0keyword\0\0\0	enhed_url\n0000-00-00 00:00:00\0\0\0updatealerttime\0\0\0	farvevalg\0\0\0extra_html_body_thisonly\0\0\0contributors\0\0\0source\0\0\0kontakt_adresse\n9999-01-01 00:00:00\0\0\0expires\0\0\0\nrightboxes\0\0\0author\0\0\0short_title\0\0\0pagesize\nEn side mere\0\0\0title\n+seq,+title\0\0\0	sortorder\0\0\0content\n0\0\0\0show_subdoc_teaser\0\0\0\rkontakt_email\n0\0\0\0	show_date\n10.00\0\0\0seq\0\0\0updatealertuser\0\0\0kontakt_tlf\nindex,follow\0\0\0\nrobotsmeta\n1\0\0\0\nshow_title\n0\0\0\0enable_comments\n0\0\0\0show_subdocs\n0\0\0\0updatealertsent\n1\0\0\0	show_news\0\0\0edit_data_in\0\0\0\0\0\0\0\0\0\0queue\0\0\0\nedit:do\0\0\0edit[save]store\nedit:cancel\0\0\0edit[]cancel\nsave_and_publish:do\0\0\0edit[save_and_publish]store\n\npreview:do\0\0\0edit[preview]store\0\0\0actions\0\0\0\0\0\0\0\0\0edit[preview]store\0\0\0edit[save_and_publish]store\0\0\0edit[save]store\0\0\0edit[]cancel\0\0\0sink\0\0\0pool\0\0\0\0\0\0�\0\0\0sink\0\0\0edit[save_and_publish]store\0\0\0�\0\0\0sink\0\0\0edit[]cancel\0\0\0�\0\0\0sink\0\0\0edit[save]store\0\0\0�\0\0\0sink\0\0\0edit[preview]store\0\0\0edges\0\0\0cesi\n0\0\0\0cesi_debug_recursion\n1\0\0\0obvius_new_grpid\nedit\0\0\0\nold_action\nda\0\0\0obvius_new_language�\0\0\0use_save_and_publish','2019-02-25 12:02:38'),('95279236be51b70709f0427b093ba1b1','\n\0\0\0\n 95279236be51b70709f0427b093ba1b1\0\0\0_session_id','2019-02-25 12:02:21'),('97cbdfe8a49e5f764b36803487589a8c','\n\0\0\0\n 97cbdfe8a49e5f764b36803487589a8c\0\0\0_session_id','2019-02-25 11:47:35'),('a7a1c3ce9ebe1bc0a075147b66ae731b','\n\0\0\0\n a7a1c3ce9ebe1bc0a075147b66ae731b\0\0\0_session_id','2019-02-25 12:06:38'),('a9afa6863c9bf1ed9b028b418c61b96d','\n\0\0\0\n a9afa6863c9bf1ed9b028b418c61b96d\0\0\0_session_id','2019-02-25 12:01:50'),('c2babd50febec578e39ed7f71a2ad4a2','\n\0\0\0\n c2babd50febec578e39ed7f71a2ad4a2\0\0\0_session_id','2019-02-25 11:53:33'),('c47e4eed0ce09e1f00cbb439b0f03e9f','\n\0\0\0\r\n0\0\0\0\rcesi_validate\n c47e4eed0ce09e1f00cbb439b0f03e9f\0\0\0_session_id\0\0\0\0\0\0\0\0\0\neditpage\0\0\0context\0\0\0style\nreturn onsubmit_handler(event);\0\0\0javascript_onsubmit\0\0\0\0\0\0\0\0\0\nkey\0\0\0identifiers\nTemporary_Data\0\0\0source\n	Temporary\0\0\0class\0\0\0organization\0\0\0\0\0\0\nkontaktfelt\0\0\0type�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\nkontakt_navn\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0kontakt_navn\0\0\0�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0\ncontent\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec\ntinymce4\0\0\0type\0\0\0content\0\0\0\nkontaktfelt\0\0\0type�\0\0\0	mandatory\0\0\0\nenhed\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\0\0\0enhed\0\0\0�\0\0\0\nrepeatable\0\0\0\n\rfree_keywords\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory\nline\0\0\0type\0\0\0\rfree_keywords\0\0\0\ntitle\0\0\0type�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\ntitle\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0title\0\0\0\nline\0\0\0type\0\0\0�\0\0\0	doctypeid\nshort_title\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\0\0\0short_title\0\0\0\ntext\0\0\0type�\0\0\0	mandatory\0\0\0\nextra_html_head_thisonly\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\0\0\0extra_html_head_thisonly\0\0\0\nupdatealertuser\0\0\0type\0\0\0\nupdatealertuser\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\0\0\0updatealertuser\0\0\0�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\ndocref\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\nline\0\0\0type\0\0\0docref\0\0\0�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nseq\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\nsequence\0\0\0type\0\0\0seq\0\0\0\nkontaktfelt\0\0\0type�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\n\rkontakt_email\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0\rkontakt_email\0\0\0\ntinymce4\0\0\0type�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\nteaser\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0teaser\0\0\0\ndate\0\0\0type�\0\0\0	mandatory\0\0\0\ndocdate\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\0\0\0docdate\0\0\0\nkontaktfelt\0\0\0type�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nkontakt_adresse\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\0\0\0kontakt_adresse\0\0\0\nline\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nsource\0\0\0name\0\0\0validate_by_fieldspec\0\0\0source\0\0\0\nline\0\0\0type�\0\0\0	mandatory\0\0\0\ncontributors\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\0\0\0contributors\0\0\0�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nenable_comments\0\0\0name\0\0\0validate_by_fieldspec\nradio\0\0\0type\0\0\0enable_comments\0\0\0\ntext\0\0\0type�\0\0\0\nrepeatable�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nextra_html_body_thisonly\0\0\0name\0\0\0validate_by_fieldspec\0\0\0extra_html_body_thisonly\0\0\0\ncheckbox\0\0\0type�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\n\nshow_title\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0\nshow_title\0\0\0\0\0\0\n\nrobotsmeta\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\n\nrobotsmeta\0\0\0type\0\0\0\nrobotsmeta\0\0\0\nkontaktfelt\0\0\0type�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\n	enhed_url\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0	enhed_url\0\0\0�\0\0\0	mandatory\0\0\0\nkontakt_tlf\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\nkontaktfelt\0\0\0type\0\0\0kontakt_tlf\0\0\0�\0\0\0\nrepeatable\0\0\0\nkeyword\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory\n\rhumfakkeyword\0\0\0type\0\0\0keyword\0\0\0\ndatetime\0\0\0type\0\0\0\nupdatealerttime\0\0\0name�\0\0\0	doctypeid\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\0\0\0updatealerttime\0\0\0\0\0\0�\0\0\0	doctypeid\nupdatealertsent\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory�\0\0\0\nrepeatable\nupdatealertsent\0\0\0type\0\0\0updatealertsent\0\0\0�\0\0\0	mandatory\nline\0\0\0type\0\0\0key\0\0\0\n	multipath\0\0\0type�\0\0\0\nrepeatable\0\0\0�\0\0\0	doctypeid\n\nrightboxes\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0	mandatory\0\0\0\nrightboxes\0\0\0�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nauthor\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\nauthor\0\0\0type\0\0\0author\0\0\0�\0\0\0	mandatory\0\0\0�\0\0\0	doctypeid\nexpires\0\0\0name\0\0\0validate_by_fieldspec�\0\0\0\nrepeatable\ndatetime\0\0\0type\0\0\0expires\0\0\0data\0\0\0\0\0\0\nexisting\0\0\0object\nSave and publish\0\0\0label\0\0\0save_and_publish\0\0\0\nSave\0\0\0label\nexisting\0\0\0object\0\0\0save\0\0\0	functions\0\0\0\nexisting\0\0\0object\nPreview\0\0\0label\0\0\0preview\0\0\0storage\nEdit\0\0\0label\0\0\0%\0\0\0\nmarkup\0\0\0content�\0\0\0obvius_command_edit\n	editstart\0\0\0name\0\0\0\n2\n1\n3\n4\0\0\0all_nums\0\0\0\nmarkup\0\0\0content\nRight boxes\0\0\0label\n	startpage\0\0\0name\n\0\0\0\0description\nobvius-edit-page-2\0\0\0id\0\0\0\ndata\0\0\0content\0\0\0\0\0\0\0options\nV�lg h�jrebokse\0\0\0label\n\nrightboxes\0\0\0name\n\0\0\0\0	edit_args\0\0\0\nendpage\0\0\0name\nmarkup\0\0\0content\0\0\0\n\0\0\0\0description\nobvius-edit-page-1\0\0\0id\nIndhold\0\0\0label\nmarkup\0\0\0content\n	startpage\0\0\0name\0\0\0\n\0\0\0\0	edit_args\ndata\0\0\0content\0\0\0\0\0\0\0options\nTitle\0\0\0label\ntitle\0\0\0name\0\0\0\n\0\0\0\0	edit_args\ndata\0\0\0content\0\0\0\0\0\0\0options\n.Brug titel som overskrift p� siden (anbefales)\0\0\0label\n\nshow_title\0\0\0name\0\0\0\n\0\0\0\0	edit_args\0\0\0\0\0\0\0options\ndata\0\0\0content\nShort title\0\0\0label\nshort_title\0\0\0name\0\0\0\ndata\0\0\0content\0\0\0\0\0\0\0options\nOrder of succession\0\0\0label\nseq\0\0\0name\n\0\0\0\0	edit_args\0\0\0\nteaser\0\0\0name\0\0\0\n10\0\0\0rows\0\0\0options\ndata\0\0\0content\nTeaser\0\0\0label\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\ncontent\0\0\0name\0\0\0\n20\0\0\0rows\0\0\0options\nText\0\0\0label\ndata\0\0\0content\0\0\0\n\0\0\0\0	edit_args\0\0\0\n1\0\0\0distinct\0\0\0options\nSidens kontaktperson\0\0\0label\ndata\0\0\0content\nauthor\0\0\0name\0\0\0\nNavn\0\0\0label\0\0\0\nSidefod\0\0\0subtitle\0\0\0options\ndata\0\0\0content\nkontakt_navn\0\0\0name\n\0\0\0\0	edit_args\0\0\0\n\rkontakt_email\0\0\0name\0\0\0\0\0\0\0options\ndata\0\0\0content\nEmail\0\0\0label\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\0\0\0\0\0\0\0options\nTelefon\0\0\0label\ndata\0\0\0content\nkontakt_tlf\0\0\0name\0\0\0\n\0\0\0\0	edit_args\nkontakt_adresse\0\0\0name\nAdresse\0\0\0label\0\0\0\n1\0\0\0showinheritedvalue\0\0\0options\ndata\0\0\0content\0\0\0\n\0\0\0\0	edit_args\nenhed\0\0\0name\nEnhed\0\0\0label\ndata\0\0\0content\0\0\0\n1\0\0\0showinheritedvalue\0\0\0options\0\0\0\n\0\0\0\0	edit_args\n	enhed_url\0\0\0name\nAdresse til enhedens hjemmeside\0\0\0label\ndata\0\0\0content\0\0\0\n1\0\0\0showinheritedvalue\0\0\0options\0\0\0\nOprettelsesdato (dd-mm-����)\0\0\0label\ndata\0\0\0content\0\0\0\0\0\0\0options\ndocdate\0\0\0name\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\nexpires\0\0\0name\ndata\0\0\0content\nFor�ldelsestidspunkt\0\0\0label\0\0\0\0\0\0\0options\0\0\0\n\0\0\0\0	edit_args\nupdatealerttime\0\0\0name\ndata\0\0\0content\0\0\0\0\0\0\0options\nTidspunkt for opdateringsalarm\0\0\0label\0\0\0\ndata\0\0\0content\n\'Bruger opdateringsalarm skal sendes til\0\0\0label\0\0\0options\nupdatealertuser\0\0\0name\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\ndata\0\0\0content\n,Bruges internt som flag til opdateringsalarm\0\0\0label\0\0\0options\nupdatealertsent\0\0\0name\0\0\0\nendpage\0\0\0name\nmarkup\0\0\0content\0\0\0\nmarkup\0\0\0content\nMeta\0\0\0label\n	startpage\0\0\0name\0\07P� alle websider inds�tter CMS\'et f�lgende n�gleord automatisk: K�benhavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan ogs� selv inds�tte nogle mere specifikke n�gleord ved at v�lge fra listerne herunder eller skrive dem i tekstfeltet.\0\0\0description\nobvius-edit-page-3\0\0\0id\0\0\0\n\0\0\0\0	edit_args\ndata\0\0\0content\nV�lg n�gleord for siden:\0\0\0label\0\0\0\n1\0\0\0	nopagenav\nN�gleord\0\0\0subtitle\0\0\0options\nkeyword\0\0\0name\0\0\0\n\0\0\0\0	edit_args\n�Frie n�gleord: Her kan du skrive n�gleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\0\0\0label\0\0\0\0\0\0\0options\ndata\0\0\0content\n\rfree_keywords\0\0\0name\0\0\0\n\0\0\0\0	edit_args\0\0\0\n1\0\0\0	nopagenav\nMetadata\0\0\0subtitle\0\0\0options\ndata\0\0\0content\n	Reference\0\0\0label\ndocref\0\0\0name\0\0\0\n\0\0\0\0	edit_args\nBidragydere\0\0\0label\0\0\0\0\0\0\0options\ndata\0\0\0content\ncontributors\0\0\0name\0\0\0\n\0\0\0\0	edit_args\nsource\0\0\0name\0\0\0\0\0\0\0options\nKilde\0\0\0label\ndata\0\0\0content\0\0\0\0\0\0\0\0\0\0options\ndata\0\0\0content\nBesked til s�gemaskiner\0\0\0label\n\nrobotsmeta\0\0\0name\n\0\0\0\0	edit_args\0\0\0\nmarkup\0\0\0content\nendpage\0\0\0name\0\0\0\n	startpage\0\0\0name\nmarkup\0\0\0content\n�vrige oplysninger\0\0\0label\nobvius-edit-page-4\0\0\0id\n\0\0\0\0description\0\0\0\nenable_comments\0\0\0name\0\0\0\nYes\0\0\0label_1\nNo\0\0\0label_0\n1\0\0\0reverse_options\0\0\0options\ndata\0\0\0content\nKommentarer\0\0\0label\n0|1\0\0\0	edit_args\0\0\0\n(Ekstra HTML i head-tag som ikke nedarves\0\0\0label\0\0\0\n4\0\0\0rows\0\0\0options\ndata\0\0\0content\nextra_html_head_thisonly\0\0\0name\n\0\0\0\0	edit_args\0\0\0\n\0\0\0\0	edit_args\0\0\0\n4\0\0\0rows\0\0\0options\n(Ekstra HTML i body-tag som ikke nedarves\0\0\0label\ndata\0\0\0content\nextra_html_body_thisonly\0\0\0name\0\0\0\nendpage\0\0\0name\nmarkup\0\0\0content\0\0\0display\nscheme/editsheet\0\0\0type\0\0\0edit\0\0\0\neditscheme\n0\0\0\0\rcesi_log_data\0\0\0\0\0\0\n\0\0\0\0docref\n10\0\0\0seq\n\0\0\0\0\rkontakt_email\nadmin\0\0\0updatealertuser\n\n2019-02-25\0\0\0docdate\n\0\0\0\0teaser\n<p>Med lidt indhold.</p>\0\0\0content\n\0\0\0\0kontakt_navn\nEn underside\0\0\0title\n\0\0\0\0extra_html_head_thisonly\n\0\0\0\0short_title\n\0\0\0\0enhed\n\0\0\0\0\rfree_keywords\n0\0\0\0updatealertsent\n9999-01-01 00:00:00\0\0\0expires\nadmin\0\0\0author\n0\0\0\0enable_comments\n\0\0\0\0extra_html_body_thisonly\n1\0\0\0\nshow_title\n\0\0\0\0kontakt_adresse\n\0\0\0\0source\n\0\0\0\0contributors\n0000-00-00 00:00:00\0\0\0updatealerttime\n\0\0\0\0	enhed_url\n\0\0\0\0kontakt_tlf\nindex,follow\0\0\0\nrobotsmeta\n10\0\0\0	seq_radio\0\0\0KRAKOW\0\0\0Temporary_Data\nEn underside\0\0\0obvius_new_document_title\n0\0\0\0cesi_debug_recursion\0\0\0\0\0\0\0\0\0�\0\0\0sink\0\0\0edit[]cancel\0\0\0�\0\0\0sink\0\0\0edit[save]store\0\0\0�\0\0\0sink\0\0\0edit[save_and_publish]store\0\0\0�\0\0\0sink\0\0\0edit[preview]store\0\0\0edges\0\0\0\0\0\0\0\0\0edit[preview]store\0\0\0edit[]cancel\0\0\0edit[save]store\0\0\0edit[save_and_publish]store\0\0\0sink\0\0\0pool\0\0\0\nedit:do\0\0\0edit[save]store\nedit:cancel\0\0\0edit[]cancel\nsave_and_publish:do\0\0\0edit[save_and_publish]store\n\npreview:do\0\0\0edit[preview]store\0\0\0actions\0\0\0\0\0\0\0queue\0\0\0cesi\0\0\0(\n1\0\0\0	show_news\n0\0\0\0updatealertsent\n0\0\0\0show_subdocs\n1\0\0\0\nshow_title\n0\0\0\0enable_comments\nindex,follow\0\0\0\nrobotsmeta\0\0\0kontakt_tlf\0\0\0updatealertuser\n0\0\0\0	show_date\0\0\0\rkontakt_email\n10.00\0\0\0seq\n0\0\0\0show_subdoc_teaser\0\0\0content\n+seq,+title\0\0\0	sortorder\0\0\0short_title\nEn underside\0\0\0title\0\0\0pagesize\0\0\0author\0\0\0\nrightboxes\n9999-01-01 00:00:00\0\0\0expires\0\0\0contributors\0\0\0source\0\0\0kontakt_adresse\0\0\0extra_html_body_thisonly\0\0\0	farvevalg\0\0\0keyword\0\0\0	enhed_url\n0000-00-00 00:00:00\0\0\0updatealerttime\n1\0\0\0show_teaser\0\0\0docref\0\0\0teaser\n\n2019-02-25\0\0\0docdate\nnone\0\0\0\rsubscribeable\0\0\0kontakt_navn\0\0\0picture\0\0\0\rfree_keywords\n0\0\0\0show_subdoc_date\0\0\0mimetype\0\0\0enhed\0\0\0extra_html_head_thisonly\0\0\0edit_data_in\nedit\0\0\0\nold_action�\0\0\0use_save_and_publish\n1\0\0\0obvius_new_grpid\nda\0\0\0obvius_new_language','2019-02-25 11:46:01'),('c93a85f9e6d1deb866abf9148064498b','\n\0\0\0\n c93a85f9e6d1deb866abf9148064498b\0\0\0_session_id','2019-02-25 12:01:58'),('ceca30a159e76db862767bf32a5218d1','\n\0\0\0\n ceca30a159e76db862767bf32a5218d1\0\0\0_session_id','2019-02-25 11:53:44'),('db7664993a16b91fcf05bca2aeb3e71c','\n\0\0\0\n db7664993a16b91fcf05bca2aeb3e71c\0\0\0_session_id','2019-02-25 11:56:09'),('e0cad5165d00c8ba26efddae377fa558','\n\0\0\0\n e0cad5165d00c8ba26efddae377fa558\0\0\0_session_id','2019-02-25 12:04:44'),('e2fa1a3c260ac467aae59c030cec8fa6','\n\0\0\0\n e2fa1a3c260ac467aae59c030cec8fa6\0\0\0_session_id','2019-02-25 11:53:30');
/*!40000 ALTER TABLE `apache_edit_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apache_user_sessions`
--

DROP TABLE IF EXISTS `apache_user_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apache_user_sessions` (
  `id` char(32) NOT NULL,
  `a_session` mediumblob DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apache_user_sessions`
--

LOCK TABLES `apache_user_sessions` WRITE;
/*!40000 ALTER TABLE `apache_user_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `apache_user_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apachecache_home`
--

DROP TABLE IF EXISTS `apachecache_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apachecache_home` (
  `uri` blob NOT NULL,
  `querystring` varchar(255) NOT NULL DEFAULT '',
  `cache_uri` varbinary(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uri`(255),`querystring`),
  KEY `apachecache_home_querystring_idx` (`querystring`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `user_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key_uuid_idx` (`uuid`),
  KEY `api_keys_user_ref` (`user_id`),
  CONSTRAINT `api_keys_user_ref` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
INSERT INTO `api_keys` VALUES (1,'8abbff18-da5c-482f-9c9e-baa99a65afd5',45);
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `calculated_path`
--

DROP TABLE IF EXISTS `calculated_path`;
/*!50001 DROP VIEW IF EXISTS `calculated_path`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `calculated_path` (
  `docid` tinyint NOT NULL,
  `path` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `calendars`
--

DROP TABLE IF EXISTS `calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendars` (
  `docid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendars`
--

LOCK TABLES `calendars` WRITE;
/*!40000 ALTER TABLE `calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` char(9) NOT NULL DEFAULT '',
  `name` char(127) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `closest_subsite`
--

DROP TABLE IF EXISTS `closest_subsite`;
/*!50001 DROP VIEW IF EXISTS `closest_subsite`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `closest_subsite` (
  `docid` tinyint NOT NULL,
  `subsite_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(127) NOT NULL DEFAULT '',
  `email` varchar(63) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  PRIMARY KEY (`docid`,`date`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (110224,'2012-05-29 13:03:11','JÃ¸rgen Ulrik B. Krag','jubk@magenta-aps.dk','Test af kommentarer og recaptcha'),(110224,'2012-05-29 14:25:41','JÃ¸rgen Ulrik B. Krag','jubk@magenta-aps.dk','Test af sager og hephey'),(110224,'2012-05-29 14:28:25','JÃ¸rgen Ulrik B. Krag','jubk@magenta-aps.dk','Test captcha');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`config_id`),
  KEY `config_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'globalmenu_da','','Dansk globalmenu'),(2,'globalmenu_en','','Engelsk globalmenu'),(3,'globaltools_da','<li><a href=\"http://kalender.ku.dk\">Kalender</a></li>\r\n<li><a href=\"http://velkommen.ku.dk/kontakt/\">Kontakt</a></li>\r\n<li><a href=\"http://findvej.ku.dk\">Find vej</a></li>\r\n<li><a href=\"http://www.ku.dk/vejviser/\">Telefonbog</a></li>\r\n<li><a href=\"http://velkommen.ku.dk/job_og_karriere/\">Job</a></li>\r\n<li><a href=\"http://velkommen.ku.dk/indeks/\">A-Å-indeks</a></li>\r\n<li><a href=\"http://alumni.ku.dk\">Alumni</a></li>\r\n<li><a href=\"https://intranet.ku.dk/\">KUnet</a></li>\r\n<li class=\"global-sprog\"><a href=\"{LANG_LINK}\" class=\"english\">English</a></li>','Danske globale værktøjslinks'),(4,'globaltools_en','<li><a href=\"http://introduction.ku.dk/contact/\">Contact</a></li>\r\n<li><a href=\"http://findvej.ku.dk/english/\">Map</a></li>\r\n<li><a href=\"http://www.ku.dk/vejviser/phone.html\">Phone Book</a></li>\r\n<li><a href=\"http://alumni.ku.dk/englishkubulusalumni/\">Alumni</a></li>\r\n<li><a href=\"https://intranet.ku.dk/en\">KUnet</a></li>\r\n<li class=\"global-sprog\"><a href=\"{LANG_LINK}\" class=\"dansk\">Dansk</a></li>','Engelske globale værktøjslinks'),(9,'enable_beredskab','nej','Gør brug af beredskabs-funktion?'),(10,'pure_error_message_da','<p>\r\nVi er i gang med at opdatere medarbejdersiderne, publikationsvisningerne og \"Find en forsker\".\r\n</p>\r\n<p>\r\nDu kan derfor opleve, at siderne ikke virker.\r\n</p>\r\n<p>\r\nVi forventer, at siderne er oppe igen i løbet af dagen.\r\n</p>\r\n<p>\r\nVi beklager ulejligheden.\r\n</p>','Dansk fejlbesked hvis pure-integrationen ikke kan få fat i pure-portalen'),(11,'pure_error_message_en','<p>\r\nWe are updating \"Find a researcher\" and pages related to employers and publications.\r\n</p>\r\n<p>\r\nYou can therefore experience that you cannot access these pages.\r\n</p>\r\n<p>\r\nWe expect that the pages are up and running during Monday December 1st.\r\n</p>\r\n<p>\r\nWe apologize for the inconvenience.\r\n</p>\r\n','Engelsk fejlbesked hvis pure-integrationen ikke kan få fat i pure-portalen'),(12,'link_check_filter','*magenta.dk*\r\n','Link check filter, en adresse per linie, med support for brug af wildcard (*)'),(13,'link_check_external_urls','https://subsite.ku.jubk.magenta-aps.dk/test/\r\n/subsite/path/\r\n','Adresser der skal checkes via eksterne kald i linkcheckeren. Angives med en adresse per linie. De angivne adresser og alle understier vil blive checket via eksterne kald. Man kan angive stier som enten CMS-URI\'er eller som fulde URL\'er.'),(15,'expired_user_mail','<p>Kære [[NAVN]]</p>\r\n<p>\r\nDa din bruger i Obvius CMS ikke har været aktiv indenfor de seneste 2 år, er den automatisk blevet deaktiveret, således at du ikke længere vil kunne logge på systemet.\r\n</p>\r\n<p>\r\nØnsker du fortsat at have mulighed for at benytte din bruger i Obvius CMS, skal du kontakte den webansvarlige på dit fakultet, for at få reaktiveret brugeren. Bliver brugeren ikke reaktiveret indenfor de næste 6 måneder, vil brugeren blive slettet permanent.\r\n</p>\r\n<p>\r\nEventuelle spørgsmål skal rettes til den webansvarlige på dit eget fakultet.\r\n</p>\r\n<p>\r\nMed venlig hilsen<br />\r\nObvius Admin\r\n</p>\r\n','HTML-tekst der vil blive brugt i emails sendt til udløbne hvis CMS-konto er udløbet. [[NAVN]] vil blive erstattet med brugerens navn.'),(16,'curis_error_da','Der opstod et problem under kommunikation med medarbejderwebservicen.','Dansk fejlbesked hvis CURIS-baserede dokumenttyper fejler'),(17,'curis_error_en','A problem occured while communicating with the employee data webservice.','Engelsk fejlbesked hvis CURIS-baserede dokumenttyper fejler'),(18,'create_user_newsletter_docidpath','/110202.docid','Sti til det nyhedsbrev nyoprettede brugere automatisk tilmeldes'),(25,'peoplexs_report_id','156789','Id på den rapport host peopleXS der hentes stillingsopslag fra.'),(26,'peoplexs_da_data','12920:156789','Portal-id og rapport-id brugt til at hente danske opdateringer fra PeopleXS. Skal angives som <portal-id>:<rapport-id>.'),(27,'peoplexs_en_data','12921:156789','Portal-id og rapport-id brugt til at hente engelske opdateringer fra PeopleXS. Skal angives som <portal-id>:<rapport-id>.'),(28,'globalfooter_da','    <div class=\"footercolumn\">\r\n        <h3 class=\"footer-heading\">Kontakt</h3>\r\n        <ul class=\"footerlinks\">\r\n            <li><a href=\"http://kommunikation.ku.dk/\">Kommunikation</a></li>\r\n            <li><a href=\"http://www.ku.dk/\">Københavns Universitet</a>\r\n                <span>Nørregade 10\r\n                <br />Postboks 2177\r\n                <br />1017 København K</span></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"footercolumn\">\r\n        <h3 class=\"footer-heading\">Heading</h3>\r\n        <ul class=\"footerlinks\">\r\n            <li><a href=\"#\">Dansk footer</a></li>\r\n            <li><a href=\"#\">Link Link Link Link Link Link Link Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"footercolumn\">\r\n        <h3 class=\"footer-heading\">Heading</h3>\r\n        <ul class=\"footerlinks\">\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"footercolumn\">\r\n        <h3 class=\"footer-heading\">Heading</h3>\r\n        <ul class=\"footerlinks\">\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li>\r\n                <div class=\"social-items\">\r\n                    <div class=\"social-item\">\r\n                        <a target=\"_blank\" href=\"https://www.facebook.com/Det-Humanistiske-Fakultet-K%C3%B8benhavns-Universitet-361218003980615/\" class=\"social-icon\" title=\"Facebook\"><i class=\"icon-facebook\"></i></a>\r\n                    </div>\r\n                    <div class=\"social-item\">\r\n                        <a target=\"_blank\" href=\"http://facebook.com\" class=\"social-icon\" title=\"Instagram\"><i class=\"icon-instagram\"></i></a>\r\n                    </div>\r\n                    <div class=\"social-item\">\r\n                        <a target=\"_blank\" href=\"http://facebook.com\" class=\"social-icon\" title=\"linkedIn\"><i class=\"icon-linkedin\"></i></a>\r\n                    </div>\r\n                </div>\r\n            </li>\r\n        </ul>\r\n    </div>\r\n','Global footer for danske sider'),(29,'globalfooter_en','    <div class=\"footercolumn\">\r\n        <h3 class=\"footer-heading\">Kontakt</h3>\r\n        <ul class=\"footerlinks\">\r\n            <li><a href=\"http://kommunikation.ku.dk/\">Kommunikation</a></li>\r\n            <li><a href=\"http://www.ku.dk/\">Københavns Universitet</a>\r\n                <span>Nørregade 10\r\n                <br />Postboks 2177\r\n                <br />1017 København K</span></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"footercolumn\">\r\n        <h3 class=\"footer-heading\">Heading</h3>\r\n        <ul class=\"footerlinks\">\r\n            <li><a href=\"#\">Engelsk footer</a></li>\r\n            <li><a href=\"#\">Link Link Link Link Link Link Link Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"footercolumn\">\r\n        <h3 class=\"footer-heading\">Heading</h3>\r\n        <ul class=\"footerlinks\">\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n        </ul>\r\n    </div>\r\n    <div class=\"footercolumn\">\r\n        <h3 class=\"footer-heading\">Heading</h3>\r\n        <ul class=\"footerlinks\">\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li><a href=\"#\">Link</a></li>\r\n            <li>\r\n                <div class=\"social-items\">\r\n                    <div class=\"social-item\">\r\n                        <a target=\"_blank\" href=\"https://www.facebook.com/Det-Humanistiske-Fakultet-K%C3%B8benhavns-Universitet-361218003980615/\" class=\"social-icon\" title=\"Facebook\"><i class=\"icon-facebook\"></i></a>\r\n                    </div>\r\n                    <div class=\"social-item\">\r\n                        <a target=\"_blank\" href=\"http://facebook.com\" class=\"social-icon\" title=\"Instagram\"><i class=\"icon-instagram\"></i></a>\r\n                    </div>\r\n                    <div class=\"social-item\">\r\n                        <a target=\"_blank\" href=\"http://facebook.com\" class=\"social-icon\" title=\"linkedIn\"><i class=\"icon-linkedin\"></i></a>\r\n                    </div>\r\n                </div>\r\n            </li>\r\n        </ul>\r\n    </div>\r\n','Global footer for engelske sider'),(30,'dead_page_notification_da','<h1>Denne side er markeret som død</h1>\r\n<p>\r\n    Denne side har meget få besøgende og er ikke blevet opdateret i\r\n    mere end to år. Hvis siden ikke er relevant længere,\r\n    bedes du slette den. Hvis den stadig er relevant bør du opdatere\r\n    den og gøre den lettere at finde for de besøgende.\r\n</p>\r\n','Tekst til advarsel om døde sider - dansk'),(31,'dead_page_notification_en','<h1>This page has been marked as dead</h1>\r\n<p>\r\n    This page has very few visits and has not been updated in\r\n    more than two years. If the page is no longer relevant,\r\n    please delete it. If it is still relevant you should update\r\n    it and make it easier to locate for visitors to the site.\r\n</p>\r\n','Tekst til advarsel om døde sider - engelsk'),(32,'globalmenu_news_path_da','/subsite/nyheder/','Sti hvor nyheder i dansk globalmenu hentes fra.'),(33,'globalmenu_news_path_en','/science-sites/institutter/nexs/english/news/','Sti hvor nyheder i engelsk globalmenu hentes fra.'),(34,'globalmenu_news_amount_da','1','Antal nyheder i den danske globalmenu.'),(35,'globalmenu_news_amount_en','1','Antal nyheder i den engelske globalmenu.'),(36,'non_https_hostnames','asdfasdf.hat.muh\r\nsubsite.ku.jubk.magenta-aps.dk\r\n\r\n\r\n','Hostnavne der tvinges til ikke at køre https, et per linie'),(37,'gdpr_form_text_da','','Standard-GDPR-tekst for formularer på danske sider'),(38,'gdpr_form_text_en','','Standard-GDPR-tekst for formularer på engelske sider'),(39,'gdpr_newsletter_text_da','Jeg giver tilladelse til, at universitetet kan registrere ovenstående oplysninger om mig. Oplysningerne bruges kun til at udsende nyhedsbrevet. De opbevares sikkert og fortroligt i overensstemmelse med <a href=\'https://informationssikkerhed.ku.dk/persondatabeskyttelse/privatlivspolitik/\'>KU\'s privatlivspolitik</a>. Du kan til enhver tid afmelde dig nyhedsbrevet, hvorefter oplysningerne vil blive slettet igen.','Standard-GDPR-tekst for nyhedsbrevstilmelding på danske sider'),(40,'gdpr_newsletter_text_en','','Standard-GDPR-tekst for nyhedsbrevstilmelding på engelske sider'),(41,'unvisited_page_notification_da','<h1>Denne side er markeret som ubesøgt</h1>\r\n<p>\r\n    Denne side har meget få besøgende.\r\n    Hvis siden ikke er relevant længere,\r\n    bedes du slette den. Hvis den stadig er relevant bør du opdatere\r\n    den og gøre den lettere at finde for de besøgende.\r\n</p>\r\n','Tekst til advarsel om ubesøgte sider - dansk'),(42,'unvisited_page_notification_en','<h1>This page has been marked as unvisited</h1>\r\n<p>\r\n    This page has very few visits.\r\n    If the page is no longer relevant,\r\n    please delete it. If it is still relevant you should update\r\n    it and make it easier to locate for visitors to the site.\r\n</p>\r\n','Tekst til advarsel om ubesøgte sider - engelsk'),(43,'link_check_filter','*magenta.dk*\r\n','Link check filter, en adresse per linie, med support for brug af wildcard (*)'),(44,'search_filters_da','allKU.url = https://soeg.cmstest01.ku.dk\r\nallKU.querykey = q\r\nallKU.param.gcse = 003802773804381141234:2j5u8uupemo\r\nallKU.label = Hele KU\r\n\r\nnews.url = http://nyheder.ku.dk\r\nnews.querykey = query\r\nnews.param.obvius_mode = search\r\nnews.param.doctype = Nyhed\r\nnews.param.path = /fa-sites/nyhedssites/nyheder/alle_nyheder/\r\nnews.label = Nyheder\r\n\r\nstudies.url = https://soeg.cmstest01.ku.dk\r\nstudies.querykey = q\r\nstudies.param.gcse = 003802773804381141234:vo1ekpyvifm\r\nstudies.label = Studier\r\n\r\npostgraduate.url = http://efteruddannelse.kurser.ku.dk/dansk\r\npostgraduate.querykey = SearchWord\r\npostgraduate.param.PageNumber = 1\r\npostgraduate.label = Efteruddannelse\r\n\r\nscientists.url = http://forskning.ku.dk/find-en-forsker\r\nscientists.querykey = search\r\nscientists.param.pure = da/persons/search.html\r\nscientists.label = Forskere\r\n\r\npublications.url = http://forskning.ku.dk/find-en-forsker\r\npublications.querykey = search\r\npublications.param.pure = da/publications/search.html\r\npublications.label = Publikationer\r\n\r\njob.url = http://jobportal.ku.dk/alle-opslag/\r\njob.querykey = pxs_search\r\njob.method = POST\r\njob.label = Job','Danske søgefiltre til den globale søgemenu. Hvert filter skal skrives som flere linjer i formatet <filter>.<key>=<value>, f.eks.:\nallKU.url=soeg.ku.dk\nallKU.querykey=q\nallKU.param.gcse=003802773804381141234:2j5u8uupemo\nallKU.label=Hele ku.dk'),(45,'search_filters_en','allKU.url = https://search.cmstest01.ku.dk\r\nallKU.querykey = q\r\nallKU.param.gcse = 003802773804381141234:oayrskffd-0\r\nallKU.label = All\r\n\r\nnews.url = http://news.ku.dk\r\nnews.querykey = query\r\nnews.param.obvius_mode = search\r\nnews.param.doctype = Nyhed\r\nnews.param.path = /fa-sites/nyhedssites/news/all_news/\r\nnews.label = News\r\n\r\nstudies.url = https://search.cmstest01.ku.dk\r\nstudies.querykey = q\r\nstudies.param.gcse = 014167723083474301078:bw1udng1rlu\r\nstudies.label = Master\'s Programmes\r\n\r\npostgraduate.url = http://efteruddannelse.kurser.ku.dk/english\r\npostgraduate.querykey = SearchWord\r\npostgraduate.param.PageNumber = 1\r\npostgraduate.label = Continuing Education\r\n\r\nscientists.url = http://research.ku.dk/find-a-researcher\r\nscientists.querykey = search\r\nscientists.param.pure = en/persons/search.html\r\nscientists.label = Researchers\r\n\r\npublications.url = http://research.ku.dk/find-a-researcher\r\npublications.querykey = search\r\npublications.param.pure = en/publications/search.html\r\npublications.label = Publications\r\n\r\njob.url = http://employment.ku.dk/all-vacancies/\r\njob.querykey = pxs_search\r\njob.method = POST\r\njob.label = Jobs','Wngelske søgefiltre til den globale søgemenu. Hvert filter skal skrives som flere linjer i formatet <filter>.<key>=<value>, f.eks.:\nallKU.url=soeg.ku.dk\nallKU.querykey=q\nallKU.param.gcse=003802773804381141234:2j5u8uupemo\nallKU.label=Hele ku.dk');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_environments`
--

DROP TABLE IF EXISTS `cron_environments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_environments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cron_environment_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_environments`
--

LOCK TABLES `cron_environments` WRITE;
/*!40000 ALTER TABLE `cron_environments` DISABLE KEYS */;
INSERT INTO `cron_environments` VALUES (1,'production','Produktion'),(2,'test','Test'),(3,'development','Udvikling');
/*!40000 ALTER TABLE `cron_environments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_server_types`
--

DROP TABLE IF EXISTS `cron_server_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_server_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cron_server_type_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_server_types`
--

LOCK TABLES `cron_server_types` WRITE;
/*!40000 ALTER TABLE `cron_server_types` DISABLE KEYS */;
INSERT INTO `cron_server_types` VALUES (1,'web','Web-server'),(2,'batch','Navigator/batch-server'),(3,'development','Udviklingsmaskine');
/*!40000 ALTER TABLE `cron_server_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_servers`
--

DROP TABLE IF EXISTS `cron_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_servers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `environment_id` int(10) unsigned DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `last_run` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cron_server_hostname` (`hostname`),
  KEY `cron_server_type_ref` (`type_id`),
  KEY `cron_server_env_ref` (`environment_id`),
  CONSTRAINT `cron_server_env_ref` FOREIGN KEY (`environment_id`) REFERENCES `cron_environments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `cron_server_type_ref` FOREIGN KEY (`type_id`) REFERENCES `cron_server_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_servers`
--

LOCK TABLES `cron_servers` WRITE;
/*!40000 ALTER TABLE `cron_servers` DISABLE KEYS */;
INSERT INTO `cron_servers` VALUES (1,'cmsweb01',1,1,1,NULL),(2,'cmsweb02',1,1,0,NULL),(3,'cmsweb03',1,1,0,NULL),(4,'cmsweb04',1,1,0,NULL),(5,'cmsnav01',2,1,1,NULL),(6,'cmsnav02',2,1,0,NULL),(7,'cmswebtest01',1,2,1,NULL),(8,'cmsnavtest01',2,2,1,NULL),(25,'workdev',3,3,0,NULL);
/*!40000 ALTER TABLE `cron_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `cron_servers_full`
--

DROP TABLE IF EXISTS `cron_servers_full`;
/*!50001 DROP VIEW IF EXISTS `cron_servers_full`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `cron_servers_full` (
  `id` tinyint NOT NULL,
  `hostname` tinyint NOT NULL,
  `type_id` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `environment_id` tinyint NOT NULL,
  `environment` tinyint NOT NULL,
  `is_primary` tinyint NOT NULL,
  `last_run` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `custom_redirects`
--

DROP TABLE IF EXISTS `custom_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_redirects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pattern` varchar(700) NOT NULL,
  `dest` varchar(700) NOT NULL,
  `statuscode` int(11) NOT NULL DEFAULT 301,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pattern` (`pattern`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_redirects`
--

LOCK TABLES `custom_redirects` WRITE;
/*!40000 ALTER TABLE `custom_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dead_documents`
--

DROP TABLE IF EXISTS `dead_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dead_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned NOT NULL,
  `dead_status` enum('dead','unvisited','protected') DEFAULT 'dead',
  `registered` datetime NOT NULL,
  `unpublish_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dd_docid` (`docid`),
  KEY `docid_dead_status_idx` (`docid`,`dead_status`),
  KEY `dd_status_idx` (`dead_status`),
  KEY `dd_registered_idx` (`registered`),
  KEY `dd_unpublish_date_idx` (`unpublish_date`),
  CONSTRAINT `dd_documents_ref` FOREIGN KEY (`docid`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dead_documents`
--

LOCK TABLES `dead_documents` WRITE;
/*!40000 ALTER TABLE `dead_documents` DISABLE KEYS */;
INSERT INTO `dead_documents` VALUES (3335,120938,'dead','2016-09-07 11:17:48',NULL),(3337,110196,'dead','2016-09-07 11:17:48',NULL);
/*!40000 ALTER TABLE `dead_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docid_path`
--

DROP TABLE IF EXISTS `docid_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docid_path` (
  `path` varchar(767) NOT NULL,
  `docid` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `docid` (`docid`),
  KEY `path` (`path`(255)),
  KEY `docid_path_path_docid_idx` (`path`(255),`docid`),
  KEY `docid_path_docid_path_idx` (`docid`,`path`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docid_path`
--

LOCK TABLES `docid_path` WRITE;
/*!40000 ALTER TABLE `docid_path` DISABLE KEYS */;
INSERT INTO `docid_path` VALUES ('/',1),('/admin/',110189),('/error500/',110196),('/error404/',110197),('/subsite/',110201),('/https_subsite/',115658),('/admin/previews/',120935),('/subsite/inforedigering2/',158705),('/admin/previews/110902/',120936),('/admin/previews/120937/',120938),('/admin/previews/110201/',158706),('/admin/previews/110214/',158707),('/bootstrap-styling/',159014),('/bootstrap-styling/fonts/',159015),('/bootstrap-styling/fonts/image002.jpg/',159016),('/forside/',159029),('/forside/en-underside/',159030),('/forside/en-side-mere/',159031);
/*!40000 ALTER TABLE `docid_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docparams_backup`
--

DROP TABLE IF EXISTS `docparams_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docparams_backup` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `deletion_time` datetime NOT NULL,
  `docid` int(8) unsigned NOT NULL,
  `name` varchar(127) NOT NULL,
  `value` longtext DEFAULT NULL,
  `type` int(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=978 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docparams_backup`
--

LOCK TABLES `docparams_backup` WRITE;
/*!40000 ALTER TABLE `docparams_backup` DISABLE KEYS */;
INSERT INTO `docparams_backup` VALUES (977,'2019-02-25 12:00:31',110201,'GLOBALMENU_EN_LINK','http://english.ku.dk/',0);
/*!40000 ALTER TABLE `docparams_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docparms`
--

DROP TABLE IF EXISTS `docparms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docparms` (
  `docparam_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `name` varchar(127) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  `type` int(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`docparam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=988 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docparms`
--

LOCK TABLES `docparms` WRITE;
/*!40000 ALTER TABLE `docparms` DISABLE KEYS */;
INSERT INTO `docparms` VALUES (942,1,'GLOBAL_PURE_URI','/subsite/pure-integration/',0),(943,1,'PURE_BASE_URL','http://localhost:8888/portal/',0),(944,1,'PURE_STATIC_URL','http://static-curis.ku.dk/portal/',0),(945,1,'PURE_EXTRA_PREFIXES','http://testcurisrh55.adm.ku.dk:8080/portal/,\r\nhttp://p1kitapp01lcur.adm.ku.dk:8081/portal/',0),(946,1,'ADMIN_DOCTYPES_AVAILABLE','Standard,Sitemap,Link,CalendarEvent,Calendar,Arrangementsliste,Linksliste,Fritekstboks,Banner,Nyhed,Proxy,Forside,Form,Medarbejderoversigt,Medarbejder,Kursusliste,Alerts,Cv,Artikel,Publikationsliste,KeywordSearch,NyNyhedsliste,NyArrangementsliste,Newsletter',0),(982,110201,'MIT_EGET_DOCPARAM','asdf',0),(983,110201,'FOOTER-CONTACT-USER','ase',0),(984,110201,'FACULTYTRACKER','test-test-test',0),(985,110201,'PURE_BASE_URL','https://curis.ku.dk/portal/',0),(987,110201,'PURE_EXTRA_PREFIXES','http://testcurisrh55.adm.ku.dk:8080/portal/, http://p1kitapp01lcur.adm.ku.dk:8081/portal/',0);
/*!40000 ALTER TABLE `docparms` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_docparams_delete after delete on docparms
for each row
begin
        insert into docparams_backup (docid, name, value, type, deletion_time) values
                                     (old.docid, old.name, old.value, old.type, now());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `docparms_defs`
--

DROP TABLE IF EXISTS `docparms_defs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docparms_defs` (
  `name` varchar(127) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  `da_shortdescr` varchar(200) DEFAULT NULL,
  `en_shortdescr` varchar(200) DEFAULT NULL,
  `usagedescr` varchar(200) DEFAULT NULL,
  `show_in_menu` int(1) DEFAULT 0,
  `deprecated` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docparms_defs`
--

LOCK TABLES `docparms_defs` WRITE;
/*!40000 ALTER TABLE `docparms_defs` DISABLE KEYS */;
/*!40000 ALTER TABLE `docparms_defs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docparms_test`
--

DROP TABLE IF EXISTS `docparms_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docparms_test` (
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `name` varchar(127) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  `type` int(8) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docparms_test`
--

LOCK TABLES `docparms_test` WRITE;
/*!40000 ALTER TABLE `docparms_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `docparms_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `docs_with_extra`
--

DROP TABLE IF EXISTS `docs_with_extra`;
/*!50001 DROP VIEW IF EXISTS `docs_with_extra`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `docs_with_extra` (
  `id` tinyint NOT NULL,
  `parent` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `owner` tinyint NOT NULL,
  `grp` tinyint NOT NULL,
  `accessrules` tinyint NOT NULL,
  `inherit_access` tinyint NOT NULL,
  `public_or_latest_version` tinyint NOT NULL,
  `has_public_path` tinyint NOT NULL,
  `closest_subsite` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `doctypes`
--

DROP TABLE IF EXISTS `doctypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctypes` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL DEFAULT '',
  `parent` int(8) unsigned NOT NULL,
  `basis` int(1) unsigned NOT NULL DEFAULT 0,
  `searchable` int(1) NOT NULL DEFAULT 1,
  `sortorder_field_is` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctypes`
--

LOCK TABLES `doctypes` WRITE;
/*!40000 ALTER TABLE `doctypes` DISABLE KEYS */;
INSERT INTO `doctypes` VALUES (1,'Base',0,1,1,'sortorder'),(2,'Standard',1,1,1,NULL),(3,'Search',2,1,1,NULL),(4,'ComboSearch',3,1,1,NULL),(5,'KeywordSearch',3,1,1,NULL),(6,'HTML',1,1,1,NULL),(7,'Upload',1,1,1,NULL),(8,'Quiz',2,1,1,NULL),(9,'QuizQuestion',1,1,1,NULL),(10,'MultiChoice',2,1,1,NULL),(11,'OrderForm',6,1,1,NULL),(12,'CreateDocument',1,1,1,NULL),(13,'Sitemap',2,1,1,NULL),(14,'Subscribe',2,1,1,NULL),(15,'Image',0,1,1,NULL),(16,'Link',1,1,1,NULL),(17,'DBSearch',1,1,1,NULL),(18,'MailData',2,1,1,NULL),(19,'TableList',0,1,1,NULL),(20,'CalendarEvent',1,1,1,NULL),(21,'Calendar',1,1,1,NULL),(22,'SubDocuments',1,1,1,NULL),(23,'Nyhedsliste',1,1,1,NULL),(24,'Arrangementsliste',1,1,1,NULL),(25,'Linksliste',1,1,1,NULL),(26,'Fritekstboks',1,1,1,NULL),(27,'Banner',1,1,1,NULL),(28,'Nyhed',2,1,1,NULL),(29,'Proxy',1,1,1,NULL),(30,'Forside',1,1,1,NULL),(31,'Form',1,1,1,NULL),(32,'FileUpload',1,1,1,NULL),(33,'RSSFeed',4,1,1,NULL),(34,'Newsbox',1,1,1,NULL),(35,'GoogleSearch',1,1,1,NULL),(36,'Alerts',2,1,1,NULL),(37,'Kursusliste',2,1,1,NULL),(38,'Artikel',2,1,1,NULL),(39,'Publikationsliste',2,1,1,NULL),(40,'Cv',2,1,1,NULL),(41,'Organisation',2,1,1,NULL),(42,'Medarbejderoversigt',2,1,1,NULL),(43,'Medarbejder',2,1,1,NULL),(44,'SearchPure',2,1,1,NULL),(45,'Tooltip',2,1,1,NULL),(46,'Infoliste',1,1,1,NULL),(47,'Inforedigering',31,1,1,NULL),(48,'InternalProxy',1,1,1,NULL),(49,'ErrorDocument',6,1,1,NULL),(50,'NyArrangementsliste',1,1,1,NULL),(51,'ExternalRightbox',1,1,1,NULL),(52,'BredStandard',2,1,1,NULL),(53,'NyNyhedsliste',1,1,1,NULL),(54,'Institutleder',2,1,1,NULL),(55,'TagCloud',2,1,1,NULL),(56,'SearchPage',2,1,1,NULL),(57,'Bannerliste',2,1,1,NULL),(58,'Newsletter',2,1,1,NULL),(59,'CFIMBooking',2,1,1,NULL),(60,'Aktivitet',2,1,1,NULL),(61,'JobportalPeopleXS',2,1,1,NULL),(62,'HovedForside',6,1,1,NULL),(63,'QuizPoll',1,1,1,NULL),(64,'Encyclopedia',2,1,1,NULL),(65,'EncyclopediaEntry',2,1,1,NULL),(66,'FACSBooking',2,1,1,NULL),(67,'GridForside',1,1,1,NULL),(68,'GeoNatVidenblad',2,1,1,NULL),(69,'GeoNatVidenbladsliste',2,1,1,NULL),(70,'GeoNatVidenserieForside',30,1,1,NULL),(71,'GeoNatSpoergsmaalSvar',2,1,1,NULL),(72,'GeoNatSpoergsmaalSvarListe',2,1,1,NULL),(73,'GeoNatForfatterProfil',2,1,1,NULL),(74,'GeoNatForfatterProfilListe',2,1,1,NULL),(75,'NewsletterBatchSignup',2,1,1,NULL),(76,'GeoNatAmuKursus',20,1,1,NULL),(77,'GeoNatAabenKonferenceKursus',76,1,1,NULL),(78,'GeoNatKursusListe',2,1,1,NULL),(79,'GeoNatTilmeldingsForm',31,1,1,NULL),(80,'ScriptExecutor',2,1,1,NULL),(81,'ScriptElement',1,1,1,NULL),(82,'Folder',2,1,1,NULL),(83,'Unused01',1,1,1,NULL),(84,'PureIntegration',2,1,1,NULL),(85,'JobportalSubpage',2,1,1,NULL),(86,'Faggruppe',84,1,1,NULL),(87,'Bare',2,1,1,NULL),(88,'App',87,1,1,NULL),(90,'FullWidthFrontpage',67,1,1,NULL),(93,'GridStandard',1,1,1,NULL),(94,'FleksibelBoks',1,1,1,NULL);
/*!40000 ALTER TABLE `doctypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(8) unsigned NOT NULL DEFAULT 0,
  `name` varchar(127) NOT NULL DEFAULT '',
  `type` int(8) unsigned NOT NULL DEFAULT 0,
  `owner` smallint(5) unsigned NOT NULL DEFAULT 0,
  `grp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessrules` mediumtext DEFAULT NULL,
  `inherit_access` int(1) unsigned DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent` (`parent`,`name`),
  KEY `parent_2` (`parent`),
  KEY `doc_docid_public` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159032 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,0,'dummy',2,1,1,'admin=create,edit,delete,publish,modes\r\nOWNER=create,edit,delete,publish,modes\r\nGROUP+create,edit,delete,publish\r\nALL+view',0),(110189,1,'admin',6,1,1,'',1),(110196,1,'error500',2,1,1,NULL,1),(110197,1,'error404',2,1,1,NULL,1),(110201,1,'subsite',2,1,1,'INHERIT\r\njubk!view,create,edit,publish,delete,modes',1),(115658,1,'https_subsite',2,1,1,'',1),(120935,110189,'previews',2,1,1,NULL,1),(120936,120935,'110902',6,1,1,'ALL=view,create,edit,publish,delete,modes',0),(120938,120935,'120937',2,1,1,'ALL=view,create,edit,publish,delete,modes',0),(158705,110201,'inforedigering2',47,45,1,NULL,1),(158706,120935,'110201',30,45,1,'ALL=view,create,edit,publish,delete,modes',1),(158707,120935,'110214',2,45,1,'ALL=view,create,edit,publish,delete,modes',1),(159014,1,'bootstrap-styling',82,45,1,NULL,1),(159015,159014,'fonts',82,45,1,NULL,1),(159016,159015,'image002.jpg',15,45,1,'INHERIT\r\n',1),(159029,1,'forside',2,1,1,NULL,1),(159030,159029,'en-underside',2,1,1,NULL,1),(159031,159029,'en-side-mere',2,1,1,NULL,1);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_document_insert after insert on documents
for each row begin
    INSERT INTO documents_extra
        (id, public_or_latest_version, has_public_path, closest_subsite)
    VALUES
        (new.id, NULL, NULL, NULL);
    INSERT INTO path_tree (`parent`, `child`, `depth`)
    VALUES (new.id, new.id, 0);
    call insert_path_tree_link(new.parent, new.id);
    call update_docid_path_recursive(new.id);
    call update_closest_subsite_recursive(new.id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_document_update after update on documents
for each row begin
    
    if (new.parent != old.parent) then
        call remove_path_tree_link(old.parent, new.id);
        call insert_path_tree_link(new.parent, new.id);
        call update_closest_subsite_recursive(new.id);
        call update_has_public_path_recursive(new.id);
    end if;

    
    if (new.parent != old.parent) or (new.name != old.name) then
       call update_docid_path_recursive(new.id);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_document_delete after delete on documents
for each row
begin
        declare p text default NULL;
        select path from docid_path where docid=old.id into p;  
        insert into documents_backup (id, parent, name, type, owner,grp, accessrules, 
                                      path,date_deleted, delete_user) values 
                                   (old.id, old.parent, old.name, old.type, old.owner, 
                                    old.grp, old.accessrules, p, now(), ifnull(@user, 1));
	delete d from docid_path d where d.docid = old.id;
	call clean_internal_proxies(old.id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `documents_backup`
--

DROP TABLE IF EXISTS `documents_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_backup` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(8) unsigned NOT NULL DEFAULT 0,
  `name` char(127) NOT NULL DEFAULT '',
  `type` int(8) unsigned NOT NULL,
  `owner` smallint(5) unsigned NOT NULL DEFAULT 0,
  `grp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessrules` text DEFAULT NULL,
  `path` varchar(1024) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `delete_user` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `path` (`path`(767)),
  KEY `parent` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=159029 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_backup`
--

LOCK TABLES `documents_backup` WRITE;
/*!40000 ALTER TABLE `documents_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_extra`
--

DROP TABLE IF EXISTS `documents_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_extra` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `public_or_latest_version` int(10) unsigned DEFAULT NULL,
  `has_public_path` int(1) unsigned DEFAULT 0,
  `closest_subsite` int(16) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doc_public_or_latest` (`public_or_latest_version`),
  KEY `doc_has_public_path` (`has_public_path`),
  KEY `doc_docid_public` (`id`,`has_public_path`),
  KEY `doc_closest_subsite` (`closest_subsite`),
  CONSTRAINT `doc_closest_subsite_ref` FOREIGN KEY (`closest_subsite`) REFERENCES `subsites2` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `doc_extra_doc_ref` FOREIGN KEY (`id`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pol_version_ref` FOREIGN KEY (`public_or_latest_version`) REFERENCES `versions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=159032 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_extra`
--

LOCK TABLES `documents_extra` WRITE;
/*!40000 ALTER TABLE `documents_extra` DISABLE KEYS */;
INSERT INTO `documents_extra` VALUES (1,3,1,NULL),(110189,47860,1,NULL),(110196,50,1,NULL),(110197,47610,1,NULL),(110201,47859,1,753),(115658,47858,1,166),(120935,9750,1,NULL),(120936,9751,1,NULL),(120938,9753,1,NULL),(158705,47545,1,753),(158706,47546,1,NULL),(158707,47547,1,NULL),(159014,47622,1,NULL),(159015,47623,1,NULL),(159016,47624,1,NULL),(159029,47861,1,921),(159030,47862,1,921),(159031,47863,1,921);
/*!40000 ALTER TABLE `documents_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driftinfo_sync`
--

DROP TABLE IF EXISTS `driftinfo_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driftinfo_sync` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned NOT NULL,
  `md5_id` char(32) COLLATE utf8_danish_ci NOT NULL,
  `last_sync` datetime DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_danish_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `driftinfo_sync_entry_id_idx` (`entry_id`),
  KEY `driftinfo_sync_md5_id_idx` (`md5_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driftinfo_sync`
--

LOCK TABLES `driftinfo_sync` WRITE;
/*!40000 ALTER TABLE `driftinfo_sync` DISABLE KEYS */;
/*!40000 ALTER TABLE `driftinfo_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driftinfo_sync2`
--

DROP TABLE IF EXISTS `driftinfo_sync2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driftinfo_sync2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driftinfo_id` int(11) NOT NULL,
  `md5_id` char(32) COLLATE utf8_danish_ci NOT NULL,
  `last_sync` datetime DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_danish_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `driftinfo_sync2_driftinfo_id_idx` (`driftinfo_id`),
  KEY `driftinfo_sync2_md5_id_idx` (`md5_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driftinfo_sync2`
--

LOCK TABLES `driftinfo_sync2` WRITE;
/*!40000 ALTER TABLE `driftinfo_sync2` DISABLE KEYS */;
/*!40000 ALTER TABLE `driftinfo_sync2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driftsinfo`
--

DROP TABLE IF EXISTS `driftsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driftsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_danish_ci NOT NULL,
  `time_created` datetime NOT NULL,
  `time_begin` datetime DEFAULT NULL,
  `time_end` datetime DEFAULT NULL,
  `description` text COLLATE utf8_danish_ci DEFAULT NULL,
  `solution` text COLLATE utf8_danish_ci DEFAULT NULL,
  `audience` varchar(100) COLLATE utf8_danish_ci DEFAULT NULL,
  `importance` int(11) NOT NULL,
  `faculties` varchar(100) COLLATE utf8_danish_ci DEFAULT NULL,
  `systems` varchar(100) COLLATE utf8_danish_ci DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driftsinfo`
--

LOCK TABLES `driftsinfo` WRITE;
/*!40000 ALTER TABLE `driftsinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `driftsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driftsinfo_systems`
--

DROP TABLE IF EXISTS `driftsinfo_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driftsinfo_systems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_id` varchar(30) COLLATE utf8_danish_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_danish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driftsinfo_systems`
--

LOCK TABLES `driftsinfo_systems` WRITE;
/*!40000 ALTER TABLE `driftsinfo_systems` DISABLE KEYS */;
INSERT INTO `driftsinfo_systems` VALUES (1,'Adm_ku_dk__FA_','Adm.ku.dk (FA)'),(2,'Absalon','Absalon'),(3,'Alumni_mail','Alumni-mail'),(4,'Bygningsregister','Bygningsregister'),(5,'Captia','Captia'),(6,'CMS','CMS'),(7,'CURIS','CURIS'),(8,'Discoverer','Discoverer'),(9,'Exam_Scheduler','Exam Scheduler'),(10,'F_nix','Fønix / Aske'),(11,'IdM','IdM'),(12,'ISIS','ISIS'),(13,'Kunet','KUnet'),(14,'Netv_rk','Netværk'),(15,'PC_Print','PC/Print'),(16,'ScanPas','ScanPas'),(17,'Selvbetjening','Selvbetjening'),(18,'SIS','SIS'),(19,'STADS','STADS'),(20,'Syllabus','Syllabus'),(21,'Telefoni','Telefoni'),(22,'_SS','ØSS'),(28,'KUmail','KUmail'),(29,'Eduroam','Eduroam');
/*!40000 ALTER TABLE `driftsinfo_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dummy`
--

DROP TABLE IF EXISTS `dummy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dummy` (
  `id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dummy`
--

LOCK TABLES `dummy` WRITE;
/*!40000 ALTER TABLE `dummy` DISABLE KEYS */;
/*!40000 ALTER TABLE `dummy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editpages`
--

DROP TABLE IF EXISTS `editpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editpages` (
  `doctypeid` int(8) unsigned NOT NULL,
  `page` char(5) NOT NULL,
  `title` varchar(127) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `fieldlist` text NOT NULL,
  PRIMARY KEY (`doctypeid`,`page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editpages`
--

LOCK TABLES `editpages` WRITE;
/*!40000 ALTER TABLE `editpages` DISABLE KEYS */;
INSERT INTO `editpages` VALUES (2,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=10\ncontent Text;rows=20\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(2,'2','Right boxes','','rightboxes Vælg højrebokse'),(2,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(2,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(2,'P','Publish document','',''),(3,'1','Free text search','A Search-document makes it possible to create a free-text search of the\nentire website.','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nseq Order of succession;subtitle=Display-only, nopagenav=1\nshort_title Short title\nteaser Teaser;rows=4\nform Alternative search-form (leave empty for default)\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Date (YYYY-MM-DD)'),(3,'2','Right boxes','','rightboxes Vælg højrebokse'),(3,'P','Publish document','Publish now?',''),(4,'1','Search information','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nsearch_expression Search expression\ndocdate Date (YYYY-MM-DD)\nexpires Expiring'),(4,'2','Right boxes','','rightboxes Vælg højrebokse'),(4,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(4,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(4,'P','Publish document','',''),(5,'1','Search information','In the fields below you can specify your local search','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nintroduction Introduktion\nbase Base of search\nsearch_type\nsearch_expression Type keyword;rows=1,no_msie_editor=1\ndocdate Date (YYYY-MM-DD)\nexpires Expiring\npagesize Sideinddeling\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1'),(5,'2','Right boxes','','rightboxes Vælg højrebokse'),(5,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(5,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(5,'P','Publish document','',''),(6,'1','HTML and pictures','HTML-documents can contain HTML in the Text-fields. Using the \"Browse\"-button\nbelow each field a local HTML-file can be uploaded.','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nhtml_content HTML\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Date (YYYY-MM-DD)\nexpires Expiring'),(6,'2','Right boxes','','rightboxes Vælg højrebokse'),(6,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(6,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(6,'P','Publish document','',''),(13,'1','Text and levels','Documents of this type automatically generates a (dynamic) sitemap.','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession;subtitle=Display-only, nopagenav=1\ncontent Text;rows=4\nlevels Levels\ndocdate Date (YYYY-MM-DD)\nroot Base of sitemap\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1'),(13,'2','Advanced','Hvis du vger \"Ja\" i en eller flere af de tre valgmuligheder, skal du huske, at sitemap-dokumentet IKKE må offentligges.','show_hidden Vis offentliggjorte sider, som ikke er med i venstremenuen;label_0=No, label_1=Yes, reverse_options=1\nshow_expired Vis forældede sider;label_0=No, label_1=Yes, reverse_options=1\nshow_unpublished Vis ikke-offentliggjorte sider;label_0=No, label_1=Yes, reverse_options=1'),(13,'3','Right boxes','','rightboxes Vælg højrebokse'),(13,'P','Publish document','Publish now?',''),(15,'1','Image','Image-documents are a little special; they do not contain text\nbut instead image-data.','title Title\nshort_title Short title\nseq Order of succession\nuploadfile Image-file;get_image_dimensions_from_upload=1\ndocdate Date (yyyy-mm-dd)'),(15,'2','Keywords','','keyword Vælg nøgleord for siden:\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.'),(15,'P','Publish','Publishing the picture will make it visible on the public part\nof the website.',''),(16,'1','Indhold','','title Title\nshort_title Short title\nurl Adresse på link;choose=1\nseq Placering i menu\ndocdate Oprettelsesdato\nexpires Expiring'),(16,'P','Publish document','',''),(17,'1','Text','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nform Alternative search-form (leave empty for default)\ndocdate Date (YYYY-MM-DD)\nexpires Expiring'),(17,'2','Right boxes','','rightboxes Vælg højrebokse'),(17,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(17,'P','Publish document','',''),(19,'1','Table information','This is an administrative documenttype only.','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser\ntable Table\nfields Fields in list (one per line)\neditcomp Edit row component\nnewcomp New row component\ndocdate Date (yyyy-mm-dd)'),(19,'P','Publish document','Publish now?',''),(20,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nuplift_picture Tilføj billede til kalender (55x55 pixels)?\neventtype Arrangementstype;picklist=/admin/eventtype\nis_global_event Er det et globalt arrangement?\ndocdate Date\neventtime Startklokkeslæt (tt:mm)\nenddate Enddate\nendtime Slutklokkeslæt (tt:mm)\nshow_time Vis klokkeslet;label_0=No, label_1=Yes, reverse_options=1\nexpires Forældelsestidspunkt\neventplace Sted\ncontactinfo Event host\neventinfo Tekst\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1'),(20,'2','Right boxes','','rightboxes Vælg højrebokse'),(20,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(20,'4','Tags','','tags Tags;no_fixed_tags=1, app_for_autocompletion=event_tags'),(20,'P','Publish document','',''),(23,'1','Indhold','','title Title;subtitle=Indhold, nopagenav=1\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nintroduktion Introduktion;rows=4\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\ntags_search Tag kun med nyheder der har følgende tags\nnewssource Select news source;label_subdocuments=Subdocuments only, label_globalnews=Global news, label_copy=Copy-news, label_allnews=All news, subtitle=Nyhedskilde, nopagenav=1\nnewspath Vælg alle nyheder under denne placering;choose=1\nsortnewsby Sorter nyheder efter;label_reverse=Nyeste først, label_normal=Ældste først\nstartdate News from this date\nenddate News to this date\nresultlimit Maks. antal nyheder i udvælgelseslisten\npagesize Sideinddeling'),(23,'2','Udvælgelse','','adjusttype Vælg metode;label_noadjust=No adjustment, label_include=Include selected news only, label_exclude=Exclude selected news\nadjustlist Markér'),(23,'3','Right boxes','','rightboxes Vælg højrebokse'),(23,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(23,'5','Øvrige oplysninger','','newsboxmax Maks. antal nyheder i højreboks\nnewsmax Maks. antal nyheder i almindelige nyhedsoversigter'),(23,'P','Publish document','',''),(24,'1','Indhold','','title Title;subtitle=Indhold, nopagenav=1\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nintroduction Introduktion\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod, nopagenav=1\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\neventssource Select events source;label_subdocuments=Subdocuments only, label_allevents=All events, label_globalevents=Globale arrangementer, label_copy=Copy-events, subtitle=Kalenderkilde, nopagenav=1\neventspath Vælg alle arrangementer under denne placering;choose=1\nreverse_order Sorter med;label_0=Tidligeste arrangementer først,label_1=Seneste arrangementer først\nspecial_datelimit Vælg dato-interval:;subtitle=Datoudvælgelse, nopagenav=1\nstartdate Arrangementer fra\nenddate Arrangementer til\npagesize Sideinddeling'),(24,'2','Udvælgelse','','eventtypematch Medtag kun arrangmenter af typen;picklist=/admin/eventtype\nresultlimit Maks. antal arrangementer vist i udvælgelseslisten\nadjusttype Vælg metode;label_noadjust=No adjustment, label_include=Include selected events only, label_exclude=Exclude selected events\neventsadjustlist Markér'),(24,'3','Right boxes','','rightboxes Vælg højrebokse'),(24,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(24,'5','Øvrige oplysninger','','eventsboxmax Maks. antal arrangementer i højreboks'),(24,'P','Publish document','',''),(25,'1','Indhold','','title Title;subtitle=Indhold, nopagenav=1\nshort_title Short title\nseq Order of succession\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nlinkslist Vælg links til listen;quick_create_link=1'),(25,'2','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(25,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(25,'P','Publish document','',''),(26,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nimagepath Billed-fil\nimagelink Link på billed-fil\ncontent Text\ndocdate Date (yyyy-mm-dd)\nexpires Expiring'),(26,'P','Publish document','',''),(27,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nurl Url;choose=1\nimage Image;choose=1,doctype=Image\ndocdate Date (yyyy-mm-dd)\nexpires Expiring;clears_value=9999-01-01_00:00:00'),(27,'P','Publish document','',''),(28,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nsubjectword Emneord\nboldteaser Fremhævet teasertext;pix_size=536x130\ncontent Text\nstrait_picture Tilføj billede til listevisning (55x55 pixels)?\nwide_picture Tilføj billede til visning som topnyhed i højreboks?\nis_globalnews Er denne nyhed en global nyhed?;label_0=No, label_1=Yes, reverse_options=1\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nnews_time Nyhedstidspunkt til RSS feed\nexpires Forældelsestidspunkt'),(28,'2','Right boxes','','relnewslabel Overskrift over relaterede nyheder\nrightbox_news Boks til relaterede nyheder\ninsertcontact Indsæt kontaktboks?\ncontacttext Indhold i kontaktboks\nrightboxes Vælg højrebokse'),(28,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(28,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(28,'5','Tags','','tags Tags'),(28,'P','Publish document','',''),(29,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nurl URL\nprefixes Prefixes;rows=5\nhide_right Hide rightside;label_0=No, label_1=Yes, reverse_options=1\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt'),(29,'2','Right boxes','','rightboxes Vælg højrebokse'),(29,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(29,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(29,'P','Publish document','',''),(30,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nhtml_content HTML indhold;rows=28\ncontent Text;rows=14\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(30,'2','Bokse','','boxes1 Boksliste 1\nboxes2 Boksliste 2\nbanner1 Banner 1\nbanner2 Banner 2\nbanner3 Banner 3'),(30,'3','Right boxes','','rightboxes Vælg højrebokse'),(30,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(30,'5','Øvrige oplysninger','','extra_html_head_fp Ekstra HTML i head-tag på Forside;rows=4;no_msie_editor=1\nextra_html_body_fp Ekstra HTML i body-tag på Forside;rows=4;no_msie_editor=1'),(30,'P','Publish document','',''),(31,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nformtext Tekst over formular\naftersubmittext Tekst der vises efter udfyldning af formularen\nmailto Emailadresse data skal sendes til ved udfyldning (optional)\ncaptcha Kodefelt (captcha);label_0=No,label_1=Yes, reverse_options=1\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(31,'2','Formularfelter','','formdata Formularfelter'),(31,'3','Right boxes','Yadayada','rightboxes Vælg højrebokse'),(31,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(31,'5','Kvittering','Husk at formularen skal indeholde et felt af typen Email for at denne kvittering kan sendes.','email_subject Emnelinje i svarsmail\nemail_text Tekst i email;no_msie_editor=1'),(31,'6','Overvågning','','entries_for_advert Antal indtastninger for advisering\nentries_for_close Antal indtastninger for lukning\nclose_message Tekst, der vises, hvis formularen er lukket for indtastning'),(31,'P','Publish document','',''),(32,'1','Upload','The Upload-document if for all types of binary files besides\nimages (for instance PDF-files, Word-documents, Excel-files etc.)','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nmimetype MIME-type;distinct=1\nuploadfile Upload data\ndisable_cache Slå cache fra for dette dokument (både i browser og CMS)?;label_0=Nej,label_1=Ja,reverse_options=1\nauthor Sidens kontaktperson;distinct=1\ndocdate Date (YYYY-MM-DD)\nexpires Expiring'),(32,'2','Keywords','','keyword Vælg nøgleord for siden:\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.'),(32,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','docref Reference\ncontributors Contributors\nsource Source'),(32,'P','Publish document','',''),(34,'1','Text and options','','title Title\nshort_title Short title\nseq Order of succession;subtitle=Display-only, nopagenav=1\nmax_entries Number of entries in news box\nshow_date Show dates?;label_0=No, label_1=Yes, reverse_options=1\nshow_teaser Show teasers?;label_0=No, label_1=Yes, reverse_options=1\nmax_teaser Maximum length of teasers\ndocdate Date (yyyy-mm-dd)\nexpires Expiring'),(34,'P','Publish document','',''),(35,'1','Indhold','','title Title\nshort_title Short title\ndocdate Date (yyyy-mm-dd)\nexpires Expiring'),(35,'2','Right boxes','','rightboxes Vælg højrebokse'),(35,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(35,'P','Publish document','',''),(36,'1','Input alerts','Documents of this type generate an overview of expired edit alerts','title Title\nshort_title Short title\nseq Order of succession\ndocdate Date (YYYY-MM-DD)\ncontent Text;rows=4\nroot Root of scanned documents'),(36,'P','Publish document','Publish now?',''),(37,'1','Kurser','','title Title\nshort_title Short title\nseq Order of succession\nteaser Introduktion\nheader Overskrift\nafsnitsid Afsnits-id\nflag Forår/efterår;picklist=/admin/foraarefteraar\npagesize Sideinddeling\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(37,'2','Right boxes','','rightboxes Vælg højrebokse'),(37,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(37,'P','Publish document','',''),(38,'1','Info','','title Title\nshort_title Short title\nseq Order of succession\ntitle_pri title_pri\ntitle_sec title_sec\npublikationtype publikationtype\nforfatter forfatter\norganisation organisation\nsporg sporg\nabstrakt_pri abstrakt_pri\nabstrakt_sec abstrakt_sec\nudgiver udgiver\nudgivelesaar udgivelesaar\nantalsider antalsider\ntidsskriftstitel tidsskriftstitel\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(38,'2','Right boxes','','rightboxes Vælg højrebokse'),(38,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1\nrobotsmeta Hvordan skal søgemaskiner indeksere siden?;show_label=1'),(38,'P','Publish document','',''),(39,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(39,'2','Right boxes','','rightboxes Vælg højrebokse'),(39,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1\nrobotsmeta Hvordan skal søgemaskiner indeksere siden?;show_label=1'),(39,'P','Publish document','',''),(40,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(40,'2','Right boxes','','rightboxes Vælg højrebokse'),(40,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(40,'P','Publish document','',''),(41,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nstedkode organisation\nroot Medarbejderlink\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(41,'2','Right boxes','','rightboxes Vælg højrebokse'),(41,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(41,'P','Publish document','',''),(42,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nother_language_url Sti til parallel dansk/engelsk sprogversion\nteaser Teaser;rows=4\ncontent Text;rows=14\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm\norganisationlist Stedkode\nviptap VIP/TAP;label_vip=VIP, label_tap=TAP, label_begge=Alle\nbred Bredt format (med arbejdsområde);label_0=Nej, label_1=Ja\nuse_datatables_search Vis søgeværktøjer for tabellen\nsortering Sortering;label_efternavn=Efternavn,label_fornavn=Fornavn ,label_stilling=Titel, label_stillingoverskrifter=Titel (liste)\nfravalg Marker hvis fravalg ønskes i stedet for tilvalg af medarbejdere;label_0=Tilvalg,label_1=Fravalg'),(42,'2','Udvalg','','medarbejdere Medarbejderliste'),(42,'3','Right boxes','','rightboxes Vælg højrebokse'),(42,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(42,'5','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(42,'P','Publish document','',''),(43,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(43,'2','Right boxes','','rightboxes Vælg højrebokse'),(43,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(43,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(43,'P','Publish document','',''),(44,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(44,'2','Right boxes','','rightboxes Vælg højrebokse'),(44,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(44,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(44,'P','Publish document','',''),(45,'1','Tooltip','','title Title\ncontent Hjælpetekst\nparent  Hjælpetekst skal tages fra'),(45,'P','Publish document','',''),(46,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nintroduktion Introduktion\nformular Formular\nxml_url Url til xml-dokument (anvendes ikke, hvis Formular er udfyldt!)\nxslt XSL-transformation\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(46,'2','Right boxes','','rightboxes Vælg højrebokse'),(46,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(46,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(46,'P','Publish document','',''),(47,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nformtext Tekst over formular\naftersubmittext Tekst der vises efter udfyldning af formularen\noffentlig Skal sidens data udstilles offentligt som XML;label_0=Nej, label_1=Ja\noffentlig_oprettelse Tillad offentlig oprettelse af poster?;label_0=Nej, label_1=Ja\ntillad_excel Skal sidens data udstilles i Excel-format;label_0=Kun XML, label_1=XML og Excel\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(47,'2','Formularfelter','','formdata Formularfelter\najax_fields Tekstområde-felter hvis værdier skal hentes særskilt (adskilles med komma)\ninfored_sortorder Sorteringsfelt'),(47,'3','Right boxes','Yadayada','rightboxes Vælg højrebokse'),(47,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(47,'P','Publish document','',''),(48,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshow_proxied_title Brug originaldokumentets titel\nshort_title Short title\nseq Order of succession\ninternal_proxy_path Path'),(48,'2','Right boxes','','internal_proxy_overload_rightboxes Kopier højrebokse fra den anden side;label_0=Nej,label_1=Ja,otherfield=rightboxes\nrightboxes Vælg Højrebokse'),(48,'3','Tags','','internal_proxy_overload_tags Kopier tags fra den anden side;label_0=Nej,label_1=Ja,otherfield=tags\ntags Tags'),(48,'P','Publish document','',''),(49,'1','HTML and pictures','HTML-documents can contain HTML in the Text-fields. Using the \"Browse\"-button\nbelow each field a local HTML-file can be uploaded.','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nhtml_content HTML\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Date (YYYY-MM-DD)\nexpires Expiring'),(49,'2','Right boxes','','rightboxes Vælg højrebokse'),(49,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(49,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(49,'P','Publish document','',''),(50,'1','Indhold','','title Title;subtitle=Indhold, nopagenav=1\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nintroduction Introduktion;rows=14\npic_in_list Vis billede i liste:;subtitle=Indstillinger for visning på fuld side\nelems_in_box Vis følgende elementer:;subtitle=Indstillinger for boksvisning\ndetails_in_box Vis detaljer for arrangementer:\nteaser_in_box Teaser text length in box view\npagesize Sideinddeling\neventssource Select events source;label_subdocuments=Subdocuments only, label_allevents=All events, label_globalevents=Globale arrangementer, label_copy=Copy-events, subtitle=Kalenderkilde, nopagenav=1\neventspath Vælg alle arrangementer under denne placering;choose=1\nreverse_order Sorter med;label_0=Tidligeste arrangementer først,label_1=Seneste arrangementer først\nspecial_datelimit Vælg dato-interval:;subtitle=Datoudvælgelse, nopagenav=1\nstartdate Arrangementer fra\nenddate Arrangementer til\nshow_filt_and_cal Vis sorteringspanel og månedskalender\ntags_search Medtag KUN arrangementer, der har følgende tags (lad feltet være tomt, hvis du ikke bruger tags):;subtitle=Tags, no_fixed_tags=1, app_for_autocompletion=event_tags\nauthor Sidens kontaktperson;distinct=1, subtitle=Sidefod\nkontakt_navn Navn;nopagenav=1\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt'),(50,'2','Udvælgelse','','eventtypematch Medtag kun arrangmenter af typen;picklist=/admin/eventtype\nresultlimit Maks. antal arrangementer vist i udvælgelseslisten\nadjusttype Vælg metode;label_noadjust=No adjustment, label_include=Include selected events only, label_exclude=Exclude selected events\neventsadjustlist Markér'),(50,'3','Right boxes','','rightboxes Vælg højrebokse'),(50,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(50,'5','Øvrige oplysninger','','eventsboxmax Maks. antal arrangementer i højreboks'),(50,'P','Publish document','',''),(51,'1','Ekstern Højreboks','','title Title\nexternalrightbox_uri URI hvorfra data skal hentes.'),(51,'P','Publish document','',''),(52,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=10\ncontent Text;rows=20\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(52,'2','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(52,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(52,'P','Publish document','',''),(53,'1','Indhold','','title Title;subtitle=Indhold, nopagenav=1\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nintroduktion Introduktion;rows=4\nhtml_content HTML indhold;rows=28\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nshow_date_middle Vis dato;label_0=No,label_1=Yes,reverse_options=1,subtitle=Indstillinger for midterkolonne\nmiddle_details Vis billede i liste;label_nothumbnail=Vis ikke billede,label_narrowthumbnail=Vis billede\nmiddle_teasersize Længde på midterkolonne-teasere;label_0=Kort teaser-tekst (100 tegn), label_1=Lang teaser-tekst (220 tegn), label_2=Fuld teaser-tekst (ubegrænset), separate_lines=1, default_if_undef=0\nshow_date_box Vis dato;label_0=No,label_1=Yes,reverse_options=1,subtitle=Indstillinger for højreboks\nbox_details Vis detaljer for nyheder;label_noteaser=Vis ikke teaser,label_teaser=Vis teaser,label_teaserthumbnail=Vis teaser og billede\nbox_teasersize Længde på højreboks-teasere;label_0=Kort teaser-tekst (100 tegn), label_1=Lang teaser-tekst (220 tegn), label_2=Fuld teaser-tekst (ubegrænset), separate_lines=1, default_if_undef=2, default_if_newdocument=0\ntop_story Topnyhed\ntags_search Medtag KUN nyheder, der har følgende tags:;subtitle=Tags\nnewssource Select news source;label_subdocuments=Subdocuments only, label_globalnews=Global news, label_copy=Copy-news, label_allnews=All news, subtitle=Nyhedskilde, nopagenav=1\nnewspath Vælg alle nyheder under denne placering;choose=1\nsortnewsby Sorter nyheder efter;label_reverse=Nyeste nyheder først, label_normal=Ældste nyheder først\nstartdate News from this date\nenddate News to this date\nresultlimit Antal nyheder vist i udvælgelseslisten\npagesize Sideinddeling'),(53,'2','Udvælgelse','','adjusttype Vælg metode;label_noadjust=No adjustment, label_include=Include selected news only, label_exclude=Exclude selected news\nadjustlist Markér'),(53,'3','Right boxes','','rightboxes Vælg højrebokse'),(53,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(53,'5','Øvrige oplysninger','','newsboxmax Maks. antal nyheder i højreboks\nnewsmax Maks. antal nyheder i almindelige nyhedsoversigter'),(53,'P','Publish document','',''),(54,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=10\ncontent Text;rows=20\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(54,'2','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(54,'3','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(54,'P','Publish document','',''),(55,'1','TagCloud-konfiguration','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\ntagcloud_searchspace Hvor skal der ledes efter taggede dokumenter?;label_fromsubsite=Fra hele webstedet,label_fromfolders=Fra mapper valgt nedenfor,subtitle=<br />Søg efter taggede dokumenter på følgende placering\nfolder Mapper at trække fra\ntaglimit Medtag kun tags, der er brugt minimum x antal gange:;subtitle=<br />Udvælgelse af tags til visning i tag cloud\'en\nexclude_standard_tags Undlad at vise faste tags? (Se oversigt nedenfor);label_0=No, label_1=Yes, reverse_options=1\ntagcloud_filter_type Udvælg hvilke tags, der skal vises i tag cloud\'en;label_onlyselected=Vis kun de valgte tags, label_exclude=Undlad at vise de valgte tags, label_fromdocument=Vis kun tags fra det dokument tag cloud\'en er indsat på\ntaglist Valgte tags til filtrering\ndoctypes Hvilke dokumenttyper skal der søges efter?'),(56,'1','Indhold','','title            Title\nshort_title      Short title\nseq 		   Order of succession\nintroduction     Introduktionstekst;rows=4\nsearchspace      Hvilke dokumenter skal denne søgning søge i gennem?;label_fromsubsite=Fra subsite,label_fromfolders=Fra mapper valgt nedenfor\nfolder           Mapper at søge i\ndoctypes         Dokumenttyper der skal findes\ntagslist         Tags der skal søges på automatisk'),(56,'2','Right boxes','','rightboxes Vælg højrebokse'),(57,'1','Indhold','','title             Title\nshort_title       Short title\nseq               Order of succession\nintroduction      Introduktionstekst;rows=4\nbannerpath        I hvilke mapper skal vi søge efter banners?'),(58,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=10\ncontent Text;rows=20\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(58,'2','Right boxes','','rightboxes Vælg højrebokse'),(58,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(58,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(58,'P','Publish document','',''),(59,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=10\ncontent Text;rows=20\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(59,'2','Texts for booking interface','','cfimtext_usertype_desc Description above user type dropdown\ncfimtext_usertype_sund Description of SUND user type;subtitle=Description of user types\ncfimtext_usertype_ku_oevrige Description of KU øvrige user type\ncfimtext_usertype_va Description of Visiting Academia user type\ncfimtext_usertype_com Description of Commercial user type\ncfimtext_wrong_sund_account Text shown when inputting a malformed SUND account;subtitle=Error messages\ncfimtext_inactive_agreement Text shown when trying to book with an inactive agreement\ncfimtext_account_number Description of the account number field for KU and SUND users\ncfimtext_choose_va_above Text above choice of Visiting Academia agreement;subtitle=Texts when choosing agreements\ncfimtext_choose_va_below Text below choice of Visiting Academia agreement\ncfimtext_choose_com_above Text above choice of Commercial agreement\ncfimtext_choose_com_below Text below choice of Commercial agreement\ncfimtext_agreement_above Text above the create agreement form;subtitle=Texts on the create agreement page\ncfimtext_agreement_below Text below the create agreement form\ncfimtext_contact_person_info Text above \'Contact person information\'\ncfimtext_service_booking_date Text below \'Prefered delivery date\';subtitle=Service Booking'),(59,'3','Links','','cfimlink_rules_and_reg Link to \'Rules and Regulations\'\ncfimlink_agreement_signature Link to signature image for agreement mails\ncfimlink_std_va_agreement Link to standard VA agreement\ncfimlink_std_com_agreement Link to standard commercial agreement\ncfimlink_sund_account Link to document with explanation of what a SUND account is'),(59,'4','Right boxes','','rightboxes Vælg højrebokse'),(59,'5','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(59,'6','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(59,'P','Publish document','',''),(60,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=10\ncontent Text;rows=20\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(60,'2','Right boxes','','rightboxes Vælg højrebokse'),(60,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(60,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(60,'P','Publish document','',''),(61,'1','Indhold og peopleXS-definitioner','','title             Title\nshort_title       Short title\nseq               Order of succession\ncontent           Tekst\npxs_language      Sprog for portal\npxs_signature     Signatur (tekst på bunden af siden)'),(61,'2','Right boxes','','rightboxes Vælg højrebokse'),(61,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(61,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(61,'P','Publish document','',''),(62,'1','HTML and pictures','HTML-documents can contain HTML in the Text-fields. Using the \"Browse\"-button\nbelow each field a local HTML-file can be uploaded.','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nhtml_content HTML\nnews_source Sti til nyhedskilde\ncalendar_source Sti til kalenderkilde\nslider_source Sti til sliderkilde\nnumber_of_news Antal nyheder\nnumber_of_events Antal kalenderarrangementer\nbanner1 Banner 1\nbanner2 Banner 2\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Date (YYYY-MM-DD)\nexpires Expiring'),(62,'2','Right boxes','','rightboxes Vælg højrebokse'),(62,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(62,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(62,'P','Publish document','',''),(64,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=10\ncontent Text;rows=20\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(64,'2','Definition of content','','source_type Source type\nsource_locations Locations for other sources\nsource_single Another Encyclopedia document\ncontent_type Type of Content'),(64,'3','Defaults for content presentation','','default_category Default categorization\ndefault_sort Default sorting\ndefault_teaser_len Default number of characters from teaser to include in entry (0 means omit teaser)\ndefault_show_pict Show picture in entry\ndefault_page_size Pagesize on search-results'),(64,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(64,'5','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(64,'P','Publish document','',''),(65,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=10\ncontent Text;rows=20\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(65,'2','Tags and sorting','','tags Tags for the article;no_fixed_tags=1\nglobal_sort Global sort-key'),(65,'3','Right boxes','','rightboxes Vælg højrebokse'),(65,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(65,'5','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(65,'P','Publish document','',''),(66,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=10\ncontent Text;rows=20\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(66,'2','Texts for booking interface','','facstext_usertype_desc Description above user type dropdown\nfacstext_usertype_sund Description of SUND user type;subtitle=Description of user types\nfacstext_usertype_ku_oevrige Description of KU øvrige user type\nfacstext_usertype_va Description of Visiting Academia user type\nfacstext_usertype_com Description of Commercial user type\nfacstext_wrong_sund_account Text shown when inputting a malformed SUND account;subtitle=Error messages\nfacstext_inactive_agreement Text shown when trying to book with an inactive agreement\nfacstext_account_number Description of the account number field for KU and SUND users\nfacstext_choose_va_above Text above choice of Visiting Academia agreement;subtitle=Texts when choosing agreements\nfacstext_choose_va_below Text below choice of Visiting Academia agreement\nfacstext_choose_com_above Text above choice of Commercial agreement\nfacstext_choose_com_below Text below choice of Commercial agreement\nfacstext_agreement_above Text above the create agreement form;subtitle=Texts on the create agreement page\nfacstext_agreement_below Text below the create agreement form\nfacstext_contact_person_info Text above \'Contact person information\'\nfacstext_service_booking_date Text below \'Prefered delivery date\';subtitle=Service Booking\nfacstext_outside_hours_warning Text explaining limited access for users outside the 8-18 timespan;subtitle=Notification texts'),(66,'3','Links','','facslink_rules_and_reg Link to \'Rules and Regulations\'\nfacstext_rr_accept_text Text next to \'Accept rules and regulations\' checkbox\nfacstext_rr_read_text Text for the \'Read rules and regulations\' link\nfacslink_agreement_signature Link to signature image for agreement mails\nfacslink_std_va_agreement Link to standard VA agreement\nfacslink_std_com_agreement Link to standard commercial agreement\nfacslink_sund_account Link to document with explanation of what a SUND account is'),(66,'4','Right boxes','','rightboxes Vælg højrebokse'),(66,'5','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(66,'6','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(66,'P','Publish document','',''),(67,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(67,'2','Forsideindhold','','gridcontent Forsideindhold'),(67,'3','Right boxes','','rightboxes Vælg højrebokse'),(67,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(67,'5','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(67,'P','Publish document','',''),(68,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nnumber Nummer\nteaser Teaser;rows=4\ncontent Text;rows=8\npdfdoc PDF Dokument\notherpages Relaterede videnblade\nrightboxtext Se også;rows=8\nauthorprofiles Forfattere til videnblad;distinct=1, uricomp=/shared/geonatmapper, method=author\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\nkontakt_adresse Adresse;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt'),(68,'2','Right boxes','','rightboxes Vælg højrebokse'),(68,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(68,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(68,'P','Publish document','',''),(69,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\ncontent Text;rows=8\nknpagesrctype Kildetype;subtitle=Opsamling af videnblade til listen\ncmssources Videnblade opsamles fra listen af CMS stier\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\nkontakt_adresse Adresse;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\npagesize Sideinddeling'),(69,'2','Højreboks brug','','elemsinbox Antal elementer i boks'),(69,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(69,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(69,'P','Publish document','',''),(70,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nhtml_content HTML indhold;rows=28\ncontent Text;rows=14\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\nkontakt_adresse Adresse;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt'),(70,'2','Bokse','','boxes1 Boksliste 1\nboxes2 Boksliste 2\nbanner1 Banner 1\nbanner2 Banner 2\nbanner3 Banner 3'),(70,'3','Right boxes','','rightboxes Vælg højrebokse'),(70,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(70,'5','Øvrige oplysninger','','extra_html_head_fp Ekstra HTML i head-tag på Forside;rows=4;no_msie_editor=1\nextra_html_body_fp Ekstra HTML i body-tag på Forside;rows=4;no_msie_editor=1'),(70,'P','Publish document','',''),(71,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\ncontent Spørgsmål;rows=8\nanswertext Svar;rows=8\nsubjecttext Emnetekst\notherpages Relaterede videnblade\nauthorprofiles Forfattere;distinct=1, uricomp=/shared/geonatmapper, method=author\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\nkontakt_adresse Adresse;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt'),(71,'2','Right boxes','','rightboxes Vælg højrebokse'),(71,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(71,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(71,'P','Publish document','',''),(72,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\ncontent Text;rows=8\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\nkontakt_adresse Adresse;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\npagesize Sideinddeling'),(72,'2','Højreboks brug','','elemsinbox Antal elementer i boks'),(72,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(72,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(72,'P','Publish document','',''),(73,'1','Indhold','','title Navn\nshort_title Navn (kort)\nseq Order of succession\nemail Email\nprofileurl Link til forfatterprofil\nfaceimage Billede'),(75,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\nkontakt_adresse Adresse;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt'),(75,'2','Newsletters','','newsletters Newsletters'),(75,'3','Info-tekster','','textemailinfo Info-tekst før email-felt\ntextsubscremailinfo Info-tekst for email-bekræftigelse\ntextsubscrbefore Info-tekst for bekræftigelse-hovede\ntextacknbefore Info-tekst for hovedet på kvitteringssiden\ntextacknafter Info-tekst for foden på kvitteringssiden\ntextacknnoaction Info-tekst for \"Intet foretaget\" bekræftigelse\ntextaftersubmit Besked der vises når en formular er modtaget\ntextsubjemail Subject-linie i bekræftigelses-email\ntextheademail Header-tekst i bekræftigelses-email\ntextfootemail Fod-tekst i bekræftigelses-email'),(75,'4','Right boxes','','rightboxes Vælg højrebokse'),(75,'5','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(75,'6','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(75,'P','Publish document','',''),(76,'1','Indhold','','title Kursustitel\nshort_title Kort titel\nseq Order of succession\ncourselabel Mærkat;mode=labels, selectionmode=single, displaymode=boxes, resolverfield=html_content, resolver=util/courseresolver\nbannerpic Billede (197x197px)\nteaser Teaser/resume;rows=4\neventinfo Beskrivelse af kurset\npriceinfo Pris\nduration Varighed\nnrofparticipants Deltagerantal\ncontacttext Kontakt\nbranchcode Fagkode\nsubjectcats Emnekategorier;mode=subjectamu, selectionmode=multiple, resolverfield=html_content, resolver=util/courseresolver\ndocdate Oprettelsesdato (dd-mm-åååå)\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\nkontakt_adresse Adresse;showinheritedvalue=1'),(76,'2','Right boxes','','rightboxes Vælg højrebokse'),(76,'P','Publish document','',''),(77,'1','Indhold','','title Kursustitel\nshort_title Kort titel\nseq Order of succession\ncourselabel Mærkat;mode=labels, selectionmode=single, displaymode=boxes, resolverfield=html_content, resolver=util/courseresolver\nbannerpic Billede (197x197px)\nteaser Teaser/Resume;rows=4\neventinfo Beskrivelse af kurset\ncoursedate Startdato\neventtime Startklokkeslæt\nenddate Slutdato\nendtime Slutklokkeslæt\nlocalitypath Kursuslokalitet;mode=localities, resolver=util/courseresolver\npriceinfo Pris\nsignupdue Tilmeldingsfrist\nsubscriptionmode Administrér tilmelding\nsubscriptionform Sti til tilmeldingsformular\ninvitepdf PDF for Invitation/program\nduration Varighed\nnrofparticipants Deltagerantal\nprofresponsable Faglig ansvarlig\ncontacttext Kontakt\nsignupinfo Tilmeldingsoplysninger\nsubjectcats Emnekategorier;mode=subjectopen, selectionmode=multiple, displaymode=boxes, resolverfield=html_content, resolver=util/courseresolver\nparticipantsshow Muligt at se deltagerliste\ndocdate Oprettelsesdato (dd-mm-åååå)\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\nkontakt_adresse Adresse;showinheritedvalue=1'),(77,'2','Right boxes','','rightboxes Vælg højrebokse'),(77,'P','Publish document','',''),(78,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\ncontent Text;rows=8\ncoursetype Vælg kursustype\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\nkontakt_adresse Adresse;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\npagesize Sideinddeling'),(78,'2','Højreboks brug','','elemsinbox Antal elementer i boks'),(78,'3','Right boxes','','rightboxes Vælg højrebokse'),(78,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(78,'5','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(78,'P','Publish document','',''),(79,'1','Indhold','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nformtext Tekst over formular\naftersubmittext Tekst der vises efter udfyldning af formularen\nmailto Emailadresse data skal sendes til ved udfyldning (optional)\ncaptcha Kodefelt (captcha);label_0=No,label_1=Yes, reverse_options=1\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(79,'2','Formular felter og gentagede områder','','formdatarepeat Formular felter og gentagede områder'),(79,'3','Right boxes','Yadayada','rightboxes Vælg højrebokse'),(79,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(79,'5','Kvittering','Husk at formularen skal indeholde et felt af typen Email for at denne kvittering kan sendes.','email_subject Emnelinje i svarsmail\nemail_text Tekst i email;no_msie_editor=1'),(79,'6','Overvågning','','entries_for_advert Antal indtastninger for advisering\nentries_for_close Antal indtastninger for lukning\nclose_message Tekst, der vises, hvis formularen er lukket for indtastning'),(79,'P','Publish document','',''),(80,'1','Indhold','','title Title\nshort_title Short title\nteaser Teaser;rows=4\ncontent Text;rows=14\ndocdate Date (YYYY-MM-DD)\nexpires Expiring'),(80,'P','Publish document','',''),(81,'1','User help','','title Title\nshort_title Short title\nauthor Sidens kontaktperson;distinct=1\nscriptname The filename of the script\nexec_method Default script-execution method\nsynopsis Script Synopsis;rows=4\ndescription Script Description;rows=14\ndocdate Date (YYYY-MM-DD)\nexpires Expiring'),(81,'2','Parameters','','paramdata Parameter-data;scriptmode=1'),(81,'P','Publish document','',''),(82,'1','Indhold','','title Folder name;empty_short_title=1\nseq Order of succession\ncontent Text;rows=14\npagesize Number of images on one page\nauthor Sidens kontaktperson;distinct=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt'),(82,'P','Publish document','',''),(84,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nother_language_url Sti til parallel dansk/engelsk sprogversion\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(84,'2','Right boxes','','rightboxes Vælg højrebokse'),(84,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(84,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(84,'P','Publish document','',''),(85,'1','Indhold og peopleXS-definitioner','','title                 Titel\npxs_language          Hvilket sprog?\nseq                   Order of succession\ncontent               Tekst\npxs_search_label      Label til søgefelt'),(85,'2','Filtrering','','pxs_tap_grp           TAP-stilling\npxs_tap_management    Ledelse\npxs_tap_student       Studenterjob\npxs_tap_intern        Elever og praktikanter\npxs_tap_lab_clinic    Laboratorie, klinisk og forskningsunderstøttende\npxs_tap_admin_it      Administration, IT og service\npxs_vip_academic      Videnskabelige stillinger\npxs_vip_tenure_track  Tenure-track stillinger\npxs_vip_phd           Ph.d.-stillinger\npxs_vip_teaching      Undervisningsstillinger'),(85,'3','Right boxes','','rightboxes Vælg højrebokse'),(85,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(85,'5','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(85,'P','Publish document','',''),(86,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nfaggruppe_uuid Faggruppe UUID\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(86,'2','Kontaktperson-boks','','faggruppe_kontakt_navn Navn på kontaktperson\nfaggruppe_kontakt_adresse Adresse på kontaktperson\nfaggruppe_kontakt_telefon Telefonnummer på kontaktperson\nfaggruppe_kontakt_email E-mail adresse på kontaktperson\nfaggruppe_kontakt_billede Eventuelt billede af kontaktperson'),(86,'3','Right boxes','','rightboxes Vælg højrebokse'),(86,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(86,'5','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(86,'P','Publish document','',''),(88,'1','Indhold','','title Title\nshort_title Short title\nteaser Teaser;rows=4\nhtml Indhold (inklusive DOCTYPE og html tags)'),(90,'1','Indhold','','title Title\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(90,'2','Forsideindhold','','gridcontent Forsideindhold;columns=4'),(90,'3','Right boxes','','rightboxes Vælg højrebokse'),(90,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(90,'5','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(90,'P','Publish document','',''),(93,'1','Generel information','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(93,'2','Indhold','','gridcontent Indhold;columns=standard_content'),(93,'3','Indhold til højrekolonne','','gridcontent_right Højreboksindhold;columns=standard_rightbox'),(93,'4','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(93,'5','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(93,'P','Publish document','',''),(94,'1','Generel information','','title Title\nshow_title Brug titel som overskrift på siden (anbefales)\nshort_title Short title\nseq Order of succession\nteaser Teaser;rows=4\nauthor Sidens kontaktperson;distinct=1\nkontakt_navn Navn;subtitle=Sidefod\nkontakt_email Email\nkontakt_tlf Telefon\nkontakt_adresse Adresse;showinheritedvalue=1\nenhed Enhed;showinheritedvalue=1\nenhed_url Adresse til enhedens hjemmeside;showinheritedvalue=1\ndocdate Oprettelsesdato (dd-mm-åååå)\nexpires Forældelsestidspunkt\nupdatealerttime Tidspunkt for opdateringsalarm\nupdatealertuser Bruger opdateringsalarm skal sendes til\nupdatealertsent Bruges internt som flag til opdateringsalarm'),(94,'2','Indhold','','flexboxcontent Indhold'),(94,'3','Meta','På alle websider indsætter CMS\'et følgende nøgleord automatisk: Københavns Universitet, Det Humanistiske Fakultet, Humanistisk Fakultet, Humaniora og enhedens eller uddannelsens navn. Men du kan også selv indsætte nogle mere specifikke nøgleord ved at vælge fra listerne herunder eller skrive dem i tekstfeltet.','keyword Vælg nøgleord for siden:;subtitle=Nøgleord, nopagenav=1\nfree_keywords Frie nøgleord: Her kan du skrive nøgleord, der ikke er i listerne ovenfor. Hvis du skriver flere ord eller udtryk, skal der komma imellem.\ndocref Reference;subtitle=Metadata, nopagenav=1\ncontributors Bidragydere\nsource Kilde\nrobotsmeta Besked til søgemaskiner'),(94,'4','Øvrige oplysninger','','enable_comments Kommentarer;label_0=No, label_1=Yes, reverse_options=1\nextra_html_head_thisonly Ekstra HTML i head-tag som ikke nedarves;rows=4;no_msie_editor=1\nextra_html_body_thisonly Ekstra HTML i body-tag som ikke nedarves;rows=4;no_msie_editor=1'),(94,'P','Publish document','','');
/*!40000 ALTER TABLE `editpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `sortorder` int(4) unsigned NOT NULL,
  `brandinglogo` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `css` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `new_user_email_template` text COLLATE utf8_danish_ci DEFAULT NULL,
  `expired_user_email_template` text COLLATE utf8_danish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES (1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test\r\nhattehat','Og mere test\r\nog hat'),(2,'Det Juridiske Fakultet',20,'/grafik/topgrafik/jur.gif','/css/units/jura.css','/grafik/images/favicons/favicon_jur.ico',NULL,NULL),(3,'Det Natur- og Biovidenskabelige Fakultet',30,'/grafik/topgrafik/nat.gif','/css/units/nat.css','/grafik/images/favicons/favicon_nat.ico',NULL,NULL),(4,'Det Samfundsvidenskabelige Fakultet',40,'/grafik/topgrafik/samf.gif','/css/units/samf.css','/grafik/images/favicons/favicon_samf.ico',NULL,NULL),(5,'Det Sundhedsvidenskabelige Fakultet',50,'/grafik/topgrafik/sund.gif','/css/units/sund.css','/grafik/images/favicons/favicon_sund.ico',NULL,NULL),(6,'Det Teologiske Fakultet',60,'/grafik/topgrafik/teo.gif','/css/units/teo.css','/grafik/images/favicons/favicon_teo.ico',NULL,NULL),(7,'Fællesadministrationen',70,'/grafik/topgrafik/faelles.gif','/css/units/ku-faelles.css','/grafik/images/favicons/favicon_fa.ico',NULL,NULL);
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER post_faculties_update AFTER UPDATE ON faculties
    FOR EACH ROW BEGIN
        DECLARE fac_hist_id int(10) unsigned;
        INSERT INTO faculties_history
            SELECT
                NULL, faculties.*, NOW(), COALESCE(@OBVIUS_CURRENT_USER, '')
            FROM
                faculties
            WHERE
                id = NEW.id;
        SET fac_hist_id = LAST_INSERT_ID();

        INSERT INTO faculty_webteams_history
            SELECT
                NULL, orig.id, fac_hist_id, orig.name
            FROM
                faculty_webteams orig
            WHERE
                orig.faculty_id = NEW.id;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `faculties_history`
--

DROP TABLE IF EXISTS `faculties_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculties_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `sortorder` int(4) unsigned NOT NULL,
  `brandinglogo` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `css` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `new_user_email_template` text COLLATE utf8_danish_ci DEFAULT NULL,
  `expired_user_email_template` text COLLATE utf8_danish_ci DEFAULT NULL,
  `updated` datetime DEFAULT current_timestamp(),
  `by_user` varchar(255) COLLATE utf8_danish_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `faculty_orig_id_ref` (`original_id`),
  CONSTRAINT `faculty_orig_id_ref` FOREIGN KEY (`original_id`) REFERENCES `faculties` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties_history`
--

LOCK TABLES `faculties_history` WRITE;
/*!40000 ALTER TABLE `faculties_history` DISABLE KEYS */;
INSERT INTO `faculties_history` VALUES (1,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico',NULL,NULL,'2016-07-06 14:22:10',''),(2,2,'Det Juridiske Fakultet',20,'/grafik/topgrafik/jur.gif','/css/units/jura.css','/grafik/images/favicons/favicon_jur.ico',NULL,NULL,'2016-07-06 14:22:10',''),(3,3,'Det Natur- og Biovidenskabelige Fakultet',30,'/grafik/topgrafik/nat.gif','/css/units/nat.css','/grafik/images/favicons/favicon_nat.ico',NULL,NULL,'2016-07-06 14:22:10',''),(4,4,'Det Samfundsvidenskabelige Fakultet',40,'/grafik/topgrafik/samf.gif','/css/units/samf.css','/grafik/images/favicons/favicon_samf.ico',NULL,NULL,'2016-07-06 14:22:10',''),(5,5,'Det Sundhedsvidenskabelige Fakultet',50,'/grafik/topgrafik/sund.gif','/css/units/sund.css','/grafik/images/favicons/favicon_sund.ico',NULL,NULL,'2016-07-06 14:22:10',''),(6,6,'Det Teologiske Fakultet',60,'/grafik/topgrafik/teo.gif','/css/units/teo.css','/grafik/images/favicons/favicon_teo.ico',NULL,NULL,'2016-07-06 14:22:10',''),(7,7,'Fællesadministrationen',70,'/grafik/topgrafik/faelles.gif','/css/units/ku-faelles.css','/grafik/images/favicons/favicon_fa.ico',NULL,NULL,'2016-07-06 14:22:10',''),(8,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico',NULL,NULL,'2016-07-06 14:23:08',''),(9,2,'Det Juridiske Fakultet',20,'/grafik/topgrafik/jur.gif','/css/units/jura.css','/grafik/images/favicons/favicon_jur.ico',NULL,NULL,'2016-07-06 14:23:08',''),(10,3,'Det Natur- og Biovidenskabelige Fakultet',30,'/grafik/topgrafik/nat.gif','/css/units/nat.css','/grafik/images/favicons/favicon_nat.ico',NULL,NULL,'2016-07-06 14:23:08',''),(11,4,'Det Samfundsvidenskabelige Fakultet',40,'/grafik/topgrafik/samf.gif','/css/units/samf.css','/grafik/images/favicons/favicon_samf.ico',NULL,NULL,'2016-07-06 14:23:08',''),(12,5,'Det Sundhedsvidenskabelige Fakultet',50,'/grafik/topgrafik/sund.gif','/css/units/sund.css','/grafik/images/favicons/favicon_sund.ico',NULL,NULL,'2016-07-06 14:23:08',''),(13,6,'Det Teologiske Fakultet',60,'/grafik/topgrafik/teo.gif','/css/units/teo.css','/grafik/images/favicons/favicon_teo.ico',NULL,NULL,'2016-07-06 14:23:08',''),(14,7,'Fællesadministrationen',70,'/grafik/topgrafik/faelles.gif','/css/units/ku-faelles.css','/grafik/images/favicons/favicon_fa.ico',NULL,NULL,'2016-07-06 14:23:08',''),(15,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico',NULL,NULL,'2016-07-06 14:23:26',''),(16,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico',NULL,NULL,'2016-07-06 14:23:27',''),(17,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test','Og mere test','2018-04-17 15:12:04',''),(18,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test','Og mere test','2018-04-17 15:19:45',''),(19,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test','Og mere test','2018-04-17 15:20:23',''),(20,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test','Og mere test\r\nog hat','2018-04-17 15:20:47',''),(21,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test','Og mere test\r\nog hat','2018-04-17 15:26:18',''),(22,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test','Og mere test\r\nog hat','2018-04-17 15:29:16',''),(23,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test','Og mere test\r\nog hat','2018-04-17 15:37:49',''),(24,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test','Og mere test\r\nog hat','2018-04-17 15:38:52',''),(25,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test\r\nhattehat','Og mere test\r\nog hat','2018-04-17 15:46:17',''),(26,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test\r\nhattehat','Og mere test\r\nog hat','2018-04-18 09:29:01',''),(27,1,'Det Humanistiske Fakultet',10,'/grafik/topgrafik/hum.gif','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','Test test test\r\nhattehat','Og mere test\r\nog hat','2018-04-18 09:34:11','jubk');
/*!40000 ALTER TABLE `faculties_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_webteams`
--

DROP TABLE IF EXISTS `faculty_webteams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty_webteams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faculty_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_webteams_search` (`faculty_id`,`name`),
  CONSTRAINT `faculty_webteams_faculty_ref` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_webteams`
--

LOCK TABLES `faculty_webteams` WRITE;
/*!40000 ALTER TABLE `faculty_webteams` DISABLE KEYS */;
INSERT INTO `faculty_webteams` VALUES (7,1,'a'),(11,1,'man må ikke æde en hugorm'),(12,1,'ÆØå og æøå'),(8,1,'aa'),(9,1,'aab'),(10,1,'aabæøå'),(16,2,'Hest'),(20,3,'Hephjey'),(13,3,'Test test'),(22,4,'Ny, hep hey'),(21,4,'testtest'),(19,5,'Ny værdi'),(18,5,'Sund nr 1'),(24,7,'Magenta'),(23,7,'man må ikke æde en hugorm'),(17,7,'Og min hat');
/*!40000 ALTER TABLE `faculty_webteams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_webteams_history`
--

DROP TABLE IF EXISTS `faculty_webteams_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty_webteams_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_id` int(10) unsigned DEFAULT NULL,
  `faculties_history_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_webteams_search` (`faculties_history_id`,`name`),
  KEY `faculty_webteam_orig_id_ref` (`original_id`),
  CONSTRAINT `faculty_webteam_faculty_history_ref` FOREIGN KEY (`faculties_history_id`) REFERENCES `faculties_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `faculty_webteam_orig_id_ref` FOREIGN KEY (`original_id`) REFERENCES `faculty_webteams` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_webteams_history`
--

LOCK TABLES `faculty_webteams_history` WRITE;
/*!40000 ALTER TABLE `faculty_webteams_history` DISABLE KEYS */;
INSERT INTO `faculty_webteams_history` VALUES (1,7,1,'a'),(2,11,1,'man må ikke æde en hugorm'),(3,12,1,'ÆØå og æøå'),(4,8,1,'aa'),(5,9,1,'aab'),(6,10,1,'aabæøå'),(8,16,2,'Hest'),(9,20,3,'Hephjey'),(10,13,3,'Test test'),(12,22,4,'Ny, hep hey'),(13,21,4,'testtest'),(15,19,5,'Ny værdi'),(16,18,5,'Sund nr 1'),(18,23,7,'man må ikke æde en hugorm'),(19,17,7,'Og min hat'),(21,7,8,'a'),(22,11,8,'man må ikke æde en hugorm'),(23,12,8,'ÆØå og æøå'),(24,8,8,'aa'),(25,9,8,'aab'),(26,10,8,'aabæøå'),(28,16,9,'Hest'),(29,20,10,'Hephjey'),(30,13,10,'Test test'),(32,22,11,'Ny, hep hey'),(33,21,11,'testtest'),(35,19,12,'Ny værdi'),(36,18,12,'Sund nr 1'),(38,23,14,'man må ikke æde en hugorm'),(39,17,14,'Og min hat'),(41,7,15,'a'),(42,11,15,'man må ikke æde en hugorm'),(43,12,15,'ÆØå og æøå'),(44,8,15,'aa'),(45,9,15,'aab'),(46,10,15,'aabæøå'),(48,7,16,'a'),(49,11,16,'man må ikke æde en hugorm'),(50,12,16,'ÆØå og æøå'),(51,8,16,'aa'),(52,9,16,'aab'),(53,10,16,'aabæøå'),(54,7,17,'a'),(55,11,17,'man må ikke æde en hugorm'),(56,12,17,'ÆØå og æøå'),(57,8,17,'aa'),(58,9,17,'aab'),(59,10,17,'aabæøå'),(61,7,18,'a'),(62,11,18,'man må ikke æde en hugorm'),(63,12,18,'ÆØå og æøå'),(64,8,18,'aa'),(65,9,18,'aab'),(66,10,18,'aabæøå'),(68,7,19,'a'),(69,11,19,'man må ikke æde en hugorm'),(70,12,19,'ÆØå og æøå'),(71,8,19,'aa'),(72,9,19,'aab'),(73,10,19,'aabæøå'),(75,7,20,'a'),(76,11,20,'man må ikke æde en hugorm'),(77,12,20,'ÆØå og æøå'),(78,8,20,'aa'),(79,9,20,'aab'),(80,10,20,'aabæøå'),(82,7,21,'a'),(83,11,21,'man må ikke æde en hugorm'),(84,12,21,'ÆØå og æøå'),(85,8,21,'aa'),(86,9,21,'aab'),(87,10,21,'aabæøå'),(89,7,22,'a'),(90,11,22,'man må ikke æde en hugorm'),(91,12,22,'ÆØå og æøå'),(92,8,22,'aa'),(93,9,22,'aab'),(94,10,22,'aabæøå'),(96,7,23,'a'),(97,11,23,'man må ikke æde en hugorm'),(98,12,23,'ÆØå og æøå'),(99,8,23,'aa'),(100,9,23,'aab'),(101,10,23,'aabæøå'),(103,7,24,'a'),(104,11,24,'man må ikke æde en hugorm'),(105,12,24,'ÆØå og æøå'),(106,8,24,'aa'),(107,9,24,'aab'),(108,10,24,'aabæøå'),(110,7,25,'a'),(111,11,25,'man må ikke æde en hugorm'),(112,12,25,'ÆØå og æøå'),(113,8,25,'aa'),(114,9,25,'aab'),(115,10,25,'aabæøå'),(117,7,26,'a'),(118,11,26,'man må ikke æde en hugorm'),(119,12,26,'ÆØå og æøå'),(120,8,26,'aa'),(121,9,26,'aab'),(122,10,26,'aabæøå'),(124,7,27,'a'),(125,11,27,'man må ikke æde en hugorm'),(126,12,27,'ÆØå og æøå'),(127,8,27,'aa'),(128,9,27,'aab'),(129,10,27,'aabæøå');
/*!40000 ALTER TABLE `faculty_webteams_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldspecs`
--

DROP TABLE IF EXISTS `fieldspecs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldspecs` (
  `doctypeid` int(8) unsigned NOT NULL,
  `name` varchar(127) NOT NULL DEFAULT '',
  `type` int(8) unsigned NOT NULL,
  `repeatable` tinyint(1) unsigned NOT NULL,
  `optional` tinyint(1) unsigned NOT NULL,
  `searchable` tinyint(1) unsigned NOT NULL,
  `sortable` tinyint(1) unsigned NOT NULL,
  `publish` tinyint(1) unsigned NOT NULL,
  `threshold` tinyint(1) unsigned NOT NULL DEFAULT 128,
  `default_value` text DEFAULT NULL,
  `extra` text DEFAULT NULL,
  PRIMARY KEY (`doctypeid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldspecs`
--

LOCK TABLES `fieldspecs` WRITE;
/*!40000 ALTER TABLE `fieldspecs` DISABLE KEYS */;
INSERT INTO `fieldspecs` VALUES (1,'docdate',5,0,0,1,1,0,0,NULL,NULL),(1,'enable_comments',15,0,0,1,1,0,128,'0',NULL),(1,'enhed',52,0,0,1,1,0,128,NULL,NULL),(1,'enhed_url',52,0,0,1,1,0,128,NULL,NULL),(1,'expires',6,0,0,1,1,0,0,'9999-01-01 00:00:00',NULL),(1,'extra_html_body_thisonly',50,0,0,1,1,0,64,NULL,NULL),(1,'extra_html_head_thisonly',50,0,0,1,1,0,64,NULL,NULL),(1,'farvevalg',46,0,0,1,1,0,128,NULL,NULL),(1,'free_keywords',9,0,0,1,1,0,128,NULL,NULL),(1,'in_subscription',15,0,0,1,1,1,128,'0',NULL),(1,'keyword',57,1,1,1,1,0,128,NULL,NULL),(1,'kontakt_adresse',52,0,0,1,1,0,128,NULL,NULL),(1,'kontakt_email',52,0,1,1,1,0,128,NULL,NULL),(1,'kontakt_navn',52,0,1,1,1,0,128,NULL,NULL),(1,'kontakt_tlf',52,0,1,1,1,0,128,NULL,NULL),(1,'mimetype',9,0,0,1,1,0,0,NULL,NULL),(1,'pagesize',31,0,1,0,0,0,128,NULL,NULL),(1,'published',6,0,0,1,1,1,128,NULL,NULL),(1,'publish_on',29,0,0,1,1,1,128,'0000-00-00 00:00:00',NULL),(1,'rightboxes',39,1,1,1,1,0,128,NULL,NULL),(1,'robotsmeta',47,0,0,1,1,0,128,'index,follow',NULL),(1,'sec',18,0,1,1,1,1,128,'0',NULL),(1,'seq',36,0,0,0,1,0,0,'10.00',NULL),(1,'short_title',9,0,0,1,1,0,0,NULL,NULL),(1,'show_date',15,0,0,0,0,0,128,'0',NULL),(1,'show_news',15,0,0,0,0,0,128,'1',NULL),(1,'show_subdocs',15,0,0,0,0,0,128,'0',NULL),(1,'show_subdoc_date',15,0,0,0,0,0,128,'0',NULL),(1,'show_subdoc_teaser',15,0,0,0,0,0,128,'0',NULL),(1,'show_teaser',15,0,0,0,0,0,128,'1',NULL),(1,'sortorder',20,0,0,1,1,0,128,'+seq,+title',NULL),(1,'subscribeable',26,0,0,1,0,0,128,'none',NULL),(1,'title',8,0,0,1,1,0,0,NULL,NULL),(1,'updatealertsent',60,0,1,1,1,0,128,'0',NULL),(1,'updatealerttime',6,0,1,1,1,0,128,'0000-00-00 00:00:00',NULL),(1,'updatealertuser',53,0,1,1,1,0,128,NULL,NULL),(2,'author',49,0,0,1,1,0,64,NULL,NULL),(2,'content',10,0,0,1,1,0,128,NULL,NULL),(2,'contributors',9,0,0,1,1,0,64,NULL,NULL),(2,'docref',9,0,0,1,1,0,64,NULL,NULL),(2,'picture',22,0,1,1,1,0,128,NULL,NULL),(2,'show_title',114,0,0,0,0,0,128,'1',NULL),(2,'source',9,0,0,1,1,0,64,NULL,NULL),(2,'teaser',10,0,0,1,0,0,64,NULL,NULL),(3,'form',11,0,0,1,1,0,128,NULL,NULL),(3,'new_window',15,0,0,0,0,0,128,'0',NULL),(3,'search_expression',50,0,0,0,0,0,128,NULL,NULL),(3,'show_new_titles',15,0,0,0,0,0,128,'0',NULL),(3,'show_searchdoc_date',15,0,0,0,0,0,128,'0',NULL),(3,'show_searchdoc_teaser',15,0,0,0,0,0,128,'0',NULL),(3,'show_searchdoc_url',15,0,0,0,0,0,128,'0',NULL),(3,'show_teasers',15,0,0,0,0,0,128,'0',NULL),(3,'show_urls',15,0,0,0,0,0,128,'0',NULL),(4,'show_new_titles',15,0,0,0,0,0,128,'0',NULL),(5,'base',22,0,0,0,0,0,128,NULL,NULL),(5,'introduction',10,0,0,1,1,0,64,NULL,NULL),(5,'search_type',23,0,0,0,0,0,128,'keyword',NULL),(5,'show_new_titles',15,0,0,0,0,0,128,'0',NULL),(6,'author',49,0,0,1,1,0,64,NULL,NULL),(6,'contributors',9,0,0,1,1,0,64,NULL,NULL),(6,'docref',9,0,0,1,1,0,64,NULL,NULL),(6,'html_content',11,0,0,1,1,0,128,NULL,NULL),(6,'source',9,0,0,1,1,0,64,NULL,NULL),(6,'teaser',10,0,0,1,0,0,64,NULL,NULL),(7,'author',49,0,0,1,1,0,64,NULL,NULL),(7,'contentdisposition',35,0,0,1,1,0,128,'attachment',NULL),(7,'contributors',9,0,0,1,1,0,64,NULL,NULL),(7,'docref',9,0,0,1,1,0,64,NULL,NULL),(7,'seq',36,0,0,0,1,0,0,'-10.00',NULL),(7,'size',17,0,0,0,0,0,192,NULL,NULL),(7,'source',9,0,0,1,1,0,64,NULL,NULL),(7,'teaser',10,0,0,1,0,0,64,NULL,NULL),(7,'uploaddata',19,0,0,0,0,0,192,NULL,NULL),(8,'mailmsg',9,0,0,0,0,0,128,NULL,NULL),(8,'mailto',65,0,0,0,0,0,128,NULL,NULL),(8,'requireallanswers',15,0,0,0,0,0,128,NULL,NULL),(9,'answer',10,1,0,0,0,0,128,NULL,NULL),(9,'correctanswer',10,0,0,0,0,0,128,NULL,NULL),(9,'question',10,0,0,0,0,0,128,NULL,NULL),(10,'bar_width',16,0,0,0,0,0,128,'65',NULL),(10,'vote_option',9,1,0,0,0,0,128,NULL,NULL),(11,'mailmsg',9,0,0,0,0,0,128,NULL,NULL),(11,'mailto',65,0,0,0,0,0,128,NULL,NULL),(12,'doctype',9,0,0,1,1,0,128,NULL,NULL),(12,'email',24,0,1,1,1,0,128,NULL,NULL),(12,'form',11,0,0,1,0,0,128,NULL,NULL),(12,'language',13,0,0,1,1,0,128,'da',NULL),(12,'name_prefix',9,0,0,1,1,0,128,NULL,NULL),(12,'publish_mode',28,0,0,1,1,0,128,'moderator',NULL),(12,'subscribe_include',15,0,0,1,1,0,128,'0',NULL),(12,'successtext',10,0,1,1,0,0,128,NULL,NULL),(12,'where',22,0,0,1,1,0,128,NULL,NULL),(13,'levels',33,0,0,0,0,0,128,'2',NULL),(13,'root',22,0,1,0,0,0,128,NULL,NULL),(13,'show_expired',15,0,0,0,0,0,128,'0',NULL),(13,'show_hidden',15,0,0,0,0,0,128,'0',NULL),(13,'show_unpublished',15,0,0,0,0,0,128,'0',NULL),(14,'mailfrom',24,0,0,0,0,0,128,NULL,NULL),(14,'passwdmsg',9,0,0,0,0,0,128,'mail/subscribe_passwd',NULL),(14,'show_teaser',15,0,0,0,0,0,128,'0',NULL),(14,'show_title',114,0,0,0,0,0,128,'0',NULL),(15,'align',1,0,0,0,0,0,0,'center',NULL),(15,'data',4,0,0,0,0,0,192,NULL,NULL),(15,'docdate',5,0,0,1,1,0,0,NULL,NULL),(15,'expires',6,0,0,1,1,0,0,'9999-01-01 00:00:00',NULL),(15,'free_keywords',9,0,0,1,1,0,128,NULL,NULL),(15,'height',17,0,0,0,0,0,0,NULL,NULL),(15,'keyword',57,1,1,1,1,0,128,NULL,NULL),(15,'mimetype',9,0,0,1,1,0,0,NULL,NULL),(15,'published',6,0,0,1,1,1,0,NULL,NULL),(15,'seq',36,0,0,0,1,0,0,'-10.00',NULL),(15,'short_title',9,0,0,1,1,0,0,NULL,NULL),(15,'size',17,0,0,0,0,0,0,NULL,NULL),(15,'title',8,0,0,1,1,0,0,NULL,NULL),(15,'uploadfile',32,0,0,0,0,0,0,NULL,NULL),(15,'width',17,0,0,0,0,0,0,NULL,NULL),(16,'author',49,0,0,1,1,0,64,NULL,NULL),(16,'contributors',9,0,0,1,1,0,64,NULL,NULL),(16,'docref',9,0,0,1,1,0,64,NULL,NULL),(16,'source',9,0,0,1,1,0,64,NULL,NULL),(16,'teaser',10,0,0,1,0,0,64,NULL,NULL),(16,'url',9,0,0,1,1,0,64,NULL,NULL),(17,'form',11,0,0,1,1,0,128,NULL,NULL),(17,'show_teaser',15,0,0,0,0,0,128,'0',NULL),(17,'show_title',114,0,0,0,0,0,128,'0',NULL),(17,'teaser',10,0,0,1,1,0,128,NULL,NULL),(18,'mailfrom',24,0,0,0,0,0,128,NULL,NULL),(19,'docdate',5,0,0,1,1,0,0,NULL,NULL),(19,'editcomp',9,0,0,0,0,0,64,NULL,NULL),(19,'expires',6,0,0,1,1,0,0,'9999-01-01 18:00:00',NULL),(19,'fields',10,0,0,0,0,0,64,NULL,NULL),(19,'newcomp',9,0,0,0,0,0,64,NULL,NULL),(19,'pagesize',31,0,1,0,0,0,128,NULL,NULL),(19,'published',6,0,0,1,1,1,128,NULL,NULL),(19,'seq',36,0,0,0,1,0,0,'10',NULL),(19,'short_title',9,0,0,1,1,0,0,NULL,NULL),(19,'sortorder',20,0,0,0,0,0,128,'+seq,+title',NULL),(19,'table',9,0,0,0,0,0,64,NULL,NULL),(19,'teaser',10,0,0,1,0,0,64,NULL,NULL),(19,'title',8,0,0,1,1,0,0,NULL,NULL),(20,'author',49,0,0,1,1,0,64,NULL,NULL),(20,'contactinfo',9,0,0,1,1,0,64,NULL,NULL),(20,'enddate',5,0,1,1,1,0,64,NULL,NULL),(20,'endtime',9,0,0,1,1,0,64,NULL,NULL),(20,'eventinfo',10,0,0,1,1,0,128,NULL,NULL),(20,'eventplace',9,0,0,1,1,0,64,NULL,NULL),(20,'eventtime',9,0,0,1,1,0,64,NULL,NULL),(20,'eventtype',58,0,0,1,1,0,128,NULL,NULL),(20,'is_global_event',81,0,0,1,1,0,128,'0',NULL),(20,'show_time',15,0,0,0,0,0,128,'1',NULL),(20,'show_title',114,0,0,0,0,0,128,'1',NULL),(20,'tags',72,1,0,1,1,0,128,NULL,NULL),(20,'teaser',10,0,0,1,0,0,64,NULL,NULL),(20,'uplift_picture',22,0,1,1,1,0,128,NULL,NULL),(21,'enddate',5,0,0,1,1,0,64,NULL,NULL),(21,'show_as',27,0,0,1,0,0,128,'2D',NULL),(21,'show_event',34,0,0,1,0,0,128,'title',NULL),(21,'startdate',5,0,0,0,0,0,128,NULL,NULL),(21,'s_event_contact',9,0,0,0,0,0,128,NULL,NULL),(21,'s_event_info',9,0,0,0,0,0,128,NULL,NULL),(21,'s_event_order_by',30,0,0,0,0,0,128,'-docdate',NULL),(21,'s_event_path',22,0,0,0,0,0,128,NULL,NULL),(21,'s_event_place',9,0,0,0,0,0,128,NULL,NULL),(21,'s_event_title',9,0,0,0,0,0,128,NULL,NULL),(21,'s_event_type',56,0,0,0,0,0,128,NULL,NULL),(21,'s_reverse_order',15,0,0,0,0,0,128,'0',NULL),(22,'author',49,0,0,1,1,0,64,NULL,NULL),(22,'contributors',9,0,0,1,1,0,64,NULL,NULL),(22,'docref',9,0,0,1,1,0,64,NULL,NULL),(22,'logo',22,0,1,1,1,0,128,NULL,NULL),(22,'picture',22,0,1,1,1,0,128,NULL,NULL),(22,'show_teasers',15,0,0,1,1,0,128,'0',NULL),(22,'source',9,0,0,1,1,0,64,NULL,NULL),(22,'teaser',10,0,0,1,0,0,64,NULL,NULL),(23,'adjustlist',43,1,1,1,1,0,128,NULL,NULL),(23,'adjusttype',42,0,0,1,1,0,128,'noadjust',NULL),(23,'author',49,0,0,1,1,0,64,NULL,NULL),(23,'contributors',9,0,0,1,1,0,64,NULL,NULL),(23,'docref',9,0,0,1,1,0,64,NULL,NULL),(23,'enddate',5,0,0,1,1,0,128,'2030-01-01 00:00:00',NULL),(23,'introduktion',10,0,0,1,0,0,64,NULL,NULL),(23,'newsboxmax',18,0,1,1,1,0,128,'6',NULL),(23,'newsmax',18,0,1,1,1,0,128,NULL,NULL),(23,'newspath',39,1,1,1,1,0,128,NULL,NULL),(23,'newssource',40,0,0,1,1,0,128,'subdocuments',NULL),(23,'resultlimit',41,0,0,1,1,0,128,'0',NULL),(23,'sortnewsby',59,0,0,1,1,0,128,'reverse',NULL),(23,'source',9,0,0,1,1,0,64,NULL,NULL),(23,'startdate',5,0,0,1,1,0,128,'2000-01-01 00:00:00',NULL),(23,'tags_search',72,1,0,1,1,0,128,NULL,NULL),(23,'teaser',10,0,0,1,0,0,64,NULL,NULL),(24,'adjusttype',42,0,0,1,1,0,128,'noadjust',NULL),(24,'author',49,0,0,1,1,0,64,NULL,NULL),(24,'contributors',9,0,0,1,1,0,64,NULL,NULL),(24,'docref',9,0,0,1,1,0,64,NULL,NULL),(24,'enddate',5,0,0,1,1,0,128,'2030-01-01 00:00:00',NULL),(24,'eventsadjustlist',45,1,1,1,1,0,128,NULL,NULL),(24,'eventsboxmax',18,0,1,1,1,0,128,'6',NULL),(24,'eventspath',39,1,1,1,1,0,128,NULL,NULL),(24,'eventssource',44,0,0,1,1,0,128,'subdocuments',NULL),(24,'eventtypematch',58,0,0,1,1,0,128,NULL,NULL),(24,'introduction',10,0,0,1,0,0,64,NULL,NULL),(24,'resultlimit',41,0,0,1,1,0,128,'0',NULL),(24,'reverse_order',15,0,0,0,0,0,128,'0',NULL),(24,'source',9,0,0,1,1,0,64,NULL,NULL),(24,'special_datelimit',54,0,0,1,1,0,128,NULL,NULL),(24,'startdate',5,0,0,1,1,0,128,'2000-01-01 00:00:00',NULL),(24,'teaser',10,0,0,1,0,0,64,NULL,NULL),(25,'author',49,0,0,1,1,0,64,NULL,NULL),(25,'contributors',9,0,0,1,1,0,64,NULL,NULL),(25,'docref',9,0,0,1,1,0,64,NULL,NULL),(25,'linkslist',39,1,1,1,1,0,128,NULL,NULL),(25,'source',9,0,0,1,1,0,64,NULL,NULL),(26,'author',49,0,0,1,1,0,64,NULL,NULL),(26,'content',10,0,0,1,1,0,128,NULL,NULL),(26,'imagelink',38,0,0,1,1,0,128,NULL,NULL),(26,'imagepath',38,0,0,1,1,0,128,NULL,NULL),(26,'seq',36,0,0,0,1,0,0,'-10.00',NULL),(27,'author',49,0,0,1,1,0,64,NULL,NULL),(27,'image',9,0,0,1,1,0,128,NULL,NULL),(27,'seq',36,0,0,0,1,0,0,'-10.00',NULL),(27,'url',9,0,0,1,1,0,64,NULL,NULL),(28,'boldteaser',50,0,1,1,1,0,128,NULL,NULL),(28,'contacttext',10,0,0,1,1,0,128,NULL,NULL),(28,'insertcontact',88,0,0,1,1,0,128,'Nej',NULL),(28,'is_globalnews',15,0,0,1,1,0,128,'0',NULL),(28,'news_time',77,0,0,1,1,0,128,NULL,NULL),(28,'relnewslabel',85,0,0,1,1,0,128,NULL,NULL),(28,'rightbox_news',39,1,0,1,1,0,128,NULL,NULL),(28,'strait_picture',22,0,1,1,1,0,128,NULL,NULL),(28,'subjectword',87,0,1,1,1,0,128,NULL,NULL),(28,'tags',72,1,0,1,1,0,128,NULL,NULL),(28,'wide_picture',22,0,1,1,1,0,128,NULL,NULL),(29,'author',49,0,0,1,1,0,64,NULL,NULL),(29,'contributors',9,0,0,1,1,0,64,NULL,NULL),(29,'docref',9,0,0,1,1,0,64,NULL,NULL),(29,'hide_right',15,0,0,1,1,0,128,'1',NULL),(29,'prefixes',50,0,1,0,0,0,128,NULL,NULL),(29,'source',9,0,0,1,1,0,64,NULL,NULL),(29,'url',9,0,0,1,1,0,128,NULL,NULL),(30,'author',49,0,0,1,1,0,64,NULL,NULL),(30,'banner1',22,0,1,1,1,0,128,NULL,NULL),(30,'banner2',22,0,1,1,1,0,128,NULL,NULL),(30,'banner3',22,0,1,1,1,0,128,NULL,NULL),(30,'boxes1',39,1,1,1,1,0,128,NULL,NULL),(30,'boxes2',39,1,1,1,1,0,128,NULL,NULL),(30,'content',10,0,0,1,1,0,128,NULL,NULL),(30,'contributors',9,0,0,1,1,0,64,NULL,NULL),(30,'docref',9,0,0,1,1,0,64,NULL,NULL),(30,'ean',9,0,0,1,1,0,64,NULL,NULL),(30,'extra_html_body_fp',50,0,0,1,1,0,64,NULL,NULL),(30,'extra_html_head_fp',50,0,0,1,1,0,64,NULL,NULL),(30,'html_content',11,0,0,1,1,0,128,NULL,NULL),(30,'picture',22,0,1,1,1,0,128,NULL,NULL),(30,'source',9,0,0,1,1,0,64,NULL,NULL),(30,'teaser',10,0,0,1,0,0,64,NULL,NULL),(31,'aftersubmittext',10,0,0,1,1,0,128,NULL,NULL),(31,'author',49,0,0,1,1,0,64,NULL,NULL),(31,'captcha',15,0,0,1,1,0,128,NULL,NULL),(31,'close_message',10,0,1,1,1,0,128,NULL,NULL),(31,'contributors',9,0,0,1,1,0,64,NULL,NULL),(31,'docref',9,0,0,1,1,0,64,NULL,NULL),(31,'email_subject',9,0,1,1,1,0,128,NULL,NULL),(31,'email_text',110,0,1,1,1,0,128,NULL,NULL),(31,'entries_for_advert',18,0,1,1,1,0,128,'0',NULL),(31,'entries_for_close',18,0,1,1,1,0,128,'0',NULL),(31,'formdata',55,0,0,1,1,0,128,NULL,NULL),(31,'formtext',10,0,0,1,1,0,128,NULL,NULL),(31,'mailto',65,0,1,1,1,0,128,NULL,NULL),(31,'show_title',114,0,0,0,0,0,128,'1',NULL),(31,'source',9,0,0,1,1,0,64,NULL,NULL),(31,'teaser',10,0,0,1,0,0,64,NULL,NULL),(32,'author',49,0,0,1,1,0,64,NULL,NULL),(32,'contributors',9,0,0,1,1,0,64,NULL,NULL),(32,'disable_cache',15,0,0,1,1,0,128,'0',NULL),(32,'docref',9,0,0,1,1,0,64,NULL,NULL),(32,'seq',36,0,0,0,1,0,0,'-10.00',NULL),(32,'size',17,0,0,0,0,0,192,NULL,NULL),(32,'source',9,0,0,1,1,0,64,NULL,NULL),(32,'teaser',10,0,0,1,0,0,64,NULL,NULL),(32,'uploadfile',32,0,0,0,0,0,192,NULL,NULL),(34,'max_entries',16,0,0,0,0,0,128,'10',NULL),(34,'max_teaser',16,0,0,0,0,0,128,'60',NULL),(34,'show_date',15,0,0,0,0,0,128,'1',NULL),(34,'show_teaser',15,0,0,0,0,0,128,'1',NULL),(36,'root',22,0,0,0,0,0,128,NULL,NULL),(37,'afsnitsid',16,0,0,1,1,0,64,NULL,NULL),(37,'flag',58,0,0,1,1,0,128,NULL,NULL),(37,'header',9,0,0,1,1,0,64,NULL,NULL),(37,'teaser',10,0,0,1,0,0,64,NULL,NULL),(38,'abstrakt_pri',9,0,0,1,1,0,128,NULL,NULL),(38,'abstrakt_sec',9,0,0,1,1,0,128,NULL,NULL),(38,'antalsider',9,0,0,1,1,0,128,NULL,NULL),(38,'forfatter',9,0,0,1,1,0,128,NULL,NULL),(38,'organisation',62,0,0,1,1,0,128,NULL,NULL),(38,'publikationtype',9,0,0,1,1,0,128,NULL,NULL),(38,'sporg',9,0,0,1,1,0,128,NULL,NULL),(38,'tidsskriftstitel',9,0,0,1,1,0,128,NULL,NULL),(38,'title_pri',9,0,0,1,1,0,128,NULL,NULL),(38,'title_sec',9,0,0,1,1,0,128,NULL,NULL),(38,'udgivelesaar',9,0,0,1,1,0,128,NULL,NULL),(38,'udgiver',9,0,0,1,1,0,128,NULL,NULL),(41,'root',22,0,0,0,0,0,128,NULL,NULL),(41,'stedkode',62,0,0,1,1,0,128,NULL,NULL),(42,'bred',15,0,0,0,0,0,128,'0',NULL),(42,'fravalg',15,0,0,0,0,0,128,'0',NULL),(42,'medarbejdere',63,1,1,1,1,0,128,NULL,NULL),(42,'medtag_under',15,0,0,0,0,0,128,'0',NULL),(42,'organisation',62,0,0,1,1,0,128,NULL,NULL),(42,'organisationlist',71,0,0,1,0,0,128,NULL,NULL),(42,'other_language_url',22,0,1,1,1,0,128,NULL,NULL),(42,'sortering',64,0,0,0,0,0,64,'fornavn',NULL),(42,'stilling',9,0,0,1,0,0,64,NULL,NULL),(42,'use_datatables_search',114,0,0,0,0,0,128,'0',NULL),(42,'viptap',67,0,0,0,0,0,64,NULL,NULL),(45,'content',10,0,0,1,1,0,128,NULL,NULL),(45,'parent',9,0,0,1,1,0,64,NULL,NULL),(46,'author',49,0,0,1,1,0,64,NULL,NULL),(46,'contributors',9,0,0,1,1,0,64,NULL,NULL),(46,'docref',9,0,0,1,1,0,64,NULL,NULL),(46,'formular',22,0,1,1,1,0,128,NULL,NULL),(46,'introduktion',10,0,0,1,1,0,128,NULL,NULL),(46,'source',9,0,0,1,1,0,64,NULL,NULL),(46,'teaser',10,0,0,1,0,0,64,NULL,NULL),(46,'xml_url',9,0,0,1,1,0,64,NULL,NULL),(46,'xslt',11,0,0,0,0,0,128,NULL,NULL),(47,'ajax_fields',9,0,0,0,0,0,128,NULL,NULL),(47,'infored_sortorder',80,0,1,1,1,0,128,NULL,NULL),(47,'offentlig',15,0,0,0,0,0,128,'0',NULL),(47,'offentlig_oprettelse',15,0,0,0,0,0,128,'0',NULL),(47,'tillad_excel',15,0,0,0,0,0,128,'1',NULL),(48,'internal_proxy_overload_rightboxes',106,0,0,1,1,0,64,'1',NULL),(48,'internal_proxy_overload_tags',106,0,0,1,1,0,128,'1',NULL),(48,'internal_proxy_path',22,0,0,1,1,0,64,NULL,NULL),(48,'show_proxied_title',114,0,0,0,0,0,128,'0',NULL),(48,'show_title',114,0,0,0,0,0,128,'1',NULL),(48,'tags',72,1,0,1,1,0,128,NULL,NULL),(50,'adjusttype',42,0,0,1,1,0,128,'noadjust',NULL),(50,'author',49,0,0,1,1,0,64,NULL,NULL),(50,'contributors',9,0,0,1,1,0,64,NULL,NULL),(50,'details_in_box',96,0,0,1,1,0,128,'0',NULL),(50,'docref',9,0,0,1,1,0,64,NULL,NULL),(50,'elems_in_box',95,0,0,1,1,0,128,'0',NULL),(50,'enddate',5,0,0,1,1,0,128,'2030-01-01 00:00:00',NULL),(50,'eventsadjustlist',45,1,1,1,1,0,128,NULL,NULL),(50,'eventsboxmax',18,0,1,1,1,0,128,'6',NULL),(50,'eventspath',39,1,1,1,1,0,128,NULL,NULL),(50,'eventssource',44,0,0,1,1,0,128,'subdocuments',NULL),(50,'eventtypematch',58,0,0,1,1,0,128,NULL,NULL),(50,'introduction',10,0,0,1,0,0,64,NULL,NULL),(50,'pic_in_list',94,0,0,1,1,0,128,'0',NULL),(50,'resultlimit',41,0,0,1,1,0,128,'0',NULL),(50,'reverse_order',15,0,0,0,0,0,128,'0',NULL),(50,'show_filt_and_cal',84,0,1,1,1,0,128,NULL,NULL),(50,'show_title',114,0,0,0,0,0,128,'1',NULL),(50,'source',9,0,0,1,1,0,64,NULL,NULL),(50,'special_datelimit',54,0,0,1,1,0,128,NULL,NULL),(50,'startdate',5,0,0,1,1,0,128,'2000-01-01 00:00:00',NULL),(50,'tags_search',72,1,0,1,1,0,128,NULL,NULL),(50,'teaser',10,0,0,1,0,0,64,NULL,NULL),(50,'teaser_in_box',97,0,0,1,1,0,128,'firstxxx',NULL),(51,'externalrightbox_uri',9,0,0,1,1,0,128,NULL,NULL),(53,'adjustlist',43,1,1,1,1,0,128,NULL,NULL),(53,'adjusttype',42,0,0,1,1,0,128,'noadjust',NULL),(53,'author',49,0,0,1,1,0,64,NULL,NULL),(53,'box_details',68,0,0,1,1,0,64,'teaser',NULL),(53,'box_teasersize',113,0,1,1,1,0,128,NULL,NULL),(53,'contributors',9,0,0,1,1,0,64,NULL,NULL),(53,'docref',9,0,0,1,1,0,64,NULL,NULL),(53,'enddate',5,0,0,1,1,0,128,'2030-01-01 00:00:00',NULL),(53,'html_content',11,0,0,1,1,0,128,NULL,NULL),(53,'introduktion',10,0,0,1,0,0,64,NULL,NULL),(53,'middle_details',69,0,0,1,1,0,64,'nothumbnail',NULL),(53,'middle_teasersize',113,0,1,1,1,0,128,NULL,NULL),(53,'newsboxmax',18,0,1,1,1,0,128,'6',NULL),(53,'newsmax',18,0,1,1,1,0,128,NULL,NULL),(53,'newspath',39,1,1,1,1,0,128,NULL,NULL),(53,'newssource',40,0,0,1,1,0,128,'subdocuments',NULL),(53,'resultlimit',41,0,0,1,1,0,128,'0',NULL),(53,'show_date_box',15,0,0,1,1,0,64,'1',NULL),(53,'show_date_middle',15,0,0,1,1,0,64,'1',NULL),(53,'show_title',114,0,0,0,0,0,128,'1',NULL),(53,'sortnewsby',59,0,0,1,1,0,128,'reverse',NULL),(53,'source',9,0,0,1,1,0,64,NULL,NULL),(53,'startdate',5,0,0,1,1,0,128,'2000-01-01 00:00:00',NULL),(53,'tags_search',72,1,0,1,1,0,128,NULL,NULL),(53,'teaser',10,0,0,1,0,0,64,NULL,NULL),(53,'top_story',22,0,1,1,1,0,64,NULL,NULL),(55,'doctypes',76,1,1,1,1,0,64,NULL,NULL),(55,'exclude_standard_tags',15,0,0,1,1,0,128,'1',NULL),(55,'folder',39,1,0,0,1,0,64,NULL,NULL),(55,'seq',36,0,0,0,1,0,128,'-10',NULL),(55,'tagcloud_filter_type',75,0,0,1,1,0,128,'exclude',NULL),(55,'tagcloud_searchspace',73,0,0,1,1,0,64,'fromsubsite',NULL),(55,'taglimit',18,0,0,0,1,0,64,NULL,NULL),(55,'taglist',72,1,0,0,1,0,64,NULL,NULL),(56,'doctypes',76,1,1,1,1,0,64,NULL,NULL),(56,'folder',39,1,0,0,1,0,64,NULL,NULL),(56,'introduction',10,0,0,0,0,0,64,NULL,NULL),(56,'searchspace',73,0,0,1,1,0,64,'fromsubsite',NULL),(56,'tagslist',72,1,0,0,1,0,64,NULL,NULL),(57,'bannerpath',39,1,0,0,1,0,1,NULL,NULL),(57,'introduction',10,0,0,0,0,0,64,NULL,NULL),(59,'cfimlink_agreement_signature',38,0,0,1,1,0,128,NULL,NULL),(59,'cfimlink_rules_and_reg',38,0,0,1,1,0,128,NULL,NULL),(59,'cfimlink_std_com_agreement',38,0,0,1,1,0,128,NULL,NULL),(59,'cfimlink_std_va_agreement',38,0,0,1,1,0,128,NULL,NULL),(59,'cfimlink_sund_account',38,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_account_number',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_agreement_above',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_agreement_below',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_choose_com_above',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_choose_com_below',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_choose_va_above',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_choose_va_below',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_contact_person_info',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_inactive_agreement',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_service_booking_date',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_usertype_com',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_usertype_desc',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_usertype_ku_oevrige',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_usertype_sund',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_usertype_va',10,0,0,1,1,0,128,NULL,NULL),(59,'cfimtext_wrong_sund_account',10,0,0,1,1,0,128,NULL,NULL),(61,'pxs_language',9,0,0,0,0,0,128,'da',NULL),(61,'pxs_signature',10,0,0,1,1,0,128,NULL,NULL),(62,'banner1',22,0,1,1,1,0,128,NULL,NULL),(62,'banner2',22,0,1,1,1,0,128,NULL,NULL),(62,'calendar_source',22,0,1,1,1,0,128,NULL,NULL),(62,'news_source',22,0,1,1,1,0,128,NULL,NULL),(62,'number_of_events',17,0,0,1,1,0,128,'1',NULL),(62,'number_of_news',17,0,0,1,1,0,128,'2',NULL),(62,'slider_source',22,0,1,1,1,0,128,NULL,NULL),(64,'content_type',93,1,0,1,1,0,128,NULL,NULL),(64,'default_category',90,0,0,1,1,0,128,NULL,NULL),(64,'default_page_size',18,0,0,1,1,0,128,'20',NULL),(64,'default_show_pict',15,0,0,1,1,0,128,'1',NULL),(64,'default_sort',91,0,0,1,1,0,128,NULL,NULL),(64,'default_teaser_len',18,0,0,1,1,0,128,'50',NULL),(64,'source_locations',39,1,0,1,1,0,128,NULL,NULL),(64,'source_single',22,0,1,1,1,0,128,NULL,NULL),(64,'source_type',92,0,0,1,1,0,128,NULL,NULL),(65,'global_sort',9,0,0,1,1,0,128,NULL,NULL),(65,'tags',72,1,0,1,1,0,128,NULL,NULL),(66,'facslink_agreement_signature',38,0,0,1,1,0,128,NULL,NULL),(66,'facslink_rules_and_reg',38,0,0,1,1,0,128,NULL,NULL),(66,'facslink_std_com_agreement',38,0,0,1,1,0,128,NULL,NULL),(66,'facslink_std_va_agreement',38,0,0,1,1,0,128,NULL,NULL),(66,'facslink_sund_account',38,0,0,1,1,0,128,NULL,NULL),(66,'facstext_account_number',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_agreement_above',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_agreement_below',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_choose_com_above',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_choose_com_below',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_choose_va_above',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_choose_va_below',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_contact_person_info',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_inactive_agreement',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_outside_hours_warning',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_rr_accept_text',9,0,0,1,1,0,128,NULL,NULL),(66,'facstext_rr_read_text',9,0,0,1,1,0,128,NULL,NULL),(66,'facstext_service_booking_date',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_usertype_com',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_usertype_desc',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_usertype_ku_oevrige',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_usertype_sund',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_usertype_va',10,0,0,1,1,0,128,NULL,NULL),(66,'facstext_wrong_sund_account',10,0,0,1,1,0,128,NULL,NULL),(67,'author',49,0,0,1,1,0,64,NULL,NULL),(67,'contributors',9,0,0,1,1,0,64,NULL,NULL),(67,'docref',9,0,0,1,1,0,64,NULL,NULL),(67,'ean',9,0,0,1,1,0,64,NULL,NULL),(67,'gridcontent',89,0,0,1,1,0,128,NULL,NULL),(67,'source',9,0,0,1,1,0,64,NULL,NULL),(67,'teaser',10,0,0,1,0,0,64,NULL,NULL),(68,'authorprofiles',39,1,0,1,1,0,128,NULL,NULL),(68,'number',9,0,0,1,1,0,128,NULL,NULL),(68,'otherpages',39,1,0,1,1,0,128,NULL,NULL),(68,'pdfdoc',32,0,0,0,0,0,0,NULL,NULL),(68,'rightboxtext',10,0,0,1,0,0,128,NULL,NULL),(69,'cmssources',39,1,0,1,1,0,128,NULL,NULL),(69,'elemsinbox',16,0,0,1,1,0,128,'6',NULL),(69,'knpagesrctype',105,0,0,1,1,0,128,'underself',NULL),(71,'answertext',10,0,0,1,1,0,128,NULL,NULL),(71,'authorprofiles',39,1,0,1,1,0,128,NULL,NULL),(71,'otherpages',39,1,0,1,1,0,128,NULL,NULL),(71,'subjecttext',9,0,0,1,1,0,128,NULL,NULL),(72,'elemsinbox',16,0,0,1,1,0,128,'3',NULL),(73,'email',24,0,1,1,1,0,128,NULL,NULL),(73,'faceimage',32,0,0,0,0,0,0,NULL,NULL),(73,'profileurl',9,0,0,1,1,0,128,NULL,NULL),(73,'subjectgroups',39,1,0,1,1,0,128,NULL,NULL),(75,'newsletters',39,1,0,1,1,0,128,NULL,NULL),(75,'textacknafter',10,0,0,1,1,0,128,NULL,NULL),(75,'textacknbefore',10,0,0,1,1,0,128,NULL,NULL),(75,'textacknnoaction',10,0,0,1,1,0,128,NULL,NULL),(75,'textaftersubmit',10,0,0,1,1,0,128,NULL,NULL),(75,'textemailinfo',10,0,0,1,1,0,128,NULL,NULL),(75,'textfootemail',50,0,0,1,1,0,128,NULL,NULL),(75,'textheademail',50,0,0,1,1,0,128,NULL,NULL),(75,'textsubjemail',9,0,0,1,1,0,128,NULL,NULL),(75,'textsubscrbefore',10,0,0,1,1,0,128,NULL,NULL),(75,'textsubscremailinfo',10,0,0,1,1,0,128,NULL,NULL),(76,'bannerpic',22,0,1,1,1,0,128,NULL,NULL),(76,'branchcode',9,0,1,1,1,0,128,NULL,NULL),(76,'contacttext',10,0,1,1,1,0,128,NULL,NULL),(76,'courselabel',100,0,1,1,1,0,128,NULL,NULL),(76,'duration',9,0,1,1,1,0,128,NULL,NULL),(76,'nrofparticipants',9,0,1,1,1,0,128,NULL,NULL),(76,'participantsshow',99,0,0,1,1,0,128,'yes',NULL),(76,'priceinfo',10,0,1,1,1,0,128,NULL,NULL),(76,'signupinfo',10,0,1,1,1,0,128,NULL,NULL),(76,'subjectcats',101,1,1,1,1,0,128,NULL,NULL),(77,'coursedate',5,0,1,1,1,0,128,NULL,NULL),(77,'invitepdf',32,0,1,1,1,0,128,NULL,NULL),(77,'localitypath',22,0,1,1,1,0,128,NULL,NULL),(77,'profresponsable',10,0,1,1,1,0,128,NULL,NULL),(77,'signupdue',103,0,1,1,1,0,128,NULL,NULL),(77,'subscriptionform',22,0,1,1,1,0,128,NULL,NULL),(77,'subscriptionmode',102,0,0,1,1,0,128,'none',NULL),(78,'coursetype',108,0,0,1,1,0,128,'amutp',NULL),(78,'elemsinbox',16,0,0,1,1,0,128,'3',NULL),(79,'formdatarepeat',104,0,1,1,1,0,128,NULL,NULL),(81,'author',49,0,0,1,1,0,64,NULL,NULL),(81,'description',10,0,0,1,1,0,128,NULL,NULL),(81,'exec_method',107,0,0,1,1,0,128,'asynchronized',NULL),(81,'paramdata',55,0,0,1,1,0,128,NULL,NULL),(81,'scriptname',9,0,0,1,1,0,128,NULL,NULL),(81,'synopsis',10,0,0,1,1,0,128,NULL,NULL),(82,'seq',36,0,0,0,0,0,128,'-1',NULL),(84,'other_language_url',22,0,0,1,1,0,128,NULL,NULL),(85,'pxs_language',9,0,0,1,1,0,128,'da',NULL),(85,'pxs_search_label',9,0,0,0,0,0,128,'SÃ¸g',NULL),(85,'pxs_tap_admin_it',15,0,0,0,0,0,128,'0',NULL),(85,'pxs_tap_grp',15,0,0,0,0,0,128,'0',NULL),(85,'pxs_tap_intern',15,0,0,0,0,0,128,'0',NULL),(85,'pxs_tap_lab_clinic',15,0,0,0,0,0,128,'0',NULL),(85,'pxs_tap_management',15,0,0,0,0,0,128,'0',NULL),(85,'pxs_tap_student',15,0,0,0,0,0,128,'0',NULL),(85,'pxs_vip_academic',15,0,0,0,0,0,128,'0',NULL),(85,'pxs_vip_phd',15,0,0,0,0,0,128,'0',NULL),(85,'pxs_vip_teaching',15,0,0,0,0,0,128,'0',NULL),(85,'pxs_vip_tenure_track',15,0,0,0,0,0,128,'0',NULL),(85,'std_foot_text',10,0,0,1,0,0,64,NULL,NULL),(86,'faggruppe_kontakt_adresse',50,0,0,1,1,0,128,NULL,NULL),(86,'faggruppe_kontakt_billede',38,0,0,1,1,0,128,NULL,NULL),(86,'faggruppe_kontakt_email',9,0,0,1,1,0,128,NULL,NULL),(86,'faggruppe_kontakt_navn',9,0,0,1,1,0,128,NULL,NULL),(86,'faggruppe_kontakt_telefon',9,0,0,1,1,0,128,NULL,NULL),(86,'faggruppe_uuid',9,0,0,1,1,0,128,NULL,NULL),(87,'html',11,0,0,1,1,0,128,NULL,NULL),(88,'teaser',10,0,0,1,0,0,64,NULL,NULL),(93,'author',49,0,0,1,1,0,64,NULL,NULL),(93,'contributors',9,0,0,1,1,0,64,NULL,NULL),(93,'docref',9,0,0,1,1,0,64,NULL,NULL),(93,'gridcontent',89,0,0,1,1,0,128,NULL,NULL),(93,'gridcontent_right',89,0,0,1,1,0,128,NULL,NULL),(93,'picture',22,0,1,1,1,0,128,NULL,NULL),(93,'show_title',114,0,0,0,0,0,128,'1',NULL),(93,'source',9,0,0,1,1,0,64,NULL,NULL),(93,'teaser',10,0,0,1,0,0,64,NULL,NULL),(94,'author',49,0,0,1,1,0,64,NULL,NULL),(94,'contributors',9,0,0,1,1,0,64,NULL,NULL),(94,'docref',9,0,0,1,1,0,64,NULL,NULL),(94,'flexboxcontent',115,0,0,1,1,0,128,NULL,NULL),(94,'picture',22,0,1,1,1,0,128,NULL,NULL),(94,'show_title',114,0,0,0,0,0,128,'1',NULL),(94,'source',9,0,0,1,1,0,64,NULL,NULL),(94,'teaser',10,0,0,1,0,0,64,NULL,NULL);
/*!40000 ALTER TABLE `fieldspecs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldtypes`
--

DROP TABLE IF EXISTS `fieldtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldtypes` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL DEFAULT '',
  `edit` varchar(127) NOT NULL DEFAULT 'line',
  `edit_args` text NOT NULL,
  `validate` varchar(127) NOT NULL DEFAULT 'none',
  `validate_args` text NOT NULL,
  `search` varchar(127) NOT NULL DEFAULT 'none',
  `search_args` text NOT NULL,
  `bin` tinyint(1) NOT NULL DEFAULT 0,
  `value_field` enum('text','int','double','date') NOT NULL DEFAULT 'text',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldtypes`
--

LOCK TABLES `fieldtypes` WRITE;
/*!40000 ALTER TABLE `fieldtypes` DISABLE KEYS */;
INSERT INTO `fieldtypes` VALUES (1,'halign','radio','right|left|center','regexp','^(right|left|center)$','none','',0,'text'),(2,'category','category','categories.id','xref','categories.id','none','',0,'text'),(3,'keyword','keyword','keywords.id','xref','keywords.id','matchColumn','name',0,'int'),(4,'imagedata','imageupload','','none','','none','',1,'text'),(5,'date','date','','regexp','^\\d\\d\\d\\d-\\d\\d-\\d\\d( 00:00:00)?$','none','',0,'date'),(6,'datetime','datetime','','regexp','^\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d$','none','',0,'date'),(7,'time','time','','regexp','^\\d\\d:\\d\\d:\\d\\d$','none','',0,'date'),(8,'title','title','','regexp','.','none','',0,'text'),(9,'line','line','','none','','none','',0,'text'),(10,'text','tinymce4','','none','','none','',0,'text'),(11,'textwupload','textwupload','','none','','none','',0,'text'),(12,'double','line','','regexp','^-?\\d+(\\.\\d+)?','none','',0,'double'),(13,'lang','line','','regexp','^\\w\\w$','none','',0,'text'),(14,'require','radio','normal|teaser|fullinfo','regexp','^(teaser|fullinfo|normal)$','none','',0,'text'),(15,'bool','radio','0|1','regexp','^[01]$','none','',0,'int'),(16,'int>0','line','','regexp','^[1-9]\\d*$','none','',0,'int'),(17,'int>=0','line','','regexp','^\\d+$','none','',0,'int'),(18,'int','line','','regexp','^-?\\d+$','none','',0,'int'),(19,'appdata','fileupload','','none','','none','',1,'text'),(20,'sortorder','sortorder','','regexp','.','none','',0,'text'),(21,'template','xref','templates.id','xref','templates.id','none','',0,'int'),(22,'path','path','','special','DocumentPathCheck','none','',0,'int'),(23,'searchtype','radio','keyword|category|month|weeks','regexp','^(keyword|category|month|weeks)$','none','',0,'text'),(24,'email','line','','regexp','^[^@]+@[^@]+\\.\\w+$','none','',0,'text'),(25,'priority','radio','0|1|2|3','regexp','^[0123]$','none','',0,'int'),(26,'subscribeable','radio','none|automatic|manual','regexp','^(none|automatic|manual)$','none','',0,'text'),(27,'showcal','radio','2D|list','regexp','^(2D|list)$','none','',0,'text'),(28,'publishmode','radio','immediate|moderator','regexp','^(immediate|moderator)$','none','',0,'text'),(29,'publish_on','publishon','','regexp','^\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d$','none','',0,'date'),(30,'orderevents','radio','+title|-docdate|+docdate|+eventtype|+contactinfo','regexp','^(\\+title|\\-docdate|\\+docdate|\\+eventtype|\\+contactinfo)$','none','',0,'text'),(31,'pagesize','pagesize','','regexp','^[1-9]\\d*$','none','',0,'int'),(32,'fileupload2','fileupload2','','none','','none','',0,'text'),(33,'priority6','radio','1|2|3|4|5','regexp','^[12345]$','none','',0,'int'),(34,'showevent','radio','type|title','regexp','^(type|title)$','none','',0,'text'),(35,'condisp','radio','attachment|inline','regexp','^(attachment|inline)$','none','',0,'text'),(36,'sequence','sequence','','regexp','^-?\\d+(\\.\\d+)?','none','',0,'double'),(37,'imagepath','imagepath','','special','DocidLink','none','',0,'text'),(38,'docidlink','docidlink','','special','DocidLink','none','',0,'text'),(39,'multipath','multipath','','none','','none','',0,'text'),(40,'newssource','radio','subdocuments|allnews|globalnews|copy','regexp','^subdocuments|allnews|globalnews|copy$','none','',0,'text'),(41,'resultlimit','resultlimit','','none','','none','',0,'int'),(42,'adjusttype','radio','noadjust|include|exclude','regexp','^noadjust|include|exclude$','none','',0,'text'),(43,'adjustlist','adjustlist','','none','','none','',0,'int'),(44,'eventssource','radio','subdocuments|globalevents|allevents|copy','regexp','^allevents|globalevents|subdocuments|copy$','none','',0,'text'),(45,'eventsadjustlist','eventsadjustlist','','none','','none','',0,'int'),(46,'farvevalg','farvevalg','','none','','none','',0,'text'),(47,'robotsmeta','robotsmeta','','none','','none','',0,'text'),(48,'plaintext','text','','none','','none','',0,'text'),(49,'author','author','','none','','none','',0,'text'),(50,'simpletext','text','','none','','none','',0,'text'),(51,'seqselect','seqselect','','regexp','^-?\\d+(\\.\\d+)?','none','',0,'double'),(52,'kontaktfelt','kontaktfelt','','none','','none','',0,'text'),(53,'updatealertuser','updatealertuser','','none','','none','',0,'text'),(54,'specialdatelimit','specialdatelimit','','none','','none','',0,'text'),(55,'formdata','formdata','','none','','none','',0,'text'),(56,'eventtype','eventtype','','none','','none','',0,'text'),(57,'humfakkeyword','humfakkeyword','','none','','none','',0,'text'),(58,'picklist','picklist','','none','','none','',0,'text'),(59,'sortnewsby','radio','reverse|normal','regexp','^reverse|normal$','none','',0,'text'),(60,'updatealertsent','updatealertsent','','none','','none','',0,'int'),(61,'stedkode','stedkode','','none','','none','',0,'text'),(62,'organisation','organisation','','regexp','^[0-9]{6,8}$','none','',0,'text'),(63,'medarbejderliste','medarbejderliste','','none','','none','',0,'text'),(64,'medarbejdersorttype','radio','efternavn|fornavn|stilling|stillingoverskrifter','regexp','^efternavn|fornavn|stilling|stillingoverskrifter$','none','',0,'text'),(65,'emailcollection','emailcollection','','none','','none','',0,'text'),(66,'adresse','adresse','','none','','none','',0,'text'),(67,'viptaptype','radio','vip|tap|begge','regexp','^vip|tap|begge$','none','',0,'text'),(68,'nyhedsliste_details_list_in_box','radio','noteaser|teaser|teaserthumbnail','none','','none','',0,'text'),(69,'nyhedsliste_details_list_in_middle','radio','nothumbnail|narrowthumbnail','none','','none','',0,'text'),(70,'surveillance','surveillance','','none','','none','',0,'text'),(71,'organisationlist','organisationlist','','regexp','^[0-9]{6,8}(,[0-9]{6,8})*$','none','',0,'text'),(72,'tags','tags','','none','','none','',0,'text'),(73,'searchspace','radio','fromsubsite|fromfolders','regexp','^fromfolders|fromsubsite','none','',0,'text'),(74,'tagcloud_tagstoshow','radio','documenttags|alltags','regexp','^documenttags|alltags','none','',0,'text'),(75,'tagcloud_filter_type','radio','exclude|onlyselected|fromdocument','regexp','^exclude|onlyselected|fromdocument','none','',0,'text'),(76,'tagclouddoctypes','tagclouddoctypes','','none','','none','',0,'text'),(77,'timepicker','timepicker','','none','','none','',0,'text'),(78,'quiztype','radio','quizfrontpage|quiz|poll','none','','none','',0,'text'),(79,'quizanswers','quizanswers','','none','','none','',0,'text'),(80,'inforedsortorder','inforedsortorder','','none','','none','',0,'text'),(81,'isglobalevent','isglobalevent','','regexp','^[01]$','none','',0,'int'),(82,'user_created_by','user created by','','regexp','^\\w*$','none','',0,'text'),(83,'faculty','faculty','','regexp','\\w','none','',0,'text'),(84,'showcalbool','showcalbool','','regexp','^[01]$','none','',0,'int'),(85,'relnewslabel','relnewslabel','','regexp','^.*','none','',0,'text'),(86,'password','password','','none','','none','',0,'text'),(87,'subjectword','subjectword','','regexp','^.*$','none','',0,'text'),(88,'insertcontact','insertcontact','','regexp','^.*','none','',0,'text'),(89,'gridcontent','gridcontent','','none','','none','',0,'text'),(90,'encyclo_cat','encyclocat','','none','','none','',0,'text'),(91,'encyclo_sort','encyclosort','','none','','none','',0,'text'),(92,'source_type','encyclosrctype','','none','','none','',0,'text'),(93,'content_type','contenttype','','none','','none','',0,'text'),(94,'pic_in_list','picinlist','','regexp','^[01]$','none','',0,'int'),(95,'elems_in_box','elemsinbox','','regexp','^[012]$','none','',0,'int'),(96,'details_in_box','detailsinbox','','regexp','^[012]$','none','',0,'int'),(97,'teaser_in_box','teaserinbox','','none','','none','',0,'text'),(98,'pathasdocid','pathasdocid','','none','','none','',0,'text'),(99,'yesno','radio','yes|no','regexp','^yes|no$','none','',0,'text'),(100,'courselabel','discretevalues','','none','','none','',0,'text'),(101,'subjectcats','discretevalues','','none','','none','',0,'text'),(102,'subscriptionmode','subscriptionmode','','none','','none','',0,'text'),(103,'dateundef','dateundef','','regexp','^\\d\\d\\d\\d-\\d\\d-\\d\\d( 00:00:00)?$','none','',0,'date'),(104,'formdatarepeat','formdatarepeat','','none','','none','',0,'text'),(105,'knpagesrctype','radio','underself|selectedpaths','regexp','^underself|selectedpaths$','none','',0,'text'),(106,'overloadfield','overloadfield','1|0','regexp','^[01]$','none','',0,'int'),(107,'execmethod','radio','synchronized|asynchronized','regexp','^(synchronized|asynchronized)$','none','',0,'text'),(108,'coursetype','radio','amutp|opentp','regexp','^amutp|opentp$','none','',0,'text'),(109,'is_test_logon','radio','nej|ja','regexp','^(nej|ja)$','none','',0,'text'),(110,'emailtext','tinymce3email','','none','','none','',0,'text'),(111,'faculty_id','faculty id','','none','','none','',0,'int'),(112,'webteam_id','webteam id','','none','','none','',0,'int'),(113,'enum','enum','','regexp','^\\d+$','none','',0,'int'),(114,'checkbox','checkbox','','regexp','^[01]$','none','',0,'int'),(115,'flexboxcontent','flexboxcontent','','none','','none','',0,'text');
/*!40000 ALTER TABLE `fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forbidden_docs`
--

DROP TABLE IF EXISTS `forbidden_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forbidden_docs` (
  `docid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`docid`),
  CONSTRAINT `forbidden_docs_ibfk_1` FOREIGN KEY (`docid`) REFERENCES `documents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forbidden_docs`
--

LOCK TABLES `forbidden_docs` WRITE;
/*!40000 ALTER TABLE `forbidden_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `forbidden_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forbidden_docs_groups`
--

DROP TABLE IF EXISTS `forbidden_docs_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forbidden_docs_groups` (
  `docid` int(10) unsigned NOT NULL,
  `grp` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`docid`,`grp`),
  KEY `docid` (`docid`),
  KEY `grp` (`grp`),
  CONSTRAINT `forbidden_docs_groups_ibfk_1` FOREIGN KEY (`docid`) REFERENCES `forbidden_docs` (`docid`) ON DELETE CASCADE,
  CONSTRAINT `forbidden_docs_groups_ibfk_2` FOREIGN KEY (`grp`) REFERENCES `groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forbidden_docs_groups`
--

LOCK TABLES `forbidden_docs_groups` WRITE;
/*!40000 ALTER TABLE `forbidden_docs_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `forbidden_docs_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forbidden_docs_ips`
--

DROP TABLE IF EXISTS `forbidden_docs_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forbidden_docs_ips` (
  `docid` int(10) unsigned NOT NULL,
  `ip` varchar(128) NOT NULL,
  PRIMARY KEY (`docid`,`ip`),
  KEY `docid` (`docid`),
  CONSTRAINT `forbidden_docs_ips_ibfk_1` FOREIGN KEY (`docid`) REFERENCES `forbidden_docs` (`docid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forbidden_docs_ips`
--

LOCK TABLES `forbidden_docs_ips` WRITE;
/*!40000 ALTER TABLE `forbidden_docs_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `forbidden_docs_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forbidden_docs_rights`
--

DROP TABLE IF EXISTS `forbidden_docs_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forbidden_docs_rights` (
  `docid` int(10) unsigned NOT NULL,
  `grp` smallint(5) unsigned DEFAULT NULL,
  `user` smallint(5) unsigned DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  KEY `docid` (`docid`),
  KEY `grp` (`grp`),
  KEY `user` (`user`),
  CONSTRAINT `forbidden_docs_rights_ibfk_1` FOREIGN KEY (`docid`) REFERENCES `forbidden_docs` (`docid`) ON DELETE CASCADE,
  CONSTRAINT `forbidden_docs_rights_ibfk_2` FOREIGN KEY (`grp`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `forbidden_docs_rights_ibfk_3` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forbidden_docs_rights`
--

LOCK TABLES `forbidden_docs_rights` WRITE;
/*!40000 ALTER TABLE `forbidden_docs_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `forbidden_docs_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forbidden_docs_users`
--

DROP TABLE IF EXISTS `forbidden_docs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forbidden_docs_users` (
  `docid` int(10) unsigned NOT NULL,
  `user` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`docid`,`user`),
  KEY `docid` (`docid`),
  KEY `user` (`user`),
  CONSTRAINT `forbidden_docs_users_ibfk_1` FOREIGN KEY (`docid`) REFERENCES `forbidden_docs` (`docid`) ON DELETE CASCADE,
  CONSTRAINT `forbidden_docs_users_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forbidden_docs_users`
--

LOCK TABLES `forbidden_docs_users` WRITE;
/*!40000 ALTER TABLE `forbidden_docs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `forbidden_docs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formdata`
--

DROP TABLE IF EXISTS `formdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(10) unsigned NOT NULL DEFAULT 0,
  `entry` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `docid` (`docid`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formdata`
--

LOCK TABLES `formdata` WRITE;
/*!40000 ALTER TABLE `formdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `formdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formdata_backup`
--

DROP TABLE IF EXISTS `formdata_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formdata_backup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(10) unsigned NOT NULL DEFAULT 0,
  `entry` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `docid` (`docid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formdata_backup`
--

LOCK TABLES `formdata_backup` WRITE;
/*!40000 ALTER TABLE `formdata_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `formdata_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formdata_entry`
--

DROP TABLE IF EXISTS `formdata_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formdata_entry` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(10) unsigned NOT NULL,
  `entry_nr` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry_id`),
  UNIQUE KEY `docid` (`docid`,`entry_nr`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formdata_entry`
--

LOCK TABLES `formdata_entry` WRITE;
/*!40000 ALTER TABLE `formdata_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `formdata_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formdata_entry_data`
--

DROP TABLE IF EXISTS `formdata_entry_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formdata_entry_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_danish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`NAME`,`entry_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2519 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formdata_entry_data`
--

LOCK TABLES `formdata_entry_data` WRITE;
/*!40000 ALTER TABLE `formdata_entry_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `formdata_entry_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `front_faculties`
--

DROP TABLE IF EXISTS `front_faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `front_faculties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `sortorder` int(4) unsigned NOT NULL,
  `brandinglogo` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `css` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_danish_ci DEFAULT NULL,
  `pagemap_html` text COLLATE utf8_danish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_faculties`
--

LOCK TABLES `front_faculties` WRITE;
/*!40000 ALTER TABLE `front_faculties` DISABLE KEYS */;
INSERT INTO `front_faculties` VALUES (1,'Det Humanistiske Fakultet',10,'/grafik/images/topgrafik/hum.svg','/css/units/hum.css','/grafik/images/favicons/favicon_hum.ico','<!--\n<PageMap>\n    <DataObject type=\"metatags\">\n        <Attribute name=\"faculty\" value=\"hum\"/>\n    </DataObject>\n</PageMap>\n-->\n'),(2,'Det Juridiske Fakultet',20,'/grafik/images/topgrafik/jur.svg','/css/units/jura.css','/grafik/images/favicons/favicon_jur.ico','<!--\n<PageMap>\n    <DataObject type=\"metatags\">\n        <Attribute name=\"faculty\" value=\"jura\"/>\n    </DataObject>\n</PageMap>\n-->\n'),(3,'NAT',30,'/grafik/images/topgrafik/nat.svg','/css/units/nat.css','/grafik/images/favicons/favicon_nat.ico','<!--\n<PageMap>\n    <DataObject type=\"metatags\">\n        <Attribute name=\"faculty\" value=\"science\"/>\n    </DataObject>\n</PageMap>\n-->\n'),(4,'Det Samfundsvidenskabelige Fakultet',40,'/grafik/images/topgrafik/samf.svg','/css/units/samf.css','/grafik/images/favicons/favicon_samf.ico','<!--\n<PageMap>\n    <DataObject type=\"metatags\">\n        <Attribute name=\"faculty\" value=\"samf\"/>\n    </DataObject>\n</PageMap>\n-->\n'),(5,'Det Sundhedsvidenskabelige Fakultet',50,'/grafik/images/topgrafik/sund.svg','/css/units/sund.css','/grafik/images/favicons/favicon_sund.ico','<!--\n<PageMap>\n    <DataObject type=\"metatags\">\n        <Attribute name=\"faculty\" value=\"sund\"/>\n    </DataObject>\n</PageMap>\n-->\n'),(6,'Det Teologiske Fakultet',60,'/grafik/images/topgrafik/teo.svg','/css/units/teo.css','/grafik/images/favicons/favicon_teo.ico','<!--\n<PageMap>\n    <DataObject type=\"metatags\">\n        <Attribute name=\"faculty\" value=\"teo\"/>\n    </DataObject>\n</PageMap>\n-->\n'),(7,'KU',70,'/grafik/images/topgrafik/faelles.svg','/css/units/ku-faelles.css','/grafik/images/favicons/favicon_fa.ico','<!--\n<PageMap>\n    <DataObject type=\"metatags\">\n        <Attribute name=\"faculty\" value=\"fa\"/>\n    </DataObject>\n</PageMap>\n-->\n'),(8,'Det Natur- og Biovidenskabelige Fakultet',35,'/grafik/images/topgrafik/science.svg','/css/units/science.css','/grafik/images/favicons/favicon_science.ico','<!--\n<PageMap>\n    <DataObject type=\"metatags\">\n        <Attribute name=\"faculty\" value=\"science\"/>\n    </DataObject>\n</PageMap>\n-->\n');
/*!40000 ALTER TABLE `front_faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuldt_offentlige_perioder`
--

DROP TABLE IF EXISTS `fuldt_offentlige_perioder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuldt_offentlige_perioder` (
  `fop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `periode_start` date NOT NULL,
  `periode_slut` date NOT NULL,
  PRIMARY KEY (`fop_id`),
  KEY `periode_combi` (`periode_start`,`periode_slut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuldt_offentlige_perioder`
--

LOCK TABLES `fuldt_offentlige_perioder` WRITE;
/*!40000 ALTER TABLE `fuldt_offentlige_perioder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fuldt_offentlige_perioder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_accessrules`
--

DROP TABLE IF EXISTS `group_accessrules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_accessrules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL,
  `specification_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grp_acc_doc_ref` (`docid`),
  KEY `grp_acc_usr_ref` (`group_id`),
  KEY `grp_acc_spec_ref` (`specification_id`),
  CONSTRAINT `grp_acc_doc_ref` FOREIGN KEY (`docid`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `grp_acc_spec_ref` FOREIGN KEY (`specification_id`) REFERENCES `access_specifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `grp_acc_usr_ref` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_accessrules`
--

LOCK TABLES `group_accessrules` WRITE;
/*!40000 ALTER TABLE `group_accessrules` DISABLE KEYS */;
INSERT INTO `group_accessrules` VALUES (1,110201,1,2);
/*!40000 ALTER TABLE `group_accessrules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(31) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Admin');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_groups_delete after delete on groups
for each row
begin
	update documents set grp=1 where grp=old.id;
	delete g from grp_user g where g.grp=old.id; 
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `grp_user`
--

DROP TABLE IF EXISTS `grp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grp_user` (
  `grp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `user` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`grp`,`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_user`
--

LOCK TABLES `grp_user` WRITE;
/*!40000 ALTER TABLE `grp_user` DISABLE KEYS */;
INSERT INTO `grp_user` VALUES (1,1),(1,45),(1,337),(1,467),(113,334);
/*!40000 ALTER TABLE `grp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `href_target_2012_03_07_10_48_36`
--

DROP TABLE IF EXISTS `href_target_2012_03_07_10_48_36`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `href_target_2012_03_07_10_48_36` (
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `version` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(127) NOT NULL DEFAULT '',
  `text_value` longtext DEFAULT NULL,
  `int_value` int(8) DEFAULT NULL,
  `double_value` double DEFAULT NULL,
  `date_value` datetime DEFAULT NULL,
  KEY `vfields_docid_version_name_int_value_idx` (`docid`,`version`,`name`,`int_value`),
  KEY `vfields_docid_version_name_double_value_idx` (`docid`,`version`,`name`,`double_value`),
  KEY `vfields_docid_version_name_date_value_idx` (`docid`,`version`,`name`,`date_value`),
  KEY `vfields_docid_version_name_text_value_idx` (`docid`,`version`,`name`,`text_value`(16)),
  KEY `docid_version_name_idx` (`name`,`docid`,`version`),
  KEY `vfields_name_text_value_idx` (`name`,`text_value`(30))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `href_target_2012_03_07_10_48_36`
--

LOCK TABLES `href_target_2012_03_07_10_48_36` WRITE;
/*!40000 ALTER TABLE `href_target_2012_03_07_10_48_36` DISABLE KEYS */;
INSERT INTO `href_target_2012_03_07_10_48_36` VALUES (110201,'2012-03-07 10:40:15','TEASER','<p><a href=\"/110258.docid\" title=\"Loganalyse\"> flkhlkajjdhf </a></p>',NULL,NULL,NULL);
/*!40000 ALTER TABLE `href_target_2012_03_07_10_48_36` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internal_proxy_documents`
--

DROP TABLE IF EXISTS `internal_proxy_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internal_proxy_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(10) unsigned DEFAULT NULL,
  `version` datetime DEFAULT NULL,
  `dependent_on` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `docid_2` (`docid`,`version`),
  KEY `docid` (`docid`,`version`),
  KEY `dependent_on` (`dependent_on`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internal_proxy_documents`
--

LOCK TABLES `internal_proxy_documents` WRITE;
/*!40000 ALTER TABLE `internal_proxy_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `internal_proxy_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internal_proxy_fields`
--

DROP TABLE IF EXISTS `internal_proxy_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internal_proxy_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relation_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_2` (`name`,`relation_id`),
  KEY `name` (`name`),
  KEY `relation_id` (`relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internal_proxy_fields`
--

LOCK TABLES `internal_proxy_fields` WRITE;
/*!40000 ALTER TABLE `internal_proxy_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `internal_proxy_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywords` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(63) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
INSERT INTO `keywords` VALUES (5,''),(7,'1'),(3,'14'),(18,'15'),(20,'16'),(19,'17'),(21,'19'),(12,'20'),(1,'25'),(4,'27'),(2,'31'),(16,'32'),(11,'4'),(8,'43'),(9,'44'),(10,'47'),(6,'48'),(17,'6'),(15,'7'),(14,'8'),(13,'9');
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_check_errors`
--

DROP TABLE IF EXISTS `link_check_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_check_errors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` int(10) unsigned NOT NULL,
  `docid` int(8) unsigned NOT NULL,
  `url` varchar(1024) NOT NULL,
  `problem` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lce_report_ref` (`report_id`),
  KEY `lce_document_ref` (`docid`),
  CONSTRAINT `lce_document_ref` FOREIGN KEY (`docid`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lce_report_ref` FOREIGN KEY (`report_id`) REFERENCES `link_check_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8737 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_check_errors`
--

LOCK TABLES `link_check_errors` WRITE;
/*!40000 ALTER TABLE `link_check_errors` DISABLE KEYS */;
INSERT INTO `link_check_errors` VALUES (7934,205,110201,'/admin/subsite/../subsite/','unrecognized protocol');
/*!40000 ALTER TABLE `link_check_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_check_reports`
--

DROP TABLE IF EXISTS `link_check_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_check_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `run_id` int(10) unsigned NOT NULL,
  `subsite_id` int(16) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subsite_lc_run` (`subsite_id`,`run_id`),
  KEY `lcr_run_ref` (`run_id`),
  CONSTRAINT `lcr_run_ref` FOREIGN KEY (`run_id`) REFERENCES `link_check_runs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lcr_subsites_id_ref` FOREIGN KEY (`subsite_id`) REFERENCES `subsites2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_check_reports`
--

LOCK TABLES `link_check_reports` WRITE;
/*!40000 ALTER TABLE `link_check_reports` DISABLE KEYS */;
INSERT INTO `link_check_reports` VALUES (63,66,166),(91,67,166),(124,68,166),(157,69,166),(190,70,166),(1,1,753),(2,2,753),(3,3,753),(4,4,753),(5,5,753),(6,6,753),(7,7,753),(8,8,753),(9,9,753),(10,10,753),(11,11,753),(12,12,753),(13,13,753),(14,14,753),(15,15,753),(16,16,753),(17,17,753),(18,18,753),(19,19,753),(20,20,753),(21,21,753),(22,22,753),(23,23,753),(24,24,753),(25,25,753),(26,26,753),(27,27,753),(28,28,753),(29,29,753),(30,30,753),(31,31,753),(32,32,753),(33,33,753),(34,34,753),(35,35,753),(36,38,753),(37,39,753),(38,40,753),(39,41,753),(40,42,753),(41,43,753),(42,44,753),(78,66,753),(106,67,753),(139,68,753),(172,69,753),(205,70,753);
/*!40000 ALTER TABLE `link_check_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_check_runs`
--

DROP TABLE IF EXISTS `link_check_runs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_check_runs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `started` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_check_runs`
--

LOCK TABLES `link_check_runs` WRITE;
/*!40000 ALTER TABLE `link_check_runs` DISABLE KEYS */;
INSERT INTO `link_check_runs` VALUES (1,'2014-09-01 11:34:20'),(2,'2014-09-01 11:38:01'),(3,'2014-09-01 11:45:02'),(4,'2014-09-01 11:45:38'),(5,'2014-09-01 11:47:03'),(6,'2014-09-01 11:47:45'),(7,'2014-09-01 11:48:58'),(8,'2014-09-01 11:49:43'),(9,'2014-09-01 11:56:17'),(10,'2014-09-01 11:58:37'),(11,'2014-09-01 11:59:47'),(12,'2014-09-01 12:00:31'),(13,'2014-09-01 12:37:16'),(14,'2014-09-01 13:35:50'),(15,'2014-09-04 13:56:19'),(16,'2014-09-04 13:57:56'),(17,'2014-09-04 13:59:10'),(18,'2015-01-19 14:47:59'),(19,'2015-01-19 14:49:06'),(20,'2015-01-19 14:50:49'),(21,'2015-01-19 14:53:05'),(22,'2015-01-19 14:56:12'),(23,'2015-01-19 14:56:32'),(24,'2015-01-19 14:57:27'),(25,'2015-01-19 15:02:48'),(26,'2015-01-19 15:03:52'),(27,'2015-01-19 15:07:53'),(28,'2015-01-19 15:08:26'),(29,'2015-01-19 15:13:35'),(30,'2015-01-19 15:16:03'),(31,'2015-01-19 15:16:55'),(32,'2015-01-19 15:17:44'),(33,'2015-01-19 15:19:36'),(34,'2015-01-19 15:20:06'),(35,'2015-01-19 15:23:22'),(36,'2015-02-06 10:59:51'),(37,'2015-02-06 11:00:37'),(38,'2015-02-06 11:02:55'),(39,'2015-02-06 11:03:40'),(40,'2015-02-06 11:04:36'),(41,'2015-02-06 11:05:02'),(42,'2015-02-06 11:05:42'),(43,'2015-02-06 11:06:16'),(44,'2015-02-06 11:07:37'),(45,'2015-02-23 09:58:13'),(46,'2015-02-23 09:59:41'),(47,'2015-02-23 10:02:09'),(48,'2015-02-23 10:04:11'),(49,'2015-02-23 10:06:17'),(50,'2015-02-23 10:08:42'),(51,'2015-02-23 10:12:17'),(52,'2015-02-23 10:13:02'),(53,'2015-02-23 10:14:20'),(54,'2015-02-23 10:19:43'),(55,'2015-02-23 10:20:24'),(56,'2015-02-23 10:22:54'),(57,'2015-02-23 10:24:34'),(58,'2015-02-23 10:25:02'),(59,'2015-02-25 13:29:50'),(60,'2015-02-25 13:32:07'),(61,'2015-03-06 11:21:54'),(62,'2015-03-06 11:23:40'),(63,'2015-03-06 11:24:29'),(64,'2015-09-02 13:50:12'),(65,'2015-09-02 13:52:46'),(66,'2015-09-02 14:05:02'),(67,'2018-05-08 10:07:21'),(68,'2018-05-08 11:23:23'),(69,'2018-05-08 11:31:24'),(70,'2018-05-08 14:18:42');
/*!40000 ALTER TABLE `link_check_runs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linkchecker_indexed_versions`
--

DROP TABLE IF EXISTS `linkchecker_indexed_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkchecker_indexed_versions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned NOT NULL,
  `version` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lc_idx_v_unique_docid` (`docid`),
  KEY `lc_idx_v_lookup_idx` (`docid`,`version`),
  CONSTRAINT `lc_idx_v_docid_ref` FOREIGN KEY (`docid`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47055 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkchecker_indexed_versions`
--

LOCK TABLES `linkchecker_indexed_versions` WRITE;
/*!40000 ALTER TABLE `linkchecker_indexed_versions` DISABLE KEYS */;
INSERT INTO `linkchecker_indexed_versions` VALUES (2,1,'2012-02-10 09:53:24'),(3,110189,'2014-04-02 09:41:07'),(10,110196,'2011-05-19 14:12:45'),(11,110197,'2016-10-31 12:02:03'),(1,110201,'2018-02-16 15:12:22'),(19,115658,'2014-10-29 15:08:44'),(119,120935,'2014-03-10 14:09:54'),(825,120936,'2014-03-10 14:10:03'),(827,120938,'2014-03-10 14:11:37'),(135,158705,'2015-10-29 15:02:20'),(932,158706,'2015-12-10 10:22:56'),(933,158707,'2015-12-21 14:29:44'),(47036,159014,'2017-03-13 16:33:45'),(47037,159015,'2017-03-13 16:34:06'),(47038,159016,'2017-03-13 16:34:25');
/*!40000 ALTER TABLE `linkchecker_indexed_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linkchecker_statistics`
--

DROP TABLE IF EXISTS `linkchecker_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkchecker_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subsite_id` int(16) unsigned DEFAULT NULL,
  `check_time` datetime NOT NULL,
  `broken_count` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `lck_subsites_id_ref` (`subsite_id`),
  CONSTRAINT `lck_subsites_id_ref` FOREIGN KEY (`subsite_id`) REFERENCES `subsites2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkchecker_statistics`
--

LOCK TABLES `linkchecker_statistics` WRITE;
/*!40000 ALTER TABLE `linkchecker_statistics` DISABLE KEYS */;
INSERT INTO `linkchecker_statistics` VALUES (9,753,'2014-06-27 13:38:24',3459);
/*!40000 ALTER TABLE `linkchecker_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links_to`
--

DROP TABLE IF EXISTS `links_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links_to` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(8) unsigned NOT NULL,
  `dest` int(8) unsigned DEFAULT NULL,
  `obvius_uri` varchar(4048) DEFAULT NULL,
  `external_url` varchar(4048) DEFAULT NULL,
  `from_version` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `links_to_source` (`source`,`from_version`),
  KEY `links_to_dest` (`dest`),
  CONSTRAINT `links_to_dest_ref` FOREIGN KEY (`dest`) REFERENCES `documents` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `links_to_source_ref` FOREIGN KEY (`source`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=490113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links_to`
--

LOCK TABLES `links_to` WRITE;
/*!40000 ALTER TABLE `links_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `links_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_sessions`
--

DROP TABLE IF EXISTS `login_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_sessions` (
  `login` varchar(31) NOT NULL,
  `session_id` char(32) NOT NULL,
  `last_access` int(12) NOT NULL,
  `permanent` tinyint(1) NOT NULL,
  `ip_match` varchar(11) NOT NULL,
  `sso_session_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `login` (`login`),
  KEY `login_sessions_sso_ref` (`sso_session_id`),
  CONSTRAINT `login_sessions_sso_ref` FOREIGN KEY (`sso_session_id`) REFERENCES `sso_sessions` (`sso_session_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_sessions`
--

LOCK TABLES `login_sessions` WRITE;
/*!40000 ALTER TABLE `login_sessions` DISABLE KEYS */;
INSERT INTO `login_sessions` VALUES ('admin','9d560405172eb7c4564f2da7ea615422',1551096377,0,'172.19.0',142);
/*!40000 ALTER TABLE `login_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_path_statistics`
--

DROP TABLE IF EXISTS `monthly_path_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_path_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(512) DEFAULT NULL,
  `yearmonth` int(6) unsigned NOT NULL,
  `subsite_id` int(16) unsigned DEFAULT NULL,
  `pages` int(16) DEFAULT NULL,
  `bandwidth` int(16) DEFAULT NULL,
  `entry` int(16) DEFAULT NULL,
  `exit` int(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `path_idx` (`path`(255)),
  KEY `yearmonth_path_idx` (`yearmonth`,`path`(255)),
  KEY `subsite_ym_idx` (`subsite_id`,`yearmonth`),
  CONSTRAINT `mstats_subsite_ref` FOREIGN KEY (`subsite_id`) REFERENCES `subsites2` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4581324 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_path_statistics`
--

LOCK TABLES `monthly_path_statistics` WRITE;
/*!40000 ALTER TABLE `monthly_path_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_path_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `newsboxid` int(8) unsigned NOT NULL DEFAULT 0,
  `seq` int(8) unsigned NOT NULL DEFAULT 0,
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`newsboxid`,`seq`),
  KEY `start` (`start`),
  KEY `end` (`end`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsboxes`
--

DROP TABLE IF EXISTS `newsboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsboxes` (
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `type` enum('chronological','reverse_chronological','manual_placement') NOT NULL DEFAULT 'chronological',
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsboxes`
--

LOCK TABLES `newsboxes` WRITE;
/*!40000 ALTER TABLE `newsboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_documents_map`
--

DROP TABLE IF EXISTS `newsletter_documents_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_documents_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `docid` bigint(20) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `topgraphic` varchar(255) DEFAULT '',
  `template` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `docid` (`docid`)
) ENGINE=InnoDB AUTO_INCREMENT=577209 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_documents_map`
--

LOCK TABLES `newsletter_documents_map` WRITE;
/*!40000 ALTER TABLE `newsletter_documents_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_documents_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_links`
--

DROP TABLE IF EXISTS `newsletter_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_links` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `newsletter_id` bigint(20) NOT NULL,
  `link` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `newsletter_id` (`newsletter_id`,`link`),
  CONSTRAINT `newsletter_links_ibfk_1` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletter_newsletters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_links`
--

LOCK TABLES `newsletter_links` WRITE;
/*!40000 ALTER TABLE `newsletter_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_newsletters`
--

DROP TABLE IF EXISTS `newsletter_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_newsletters` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `newsletter_map_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `creation_date` datetime NOT NULL,
  `sent_date` datetime NOT NULL,
  `show_in_public` tinyint(4) NOT NULL DEFAULT 1,
  `subject` varchar(255) NOT NULL,
  `html_content` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `newsletter_map_id` (`newsletter_map_id`),
  KEY `map_id_sent_date_idx` (`newsletter_map_id`,`sent_date`),
  KEY `map_id_create_date_idx` (`newsletter_map_id`,`creation_date`),
  KEY `status_idx` (`newsletter_map_id`,`status`),
  CONSTRAINT `newsletter_newsletters_ibfk_1` FOREIGN KEY (`newsletter_map_id`) REFERENCES `newsletter_documents_map` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_newsletters`
--

LOCK TABLES `newsletter_newsletters` WRITE;
/*!40000 ALTER TABLE `newsletter_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_stats`
--

DROP TABLE IF EXISTS `newsletter_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_stats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `newsletter_id` bigint(20) NOT NULL,
  `linkid` bigint(20) NOT NULL,
  `subscriber_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `newsletter_map_id` (`newsletter_id`),
  KEY `newsletter_docid_idx` (`newsletter_id`,`linkid`),
  KEY `newsletter_stats_ibfk_2` (`linkid`),
  CONSTRAINT `newsletter_stats_ibfk_1` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletter_newsletters` (`id`),
  CONSTRAINT `newsletter_stats_ibfk_2` FOREIGN KEY (`linkid`) REFERENCES `newsletter_links` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_stats`
--

LOCK TABLES `newsletter_stats` WRITE;
/*!40000 ALTER TABLE `newsletter_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_subscribers`
--

DROP TABLE IF EXISTS `newsletter_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_subscribers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `newsletter_map_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `newsletter_map_id` (`newsletter_map_id`),
  CONSTRAINT `newsletter_subscribers_ibfk_1` FOREIGN KEY (`newsletter_map_id`) REFERENCES `newsletter_documents_map` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_subscribers`
--

LOCK TABLES `newsletter_subscribers` WRITE;
/*!40000 ALTER TABLE `newsletter_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_subscribers_map`
--

DROP TABLE IF EXISTS `newsletter_subscribers_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_subscribers_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscriber_id` bigint(20) NOT NULL,
  `newsletter_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriber_id` (`subscriber_id`,`newsletter_id`),
  KEY `newsletter_status_idx` (`newsletter_id`,`status`),
  CONSTRAINT `newsletter_subscribers_map_ibfk_1` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscribers` (`id`),
  CONSTRAINT `newsletter_subscribers_map_ibfk_2` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletter_newsletters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_subscribers_map`
--

LOCK TABLES `newsletter_subscribers_map` WRITE;
/*!40000 ALTER TABLE `newsletter_subscribers_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_subscribers_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newslists`
--

DROP TABLE IF EXISTS `newslists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newslists` (
  `docid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newslists`
--

LOCK TABLES `newslists` WRITE;
/*!40000 ALTER TABLE `newslists` DISABLE KEYS */;
/*!40000 ALTER TABLE `newslists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_requests`
--

DROP TABLE IF EXISTS `password_reset_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint(5) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `password_reset_request_user_ref` (`user_id`),
  CONSTRAINT `password_reset_request_user_ref` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_requests`
--

LOCK TABLES `password_reset_requests` WRITE;
/*!40000 ALTER TABLE `password_reset_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `path_docid`
--

DROP TABLE IF EXISTS `path_docid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `path_docid` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(1024) DEFAULT NULL,
  `docid` int(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `path_docid`
--

LOCK TABLES `path_docid` WRITE;
/*!40000 ALTER TABLE `path_docid` DISABLE KEYS */;
/*!40000 ALTER TABLE `path_docid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `path_tree`
--

DROP TABLE IF EXISTS `path_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `path_tree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(8) unsigned NOT NULL,
  `child` int(8) unsigned NOT NULL,
  `depth` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dt_parent_child` (`parent`,`child`,`depth`),
  UNIQUE KEY `dt_child_parent` (`child`,`parent`,`depth`),
  UNIQUE KEY `dt_parent_depth` (`parent`,`depth`,`child`),
  UNIQUE KEY `dt_child_depth` (`child`,`depth`,`parent`),
  CONSTRAINT `path_tree_child_ref` FOREIGN KEY (`child`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `path_tree_parent_ref` FOREIGN KEY (`parent`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `path_tree`
--

LOCK TABLES `path_tree` WRITE;
/*!40000 ALTER TABLE `path_tree` DISABLE KEYS */;
INSERT INTO `path_tree` VALUES (1,1,1,0),(32,1,110189,1),(35,1,110196,1),(34,1,110197,1),(38,1,110201,1),(37,1,115658,1),(63,1,120935,2),(78,1,120936,3),(79,1,120938,3),(64,1,158705,2),(80,1,158706,3),(81,1,158707,3),(33,1,159014,1),(69,1,159015,2),(82,1,159016,3),(36,1,159029,1),(71,1,159030,2),(72,1,159031,2),(2,110189,110189,0),(39,110189,120935,1),(65,110189,120936,2),(66,110189,120938,2),(67,110189,158706,2),(68,110189,158707,2),(3,110196,110196,0),(4,110197,110197,0),(5,110201,110201,0),(40,110201,158705,1),(6,115658,115658,0),(9,120935,120935,0),(43,120935,120936,1),(44,120935,120938,1),(41,120935,158706,1),(42,120935,158707,1),(11,120936,120936,0),(12,120938,120938,0),(10,158705,158705,0),(13,158706,158706,0),(14,158707,158707,0),(7,159014,159014,0),(45,159014,159015,1),(70,159014,159016,2),(15,159015,159015,0),(46,159015,159016,1),(16,159016,159016,0),(8,159029,159029,0),(48,159029,159030,1),(47,159029,159031,1),(17,159030,159030,0),(18,159031,159031,0);
/*!40000 ALTER TABLE `path_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `path_tree_with_paths`
--

DROP TABLE IF EXISTS `path_tree_with_paths`;
/*!50001 DROP VIEW IF EXISTS `path_tree_with_paths`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `path_tree_with_paths` (
  `id` tinyint NOT NULL,
  `parent` tinyint NOT NULL,
  `child` tinyint NOT NULL,
  `depth` tinyint NOT NULL,
  `parent_path` tinyint NOT NULL,
  `child_path` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `peoplexs`
--

DROP TABLE IF EXISTS `peoplexs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peoplexs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MATCHVACATURES3548` varchar(255) DEFAULT NULL,
  `MATCHVACATURES3997` varchar(255) DEFAULT NULL,
  `MATCHVACATURES4924` varchar(2048) DEFAULT '',
  `MATCHVACATURES4929` varchar(2048) DEFAULT '',
  `MATCHVACATURES4932` varchar(255) DEFAULT NULL,
  `MATCHVACATURES4933` varchar(255) DEFAULT NULL,
  `MATCHVACATURES4939` varchar(2048) DEFAULT '',
  `MATCHVACATURES4956` varchar(255) DEFAULT NULL,
  `PORTALSNAME` varchar(255) DEFAULT NULL,
  `VACATUREID` int(8) NOT NULL,
  `VACATURESAANTALPOSITIES` double(6,1) DEFAULT NULL,
  `VACATURESACCOUNTNAMEONPORTAL` varchar(255) DEFAULT NULL,
  `VACATURESACCOUNTNAMEONPORTAL2` varchar(255) DEFAULT NULL,
  `VACATURESANSAETTELSESDATO` date DEFAULT NULL,
  `VACATURESANSAETTELSESDATONY` date DEFAULT NULL,
  `VACATURESANSAETTELSESFORM` varchar(255) DEFAULT NULL,
  `VACATURESANSAETTELSESFORMUNRESOLVEDVALUE` int(7) DEFAULT NULL,
  `VACATURESBEDRIJFID` varchar(255) DEFAULT NULL,
  `VACATURESDATUMTIJDLTSTEPUB` datetime DEFAULT NULL,
  `VACATURESDATUMTIJDREG` datetime DEFAULT NULL,
  `VACATURESDATUMVERWIJDEREN` date DEFAULT NULL,
  `VACATURESEMAILKONTAKTPERSON` varchar(255) DEFAULT NULL,
  `VACATURESJOBNETEMAIL` varchar(255) DEFAULT NULL,
  `VACATURESJOBNETFORNAVN` varchar(255) DEFAULT NULL,
  `VACATURESJOBNETTELEFON` varchar(255) DEFAULT NULL,
  `VACATURESNAAM` varchar(255) DEFAULT NULL,
  `VACATURESOMSCHRIJVING` text DEFAULT NULL,
  `VACATURESPUBLISHED` int(1) DEFAULT NULL,
  `VACATURESSTILLINGKONTAKTEFTERNAVN` varchar(255) DEFAULT NULL,
  `VACATURESJOBNETEFTERNAVN` varchar(255) DEFAULT NULL,
  `VACATURESVACANCYTYPE` varchar(255) DEFAULT NULL,
  `VACATURESVACANCYTYPEUNRESOLVEDVALUE` int(7) DEFAULT NULL,
  `VACATURESVACATUREID` int(7) DEFAULT NULL,
  `VACATURESVEREISTEOPLEIDING` text DEFAULT NULL,
  `VACATURESRELEVANTLINK1` varchar(255) DEFAULT NULL,
  `VACATURESRELEVANTLINK2` varchar(255) DEFAULT NULL,
  `VACATURESACCOUNTPORTALDESCRIPTION2` varchar(255) DEFAULT NULL,
  `VACATURESNAMEONPORTAL` varchar(2048) DEFAULT NULL,
  `VACATURESACCOUNTPORTALDESCRIPTION` varchar(255) DEFAULT NULL,
  `is_multi` int(1) DEFAULT NULL,
  `portal_id` int(7) DEFAULT NULL,
  `report_id` int(7) DEFAULT NULL,
  `language` varchar(6) DEFAULT NULL,
  `MATCHVACATURES5292` varchar(2048) DEFAULT '',
  `MATCHVACATURES5293` varchar(255) DEFAULT '',
  `MATCHVACATURES5353` varchar(255) DEFAULT '',
  `MATCHVACATURES5354` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `VACATURESDATUMVERWIJDEREN` (`VACATURESDATUMVERWIJDEREN`),
  KEY `language` (`language`),
  KEY `MATCHVACATURES4956` (`MATCHVACATURES4956`),
  KEY `MATCHVACATURES4929` (`MATCHVACATURES4929`(767)),
  KEY `MATCHVACATURES4939` (`MATCHVACATURES4939`(767)),
  KEY `MATCHVACATURES4924` (`MATCHVACATURES4924`(767)),
  KEY `VACATUREID` (`VACATUREID`),
  KEY `VACATUREID_2` (`VACATUREID`)
) ENGINE=InnoDB AUTO_INCREMENT=7531 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peoplexs`
--

LOCK TABLES `peoplexs` WRITE;
/*!40000 ALTER TABLE `peoplexs` DISABLE KEYS */;
/*!40000 ALTER TABLE `peoplexs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protected_access_logging`
--

DROP TABLE IF EXISTS `protected_access_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protected_access_logging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned DEFAULT NULL,
  `timeofentry` datetime NOT NULL,
  `userinfo` text NOT NULL,
  `requestinfo` text NOT NULL,
  `message` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protected_access_logging`
--

LOCK TABLES `protected_access_logging` WRITE;
/*!40000 ALTER TABLE `protected_access_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `protected_access_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `public_path_docid`
--

DROP TABLE IF EXISTS `public_path_docid`;
/*!50001 DROP VIEW IF EXISTS `public_path_docid`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `public_path_docid` (
  `docid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `public_versions_with_path`
--

DROP TABLE IF EXISTS `public_versions_with_path`;
/*!50001 DROP VIEW IF EXISTS `public_versions_with_path`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `public_versions_with_path` (
  `docid` tinyint NOT NULL,
  `version` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `public` tinyint NOT NULL,
  `valid` tinyint NOT NULL,
  `lang` tinyint NOT NULL,
  `user` tinyint NOT NULL,
  `path` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `public_vfields_with_path`
--

DROP TABLE IF EXISTS `public_vfields_with_path`;
/*!50001 DROP VIEW IF EXISTS `public_vfields_with_path`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `public_vfields_with_path` (
  `path` tinyint NOT NULL,
  `docid` tinyint NOT NULL,
  `version` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `text_value` tinyint NOT NULL,
  `int_value` tinyint NOT NULL,
  `double_value` tinyint NOT NULL,
  `date_value` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pure_portal_org_uuid_map`
--

DROP TABLE IF EXISTS `pure_portal_org_uuid_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pure_portal_org_uuid_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_danish_ci NOT NULL,
  `org_id` int(10) unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8_danish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pp_org_uuid_map_org_idx` (`org_id`),
  KEY `pp_org_uuid_map_uuid_idx` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=1721 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pure_portal_org_uuid_map`
--

LOCK TABLES `pure_portal_org_uuid_map` WRITE;
/*!40000 ALTER TABLE `pure_portal_org_uuid_map` DISABLE KEYS */;
INSERT INTO `pure_portal_org_uuid_map` VALUES (1,'Afdelinger',120000,'30b86a9c-490a-4cba-b0e5-c97efd99b29b'),(2,'PH.d.-studienævnet for Teologi',111600,'83d4a1d5-bdd6-45ca-bc6d-6ac7a4ad4754'),(3,'TEO Fakultetssekretariat',111000,'fddddb5b-f1d4-4c6f-863a-ff624159ac3f'),(4,'Afdelinger, Afdeling for bibelsk eksegese',120100,'d947ab7c-d76b-4ff0-81e3-7c49203ce34f'),(5,'Det Teologiske Fakultet',100000,'ecc852d4-c723-45fb-b425-0be18e9de422'),(6,'Afdelinger, Afdeling for systematisk teologi',120300,'d568e08f-10d2-4b9d-b9a7-a00c4caf774c'),(7,'Center for Subjektivitetsforskning',124500,'1bed3de6-ab84-48dc-9096-640204315719'),(8,'Afdelinger, Afdeling for kirkehistorie',120200,'fe43f110-ba6b-4692-9016-f14ca61e3f8b'),(9,'TEO Center for afrika',126000,'04f420ff-76f5-4b88-b120-f13c736fb774'),(10,'Forskerskolen Religion og Samfund',127500,'657a6159-66d8-4356-a282-27c63156aed5'),(11,'SAMF Fakultetssekretariatet, Det Samfundsvidenskabelige Fakultet',201000,'a5a3afd6-d319-40d1-a0f6-e67f54774197'),(12,'TEO Det teologiske studienævn',125000,'2e6ae569-06a5-49e5-b5ca-51e792791a46'),(13,'Det Samfundsvidenskabelige Fakultet',200000,'b68212c4-f1f3-4ce5-9986-fe7a84287005'),(14,'SAMF fakultetfællesudgifter, Fællesudgifter',212000,'d2878780-eca3-4abf-ba41-78c4b352c3b1'),(15,'Økonomisk Institut',220000,'2c5cccf4-11ea-417d-99cc-17adba6a71b7'),(16,'Ph.d studienævnet, Økonomisk Institut',225000,'54551ef5-987d-4602-a2d1-35cd54e07c7f'),(17,'Økonomisk Institut, Økonomisk Studienævn',223000,'77b7da8f-a50e-4501-8369-4bea8f9b59b5'),(18,'Økonomisk Institut, Centre',227000,'995e2148-21af-46c2-abf5-c84899723d1d'),(19,'Centre for Applied Microeconometrics (CAM)',36090,'b7e1cb0b-04b7-4156-9d64-e6b3dd97d079'),(20,'Økonomisk Institut, Development Economics Research Group (DERG)',227400,'9e55a8d2-b15d-4455-ac6f-385d0e56d758'),(21,'Economic Policy Research Unit (EPRU)',36093,'5362e30b-155e-4565-88e6-980d8a9186a9'),(22,'Institut for Statskundskab, Statskundskab - reception',230100,'a431928a-7ec5-46c5-9695-2d249ffd34b6'),(23,'Institut for Statskundskab, Institutledelse',230200,'65859930-bcb2-48cf-aac5-1b283ccab1d0'),(24,'Institut for Statskundskab',230000,'53962169-2675-4123-96e5-14d1e2b26aa0'),(25,'Institutadministration',230300,'fb3aa9c2-6ab7-49f7-8478-ee54ef20adbf'),(26,'Institut for Statskundskab, Bibliotek',230400,'5afb2a48-f918-4cea-9d77-2101e1c96756'),(27,'Institut for Statskundskab, Statskundskab studienævn',233000,'a3a1a674-cbd6-41fb-8885-40eeb1a3b0d7'),(28,'Institut for Statskundskab, Centre',237000,'b8bfe2e6-be3d-4ae3-b39c-a0802f3163dd'),(29,'Institut for Statskundskab, Statskundskab, Ph.d.-studienævn',235000,'88d86886-ebe3-4ba7-a66e-b80f3c7e41c2'),(30,'Den Politologiske Forskerskole',236100,'c3a54d26-acda-470d-a6fb-f33c7d8e38ea'),(31,'Forskerskole',36126,'69570dca-d60f-471f-8ba2-b756727cb708'),(32,'Center for Baltiske studier',237100,'2cd235a6-56fa-4eb8-81bd-6c4b14615b8b'),(33,'Ph.d.-studienævn, Antropologi',36156,'59fbdab3-1724-46b3-8706-1100b3889129'),(34,'Institut for Antropologi, Antropologi studienævn',243000,'96feacfa-fd2a-436b-a1dc-0cf2a52a4228'),(35,'Institut for Antropologi',240000,'9efd9558-66aa-4c8a-be75-efac0a46a2cd'),(36,'Sociologisk Institut',250000,'e073e3b2-ce3d-41a5-bc87-64ede9925e39'),(37,'EDB-afdelingen',36150,'915ec82e-115f-4a17-ad0e-434546d202f0'),(38,'Forskerskole',246000,'cf43a21c-7f30-4291-b5fb-30dfc5718da2'),(39,'Sociologisk Institut, Sociologisk studienævn',253000,'9d20a3d3-3ad2-4e09-907c-eca2ebb63687'),(40,'Sociologisk Institut, Center for Forskning i Eksistens og Samfund',257300,'4af50733-446a-4abd-a1fd-b6c97e112cf0'),(41,'Sociologisk Institut, Ph.d.-studienævn Sociologi',255000,'9f508bef-b7a5-473d-b174-675020734b22'),(42,'Sociologisk Institut, Kønsforskning',257100,'9ef2eca2-1af6-4beb-b62b-50496b6e8a12'),(43,'Sociologisk Institut, FAOS',257200,'91466ec9-74de-4fd2-aa52-88a70b99d377'),(44,'Sociologisk Institut, Center for Bolig og Velfærd',257000,'5be5f9ad-60cb-4cf6-9f68-2af0b76d49ee'),(45,'LUKKET: NIAS',280000,'44feba0a-1b38-4d71-a998-c5b69d3f95b9'),(46,'Institut for Psykologi',263000,'e1efdc00-8ead-477c-9637-a527d50fc68c'),(47,'Institut for Psykologi, Bibliotek',260400,'641e132a-5bdb-4461-881f-0630b179d71b'),(48,'Institut for Psykologi',260000,'a3228b5a-2e34-439f-9ec1-fc5abb9a3383'),(49,'Institut for Psykologi, Universitetsklinikken',268000,'d97c5d63-b4ee-43a8-94e6-dd56e3bfce7d'),(50,'Center for anvendt Datalogi',270000,'c4e1e23c-c4af-4c26-bcaf-53e8abe78e2c'),(51,'Ph.d.-Studienævn, Psykologi',36216,'4597cf68-a30c-4b36-8303-a001cdbf1fa7'),(52,'Institut for Psykologi, Forskerskole',266000,'dc657c6d-f8f6-4da0-80fd-1bb51b111966'),(53,'Det Sundhedsvidenskabelige Fakultet',300000,'74498ec3-040a-402d-a0d8-0a41e7a6cbe8'),(54,'Fakultetsservice, Fælles og sekretariat',302400,'4e5124e8-312f-4e20-8572-c3414747eb3a'),(55,'Fakultetsservice, Fakultetssekretariatet',301200,'ee756c63-cc21-42a8-8bf3-32a36b4e6fa2'),(56,'Fakultetsservice, 2012 Eksamenskontoret',301700,'d970983d-b6ac-4821-93c4-f698f1b5c455'),(57,'Fakultetsservice, Afdeling for uddannelse og studerende',302300,'0e3f2829-a184-4fa8-99f1-1b9b6828c8c5'),(58,'Fakultetsservice, HR',301600,'ec5c802f-b208-4cfb-b901-9a37036b0664'),(59,'Fakultetsservice, SUND IT',301900,'64d79123-1fdf-41bc-a20c-ce38b2e0ec66'),(60,'Fakultetsservice, Ledelsessekretariatet',301300,'ea180b6b-4ede-4473-8181-4cb9b0c5a854'),(61,'Patentering',36330,'52c723fe-02bd-428b-a4a2-87102969d8cb'),(62,'LUKKET: 2012 Afdeling for Eksperimentel Medicin',305000,'98d72935-30da-46f9-a67e-037aca6ea224'),(63,'Teknologioverførsel',36333,'29e77d60-fb9a-4df4-90f0-ccf2e57c8aba'),(64,'2012 Afdeling for Eksperimentel Medicin, 2012 Dyreeksperimentel service',305100,'ddd2f348-c8ef-4f3d-af78-56089a13cf2a'),(65,'2012 Afdeling for Eksperimentel Medicin, 2012 Afd f. komparativ medicin',305200,'a3fe70c1-d2c7-4556-9f48-36bddf863d4f'),(66,'Neuropsykiatrisk Laboratorium',323100,'2fff7166-b5ae-46b1-b93e-bc8191475770'),(67,'Farmakologisk Institut',323000,'654606b0-d9f2-4554-9482-15471dd6aabc'),(68,'Institut for Medicinsk Mikrobiologi og Immunologi',36351,'d0461cec-5e95-4499-abd2-c515062262e6'),(69,'Forskerskole, Danish Cardiovascular Research Acade',323200,'0d7f9b7c-1028-41a6-b2d7-6312570bf8d5'),(70,'Kursus i International Sundhed',36357,'65dcfb1b-2bb0-4cb2-97bf-4e37de381ac7'),(71,'LUKKET: Medicinsk Fysiologisk Institut',325000,'0e006677-7cfb-4195-aa80-a34f6f35b035'),(72,'Afdeling for Nyre og Kredsløb',36399,'b5abcd99-1f37-44c2-b25e-ec6ad2842b48'),(73,'Undervisningsafdeling',36402,'9189cbf7-73e9-46e8-b7b9-afac4ba216d9'),(74,'Afdeling for Neurofysiologi',325500,'d03433a7-7288-4d73-89d6-73ab2fe4a99d'),(75,'Afdeling for Cellulær og Molekylær Fysiologi',325200,'439d01fc-745d-4626-b4dc-4d4f7387d4b3'),(76,'Øjenpatologisk Institut',36375,'0bf52c63-9383-4e00-8799-6341e6dbf38b'),(77,'Afdeling for Endokrinologi og Metabolisme',36393,'996c8fd0-ab87-4db4-b787-1d65638e4f29'),(78,'Neuropatologisk Laboratorium',327100,'7d698b88-d48e-4362-be3e-17b74b72439d'),(79,'Institut for Molekylær Patologi',327000,'9c9876b9-52ae-40ea-8e9a-259018e4c991'),(80,'Klinisk Institut for Kirurgi og Anæstesiologi',36435,'e27dc1bf-0a67-4380-b794-5e7d5412f342'),(81,'Institut for Klinisk Medicin, Gynækologi, Obstetrik og Pædiatri',328400,'142dd3f4-a58a-4aed-83cc-5406a6df5f3d'),(82,'Institut for Folkesundhedsvidenskab, Forskerskole i folkesundhedsvidenskab',331500,'cb34be58-c5d7-471c-a3d6-0acc5707683e'),(83,'Institut for Klinisk Medicin, Neuro- og Sansefag',328600,'f0e003f9-620a-4ef1-ab71-3019593733bb'),(84,'Institut for Folkesundhedsvidenskab',330000,'f4de443c-442d-4605-929f-04c36e171719'),(85,'Institut for Klinisk Medicin',328000,'19769063-5adc-414e-baf2-5164ea032bff'),(86,'Klinisk Institut for Oto-Rhino-Laryngolo, Opthalmo',328100,'8f4a7f50-a8a6-488c-ab6a-27749fc7f159'),(87,'Institut for Klinisk Medicin, Intern Medicin',328300,'05898f1b-39d1-4779-ab74-9b430ad69801'),(88,'Institut for Folkesundhedsvidenskab, Medicinsk Museion',330500,'dc8554f6-9202-42ec-8898-7964c3765f29'),(89,'Proteinlaboratoriet',327200,'c4469174-b98b-4913-96b9-43e8ced2b1d1'),(90,'Institut for Klinisk Medicin, Diagnostiske Fag',328500,'54abd28e-c265-4f37-8cd3-3984da4e6547'),(91,'Institut for Folkesundhedsvidenskab, Afdeling for Almen Medicin',332000,'68202792-2d62-42ca-8a13-b0cd87656ef2'),(92,'Institut for Folkesundhedsvidenskab, Tidlig Patientkontakt',332200,'0781857b-c579-4dd6-b0c2-9aadbd40a787'),(93,'Institut for Folkesundhedsvidenskab, Biostatistisk afdeling',333000,'fde18aad-7eec-4af4-b2d1-d3a6191ae2cd'),(94,'Forskerskole i biostatistik',36468,'15792250-a9e7-4a8f-8014-fdfebc7c731e'),(95,'Institut for Folkesundhedsvidenskab, Pleje, Observation og Førstehjælp',332100,'4aa82d5f-d7a0-43b6-ac40-0c4183c3826f'),(96,'Afdeling for Medicinsk Videnskabsteori',334000,'e76b5776-2d0a-4b59-aa4e-8c1ce5546d1f'),(97,'Institut for Folkesundhedsvidenskab, MVT - undervisningsafd., eksterne undervisere',334100,'db14b10b-a3c4-44db-8ad9-91ecc6dacbce'),(98,'Institut for Folkesundhedsvidenskab, Almen Medicin, eksterne undervisere',332300,'e1ab8bf4-6463-4f50-839a-98cd5d086009'),(99,'Institut for Folkesundhedsvidenskab, Miljø- og Arbejdsmedicin',337100,'ce41b8d5-a8e1-4917-afc2-9e904b6f615e'),(100,'Afdeling for Medicinsk Kvinde- og Kønsforskning',36513,'2fc88a30-b6fe-4ac8-b287-5d285b3d600e'),(101,'Institut for Folkesundhedsvidenskab, Medicinsk Sociologi',336100,'14bc1e39-1fe4-4be3-a809-8816e2a7606e'),(102,'Institut for Folkesundhedsvidenskab, Klinisk Social Medicin',336200,'fdf797a0-857d-4ff4-bfdf-a6e3bf986a1f'),(103,'Institut for Folkesundhedsvidenskab, Afdeling for Sundhedstjenesteforskning',335000,'76f62983-d4d5-42ee-bd80-2dc8e8a7eabe'),(104,'Institut for Folkesundhedsvidenskab, Afdeling for Miljø og Sundhed',337000,'70a26b2d-875b-4171-b3f5-948d69737eb4'),(105,'Institut for Folkesundhedsvidenskab, Afdeling for Social Medicin',336000,'1f36953b-2920-4416-94d9-dabe87e4f119'),(106,'LUKKET: Afdeling for International Sundhed',338500,'3bd03a3d-cc64-401f-a359-4751d15a4482'),(107,'Forskerskole - Celle- og Vævsbiologi',36534,'f007ec0f-a167-4ee2-a54f-43919b141f53'),(108,'Afdeling for Sundhedspsykologi',36519,'83e997a9-91cf-4874-a734-a7459d714803'),(109,'Institut for Folkesundhedsvidenskab, Center for Epidemiologi og Screening',339500,'00c3d3b9-037b-40d1-ad43-b6a834844a1a'),(110,'Medicinsk Anatomisk Institut, Undervisningsafdelin',36531,'7126ec8c-a41f-43ff-b104-dae9d8e6f917'),(111,'LUKKET: Medicinsk-anatomisk Institut',340000,'a765531c-51ed-424a-9386-deef72e16b3d'),(112,'Cellebiologi I',36543,'311bb4b7-4707-48b9-9e15-8b99e9c10a8c'),(113,'Cellebiologi II',344000,'c6f4b244-6209-4481-a7b3-832ccdd52a30'),(114,'Neurobiologi II',36558,'1b590c0e-a51e-4710-9253-b583099dc9d1'),(115,'LUKKET: Institut for Medicinsk Biokemi og Genetik',36564,'d29bd0f0-1dc2-4370-85af-fdfced6b8add'),(116,'Neurobiologi I',347000,'2677bcb8-44a8-4a22-912c-b928f48a4ab8'),(117,'Institut for medicinsk biokemi og genetik, Afd. C',36576,'044eb683-72a1-4cd0-9ea4-5d0cd1079b22'),(118,'Retsmedicinsk Institut, Afdeling for Retspatologi',361100,'49ff2558-9afe-4cd4-88b8-ac499ca11554'),(119,'Forskningslaboratoriet',360200,'27e69e2f-674c-4c11-889c-37990ad8d7c3'),(120,'Institut for medicinsk biokemi og genetik, Afd. G',355000,'edcc6d3c-4493-4fc4-ad07-563758fe6d79'),(121,'Institut for medicinsk biokemi og genetik, NMR-Cen',36582,'2f13c339-a892-417f-ab0e-b772c2448c7a'),(122,'Institut for medicinsk biokemi og genetik, Undervi',36585,'4d5f956d-81d4-40bd-9b22-0f22b275eb55'),(123,'Retsmedicinsk Institut',360000,'d9c7e26c-0323-4d11-93d7-132d1f0d597a'),(124,'Retsmedicinsk Institut, Administration',360100,'cc587ae3-56ae-4e45-a25a-5a18d5151c78'),(125,'Forskerskolen i Genmedicin',36567,'dcbc53f5-782c-4578-95a2-7c589e2dc1ee'),(126,'Institut for medicinsk biokemi og genetik, Afd. B',36573,'9bded27c-49e6-4c98-8bb5-b1f96fdc3348'),(127,'Institut for medicinsk biokemi og genetik, Afd. A',36570,'1cfd027b-7e9a-4bc1-99d5-83aeb1b7af1d'),(128,'Retsmedicinsk Institut, RI afdeling for retsodontologi',361400,'077bed0a-1164-49ec-8a1c-36c636f7158a'),(129,'Odontologisk Institut, Administrationen',380100,'49765918-7c1c-42ee-9dec-0ed4ae6a20db'),(130,'Afdeling for Oral Medicin',380300,'bc6cb9ab-9f7c-43ff-a55b-d740b468fc29'),(131,'Afdeling for Dentalmaterialer',36630,'61a0e3f7-542e-4822-8037-1ba6ebedeaf6'),(132,'Retsmedicinsk Institut, Afdeling for Retskemi',363100,'88ca44e1-0806-4cf9-9754-2a591828a103'),(133,'Odontologisk Institut, Sektion 01',381100,'05d2cf35-6755-4f05-b531-cb526e3fb2cf'),(134,'Odontologisk Institut / Tandlægeskolen',380000,'ce6b606b-82d5-4b7f-adb0-a80c18150a7c'),(135,'Retsmedicinsk Institut, Antropologisk Laboratorium',361200,'448e654c-5940-479a-9804-780971b98ae8'),(136,'Retsmedicinsk Institut, Afdeling for Retsgenetik',362100,'66e3ccd4-fad1-4780-adf0-dc6e51c2d699'),(137,'Odontologisk Institut, Afdeling for Ortodonti',36642,'f754172a-0d6d-4212-8810-c1b5f5ee6f23'),(138,'Lab. for fælles mikrobiologi',382000,'b4811fe0-eaf5-4af3-8514-1e4d9f5af7c0'),(139,'Odontologisk Institut, Sektion 02',381200,'0ca15989-f24d-48c2-8ec9-bd0943d3a2cb'),(140,'Odontologisk Institut, Sektion 04',381400,'58510d59-2869-445b-aef5-f362561d5ae7'),(141,'Odontologisk Institut, Sektion 06',381600,'6602b670-734e-4036-be5c-8d201f715663'),(142,'Odontologisk Institut, Sektion 03',381300,'6756de11-cf19-443a-9927-d0519413553c'),(143,'Odontologisk Institut, Sektion 05',381500,'282e0a2a-865c-4f20-9a91-f9e3345a9b11'),(144,'Afdeling for Tandsygdomslære',36666,'287b39ef-951b-43a1-8f73-32c08babae7b'),(145,'Odontologisk Institut, Kliniksektionen',383000,'03374283-493d-4cab-b309-cb82a9e06d63'),(146,'LUKKET: 2012 Humanbiologisk Studienævn, Humanbiologisk Studienævn',396000,'3ef8077c-9c34-48a0-ae37-a3cd1042baad'),(147,'Bachelor- og kandidatuddannelser, Studienævnet for Medicin',391100,'34fdb126-977a-4c2b-8364-7a8e1701e41d'),(148,'LUKKET: 2012 Studienævn for Folkesundhedsvidenskab, Studienævnet for  Folkesundhedsvidenskab',394000,'76767b8b-8a85-4f95-902a-faca404ca3f3'),(149,'Masteruddannelser, Uddannelsesudvalget for MPH (Master of Public Health)',397000,'08586140-99ce-4264-bd31-c11036d0d8a2'),(150,'Bachelor- og kandidatuddannelser',390000,'7142f19f-d348-4662-b21f-23526a4dd7df'),(151,'Bachelor- og kandidatuddannelser, Klinikudvalget Københavns Amt',391300,'6ec40d2e-7f3f-4cf1-a437-ab09f86f9a2b'),(152,'Bachelor- og kandidatuddannelser, Studieudvalget for civilingeniør i medicin og teknologi',393000,'2ff7fdba-9ff9-406e-b5c9-410054fb153e'),(153,'Bachelor- og kandidatuddannelser, Klinikudvalget Københavns Kommune',391200,'71b2e94c-5b48-4bed-8804-0bca835f114a'),(154,'LUKKET: 2012 Odontologisk Studienævn, Odontologisk Studienævn',395000,'ba4f0e85-f7ce-4341-9a76-ef99c3679f4d'),(155,'SUND ph.d. skole, Ph.d.-studienævnet for Medicin',399000,'6349c532-682b-4cf9-8a5d-c91b6a3a1bf0'),(156,'Det Humanistiske Fakultet',400000,'ce333a11-fa8d-4ce1-8f46-596d8f59feb2'),(157,'LUKKET: 2012 Studienævn for Master i International Health, Uddannelsesudvalget for MIH (Master of International Health)',398000,'c3d29993-3ea0-4d6e-b7c8-380c87e46339'),(158,'LUKKET: Øst-sprogvidenskab Forskerskole',460000,'c1f62aeb-5a70-448c-97e1-b7cb8b5a6973'),(159,'LUKKET: Forskerskolen i Kultur, Litteratur og Kunstfag',462000,'8bce0a93-b49a-4400-aff6-291dd07b0341'),(160,'Studienævnet for musikvidenskab',36879,'203d354d-fe09-4ccb-bdc3-777c374345ba'),(161,'Fakultetsservice',455000,'3f1d23bc-4b20-43e5-9eb8-f770849e7792'),(162,'Campus Service Søndre, Café Mødestedet',458700,'496dd079-54ec-4e75-bbea-16ce011e323b'),(163,'LUKKET: Danske Studier forskerskole',461000,'82c25034-0cd1-4a1d-aa95-1b18aee46a5d'),(164,'Musikvidenskabeligt institut',36876,'0464bee9-dd57-4c68-b3e9-b06a9770f2b5'),(165,'Campus Service Søndre, Humanioras Bygningsdrift',458000,'f7376bee-d62f-48bb-8ad4-11865669dce8'),(166,'Studienævnet for Køns- og Kvindeforskning',36897,'22691616-44c5-4224-b117-5655715b7e01'),(167,'Institut for Medier, Erkendelse og Formidling',476100,'126179be-7749-4d56-80e2-e914c5b15d71'),(168,'Studienævnet for Minoritetsstudier',472400,'fd635e15-b901-4deb-9867-acf1e7f9e703'),(169,'DFD',36906,'4c3bfc0d-0ccc-4dd5-9656-cc0b248e61ff'),(170,'Studienævnet for Finsk',36891,'68c2ecde-3d51-49cc-b2cf-28a00e234b5a'),(171,'LUKKET: Studienævnet for Audiologopædi og sprogpsykologi',472700,'91151142-67c9-456f-ab38-89d2540c2372'),(172,'Studienævnet for Dansk',36888,'0df0a61e-831a-4de1-b549-b2611abfa744'),(173,'Institut for Nordiske Studier og Sprogvidenskab',472100,'eae0273d-72db-4853-8f7a-77da372bf478'),(174,'Studienævnet for Lingvistik',36900,'ef439676-7a92-4174-9ed6-8f6544f4d93c'),(175,'Studienævnet for filosofi',36915,'07d559df-f1a7-4239-9c32-1d9d0d1f835f'),(176,'Professionsmaster',36927,'976c3891-34eb-4783-b66d-222f5225ee29'),(177,'Studienævnet for historie',36936,'34f0d3fb-94ea-4846-9695-b6f3eac4e3f1'),(178,'Studienævnet for retorik',36918,'63635250-0ab3-4073-9297-3722ec2f90b0'),(179,'LUKKET: Studienævnet for film- og medievidenskab',476500,'89a8bea5-ae9a-4a14-aa61-5cf5e61e2539'),(180,'Saxo-Instituttet - Arkæologi, Etnologi, Historie o',478100,'6e69aac8-1ae8-480c-95a3-21bf116097ff'),(181,'Studienævnet for klassisk arkæologi',478300,'67bddf82-cf95-4d27-8093-64dc511905cc'),(182,'Studienævnet for pædagogik og humanistisk informat',36921,'4cbc60d0-268e-4468-8730-e0b168777412'),(183,'Studienævnet for Asienstudier',36960,'d86e6ca5-2fe3-4f32-8db4-569168fdbd34'),(184,'Studienævnet for Niebuhrstudier',480200,'0c242c8b-3dd6-447f-8317-762456f22bb3'),(185,'Studienævnet for klassisk filologi',478600,'631d24b9-e567-406f-9323-2ef793152aef'),(186,'Studienævnet for forhistorisk arkæologi',36942,'1efaeea0-1772-4e1e-8ed9-6219911a8559'),(187,'Studienævnet for Europæisk Etnologi',36945,'bb1bb5db-51c1-4cb6-adb2-4e3ebf171865'),(188,'Institut for Tværkulturelle og Regionale Studier -',480100,'aa3b81ed-b171-45db-8688-cc751bed1665'),(189,'Studienævnet for moderne græsk',480800,'b0d58325-b903-4bff-bfb2-fe51cfe6ece7'),(190,'LUKKET: Studienævnet for Indianske Sprog og Kulturer',480600,'9721be5a-ff1e-45b0-9f1f-eb85457de699'),(191,'Studienævnet for Slavisk',480700,'959a6492-1834-46c3-a87a-21f92457d4e8'),(192,'Institut for Engelsk, Germansk og Romansk',482100,'4e44e9e6-7034-4408-8ed1-78b2bc8b4ba2'),(193,'Studienævnet for religionsfagene',36966,'23702b88-1740-47fb-b4b1-8c0e4a47ce2c'),(194,'Studienævnet for engelsk',36996,'6b57b6eb-6ef4-4667-b43e-9a524188ba94'),(195,'Studienævnet for spansk og portugisisk',36990,'5b6db943-accd-4ddf-aa7f-96febdbc456a'),(196,'Studienævnet for fransk',482200,'5e571895-cf30-426e-990d-7fffab6f4906'),(197,'Institut for Kunst og Kulturvidenskab',484100,'60c27094-4d08-44c4-b59e-c4ac26ffcf5c'),(198,'Studienævnet for Tysk og Nederlandsk',482500,'cd45f680-fde2-40f1-ac66-af7099c7a9ad'),(199,'Studienævnet for italiensk og rumænsk',36987,'bb8fa2f4-a0a9-417a-9b63-ffb630bec074'),(200,'LUKKET: Studienævnet for Litteraturvidenskab',484400,'8e95213f-c22d-49bc-9241-adefde4d3609'),(201,'Center for Sprogteknologi',488000,'e1bcaf8c-a1ea-4b41-ab1c-6e28290586f9'),(202,'Det Natur- og Biovidenskabelige Fakultet',500000,'23892d96-490f-4a00-b411-b2b3b2a3b52d'),(203,'Institut for Matematiske Fag',501000,'cee2f368-7945-4a32-bd91-abd3c8e3ba3a'),(204,'Studienævnet for Kunsthistorie',37008,'6d83b60f-715a-45c1-a890-af42ec6376bb'),(205,'Nordisk Forskningsinstitut',486100,'d2ec1c88-2ee3-4ec5-b669-f1ae019c831e'),(206,'Bevaring af Islandske Håndskrifter',37020,'d46f78d4-a73e-4719-9ce0-b1d99e25b02b'),(207,'Studienævnet for Dans- og Teatervidenskab',37005,'995be765-8627-4ed5-8e20-ff46e53aff60'),(208,'Afdeling for anvendt Matematik og Statistik',501200,'3f1b22f3-8afa-477a-b70c-0df0abee9bc9'),(209,'Matematisk Afdeling',37038,'cf009cfd-5634-445a-8039-07f4088323b2'),(210,'Institut for Geovidenskab og Naturforvaltning, Geologi',508000,'4622701b-3fcc-4a14-ae27-ecffe1c52785'),(211,'Institut for Geovidenskab og Naturforvaltning, Geografi',509000,'30bc24da-827d-483a-a48d-451c3fb5d744'),(212,'IT-afdelingen',37077,'47978baa-66a3-4ab4-ba15-78ca0c331f4c'),(213,'Institut for Matematiske Fag, 2012 Studienævn for Matematiske Fag',501500,'6e6b802f-a4ea-443b-966f-94bc23bb0b6e'),(214,'Institut for Geovidenskab og Naturforvaltning, 2012 Forskningsgrupper',508200,'cef6d00d-5860-46bb-994f-a083857b9de2'),(215,'Datalogisk Institut',510900,'d07a23bf-12a9-4f1d-99e9-e73f0b442ca0'),(216,'Datalogisk Institut',510000,'b35b7995-3995-4639-911d-654cda32845e'),(217,'2012 Institut for Idræt, 2012 Undervisningsudvalg',520900,'19067c77-6da6-4279-9afb-93efd509690e'),(218,'Institut for Geovidenskab og Naturforvaltning, 2012 Miljø og samfund',509600,'641396a6-8dda-4636-9620-ac23f7138460'),(219,'Kemisk Institut',523000,'36e5c192-d57c-408d-ad42-443ffaf93157'),(220,'By- og landskabsudvikling',509500,'208939d8-1307-4e91-b0a3-9d02bd0333e0'),(221,'LUKKET: 2012 Institut for Idræt',520000,'39dc8537-0fd6-4b1b-9495-0090c60750b2'),(222,'Institut for Geovidenskab og Naturforvaltning, Geovidenskab og Naturforvaltning',509900,'6bfded3a-6eb4-4ac8-a078-39a7325d8f26'),(223,'Indtægter og udgifter af haller og udlejning',37122,'d7c11ad2-0e36-4599-bb21-706f45b6598b'),(224,'Kemisk Institut, 2012 Nano-Science Center',523200,'bed803b9-97af-481a-9884-5facad45e318'),(225,'Niels Bohr Institutet',524000,'c8fcae17-a016-4925-8c34-9dd76bf32606'),(226,'Biologisk Institut, Terrestrisk Økologi',525400,'58d8699e-74e4-4153-abdc-a1f3aa7bff70'),(227,'Evolutionsbiologi',37176,'6ad6367e-143e-4ef6-8f76-72c3fa913e72'),(228,'Mikrobiologi',37179,'1a87ce13-edd9-45c4-8e3d-fab1bb46da39'),(229,'LUKKET: Institut for Molekylær Biologi',526000,'01eadf71-7129-4fbc-b036-d961daad4f1b'),(230,'Kemisk Institut, Nørre Campus Institutadministration',523400,'e6f17bb6-8881-47d7-bb3d-01001dbaec5e'),(231,'Marinbiologi',37161,'54d1ba4f-d872-43fb-8bb8-b4482d83ec1f'),(232,'Fysik Studienævnet',37152,'3ec7ea27-fbee-43be-a94c-3ad3021c21f2'),(233,'LUKKET: Biologisk Institut',525000,'278a885d-133f-44bf-8fab-010b5f57d14f'),(234,'Afdeling for Cellebiologi og sammenlignende Zoolog',525800,'9152c15a-3802-4fd7-b39d-047fafa58119'),(235,'LUKKET: Center for Bioinformatik',37200,'e5f0b600-52a3-437f-a0ff-a7bf051ca8a4'),(236,'Biologisk Institut, Populationsbiologi',525500,'f36898c8-4608-4573-bb14-ff8ec8c6f158'),(237,'Ferskvandsbiologi',37164,'309d4cca-bf07-4aeb-8f14-b86d8a814c55'),(238,'Biologisk Studienævn',37185,'b30b6725-8780-45d7-b72c-2278e286b602'),(239,'MBI 1',526500,'45ca022c-3e17-4b7d-a2fc-8abcb92404ed'),(240,'Biologisk Institut, Fykologi',525300,'c041993e-7b48-4e13-9601-63d5de8d1efc'),(241,'AKI  1',526100,'e9b57f45-f54f-422a-bf58-4cb2814ecdd2'),(242,'Statens Naturhistoriske Museum',529000,'2c31b88d-7258-4356-baa4-b696ce7996f7'),(243,'Centre m.v., Fakultetets projekter',580600,'38ca65d6-2677-4389-a4f6-184e6b605630'),(244,'Statens Naturhistoriske Museum, Geologisk Museum',529600,'e679699d-69b1-4930-a64a-b332bdf68cfd'),(245,'Studienævn for Molekylær Biomedicin',37212,'4f885e2f-09bf-4900-b000-0cf49a081213'),(246,'Centre m.v., Arktisk Stations Sekretariat',580500,'2c90ee97-676d-4ed6-85e1-d1a2e90f65f0'),(247,'Statens Naturhistoriske Museum, Zoologisk Museum',529500,'45fa0c6b-1e22-4395-829a-8027f9072c4b'),(248,'LUKKET: Det naturvidenskabelige Fakultetssekretari',37239,'0943ee58-8058-49da-ba39-4c536bbe8fa7'),(249,'Centre m.v.',580000,'9cd811ac-6763-4b2b-8d1f-4bd7f62c1904'),(250,'MBI 3',526700,'57f627ea-2cf0-4644-92ce-6b4a703cdd60'),(251,'LUKKET: Sustainability Science Center, SSC',580700,'20e43231-8de4-434a-9c15-87eb1b5a9dd9'),(252,'MBI 2',526600,'7ecd93ae-b2fb-41df-b617-a319f6711f70'),(253,'Jurahuset',37323,'b97166eb-7263-466d-a7af-dff7b1d9f522'),(254,'Uddannelsesservice JURA',37326,'d83e8227-9848-4cc0-a87f-ea1db2a04961'),(255,'Det Juridiske Fakultet',600000,'669f2980-01db-49b5-bc6f-9750398279fb'),(256,'Juridiske heltidsuddannelser, Juridisk Bacheloruddannelse',660100,'61e4803b-38e0-4d9d-9b6f-7789f89a279b'),(257,'Juridiske heltidsuddannelser, Det Juridiske Fakultet',660000,'c840e390-16b9-47a6-871e-e3a0416deecb'),(258,'Forskningsservice, dekansekretariatet',37317,'34562bdc-7b75-4a4a-8df9-86958caf6630'),(259,'Juridiske heltidsuddannelser, Juridisk Ph.d.-uddannelse',660300,'00848b53-94a2-43a1-9a6f-b1c5f0dcd088'),(260,'Juridiske heltidsuddannelser, Juridisk Kandidatuddannelse',660200,'c80c531a-cb30-416f-bafa-3720d2d2ae6f'),(261,'Juridisk IT-afdeling og Journal',654000,'e708fd92-14c2-407e-ac33-1d4e1a533fb2'),(262,'Juridisk Internationalt Sekretariat',37329,'b492e832-5995-4185-865b-cb3e1d68a816'),(263,'Forskningsservice, bygningsorådet',37320,'d96de98a-3051-4337-b2ec-9132b39a18f2'),(264,'Serviceenheder, Det Juridiske Fakultet',650000,'cdb0327c-517d-4b33-944b-45455d2be44f'),(265,'Juridisk Forskningsafdeling II',680200,'0869734b-f594-45aa-a8e0-3b7e1f3f9fe9'),(266,'Universitetsdirektøren',37407,'3394d74d-d607-422f-8b0a-24bcdb88b81f'),(267,'Fællesadministrationen',700000,'852ca2de-fe79-4efd-9a63-03352183eb6f'),(268,'JUR Juridiske deltidsuddannelser, Juridisk diplomuddannelse i Kriminologi',670200,'5d403d4d-6e6a-4569-a587-5604e4645f1d'),(269,'Juridisk Forskningsafdeling III',37377,'66b54df8-866c-4923-9fdf-37fb047847fa'),(270,'JUR Juridiske deltidsuddannelser, Juridisk Masteruddannelse i konfliktmægling',670100,'07714ec2-2221-4f29-bb5e-fad87dfd052e'),(271,'Forskningsafdelinger',37368,'f48f0768-cbce-4a84-8130-2c8911259c12'),(272,'JUR Juridiske deltidsuddannelser',670000,'d6bff669-30bb-429d-b8fc-f4f56211df9f'),(273,'Juridisk Forskningsafdeling I',37371,'3410a74e-98f8-4864-a7f0-e855b0740f45'),(274,'Universitetsavis',37443,'2f0cda3a-615d-4b10-90e2-c7e62536424e'),(275,'Kommunikation',715000,'f87d7fe4-3e04-478d-a72a-c51f2cb23d58'),(276,'Forsknings- og erhvervsteamet',37413,'a567aae7-a15c-4cd8-a12b-8cc53b0390ef'),(277,'Direktørsekretariatet',713000,'01471e40-c158-47e6-b323-1871e368c0a1'),(278,'Uddannelsesservice, Alumnesekretariatet',724500,'1c7e7791-b912-43ce-ad9c-8d9081f92022'),(279,'Uddannelsesservice',720000,'4812984e-f3fe-44bb-9286-7ab819745b9d'),(280,'Studie- og erhvervsvejledningen',728000,'31e01108-6e73-4cbf-8e5d-7d57aa7f16b1'),(281,'Personalekontoret',771000,'812dc00c-5129-46a6-8b97-0e2c1ef16041'),(282,'Sekretariatet',742000,'d3e2c183-5ec1-4b98-b04d-2a78015b556d'),(283,'Campus Plan & Byg',740000,'cab06ca1-a42c-419d-b2de-c04ff9dc6ed0'),(284,'Koncern-it',760000,'d4f04868-5a2c-470a-be6a-19f1f227ba72'),(285,'Bygningssektionen',37479,'8ff388d8-5b51-40f2-968a-91c981d48bf1'),(286,'Controlling',37527,'73b1b6fc-dfd9-4a49-9a2b-d8dd0a1c9444'),(287,'Driftssektionen',768000,'ce7fa7c2-d221-44fd-8d2e-7c2ac5b0f346'),(288,'Udviklingssektionen',37500,'b7007d18-dbed-4545-bcad-28b65adef0d8'),(289,'Økonomifaglig IT-sektion',37533,'f744e40b-a180-4906-b8a9-14d0a169259d'),(290,'Afdelingsledelsen/sekretariatet',37524,'ad0a82c3-5519-4770-bf37-22ecbeb2a854'),(291,'Koncern-it, It-service',767000,'63088f9c-cac7-4654-87c0-5b9ff59e83d4'),(292,'Afdelingsledelsen',37473,'3505c097-27de-426b-948d-f69c697acce3'),(293,'Uddannelsesservice, Det internationale kontor',730000,'5a30b6fa-13af-4bdb-87eb-ddfa13944d86'),(294,'Koncern-økonomi',37521,'df3398f1-c158-4809-bba2-ba6ffee5c50d'),(295,'Research Groups, Helin Group',862100,'549f513e-988f-4e92-a75a-92f0645591ca'),(296,'KU øvrige hovedområder, Øvrige enheder uden for hovedområderne',800000,'84a07df5-1a1f-4c62-812b-49383ac3efc1'),(297,'Research Groups, Salcini Group',862400,'a7e9a5c7-b440-46a6-ac2c-fe935e6a5537'),(298,'Tilskud',790000,'6bee4f5d-7e7f-4b3c-b618-1bb26b94df88'),(299,'Research Groups, Frödin Group',862300,'5620a079-e24c-487b-8334-1c3ffbedb325'),(300,'Research Groups, Jensen Group',862500,'1430a3da-92df-4c71-8589-fc4046a93ae0'),(301,'LUKKET: BRIC',860000,'093c3df5-bcee-4a89-aebf-ff8b65214347'),(302,'Research Groups, Lund Group',862200,'95e4dd80-bf99-40cc-99dc-c8306981ad76'),(303,'LUKKET: BRIC-basis',861000,'033eca47-7687-4e0b-b270-36a4116fa558'),(304,'LUKKET: Research Groups',862000,'285597cc-7887-496f-b15a-02c7776b6ed9'),(305,'Administration',864000,'6c571548-b09d-4501-8a55-9affff0dcfec'),(306,'LUKKET: Niels Bohr Arkivet, Niels Bohr Arkivet',868000,'cb0a0c5c-7b82-465f-8a98-75e60c5a56d1'),(307,'LUKKET: Skolen for klinikassistenter og Tandplejere, Klinikassistentuddannelsen, euka',866200,'9c1039d5-1fdb-4cf1-ace1-90a4885c90e0'),(308,'LUKKET: Studievalg København',871000,'c8a5cef9-9b3d-485e-b870-a5e4fd48db53'),(309,'Laboratories, Core facilities',865000,'4867e310-341a-4bef-9165-231fe20347f4'),(310,'Eksterne centre - ikke en del af KUs regnskab, Eksterne centre',900000,'bf23bd08-f8c4-41c8-8f0e-17a9ffe72a93'),(311,'Kommissionen for den arnamagnæanske samling',867000,'c115a5ac-4a69-4122-972b-314fd7c28e8b'),(312,'LUKKET: Skolen for klinikassistenter og Tandplejere, Tandplejeruddannelsen',866100,'80fc54a7-4825-4a89-bf51-bdcf5684fa8c'),(313,'LUKKET: Skolen for klinikassistenter og Tandplejere',866000,'1d1a0e81-743d-4572-acba-68a51f45b9d0'),(314,'Danmarks Farmaceutiske Højskole',954500,'5f61fcd6-677e-443f-9123-97a81ca799da'),(315,'Hovedstadens sygehusfællesskab/Region Hovedstaden',956200,'aea94cff-9597-4d3c-9e67-cd75eae09a1f'),(316,'Forskningsenheden for Almen Praksis',989700,'72912b9a-fc27-43a6-80ce-dcda534d5579'),(317,'Molekylær Farmakologi',323400,'fea5c2c0-ebe2-4f6a-b317-e09e1886f985'),(318,'Molekylær Neurofarmakologi',37994,'39d455cc-0d45-4673-8d5e-1bf896fb5271'),(319,'Fakultetsservice, SUND KUBIS Biblioteker',302100,'537fe575-3f09-4132-b1a9-9213669378fe'),(320,'Forskningsclusteret International Sundhed',37997,'9be2dd2c-421d-4f61-9613-35fb280a67c9'),(321,'Økonomi- og Personaleafdelingen',38084,'bcbc5af0-4263-4b80-8623-062535bcc0a2'),(322,'Dekanat',454000,'6ad8ec92-48b3-422d-a2e2-fcc14d1bdebe'),(323,'LUKKET: Akademisk Skrivecenter',38066,'1de99f2d-0bfd-4a83-a744-da181c719793'),(324,'Fakultetsservice, Undervisning & Eksamen',455300,'8ec48598-7cc2-4475-b21b-e60450a52437'),(325,'Fakultetsservice, Sekretariat',455100,'cec13855-3231-42e2-9a8b-2690b1414dc0'),(326,'Forskergruppen CISU',331900,'9ed9fafd-0b24-45aa-b7d8-525661a989f5'),(327,'Dekanat, Elementarkurser',454400,'19477dda-320a-4003-b50a-fe082fdd4d1e'),(328,'Fakultetsservice, Uddannelse & Studerende',455200,'9d597bdb-f8c3-47c9-8fb7-dcdb3226f79f'),(329,'Fakultetsservice, Kommunikationsafdelingen',454100,'e40bed8b-e74c-409e-be15-57a15e00f3cd'),(330,'Fakultetsservice, Studenterservice',455400,'356db80f-377b-403e-a4d4-713be1fe1152'),(331,'Laboratories, FACS sektion',865200,'84db4cb6-9400-4813-bf28-405737c3efe5'),(332,'Sekretariatet for Øresundsuniversitetet',904000,'9cd7f63d-3cca-45b7-ad7b-06fbde3fb2b1'),(333,'Fakultetsservice, Strategienheden',457000,'dd12a6a1-28f6-4ec7-931e-2365ad8378ae'),(334,'LUKKET: Ph.d.-Studienævnet',456000,'45e6954a-2949-4f5e-a921-6134cecddd0c'),(335,'Administration, Sekretariatet',864200,'c0db5695-72a3-4c41-8de2-2269b89e1c84'),(336,'Statens Naturhistoriske Museum, Botanisk Have, Museum og Centralbibliotek',529800,'b2390424-55a7-498f-b603-25e6d4157e15'),(337,'Studienævnet for Minoritetsstudier',480900,'2ed348b2-b8c7-419d-b10a-1cd9d40c6b81'),(338,'NIAS, Publikationsafdeling',280500,'49be4b8a-009d-4449-beba-9f8564dae575'),(339,'Planlægningssektionen',46901,'c2c9e153-50aa-4cb1-b488-abc4db621680'),(340,'Cellebiologi Cluster',55705,'261def3e-1b6a-4bef-9785-ecd6d3503a0f'),(341,'Centre m.v., Dansk Center for Scientific Computing',580900,'2e8f4e89-19fc-465f-bada-4869f3857428'),(342,'Cluster for molekylær imaging',326200,'18d50659-830e-48ab-b943-5a713350c868'),(343,'Institut for Medicinsk Biokemi og Genetik, Muscle ',359000,'dddd2b47-9326-4ba2-a8f6-52c687d51f71'),(344,'NeuroCluster',58258,'af338ad8-c996-4391-ac2d-ca3acee9a49c'),(345,'Danish Arrhythmia Research Center',326300,'f451e96f-b4e6-46bf-ac28-bd415174a6b4'),(346,'Afd. for humaniora & samfundsvidenskab',69720,'8110536b-5c75-4e11-b8a0-0bb6c6813b90'),(347,'Center for Farmakogenomik',67772,'9988a527-5910-460e-97bd-1987f6ceca5b'),(348,'2012 Institut for Idræt, 2012 Gruppe for efter-videreudannelse',520100,'32ea1cce-9216-447e-9c69-50e99fb2a7ef'),(349,'Afd. for Human Fysiologi',69717,'891e22f7-af6c-49af-9f62-e6f8c12de6d6'),(350,'Dekanat, Ledelse',454500,'fa9e97c3-8149-460e-b6b0-db64a17f01c5'),(351,'Fakultetsservice, ITMEDIA-Didaktisk',457100,'a629b2a2-bc35-4559-906e-5d6a54c3a53f'),(352,'Fakultetsservice, ITMEDIA',457200,'b4077679-e98c-41ce-a7b6-5ab27d2f87b1'),(353,'PHD-skole',69723,'911ed329-cbb1-451b-9079-d92026299f46'),(354,'Bachelor- og kandidatuddannelser, Den Sundhedsfaglige supplerings- og kandidatuddannelse',392000,'8404599d-2173-4a0d-b1b5-a4e711b0147c'),(355,'Master i Sundhedsantropologi',73637,'abadaa30-9f37-4441-80f6-870a27d0e746'),(356,'Obesity & Diabetes Cluster',74988,'eb05ef26-05b2-4862-9758-3da6627ed7ee'),(357,'Institut for Folkesundhedsvidenskab, Core Biostatistik',331700,'d1f91163-8a26-4849-9770-eb0acc5f99da'),(358,'Rektorsekretariatet',78660,'cffb15de-c9f4-465c-a41c-c7c966130dee'),(359,'BRIC, MoMeD',861100,'d01489fb-282b-4377-bb5b-fb45dd6736a0'),(360,'Rektorsekretariatet',718000,'bc027d99-7e6e-4701-9932-544bf3aaa03a'),(361,'Rektorsekretariatet, Rektoratet',718200,'b91eb6bd-60d2-419f-b546-84af696ffb44'),(362,'Research Groups, Sørensen Group',862600,'1f3c4d33-eaa5-43b9-8bf8-915f4788516a'),(363,'Fusionssekretariatet',80506,'48308946-2788-468c-8ef9-cd7ef7c3b793'),(364,'Niels Bohr Internationale Akademi',524100,'c68d65fe-b13e-4d03-8615-cdc6d4d34782'),(365,'Institut for Naturfagenes Didaktik',521000,'c1cbf622-36f1-4046-afd4-e947ed24ddd2'),(366,'Research Groups, Issazadeh-Navikas Group',862700,'d2e197a4-3e22-4eb2-b431-5e309b769aac'),(367,'Studienævnet for Tværkulturelle og Regionale Studier',480000,'8d01933a-08d5-4b30-ad26-23cde1e4898d'),(368,'Studienævnet for Medier, Erkendelse og Formidling',476600,'d5362263-0a62-45e5-85c6-9f30448211f1'),(369,'LUKKET: Studienævnet for Nordiske Studier og Sprogvidenskab',472800,'913e5f2f-a439-46d7-aec3-47c31846035c'),(370,'Studienævnet for Saxo-Instituttet',478700,'7633b4c5-0bf6-48c6-978a-48b2e9a9868a'),(371,'Studienævnet for Engelsk, Germansk og Romansk',482700,'7c5d0db3-7126-41fa-b09b-b7e1c715f76d'),(372,'Studienævnet for Kunst- og Kulturvidenskab',484500,'ab4ef361-5675-4aaa-8d5e-954184739da9'),(373,'Institut for International Sundhed, Immunologi og Mikrobiologi, Immunologisk Forskerskole',313200,'26aab664-6472-4ff1-8a9a-b80c0f9ae3fc'),(374,'Institut for International Sundhed, Immunologi og Mikrobiologi, Cluster i Immunologi',313100,'3e9019d2-d6ba-4e8c-ab44-10cebe70b64c'),(375,'Biomedicinsk Institut, Forskerskole, Danish Cardiovascular Reseach Academy',311600,'f4aeb3cc-2b8a-458b-81b6-a47d3c0fc385'),(376,'Biomedicinsk Institut',310000,'c7bdba24-10bb-486d-9f4e-75f8a5cf771c'),(377,'Biomedicinsk Institut, Cluster for molekylær imaging',311100,'c2c964c5-ee1d-46f5-957c-464aa9705450'),(378,'Institut for International Sundhed, Immunologi og Mikrobiologi, Flouressens Aktiveret Celle Sortering (FACS), Core Facility',313300,'0b4c3f3d-be4b-44c3-bd3b-ef53c34a3238'),(379,'Biomedicinsk Institut, Obesity & Diabetes Cluster',311200,'3e00e5c0-c5c4-4383-b50c-c8ac71038692'),(380,'Institut for International Sundhed, Immunologi og Mikrobiologi, Forskerskole i International Sundhed',313500,'a0035a54-c6e9-43f3-b3ef-129d48fd0286'),(381,'Biomedicinsk Institut, Danish Arrhythmia Research Centre',311400,'772c871b-de64-443f-bc03-a8973507e530'),(382,'Institut for International Sundhed, Immunologi og Mikrobiologi',312000,'4151088d-1774-4648-a701-1b1fd710128e'),(383,'Institut for Neurovidenskab og Farmakologi, Neuropsykiatrisk Laboratorium',314800,'ff4be186-3333-4b30-b5c1-3a726eeb0768'),(384,'Biomedicinsk Institut, Muscle Cluster',311300,'22ad1b14-2b93-447c-bff1-c5ff6c94d211'),(385,'Neurogruppen',87026,'b85e1a59-9a43-4cd1-829d-2abaa3df5696'),(386,'Cluster i International Sundhed',87011,'506fd2af-5d9c-4152-bf4c-424ecbd76aaf'),(387,'LUKKET: 2012 Master of Disaster',398500,'2c84d019-7bb1-43f2-8978-5e461ba14807'),(388,'Institut for Neurovidenskab og Farmakologi',314000,'844b7034-c3b6-42f5-b378-7bf24ffd16a6'),(389,'Neuroprotektion',87032,'906315ab-2f90-4cda-b60f-1a5362c648f2'),(390,'Institut for Neurovidenskab og Farmakologi, Molpharm',314900,'0bf40139-1832-4b69-9acd-595f5bfe78a9'),(391,'Institut for Neurovidenskab og Farmakologi, Eyepath Lab',314100,'3cd1f549-6721-4e6b-874b-417c8932d43c'),(392,'Institut for Cellulær og Molekylær Medicin, Afdeling I',316100,'5625b1d7-84bd-4307-8ab7-c236e14e5157'),(393,'Institut for Cellulær og Molekylær Medicin, Afdeling IX - Undervisningsafdeling 2',316900,'a92dd1d1-75e9-498d-b7e7-e42cddb241b3'),(394,'Institut for Cellulær og Molekylær Medicin, Afdeling VIII',316800,'de39c15c-2490-4f08-b0f5-feee0a79ed44'),(395,'Institut for Cellulær og Molekylær Medicin',316000,'c308af34-4b9c-40f8-93a0-f59eaa85f463'),(396,'Institut for Cellulær og Molekylær Medicin, Forskerskole i Genmedicin',317200,'89257f02-a40f-4c6c-b332-f475fc59d446'),(397,'Institut for Cellulær og Molekylær Medicin, Afdeling VI',316600,'bff8306c-7b90-4869-8460-99cfe88d711c'),(398,'Institut for Neurovidenskab og Farmakologi, Neuronal Signalling Lab',315600,'65ee22d5-f214-4f5c-80c6-8a69fe845515'),(399,'Institut for Cellulær og Molekylær Medicin, Afdeling V -Undervisningsafdelingen',316500,'e2a89aad-4ab3-40d1-b315-105da0e82e71'),(400,'Institut for Neurovidenskab og Farmakologi, Motor Control',315500,'b3c153b4-f2f2-4405-a0b6-b3ca63d85f6b'),(401,'Institut for Cellulær og Molekylær Medicin, Cellebiologi Cluster',317100,'afea9b3c-4086-40a6-9a49-461bcd343a38'),(402,'Afdeling VII',87086,'de1d002a-3ba5-482f-bd6b-636cd73a3a1d'),(403,'Institut for Neurovidenskab og Farmakologi, Neuropsyk Lab',315300,'3ea91844-5d26-47ac-918d-3d48ee0c6ac5'),(404,'Institut for Neurovidenskab og Farmakologi, Neuropharm and Genetics Lab',315000,'9436f9ef-49e0-478a-bd43-beb1e1d9a586'),(405,'Institut for Cellulær og Molekylær Medicin, Afdeling II',316200,'7c17affc-324e-48b4-89b7-a934f52bb5ed'),(406,'Institut for Cellulær og Molekylær Medicin, Afdeling IV',316400,'e7317744-c05a-4f6f-9c48-4195da2ffd0b'),(407,'NeuroCluster',315200,'583ccf74-3949-4941-8dc7-033566e9f4aa'),(408,'Institut for Cellulær og Molekylær Medicin, Afdeling III',316300,'111692bf-00e2-4a95-b5f6-67165ccef477'),(409,'Institut for Neurovidenskab og Farmakologi, Ledelse og Administration',315100,'bbe7252f-6f90-4d47-be9b-1557053f5d39'),(410,'Institut for Cellulær og Molekylær Medicin, Wilhelm Johannsen Center',317500,'de6a410c-0f86-4282-8691-e33d5d756ce0'),(411,'Institut for Cellulær og Molekylær Medicin, Klinik for Medicinsk Genetik',317400,'9a680077-b299-44a7-b295-3f22296ed426'),(412,'Forskerskole - Celle- og Vævsbiologi',317300,'2fa59317-6947-487d-9559-d70982922b39'),(413,'Institut for Geovidenskab og Naturforvaltning',507000,'51709e66-4ee1-4fcd-9f62-dd00de2108f5'),(414,'Biomedicinsk Institut, Afd. for Nyre- og Karforskning',310500,'43e7ef52-56e7-425d-8e2c-8443886ba639'),(415,'Biomedicinsk Institut, Afd. for Systembiologisk forskning',310400,'dd42039a-f567-442a-9268-7f9af5b7d4b5'),(416,'Biomedicinsk Institut, Afd. for Endokrinologisk Forskning',310200,'924301f7-1ee2-4bef-a90c-84db08da52ed'),(417,'Biomedicinsk Institut, Afd. for Molekylær Patologi',310600,'c7afcdd6-a695-4e74-a751-5a46958bf0fb'),(418,'Øjenpatologisk sektion',87808,'925f6266-1727-4707-8f95-ab1fa7093bc6'),(419,'Biomedicinsk Institut, Afd. for Hjerte- og Kredsløbsforskning',310300,'212211fb-325e-4e8e-a7ea-447bbaf40228'),(420,'Biomedicinsk Institut, Afd. for Celle og Metabolismeforskning',310100,'eec99416-91fe-403b-ba04-a94c7b937c20'),(421,'Biomedicinsk Institut, Afd. for Undervisning',310700,'d93e5b9e-18c6-4ca5-ae68-239c6453da47'),(422,'LUKKET: 2012 Det Farmaceutiske Fakultet',90000,'cfc6e829-0976-4f6a-a8b1-8ab5ab306694'),(423,'Institut for Farmakologi og Farmakoterapi',91200,'85c7df41-3620-472a-baac-62c0dff927fc'),(424,'LUKKET: 2012 Institut for Farmaci',91000,'21607afc-75fb-4a3d-a2ed-b78901c93a78'),(425,'Institut for Farmaci og Analytisk Kemi',100194,'89f96c8e-d395-4c7a-984c-df7a07179de7'),(426,'Institut for Medicinalkemi',100200,'6e43b86e-0b47-42b1-a9a2-27be5c11faa3'),(427,'LUKKET: 2012 Institut for Lægemiddeldesign og Farmakologi',93000,'e040ff12-8ac5-4acb-90bd-d4a51d1e8ea6'),(428,'LUKKET: 2012 Institut for Farmakologi og Farmakoterapi',92000,'ede9e534-3111-4c84-85d5-00cf0c5b61c5'),(429,'LUKKET: 2012 Forskerskoler',94000,'d1bd6996-1f83-4362-b3a2-7d1090b2fc8d'),(430,'LUKKET: 2012 Dekanat',97000,'a80ce93a-2105-4670-94a2-5aae51cb2b41'),(431,'Institut for Klinisk Medicin, Ortopædi og Intern Medicin',328800,'18e371ac-6eb6-4af2-9148-aa33ec8d9bb4'),(432,'Institut for Klinisk Medicin, Kirurgi og Intern Medicin',328900,'01db308e-38aa-491d-80b1-896f0e8ce8ed'),(433,'Research Groups, Porse Group',863400,'b1e811a8-a409-4753-a134-62bc7a046c70'),(434,'LUKKET: Research Groups',863000,'7c698d74-0b9f-4605-9807-88f9a8a6c50d'),(435,'JUR Juridiske deltidsuddannelser, Juridiske Kurser',670400,'b8011057-b1f1-43bf-a711-d0bc307b1624'),(436,'Institut for International Sundhed, Immunologi og Mikrobiologi, Kurser',313600,'5cc90008-86a2-4a57-b1c5-d541025b9a82'),(437,'Institut for Statskundskab, Center for Europæisk Politik',237300,'f9fdbee1-37a4-4820-a92c-9b46bd5b42f7'),(438,'HR & Organisation',751000,'7c78cbd3-cb0d-4825-a3b2-820b125e9300'),(439,'Personalesektionen',776500,'23571d39-9ec0-4e9a-abe1-fb959f08374b'),(440,'Innovations- og Forskerservice',753000,'caea244f-3c84-4887-a161-d9c75dc09a26'),(441,'SAMF fakultetfællesudgifter, FÆLLESADM ANT/SOC',213000,'3f1ffba0-00d9-4237-8f83-638844bb5e36'),(442,'LUKKET: 2012 Bibliotek',90500,'ed5ea98c-f8a4-4618-b943-0c581c59000c'),(443,'LUKKET: 2012 Fakultetsservice',95000,'2dac346f-2d44-4f72-b0fa-b6a54b462052'),(444,'Administration',95100,'0ff39e23-f354-440f-91d8-53d246b65f47'),(445,'Institut for International Sundhed, Immunologi og Mikrobiologi, CHIP',313800,'82ae0d15-ab44-42ec-8256-25ae06b87c6c'),(446,'Forskningsområdet, Centre for Comparative and European Constitutional Studies',622400,'4cdae7fd-9651-416e-94ba-7c5ebf9c8590'),(447,'The Novo Nordisk Foundation Center for Protein Research, Center Administration',385100,'9aac95c2-15e6-4fb2-81e0-7d78f9462857'),(448,'The Novo Nordisk Foundation Center for Protein Research',385000,'8954b749-0869-44ae-beba-e4d59dadf9be'),(449,'Forskningsområdet',620000,'c5df48d8-6bf2-4293-8458-a6278af91d9a'),(450,'Forskningsområdet, Forskningscenterområdet',622000,'73c7800d-0853-4dd6-9922-c44a7e22f160'),(451,'HSU-sekretariatet',109640,'76ceb0a1-ed5d-46dc-af5c-2061ddf4ff7e'),(452,'2012 Fakultetsservice, 2012 Studiestart',95300,'150061e6-dc33-4e47-8c47-98c7ccaf907d'),(453,'2012 Fakultetsservice, 2012 Ph.d. administration',95700,'5d06b024-9d42-4466-b3fb-6d0cf5a01599'),(454,'2012 Fakultetsservice, 2012 Censur',95400,'01e6325f-ed6d-45e7-90c2-11e797eed8ec'),(455,'Didaktisk enhed',110396,'b0682b6b-44a7-4fd4-8c16-c51ebebd3c6d'),(456,'Økonomisk Forvaltning',96500,'c2d18a04-7275-4934-a886-04654ae535a9'),(457,'Niels Bohr Institutet - Afd.',505000,'3ba04375-4530-46e7-8ec4-63672a6f9875'),(458,'Biologisk Institut',116087,'23c91fc3-fda0-446c-918e-cb8ef7ea26a6'),(459,'Biologisk Institut, Freshwater Biology',116125,'bcff1a86-76a4-45dd-a4c0-c5e82d0fa611'),(460,'Niels Bohr Institutet, DARK',506000,'80f05a75-d774-41e3-b47f-8b1228e3cfd3'),(461,'Biologisk Institut, Microbiology',555700,'26b36e70-0f0d-4971-aa7e-38464f5d1b79'),(462,'Niels Bohr Institutet, Is og klima',506300,'5f81b478-18a6-4ac6-be12-7dcd46e9f9a4'),(463,'Niels Bohr Institutet, Eksperimentel subatomar fysik',506700,'322ef70c-17b7-4e24-8c1a-40c3bc94ef1e'),(464,'Niels Bohr Institutet, Undervisningudvalget',505200,'236f784f-90b0-449e-8440-371474a93a33'),(465,'Niels Bohr Institutet, Klima- og Geofysik / Climate and Geophysics',506400,'2c2c4ea5-ed60-4fc7-880f-de21241e67c5'),(466,'Niels Bohr Institutet, Faststoffysik',506500,'731ff02a-09f7-423f-a529-5104bc885a9c'),(467,'Biologisk Institut, Functional genomics',555100,'9d8ea347-c664-4d26-aeab-3a431365150e'),(468,'Niels Bohr Institutet, Ultrakolde atomer og kvanteoptik',506900,'96a77ae2-c592-401e-8e22-d355b25fabaf'),(469,'Niels Bohr Institutet, Teoretisk partikelfysik og kosmologi',506600,'8dc2cb83-dcd1-4c0d-b167-fab9e3581467'),(470,'Biologisk Institut, Bioinformatik og RNA Biologi',555300,'50543189-6fbb-4a1d-8d68-d28e574bdb61'),(471,'Biologisk Institut, Biomolecular Sciences',555200,'63b6b20b-f866-4104-8be6-28c52cd4acba'),(472,'EU-sekretariat',753600,'92c3058e-e912-4f4c-9a68-e4051e0401bf'),(473,'Biologisk Institut, Cell- and Neurobiology',555600,'36862a8e-0893-4885-9eb4-7e794f2e20c9'),(474,'Biologisk Institut, Ecology and Evolution',555900,'24057669-4b4e-4a2d-b3e1-0d00caa221f5'),(475,'Biologisk Institut, Cell and developmental biology',555400,'a937106b-12a6-4b9d-ab1f-0eb1fa1bf778'),(476,'Biologisk Institut, Molecular Integrative Physiology',555500,'c0965c57-5574-42b0-9f4d-17b41879b7a0'),(477,'Forskningsområdet II',111160,'b92c0051-eea1-4a2a-a516-7f400077a0fe'),(478,'Biologisk Institut, Terrestrial Ecology',555800,'224c1c0d-7015-46c6-a153-6e5d4577d062'),(479,'Biologisk Institut, Øresundsakvariet',556900,'a6cdb8a3-5bb3-401f-9ad4-38a5ebe78d4c'),(480,'Statens Naturhistoriske Museum',529100,'9769cdc1-ccfd-42c4-b548-d8a0ac78d970'),(481,'Odontologisk Institut, Videruddannelsen i Ortodonti',384900,'5a9f0b31-3b29-49f8-b35f-f18daf7419bd'),(482,'Odontologisk Institut, 2012 Sektion Y',384200,'1af66136-1f0b-4453-96cd-32fcb001a79e'),(483,'Niels Bohr Institutet, Astrofysik og Planetforskning',506100,'83760bcc-ca96-430a-81fb-68724dc5e373'),(484,'Niels Bohr Institutet, Niels Bohr Internationale Akademi',505100,'b3a6c191-532a-43a1-92f9-e7b7656821e4'),(485,'Niels Bohr Institutet, Biokompleksitet',506800,'0ce26967-2e65-4667-8efe-75ab559e2852'),(486,'Odontologisk Institut, 2012 Sektion X',384000,'909df082-8264-4bdb-9519-c557ee730255'),(487,'Niels Bohr Institutet, Teknik og support',505400,'ba79f7f0-0fb9-4d0b-8353-689c6c7238d0'),(488,'Niels Bohr Institutet, Astrofysik og Planetforskning',506200,'2ec56328-96c7-4a61-9837-3f1452198e4d'),(489,'Forskningsområdet, Det danske velfærdssamfund og europæisk markedsinte',622100,'074f316b-0e3a-4a29-99ae-715537694935'),(490,'Forskningsområdet, Center for retskulturelle studier',622500,'881ed04b-9257-4be3-be51-487440d92aff'),(491,'Research Groups, Groth Group',862800,'3b940734-597b-4e34-9bc3-4a30251e96da'),(492,'Laboratories, Robot Sektion',865700,'e8c95f8a-bc71-4af2-8b83-fbd0005d5872'),(493,'2012 Forskerskoler, 2012 Forskeruddannelse M',94300,'4e44d79f-1195-40dd-9a22-643e45f0d293'),(494,'SUND ph.d. skole, Ph.d.-studienævnet for Medicin',399100,'888f15dc-4333-483c-beee-069af9bbdf4b'),(495,'JUR Ledelsen',602000,'b9f19656-5d57-4609-85eb-1bd679b7b7b5'),(496,'2012 Forskerskoler, 2012 Forskeruddannelse B',94200,'2c3507cc-9f62-49bf-a722-aebfd19ab9a5'),(497,'2012 Forskerskoler, 2012 Forskeruddannelse A',94100,'f8a80b4b-0b9d-43ba-809f-75fb8b3526e7'),(498,'Fakultetsservice, HUMIT',457500,'6f87ebea-8ab0-4a79-8edc-649e4d067ca2'),(499,'Research Groups, Hansen Group',862900,'d775689b-c45b-4e21-a861-90d5d308f54b'),(500,'LUKKET: 2012 Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer',60000,'056480e1-9bd9-42cb-aef6-b80953a1f9b0'),(501,'2012 Institut for Mindre Husdyrs Sygdomme, 2012 Hospital for Mindre Husdyr',63200,'819db481-cf09-411a-8a23-55a119fbd965'),(502,'2012 Institut for Basal Husdyr- og Veterinærvidenskab, 2012 Husdyrernæring',61400,'0bb30e2e-39b7-48fe-a7d4-fed91af5eafe'),(503,'2012 Institut for Basal Husdyr- og Veterinærvidenskab, 2012 Anatomi og Cellebiologi',61100,'172c629f-5ba5-4d71-8805-121c042d9bb6'),(504,'2012 Institut for Produktionsdyr og Heste, 2012 Populationsbiologi',62300,'c297742c-8669-497f-b9ac-493bcb35628c'),(505,'2012 Institut for Produktionsdyr og Heste, 2012 Medicin og Kirurgi',62100,'ffe0da1a-8806-4403-a44c-c6bbcdec190a'),(506,'2012 Institut for Produktionsdyr og Heste, 2012 Hospital for Store Husdyr',62500,'4d28b010-1e00-49b5-b5ee-337ba5634bde'),(507,'LUKKET: 2012 Institut for Basal Husdyr- og Veterinærvidenskab',61000,'761450ba-573f-413e-af45-67e42a3314f8'),(508,'LUKKET: 2012 Institut for Produktionsdyr og Heste',62000,'968abe28-35fc-4416-a12b-6354b701da3a'),(509,'2012 Institut for Basal Husdyr- og Veterinærvidenskab, 2012 Genetik og Bioinformatik',61500,'b0cb484d-f11c-47a4-9ea6-56ea76e93e11'),(510,'2012 Institut for Produktionsdyr og Heste, 2012 Produktion og Sundhed',62200,'07dc1d61-b6be-443b-8990-99af4f10f660'),(511,'2012 Institut for Produktionsdyr og Heste, 2012 Reproduktion',62400,'3c4e054e-cfb5-472e-a887-74f9580752ce'),(512,'LUKKET: 2012 Institut for Mindre Husdyrs Sygdomme',63000,'328f76b0-519e-4772-848a-3c10fc03b71a'),(513,'2012 Institut for Basal Husdyr- og Veterinærvidenskab, 2012 Fysiologi og Biokemi',61200,'e64505b0-b1a5-4116-ac64-f89cc97fd9fd'),(514,'LUKKET: 2012 Institut for Veterinær Sygdomsbiologi',64000,'fc836792-4590-4ca6-beca-d095724a391c'),(515,'2012 Institut for Veterinær Sygdomsbiologi, 2012 Virologi, Immunologi og Fiskesygdomme',64500,'b02688b0-0b90-41cd-a831-acd7c0b13522'),(516,'LUKKET: Institut for Økologi',65000,'49ada5ba-0ba3-4de4-b988-d3204ba71bfb'),(517,'2012 Institut for Veterinær Sygdomsbiologi, 2012 Mikrobiologi',64200,'1b4e9987-f4ac-483a-8174-41e51e625457'),(518,'Genetik og Mikrobiologi (Ophørt)',110156,'4bba0292-b51a-4a35-8855-ade211dd98f7'),(519,'2012 Institut for Veterinær Sygdomsbiologi, 2012 Patologi',64800,'fc77e7dd-761e-4247-9161-643ff7f356bf'),(520,'2012 Institut for Veterinær Sygdomsbiologi, 2012 Parasitologi, Sundhed og Udvikling',64600,'84ba6e87-0f1f-414a-8ded-394b9561bb1a'),(521,'2012 Institut for Veterinær Sygdomsbiologi, 2012 Biomedicin',64700,'c2f33ddc-f2ba-4f12-903b-93f73428ef8e'),(522,'2012 Institut for Mindre Husdyrs Sygdomme, 2012 Kirurgi og Billeddiagnostik',63400,'9b5d284e-2d3d-4b56-9816-0f241f5a36e6'),(523,'2012 Institut for Veterinær Sygdomsbiologi, 2012 Tidligere Parasitologi',64400,'78b3b844-0c5e-4c2f-ab83-441ec0b68020'),(524,'2012 Institut for Mindre Husdyrs Sygdomme, 2012 Intern Medicin og Klinisk Patologi',63300,'4565d0d9-efb0-4469-9598-7755fc7091eb'),(525,'2012 Skov & Landskab, 2012 Afd. for Skovdrift og Træprodukter',67400,'38d36ae0-059e-448b-9ce0-dafb40a5c67b'),(526,'2012 Institut for Plantebiologi og Bioteknologi, 2012 Plantepatologi',66300,'00f99bf8-96c6-48b0-8236-2174f546d08d'),(527,'LUKKET: 2012 Institut for Plantebiologi og Bioteknologi',66000,'0d61da3c-7778-4ca3-b629-e3df4bdb3c11'),(528,'2012 Institut for Plantebiologi og Bioteknologi, 2012 Danish Seed Health Centre',66400,'42fa3a98-c18c-4082-82c7-0a2dc32d77d8'),(529,'2012 Skov & Landskab, 2012 Afd. for Vedplanters Genressourcer',67200,'d2571d8f-8c24-4c9f-992c-5eb4e469e766'),(530,'2012 Institut for Plantebiologi og Bioteknologi, 2012 Plantebiokemi',66100,'72ab446a-3f11-4889-86fe-c1c93ef6187c'),(531,'2012 Institut for Plantebiologi og Bioteknologi, 2012 Molekylær Plantebiologi',66700,'27635e8f-3b80-4bd1-9198-6ccbea4be834'),(532,'Institut for Økologi, Botanik',65500,'b64b6f78-cf05-496f-86be-91c389b20023'),(533,'LUKKET: 2012 Skov & Landskab',67000,'f47abc2c-0c71-4bb7-8b86-ea1a614d7b46'),(534,'2012 Institut for Plantebiologi og Bioteknologi, 2012 Transportbiologi',66200,'11ddb52b-7b10-4555-a493-d33e86543ff5'),(535,'2012 Skov & Landskab, 2012 Afd. for Økonomi, Politik og Driftsplanlægning',67500,'1c2dcf4b-1dd7-49b7-b3dc-e60183dce9d5'),(536,'Zoologi (Ophørt)',65400,'abc1e882-ef6a-40b7-ba1a-3b02866b7dcb'),(537,'2012 Skov & Landskab, 2012 Afdelingen for Skov- og Landskabsøkologi',67300,'ed52c8fd-a76e-4a68-b36f-00d0ff919048'),(538,'2012 Skov & Landskab, 2012 Afd. for By- og Landskabsstudier',67700,'4efa9987-9bf2-4d6f-8771-4ff934a38a6c'),(539,'2012 Institut for Fødevarevidenskab, 2012 Kvalitet og Teknologi',69400,'71646069-c87f-4483-a559-3c88cafd15b9'),(540,'2012 Skov & Landskab, 2012 Sekretariatet',67800,'dadf0794-df36-4f02-be51-7e3890862fbc'),(541,'2012 Institut for Jordbrug og Økologi, 2012 Afgrødevidenskab',68200,'83708508-4f63-4c65-9568-e63faaa70a7b'),(542,'LUKKET: 2012 Institut for Jordbrug og Økologi',68000,'ac4dbd02-d9bf-405f-b522-ef55fe53f3fa'),(543,'2012 Institut for Jordbrug og Økologi, 2012 Plante- og Jordvidenskab',68600,'c148d9e6-6c26-417c-8fb6-de7a7c917111'),(544,'2012 Institut for Fødevarevidenskab, 2012 Institutsekretariat',69100,'c2a9a93a-04b5-4047-9da7-3756ae77ee46'),(545,'2012 Institut for Fødevarevidenskab, 2012 Fødevaremikrobiologi',69200,'f2f46800-379a-4227-aff1-c3bff5c5cfab'),(546,'2012 Institut for Fødevarevidenskab, 2012 Sensorik',69500,'4b627b2e-8947-4235-aad9-af2b0fffad5d'),(547,'2012 Skov & Landskab, 2012 Afd. for Parker og Urbane Landskaber',67600,'7ea52ad5-4ef3-4fef-9c75-82fff6be8d1e'),(548,'2012 Institut for Fødevarevidenskab, 2012 Fødevarekemi',69300,'16a2a669-ecbb-4e9a-8862-914ff44ec72c'),(549,'2012 Institut for Jordbrug og Økologi, 2012 Miljø, Ressourcer og Teknologi',68300,'6171e93d-eaa2-4c74-9d88-a1319652b5e9'),(550,'LUKKET: 2012 Institut for Fødevarevidenskab',69000,'87ceea24-9e60-4c16-8b31-e18ba5effc1c'),(551,'2012 Institut for Grundvidenskab og Miljø, Biouorganisk Kemi',70400,'62f58d36-5969-44e6-b8af-c8698ef444ae'),(552,'2012 Institut for Grundvidenskab og Miljø, 2012 Kemi og Biokemi',70300,'a02f0838-afaf-447b-b093-106560d90006'),(553,'2012 Institut for Fødevarevidenskab, 2012 Mejeriteknologi',69600,'6339cbbc-1613-4df7-9741-119634a6ccb8'),(554,'2012 Institut for Grundvidenskab og Miljø, 2012 Miljøkemi og Fysik',70500,'acfa45e8-50c8-4c74-9846-ac3732842fbf'),(555,'2012 Institut for Grundvidenskab og Miljø, Matematik og Datalogi',70600,'48d4d678-cb55-4946-8310-d837f2a63f50'),(556,'2012 Institut for Grundvidenskab og Miljø, 2012 Nanobiovidenskab',70100,'dbcb2d09-affb-4dc3-920c-8ffce6f319f3'),(557,'2012 Institut for Grundvidenskab og Miljø, Biokemi og Naturproduktkemi',70200,'f757f9e2-1e11-4f60-a099-29ec3cadc642'),(558,'LUKKET: 2012 Institut for Grundvidenskab og Miljø',70000,'fa64d046-9183-4910-a066-e4ab90d567ef'),(559,'LUKKET: 2012 Institut for Human Ernæring',71000,'95b9484b-149f-41bb-abae-3f9cdddfb703'),(560,'2012 Institut for Grundvidenskab og Miljø, 2012 Biostatistik og Matematik',70700,'af5d6fe5-180f-4bcd-b65a-d0ff1dadbecd'),(561,'2012 Institut for Fødevarevidenskab, 2012 Kødvidenskab',69700,'d0859200-8ae0-4303-9a38-6d2a99ac14c3'),(562,'2012 Institut for Human Ernæring, 2012 Klinisk og eksperimentel ernæring',71900,'308e344f-f0d9-49d1-a70a-a8e017978d44'),(563,'2012 Institut for Human Ernæring, 2012 Energimetabolisme, appetitregulering og fedme',71700,'3f8121af-29f2-451d-8bea-9d3cf383a75c'),(564,'LUKKET: 2012 Fødevareøkonomisk Institut',72000,'fd6a1b68-ca36-4480-ad6f-67e02eea09a3'),(565,'2012 Institut for Human Ernæring, 2012 Fødevaresociologi',71600,'c633f6ed-55c7-44fa-bbd2-6c89bbdbc3c2'),(566,'2012 Fødevareøkonomisk Institut, 2012 Forbrug, Sundhed og Etik',72200,'2e66fe7b-de1a-426e-bb2f-4a98aa585129'),(567,'2012 Institut for Human Ernæring, 2012 Bioaktive fødevarer og sundhed',71800,'d849587e-321c-420b-b832-b00c774dc025'),(568,'2012 Fødevareøkonomisk Institut, 2012 Miljø- og Naturressourceøkonomi',72400,'313175bb-ee49-466e-b21f-0866ada709ef'),(569,'Statistik',110321,'cfdc89bc-e60f-4eaf-a1f3-7a081cf2ba33'),(570,'2012 Fødevareøkonomisk Institut, 2012 International Økonomi og Politik',110306,'6888530d-6af7-406c-867f-e89e7096bb6e'),(571,'2012 Fødevareøkonomisk Institut, 2012 Produktion og Teknologi',72300,'1b0f1a9b-ad72-4315-bbe8-38995e6782f8'),(572,'Fiskeriøkonomi og -forvaltning',72500,'fed13931-d434-43e2-b55c-a0c85d51e556'),(573,'2012 Institut for Human Ernæring, 2012 Børneernæring og international ernæring',71500,'a75a230e-4957-4c9e-9dd3-8aa72aae0cef'),(574,'LUKKET: 2012 Biblioteket',74000,'37c71e4e-41d9-4afa-afc6-fab0fb0103bd'),(575,'2012 Fakultetsservice, 2012 HR',75300,'17f300df-add7-43bc-b385-c081e95343c5'),(576,'2012 Fakultetsservice, 2012 Uddannelse og Studerende',75400,'8d3f8731-f7e4-41bc-9567-2ecf88fe1a88'),(577,'LUKKET: 2012 Fakultetsservice',75000,'4047479d-bfb8-4e35-b1b8-8da8703b9f65'),(578,'Datalogisk Institut, Center for IT-innovation',510200,'146aa6f7-126d-4ba1-a7ab-afe2df1347d4'),(579,'2012 Institut for Human Ernæring, 2012 Undervisning',71400,'846cea5b-df3b-45c1-8d91-bdccc9ad6f5a'),(580,'2012 Institut for Basal Husdyr- og Veterinærvidenskab, 2012 Sekretariatet',61300,'52f55790-9355-42ae-9b7a-e4e9aefcc790'),(581,'Institut for Psykologi, Centre',267000,'2ce0bbb2-3fca-4402-abfe-a16b3c723a03'),(582,'Institut for Folkesundhedsvidenskab, Undervisning - FSV',330100,'f798780b-c95c-4b21-bd6a-0f7ede1e3d31'),(583,'Institut for Psykologi, Copenhagen Child Anxiety Project (CCAP)',267400,'55babe26-6187-418d-9ad7-eb3481dedb27'),(584,'Forskningsgruppe Sap',863200,'763e1d8c-4730-427b-922b-cd1e03f165d8'),(585,'Research Groups, Ploug Group',863300,'1d51787c-162d-434b-acc2-f91fbe44825d'),(586,'Research Groups, Behrendt Group',863100,'1caf4c22-6575-4e18-8c3f-ce909541b79f'),(587,'Research Groups, Couchman Group',863600,'46b62920-324a-47f5-b115-6fd3672d0409'),(588,'Research Groups, Engelholm Group',863500,'c7fc6011-78b9-4594-91b7-781f066a862d'),(589,'The Novo Nordisk Foundation Center for Protein Research, Disease Systems Biology',385200,'a42bad4f-022c-459b-a444-b6c9a6c31588'),(590,'Institut for Psykologi, Center for Anvendt Socialpsykologi',267800,'0a9e0edb-f854-4e44-b2f3-457c9628c3fa'),(591,'LUKKET: 2012 Levnedsmiddelcenter - LIFE',73000,'2fa15b2c-34e9-4171-b67f-a1a57b335e0b'),(592,'Statens Naturhistoriske Museum, SNM Formidling',529300,'e23f984c-b969-4797-a8fe-40f9a3a5136b'),(593,'2012 Levnedsmiddelcenter - LIFE, 2012 Forskerskolen FOOD',73100,'cdee2438-8f7e-4ad8-a215-b5687e063a0d'),(594,'Person, Praksis, Udvikling og Kultur',267600,'05a6c3cc-dcf9-4543-8cd3-1887b2c99d81'),(595,'Tech Trans Kontoret',114249,'8a991b32-ffda-4e9f-b656-7a9859d59dd4'),(596,'The Novo Nordisk Foundation Center for Protein Research, Proteomics',385300,'9f5d7fd8-24d7-48b5-b6de-ddd049e5aec2'),(597,'LUKKET: 2012 Fakultetsservice, 2012 Personaleafdeling',96600,'1639cdb8-9fe3-4402-98ce-06ad0dee466c'),(598,'2012 Institut for Mindre Husdyrs Sygdomme, 2012 Sekretariat og drift',63100,'743e7f33-0188-4773-ada5-dcc22bb2666c'),(599,'2012 Institut for Jordbrug og Økologi, 2012 Sekretariat og IT-funktion',68100,'bdcd8804-334e-4856-bd09-117a01e6e23a'),(600,'2012 Fakultetsservice, 2012 Kommunikation',75600,'b2d9c8ca-690f-4b47-bbd5-c369c0a3cf43'),(601,'2012 Fakultetsservice, 2012 Ledelsessekretariatet',75100,'c7d8756d-0da0-4846-8a08-246a467dbb89'),(602,'2012 Institut for Veterinær Sygdomsbiologi, 2012 Sekretariatet',64100,'55c5a9e5-bab6-4de4-bfd9-dc834dca2a98'),(603,'2012 Institut for Jordbrug og Økologi, 2012 Grøn Forvaltning',68700,'18d44560-11c0-4cba-b287-e633b2b740d0'),(604,'2012 Institut for Jordbrug og Økologi, 2012 Botanik',68500,'7c0b9d33-72b7-4add-a34d-e7ec24adbeb2'),(605,'Apoteket',110129,'53afa4d4-7833-4d23-aeba-0f6528f21574'),(606,'2012 Institut for Jordbrug og Økologi, 2012 CCAFS',68800,'bd0d0ecc-c4a1-4b8a-ad14-2d15c8df7c04'),(607,'2012 Fakultetsservice, 2012 Budgetkontoret',75200,'9a636421-30b0-471a-949a-18883b6fb1ab'),(608,'2012 Campus Service, LIFE, 2012 Driftsafdelingen',76200,'8b3acb4d-ee63-4064-953d-4cfd48ed8685'),(609,'2012 Fakultetsservice, 2012 IT',75700,'aa01e3fd-4917-4dd7-a259-3574e5ae7c16'),(610,'2012 Institut for Jordbrug og Økologi, 2012 Zoologi',68400,'839e1ee9-0289-4abe-8cfa-69efcbec4289'),(611,'2012 Campus Service, LIFE, 2012 Bygningsafdelingen',76100,'089d0fb8-d664-45ad-bd87-b579a039030c'),(612,'LUKKET: 2012 Campus Service, LIFE',76000,'22b66846-08ca-4c06-bf78-77546389fc93'),(613,'2012 Skov & Landskab, 2012 Skovskolen',67100,'9f024c08-099d-4e1d-b5ad-b2f8ec622064'),(614,'2012 Fakultetsservice, 2012 Forskning og Innovation',75500,'6eff0263-2200-4380-9cbc-81c6ea367e20'),(615,'Research Groups, Nilsson Group',863700,'e67815f1-0001-418b-82ff-02a385f6523c'),(616,'Tilskud, Universitetsavisen',791000,'de34cca4-6c55-4dd6-998c-6988f1e83e9b'),(617,'HR & Organisation, Personalesektionen',751900,'7ac6dc7c-bac0-4e3b-960d-d4fac6353af2'),(618,'Institut for Statskundskab, CAST, Center for Advanced Security Theory',237400,'748bc94c-14fb-48a3-89ff-0dc227b1e04f'),(619,'Afdelingsledelse',114246,'f4ce740f-0acc-46a5-a496-849787038823'),(620,'Institut for Folkesundhedsvidenskab, Undervisning - MPH',330200,'884d76fa-f640-444d-8162-72103a9607c9'),(621,'2012 Institut for Jordbrug og Økologi, 2012 Genetik og Mikrobiologi',68900,'c3fac168-8f29-4630-8a19-2f41dafef10c'),(622,'Bachelor- og kandidatuddannelser, BSc + MSc IT og Sundhed',392500,'027a776b-891f-4a84-b2e3-4c84ee528745'),(623,'SCIENCE Fakultetssekretariat',570000,'43d6019b-7df9-4643-94b9-ef797edcd5c1'),(624,'SCIENCE Fakultetssekretariat, Dekanat',571000,'1a2a0173-20db-40e0-8632-afe9761cecd6'),(625,'Klimasekretariatet',718300,'0f3267b3-8bbb-492c-938a-3ec9a8e5871e'),(626,'Niels Bohr Institutet, Administrationen',505300,'fd0e662a-c036-48b0-885b-fb58dc571b5f'),(627,'The Novo Nordisk Foundation Center for Protein Research, Protein Production Facility',385700,'d7d0d95d-aea2-4477-8bc7-f86f019cd6f2'),(628,'SCIENCE Fakultetssekretariat, Økonomi',572200,'036c2e5f-1744-45e0-b695-ba8d5fdb97d0'),(629,'SCIENCE Fakultetssekretariat, Ledelsessekretariat',572100,'59271759-3ceb-46f7-88ba-d3fbb3230190'),(630,'SCIENCE Fakultetssekretariat, Fællesudgifter',572000,'6ef2091a-7db0-4625-93ef-bbc2b41557fb'),(631,'LUKKET: NIAS Forskning',280200,'4a36f780-f691-4e41-b112-06b816572361'),(632,'2012 Institut for Grundvidenskab og Miljø, Agrohydrologi',70800,'68cb2167-85f2-438a-8ad2-6836eb075386'),(633,'Fællesfakultære aktiviteter',301000,'f8d12ac0-4f73-415d-ba2f-9325b807eb4d'),(634,'Laboratory for Experimental Economics',227500,'b880375e-ed2c-475e-84c2-31d61452d99f'),(635,'Forskningsområdet, Center for virksomhedsansvar',622600,'7f31f6f0-a789-4f55-b03b-472e17cbb2aa'),(636,'2012 Institut for Veterinær Sygdomsbiologi, 2012 Faggruppe Patobiologi',64900,'e10f7070-e7bf-4fac-9827-ed5372762994'),(637,'Center for Sund Aldring',387000,'6320a119-c801-402c-98c3-5e9efc7dffe0'),(638,'LUKKET: 2012 Studieservicecenter',389000,'3f415778-678a-4fa6-8d8c-a3f112b60130'),(639,'Serviceenheder, Formidlingsservice',655000,'fad6ac50-61e1-4f83-9e0e-ade7479fcf94'),(640,'NAT, Kommunikation',146582,'f2dda20f-c937-4159-9376-c73eeaeb37ac'),(641,'SCIENCE Fakultetssekretariat, Uddannelse',572300,'88955e7b-9c81-41dd-89d1-ab64e01b58ff'),(642,'Statens Naturhistoriske Museum, SNM Undervisning',529400,'83a92be0-8649-4633-913e-7030436452c8'),(643,'Fakultetsservice, Personaleafdelingen',455700,'f83873df-bc32-4ba2-baac-df2ad7efa5f1'),(644,'The Novo Nordisk Foundation Center for Protein Research, Ubiquitin Signaling Group',385600,'8d5021f5-e7b2-4302-b623-90ec9b317c5e'),(645,'2012 Institut for Produktionsdyr og Heste, 2012 IPH-Sekretariat',62900,'788b87bf-60d4-4a60-b622-26b0961ad02e'),(646,'Den Danske Forskerskole for Antropologi og Etnogra',246100,'c8e65065-34b2-4157-9cd9-486a679d3675'),(647,'The Novo Nordisk Foundation Center for Protein Research, Molecular Endocrinology',385800,'633a1a3b-9d6d-48e8-98a6-bf8d2fcf2d85'),(648,'Institut for International Sundhed, Immunologi og Mikrobiologi, CMP',313900,'aa714622-8a69-4860-a001-e0c8b3449e2c'),(649,'Juridiske heltidsuddannelser, International Law Economics & Management',660500,'067a5e43-608c-421c-adcc-2dd4c057d50e'),(650,'Research Groups, Pocock Group',863800,'4237910c-cd51-41ec-88c2-797d5d619bc3'),(651,'NIAS, Asian Dynamic Initiative',280600,'99ff46b3-21bd-469d-b013-639380337d71'),(652,'Biologisk Institut, Marine Biological Section',556100,'8f07ba4a-4250-46d7-9cab-b13c5e4aee8a'),(653,'Biologisk Institut, Genomforskning og Molekylær Biomedicin',556200,'94e1ef10-ed8d-4275-bbb9-a60cd4b44cf6'),(654,'Søren Kierkegaard Forskningscenteret',129000,'700cef59-f70a-4e9d-a3cf-060780fd72c4'),(655,'Forum for Company Law and Financial Market Law',111206,'71f55c2a-0c6e-47bf-a1dd-66322a3c58df'),(656,'2012 Skov & Landskab, 2012 SSC - Sustainablility Science Center',67900,'bd7dfe67-c6df-4201-ab03-a4cf2f745731'),(657,'Niels Bohr Institutet, Biblioteket',505700,'5d76695c-3f34-458f-871f-dbcb8aca6e6e'),(658,'Forskningsområdet, Center for Informations- og innovationsret',622700,'6db5733a-17fe-4c39-95d9-39baacf4e8e0'),(659,'Institut for Statskundskab, Center for Militære Studier ',237600,'9a880c5d-eef8-4005-9a23-2d7fff581fc7'),(660,'Kommunikationsafdelingen',96300,'8a6a37ec-f9f4-49c7-9797-27fad220d569'),(661,'Den Arnamagnæanske Kommision',486300,'432fb40c-fa72-4763-8a3d-66288b19e6fa'),(662,'2012 Institut for Mindre Husdyrs Sygdomme, Centrallaboratoriet',63600,'ed801fd2-6a9e-4432-8b3a-35ea03bed76d'),(663,'LUKKET: 2012 Skolen for Klinikassistenter og Tandplejere',379000,'332c87d9-d239-4d1a-9e5f-81d237c80d98'),(664,'2012 Skolen for Klinikassistenter og Tandplejere, 2012 Klinikassistent',379200,'5a157aaa-d100-4357-8a59-e4fa2f09e510'),(665,'Institut for Folkesundhedsvidenskab, Undervisning - STF',335100,'d2a214a0-3761-4e5d-9545-c3bd0692603d'),(666,'2012 Institut for Mindre Husdyrs Sygdomme, 2012 Røntgen',63700,'ecba8c76-f285-4bdc-9793-6f22793320b7'),(667,'2012 Skolen for Klinikassistenter og Tandplejere, 2012 Tandplejere',379100,'6da62399-47e1-4579-858c-874d7905ffa6'),(668,'2012 Institut for Plantebiologi og Bioteknologi, 2012 Planteglykobiologi',66800,'a6602bb7-e8e8-4e1a-9796-ab2d498c688b'),(669,'SCIENCE Fakultetssekretariat, IT',572600,'a4197d14-f81a-4e63-8f0b-867f34007326'),(670,'2012 Institut for Human Ernæring, 2012 Sekretariatet',71100,'7faf6fc8-c8b2-46f7-8860-f735343b4e0b'),(671,'Biomedicinsk Institut, CF Integrated Microscopy',311700,'9400bcff-a9cf-4ae7-a3d8-7db3edc71f3e'),(672,'LUKKET: 2012 Indlejrede centre mv.',99000,'eb6a7343-8b2a-479d-8267-b4abaded61ef'),(673,'2012 Fakultetsservice, 2012 ErhvervsService',75800,'3f990924-72a0-4e36-8b0b-6322eb6765b4'),(674,'2012 Indlejrede centre mv., 2012 Biopeople',99100,'81156d57-3b89-44ce-912e-03ebaf61d7e3'),(675,'2012 Institut for Farmakologi og Farmakoterapi, 2012 Samfundsfarmaci',92300,'58d58cce-5740-4151-9569-2e376bfaee67'),(676,'Institut for Folkesundhedsvidenskab, Undervisning - SB',333100,'3ffc39a9-2341-4379-8677-0bc925f0ada5'),(677,'2012 Institut for Farmakologi og Farmakoterapi, 2012 System Farmakologi',92200,'87138058-0617-4fc0-9a01-e228f6f1baad'),(678,'Klinisk Farmaci',92400,'009babb2-8416-41f8-a761-5290fbfa1df3'),(679,'Institut for International Sundhed, Immunologi og Mikrobiologi, 2012 School of Global Health',313700,'751dc5f5-6140-4fa8-b092-277634cc6107'),(680,'Institut for International Sundhed, Immunologi og Mikrobiologi, 2012 Research Programme in Global Health',313000,'fa18f2b9-74e0-4ee2-900e-2021d9b2b721'),(681,'2012 Fakultetsservice, 2012 Internationalt kontor',95600,'1ed25dd1-52a8-46ab-8fd7-0e783fb3d8c6'),(682,'Niels Bohr Institutet, Bygningsdrift',505600,'4a731e02-e9df-4de7-b01b-7fc0aed3060f'),(683,'The Novo Nordisk Foundation Center for Basic Metabolic Research',386000,'7b966dde-c00f-4fbe-8880-5f2a2f89fdf0'),(684,'The Novo Nordisk Foundation Center for Basic Metabolic Research, Science Communication',386600,'52088885-e46c-457d-9302-27ce5badb111'),(685,'Forskning & Innovation',753000,'5f425a06-99f0-47c1-b862-e4287aff7151'),(686,'Forskning & Innovation, Afdelingsledelse',753100,'fe07b438-d6e5-4953-9f07-dd4207e7c73d'),(687,'Institut for Statskundskab, Center for Valg og Partier (CVAP)',237500,'b60ffedf-0556-4848-b48e-62f64229a509'),(688,'The Novo Nordisk Foundation Center for Basic Metabolic Research, Translational Metabolic Physiology',386400,'604e8e3e-1ad7-44cc-81e6-21b907f2b050'),(689,'Institut for Geovidenskab og Naturforvaltning, 2012 Dynamisk Geomorfologi og kvartærgeologi',509700,'ba72c721-f5c5-40bf-88ca-e79855f9a02d'),(690,'Koncern-økonomi',775000,'f639b6cc-0e43-4ff7-a071-b9e43599e0fb'),(691,'Koncern-økonomi, Regnskabssektionen',777500,'c9d5b5c2-1d76-4261-8e01-79cca9e5864c'),(692,'LUKKET: Forskeruddannelsesprogram i Arkæologi, Etnologi, Græsk & Latin, og Historie',464100,'a0199313-1414-44c7-b7e7-1e4716a60366'),(693,'The Novo Nordisk Foundation Center for Basic Metabolic Research, Metabolics Genetics',386100,'e3a0001b-abf2-4d53-9b54-953a073ebdb2'),(694,'Økonomisk Institut, Economic Policy Research Unit (EPRU)',227300,'16a0e3a2-1f3e-4aac-8a52-53b6c83285ae'),(695,'Fakultetsservice, 2012 Fællesfakultære aktiviteter',301000,'b1a61424-a536-41f1-9f29-3dd31c329d3d'),(696,'The Novo Nordisk Foundation Center for Basic Metabolic Research, Integrative Physiology',386200,'f5c02285-1803-40db-b09e-eaa01320a7bf'),(697,'2012 Institut for Idræt, 2012 Motorisk kontrol og biomekanik',520600,'6d60ba91-4c19-4b13-a3c5-14d0c7fae0e2'),(698,'JUR Ledelsen, Dekanatet',604000,'49d486b9-91b0-4e32-809b-36838383d227'),(699,'Institut for Økologi, Zoologi',65400,'eacc3d11-6d90-48a4-8bfc-d4331920072a'),(700,'The Novo Nordisk Foundation Center for Basic Metabolic Research, Metabolic Receptology',386300,'73b4d4b1-2666-464a-855a-8517ef87380d'),(701,'2012 Institut for Veterinær Sygdomsbiologi, 2012 Veterinærapoteket',64300,'e3f795df-909a-46a9-94a6-eec20bf61aee'),(702,'Forskning & Innovation, EU Kontoret',753600,'a516b374-91c6-4eb6-bccb-267168409eff'),(703,'SCIENCE Fakultetssekretariat, Forskning og Innovation',572500,'2bf794ee-4744-42ea-8c00-f2b5711d57bb'),(704,'2012 Institut for Grundvidenskab og Miljø, 2012 Stab',70900,'96a2e687-7738-48e1-8898-ed3eb1a8aa87'),(705,'The Novo Nordisk Foundation Center for Basic Metabolic Research, Metabolic Imaging and Liver Metabolism',386500,'3f34d3e3-fd6d-41bc-8b19-c1e20992c47b'),(706,'Forskningsområdet, Center for Offentlig Regulering og Administration',622800,'6c34b7c4-c567-4e04-a8f4-e85197d4ab46'),(707,'2012 Institut for Basal Husdyr- og Veterinærvidenskab, 2012 Bioinformatik',61700,'9d35e1f1-3cd3-4d39-801e-1f591d7b2776'),(708,'SAMF fakultetfællesudgifter, SAMF IT-center ',214000,'eaeb8bda-5dff-436e-93a1-04eb9caf8c96'),(709,'Institut for Psykologi, Ph.d.-Studienævn, Psykologi',265000,'f2400b55-e8a3-4b33-808c-b2853d5adb0c'),(710,'Fakultetsservice, HUMIT',453000,'54cf4826-a276-47f0-996d-fd1015f482c8'),(711,'2012 Institut for Idræt, 2012 Afd. for Human Fysiologi',520200,'d47c0da0-998c-4695-bdc6-98a3f3306522'),(712,'Centre m.v., Fællesudgifter for fakultetet',580100,'9af3a915-0d2c-41ab-a71f-7196344d6218'),(713,'Uddannelsesservice, Uddannelsesstrategisk sekretariat',720200,'edc13bbb-bd0a-419f-a5b6-37895e70a05a'),(714,'2012 Institut for Human Ernæring, 2012 Laboratoriet',71200,'f140b287-e9fa-495d-9001-a7ed92365803'),(715,'Institut for Neurovidenskab og Farmakologi, TransNeuro-gruppen',315700,'e1f00e7e-0d6f-4b6e-bf65-404a26c1209a'),(716,'LUKKET: 2012 DanStem',375000,'36526e0e-335c-4cf6-b3e4-469849d45a1c'),(717,'LUKKET: Forskeruddannelsesprogram i Medier og Kommunikation',467100,'39e50883-ac86-4911-9580-4c81cead6034'),(718,'Niels Bohr Institutet, eScience',504100,'02d35c24-8abf-4132-ab65-da9d8867e68e'),(719,'2012 Institut for Idræt, 2012 Idræt, politik og velfærd',520300,'66999d6a-9b6b-480e-99ae-b2be12fb8a95'),(720,'Fakultetsservice, 2012 Studieadministrationen',301500,'2b055461-46b7-4424-ac51-7089b1309f24'),(721,'The Novo Nordisk Foundation Center for Protein Research, Disease Biology',385400,'6e042c6f-11f2-4f31-8884-4467d6c1807d'),(722,'TEO Center for afrika, Studienævntet for afrikastudier',126500,'34a4c5e0-751b-4167-843b-70785bd1bb8b'),(723,'LUKKET: Institut for Molekylær Biologi',526000,'8df67806-cfbe-4480-abec-9f1f2d7324ce'),(724,'Institut for Antropologi, Forskerskole',246000,'5c3b05a2-8871-4a3c-9f87-b449b6ad44f7'),(725,'Institut for Antropologi, DFAE',246100,'23ff5e6b-7973-4dae-bfde-14ee34652beb'),(726,'Odontologisk Institut, Afdeling f. Oral Medicin, Klinisk Oral fysiologi, Oral Patologi & Anatomi.',380300,'4ab3cdd4-0e7f-42cb-8189-be5c3d8cbb4f'),(727,'TEO Fakultetssekretariat, Ph.d.-Studienævntet for teologi',111600,'44376e46-ea12-4c97-acaf-9f42e1e80003'),(728,'2012 Institut for Idræt, 2012 Krop, læring og identitet',520400,'4233a97c-b4fe-4f24-ab21-5df30b77fe9c'),(729,'SCIENCE Fakultetssekretariat, Kommunikation',572400,'6866b2b4-7368-4129-b443-987ba3b1d454'),(730,'Centre m.v., SCI-FI Projekter',580300,'71e40f90-9884-4813-9ad2-2eb7716e9f1c'),(731,'Rektorsekretariatet, Afdelingsledelse',718100,'6660818b-4b16-444c-bf4d-9b693ddee26a'),(732,'Koncern-it, Projekter og Portefølje',769000,'6f588f75-444f-484e-97a4-16735a380b10'),(733,'Campus Service SUND',303000,'a93e3dcc-30d1-4358-a111-2a46ab346775'),(734,'2012 DanStem, 2012 BasicStem NNF',375100,'dcd957c2-c881-4639-943c-418159edb961'),(735,'Fakultetsservice, Forskerservice',455900,'4299144a-4567-4778-a2f3-74fe97b365f7'),(736,'Fakultetsservice, Læringsenheden',457600,'5e4b1626-1a81-4869-99d2-dc87874e0360'),(737,'Niels Bohr Institutet, Space Science Centre',504000,'baecced6-f6ff-4ba7-8935-e99bca59370a'),(738,'Institut for Cellulær og Molekylær Medicin, Afdeling VII',316700,'5fcbde6b-0134-4c92-893c-3c969c3c6811'),(739,'Økonomisk Institut, Forskerskole',226000,'0c1839a0-8291-41c0-9160-4cf9c10c9d03'),(740,'2012 Institut for Farmakologi og Farmakoterapi, 2012 Klinisk Farmaci',92400,'d7512f3f-f162-4a14-aff2-275c7c39455d'),(741,'2012 Institut for Idræt, 2012 Molekylær fysiologi, Metabolisme, ernæring og sundhed',520500,'89184ca3-f95d-4351-bc1b-5a645bdf8a42'),(742,'2012 Institut for Plantebiologi og Bioteknologi, 2012 Plant Biotech Denmark',66500,'9155a6f6-a802-45f5-a162-5b1327769427'),(743,'Research Groups, Erler Group',863900,'89df5a07-206e-47a5-ac62-e3289e1969a8'),(744,'2012 Institut for Human Ernæring, 2012 Køkkenet',71300,'3f10788e-9e2a-4be5-8269-7b75f40c0d2b'),(745,'LUKKET: Forskeruddannelsesprogram i Kulturstudier, Litteratur og Kunstfag',462100,'efa87e8d-8fa0-435c-9e7f-793a270b988f'),(746,'HR & Organisation, Kompetence- og Ledelsesudvikling',751600,'dbbc2fc9-c3f9-4e7b-8360-1d3bea056845'),(747,'Forskningsområdet, Center for International Courts',623000,'03bb9da4-2afe-4290-9e83-3d9670bb3a81'),(748,'2012 DanStem, 2012 TransStem DSF',375200,'d330571e-efb5-427f-af75-ab9edaad1807'),(749,'The Novo Nordisk Foundation Center for Protein Research, Chromatin Structure and Function',385500,'79456e69-ae1d-4de3-be91-1494525bbfe8'),(750,'Institut for Klinisk Medicin, Kirurgi og Anæstesiologi',328200,'526bbebc-c264-4d85-ba0d-16d0d0862235'),(751,'Institut for Psykologi, Center for Spæd- og Småbørn (CFSS)',267200,'99d1beba-8cc0-4f96-898b-899561c37910'),(752,'LUKKET: Forskeruddannelsesprogram i Tværkulturelle og Regionale Studier',463100,'294333ae-b652-45a4-9714-a6f9b55fb375'),(753,'Koncern-it, Kunder og Løsninger',766000,'89dad1ab-49a5-4475-8efb-cde520168338'),(754,'2012 Institut for Plantebiologi og Bioteknologi, 2012 Forskerskolen FOBI',66600,'bdfd3176-8a4d-4340-b79f-7d600c67b9ff'),(755,'SAMF fakultetfællesudgifter, Fakultetsbiblioteket',215000,'82a22e27-b3e7-47bc-901e-6ac1fcf40827'),(756,'Ph.d studienævnet, Økonomisk Institut',225000,'0d57eee7-2e06-41f7-84c2-2c6a812fb38b'),(757,'UNIK - Food, Fitness and Pharma',388000,'8765aef8-f46e-432a-8c58-d3a17ab9c604'),(758,'Fakultetsservice, ITMEDIA',453900,'5e8bbf75-ec4b-4adf-b5fd-991401593b51'),(759,'LUKKET: Forskeruddannelsesprogram i Sprogvidenskab',460100,'4b1de851-ae53-4821-b085-dc4f86ae1733'),(760,'LUKKET: Forskeruddannelsesprogram i Filosofi',465100,'ae07441a-4031-45b9-9dfe-e75e93ac6f5a'),(761,'LUKKET: Forskeruddannelsesprogram i TRAMS',466100,'2cb63e13-0086-42bc-adb6-78cd0d415cb8'),(762,'Uddannelsesservice, Vejledning og Optagelse',728000,'866fe004-f7f4-4a6e-b3d5-883c397aa968'),(763,'Odontologisk Institut, 2012 Lab. for fælles fysiologi og elmyografi',382400,'b934ad6b-12ad-42b5-b0ac-c751476a773a'),(764,'LUKKET: NIAS Information, konferencer og scholarships',280100,'4d3abb36-adab-4ae6-a54b-a5f57b2b43b8'),(765,'LUKKET: Centre m.v.',581000,'35986b88-70e3-4736-935d-d96712ee1af7'),(766,'Centre m.v., CITI',581100,'31c1f1c4-5ae1-4daf-ab00-d3d781792034'),(767,'Institut for Matematiske Fag, 2012 Matematisk Afdeling',501100,'897d01d4-5373-4ed6-8ef5-a6f54c3a0636'),(768,'Campus Service City',290000,'bb83934b-6a9c-4adc-9508-bd2b569693e5'),(769,'LUKKET: 2012 DanStem - andre danske, eksterne bevillinger',375300,'6153b8a0-a7a9-45da-8af1-14e78663c9e0'),(770,'Campus Service Søndre, Studenterafdelingen',458600,'dee2533c-edbd-4cc6-b418-031e46645160'),(771,'Niels Bohr Institutet, IT',505500,'83d9e65d-1399-43fd-a092-0008be79b214'),(772,'Niels Bohr Institutet, Kommunikation',505800,'4239f987-ea86-43e3-a34d-96af11b0fde4'),(773,'SAMF fakultetfællesudgifter, Pædagogisk Center Samfundsvidenskab (PCS)',212600,'43f82875-6d2e-402e-8c06-e5e5792c3a52'),(774,'Fakultetsservice, SUND Regnskab',302000,'d0044504-da72-4284-8c0f-0282270623de'),(775,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer',80000,'da71069a-8c72-4c47-9e72-6147192c0cd1'),(776,'LUKKET: Studienævnet for Asienstudier',480300,'d7c9cba8-c303-4379-b104-e02bb1bd7adb'),(777,'Retsmedicinsk Institut, Afdeling for Retspatologi',361000,'491becaa-3ee3-4bcc-a4ad-5467820e22cc'),(778,'Retsmedicinsk Institut, Afdeling for Retsgenetik',362000,'4787ad30-507b-4972-a4aa-26c836061d4e'),(779,'Retsmedicinsk Institut, Afdeling for Retskemi',363000,'29cd2032-5b37-4417-825d-44f9d91fd41c'),(780,'Det Kgl. Bibliotek, KUA',953000,'936faa44-d8ec-416b-b183-48875075e173'),(781,'Studieskolen',953600,'9a7da7fa-1678-401a-9781-82128a6307e1'),(782,'LUKKET: Hotelejer Anders Månsson og hustru Hanne Månssons legat',920100,'ae8ad12d-53c0-441f-a3dc-977ff85a5493'),(783,'HR & Organisation, Afdelingsledelse',751100,'656592bf-c2ed-43fc-b0b5-567fad089afa'),(784,'SCIENCE Campus Service, Campus Service Nord - Feltstationer',590900,'943f6445-feed-4dd9-b416-06d71cd843fc'),(785,'Institut for Geovidenskab og Naturforvaltning, 2012 Geokemi, mineralogi og petrologi',508900,'74c09712-0da3-49a2-beee-9a1acfc280c6'),(786,'LUKKET: Center for Subjektivitetsforskning',124500,'6161def6-f237-425e-b709-d9e2fff67bd6'),(787,'Direktørsekretariatet, IT-Sikkerhed',713300,'fb95304d-f75e-4e4e-8cf4-3c877c84e892'),(788,'LUKKET: Fusionssekretariatet',717000,'6a585e88-1bb9-47c3-8035-63546e565aa5'),(789,'SCIENCE Campus Service - IFI',590800,'ba519a0b-1e30-4812-aa75-1d2999506b90'),(790,'Fakultet Fælles',410000,'5494f08c-dc64-4ec8-950c-304784f56952'),(791,'Institut for Folkesundhedsvidenskab, Forskerskole i biostatistik',331600,'14ec3106-72f7-46ea-ae95-f53ba620945d'),(792,'Biologisk Institut, Biologisk Studienævn',525900,'9ca35401-9bf2-4026-875f-0cec4be4b03e'),(793,'2012 Institut for Medicinsk Mikrobiologi og Immunologi, Forskerskole, International Sundhed',321100,'01e480a8-694c-4d87-8bcd-1f7379ccca79'),(794,'LUKKET: FA-lager',716000,'0c2fabc4-83ca-41dc-b4fe-2fa5cc708af4'),(795,'TEO Fakultetssekretariat, Bibliotekssektionen',111500,'5d2d3bb4-0b47-4972-9ae9-1815432b96c5'),(796,'LUKKET: Master i Europastudier',202000,'9a15bfe7-e88c-4b94-8354-1cf58f1011cf'),(797,'Økonomisk Institut, IT',220900,'0c5ed28d-b953-4c0a-aaf1-3c98abb28b0c'),(798,'Institut for Statskundskab, Institutadministration',230300,'f22902cc-0e8a-4eff-bc7d-8b9d2463b3dd'),(799,'Institut for Statskundskab, Den Politologiske Forskerskole',236100,'c31cb8e5-8851-42d2-bd6d-ed91689a9976'),(800,'Institut for Antropologi, Bibliotek',240400,'4ef2a217-d55d-4058-a7af-af280e21257c'),(801,'Sociologisk Institut, Bibliotek',250400,'d9a4bc5c-942e-418d-9622-96ac1606ef18'),(802,'Campus Service City, Teknisk Service',292000,'8695048b-a0d9-469f-8682-8ab3f4e4bb6a'),(803,'Fakultetsservice, Økonomi',301400,'f7589701-f0b8-400c-83f9-5051fd5afbac'),(804,'Institut for Statskundskab, Forskerskole',236000,'cf9920ae-5ea7-4ed6-868a-4903f59dfcb9'),(805,'SEA, Bygningsdrift - KU fælles',802500,'88a1d654-953a-401e-8030-f642dc2cb395'),(806,'Campus Service SUND, Affaldshåndtering-Posthåndtering-Varetransport-Driftsområde SVF',303700,'3b2841c9-6ec1-453a-a1b8-77c164418ea5'),(807,'LUKKET: Medicinsk-anatomisk Institut, Cellebiologi I',343000,'e34d1d69-1078-4567-8d91-6dcfc6c8e628'),(808,'LUKKET: Medicinsk-anatomisk Institut, Neurobiologi II',348000,'f8bc79d4-02d1-4252-a47e-117d22bf7119'),(809,'LUKKET: Institut for Medicinsk Biokemi og Genetik, Forskerskolen i Genmedicin',351000,'8385d564-0686-4dc6-a219-4d08c851763b'),(810,'LUKKET: Institut for Medicinsk Biokemi og Genetik, Institut for medicinsk biokemi og genetik, Afd. A',352000,'46e66a8f-74f2-41fc-8a89-940081e7e5f5'),(811,'LUKKET: Institut for Medicinsk Biokemi og Genetik, Institut for medicinsk biokemi og genetik, Afd. G',355000,'662e088b-f946-4411-b64f-81bc0ab2c97c'),(812,'LUKKET: Institut for Medicinsk Biokemi og Genetik, Institut for medicinsk biokemi og genetik, NMR-Center',356000,'7e404c3c-0645-42d5-a933-1b53f5ec2851'),(813,'Odontologisk Institut, 2012 Lab. for Dentalmaterialer',381800,'cd54ffa0-3a67-42e2-91c6-ebb2ba3b137b'),(814,'Odontologisk Institut, 2012 Flour-lab',382300,'b99c7b4f-34d8-42e8-8d72-41ad09958f04'),(815,'Odontologisk Institut, 2012 Lab. for Cephalometri',382600,'f751ad8f-e296-4e62-8955-4108b7ba7d31'),(816,'Odontologisk Institut, Klinik - Radiologi',383100,'0da3a53a-6f8c-40a1-b715-f498d7795588'),(817,'Odontologisk Institut, Klinik - Tand/Bidfunktion',383500,'471d1c47-fb60-4d47-a3d2-0a8ce50641f2'),(818,'ALDRIG BRUGT: Dekanat, Kopiservice',451200,'daa6e471-d25e-4cf2-ad29-1c04cc91cf9a'),(819,'ALDRIG BRUGT: Fakultetssekretariatet, Fælles driftsudgifter for Fak.Sek.',452100,'17619020-fa3e-4a33-9cc9-d022f47be57c'),(820,'ALDRIG BRUGT: Fakultetssekretariatet, Åben Uddannelse',452500,'104ec0ce-d46b-4544-9f09-1e9bb966883e'),(821,'Campus Service Søndre, Humaniora Driftsservice',458200,'b47896b6-e8e4-40d5-afcb-295744e72e88'),(822,'LUKKET: Studienævnet for Finsk',472300,'aa1b766a-d6c5-4ba6-8f17-116eea7c6b1f'),(823,'LUKKET: DFD',472900,'6f130eeb-ca28-462d-a20e-95dce84b9c41'),(824,'LUKKET: Studienævnet for filosofi',476200,'19f67a78-945b-4946-8cb1-964c00cdac9f'),(825,'LUKKET: Studienævnet for historie',478200,'eefb259e-6527-4c02-95e9-50ce03c8e55e'),(826,'LUKKET: Studienævnet for Europæisk Etnologi',478500,'cecacd62-e4e7-4477-9e2b-ad190ae6340f'),(827,'LUKKET: Studienævnet for Niebuhrstudier',480200,'288acc58-f804-4f2c-b0de-68813b99fc44'),(828,'LUKKET: Studienævnet for spansk og portugisisk',482400,'baf9fc26-9183-4cde-951d-7d95b05afb91'),(829,'LUKKET: Studienævnet for Dans- og Teatervidenskab',484200,'dd65a90e-5d13-472f-b25f-45ae3b38f55b'),(830,'Institut for Geovidenskab og Naturforvaltning, 2012 Biblioteket',509200,'63ea77ca-5af0-43ca-89cd-2a4f0b6c7490'),(831,'Kemisk Institut, Indkøbscentral',523300,'85ee3aad-1c9f-4708-9bb3-26d2a5a6a39f'),(832,'LUKKET: Institut for Molekylær Biologi, AKI  1',526100,'ed2c5149-080f-49f4-80d6-f66a6cd31f43'),(833,'LUKKET: Institut for Molekylær Biologi, MBI 1',526500,'9028a2c5-810e-447c-b2cf-c19c4536fdfe'),(834,'SCIENCE Studienævn, Studienævn for Biologi og Husdyrvidenskab (SNBH)',599100,'1bb76933-17a0-4c6d-906c-03585d9f2089'),(835,'SCIENCE Studienævn, Studienævn for Fødevarer, Human Ernæring og Idræt (SNFHI)',599400,'cfc7eed3-0ac1-4f07-a725-0db2162289d2'),(836,'CVU',959100,'69809d6b-b171-4ca2-b408-1c63ba5fbb20'),(837,'Forskningsafdelinger, Juridisk Forskningsafdeling II',680200,'4573cb81-0579-4bef-bcae-7bb126c32924'),(838,'Formidlingsservice, biblioteker, Kriminalistisk Bibliotek',690300,'ea57a86c-f1ff-4e80-9159-983dd07636e9'),(839,'Koncern-økonomi, Økonomifaglig IT-sektion',777000,'bef96c11-768b-4b2e-bc20-04511d2fb856'),(840,'Elever og Praktikanter',801000,'6c48c5b7-77af-448a-ba20-a9a99f411e91'),(841,'SEA',802000,'abce0812-9d26-42ac-8970-2f7efecf572b'),(842,'SEA, Husleje',802300,'672ad6e5-ccbd-4c34-82c2-70f4c7e4474d'),(843,'LUKKET: Danmarks Evalueringsinstitut, IT-enhed',931100,'44700865-8069-4ec2-b469-dba3f1cd961d'),(844,'LUKKET: Danmarks Evalueringsinstitut, VEU-enhed',931700,'29f4ccd1-0e2e-492a-8587-dd37c94a630a'),(845,'Studenterhuset',950100,'667939fc-4949-4f25-af44-b9472834a7b5'),(846,'LUKKET: S.R. Vuggestuen, S.R. Vuggestuen',950500,'ec0d746d-7e7d-4dcc-911e-30dd0d0d1594'),(847,'LUKKET: Martin Flensborg, Martin Flensborg',950800,'497272cc-48e6-4d33-9dfd-c5ada4359ddf'),(848,'LUKKET: Folkeuniversitetet, Folkeuniversitetet',951300,'f09f9a25-819b-47d4-bad9-346e76d43214'),(849,'LUKKET: C.B.Hallstein og K. Mortensen, C.B.Hallstein og K. Mortensen',952000,'b29f0a23-e8d0-4ef5-a8ad-88ddcab3d3da'),(850,'Traneas Company Invest Aps.',952500,'b4747de5-e58a-440f-b1d5-216538113679'),(851,'Institut for Folkesundhedsvidenskab, FSV-sekretariatet (Folkesundhedsvidenskab)',331000,'571e88f9-933f-4b23-9674-a3ad20e1717f'),(852,'Institut for Folkesundhedsvidenskab, Afdeling for Medicinsk Videnskabsteori',334000,'f0a84d42-1c35-4a43-b1fe-4162339b4edf'),(853,'Campus Service, Campus Support',746000,'8f658ebd-50ae-4ff9-9051-38558bb75ec4'),(854,'Institut for Folkesundhedsvidenskab, Afdeling for Sundhedspsykologi',339000,'9696372b-a0f3-4aab-a821-7db647d71f90'),(855,'LUKKET: Medicinsk-anatomisk Institut',340000,'2b197939-fbd0-46c5-a0c0-da06f6270267'),(856,'LUKKET: Institut for Molekylær Patologi, Neuropatologisk Laboratorium',327100,'000ee29a-2308-4e1e-a699-e1ace0442ec8'),(857,'LUKKET: Institut for Molekylær Patologi, Proteinlaboratoriet',327200,'40b96ecb-9eca-4359-8915-c7d3e3f27d97'),(858,'TEO Center for afrika, CAS - Nord/Syd',126100,'d08ae839-4394-41e5-bc53-0ec8c1e2f5cb'),(859,'SAMF fakultetfællesudgifter, SAMF reprocenter',212300,'7e8ed310-53b1-446f-9e96-0ddd8ff875f5'),(860,'Fakultetsservice, Sek. for kvalitetssikring og ledelsesinformation',302500,'a44bf887-bafd-4530-b5d1-9995c5814f98'),(861,'Campus Service SUND, Teknisk Service - Driftsområde SVF',303400,'1afa0927-11b4-493d-806a-3f440c6c93e1'),(862,'Farmakologisk Institut, Neuropsykiatrisk Laboratorium',323100,'78a6133a-020e-4564-8f93-4b5a7cd216b7'),(863,'LUKKET: Medicinsk Fysiologisk Institut, Afdeling for Cellulær og Molekylær Fysiologi',325200,'67248ff5-5c99-4e0c-8ccd-9988eded62fc'),(864,'LUKKET: Medicinsk Fysiologisk Institut, Afdeling for Nyre og Kredsløb',325600,'72ac62eb-69e4-4c20-9c64-a0f1c89f34d7'),(865,'LUKKET: Medicinsk Fysiologisk Institut, Cluster for molekylær imaging',326200,'6d1391d8-a337-497a-a132-b533fb9766e5'),(866,'LUKKET: Institut for Molekylær Patologi',327000,'addfca8e-aba0-45d2-bd0b-0f9bebae451b'),(867,'Danmarks Farmaceutiske Højskole',954500,'7a16333f-a8e7-4b21-86ad-95b9fa068d6c'),(868,'LUKKET: Luftmeldepost, Luftmeldepost',954700,'33e778ff-269d-400d-83f4-9a12f2dbf58e'),(869,'LUKKET: Meteorologisk Institut, Meteorologisk Institut',954800,'65ab1a9f-5ab6-4084-acae-4e58aa973a25'),(870,'LUKKET: Aage Dam, Aage Dam',955000,'88f3cd73-eb2d-4fb2-ad6f-765f39fdfb3b'),(871,'LUKKET: Entreprenørforeningen, Entreprenørforeningen',955100,'4e5d2cf9-00f0-4123-ba8f-91fcc969fe76'),(872,'LUKKET: Dansk Mobiltelefon, Dansk Mobiltelefon',955200,'66e74549-c814-443e-9ce2-8ccd712990c9'),(873,'Panumbogladen',955500,'029ad3d4-d2a7-4af8-8073-c50b71a21815'),(874,'LUKKET: Ebbe Elmer, Ebbe Elmer',955600,'0f881bf8-ea24-4a6c-955a-dd6599c3c594'),(875,'LUKKET: Frederikshavns Aftenskole, Frederikshavns Aftenskole',955700,'0728cd5d-ebf6-4963-bb93-f630f5286f37'),(876,'LUKKET: U.S.G. (Universitetets Studenter-Gymnastik), U.S.G. (Universitetets Studenter-Gymnastik)',955900,'add5c70d-d7a0-45f6-bd6c-dd89dbe63546'),(877,'LUKKET: ERIK CHRISTENSEN, Erik Christensen',956000,'889a1caf-f5e8-4be2-b74b-c52a1efc9651'),(878,'Odontologisk Boghandel',956100,'b8580a48-b20f-41a7-973f-c04fe9cf1ec0'),(879,'Hovedstadens sygehusfællesskab/Region Hovedstaden, H:S i Teilumbygningen',956200,'73bb5cd1-495b-4a32-93ff-cc825269ea77'),(880,'LUKKET: Akademisk Boghandel - Sundhed og Samfund',956600,'dd08d0fa-b098-484b-8d0e-0479e4767213'),(881,'LUKKET: Akademisk Boghandel Fond, Akademisk Boghandel Fond',956700,'7fa03ab4-7da2-44fd-89a3-28de533a8a24'),(882,'LUKKET: Københavns Tekniske Skole, Tandteknikerskolen, Københavns Tekniske Skole, Tandteknikerskolen',956800,'54ce9840-aad5-474d-8530-7b89fe852cc6'),(883,'LUKKET: Institut for Medicinsk Biokemi og Genetik, Institut for medicinsk biokemi og genetik, Afd. B',353000,'acc489a5-761a-4a53-a853-e33820c3522b'),(884,'SCIENCE Studienævn, Studienævn for Fysik, Kemi og Nanoscience (SNFKN)',599300,'4acedb15-0366-4f6b-8a3b-1127df8f1796'),(885,'SCIENCE Studienævn, Studienævn for Geovidenskaber og Planlægning (SNGP)',599500,'47af61de-1c42-41bc-905c-f793df8d3677'),(886,'SCIENCE Studienævn, Studienævn for Matematik og Datalogi (SNMD)',599600,'6226cc8c-9388-40c7-bd11-4f9532838ddc'),(887,'Budgetregulering/kvalitetsfremmepuljen',601000,'4a888d5b-8b40-42a7-a449-49ac596a0b1a'),(888,'LUKKET: Forskningsområdet II',621000,'d54a1132-8579-4f06-b6a5-9f8af1d5e09e'),(889,'Forskningsområdet, Pensionsretligt Forskningscenter',622300,'8ec440e7-6a1f-4dd7-ac1d-815b60cb8f2b'),(890,'Serviceenheder, Forskningsserice, jurahuset',651200,'c528656d-b26a-4ce3-8c83-d62898792052'),(891,'Serviceenheder, Uddannelsesservice',652000,'95087b8f-57c5-4a90-9cf4-1edd6836ddd7'),(892,'Serviceenheder, Uddannelsesservice, internationalt sekretariat',653000,'c7e5bb4c-2910-4e60-b9c8-69c3f2045a6a'),(893,'Serviceenheder, Formidlingsservice, IT-afdelingen og Journal',654000,'4a8e26c4-2bd3-49fd-84fa-0e4b873370ee'),(894,'Juridiske heltidsuddannelser, Dansk Juridisk forskerskole',660400,'151c2bde-d7fd-425c-802c-5777cfb3013d'),(895,'JUR Juridiske deltidsuddannelser, Juridisk Åben Uddannelse',670300,'f6c097bd-150b-460a-8269-4fe97f5c1ac6'),(896,'LUKKET: Forskningsafdelinger',680000,'2e3f4c56-4078-422d-94ba-e798ca809732'),(897,'Forskningsafdelinger, Juridisk Forskningsafdeling I',680100,'ea1c34e5-49da-42cb-aede-05df25fe50a2'),(898,'Forskningsafdelinger, Juridisk Forskningsafdeling III',680300,'b4dea342-be5c-4481-b3a1-f3be589373ad'),(899,'LUKKET: Formidlingsservice, biblioteker',690100,'999e2d3b-b574-4069-a407-fe4c7fbca2e5'),(900,'Formidlingsservice, biblioteker, Juridisk Forskningsbibliotek',690200,'c2b5e6ce-3bbf-49b8-9ad2-3be1234d3cfa'),(901,'Formidlingsservice, biblioteker, Juridisk Laboratorium',690400,'78fafef6-022b-4c68-805e-d7ac176a7fd4'),(902,'LUKKET: Direktørsekretariatet',710000,'0a3c0c69-862e-44ed-b64e-9e78e6e6a485'),(903,'Direktørsekretariatet, Universitetsdirektøren',712000,'5773e0f8-7864-406f-aa5f-64823da45227'),(904,'LUKKET: Direktørsekretariatet',713000,'927cb2ff-18b8-429a-9b77-c04db5fc1a67'),(905,'Direktørsekretariatet, Forsknings- og erhvervsteamet',713100,'0275802f-882b-4bcc-b89e-3abdb11fbec0'),(906,'LUKKET: A/S TLK AF 1971, A/S TLK AF 1971',957000,'e22463d5-8b57-490c-9ac1-afdeeff10c23'),(907,'LUKKET: BALLE PETERSEN, Poul og Tolra Balle Petersen',957100,'53e6db3e-5a32-4e2e-989a-163c4b103a16'),(908,'LUKKET: NIMB (Nuclear Instruments and Methods)',957300,'476bd6cf-e2c9-4b26-968c-e7a04ff90488'),(909,'Statens Institut for Folkesundhed (SIF)',957400,'505d1c49-01d3-4dfb-a676-dd52574eeff1'),(910,'Almen Praksis ved Universiteterne (APU)',957500,'767dd6d1-fe08-4d9a-a743-0d9fac321a02'),(911,'Danmarks Rumcenter',957700,'c7684fb1-9d1d-49fc-8dbe-e2a9bf9605b6'),(912,'LUKKET: Ease International Aps',957800,'34fddf1b-6416-42c7-89c5-36974f4cb5f1'),(913,'LUKKET: Københavns Astronomiske Forening',957900,'02591eac-9d4b-46b0-b62e-96fdb119dfe0'),(914,'Region Hovedstaden',958100,'eb81dd6a-96d5-419d-a8d9-ff5fde6b37ba'),(915,'The Danish Pharma Consortium',958200,'2bde49a6-b703-4032-91ce-37e09c623358'),(916,'LUKKET: Den selvejende institution Panumhaven Integreret institution',958300,'169859ff-de62-473e-8304-165815b366d8'),(917,'Institut for sygdomsforebyggelse',958400,'01b9f583-fbf8-4666-a595-3e2a65448f83'),(918,'Academic Books',958500,'bd0eae5c-7f0f-43eb-8bb1-56fd0363425b'),(919,'EVOLVA',958600,'bff5dec5-c52e-42fb-8ec2-fdbf6c8795fc'),(920,'LUKKET: Fysioterapeutuddannelsen',958700,'93e96078-d83a-40d8-804b-c1a30b8ceb74'),(921,'LUKKET: Ergoterapeutuddannelsen',958800,'b4583637-c0bf-4795-84b4-566e17377256'),(922,'LUKKET: Antropologi, Danida/Enreca projekter',960100,'1c398100-8d66-4869-937e-4514634bd0b0'),(923,'Museum Tusculanums Forlag / Museum Tusculanum Press',975700,'730c4678-84f7-42a7-bc15-00d886de7f82'),(924,'Studentermenigheden i København',976400,'ed3a8d61-4991-4e01-ba1b-e9774a9ca095'),(925,'Universitetsradioen',976600,'258e50da-5bf6-4c98-b28e-23db175c8e46'),(926,'GEUS, Danmarks og Grønlands Geologiske Unders.',978000,'18ba142f-7cfd-4901-8f83-b150bdae37a8'),(927,'LUKKET: NIAS, Nordic Inst. of Asian Studies, NIAS, Nordic Inst. of Asian Studies',980000,'1bfed7bd-487f-4377-97fe-2f0b100fb8ee'),(928,'LUKKET: Bartholin Instituttet',987000,'05bbace8-f178-4c9e-a91a-3d1f710b1bbe'),(929,'Københavns Kommunes Tandpleje KKT',988900,'9a30a02f-fd93-47b9-acbe-aabe3c8f15a5'),(930,'LUKKET: Enkam Pharmaceutical a/s',989000,'7035096b-b4ec-4c64-8cf4-b955bd6043d8'),(931,'LUKKET: Bioanalytikeruddannelsen i København',989900,'28fe0a5d-76ac-452d-9bed-73d3fd6b8a17'),(932,'JEUDAN (udlejning)',996000,'5483a78e-6773-4c3f-8311-81a325e8fd81'),(933,'Ledige lokaler',998000,'174f9a69-4fbf-4853-a78e-3c3e36d02a49'),(934,'Ledige lokaler Teologi',998100,'4c2273d3-70a0-48b6-8de2-21ecdfe16aaa'),(935,'Ledige lokaler Samfundsvidenskab',998200,'1ec9378b-3892-4900-8930-acf373fab3fd'),(936,'Ledige lokaler Sundhedsvidenskab',998300,'0c58d10b-9264-48e8-9df6-d8ca1f7bef12'),(937,'Ledige lokaler Humaniora',998400,'49029683-402f-44a9-970b-940478917920'),(938,'Ledige lokaler, SCIENCE',998500,'1787f574-2d77-4177-a1b7-a9eb61746684'),(939,'Ledige lokaler Jura',998600,'5868bca3-3205-4b7c-b6f2-a4752b093d1f'),(940,'Ledige lokaler, Fællesadministrationen',998700,'10d77766-c110-4fd3-a1a9-061f0ea03f45'),(941,'Ledige lokaler LIFE',998800,'4eb6f41f-6321-4bae-9273-e13db87bc267'),(942,'Ledige lokaler FARMA',998900,'fef551e0-8580-419f-a57e-5474028598f2'),(943,'Lokaler under ombygning, Teologi',999100,'358e74b9-ab46-4fa9-8276-2df1bae76160'),(944,'Lokaler under ombygning, Samfundsvidenskab',999200,'fb644b65-60ff-4267-9288-6a608d7bc09f'),(945,'Fakultetsservice, 2012 Ph.d administrationen',301100,'d6ce5a1e-1ec5-4ac5-bcf3-38fcf183b1f0'),(946,'Lokaler under ombygning, Sundhedsvidenskab',999300,'05f5bd4a-4797-419d-86ce-b244d0b65d4f'),(947,'Lokaler under ombygning, Humaniora',999400,'0f56b91e-0dd8-4d38-9a93-b522521a9237'),(948,'Lokaler under ombygning, SCIENCE',999500,'5acc30b7-2780-4c02-b98f-bcabf3d9bd4b'),(949,'Lokaler under ombygning, Jura',999600,'ea14db46-865a-4c18-a8a7-6bcd75ff134a'),(950,'Lokaler under ombygning, Fællesadministrationen',999700,'3dff0965-8495-4d6c-a974-7df96b89367b'),(951,'Lokaler under ombygning, LIFE',999800,'e64500f1-4c7c-41d7-bf8e-f88c249ebc7e'),(952,'Lokaler under ombygning, FARMA',999900,'98e9f33a-7dbf-4651-ad2a-76add78c6e02'),(953,'Administration, Økonomi og indkøb',864100,'bb6bad92-3bd2-45d8-a98e-35c2c2e08a02'),(954,'Laboratories, Basis support sektion',865100,'16812c8a-169b-488c-b7ed-fb24dcaef816'),(955,'Laboratories, IVIS section',865400,'58b4c496-f559-40c0-876e-7747fbe7c85c'),(956,'LUKKET: Skolen for klinikassistenter og Tandplejere, Klinikassistentuddannelsen, skolepraktik',866300,'8cbccab5-da39-444c-8cac-99627def1168'),(957,'LUKKET: Kommissionen for den arnamagnæanske samling',867000,'1d953121-9fad-4af3-b315-8b37f8f7e6da'),(958,'Tilmeldingssekretariat',870000,'5b804d5b-d081-467f-8a7d-3ddad17bc1a8'),(959,'LUKKET: Bestyrelsen',880000,'4e88e5c1-697c-497e-a0ad-3ec081b794c4'),(960,'LUKKET: Integration Fælles',890000,'b6be6e46-66f6-4cbd-aa18-598a4bcf2a85'),(961,'LUKKET: Integration Fælles, Integration Personale',890200,'066848d2-73d4-403a-8781-678dc4d382d5'),(962,'LUKKET: Integration Fælles, Integration Udd & Studieadm.',890300,'5d8d8086-4b22-4cbc-872b-31bbf7d1a5ce'),(963,'LUKKET: Integration Fælles, Integration Forsk & Innovation',890400,'0967a5b6-0d09-4538-b3b2-169789cc9148'),(964,'LUKKET: Integration Fælles, Integration Bygninger',890500,'edbf7a52-fac0-48a7-ba79-e0ac55f577a6'),(965,'LUKKET: Integration Fælles, Integration Kommunikation',890600,'94b39824-46cb-4416-a4bf-7a015c2debb8'),(966,'LUKKET: Integration Fælles, Integration Bibliotek',890800,'27278dc0-37ae-4c66-b8a0-595606d0a6d2'),(967,'LUKKET: Integration Fælles, Integration Post/Journal',890900,'3ceb624c-cd16-49a8-b8d5-11a1bb4cbf69'),(968,'The Global Biodiversity Inf. Facility, GBIF, The Global Biodiversity Information Facility',901400,'631ffcc7-10e3-4495-bb4c-5885d8572339'),(969,'LUKKET: Dansk Sprognævn',901600,'e4d4a121-ad91-4953-a9d1-92b91424e48b'),(970,'Studenterrådgivningen',902000,'f90d3b31-be9d-474c-9fd7-4fc317708648'),(971,'LUKKET: Sekretariatet for Øresundsuniversitetet',904000,'7c0771e2-7e2e-43d3-a7b7-a5fe97ffc932'),(972,'LUKKET: IMCC',905000,'78671e71-7729-4930-98db-9235f84e97f1'),(973,'LUKKET: Dansk Ekspeditionsfond',906000,'46850a55-5bc2-4ef6-9448-991f9403bf07'),(974,'LUKKET: ØSS-, STADS- og UPS-samarbejderne',907000,'92131e50-3172-4435-a2ee-3b2ce28d41c3'),(975,'LUKKET: Danmarks Evalueringsinstitut',930000,'326d3b20-5ff6-4a3f-957d-69c8f48916c9'),(976,'LUKKET: Danmarks Evalueringsinstitut, Sekretariat',930100,'ac343ce0-d5a3-4c09-ae6c-b306c636fdab'),(977,'LUKKET: Danmarks Evalueringsinstitut, Enheder',931000,'daae25cd-b389-49da-8d48-98f3cc0faf76'),(978,'LUKKET: Danmarks Evalueringsinstitut, Dataenhed',931200,'2c1f1a4d-ba57-4fee-b0df-0f8f5e6c69ce'),(979,'LUKKET: Danmarks Evalueringsinstitut, Info-enhed',931300,'0845b50c-d403-4ed9-8cac-117257b8b399'),(980,'LUKKET: Danmarks Evalueringsinstitut, Grundskoleenhed',931400,'a8251a9e-930c-48a0-81bc-046c822786a8'),(981,'LUKKET: Danmarks Evalueringsinstitut, Ungdomsudd.enhed',931500,'96eb81c5-75ec-4e8d-a17f-1eb5a8f71ed8'),(982,'LUKKET: Danmarks Evalueringsinstitut, DVU-enhed',931600,'f910840d-cbbb-47a7-923a-68fce9977f04'),(983,'LUKKET: Danmarks Evalueringsinstitut, Ledelse',932000,'a39ac014-8253-4ad0-9e88-69d4cf6c3aa5'),(984,'LUKKET: Danmarks Evalueringsinstitut, Bestyrelse',933000,'1692e417-ef3d-4988-8be4-545eba9ffdb9'),(985,'LUKKET: Danmarks Evalueringsinstitut, Repræsentantskab',934000,'ca1b3824-b1e7-405b-8d42-04f8aa57fbd5'),(986,'Studenterrådet ved Københavns Universitet',950000,'9c330e7a-75bc-4b55-a96c-8da285d487a1'),(987,'LUKKET: Strikkeboden, Strikkeboden',950200,'1f310b0f-1451-4b8f-a287-6c4e4d9411a7'),(988,'LUKKET: Arnold Busck Boghandel A/S, Arnold Busck Boghandel A/S',950300,'199d3d8a-6d11-405e-9975-4dd5c8e73291'),(989,'LUKKET: Frimærkehandler Steen Rosling, Frimærkehandler Steen Rosling',950400,'f7be62b1-2882-46e8-be7b-f30ee32d750f'),(990,'LUKKET: Jafinder Singh Dhakwal, Jafinder Singh Dhakwal',950600,'74e90a10-77c6-4b31-8e20-2385f5e3cea7'),(991,'LUKKET: P.Flensborg, Mønter og Medaljer, P.Flensborg, Mønter og Medaljer',950700,'868abdbe-9be1-4bca-a67e-0107d05ece5b'),(992,'AIESEC',950900,'bcba8d80-c8e4-444e-bd17-0d6046fdebba'),(993,'Paludan Bøger A/S',951000,'218dfaeb-269e-45e4-a831-23b1832152c3'),(994,'Fulbright kommissionen',951100,'ef087822-8a71-4ff1-b360-232d9a039ed9'),(995,'Specialtandlægerne i ortodonti',951200,'c0b009b4-ad5e-42b7-a975-817f708abc68'),(996,'Det Kgl.Bibliotek, Indre by',951400,'f7d69f9b-96b8-4350-91f3-fca863fc3622'),(997,'Message A/S',951600,'cd049d33-a6e8-4ecf-be19-dc4b99ca0aa3'),(998,'Kontant Foto Aps',951700,'9b4a9a83-1ecf-4e7f-98b1-959e0f528a8b'),(999,'Stereo Studio',951800,'374dde81-29c6-44d8-a08c-a95de1bd3e2a'),(1000,'Rundetårns Antik v/Eva Eckert',952100,'fdeb4f05-a6ad-4667-9d13-931529ad2781'),(1001,'Kbh\'s prak.lægers laboratorium (KPLL)',952200,'89a0cd56-3a09-41f2-a061-968a1331e7d0'),(1002,'Børnenes Boghandel A/S',952400,'760a3bc1-8d8a-48ee-a558-1a061878920b'),(1003,'Personale organisationer',952600,'c67d5bd8-90b0-4c8e-be45-b92c80602a3a'),(1004,'Feriefonden',952700,'3a725ebf-7f10-4ae1-8525-802d8c803a8c'),(1005,'Poliscentret',952800,'9579fec9-0d49-4bd9-8e2b-3ac8347ec2cf'),(1006,'Academic Books - KUA',952900,'3ac60503-353c-4342-843b-3a9724653ae5'),(1007,'LUKKET: Center for hjerneskade, Center for hjerneskade',953100,'aac143ba-c909-4f09-aa2c-719a6dc451ce'),(1008,'Handicappede Studerende og Kandidater',953300,'9d28e840-87fd-42e4-93f3-9e016173f6b8'),(1009,'Selskab for nordisk filologi',953400,'48b77d3e-029a-4b7a-b4c4-e67d54645971'),(1010,'LUKKET: NORDITA, NORDITA',953700,'3f5f5bef-7af6-4f97-9645-17236e2c0746'),(1011,'LUKKET: Bogladen på August Kroghs Institut, Bogladen på August Kroghs Institut',953800,'1812b52f-fbe2-4f82-8c87-7b3b52664329'),(1012,'LUKKET: Studentergården',953900,'f94e6f73-97a7-45c1-994a-cbfc6e8df0f5'),(1013,'Vuggestuen ved Botanisk Have',954000,'a14fa947-44b3-484b-b552-844281db8e7e'),(1014,'LUKKET: Dansk Rumforskningsinstitut, Dansk Rumforskningsinstitut',954100,'a6106bf8-66ad-4fdd-9e80-48667ff36faa'),(1015,'Institut for Matematiske Fag, 2012 Afdeling for anvendt Matematik og Statistik',501200,'a9528b1f-83bd-40f8-a46c-52aa7e07b197'),(1016,'LUKKET: 2012 DanStem- EU og andre, internationale bevillinger',375400,'d945a403-dad8-4b1c-a667-11bd92f6c5fb'),(1017,'Odontologisk Institut, Afdeling for Dentalmaterialer',380400,'11181549-fb65-4725-bcd5-dcdc8778da9e'),(1018,'Odontologisk Institut, Odontologisk Ældreforskningscenter',380500,'9e36ac71-046e-4035-8769-71810ff71b98'),(1019,'Odontologisk Institut, Afdeling for Tandsygdomslære',381700,'e8362bfb-36dc-4e7e-85ff-a5ee7cef4014'),(1020,'Institut for Plante- og Miljøvidenskab, Genetik og Mikrobiologi',545400,'aa1eeede-2f7a-4f79-8976-06eaf02e3e2c'),(1021,'Økonomisk Institut, Institut Service',221000,'bc1714fd-759c-4dee-b6d5-98b0d5ba1752'),(1022,'Institut for Plante- og Miljøvidenskab, Miljøkemi',545600,'23bf5a34-3437-4406-85e8-764bc966637d'),(1023,'Institut for Plante- og Miljøvidenskab, Plantebiokemi',545800,'acc10dc1-3261-45b7-869d-6675f04bb8da'),(1024,'Institut for Plante- og Miljøvidenskab, Transport',546200,'ae4832f3-9221-4102-8226-7ed1ae452a00'),(1025,'Institut for Plante- og Miljøvidenskab, Plant Biotech Denmark',546400,'a572aae4-118a-416f-9234-2abbabf36006'),(1026,'Institut for Plante- og Miljøvidenskab, Copenhagen Plant Science Center',546600,'c2d0fbb7-d328-4077-bd39-813c9cbee497'),(1027,'Institut for Plante- og Miljøvidenskab, Molekylær Plantebiologi',546800,'a4060c3e-1320-48a1-9e15-12a0463ce6ae'),(1028,'Institut for Plante- og Miljøvidenskab, Planteglycobiologi',547200,'e935502b-6487-43f6-b183-5d12e3a9a9ab'),(1029,'Institut for Plante- og Miljøvidenskab',547900,'ec8195d0-6aa4-4eff-89bf-67a46633869c'),(1030,'Institut for Fødevare- og Ressourceøkonomi',548000,'0e0962d4-b75b-45d0-867f-28937fb79b95'),(1031,'Institut for Fødevare- og Ressourceøkonomi, Sektion for Miljø og Naturressourcer',548200,'055d7fd9-8201-4475-88c5-6f8968c10a93'),(1032,'Institut for Fødevare- og Ressourceøkonomi, Sektion for Global Udvikling',548400,'977ea2c9-edca-4a63-ab16-11f7e6ade7ff'),(1033,'Institut for Fødevare- og Ressourceøkonomi, Sektion for Produktion, Markeder og Politik',548600,'3da77cd3-8bcd-420d-aa67-8a39ea99b798'),(1034,'2012 Farma bygningsdrift, 2012 Lejede lokaler',98500,'e37b06d6-87f9-485f-be47-dc029df42dff'),(1035,'JUR Ledelsen, Sekretærservice',603000,'c44acde9-0f51-4e99-ae9a-fd8da8495bc0'),(1036,'Institut for Fødevare- og Ressourceøkonomi, Sektion for Forbrug, Bioetik og Regulering',548800,'a31e844d-346d-44d2-b75d-9aff056051f7'),(1037,'Institut for Fødevare- og Ressourceøkonomi, ALDRIG BRUGT: 2013 Institutservice',548900,'d4401028-5376-48d1-8918-649048237793'),(1038,'Institut for Fødevare- og Ressourceøkonomi, IFRO-Institutkonto',549900,'eb0a7229-9f45-45dc-8e36-6c7aadd7f183'),(1039,'Institut for Fødevarevidenskab',552000,'a6f46634-e7fe-4aac-84d2-2cab50e413d5'),(1040,'Institut for Fødevarevidenskab, Institutsekretariat',552100,'5b78c8ea-2899-4d18-b605-041fa21cabab'),(1041,'Institut for Fødevarevidenskab, Fødevaremikrobiologi',552200,'c751f61a-336e-4397-be2a-ead542f78dcd'),(1042,'Institut for Fødevarevidenskab, Fødevarekemi',552300,'a8c007f9-8e67-4d77-9e14-4cad9ec34ee7'),(1043,'Institut for Fødevarevidenskab, Kvalitet og Teknologi',552400,'a8e98968-4ace-4da7-8c6d-7860d67490ec'),(1044,'Institut for Fødevarevidenskab, Sensorik',552500,'3f24d63b-8322-4e72-b298-85b14f23c8d1'),(1045,'Institut for Fødevarevidenskab, Mejeriteknologi',552600,'4ca79d0f-de7f-4829-9e72-c3b7dedbb402'),(1046,'Institut for Fødevarevidenskab, Bioraffinering',552800,'804e4c86-bcd2-4513-9f5c-ccb918299c5b'),(1047,'Institut for Fødevarevidenskab, FoodBest',552900,'515dfe95-c0e0-4439-9dd7-a93fb90354c7'),(1048,'Institut for Fødevarevidenskab',554900,'4fc3d9ee-c1e6-415a-b6d3-ceac4f01ce0e'),(1049,'Biologisk institut',557900,'c6e3d50b-3ee7-45eb-87c4-ed3c0aa41722'),(1050,'The Novo Nordisk Foundation Center for Protein Research, Strategic Investments',385900,'ca0def7f-0fe1-49f3-b4b3-a62c243560c0'),(1051,'2012 Institut for Fødevarevidenskab, 2012 IGM',69800,'cab913f2-aa3e-4291-b1d6-27c0cf7fbd89'),(1052,'2012 Institut for Fødevarevidenskab, 2012 FoodBest',69900,'7c624580-35f2-4e2c-b04d-48589fe2482e'),(1053,'Institut for Farmaci',349000,'8412e8b4-6dde-4eb3-b879-006d3a755ae6'),(1054,'Institut for Farmaci, Sekretariat, drifts- og fællesudgifter',349100,'8f0356a6-9a24-4274-ab62-06841d973290'),(1055,'Institut for Farmaci, Analytical Biosciences',349200,'5673b0e4-53fd-4feb-90e8-ef7db855f42c'),(1056,'Institut for Farmaci, Pharmaceutical Technology and Engineering',349300,'f821be51-35a3-46d5-a2c0-6dcf05d4f4a2'),(1057,'Institut for Farmaci, Pharmaceutical Design and Drug Delivery',349400,'1af24211-3edf-4680-b277-a950ffb9e945'),(1058,'Institut for Farmaci, Biologics',349500,'6642f5fd-e325-40d9-8388-ba5fa0161f77'),(1059,'Institut for Farmaci, Social and Clinical Pharmacy',349600,'17ce2d50-1ad6-417d-abe4-f11a9ef02d1f'),(1060,'Institut for Farmaci, Nanomedicine',349700,'d47de138-1de5-40b1-9928-db5f3aa672ec'),(1061,'Institut for Farmaci',349900,'40e78ba6-9f8b-483a-98d8-404a2ada1fa8'),(1062,'Institut for Produktionsdyr og Heste',366000,'7a59d216-9530-4da0-affe-6c35282e5baf'),(1063,'Institut for Produktionsdyr og Heste, Sekretariat og fælles drift',366100,'24d46d48-470c-497c-9dcf-9498c73031b5'),(1064,'Institut for Produktionsdyr og Heste, Sektion for Produktion og Sundhed',366200,'394a3d7b-0361-4172-afd1-ec3fa4a82d8e'),(1065,'Institut for Produktionsdyr og Heste, Sektion for Dyrevelfærd og Sygdomsbekæmpelse',366300,'a5333e88-8573-4a50-afaa-6ea76ec3d09c'),(1066,'Institut for Produktionsdyr og Heste, Sektion for Veterinær Reproduktion og Obstetrik',366400,'ef15b1cb-3db8-4edc-ab36-e8f00e8c43f0'),(1067,'Institut for Produktionsdyr og Heste, Hospitalet',366500,'2489b5de-f423-4937-a096-231e095fdff5'),(1068,'Institut for Produktionsdyr og Heste, Sektion for Medicin og Kirurgi',366600,'c0303964-10fc-4de3-9fc1-4d4c62d0b51a'),(1069,'Institut for Produktionsdyr og Heste, Beslagskolen',366700,'c5c36d4e-fc1d-42e5-a297-03b91d352310'),(1070,'Institut for Produktionsdyr og Heste, Institut for Klinisk Veterinær- og Husdyrvidenskab',366800,'020a28b6-ff03-4df4-9042-2e8d871aee0c'),(1071,'Sunflake',960300,'a952ad69-abca-471b-8e9f-fce98c31c4cb'),(1072,'LUKKET: 2012 Studieservicecenter, 2012 Sekretariat for den kliniske undervisning',389300,'b9b886c1-e380-4252-897f-4f2143508a29'),(1073,'LUKKET: 2012 Studieservicecenter, 2012 Klinisk sekretriat',389400,'5d7a6216-e9b7-4f86-8b39-00f7b0d2c05d'),(1074,'Fakultetsservice, Katalyst',457700,'f796f83f-ff0f-476b-8744-b15c4e166eb9'),(1075,'Fakultetsservice, Forskeruddannelsesprogramsekretariatet',457800,'f24b524c-37ed-426f-96ec-987be17e8f95'),(1076,'Institut for Produktionsdyr og Heste, Sekretariat og drift',366900,'1287184e-709b-4eca-8415-2ae0134252cf'),(1077,'Institut for Klinisk Veterinær- og Husdyrvidenskab',367000,'02d0f4ae-ddd7-4001-b17c-1dc580e1eac2'),(1078,'Institut for Klinisk Veterinær- og Husdyrvidenskab',367100,'cfffd7fb-3d7d-4035-9473-baafccf6efc1'),(1079,'Institut for Klinisk Veterinær- og Husdyrvidenskab, Sekretariat og drift',367200,'c262b585-6f6b-47ec-8e48-b1e9041f3728'),(1080,'Institut for Klinisk Veterinær- og Husdyrvidenskab, Hospital',367300,'4b81cac8-30cc-49d8-ac4c-2f6c53876846'),(1081,'Institut for Klinisk Veterinær- og Husdyrvidenskab, Intern medicin, klinisk onkologi, veterinær klinisk patologi og centrallaboratorium',367400,'a58d88bd-b8a9-45f7-be74-b7d8096e270c'),(1082,'Institut for Klinisk Veterinær- og Husdyrvidenskab, Billeddiagnostik',367500,'8836edb5-a7b2-4996-88da-94f39cac9ee7'),(1083,'Institut for Klinisk Veterinær- og Husdyrvidenskab, Kirurgi, neurologi og kardiologi',367600,'75a40970-1196-4c69-bdb3-8792692d60b9'),(1084,'Institut for Klinisk Veterinær- og Husdyrvidenskab, Animal Genetics, Bioinformatics and Breeding',367700,'123c5e0b-0433-406e-ad99-b4b6d714c023'),(1085,'Institut for Klinisk Veterinær- og Husdyrvidenskab, Fysiologi og ernæring samt pelsdyrfarmen',367800,'113202a0-86ba-468c-a37c-1b66d53e3b77'),(1086,'Institut for Klinisk Veterinær- og Husdyrvidenskab, Anatomi og biokemi',367900,'0a089252-10a2-4b00-9b79-0d1d89a7b309'),(1087,'Institut for Veterinær Sygdomsbiologi',368000,'b2b04d2a-25d8-412e-9ab0-af1e7d559006'),(1088,'Institut for Veterinær Sygdomsbiologi, IVS, Sekretariat og drift',368100,'bdefab59-63a3-4769-b582-c60fcb702788'),(1089,'Institut for Veterinær Sygdomsbiologi, Sektion, Food Safety and Zoonoses',368200,'4180c664-c5b4-4686-b335-58e61a4887ee'),(1090,'Institut for Veterinær Sygdomsbiologi, Forskeruddannelses programmer',368300,'e809c151-5b0c-41ad-8c16-44957c1d57b7'),(1091,'Institut for Veterinær Sygdomsbiologi, TIL SENERE BRUG',368400,'52d6fd4e-bf05-4a8a-9745-bec2ebbf0fc4'),(1092,'2012 Skolen for Klinikassistenter og Tandplejere, 2012 Skolepraktik',379300,'22dbf4f3-44f2-496b-8c5f-2204da20fe0f'),(1093,'2012 Institut for Farmakologi og Farmakoterapi, 2012 Molekylærcellulær Farmakologi',92100,'d4865e02-6c8c-407a-b9e0-25a1ea0af0c5'),(1094,'FARMA på Symbion',960400,'48bf1064-c08f-4d83-8834-3fd07d0b52ff'),(1095,'Forskning og Innovation på COBIS',960500,'c81b7666-7598-40c5-bd0b-0e9fb005f8bd'),(1096,'Odontologisk Institut, Klinik - Special 29-1-03',383800,'d0b78fb7-70c8-47cf-b3eb-116c40b0a1df'),(1097,'Institut for Veterinær Sygdomsbiologi, Sektion, Veterinary Clinical Microbiology',368500,'98fed830-d957-4f84-9421-5ade443fde08'),(1098,'Institut for Veterinær Sygdomsbiologi, Sektion, Parasitology and Aquatic Diseases',368600,'dc0542b9-f7c6-4c1d-9cf2-077175a3de43'),(1099,'Institut for Veterinær Sygdomsbiologi, Sektion, Experimental Animal Models',368700,'0c97c475-f8bf-4048-a9c9-f115d91dbb42'),(1100,'Institut for Veterinær Sygdomsbiologi, Speciel Patologi (under lukning)',368800,'075f9f2d-7ed5-4126-beaa-00bfbc28d7b8'),(1101,'Institut for Veterinær Sygdomsbiologi, Sektion, Molecular Disease Biology',368900,'32636ac5-fb6e-46c5-ab61-832ba91d95f6'),(1102,'Biomedicinsk Institut',311900,'1f4ed089-b942-462e-9a6e-e5e3ae83ae71'),(1103,'Institut for International Sundhed, Immunologi og Mikrobiologi',312100,'ab2b953b-50a0-4462-baf5-43947ebdfd2c'),(1104,'Campus Service SUND, Reserve',303800,'b6588c55-bb2e-4b5b-9abd-36eb20573cd3'),(1105,'Campus Service SUND, Ekstern bygningsdrift',303900,'04b36343-9a6a-41da-a8b0-bfe9debf3338'),(1106,'SUND ph.d. skole, BRIC studerende',399200,'82adc3e9-d0d5-4e74-9062-66916ecfe51e'),(1107,'LUKKET: JUR Uddannelsessekretærerne',605000,'48e1d049-5e25-40b9-ba8c-deac0e47aab7'),(1108,'LUKKET: JUR Forskningssekretærerne',606000,'ea18bda1-fb42-406c-a407-6d08f3879346'),(1109,'Institut for Cellulær og Molekylær Medicin',317900,'3e0d5fa1-2841-45ef-9277-ebf4dea4d1f0'),(1110,'Institut for Folkesundhedsvidenskab',339900,'218b916e-3682-4bfd-81dd-ec629c3fdd65'),(1111,'Retsmedicinsk Institut, RI ledelse',360400,'f38390be-87fa-45a8-998a-bc4d6634b89c'),(1112,'Dansk Naturvidensk.formidling, ØsterVoldg.3, Mikkel Bohm',961000,'1f059de7-3570-40b3-9c07-bfdf5dbbf420'),(1113,'Biopeople',387500,'c99328b5-3ca5-422b-827c-3a3cf2846e4a'),(1114,'DanStem',388100,'a10213ba-4fee-4da6-8ec0-e1accad5bc40'),(1115,'DanStem, Sekretariat',388200,'219aa55d-00aa-4ba8-bf07-bef08a3d131f'),(1116,'DanStem, Human Stem Cell Biology',388300,'ae25ba28-df90-4a5e-a2e1-0df72331234f'),(1117,'DanStem, Stem Cell and developmental Biology - early embryonic lineage specification',388400,'bc2d0e33-2910-48f5-b1d4-dd2a0c3d7c86'),(1118,'DanStem, Developmental biology - endoderm and pancreas development',388500,'beeb0018-5c27-4383-bda5-b08d271ce758'),(1119,'DanStem, Developmental biology of the pancreas',388600,'73a2e195-ac18-47ec-b93a-c8dd78acce45'),(1120,'DanStem, Laboratory',388700,'4bc3815c-1aa9-4600-8901-37bc6a5efb39'),(1121,'Afdeling for Eksperimentel Medicin',394100,'62a1a098-aad7-46a6-9eed-6a46a5d2d233'),(1122,'Afdeling for Eksperimentel Medicin, AEM  Serviceenheden',394200,'d30c59bb-999b-44df-bb34-f31dca2d4174'),(1123,'Afdeling for Eksperimentel Medicin, AEM København',394300,'c953bd82-4990-41f7-aa21-0afa8ee2853b'),(1124,'Afdeling for Eksperimentel Medicin, AEM Frederiksberg',394400,'75d85acb-d700-4f5b-bbb4-0d99db33f17c'),(1125,'Afdeling for Eksperimentel Medicin, AEM Taastrup',394500,'fc21e385-8beb-4ab3-9e1e-f23f81d4072f'),(1126,'Afdeling for Eksperimentel Medicin, Corefaciliteter ved AEM',394700,'df354868-1a9d-4f57-ace3-25cde3e2fe94'),(1127,'Afdeling for Eksperimentel Medicin, AEM Forskning og Undervisning',394800,'86307322-ab65-4f35-b793-acdea6d3ef75'),(1128,'Skolen for Klinikassistenter og Tandplejere',396100,'5ae4b216-69da-40a0-b386-3af85ee447ad'),(1129,'2012 Institut for Mindre Husdyrs Sygdomme, 2012 Butik',63500,'7384e8b1-902e-49b9-8ba5-4eb8d1afa900'),(1130,'Kalmia Stresscentret',959200,'7c0b47fc-09bd-4af1-b6a1-0201040fa7ed'),(1131,'Institut for Økologi, Genetik og Mikrobiologi',65200,'8cbc5c02-c1f7-43b2-b7d0-42d6cb9e7aa5'),(1132,'LUKKET: Forskerskole for Regionale Studier',463000,'51e694c9-e9b4-4ad5-8f44-3a79bf6f9cef'),(1133,'Det Humanistiske Fakultet - budgetteknisk sted',400100,'eeb5a9c4-9658-4afb-a347-b695e18a2484'),(1134,'LUKKET: ALDRIG BRUGT: Dekanat',451000,'f19baab3-e5f7-4a11-9902-5eff640f8b8e'),(1135,'ALDRIG BRUGT: Dekanat, Bladet Humanist',451100,'ff8c38c3-deb5-435a-8ad5-7453fa0f2598'),(1136,'ALDRIG BRUGT: Dekanat, Formidlingscentret',451300,'bb3e48ea-f54a-4ed1-af86-e3168658111b'),(1137,'ALDRIG BRUGT: Dekanat, Elementarkurser',451400,'85cbc464-a0be-4718-9743-1e9addd64d32'),(1138,'LUKKET: ALDRIG BRUGT: Fakultetssekretariatet',452000,'af8bceed-cc6c-4e6f-b6a1-446579464492'),(1139,'ALDRIG BRUGT: Fakultetssekretariatet, Studiekontoret',452200,'1239899f-7fce-46e3-a4ff-937824db0e37'),(1140,'LUKKET: Eksamenskontor',452300,'cd009a3a-21bf-4f49-aa7a-9dbfbf011543'),(1141,'ALDRIG BRUGT: Fakultetssekretariatet, Studievejledning, Hum.Fak.',452400,'eeeff2a3-23ea-4493-93bc-f053ccf11fd9'),(1142,'ALDRIG BRUGT: Fakultetssekretariatet, Økonomi- og Personaleafdelingen',452600,'3f7029a1-3ac7-411d-b8fb-fa4844680d31'),(1143,'Dekanat, Kopiservice',454200,'65f4db5b-ed43-413d-836a-5af6386eeda5'),(1144,'Dekanat, Akademisk Skrivecenter',454300,'9da8d73d-452b-4db4-988c-391200d031f5'),(1145,'Fakultetsservice, Åben Uddannelse',455500,'5c72a37c-82ad-4207-b92f-b4497347ae14'),(1146,'Fakultetsservice, Økonomiafdelingen',455600,'4f6b1444-5f68-484b-aecd-d569ee475b38'),(1147,'Fakultetsservice, ASC-Akademisk Skrivecenter',457300,'528b4e2c-4a67-4ca2-826f-4783593f2f49'),(1148,'Campus Service Søndre, ASC-Grafisk',457400,'0b77bdb8-75e2-41d3-9fe1-e79da3434f9b'),(1149,'Campus Service Søndre, Intern Service',458100,'a05877d3-e50c-47df-8916-ff2e2c7eb77e'),(1150,'Campus Service Søndre, Humaniora Rengøringsservice',458300,'e7491672-7dc3-4472-b12a-f5dbe25fd54c'),(1151,'Campus Service Søndre, Humaniora Gartnerafdeling',458400,'2b03a223-a1af-4d1f-b903-b6a5f64e3eee'),(1152,'Campus Service Søndre, IT-Centret, Det Humanistiske Fakultet',458500,'157ab220-3057-4583-b196-174039ac656a'),(1153,'Campus Service Søndre, Driftschef, administration',458900,'8f95387a-fc55-4b76-adaf-06dd6a30853e'),(1154,'LUKKET: AV/ITV-afdeling',459000,'9efd48bc-dc00-4287-9db9-b6078beb7d06'),(1155,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Centre',84000,'799745df-13f1-4169-92b7-723dd451409c'),(1156,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, ALDRIG BRUGT: Ulandskonsulenten',84100,'a44a4483-7ca9-46b3-abb3-9b68963e8b01'),(1157,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, ALDRIG BRUGT: Økologi og Miljø, Center for',84200,'50459c12-dcdc-47c0-bcc0-8063c00edd19'),(1158,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Levnedsmiddelcenter - KVL',84300,'dbafde86-3f09-43ae-9105-82d3c660436b'),(1159,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, ALDRIG BRUGT: NOVA Universitet',84900,'fd5f552c-f8aa-4536-bc93-99d412c5ff83'),(1160,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Biblioteket',85000,'61892b09-c565-4470-82ee-e3410ab07254'),(1161,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Fakultetssekretariatet',86100,'e4190f79-dad8-4461-a68b-085561a532f4'),(1162,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, ALDRIG BRUGT: Fakultetsdirektør',86200,'5dbb3662-c24a-4121-90ce-56afb84424e3'),(1163,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Økonomisk Forvaltning',86300,'43953cb2-9486-4fc0-bd76-c54127abd818'),(1164,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Uddannelse og Studerende',86400,'55c6d89c-5ae8-4f25-b77a-c673a5421cd9'),(1165,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, ALDRIG BRUGT: Sekretariatskontoret',86500,'98b2e479-f952-4a0e-bd58-b082fa0582df'),(1166,'Fakultetsservice, Uddannelsesadministrationen',455800,'e1a92109-6460-45d6-a7a1-04139269facc'),(1167,'Biologisk Institut, DNA',556700,'ba4acdb9-0b27-41c5-aa1c-6d272e9e4103'),(1168,'Laboratories, Hybridoma Sektion',865600,'f0ed2520-b249-4f02-b20b-a1c3ae16a98f'),(1169,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Forskning og Innovation',86600,'5f1bfa2e-1c7d-40d7-84fc-590823359aa7'),(1170,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Kommunikation',86700,'4c28451e-51dd-4243-85fb-6d2bfe1dda34'),(1171,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, IT',86900,'f58d05e0-2624-43a3-8a9d-b405bf215077'),(1172,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Bygninger og Drift',87000,'27baf610-137d-44ed-b504-213045ed3037'),(1173,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Bygningsafdelingen',87100,'4494d0a8-7096-4e80-bfa3-14be27183570'),(1174,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Driftsafdelingen',87300,'e1537924-0974-4cfd-b56b-aada1d56378d'),(1175,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, De Studerendes Råd',88100,'6083a801-6e3b-4130-ad8b-fa74dcf4fdfa'),(1176,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, ØSS-, STADS- og UPS-samarbejderne',88900,'a8bff835-fa95-402d-8ea6-cfeff08987ab'),(1177,'Forskning & Innovation, Tech Trans Kontoret',753500,'a467996f-a2ad-4eef-8d81-6b72b0b4767d'),(1178,'2012 Fakultetsservice, DSR-LIFE',75900,'9dd5d1ee-ad48-49c9-b56a-8cd55a74c12c'),(1179,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer',80100,'fc887309-8aab-46ab-bde9-d561f26bf99d'),(1180,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Veterinær- og husdyrbrugsvidenskab',81000,'c56c105e-bf8e-4174-8747-d97b4fbcd712'),(1181,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Basal Husdyr- og Veterinærvidenskab',81100,'4684200c-5059-4662-b3ef-e474ba391194'),(1182,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Produktionsdyr og Heste',81300,'d5b08c8c-0f03-4ead-aa51-167e61ba1ccf'),(1183,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Mindre Husdyrs Sygdomme',81400,'ddfb41ac-66ed-40fe-a37d-b2cc03b5724c'),(1184,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Plante- og Naturressourcevidenskab',82000,'274d7b8e-7eba-4768-b163-ff1f75592960'),(1185,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Økologi',82200,'e3e23281-527c-4f42-b042-167c8ff466ec'),(1186,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Plantebiologi',82300,'057e5810-7b52-47e0-89f1-c0ef624e09c5'),(1187,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Skov & Landskab',82400,'08ed16e3-66ae-4d7c-9b05-4858af50a79d'),(1188,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Jordbrugsvidenskab',82500,'bf392e54-2dd3-4fcd-8cc5-3974d4b7fd36'),(1189,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Fødevare-, Ernærings- og Grundvidenskab',83000,'50e8743a-7ff9-4571-a5a7-2ba3b5047d57'),(1190,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Fødevarevidenskab',83100,'0e8ce7cd-0ba4-4da3-8def-a3008b4cd07c'),(1191,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Human Ernæring',83400,'b0c5091e-30f5-4651-8d80-528bee758f2f'),(1192,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Fødevareøkonomisk Institut',83600,'94cb8082-7042-4483-ba4b-2031f5678ea3'),(1193,'LUKKET: Medicinsk-anatomisk Institut, Cellebiologi IV',346000,'70268946-7005-4f67-8efa-7a03e8b76519'),(1194,'LUKKET: Medicinsk-anatomisk Institut, Neurobiologi I',347000,'35813d83-8b85-4dc8-bdee-9ee656d829c4'),(1195,'LUKKET: Institut for Medicinsk Biokemi og Genetik',350000,'bd3d0333-fc39-4669-892d-cce61ba79e10'),(1196,'LUKKET: Institut for Medicinsk Biokemi og Genetik, Institut for medicinsk biokemi og genetik, Afd. C',354000,'c5d6f5bd-ccb3-4369-bf3e-536c2512e9c4'),(1197,'LUKKET: Institut for Medicinsk Biokemi og Genetik, Institut for medicinsk biokemi og genetik, Undervisningsafdelingen',357000,'1f0f7b72-cbc9-4149-9e74-c8bc82ef30d9'),(1198,'LUKKET: Institut for Medicinsk Biokemi og Genetik, Institut for medicinsk biokemi og genetik, Klinik for Medicinsk Genetik',358000,'3bdaeed8-ee1c-4993-8777-715f5775c04c'),(1199,'LUKKET: Institut for Medicinsk Biokemi og Genetik, Muscle Cluster',359000,'f9a118db-2d98-4879-ad84-587cd1f2d440'),(1200,'Retsmedicinsk Institut, RI-adm. Forskning',360200,'0db0d1e8-38f8-4b5f-abfd-3f612c9d0ef7'),(1201,'Odontologisk Institut, Afdeling for Oral Diagnostik',380600,'d84d9439-d036-4665-b0b6-280eee5f4eb1'),(1202,'Odontologisk Institut, Afdeling for Oral Mikrobiologi',380700,'8a2f8387-42eb-4b61-9282-a13efa116ea3'),(1203,'Odontologisk Institut, Afdeling for Parodontologi',381000,'7accbfe2-d26c-4576-a7b2-21e5872f23a0'),(1204,'Odontologisk Institut, 2012 Lab. for mikrobiologi',381900,'dafb79b6-3138-4224-b15f-d75717fe805b'),(1205,'Odontologisk Institut, 2012 Lab. for fælles mikrobiologi',382000,'7092f45c-53fb-4d41-86b3-892cdd281db0'),(1206,'Odontologisk Institut, 2012 Lab. for histo, celle og hårdtvæv',382100,'eb8478a6-02b2-4cd0-a02a-9bceaaf96eb0'),(1207,'Odontologisk Institut, 2012 Lab. for oral patologi og medicin',382200,'f5ae0c3c-2859-474d-82a6-7dee4b29e27a'),(1208,'Odontologisk Institut, 2012 Lab. for fælles histomorfologi',382500,'9a4066f7-1f63-4901-98cb-664fcaa1364d'),(1209,'Odontologisk Institut, 2012 3-D Laboratoriet',382700,'d5c67ef8-89eb-4749-ab3e-5f85eff1325b'),(1210,'Odontologisk Institut, Klinik - Specialklinik',383200,'142869c3-46dd-48c1-bea2-e493cd39ba5a'),(1211,'Odontologisk Institut, Klinik - Kirurgisk',383300,'acfb1ce5-bede-4a4d-8760-7e8fcc2c7638'),(1212,'Odontologisk Institut, Klinik - Paro-/Pædo-/Ortodonti',383400,'149d6235-fad0-4291-8b3f-9d2e6ec32001'),(1213,'Odontologisk Institut, Klinik - KKT',383600,'81669d2d-8ae8-4296-b77e-1003ba881414'),(1214,'LUKKET: Niels Bohr Institutet, Niels Bohr Internationale Akademi',524100,'e4fb3257-bff0-4045-a0e2-735e61ba0d53'),(1215,'LUKKET: Niels Bohr Institutet, Fysik Studienævnet',524900,'345d5f92-649c-46e2-8689-6e42a0ef2b9c'),(1216,'Biologisk Institut, Ferskvandsbiologi',525200,'472776dc-9035-4ecb-9c98-28e80f2123dd'),(1217,'Biologisk Institut, Evolutionsbiologi',525600,'c63c67c6-f4ed-4042-95ba-6a668323b3fb'),(1218,'Biologisk Institut, Mikrobiologi',525700,'f35a2184-7155-4931-a9fa-66e244961ad5'),(1219,'Biologisk Institut, Afdeling for Cellebiologi og sammenlignende Zoologi',525800,'6d2894c3-8b08-4f52-a9f1-59ba471d40ab'),(1220,'LUKKET: Institut for Molekylær Biologi, - AKI  2',526200,'25bae1f8-6f5b-43af-9956-d77b5016d611'),(1221,'LUKKET: Institut for Molekylær Biologi, Center for Bioinformatik',526400,'3c02eb75-2577-4a98-b486-ce7dc6e61758'),(1222,'LUKKET: Institut for Molekylær Biologi, MBI 2',526600,'638b6345-fec4-401f-ad4a-41433971d0d5'),(1223,'LUKKET: Institut for Molekylær Biologi, MBI 3',526700,'86dbfc2c-2b4d-4515-8acd-8a0c28bfde72'),(1224,'LUKKET: Institut for Molekylær Biologi, Studienævn for Molekylær Biomedicin',526800,'f4b255ec-cd35-49e5-89f2-151a8eaf5997'),(1225,'LUKKET: Institut for Molekylær Biologi, Studienævn for Biokemi',526900,'3829b65e-6091-48ee-96f7-969559432310'),(1226,'Statens Naturhistoriske Museum, SNM Samlinger',529200,'c3270896-6bb9-4ff1-bc3a-8367dc9ec085'),(1227,'Biologisk Institut, LÆSØ',556800,'fcfdb6fb-02e2-403a-a38d-eaeb9f0f3992'),(1228,'Biologisk Institut, BIG-Net',557000,'6a3a19bd-f621-48bc-a6e7-2c51d01c22a3'),(1229,'Centre m.v., KOM projekter',580800,'08bc8862-77b9-4c67-afcc-d96feb9e96b7'),(1230,'Bachelor- og kandidatuddannelser, BSc + MSc Molekylær Biomedicin',393500,'8ddc6157-ca19-43ab-888d-42b5a5901b6a'),(1231,'Direktørsekretariatet, Rektoratet',711000,'515b8fc1-427f-4153-8c89-3cd5dcd6a977'),(1232,'Uddannelsesservice, Afdelingsledelsen',720100,'8c5cb400-85b2-4b59-8c4c-c3f967ce684c'),(1233,'Uddannelsesservice, SU-KONTORET',729200,'e93b1fa2-0e29-41f0-bea9-7cc002eadbb4'),(1234,'Campus Service',740000,'01de36bd-fc05-4351-ad36-48ed407693c2'),(1235,'Campus Service, Afdelingsledelsen',741000,'2a311215-7ad6-470b-8e05-1ddb37bbe3d4'),(1236,'Campus Service, Campus Økonomi',742000,'a93239b5-ecad-4d94-a504-50ca7cbe0608'),(1237,'Campus Service, Campus Udvikling',743000,'b8b170f3-2fae-4bfa-9708-7fae5a555564'),(1238,'Statens Naturhistoriske Museum, Botanisk Have',529900,'f531a211-9983-465f-ac2d-6b15a5d9fc96'),(1239,'LUKKET: Personale & Jura, Personale og Jura',771000,'8c8b971a-c3a9-404d-ba9d-c41795acbe4a'),(1240,'LUKKET: Personale & Jura, Jura',772000,'3469837f-cf37-49f1-8414-80eb731144de'),(1241,'LUKKET: Personale & Jura, PUMA',774000,'faea48f3-fd4d-4644-a6cf-01fa5924068b'),(1242,'Koncern-it, Afdelingsledelse',761000,'0a6407f5-a73c-4050-b241-f28690e99615'),(1243,'Niels Bohr Institutet, Strukturel biofysik / Structural Biophysics',504200,'30437774-7606-4b5c-8869-571d75cd688b'),(1244,'Institut for Geovidenskab og Naturforvaltning, Geologisk undervisning',508600,'8ea22eb2-6e62-43ce-8fdb-0137e92d4f07'),(1245,'SCIENCE Campus Service - Geocenter',590100,'a5425150-54bd-4b51-a2a0-79fd856ae0de'),(1246,'SCIENCE Campus Service - Botanisk Have',590200,'bf65e6a4-c2dc-4b6d-87f9-cf85f9128654'),(1247,'Serviceenheder, Forskningsservice',651000,'54840394-ce96-4378-b3ec-b4b94ec9f9e5'),(1248,'Serviceenheder, Forskningsservice, bygningsorådet',651100,'def4bc91-0e20-4c2f-b1bd-79985999b9ff'),(1249,'Koncern-økonomi, Økonomistyringssektionen',776000,'f5f19893-b262-490c-9af5-b514328cdca6'),(1250,'Koncern-økonomi, Indkøbssektionen',778000,'e9c4a1b0-10c5-4f8c-8c38-30f91df11d15'),(1251,'Koncern-økonomi, Lønsektionen',779000,'3b9480d8-b8b9-4128-9073-521774a199c8'),(1252,'LUKKET: Udviklingsprojekter i Koncern-økonomi',779500,'97f4e27a-ddd5-4cad-812c-10346c340840'),(1253,'SEA, Vedligeholdelse',802100,'8cd0a5a2-dd7c-4834-83b9-2bf37e816ab5'),(1254,'SEA, Investeringsplan',802200,'cfa3ca57-3130-43ef-a6ec-0955a3787b07'),(1255,'SEA, Ejendomsskatter',802400,'2f806219-5269-4a57-9943-91a699eccdb0'),(1256,'SEA, Byggeprojekter',802600,'bc1052fb-5dc2-46f5-aa85-859aa96debeb'),(1257,'LUKKET: Læreantalternes fælleskurser',803000,'a3788090-3340-47f8-b671-1eea172b826c'),(1258,'Strategiske Satsninger på KU',809000,'f9e6bb26-36e0-4e77-b392-6ada44ae7abc'),(1259,'Research Groups, Høyer-Hansen Group',863200,'26cb10c2-661e-4f0a-a4d0-56eaa9d59f3f'),(1260,'Institut for Folkesundhedsvidenskab, 2012 Undervisning - CES',339600,'7de0491f-61f7-418e-810a-b6a429bbd573'),(1261,'LUKKET: Studienævn for Masteruddannelser',583000,'e5d6c8d1-a58c-4cd4-8ed5-f8d1868685fe'),(1262,'LUKKET: Studienævn for Bacheloruddannelser',585000,'ef1e8548-dd0b-4408-87fd-9d3e75693219'),(1263,'SCIENCE Campus Service - DIKU/HCØ',590300,'b39f2aa8-d564-41ac-84ad-d11ae3de2eb0'),(1264,'SCIENCE Campus Service, Campus Service Nord - AKI/SNM',590400,'339803f9-4c67-4ef6-a48a-eedbaeed62a1'),(1265,'SCIENCE Campus Service - NBI',590500,'d08610ee-2a23-46bc-ae6d-16aaee909ae3'),(1266,'SCIENCE Campus Service, Campus Service Nord - Gartnere',590600,'448389ff-180e-4436-b7b3-adbf9d181921'),(1267,'SCIENCE Campus Service - Biocenter',591000,'30ddd400-9a15-4ef1-9781-debef860643e'),(1268,'SCIENCE Studienævn',599000,'77e212c3-24db-4c8e-9181-8a3e31f61b20'),(1269,'SCIENCE Studienævn, Studienævn for Biomolekylær Videnskab og Teknologi (SNBT)',599200,'0967734e-cc9d-4ade-9f00-08c153a91871'),(1270,'LUKKET: Musikvidenskabeligt institut',470100,'319b4b89-eb80-44ee-8503-64d490787cd4'),(1271,'LUKKET: Studienævnet for Dansk',472200,'14c029a3-8081-472e-ac48-4ae76ab196b1'),(1272,'LUKKET: Studienævnet for Minoritetsstudier',472400,'a2968b53-34a0-4894-9fae-aebed4401bc5'),(1273,'LUKKET: Studienævnet for Køns- og Kvindeforskning',472500,'f6b3850e-d9e3-4d47-bb6d-a2ce23eba5c6'),(1274,'LUKKET: Studienævnet for Lingvistik',472600,'b5ebfc93-5bac-4a22-8d98-6de964d7c899'),(1275,'LUKKET: Studienævnet for retorik',476300,'372e7765-4208-4003-aeb0-b5cd5ba57627'),(1276,'LUKKET: Professionsmaster, Professionsmaster',476900,'992a2b13-8f90-4a96-aa2e-5e7d0aad8cbc'),(1277,'LUKKET: Studienævnet for klassisk arkæologi',478300,'a6536398-41ad-4a65-a76e-8d12bfeffad9'),(1278,'LUKKET: Studienævnet for forhistorisk arkæologi',478400,'86dea4c9-eb97-411d-9ab3-b8294e58893c'),(1279,'LUKKET: Studienævnet for klassisk filologi',478600,'a23f9c90-0181-463c-85e6-e21ea95da57b'),(1280,'LUKKET: Studienævnet for Eskimologi',480400,'ebd93d95-6146-4975-9276-4399c3edf212'),(1281,'LUKKET: Studienævnet for religionsfagene',480500,'5047035a-ec67-4851-97fa-c67fbc4b4de3'),(1282,'LUKKET: Studienævnet for Slavisk',480700,'6b64829b-2fd1-4b32-b53e-943f441a0cd7'),(1283,'LUKKET: Studienævnet for moderne græsk',480800,'96fc5468-5190-4ae2-aaff-72863c019d5a'),(1284,'LUKKET: Studienævnet for Minoritetsstudier',480900,'cabe1adf-b9eb-4dc7-a7cb-f99f7c9bbb5d'),(1285,'LUKKET: Studienævnet for fransk',482200,'dbfac2f5-edec-4614-a4c9-891f5ebb7ace'),(1286,'LUKKET: Studienævnet for italiensk og rumænsk, Studienævnet for Italiensk',482300,'b4673177-dd5a-4780-af4d-2091e41e8073'),(1287,'LUKKET: Studienævnet for Tysk og Nederlandsk, Studienævnet for tysk og nederlandsk',482500,'f58cb0c4-c961-40fd-87c7-2579af185c88'),(1288,'LUKKET: Studienævnet for engelsk',482600,'4f4b2826-41b1-4221-88e3-b5471a1ffc93'),(1289,'LUKKET: Studienævnet for Kunsthistorie',484300,'15cf58bd-43c4-43c0-815a-88c878a92698'),(1290,'Bevaring af Islandske Håndskrifter',486200,'238b1c91-630d-480d-8287-1c3e9976eb8c'),(1291,'Institut for Matematiske Fag, 2012 Forskerskolen ved IMF',501600,'cb3f95bd-f0db-4855-b946-488e64ab0fbd'),(1292,'Institut for Geovidenskab og Naturforvaltning, 2012 Laboratorier',508100,'f2f62b9d-8347-482b-9409-38de1bed0797'),(1293,'Institut for Geovidenskab og Naturforvaltning, IT-afdeling',508300,'79d85e42-c030-4115-849c-d03266e3fbf3'),(1294,'Institut for Geovidenskab og Naturforvaltning, Fællesafdeling',508400,'eb30c455-f300-4148-9063-537ec6b891ae'),(1295,'Institut for Geovidenskab og Naturforvaltning, 2012 Afd. for Geologisk anvendt geofysik',508500,'8bcc5a2f-ec4a-4c3d-a15c-7290b43b0fa6'),(1296,'Institut for Geovidenskab og Naturforvaltning, Administration',508700,'ffff1c38-6df5-4a65-a217-58565189882c'),(1297,'Institut for Geovidenskab og Naturforvaltning, 2012 IT-afdelingen',509100,'0bf8f796-43e7-41c0-b195-56851d886279'),(1298,'Institut for Geovidenskab og Naturforvaltning, Værksteder og feltstationer',509300,'135c0643-15d1-4e51-89c3-0f0eb7995947'),(1299,'Institut for Geovidenskab og Naturforvaltning, 2012 Hydrologi',509400,'88281428-debf-4084-89a8-2ecbdb19e4b9'),(1300,'Institut for Geovidenskab og Naturforvaltning, 2012 By- og landskabsudvikling',509500,'948638e3-0ca6-4588-9857-fcbfe38b94e7'),(1301,'Institut for Geovidenskab og Naturforvaltning, 2012 Terrestisk økosystemanalyse',509800,'ca547556-bf3c-426b-8e2f-bbd500ca0d26'),(1302,'2012 Institut for Idræt, 2012 Ph.D',520700,'b2a5454e-b317-42c5-a4c8-685f1509ffb3'),(1303,'2012 Institut for Idræt, 2012 Indtægter og udgifter af haller og udlejning',520800,'41ee9ee5-f0a8-4b4f-a1a5-62f61bf35ac1'),(1304,'Kemisk Institut, Kemistudienævnet',523100,'4f360ef2-ec5f-4453-9cf3-29bd7ded2dea'),(1305,'LUKKET: Niels Bohr Institutet',524000,'e57473cb-45cf-4955-87bc-382242739c83'),(1306,'Institut for Neurovidenskab og Farmakologi, Øjenpatologisk sektion',315400,'57ff86be-dea4-4441-a83e-eb288fc6ae32'),(1307,'LUKKET: 2012 Institut for Medicinsk Mikrobiologi og Immunologi',321000,'187bd7f7-8c7b-401b-8cdd-460609f5ab30'),(1308,'2012 Institut for Medicinsk Mikrobiologi og Immunologi, Undervisningsafd.',321200,'8f63bc70-7dfc-491e-a758-4041a779ab20'),(1309,'2012 Institut for Medicinsk Mikrobiologi og Immunologi, Cluster i Immunologi',321400,'10b1ffa0-281c-4263-92d6-09bb28d55057'),(1310,'LUKKET: Farmakologisk Institut',323000,'efdb6aae-665b-4d2f-a53a-d10aee467d13'),(1311,'Farmakologisk Institut, Forskerskole, Danish Cardiovascular Research Academy',323200,'288b23b7-066e-414f-8ae6-6c200cdb6c05'),(1312,'Farmakologisk Institut, Kardiovaskulær Farmakologi',323300,'712456fc-ea12-477e-b857-6e9ee9e8add6'),(1313,'Farmakologisk Institut, Molekylær Neurofarmakologi',323500,'d741abad-85e2-4d1e-9d39-00fbaa0f27a5'),(1314,'Farmakologisk Institut, Pharmacogenomics',323600,'da3f51e4-2626-45c9-a2da-bdd65b8069a4'),(1315,'Farmakologisk Institut, Center for Farmakogenomik',323700,'58778d0e-4b12-4597-b6d3-f3bf09760678'),(1316,'LUKKET: Øjenpatologisk Institut',324000,'57bc1dfe-9009-40c2-916c-6f736713229e'),(1317,'LUKKET: Øjenpatologisk Institut, Klinisk virksomhed',324100,'a8dde465-5b03-4135-9551-204df75a9d62'),(1318,'LUKKET: Medicinsk Fysiologisk Institut',325000,'d867dfab-4e7a-4355-b4c1-0d4a9840cebb'),(1319,'LUKKET: Medicinsk Fysiologisk Institut, Afdeling for Patofysiologi',325300,'c370f262-ba68-4226-b40b-521154be9dc6'),(1320,'LUKKET: Medicinsk Fysiologisk Institut, Afdeling for Endokrinologi og Metabolisme',325400,'b2434ddf-f820-4717-bfd3-04be92f4587a'),(1321,'LUKKET: Medicinsk Fysiologisk Institut, Afdeling for Neurofysiologi',325500,'e227f6d4-bfb8-46da-90ee-9338587dd9f6'),(1322,'LUKKET: Medicinsk Fysiologisk Institut, Undervisningsafdeling',325700,'c6c69117-9784-4cd8-8cf0-591ef4988716'),(1323,'LUKKET: Medicinsk Fysiologisk Institut, Danish Arrhythmia Research Center',326300,'624afe1c-a186-40ed-ab9b-613128e378ac'),(1324,'LUKKET: Institut for Molekylær Patologi, Undervisningsafdeling',327300,'81ad3cb7-c9c4-4e1b-93e6-3f9b767700a0'),(1325,'LUKKET: Institut for Molekylær Patologi, Teilum Stald',327400,'40e7e1cc-9399-4add-a75a-4a2b4094039d'),(1326,'LUKKET: Institut for Molekylær Patologi, Patologisk Anatomisk afd.',327500,'9456b843-6277-46f1-9c97-dfcfe0d997c7'),(1327,'LUKKET: Institut for Molekylær Patologi, Trans Core Facility',327600,'dc0d3959-ed40-40f7-9cc6-52657c01dbc0'),(1328,'Institut for Klinisk Medicin',328100,'6aa59caf-e29c-4953-844d-49502c1853a5'),(1329,'Institut for Klinisk Medicin, Forskerskole i muskel biologi',328700,'17873a53-f5c6-4793-bfa4-95b77aece311'),(1330,'Institut for Folkesundhedsvidenskab, MPH  (Master of Public Health)',331100,'f42eda1d-1155-4d89-9a0a-0858a0583494'),(1331,'Institut for Folkesundhedsvidenskab, 2012 Forskningsclusteret International Sundhed',331800,'b7b9acc8-426f-4f35-9acb-b0e6d878d047'),(1332,'Institut for Folkesundhedsvidenskab, 2012 Forskergruppen CISU',331900,'9364dedc-d6e9-49f5-90be-706dfa025660'),(1333,'Institut for Folkesundhedsvidenskab, Medicinsk Videnskabsteori, Åben Uddannelse',334300,'14b40187-c910-4157-9bb6-63e48fc0f5f4'),(1334,'Institut for Folkesundhedsvidenskab, Afdeling for Medicinsk Kvinde- og Kønsforskning',338000,'d79eb96d-b84d-425a-8128-84f994450088'),(1335,'Institut for Folkesundhedsvidenskab, Afdeling for International Sundhed',338500,'6e0b2956-6cfe-4edd-930d-9aabe83f5882'),(1336,'LUKKET: Medicinsk-anatomisk Institut, Undervisningsafdeling',340500,'e8e7ec01-671c-443e-8ba7-a617ce302bff'),(1337,'LUKKET: Medicinsk-anatomisk Institut, Forskerskole - Celle- og Vævsbiologi',341000,'f9a11ef0-bc20-4dba-a183-443ad8c1c88f'),(1338,'LUKKET: Medicinsk-anatomisk Institut, Forskerskole - Neuroscience',341100,'7b309c08-f010-4741-9b22-bde43321fa38'),(1339,'LUKKET: Medicinsk-anatomisk Institut, Cellebiologi Cluster',341200,'857bf7cb-20e5-40d1-ab9b-19a405e8508e'),(1340,'LUKKET: Medicinsk-anatomisk Institut, Immunologisk Forskerskole',341400,'d87e00f5-b7ad-4d1d-b520-c4bbaf5e0a3c'),(1341,'LUKKET: Medicinsk-anatomisk Institut, Afd. for Donation',342000,'100e4daa-1363-4060-896f-490b183c0ae9'),(1342,'LUKKET: Medicinsk-anatomisk Institut, Cellebiologi II',344000,'b9ebea5a-50e7-482b-916b-a636995a4183'),(1343,'LUKKET: Medicinsk-anatomisk Institut, Cellebiologi III',345000,'be1c9c95-4976-4402-8e76-bb9ec583a2a3'),(1344,'FA-lager, Projektchef',716500,'7ba5b3e0-bb7f-4420-8078-67a9418d3a35'),(1345,'FA-lager, IT-sikkerhedsleder',716600,'e03bad32-33f0-445e-9c81-b2b855c400db'),(1346,'Rektorsekretariatet, ALDRIG BRUGT: HR-afdelingen',718400,'a56857f4-db62-4b7f-b305-2041c056fe44'),(1347,'Uddannelsesservice, Universitetsavisen',721000,'af97b39e-885a-4ee9-a541-86d42c100a02'),(1348,'Uddannelsesservice, Valgsekretariatet',724000,'cb92dd53-b8d4-4506-aa50-31705109b878'),(1349,'Uddannelsesservice, Center for Webbaseret Læring (CWBL)',726400,'322af491-f489-4b3b-bd4f-585c441bbf10'),(1350,'Uddannelsesservice, Uddannelses-it',729100,'dbb2116a-4823-4a74-8ae8-8278b94e5c4a'),(1351,'Campus Service, Campus Byggeri',745000,'b6c1ec26-95ad-447b-b0ef-1af81bbfe473'),(1352,'Campus Service, Arbejdsmiljøsektionen',747000,'d1a7d2a3-8ba9-424c-a76a-bd003aa6bbd8'),(1353,'Forskning & Innovation, BioLogue/Netværk',753700,'bf37a1ce-ae14-49d4-8489-7c9558ce1236'),(1354,'Koncern-it, Drift og Support',768000,'d55393c8-c43d-4882-b064-d97f1cd580ea'),(1355,'LUKKET: Personale & Jura',770000,'facbfdbb-3d2a-4768-8f6c-b4891ea13bc0'),(1356,'Koncern-økonomi, Afdelingsledelse',775100,'ebc06fc3-e1e2-4d74-9ff1-c99462079fc4'),(1357,'Koncern-økonomi, Udvikling & Ledelsesstøtte',775200,'b3ca490f-b0ae-409f-be74-0c3ad4a98e48'),(1358,'Institut for Neurovidenskab og Farmakologi, Neurosekretion',314300,'f9bf5b26-c499-4dbe-8b9e-27f0d5a83b2e'),(1359,'LUKKET: 2012 Master of HIV',398600,'6272be15-dfa2-49e5-b6c2-02308c963fa0'),(1360,'Fonden Collegium Juris',900100,'8712ba4a-c5dd-4a72-9250-a243cc6e87d6'),(1361,'SCIENCE Fakultetssekretariat, HR',572800,'0ca9607a-4f03-4182-8b53-014a38414c94'),(1362,'Campus Service, Campus Sikkerhed',744000,'ab419242-9070-4413-9abd-c9b6c5992991'),(1363,'SAMF Fakultetssekretariatet, Pædagogisk Center Samfundsvidenskab (PCS)',205000,'f7a50f62-1b44-4839-a928-2c3f3116668d'),(1364,'SCIENCE Fakultetssekretariat, Erhverv og Myndighed',572700,'483d866f-7c6a-436f-ba4e-927f4ac3499d'),(1365,'Forskningsområdet, Juridisk Ph.d.-uddannelse',620300,'2cca44de-6c6d-4ec5-8521-89d36854d07a'),(1366,'Centre m.v., US Projekter',580200,'da912036-0385-403b-824c-b014ab9023c2'),(1367,'Biologisk Institut, Marinbiologi',525100,'3b9db73e-43eb-4fbf-a17b-5803a82ef6e0'),(1368,'Fordelingssted for KU',20000,'883dccbd-a2be-4109-a7cd-fcd5c4c81030'),(1369,'Bachelor- og kandidatuddannelser, Uddannelsesråd for veterinærvidenskab og husdyrvidenskab',391400,'ac3b1d26-10e6-485d-906b-99b758e43866'),(1370,'SCIENCE Campus Service',590000,'bc735f2b-692c-4691-bf7b-f4700510c0ee'),(1371,'Koncern-it, Stab',762000,'82099e06-2dd5-4ac3-85cb-c0142b446b1d'),(1372,'DJF',959600,'b2243c5c-fcfd-4709-8286-fc29f44ff7f0'),(1373,'CTR',959700,'740660ba-8e11-4c4d-a740-cf475bfe873f'),(1374,'Phlogo',959800,'eef83168-506f-4aa1-a71a-650de70e60e3'),(1375,'GRAS A/S',959900,'b2947137-ad6b-4c2a-8253-db972d53d6ad'),(1376,'Fonden Polyteknisk Boghandel (Bio.)',960200,'280ad643-c49a-4933-89bf-90565f4265f6'),(1377,'Det Kgl. Bibliotek - Universitetsbibliotekarens ledelsessekretariat',900200,'bed2e2b6-8466-407e-a508-8c6610a423a1'),(1378,'Koncern-økonomi, Projektsektionen',775300,'cf328153-6063-45d7-ac2d-8384693617af'),(1379,'2012 Studieservicecenter, 2012 Sekretariat for den prækliniske undervisning',389100,'923f7dfb-079f-4002-a906-9b98f977d11b'),(1380,'LUKKET: 2012 Studieservicecenter, 2012 Sekretariat for uddannelsen i Folkesundhedsvidenskab',389200,'66435148-0a4e-4d02-beaf-a5e9e082ff89'),(1381,'Økonomisk Institut, Biblioteket',220400,'e2fe10ab-0d01-41d5-a7d3-cb066f4fd3c4'),(1382,'2012 Institut for Basal Husdyr- og Veterinærvidenskab, 2012 Institutleder',61600,'bb306d55-7b1d-4474-ba95-7361903e8642'),(1383,'2012 Campus Service, LIFE, 2012 Housing Department, LIFE',76300,'78780bd3-1703-45f0-ab02-f21bee688798'),(1384,'Agrotech',959300,'2484edba-ade1-4377-8422-085777f3edb4'),(1385,'Dansk Gartneri',959400,'ba437efa-a1cd-445c-b9a0-22607dd3d01f'),(1386,'Morel',959500,'e382a6f3-d48d-4eb6-b130-00b0b80f2d6f'),(1387,'SCIENCE Fakultetssekretariat, NAT Fællesudgifter',573000,'7f00a3cb-fdb1-43a0-afd9-a8df1f3efc4c'),(1388,'Bachelor- og kandidatuddannelser, Miljøkemi og sundhed',393100,'c5589b32-046e-46c8-ac17-23ee480c1892'),(1389,'LUKKET: Studienævnet for musikvidenskab',470200,'25387455-aa0a-42b6-be4d-9d57d8c16bb1'),(1390,'LUKKET: Studienævnet for pædagogik og humanistisk informatik',476400,'6b9d8508-70e8-4ac1-9d0d-1de707f3ba7f'),(1391,'Fakultet Fælles',410100,'fab370f4-708b-4ef2-9c45-37544a875b1f'),(1392,'Centre m.v., Feltstationer',580400,'f6be54ff-9005-41c4-b69f-00d6bd194d3c'),(1393,'Institut for Idræt og Ernæring, Indtægter og udgifter af haller og udlejning',541800,'9e22fb3a-b405-4417-acc9-8e5ec659cfd4'),(1394,'Institut for Idræt og Ernæring, Undervisningsudvalg',541900,'2633f560-594e-4af2-8d8b-558ef8009d3f'),(1395,'Institut for Idræt og Ernæring, Laboratoriet',542100,'f850f4b2-7664-4152-b67d-560882c44b6b'),(1396,'Institut for Idræt og Ernæring, Køkkenet',542200,'52d309ff-b8a6-4d4e-8b5d-cf7c9843f665'),(1397,'Institut for Idræt og Ernæring, Undervisning',542300,'146c879f-8d1d-49b4-a35b-74c5819603a6'),(1398,'Institut for Idræt og Ernæring, Børne- og international ernæring',542400,'b8e749f7-5c18-4280-b2dd-0651042a350a'),(1399,'Institut for Idræt og Ernæring, Energimetabolisme, appetitregulering og fedme',542500,'f3074503-e33d-4c6a-9a4a-c21ebfc71435'),(1400,'Institut for Idræt og Ernæring, Bioaktive fødevarer og sundhed',542600,'84f3d5f1-591c-4a75-b714-5c70e8805788'),(1401,'Institut for Idræt og Ernæring, Klinisk og eksperimentel ernæring',542700,'e7731eb5-2d12-4966-899e-6ce2178292c6'),(1402,'Institut for Idræt og Ernæring',543900,'d919be50-084f-46f4-b43c-a3891b895ce7'),(1403,'LUKKET: Forskeruddannelsesprogram i Uddannelsesforskning',461100,'191ab5c5-cbb2-48cf-9978-db1bc028d88f'),(1404,'Forskningsområdet, Centre for International Law and Justice',623100,'c09e81b8-bce2-4ee1-8e5c-ddef37e4d301'),(1405,'Institut for Plante- og Miljøvidenskab',544000,'31c1ee83-9efd-4658-9e2b-c164f5d7df42'),(1406,'Institut for Plante- og Miljøvidenskab, Sekretariat og it-funktion',544100,'3db5e0ae-6a09-4d5b-871a-418ab7d64a2d'),(1407,'Institut for Plante- og Miljøvidenskab, Afgrødevidenskab',544200,'3155699b-d8a2-488c-bb3e-3cd097f64f65'),(1408,'Institut for Plante- og Miljøvidenskab, SOBI',544400,'092d4ddc-8043-49e9-be5b-97ec67a5999e'),(1409,'Institut for Plante- og Miljøvidenskab, Plante- og Jordvidenskab',544600,'7f7baeab-02c4-44bc-b9ba-1a7f5194867c'),(1410,'Institut for Plante- og Miljøvidenskab, PlanteFaciliteter & Værksteder',544800,'cb9aa162-adad-4cfc-8406-266a1b7b8c74'),(1411,'Institut for Plante- og Miljøvidenskab, CCAFS',545200,'dea11ced-da61-4535-a433-79ddd9dc99d8'),(1412,'Campus Service City, Omstillingen-KU',295000,'329d4346-7c8a-4c5c-8d58-76f0eb4cb3de'),(1413,'Forskningsområdet, Centre for European Studies in Economic Law',622900,'0b7d17d9-8e72-4174-b986-21ed1402017c'),(1414,'Institut for Lægemiddeldesign og Farmakologi',348100,'4b75f6de-8d39-42cf-9f9b-a6321b6a62cb'),(1415,'Institut for Lægemiddeldesign og Farmakologi, Sekretariat og drift',348200,'116db946-fb3f-4a98-b0a9-8d90ceae2416'),(1416,'Institut for Lægemiddeldesign og Farmakologi, Biostructural Research',348300,'d7c8bc26-f60b-4bab-b4b5-191064b5460f'),(1417,'Institut for Lægemiddeldesign og Farmakologi, Medicinal Chemistry Research',348400,'1f83f6c4-369e-4ffc-8438-92a335ca7e2e'),(1418,'Institut for Lægemiddeldesign og Farmakologi, Natural Products Research',348500,'aee753fb-bf5d-45a6-9797-fac5ee69938b'),(1419,'Institut for Lægemiddeldesign og Farmakologi, Molecular and Cellular Pharmacology',348600,'c1a2ee5c-530e-4c71-be19-387c174b4715'),(1420,'Institut for Lægemiddeldesign og Farmakologi, Farmakoterapi',348700,'ae0e42ef-aa52-4a0b-be09-a1680602b382'),(1421,'Institut for Lægemiddeldesign og Farmakologi, Systems Pharmacology',348800,'0d128403-3369-44dc-9bc5-58831f2d4bb1'),(1422,'Institut for Lægemiddeldesign og Farmakologi',348900,'35706175-9bc2-4820-afa4-c6d022c7bd14'),(1423,'Skolen for Klinikassistenter og Tandplejere, Tandplejere',396200,'f4d7e86f-a93f-4e4f-8f91-bcba3e102ae1'),(1424,'Skolen for Klinikassistenter og Tandplejere, Klinikassistent',396300,'a27536fd-9b39-4055-abe1-549661dd9961'),(1425,'Skolen for Klinikassistenter og Tandplejere, Skolepraktik',396400,'c919c096-2fa6-4b99-abbf-bda3bf7a9375'),(1426,'Skolen for Klinikassistenter og Tandplejere, Videreuddannelse i Odontologisk Praksis',396500,'dfeb2d80-9589-474a-b2bc-48d7ce778d4e'),(1427,'PCOVERY,Thorvalds.vej 57',960600,'f22f7b61-5156-46a1-93ac-fb4f501917e6'),(1428,'BGI Europe,Bülowsvej 15',960700,'264e3f1a-4951-41df-b9be-3fc06c2eed3a'),(1429,'Dyrlæge Gustav Pedersen, Tåstrup',960800,'64230524-2f5f-43a8-9df1-f153b6139444'),(1430,'GUBRA,Ridebanev.12',960900,'3eb9ac26-829b-43ee-82fd-bace2677b33a'),(1431,'Institut for Idræt og Ernæring',541000,'601a5e2f-58da-4495-aa44-f15462e50326'),(1432,'Institut for Idræt og Ernæring, Gruppe for efter-videreudannelse',541100,'0ad2cc05-dcba-42e1-a178-dd58c76dc946'),(1433,'Institut for Idræt og Ernæring, Integreret fysiologi',541200,'376a8534-a9f1-46ef-a543-ff2b37d86f3f'),(1434,'Institut for Idræt og Ernæring, Idræt, politik og velfærd',541300,'517fc61f-e9bd-4e6f-80ff-4615baf2b725'),(1435,'Institut for Idræt og Ernæring, Krop, læring og identitet',541400,'a01d2f77-aeed-4a57-b708-18fd5d864f2f'),(1436,'Institut for Idræt og Ernæring, Molekylær fysiologi',541500,'7e45a9f7-a531-47ba-8ffc-f3d3b6e9a706'),(1437,'Institut for Idræt og Ernæring, Fysisk aktivitet og hjernen',541600,'f943a230-f279-491c-a00c-eb85ea630dc8'),(1438,'Institut for Idræt og Ernæring, Ph.D',541700,'428f8291-d5e5-4bee-87dd-b4048e03c3e0'),(1439,'Institut for Psykologi, Center for Psykoterapiforskning',267100,'aea537aa-a91b-43ba-9721-27372b9c89fb'),(1440,'Institut for Psykologi, Center for Supervision',267500,'a2c8247a-aedb-4d7c-a124-99fa0f393769'),(1441,'Institut for Psykologi, The Unit for Cognitive Neuroscience (UCN)',267900,'f7b182ae-f649-4e0c-a754-1a6cc348a201'),(1442,'2012 Fakultetsservice, 2012 Eksamenskontor',95500,'bd35a0be-6002-4594-936f-8c3296ebbdc1'),(1443,'2012 Fakultetsservice, 2012 Mastersekretariatet',95900,'16c7909f-2671-415a-8977-6aa6d44ff996'),(1444,'2012 Fakultetsservice, 2012 Administration og fællesområde',96000,'e7b7355d-19f8-4f44-8d83-26e65f36d183'),(1445,'LUKKET: 2012 Fakultetsservice, 2012 Sikkerhedsudvalg',96100,'c9ef12fd-79f7-4acd-97b1-9ea985d6a16a'),(1446,'LUKKET: 2012 Fakultetsservice, 2012 Kommunikationsafdelingen',96300,'5e867832-b03e-454a-b997-5365869277f4'),(1447,'LUKKET: 2012 Fakultetsservice, 2012 IT-afdelingen',96400,'96565113-c275-4057-b764-ccae160c8874'),(1448,'LUKKET: 2012 Fakultetsservice, 2012 Økonomisk Forvaltning',96500,'2f13b142-5ff4-4bc4-8df1-7e7a36c3df70'),(1449,'LUKKET: 2012 Farma bygningsdrift',98000,'b6e65b6c-10c4-4c15-b571-0a79dfef844b'),(1450,'2012 Farma bygningsdrift, 2012 Bygningsdrift og vedl.',98100,'7a098a9b-3fdd-4a74-92ac-ff77489e883a'),(1451,'2012 Farma bygningsdrift, 2012 Teknisk tjeneste',98300,'c9457404-1d7d-4113-9570-a67cbedf19c4'),(1452,'2012 Farma bygningsdrift, 2012 Indvendig vedligehold',98400,'5c3461a0-90bb-4a9d-9163-c848de0d903e'),(1453,'Laboratories, Solexa sektion',865300,'751a8ad0-f37a-4e04-9e72-fa4d3a2aca04'),(1454,'Laboratories, Forsøgsdyrssektio',865500,'559a4b74-1e80-40c8-8283-e28d12b64b91'),(1455,'NIAS, Bibliotek',280400,'72488ba6-9ca3-4594-91df-a024d453ea3c'),(1456,'SEA, Afskrivninger, forsikringer m.m.',802700,'d9c9695e-95f6-4d85-9864-83ae38938378'),(1457,'Le Cannibale',940000,'ccfba2ea-d6f4-4d4c-a18f-21bea5c1bec5'),(1458,'LUKKET: FADL',976300,'92d06dd7-5bb8-4dc1-9901-605614a1d858'),(1459,'Campus Service Søndre, AV-Service',458800,'98a67823-3b07-4471-8e7a-111335a650b0'),(1460,'LUKKET: Medicinsk Fysiologisk Institut, NeuroCluster',326100,'058b545c-cbd2-4d47-a058-8e78f29a1cf6'),(1461,'LUKKET: Metalogic A/S',957200,'43c65486-70ad-4f38-bd79-dc72ebc5fef3'),(1462,'Dansk Selskab for Almen Medicin (DSAM)',957600,'dfe39e0f-cd0d-42da-af98-10b27047f3d3'),(1463,'LUKKET: EV partnere, uden for KU´s regnskab',960000,'74f94992-2597-430a-9f78-d00dda7e8b32'),(1464,'LUKKET: Brorfeldes vennekreds',958000,'f4fee400-e07a-487c-806c-9d543bca8316'),(1465,'LUKKET: Forskerskolen Religion og Samfund',127500,'08bb23be-d849-4741-8e70-44f280b702f2'),(1466,'SAMF fakultetfællesudgifter, Projekt- & Karrierevejledningen',212500,'9fc815c4-a5c1-48f0-bc00-a24fa09145bd'),(1467,'LUKKET: Økonomisk Institut - Reception',220300,'8a916797-9b59-45c9-b23b-887888159804'),(1468,'Økonomisk Institut, Internationalt Udvalg',220700,'ab593f1f-b02b-4046-a4d8-b49d4f42e541'),(1469,'Økonomisk Institut, Informationen',220800,'d01491e0-b7c9-45dc-9232-f60f2b750f38'),(1470,'LUKKET: Medicinsk Fysiologisk Institut, Obesity & Diabetes Cluster',326400,'7de3f666-67cf-49fb-b057-0003d7f160f7'),(1471,'LUKKET: ALDRIG BRUGT: Reserveret til Fusion (910000 til 919999)',910000,'0c50bff4-fba5-42a6-8623-5bf839dbdc8e'),(1472,'LUKKET: Integration Fælles, Integration Økonomi',890100,'64897574-558e-4a37-bc63-e34eb3c16613'),(1473,'LUKKET: Integration Fælles, Integration IT',890700,'96b21d64-7ab4-4f72-b419-32dcd86bbdca'),(1474,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Fælles Service',88000,'9f68e759-ecf8-4c92-85ec-f0d56e8a3376'),(1475,'2012 Institut for Farmaci, Institut for Farmakologi og Farmakoterapi',91200,'47e6eb8e-49a6-4748-bbaa-54aad77a9282'),(1476,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Fakultetsservice',86000,'61bea0d1-7dbd-4ac4-91fb-cd7ee9e6de97'),(1477,'Institut for Neurovidenskab og Farmakologi, Molekylær Kardiologi',315800,'019ae2d9-1654-4e9d-86b3-d1df17aee0ce'),(1478,'LUKKET: Studienævn for Kandidatuddannelser',587000,'d52fc513-9f74-4668-9f5a-7f5c2463b051'),(1479,'2012 Fødevareøkonomisk Institut, 2012 Statistik',72600,'4218a3eb-d148-4be4-a6e8-0cc96e2226ec'),(1480,'Institut for Økologi, Fællesudgifter, Sekretariat',65100,'9033ecb5-7895-4004-9b44-208c9b01f8e1'),(1481,'Institut for Økologi, VIP-rejser',65300,'8353ffb1-3e43-4de0-a90d-eb5807d58f2d'),(1482,'Biomedicinsk Institut, Trans Core Facility',311500,'78722e63-fad7-4edf-85ea-e62dd3749343'),(1483,'Institut for Neurovidenskab og Farmakologi, Laboratorium for Neural Plasticitet',315200,'f7fd7b2a-d063-4edb-8cd2-32e88038f89a'),(1484,'Institut for Cellulær og Molekylær Medicin, Forskerskole - Celle- og Vævsbiologi',317300,'72cdd085-3813-45fa-a45e-44e67a7ccf12'),(1485,'Institut for Cellulær og Molekylær Medicin, Donation',317000,'1bd3deb5-1745-4e5c-87cd-5dacddc16d05'),(1486,'Kommunikation, Universitetshistorie',715100,'0b1cc29a-91cb-4342-8a7f-e8a80ae86a77'),(1487,'LUKKET: Integration Fælles, Fusion Synergier',891000,'25600933-df63-4f0e-8685-37faf92695a7'),(1488,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Veterinær Patobiologi',81500,'ff768c9f-c101-446d-a84d-748d4ba59b6a'),(1489,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Institut for Grundvidenskab',83200,'4e446dd9-31ae-493f-b920-6db8538a2e71'),(1490,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, ALDRIG BRUGT: De Tekniske Anlæg 2003',87200,'6fc28fd7-0ba0-4cc7-bb7a-d463455fde16'),(1491,'LUKKET: Fodterapeutuddannelsen',958900,'ac5c5239-3e3d-419c-bc93-471bd2161970'),(1492,'Beredskabsstyrelsen',959000,'9bf4e513-e1f4-4bc9-b4d3-20a7a3aa910c'),(1493,'2012 Fødevareøkonomisk Institut, 2012 Fiskeriøkonomi og -forvaltning',72500,'67d321fc-d6c3-49c1-8a68-c4ebfa778d6e'),(1494,'Økonomisk Institut, Cafélitten',223200,'d88abab0-2e91-4126-99e6-87b8fb423d2f'),(1495,'Økonomisk Institut, Danish Graduate Programme in Economics (DGPE)',226100,'97cab33a-cef3-4a6c-bbd4-b3301d254380'),(1496,'Økonomisk Institut, Centre for Industrial Economics (CIE)',227100,'14c537a1-82bc-451c-88c7-fb4a1cd5800e'),(1497,'Økonomisk Institut, Centre for Applied Microeconometrics (CAM)',227200,'1d4cf2fe-dbf4-4e79-b088-c54ca9d4ec20'),(1498,'HR & Organisation, International Staff Mobility (ISM)',751800,'08b9a7af-90ab-4904-bf70-540be8dd2c03'),(1499,'HR & Organisation, Arbejdsmiljø og Samarbejde',751700,'90578eed-33e2-4fd2-afb1-2f123e5306b4'),(1500,'Økonomisk Institut, Polithuset',223100,'92223054-8f35-42d1-ad54-6454976d6eb7'),(1501,'HR & Organisation, Ledelses- og Projektsekretariatet (LPS)',751500,'def3495d-eb39-4378-95e4-56c5d1b2e539'),(1502,'Institut for Statskundskab, EDB-afdelingen',230900,'17673cf6-566b-44bc-ae89-5480f1db6f68'),(1503,'Institut for Statskundskab, Politik',231000,'6ad98689-47a0-4300-b15c-cd929e042f37'),(1504,'LUKKET: 2012 LIFE centralt',77000,'85d0e614-645a-4d57-a6d9-b2637bac6572'),(1505,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Diverse',89000,'6858f9b6-7dc4-496a-9d8a-59230838faac'),(1506,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Beholdninger',89100,'6c752657-5fa8-4a15-a380-c7c9a4cfae0b'),(1507,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Modpost - projektsaldi',89300,'b0c6b4e4-01ab-4f1c-b8ec-cd38019a3430'),(1508,'2007 - Det Biovidenskabelige Fakultet for Fødevarer, Veterinærmedicin og Naturressourcer, Anlæg',89400,'a6f2e216-91a8-4446-8905-c5f9f2e17b84'),(1509,'2012 Institut for Farmaci, Institut for Farmaci og Analytisk Kemi',91100,'6dc0c7a6-f08f-4116-b480-6d8ea654534e'),(1510,'2012 Institut for Farmaci, Institut for Medicinalkemi',91300,'553f330c-e129-4fd0-b220-8987bbcc0457'),(1511,'2012 Fakultetsservice, 2012 Studienævn',95200,'61cc731c-19a4-424c-8dc1-597a5745f706'),(1512,'Koncern-økonomi, Personalesektionen',776500,'350200db-a13f-4d64-8d3d-fc5efbf3553e'),(1513,'Institut for Statskundskab, Center for Baltiske studier',237100,'755278bc-7b78-495c-96c6-a55cda661c04'),(1514,'Institut for Statskundskab, Center for Demokrati og Mediestudier',237200,'6bbd3cd3-1856-4314-9a20-165de3a2ad19'),(1515,'Institut for Antropologi, EDB-afdelingen',240900,'1fc0ef92-79ef-4b79-94eb-4dab03edb60b'),(1516,'Institut for Antropologi, Ph.d.-studienævn, Antropologi',245000,'4d1db969-a36a-4fdf-80a5-a5ee31fa50c5'),(1517,'Institut for Antropologi, Masteruddannelse',248000,'a01d471f-6ea6-4605-a2ad-ff201214bc02'),(1518,'Institut for Antropologi, Master i Sundhedsantropologi',248500,'b0af651c-6dab-4924-b6c3-cd6c8bcb1909'),(1519,'Institut for Antropologi, Master i Antropologi og Velfærd',249000,'d4e8c1b8-b092-49ea-81ab-afb7ecd97a60'),(1520,'Sociologisk Institut, EDB-afdelingen',250900,'e0083227-a4b4-4ee1-a34d-2ee24b24b77b'),(1521,'Sociologisk Institut, Forskerskole',256000,'8ce306d8-f405-4788-8927-87fe051c040d'),(1522,'Fakultetsservice, Kommunikation',301800,'1aff7332-dfdc-429a-a0f7-8f7c7a3c7023'),(1523,'Campus Service SUND, Driftschef-SVF',303100,'a09e0418-8f28-43a9-9f1b-e2975f6d2413'),(1524,'Campus Service SUND, Rengøringsservice-Driftsområde SVF',303300,'a087ca59-5bbf-46f6-a89a-3ea01ab39996'),(1525,'Campus Service SUND, Bygninger, vedligehold, projekter - Driftsområde SVF',303500,'dc8bba65-6430-48e7-b363-d1cf4d1fe9c3'),(1526,'Campus Service SUND, Inventar, inventarlager, park/vej og pladser - Driftsområde SVF',303600,'567b3f3a-971d-4323-9ac9-436d37475ac7'),(1527,'LUKKET: Tech Trans Enheden',304000,'8c3d07d4-36b5-4177-9391-d9f2fc2c8cd2'),(1528,'Tech Trans Enheden, Patentering',304100,'bb9c5066-b237-40f7-8a5c-08e73ed4ed65'),(1529,'Tech Trans Enheden, Teknologioverførsel',304200,'14cda786-9323-42ad-88f1-1c1a726f4715'),(1530,'Institut for Psykologi, EDB-afdelingen',260900,'494b5a45-3763-487d-a219-438f648d9751'),(1531,'Institut for Psykologi, Deltidsuddannelsen',263100,'09851b91-62d0-4df3-9935-52791e61395b'),(1532,'Institut for Psykologi, Center for Humanistisk Sundhedsforskning',267300,'bd00d814-4d89-408b-aa14-0422af878a21'),(1533,'Institut for Psykologi, Person, Praksis, Udvikling og Kultur',267600,'3cf05a55-b96d-4970-9f76-4e2f62873af6'),(1534,'Institut for Psykologi, Personlig Livsførelse og Intervention',267700,'6b770bd1-81c3-4de7-ad29-e1f7ee61cf7c'),(1535,'LUKKET: Center for anvendt Datalogi',270000,'7f2e3ff0-092e-450a-8812-0f3f08e6d14b'),(1536,'2012 Afdeling for Eksperimentel Medicin, 2012 Teilum Stald',305300,'68a42d48-228f-4334-a9f0-ff32604e6073'),(1537,'Rektorsekretariatet, Klimasekretariatet',718300,'85bbc900-e742-4bf0-ad53-747b91830342'),(1538,'Institut for Geovidenskab og Naturforvaltning, 2012 Bassinstudiegruppen',508800,'efc2f244-7030-40f5-be9d-cd5bc0782be7'),(1539,'Campus Service City, Driftsområde Indre By',291000,'0da12412-dffb-4ee3-97d1-61b6d58f6cf7'),(1540,'Campus Service City, Intern Service',293000,'afed5139-7dfb-47ff-8278-6c0fa4571de8'),(1541,'Campus Service City, Rengøringsservice',294000,'d3f69fad-6c1f-4be6-b42a-955e4ab477ee'),(1542,'LUKKET: 2012 Fakultetsservice, 2012 FSU - samarbejdsudvalg',96200,'45fa72a0-86fd-4584-b0ff-c6f1ea4fc74a'),(1543,'2012 Fakultetsservice, 2012 Administration',95100,'58b17350-a852-45fb-91c9-641ac013857c'),(1544,'2012 Fakultetsservice, 2012 Didaktisk enhed',95800,'d6e2d0f5-c715-44bd-ae13-a5fcf2682870'),(1545,'2012 Farma bygningsdrift, 2012 UP 4',98200,'6375847f-288b-43cd-86cd-4410ef3bd107'),(1546,'Institut for International Sundhed, Immunologi og Mikrobiologi, Cluster i International Sundhed',313400,'cd1d02a9-b2a9-43db-8640-f948d68b83cf'),(1547,'Institut for Neurovidenskab og Farmakologi, BRAIN',314500,'6f025d1c-8623-4d1f-86da-32bb15d83ace'),(1548,'Institut for Neurovidenskab og Farmakologi, Biomekaniks',314600,'7badbf14-58b2-437a-a939-5f9e219da0a9'),(1549,'Institut for Neurovidenskab og Farmakologi, Neuroprotektion',314700,'300229aa-ea45-4b63-91d7-bbb150a2364d'),(1550,'Forskningsområdet, Forum for Company law and financial Market law',622200,'82fdb028-f1f6-47be-8d4a-66f02e4aff7a'),(1551,'Økonomisk Institut, Laboratory for Experimental Economics',227500,'c9b1cc71-23f3-4446-8fc2-6ebcf4c0e85e'),(1552,'LUKKET: Inger Gyldenkerne, Inger Gyldenkerne',954400,'0e980964-0d02-4a27-a1b3-f1926336735d'),(1553,'LUKKET: Jan Kofoed Mogensen, Jan Kofoed Mogensen',954900,'204371ca-d656-425a-8c69-41d96b4f7b03'),(1554,'TDC A/S',955400,'f4044aff-9753-497e-914d-5219773c21f7'),(1555,'LUKKET: FOF - Frederikshavn, FOF - Frederikshavn',955800,'de438c8e-248c-45f7-8bdc-22ce18a1a6f7'),(1556,'LUKKET: Orange A/S, Orange A/S',956400,'ef12ceb4-c8e0-4f80-94ed-01a618492580'),(1557,'LUKKET: MEILE & MONBERG, MEILE & MONBERG',956900,'df9eea86-e23a-4751-8f5d-5d405fc74565'),(1558,'LUKKET: Atomistix',988800,'8ad8bbdf-4766-4a1d-bf94-ec6ea995c289'),(1559,'UBST Genudlejning',997000,'c641c0dd-8249-436a-abf2-d2847aba4bea'),(1560,'Lokaler under ombygning',999000,'4d4fd70c-0548-48ca-8fa5-9eb865d8ab29'),(1561,'Datalogisk Institut, EDB-afdeling',510100,'b381867b-0168-4ee7-b5ec-43c4a9e634af'),(1562,'Farmakologisk Institut, Molekylær Farmakologi',323400,'f165f73b-a93d-412c-912b-96a7161ad61d'),(1563,'Odontologisk Institut, Klinik - KKT',383700,'5ab44bc6-9d66-4e00-bbd2-3e9581e6c5f6'),(1564,'Fakultetsservice',300500,'2485b165-2d18-4d6e-9940-c70037a538d4'),(1565,'Fakultetsservice, Dekanatet',300600,'ffb2846b-83f3-46d8-9f88-ae8490c2738c'),(1566,'Fællesfakultære aktiviteter',300300,'f1284872-aa6b-4c35-bf3b-d97beaa4a0e0'),(1567,'Statens Naturhistoriske Museum, SNM HAVEN',529700,'df890a60-843c-4cc9-ac08-31fbf69d922c'),(1568,'Niels Bohr Institutet',503000,'7db2e36e-97a1-4fa9-8aa4-e510c91bca55'),(1569,'Fakultetsservice, Forskning og Innovation',302200,'bb7e5af1-3aa3-4fcc-94f5-fd39c2911f48'),(1570,'Campus Service SUND, Administration',303200,'6fcac0a3-d9b5-4391-86e4-f4a41e49333e'),(1571,'Bachelor- og kandidatuddannelser, MSc Animal science',361700,'421c5211-9002-4a56-9697-af99015d93a6'),(1572,'SCIENCE Campus Service, Campus Service Nord - Driftsledelse',592900,'1f80ff53-8c24-41f4-a340-0c67f6a4cdd1'),(1573,'Bachelor- og kandidatuddannelser, BSc Husdyrvidenskab',361600,'c3c60a21-5527-42c3-b078-1e90a2c33d4e'),(1574,'Bachelor- og kandidatuddannelser, MSc Medicinal Kemi',392800,'0f5e2915-81d2-4f47-bcc5-30659609e37f'),(1575,'Bachelor- og kandidatuddannelser, MSc Humanbiologi',390800,'540fd136-1b7a-4b49-8382-64479ec6a752'),(1576,'Masteruddannelser, Master of International Health (MA)',397500,'699a82df-f3c4-414e-a3b9-74efd1c717c9'),(1577,'Bachelor- og kandidatuddannelser, BSc + MSc Odontologi',390900,'41f9c233-402d-49f3-b80b-54e5888f2802'),(1578,'Bachelor- og kandidatuddannelser, MSc Parasitology',391800,'bc2a270b-4861-46a4-a632-4bf7d259dcc0'),(1579,'Masteruddannelser, Master i Hiv',397700,'eac9664e-811c-40f1-9827-89f77849578a'),(1580,'Fakultetsservice, Rekruttering og Indskrivning',302900,'f00f9cc6-2a77-4666-a27e-4a2c08e50d6c'),(1581,'Masteruddannelser, Master of Phamaceutical Affairs (MA)',397400,'803fc86d-8d2b-4732-917c-2d7b362821ee'),(1582,'Bachelor- og kandidatuddannelser, BSc + MSc Biologi/Biotechnologi',392200,'a6018f49-3629-4f3a-b776-abdb4a6ab88c'),(1583,'Bachelor- og kandidatuddannelser, BSc + MSc Medicin',390700,'afd91c73-cd79-48c5-8068-30162054ae6e'),(1584,'Masteruddannelser, Master of Industrial Drug Development (MA)',397200,'4aef7df5-b533-403a-bfb2-9e158d75575f'),(1585,'Institut for International Sundhed, Immunologi og Mikrobiologi, School of Global Health',312300,'aac17f38-8946-4cf2-b4ea-9a9439fa09f9'),(1586,'Fakultetsservice, Sektion for Internationalisering',302800,'e9ce300e-cc49-402d-9aeb-49733ef448a9'),(1587,'Masteruddannelser, Companion Animal Clinical Science (MA)',396700,'2c94ac10-d9d8-4fa8-be09-2c7f9c01ac01'),(1588,'Masteruddannelser, Veterinary Public Health (MA)',396900,'14c439ed-82b4-4705-aa0d-5c5a5af1d2c2'),(1589,'Bachelor- og kandidatuddannelser, BSc + MSc Veterinær Medicin',361500,'b594c474-e834-4302-baec-717de7ab8e2b'),(1590,'Institut for International Sundhed, Immunologi og Mikrobiologi, Research Programme in Global Health',312400,'baa12320-84ec-4e02-9491-df712c813485'),(1591,'Masteruddannelser, Master of Drug Management (MA)',397300,'e9c0c0c2-d0ac-4a6b-a2ef-8e340ed1cda6'),(1592,'Bachelor- og kandidatuddannelser, BSc Fødevarevidenskab',392100,'06c78cba-c238-49f5-8d44-f0c2dae5c10e'),(1593,'Masteruddannelser, Fødevarekvalitet og sikkerhed (MA)',396800,'8ef9c5b6-b960-4cd6-b41b-9955ea244b59'),(1594,'Bachelor- og kandidatuddannelser, School of Pharmaceutical Sciences',393300,'a6f8b6c6-4468-41f9-a95a-70246a25a72a'),(1595,'Bachelor- og kandidatuddannelser, MSc Food Science and Technology',392300,'c8ec5b77-fd85-4fa6-bedf-3873842c6aa0'),(1596,'Fakultetsservice, Sektion for Legalitet og studienævnsbetjening',302600,'b84a07aa-4c1d-4be5-9445-5857572627fb'),(1597,'Fakultetsservice, Sektion for Studieservice',302700,'06eaed75-d927-422b-b8e7-861b9172f358'),(1598,'Bachelor- og kandidatuddannelser, BSc + MSc Folkesundhedsvidenskab',393400,'c7374303-2fe3-4f6a-bb30-9707accbe6ec'),(1599,'Bachelor- og kandidatuddannelser, MSc Lægemiddelvidenskab',392700,'ed271042-aff8-4b5d-a79e-6de5b86f5cc4'),(1600,'Institut for International Sundhed, Immunologi og Mikrobiologi, School of Global Health',312200,'39f8ae5c-0407-4dd4-97e8-0e1df90b1fbb'),(1601,'Masteruddannelser, Master of Disaster Management (MA)',397600,'e708ca25-48e1-445d-8b39-7e85d580d37e'),(1602,'Masteruddannelser, Laboratory Animal Science (MA)',397100,'c487868e-4ec7-4fe6-aa47-21ecdc7ec96a'),(1603,'Masteruddannelser',396600,'c65673c0-6a42-4b33-a1a6-8ef245c84239'),(1604,'Bachelor- og kandidatuddannelser, MSc Global Sundhed',393200,'71c698a1-0926-46da-b740-578a1d0205a2'),(1605,'Institut for Klinisk Medicin, Sekretariat, Klinisk institut',329000,'3401d58a-a50f-42ca-9fe3-95a22a5af8a0'),(1606,'Bachelor- og kandidatuddannelser, BSc + MSc Farmaci',392600,'af9afc77-444a-471a-a07b-e6b3ff86924a'),(1607,'HR & Organisation, HR Systemer',751400,'1c06d247-549c-4441-b148-dab1ad8532b5'),(1608,'The Novo Nordisk Foundation Center for Basic Metabolic Research',386900,'851e93a6-064a-4a51-b08a-3231dd8846eb'),(1609,'SCIENCE Plan & Projekt, Housing',595800,'c24c65ce-8166-47d6-b777-6d93ed07f7b2'),(1610,'Bachelor- og kandidatuddannelser, MSc Animal Science',391700,'bfd3cd83-9c3c-410b-ab43-ac743000c7c6'),(1611,'Bachelor- og kandidatuddannelser, BSc + MSc Veterinær Medicin',391500,'94ca8ad2-a925-4e81-b216-e44aa0361e63'),(1612,'Bachelor- og kandidatuddannelser, BSc Husdyrvidenskab',391600,'85485eac-9777-43b8-b82c-01997416a6c6'),(1613,'SCIENCE Plan & Projekt',594000,'cd269b2e-6196-484f-afa1-b3a52d2d6250'),(1614,'Bachelor- og kandidatuddannelser, MSc Farmaceutisk Videnskab',393600,'9df262ff-cc77-4e23-8084-7bf37ef2da08'),(1615,'SCIENCE Plan & Projekt',594200,'92405df2-6905-4b67-b468-0619b5005c9b'),(1616,'SCIENCE Campus Service - Driftsteknik',591200,'7bf2d092-4db9-4224-83de-7fea48dc026c'),(1617,'SCIENCE Campus Service - Driftsservice',591100,'aed9b01f-b586-47d6-bc24-feed0cc031ad'),(1618,'LUKKET: SCIENCE Campus Service - Serviceområde',593800,'b27663a9-fe77-49ed-ae1a-9bb467000fbb'),(1619,'SCIENCE Campus Service - Rengøring',593500,'1205548c-42f6-4bdb-8f0b-c22fd7ab3010'),(1620,'SCIENCE Campus Service - Energi',593700,'4642fc29-88ed-4e1e-bd0a-a76b44d4e15c'),(1621,'SCIENCE Campus Service - Drift og Vedligehold',593600,'3e651d6b-034c-47f6-b9d4-74bdf445b43e'),(1622,'SCIENCE Campus Service, Campus Service Nord - Driftsledelse',593900,'91934bde-8881-445a-b2e5-7b85270a85c4'),(1623,'Institut for Geovidenskab og Naturforvaltning, Skov, natur og biomasse',507300,'ce131258-eb68-49a2-8717-8954ba374988'),(1624,'Institut for Geovidenskab og Naturforvaltning, Sekretariatet',507100,'bac2a21a-a216-4c14-92c4-0787e3fb1112'),(1625,'Institut for Geovidenskab og Naturforvaltning, Landskabsarkitektur og planlægning',507400,'aedefd7e-94e4-4935-82b5-7d410db3ce33'),(1626,'SCIENCE Fakultetssekretariat, Det Natur- og Sundhedsvidenskabelige Fakultetsbibliotek - Frederiksberg Campus',573900,'4096eaae-6f61-4bd1-9254-a3fc9cf71ca1'),(1627,'Institut for Geovidenskab og Naturforvaltning, Skovskolen',507200,'e64a4084-747c-4d9d-bb05-6595862d9868'),(1628,'Institut for Geovidenskab og Naturforvaltning, By- og Landskabsstudier',507500,'7ba05fd8-b62d-4f76-8c4e-da1a1665d505'),(1629,'Institut for Geovidenskab og Naturforvaltning, Earth System Science Center',507700,'114747d2-9922-413d-a748-85fe332d36df'),(1630,'Institut for Geovidenskab og Naturforvaltning, Sustainability Science Center',507600,'340bc926-6c84-4821-aa9b-ecc643ddab01'),(1631,'Kemisk Institut',523900,'22914ded-a5c8-426e-a742-1d58d5643d69'),(1632,'Specialeuddannelsen i Almen Medicin',962400,'1b61fa60-0635-4c74-8dfe-0a24adf69399'),(1633,'BioLigands ApS',962200,'a06841ff-9dc1-466e-a457-a4f8fd022ea5'),(1634,'NTS-Center Hovedstaden',962100,'c1569c48-3cf6-4c4b-bff7-3792864017c3'),(1635,'CEKU/Region Hovedstaden',962300,'243076b3-8a66-4897-b096-40209e09a397'),(1636,'SUND ph.d. skole, SUND Ph.d. skole',399500,'e0cf33d6-6e7f-4e12-afd6-d6790a951e5e'),(1637,'Institut for Statskundskab, NIAS',237700,'87d0869d-eac4-401c-b3cf-aaaa8f18bcd1'),(1638,'Det Informationsvidenskabelige Akademi',490000,'cd956178-1368-43a4-950f-bfbcc005928f'),(1639,'Det Sundhedsvidenskabelige Fakultet',300100,'ee885145-8473-4ccc-80fa-1002dea7cb4c'),(1640,'Det Natur- og Biovidenskabelige Fakultet',500100,'395d7128-79af-459b-9deb-68e5a317a2fd'),(1641,'Fakultetsservice, Center for Universitetspædagogik og Didaktik',457900,'42f9bfe6-0426-4b95-ab2f-0903f3ad841f'),(1642,'Fakultetsopsagte bygninger',956500,'0ece1836-e1ff-4b4f-977c-65042ed497ab'),(1643,'Institut for Fødevare- og Ressourceøkonomi, Institutservice',548100,'087fc631-544f-43a2-b929-d059f721f1a8'),(1644,'Det Informationsvidenskabelige Akademi - Ledelse og sekretariat',490200,'135c530a-33bf-4b0d-b8ed-4858936e8a08'),(1645,'Det Informationsvidenskabelige Akademi - Teknologi og service',490300,'a0bd3935-37d0-4f5b-b0c8-4cbd3bd56446'),(1646,'Odontologisk Institut, Undervisningsklinikken',383900,'a4db23b0-966f-481a-be82-8df8bfb7febe'),(1647,'SCIENCE Studienævn i alt',599998,'c8c41e9b-81f1-4829-bf6d-68896832d36e'),(1648,'SCIENCE Studienævn, Studienævn for Naturressourcer og Miljø (SNNM)',599700,'546ea4b8-32a6-4e45-a053-140e14e4ba57'),(1649,'Institut for International Sundhed, Immunologi og Mikrobiologi, IVIS CF',312700,'b5972350-7886-454c-80fc-cf20dcacdcaf'),(1650,'Institut for Fødevarevidenskab, Produktvidenskab',553000,'bb637088-f1e3-42d7-9ff3-9069754d9087'),(1651,'BRIC',850000,'7722879e-ef02-4b39-88bc-7f2c033dd11c'),(1652,'Forskningsområdet, Center for erhvervsret',623200,'a8211da1-d978-47f6-8b3b-8198ba48e621'),(1653,'SCIENCE Fakultetssekretariat, Regnskab',572900,'714288f4-7296-4052-a3e1-93414e198d64'),(1654,'Laboratories',864900,'94512667-7810-4620-b90b-f3152ddfc6fa'),(1655,'Administration',864300,'08004a0c-d8f3-4407-8477-ff8a2ed01720'),(1656,'BRIC-fordeling',850100,'b0e2bc58-81ea-4bad-8e23-5c453e2e79a4'),(1657,'Research Groups',852000,'c516b785-c1df-4c11-9d08-7b6dc453ad8c'),(1658,'BRIC Konverteringsparkeringsted',866998,'d58814e2-c172-4b8d-97b9-68f59632ba12'),(1659,'ION Channel Group',47258665,'97e112f7-091a-41bc-a11c-b417ac7dea91'),(1660,'SCIENCE Forskningsdokumentation',47924029,'4b45688a-a368-462b-8eeb-07e0f69027d0'),(1661,'Administration, MoMed',864400,'4e590d7b-92ff-451d-9c1c-2c82475f34a3'),(1662,'Research Groups, Theilgaard Group',852100,'48339cde-3893-41f1-97b1-891001e0fa91'),(1663,'Samsøe & Samsøe',955300,'b9d2bad4-295b-4dee-82cd-eaa2cf8688b2'),(1664,'Research Groups, Andersen Group',852200,'f9da075f-ea78-4418-85e9-8d1fa1b15b67'),(1665,'Koncern-økonomi, Lønsektionen',778500,'98984193-c4a8-4288-8326-3051f74fae80'),(1666,'Det Informationsvidenskabelige Akademi - Undervisning',490600,'51d39f8f-9413-40db-b1c5-e6bd4f5b6dfb'),(1667,'Det Informationsvidenskabelige Akademi - Bibliotek',490800,'87e2d813-8562-404e-8b1b-43021e74230f'),(1668,'Fakultetsservice, FS-Fælles',456500,'53132863-e328-4948-b251-267065108a9b'),(1669,'Det Informationsvidenskabelige Akademi - Studiecenter',490700,'7702e0c1-538c-49b3-bf4e-2d9f727a6c05'),(1670,'Fakultetsservice, Areal og bygningsanvendelse',456700,'84ba9807-bde4-4a17-b15b-be1ff7ed54f7'),(1671,'Det Informationsvidenskabelige Akademi - Ph.d.-området',490500,'c9f7f9f2-86e2-42cc-b6f9-d9c3d2dbc072'),(1672,'Det Informationsvidenskabelige Akademi - Forskning',490400,'89ad8126-2c3b-4488-b219-4f7aacb70738'),(1673,'SUND Konverteringsparkeringsted',399998,'7fb17a6d-9644-4541-ac8c-eb866df47118'),(1674,'FA Konverteringsparkeringsted',799998,'8619c422-7cda-4208-8bbc-115622007833'),(1675,'FA - tværgående',796000,'9425b883-c839-413b-96a4-136ec7a06407'),(1676,'SEA, Ejendomme',802800,'adc1a4e2-37fc-4307-a4e8-259faf1729b9'),(1677,'Niels Bohr Arkivet',808000,'8733746f-3ad5-4686-b6c8-c77499c9ad3a'),(1678,'Strategiske Satsninger på KU - fordelingskonto',809100,'4963ca87-7250-43ea-ae4b-2682051fb5f7'),(1679,'KU Øvrige Konverteringsparkeringsted',849998,'c68a06ce-2d29-4f51-a902-339329db0578'),(1680,'Løn på ugyldigt stednummer',804000,'3ca1bc3c-a602-45a9-81f4-33ce1ba4cdea'),(1681,'Eksterne centre - Konverteringsparkeringssted',997998,'f0572a04-87e1-4126-84e8-b95aac79fba9'),(1682,'Dekanat - fordelingssted',454900,'6cb299e0-286e-48eb-b25a-3cd1c1ce78fc'),(1683,'Fakultetsservice, Universitetspædagogik og didaktik',456600,'617a7bb6-c6e0-48af-a548-07c638cb1254'),(1684,'Indtægtsdækkede enheder',459400,'68791375-a26e-4672-b0cb-0103fc2d159f'),(1685,'Indtægtsdækkede enheder, Studenterafdelingen',459500,'da9260aa-1cc9-4c55-9d18-69b5f60b1022'),(1686,'Indtægtsdækkede enheder, Mødestedet',459600,'a11d8077-6365-422a-ad83-33bf9d4bab9f'),(1687,'JUR Ledelsen, Ledelsessekretariatet - fordelingssted',604900,'d1e1d052-542b-433a-886b-a5b821123187'),(1688,'Forskningsområdet - fordelingssted',620100,'5d8b5cb0-ccd9-4b3e-a5dc-900b6190a250'),(1689,'Forskningsområdet, Forskningscenterområdet - fordelingssted',648900,'48686b19-e96a-4858-825c-a00c57f8f176'),(1690,'JUR Konverteringsparkeringsted',699998,'b195a32d-c7a0-47d3-b504-5b0e0b3d4ce7'),(1691,'Fællesadministrationen - fordeling',700100,'bd36db1c-95c2-4f0d-8d5b-6c5480438e06'),(1692,'Kommunikation, Afdelingsledelse',715900,'f46ea662-439b-4cee-8f23-ca9e7fd9e6ed'),(1693,'Rektorsekretariatet, Bestyrelsen',718800,'e18a43ee-713b-4575-88ba-fe08ef94ce49'),(1694,'Tilskud - fordeling',791900,'bbd8eafa-d1fe-41db-939a-8f3d31f8ebea'),(1695,'SAMF fakultetfællesudgifter - fordelingssted',219700,'9a8ed058-34d9-4aca-8438-4091ad4035d8'),(1696,'Økonomisk Institut, Institutservice',220200,'42354d70-63ca-4f29-b0e6-e0bf02404570'),(1697,'Økonomisk Institut - fordelingssted',229900,'9890575d-094e-462f-bad2-595f1ded9aec'),(1698,'Institut for Statskundskab - fordelingssted',239900,'90240acf-3a2d-4039-bf45-848a30fef81d'),(1699,'Institut for Antropologi, Centre',247000,'46e8e222-54b0-4408-91ee-590b6a9bedd5'),(1700,'Institut for Antropologi - fordelingssted',249900,'2ef510df-d7a6-4a65-bd91-b759d06410b0'),(1701,'Sociologisk Institut, Centre',256900,'df6c108a-5301-4f79-b7af-76233691451c'),(1702,'Sociologisk Institut, Center for Bolig og Velfærd',257400,'802c3074-ff51-4ab1-a553-a08e845e5022'),(1703,'Sociologisk Institut - fordelingssted',259900,'b1084c84-c8fe-4022-a794-6414277a338a'),(1704,'Institut for Psykologi, Psykologisk studienævn - fordelingssted',263900,'f4b790e9-5faa-4e64-9598-39358b039efc'),(1705,'Institut for Tværkulturelle og Regionale Studier',479000,'2135be85-c592-472b-92e4-6ea6cd86c59a'),(1706,'Det Informationsvidenskabelige Akademi - fordelingssted',490100,'13f74125-a290-4c9b-99e9-f377d42e7f23'),(1707,'HUM Konverteringsparkeringsted',499998,'8f1e0f77-54c7-46f9-99bb-01509fd2ee92'),(1708,'Det Teologiske Fakultet - fordelingssted',100100,'543e31e2-4fa7-4c50-9b9c-d134daab5257'),(1709,'TEO Fakultetssekretariat - fordelingssted',114900,'e9007819-022a-4ae4-a68e-6b79704b79fd'),(1710,'Afdelinger - fordelingssted',120900,'e8fe2293-25be-4d40-8d82-051d700bafa2'),(1711,'TEO Center for afrika, Center for Afrika - fordelingssted',126900,'7e6320bf-4db6-44da-b87c-d3cf2135de02'),(1712,'TEO Konverteringsparkeringsted',199998,'df229e10-e101-491f-81fe-3843fbaf3bf2'),(1713,'SAMF FAK fordelingssted',200100,'fac74b5b-ce33-44fe-be20-b47d336d4b6a'),(1714,'SAMF Fakultetssekretariatet - fordelingssted',209900,'5daf7b6e-b3f6-4272-81ed-39cfd812178b'),(1715,'Institut for Psykologi, Universitetsklinikken',269500,'40a6c76a-4a36-49e7-b2f4-b0564a45735f'),(1716,'Institut for Psykologi - fordelingssted',269900,'cffdab24-e606-4527-9996-34c435cf70a2'),(1717,'Campus Service City - fordelingssted',299000,'608b8000-227e-4890-999b-4950d8f4f617'),(1718,'SAMF Konverteringsparkeringsted',299998,'6502adb6-7fe3-41fb-8aba-84c12bc4f306'),(1719,'Ph.d.-Studienævnet',468100,'046c5dcd-eb19-421b-804c-32de18fce39a'),(1720,'Center of Basic and Translational Neuroscience',387600,'23f6e7af-2493-4023-8624-634279304afb');
/*!40000 ALTER TABLE `pure_portal_org_uuid_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue`
--

DROP TABLE IF EXISTS `queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `command` varchar(127) NOT NULL DEFAULT '',
  `args` text DEFAULT NULL,
  `status` varchar(63) DEFAULT NULL,
  `message` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue`
--

LOCK TABLES `queue` WRITE;
/*!40000 ALTER TABLE `queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirects` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `pattern` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `http_action` varchar(40) NOT NULL,
  `last_action` tinyint(1) NOT NULL DEFAULT 0,
  `expiration_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortcuts`
--

DROP TABLE IF EXISTS `shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shortcuts` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) unsigned NOT NULL,
  `docid` int(8) unsigned NOT NULL,
  `name` varchar(512) NOT NULL,
  `order_number` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortcuts`
--

LOCK TABLES `shortcuts` WRITE;
/*!40000 ALTER TABLE `shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sso_sessions`
--

DROP TABLE IF EXISTS `sso_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sso_sessions` (
  `sso_session_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` char(32) NOT NULL,
  `login` varchar(255) NOT NULL,
  `ip_match` varchar(11) NOT NULL,
  `permanent` tinyint(1) NOT NULL DEFAULT 0,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`sso_session_id`),
  KEY `sso_sessions_sessionid_idx` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sso_sessions`
--

LOCK TABLES `sso_sessions` WRITE;
/*!40000 ALTER TABLE `sso_sessions` DISABLE KEYS */;
INSERT INTO `sso_sessions` VALUES (9,'51e2c85fcb572d8a73e3c81eacf70179','admin','10.10.136',1,'2014-01-23 09:24:48'),(11,'efbd83c56cc59ef2b84387d1545b0e8d','admin','10.50.136',1,'2014-01-29 10:33:15'),(13,'8613a44f69305624bfca8343f4b8f10e','admin','10.10.136',1,'2014-01-30 05:55:55'),(15,'b10cb5e8a86508ce654a7f22995d5b09','admin','10.10.136',1,'2014-02-04 07:55:55'),(16,'6f3cfe71803b2a510a9b4fd667ac9726','admin','10.10.136',1,'2014-02-04 09:58:20'),(17,'30522a32b107c4c78a02e5351874a59d','admin','10.10.136',1,'2014-02-06 07:23:32'),(18,'6611a744c4b2a38378e7b04089a9ba7d','admin','10.10.136',1,'2014-02-08 07:36:13'),(21,'df6bc8fb457554141b9fd6f9eab3624e','admin','10.50.136',1,'2014-02-12 09:52:10'),(22,'27544cc3537e29f6790dc22d3b0e11d6','test','10.50.136',1,'2014-02-12 09:53:10'),(23,'424b3708aa0d4b81d917d9b1c8b7738e','admin','10.10.136',0,'2014-02-18 05:33:21'),(24,'1a5985e121410e0c598a9314c916572f','admin','10.10.136',1,'2014-02-18 05:34:59'),(25,'51aca8a4caa8327f8de76608dd50e1b8','admin','10.10.136',1,'2014-02-18 06:46:03'),(26,'56f731420fc5118893ac3eeb068f1bc7','admin','10.10.136',1,'2014-02-18 07:05:44'),(28,'9571ed122c05909be33047a090da0a7a','admin','10.10.136',1,'2014-02-22 05:49:07'),(30,'b8dea2cc4d182493e7d9187711211aa3','admin','10.10.136',1,'2014-03-12 12:26:56'),(31,'47040f8a8282f5d75b53ab89cd3c3057','admin','10.10.136',1,'2014-03-14 07:33:13'),(36,'6c8ec74c99c07787239768f4c0b85b19','admin','10.10.136',1,'2014-03-18 09:05:18'),(40,'2c520131a5501e5afed1ab419728327c','admin','10.10.136',1,'2014-04-03 05:11:14'),(41,'d4821d4a9d8c14e6505ce883cb86fc17','admin','10.50.136',1,'2014-04-08 10:15:42'),(42,'129115baac9c386a660ed2ea1b26bd8e','admin','10.10.136',1,'2014-04-09 10:11:42'),(43,'b47da85120d6f5c860f0847cd48c8194','admin','10.10.136',1,'2014-04-11 09:47:20'),(46,'7dc74b6a77715bd5a91f96b552e04b07','admin','10.10.136',0,'2014-05-09 06:05:35'),(50,'e792b00fa0754ceabf94a45ba87a35be','jubk','10.10.136',0,'2014-05-10 07:19:28'),(52,'4df16fac1eaa45d540af3ccd81b22387','jubk','10.10.136',0,'2014-05-13 08:47:07'),(53,'a86f2189b9c54adff225101dd91deb60','admin','10.10.136',1,'2014-05-14 04:34:45'),(54,'ebb0a0c8b01585f27e6970a9e9bfc336','admin','10.10.136',1,'2014-05-16 05:18:24'),(56,'b388ff1013cbc85c4db4613ea3c8e21a','jubk','10.10.136',0,'2014-05-23 10:59:33'),(57,'e338f4b42646e81e5ec867c66d01712d','jubk','10.10.136',0,'2014-06-04 09:23:12'),(59,'0daf2a2f8a3c28f90ccab376a6787b63','admin','10.10.136',1,'2014-06-12 06:12:11'),(60,'cd413e871eaf2745d926912b66152323','admin','10.10.136',1,'2014-06-25 07:31:01'),(65,'15954f0822dbf24bac4b353c67ceb37f','jubk','10.50.136',0,'2014-07-31 13:35:21'),(66,'9ef9b061c1fe44d3f4fa4d75fd2ad116','jubk2','10.10.136',0,'2014-08-28 10:36:06'),(69,'ad679b85f9b0bb4fb0a78238a69db04b','jubk','10.10.136',0,'2014-10-18 08:51:55'),(70,'b4be412ac35d117a338b74e87cc997f5','admin','10.10.136',1,'2014-10-21 12:54:26'),(71,'efd42c7281ac3210e4464dc100dc9cc9','admin','10.10.136',1,'2014-10-24 06:34:12'),(72,'02a2a1e19883c1d49e235b14b9164cb8','jubk','10.10.136',0,'2014-10-30 11:00:02'),(73,'cc836d2faa67bbd7e172d5b76c778e02','admin','10.10.136',1,'2014-11-15 12:21:37'),(75,'4ab6d17664ee288e6526b55d92ae49a0','admin','10.10.136',1,'2014-12-03 11:19:00'),(76,'cbfff92c5914451ed0a5b3c20934d2ab','admin','10.10.136',1,'2014-12-10 11:24:46'),(77,'02097db007cbb462cb736bd984e84d99','admin','10.10.136',1,'2014-12-20 10:37:33'),(78,'b32bde6e075c9249521ebbd3050fc909','admin','10.51.136',1,'2015-01-10 06:04:48'),(79,'32c467ef937315eb61afb9f6d0f1d37b','jubk','10.10.136',0,'2015-01-27 06:42:35'),(81,'d8a42433e6aea530aadac39f54aed39b','jubk2','10.10.136',0,'2015-02-06 10:11:53'),(83,'cf52d04a676743920d63e30e2ff37936','jubk2','10.10.136',0,'2015-02-07 10:55:59'),(88,'15dd3dc84df01f6d2c2271f4cdc96d85','jubk2','10.10.136',0,'2015-02-17 06:54:01'),(90,'984721601cfc0441996601746317b0bb','jubk2','10.10.136',0,'2015-02-21 06:05:37'),(91,'77045afeaa0700e7088b5daedfd3632b','jubk','10.10.136',0,'2015-03-10 11:06:03'),(92,'aefeb5f3e9028ce27b95bd4013798dac','admin','10.10.136',1,'2015-03-11 09:05:45'),(93,'84ae8faefed4a191948ef438a054de07','admin','10.10.136',1,'2015-03-24 10:18:57'),(98,'acfd4e4663cf8506ec54b1cabd8d3c4b','jubktest003','10.10.136',0,'2015-06-03 11:51:23'),(101,'ea07c89024fdfe48f48df207b76e9608','jubk','10.10.136',1,'2015-07-08 08:00:44'),(102,'82b46f0f242e6da9a08539fcd2c891bc','jubk','10.10.136',1,'2015-07-08 09:37:22'),(103,'57743212c2cf2a45158f01d2463b5c65','jubk','10.10.136',1,'2015-07-14 06:14:35'),(106,'abf7c46661a8deafdd4bcf4bbbcdc687','jubk','10.10.136',1,'2015-09-05 11:01:36'),(108,'ef4d0dc8cbe74097772ae0ec8a74c0ac','jubk','10.51.136',1,'2015-09-18 10:56:06'),(110,'7c1b786ff474be456f2421f21c6fe015','jubk','10.10.136',1,'2015-10-30 11:04:25'),(111,'3dadda6575642037066dfd816abdf864','jubk','10.10.136',1,'2015-12-04 09:10:54'),(112,'f8ad58bb3258685ca56ff3a70a845ea3','jubk','10.10.136',1,'2016-02-27 10:53:33'),(115,'8a14197b72e5fbdf9b7ec55295eaf209','jubk','10.51.136',1,'2016-05-04 10:22:31'),(119,'53817615a1d06fc509d654402bc1c035','jubk','10.51.136',1,'2016-05-11 12:16:40'),(121,'cc77ad3e17e39c0dba2cc9153338a86f','jubk2','10.10.136',0,'2016-09-08 11:33:22'),(122,'29e46366ff8a3763a7e9a89cd440b242','jubk','10.10.136',0,'2016-10-12 10:21:34'),(123,'45aaf90641542a19c2adbe0198d331c6','jubk','10.10.136',1,'2016-10-12 10:24:22'),(125,'0573255d0d6a4c8723ce688259b73d89','jubk','10.51.136',1,'2016-10-26 12:00:09'),(127,'b2442bfbe8a48cc571398305be9f86fa','jubk','10.51.136',1,'2017-01-18 15:41:07'),(128,'30d03f5b5829fd458dfc12ccfce17614','jubk','10.51.136',1,'2017-01-31 15:58:25'),(129,'e6956a26e59353236a858e90b2259b49','jubk','10.10.136',1,'2017-02-01 12:54:10'),(130,'00cfd81b5aa1e2f6a2f06b7a72d349b0','jubk','10.10.136',0,'2017-09-23 06:43:53'),(132,'dae1c9cfc70b53a77e04f83edc42f7f5','jubk','10.51.136',1,'2017-11-17 05:59:47'),(133,'9b779b65fba9650f256d1aeb474c8433','jubk','10.10.136',1,'2018-01-23 06:44:03'),(135,'e23eb3f3b089b21b43352bbda161271e','jubk2','192.168.2',1,'2018-06-19 05:18:21'),(136,'dc0fb7891c0d65986272ca85014bf10a','jubk2','192.168.2',1,'2018-06-19 06:22:43'),(137,'4ebd3d9339d2d858d754097a6fd2fabc','jubk','192.168.2',0,'2018-06-20 11:01:18'),(138,'6b01404bfd1780c85f6656314083d4c7','jubk','192.168.2',0,'2018-07-20 07:50:45'),(139,'da07abba071818d64059cfb3ed435865','jubk','192.168.2',1,'2018-07-20 10:28:40'),(140,'eb9a8f3c51f6cada31e9d1e352a67581','jubk','192.168.113',0,'2018-08-23 07:07:00'),(141,'9700e1d874e515d82c6588f5d7fbe943','jubk','192.168.66',0,'2018-09-11 08:39:00'),(142,'80108ce675480367260ceae232d1496f','admin','172.19.0',0,'2019-02-26 07:42:48');
/*!40000 ALTER TABLE `sso_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sso_tickets`
--

DROP TABLE IF EXISTS `sso_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sso_tickets` (
  `sso_ticket_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sso_session_id` int(10) unsigned DEFAULT NULL,
  `ticketcode` char(32) NOT NULL,
  `origin` text NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`sso_ticket_id`),
  KEY `sso_tickets_sso_session_ref` (`sso_session_id`),
  KEY `sso_tickets_code_idx` (`ticketcode`),
  CONSTRAINT `sso_tickets_sso_session_ref` FOREIGN KEY (`sso_session_id`) REFERENCES `sso_sessions` (`sso_session_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sso_tickets`
--

LOCK TABLES `sso_tickets` WRITE;
/*!40000 ALTER TABLE `sso_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `sso_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL DEFAULT '',
  `company` varchar(127) NOT NULL DEFAULT '',
  `passwd` varchar(63) NOT NULL DEFAULT '',
  `email` varchar(63) NOT NULL DEFAULT '',
  `suspended` tinyint(3) NOT NULL DEFAULT 0,
  `cookie` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'Jørgen Ulrik B. Krag','Magenta Aps','$1$xXDVjkAk$trYmV1w.k23E8DgLXkfqb1','jubk@magent-aps.dk',0,''),(2,'Jørgen Ulrik B. Krag','Magenta aps','$1$uedK..4b$kKaj1gnKBnmEQGwDZQFvY.','jubk@magenta-aps.dk',0,'');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `subscriber` int(10) unsigned NOT NULL DEFAULT 0,
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`docid`,`subscriber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsite_editor_users`
--

DROP TABLE IF EXISTS `subsite_editor_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsite_editor_users` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(16) unsigned NOT NULL,
  `user_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sseu_subsites_id_ref` (`subsite_id`),
  KEY `sseu_user_id_ref` (`user_id`),
  CONSTRAINT `sseu_subsites_id_ref` FOREIGN KEY (`subsite_id`) REFERENCES `subsites2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sseu_user_id_ref` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsite_editor_users`
--

LOCK TABLES `subsite_editor_users` WRITE;
/*!40000 ALTER TABLE `subsite_editor_users` DISABLE KEYS */;
INSERT INTO `subsite_editor_users` VALUES (234,753,45);
/*!40000 ALTER TABLE `subsite_editor_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsite_statistic_collections`
--

DROP TABLE IF EXISTS `subsite_statistic_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsite_statistic_collections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `started` datetime DEFAULT current_timestamp(),
  `ended` datetime DEFAULT NULL,
  `is_current` int(1) unsigned NOT NULL DEFAULT 0,
  `is_latest_daily` int(1) unsigned NOT NULL DEFAULT 0,
  `is_latest_monthly` int(1) unsigned NOT NULL DEFAULT 0,
  `is_latest_yearly` int(1) unsigned NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'RUNNING',
  `error_output` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ssc_started_idx` (`started`),
  KEY `ssc_current_started_idx` (`is_current`,`started`),
  KEY `ssc_daily_started_idx` (`is_latest_daily`,`started`),
  KEY `ssc_monthly_started_idx` (`is_latest_monthly`,`started`),
  KEY `ssc_yearly_started_idx` (`is_latest_yearly`,`started`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsite_statistic_collections`
--

LOCK TABLES `subsite_statistic_collections` WRITE;
/*!40000 ALTER TABLE `subsite_statistic_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `subsite_statistic_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsite_statistic_entries`
--

DROP TABLE IF EXISTS `subsite_statistic_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsite_statistic_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` int(10) unsigned NOT NULL,
  `subsite_id` int(16) unsigned DEFAULT NULL,
  `data_display_id` int(10) unsigned DEFAULT NULL,
  `data_status` varchar(255) DEFAULT NULL,
  `data_title` varchar(2048) DEFAULT NULL,
  `data_public_path` varchar(2048) DEFAULT NULL,
  `data_user_id` varchar(1024) DEFAULT NULL,
  `data_responsible` varchar(255) DEFAULT NULL,
  `data_path` varchar(2048) DEFAULT NULL,
  `data_doc_count` int(10) unsigned DEFAULT NULL,
  `data_public_doc_count` int(10) unsigned DEFAULT NULL,
  `data_hidden_doc_count` int(10) unsigned DEFAULT NULL,
  `data_last_edit` datetime DEFAULT NULL,
  `data_broken_links` int(10) unsigned DEFAULT NULL,
  `data_hits_this_month` int(10) unsigned DEFAULT NULL,
  `data_hits_last_month` int(10) unsigned DEFAULT NULL,
  `data_visits_this_month` int(10) unsigned DEFAULT NULL,
  `data_visits_last_month` int(10) unsigned DEFAULT NULL,
  `data_content_pages` int(10) unsigned DEFAULT NULL,
  `data_dead_pages` int(10) unsigned DEFAULT NULL,
  `data_protected_pages` int(10) unsigned DEFAULT NULL,
  `data_unvisited_pages` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subsite_by_collection` (`collection_id`,`subsite_id`),
  KEY `sse_subsite_ref` (`subsite_id`),
  CONSTRAINT `sse_collection_ref` FOREIGN KEY (`collection_id`) REFERENCES `subsite_statistic_collections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sse_subsite_ref` FOREIGN KEY (`subsite_id`) REFERENCES `subsites2` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11054 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsite_statistic_entries`
--

LOCK TABLES `subsite_statistic_entries` WRITE;
/*!40000 ALTER TABLE `subsite_statistic_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `subsite_statistic_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsite_stats`
--

DROP TABLE IF EXISTS `subsite_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsite_stats` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(16) unsigned NOT NULL,
  `category` varchar(255) COLLATE utf8_danish_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_danish_ci NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subsite_id` (`subsite_id`,`category`),
  CONSTRAINT `sss_subsites_id_ref` FOREIGN KEY (`subsite_id`) REFERENCES `subsites2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsite_stats`
--

LOCK TABLES `subsite_stats` WRITE;
/*!40000 ALTER TABLE `subsite_stats` DISABLE KEYS */;
INSERT INTO `subsite_stats` VALUES (66,921,'link-check-errors','0','2019-02-25 12:02:08'),(67,921,'awstats-pageshows','0','2019-02-25 12:02:08'),(68,921,'awstats-pageshows-old','0','2019-02-25 12:02:08'),(69,921,'awstats-visitors','0','2019-02-25 12:02:08'),(70,921,'awstats-visitors-old','0','2019-02-25 12:02:08');
/*!40000 ALTER TABLE `subsite_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsites`
--

DROP TABLE IF EXISTS `subsites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsites` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL DEFAULT 0,
  `subsite` text NOT NULL,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2932 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsites`
--

LOCK TABLES `subsites` WRITE;
/*!40000 ALTER TABLE `subsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `subsites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsites2`
--

DROP TABLE IF EXISTS `subsites2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsites2` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(16) NOT NULL DEFAULT 0,
  `domain` longtext COLLATE latin1_bin DEFAULT NULL,
  `is_https` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `old_path` longtext COLLATE latin1_bin DEFAULT NULL,
  `root_docid` int(8) unsigned DEFAULT NULL,
  `title` longtext COLLATE latin1_bin NOT NULL,
  `alt_title` longtext COLLATE latin1_bin DEFAULT NULL,
  `front_faculty` varchar(255) COLLATE latin1_bin DEFAULT '',
  `front_faculty_id` int(10) unsigned DEFAULT NULL,
  `backend_faculty` varchar(255) COLLATE latin1_bin DEFAULT '',
  `backend_faculty_id` int(10) unsigned DEFAULT NULL,
  `comments` longtext COLLATE latin1_bin DEFAULT NULL,
  `lang` char(2) COLLATE latin1_bin NOT NULL DEFAULT 'da',
  `local_analytics` varchar(255) COLLATE latin1_bin DEFAULT '',
  `local_analytics_use_local_domain` varchar(3) COLLATE latin1_bin DEFAULT NULL,
  `global_menu` longtext COLLATE latin1_bin DEFAULT NULL,
  `other_language_link` varchar(1024) COLLATE latin1_bin DEFAULT NULL,
  `disable_search_engine_indexing` int(1) unsigned DEFAULT 0,
  `own_leftmenu` tinyint(1) unsigned DEFAULT 1,
  `fourth_menu_level_active` int(1) unsigned DEFAULT 0,
  `responsive` int(1) unsigned DEFAULT 0,
  `use_bootstrap` int(1) unsigned DEFAULT 0,
  `dont_inherit_local_analytics` tinyint(1) unsigned DEFAULT 0,
  `brandingunit` varchar(255) COLLATE latin1_bin DEFAULT '',
  `webteam_id` int(11) DEFAULT NULL,
  `warning_banner` longtext COLLATE latin1_bin DEFAULT NULL,
  `dont_inherit_warning_banner` tinyint(1) unsigned DEFAULT 0,
  `branding_text1` varchar(255) COLLATE latin1_bin DEFAULT '',
  `branding_text2` varchar(255) COLLATE latin1_bin DEFAULT '',
  `latest_unvisited_count` int(10) unsigned DEFAULT NULL,
  `website_category_id` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `subsites2_path_idx` (`old_path`(255)),
  KEY `subsites2_root_docid_idx` (`root_docid`),
  KEY `website_category_id_ref` (`website_category_id`),
  FULLTEXT KEY `ss_fulltext` (`domain`,`old_path`,`title`,`alt_title`,`lang`,`comments`,`brandingunit`,`warning_banner`),
  CONSTRAINT `website_category_id_ref` FOREIGN KEY (`website_category_id`) REFERENCES `website_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=922 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsites2`
--

LOCK TABLES `subsites2` WRITE;
/*!40000 ALTER TABLE `subsites2` DISABLE KEYS */;
INSERT INTO `subsites2` VALUES (166,1,'somesubsite.ku.localhost.magenta.dk',1,'/https_subsite/',115658,'https subsite3','',NULL,NULL,'Det Humanistiske Fakultet',4,'Kommentar','da','',NULL,NULL,NULL,0,1,0,0,0,0,'/120921.docid',21,NULL,0,'','',1,1),(753,45,'subsite.ku.localhost.magenta.dk',0,'/subsite/',110201,'Test af funky nav_head titel Ã† Ã˜ Ã…','','Det Natur- og Biovidenskabelige Fakultet',8,'Det Humanistiske Fakultet',5,NULL,'da','inherit this','yes',NULL,'http://english.ku.dk/',0,1,0,1,1,0,'',19,'',0,'','',12,1),(921,1,'',0,NULL,159029,'Subsitetest','','',NULL,'',7,NULL,'da','',NULL,NULL,'',0,1,0,1,1,0,'',NULL,'',0,'','',NULL,2);
/*!40000 ALTER TABLE `subsites2` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_subsites2_insert after insert on subsites2
for each row
begin
    if(new.root_docid is not null) then
        call update_closest_subsite_recursive(new.root_docid);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_subsites2_update after update on subsites2
for each row
begin
    if(new.root_docid != old.root_docid) then
        if(new.root_docid is not null) then
            call update_closest_subsite_recursive(new.root_docid);
        end if;
        if(old.root_docid is not null) then
            call update_closest_subsite_recursive(old.root_docid);
        end if;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_subsites2_delete after delete on subsites2
for each row
begin
    if(old.root_docid is not null) then
        call update_closest_subsite_recursive(old.root_docid);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `subsites2_awstats`
--

DROP TABLE IF EXISTS `subsites2_awstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsites2_awstats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subsite_id` int(16) unsigned DEFAULT NULL,
  `yearmonth` int(6) unsigned NOT NULL,
  `lastline` varchar(255) DEFAULT NULL,
  `firsttime` varchar(255) DEFAULT NULL,
  `lasttime` varchar(255) DEFAULT NULL,
  `lastupdate` varchar(255) DEFAULT NULL,
  `totalvisits` int(11) DEFAULT NULL,
  `totalunique` int(11) DEFAULT NULL,
  `monthhostsknown` int(11) DEFAULT NULL,
  `monthhostsunknown` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `yearmonth_idx` (`yearmonth`),
  KEY `subsite_ym_idx` (`subsite_id`,`yearmonth`),
  CONSTRAINT `ss2_awstats_subsite_ref` FOREIGN KEY (`subsite_id`) REFERENCES `subsites2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14710 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsites2_awstats`
--

LOCK TABLES `subsites2_awstats` WRITE;
/*!40000 ALTER TABLE `subsites2_awstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `subsites2_awstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `subsites_above`
--

DROP TABLE IF EXISTS `subsites_above`;
/*!50001 DROP VIEW IF EXISTS `subsites_above`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `subsites_above` (
  `id` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `domain` tinyint NOT NULL,
  `is_https` tinyint NOT NULL,
  `old_path` tinyint NOT NULL,
  `root_docid` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `alt_title` tinyint NOT NULL,
  `front_faculty` tinyint NOT NULL,
  `front_faculty_id` tinyint NOT NULL,
  `backend_faculty` tinyint NOT NULL,
  `backend_faculty_id` tinyint NOT NULL,
  `comments` tinyint NOT NULL,
  `lang` tinyint NOT NULL,
  `local_analytics` tinyint NOT NULL,
  `local_analytics_use_local_domain` tinyint NOT NULL,
  `global_menu` tinyint NOT NULL,
  `other_language_link` tinyint NOT NULL,
  `own_leftmenu` tinyint NOT NULL,
  `responsive` tinyint NOT NULL,
  `dont_inherit_local_analytics` tinyint NOT NULL,
  `brandingunit` tinyint NOT NULL,
  `webteam_id` tinyint NOT NULL,
  `warning_banner` tinyint NOT NULL,
  `dont_inherit_warning_banner` tinyint NOT NULL,
  `branding_text1` tinyint NOT NULL,
  `branding_text2` tinyint NOT NULL,
  `child_docid` tinyint NOT NULL,
  `child_path` tinyint NOT NULL,
  `subsite_docid` tinyint NOT NULL,
  `subsite_path` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `subsites_below`
--

DROP TABLE IF EXISTS `subsites_below`;
/*!50001 DROP VIEW IF EXISTS `subsites_below`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `subsites_below` (
  `id` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `domain` tinyint NOT NULL,
  `is_https` tinyint NOT NULL,
  `old_path` tinyint NOT NULL,
  `root_docid` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `alt_title` tinyint NOT NULL,
  `front_faculty` tinyint NOT NULL,
  `front_faculty_id` tinyint NOT NULL,
  `backend_faculty` tinyint NOT NULL,
  `backend_faculty_id` tinyint NOT NULL,
  `comments` tinyint NOT NULL,
  `lang` tinyint NOT NULL,
  `local_analytics` tinyint NOT NULL,
  `local_analytics_use_local_domain` tinyint NOT NULL,
  `global_menu` tinyint NOT NULL,
  `other_language_link` tinyint NOT NULL,
  `own_leftmenu` tinyint NOT NULL,
  `responsive` tinyint NOT NULL,
  `dont_inherit_local_analytics` tinyint NOT NULL,
  `brandingunit` tinyint NOT NULL,
  `webteam_id` tinyint NOT NULL,
  `warning_banner` tinyint NOT NULL,
  `dont_inherit_warning_banner` tinyint NOT NULL,
  `branding_text1` tinyint NOT NULL,
  `branding_text2` tinyint NOT NULL,
  `subsite_docid` tinyint NOT NULL,
  `subsite_path` tinyint NOT NULL,
  `parent_docid` tinyint NOT NULL,
  `parent_path` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `subsites_secondary_domains`
--

DROP TABLE IF EXISTS `subsites_secondary_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsites_secondary_domains` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `subsite_id` int(16) unsigned NOT NULL,
  `seqno` int(8) unsigned NOT NULL,
  `domain` text COLLATE utf8_danish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subsite_id` (`subsite_id`,`seqno`,`domain`(255)),
  CONSTRAINT `ssd_subsites_id_ref` FOREIGN KEY (`subsite_id`) REFERENCES `subsites2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1505 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsites_secondary_domains`
--

LOCK TABLES `subsites_secondary_domains` WRITE;
/*!40000 ALTER TABLE `subsites_secondary_domains` DISABLE KEYS */;
INSERT INTO `subsites_secondary_domains` VALUES (1503,753,1,'ss.ku.localhost.magenta.dk'),(1504,753,2,'testss.ku.localhost.magenta.dk');
/*!40000 ALTER TABLE `subsites_secondary_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `subsites_with_new_path`
--

DROP TABLE IF EXISTS `subsites_with_new_path`;
/*!50001 DROP VIEW IF EXISTS `subsites_with_new_path`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `subsites_with_new_path` (
  `id` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `domain` tinyint NOT NULL,
  `is_https` tinyint NOT NULL,
  `old_path` tinyint NOT NULL,
  `root_docid` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `alt_title` tinyint NOT NULL,
  `front_faculty` tinyint NOT NULL,
  `front_faculty_id` tinyint NOT NULL,
  `backend_faculty` tinyint NOT NULL,
  `backend_faculty_id` tinyint NOT NULL,
  `comments` tinyint NOT NULL,
  `lang` tinyint NOT NULL,
  `local_analytics` tinyint NOT NULL,
  `global_menu` tinyint NOT NULL,
  `other_language_link` tinyint NOT NULL,
  `own_leftmenu` tinyint NOT NULL,
  `responsive` tinyint NOT NULL,
  `dont_inherit_local_analytics` tinyint NOT NULL,
  `brandingunit` tinyint NOT NULL,
  `webteam_id` tinyint NOT NULL,
  `path` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `synonyms`
--

DROP TABLE IF EXISTS `synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synonyms` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `synonyms` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synonyms`
--

LOCK TABLES `synonyms` WRITE;
/*!40000 ALTER TABLE `synonyms` DISABLE KEYS */;
/*!40000 ALTER TABLE `synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `lang` char(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`lang`),
  KEY `name_2` (`name`),
  KEY `lang` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (4,'Builtin test 1','en'),(5,'Builtin test 2','en'),(6,'Builtin test 3','en'),(1,'Fast test 1','da'),(2,'Fast test 2','da'),(3,'Fast test 3','da');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_accessrules`
--

DROP TABLE IF EXISTS `user_accessrules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_accessrules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned NOT NULL,
  `user_id` smallint(5) unsigned NOT NULL,
  `specification_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usr_acc_doc_ref` (`docid`),
  KEY `usr_acc_usr_ref` (`user_id`),
  KEY `usr_acc_spec_ref` (`specification_id`),
  CONSTRAINT `usr_acc_doc_ref` FOREIGN KEY (`docid`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usr_acc_spec_ref` FOREIGN KEY (`specification_id`) REFERENCES `access_specifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usr_acc_usr_ref` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_accessrules`
--

LOCK TABLES `user_accessrules` WRITE;
/*!40000 ALTER TABLE `user_accessrules` DISABLE KEYS */;
INSERT INTO `user_accessrules` VALUES (2,110201,1,1);
/*!40000 ALTER TABLE `user_accessrules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_surveillance_docs`
--

DROP TABLE IF EXISTS `user_surveillance_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_surveillance_docs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `docid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_2` (`user_id`,`docid`),
  KEY `docid` (`docid`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_surveillance_docs`
--

LOCK TABLES `user_surveillance_docs` WRITE;
/*!40000 ALTER TABLE `user_surveillance_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_surveillance_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_surveillance_sites`
--

DROP TABLE IF EXISTS `user_surveillance_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_surveillance_sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `docid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_2` (`user_id`,`docid`),
  KEY `user_id` (`user_id`),
  KEY `docid` (`docid`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_surveillance_sites`
--

LOCK TABLES `user_surveillance_sites` WRITE;
/*!40000 ALTER TABLE `user_surveillance_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_surveillance_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(31) NOT NULL DEFAULT '',
  `passwd` varchar(63) NOT NULL DEFAULT '',
  `name` varchar(127) NOT NULL DEFAULT '',
  `email` varchar(127) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `deactivated` int(12) DEFAULT NULL,
  `can_manage_users` tinyint(1) NOT NULL DEFAULT 0,
  `can_manage_groups` tinyint(1) NOT NULL DEFAULT 0,
  `surveillance` text DEFAULT NULL,
  `faculty` varchar(255) DEFAULT '',
  `faculty_id` int(10) unsigned DEFAULT NULL,
  `webteam_id` int(10) unsigned DEFAULT NULL,
  `created_by` varchar(31) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_admin` int(1) unsigned DEFAULT 0,
  `phoneno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=1329 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$1$PLlfkYGB$xiQKV/rCgQ08YgUtbcYZV0','Admin','jubk@magenta-aps.dk','',1,NULL,2,1,'','',NULL,NULL,NULL,'2015-03-10 15:19:19',1,NULL),(45,'jubk','$1$RY6bfXbc$7SJdr5Bq5DYE44NzUhBLy.','Jørgen Ulrik B. Krag, test','jubk@magenta-aps.dk','Oprettet af Jørgen Ulrik fra Magenta for at teste opdateringsalarmen.\r\n\r\nTlf: 22 18 66 06\r\n',1,NULL,2,1,'','Fællesadministrationen',7,23,NULL,'2015-03-10 15:19:19',1,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_user_insert after insert on users 
for each row
begin 
      call delete_user_surveillance(new.id);
      if new.surveillance is not null and new.surveillance != '' then
          call create_user_surveillance(new.id, new.surveillance);
      end if;	  
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_user_update after update on users 
for each row
begin 
      call delete_user_surveillance(new.id);
      if new.surveillance is not null and new.surveillance != '' then
            call create_user_surveillance(new.id, new.surveillance);
      end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_user_delete after delete on users
for each row
begin
	call delete_user_surveillance(old.id);
	update documents set owner = 1 where owner = old.id;
	update versions set user = 1 where user = old.id;
	
	delete from grp_user where user=old.id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vacancies`
--

DROP TABLE IF EXISTS `vacancies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacancies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobid` int(10) unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `description` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `advertisement_url` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `application_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `faculty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pxs` tinyint(4) DEFAULT 0,
  `pxs_report_key` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacancies`
--

LOCK TABLES `vacancies` WRITE;
/*!40000 ALTER TABLE `vacancies` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacancies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacancies_contacts`
--

DROP TABLE IF EXISTS `vacancies_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacancies_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hrm_id` int(6) unsigned DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(12) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone2` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `hrm_id_UNIQUE` (`hrm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacancies_contacts`
--

LOCK TABLES `vacancies_contacts` WRITE;
/*!40000 ALTER TABLE `vacancies_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacancies_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacancies_contacts_ref`
--

DROP TABLE IF EXISTS `vacancies_contacts_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacancies_contacts_ref` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_hrm_id` int(10) unsigned NOT NULL,
  `vacancy_job_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `ref_UNIQUE` (`contact_hrm_id`,`vacancy_job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacancies_contacts_ref`
--

LOCK TABLES `vacancies_contacts_ref` WRITE;
/*!40000 ALTER TABLE `vacancies_contacts_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacancies_contacts_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `version` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` int(8) unsigned NOT NULL DEFAULT 0,
  `public` tinyint(8) NOT NULL DEFAULT 0,
  `valid` tinyint(8) NOT NULL DEFAULT 0,
  `lang` char(2) NOT NULL DEFAULT 'da',
  `user` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `versions_docid_version` (`docid`,`version`),
  KEY `type` (`type`),
  KEY `versions_public_id` (`public`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47864 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,1,'2010-09-15 14:37:18',2,0,0,'da',1),(2,1,'2010-11-02 10:38:25',2,0,0,'da',1),(3,1,'2012-02-10 09:53:24',30,1,0,'da',1),(47,110196,'2010-09-15 17:51:19',2,0,0,'da',1),(48,110196,'2010-09-15 17:52:17',2,0,0,'da',1),(49,110196,'2011-05-19 14:12:37',2,0,0,'da',1),(50,110196,'2011-05-19 14:12:45',2,1,0,'da',1),(51,110197,'2010-09-15 17:51:50',2,0,0,'da',1),(9750,120935,'2014-03-10 14:09:54',2,1,0,'da',1),(9751,120936,'2014-03-10 14:10:03',6,1,0,'da',1),(9753,120938,'2014-03-10 14:11:37',2,1,0,'da',1),(47544,158705,'2015-10-29 12:53:34',47,0,0,'da',45),(47545,158705,'2015-10-29 15:02:20',47,1,0,'da',45),(47546,158706,'2015-12-10 10:22:56',30,1,0,'da',45),(47547,158707,'2015-12-21 14:29:44',2,1,0,'da',45),(47610,110197,'2016-10-31 12:02:03',2,1,0,'da',45),(47622,159014,'2017-03-13 16:33:45',82,1,0,'da',45),(47623,159015,'2017-03-13 16:34:06',82,1,0,'da',45),(47624,159016,'2017-03-13 16:34:25',15,1,0,'da',1),(47858,115658,'2018-09-10 13:03:16',30,1,0,'da',45),(47859,110201,'2018-09-10 13:04:13',30,1,0,'da',45),(47860,110189,'2018-09-10 13:11:44',6,1,0,'da',45),(47861,159029,'2019-02-25 11:44:01',2,1,0,'da',1),(47862,159030,'2019-02-25 11:46:01',2,1,0,'da',1),(47863,159031,'2019-02-25 12:02:38',2,1,0,'da',1);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_version_insert after insert on versions
for each row
begin
    call update_public_or_latest(new.docid);
    call update_has_public_path_recursive(new.docid);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_version_update after update on versions
for each row
begin
    if(new.public != old.public) then
        if(@disable_public_info_update is null) then
            call update_public_or_latest(new.docid);
            call update_has_public_path_recursive(new.docid);
        end if;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_version_delete after delete on versions 
for each row
begin
      insert into versions_backup (docid, version, type, public, 
                                   valid, lang, user) values 
                                  (old.docid, old.version, old.type, old.public, 
                                   old.valid, old.lang, old.user);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `versions_backup`
--

DROP TABLE IF EXISTS `versions_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions_backup` (
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `version` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` int(8) unsigned NOT NULL DEFAULT 0,
  `public` tinyint(8) NOT NULL DEFAULT 0,
  `valid` tinyint(8) NOT NULL DEFAULT 0,
  `lang` char(2) NOT NULL DEFAULT 'da',
  `user` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`docid`,`version`),
  KEY `type` (`type`),
  KEY `versions_public_idx` (`public`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions_backup`
--

LOCK TABLES `versions_backup` WRITE;
/*!40000 ALTER TABLE `versions_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `versions_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vfields`
--

DROP TABLE IF EXISTS `vfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vfields` (
  `vfields_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `version` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(127) NOT NULL DEFAULT '',
  `text_value` longtext DEFAULT NULL,
  `int_value` int(8) DEFAULT NULL,
  `double_value` double DEFAULT NULL,
  `date_value` datetime DEFAULT NULL,
  PRIMARY KEY (`vfields_id`),
  KEY `vfields_docid_version_name_int_value_idx` (`docid`,`version`,`name`,`int_value`),
  KEY `vfields_docid_version_name_double_value_idx` (`docid`,`version`,`name`,`double_value`),
  KEY `vfields_docid_version_name_date_value_idx` (`docid`,`version`,`name`,`date_value`),
  KEY `vfields_docid_version_name_text_value_idx` (`docid`,`version`,`name`,`text_value`(16)),
  KEY `docid_version_name_idx` (`name`,`docid`,`version`),
  KEY `vfields_name_text_value_idx` (`name`,`text_value`(30))
) ENGINE=InnoDB AUTO_INCREMENT=1645425 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vfields`
--

LOCK TABLES `vfields` WRITE;
/*!40000 ALTER TABLE `vfields` DISABLE KEYS */;
INSERT INTO `vfields` VALUES (36,1,'2010-09-15 14:37:18','TEASER','',NULL,NULL,NULL),(37,1,'2010-09-15 14:37:18','ENABLE_COMMENTS',NULL,0,NULL,NULL),(38,1,'2010-09-15 14:37:18','SHOW_SUBDOCS',NULL,0,NULL,NULL),(39,1,'2010-09-15 14:37:18','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(40,1,'2010-09-15 14:37:18','CONTENT','',NULL,NULL,NULL),(41,1,'2010-09-15 14:37:18','ENHED_URL','',NULL,NULL,NULL),(42,1,'2010-09-15 14:37:18','KONTAKT_ADRESSE','',NULL,NULL,NULL),(43,1,'2010-09-15 14:37:18','KONTAKT_NAVN','',NULL,NULL,NULL),(44,1,'2010-09-15 14:37:18','CONTRIBUTORS','',NULL,NULL,NULL),(45,1,'2010-09-15 14:37:18','ROBOTSMETA','index,follow',NULL,NULL,NULL),(46,1,'2010-09-15 14:37:18','AUTHOR','create_root',NULL,NULL,NULL),(47,1,'2010-09-15 14:37:18','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(48,1,'2010-09-15 14:37:18','TITLE','Forside',NULL,NULL,NULL),(49,1,'2010-09-15 14:37:18','SORTORDER','+seq,+title',NULL,NULL,NULL),(50,1,'2010-09-15 14:37:18','KONTAKT_TLF','',NULL,NULL,NULL),(51,1,'2010-09-15 14:37:18','SHORT_TITLE','Forside',NULL,NULL,NULL),(52,1,'2010-09-15 14:37:18','SOURCE','Obvius',NULL,NULL,NULL),(53,1,'2010-09-15 14:37:18','SUBSCRIBEABLE','none',NULL,NULL,NULL),(54,1,'2010-09-15 14:37:18','FREE_KEYWORDS','',NULL,NULL,NULL),(55,1,'2010-09-15 14:37:18','SHOW_NEWS',NULL,1,NULL,NULL),(56,1,'2010-09-15 14:37:18','DOCDATE',NULL,NULL,NULL,'2010-02-01 00:00:00'),(57,1,'2010-09-15 14:37:18','DOCREF','',NULL,NULL,NULL),(58,1,'2010-09-15 14:37:18','KONTAKT_EMAIL','',NULL,NULL,NULL),(59,1,'2010-09-15 14:37:18','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(60,1,'2010-09-15 14:37:18','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(61,1,'2010-09-15 14:37:18','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(62,1,'2010-09-15 14:37:18','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(63,1,'2010-09-15 14:37:18','SHOW_DATE',NULL,0,NULL,NULL),(64,1,'2010-09-15 14:37:18','SHOW_TEASER',NULL,1,NULL,NULL),(65,1,'2010-09-15 14:37:18','UPDATEALERTSENT',NULL,0,NULL,NULL),(66,1,'2010-09-15 14:37:18','SEQ',NULL,NULL,10,NULL),(67,1,'2010-09-15 14:37:18','UPDATEALERTUSER','admin',NULL,NULL,NULL),(68,1,'2010-09-15 14:37:18','ENHED','',NULL,NULL,NULL),(69,1,'2010-09-15 14:37:18','MIMETYPE',NULL,NULL,NULL,NULL),(70,1,'2010-09-15 14:37:18','FARVEVALG',NULL,NULL,NULL,NULL),(71,1,'2010-09-15 14:37:18','SEC',NULL,0,NULL,NULL),(72,1,'2010-09-15 14:37:18','PUBLISHED',NULL,NULL,NULL,'2010-09-15 14:37:18'),(73,1,'2010-09-15 14:37:18','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(74,1,'2010-09-15 14:37:18','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(412,110196,'2010-09-15 17:51:19','TEASER','',NULL,NULL,NULL),(413,110196,'2010-09-15 17:51:19','ENABLE_COMMENTS',NULL,0,NULL,NULL),(414,110196,'2010-09-15 17:51:19','SHOW_SUBDOCS',NULL,0,NULL,NULL),(415,110196,'2010-09-15 17:51:19','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(416,110196,'2010-09-15 17:51:19','CONTENT','',NULL,NULL,NULL),(417,110196,'2010-09-15 17:51:19','ENHED_URL','',NULL,NULL,NULL),(418,110196,'2010-09-15 17:51:19','KONTAKT_ADRESSE','',NULL,NULL,NULL),(419,110196,'2010-09-15 17:51:19','KONTAKT_NAVN','',NULL,NULL,NULL),(420,110196,'2010-09-15 17:51:19','CONTRIBUTORS','',NULL,NULL,NULL),(421,110196,'2010-09-15 17:51:19','ROBOTSMETA','index,follow',NULL,NULL,NULL),(422,110196,'2010-09-15 17:51:19','AUTHOR','admin',NULL,NULL,NULL),(423,110196,'2010-09-15 17:51:19','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(424,110196,'2010-09-15 17:51:19','TITLE','Fejl fejl fejl!',NULL,NULL,NULL),(425,110196,'2010-09-15 17:51:19','SORTORDER','+seq,+title',NULL,NULL,NULL),(426,110196,'2010-09-15 17:51:19','KONTAKT_TLF','',NULL,NULL,NULL),(427,110196,'2010-09-15 17:51:19','SHORT_TITLE','Fejl fejl fejl!',NULL,NULL,NULL),(428,110196,'2010-09-15 17:51:19','SOURCE','',NULL,NULL,NULL),(429,110196,'2010-09-15 17:51:19','SUBSCRIBEABLE','none',NULL,NULL,NULL),(430,110196,'2010-09-15 17:51:19','FREE_KEYWORDS','',NULL,NULL,NULL),(431,110196,'2010-09-15 17:51:19','SHOW_NEWS',NULL,1,NULL,NULL),(432,110196,'2010-09-15 17:51:19','DOCDATE',NULL,NULL,NULL,'2010-09-15 00:00:00'),(433,110196,'2010-09-15 17:51:19','DOCREF','',NULL,NULL,NULL),(434,110196,'2010-09-15 17:51:19','KONTAKT_EMAIL','',NULL,NULL,NULL),(435,110196,'2010-09-15 17:51:19','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(436,110196,'2010-09-15 17:51:19','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(437,110196,'2010-09-15 17:51:19','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(438,110196,'2010-09-15 17:51:19','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(439,110196,'2010-09-15 17:51:19','SHOW_DATE',NULL,0,NULL,NULL),(440,110196,'2010-09-15 17:51:19','SHOW_TEASER',NULL,1,NULL,NULL),(441,110196,'2010-09-15 17:51:19','UPDATEALERTSENT',NULL,0,NULL,NULL),(442,110196,'2010-09-15 17:51:19','SEQ',NULL,NULL,70,NULL),(443,110196,'2010-09-15 17:51:19','UPDATEALERTUSER','admin',NULL,NULL,NULL),(444,110196,'2010-09-15 17:51:19','ENHED','',NULL,NULL,NULL),(445,110196,'2010-09-15 17:51:19','MIMETYPE',NULL,NULL,NULL,NULL),(446,110196,'2010-09-15 17:51:19','FARVEVALG',NULL,NULL,NULL,NULL),(447,110196,'2010-09-15 17:51:19','SEC',NULL,0,NULL,NULL),(448,110196,'2010-09-15 17:51:19','PUBLISHED',NULL,NULL,NULL,'2010-09-15 17:51:19'),(449,110196,'2010-09-15 17:51:19','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(450,110196,'2010-09-15 17:51:19','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(451,110197,'2010-09-15 17:51:50','TEASER','',NULL,NULL,NULL),(452,110197,'2010-09-15 17:51:50','ENABLE_COMMENTS',NULL,0,NULL,NULL),(453,110197,'2010-09-15 17:51:50','SHOW_SUBDOCS',NULL,0,NULL,NULL),(454,110197,'2010-09-15 17:51:50','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(455,110197,'2010-09-15 17:51:50','CONTENT','not found<br />\r\n',NULL,NULL,NULL),(456,110197,'2010-09-15 17:51:50','ENHED_URL','',NULL,NULL,NULL),(457,110197,'2010-09-15 17:51:50','KONTAKT_ADRESSE','',NULL,NULL,NULL),(458,110197,'2010-09-15 17:51:50','KONTAKT_NAVN','',NULL,NULL,NULL),(459,110197,'2010-09-15 17:51:50','CONTRIBUTORS','',NULL,NULL,NULL),(460,110197,'2010-09-15 17:51:50','ROBOTSMETA','index,follow',NULL,NULL,NULL),(461,110197,'2010-09-15 17:51:50','AUTHOR','admin',NULL,NULL,NULL),(462,110197,'2010-09-15 17:51:50','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(463,110197,'2010-09-15 17:51:50','TITLE','404 Fejl - Not found',NULL,NULL,NULL),(464,110197,'2010-09-15 17:51:50','SORTORDER','+seq,+title',NULL,NULL,NULL),(465,110197,'2010-09-15 17:51:50','KONTAKT_TLF','',NULL,NULL,NULL),(466,110197,'2010-09-15 17:51:50','SHORT_TITLE','404 Fejl - Not Found',NULL,NULL,NULL),(467,110197,'2010-09-15 17:51:50','SOURCE','',NULL,NULL,NULL),(468,110197,'2010-09-15 17:51:50','SUBSCRIBEABLE','none',NULL,NULL,NULL),(469,110197,'2010-09-15 17:51:50','FREE_KEYWORDS','',NULL,NULL,NULL),(470,110197,'2010-09-15 17:51:50','SHOW_NEWS',NULL,1,NULL,NULL),(471,110197,'2010-09-15 17:51:50','DOCDATE',NULL,NULL,NULL,'2010-09-15 00:00:00'),(472,110197,'2010-09-15 17:51:50','DOCREF','',NULL,NULL,NULL),(473,110197,'2010-09-15 17:51:50','KONTAKT_EMAIL','',NULL,NULL,NULL),(474,110197,'2010-09-15 17:51:50','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(475,110197,'2010-09-15 17:51:50','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(476,110197,'2010-09-15 17:51:50','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(477,110197,'2010-09-15 17:51:50','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(478,110197,'2010-09-15 17:51:50','SHOW_DATE',NULL,0,NULL,NULL),(479,110197,'2010-09-15 17:51:50','SHOW_TEASER',NULL,1,NULL,NULL),(480,110197,'2010-09-15 17:51:50','UPDATEALERTSENT',NULL,0,NULL,NULL),(481,110197,'2010-09-15 17:51:50','SEQ',NULL,NULL,80,NULL),(482,110197,'2010-09-15 17:51:50','UPDATEALERTUSER','admin',NULL,NULL,NULL),(483,110197,'2010-09-15 17:51:50','ENHED','',NULL,NULL,NULL),(484,110197,'2010-09-15 17:51:50','MIMETYPE',NULL,NULL,NULL,NULL),(485,110197,'2010-09-15 17:51:50','FARVEVALG',NULL,NULL,NULL,NULL),(486,110197,'2010-09-15 17:51:50','SEC',NULL,0,NULL,NULL),(487,110197,'2010-09-15 17:51:50','PUBLISHED',NULL,NULL,NULL,'2010-09-15 17:51:50'),(488,110197,'2010-09-15 17:51:50','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(489,110197,'2010-09-15 17:51:50','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(490,110196,'2010-09-15 17:52:17','TEASER','',NULL,NULL,NULL),(491,110196,'2010-09-15 17:52:17','ENABLE_COMMENTS',NULL,0,NULL,NULL),(492,110196,'2010-09-15 17:52:17','SHOW_SUBDOCS',NULL,0,NULL,NULL),(493,110196,'2010-09-15 17:52:17','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(494,110196,'2010-09-15 17:52:17','CONTENT','',NULL,NULL,NULL),(495,110196,'2010-09-15 17:52:17','ENHED_URL','',NULL,NULL,NULL),(496,110196,'2010-09-15 17:52:17','KONTAKT_ADRESSE','',NULL,NULL,NULL),(497,110196,'2010-09-15 17:52:17','KONTAKT_NAVN','',NULL,NULL,NULL),(498,110196,'2010-09-15 17:52:17','CONTRIBUTORS','',NULL,NULL,NULL),(499,110196,'2010-09-15 17:52:17','ROBOTSMETA','index,follow',NULL,NULL,NULL),(500,110196,'2010-09-15 17:52:17','AUTHOR','admin',NULL,NULL,NULL),(501,110196,'2010-09-15 17:52:17','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(502,110196,'2010-09-15 17:52:17','TITLE','500 Fejl - Internal server error',NULL,NULL,NULL),(503,110196,'2010-09-15 17:52:17','SORTORDER','+seq,+title',NULL,NULL,NULL),(504,110196,'2010-09-15 17:52:17','KONTAKT_TLF','',NULL,NULL,NULL),(505,110196,'2010-09-15 17:52:17','SHORT_TITLE','500 Fejl - Internal server error',NULL,NULL,NULL),(506,110196,'2010-09-15 17:52:17','SOURCE','',NULL,NULL,NULL),(507,110196,'2010-09-15 17:52:17','SUBSCRIBEABLE','none',NULL,NULL,NULL),(508,110196,'2010-09-15 17:52:17','FREE_KEYWORDS','',NULL,NULL,NULL),(509,110196,'2010-09-15 17:52:17','SHOW_NEWS',NULL,1,NULL,NULL),(510,110196,'2010-09-15 17:52:17','DOCDATE',NULL,NULL,NULL,'2010-09-15 00:00:00'),(511,110196,'2010-09-15 17:52:17','DOCREF','',NULL,NULL,NULL),(512,110196,'2010-09-15 17:52:17','KONTAKT_EMAIL','',NULL,NULL,NULL),(513,110196,'2010-09-15 17:52:17','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(514,110196,'2010-09-15 17:52:17','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(515,110196,'2010-09-15 17:52:17','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(516,110196,'2010-09-15 17:52:17','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(517,110196,'2010-09-15 17:52:17','SHOW_DATE',NULL,0,NULL,NULL),(518,110196,'2010-09-15 17:52:17','SHOW_TEASER',NULL,1,NULL,NULL),(519,110196,'2010-09-15 17:52:17','UPDATEALERTSENT',NULL,0,NULL,NULL),(520,110196,'2010-09-15 17:52:17','SEQ',NULL,NULL,70,NULL),(521,110196,'2010-09-15 17:52:17','UPDATEALERTUSER','admin',NULL,NULL,NULL),(522,110196,'2010-09-15 17:52:17','ENHED','',NULL,NULL,NULL),(523,110196,'2010-09-15 17:52:17','MIMETYPE',NULL,NULL,NULL,NULL),(524,110196,'2010-09-15 17:52:17','FARVEVALG',NULL,NULL,NULL,NULL),(525,110196,'2010-09-15 17:52:17','SEC',NULL,0,NULL,NULL),(526,110196,'2010-09-15 17:52:17','PUBLISHED',NULL,NULL,NULL,'2010-09-15 17:52:17'),(527,110196,'2010-09-15 17:52:17','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(528,110196,'2010-09-15 17:52:17','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1863,1,'2010-11-02 10:38:25','TEASER','Test Ã¦Ã¸Ã¥, Ã†Ã˜Ã…\r\n',NULL,NULL,NULL),(1864,1,'2010-11-02 10:38:25','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1865,1,'2010-11-02 10:38:25','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1866,1,'2010-11-02 10:38:25','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1867,1,'2010-11-02 10:38:25','CONTENT','',NULL,NULL,NULL),(1868,1,'2010-11-02 10:38:25','ENHED_URL','',NULL,NULL,NULL),(1869,1,'2010-11-02 10:38:25','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1870,1,'2010-11-02 10:38:25','KONTAKT_NAVN','',NULL,NULL,NULL),(1871,1,'2010-11-02 10:38:25','CONTRIBUTORS','',NULL,NULL,NULL),(1872,1,'2010-11-02 10:38:25','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1873,1,'2010-11-02 10:38:25','AUTHOR','create_root',NULL,NULL,NULL),(1874,1,'2010-11-02 10:38:25','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1875,1,'2010-11-02 10:38:25','TITLE','Forside',NULL,NULL,NULL),(1876,1,'2010-11-02 10:38:25','SORTORDER','+seq,+title',NULL,NULL,NULL),(1877,1,'2010-11-02 10:38:25','KONTAKT_TLF','',NULL,NULL,NULL),(1878,1,'2010-11-02 10:38:25','SHORT_TITLE','Forside',NULL,NULL,NULL),(1879,1,'2010-11-02 10:38:25','SOURCE','Obvius',NULL,NULL,NULL),(1880,1,'2010-11-02 10:38:25','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1881,1,'2010-11-02 10:38:25','FREE_KEYWORDS','',NULL,NULL,NULL),(1882,1,'2010-11-02 10:38:25','SHOW_NEWS',NULL,1,NULL,NULL),(1883,1,'2010-11-02 10:38:25','DOCDATE',NULL,NULL,NULL,'2010-02-01 00:00:00'),(1884,1,'2010-11-02 10:38:25','DOCREF','',NULL,NULL,NULL),(1885,1,'2010-11-02 10:38:25','KONTAKT_EMAIL','',NULL,NULL,NULL),(1886,1,'2010-11-02 10:38:25','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1887,1,'2010-11-02 10:38:25','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1888,1,'2010-11-02 10:38:25','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1889,1,'2010-11-02 10:38:25','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1890,1,'2010-11-02 10:38:25','SHOW_DATE',NULL,0,NULL,NULL),(1891,1,'2010-11-02 10:38:25','SHOW_TEASER',NULL,1,NULL,NULL),(1892,1,'2010-11-02 10:38:25','UPDATEALERTSENT',NULL,0,NULL,NULL),(1893,1,'2010-11-02 10:38:25','SEQ',NULL,NULL,10,NULL),(1894,1,'2010-11-02 10:38:25','UPDATEALERTUSER','admin',NULL,NULL,NULL),(1895,1,'2010-11-02 10:38:25','ENHED','',NULL,NULL,NULL),(1896,1,'2010-11-02 10:38:25','MIMETYPE',NULL,NULL,NULL,NULL),(1897,1,'2010-11-02 10:38:25','FARVEVALG',NULL,NULL,NULL,NULL),(1898,1,'2010-11-02 10:38:25','SEC',NULL,0,NULL,NULL),(1899,1,'2010-11-02 10:38:25','PUBLISHED',NULL,NULL,NULL,'2010-11-02 10:38:25'),(1900,1,'2010-11-02 10:38:25','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1901,1,'2010-11-02 10:38:25','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(3819,110196,'2011-05-19 14:12:37','TEASER','<p>500 error</p>',NULL,NULL,NULL),(3820,110196,'2011-05-19 14:12:37','ENABLE_COMMENTS',NULL,0,NULL,NULL),(3821,110196,'2011-05-19 14:12:37','SHOW_SUBDOCS',NULL,0,NULL,NULL),(3822,110196,'2011-05-19 14:12:37','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(3823,110196,'2011-05-19 14:12:37','CONTENT','',NULL,NULL,NULL),(3824,110196,'2011-05-19 14:12:37','ENHED_URL','',NULL,NULL,NULL),(3825,110196,'2011-05-19 14:12:37','KONTAKT_ADRESSE','',NULL,NULL,NULL),(3826,110196,'2011-05-19 14:12:37','KONTAKT_NAVN','',NULL,NULL,NULL),(3827,110196,'2011-05-19 14:12:37','CONTRIBUTORS','',NULL,NULL,NULL),(3828,110196,'2011-05-19 14:12:37','ROBOTSMETA','index,follow',NULL,NULL,NULL),(3829,110196,'2011-05-19 14:12:37','AUTHOR','admin',NULL,NULL,NULL),(3830,110196,'2011-05-19 14:12:37','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(3831,110196,'2011-05-19 14:12:37','TITLE','500 Fejl - Internal server error',NULL,NULL,NULL),(3832,110196,'2011-05-19 14:12:37','SORTORDER','+seq,+title',NULL,NULL,NULL),(3833,110196,'2011-05-19 14:12:37','KONTAKT_TLF','',NULL,NULL,NULL),(3834,110196,'2011-05-19 14:12:37','SHORT_TITLE','500 Fejl - Internal server error',NULL,NULL,NULL),(3835,110196,'2011-05-19 14:12:37','SOURCE','',NULL,NULL,NULL),(3836,110196,'2011-05-19 14:12:37','SUBSCRIBEABLE','none',NULL,NULL,NULL),(3837,110196,'2011-05-19 14:12:37','FREE_KEYWORDS','',NULL,NULL,NULL),(3838,110196,'2011-05-19 14:12:37','SHOW_NEWS',NULL,1,NULL,NULL),(3839,110196,'2011-05-19 14:12:37','DOCDATE',NULL,NULL,NULL,'2010-09-15 00:00:00'),(3840,110196,'2011-05-19 14:12:37','DOCREF','',NULL,NULL,NULL),(3841,110196,'2011-05-19 14:12:37','KONTAKT_EMAIL','',NULL,NULL,NULL),(3842,110196,'2011-05-19 14:12:37','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(3843,110196,'2011-05-19 14:12:37','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(3844,110196,'2011-05-19 14:12:37','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(3845,110196,'2011-05-19 14:12:37','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(3846,110196,'2011-05-19 14:12:37','SHOW_DATE',NULL,0,NULL,NULL),(3847,110196,'2011-05-19 14:12:37','SHOW_TEASER',NULL,1,NULL,NULL),(3848,110196,'2011-05-19 14:12:37','UPDATEALERTSENT',NULL,0,NULL,NULL),(3849,110196,'2011-05-19 14:12:37','SEQ',NULL,NULL,70,NULL),(3850,110196,'2011-05-19 14:12:37','UPDATEALERTUSER','admin',NULL,NULL,NULL),(3851,110196,'2011-05-19 14:12:37','ENHED','',NULL,NULL,NULL),(3852,110196,'2011-05-19 14:12:37','MIMETYPE',NULL,NULL,NULL,NULL),(3853,110196,'2011-05-19 14:12:37','FARVEVALG',NULL,NULL,NULL,NULL),(3854,110196,'2011-05-19 14:12:37','SEC',NULL,0,NULL,NULL),(3855,110196,'2011-05-19 14:12:37','PUBLISHED',NULL,NULL,NULL,'2011-05-19 14:12:37'),(3856,110196,'2011-05-19 14:12:37','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(3857,110196,'2011-05-19 14:12:37','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(3858,110196,'2011-05-19 14:12:45','TEASER','<p>500 error</p>\r\n',NULL,NULL,NULL),(3859,110196,'2011-05-19 14:12:45','ENABLE_COMMENTS',NULL,0,NULL,NULL),(3860,110196,'2011-05-19 14:12:45','SHOW_SUBDOCS',NULL,0,NULL,NULL),(3861,110196,'2011-05-19 14:12:45','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(3862,110196,'2011-05-19 14:12:45','CONTENT','<p>500 error</p>',NULL,NULL,NULL),(3863,110196,'2011-05-19 14:12:45','ENHED_URL','',NULL,NULL,NULL),(3864,110196,'2011-05-19 14:12:45','KONTAKT_ADRESSE','',NULL,NULL,NULL),(3865,110196,'2011-05-19 14:12:45','KONTAKT_NAVN','',NULL,NULL,NULL),(3866,110196,'2011-05-19 14:12:45','CONTRIBUTORS','',NULL,NULL,NULL),(3867,110196,'2011-05-19 14:12:45','ROBOTSMETA','index,follow',NULL,NULL,NULL),(3868,110196,'2011-05-19 14:12:45','AUTHOR','admin',NULL,NULL,NULL),(3869,110196,'2011-05-19 14:12:45','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(3870,110196,'2011-05-19 14:12:45','TITLE','500 Fejl - Internal server error',NULL,NULL,NULL),(3871,110196,'2011-05-19 14:12:45','SORTORDER','+seq,+title',NULL,NULL,NULL),(3872,110196,'2011-05-19 14:12:45','KONTAKT_TLF','',NULL,NULL,NULL),(3873,110196,'2011-05-19 14:12:45','SHORT_TITLE','500 Fejl - Internal server error',NULL,NULL,NULL),(3874,110196,'2011-05-19 14:12:45','SOURCE','',NULL,NULL,NULL),(3875,110196,'2011-05-19 14:12:45','SUBSCRIBEABLE','none',NULL,NULL,NULL),(3876,110196,'2011-05-19 14:12:45','FREE_KEYWORDS','',NULL,NULL,NULL),(3877,110196,'2011-05-19 14:12:45','SHOW_NEWS',NULL,1,NULL,NULL),(3878,110196,'2011-05-19 14:12:45','DOCDATE',NULL,NULL,NULL,'2010-09-15 00:00:00'),(3879,110196,'2011-05-19 14:12:45','DOCREF','',NULL,NULL,NULL),(3880,110196,'2011-05-19 14:12:45','KONTAKT_EMAIL','',NULL,NULL,NULL),(3881,110196,'2011-05-19 14:12:45','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(3882,110196,'2011-05-19 14:12:45','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(3883,110196,'2011-05-19 14:12:45','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(3884,110196,'2011-05-19 14:12:45','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(3885,110196,'2011-05-19 14:12:45','SHOW_DATE',NULL,0,NULL,NULL),(3886,110196,'2011-05-19 14:12:45','SHOW_TEASER',NULL,1,NULL,NULL),(3887,110196,'2011-05-19 14:12:45','UPDATEALERTSENT',NULL,0,NULL,NULL),(3888,110196,'2011-05-19 14:12:45','SEQ',NULL,NULL,70,NULL),(3889,110196,'2011-05-19 14:12:45','UPDATEALERTUSER','admin',NULL,NULL,NULL),(3890,110196,'2011-05-19 14:12:45','ENHED','',NULL,NULL,NULL),(3891,110196,'2011-05-19 14:12:45','MIMETYPE',NULL,NULL,NULL,NULL),(3892,110196,'2011-05-19 14:12:45','FARVEVALG',NULL,NULL,NULL,NULL),(3893,110196,'2011-05-19 14:12:45','SEC',NULL,0,NULL,NULL),(3894,110196,'2011-05-19 14:12:45','PUBLISHED',NULL,NULL,NULL,'2011-05-19 14:12:45'),(3895,110196,'2011-05-19 14:12:45','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(3896,110196,'2011-05-19 14:12:45','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(7797,1,'2012-02-10 09:53:24','TEASER','<p>Test &aelig;&oslash;&aring;, &AElig;&Oslash;&Aring;</p>',NULL,NULL,NULL),(7798,1,'2012-02-10 09:53:24','ENABLE_COMMENTS',NULL,0,NULL,NULL),(7799,1,'2012-02-10 09:53:24','SHOW_SUBDOCS',NULL,0,NULL,NULL),(7800,1,'2012-02-10 09:53:24','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(7801,1,'2012-02-10 09:53:24','HTML_CONTENT','',NULL,NULL,NULL),(7802,1,'2012-02-10 09:53:24','CONTENT','',NULL,NULL,NULL),(7803,1,'2012-02-10 09:53:24','BANNER1',NULL,1,NULL,NULL),(7804,1,'2012-02-10 09:53:24','ENHED_URL','',NULL,NULL,NULL),(7805,1,'2012-02-10 09:53:24','KONTAKT_ADRESSE','',NULL,NULL,NULL),(7806,1,'2012-02-10 09:53:24','KONTAKT_NAVN','',NULL,NULL,NULL),(7807,1,'2012-02-10 09:53:24','ROBOTSMETA','index,follow',NULL,NULL,NULL),(7808,1,'2012-02-10 09:53:24','CONTRIBUTORS','',NULL,NULL,NULL),(7809,1,'2012-02-10 09:53:24','AUTHOR','create_root',NULL,NULL,NULL),(7810,1,'2012-02-10 09:53:24','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(7811,1,'2012-02-10 09:53:24','TITLE','Forside',NULL,NULL,NULL),(7812,1,'2012-02-10 09:53:24','SORTORDER','+seq,+title',NULL,NULL,NULL),(7813,1,'2012-02-10 09:53:24','KONTAKT_TLF','',NULL,NULL,NULL),(7814,1,'2012-02-10 09:53:24','SHORT_TITLE','Forside',NULL,NULL,NULL),(7815,1,'2012-02-10 09:53:24','SOURCE','Obvius',NULL,NULL,NULL),(7816,1,'2012-02-10 09:53:24','BANNER2',NULL,1,NULL,NULL),(7817,1,'2012-02-10 09:53:24','SUBSCRIBEABLE','none',NULL,NULL,NULL),(7818,1,'2012-02-10 09:53:24','FREE_KEYWORDS','',NULL,NULL,NULL),(7819,1,'2012-02-10 09:53:24','SHOW_NEWS',NULL,1,NULL,NULL),(7820,1,'2012-02-10 09:53:24','DOCDATE',NULL,NULL,NULL,'2010-02-01 00:00:00'),(7821,1,'2012-02-10 09:53:24','DOCREF','',NULL,NULL,NULL),(7822,1,'2012-02-10 09:53:24','KONTAKT_EMAIL','',NULL,NULL,NULL),(7823,1,'2012-02-10 09:53:24','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(7824,1,'2012-02-10 09:53:24','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(7825,1,'2012-02-10 09:53:24','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(7826,1,'2012-02-10 09:53:24','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(7827,1,'2012-02-10 09:53:24','BANNER3',NULL,1,NULL,NULL),(7828,1,'2012-02-10 09:53:24','SHOW_DATE',NULL,0,NULL,NULL),(7829,1,'2012-02-10 09:53:24','SHOW_TEASER',NULL,1,NULL,NULL),(7830,1,'2012-02-10 09:53:24','UPDATEALERTSENT',NULL,0,NULL,NULL),(7831,1,'2012-02-10 09:53:24','SEQ',NULL,NULL,10,NULL),(7832,1,'2012-02-10 09:53:24','UPDATEALERTUSER','admin',NULL,NULL,NULL),(7833,1,'2012-02-10 09:53:24','ENHED','',NULL,NULL,NULL),(7834,1,'2012-02-10 09:53:24','EAN',NULL,NULL,NULL,NULL),(7835,1,'2012-02-10 09:53:24','MIMETYPE',NULL,NULL,NULL,NULL),(7836,1,'2012-02-10 09:53:24','FARVEVALG',NULL,NULL,NULL,NULL),(34032,1,'2012-02-10 09:53:24','SEC',NULL,0,NULL,NULL),(34033,1,'2012-02-10 09:53:24','PUBLISHED',NULL,NULL,NULL,'2013-01-25 16:09:00'),(34034,1,'2012-02-10 09:53:24','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(34035,1,'2012-02-10 09:53:24','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(308459,120935,'2014-03-10 14:09:54','TEASER','',NULL,NULL,NULL),(308460,120935,'2014-03-10 14:09:54','ENABLE_COMMENTS',NULL,0,NULL,NULL),(308461,120935,'2014-03-10 14:09:54','SHOW_SUBDOCS',NULL,0,NULL,NULL),(308462,120935,'2014-03-10 14:09:54','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(308463,120935,'2014-03-10 14:09:54','CONTENT','',NULL,NULL,NULL),(308464,120935,'2014-03-10 14:09:54','ENHED_URL','',NULL,NULL,NULL),(308465,120935,'2014-03-10 14:09:54','KONTAKT_ADRESSE','',NULL,NULL,NULL),(308466,120935,'2014-03-10 14:09:54','KONTAKT_NAVN','',NULL,NULL,NULL),(308467,120935,'2014-03-10 14:09:54','CONTRIBUTORS','',NULL,NULL,NULL),(308468,120935,'2014-03-10 14:09:54','ROBOTSMETA','index,follow',NULL,NULL,NULL),(308469,120935,'2014-03-10 14:09:54','AUTHOR','admin',NULL,NULL,NULL),(308470,120935,'2014-03-10 14:09:54','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(308471,120935,'2014-03-10 14:09:54','TITLE','Previews',NULL,NULL,NULL),(308472,120935,'2014-03-10 14:09:54','SORTORDER','+seq,+title',NULL,NULL,NULL),(308473,120935,'2014-03-10 14:09:54','KONTAKT_TLF','',NULL,NULL,NULL),(308474,120935,'2014-03-10 14:09:54','SHORT_TITLE','Previews',NULL,NULL,NULL),(308475,120935,'2014-03-10 14:09:54','SOURCE','',NULL,NULL,NULL),(308476,120935,'2014-03-10 14:09:54','SUBSCRIBEABLE','none',NULL,NULL,NULL),(308477,120935,'2014-03-10 14:09:54','FREE_KEYWORDS','',NULL,NULL,NULL),(308478,120935,'2014-03-10 14:09:54','SHOW_NEWS',NULL,1,NULL,NULL),(308479,120935,'2014-03-10 14:09:54','DOCDATE',NULL,NULL,NULL,'2014-03-10 00:00:00'),(308480,120935,'2014-03-10 14:09:54','DOCREF','',NULL,NULL,NULL),(308481,120935,'2014-03-10 14:09:54','KONTAKT_EMAIL','',NULL,NULL,NULL),(308482,120935,'2014-03-10 14:09:54','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(308483,120935,'2014-03-10 14:09:54','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(308484,120935,'2014-03-10 14:09:54','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(308485,120935,'2014-03-10 14:09:54','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(308486,120935,'2014-03-10 14:09:54','SHOW_DATE',NULL,0,NULL,NULL),(308487,120935,'2014-03-10 14:09:54','SHOW_TEASER',NULL,1,NULL,NULL),(308488,120935,'2014-03-10 14:09:54','UPDATEALERTSENT',NULL,0,NULL,NULL),(308489,120935,'2014-03-10 14:09:54','SEQ',NULL,NULL,30,NULL),(308490,120935,'2014-03-10 14:09:54','UPDATEALERTUSER','admin',NULL,NULL,NULL),(308491,120935,'2014-03-10 14:09:54','ENHED','',NULL,NULL,NULL),(308492,120935,'2014-03-10 14:09:54','MIMETYPE',NULL,NULL,NULL,NULL),(308493,120935,'2014-03-10 14:09:54','FARVEVALG',NULL,NULL,NULL,NULL),(308494,120936,'2014-03-10 14:10:03','TEASER','',NULL,NULL,NULL),(308495,120936,'2014-03-10 14:10:03','ENABLE_COMMENTS',NULL,0,NULL,NULL),(308496,120936,'2014-03-10 14:10:03','SHOW_SUBDOCS',NULL,0,NULL,NULL),(308497,120936,'2014-03-10 14:10:03','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(308498,120936,'2014-03-10 14:10:03','HTML_CONTENT','<html>\r\n   <head></head>\r\n   <body>\r\n      <h1>En overskrift og hat</h1>\r\n   </body>\r\n</html>\r\n',NULL,NULL,NULL),(308499,120936,'2014-03-10 14:10:03','ENHED_URL','',NULL,NULL,NULL),(308500,120936,'2014-03-10 14:10:03','KONTAKT_ADRESSE','',NULL,NULL,NULL),(308501,120936,'2014-03-10 14:10:03','KONTAKT_NAVN','',NULL,NULL,NULL),(308502,120936,'2014-03-10 14:10:03','CONTRIBUTORS','',NULL,NULL,NULL),(308503,120936,'2014-03-10 14:10:03','ROBOTSMETA','index,follow',NULL,NULL,NULL),(308504,120936,'2014-03-10 14:10:03','AUTHOR','admin',NULL,NULL,NULL),(308505,120936,'2014-03-10 14:10:03','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(308506,120936,'2014-03-10 14:10:03','TITLE','Mit lille html document',NULL,NULL,NULL),(308507,120936,'2014-03-10 14:10:03','SORTORDER','+seq,+title',NULL,NULL,NULL),(308508,120936,'2014-03-10 14:10:03','KONTAKT_TLF','',NULL,NULL,NULL),(308509,120936,'2014-03-10 14:10:03','SHORT_TITLE','',NULL,NULL,NULL),(308510,120936,'2014-03-10 14:10:03','SOURCE','',NULL,NULL,NULL),(308511,120936,'2014-03-10 14:10:03','SUBSCRIBEABLE','none',NULL,NULL,NULL),(308512,120936,'2014-03-10 14:10:03','FREE_KEYWORDS','',NULL,NULL,NULL),(308513,120936,'2014-03-10 14:10:03','SHOW_NEWS',NULL,1,NULL,NULL),(308514,120936,'2014-03-10 14:10:03','DOCDATE',NULL,NULL,NULL,'2012-06-21 00:00:00'),(308515,120936,'2014-03-10 14:10:03','DOCREF','',NULL,NULL,NULL),(308516,120936,'2014-03-10 14:10:03','KONTAKT_EMAIL','',NULL,NULL,NULL),(308517,120936,'2014-03-10 14:10:03','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(308518,120936,'2014-03-10 14:10:03','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(308519,120936,'2014-03-10 14:10:03','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(308520,120936,'2014-03-10 14:10:03','SHOW_DATE',NULL,0,NULL,NULL),(308521,120936,'2014-03-10 14:10:03','SHOW_TEASER',NULL,1,NULL,NULL),(308522,120936,'2014-03-10 14:10:03','SEQ',NULL,NULL,230,NULL),(308523,120936,'2014-03-10 14:10:03','ENHED','',NULL,NULL,NULL),(308524,120936,'2014-03-10 14:10:03','MIMETYPE',NULL,NULL,NULL,NULL),(308525,120936,'2014-03-10 14:10:03','FARVEVALG',NULL,NULL,NULL,NULL),(308526,120935,'2014-03-10 14:09:54','SEC',NULL,110189,NULL,NULL),(308527,120935,'2014-03-10 14:09:54','PUBLISHED',NULL,NULL,NULL,'2014-03-10 14:10:19'),(308528,120935,'2014-03-10 14:09:54','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(308529,120935,'2014-03-10 14:09:54','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(308565,120938,'2014-03-10 14:11:37','TEASER','',NULL,NULL,NULL),(308566,120938,'2014-03-10 14:11:37','ENABLE_COMMENTS',NULL,0,NULL,NULL),(308567,120938,'2014-03-10 14:11:37','SHOW_SUBDOCS',NULL,0,NULL,NULL),(308568,120938,'2014-03-10 14:11:37','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(308569,120938,'2014-03-10 14:11:37','CONTENT','<p>Virker preview?</p>',NULL,NULL,NULL),(308570,120938,'2014-03-10 14:11:37','ENHED_URL','',NULL,NULL,NULL),(308571,120938,'2014-03-10 14:11:37','KONTAKT_ADRESSE','',NULL,NULL,NULL),(308572,120938,'2014-03-10 14:11:37','KONTAKT_NAVN','',NULL,NULL,NULL),(308573,120938,'2014-03-10 14:11:37','CONTRIBUTORS','',NULL,NULL,NULL),(308574,120938,'2014-03-10 14:11:37','ROBOTSMETA','index,follow',NULL,NULL,NULL),(308575,120938,'2014-03-10 14:11:37','AUTHOR','admin',NULL,NULL,NULL),(308576,120938,'2014-03-10 14:11:37','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(308577,120938,'2014-03-10 14:11:37','TITLE','Virker preview?',NULL,NULL,NULL),(308578,120938,'2014-03-10 14:11:37','SORTORDER','+seq,+title',NULL,NULL,NULL),(308579,120938,'2014-03-10 14:11:37','KONTAKT_TLF','',NULL,NULL,NULL),(308580,120938,'2014-03-10 14:11:37','SHORT_TITLE','Virker preview?',NULL,NULL,NULL),(308581,120938,'2014-03-10 14:11:37','SOURCE','',NULL,NULL,NULL),(308582,120938,'2014-03-10 14:11:37','SUBSCRIBEABLE','none',NULL,NULL,NULL),(308583,120938,'2014-03-10 14:11:37','FREE_KEYWORDS','',NULL,NULL,NULL),(308584,120938,'2014-03-10 14:11:37','SHOW_NEWS',NULL,1,NULL,NULL),(308585,120938,'2014-03-10 14:11:37','DOCDATE',NULL,NULL,NULL,'2014-03-10 00:00:00'),(308586,120938,'2014-03-10 14:11:37','DOCREF','',NULL,NULL,NULL),(308587,120938,'2014-03-10 14:11:37','KONTAKT_EMAIL','',NULL,NULL,NULL),(308588,120938,'2014-03-10 14:11:37','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(308589,120938,'2014-03-10 14:11:37','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(308590,120938,'2014-03-10 14:11:37','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(308591,120938,'2014-03-10 14:11:37','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(308592,120938,'2014-03-10 14:11:37','SHOW_DATE',NULL,0,NULL,NULL),(308593,120938,'2014-03-10 14:11:37','SHOW_TEASER',NULL,1,NULL,NULL),(308594,120938,'2014-03-10 14:11:37','UPDATEALERTSENT',NULL,0,NULL,NULL),(308595,120938,'2014-03-10 14:11:37','SEQ',NULL,NULL,10,NULL),(308596,120938,'2014-03-10 14:11:37','UPDATEALERTUSER','admin',NULL,NULL,NULL),(308597,120938,'2014-03-10 14:11:37','ENHED','',NULL,NULL,NULL),(308598,120938,'2014-03-10 14:11:37','MIMETYPE',NULL,NULL,NULL,NULL),(308599,120938,'2014-03-10 14:11:37','FARVEVALG',NULL,NULL,NULL,NULL),(1559719,158705,'2015-10-29 12:53:34','TEASER','',NULL,NULL,NULL),(1559720,158705,'2015-10-29 12:53:34','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1559721,158705,'2015-10-29 12:53:34','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1559722,158705,'2015-10-29 12:53:34','AJAX_FIELDS','',NULL,NULL,NULL),(1559723,158705,'2015-10-29 12:53:34','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1559724,158705,'2015-10-29 12:53:34','ENHED_URL','',NULL,NULL,NULL),(1559725,158705,'2015-10-29 12:53:34','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1559726,158705,'2015-10-29 12:53:34','KONTAKT_NAVN','',NULL,NULL,NULL),(1559727,158705,'2015-10-29 12:53:34','CONTRIBUTORS','',NULL,NULL,NULL),(1559728,158705,'2015-10-29 12:53:34','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1559729,158705,'2015-10-29 12:53:34','FORMTEXT','',NULL,NULL,NULL),(1559730,158705,'2015-10-29 12:53:34','AUTHOR','jubk',NULL,NULL,NULL),(1559731,158705,'2015-10-29 12:53:34','TITLE','Inforedigering',NULL,NULL,NULL),(1559732,158705,'2015-10-29 12:53:34','SORTORDER','+seq,+title',NULL,NULL,NULL),(1559733,158705,'2015-10-29 12:53:34','KONTAKT_TLF','',NULL,NULL,NULL),(1559734,158705,'2015-10-29 12:53:34','SHORT_TITLE','Inforedigering',NULL,NULL,NULL),(1559735,158705,'2015-10-29 12:53:34','SOURCE','',NULL,NULL,NULL),(1559736,158705,'2015-10-29 12:53:34','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1559737,158705,'2015-10-29 12:53:34','TILLAD_EXCEL',NULL,1,NULL,NULL),(1559738,158705,'2015-10-29 12:53:34','FREE_KEYWORDS','',NULL,NULL,NULL),(1559739,158705,'2015-10-29 12:53:34','SHOW_NEWS',NULL,1,NULL,NULL),(1559740,158705,'2015-10-29 12:53:34','DOCDATE',NULL,NULL,NULL,'2015-10-29 00:00:00'),(1559741,158705,'2015-10-29 12:53:34','FORMDATA','<fields><field><name>Navn</name>\r\n<title>Navn</title>\r\n<type>name</type>\r\n<mandatory>1</mandatory>\r\n<unique>0</unique>\r\n<imagepath></imagepath>\r\n<description></description>\r\n<validaterules></validaterules>\r\n<options></options>\r\n</field><field><name>E_mail</name>\r\n<title>E-mail</title>\r\n<type>email</type>\r\n<mandatory>1</mandatory>\r\n<unique>0</unique>\r\n<imagepath></imagepath>\r\n<description></description>\r\n<validaterules></validaterules>\r\n<options></options>\r\n</field><field><name>Kommentar</name>\r\n<title>Kommentar</title>\r\n<type>textarea</type>\r\n<mandatory>1</mandatory>\r\n<unique>0</unique>\r\n<imagepath></imagepath>\r\n<description></description>\r\n<validaterules></validaterules>\r\n<options></options>\r\n</field></fields>',NULL,NULL,NULL),(1559742,158705,'2015-10-29 12:53:34','AFTERSUBMITTEXT','',NULL,NULL,NULL),(1559743,158705,'2015-10-29 12:53:34','DOCREF','',NULL,NULL,NULL),(1559744,158705,'2015-10-29 12:53:34','KONTAKT_EMAIL','',NULL,NULL,NULL),(1559745,158705,'2015-10-29 12:53:34','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1559746,158705,'2015-10-29 12:53:34','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1559747,158705,'2015-10-29 12:53:34','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1559748,158705,'2015-10-29 12:53:34','OFFENTLIG_OPRETTELSE',NULL,1,NULL,NULL),(1559749,158705,'2015-10-29 12:53:34','INFORED_SORTORDER','Navn',NULL,NULL,NULL),(1559750,158705,'2015-10-29 12:53:34','SHOW_DATE',NULL,0,NULL,NULL),(1559751,158705,'2015-10-29 12:53:34','SHOW_TEASER',NULL,1,NULL,NULL),(1559752,158705,'2015-10-29 12:53:34','UPDATEALERTSENT',NULL,0,NULL,NULL),(1559753,158705,'2015-10-29 12:53:34','SEQ',NULL,NULL,460,NULL),(1559754,158705,'2015-10-29 12:53:34','OFFENTLIG',NULL,1,NULL,NULL),(1559755,158705,'2015-10-29 12:53:34','UPDATEALERTUSER','jubk',NULL,NULL,NULL),(1559756,158705,'2015-10-29 12:53:34','ENHED','',NULL,NULL,NULL),(1559757,158705,'2015-10-29 12:53:34','CAPTCHA',NULL,NULL,NULL,NULL),(1559758,158705,'2015-10-29 12:53:34','MIMETYPE',NULL,NULL,NULL,NULL),(1559759,158705,'2015-10-29 12:53:34','EXTRA_HTML_BODY_THISONLY',NULL,NULL,NULL,NULL),(1559760,158705,'2015-10-29 12:53:34','EXTRA_HTML_HEAD_THISONLY',NULL,NULL,NULL,NULL),(1559761,158705,'2015-10-29 12:53:34','FARVEVALG',NULL,NULL,NULL,NULL),(1559762,158705,'2015-10-29 12:53:34','SEC',NULL,0,NULL,NULL),(1559763,158705,'2015-10-29 12:53:34','PUBLISHED',NULL,NULL,NULL,'2015-10-29 12:53:31'),(1559764,158705,'2015-10-29 12:53:34','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1559765,158705,'2015-10-29 12:53:34','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1559766,158705,'2015-10-29 15:02:20','TEASER','',NULL,NULL,NULL),(1559767,158705,'2015-10-29 15:02:20','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1559768,158705,'2015-10-29 15:02:20','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1559769,158705,'2015-10-29 15:02:20','AJAX_FIELDS','',NULL,NULL,NULL),(1559770,158705,'2015-10-29 15:02:20','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1559771,158705,'2015-10-29 15:02:20','ENHED_URL','',NULL,NULL,NULL),(1559772,158705,'2015-10-29 15:02:20','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1559773,158705,'2015-10-29 15:02:20','KONTAKT_NAVN','',NULL,NULL,NULL),(1559774,158705,'2015-10-29 15:02:20','CONTRIBUTORS','',NULL,NULL,NULL),(1559775,158705,'2015-10-29 15:02:20','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1559776,158705,'2015-10-29 15:02:20','FORMTEXT','',NULL,NULL,NULL),(1559777,158705,'2015-10-29 15:02:20','AUTHOR','jubk',NULL,NULL,NULL),(1559778,158705,'2015-10-29 15:02:20','TITLE','Inforedigering',NULL,NULL,NULL),(1559779,158705,'2015-10-29 15:02:20','SORTORDER','+seq,+title',NULL,NULL,NULL),(1559780,158705,'2015-10-29 15:02:20','KONTAKT_TLF','',NULL,NULL,NULL),(1559781,158705,'2015-10-29 15:02:20','SHORT_TITLE','Inforedigering',NULL,NULL,NULL),(1559782,158705,'2015-10-29 15:02:20','SOURCE','',NULL,NULL,NULL),(1559783,158705,'2015-10-29 15:02:20','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1559784,158705,'2015-10-29 15:02:20','TILLAD_EXCEL',NULL,1,NULL,NULL),(1559785,158705,'2015-10-29 15:02:20','FREE_KEYWORDS','',NULL,NULL,NULL),(1559786,158705,'2015-10-29 15:02:20','SHOW_NEWS',NULL,1,NULL,NULL),(1559787,158705,'2015-10-29 15:02:20','DOCDATE',NULL,NULL,NULL,'2015-10-29 00:00:00'),(1559788,158705,'2015-10-29 15:02:20','FORMDATA','<fields><field><name>Navn</name>\r\n<title>Navn</title>\r\n<type>name</type>\r\n<mandatory>1</mandatory>\r\n<unique>0</unique>\r\n<imagepath></imagepath>\r\n<description></description>\r\n<validaterules></validaterules>\r\n<options></options>\r\n</field><field><name>E_mail</name>\r\n<title>E-mail</title>\r\n<type>email</type>\r\n<mandatory>1</mandatory>\r\n<unique>0</unique>\r\n<imagepath></imagepath>\r\n<description></description>\r\n<validaterules></validaterules>\r\n<options></options>\r\n</field><field><name>Kommentar</name>\r\n<title>Kommentar</title>\r\n<type>textarea</type>\r\n<mandatory>1</mandatory>\r\n<unique>0</unique>\r\n<imagepath></imagepath>\r\n<description></description>\r\n<validaterules></validaterules>\r\n<options></options>\r\n</field></fields>',NULL,NULL,NULL),(1559789,158705,'2015-10-29 15:02:20','AFTERSUBMITTEXT','',NULL,NULL,NULL),(1559790,158705,'2015-10-29 15:02:20','DOCREF','',NULL,NULL,NULL),(1559791,158705,'2015-10-29 15:02:20','KONTAKT_EMAIL','',NULL,NULL,NULL),(1559792,158705,'2015-10-29 15:02:20','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1559793,158705,'2015-10-29 15:02:20','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1559794,158705,'2015-10-29 15:02:20','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1559795,158705,'2015-10-29 15:02:20','OFFENTLIG_OPRETTELSE',NULL,0,NULL,NULL),(1559796,158705,'2015-10-29 15:02:20','INFORED_SORTORDER','Navn',NULL,NULL,NULL),(1559797,158705,'2015-10-29 15:02:20','SHOW_DATE',NULL,0,NULL,NULL),(1559798,158705,'2015-10-29 15:02:20','SHOW_TEASER',NULL,1,NULL,NULL),(1559799,158705,'2015-10-29 15:02:20','UPDATEALERTSENT',NULL,0,NULL,NULL),(1559800,158705,'2015-10-29 15:02:20','SEQ',NULL,NULL,460,NULL),(1559801,158705,'2015-10-29 15:02:20','OFFENTLIG',NULL,1,NULL,NULL),(1559802,158705,'2015-10-29 15:02:20','UPDATEALERTUSER','jubk',NULL,NULL,NULL),(1559803,158705,'2015-10-29 15:02:20','ENHED','',NULL,NULL,NULL),(1559804,158705,'2015-10-29 15:02:20','CAPTCHA',NULL,NULL,NULL,NULL),(1559805,158705,'2015-10-29 15:02:20','MIMETYPE',NULL,NULL,NULL,NULL),(1559806,158705,'2015-10-29 15:02:20','EXTRA_HTML_BODY_THISONLY',NULL,NULL,NULL,NULL),(1559807,158705,'2015-10-29 15:02:20','EXTRA_HTML_HEAD_THISONLY',NULL,NULL,NULL,NULL),(1559808,158705,'2015-10-29 15:02:20','FARVEVALG',NULL,NULL,NULL,NULL),(1559809,158705,'2015-10-29 15:02:20','SEC',NULL,0,NULL,NULL),(1559810,158705,'2015-10-29 15:02:20','PUBLISHED',NULL,NULL,NULL,'2015-10-29 15:02:20'),(1559811,158705,'2015-10-29 15:02:20','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1559812,158705,'2015-10-29 15:02:20','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1560208,158706,'2015-12-10 10:22:56','TEASER','<p>ere session!</p>\r\n<p>&aelig;alksdflkjhelkj as flkjashf</p>\r\n<div class=\"img-with-caption-left\" style=\"margin: 5px 20px 10px 0px; width: 295px; float: left;\"><a href=\"#asdf\" title=\"asdf\"><img alt=\"test\" src=\"/admin/subsite/test&aelig;&oslash;&aring;.jpg\" title=\"asdf\" /> </a>\r\n<p><a href=\"#asdf\" title=\"asdf\">heheheheh</a></p>\r\n</div>\r\n<p>asdf</p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p>asdfasdf</p>',NULL,NULL,NULL),(1560209,158706,'2015-12-10 10:22:56','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1560210,158706,'2015-12-10 10:22:56','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1560211,158706,'2015-12-10 10:22:56','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1560212,158706,'2015-12-10 10:22:56','HTML_CONTENT','<p>\r\n<a href=\"https://redmine.magenta-aps.dk/\" onclick=\"this.target=\'_blank\'\">Link der åbner i nyt vindue</a>\r\n</p>\r\n',NULL,NULL,NULL),(1560213,158706,'2015-12-10 10:22:56','CONTENT','<p>Sadkfjhk <a href=\"/subsite/{rel}../subsite/\" title=\"Test\">ljhekjlasd</a> flkjeh lkjasdh flkjeh <a href=\"/110204.docid\" onclick=\"this.target=\'_blank\'\" title=\"Skal ikke &aring;bne i nyt vindue\">lkasdh </a>flkjah lkjh lkjasdh <a href=\"/110258.docid\" onclick=\"this.target=\'_blank\'\" title=\"Skal &aring;bne i nyt vindue\">flkhlkajjdhf</a>kjhgelagd flasdf</p>\r\n<p>Og ny session! <a href=\"/110258.docid\" onclick=\"this.target=\'_blank\'\">Og mere session</a>!</p>\r\n<p>&aelig;alksdflkjhelkj as flkjashf</p>\r\n<div class=\"img-with-caption-left\" style=\"float: left; width: 295px;\"><a href=\"#asdf\" title=\"asdf\"><img alt=\"test\" src=\"/admin/subsite/test&aelig;&oslash;&aring;.jpg\" title=\"asdf\" /> </a>\r\n<p>Mere test</p>\r\n</div>\r\n<p>asdf</p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p><img src=\"/110219.docid\" style=\"float: left; margin-top: 5px; margin-bottom: 10px; margin-left: 0px; margin-right: 20px;\" width=\"350\" /></p>\r\n<p></p>\r\n<p>asdfasdf</p>',NULL,NULL,NULL),(1560214,158706,'2015-12-10 10:22:56','BANNER1',NULL,1,NULL,NULL),(1560215,158706,'2015-12-10 10:22:56','ENHED_URL','',NULL,NULL,NULL),(1560216,158706,'2015-12-10 10:22:56','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1560217,158706,'2015-12-10 10:22:56','KONTAKT_NAVN','Et Navn',NULL,NULL,NULL),(1560218,158706,'2015-12-10 10:22:56','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1560219,158706,'2015-12-10 10:22:56','CONTRIBUTORS','',NULL,NULL,NULL),(1560220,158706,'2015-12-10 10:22:56','AUTHOR','jubk',NULL,NULL,NULL),(1560221,158706,'2015-12-10 10:22:56','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1560222,158706,'2015-12-10 10:22:56','KONTAKT_TLF','55 55 55 55',NULL,NULL,NULL),(1560223,158706,'2015-12-10 10:22:56','SORTORDER','+seq,+title',NULL,NULL,NULL),(1560224,158706,'2015-12-10 10:22:56','TITLE','A subsite',NULL,NULL,NULL),(1560225,158706,'2015-12-10 10:22:56','SHORT_TITLE','A subsite',NULL,NULL,NULL),(1560226,158706,'2015-12-10 10:22:56','BANNER2',NULL,1,NULL,NULL),(1560227,158706,'2015-12-10 10:22:56','SOURCE','',NULL,NULL,NULL),(1560228,158706,'2015-12-10 10:22:56','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1560229,158706,'2015-12-10 10:22:56','FREE_KEYWORDS','',NULL,NULL,NULL),(1560230,158706,'2015-12-10 10:22:56','SHOW_NEWS',NULL,1,NULL,NULL),(1560231,158706,'2015-12-10 10:22:56','DOCDATE',NULL,NULL,NULL,'2010-10-21 00:00:00'),(1560232,158706,'2015-12-10 10:22:56','DOCREF','',NULL,NULL,NULL),(1560233,158706,'2015-12-10 10:22:56','KONTAKT_EMAIL','email@example.com',NULL,NULL,NULL),(1560234,158706,'2015-12-10 10:22:56','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1560235,158706,'2015-12-10 10:22:56','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1560236,158706,'2015-12-10 10:22:56','EXTRA_HTML_BODY_FP','',NULL,NULL,NULL),(1560237,158706,'2015-12-10 10:22:56','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1560238,158706,'2015-12-10 10:22:56','BANNER3',NULL,1,NULL,NULL),(1560239,158706,'2015-12-10 10:22:56','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1560240,158706,'2015-12-10 10:22:56','RIGHTBOXES','1:/110233.docid',NULL,NULL,NULL),(1560241,158706,'2015-12-10 10:22:56','RIGHTBOXES','2:/110214.docid',NULL,NULL,NULL),(1560242,158706,'2015-12-10 10:22:56','RIGHTBOXES','3:/110220.docid',NULL,NULL,NULL),(1560243,158706,'2015-12-10 10:22:56','RIGHTBOXES','4:/110190.docid',NULL,NULL,NULL),(1560244,158706,'2015-12-10 10:22:56','RIGHTBOXES','5:/110221.docid',NULL,NULL,NULL),(1560245,158706,'2015-12-10 10:22:56','SHOW_DATE',NULL,0,NULL,NULL),(1560246,158706,'2015-12-10 10:22:56','SHOW_TEASER',NULL,1,NULL,NULL),(1560247,158706,'2015-12-10 10:22:56','UPDATEALERTSENT',NULL,0,NULL,NULL),(1560248,158706,'2015-12-10 10:22:56','SEQ',NULL,NULL,110,NULL),(1560249,158706,'2015-12-10 10:22:56','UPDATEALERTUSER','admin',NULL,NULL,NULL),(1560250,158706,'2015-12-10 10:22:56','ENHED','',NULL,NULL,NULL),(1560251,158706,'2015-12-10 10:22:56','EXTRA_HTML_HEAD_FP','',NULL,NULL,NULL),(1560252,158706,'2015-12-10 10:22:56','EAN',NULL,NULL,NULL,NULL),(1560253,158706,'2015-12-10 10:22:56','MIMETYPE',NULL,NULL,NULL,NULL),(1560254,158706,'2015-12-10 10:22:56','FARVEVALG',NULL,NULL,NULL,NULL),(1560255,158707,'2015-12-21 14:29:44','TEASER','',NULL,NULL,NULL),(1560256,158707,'2015-12-21 14:29:44','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1560257,158707,'2015-12-21 14:29:44','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1560258,158707,'2015-12-21 14:29:44','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1560259,158707,'2015-12-21 14:29:44','CONTENT','<p><a href=\"/subsite/broken_links_html/{rel}target/\">Relative link</a></p>\r\n<p><a href=\"/subsite/broken_links_html/{rel}./target/\">Relative link with ./</a></p>\r\n<p><a href=\"/subsite/broken_links_html/{rel}../target/\">Relative link with ../</a></p>\r\n<p><a href=\"/subsite/broken_links_html/{rel}/target/\">Relative subsite link</a></p>\r\n<p><a href=\"/subsite/broken_links_html/{rel}/target/\">Relative subsite link with ./</a></p>\r\n<p><a href=\"/110215.docid\">Relative subsite link with ../</a></p>\r\n<p><a href=\"/110201.docid\">Link with extra space</a></p>\r\n<p><a href=\"http://google.dk/\">http://google.dk/</a><br /><br /><a href=\"http://findesikkeasdfasdf.dk/\">http://findesikkeasdfasdf.dk/</a><br /><br /><a href=\"http://magenta.dk/skulle-gerne-give-404\">http://magenta.dk/skulle-gerne-give-404</a><br /><br /></p>',NULL,NULL,NULL),(1560260,158707,'2015-12-21 14:29:44','ENHED_URL','',NULL,NULL,NULL),(1560261,158707,'2015-12-21 14:29:44','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1560262,158707,'2015-12-21 14:29:44','KONTAKT_NAVN','',NULL,NULL,NULL),(1560263,158707,'2015-12-21 14:29:44','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1560264,158707,'2015-12-21 14:29:44','CONTRIBUTORS','',NULL,NULL,NULL),(1560265,158707,'2015-12-21 14:29:44','AUTHOR','admin',NULL,NULL,NULL),(1560266,158707,'2015-12-21 14:29:44','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1560267,158707,'2015-12-21 14:29:44','KONTAKT_TLF','',NULL,NULL,NULL),(1560268,158707,'2015-12-21 14:29:44','SORTORDER','+seq,+title',NULL,NULL,NULL),(1560269,158707,'2015-12-21 14:29:44','TITLE','Broken links page',NULL,NULL,NULL),(1560270,158707,'2015-12-21 14:29:44','SHORT_TITLE','Broken links page',NULL,NULL,NULL),(1560271,158707,'2015-12-21 14:29:44','SOURCE','',NULL,NULL,NULL),(1560272,158707,'2015-12-21 14:29:44','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1560273,158707,'2015-12-21 14:29:44','FREE_KEYWORDS','',NULL,NULL,NULL),(1560274,158707,'2015-12-21 14:29:44','SHOW_NEWS',NULL,1,NULL,NULL),(1560275,158707,'2015-12-21 14:29:44','DOCDATE',NULL,NULL,NULL,'2011-03-08 00:00:00'),(1560276,158707,'2015-12-21 14:29:44','DOCREF','',NULL,NULL,NULL),(1560277,158707,'2015-12-21 14:29:44','KONTAKT_EMAIL','',NULL,NULL,NULL),(1560278,158707,'2015-12-21 14:29:44','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1560279,158707,'2015-12-21 14:29:44','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1560280,158707,'2015-12-21 14:29:44','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1560281,158707,'2015-12-21 14:29:44','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1560282,158707,'2015-12-21 14:29:44','SHOW_DATE',NULL,0,NULL,NULL),(1560283,158707,'2015-12-21 14:29:44','SHOW_TEASER',NULL,1,NULL,NULL),(1560284,158707,'2015-12-21 14:29:44','UPDATEALERTSENT',NULL,0,NULL,NULL),(1560285,158707,'2015-12-21 14:29:44','SEQ',NULL,NULL,60,NULL),(1560286,158707,'2015-12-21 14:29:44','UPDATEALERTUSER','admin',NULL,NULL,NULL),(1560287,158707,'2015-12-21 14:29:44','ENHED','',NULL,NULL,NULL),(1560288,158707,'2015-12-21 14:29:44','MIMETYPE',NULL,NULL,NULL,NULL),(1560289,158707,'2015-12-21 14:29:44','FARVEVALG',NULL,NULL,NULL,NULL),(1561499,1,'2010-09-15 14:37:18','SHOW_TITLE',NULL,0,NULL,NULL),(1561500,1,'2010-11-02 10:38:25','SHOW_TITLE',NULL,0,NULL,NULL),(1561526,120935,'2014-03-10 14:09:54','SHOW_TITLE',NULL,0,NULL,NULL),(1561528,158707,'2015-12-21 14:29:44','SHOW_TITLE',NULL,0,NULL,NULL),(1561530,120938,'2014-03-10 14:11:37','SHOW_TITLE',NULL,0,NULL,NULL),(1561545,110197,'2010-09-15 17:51:50','SHOW_TITLE',NULL,0,NULL,NULL),(1561546,110196,'2010-09-15 17:51:19','SHOW_TITLE',NULL,0,NULL,NULL),(1561547,110196,'2010-09-15 17:52:17','SHOW_TITLE',NULL,0,NULL,NULL),(1561548,110196,'2011-05-19 14:12:37','SHOW_TITLE',NULL,0,NULL,NULL),(1561549,110196,'2011-05-19 14:12:45','SHOW_TITLE',NULL,0,NULL,NULL),(1601841,158705,'2015-10-29 12:53:34','SHOW_TITLE',NULL,0,NULL,NULL),(1601842,158705,'2015-10-29 15:02:20','SHOW_TITLE',NULL,0,NULL,NULL),(1611400,110197,'2016-10-31 12:02:03','TEASER','',NULL,NULL,NULL),(1611401,110197,'2016-10-31 12:02:03','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1611402,110197,'2016-10-31 12:02:03','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1611403,110197,'2016-10-31 12:02:03','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1611404,110197,'2016-10-31 12:02:03','CONTENT','<p>not found</p>',NULL,NULL,NULL),(1611405,110197,'2016-10-31 12:02:03','ENHED_URL','',NULL,NULL,NULL),(1611406,110197,'2016-10-31 12:02:03','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1611407,110197,'2016-10-31 12:02:03','KONTAKT_NAVN','',NULL,NULL,NULL),(1611408,110197,'2016-10-31 12:02:03','CONTRIBUTORS','',NULL,NULL,NULL),(1611409,110197,'2016-10-31 12:02:03','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1611410,110197,'2016-10-31 12:02:03','AUTHOR','admin',NULL,NULL,NULL),(1611411,110197,'2016-10-31 12:02:03','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1611412,110197,'2016-10-31 12:02:03','KONTAKT_TLF','',NULL,NULL,NULL),(1611413,110197,'2016-10-31 12:02:03','SORTORDER','+seq,+title',NULL,NULL,NULL),(1611414,110197,'2016-10-31 12:02:03','TITLE','404 Fejl - Not found',NULL,NULL,NULL),(1611415,110197,'2016-10-31 12:02:03','SHORT_TITLE','404 Fejl - Not Found',NULL,NULL,NULL),(1611416,110197,'2016-10-31 12:02:03','SOURCE','',NULL,NULL,NULL),(1611417,110197,'2016-10-31 12:02:03','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1611418,110197,'2016-10-31 12:02:03','FREE_KEYWORDS','',NULL,NULL,NULL),(1611419,110197,'2016-10-31 12:02:03','SHOW_NEWS',NULL,1,NULL,NULL),(1611420,110197,'2016-10-31 12:02:03','DOCDATE',NULL,NULL,NULL,'2010-09-15 00:00:00'),(1611421,110197,'2016-10-31 12:02:03','DOCREF','',NULL,NULL,NULL),(1611422,110197,'2016-10-31 12:02:03','SHOW_TITLE',NULL,0,NULL,NULL),(1611423,110197,'2016-10-31 12:02:03','KONTAKT_EMAIL','',NULL,NULL,NULL),(1611424,110197,'2016-10-31 12:02:03','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1611425,110197,'2016-10-31 12:02:03','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1611426,110197,'2016-10-31 12:02:03','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1611427,110197,'2016-10-31 12:02:03','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1611428,110197,'2016-10-31 12:02:03','SHOW_DATE',NULL,0,NULL,NULL),(1611429,110197,'2016-10-31 12:02:03','SHOW_TEASER',NULL,1,NULL,NULL),(1611430,110197,'2016-10-31 12:02:03','UPDATEALERTSENT',NULL,0,NULL,NULL),(1611431,110197,'2016-10-31 12:02:03','SEQ',NULL,NULL,80,NULL),(1611432,110197,'2016-10-31 12:02:03','UPDATEALERTUSER','admin',NULL,NULL,NULL),(1611433,110197,'2016-10-31 12:02:03','ENHED','',NULL,NULL,NULL),(1611434,110197,'2016-10-31 12:02:03','MIMETYPE',NULL,NULL,NULL,NULL),(1611435,110197,'2016-10-31 12:02:03','FARVEVALG',NULL,NULL,NULL,NULL),(1611436,110197,'2016-10-31 12:02:03','SEC',NULL,0,NULL,NULL),(1611437,110197,'2016-10-31 12:02:03','PUBLISHED',NULL,NULL,NULL,'2016-10-31 12:02:03'),(1611438,110197,'2016-10-31 12:02:03','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1611439,110197,'2016-10-31 12:02:03','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1616367,159014,'2017-03-13 16:33:45','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1616368,159014,'2017-03-13 16:33:45','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1616369,159014,'2017-03-13 16:33:45','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1616370,159014,'2017-03-13 16:33:45','CONTENT','',NULL,NULL,NULL),(1616371,159014,'2017-03-13 16:33:45','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1616372,159014,'2017-03-13 16:33:45','AUTHOR','jubk',NULL,NULL,NULL),(1616373,159014,'2017-03-13 16:33:45','TITLE','Mappe med bootstrap styling',NULL,NULL,NULL),(1616374,159014,'2017-03-13 16:33:45','SORTORDER','+seq,+title',NULL,NULL,NULL),(1616375,159014,'2017-03-13 16:33:45','SHORT_TITLE','',NULL,NULL,NULL),(1616376,159014,'2017-03-13 16:33:45','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1616377,159014,'2017-03-13 16:33:45','SHOW_NEWS',NULL,1,NULL,NULL),(1616378,159014,'2017-03-13 16:33:45','DOCDATE',NULL,NULL,NULL,'2017-03-13 00:00:00'),(1616379,159014,'2017-03-13 16:33:45','PAGESIZE',NULL,0,NULL,NULL),(1616380,159014,'2017-03-13 16:33:45','SHOW_TITLE',NULL,1,NULL,NULL),(1616381,159014,'2017-03-13 16:33:45','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1616382,159014,'2017-03-13 16:33:45','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1616383,159014,'2017-03-13 16:33:45','SHOW_DATE',NULL,0,NULL,NULL),(1616384,159014,'2017-03-13 16:33:45','SHOW_TEASER',NULL,1,NULL,NULL),(1616385,159014,'2017-03-13 16:33:45','SEQ',NULL,NULL,-1,NULL),(1616386,159014,'2017-03-13 16:33:45','TEASER',NULL,NULL,NULL,NULL),(1616387,159014,'2017-03-13 16:33:45','ENHED_URL',NULL,NULL,NULL,NULL),(1616388,159014,'2017-03-13 16:33:45','KONTAKT_ADRESSE',NULL,NULL,NULL,NULL),(1616389,159014,'2017-03-13 16:33:45','CONTRIBUTORS',NULL,NULL,NULL,NULL),(1616390,159014,'2017-03-13 16:33:45','MIMETYPE',NULL,NULL,NULL,NULL),(1616391,159014,'2017-03-13 16:33:45','EXTRA_HTML_BODY_THISONLY',NULL,NULL,NULL,NULL),(1616392,159014,'2017-03-13 16:33:45','SOURCE',NULL,NULL,NULL,NULL),(1616393,159014,'2017-03-13 16:33:45','FREE_KEYWORDS',NULL,NULL,NULL,NULL),(1616394,159014,'2017-03-13 16:33:45','DOCREF',NULL,NULL,NULL,NULL),(1616395,159014,'2017-03-13 16:33:45','EXTRA_HTML_HEAD_THISONLY',NULL,NULL,NULL,NULL),(1616396,159014,'2017-03-13 16:33:45','FARVEVALG',NULL,NULL,NULL,NULL),(1616397,159014,'2017-03-13 16:33:45','ENHED',NULL,NULL,NULL,NULL),(1616398,159014,'2017-03-13 16:33:45','SEC',NULL,0,NULL,NULL),(1616399,159014,'2017-03-13 16:33:45','PUBLISHED',NULL,NULL,NULL,'2017-03-13 16:33:44'),(1616400,159014,'2017-03-13 16:33:45','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1616401,159014,'2017-03-13 16:33:45','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1616402,159015,'2017-03-13 16:34:06','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1616403,159015,'2017-03-13 16:34:06','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1616404,159015,'2017-03-13 16:34:06','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1616405,159015,'2017-03-13 16:34:06','CONTENT','',NULL,NULL,NULL),(1616406,159015,'2017-03-13 16:34:06','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1616407,159015,'2017-03-13 16:34:06','AUTHOR','jubk',NULL,NULL,NULL),(1616408,159015,'2017-03-13 16:34:06','TITLE','Mappe med bootstrap fonts',NULL,NULL,NULL),(1616409,159015,'2017-03-13 16:34:06','SORTORDER','+seq,+title',NULL,NULL,NULL),(1616410,159015,'2017-03-13 16:34:06','SHORT_TITLE','',NULL,NULL,NULL),(1616411,159015,'2017-03-13 16:34:06','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1616412,159015,'2017-03-13 16:34:06','SHOW_NEWS',NULL,1,NULL,NULL),(1616413,159015,'2017-03-13 16:34:06','DOCDATE',NULL,NULL,NULL,'2017-03-13 00:00:00'),(1616414,159015,'2017-03-13 16:34:06','PAGESIZE',NULL,0,NULL,NULL),(1616415,159015,'2017-03-13 16:34:06','SHOW_TITLE',NULL,1,NULL,NULL),(1616416,159015,'2017-03-13 16:34:06','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1616417,159015,'2017-03-13 16:34:06','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1616418,159015,'2017-03-13 16:34:06','SHOW_DATE',NULL,0,NULL,NULL),(1616419,159015,'2017-03-13 16:34:06','SHOW_TEASER',NULL,1,NULL,NULL),(1616420,159015,'2017-03-13 16:34:06','SEQ',NULL,NULL,-1,NULL),(1616421,159015,'2017-03-13 16:34:06','TEASER',NULL,NULL,NULL,NULL),(1616422,159015,'2017-03-13 16:34:06','ENHED_URL',NULL,NULL,NULL,NULL),(1616423,159015,'2017-03-13 16:34:06','KONTAKT_ADRESSE',NULL,NULL,NULL,NULL),(1616424,159015,'2017-03-13 16:34:06','CONTRIBUTORS',NULL,NULL,NULL,NULL),(1616425,159015,'2017-03-13 16:34:06','MIMETYPE',NULL,NULL,NULL,NULL),(1616426,159015,'2017-03-13 16:34:06','EXTRA_HTML_BODY_THISONLY',NULL,NULL,NULL,NULL),(1616427,159015,'2017-03-13 16:34:06','SOURCE',NULL,NULL,NULL,NULL),(1616428,159015,'2017-03-13 16:34:06','FREE_KEYWORDS',NULL,NULL,NULL,NULL),(1616429,159015,'2017-03-13 16:34:06','DOCREF',NULL,NULL,NULL,NULL),(1616430,159015,'2017-03-13 16:34:06','EXTRA_HTML_HEAD_THISONLY',NULL,NULL,NULL,NULL),(1616431,159015,'2017-03-13 16:34:06','FARVEVALG',NULL,NULL,NULL,NULL),(1616432,159015,'2017-03-13 16:34:06','ENHED',NULL,NULL,NULL,NULL),(1616433,159015,'2017-03-13 16:34:06','SEC',NULL,0,NULL,NULL),(1616434,159015,'2017-03-13 16:34:06','PUBLISHED',NULL,NULL,NULL,'2017-03-13 16:34:06'),(1616435,159015,'2017-03-13 16:34:06','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1616436,159015,'2017-03-13 16:34:06','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1616437,159016,'2017-03-13 16:34:25','MIMETYPE','image/jpeg',NULL,NULL,NULL),(1616438,159016,'2017-03-13 16:34:25','SEQ',NULL,NULL,-100,NULL),(1616439,159016,'2017-03-13 16:34:25','EXPIRES',NULL,NULL,NULL,'2037-12-31 23:59:59'),(1616440,159016,'2017-03-13 16:34:25','HEIGHT',NULL,584,NULL,NULL),(1616441,159016,'2017-03-13 16:34:25','SIZE',NULL,59788,NULL,NULL),(1616442,159016,'2017-03-13 16:34:25','WIDTH',NULL,948,NULL,NULL),(1616443,159016,'2017-03-13 16:34:25','TITLE','image002.jpg',NULL,NULL,NULL),(1616444,159016,'2017-03-13 16:34:25','DOCDATE',NULL,NULL,NULL,'2017-03-13 16:34:25'),(1616445,159016,'2017-03-13 16:34:25','UPLOADFILE','/upload/image/jpeg/26/fa/26fad590/image002.jpg',NULL,NULL,NULL),(1645180,115658,'2018-09-10 13:03:16','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1645181,115658,'2018-09-10 13:03:16','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1645182,115658,'2018-09-10 13:03:16','SEQ',NULL,NULL,160,NULL),(1645183,115658,'2018-09-10 13:03:16','KONTAKT_EMAIL','',NULL,NULL,NULL),(1645184,115658,'2018-09-10 13:03:16','SHORT_TITLE','https subsite',NULL,NULL,NULL),(1645185,115658,'2018-09-10 13:03:16','SHOW_NEWS',NULL,1,NULL,NULL),(1645186,115658,'2018-09-10 13:03:16','CONTRIBUTORS','',NULL,NULL,NULL),(1645187,115658,'2018-09-10 13:03:16','SORTORDER','+seq,+title',NULL,NULL,NULL),(1645188,115658,'2018-09-10 13:03:16','CONTENT','',NULL,NULL,NULL),(1645189,115658,'2018-09-10 13:03:16','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1645190,115658,'2018-09-10 13:03:16','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1645191,115658,'2018-09-10 13:03:16','SHOW_TEASER',NULL,1,NULL,NULL),(1645192,115658,'2018-09-10 13:03:16','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1645193,115658,'2018-09-10 13:03:16','EXTRA_HTML_HEAD_FP','',NULL,NULL,NULL),(1645194,115658,'2018-09-10 13:03:16','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1645195,115658,'2018-09-10 13:03:16','ENHED_URL','',NULL,NULL,NULL),(1645196,115658,'2018-09-10 13:03:16','SOURCE','',NULL,NULL,NULL),(1645197,115658,'2018-09-10 13:03:16','SHOW_DATE',NULL,0,NULL,NULL),(1645198,115658,'2018-09-10 13:03:16','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1645199,115658,'2018-09-10 13:03:16','UPDATEALERTUSER','admin',NULL,NULL,NULL),(1645200,115658,'2018-09-10 13:03:16','TEASER','',NULL,NULL,NULL),(1645201,115658,'2018-09-10 13:03:16','HTML_CONTENT','',NULL,NULL,NULL),(1645202,115658,'2018-09-10 13:03:16','AUTHOR','admin',NULL,NULL,NULL),(1645203,115658,'2018-09-10 13:03:16','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645204,115658,'2018-09-10 13:03:16','FREE_KEYWORDS','',NULL,NULL,NULL),(1645205,115658,'2018-09-10 13:03:16','UPDATEALERTSENT',NULL,0,NULL,NULL),(1645206,115658,'2018-09-10 13:03:16','KONTAKT_NAVN','',NULL,NULL,NULL),(1645207,115658,'2018-09-10 13:03:16','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1645208,115658,'2018-09-10 13:03:16','ENHED','',NULL,NULL,NULL),(1645209,115658,'2018-09-10 13:03:16','DOCDATE',NULL,NULL,NULL,'2013-12-18 00:00:00'),(1645210,115658,'2018-09-10 13:03:16','EXTRA_HTML_BODY_FP','',NULL,NULL,NULL),(1645211,115658,'2018-09-10 13:03:16','KONTAKT_TLF','',NULL,NULL,NULL),(1645212,115658,'2018-09-10 13:03:16','TITLE','https subsite',NULL,NULL,NULL),(1645213,115658,'2018-09-10 13:03:16','DOCREF','',NULL,NULL,NULL),(1645214,115658,'2018-09-10 13:03:16','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1645215,115658,'2018-09-10 13:03:16','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1645216,115658,'2018-09-10 13:03:16','EAN',NULL,NULL,NULL,NULL),(1645217,115658,'2018-09-10 13:03:16','MIMETYPE',NULL,NULL,NULL,NULL),(1645218,115658,'2018-09-10 13:03:16','FARVEVALG',NULL,NULL,NULL,NULL),(1645219,115658,'2018-09-10 13:03:16','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645220,115658,'2018-09-10 13:03:16','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1645221,115658,'2018-09-10 13:03:16','SEC',NULL,0,NULL,NULL),(1645222,115658,'2018-09-10 13:03:16','PUBLISHED',NULL,NULL,NULL,'2018-09-10 13:03:16'),(1645223,110201,'2018-09-10 13:04:13','KONTAKT_ADRESSE','Adresse 55, 6666 En By',NULL,NULL,NULL),(1645224,110201,'2018-09-10 13:04:13','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1645225,110201,'2018-09-10 13:04:13','SEQ',NULL,NULL,110,NULL),(1645226,110201,'2018-09-10 13:04:13','KONTAKT_EMAIL','email@example.com',NULL,NULL,NULL),(1645227,110201,'2018-09-10 13:04:13','SHORT_TITLE','A subsite',NULL,NULL,NULL),(1645228,110201,'2018-09-10 13:04:13','SHOW_NEWS',NULL,1,NULL,NULL),(1645229,110201,'2018-09-10 13:04:13','CONTRIBUTORS','',NULL,NULL,NULL),(1645230,110201,'2018-09-10 13:04:13','SORTORDER','+seq,+title',NULL,NULL,NULL),(1645231,110201,'2018-09-10 13:04:13','CONTENT','<p>Sadkfjhk <a href=\"/admin/subsite/../subsite/\" title=\"Test\">ljhekjlasd</a> flkjeh lkjasdh flkjeh <a href=\"/110204.docid\" onclick=\"this.target=\'_blank\'\" rel=\"noopener\" title=\"Skal ikke &Atilde;&fnof;&Acirc;&yen;bne i nyt vindue\">lkasdh </a>flkjah lkjh lkjasdh <a href=\"/110258.docid\" onclick=\"this.target=\'_blank\'; this.target=\'_blank\';; this.target=\'_blank\';\" rel=\"noopener\" title=\"Skal &Atilde;&fnof;&Acirc;&yen;bne i nyt vindue\">flkhlkajjdhf</a>kjhgelagd flasdf</p>\r\n<p>Og ny session! <a href=\"/110258.docid\" onclick=\"this.target=\'_blank\'; this.target=\'_blank\';; this.target=\'_blank\';\" rel=\"noopener\">Og mere session</a>!</p>\r\n<p>&aelig;alksdflkjhelkj as flkjashf</p>\r\n<p><img alt=\"test\" src=\"/110205.docid\" title=\"asdf\">Billede caption</p>\r\n<div class=\"img-with-caption-left\" style=\"float: left; width: 295px;\">\r\n<p>Mere test</p>\r\n</div>\r\n<p>asdf</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img alt=\"\" src=\"/110219.docid\" style=\"margin: 5px 20px 10px 0px; float: left;\" width=\"350\"></p>\r\n<p>&nbsp;</p>\r\n<p>asdfasdf</p>',NULL,NULL,NULL),(1645232,110201,'2018-09-10 13:04:13','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1645233,110201,'2018-09-10 13:04:13','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1645234,110201,'2018-09-10 13:04:13','SHOW_TEASER',NULL,1,NULL,NULL),(1645235,110201,'2018-09-10 13:04:13','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1645236,110201,'2018-09-10 13:04:13','EXTRA_HTML_HEAD_FP','',NULL,NULL,NULL),(1645237,110201,'2018-09-10 13:04:13','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1645238,110201,'2018-09-10 13:04:13','ENHED_URL','http://ku-enhed.magenta-aps.dk/',NULL,NULL,NULL),(1645239,110201,'2018-09-10 13:04:13','BANNER2',NULL,1,NULL,NULL),(1645240,110201,'2018-09-10 13:04:13','SOURCE','',NULL,NULL,NULL),(1645241,110201,'2018-09-10 13:04:13','SHOW_DATE',NULL,0,NULL,NULL),(1645242,110201,'2018-09-10 13:04:13','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1645243,110201,'2018-09-10 13:04:13','UPDATEALERTUSER','admin',NULL,NULL,NULL),(1645244,110201,'2018-09-10 13:04:13','BANNER3',NULL,1,NULL,NULL),(1645245,110201,'2018-09-10 13:04:13','TEASER','<p>Teaser indhold</p>',NULL,NULL,NULL),(1645246,110201,'2018-09-10 13:04:13','HTML_CONTENT','<p>HTML indhold</p>',NULL,NULL,NULL),(1645247,110201,'2018-09-10 13:04:13','AUTHOR','jubk',NULL,NULL,NULL),(1645248,110201,'2018-09-10 13:04:13','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645249,110201,'2018-09-10 13:04:13','FREE_KEYWORDS','',NULL,NULL,NULL),(1645250,110201,'2018-09-10 13:04:13','UPDATEALERTSENT',NULL,0,NULL,NULL),(1645251,110201,'2018-09-10 13:04:13','KONTAKT_NAVN','Et Navn',NULL,NULL,NULL),(1645252,110201,'2018-09-10 13:04:13','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1645253,110201,'2018-09-10 13:04:13','ENHED','Enhed',NULL,NULL,NULL),(1645254,110201,'2018-09-10 13:04:13','DOCDATE',NULL,NULL,NULL,'2010-10-21 00:00:00'),(1645255,110201,'2018-09-10 13:04:13','EXTRA_HTML_BODY_FP','',NULL,NULL,NULL),(1645256,110201,'2018-09-10 13:04:13','KONTAKT_TLF','55 55 55 55',NULL,NULL,NULL),(1645257,110201,'2018-09-10 13:04:13','TITLE','A subsite (changed)',NULL,NULL,NULL),(1645258,110201,'2018-09-10 13:04:13','DOCREF','',NULL,NULL,NULL),(1645259,110201,'2018-09-10 13:04:13','BANNER1',NULL,1,NULL,NULL),(1645260,110201,'2018-09-10 13:04:13','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1645261,110201,'2018-09-10 13:04:13','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1645262,110201,'2018-09-10 13:04:13','EAN',NULL,NULL,NULL,NULL),(1645263,110201,'2018-09-10 13:04:13','MIMETYPE',NULL,NULL,NULL,NULL),(1645264,110201,'2018-09-10 13:04:13','FARVEVALG',NULL,NULL,NULL,NULL),(1645265,110201,'2018-09-10 13:04:13','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645266,110201,'2018-09-10 13:04:13','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1645267,110201,'2018-09-10 13:04:13','SEC',NULL,0,NULL,NULL),(1645268,110201,'2018-09-10 13:04:13','PUBLISHED',NULL,NULL,NULL,'2018-09-10 13:04:13'),(1645269,110189,'2018-09-10 13:11:44','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1645270,110189,'2018-09-10 13:11:44','SHOW_TEASER',NULL,1,NULL,NULL),(1645271,110189,'2018-09-10 13:11:44','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1645272,110189,'2018-09-10 13:11:44','ENHED_URL','',NULL,NULL,NULL),(1645273,110189,'2018-09-10 13:11:44','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1645274,110189,'2018-09-10 13:11:44','SHOW_DATE',NULL,0,NULL,NULL),(1645275,110189,'2018-09-10 13:11:44','EXPIRES',NULL,NULL,NULL,'9999-01-01 18:00:00'),(1645276,110189,'2018-09-10 13:11:44','SOURCE','',NULL,NULL,NULL),(1645277,110189,'2018-09-10 13:11:44','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1645278,110189,'2018-09-10 13:11:44','SEQ',NULL,NULL,-350,NULL),(1645279,110189,'2018-09-10 13:11:44','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1645280,110189,'2018-09-10 13:11:44','KONTAKT_EMAIL','',NULL,NULL,NULL),(1645281,110189,'2018-09-10 13:11:44','SHORT_TITLE','Administration',NULL,NULL,NULL),(1645282,110189,'2018-09-10 13:11:44','SHOW_NEWS',NULL,1,NULL,NULL),(1645283,110189,'2018-09-10 13:11:44','CONTRIBUTORS','',NULL,NULL,NULL),(1645284,110189,'2018-09-10 13:11:44','SORTORDER','+seq,+title',NULL,NULL,NULL),(1645285,110189,'2018-09-10 13:11:44','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1645286,110189,'2018-09-10 13:11:44','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1645287,110189,'2018-09-10 13:11:44','ENHED','',NULL,NULL,NULL),(1645288,110189,'2018-09-10 13:11:44','DOCDATE',NULL,NULL,NULL,'2005-05-10 00:00:00'),(1645289,110189,'2018-09-10 13:11:44','KONTAKT_TLF','',NULL,NULL,NULL),(1645290,110189,'2018-09-10 13:11:44','DOCREF','',NULL,NULL,NULL),(1645291,110189,'2018-09-10 13:11:44','TITLE','Administration',NULL,NULL,NULL),(1645292,110189,'2018-09-10 13:11:44','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1645293,110189,'2018-09-10 13:11:44','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1645294,110189,'2018-09-10 13:11:44','TEASER','',NULL,NULL,NULL),(1645295,110189,'2018-09-10 13:11:44','FARVEVALG','',NULL,NULL,NULL),(1645296,110189,'2018-09-10 13:11:44','HTML_CONTENT','<h3>Almindelige funktioner:</h3>\r\n<ul>\r\n<li><a href=\"./?obvius_command_users=1\">Brugere</a></li>\r\n<li><a href=\"./?obvius_command_groups=1\">Grupper</a></li>\r\n<li><a href=\"./?obvius_command_change_password=1\">Skift adgangskode</a></li>\r\n<li><a href=\"./?obvius_command_garbage=1\">Filskraldespand</a></li>\r\n<li><a href=\"./?obvius_command_import_files=1\">Masseupload af filer</a></li>\r\n</ul>\r\n\r\n<h3>Opdatering</h3>\r\n<ul>\r\n<li><a href=\"./?obvius_command_update_errorpages=1\">Opdatér statiske fejlsider</a></li>\r\n</ul>\r\n\r\n<h3>Funktioner for brugere med administrator rettigheder:</h3>\r\n<ul>\r\n<li><a href=\"./?obvius_command_universal_accessrules=1\">Universal adgangsregler</a></li>\r\n<li><a href=\"./?obvius_command_subscribers=1\">Abonnenter</a></li>\r\n<li><a href=\"./?obvius_command_keywords=1\">Nøgleord</a></li>\r\n<li><a href=\"./?obvius_command_queue=1\">Kommando-kø</a></li>\r\n<li><a href=\"./?obvius_command_subsite=1\">Subsites</a></li>\r\n<li><a href=\"./?obvius_command_forbidden_areas=1\">Forbudte områder</a></li>\r\n<li><a href=\"./?obvius_command_tags=1\">Rediger faste tags</a></li>\r\n<li><a href=\"./?obvius_command_list_inactive_users=1\">Liste over inaktive brugere</a></li>\r\n<li><a href=\"./?obvius_command_dynamic_redirects=1\">Redigering af dynamiske viderestillinger</a></li>\r\n<li><a href=\"./?obvius_command_footer_cleanup=1\">Sidefods-oprydning</a></li>\r\n<li><a href=\"./?obvius_command_protected_access_log=1\">Log over adgang til personfølsomme data</a></li>\r\n<li><a href=\"./?obvius_command_driftinfo_edit=1\">Driftinfo-redigering</a></li>\r\n<li><a href=\"./?obvius_command_config_edit=1\">Global konfiguration</a></li>\r\n<li><a href=\"./?obvius_command_search_docparams=1\">Søg i dokumentparametre</a></li>\r\n<li><a href=\"./?obvius_command_search_by_user_or_group=1\">Find dokumenter ud fra bruger eller gruppe</a></li>\r\n<li><a href=\"./?obvius_command_bulk_protect=1\">Fred alle sider under en given sti</a></li>\r\n<li><a href=\"./?obvius_command_admin_users=1\">Administration af admin-brugere</a></li>\r\n<li><a href=\"./?obvius_command_export_styling=1\">Eksporter uploaded styling til statiske filer</a></li>\r\n\r\n</ul>\r\n\r\n<h3>Værktøjer:</h3>\r\n<ul>\r\n<li><a href=\"/system/update_bootstrap_git.mason\" target=\"_blank\">Opdater KU bootstrap filer (åbner i nyt vindue)</a></li>\r\n</ul\r\n\r\n\r\n<h3>Bruger-udtræks lister:</h3>\r\n<ul>\r\n  <li><a href=\"./?obvius_command_user_extracts_admin=1\">Håndtering af bruger-udtræks filer</a></li>\r\n</ul>\r\n\r\n<h3>AdminJump:</h3>\r\n<p>\r\nHøjreklik på AdminJump-linket nedenfor og vælg \"Føj til foretrukne...\".  Hvis værktøjslinien \"Hyperlinks\" ikke er slået til, så gør det i menuen \"Vis/Værktøjslinier/Hyperlinks\" - og træk derefter linket fra foretrukne menuen ned i værktøjslinien. Knappen \"AdminJump\" i værktøjslinien kan nu bruges til at hoppe direkte fra en side på det offentlige website og til administrationsdelens tilsvarende side (og tilbage igen).\r\n</p>\r\n<ul>\r\n<li><a href=\"javascript:q=location.href;if(q&&q!=%22%22){q=String(q);r=new RegExp(%22http[s]?(://[^/]*/)(.*)%22);m=q.match(r);if(m){admin=%22admin/%22;ra=new RegExp(%22admin/([^?]*)%22);ma=m[2].match(ra);if(ma){admin=%22%22;m[2]=ma[1];}location.href=%22http%22+m[1]+admin+m[2];}else{alert(%22Dont know how to admin %22+q+%22, sorry%22);location.href=location.href;}}else{location.href=location.href;}\">AdminJump</a></li>\r\n</ul>\r\n\r\n<p>Admin-jump med direkte adgang til 1. redigeringsside</p>\r\n<ul><li><a href=\"javascript:q=location.href;if(q&&q!=%22%22){q=String(q);admin=%22admin/%22;r=new RegExp(%22^(https?://[^/]*/)([^?]*)%22);m=q.match(r);if(m){start=m[1];path=m[2];args=%22%22;ra=new RegExp(%22^%22+admin+%22(.*)%22);ma=path.match(ra);if(ma){path=ma[1];args=%22%22}else{path=admin+path;args=\'?obvius_command_edit=1\';}location.href=start+path+args;}else{alert(%22Dontknowhowtoadmin%22+q+%22,sorry%22)};}\">EditJump</a></li></ul>\r\n\r\n\r\n<!--<li><a href=\"./?obvius_command_flushcache=1\">Ryd server-cache</a></li>-->\r\n\r\n\r\n\r\n\r\n',NULL,NULL,NULL),(1645297,110189,'2018-09-10 13:11:44','AUTHOR','admin',NULL,NULL,NULL),(1645298,110189,'2018-09-10 13:11:44','FREE_KEYWORDS','',NULL,NULL,NULL),(1645299,110189,'2018-09-10 13:11:44','KONTAKT_NAVN','',NULL,NULL,NULL),(1645300,110189,'2018-09-10 13:11:44','MIMETYPE',NULL,NULL,NULL,NULL),(1645301,110189,'2018-09-10 13:11:44','SEC',NULL,0,NULL,NULL),(1645302,110189,'2018-09-10 13:11:44','PUBLISHED',NULL,NULL,NULL,'2018-09-10 13:11:44'),(1645303,110189,'2018-09-10 13:11:44','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1645304,110189,'2018-09-10 13:11:44','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645305,159029,'2019-02-25 11:44:01','CONTRIBUTORS','',NULL,NULL,NULL),(1645306,159029,'2019-02-25 11:44:01','UPDATEALERTUSER','admin',NULL,NULL,NULL),(1645307,159029,'2019-02-25 11:44:01','KONTAKT_EMAIL','',NULL,NULL,NULL),(1645308,159029,'2019-02-25 11:44:01','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1645309,159029,'2019-02-25 11:44:01','KONTAKT_NAVN','',NULL,NULL,NULL),(1645310,159029,'2019-02-25 11:44:01','ENHED_URL','',NULL,NULL,NULL),(1645311,159029,'2019-02-25 11:44:01','DOCDATE',NULL,NULL,NULL,'2019-02-25 00:00:00'),(1645312,159029,'2019-02-25 11:44:01','DOCREF','',NULL,NULL,NULL),(1645313,159029,'2019-02-25 11:44:01','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1645314,159029,'2019-02-25 11:44:01','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1645315,159029,'2019-02-25 11:44:01','SOURCE','',NULL,NULL,NULL),(1645316,159029,'2019-02-25 11:44:01','SORTORDER','+seq,+title',NULL,NULL,NULL),(1645317,159029,'2019-02-25 11:44:01','AUTHOR','admin',NULL,NULL,NULL),(1645318,159029,'2019-02-25 11:44:01','SHOW_TEASER',NULL,1,NULL,NULL),(1645319,159029,'2019-02-25 11:44:01','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645320,159029,'2019-02-25 11:44:01','FREE_KEYWORDS','',NULL,NULL,NULL),(1645321,159029,'2019-02-25 11:44:01','ENHED','',NULL,NULL,NULL),(1645322,159029,'2019-02-25 11:44:01','KONTAKT_TLF','',NULL,NULL,NULL),(1645323,159029,'2019-02-25 11:44:01','TITLE','Forside',NULL,NULL,NULL),(1645324,159029,'2019-02-25 11:44:01','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1645325,159029,'2019-02-25 11:44:01','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1645326,159029,'2019-02-25 11:44:01','CONTENT','<p>Hej med dig.</p>',NULL,NULL,NULL),(1645327,159029,'2019-02-25 11:44:01','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1645328,159029,'2019-02-25 11:44:01','SHORT_TITLE','',NULL,NULL,NULL),(1645329,159029,'2019-02-25 11:44:01','SEQ',NULL,NULL,170,NULL),(1645330,159029,'2019-02-25 11:44:01','UPDATEALERTSENT',NULL,0,NULL,NULL),(1645331,159029,'2019-02-25 11:44:01','TEASER','',NULL,NULL,NULL),(1645332,159029,'2019-02-25 11:44:01','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1645333,159029,'2019-02-25 11:44:01','SHOW_DATE',NULL,0,NULL,NULL),(1645334,159029,'2019-02-25 11:44:01','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1645335,159029,'2019-02-25 11:44:01','SHOW_TITLE',NULL,1,NULL,NULL),(1645336,159029,'2019-02-25 11:44:01','SHOW_NEWS',NULL,1,NULL,NULL),(1645337,159029,'2019-02-25 11:44:01','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1645338,159029,'2019-02-25 11:44:01','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1645339,159029,'2019-02-25 11:44:01','MIMETYPE',NULL,NULL,NULL,NULL),(1645340,159029,'2019-02-25 11:44:01','FARVEVALG',NULL,NULL,NULL,NULL),(1645341,159029,'2019-02-25 11:44:01','PUBLISHED',NULL,NULL,NULL,'2019-02-25 11:44:01'),(1645342,159029,'2019-02-25 11:44:01','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1645343,159029,'2019-02-25 11:44:01','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645344,159029,'2019-02-25 11:44:01','SEC',NULL,0,NULL,NULL),(1645345,159030,'2019-02-25 11:46:01','ENHED','',NULL,NULL,NULL),(1645346,159030,'2019-02-25 11:46:01','ENHED_URL','',NULL,NULL,NULL),(1645347,159030,'2019-02-25 11:46:01','SHOW_DATE',NULL,0,NULL,NULL),(1645348,159030,'2019-02-25 11:46:01','SORTORDER','+seq,+title',NULL,NULL,NULL),(1645349,159030,'2019-02-25 11:46:01','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1645350,159030,'2019-02-25 11:46:01','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1645351,159030,'2019-02-25 11:46:01','AUTHOR','admin',NULL,NULL,NULL),(1645352,159030,'2019-02-25 11:46:01','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1645353,159030,'2019-02-25 11:46:01','KONTAKT_NAVN','',NULL,NULL,NULL),(1645354,159030,'2019-02-25 11:46:01','TEASER','',NULL,NULL,NULL),(1645355,159030,'2019-02-25 11:46:01','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1645356,159030,'2019-02-25 11:46:01','SHORT_TITLE','',NULL,NULL,NULL),(1645357,159030,'2019-02-25 11:46:01','UPDATEALERTSENT',NULL,0,NULL,NULL),(1645358,159030,'2019-02-25 11:46:01','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1645359,159030,'2019-02-25 11:46:01','DOCREF','',NULL,NULL,NULL),(1645360,159030,'2019-02-25 11:46:01','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1645361,159030,'2019-02-25 11:46:01','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1645362,159030,'2019-02-25 11:46:01','SEQ',NULL,NULL,10,NULL),(1645363,159030,'2019-02-25 11:46:01','KONTAKT_TLF','',NULL,NULL,NULL),(1645364,159030,'2019-02-25 11:46:01','SHOW_TEASER',NULL,1,NULL,NULL),(1645365,159030,'2019-02-25 11:46:01','FREE_KEYWORDS','',NULL,NULL,NULL),(1645366,159030,'2019-02-25 11:46:01','CONTRIBUTORS','',NULL,NULL,NULL),(1645367,159030,'2019-02-25 11:46:01','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1645368,159030,'2019-02-25 11:46:01','UPDATEALERTUSER','admin',NULL,NULL,NULL),(1645369,159030,'2019-02-25 11:46:01','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1645370,159030,'2019-02-25 11:46:01','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1645371,159030,'2019-02-25 11:46:01','SHOW_TITLE',NULL,1,NULL,NULL),(1645372,159030,'2019-02-25 11:46:01','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645373,159030,'2019-02-25 11:46:01','TITLE','En underside',NULL,NULL,NULL),(1645374,159030,'2019-02-25 11:46:01','DOCDATE',NULL,NULL,NULL,'2019-02-25 00:00:00'),(1645375,159030,'2019-02-25 11:46:01','SHOW_NEWS',NULL,1,NULL,NULL),(1645376,159030,'2019-02-25 11:46:01','SOURCE','',NULL,NULL,NULL),(1645377,159030,'2019-02-25 11:46:01','CONTENT','<p>Med lidt indhold.</p>',NULL,NULL,NULL),(1645378,159030,'2019-02-25 11:46:01','KONTAKT_EMAIL','',NULL,NULL,NULL),(1645379,159030,'2019-02-25 11:46:01','MIMETYPE',NULL,NULL,NULL,NULL),(1645380,159030,'2019-02-25 11:46:01','FARVEVALG',NULL,NULL,NULL,NULL),(1645381,159030,'2019-02-25 11:46:01','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645382,159030,'2019-02-25 11:46:01','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1645383,159030,'2019-02-25 11:46:01','SEC',NULL,0,NULL,NULL),(1645384,159030,'2019-02-25 11:46:01','PUBLISHED',NULL,NULL,NULL,'2019-02-25 11:46:01'),(1645385,159031,'2019-02-25 12:02:38','ENHED','',NULL,NULL,NULL),(1645386,159031,'2019-02-25 12:02:38','ENHED_URL','',NULL,NULL,NULL),(1645387,159031,'2019-02-25 12:02:38','SHOW_DATE',NULL,0,NULL,NULL),(1645388,159031,'2019-02-25 12:02:38','SORTORDER','+seq,+title',NULL,NULL,NULL),(1645389,159031,'2019-02-25 12:02:38','SHOW_SUBDOC_DATE',NULL,0,NULL,NULL),(1645390,159031,'2019-02-25 12:02:38','EXTRA_HTML_BODY_THISONLY','',NULL,NULL,NULL),(1645391,159031,'2019-02-25 12:02:38','AUTHOR','admin',NULL,NULL,NULL),(1645392,159031,'2019-02-25 12:02:38','ROBOTSMETA','index,follow',NULL,NULL,NULL),(1645393,159031,'2019-02-25 12:02:38','KONTAKT_NAVN','',NULL,NULL,NULL),(1645394,159031,'2019-02-25 12:02:38','TEASER','',NULL,NULL,NULL),(1645395,159031,'2019-02-25 12:02:38','ENABLE_COMMENTS',NULL,0,NULL,NULL),(1645396,159031,'2019-02-25 12:02:38','SHORT_TITLE','',NULL,NULL,NULL),(1645397,159031,'2019-02-25 12:02:38','UPDATEALERTSENT',NULL,0,NULL,NULL),(1645398,159031,'2019-02-25 12:02:38','KONTAKT_ADRESSE','',NULL,NULL,NULL),(1645399,159031,'2019-02-25 12:02:38','DOCREF','',NULL,NULL,NULL),(1645400,159031,'2019-02-25 12:02:38','SHOW_SUBDOCS',NULL,0,NULL,NULL),(1645401,159031,'2019-02-25 12:02:38','EXTRA_HTML_HEAD_THISONLY','',NULL,NULL,NULL),(1645402,159031,'2019-02-25 12:02:38','SEQ',NULL,NULL,20,NULL),(1645403,159031,'2019-02-25 12:02:38','KONTAKT_TLF','',NULL,NULL,NULL),(1645404,159031,'2019-02-25 12:02:38','SHOW_TEASER',NULL,1,NULL,NULL),(1645405,159031,'2019-02-25 12:02:38','FREE_KEYWORDS','',NULL,NULL,NULL),(1645406,159031,'2019-02-25 12:02:38','CONTRIBUTORS','',NULL,NULL,NULL),(1645407,159031,'2019-02-25 12:02:38','SHOW_SUBDOC_TEASER',NULL,0,NULL,NULL),(1645408,159031,'2019-02-25 12:02:38','UPDATEALERTUSER','admin',NULL,NULL,NULL),(1645409,159031,'2019-02-25 12:02:38','EXPIRES',NULL,NULL,NULL,'9999-01-01 00:00:00'),(1645410,159031,'2019-02-25 12:02:38','SUBSCRIBEABLE','none',NULL,NULL,NULL),(1645411,159031,'2019-02-25 12:02:38','SHOW_TITLE',NULL,1,NULL,NULL),(1645412,159031,'2019-02-25 12:02:38','UPDATEALERTTIME',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645413,159031,'2019-02-25 12:02:38','TITLE','En side mere',NULL,NULL,NULL),(1645414,159031,'2019-02-25 12:02:38','DOCDATE',NULL,NULL,NULL,'2019-02-25 00:00:00'),(1645415,159031,'2019-02-25 12:02:38','SHOW_NEWS',NULL,1,NULL,NULL),(1645416,159031,'2019-02-25 12:02:38','SOURCE','',NULL,NULL,NULL),(1645417,159031,'2019-02-25 12:02:38','CONTENT','<p>Med lidt indhold.</p>',NULL,NULL,NULL),(1645418,159031,'2019-02-25 12:02:38','KONTAKT_EMAIL','',NULL,NULL,NULL),(1645419,159031,'2019-02-25 12:02:38','MIMETYPE',NULL,NULL,NULL,NULL),(1645420,159031,'2019-02-25 12:02:38','FARVEVALG',NULL,NULL,NULL,NULL),(1645421,159031,'2019-02-25 12:02:38','PUBLISH_ON',NULL,NULL,NULL,'0000-00-00 00:00:00'),(1645422,159031,'2019-02-25 12:02:38','IN_SUBSCRIPTION',NULL,0,NULL,NULL),(1645423,159031,'2019-02-25 12:02:38','SEC',NULL,0,NULL,NULL),(1645424,159031,'2019-02-25 12:02:38','PUBLISHED',NULL,NULL,NULL,'2019-02-25 12:02:38');
/*!40000 ALTER TABLE `vfields` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_vfield_insert after insert on vfields 
for each row begin
    if new.name = 'tags' then
       insert ignore into all_tags values (new.text_value);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger post_vfield_delete after delete on vfields
for each row
begin 
      insert into vfields_backup (docid, version, name, text_value, int_value, 
                                  date_value, double_value) values
                                 (old.docid, old.version, old.name, old.text_value, old.int_value, 
                                  old.date_value, old.double_value);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vfields_backup`
--

DROP TABLE IF EXISTS `vfields_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vfields_backup` (
  `vfields_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `version` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(127) NOT NULL DEFAULT '',
  `text_value` longtext DEFAULT NULL,
  `int_value` int(8) DEFAULT NULL,
  `double_value` double DEFAULT NULL,
  `date_value` datetime DEFAULT NULL,
  PRIMARY KEY (`vfields_id`),
  KEY `vfields_docid_version_name_int_value_idx` (`docid`,`version`,`name`,`int_value`),
  KEY `vfields_docid_version_name_double_value_idx` (`docid`,`version`,`name`,`double_value`),
  KEY `vfields_docid_version_name_date_value_idx` (`docid`,`version`,`name`,`date_value`),
  KEY `vfields_docid_version_name_text_value_idx` (`docid`,`version`,`name`,`text_value`(16))
) ENGINE=InnoDB AUTO_INCREMENT=1736760 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vfields_backup`
--

LOCK TABLES `vfields_backup` WRITE;
/*!40000 ALTER TABLE `vfields_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `vfields_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videresend_stats`
--

DROP TABLE IF EXISTS `videresend_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videresend_stats` (
  `videresend_stats_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `counter` int(32) NOT NULL DEFAULT 0,
  PRIMARY KEY (`videresend_stats_id`),
  KEY `count` (`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videresend_stats`
--

LOCK TABLES `videresend_stats` WRITE;
/*!40000 ALTER TABLE `videresend_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `videresend_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voters` (
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `cookie` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`docid`,`cookie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters`
--

LOCK TABLES `voters` WRITE;
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
INSERT INTO `voters` VALUES (110226,'756a9dc9dcd46492334c1823c62dc08d');
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `docid` int(8) unsigned NOT NULL DEFAULT 0,
  `answer` char(32) NOT NULL DEFAULT '',
  `total` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`docid`,`answer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (110226,'2',1);
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_categories`
--

DROP TABLE IF EXISTS `website_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name_da` varchar(60) NOT NULL,
  `category_name_en` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_categories`
--

LOCK TABLES `website_categories` WRITE;
/*!40000 ALTER TABLE `website_categories` DISABLE KEYS */;
INSERT INTO `website_categories` VALUES (1,'Ukategoriseret','Uncategorized'),(2,'Fakultetswebsted','Faculty web site'),(3,'Institutwebsted','Department web site'),(4,'Fælles KU-portal','University portal'),(5,'Uddannelsesbeskrivelse','Programme description'),(6,'Forskningsbeskrivelse, udvidet','Research presentation, extended'),(7,'Forskningsbeskrivelse, lille','Research presentation, short'),(8,'Samarbejdswebsted','Collaboration'),(9,'Digitalt arkiv eller database','Digital archive or database'),(10,'Andet','Other');
/*!40000 ALTER TABLE `website_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `calculated_path`
--

/*!50001 DROP TABLE IF EXISTS `calculated_path`*/;
/*!50001 DROP VIEW IF EXISTS `calculated_path`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ku`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `calculated_path` AS select `c`.`id` AS `docid`,group_concat(concat(coalesce(`p`.`name`,''),'/') order by `t`.`depth` DESC separator '') AS `path` from ((`documents` `c` join `path_tree` `t` on(`t`.`child` = `c`.`id`)) left join `documents` `p` on(`t`.`parent` = `p`.`id` and `p`.`id` <> 1)) group by `c`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `closest_subsite`
--

/*!50001 DROP TABLE IF EXISTS `closest_subsite`*/;
/*!50001 DROP VIEW IF EXISTS `closest_subsite`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `closest_subsite` AS select `documents`.`id` AS `docid`,(select `subsites_above`.`id` from `subsites_above` where `subsites_above`.`child_docid` = `documents`.`id` order by `subsites_above`.`subsite_path` desc limit 1) AS `subsite_id` from `documents` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cron_servers_full`
--

/*!50001 DROP TABLE IF EXISTS `cron_servers_full`*/;
/*!50001 DROP VIEW IF EXISTS `cron_servers_full`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cron_servers_full` AS select `s`.`id` AS `id`,`s`.`hostname` AS `hostname`,`t`.`id` AS `type_id`,`t`.`name` AS `type`,`e`.`id` AS `environment_id`,`e`.`name` AS `environment`,`s`.`is_primary` AS `is_primary`,`s`.`last_run` AS `last_run` from ((`cron_servers` `s` left join `cron_server_types` `t` on(`s`.`type_id` = `t`.`id`)) left join `cron_environments` `e` on(`s`.`environment_id` = `e`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `docs_with_extra`
--

/*!50001 DROP TABLE IF EXISTS `docs_with_extra`*/;
/*!50001 DROP VIEW IF EXISTS `docs_with_extra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ku`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `docs_with_extra` AS select `documents`.`id` AS `id`,`documents`.`parent` AS `parent`,`documents`.`name` AS `name`,`documents`.`type` AS `type`,`documents`.`owner` AS `owner`,`documents`.`grp` AS `grp`,`documents`.`accessrules` AS `accessrules`,`documents`.`inherit_access` AS `inherit_access`,`documents_extra`.`public_or_latest_version` AS `public_or_latest_version`,`documents_extra`.`has_public_path` AS `has_public_path`,`documents_extra`.`closest_subsite` AS `closest_subsite` from (`documents` join `documents_extra` on(`documents`.`id` = `documents_extra`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `path_tree_with_paths`
--

/*!50001 DROP TABLE IF EXISTS `path_tree_with_paths`*/;
/*!50001 DROP VIEW IF EXISTS `path_tree_with_paths`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ku`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `path_tree_with_paths` AS select `t`.`id` AS `id`,`t`.`parent` AS `parent`,`t`.`child` AS `child`,`t`.`depth` AS `depth`,`pp`.`path` AS `parent_path`,`cp`.`path` AS `child_path` from ((`path_tree` `t` join `docid_path` `pp` on(`t`.`parent` = `pp`.`docid`)) join `docid_path` `cp` on(`t`.`child` = `cp`.`docid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `public_path_docid`
--

/*!50001 DROP TABLE IF EXISTS `public_path_docid`*/;
/*!50001 DROP VIEW IF EXISTS `public_path_docid`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `public_path_docid` AS select `documents`.`id` AS `docid` from `documents` where !exists(select 1 from (`path_tree` left join `versions` on(`path_tree`.`parent` = `versions`.`docid` and `versions`.`public` = 1)) where `versions`.`docid` is null and `path_tree`.`child` = `documents`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `public_versions_with_path`
--

/*!50001 DROP TABLE IF EXISTS `public_versions_with_path`*/;
/*!50001 DROP VIEW IF EXISTS `public_versions_with_path`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `public_versions_with_path` AS select `versions`.`docid` AS `docid`,`versions`.`version` AS `version`,`versions`.`type` AS `type`,`versions`.`public` AS `public`,`versions`.`valid` AS `valid`,`versions`.`lang` AS `lang`,`versions`.`user` AS `user`,`docid_path`.`path` AS `path` from (`docid_path` join `versions` on(`docid_path`.`docid` = `versions`.`docid` and `versions`.`public` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `public_vfields_with_path`
--

/*!50001 DROP TABLE IF EXISTS `public_vfields_with_path`*/;
/*!50001 DROP VIEW IF EXISTS `public_vfields_with_path`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `public_vfields_with_path` AS select `dp_v`.`path` AS `path`,`vfields`.`docid` AS `docid`,`vfields`.`version` AS `version`,`vfields`.`name` AS `name`,`vfields`.`text_value` AS `text_value`,`vfields`.`int_value` AS `int_value`,`vfields`.`double_value` AS `double_value`,`vfields`.`date_value` AS `date_value` from (`public_versions_with_path` `dp_v` join `vfields` on(`dp_v`.`docid` = `vfields`.`docid` and `dp_v`.`version` = `vfields`.`version`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subsites_above`
--

/*!50001 DROP TABLE IF EXISTS `subsites_above`*/;
/*!50001 DROP VIEW IF EXISTS `subsites_above`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subsites_above` AS select `below_subsites`.`id` AS `id`,`below_subsites`.`user_id` AS `user_id`,`below_subsites`.`domain` AS `domain`,`below_subsites`.`is_https` AS `is_https`,`below_subsites`.`old_path` AS `old_path`,`below_subsites`.`root_docid` AS `root_docid`,`below_subsites`.`title` AS `title`,`below_subsites`.`alt_title` AS `alt_title`,`below_subsites`.`front_faculty` AS `front_faculty`,`below_subsites`.`front_faculty_id` AS `front_faculty_id`,`below_subsites`.`backend_faculty` AS `backend_faculty`,`below_subsites`.`backend_faculty_id` AS `backend_faculty_id`,`below_subsites`.`comments` AS `comments`,`below_subsites`.`lang` AS `lang`,`below_subsites`.`local_analytics` AS `local_analytics`,`below_subsites`.`local_analytics_use_local_domain` AS `local_analytics_use_local_domain`,`below_subsites`.`global_menu` AS `global_menu`,`below_subsites`.`other_language_link` AS `other_language_link`,`below_subsites`.`own_leftmenu` AS `own_leftmenu`,`below_subsites`.`responsive` AS `responsive`,`below_subsites`.`dont_inherit_local_analytics` AS `dont_inherit_local_analytics`,`below_subsites`.`brandingunit` AS `brandingunit`,`below_subsites`.`webteam_id` AS `webteam_id`,`below_subsites`.`warning_banner` AS `warning_banner`,`below_subsites`.`dont_inherit_warning_banner` AS `dont_inherit_warning_banner`,`below_subsites`.`branding_text1` AS `branding_text1`,`below_subsites`.`branding_text2` AS `branding_text2`,`below_subsite_paths`.`child` AS `child_docid`,`below_subsite_paths`.`child_path` AS `child_path`,`below_subsite_paths`.`parent` AS `subsite_docid`,`below_subsite_paths`.`parent_path` AS `subsite_path` from (`path_tree_with_paths` `below_subsite_paths` join `subsites2` `below_subsites` on(`below_subsite_paths`.`parent` = `below_subsites`.`root_docid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subsites_below`
--

/*!50001 DROP TABLE IF EXISTS `subsites_below`*/;
/*!50001 DROP VIEW IF EXISTS `subsites_below`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subsites_below` AS select `below_subsites`.`id` AS `id`,`below_subsites`.`user_id` AS `user_id`,`below_subsites`.`domain` AS `domain`,`below_subsites`.`is_https` AS `is_https`,`below_subsites`.`old_path` AS `old_path`,`below_subsites`.`root_docid` AS `root_docid`,`below_subsites`.`title` AS `title`,`below_subsites`.`alt_title` AS `alt_title`,`below_subsites`.`front_faculty` AS `front_faculty`,`below_subsites`.`front_faculty_id` AS `front_faculty_id`,`below_subsites`.`backend_faculty` AS `backend_faculty`,`below_subsites`.`backend_faculty_id` AS `backend_faculty_id`,`below_subsites`.`comments` AS `comments`,`below_subsites`.`lang` AS `lang`,`below_subsites`.`local_analytics` AS `local_analytics`,`below_subsites`.`local_analytics_use_local_domain` AS `local_analytics_use_local_domain`,`below_subsites`.`global_menu` AS `global_menu`,`below_subsites`.`other_language_link` AS `other_language_link`,`below_subsites`.`own_leftmenu` AS `own_leftmenu`,`below_subsites`.`responsive` AS `responsive`,`below_subsites`.`dont_inherit_local_analytics` AS `dont_inherit_local_analytics`,`below_subsites`.`brandingunit` AS `brandingunit`,`below_subsites`.`webteam_id` AS `webteam_id`,`below_subsites`.`warning_banner` AS `warning_banner`,`below_subsites`.`dont_inherit_warning_banner` AS `dont_inherit_warning_banner`,`below_subsites`.`branding_text1` AS `branding_text1`,`below_subsites`.`branding_text2` AS `branding_text2`,`below_subsite_paths`.`child` AS `subsite_docid`,`below_subsite_paths`.`child_path` AS `subsite_path`,`below_subsite_paths`.`parent` AS `parent_docid`,`below_subsite_paths`.`parent_path` AS `parent_path` from (`path_tree_with_paths` `below_subsite_paths` join `subsites2` `below_subsites` on(`below_subsite_paths`.`child` = `below_subsites`.`root_docid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subsites_with_new_path`
--

/*!50001 DROP TABLE IF EXISTS `subsites_with_new_path`*/;
/*!50001 DROP VIEW IF EXISTS `subsites_with_new_path`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subsites_with_new_path` AS select `subsites2`.`id` AS `id`,`subsites2`.`user_id` AS `user_id`,`subsites2`.`domain` AS `domain`,`subsites2`.`is_https` AS `is_https`,`subsites2`.`old_path` AS `old_path`,`subsites2`.`root_docid` AS `root_docid`,`subsites2`.`title` AS `title`,`subsites2`.`alt_title` AS `alt_title`,`subsites2`.`front_faculty` AS `front_faculty`,`subsites2`.`front_faculty_id` AS `front_faculty_id`,`subsites2`.`backend_faculty` AS `backend_faculty`,`subsites2`.`backend_faculty_id` AS `backend_faculty_id`,`subsites2`.`comments` AS `comments`,`subsites2`.`lang` AS `lang`,`subsites2`.`local_analytics` AS `local_analytics`,`subsites2`.`global_menu` AS `global_menu`,`subsites2`.`other_language_link` AS `other_language_link`,`subsites2`.`own_leftmenu` AS `own_leftmenu`,`subsites2`.`responsive` AS `responsive`,`subsites2`.`dont_inherit_local_analytics` AS `dont_inherit_local_analytics`,`subsites2`.`brandingunit` AS `brandingunit`,`subsites2`.`webteam_id` AS `webteam_id`,convert(coalesce(convert(`docid_path`.`path` using utf8),`subsites2`.`old_path`) using utf8) AS `path` from (`subsites2` left join `docid_path` on(`subsites2`.`root_docid` = `docid_path`.`docid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-25 12:45:24
