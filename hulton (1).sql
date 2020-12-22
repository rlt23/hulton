-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 03:14 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hulton`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `emailid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`emailid`, `password`, `id`) VALUES
('tholerohit@gmail.com', 'rohitthole', 31509340),
('monisha@gmail.com', 'monisha', 31509341);

-- --------------------------------------------------------

--
-- Table structure for table `breakfast`
--

CREATE TABLE `breakfast` (
  `Btype` varchar(16) NOT NULL,
  `BPrice` decimal(3,0) NOT NULL,
  `Description` varchar(25) NOT NULL,
  `HotelID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `breakfast`
--

INSERT INTO `breakfast` (`Btype`, `BPrice`, `Description`, `HotelID`) VALUES
('Indian', '20', 'South Indian,North Indian', 563149),
('Indian', '20', 'South Indian,North Indian', 665896),
('Indian', '20', 'South Indian,North Indian', 854763),
('Indian', '20', 'South Indian, North India', 857421),
('Indian', '20', 'South Indian,North Indian', 896453),
('Indian', '20', 'South Indian,North Indian', 985412),
('Italian', '25', 'Pizzas, Pastas', 563149),
('Italian', '25', 'Pizzas, Pastas', 665896),
('Italian', '25', 'Pizzas, Pastas', 854763),
('Italian', '25', 'Pizzas, Pastas', 857421),
('Italian', '25', 'Pizzas, Pastas', 896453),
('Italian', '25', 'Pizzas, Pastas', 985412);

-- --------------------------------------------------------

--
-- Table structure for table `breakfast_review`
--

CREATE TABLE `breakfast_review` (
  `RID` int(6) NOT NULL,
  `HotelID` int(6) NOT NULL,
  `Btype` varchar(12) NOT NULL,
  `CID` int(6) NOT NULL,
  `Text` varchar(200) NOT NULL,
  `Rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `C_Number` bigint(16) NOT NULL,
  `Ctype` varchar(12) NOT NULL,
  `Code` int(6) NOT NULL,
  `ExpDate` date NOT NULL,
  `Name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`C_Number`, `Ctype`, `Code`, `ExpDate`, `Name`) VALUES
(12312, '31441', 233, '2019-12-25', 'kyfjky'),
(1111111111111111, 'rupay', 265, '2019-12-20', 'Karannnn'),
(1111222235544155, 'visa', 659, '2019-12-27', 'Rohitttt'),
(1234123412341234, 'visa', 345, '2019-12-26', 'Monisha'),
(1234432112344321, 'Visa', 959, '2019-12-25', 'Rohit'),
(1234432112349876, 'MasterCard', 595, '2019-12-30', 'Sugardaddy69'),
(1234432772349886, 'MasterCard', 595, '2019-12-30', 'Sugardaddy69'),
(1234432812349876, 'MasterCard', 595, '2019-12-30', 'Sugardaddy69'),
(1234432812349886, 'MasterCard', 595, '2019-12-30', 'Sugardaddy69'),
(1234856988456215, 'Visa', 669, '2019-12-12', 'ndsia'),
(1234896574582136, 'amex', 659, '2019-12-27', 'Rohit'),
(1585127881529555, 'rupay', 0, '2019-12-20', 'ppp'),
(5644848154854515, 'amex', 566, '2019-12-10', 'Rogihg'),
(5856855558854458, 'amex', 558, '2019-12-20', 'djiasidi'),
(6262962962965945, 'vis', 595, '2019-12-27', 'rohit'),
(6595959859594925, 'amex', 554, '2019-12-27', 'kra'),
(6595959859594949, 'amex', 554, '2019-12-27', 'kra'),
(6656264963632623, 'amex', 595, '2019-12-20', 'Rohitt'),
(8585127725295275, 'rupay', 0, '2019-12-20', 'ppp'),
(8585127725295285, 'rupay', 0, '2019-12-20', 'ppp'),
(8585127881529505, 'rupay', 0, '2019-12-20', 'ppp'),
(8585127881529555, 'rupay', 0, '2019-12-20', 'ppp'),
(8585127882529505, 'rupay', 0, '2019-12-20', 'ppp'),
(8585127882529525, 'rupay', 0, '2019-12-20', 'ppp'),
(8585227725295285, 'rupay', 0, '2019-12-20', 'ppp'),
(8585227727285285, 'rupay', 0, '2019-12-20', 'ppp'),
(8585227727295285, 'rupay', 0, '2019-12-20', 'ppp'),
(8585282828528283, 'visa', 555, '2019-12-06', 'harsh'),
(9234432112329876, 'MasterCard', 595, '2019-12-30', 'Sugardaddy69'),
(9234432112349876, 'MasterCard', 595, '2019-12-30', 'Sugardaddy69'),
(9234433102329876, 'MasterCard', 595, '2019-12-30', 'Sugardaddy69'),
(9234433112329876, 'MasterCard', 595, '2019-12-30', 'Sugardaddy69'),
(15851278751527555, 'rupay', 0, '2019-12-20', 'ppp'),
(15851278751529555, 'rupay', 0, '2019-12-20', 'ppp'),
(15851278761327555, 'rupay', 0, '2019-12-20', 'ppp'),
(15851278761527555, 'rupay', 0, '2019-12-20', 'ppp'),
(123443277234778586, 'MasterCard', 595, '2019-12-30', 'Sugardaddy69');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CID` int(6) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `PhoneNo` bigint(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CID`, `Name`, `Address`, `PhoneNo`, `Email`, `password`) VALUES
(875466, 'Monisha', '585 Cleveland Ave', 8574621358, 'ms@gmail.com', '1234'),
(875467, 'Rohit', 'Ann st', 973362025, 'rlt@njit.edu', '12345'),
(875468, 'Karan', '305 Ann Street, FL 2', 9733362696, 'kb@njit.edu', '1234'),
(875469, 'Dishank', '305 Ann Street, FL 2', 9733362695, 'dk@njit.edu', 'qwerty'),
(875470, 'Pratik', 'avenue, avenue', 9733369851, 'pratik@gmail.com', '12345'),
(875471, 'Lydia', 'lydia corner ', 9733362580, 'lydia@njit', '12345'),
(875472, 'Harsh Dodia', 'djnsajo', 9733385858, 'harsh@njit.edu', 'harsh');

-- --------------------------------------------------------

--
-- Table structure for table `discounted_room`
--

CREATE TABLE `discounted_room` (
  `HotelID` int(6) NOT NULL,
  `RoomNo` int(3) NOT NULL,
  `Discount` float NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `HotelID` int(5) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `Country` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `ZIP` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`HotelID`, `Street`, `Country`, `State`, `ZIP`) VALUES
(563149, 'Jayanagar Bangalore', 'India', 'Karnataka', 560078),
(665896, 'California Avenue, San Jose', 'United States', 'California', 456789),
(854763, '227, Cleveland Avenue, Harrison', 'USA', 'NEW JERSEY', 7029),
(857421, 'Wall Street, NY', 'USA', 'New York', 10001),
(896453, '431, Andheri, Mumbai', 'India', 'Maharastra', 431896),
(985412, 'Oxegen Avenue, New port,', 'USA', 'New Jersey', 124585);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `InvoiceNo` int(6) NOT NULL,
  `Cid` int(6) NOT NULL,
  `CNumber` bigint(16) NOT NULL,
  `Rdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`InvoiceNo`, `Cid`, `CNumber`, `Rdate`) VALUES
(112233, 875466, 1234123412341234, '2019-12-10'),
(112240, 875471, 5644848154854515, '2019-12-19'),
(112241, 875472, 8585282828528283, '2019-12-21'),
(112242, 875471, 8585227727285285, '2019-12-13'),
(112243, 0, 8585227727295285, '2019-12-13'),
(112244, 0, 8585227725295285, '2019-12-13'),
(112245, 0, 8585127725295285, '2019-12-13'),
(112246, 0, 8585127725295275, '2019-12-13'),
(112247, 0, 8585127882529525, '2019-12-13'),
(112248, 0, 8585127882529505, '2019-12-13'),
(112249, 0, 8585127881529505, '2019-12-13'),
(112250, 0, 8585127881529555, '2019-12-13'),
(112251, 0, 1585127881529555, '2019-12-13'),
(112252, 0, 15851278751529555, '2019-12-13'),
(112253, 0, 15851278751527555, '2019-12-13'),
(112254, 0, 15851278761527555, '2019-12-13'),
(112255, 0, 15851278761327555, '2019-12-13'),
(112256, 0, 9234432112349876, '2019-12-19'),
(112257, 0, 9234432112329876, '2019-12-19'),
(112258, 0, 9234433112329876, '2019-12-19'),
(112259, 0, 9234433102329876, '2019-12-19'),
(112260, 875468, 1111111111111111, '2020-01-02'),
(112261, 875471, 6262962962965945, '2019-12-12'),
(112262, 875471, 1111222235544155, '2019-12-13'),
(112263, 875468, 1234432812349876, '2019-12-19'),
(112264, 875468, 1234432812349886, '2019-12-19'),
(112265, 875468, 1234432772349886, '2019-12-19'),
(112266, 875468, 123443277234778586, '2019-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` int(3) NOT NULL,
  `Rtype` varchar(16) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Floor` int(3) NOT NULL,
  `Capacity` int(2) NOT NULL,
  `HotelID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `Rtype`, `Price`, `Description`, `Floor`, `Capacity`, `HotelID`) VALUES
(101, 'Deluxe', '120', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 1, 4, 563149),
(101, 'Deluxe', '140', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 1, 3, 665896),
(101, 'Deluxe', '80', 'Good room', 1, 3, 854763),
(101, 'Deluxe', '103', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 1, 4, 857421),
(101, 'Deluxe', '100', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 1, 3, 896453),
(101, 'Deluxe', '111', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 1, 3, 985412),
(102, 'Deluxe', '80', 'Good room', 1, 3, 854763),
(102, 'Presidential', '103', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 1, 4, 857421),
(103, 'Deluxe', '120', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 1, 6, 857421),
(201, 'Deluxe', '120', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 2, 4, 563149),
(201, 'Deluxe', '140', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 2, 3, 665896),
(201, 'Supreme', '105', 'Great room', 2, 3, 854763),
(201, 'Deluxe', '100', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 2, 3, 896453),
(202, 'Supreme', '105', 'Great room', 2, 3, 854763),
(202, 'Presidential', '160', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 2, 4, 857421),
(202, 'Presidential', '111', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 2, 4, 985412),
(301, 'Deluxe', '120', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 3, 4, 563149),
(301, 'Deluxe', '140', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 3, 3, 665896),
(301, 'Presidential', '155', 'Nice room', 3, 3, 854763),
(301, 'Deluxe', '100', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 3, 4, 896453),
(301, 'Deluxe', '111', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 3, 3, 985412),
(302, 'Presidential', '120', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 3, 3, 985412),
(401, 'Deluxe', '120', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 4, 4, 563149),
(401, 'Supreme', '150', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 4, 6, 665896),
(401, 'Supreme', '130', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 4, 6, 896453),
(402, 'Presidential', '130', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 4, 6, 563149),
(402, 'Supreme', '150', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 4, 6, 665896),
(402, 'Supreme', '130', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 4, 6, 896453),
(402, 'Presidential', '105', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 4, 6, 985412),
(403, 'Supreme', '160', 'All our guestrooms are elegantly furnished with handmade furniture include luxury en-suite facilities with complimentary amenities pack, flat screen LCD TV, tea/coffee making facilities, fan, hairdrye', 4, 4, 857421);

-- --------------------------------------------------------

--
-- Table structure for table `room_reservation`
--

CREATE TABLE `room_reservation` (
  `InvoiceNo` int(6) NOT NULL,
  `HotelID` int(6) NOT NULL,
  `RoomNo` int(3) NOT NULL,
  `CheckInDate` date NOT NULL,
  `CheckOutDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_reservation`
--

INSERT INTO `room_reservation` (`InvoiceNo`, `HotelID`, `RoomNo`, `CheckInDate`, `CheckOutDate`) VALUES
(112233, 563149, 101, '2019-12-10', '2019-12-12'),
(112252, 563149, 101, '2019-12-13', '2019-12-20'),
(112261, 563149, 201, '2019-12-12', '2019-12-13'),
(112262, 854763, 101, '2019-12-13', '2019-12-19'),
(112260, 857421, 101, '2020-01-02', '2020-01-10'),
(112256, 985412, 101, '2019-12-19', '2020-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `room_review`
--

CREATE TABLE `room_review` (
  `RID` int(6) NOT NULL,
  `Rating` int(1) NOT NULL,
  `Text` varchar(200) NOT NULL,
  `CID` int(6) NOT NULL,
  `HotelID` int(6) NOT NULL,
  `RoomNo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rresv_breakfast`
--

CREATE TABLE `rresv_breakfast` (
  `Btype` varchar(25) NOT NULL,
  `HotelID` int(6) NOT NULL,
  `Roomno` int(3) NOT NULL,
  `CheckInDate` date NOT NULL,
  `Numorders` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rresv_breakfast`
--

INSERT INTO `rresv_breakfast` (`Btype`, `HotelID`, `Roomno`, `CheckInDate`, `Numorders`) VALUES
('Italian', 985412, 101, '2019-12-19', 8);

-- --------------------------------------------------------

--
-- Table structure for table `rresv_service`
--

CREATE TABLE `rresv_service` (
  `HotelID` int(6) NOT NULL,
  `RoomNo` int(3) NOT NULL,
  `CheckInDateService` date NOT NULL,
  `STyperesv` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `HotelID` int(6) NOT NULL,
  `SPrice` decimal(4,0) NOT NULL,
  `SType` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`HotelID`, `SPrice`, `SType`) VALUES
(563149, '45', 'Airport Pickup and Drop'),
(563149, '30', 'Laundry'),
(563149, '20', 'Salon Services'),
(563149, '20', 'Spa'),
(665896, '45', 'Airport Pickup and Drop'),
(665896, '30', 'Laundry'),
(665896, '20', 'Salon Services'),
(665896, '20', 'Spa'),
(854763, '45', 'Airport Pickup and Drop'),
(854763, '30', 'Laundry'),
(854763, '20', 'Salon Services'),
(857421, '45', 'Airport Pickup and Drop'),
(857421, '30', 'Laundry'),
(857421, '20', 'Salon Services'),
(857421, '20', 'Spa'),
(896453, '45', 'Airport Pickup and Drop'),
(896453, '30', 'Laundry'),
(896453, '20', 'Salon Services'),
(896453, '20', 'Spa'),
(985412, '45', 'Airport Pickup and Drop'),
(985412, '30', 'Laundry'),
(985412, '20', 'Salon Services'),
(985412, '20', 'Spa');

-- --------------------------------------------------------

--
-- Table structure for table `service_review`
--

CREATE TABLE `service_review` (
  `RID` int(6) NOT NULL,
  `HotelID` int(6) NOT NULL,
  `Stype` varchar(50) NOT NULL,
  `CID` int(6) NOT NULL,
  `Rating` int(1) NOT NULL,
  `Text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breakfast`
--
ALTER TABLE `breakfast`
  ADD PRIMARY KEY (`Btype`,`HotelID`),
  ADD KEY `HotelID` (`HotelID`);

--
-- Indexes for table `breakfast_review`
--
ALTER TABLE `breakfast_review`
  ADD PRIMARY KEY (`RID`),
  ADD KEY `HotelID` (`HotelID`),
  ADD KEY `Btype` (`Btype`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`C_Number`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `discounted_room`
--
ALTER TABLE `discounted_room`
  ADD PRIMARY KEY (`HotelID`,`RoomNo`),
  ADD KEY `HotelID` (`HotelID`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`HotelID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`InvoiceNo`),
  ADD KEY `CNumber` (`CNumber`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`,`HotelID`),
  ADD KEY `HotelID` (`HotelID`);

--
-- Indexes for table `room_reservation`
--
ALTER TABLE `room_reservation`
  ADD PRIMARY KEY (`HotelID`,`RoomNo`,`CheckInDate`),
  ADD KEY `InvoiceNo` (`InvoiceNo`),
  ADD KEY `HotelID` (`HotelID`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Indexes for table `room_review`
--
ALTER TABLE `room_review`
  ADD PRIMARY KEY (`RID`),
  ADD KEY `HotelID` (`HotelID`),
  ADD KEY `RoomNo` (`RoomNo`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `rresv_breakfast`
--
ALTER TABLE `rresv_breakfast`
  ADD PRIMARY KEY (`Btype`,`HotelID`,`Roomno`,`CheckInDate`),
  ADD KEY `Btype` (`Btype`),
  ADD KEY `HotelID` (`HotelID`),
  ADD KEY `Roomno` (`Roomno`),
  ADD KEY `CheckInDate` (`CheckInDate`),
  ADD KEY `CheckInDate_2` (`CheckInDate`),
  ADD KEY `rresv_breakfast_ibfk_1` (`HotelID`,`Roomno`,`CheckInDate`);

--
-- Indexes for table `rresv_service`
--
ALTER TABLE `rresv_service`
  ADD PRIMARY KEY (`HotelID`,`RoomNo`,`CheckInDateService`,`STyperesv`),
  ADD KEY `HotelID` (`HotelID`),
  ADD KEY `RoomNo` (`RoomNo`),
  ADD KEY `CheckInDate` (`CheckInDateService`),
  ADD KEY `SType` (`STyperesv`),
  ADD KEY `rresv_service_ibfk_1` (`HotelID`,`STyperesv`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`HotelID`,`SType`),
  ADD KEY `HotelID` (`HotelID`);

--
-- Indexes for table `service_review`
--
ALTER TABLE `service_review`
  ADD PRIMARY KEY (`RID`),
  ADD KEY `HotelID` (`HotelID`),
  ADD KEY `Stype` (`Stype`),
  ADD KEY `service_review_ibfk_1` (`HotelID`,`Stype`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `InvoiceNo` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112267;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `breakfast`
--
ALTER TABLE `breakfast`
  ADD CONSTRAINT `breakfast_ibfk_1` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`HotelID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `breakfast_review`
--
ALTER TABLE `breakfast_review`
  ADD CONSTRAINT `breakfast_review_ibfk_1` FOREIGN KEY (`Btype`) REFERENCES `breakfast` (`Btype`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `breakfast_review_ibfk_2` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`HotelID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discounted_room`
--
ALTER TABLE `discounted_room`
  ADD CONSTRAINT `discounted_room_ibfk_1` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`HotelID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discounted_room_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`CNumber`) REFERENCES `credit_card` (`C_Number`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`HotelID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `room_reservation`
--
ALTER TABLE `room_reservation`
  ADD CONSTRAINT `room_reservation_ibfk_2` FOREIGN KEY (`InvoiceNo`) REFERENCES `reservation` (`InvoiceNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_reservation_ibfk_3` FOREIGN KEY (`HotelID`,`RoomNo`) REFERENCES `room` (`HotelID`, `RoomNo`);

--
-- Constraints for table `room_review`
--
ALTER TABLE `room_review`
  ADD CONSTRAINT `room_review_ibfk_1` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`HotelID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_review_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_review_ibfk_3` FOREIGN KEY (`CID`) REFERENCES `customer` (`CID`);

--
-- Constraints for table `rresv_breakfast`
--
ALTER TABLE `rresv_breakfast`
  ADD CONSTRAINT `rresv_breakfast_ibfk_1` FOREIGN KEY (`HotelID`,`Roomno`,`CheckInDate`) REFERENCES `room_reservation` (`HotelID`, `RoomNo`, `CheckInDate`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rresv_breakfast_ibfk_2` FOREIGN KEY (`Btype`,`HotelID`) REFERENCES `breakfast` (`Btype`, `HotelID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rresv_service`
--
ALTER TABLE `rresv_service`
  ADD CONSTRAINT `rresv_service_ibfk_1` FOREIGN KEY (`HotelID`,`STyperesv`) REFERENCES `service` (`HotelID`, `SType`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rresv_service_ibfk_2` FOREIGN KEY (`HotelID`,`RoomNo`,`CheckInDateService`) REFERENCES `room_reservation` (`HotelID`, `RoomNo`, `CheckInDate`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`HotelID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_review`
--
ALTER TABLE `service_review`
  ADD CONSTRAINT `service_review_ibfk_1` FOREIGN KEY (`HotelID`,`Stype`) REFERENCES `service` (`HotelID`, `SType`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
