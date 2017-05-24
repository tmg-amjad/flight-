-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2017 at 01:34 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flightreservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `b_fid` varchar(5) NOT NULL,
  `b_phno` varchar(15) NOT NULL,
  `b_mail` varchar(50) NOT NULL,
  `b_add` varchar(100) NOT NULL,
  `b_price` varchar(10) NOT NULL,
  `b_child` varchar(3) NOT NULL,
  `b_adults` varchar(3) NOT NULL,
  `b_total` varchar(3) NOT NULL,
  `b_status` varchar(10) NOT NULL,
  `b_pnr` varchar(20) NOT NULL,
  `b_card` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`b_id`, `b_name`, `b_fid`, `b_phno`, `b_mail`, `b_add`, `b_price`, `b_child`, `b_adults`, `b_total`, `b_status`, `b_pnr`, `b_card`) VALUES
(8, 'Ankur Sinha', '100', '9988877768', 'ankur218@yahoo.com', '45 XYZ Street ABC Nagar Chennai 80', '6000', '0', '1', '1', 'CANCELLED', '11181508092014', '1234567891234567'),
(9, 'Ankur Sinha', '100', '9988877768', 'ankur218@yahoo.com', '45 XYZ Street ABC Nagar Chennai 80', '6000', '0', '1', '1', 'CANCELLED', '11181508092114', '1234567891234567'),
(10, 'Ankur Sinha', '100', '9988877768', 'ankur218@yahoo.com', '45 XYZ Street ABC Nagar Chennai 80', '6000', '0', '1', '1', 'CANCELLED', '12350308092014', '1234567891234567'),
(11, 'Ankur Sinha', '100', '9988877768', 'ankur218@yahoo.com', '45 XYZ Street ABC Nagar Chennai 80', '6000', '0', '1', '1', 'Booked', '12350308092114', '1234567891234567'),
(12, 'Ankur Sinha', '100', '9988877768', 'ankur218@yahoo.com', '45 XYZ Street ABC Nagar Chennai 80', '6000', '0', '1', '1', 'Booked', '14203508092014', '1234567891234567'),
(13, 'Ankur Sinha', '100', '9988877768', 'ankur218@yahoo.com', '45 XYZ Street ABC Nagar Chennai 80', '6000', '0', '1', '1', 'Booked', '14203508092114', '1234567891234567'),
(14, 'Muhammad Amjad', '102', '0731903622', 'amjadkhansarwar@gmail.com', 'RÃ¶ntgenvÃ¤gen 1', '6000', '0', '1', '1', 'CANCELLED', '14343824052017', '1234567891234567'),
(15, 'Muhammad Amjad', '102', '0731903622', 'amjadkhansarwar@gmail.com', 'RÃ¶ntgenvÃ¤gen 1', '6000', '0', '1', '1', 'CANCELLED', '14343824052117', '1234567891234567'),
(16, 'Muhammad Amjad', '102', '0731903622', 'amjadkhansarwar@gmail.com', 'RÃ¶ntgenvÃ¤gen 1', '6000', '0', '1', '1', 'CANCELLED', '15415624052017', '1234567891234567'),
(17, 'Muhammad Amjad', '102', '0731903622', 'amjadkhansarwar@gmail.com', 'RÃ¶ntgenvÃ¤gen 1', '6000', '0', '1', '1', 'CANCELLED', '15415624052117', '1234567891234567'),
(18, 'Muhammad Amjad', '102', '0731903622', 'amjadkhansarwar@gmail.com', 'RÃ¶ntgenvÃ¤gen 1', '6000', '0', '1', '1', 'CANCELLED', '16003324052017', '1234567891234567'),
(19, 'Muhammad Amjad', '102', '0731903622', 'amjadkhansarwar@gmail.com', 'RÃ¶ntgenvÃ¤gen 1', '6000', '0', '1', '1', 'CANCELLED', '16003324052117', '1234567891234567');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_cvv` int(3) NOT NULL,
  `c_cnum` varchar(16) NOT NULL,
  `c_balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`c_id`, `c_name`, `c_cvv`, `c_cnum`, `c_balance`) VALUES
(87878, 'Amajd', 123, '1234567891234567', 82000),
(87879, 'Sukanya Sunder', 899, '9876543212345678', 89898);

-- --------------------------------------------------------

--
-- Table structure for table `flight_search`
--

CREATE TABLE `flight_search` (
  `id` int(11) NOT NULL,
  `fno` varchar(10) NOT NULL,
  `from_city` varchar(20) NOT NULL,
  `to_city` varchar(20) NOT NULL,
  `departure_date` varchar(20) NOT NULL,
  `arrival_date` varchar(20) NOT NULL,
  `departure_time` varchar(20) NOT NULL,
  `arrival_time` varchar(20) NOT NULL,
  `e_seats_left` int(3) NOT NULL DEFAULT '20',
  `b_seats_left` int(3) NOT NULL DEFAULT '10',
  `e_price` int(5) NOT NULL,
  `b_price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_search`
--

INSERT INTO `flight_search` (`id`, `fno`, `from_city`, `to_city`, `departure_date`, `arrival_date`, `departure_time`, `arrival_time`, `e_seats_left`, `b_seats_left`, `e_price`, `b_price`) VALUES
(1, 'SA218', 'Ronneby', 'Copenhagen', '30-05-2017', '31-05-2017', '09:00', '12:00 ', 14, 10, 2500, 5000),
(2, 'SA2112', 'Copenhagen', 'Ronneby', '31-05-2017', '01-06-2017', '13:00', '16:00', 12, 10, 2500, 5000),
(3, 'SA219', 'Chennai', 'Delhi', '30-09-2014', '30-09-2014', '18:00 ', '21:00 ', 18, 10, 2500, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `flight_users`
--

CREATE TABLE `flight_users` (
  `f_id` int(11) NOT NULL,
  `f_fname` varchar(20) NOT NULL,
  `f_lname` varchar(20) NOT NULL,
  `f_sex` varchar(10) NOT NULL,
  `f_uname` varchar(32) NOT NULL,
  `f_password` varchar(32) NOT NULL,
  `f_mailid` varchar(100) NOT NULL,
  `f_mailcode` varchar(100) NOT NULL,
  `f_active` int(11) NOT NULL,
  `f_regdate` datetime NOT NULL,
  `f_passrec` int(11) NOT NULL,
  `f_address` varchar(500) NOT NULL,
  `f_phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_users`
--

INSERT INTO `flight_users` (`f_id`, `f_fname`, `f_lname`, `f_sex`, `f_uname`, `f_password`, `f_mailid`, `f_mailcode`, `f_active`, `f_regdate`, `f_passrec`, `f_address`, `f_phone`) VALUES
(100, 'Ankur', 'Sinha', 'Male', 'ankur', '5f4dcc3b5aa765d61d8327deb882cf99', 'ankur218@yahoo.com', '', 1, '2014-07-20 12:55:28', 0, '45 XYZ Street ABC Nagar Chennai 80', '9988877768'),
(101, 'Sukanya', 'Sunder', 'Female', 'sukanya', '5f4dcc3b5aa765d61d8327deb882cf99', 'sukanyasunder@gmail.com', '', 1, '2014-07-20 12:55:28', 0, 'No. 54, ABC Street, XYZ Nagar, Delhi - 6', '7827318927'),
(102, 'Muhammad', 'Amjad', 'male', 'amjad1', '706575a89f9b19979be76c153008ab8d', 'amjadkhansarwar@gmail.com', 'f24acdb6826555c541833efd0f9af402', 1, '2017-05-24 01:40:10', 0, 'R&ouml;ntgenv&auml;gen 1', '0731903622'),
(103, 'Nishita', 'Nishita', 'female', 'asdf12', 'e10adc3949ba59abbe56e057f20f883e', 'asdf@gmail.com', '773136abbaa58127d71779e8e94605a8', 1, '2017-05-24 03:32:47', 0, 'bth', '123456778');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_details`
--

CREATE TABLE `passenger_details` (
  `p_id` int(11) NOT NULL,
  `p_pnr` varchar(25) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_age` varchar(3) NOT NULL,
  `p_sex` varchar(10) NOT NULL,
  `p_fno` varchar(10) NOT NULL,
  `p_from` varchar(10) NOT NULL,
  `p_to` varchar(10) NOT NULL,
  `p_dedate` varchar(20) NOT NULL,
  `p_ardate` varchar(20) NOT NULL,
  `p_detime` varchar(20) NOT NULL,
  `p_artime` varchar(20) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  `p_class` varchar(10) NOT NULL,
  `p_passtype` varchar(1) NOT NULL,
  `p_fid` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger_details`
--

INSERT INTO `passenger_details` (`p_id`, `p_pnr`, `p_name`, `p_age`, `p_sex`, `p_fno`, `p_from`, `p_to`, `p_dedate`, `p_ardate`, `p_detime`, `p_artime`, `p_status`, `p_class`, `p_passtype`, `p_fid`) VALUES
(18, '14203508092014', 'Sukanya Sunder', 'F', '20', 'SA2112', 'Delhi', 'Chennai', '30-09-2014', '30-09-2014', '13:00', '16:00', 'Booked', 'Economy', 'A', '100'),
(19, '14203508092114', 'Sukanya Sunder', 'F', '20', 'SA219', 'Chennai', 'Delhi', '30-09-2014', '30-09-2014', '13:00', '16:00', 'Booked', 'Economy', 'A', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `flight_search`
--
ALTER TABLE `flight_search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_users`
--
ALTER TABLE `flight_users`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `passenger_details`
--
ALTER TABLE `passenger_details`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87880;
--
-- AUTO_INCREMENT for table `flight_search`
--
ALTER TABLE `flight_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `flight_users`
--
ALTER TABLE `flight_users`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `passenger_details`
--
ALTER TABLE `passenger_details`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
