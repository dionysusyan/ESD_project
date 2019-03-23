-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 14, 2019 at 06:42 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--
CREATE DATABASE IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `movies`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `title` varchar(64) NOT NULL,
  `mid` varchar(13) NOT NULL,
  `availability` int(11) NOT NULL,
  `rating` varchar(64) NOT NULL,
  `synopsis`varchar(512) NOT NULL,
  `language` varchar(64) NOT NULL,
  `runtime` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  PRIMARY KEY (`mid`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
DROP TABLE IF EXISTS `cinemas`;
CREATE TABLE IF NOT EXISTS `cinemas` (
  `cid` varchar(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `price` float(13) NOT NULL,
  PRIMARY KEY (`cid`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `showtimes`;
CREATE TABLE IF NOT EXISTS `showtimes` (
  `sid` varchar(13) NOT NULL,
  `mid` varchar(13) NOT NULL,
  `cid` varchar(13) NOT NULL,
  `discount_id` varchar(13) NOT NULL,
  `time` time(0) NOT NULL,
  PRIMARY KEY (`sid`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`title`, `mid`, `availability`, `rating`, `synopsis`, `language`, `runtime`, `img`) VALUES
('How to train your dragon', '1', 50, 'PG', 'Dreamworks releases How to train your dragon', 'English', 100, 'https://i.kinja-img.com/gawker-media/image/upload/s--Jibfi7zN--/c_scale,f_auto,fl_progressive,q_80,w_800/agxklfu3ad3snjx0zao4.png'),
('How to train your dragon: The hidden world', '2', 50, 'PG', 'Follow dragon on his adventures to a new unexplore world', 'English', 110, 'https://cdn3.movieweb.com/i/article/wJthKP6eG49dkms8HyPIwiXUXLpyeW/1200:100/How-To-Train-Your-Dragon-The-Hidden-World.jpg'),
('The Avengers', '3',  50, 'PG', 'What will loki and his scepter bring to the Earth?', 'English', 120, 'https://pmcvariety.files.wordpress.com/2016/11/avengers.jpg'),
('Avengers: Infinity War', '4', 50, 'PG','Battle against thanos for the inifinity stones', 'English', 130, 'https://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/5abfd4f6562fa7a28a8eab25/1522521344759/new-tv-spot-for-avengers-infinity-war-we-are-out-of-time-social.jpg'),
('Avengers: Endgame', '5', 50, 'PG', 'Snap your haters into oblivion', 'English', 125, 'https://boygeniusreport.files.wordpress.com/2019/03/avengers-endgame-poster-bottom-half.jpg'),
('Thor: Ragnarok', '6',  50, 'PG', 'Thundergod battles big lava golem', 'English', 90, 'https://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/55886890e4b0e84204511cdc/1435003026097/someone-other-than-thor-may-lift-mjolnir-in-captain-america-civil-war-social.jpg');


INSERT INTO `cinemas` (`cid`, `name`,`price`) VALUES
('1', 'Shaw Nex', 12.50),
('2', 'Shaw Waterway Point', 12.50),
('3', 'Golden Village Plaza Sing', 13.00),
('4', 'Golden Village Vivo', 13.00),
('5', 'Cathay Cineleisure', 14.00),
('6', 'Cathay AMK', 14.00);


INSERT INTO `showtimes` (`sid`, `mid`,`cid`, `discount_id`, `time`) VALUES
('1', '1', '1', '5', '13:00:00'),
('2', '2', '2', '1', '20:00:00'),
('3', '3', '3', '4', '12:30:00'),
('4', '4', '4', '4', '10:00:00'),
('5', '5', '5', '5', '15:30:00'),
('6', '6', '6', '1', '21:00:00'),
('7', '1', '2', '3', '23:00:00'),
('8', '2', '3', '3', '00:30:00'),
('9', '3', '4', '5', '14:00:00'),
('10', '4', '5', '2', '17:30:00'),
('11', '5', '6', '2', '18:00:00'),
('12', '3', '5', '4', '10:30:00'),
('13', '3', '5', '5', '14:00:00'),
('14', '3', '5', '2', '17:30:00'),
('15', '3', '5', '2', '18:00:00'),
('16', '3', '5', '1', '20:30:00'),
('17', '3', '5', '3', '23:30:00');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;