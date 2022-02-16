-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2014 at 10:09 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `photography`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `profilePic` varchar(70) NOT NULL,
  `work` varchar(300) NOT NULL,
  `life` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails` (`work`),
  UNIQUE KEY `id_3` (`id`),
  UNIQUE KEY `emails_2` (`work`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=218 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `profilePic`, `work`, `life`, `name`) VALUES
(42, 'images/terry-richardson.jpg', 'Modern straight photography.', '1965', 'Terry Richardson '),
(91, 'images/Ansel_Adams.jpg', 'Nature and wilderness.', '1902-1984', 'Ansel Adams'),
(92, 'images/Helmut_Newton.jpg', ' Black and white fashion photography.', '1920 - 2004', 'Helmut Newton'),
(129, 'images/Diane-Arbus.jpg', ' Being the photographer of freaks.', '1923 - 1973', 'Diane Arbus'),
(132, 'images/Anne_Geddes.jpg', 'Her baby centered photographs.', '1956', 'Anne Geddes'),
(134, 'images/Richard_Avedon.jpg', 'Being America''s leading fashion photographer.', '1923-2004', 'Richard Avedon'),
(157, 'images/DavidLaChapelle.jpg', 'Kitsch pop surrealism.', '1965', 'David LaChapelle'),
(208, 'images/Robert-Capa.jpg', 'Combat photography.', '1913-1954', 'Robert Capa'),
(209, 'images/Lange_dorothea.jpg', 'Depression Era photographs.', '1895-1965', 'Dorothea Lange'),
(210, 'images/edward-weston.jpg', 'Innovative American photographer.', '1886-1958', 'Edward Weston'),
(211, 'images/david-bailey.jpg', 'Swinging 60s bands, models and film stars.', '1938', 'David Bailey'),
(212, 'images/ellen-von-unwerth.jpg', 'Her work with model Claudia Schiffer.', '1954', 'Ellen von Unwerth'),
(213, 'images/cecil-beaton.jpg', 'Costume and stage design.', '1904-1980', 'Cecil Beaton '),
(214, 'images/imogen-cunningham.jpg', 'Botanical photography.', '1883-1976', 'Imogen Cunningham '),
(217, 'images/Paul-Strand.jpg', 'Photography as an art form.', '1890-1976', 'Paul Strand');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
