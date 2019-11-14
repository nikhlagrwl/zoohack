-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2019 at 09:18 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoohackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_registration`
--

CREATE TABLE `admin_registration` (
  `username` varchar(255) NOT NULL,
  `cwlw_id` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_registration`
--

INSERT INTO `admin_registration` (`username`, `cwlw_id`, `full_name`, `email`, `password`) VALUES
('nikhil_agrwl', '12344', 'Nikhil Agarwal', 'niksagarwal13@gmail.com', '962012d09b8170d912f0669f6d7d9d07'),
('1234', 'qwer', 'Nikhil Agarwal', 'niksagarwal13@gmail.com', '912ec803b2ce49e4a541068d495ab570'),
('1234', 'qqqq', 'dvfd', 'qwe@123', 'fa246d0262c3925617b0c72bb20eeb1d'),
('qqqq', '1111', 'assf asff', 'qwee@wwds', 'e07413354875be01a996dc560274708e'),
('aaaa', 'qwerty', 'qq', 'aaaa@qw', '28dd2c7955ce926456240b2ff0100bde');

-- --------------------------------------------------------

--
-- Table structure for table `elephant_info`
--

CREATE TABLE `elephant_info` (
  `uid` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `eletype` varchar(255) NOT NULL,
  `origin` varchar(600) DEFAULT NULL,
  `ownership` varchar(600) DEFAULT NULL,
  `loc_hist` varchar(10000) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elephant_info`
--

INSERT INTO `elephant_info` (`uid`, `name`, `eletype`, `origin`, `ownership`, `loc_hist`, `description`) VALUES
(11, 'Govind', 'Male- Elephas maximus indicus(Indian Elephant)', 'Singhbhum Elephant Reserve, Jharkhand[2001]', 'c/o Singhbhum Elephant Reserve, Jharkhand', 'East Singhbhum[28.03.2019], Kharsawan District[12.02.2018],East Singhbhum[28.03.2001]', 'Child of Shivam[22] and Aarti[33]. He Born in 2001 in Jharkhand. Generally found in the East Singhbhum and Kharsawan Districts. Lives in a heard. Very docile and compliant in nature, he is usually peaceful until provoked.'),
(22, 'Shivam', 'Male- Elephas maximus indicus(Indian Elephant)', 'Chandil Dalma Elephant Reserve, Jharkhand[1976]', 'c/o Singhbhum Elephant Reserve, Jharkhand', 'East Singhbhum[28.03.2019], Kharsawan District[16.04.2019],Kharsawan District[17.05.2015],East Singhbhum[28.03.2010],East Singhbhum[27.06.2008],East Singhbhum[20.03.2006],East Singhbhum[12.05.2002], East Singhbhum[28.03.2001],Dalma Wildlife Sanctuary[15.12.1999],Dalma Wildlife Sanctuary[15.12.1997],Dalma Wildlife Sanctuary[15.12.1994],Dalma Wildlife Sanctuary[19.10.1991],Dalma Wildlife Sanctuary[15.12.1988],Dalma Wildlife Sanctuary[01.08.1985],Dalma Wildlife Sanctuary[15.12.1980],Dalma Wildlife Sanctuary[16.11.1976].', 'Child of Rakesh[44](NA) and Roshnii[55](NA). He was Born in 1976 in Chandil Dalma Elephant Reserve, Jharkhand. Generally found in the East Singhbhum,Kharsawan Districts and Dalma. Lives in a heard. Very docile and compliant in nature, he is usually peaceful until provoked.'),
(33, 'Aarti', 'Female- Elephas maximus indicus(Indian Elephant)', 'Singhbhum Elephant Reserve, Jharkhand[1975]', 'c/o Singhbhum Elephant Reserve, Jharkhand', 'East Singhbhum[28.03.2019], Kharsawan District[16.04.2019],Kharsawan District[17.05.2015],East Singhbhum[28.03.2010],East Singhbhum[27.06.2008],East Singhbhum[20.03.2006],East Singhbhum[12.05.2002], East Singhbhum[28.03.2001],Dalma Wildlife Sanctuary[15.12.1999],East Singhbhum[15.12.1997],East Singhbhum[15.12.1994],East Singhbhum[19.10.1991],East Singhbhum[15.12.1988],East Singhbhum[01.08.1985],East Singhbhum[15.12.1980],East Singhbhum[16.11.1975].', 'Child of Vimal[66](NA) and Sheila[77](NA). She was Born in 1975 in the place which is now Singhbhum Elephant Reserve, Jharkhand. Generally found in the East Singhbhum,Kharsawan Districts and Dalma. She is leader of the largest hearn in Singhbhum Elephant reserve. Very docile and compliant in nature, he is usually peaceful until provoked.'),
(88, 'Anu', 'Female- Elephas maximus indicus(Indian Elephant)', 'Singhbhum Elephant Reserve, Jharkhand[2001]', 'c/o Singhbhum Elephant Reserve, Jharkhand', 'East Singhbhum[28.03.2019], Kharsawan District[12.02.2018],East Singhbhum[28.03.2001]', 'Child of Shivam[22] and Aarti[33]. She was Born in 2001 in Jharkhand. Is a twin of Govind[11] Generally found in the East Singhbhum and Kharsawan Districts. Lives in a heard. Very docile and compliant in nature, she is usually peaceful until provoked.'),
(99, 'Mohan', 'Male- Elephas maximus indicus(Indian Elephant)', 'Mayurbhanj Elephant Reserve, Orissa[1990]', 'c/o Mayurbhanj Elephant Reserve, Orissa', '\r\nSimilipal National Park,[25-08-2005] Mayurbhanj Elephant Reserve, Orissa [14-04-1990]\r\n', 'Details of parents are not . She was Born in 1990 in Orissa . generally found in the Similipal National park and Mayurbhanj ELephant reserve . Lives in a heard. Very docile and compliant in nature, she is usually peaceful until provoked.\r\n'),
(111, 'Raju', 'Male,Elephas maximus indicus(Indian Elephant)', 'Nilgiri Biosphere Reserve ,Tamil Nadu,[20.12.2013]', 'c/o Nilgiri Biosphere Reserve ,Tamil Nadu ', 'Nilgiri Biosphere Reserve [20.12.2013]', 'Father :Virat Mother :Laxmi   he lives with his mother.Generally found in the Nilgiri Biosphere reserve . Lives in a heard. Very docile and compliant in nature, she is usually peaceful until provoked.\r\n'),
(122, 'Rohit', 'Male ,Elephas maximus indicus(Indian Elephant)', 'Jaipur elephant village ,Jaipur .[13.04.2006]', 'c/o Madan Lal  Mehta ', 'Jaipur Elephant Village [23.12,2011]', 'This elephant lives in a 100 elephant group near Amer Fort Rajasthan . Gives ride to tourists near the Fort .'),
(133, 'Viru ', 'Male ,Elephas maximus indicus(Indian Elephant)', 'Sambalpur Elephant Reserve ,Odisha [4.06.2004]', 'c/o : Sambalpur Elephant Reserve ,Odisha ', 'Mahanadi Elephant Reserve [14.09.2017],\r\nsambalpur Elephant Reserve ,Orissa [04.06.2004]', 'Father : Anup Mother : Paro \r\nagressive .Care should be taken while handling .');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
