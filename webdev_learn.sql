-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 08:02 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdev_learn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(60) NOT NULL,
  `password` varchar(126) NOT NULL,
  `email` varchar(126) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`, `email`) VALUES
('aiman', '123456', 'harutoaim7@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(60) NOT NULL,
  `message` varchar(60) NOT NULL,
  `user_Id` varchar(60) NOT NULL,
  `admin_id` varchar(60) DEFAULT NULL,
  `email` varchar(126) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `message`, `user_Id`, `admin_id`, `email`) VALUES
(15, 'kjfghuithioojijiofghikp', 'Anonymous', NULL, 'Anonymous'),
(17, 'gegegegege', 'kambing', NULL, 'gega@sisawa.com'),
(18, 'kjdfbweuibfjiaebfiaew', 'Anonymous', NULL, 'Anonymous'),
(19, 'kjdfbweuibfjiaebfiaew', 'Anonymous', NULL, 'Anonymous'),
(20, 'kjdfbweuibfjiaebfiaew', 'Anonymous', NULL, 'Anonymous'),
(21, 'hahahah this is good\r\n', 'Anonymous', NULL, 'no email given'),
(22, 'sdwefergrthrtytyujt', 'Anonymous', NULL, 'no email given'),
(23, 'sdwefergrthrtytyujt', 'Anonymous', NULL, 'no email given'),
(24, 'sdwefergrthrtytyujt', 'Anonymous', NULL, 'no email given'),
(25, 'sdwefergrthrtytyujt', 'Anonymous', NULL, 'no email given'),
(26, 'comment ni saja2 geli', 'aimab', NULL, 'wedonut57@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(60) NOT NULL,
  `password` varchar(126) NOT NULL,
  `email` varchar(126) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `email`) VALUES
('amin', 'qwert21', 'riduanaiman190@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
