-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 09, 2013 at 01:54 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zf-tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `artist`, `title`) VALUES
(1, 'Paolo Nutine', 'Sunny Side Up'),
(2, 'Florence + The Machine', 'Lungs'),
(3, 'Massive Attack', 'Heligoland'),
(4, 'Andre Rieu', 'Forever Vienna'),
(5, 'Sade', 'Soldier of Love'),
(6, 'Adeel', 'Pucit''s life');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `image`, `category`) VALUES
(1, 'Product', 'some detail about product', '1.jpg', 2),
(2, 'Product 2', 'some details about the prod', '2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tt_address`
--

CREATE TABLE IF NOT EXISTS `tt_address` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` tinytext NOT NULL,
  `gender` varchar(1) NOT NULL DEFAULT '',
  `first_name` tinytext NOT NULL,
  `middle_name` tinytext NOT NULL,
  `last_name` tinytext NOT NULL,
  `birthday` int(11) NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `address` tinytext NOT NULL,
  `building` varchar(20) NOT NULL DEFAULT '',
  `room` varchar(15) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `city` varchar(80) NOT NULL DEFAULT '',
  `zip` varchar(20) NOT NULL DEFAULT '',
  `region` varchar(100) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  `image` tinyblob NOT NULL,
  `fax` varchar(30) NOT NULL DEFAULT '',
  `deleted` tinyint(3) DEFAULT '0',
  `description` text NOT NULL,
  `addressgroup` int(11) NOT NULL DEFAULT '0',
  `tx_rggooglemap_lng` tinytext NOT NULL,
  `tx_rggooglemap_lat` tinytext NOT NULL,
  `tx_rggooglemap_display` tinyint(3) NOT NULL DEFAULT '0',
  `tx_rggooglemap_cat` int(11) NOT NULL DEFAULT '0',
  `tx_rggooglemap_tab` int(11) NOT NULL DEFAULT '0',
  `tx_rggooglemap_cat2` tinytext NOT NULL,
  `tx_rggooglemap_ce` blob NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pid` (`pid`,`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=966 ;

--
-- Dumping data for table `tt_address`
--

INSERT INTO `tt_address` (`uid`, `pid`, `tstamp`, `hidden`, `name`, `gender`, `first_name`, `middle_name`, `last_name`, `birthday`, `title`, `email`, `phone`, `mobile`, `www`, `address`, `building`, `room`, `company`, `city`, `zip`, `region`, `country`, `image`, `fax`, `deleted`, `description`, `addressgroup`, `tx_rggooglemap_lng`, `tx_rggooglemap_lat`, `tx_rggooglemap_display`, `tx_rggooglemap_cat`, `tx_rggooglemap_tab`, `tx_rggooglemap_cat2`, `tx_rggooglemap_ce`) VALUES
(1, 40, 1255705142, 0, 'Beyer Thomas', 'm', 'Thomas', '', 'Beyer', 0, 'Abteilungsleitung Arbeitssicherheit', 'thomas.beyer@persona.de', '0 23 51 / 950-136', '', 'www.persona.de', 'Freisenbergstraße 31', '', '', '', 'Lüdenscheid', '58513', '', '', 0x39303030323939322e6a7067, '', 0, 'Arbeitssicherheit und Gesundheitsschutz sind fester Bestandteil unseres Qualitätsmanagementsystems. Von diversen Institutionen geprüft und für gut befunden.', 1, '7.6044093', '51.2459846', 0, 0, 0, '', ''),
(2, 40, 1252311532, 0, 'Kapp Michael', 'm', 'Michael', '', 'Kapp', 0, 'Datenschutzbeauftragter', 'michael.kapp@persona.de', '0 23 51 / 950-265', '', '', 'Freisenbergstraße 31', '', '', '', 'Lüdenscheid', '58513', '', '', '', '', 0, 'Als Ansprechpartner zu Fragen rund um den Datenschutz, steht Ihnen unser Datenschutzbeauftragter gerne zur Verfügung.', 1, '7.6044093', '51.2459846', 0, 0, 0, '', ''),
(3, 40, 1268140997, 0, 'Spelsberg Martin', 'm', 'Martin', '', 'Spelsberg', 0, 'Abteilungsleitung Organisation', 'martin.spelsberg@persona.de', '0 23 51 / 950-176', '', 'www.persona.de', 'Freisenbergstraße 31', '', '', '', 'Lüdenscheid', '58513', '', '', '', '', 0, 'Seit 1996 verfügt persona service über ein zertifiziertes Qualitätsmanagementsystem nach DIN EN ISO 9001:2008 für das KompetenzCenter und alle Niederlassungen.\r\n\r\nDer Geltungsbereich umfasst die Erbringung und Entwicklung von Personaldienstleistungen.', 1, '7.6044093', '51.2459846', 0, 0, 0, '', ''),
(916, 196, 1251731356, 0, 'Default-KC ', 'm', '', '', 'Default-KC', 0, '', 'kunde@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(7, 40, 1252311628, 0, 'Wendt Regine', 'f', 'Regine', '', 'Wendt', 0, 'Abteilungsleitung Werbung', 'regine.wendt@persona.de', '0 23 51 / 950-190', '', 'www.persona.de', 'Freisenbergstraße 31\r\n', '', '', '', 'Lüdenscheid', '58513', '', '', 0x39303032343738332e6a7067, '', 0, '- Abteilungsleiterin\r\n- Planung und Entwicklung im Innen- und Außenauftritt\r\n- Projektarbeit\r\n- Veranstaltungen', 1, '7.6044093', '51.2459846', 1, 0, 0, '', ''),
(8, 40, 1334219104, 1, 'Lenschen Carmen', 'f', 'Carmen', '', 'Lenschen', 0, 'Leitung Vertriebsinnendienst', 'carmen.lenschen@persona.de', '0 23 51 / 950-322', '', 'www.persona.de', 'Freisenbergstraße 31', '', '', '', 'Lüdenscheid', '58513', '', '', 0x4c656e736368656e2e6a7067, '', 0, 'Sie interessieren sich für eine überregionale Zusammenarbeit und Betreuung? Dann freut sich unsere Leitung des Vertriebsinnendienstes auf Ihre Kontaktaufnahme.\r\n', 2, '7.6044093', '51.2459846', 1, 0, 0, '', ''),
(9, 40, 1252311568, 0, 'Lange Mareike', 'f', 'Mareike', '', 'Lange', 0, 'Abteilungsleitung Aus- und Weiterbildung', 'mareike.lange@persona.de', '0 23 51 / 950-150', '', 'www.persona.de', 'Freisenbergstraße 31', '', '', '', 'Lüdenscheid', '58513', '', '', 0x39303031323535362e6a7067, '', 0, '** Beschreibung fehlt **', 1, '7.6044093', '51.2459846', 1, 0, 0, '', ''),
(10, 40, 1301319029, 0, 'Kawalleck Anja', 'f', 'Anja', '', 'Kawalleck', 0, 'Ansprechpartner', 'anja.kawalleck@persona.de', '0 23 51 / 950-100', '', 'www.persona.de', 'Freisenbergstraße 31\r\n', '', '', '', 'Lüdenscheid', '58513', '', '', 0x39303030323937362e6a7067, '', 0, 'Als wirtschaftlich gesundes und expandierendes Zeitarbeitsunternehmen ist persona service ein attraktiver Arbeitgeber und eine Karriereplattform.\r\nWir entwickeln Sie weiter!', 0, '7.6044093', '51.2459846', 1, 0, 0, '', ''),
(11, 40, 1252311600, 0, 'Simonis Harald', 'm', 'Harald', '', 'Simonis', 0, 'Leitung Rechtsabteilung', 'harald.simonis@persona.de', '0 23 51 / 950-140', '', 'www.persona.de', 'Freisenbergstraße 31 ', '', '', '', 'Lüdenscheid', '58513', '', '', 0x39303031383033312e6a7067, '', 0, '', 1, '7.6044093', '51.2459846', 1, 0, 0, '', ''),
(12, 40, 1252311518, 0, 'Hollenstein Jennifer', 'f', 'Jennifer', '', 'Hollenstein', 0, 'Abteilungsleitung Business Development', 'jennifer.hollenstein@persona.de', '0 23 51 / 950-383', '', 'www.persona.de', 'Freisenbergstraße 31', '', '', '', 'Lüdenscheid', '58513', '', '', 0x39313030383736322e6a7067, '', 0, '- Ausbau und Weiterentwicklung bestehender Geschäftsmodelle\r\n- Entwicklung neuer Geschäftsmodelle\r\n- Erstellen von neuen kunden-/branchenspezifischen DL-Portfolio\r\n- Erstellung von neuen Vertriebshilfen\r\n- Weiterentwicklung und Umsetzung bestehender Vertriebshilfen\r\n- Weiterentwicklung und Umsetzung bestehender Kunden-/branchenspezifischen DL-Portfolio', 1, '7.6044093', '51.2459846', 1, 0, 0, '', ''),
(13, 40, 1250848836, 0, ' ', 'm', '', '', '', 0, 'Allgemeiner technischer Support', 'portaltechnik@persona.de', '02351 950 500', '', 'www.persona.de', 'Freisenbergstraße 31', '', '', '', 'Lüdenscheid', '58513', '', '', 0x646174656e73636875747a2e6a7067, '', 0, 'Allgemeiner technischer Support.', 1, '7.6044093', '51.2459846', 1, 0, 0, '', ''),
(735, 196, 1251711745, 0, 'infops ', 'm', '', '', 'infops', 0, '', 'infops@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(736, 196, 1251711779, 0, 'inforeferenzen ', 'm', '', '', 'inforeferenzen', 0, '', 'inforeferenzen@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(737, 196, 1251711803, 0, 'infopersonalplanung ', 'm', '', '', 'infopersonalplanung', 0, '', 'infopersonalplanung@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(738, 196, 1251711826, 0, 'infoueberregional ', 'm', '', '', 'infoueberregional', 0, '', 'infoueberregional@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(739, 196, 1251711843, 0, 'infoleasing ', 'm', '', '', 'infoleasing', 0, '', 'infoleasing@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(795, 225, 1338694977, 0, 'Würzburg', '', '', '', 'Würzburg', 0, 'Niederlassung', 'wuerzburg@persona.de', '0931 / 355750', '', '', 'Berliner Platz  6', '', '', '10073-00', 'Würzburg', '97080', '10073', 'DE', '', '0931 / 3557530', 0, '', 5, '9.94207', '49.79912', 1, 0, 0, '1', ''),
(796, 225, 1338694977, 0, 'Waiblingen', '', '', '', 'Waiblingen', 0, 'Niederlassung', 'waiblingen@persona.de', '07151 / 959110', '', '', 'Bahnhofstr  76', '', '', '10089-00', 'Waiblingen', '71332', '10089', 'DE', '', '07151 / 9591130', 0, '', 5, '9.303745', '48.827491', 1, 0, 0, '1', ''),
(917, 225, 1338694980, 0, 'Basel', '', '', '', 'Basel', 0, 'Niederlassung', 'basel@personaservice.com', '61 / 2774600', '', '', 'St. Jakobs-Str.  42', '', '', '30001-00', 'Basel', '4052', '30001', 'CH', '', '61 / 27746-30', 0, '', 5, '7.596835', '47.549032', 1, 0, 0, '1', ''),
(749, 196, 1251712441, 0, 'mitarbeiteranregung ', 'm', '', '', 'mitarbeiteranregung', 0, '', 'mitarbeiteranregung@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(750, 196, 1251712524, 0, 'mitarbeitersonstiges ', 'm', '', '', 'mitarbeitersonstiges', 0, '', 'mitarbeitersonstiges@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(748, 196, 1251712051, 0, 'bewerberstamm ', 'm', '', '', 'bewerberstamm', 0, '', 'bewerberstamm@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(747, 196, 1251712032, 0, 'bewerbervermittlung ', 'm', '', '', 'bewerbervermittlung', 0, '', 'bewerbervermittlung@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(745, 196, 1251711984, 0, 'bewerberinfo ', 'm', '', '', 'bewerberinfo', 0, '', 'bewerberinfo@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(746, 196, 1251712002, 0, 'bewerberleasing ', 'm', '', '', 'bewerberleasing', 0, '', 'bewerberleasing@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(744, 196, 1251711966, 0, 'arbeitnehmerueberlassung ', 'm', '', '', 'arbeitnehmerueberlassung', 0, '', 'arbeitnehmerueberlassung@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(742, 196, 1251711890, 0, 'infoprojekt ', 'm', '', '', 'infoprojekt', 0, '', 'infoprojekt@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(743, 196, 1251712423, 0, 'mitarbeiterinfo ', 'm', '', '', 'mitarbeiterinfo', 0, '', 'mitarbeiterinfo@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(741, 196, 1251711871, 0, 'infoonsite ', 'm', '', '', 'infoonsite', 0, '', 'infoonsite@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(740, 196, 1251711857, 0, 'infovermittlung ', 'm', '', '', 'infovermittlung', 0, '', 'infovermittlung@persona.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(734, 196, 1251448157, 0, 'Wolfgang Löer ', 'm', '', '', 'Wolfgang Löer', 0, 'test', 'loeer@netz-etage.de', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(733, 196, 1251441973, 0, 'Name des Kontaktes ', 'm', '', '', 'Name des Kontaktes', 0, '', 'email@test.test', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 1, 0, 0, '', ''),
(915, 225, 1338694979, 0, 'Annaberg-Buchholz', '', '', '', 'Annaberg-Buchholz', 0, 'Niederlassung', 'annaberg-buchholz@persona.de', '03733 / 672200', '', '', 'Buchholzer Str.  30', '', '', '10131-00', 'Annaberg-Buchholz', '09456', '10131', 'DE', '', '03733 / 6722030', 0, '', 5, '13.00175', '50.57766', 1, 0, 0, '1', ''),
(914, 225, 1338694979, 0, 'Remscheid', '', '', '', 'Remscheid', 0, 'Niederlassung', 'remscheid@persona.de', '02191 / 690470', '', '', 'Blumenstraße  23', '', '', '10145-00', 'Remscheid', '42853', '10145', 'DE', '', '02191 / 6904730', 0, '', 5, '7.19155', '51.179', 1, 0, 0, '1', ''),
(913, 225, 1338694979, 0, 'Eisenach', '', '', '', 'Eisenach', 0, 'Niederlassung', 'eisenach@persona.de', '03691 / 889070', '', '', 'Johannisstr. 8', '', '', '10144-00', 'Eisenach', '99817', '10144', 'DE', '', '03691 / 8890730', 0, '', 5, '10.32314', '50.97385', 1, 0, 0, '1', ''),
(912, 225, 1338694979, 0, 'Worms', '', '', '', 'Worms', 0, 'Niederlassung', 'worms@persona.de', '06241 / 309720', '', '', 'Rathenaustraße  18', '', '', '10142-00', 'Worms', '67547', '10142', 'DE', '', '06241 / 3097230', 0, '', 5, '8.35798', '49.63299', 1, 0, 0, '1', ''),
(911, 225, 1338694979, 0, 'Halberstadt', '', '', '', 'Halberstadt', 0, 'Niederlassung', 'halberstadt@persona.de', '03941 / 678000', '', '', 'Schmiedestraße  12', '', '', '10141-00', 'Halberstadt', '38820', '10141', 'DE', '', '03941 / 6780030', 0, '', 5, '11.04784', '51.89462', 1, 0, 0, '1', ''),
(910, 225, 1338694979, 0, 'Tauberbischofsheim', '', '', '', 'Tauberbischofsheim', 0, 'Niederlassung', 'tauberbischofsheim@persona.de', '09341 / 895940', '', '', 'Pestalozziallee  17', '', '', '10140-00', 'Tauberbischofsheim', '97941', '10140', 'DE', '', '09341 / 8959430', 0, '', 5, '9.66043', '49.62812', 1, 0, 0, '1', ''),
(909, 225, 1338694979, 0, 'Ingolstadt', '', '', '', 'Ingolstadt', 0, 'Niederlassung', 'ingolstadt@persona.de', '0841 / 8814920', '', '', 'Am Stein  8', '', '', '10139-00', 'Ingolstadt', '85049', '10139', 'DE', '', '0841 / 88149230', 0, '', 5, '11.42428', '48.764723', 1, 0, 0, '1', ''),
(908, 225, 1338694979, 0, 'Ahaus', '', '', '', 'Ahaus', 0, 'Niederlassung', 'ahaus@persona.de', '02561 / 978650', '', '', 'Wallstraße  33', '', '', '10130-00', 'Ahaus', '48683', '10130', 'DE', '', '02561 / 9786530', 0, '', 5, '7.00581', '52.0743', 1, 0, 0, '1', ''),
(907, 225, 1338694979, 0, 'Tuttlingen', '', '', '', 'Tuttlingen', 0, 'Niederlassung', 'tuttlingen@persona.de', '07461 / 964870', '', '', 'Königstrasse  6', '', '', '10138-00', 'Tuttlingen', '78532', '10138', 'DE', '', '07461 / 9648730', 0, '', 5, '8.81983', '47.98454', 1, 0, 0, '1', ''),
(906, 225, 1338694979, 0, 'Sinsheim', '', '', '', 'Sinsheim', 0, 'Niederlassung', 'sinsheim@persona.de', '07261 / 73520', '', '', 'Hauptstr.  95', '', '', '10137-00', 'Sinsheim', '74889', '10137', 'DE', '', '07261 / 735230', 0, '', 5, '8.877108', '49.253191', 1, 0, 0, '1', ''),
(903, 225, 1338694979, 0, 'Meschede', '', '', '', 'Meschede', 0, 'Niederlassung', 'meschede@persona.de', '0291 / 908750', '', '', 'Ruhrplatz  2', '', '', '10134-00', 'Meschede', '59872', '10134', 'DE', '', '0291 / 9087530', 0, '', 5, '8.28217', '51.34856', 1, 0, 0, '1', ''),
(904, 225, 1338694979, 0, 'Montabaur', '', '', '', 'Montabaur', 0, 'Niederlassung', 'montabaur@persona.de', '02602 / 947090', '', '', 'Bahnhofsplatz  6', '', '', '10135-00', 'Montabaur', '56410', '10135', 'DE', '', '02602 / 9470930', 0, '', 5, '7.82481', '50.44337', 1, 0, 0, '1', ''),
(905, 225, 1338694979, 0, 'Salzgitter', '', '', '', 'Salzgitter', 0, 'Niederlassung', 'salzgitter@persona.de', '05341 / 189150', '', '', 'Konrad-Adenauer-Straße  18', '', '', '10136-00', 'Salzgitter', '38226', '10136', 'DE', '', '05341 / 1891530', 0, '', 5, '10.33229', '52.15238', 1, 0, 0, '1', ''),
(901, 225, 1338694979, 0, 'Bad Homburg', '', '', '', 'Bad Homburg', 0, 'Niederlassung', 'bad-homburg@persona.de', '06172 / 687660', '', '', 'Louisenstraße  21', '', '', '10132-00', 'Bad Homburg', '61348', '10132', 'DE', '', '06172 / 6876630', 0, '', 5, '8.61354', '50.22819', 1, 0, 0, '1', ''),
(902, 225, 1338694979, 0, 'Lennestadt', '', '', '', 'Lennestadt', 0, 'Niederlassung', 'lennestadt@persona.de', '02723 / 68670', '', '', 'Helmut-Kumpf-Straße  4', '', '', '10133-00', 'Lennestadt', '57368', '10133', 'DE', '', '02723 / 686730', 0, '', 5, '8.07382', '51.10517', 1, 0, 0, '1', ''),
(900, 225, 1338694979, 0, 'Oberhausen', '', '', '', 'Oberhausen', 0, 'Niederlassung', 'oberhausen@persona.de', '0208 / 8109570', '', '', 'Willy-Brandt-Platz  2', '', '', '10129-00', 'Oberhausen', '46045', '10129', 'DE', '', '0208 / 81095730', 0, '', 5, '6.85392', '51.4732', 1, 0, 0, '1', ''),
(899, 225, 1338694978, 0, 'Heidelberg', '', '', '', 'Heidelberg', 0, 'Niederlassung', 'heidelberg@persona.de', '06221 / 872890', '', '', 'Adenauerplatz  6', '', '', '10124-00', 'Heidelberg', '69115', '10124', 'DE', '', '06221 / 8728930', 0, '', 5, '8.69442', '49.40666', 1, 0, 0, '1', ''),
(897, 225, 1338694978, 0, 'Rostock', '', '', '', 'Rostock', 0, 'Niederlassung', 'rostock@persona.de', '0381 / 3756560', '', '', 'Kuhstraße  1', '', '', '10123-00', 'Rostock', '18055', '10123', 'DE', '', '0381 / 37565630', 0, '', 5, '12.13072', '54.08891', 1, 0, 0, '1', ''),
(898, 225, 1338694979, 0, 'Biberach', '', '', '', 'Biberach', 0, 'Niederlassung', 'biberach@persona.de', '07351 / 474900', '', '', 'Waaghausstraße 9-11', '', '', '10128-00', 'Biberach', '88400', '10128', 'DE', '', '07351 / 4749030', 0, '', 5, '9.78993', '48.09832', 1, 0, 0, '1', ''),
(896, 225, 1338694978, 0, 'Bautzen', '', '', '', 'Bautzen', 0, 'Niederlassung', 'bautzen@persona.de', '03591 / 270970', '', '', 'Postplatz  6', '', '', '10122-00', 'Bautzen', '02625', '10122', 'DE', '', '03591 / 2709730', 0, '', 5, '14.42829', '51.17791', 1, 0, 0, '1', ''),
(895, 225, 1338694978, 0, 'Plauen', '', '', '', 'Plauen', 0, 'Niederlassung', 'plauen@persona.de', '03741 / 28960', '', '', 'Forststr. 10', '', '', '10126-00', 'Plauen', '08523', '10126', 'DE', '', '03741 / 289630', 0, '', 5, '12.13174', '50.53984', 1, 0, 0, '1', ''),
(894, 225, 1338694978, 0, 'Memmingen', '', '', '', 'Memmingen', 0, 'Niederlassung', 'memmingen@persona.de', '08331 / 490480', '', '', 'Weinmarkt 12', '', '', '10125-00', 'Memmingen', '87700', '10125', 'DE', '', '08331 / 4904830', 0, '', 5, '10.181144', '47.984642', 1, 0, 0, '1', ''),
(893, 225, 1338694975, 0, 'Marburg', '', '', '', 'Marburg', 0, 'Niederlassung', 'marburg@persona.de', '06421 / 590770', '', '', 'Pilgrimstein  35', '', '', '10020-00', 'Marburg', '35037', '10020', 'DE', '', '06421 / 5907730', 0, '', 5, '8.77268', '50.80827', 1, 0, 0, '1', ''),
(892, 225, 1338694978, 0, 'Schwäbisch Hall', '', '', '', 'Schwäbisch Hall', 0, 'Niederlassung', 'schwaebisch-hall@persona.de', '0791 / 9460990', '', '', 'Marktstraße  10', '', '', '10120-00', 'Schwäbisch Hall', '74523', '10120', 'DE', '', '0791 / 94609930', 0, '', 5, '9.73659', '49.11372', 1, 0, 0, '1', ''),
(891, 225, 1338694978, 0, 'Günzburg', '', '', '', 'Günzburg', 0, 'Niederlassung', 'guenzburg@persona.de', '08221 / 964100', '', '', 'Hofgasse 9', '', '', '10121-00', 'Günzburg', '89312', '10121', 'DE', '', '08221 / 9641030', 0, '', 5, '10.27705', '48.45507', 1, 0, 0, '1', ''),
(890, 225, 1338694978, 0, 'Schwäbisch Gmünd', '', '', '', 'Schwäbisch Gmünd', 0, 'Niederlassung', 'schwaebisch-gmuend@persona.de', '07171 / 104940', '', '', 'Ledergasse  8', '', '', '10118-00', 'Schwäbisch Gmünd', '73525', '10118', 'DE', '', '07171 / 1049430', 0, '', 5, '9.79512', '48.80141', 1, 0, 0, '1', ''),
(889, 225, 1338694978, 0, 'Arnsberg', '', '', '', 'Arnsberg', 0, 'Niederlassung', 'arnsberg@persona.de', '02932 / 475850', '', '', 'Lange Wende 42', '', '', '10117-00', 'Arnsberg', '59755', '10117', 'DE', '', '02932 / 4758530', 0, '', 5, '7.96309', '51.44696', 1, 0, 0, '1', ''),
(888, 225, 1338694978, 0, 'Suhl', '', '', '', 'Suhl', 0, 'Niederlassung', 'suhl@persona.de', '03681 / 45590', '', '', 'Werner-Seelenbinder-Straße  15', '', '', '10112-00', 'Suhl', '98529', '10112', 'DE', '', '03681 / 455930', 0, '', 5, '10.6839', '50.61086', 1, 0, 0, '1', ''),
(887, 225, 1338694978, 0, 'Regensburg', '', '', '', 'Regensburg', 0, 'Niederlassung', 'regensburg@persona.de', '0941 / 640940', '', '', 'St.-Kassians-Platz  5a', '', '', '10113-00', 'Regensburg', '93047', '10113', 'DE', '', '0941 / 6409430', 0, '', 5, '12.09754', '49.01718', 1, 0, 0, '1', ''),
(886, 225, 1338694978, 0, 'Rosenheim', '', '', '', 'Rosenheim', 0, 'Niederlassung', 'rosenheim@persona.de', '08031 / 908900', '', '', 'Max-Josefs-Platz  12', '', '', '10114-00', 'Rosenheim', '83022', '10114', 'DE', '', '08031 / 908930', 0, '', 5, '12.12704', '47.85538', 1, 0, 0, '1', ''),
(884, 225, 1338694978, 0, 'Bremerhaven', '', '', '', 'Bremerhaven', 0, 'Niederlassung', 'bremerhaven@persona.de', '0471 / 926300', '', '', 'Bürgermeister-Smidt-Str. 57', '', '', '10102-00', 'Bremerhaven', '27568', '10102', 'DE', '', '0471 / 9263030', 0, '', 5, '8.57748', '53.54553', 1, 0, 0, '1', ''),
(885, 225, 1338694978, 0, 'Horb', '', '', '', 'Horb', 0, 'Niederlassung', 'horb@persona.de', '07451 / 55690', '', '', 'Schillerstraße  8', '', '', '10119-00', 'Horb', '72160', '10119', 'DE', '', '07451 / 556930', 0, '', 5, '8.69159', '48.44355', 1, 0, 0, '1', ''),
(883, 225, 1338694978, 0, 'Saarbrücken', '', '', '', 'Saarbrücken', 0, 'Niederlassung', 'saarbruecken@persona.de', '0681 / 985700', '', '', 'Betzenstr.  6', '', '', '10111-00', 'Saarbrücken', '66111', '10111', 'DE', '', '0681 / 9857030', 0, '', 5, '6.9956', '49.23481', 1, 0, 0, '1', ''),
(881, 225, 1338694978, 0, 'Korbach', '', '', '', 'Korbach', 0, 'Niederlassung', 'korbach@persona.de', '05631 / 501670', '', '', 'Briloner Landstraße  4 - 6', '', '', '10110-00', 'Korbach', '34497', '10110', 'DE', '', '05631 / 5016730', 0, '', 5, '8.869981', '51.276495', 1, 0, 0, '1', ''),
(882, 225, 1338694978, 0, 'Schweinfurt', '', '', '', 'Schweinfurt', 0, 'Niederlassung', 'schweinfurt@persona.de', '09721 / 474170', '', '', 'Albrecht-Dürer-Platz  4', '', '', '10115-00', 'Schweinfurt', '97421', '10115', 'DE', '', '09721 / 4741730', 0, '', 5, '10.23133', '50.04316', 1, 0, 0, '1', ''),
(880, 225, 1338694977, 0, 'Landshut', '', '', '', 'Landshut', 0, 'Niederlassung', 'landshut@persona.de', '0871 / 962770', '', '', 'Seligenthaler Str.  17', '', '', '10090-00', 'Landshut', '84034', '10090', 'DE', '', '0871 / 9627730', 0, '', 5, '12.14486', '48.5444', 1, 0, 0, '1', ''),
(878, 225, 1338694976, 0, 'Reutlingen', '', '', '', 'Reutlingen', 0, 'Niederlassung', 'reutlingen@persona.de', '07121 / 38820', '', '', 'Unter den Linden  1', '', '', '10058-00', 'Reutlingen', '72762', '10058', 'DE', '', '07121 / 388230', 0, '', 5, '9.20874', '48.49462', 1, 0, 0, '1', ''),
(879, 225, 1338694975, 0, 'Stuttgart', '', '', '', 'Stuttgart', 0, 'Niederlassung', 'stuttgart@persona.de', '0711 / 2229280', '', '', 'Bolzstr.  6', '', '', '10014-00', 'Stuttgart', '70173', '10014', 'DE', '', '0711 / 22292830', 0, '', 5, '9.17847', '48.78011', 1, 0, 0, '1', ''),
(877, 225, 1338694976, 0, 'Darmstadt', '', '', '', 'Darmstadt', 0, 'Niederlassung', 'darmstadt@persona.de', '06151 / 916660', '', '', 'Grafenstr.  27', '', '', '10041-00', 'Darmstadt', '64283', '10041', 'DE', '', '06151 / 9166630', 0, '', 5, '8.649173', '49.871719', 1, 0, 0, '1', ''),
(876, 225, 1338694975, 0, 'Kassel', '', '', '', 'Kassel', 0, 'Niederlassung', 'kassel@persona.de', '0561 / 707160', '', '', 'Dresdener Straße  1', '', '', '10008-00', 'Kassel', '34125', '10008', 'DE', '', '0561 / 7071630', 0, '', 5, '9.51225', '51.31202', 1, 0, 0, '1', ''),
(875, 225, 1338694976, 0, 'Iserlohn', '', '', '', 'Iserlohn', 0, 'Niederlassung', 'iserlohn@persona.de', '02371 / 82600', '', '', 'Theodor-Heuss-Ring 2', '', '', '10045-00', 'Iserlohn', '58636', '10045', 'DE', '', '02371 / 826030', 0, '', 5, '7.696738', '51.376521', 1, 0, 0, '1', ''),
(874, 225, 1338694977, 0, 'Rheine', '', '', '', 'Rheine', 0, 'Niederlassung', 'rheine@persona.de', '05971 / 161420', '', '', 'Münsterstraße  57', '', '', '10081-00', 'Rheine', '48431', '10081', 'DE', '', '05971 / 1614230', 0, '', 5, '7.4422', '52.2759', 1, 0, 0, '1', ''),
(873, 225, 1338694976, 0, 'Berlin - Wilmersdorf', '', '', '', 'Berlin - Wilmersdorf', 0, 'Niederlassung', 'berlin-wilmersdorf@persona.de', '030 / 8630010', '', '', 'Uhlandstr. 88-90', '', '', '10051-00', 'Berlin - Wilmersdorf', '10717', '10051', 'DE', '', '030 / 86300130', 0, '', 5, '13.32231', '52.48852', 1, 0, 0, '1', ''),
(872, 225, 1338694977, 0, 'Norderstedt', '', '', '', 'Norderstedt', 0, 'Niederlassung', 'norderstedt@persona.de', '040 / 5265080', '', '', 'Heidbergstraße  100', '', '', '10066-00', 'Norderstedt', '22846', '10066', 'DE', '', '040 / 52650830', 0, '', 5, '9.994592', '53.705284', 1, 0, 0, '1', ''),
(871, 225, 1338694977, 0, 'Oldenburg', '', '', '', 'Oldenburg', 0, 'Niederlassung', 'oldenburg@persona.de', '0441 / 925380', '', '', 'Achternstr.  21', '', '', '10062-00', 'Oldenburg', '26122', '10062', 'DE', '', '0441 / 9253830', 0, '', 5, '8.2148', '53.1404', 1, 0, 0, '1', ''),
(870, 225, 1338694977, 0, 'Dresden - Altstadt', '', '', '', 'Dresden - Altstadt', 0, 'Niederlassung', 'dresden-altstadt@persona.de', '0351 / 491900', '', '', 'Prager Strasse 10', '', '', '10088-00', 'Dresden - Altstadt', '01069', '10088', 'DE', '', '0351 / 4919030', 0, '', 5, '13.736977', '51.045959', 1, 0, 0, '1', ''),
(869, 225, 1338694976, 0, 'Mainz', '', '', '', 'Mainz', 0, 'Niederlassung', 'mainz@persona.de', '06131 / 964560', '', '', 'Umbach  4', '', '', '10029-00', 'Mainz', '55116', '10029', 'DE', '', '06131 / 9645630', 0, '', 5, '8.26563', '50.00074', 1, 0, 0, '1', ''),
(868, 225, 1338694976, 0, 'Potsdam', '', '', '', 'Potsdam', 0, 'Niederlassung', 'potsdam@persona.de', '0331 / 90999-0', '', '', 'Babelsberger Straße  16', '', '', '10057-00', 'Potsdam', '14473', '10057', 'DE', '', '0331 / 90999-30', 0, '', 5, '13.06704', '52.39257', 1, 0, 0, '1', ''),
(867, 225, 1338694977, 0, 'Zwickau', '', '', '', 'Zwickau', 0, 'Niederlassung', 'zwickau@persona.de', '0375 / 270030', '', '', 'Kornmarkt  8', '', '', '10084-00', 'Zwickau', '08056', '10084', 'DE', '', '0375 / 2700330', 0, '', 5, '12.49619', '50.71635', 1, 0, 0, '1', ''),
(866, 225, 1338694976, 0, 'Freiburg', '', '', '', 'Freiburg', 0, 'Niederlassung', 'freiburg@persona.de', '0761 / 386460', '', '', 'Bismarckallee  7e', '', '', '10046-00', 'Freiburg', '79098', '10046', 'DE', '', '0761 / 3864630', 0, '', 5, '7.84304', '47.99916', 1, 0, 0, '1', ''),
(797, 225, 1338694978, 0, 'Bad Hersfeld', '', '', '', 'Bad Hersfeld', 0, 'Niederlassung', 'bad-hersfeld@persona.de', '06621 / 79930', '', '', 'Neumarkt  11', '', '', '10101-00', 'Bad Hersfeld', '36251', '10101', 'DE', '', '06621 / 799330', 0, '', 5, '9.70684', '50.86602', 1, 0, 0, '1', ''),
(865, 225, 1338694975, 0, 'Mannheim', '', '', '', 'Mannheim', 0, 'Niederlassung', 'mannheim@persona.de', '0621 / 127710', '', '', 'Kaiserring  14-16', '', '', '10016-00', 'Mannheim', '68161', '10016', 'DE', '', '0621 / 1277130', 0, '', 5, '8.473471', '49.483487', 1, 0, 0, '1', ''),
(864, 225, 1338694976, 0, 'Kaiserslautern', '', '', '', 'Kaiserslautern', 0, 'Niederlassung', 'kaiserslautern@persona.de', '0631 / 366120', '', '', 'Stiftsplatz  13', '', '', '10056-00', 'Kaiserslautern', '67655', '10056', 'DE', '', '0631 / 3661230', 0, '', 5, '7.77199', '49.44488', 1, 0, 0, '1', ''),
(798, 225, 1338694978, 0, 'Pforzheim', '', '', '', 'Pforzheim', 0, 'Niederlassung', 'pforzheim@persona.de', '07231 / 566040', '', '', 'Zerrennerstr.  9', '', '', '10107-00', 'Pforzheim', '75172', '10107', 'DE', '', '07231 / 5660430', 0, '', 5, '8.69909', '48.89006', 1, 0, 0, '1', ''),
(863, 225, 1338694976, 0, 'Aachen', '', '', '', 'Aachen', 0, 'Niederlassung', 'aachen@persona.de', '0241 / 470200', '', '', 'Holzgraben  11', '', '', '10035-00', 'Aachen', '52062', '10035', 'DE', '', '0241 / 4702030', 0, '', 5, '6.08743', '50.77532', 1, 0, 0, '1', ''),
(862, 225, 1338694976, 0, 'Bonn', '', '', '', 'Bonn', 0, 'Niederlassung', 'bonn@persona.de', '0228 / 981930', '', '', 'Friedrichstr.  45', '', '', '10027-00', 'Bonn', '53111', '10027', 'DE', '', '0228 / 9819330', 0, '', 5, '7.1024', '50.73674', 1, 0, 0, '1', ''),
(861, 225, 1338694975, 0, 'Hildesheim', '', '', '', 'Hildesheim', 0, 'Niederlassung', 'hildesheim@persona.de', '05121 / 13660', '', '', 'Schuhstrasse  33', '', '', '10024-00', 'Hildesheim', '31134', '10024', 'DE', '', '05121 / 136630', 0, '', 5, '9.951435', '52.151006', 1, 0, 0, '1', ''),
(860, 225, 1338694977, 0, 'Böblingen', '', '', '', 'Böblingen', 0, 'Niederlassung', 'boeblingen@persona.de', '07031 / 623320', '', '', 'Stadtgrabenstraße  19', '', '', '10076-00', 'Böblingen', '71032', '10076', 'DE', '', '07031 / 6233230', 0, '', 5, '9.01143', '48.68635', 1, 0, 0, '1', ''),
(859, 225, 1338694978, 0, 'Gütersloh', '', '', '', 'Gütersloh', 0, 'Niederlassung', 'guetersloh@persona.de', '05241 / 601060', '', '', 'Kolbeplatz  5', '', '', '10096-00', 'Gütersloh', '33330', '10096', 'DE', '', '05241 / 6010630', 0, '', 5, '8.38052', '51.90708', 1, 0, 0, '1', ''),
(858, 225, 1338694978, 0, 'Trier', '', '', '', 'Trier', 0, 'Niederlassung', 'trier@persona.de', '0651 / 145970', '', '', 'Brotstr.  53', '', '', '10106-00', 'Trier', '54290', '10106', 'DE', '', '0651 / 1459730', 0, '', 5, '6.64037', '49.75571', 1, 0, 0, '1', ''),
(799, 225, 1338694978, 0, 'Jena', '', '', '', 'Jena', 0, 'Niederlassung', 'jena@persona.de', '03641 / 23120', '', '', 'Holzmarkt  5', '', '', '10108-00', 'Jena', '07743', '10108', 'DE', '', '03641 / 231230', 0, '', 5, '11.58547', '50.9266', 1, 0, 0, '1', ''),
(800, 225, 1338694978, 0, 'Schwerin', '', '', '', 'Schwerin', 0, 'Niederlassung', 'schwerin@persona.de', '0385 / 592350', '', '', 'Mecklenburgstr.48', '', '', '10109-00', 'Schwerin', '19053', '10109', 'DE', '', '0385 / 5923530', 0, '', 5, '11.411704', '53.625629', 1, 0, 0, '1', ''),
(801, 225, 1338694975, 0, 'Herford', '', '', '', 'Herford', 0, 'Niederlassung', 'herford@persona.de', '0 52 21 / 10 15-0', '', '', 'Hochstraße 53', '', '', '10022-00', 'Herford', '32051', '10022', 'DE', '', '0 52 21 / 10 15-30', 0, '', 5, '8.648954', '52.121904', 1, 0, 0, '1', ''),
(802, 225, 1338694978, 0, 'Cottbus', '', '', '', 'Cottbus', 0, 'Niederlassung', 'cottbus@persona.de', '0355 / 485770', '', '', 'Berliner Strasse  153', '', '', '10099-00', 'Cottbus', '03046', '10099', 'DE', '', '0355 / 4857730', 0, '', 5, '14.3283', '51.7613', 1, 0, 0, '1', ''),
(857, 225, 1338694977, 0, 'Lörrach', '', '', '', 'Lörrach', 0, 'Niederlassung', 'loerrach@persona.de', '07621 / 938380', '', '', 'Senser Platz  2', '', '', '10085-00', 'Lörrach', '79539', '10085', 'DE', '', '07621 / 9383830', 0, '', 5, '7.65978', '47.614', 1, 0, 0, '1', ''),
(856, 225, 1338694975, 0, 'Gelsenkirchen', '', '', '', 'Gelsenkirchen', 0, 'Niederlassung', 'gelsenkirchen@persona.de', '0209 / 178290', '', '', 'Ebertstr. 20', '', '', '10005-00', 'Gelsenkirchen', '45879', '10005', 'DE', '', '0209 / 1782930', 0, '', 5, '7.093672', '51.511009', 1, 0, 0, '1', ''),
(855, 225, 1338694978, 0, 'Chemnitz - Nord', '', '', '', 'Chemnitz - Nord', 0, 'Niederlassung', 'chemnitz-nord@persona.de', '0371 / 450020', '', '', 'Thomas-Mann-Platz 2a', '', '', '10105-00', 'Chemnitz - Nord', '09130', '10105', 'DE', '', '0371 / 4500230', 0, '', 5, '12.93779', '50.84568', 1, 0, 0, '1', ''),
(854, 225, 1338694978, 0, 'Berlin - Mitte', '', '', '', 'Berlin - Mitte', 0, 'Niederlassung', 'berlin-mitte@persona.de', '030 / 2026690', '', '', 'Brückenstraße 5-6a', '', '', '10100-00', 'Berlin - Mitte', '10179', '10100', 'DE', '', '030 / 20266930', 0, '', 5, '13.41773', '52.51306', 1, 0, 0, '1', ''),
(852, 225, 1338694978, 0, 'Unna', '', '', '', 'Unna', 0, 'Niederlassung', 'unna@persona.de', '02303 / 53730', '', '', 'Ostring  31', '', '', '10097-00', 'Unna', '59423', '10097', 'DE', '', '02303 / 537330', 0, '', 5, '7.69363', '51.53664', 1, 0, 0, '1', ''),
(853, 225, 1338694978, 0, 'Troisdorf', '', '', '', 'Troisdorf', 0, 'Niederlassung', 'troisdorf@persona.de', '02241 / 973870', '', '', 'Kölner Strasse  75', '', '', '10104-00', 'Troisdorf', '53840', '10104', 'DE', '', '02241 / 9738730', 0, '', 5, '7.15639', '50.81529', 1, 0, 0, '1', ''),
(851, 225, 1338694977, 0, 'Fulda', '', '', '', 'Fulda', 0, 'Niederlassung', 'fulda@persona.de', '0661 / 928070', '', '', 'Rabanusstraße  31', '', '', '10077-00', 'Fulda', '36037', '10077', 'DE', '', '0661 / 9280730', 0, '', 5, '9.68093', '50.550742', 1, 0, 0, '1', ''),
(850, 225, 1338694977, 0, 'Aschaffenburg', '', '', '', 'Aschaffenburg', 0, 'Niederlassung', 'aschaffenburg@persona.de', '06021 / 386970', '', '', 'Goldbacher Straße  13', '', '', '10069-00', 'Aschaffenburg', '63739', '10069', 'DE', '', '06021 / 3869730', 0, '', 5, '9.1495', '49.97781', 1, 0, 0, '1', ''),
(849, 225, 1338694976, 0, 'Hamm', '', '', '', 'Hamm', 0, 'Niederlassung', 'hamm@persona.de', '02381 / 924940', '', '', 'Bahnhofstraße  5-7', '', '', '10053-00', 'Hamm', '59065', '10053', 'DE', '', '02381 / 9249430', 0, '', 5, '7.81288', '51.67956', 1, 0, 0, '1', ''),
(848, 225, 1338694976, 0, 'Berlin - Marzahn', '', '', '', 'Berlin - Marzahn', 0, 'Niederlassung', 'berlin-marzahn@persona.de', '030 / 5499670', '', '', 'Allee der Kosmonauten 33 f', '', '', '10042-00', 'Berlin - Marzahn', '12681', '10042', 'DE', '', '030 / 54996730', 0, '', 5, '13.530901', '52.525918', 1, 0, 0, '1', ''),
(847, 225, 1338694976, 0, 'Berlin - Neukölln', '', '', '', 'Berlin - Neukölln', 0, 'Niederlassung', 'berlin-neukoelln@persona.de', '030 / 6887490', '', '', 'Karl-Marx-Str. 198', '', '', '10031-00', 'Berlin - Neukölln', '12055', '10031', 'DE', '', '030 / 68874930', 0, '', 5, '13.44088', '52.47261', 1, 0, 0, '1', ''),
(846, 225, 1338694975, 0, 'Ludwigsburg', '', '', '', 'Ludwigsburg', 0, 'Niederlassung', 'ludwigsburg@persona.de', '07141 / 93430', '', '', 'Bahnhofstr.  29', '', '', '10021-00', 'Ludwigsburg', '71638', '10021', 'DE', '', '07141 / 934330', 0, '', 5, '9.186', '48.89209', 1, 0, 0, '1', ''),
(845, 225, 1338694975, 0, 'Bochum', '', '', '', 'Bochum', 0, 'Niederlassung', 'bochum@persona.de', '0234 / 687990', '', '', 'Bongardstr.  21', '', '', '10017-00', 'Bochum', '44787', '10017', 'DE', '', '0234 / 6879930', 0, '', 5, '7.21861', '51.48224', 1, 0, 0, '1', ''),
(844, 225, 1338694975, 0, 'Mönchengladbach', '', '', '', 'Mönchengladbach', 0, 'Niederlassung', 'moenchengladbach@persona.de', '02161 / 814910', '', '', 'Hindenburgstr.  34', '', '', '10011-00', 'Mönchengladbach', '41061', '10011', 'DE', '', '02161 / 8149130', 0, '', 5, '6.43375', '51.19383', 1, 0, 0, '1', ''),
(843, 225, 1338694975, 0, 'Duisburg', '', '', '', 'Duisburg', 0, 'Niederlassung', 'duisburg@persona.de', '02 03 / 3 00 88-0', '', '', 'Friedrich-Wilhelm-Platz 7', '', '', '10003-00', 'Duisburg', '47051', '10003', 'DE', '', '02 03 / 3 00 88-30', 0, '', 5, '6.761265', '51.431756', 1, 0, 0, '1', ''),
(842, 225, 1338694978, 0, 'Singen', '', '', '', 'Singen', 0, 'Niederlassung', 'singen@persona.de', '07731 / 78900', '', '', 'Enge Strasse  6', '', '', '10094-00', 'Singen', '78224', '10094', 'DE', '', '07731 / 789030', 0, '', 5, '8.838376', '47.758992', 1, 0, 0, '1', ''),
(803, 225, 1338694977, 0, 'Erfurt', '', '', '', 'Erfurt', 0, 'Niederlassung', 'erfurt@persona.de', '0361 / 598440', '', '', 'Schmidtstedter Straße 34', '', '', '10071-00', 'Erfurt', '99084', '10071', 'DE', '', '0361 / 5984430', 0, '', 5, '11.040335', '50.974202', 1, 0, 0, '1', ''),
(804, 225, 1338694976, 0, 'Neuss', '', '', '', 'Neuss', 0, 'Niederlassung', 'neuss@persona.de', '02131 / 718870', '', '', 'Hamtorstr.  9', '', '', '10047-00', 'Neuss', '41460', '10047', 'DE', '', '02131 / 7188730', 0, '', 5, '6.69022', '51.19824', 1, 0, 0, '1', ''),
(805, 225, 1338694976, 0, 'Lüdenscheid', '', '', '', 'Lüdenscheid', 0, 'Niederlassung', 'luedenscheid@persona.de', '02351 / 36510', '', '', 'Altenaer Straße 1', '', '', '10033-00', 'Lüdenscheid', '58507', '10033', 'DE', '', '02351 / 365130', 0, '', 5, '7.630508', '51.217069', 1, 0, 0, '1', ''),
(806, 225, 1338694977, 0, 'Düren', '', '', '', 'Düren', 0, 'Niederlassung', 'dueren@persona.de', '02421 / 28490', '', '', 'Schenkelstraße  9', '', '', '10078-00', 'Düren', '52349', '10078', 'DE', '', '02421 / 284930', 0, '', 5, '6.48178', '50.80448', 1, 0, 0, '1', ''),
(807, 225, 1338694976, 0, 'Karlsruhe', '', '', '', 'Karlsruhe', 0, 'Niederlassung', 'karlsruhe@persona.de', '0721 / 931870', '', '', 'Ettlinger-Tor-Platz 1', '', '', '10034-00', 'Karlsruhe', '76133', '10034', 'DE', '', '0721 / 9318730', 0, '', 5, '8.40208', '49.00674', 1, 0, 0, '1', ''),
(841, 225, 1338694977, 0, 'Detmold', '', '', '', 'Detmold', 0, 'Niederlassung', 'detmold@persona.de', '05231 / 602090', '', '', 'Paulinenstraße  21A', '', '', '10092-00', 'Detmold', '32756', '10092', 'DE', '', '05231 / 6020930', 0, '', 5, '8.874064', '51.934918', 1, 0, 0, '1', ''),
(840, 225, 1338694977, 0, 'Rastatt', '', '', '', 'Rastatt', 0, 'Niederlassung', 'rastatt@persona.de', '07222 / 93460', '', '', 'Kaiserstr.  23', '', '', '10093-00', 'Rastatt', '76437', '10093', 'DE', '', '07222 / 934630', 0, '', 5, '8.202983', '48.856894', 1, 0, 0, '1', ''),
(839, 225, 1338694977, 0, 'Landsberg', '', '', '', 'Landsberg', 0, 'Niederlassung', 'landsberg-lech@persona.de', '08191 / 947240', '', '', 'Georg-Hellmair-Platz  169a', '', '', '10091-00', 'Landsberg', '86899', '10091', 'DE', '', '08191 / 9472430', 0, '', 5, '10.877116', '48.050644', 1, 0, 0, '1', ''),
(837, 225, 1338694977, 0, 'Solingen', '', '', '', 'Solingen', 0, 'Niederlassung', 'solingen@persona.de', '0212 / 221190', '', '', 'Konrad-Adenauer-Str. 2', '', '', '10082-00', 'Solingen', '42651', '10082', 'DE', '', '0212 / 2211930', 0, '', 5, '7.08506', '51.17466', 1, 0, 0, '1', ''),
(838, 225, 1338694977, 0, 'Kempten', '', '', '', 'Kempten', 0, 'Niederlassung', 'kempten@persona.de', '0831 / 540700', '', '', 'Salzstrasse  29', '', '', '10086-00', 'Kempten', '87435', '10086', 'DE', '', '0831 / 5407030', 0, '', 5, '10.310417', '47.728105', 1, 0, 0, '1', ''),
(836, 225, 1338694977, 0, 'Villingen', '', '', '', 'Villingen', 0, 'Niederlassung', 'villingen@persona.de', '07721 / 84830', '', '', 'Vöhrenbacher Straße  4/1', '', '', '10079-00', 'Villingen', '78050', '10079', 'DE', '', '07721 / 848330', 0, '', 5, '8.454393', '48.05966', 1, 0, 0, '1', ''),
(835, 225, 1338694977, 0, 'Minden', '', '', '', 'Minden', 0, 'Niederlassung', 'minden@persona.de', '0571 / 828700', '', '', 'Lindenstraße  36', '', '', '10074-00', 'Minden', '32423', '10074', 'DE', '', '0571 / 8287030', 0, '', 5, '8.9152', '52.28528', 1, 0, 0, '1', ''),
(834, 225, 1338694977, 0, 'Göttingen', '', '', '', 'Göttingen', 0, 'Niederlassung', 'goettingen@persona.de', '0551 / 548680', '', '', 'Weender Landstraße  1', '', '', '10070-00', 'Göttingen', '37073', '10070', 'DE', '', '0551 / 5486830', 0, '', 5, '9.93375', '51.53768', 1, 0, 0, '1', ''),
(833, 225, 1338694977, 0, 'Ravensburg', '', '', '', 'Ravensburg', 0, 'Niederlassung', 'ravensburg@persona.de', '0751 / 359400', '', '', 'Grüner-Turm-Straße  4-10', '', '', '10067-00', 'Ravensburg', '88212', '10067', 'DE', '', '0751 / 3594030', 0, '', 5, '9.61427', '47.78399', 1, 0, 0, '1', ''),
(832, 225, 1338694977, 0, 'Magdeburg', '', '', '', 'Magdeburg', 0, 'Niederlassung', 'magdeburg@persona.de', '0391 / 536660', '', '', 'Ernst-Reuter-Allee  13', '', '', '10063-00', 'Magdeburg', '39104', '10063', 'DE', '', '0391 / 5366630', 0, '', 5, '11.63779', '52.13049', 1, 0, 0, '1', ''),
(831, 225, 1338694976, 0, 'Ulm', '', '', '', 'Ulm', 0, 'Niederlassung', 'ulm@persona.de', '0731 / 967850', '', '', 'Bahnhofplatz  4', '', '', '10059-00', 'Ulm', '89073', '10059', 'DE', '', '0731 / 9678530', 0, '', 5, '9.98457', '48.39973', 1, 0, 0, '1', ''),
(830, 225, 1338694976, 0, 'Paderborn', '', '', '', 'Paderborn', 0, 'Niederlassung', 'paderborn@persona.de', '05251 / 10980', '', '', 'Bahnhofstr.  1', '', '', '10054-00', 'Paderborn', '33102', '10054', 'DE', '', '05251 / 109830', 0, '', 5, '8.74591', '51.71496', 1, 0, 0, '1', ''),
(808, 225, 1338694975, 0, 'Hannover', '', '', '', 'Hannover', 0, 'Niederlassung', 'hannover@persona.de', '05 11 / 3 04 20-0', '', '', 'Schmiedestraße 41', '', '', '10007-00', 'Hannover', '30159', '10007', 'DE', '', '05 11 / 3 04 20-30', 0, '', 5, '9.734483', '52.375299', 1, 0, 0, '1', ''),
(809, 225, 1338694975, 0, 'Braunschweig', '', '', '', 'Braunschweig', 0, 'Niederlassung', 'braunschweig@persona.de', '05 31 / 2 43 31-0', '', '', 'Hagenmarkt 8', '', '', '10018-00', 'Braunschweig', '38100', '10018', 'DE', '', '05 31 / 2 43 31-30', 0, '', 5, '10.523848', '52.266892', 1, 0, 0, '1', ''),
(829, 225, 1338694976, 0, 'Köln-Deutz', '', '', '', 'Köln-Deutz', 0, 'Niederlassung', 'koeln-deutz@persona.de', '02 21 / 9 80 32-0', '', '', 'Justinianstraße 16', '', '', '10050-00', 'Köln-Deutz', '50679', '10050', 'DE', '', '02 21 / 9 80 32-30', 0, '', 5, '6.978451', '50.938772', 1, 0, 0, '1', ''),
(828, 225, 1338694976, 0, 'Heilbronn', '', '', '', 'Heilbronn', 0, 'Niederlassung', 'heilbronn@persona.de', '07131 / 78960', '', '', 'Rosengasse  2', '', '', '10048-00', 'Heilbronn', '74072', '10048', 'DE', '', '07131 / 789630', 0, '', 5, '9.21769', '49.1428', 1, 0, 0, '1', ''),
(826, 225, 1338694976, 0, 'Frankfurt', '', '', '', 'Frankfurt', 0, 'Niederlassung', 'frankfurt@persona.de', '069 / 1338700', '', '', 'Berliner Str.  44', '', '', '10039-00', 'Frankfurt', '60311', '10039', 'DE', '', '069 / 13387030', 0, '', 5, '8.680948', '50.111743', 1, 0, 0, '1', ''),
(827, 225, 1338694976, 0, 'Koblenz', '', '', '', 'Koblenz', 0, 'Niederlassung', 'koblenz@persona.de', '0261 / 303720', '', '', 'Löhrstraße  27', '', '', '10043-00', 'Koblenz', '56068', '10043', 'DE', '', '0261 / 3037230', 0, '', 5, '7.5936', '50.3592', 1, 0, 0, '1', ''),
(825, 225, 1338694976, 0, 'Augsburg', '', '', '', 'Augsburg', 0, 'Niederlassung', 'augsburg@persona.de', '0821 / 345900', '', '', 'Moritzplatz  6', '', '', '10036-00', 'Augsburg', '86150', '10036', 'DE', '', '0821 / 3459030', 0, '', 5, '10.89702', '48.36704', 1, 0, 0, '1', ''),
(824, 225, 1338694976, 0, 'Siegen', '', '', '', 'Siegen', 0, 'Niederlassung', 'siegen@persona.de', '0271 / 489300', '', '', 'Bahnhof Weidenau  6', '', '', '10032-00', 'Siegen', '57076', '10032', 'DE', '', '0271 / 4893030', 0, '', 5, '8.02946', '50.89639', 1, 0, 0, '1', ''),
(823, 225, 1338694976, 0, 'Düsseldorf', '', '', '', 'Düsseldorf', 0, 'Niederlassung', 'duesseldorf@persona.de', '0211 / 730910', '', '', 'Kruppstraße  108', '', '', '10030-00', 'Düsseldorf', '40227', '10030', 'DE', '', '0211 / 7309130', 0, '', 5, '6.79515', '51.2102', 1, 0, 0, '1', ''),
(822, 225, 1338694975, 0, 'Offenbach', '', '', '', 'Offenbach', 0, 'Niederlassung', 'offenbach@persona.de', '069 / 8007250', '', '', 'Frankfurter Str.  48', '', '', '10025-00', 'Offenbach', '63065', '10025', 'DE', '', '069 / 80072530', 0, '', 5, '8.75954', '50.10481', 1, 0, 0, '1', ''),
(821, 225, 1338694975, 0, 'Hamburg - Hammerbrook', '', '', '', 'Hamburg - Hammerbrook', 0, 'Niederlassung', 'hamburg@persona.de', '040 / 2378980', '', '', 'Sachsenstr. 5', '', '', '10023-00', 'Hamburg - Hammerbrook', '20097', '10023', 'DE', '', '040 / 23789830', 0, '', 5, '10.02537', '53.54609', 1, 0, 0, '1', ''),
(819, 225, 1338694975, 0, 'Krefeld', '', '', '', 'Krefeld', 0, 'Niederlassung', 'krefeld@persona.de', '02151 / 33780', '', '', 'Hochstr.  25-27', '', '', '10010-00', 'Krefeld', '47798', '10010', 'DE', '', '02151 / 337830', 0, '', 5, '6.56453', '51.32897', 1, 0, 0, '1', ''),
(820, 225, 1338694975, 0, 'München', '', '', '', 'München', 0, 'Niederlassung', 'muenchen@persona.de', '089 / 5490200', '', '', 'Sonnenstr.  8', '', '', '10012-00', 'München', '80331', '10012', 'DE', '', '089 / 54902030', 0, '', 5, '11.56451', '48.1377', 1, 0, 0, '1', ''),
(818, 225, 1338694975, 0, 'Hagen', '', '', '', 'Hagen', 0, 'Niederlassung', 'hagen@persona.de', '02331 / 12370', '', '', 'Bergischer Ring 1', '', '', '10006-00', 'Hagen', '58095', '10006', 'DE', '', '02331 / 123730', 0, '', 5, '7.47646', '51.35581', 1, 0, 0, '1', ''),
(817, 225, 1338694975, 0, 'Essen', '', '', '', 'Essen', 0, 'Niederlassung', 'essen@persona.de', '0201 / 827720', '', '', 'Am Porscheplatz 3-5', '', '', '10004-00', 'Essen', '45127', '10004', 'DE', '', '0201 / 8277230', 0, '', 5, '7.01321', '51.45719', 1, 0, 0, '1', ''),
(816, 225, 1338694975, 0, 'Dortmund', '', '', '', 'Dortmund', 0, 'Niederlassung', 'dortmund@persona.de', '0231 / 5575880', '', '', 'Betenstr. 19', '', '', '10002-00', 'Dortmund', '44137', '10002', 'DE', '', '0231 / 55758830', 0, '', 5, '7.46639', '51.51178', 1, 0, 0, '1', ''),
(815, 225, 1338694978, 0, 'Elmshorn', '', '', '', 'Elmshorn', 0, 'Niederlassung', 'elmshorn@persona.de', '04121 / 788840', '', '', 'Schulstraße  14', '', '', '10127-00', 'Elmshorn', '25335', '10127', 'DE', '', '04121 / 7888430', 0, '', 5, '9.65725', '53.75586', 1, 0, 0, '1', ''),
(810, 225, 1338694975, 0, 'Münster', '', '', '', 'Münster', 0, 'Niederlassung', 'muenster@persona.de', '0251 / 414190', '', '', 'Bahnhofstr.  12', '', '', '10013-00', 'Münster', '48143', '10013', 'DE', '', '0251 / 4141930', 0, '', 5, '7.63415', '51.95821', 1, 0, 0, '1', ''),
(811, 225, 1338694978, 0, 'Kiel', '', '', '', 'Kiel', 0, 'Niederlassung', 'kiel@persona.de', '0431 / 600520', '', '', 'Hopfenstr.  31', '', '', '10103-00', 'Kiel', '24103', '10103', 'DE', '', '0431 / 6005230', 0, '', 5, '10.1281', '54.31557', 1, 0, 0, '1', ''),
(812, 225, 1338694977, 0, 'Offenburg', '', '', '', 'Offenburg', 0, 'Niederlassung', 'offenburg@persona.de', '0781 / 91480', '', '', 'Hauptstrasse  40', '', '', '10061-00', 'Offenburg', '77652', '10061', 'DE', '', '0781 / 914830', 0, '', 5, '7.94397', '48.47384', 1, 0, 0, '1', ''),
(813, 225, 1338694978, 0, 'Gotha', '', '', '', 'Gotha', 0, 'Niederlassung', 'gotha@persona.de', '03621 / 21980', '', '', 'Ekhofplatz  2A', '', '', '10098-00', 'Gotha', '99867', '10098', 'DE', '', '03621 / 219830', 0, '', 5, '10.70739', '50.94953', 1, 0, 0, '1', ''),
(814, 225, 1338694978, 0, 'Plettenberg', '', '', '', 'Plettenberg', 0, 'Niederlassung', 'plettenberg@persona.de', '02391 / 92950', '', '', 'Grünestr. 21', '', '', '10116-00', 'Plettenberg', '58840', '10116', 'DE', '', '02391 / 929530', 0, '', 5, '7.876957', '51.212921', 1, 0, 0, '1', ''),
(794, 225, 1338694977, 0, 'Aalen', '', '', '', 'Aalen', 0, 'Niederlassung', 'aalen@persona.de', '07361 / 96790', '', '', 'Bahnhofstr.  7-9', '', '', '10065-00', 'Aalen', '73430', '10065', 'DE', '', '07361 / 967930', 0, '', 5, '10.09457', '48.838928', 1, 0, 0, '1', ''),
(792, 225, 1338694976, 0, 'Berlin - Wedding', '', '', '', 'Berlin - Wedding', 0, 'Niederlassung', 'berlin-wedding@persona.de', '030 / 4690820', '', '', 'Prinzenallee 89-90', '', '', '10038-00', 'Berlin - Wedding', '13357', '10038', 'DE', '', '030 / 46908230', 0, '', 5, '13.38173', '52.55296', 1, 0, 0, '1', ''),
(793, 225, 1338694976, 0, 'Dresden - Nord', '', '', '', 'Dresden - Nord', 0, 'Niederlassung', 'dresden-nord@persona.de', '0351 / 829120', '', '', 'Königsbrücker Str. 61', '', '', '10049-00', 'Dresden - Nord', '01099', '10049', 'DE', '', '0351 / 8291230', 0, '', 5, '13.7513', '51.072047', 1, 0, 0, '1', ''),
(791, 225, 1338694976, 0, 'Esslingen', '', '', '', 'Esslingen', 0, 'Niederlassung', 'esslingen@persona.de', '0711 / 938817-0', '', '', 'Berkheimer Str.  2', '', '', '10028-00', 'Esslingen', '73734', '10028', 'DE', '', '0711 / 93881730', 0, '', 5, '9.3017', '48.73512', 1, 0, 0, '1', ''),
(790, 225, 1338694975, 0, 'Nürnberg', '', '', '', 'Nürnberg', 0, 'Niederlassung', 'nuernberg@persona.de', '0911 / 279730', '', '', 'Königstr. 56-58', '', '', '10019-00', 'Nürnberg', '90402', '10019', 'DE', '', '0911 / 2797330', 0, '', 5, '11.079367', '49.448898', 1, 0, 0, '1', ''),
(789, 225, 1338694975, 0, 'Wuppertal', '', '', '', 'Wuppertal', 0, 'Niederlassung', 'wuppertal@persona.de', '0202 / 245740', '', '', 'Schwanenstraße  54', '', '', '10015-00', 'Wuppertal', '42103', '10015', 'DE', '', '0202 / 2457430', 0, '', 5, '7.14643', '51.2577', 1, 0, 0, '1', ''),
(788, 225, 1338694975, 0, 'Köln - Sülz', '', '', '', 'Köln - Sülz', 0, 'Niederlassung', 'koeln-suelz@persona.de', '0221 / 420590', '', '', 'Paul-Schallück-Str. 6', '', '', '10009-00', 'Köln - Sülz', '50939', '10009', 'DE', '', '0221 / 4205930', 0, '', 5, '6.934527', '50.921149', 1, 0, 0, '1', ''),
(786, 225, 1338694978, 0, 'Leipzig - Mitte', '', '', '', 'Leipzig - Mitte', 0, 'Niederlassung', 'leipzig-mitte@persona.de', '0341 / 124670', '', '', 'Petersstraße. 39/41', '', '', '10095-00', 'Leipzig - Mitte', '04109', '10095', 'DE', '', '0341 / 1246730', 0, '', 5, '12.37551', '51.33735', 1, 0, 0, '1', ''),
(787, 225, 1338694975, 0, 'Bielefeld', '', '', '', 'Bielefeld', 0, 'Niederlassung', 'bielefeld@persona.de', '0521 / 967040', '', '', 'Bahnhofstraße 46', '', '', '10001-00', 'Bielefeld', '33602', '10001', 'DE', '', '0521 / 9670430', 0, '', 5, '8.53222', '52.02797', 1, 0, 0, '1', ''),
(785, 225, 1338694977, 0, 'Gummersbach', '', '', '', 'Gummersbach', 0, 'Niederlassung', 'gummersbach@persona.de', '02261 / 80800', '', '', 'Seßmarstr.  17', '', '', '10087-00', 'Gummersbach', '51643', '10087', 'DE', '', '02261 / 808030', 0, '', 5, '7.57176', '51.02079', 1, 0, 0, '1', ''),
(784, 225, 1338694977, 0, 'Gera', '', '', '', 'Gera', 0, 'Niederlassung', 'gera@persona.de', '0365 / 833440', '', '', 'Johannisstrasse  4', '', '', '10083-00', 'Gera', '07545', '10083', 'DE', '', '0365 / 8334430', 0, '', 5, '12.08199', '50.8768', 1, 0, 0, '1', ''),
(783, 225, 1338694977, 0, 'Recklinghausen', '', '', '', 'Recklinghausen', 0, 'Niederlassung', 'recklinghausen@persona.de', '02361 / 91430', '', '', 'Löhrhof  2', '', '', '10080-00', 'Recklinghausen', '45657', '10080', 'DE', '', '02361 / 914330', 0, '', 5, '7.19947', '51.61368', 1, 0, 0, '1', ''),
(782, 225, 1338694977, 0, 'Lübeck', '', '', '', 'Lübeck', 0, 'Niederlassung', 'luebeck@persona.de', '0451 / 871830', '', '', 'Werner-Kock-Straße 4', '', '', '10075-00', 'Lübeck', '23554', '10075', 'DE', '', '0451 / 8718330', 0, '', 5, '10.672858', '53.867526', 1, 0, 0, '1', ''),
(781, 225, 1338694977, 0, 'Hamburg - Harburg', '', '', '', 'Hamburg - Harburg', 0, 'Niederlassung', 'hamburg-harburg@persona.de', '040 / 7662600', '', '', 'c/o PhoenixCenter Moorstraße 6', '', '', '10072-00', 'Hamburg - Harburg', '21073', '10072', 'DE', '', '040 / 76626030', 0, '', 5, '9.98703', '53.45663', 1, 0, 0, '1', ''),
(780, 225, 1338694977, 0, 'Gießen', '', '', '', 'Gießen', 0, 'Niederlassung', 'giessen@persona.de', '0641 / 932910', '', '', 'Goethestraße  7', '', '', '10068-00', 'Gießen', '35390', '10068', 'DE', '', '0641 / 9329130', 0, '', 5, '8.67368', '50.58353', 1, 0, 0, '1', ''),
(779, 225, 1338694977, 0, 'Chemnitz', '', '', '', 'Chemnitz', 0, 'Niederlassung', 'chemnitz-mitte@persona.de', '0371 / 382930', '', '', 'Falkeplatz 2', '', '', '10064-00', 'Chemnitz', '09112', '10064', 'DE', '', '0371 / 3829330', 0, '', 5, '12.916731', '50.829837', 1, 0, 0, '1', ''),
(778, 225, 1338694977, 0, 'Halle', '', '', '', 'Halle', 0, 'Niederlassung', 'halle@persona.de', '0345 / 233520', '', '', 'Große Ulrichstr. 19-21', '', '', '10060-00', 'Halle', '06108', '10060', 'DE', '', '0345 / 2335230', 0, '', 5, '11.96754', '51.48557', 1, 0, 0, '1', ''),
(777, 225, 1338694976, 0, 'Bocholt', '', '', '', 'Bocholt', 0, 'Niederlassung', 'bocholt@persona.de', '02871 / 27650', '', '', 'Osterstraße  40', '', '', '10055-00', 'Bocholt', '46397', '10055', 'DE', '', '02871 / 276530', 0, '', 5, '6.61817', '51.83826', 1, 0, 0, '1', ''),
(776, 225, 1338694976, 0, 'Erlangen', '', '', '', 'Erlangen', 0, 'Niederlassung', 'erlangen@persona.de', '09131 / 812670', '', '', 'Nürnberger Str.  67', '', '', '10052-00', 'Erlangen', '91052', '10052', 'DE', '', '09131 / 8126730', 0, '', 5, '11.00657', '49.58918', 1, 0, 0, '1', ''),
(774, 225, 1338694976, 0, 'Leipzig - Nord', '', '', '', 'Leipzig - Nord', 0, 'Niederlassung', 'leipzig-nord@persona.de', '0341 / 982560', '', '', 'Nordstr. 1/EckeTröndlinring', '', '', '10040-00', 'Leipzig - Nord', '04105', '10040', 'DE', '', '0341 / 9825630', 0, '', 5, '12.361006', '51.349258', 1, 0, 0, '1', ''),
(775, 225, 1338694976, 0, 'Osnabrück', '', '', '', 'Osnabrück', 0, 'Niederlassung', 'osnabrueck@persona.de', '0541 / 350940', '', '', 'Jürgensort  10', '', '', '10044-00', 'Osnabrück', '49074', '10044', 'DE', '', '0541 / 3509430', 0, '', 5, '8.04546', '52.27419', 1, 0, 0, '1', '');
INSERT INTO `tt_address` (`uid`, `pid`, `tstamp`, `hidden`, `name`, `gender`, `first_name`, `middle_name`, `last_name`, `birthday`, `title`, `email`, `phone`, `mobile`, `www`, `address`, `building`, `room`, `company`, `city`, `zip`, `region`, `country`, `image`, `fax`, `deleted`, `description`, `addressgroup`, `tx_rggooglemap_lng`, `tx_rggooglemap_lat`, `tx_rggooglemap_display`, `tx_rggooglemap_cat`, `tx_rggooglemap_tab`, `tx_rggooglemap_cat2`, `tx_rggooglemap_ce`) VALUES
(772, 225, 1338694976, 0, 'Bremen', '', '', '', 'Bremen', 0, 'Niederlassung', 'bremen@persona.de', '0421 / 165985', '', '', 'Birkenstr.  47/48', '', '', '10026-00', 'Bremen', '28195', '10026', 'DE', '', '0421 / 1659880', 0, '', 5, '8.80877', '53.08065', 1, 0, 0, '1', ''),
(773, 225, 1338694976, 0, 'Göppingen', '', '', '', 'Göppingen', 0, 'Niederlassung', 'goeppingen@persona.de', '07161 / 960690', '', '', 'Marktplatz  2', '', '', '10037-00', 'Göppingen', '73033', '10037', 'DE', '', '07161 / 9606930', 0, '', 5, '9.65462', '48.70332', 1, 0, 0, '1', ''),
(918, 40, 1258635264, 0, 'Klimeck Anja', 'f', 'Anja', '', 'Klimeck', 0, 'Business Development', 'anja.klimeck@persona.de', '0 23 51 / 950-118', '', 'www.persona.de', 'Freisenbergstraße 31', '', '', '', 'Lüdenscheid', '58513', '', '', 0x39303030363938382e6a7067, '', 0, 'Im Rahmen unserer Serviceleistung Outsourcing übernehmen wir für unsere Kunden projektbezogene Aufgabenstellungen, unternehmerische Aufgabenbereiche und/oder Teilprozesse. Gerne erarbeiten wir mit Ihnen gemeinsam ein kundenindividuelles Konzept.', 1, '7.6044093', '51.2459846', 1, 0, 0, '', ''),
(920, 225, 1338694979, 0, 'Leonberg', '', '', '', 'Leonberg', 0, 'Niederlassung', 'leonberg@persona.de', '07152 / 335510', '', '', 'Römerstraße 75', '', '', '10146-00', 'Leonberg', '71229', '10146', 'DE', '', '07152 / 3355130', 0, '', 5, '9.010563', '48.796588', 1, 0, 0, '1', ''),
(921, 225, 1338694979, 0, 'Ludwigsfelde', '', '', '', 'Ludwigsfelde', 0, 'Niederlassung', 'ludwigsfelde@persona.de', '03378 / 206520', '', '', 'Albert-Tanneur-Straße 25', '', '', '10147-00', 'Ludwigsfelde', '14974', '10147', 'DE', '', '03378 / 2065230', 0, '', 5, '13.262335', '52.300954', 1, 0, 0, '1', ''),
(922, 225, 1338694979, 0, 'Weilheim', '', '', '', 'Weilheim', 0, 'Niederlassung', 'weilheim@persona.de', '0881 / 9247200', '', '', 'Schmiedstraße 15', '', '', '10148-00', 'Weilheim', '82362', '10148', 'DE', '', '0881 / 92472030', 0, '', 5, '11.141786', '47.840367', 1, 0, 0, '1', ''),
(923, 225, 1338694979, 0, 'Witten', '', '', '', 'Witten', 0, 'Niederlassung', 'witten@persona.de', '02302 / 914460', '', '', 'Marktstraße 2', '', '', '10149-00', 'Witten', '58452', '10149', 'DE', '', '02302 / 9144630', 0, '', 5, '7.33542', '51.43949', 1, 0, 0, '1', ''),
(924, 225, 1338694979, 0, 'Bad Säckingen', '', '', '', 'Bad Säckingen', 0, 'Niederlassung', 'bad-saeckingen@persona.de', '07761 / 553530', '', '', 'Schützenstraße 14-18', '', '', '10150-00', 'Bad Säckingen', '79713', '10150', 'DE', '', '07761 / 5535330', 0, '', 5, '7.947203', '47.553209', 1, 0, 0, '1', ''),
(930, 225, 1338694979, 0, 'Dessau', '', '', '', 'Dessau', 0, 'Niederlassung', 'dessau@persona.de', '0340 / 2549430', '', '', 'Ratsgasse  8', '', '', '10143-00', 'Dessau', '06844', '10143', 'DE', '', '0340 / 25494330', 0, '', 5, '12.24599', '51.834546', 1, 0, 0, '1', ''),
(931, 225, 1338694979, 0, 'Brandenburg', '', '', '', 'Brandenburg', 0, 'Niederlassung', 'brandenburg@persona.de', '03381 / 213200', '', '', 'Deutsches Dorf  45-47', '', '', '10151-00', 'Brandenburg', '14776', '10151', 'DE', '', '03381 / 2132030', 0, '', 5, '12.56624', '52.40846', 1, 0, 0, '1', ''),
(933, 225, 1338694979, 0, 'Geretsried', '', '', '', 'Geretsried', 0, 'Niederlassung', 'geretsried@persona.de', '08171 / 418290', '', '', 'Egerlandstraße  80', '', '', '10155-00', 'Geretsried', '82538', '10155', 'DE', '', '08171 / 4182930', 0, '', 5, '11.46549', '47.87645', 1, 0, 0, '1', ''),
(934, 225, 1338694979, 0, 'Fürstenfeldbruck', '', '', '', 'Fürstenfeldbruck', 0, 'Niederlassung', 'fuerstenfeldbruck@persona.de', '08141 / 527140', '', '', 'Hauptstraße  1A', '', '', '10154-00', 'Fürstenfeldbruck', '82256', '10154', 'DE', '', '08141 / 5271430', 0, '', 5, '11.25549', '48.177268', 1, 0, 0, '1', ''),
(936, 225, 1338694979, 0, 'Bamberg', '', '', '', 'Bamberg', 0, 'Niederlassung', 'bamberg@persona.de', '0951 / 5099530', '', '', 'Augustenstraße  2', '', '', '10152-00', 'Bamberg', '96047', '10152', 'DE', '', '0951 / 50995330', 0, '', 5, '10.89759', '49.89115', 1, 0, 0, '1', ''),
(937, 225, 1338694979, 0, 'Ansbach', '', '', '', 'Ansbach', 0, 'Niederlassung', 'ansbach@persona.de', '0981 / 9722330', '', '', 'Reitbahn  3', '', '', '10156-00', 'Ansbach', '91522', '10156', 'DE', '', '0981 / 97223330', 0, '', 5, '10.57415', '49.30322', 1, 0, 0, '1', ''),
(938, 225, 1338694979, 0, 'Backnang', '', '', '', 'Backnang', 0, 'Niederlassung', 'backnang@persona.de', '07191 / 903310', '', '', 'Im Biegel 7b', '', '', '10158-00', 'Backnang', '71522', '10158', 'DE', '', '07191 / 9033130', 0, '', 5, '9.42986', '48.94839', 1, 0, 0, '1', ''),
(939, 225, 1338694979, 0, 'Hanau', '', '', '', 'Hanau', 0, 'Niederlassung', 'hanau@persona.de', '06181 / 42339-0', '', '', 'Rosenstraße 2', '', '', '10159-00', 'Hanau', '63450', '10159', 'DE', '', '06181 / 42339-30', 0, '', 5, '8.91938', '50.13262', 1, 0, 0, '1', ''),
(940, 225, 1338694979, 0, 'Kaufbeuren', '', '', '', 'Kaufbeuren', 0, 'Niederlassung', 'kaufbeuren@persona.de', '08341 / 955680', '', '', 'Schmiedgasse 23', '', '', '10160-00', 'Kaufbeuren', '87600', '10160', 'DE', '', '08341 / 9556830', 0, '', 5, '10.61792', '47.88156', 1, 0, 0, '1', ''),
(941, 225, 1338694979, 0, 'Lippstadt', '', '', '', 'Lippstadt', 0, 'Niederlassung', 'lippstadt@persona.de', '02941 / 286870', '', '', 'Lange Str. 57/EckeKönigsau', '', '', '10161-00', 'Lippstadt', '59555', '10161', 'DE', '', '02941 / 2868730', 0, '', 5, '8.344439', '51.688223', 1, 0, 0, '1', ''),
(942, 225, 1338694979, 0, 'Moers', '', '', '', 'Moers', 0, 'Niederlassung', 'moers@persona.de', '02841 / 886010', '', '', 'Homberger Str. 68', '', '', '10162-00', 'Moers', '47441', '10162', 'DE', '', '02841 / 8860130', 0, '', 5, '6.636385', '51.449918', 1, 0, 0, '1', ''),
(944, 225, 1338694980, 0, 'Straubing', '', '', '', 'Straubing', 0, 'Niederlassung', 'straubing@persona.de', '09421 / 310360', '', '', 'Ludwigsplatz 35', '', '', '10163-00', 'Straubing', '94315', '10163', 'DE', '', '09421 / 3103630', 0, '', 5, '12.571309', '48.882055', 1, 0, 0, '1', ''),
(945, 225, 1338694979, 0, 'Idar-Oberstein', '', '', '', 'Idar-Oberstein', 0, 'Niederlassung', 'idar-oberstein@persona.de', '06781 / 568570', '', '', 'Hauptstraße  400', '', '', '10153-00', 'Idar-Oberstein', '55743', '10153', 'DE', '', '06781 / 5685730', 0, '', 5, '7.32668', '49.70404', 1, 0, 0, '1', ''),
(946, 225, 1338694979, 0, 'Albstadt', '', '', '', 'Albstadt', 0, 'Niederlassung', 'albstadt@persona.de', '07431 / 957350', '', '', 'Marktstraße  30', '', '', '10157-00', 'Albstadt', '72458', '10157', 'DE', '', '07431 / 9573530', 0, '', 5, '9.02639', '48.21305', 1, 0, 0, '1', ''),
(947, 225, 1338694980, 0, 'Neumünster', '', '', '', 'Neumünster', 0, 'Niederlassung', 'neumuenster@persona.de', '04321 / 853680', '', '', 'Bahnhofstraße 49', '', '', '10164-00', 'Neumünster', '24534', '10164', 'DE', '', '04321 / 8536830', 0, '', 5, '9.980949', '54.072599', 1, 0, 0, '1', ''),
(948, 40, 1338562512, 0, 'Köhler Jana', 'f', 'Jana', '', 'Köhler', 0, 'Personalabteilung', 'jana.koehler@persona.de', '02351 950-286', '', '', 'Freisenbergstr. 31', '', '', '', 'Lüdenscheid', '58513', '', '', 0x39303031313739372e6a7067, '', 0, '', 0, '7.6048100', '51.2454000', 1, 0, 0, '', ''),
(949, 40, 1338562542, 0, 'Jung Oliver', 'm', 'Oliver', '', 'Jung', 0, 'Personalabteilung', 'oliver.jung@persona.de', '02351 950-285', '', '', 'Freisenbergstr. 31', '', '', '', 'Lüdenscheid', '58513', '', '', 0x39303030343639352e6a7067, '', 0, '', 0, '7.6048100', '51.2454000', 1, 0, 0, '', ''),
(950, 225, 1338694980, 0, 'Passau', '', '', '', 'Passau', 0, 'Niederlassung', 'passau@persona.de', '0851 / 4907710', '', '', 'Nikolastr. 2', '', '', '10165-00', 'Passau', '94032', '10165', 'DE', '', '0851 / 49077130', 0, '', 5, '13.45761', '48.5732', 1, 0, 0, '1', ''),
(951, 225, 1338694980, 0, 'Riesa', '', '', '', 'Riesa', 0, 'Niederlassung', 'riesa@persona.de', '03525 / 512880', '', '', 'Alexander-Puschkin-Platz  4d', '', '', '10166-00', 'Riesa', '01587', '10166', 'DE', '', '03525 / 5128830', 0, '', 5, '13.29893', '51.3049', 1, 0, 0, '1', ''),
(952, 225, 1338694980, 0, 'Freiberg', '', '', '', 'Freiberg', 0, 'Niederlassung', 'freiberg@persona.de', '03731 / 207720', '', '', 'Erbische Straße  14', '', '', '10167-00', 'Freiberg', '09599', '10167', 'DE', '', '03731 / 2077230', 0, '', 5, '13.34459', '50.91651', 1, 0, 0, '1', ''),
(953, 225, 1338694980, 0, 'Mühlacker', '', '', '', 'Mühlacker', 0, 'Niederlassung', 'muehlacker@persona.de', '07041 / 815110', '', '', 'Bahnhofstr. 26-28', '', '', '10168-00', 'Mühlacker', '75417', '10168', 'DE', '', '07041 / 8151130', 0, '', 5, '8.84004', '48.948', 1, 0, 0, '1', ''),
(954, 225, 1338694980, 0, 'Aarau', '', '', '', 'Aarau', 0, 'Niederlassung', 'aarau@personaservice.com', '0041 62 / 8366700', '', '', 'Hintere Bahnhofstrasse 81', '', '', '30002-00', 'Aarau', '5000', '30002', 'CH', '', '0041 62 / 83667-30', 0, '', 5, '8.05546', '47.391593', 1, 0, 0, '1', ''),
(955, 225, 1338694980, 0, 'Heilbad Heiligenstadt', '', '', '', 'Heilbad Heiligenstadt', 0, 'Niederlassung', 'heilbad-heiligenstadt@persona.de', '03606 / 607110', '', '', 'Holzweg 7', '', '', '10169-00', 'Heilbad Heiligenstadt', '37308', '10169', 'DE', '', '03606 / 6071130', 0, '', 5, '10.13115', '51.37466', 1, 0, 0, '1', ''),
(956, 225, 1338694980, 0, 'Frankfurt', '', '', '', 'Frankfurt', 0, 'Niederlassung', 'frankfurt-oder@persona.de', '0335 / 5210080', '', '', 'Logenstr. 8', '', '', '10170-00', 'Frankfurt', '15230', '10170', 'DE', '', '0335 / 52100830', 0, '', 5, '14.55184', '52.34212', 1, 0, 0, '1', ''),
(958, 40, 1334910265, 0, 'Ittensohn Katrin', 'f', 'Katrin', '', 'Ittensohn', 0, 'Vertriebsleiterin Deutschland', 'katrin.ittensohn@persona.de', '0 23 51  / 950-183', '', '', 'Freisenbergstraße 31', '', '', '', 'Lüdenscheid', '58513', '', '', '', '', 0, 'Sie interessieren sich für eine überregionale Zusammenarbeit und Betreuung? Dann freut sich unsere Leitung des Vertriebsinnendienstes auf Ihre Kontaktaufnahme.\r\n\r\n\r\n', 1, '7.6048100', '51.2454000', 1, 0, 0, '', ''),
(959, 40, 1338562489, 0, 'Urbas Kathrin', 'f', 'Kathrin', '', 'Urbas', 0, '', 'kathrin.urbas@persona.de', '02351 950-108', '', '', 'Freisenbergstr. 31', '', '', '', 'Lüdenscheid', '58513', '', '', 0x6b61746872696e5f75726261732e6a7067, '', 0, '', 1, '', '', 1, 0, 0, '', ''),
(960, 225, 1338694980, 0, 'Nordhausen', '', '', '', 'Nordhausen', 0, 'Niederlassung', 'Nordhausen@persona.de', '03631 / 479320', '', '', 'Uferstr. 2', '', '', '10171-00', 'Nordhausen', '99734', '10171', 'DE', '', '03631 / 4793230', 0, '', 5, '10.78823', '51.49652', 1, 0, 0, '1', ''),
(961, 225, 1338694980, 0, 'Bruchsal', '', '', '', 'Bruchsal', 0, 'Niederlassung', 'bruchsal@persona.de', '07251 / 308330', '', '', 'Bahnhofstraße 2', '', '', '10172-00', 'Bruchsal', '76646', '10172', 'DE', '', '07251 / 3083330', 0, '', 5, '8.594072', '49.125705', 1, 0, 0, '1', ''),
(962, 225, 1338694980, 0, 'Lüneburg', '', '', '', 'Lüneburg', 0, 'Niederlassung', 'lueneburg@persona.de', '02351 / 9500', '', '', 'Vor dem Bardowicker Tore 49', '', '', '10174-00', 'Lüneburg', '21339', '10174', 'DE', '', '02351 / 9500', 0, '', 5, '10.408783', '53.259415', 1, 0, 0, '1', ''),
(963, 225, 1338694980, 0, 'Lahr', '', '', '', 'Lahr', 0, 'Niederlassung', 'Lahr@persona.de', '07821 / 954970', '', '', 'Lotzbeckstr. 12', '', '', '10177-00', 'Lahr', '77933', '10177', 'DE', '', '07821 / 9549730', 0, '', 5, '7.867763', '48.339355', 1, 0, 0, '1', ''),
(964, 225, 1338694980, 0, 'Oranienburg', '', '', '', 'Oranienburg', 0, 'Niederlassung', 'Oranienburg@persona.de', '03301 / 201870', '', '', 'Schulstraße 3', '', '', '10178-00', 'Oranienburg', '16515', '10178', 'DE', '', '03301 / 2018730', 0, '', 5, '13.24638', '52.75494', 1, 0, 0, '1', ''),
(965, 225, 1338694980, 0, 'Greifswald', '', '', '', 'Greifswald', 0, 'Niederlassung', 'Greifswald@persona.de', '03834 / 889610', '', '', 'Markt 20', '', '', '10179-00', 'Greifswald', '17489', '10179', 'DE', '', '03834 / 8896130', 0, '', 5, '13.38067', '54.09582', 1, 0, 0, '1', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
