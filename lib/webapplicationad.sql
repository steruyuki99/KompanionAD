-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 03:56 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapplicationad`
--

-- --------------------------------------------------------

--
-- Table structure for table `formativefive`
--

CREATE TABLE `formativefive` (
  `username` varchar(25) NOT NULL,
  `ans1` varchar(25) NOT NULL,
  `ans2` varchar(25) NOT NULL,
  `ans3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formativefour`
--

CREATE TABLE `formativefour` (
  `username` varchar(25) NOT NULL,
  `ans1` varchar(25) NOT NULL,
  `ans2` varchar(25) NOT NULL,
  `ans3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formativeone`
--

CREATE TABLE `formativeone` (
  `username` varchar(25) NOT NULL,
  `ans1` varchar(25) NOT NULL,
  `ans2` varchar(25) NOT NULL,
  `ans3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formativeseven`
--

CREATE TABLE `formativeseven` (
  `username` varchar(25) NOT NULL,
  `ans1` varchar(25) NOT NULL,
  `ans2` varchar(25) NOT NULL,
  `ans3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formativesix`
--

CREATE TABLE `formativesix` (
  `username` varchar(25) NOT NULL,
  `ans1` varchar(25) NOT NULL,
  `ans2` varchar(25) NOT NULL,
  `ans3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formativethree`
--

CREATE TABLE `formativethree` (
  `username` varchar(25) NOT NULL,
  `ans1` varchar(25) NOT NULL,
  `ans2` varchar(25) NOT NULL,
  `ans3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formativetwo`
--

CREATE TABLE `formativetwo` (
  `username` varchar(25) NOT NULL,
  `ans1` varchar(25) NOT NULL,
  `ans2` varchar(25) NOT NULL,
  `ans3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `summative`
--

CREATE TABLE `summative` (
  `username` varchar(25) NOT NULL,
  `ans1` varchar(25) NOT NULL,
  `ans2` varchar(25) NOT NULL,
  `ans3` varchar(25) NOT NULL,
  `ans4` varchar(25) NOT NULL,
  `ans5` varchar(25) NOT NULL,
  `ans6` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `summative`
--

INSERT INTO `summative` (`username`, `ans1`, `ans2`, `ans3`, `ans4`, `ans5`, `ans6`) VALUES
('Dzil', 'A', 'A', 'A', 'A', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`) VALUES
('asd', 'asd', 'asd@gmail.com'),
('pimentel', '123', 'dzil@pimentel.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formativefive`
--
ALTER TABLE `formativefive`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `formativefour`
--
ALTER TABLE `formativefour`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `formativeone`
--
ALTER TABLE `formativeone`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `formativeseven`
--
ALTER TABLE `formativeseven`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `formativesix`
--
ALTER TABLE `formativesix`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `formativethree`
--
ALTER TABLE `formativethree`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `summative`
--
ALTER TABLE `summative`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
