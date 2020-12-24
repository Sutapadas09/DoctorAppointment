-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 02:34 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

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
  `specialization` varchar(150) NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'images/docs/doctor1.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`name`, `email`, `phone`, `pass`, `specialization`, `image`) VALUES
('My Doc1', 'doct1@gmail.com', '9876543210', '526641bd710f0e083d38ed9a216391c3', 'TRAUMOTOLOGY', 'images/docs/doctor1.png'),
('My Doc2', 'doct2@gmail.com', '9876543210', '526641bd710f0e083d38ed9a216391c3', 'X-RAY', 'images/docs/doctor2.png'),
('My Doc3', 'doct3@gmail.com', '9876543210', '526641bd710f0e083d38ed9a216391c3', 'PULMONARY', 'images/docs/doctor3.png'),
('My Doc4', 'doct4@gmail.com', '9876543210', '526641bd710f0e083d38ed9a216391c3', 'PULMONARY', 'images/docs/doctor1.png'),
('My Doc5', 'doct5@gmail.com', '9876543210', '526641bd710f0e083d38ed9a216391c3', 'NEUROLOGY', 'images/docs/doctor2.png'),
('My Doc6', 'doct6@gmail.com', '7542310701', '526641bd710f0e083d38ed9a216391c3', 'GYNAECOLOGY', 'images/docs/doctor1.png'),
('My Doc7', 'doct7@gmail.com', '7542310701', '526641bd710f0e083d38ed9a216391c3', 'FOR DISABLED', 'images/docs/doctor1.png'),
('My Doc', 'doct@gmail.com', '7896541230', '526641bd710f0e083d38ed9a216391c3', 'CARDIOLOGY', 'images/docs/doctor3.png');

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
('Gagandeep', '175', '55', 'gagan.training@gmail.com', '7896541230', '526641bd710f0e083d38ed9a216391c3', 'MALE', 'Chandannagar', '1995-10-07', ''),
('Shreya Mukherjee', '170', '85', 'mukherjeeshreya874@gmail.com', '7896541230', '526641bd710f0e083d38ed9a216391c3', 'MALE', 'My Address', '1995-10-07', '');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
