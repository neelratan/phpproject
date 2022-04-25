-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 04:49 PM
-- Server version: 5.6.21
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carrentalp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
`car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Audi A4', 'GA3KA6969', 'assets/img/cars/audi-a4.jpg', 36, 26, 5200, 2600, 'yes'),
(2, 'Hyundai Creta', 'BA2CH2020', 'assets/img/cars/creta.jpg', 22, 12, 2900, 1400, 'yes'),
(3, 'BMW 6-Series', 'BA10PA5555', 'assets/img/cars/bmw6.jpg', 39, 30, 6950, 5999, 'yes'),
(4, 'Mercedes-Benz E-Class', 'BA10CH6009', 'assets/img/cars/mcec.jpg', 45, 30, 7200, 5200, 'yes'),
(6, 'Ford EcoSport', 'GA4PA2587', 'assets/img/cars/ecosport.png', 21, 13, 3890, 2600, 'yes'),
(7, 'Honda Amaze', 'PJ16YX8820', 'assets/img/cars/amaze.png', 14, 12, 2800, 2400, 'no'),
(8, 'Land Rover Range Rover Sport', 'GA5KH9669', 'assets/img/cars/rangero.jpg', 36, 26, 6000, 4600, 'yes'),
(9, 'MG Hector', 'GA6PA6666', 'assets/img/cars/mghector.jpg', 20, 12, 2900, 1400, 'yes'),
(10, 'Honda CR-V', 'TN17MS1997', 'assets/img/cars/hondacr.jpg', 22, 15, 2850, 1400, 'yes'),
(11, 'Mahindra XUV 500', 'KA12EX1883', 'assets/img/cars/Mahindra XUV.jpg', 15, 13, 3000, 2600, 'yes'),
(12, 'Toyota Fortuner', 'GA08MX1997', 'assets/img/cars/Fortuner.png', 16, 14, 3200, 2800, 'yes'),
(13, 'Hyundai Veloster', 'BA20PA5685', 'assets/img/cars/hyundai0.png', 23, 15, 4500, 3500, 'yes'),
(14, 'Jaguar XF', 'GA8KH8866', 'assets/img/cars/jaguarxf.jpg', 39, 29, 6100, 4380, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE IF NOT EXISTS `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(1, 'harman'),
(3, 'harman'),
(7, 'harman'),
(8, 'harman'),
(9, 'harman'),
(11, 'harman'),
(12, 'harman'),
(2, 'neel'),
(4, 'neel'),
(6, 'neel'),
(10, 'neel'),
(13, 'neel'),
(14, 'neel');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('harman', 'Harmanpreet kaur', '9876543210', 'harmanpreet@gmail.com', '2477  phagwara', 'password'),
('neel', 'Neelratan Singh', '7850000069', 'neel2111@gmail.com', '4139  maharajganj', 'neel'),
('tom', 'Tommy Deol', '900696969', 'tomdeol21@gmail.com', '4645  chandigarh', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('antika', 'Antika Sharma', '0785556580', 'antikay@gmail.com', 'gorakhpur', 'password'),
('krishna', 'krishna Devgan', '8544444444', 'krishna@gmail.com', 'Delhi', 'password'),
('ishan', 'Ishan Kisan', '69741111110', 'kishan@gmail.com', 'Mumbai', 'password'),
('james', 'James Anderson', '0258786969', 'james@gmail.com', 'Mayo Street', 'password'),
('lovelina', 'Lovelina Kushwaha', '7003658500', 'lovelina@gmail.com', 'Manali', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
`driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'Abhishek Sharma', '27840218658 ', '9547863157', 'phagwara', 'Male', 'harman', 'yes'),
(2, 'Waseem Jaffer', '03191563155 ', '9147523684', 'Kota', 'Male', 'harman', 'yes'),
(3, 'Shuklu Gupta', '32346288078 ', '9147523682', 'Maharajganj', 'Male', 'harman', 'yes'),
(4, 'Ishika Goyal', '04316015965 ', '9187563240', 'Lucknow', 'Female', 'neel', 'no'),
(5, 'Anamika Mishra', '68799466631 ', '7584960123', 'Lucknow', 'Female', 'neel', 'yes'),
(6, 'Utkarsh Divedi', '36740186040 ', '8421025476', 'Maharajganj', 'Male', 'tom', 'yes'),
(7, 'Nishank', '44919316260 ', '7541023695', 'Jalandhar', 'Male', 'harman', 'yes'),
(8, 'Tony Kakkar', '94592817723', '5215557850', 'Mumbai', 'Male', 'neel', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Nikhil', 'nikhil@gmail.com', 'Hope this works.');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE IF NOT EXISTS `rentedcars` (
`id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=574681260 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681245, 'ishan', 4, 2, '2021-07-18', '2021-07-01', '2021-07-02', '2021-07-18', 11, 'km', 244, 1, 5884, 'R'),
(574681246, 'james', 6, 6, '2021-07-18', '2021-06-01', '2021-06-28', '2021-07-18', 15, 'km', 69, 27, 5035, 'R'),
(574681247, 'antika', 3, 1, '2021-07-18', '2021-07-19', '2021-07-22', '2021-07-20', 13, 'km', 421, 3, 5473, 'R'),
(574681248, 'ishan', 1, 2, '2021-07-20', '2021-07-28', '2021-07-29', '2021-07-20', 10, 'km', 69, 1, 690, 'R'),
(574681249, 'james', 1, 2, '2021-07-23', '2021-07-24', '2021-07-25', '2021-07-23', 10, 'km', 500, 1, 5000, 'R'),
(574681250, 'lovelina', 3, 2, '2021-07-23', '2021-07-23', '2021-07-24', '2021-07-23', 2600, 'days', NULL, 1, 2600, 'R'),
(574681251, 'james', 10, 1, '2021-07-23', '2021-07-25', '2021-07-30', '2021-07-23', 10, 'km', 60, 2, 600, 'R'),
(574681252, 'krishna', 11, 2, '2021-07-23', '2021-07-23', '2021-07-23', '2021-07-23', 13, 'km', 200, 0, 2600, 'R'),
(574681253, 'krishna', 6, 7, '2021-07-23', '2021-07-23', '2021-08-03', '2021-07-23', 2600, 'days', NULL, 11, 28600, 'R'),
(574681254, 'ishan', 12, 5, '2021-07-23', '2021-07-23', '2021-07-26', '2021-07-23', 3200, 'days', NULL, 3, 9600, 'R'),
(574681255, 'krishna', 8, 5, '2021-07-23', '2021-07-23', '2021-08-08', '2021-07-23', 2400, 'days', NULL, 16, 38400, 'R'),
(574681257, 'james', 7, 4, '2021-08-11', '2021-08-13', '2021-08-17', NULL, 14, 'km', NULL, NULL, NULL, 'NR'),
(574681258, 'lovelina', 3, 1, '2021-03-24', '2021-03-24', '2021-03-25', '2021-03-24', 2600, 'days', NULL, 1, 2600, 'R'),
(574681259, 'lovelina', 14, 8, '2021-03-24', '2021-03-24', '2021-03-26', '2021-03-24', 6100, 'days', NULL, 2, 12200, 'R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
 ADD PRIMARY KEY (`car_id`), ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
 ADD PRIMARY KEY (`car_id`), ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
 ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
 ADD PRIMARY KEY (`driver_id`), ADD UNIQUE KEY `dl_number` (`dl_number`), ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
 ADD PRIMARY KEY (`id`), ADD KEY `customer_username` (`customer_username`), ADD KEY `car_id` (`car_id`), ADD KEY `driver_id` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=574681260;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
