-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2019 at 04:07 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblexpense`
--

CREATE TABLE `tblexpense` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexpense`
--

INSERT INTO `tblexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `NoteDate`) VALUES
(1, 10, '2019-05-15', 'Milk', '63', NULL),
(2, 10, '2019-05-15', 'Vegitables', '520', '2019-07-17 20:42:04'),
(3, 10, '2019-05-15', 'Household Items', '5200', '2019-05-15 10:07:08'),
(4, 10, '2019-05-14', 'Milk', '83', '2019-07-19 10:07:27'),
(5, 10, '2019-05-14', 'Bed Sheets', '1120', '2019-05-15 10:07:49'),
(6, 10, '2019-05-12', 'Fruits', '890', '2019-05-15 10:08:09'),
(7, 10, '2019-05-10', 'Household Items', '5600', '2019-05-15 10:08:26'),
(8, 10, '2019-04-24', 'Milk', '102', '2019-05-15 10:08:44'),
(9, 10, '2019-05-08', 'Bed Sheets', '890', '2019-05-15 10:08:57'),
(10, 10, '2018-12-19', 'Household Items', '1120', '2019-05-15 10:09:34'),
(11, 10, '2018-12-19', 'Fruits', '560', '2019-05-15 10:09:52'),
(13, 10, '2018-12-20', 'Tour of Manali', '30000', '2019-05-15 10:15:47'),
(14, 10, '2019-05-14', 'Milk', '360', '2019-05-15 10:21:31'),
(15, 10, '2019-05-15', 'Milk', '123', '2019-05-15 10:29:56'),
(16, 10, '2019-05-15', 'Household Items', '360', '2019-05-15 10:30:06'),
(17, 10, '2019-05-15', 'Bed Sheets', '3000', '2019-05-15 10:30:18'),
(18, 10, '2019-05-07', 'Milk', '123', '2019-05-15 10:30:28'),
(19, 10, '2019-05-14', 'Household Items', '3600', '2019-05-15 10:30:38'),
(20, 10, '2019-05-14', 'Electric Board Extension', '300', '2019-05-15 15:11:33'),
(21, 10, '2019-04-11', 'Milk', '123', '2019-05-15 17:50:24'),
(22, 10, '2019-04-10', 'Household Items', '520', '2019-05-15 17:50:37'),
(23, 10, '2019-05-16', 'Household Items', '360', '0000-00-00 00:00:00'),
(25, 10, '2019-05-17', 'Milk', '3600', '2019-05-17 05:35:13'),
(26, 10, '2019-05-16', 'Bed Sheets', '1025', '2019-05-17 05:35:42'),
(27, 10, '2019-05-17', 'Computer Mouse', '500', '2019-05-18 05:19:05'),
(30, 10, '2019-05-18', 'Milk + Bread', '80', '2019-05-18 05:22:01'),
(31, 10, '2019-05-16', 'Computer Mouse', '500', '2019-05-18 05:35:45'),
(32, 10, '2019-05-17', 'Milk+Bread', '80', '2019-05-18 05:36:06'),
(33, 10, '2019-05-18', 'Room Rent', '10000', '2019-05-18 05:36:26'),
(35, 10, '2019-07-18', 'Furniture Purchased', '15000', '2019-07-19 01:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(8, 'Test', 'test@gmail.com', 5656556565, '202cb962ac59075b964b07152d234b70', '2019-05-17 05:34:16'),
(10, 'Testing User', 'testuser@gmail.com', 987654321, 'f925916e2754e5e03f75dd58a5733251', '2019-05-18 05:34:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblexpense`
--
ALTER TABLE `tblexpense`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblexpense`
--
ALTER TABLE `tblexpense`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;