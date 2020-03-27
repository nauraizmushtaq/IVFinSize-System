-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 09:28 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ivfinsizesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Type` varchar(55) NOT NULL DEFAULT 'D'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Password`, `Phone`, `Address`, `Type`) VALUES
(4, 'Khizer ', 'khizer', '00481815', 'Lahore, Street no 9', 'M'),
(5, 'Abid', 'abid', '034356564', 'Peshawar Street no 8', 'C'),
(7, 'Jhon Alia', '123', '0230923', 'Street no 66,Lahore', 'D'),
(8, 'Jatoeeew', '123', '23532124', 'Gujar Khan', 'D'),
(9, 'Nau', '123', '03458495', 'Street no 4, Islamabad', 'M'),
(10, 'Jhnonydd', 'aa', '0342454', 'asas	', 'D'),
(11, 'Nauraiz Mushtaq', '123', '034587966', 'Street no 144-G-13', 'NULL'),
(12, 'Jhon Shabir', '123', '0354566', 'G-14', 'D'),
(13, 'aa', 'aa', 'aa', 'aaa', 'IM'),
(14, 'newnew', 'new', 'qwqwqwqw', 'asasas	', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `erobot_demand`
--

CREATE TABLE `erobot_demand` (
  `Demand_Code` int(255) NOT NULL,
  `Demand_Qty` int(11) NOT NULL,
  `Customer_Name` varchar(30) NOT NULL,
  `Customer_Phone_no` varchar(15) NOT NULL,
  `Item_Name` varchar(30) NOT NULL,
  `Item_Desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erobot_demand`
--

INSERT INTO `erobot_demand` (`Demand_Code`, `Demand_Qty`, `Customer_Name`, `Customer_Phone_no`, `Item_Name`, `Item_Desc`) VALUES
(1, 52, 'abid', '03368768462', 'car', 'remote control car'),
(2, 50, 'Abid Waqar', '090078601', 'Drone', 'Remote Control Drone'),
(3, 10, 'Nauraiz', '090078601', 'drone', 'Remove control drone'),
(4, 9999, 'Abid', '034495291', 'Lachakdaaar', 'Motta Drone'),
(5, 5, 'abid', '033961', 'remote control', 'drone'),
(6, 2, 'as', '02', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `e_robot`
--

CREATE TABLE `e_robot` (
  `Code` varchar(13) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(75) NOT NULL,
  `Price` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `place` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_robot`
--

INSERT INTO `e_robot` (`Code`, `Name`, `Description`, `Price`, `Qty`, `place`) VALUES
('201', 'Drone', 'Remote control drone', 4000, 40, '1st Floor'),
('2010', 'testing', 'testing	', 67, 6, 'ground floor'),
('202', 'Elephant', 'HEOSD', 42, 11, 'Ground FLoor'),
('209', 'Toyia', 'DEIRWE', 149, 145, '');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_code` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_code`, `total_amount`, `payment`) VALUES
(1, 2500, 3000),
(2, 1500, 2000),
(3, 1600, 2000),
(29, 0, 0),
(31, 0, 0),
(33, 24000, 24000),
(34, 0, 0),
(35, 0, 0),
(36, 24894, 25656),
(37, 32000, 40000),
(38, 0, 0),
(39, 20000, 200000),
(41, 20000, 20000),
(42, 210, 500),
(43, 745, 1000),
(44, 420, 500);

-- --------------------------------------------------------

--
-- Table structure for table `sale_line_item`
--

CREATE TABLE `sale_line_item` (
  `sale_code` int(11) NOT NULL,
  `robot_code` varchar(13) NOT NULL,
  `robot_name` varchar(30) NOT NULL,
  `robot_desc` varchar(75) NOT NULL,
  `robot_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_line_item`
--

INSERT INTO `sale_line_item` (`sale_code`, `robot_code`, `robot_name`, `robot_desc`, `robot_price`, `qty`, `subtotal`) VALUES
(1, '2010', 'drone', 'Remote Control Drone', 2500, 1, 2500),
(1, '2010', 'Drone', 'Remote Control Drone', 1500, 1, 1500),
(1, '201', 'Drone', 'Remote control drone', 4000, 5, 20000),
(3, '201', 'Drone', 'Remote control drone', 4000, 8, 16000),
(3, '201', 'Drone', 'Remote control drone', 4000, 8, 20000),
(33, '201', 'Drone', 'Remote control drone', 4000, 6, 24000),
(34, '201', 'Drone', 'Remote control drone', 4000, 6, 24000),
(35, '209', 'Toyia', 'DEIRWE', 149, 5, 745),
(36, '201', 'Drone', 'Remote control drone', 4000, 6, 24000),
(36, '209', 'Toyia', 'DEIRWE', 149, 6, 894),
(37, '201', 'Drone', 'Remote control drone', 4000, 8, 32000),
(38, '201', 'Drone', 'Remote control drone', 4000, 5, 20000),
(39, '201', 'Drone', 'Remote control drone', 4000, 5, 20000),
(41, '201', 'Drone', 'Remote control drone', 4000, 5, 20000),
(42, '202', 'Elephant', 'HEOSD', 42, 5, 210),
(43, '209', 'Toyia', 'DEIRWE', 149, 5, 745),
(44, '202', 'Elephant', 'HEOSD', 42, 10, 420);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `erobot_demand`
--
ALTER TABLE `erobot_demand`
  ADD PRIMARY KEY (`Demand_Code`);

--
-- Indexes for table `e_robot`
--
ALTER TABLE `e_robot`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_code`);

--
-- Indexes for table `sale_line_item`
--
ALTER TABLE `sale_line_item`
  ADD KEY `sale_code` (`sale_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `erobot_demand`
--
ALTER TABLE `erobot_demand`
  MODIFY `Demand_Code` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sale_line_item`
--
ALTER TABLE `sale_line_item`
  ADD CONSTRAINT `sale_line_item_ibfk_1` FOREIGN KEY (`sale_code`) REFERENCES `sale` (`sale_code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
