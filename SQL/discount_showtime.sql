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
CREATE DATABASE IF NOT EXISTS `discount_showtime` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `discount_showtime`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `discount_time`;
CREATE TABLE IF NOT EXISTS `discount_time` (
  `discount_id` varchar(13) NOT NULL,
  `discount` decimal(1,1) NOT NULL,
  `time_from` time(0) NOT NULL,
  `time_to` time(0) NOT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table ``
--

INSERT INTO `discount_time` (`discount_id`,`discount`, `time_from`, `time_to`) VALUES
('1', '0.1', '20:00:00', '22:59:59'),
('2', '0.2', '17:00:00', '19:59:59'),
('3', '0.3', '23:00:00', '08:59:59'),
('4', '0.4', '09:00:00', '12:59:59'),
('5', '0.5', '13:00:00', '16:59:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
