-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2019 at 07:35 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email_id` varchar(244) NOT NULL,
  `password` varchar(244) NOT NULL,
  `mobile_no` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `Grade_id` int(11) NOT NULL,
  `category` varchar(244) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `Grade_id`, `category`, `image`) VALUES
(1, 1, 'ADDITION', '1.png'),
(2, 1, 'SUBSTRACTION', '2.png'),
(3, 1, 'MULTIPLICATION', 'mul.png'),
(4, 1, 'DIVISION', '3.png');

-- --------------------------------------------------------

--
-- Table structure for table `Grade`
--

CREATE TABLE `Grade` (
  `Grade_id` int(11) NOT NULL,
  `Grade_name` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Grade`
--

INSERT INTO `Grade` (`Grade_id`, `Grade_name`) VALUES
(1, 'First Standard'),
(2, 'Second Standard'),
(3, 'Third Standard'),
(4, 'Fourth Standard');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `Grade_id` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `Questions` varchar(500) DEFAULT NULL,
  `opt1` varchar(500) DEFAULT NULL,
  `opt2` varchar(500) DEFAULT NULL,
  `opt3` varchar(500) DEFAULT NULL,
  `opt4` varchar(500) DEFAULT NULL,
  `correct_ans` varchar(500) DEFAULT NULL,
  `images` longtext NOT NULL,
  `images1` longtext NOT NULL,
  `image2` longtext NOT NULL,
  `images3` longtext NOT NULL,
  `images4` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `Grade_id`, `cid`, `Questions`, `opt1`, `opt2`, `opt3`, `opt4`, `correct_ans`, `images`, `images1`, `image2`, `images3`, `images4`) VALUES
(1, 1, 1, 'add this object?', '2', '4', '5', '6', '2', '1.png', 'birdall.png', '1.png', '1.png', ''),
(2, 1, 1, 'add this oobject?', '2', '3', '4', '5', '3', '2.png', '', '', '', ''),
(3, 1, 1, 'this is 3rd question', '5', '4', '3', '5', '3', '', '', '', '', ''),
(4, 2, 2, 'this is 4th questions', '54', '4', '6', '7', '7', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `User_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `email_id` varchar(500) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`User_id`, `Name`, `email_id`, `password`) VALUES
(14, '', 'rahul@gmail.com', '123'),
(15, '', 'rahul@gmail.com', '123'),
(16, 'ko', 'rahul@gmail.com', '123'),
(18, 'krutika', 'krutika@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(244) NOT NULL,
  `user_score` varchar(244) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_score`, `cid`) VALUES
(1, '', '0', 1),
(2, '', '0', 1),
(3, '', '0', 1),
(4, '', '0', 1),
(5, '', '0', 1),
(6, '', '0', 1),
(7, '', '0', 1),
(8, '', '0', 1),
(9, '', '0', 1),
(10, '', '0', 1),
(11, '', '0', 1),
(12, '', '0', 1),
(13, '', '0', 1),
(14, '', '0', 1),
(15, '', '0', 1),
(16, '', '0', 1),
(17, '', '0', 1),
(18, '', '0', 1),
(19, '', '0', 1),
(20, '', '0', 1),
(21, '', '0', 1),
(22, '', '0', 1),
(23, '', '0', 1),
(24, '', '0', 1),
(25, '', '0', 1),
(26, '', '0', 1),
(27, '', '0', 1),
(28, '', '0', 1),
(29, '', '0', 1),
(30, '', '0', 1),
(31, '', '0', 1),
(32, '', '0', 1),
(33, '', '0', 1),
(34, '', '0', 1),
(35, '', '0', 1),
(36, '', '0', 1),
(37, '', '0', 1),
(38, '', '0', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `Grade`
--
ALTER TABLE `Grade`
  ADD PRIMARY KEY (`Grade_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Grade`
--
ALTER TABLE `Grade`
  MODIFY `Grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
