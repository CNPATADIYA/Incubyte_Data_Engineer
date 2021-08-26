-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 07:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `Customer_ID` varchar(18) NOT NULL,
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) NOT NULL,
  `Post_Code` int(5) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Active_Customer` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`Customer_ID`, `Customer_Name`, `Customer_Open_Date`, `Last_Consulted_Date`, `Vaccination_Type`, `Doctor_Consulted`, `State`, `Country`, `Post_Code`, `Date_Of_Birth`, `Active_Customer`) VALUES
('12345', 'Matt', '2010-10-12', '2010-10-13', 'MVD', 'Paul', 'BOS', 'NYC', NULL, '1987-03-06', 'A'),
('123457', 'Alex', '2010-10-12', '2010-10-13', 'MVD', 'Paul', 'SA', 'USA', NULL, '1987-03-06', 'A'),
('123458', 'John', '2010-10-12', '2010-10-13', 'MVD', 'Paul', 'TN', 'IND', NULL, '1987-03-06', 'A'),
('123459', 'Mathew', '2010-10-12', '2010-10-12', 'MVD', 'Paul', 'WAS', 'PHIL', NULL, '1987-03-06', 'A'),
('1256', 'Jacob', '2010-10-12', '2010-10-13', 'MVD', 'Paul', 'VIC', 'AU', NULL, '1987-03-06', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`Customer_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
