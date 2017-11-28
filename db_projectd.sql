-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2017 at 05:57 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_projectd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `hashed_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `command_options`
--

CREATE TABLE `command_options` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `command_options`
--

INSERT INTO `command_options` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, 'BASE', 1, 1),
(2, 'ARMY', 2, 1),
(3, 'ATTACK', 3, 1),
(4, 'HOME', 4, 1),
(5, 'DEV OPTIONS', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `units_list`
--

CREATE TABLE `units_list` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `swordsmen` int(11) NOT NULL,
  `spearmen` int(11) NOT NULL,
  `cavalry` int(11) NOT NULL,
  `citizens` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units_list`
--

INSERT INTO `units_list` (`id`, `username`, `swordsmen`, `spearmen`, `cavalry`, `citizens`) VALUES
(1, 'zach', 56, 56, 63, 1),
(2, 'ant', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `faction` varchar(30) DEFAULT NULL,
  `hashed_password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `username`, `firstname`, `lastname`, `email`, `faction`, `hashed_password`) VALUES
(2, 'Trippen', 'Zach', 'Chaco', 'zjchaco12@gmail.com', NULL, '$2y$10$ZDBkMDQ3YmQ3MzY4YjQ0OOrMa.LtfR55pQmZ.V5kDn8MDqM2YUkxS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `command_options`
--
ALTER TABLE `command_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units_list`
--
ALTER TABLE `units_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `command_options`
--
ALTER TABLE `command_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `units_list`
--
ALTER TABLE `units_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
