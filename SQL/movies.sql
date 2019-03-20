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


--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`title`, `mid`, `availability`, `rating`, `synopsis`, `language`, `runtime`) VALUES
('How to train your dragon', '1', 50, 'PG', 'Dreamworks releases How to train your dragon', 'English', 100),
('How to train your dragon: The hidden world', '2', 50, 'PG', 'Follow dragon on his adventures to a new unexplore world', 'English', 110),
('The Avengers', '3',  50, 'PG', 'What will loki and his scepter bring to the Earth?', 'English', 120),
('Avengers: Infinity War', '4', 50, 'PG','Battle against thanos for the inifinity stones', 'English', 130),
('Avengers: Endgame', '5', 50, 'PG', 'Snap your haters into oblivion', 'English', 125),
('Thor: Ragnarok', '6',  50, 'PG', 'Thundergod battles big lava golem', 'English', 90);


INSERT INTO `cinemas` (`cid`, `name`,`price`) VALUES
('1', 'Shaw Nex', 12.50),
('2', 'Shaw Waterway Point', 12.50),
('3', 'Golden Village Plaza Sing', 13.00),
('4', 'Golden Village Vivo', 13.00),
('5', 'Cathay Cineleisure', 14.00),
('6', 'Cathay AMK', 14.00);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;