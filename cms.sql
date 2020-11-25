-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 09:24 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `cid` int(11) NOT NULL,
  `complaint_description` text NOT NULL,
  `status` varchar(80) NOT NULL,
  `dtime` datetime NOT NULL,
  `faculty` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`cid`, `complaint_description`, `status`, `dtime`, `faculty`) VALUES
(1, 'SED', 'pending', '2020-11-01 09:11:37', 'Faculty Of Science And Technology'),
(2, 'SED', 'pending', '2020-11-01 09:11:50', 'Faculty Of Science And Technology'),
(3, 'a', 'pending', '2020-11-01 09:11:09', 'Faculty Of Science And Technology'),
(4, 'a', 'pending', '2020-11-01 09:11:54', '#'),
(5, 'carol', 'pending', '2020-11-01 09:11:54', '#'),
(6, 'Hello', 'done', '2020-11-01 09:11:06', 'Faculty Of Science And Technology');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `refid` int(11) NOT NULL,
  `description` text NOT NULL,
  `dtime` datetime NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`refid`, `description`, `dtime`, `cid`, `sid`, `status`) VALUES
(1, 'null', '0000-00-00 00:00:00', 1, 0, 'pending'),
(2, 'null', '0000-00-00 00:00:00', 2, 0, 'pending'),
(3, 'null', '0000-00-00 00:00:00', 3, 0, 'pending'),
(4, 'null', '0000-00-00 00:00:00', 4, 0, 'pending'),
(5, 'null', '0000-00-00 00:00:00', 5, 0, 'pending'),
(6, 'We will Check\r\n', '2020-11-01 09:11:12', 6, 1, 'done');

-- --------------------------------------------------------

--
-- Table structure for table `forwarded`
--

CREATE TABLE `forwarded` (
  `fid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `dtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forwarded`
--

INSERT INTO `forwarded` (`fid`, `sid`, `respondent_id`, `cid`, `dtime`) VALUES
(1, 2, 4, 4, '2020-11-01 09:11:54'),
(2, 2, 1, 6, '2020-11-01 09:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `mailing`
--

CREATE TABLE `mailing` (
  `mail_id` int(11) NOT NULL,
  `names` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(120) NOT NULL,
  `faculty` varchar(120) NOT NULL,
  `refid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(180) NOT NULL,
  `full_name` varchar(180) NOT NULL,
  `role` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `username`, `password`, `full_name`, `role`) VALUES
(1, 'Sundaramurthy', '12345', 'Sundaramurthy', 'staff'),
(2, 'Admin', '12345', 'Admin', 'admin'),
(3, 'Pranav', '12345', 'k', 'admin'),
(4, 'Poorna', 'pako', 'Pranav', 'staff'),
(5, 'Prakash', 'qwerty', 'Poorna', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`refid`);

--
-- Indexes for table `forwarded`
--
ALTER TABLE `forwarded`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `mailing`
--
ALTER TABLE `mailing`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `refid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forwarded`
--
ALTER TABLE `forwarded`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mailing`
--
ALTER TABLE `mailing`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
