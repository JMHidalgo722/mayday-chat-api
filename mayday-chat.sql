-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2017 at 09:08 PM
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
  `channelName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`id`, `channelName`) VALUES
(1, 'public'),
(2, 'uhack'),
(3, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` char(36) NOT NULL,
  `nodeId` varchar(255) NOT NULL,
  `senderId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `nodeId`, `senderId`, `channelId`, `timestamp`, `content`) VALUES
('aqec-qdec-qdchjq', 'qec', 14, 2, 31441, 'wrv2r2r'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, 'qef1qef'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, 'qaevqwrvwrv'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, 'wrvq2r'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '4thu5j6u'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, 'wrget'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '4tbh4ynh'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '5yn5yn'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '5yjuj7ik'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, 't4h5uj'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '7il8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol8o,l8o,'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol8o,l8o,'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol8o,l8o,'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol8o,l8o,'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol8o,l8o,'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol8o,l8o,'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol8o,l8o,'),
('fhqir-wfkjvbvrf-wrv', 'wkdubcv', 14, 2, 123456, '89l8ol8o,l8o,');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `senderName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `senderName`) VALUES
(14, 'jmhidalgo'),
(15, 'lawrenze'),
(16, 'raph'),
(17, 'claire');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
