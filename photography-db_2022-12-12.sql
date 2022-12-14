-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2021 at 09:40 PM
-- Server version: 8.0.23
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photography`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `profilePic` varchar(70) NOT NULL,
  `work` varchar(300) NOT NULL,
  `life` varchar(20) NOT NULL,
  `artist` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `profilePic`, `work`, `life`, `artist`) VALUES
(42, 'images/terry-richardson.jpg', 'Modern straight photography.', '1965', 'Terry Richardson '),
(91, 'images/ansel-adams.jpg', 'Nature and wilderness.', '1902-1984', 'Ansel Adams'),
(92, 'images/helmut-newton.jpg', ' Black and white fashion photography.', '1920 - 2004', 'Helmut Newton'),
(129, 'images/diane-arbus.jpg', ' Being the photographer of freaks.', '1923 - 1973', 'Diane Arbus'),
(132, 'images/anne-geddes.jpg', 'Her baby centered photographs.', '1956', 'Anne Geddes'),
(134, 'images/richard-avedon.jpg', 'Being America\'s leading fashion photographer.', '1923-2004', 'Richard Avedon'),
(157, 'images/david-la-chapelle.jpg', 'Kitsch pop surrealism.', '1965', 'David LaChapelle'),
(208, 'images/robert-capa.jpg', 'Combat photography.', '1913-1954', 'Robert Capa'),
(209, 'images/lange-dorothea.jpg', 'Depression Era photographs.', '1895-1965', 'Dorothea Lange'),
(210, 'images/edward-weston.jpg', 'Innovative American photographer.', '1886-1958', 'Edward Weston'),
(211, 'images/david-bailey.jpg', 'Swinging 60s bands, models and film stars.', '1938', 'David Bailey'),
(212, 'images/ellen-von-unwerth.jpg', 'Her work with model Claudia Schiffer.', '1954', 'Ellen von Unwerth'),
(213, 'images/cecil-beaton.jpg', 'Costume and stage design.', '1904-1980', 'Cecil Beaton '),
(214, 'images/imogen-cunningham.jpg', 'Botanical photography.', '1883-1976', 'Imogen Cunningham '),
(217, 'images/paul-strand.jpg', 'Photography as an art form.', '1890-1976', 'Paul Strand');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails` (`work`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD UNIQUE KEY `emails_2` (`work`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
