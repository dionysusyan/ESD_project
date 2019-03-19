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

--
CREATE DATABASE IF NOT EXISTS `reservations` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `reservations`;

-- --------------------------------------------------------

--

--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `rid` char(13) NOT NULL, /* reservation id */
  `uid` char(13) NOT NULL, /* user id */
  `sid` char(13) NOT NULL, /* showtime id */
  PRIMARY KEY (`rid`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--

INSERT INTO `reservations` (`rid`, `uid`, `sid`) VALUES
('1', '2', '1' ),
('2', '2', '2' ),
('3', '3', '3' );
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
