-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2017 at 07:54 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mayday-chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`id`, `name`) VALUES
(1, 'public'),
(2, 'uhack'),
(3, 'uhacfwe'),
(4, 'lawrenze'),
(5, '2q');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `channel_id`, `username`, `message`) VALUES
(1, 2, 'juanmiguel', 'UHack!'),
(2, 2, 'lawrenze', 'hahahahaha'),
(3, 2, 'we', 'qaecq'),
(4, 2, 'we', 'qaecq'),
(5, 2, 'wef', 'haa'),
(6, 1, 'qefwrf', 'wr3g3wrg'),
(7, 1, 'wrf', 'wwrfwr'),
(8, 1, 'wr', 'wrf'),
(9, 2, 'wefkb', 'wrv'),
(10, 2, 'wrf', 'wef'),
(11, 2, 'wrf', 'wef'),
(12, 2, 'eqwf', 'sfvwr'),
(13, 2, 'wrf', 'wf'),
(14, 2, 'wr', 'wrgw2gr'),
(15, 2, 'wrg', 'wrkv'),
(16, 2, 'rwg', 'dgb'),
(17, 5, '2r', '2r'),
(18, 2, 'fwr', 'w42fr'),
(19, 2, 'Raph', 'wf'),
(20, 2, 'Raph', 'w2424t');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
