-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 09:44 AM
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
-- Database: `doctorappointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `clicnic_availability`
--

CREATE TABLE `clicnic_availability` (
  `Sl_No` varchar(200) NOT NULL,
  `Clinic Id` varchar(200) NOT NULL,
  `Day0` varchar(200) DEFAULT NULL,
  `Day1` varchar(200) DEFAULT NULL,
  `Day2` varchar(200) DEFAULT NULL,
  `Day3` varchar(200) DEFAULT NULL,
  `Day4` varchar(200) DEFAULT NULL,
  `Day5` varchar(200) DEFAULT NULL,
  `Day6` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `clinicname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `specialization` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`name`, `email`, `phone`, `pass`, `specialization`) VALUES
('My Doc', 'doct@gmail.com', '7896541230', '526641bd710f0e083d38ed9a216391c3', 'CARDIOLOGY');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability`
--

CREATE TABLE `doctor_availability` (
  `Sl_No` varchar(200) NOT NULL,
  `Doctor Id` varchar(200) NOT NULL,
  `Clinic Id` varchar(200) NOT NULL,
  `Day0` varchar(200) DEFAULT NULL,
  `Day1` varchar(200) DEFAULT NULL,
  `Day2` varchar(200) DEFAULT NULL,
  `Day3` varchar(200) DEFAULT NULL,
  `Day4` varchar(200) DEFAULT NULL,
  `Day5` varchar(200) DEFAULT NULL,
  `Day6` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` varchar(200) NOT NULL,
  `height` varchar(200) NOT NULL,
  `weight` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `address` varchar(350) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `rotp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `height`, `weight`, `email`, `phone`, `pass`, `gender`, `address`, `dob`, `rotp`) VALUES
('Manisha Das', '200', '65', 'manisha@gmail.com', '9477462564', '526641bd710f0e083d38ed9a216391c3', 'FEMALE', 'Motijhil Lane,Chinsurah', '11/11/2002', ''),
('Shreya Mukherjee', '170', '85', 'mukherjeeshreya874@gmail.com', '7896541230', '526641bd710f0e083d38ed9a216391c3', 'MALE', 'My Address', '1995-10-07', ''),
('Sutapa Das', '200', '55', 'sutapa@gmail.com', '8777736903', '526641bd710f0e083d38ed9a216391c3', 'FEMALE', 'Motijhil Lane,Chinsurah,Hooghly', '23/01/1999', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clicnic_availability`
--
ALTER TABLE `clicnic_availability`
  ADD PRIMARY KEY (`Sl_No`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD PRIMARY KEY (`Sl_No`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
