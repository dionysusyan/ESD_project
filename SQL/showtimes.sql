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
CREATE DATABASE IF NOT EXISTS `showtimes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `showtimes`;

-- --------------------------------------------------------



DROP TABLE IF EXISTS `showtimes`;
CREATE TABLE IF NOT EXISTS `showtimes` (
  `sid` varchar(13) NOT NULL,
  `mid` varchar(13) NOT NULL,
  `cid` varchar(13) NOT NULL,
  `discount_id` varchar(13) NOT NULL,
  `time` time(0) NOT NULL,
  PRIMARY KEY (`sid`),
  FOREIGN KEY (`mid`) REFERENCES movies(`mid`),
  FOREIGN KEY (`cid`) REFERENCES cinemas(`cid`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`


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
('12', '6', '1', '5', '15:30:00');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;