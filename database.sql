-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2016 at 01:33 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crs`
--

-- --------------------------------------------------------

--
-- Table structure for table `fir_details`
--

CREATE TABLE IF NOT EXISTS `fir_details` (
  `F_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `time` datetime NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `crime_id` int(10) unsigned NOT NULL,
  `id_proof` varchar(45) NOT NULL,
  `id_proof_no` int(10) unsigned NOT NULL,
  `crimephoto1` varchar(255) DEFAULT NULL,
  `crimephoto2` varchar(255) DEFAULT NULL,
  `crimelocation` varchar(45) NOT NULL,
  `reg_id` int(10) unsigned NOT NULL,
  `claim_id` int(10) unsigned NOT NULL,
  `victim_id` int(10) unsigned NOT NULL,
  `dt_time` datetime DEFAULT NULL,
  `area_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`F_id`),
  KEY `FK_fir_details_1` (`crime_id`),
  KEY `FK_fir_details_2` (`reg_id`),
  KEY `FK_fir_details_3` (`claim_id`),
  KEY `FK_fir_details_4` (`victim_id`),
  KEY `FK_fir_details_5` (`area_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fir_details`
--

INSERT INTO `fir_details` (`F_id`, `date`, `time`, `description`, `status`, `crime_id`, `id_proof`, `id_proof_no`, `crimephoto1`, `crimephoto2`, `crimelocation`, `reg_id`, `claim_id`, `victim_id`, `dt_time`, `area_id`) VALUES
(1, '2010-04-25 00:00:00', '2010-10-10 00:00:00', 'laptop', '1', 2, 'Election Card', 4294967295, 'upload/Desert\r\nLandscape.jpg', 'upload/Autumn Leaves.jpg', '80 foot road', 40, 41, 43, '0000-00-00 00:00:00', 6),
(2, '1995-04-05 00:00:00', '2010-10-10 00:00:00', 'hand bag stolen', '1', 2, 'Election Card', 70707070, 'upload/a31.jpg', 'upload/a19.jpg', 'Paldi', 44, 45, 46, '0000-00-00 00:00:00', 1),
(3, '1995-04-05 00:00:00', '2010-10-10 00:00:00', 'hand bag stolen', '1', 2, 'Election Card', 70707070, 'upload/a31.jpg', 'upload/a19.jpg', 'Paldi', 44, 45, 47, '0000-00-00 00:00:00', 1),
(4, '2010-02-02 00:00:00', '2010-10-10 00:00:00', 'Mobile Stallen', '1', 2, 'Election Card', 380380, 'upload/Mafia.jpg', 'upload/Rs1001.JPG', 'At Mahalaxmi Cross Road', 48, 49, 50, '0000-00-00 00:00:00', 1),
(5, '2010-04-01 00:00:00', '2010-10-00 00:00:00', 'laptop', '1', 2, 'Election Card', 346875, 'upload/Sunset.jpg', 'upload/Winter.jpg', 'at ms uni road', 51, 52, 54, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `fir_forward`
--

CREATE TABLE IF NOT EXISTS `fir_forward` (
  `F_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `description` varchar(45) NOT NULL,
  `dt_time` datetime DEFAULT NULL,
  `from` varchar(45) NOT NULL,
  PRIMARY KEY (`F_id`),
  KEY `FK_fir_forward_1` (`username`),
  KEY `FK_fir_forward_2` (`from`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fir_forward`
--

INSERT INTO `fir_forward` (`F_id`, `username`, `status`, `description`, `dt_time`, `from`) VALUES
(2, 'param', '1', '               re', '2010-04-22 17:19:18', 'param'),
(3, 'pradeep', '1', '               rewe', '2010-04-22 17:19:30', 'param'),
(4, 'kinjal', '1', '               vghjgh', '2010-04-22 17:30:02', 'param'),
(5, 'kinjal', '1', '              this is demo....', '2010-04-22 17:31:29', 'param');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_area`
--

CREATE TABLE IF NOT EXISTS `mstr_area` (
  `area_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_name` varchar(45) NOT NULL,
  `pincode` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`area_id`),
  KEY `FK_mstr_area_1` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mstr_area`
--

INSERT INTO `mstr_area` (`area_id`, `area_name`, `pincode`, `city_id`) VALUES
(1, 'Vasna', 380000, 1),
(2, 'Mamnagar', 380052, 1),
(3, 'Navarangpura', 380006, 1),
(4, 'Vastrapur', 380001, 1),
(5, 'Karelibag', 400001, 2),
(6, 'Alkapuri', 400002, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mstr_city`
--

CREATE TABLE IF NOT EXISTS `mstr_city` (
  `city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(45) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mstr_city`
--

INSERT INTO `mstr_city` (`city_id`, `city_name`) VALUES
(1, 'Nairobi'),
(2, 'Mombasa'),
(3, 'Nakuru'),
(4, 'Naivasha'),
(5, 'Kisumu');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_crimetype`
--

CREATE TABLE IF NOT EXISTS `mstr_crimetype` (
  `crime_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crime_type` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`crime_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mstr_crimetype`
--

INSERT INTO `mstr_crimetype` (`crime_id`, `crime_type`, `description`) VALUES
(1, 'MURDER', 'very denger'),
(2, 'THEFT', 'U have to be careful.'),
(3, 'robbery', 'violent'),
(4, 'Terrorisim', 'dangerous');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_designation`
--

CREATE TABLE IF NOT EXISTS `mstr_designation` (
  `desi_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desi_name` varchar(45) NOT NULL,
  PRIMARY KEY (`desi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mstr_designation`
--

INSERT INTO `mstr_designation` (`desi_id`, `desi_name`) VALUES
(1, 'PSI'),
(2, 'Head Constable'),
(3, 'Constable'),
(4, 'PI');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_login`
--

CREATE TABLE IF NOT EXISTS `mstr_login` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `last_logindatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mstr_login`
--

INSERT INTO `mstr_login` (`username`, `password`, `type`, `status`, `last_logindatetime`) VALUES
('admin', 'admin', 'Police Officer', NULL, NULL),
('fff', 'fff', NULL, NULL, NULL),
('ggg', 'ggg', NULL, NULL, NULL),
('isaiah', 'akello', NULL, NULL, '2016-03-03 15:19:59'),
('kinjal', 'kkk', NULL, NULL, NULL),
('komal', 'koms', NULL, NULL, NULL),
('krishi', 'thakkar', NULL, NULL, NULL),
('krisi', 'hency', NULL, NULL, NULL),
('param', 'patel', 'Police Officer', NULL, NULL),
('pradeep', 'ppp', NULL, NULL, NULL),
('rajaram', 'vyas', NULL, NULL, NULL),
('rajendra', 'rrr', NULL, NULL, NULL),
('rajkumar', 'patel', NULL, NULL, NULL),
('ram', 'raja', 'admin', '1', '2010-10-10 08:08:08'),
('shyam', 'maheta', 'user', '1', '2010-04-05 10:10:00'),
('sss', 'sss', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mstr_missingcitizens`
--

CREATE TABLE IF NOT EXISTS `mstr_missingcitizens` (
  `missing_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gander` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `area_id` int(10) unsigned NOT NULL,
  `special_clue` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`missing_id`),
  KEY `FK_mstr_missingcitizens_1` (`city_id`),
  KEY `FK_mstr_missingcitizens_2` (`area_id`),
  KEY `FK_mstr_missingcitizens_3` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mstr_officer`
--

CREATE TABLE IF NOT EXISTS `mstr_officer` (
  `username` varchar(45) NOT NULL,
  `Jdate` datetime NOT NULL,
  `Ldate` datetime NOT NULL,
  `desi_id` int(10) unsigned NOT NULL,
  `poilcestation_id` int(10) unsigned NOT NULL,
  KEY `FK_mstr_officer_1` (`username`),
  KEY `FK_mstr_officer_2` (`desi_id`),
  KEY `FK_mstr_officer_3` (`poilcestation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mstr_officer`
--

INSERT INTO `mstr_officer` (`username`, `Jdate`, `Ldate`, `desi_id`, `poilcestation_id`) VALUES
('param', '2010-04-13 00:00:00', '2010-04-30 00:00:00', 4, 41),
('komal', '2010-04-05 00:00:00', '2010-04-20 00:00:00', 2, 1),
('kinjal', '2010-04-19 00:00:00', '2010-04-30 00:00:00', 2, 2),
('pradeep', '2010-04-19 00:00:00', '2010-04-30 00:00:00', 2, 44);

-- --------------------------------------------------------

--
-- Table structure for table `mstr_policestation`
--

CREATE TABLE IF NOT EXISTS `mstr_policestation` (
  `poilcestation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_id` int(10) unsigned NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` int(10) unsigned NOT NULL,
  `Email_id` varchar(255) NOT NULL,
  `contact_person` varchar(45) NOT NULL,
  `starting_date` datetime NOT NULL,
  `policestation_name` varchar(45) NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`poilcestation_id`),
  KEY `FK_mstr_policestation_1` (`area_id`),
  KEY `FK_mstr_policestation_2` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `mstr_policestation`
--

INSERT INTO `mstr_policestation` (`poilcestation_id`, `area_id`, `address`, `contact_no`, `Email_id`, `contact_person`, `starting_date`, `policestation_name`, `city_id`) VALUES
(1, 1, 'Vasna Police Station,Nr.Telephone Ex. Office', 26576156, 'vasna_ps@yahoo.com', 'Rajeshbhai', '2009-10-10 00:00:00', 'Vasna Police Station', 1),
(2, 1, 'Navarangpura Police Station,Nr.Post Office', 26500000, 'navarangpua_ps@yahoo.com', 'Chandreshbhai', '2008-10-10 00:00:00', 'Navarangpura Police Station', 1),
(41, 6, 'Nr.Head Post Office,\r\nKarelibag Road,\r\nVadodara.', 28585858, 'karelibag_ps@yahoo.com', 'Abhijit Jadeja', '0000-00-00 00:00:00', 'Karelibag Police Station', 2),
(44, 6, 'Nr.Post Office', 236545, 'aps@yahoo.com', 'Yadavbhai', '2010-04-06 00:00:00', 'Alkapuri Police Station', 1),
(45, 6, 'Nr.Post Office', 236545, 'aps@yahoo.com', 'Yadavbhai', '2010-04-06 00:00:00', 'Alkapuri Police Station', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mstr_profile`
--

CREATE TABLE IF NOT EXISTS `mstr_profile` (
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(15) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `Dob` datetime DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `emailid` varchar(255) NOT NULL,
  `profile_photo` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pincode` int(10) unsigned NOT NULL,
  `area_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mstr_profile_1` (`username`),
  KEY `FK_mstr_profile_2` (`city_id`),
  KEY `FK_mstr_profile_3` (`area_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `mstr_profile`
--

INSERT INTO `mstr_profile` (`first_name`, `middle_name`, `last_name`, `gender`, `Dob`, `address`, `contact_no`, `emailid`, `profile_photo`, `username`, `city_id`, `id`, `pincode`, `area_id`) VALUES
('ggg', 'g', 'ggg', 'Male', '2010-04-20 00:00:00', 'ff', '444444444', 'd@yahoo.com', 'upload/Forest.jpg', 'ggg', 1, 12, 444444, NULL),
('krishi', 'K', 'thakkar', 'Female', '2002-05-06 00:00:00', 'Kareli bag', '9998205920', 'k@gmail.com', 'upload/Winter Leaves.jpg', 'krishi', 2, 13, 400000, NULL),
('fgfgf', 'fff', 'fffffgf', 'Male', NULL, 'gdshdh', '888888888888', 'fg@yahoo.com', NULL, 'fff', 1, 14, 464643, NULL),
('param', 'l', 'patel', 'Male', NULL, 'GSEB ', '5555555555', 'param@gmail.com', NULL, 'param', 3, 15, 500000, NULL),
('komal', 'p', 'shah', 'Female', NULL, 'chintamani', '07926576156', 'koms@yahoo.com', NULL, 'komal', 1, 16, 380058, NULL),
('kinjal', 'm', 'patel', 'Female', NULL, 'gf', '111111111111', 'k@gmail.com', NULL, 'kinjal', 3, 17, 435555, NULL),
('pradeep', 'm', 'purohit', 'Male', NULL, 'ggfdggfdg', '6546687687', 'p@yahoo.com', NULL, 'pradeep', 3, 19, 345555, NULL),
('sss', 's', 'sss', 'Male', NULL, 'ssssssxxxsssss', '57657657575', 's@yahoo.com', NULL, 'sss', 2, 20, 400000, NULL),
('jjj', 'j', 'jjj', 'Male', NULL, 'jjjj', '333333333', 'jjj@yahoo.com', NULL, 'shyam', 1, 24, 300000, NULL),
('hency', 's', 'pujara', 'Female', NULL, 'dall mil raod', '9376822145', 'h@yahoo.com', NULL, 'shyam', 5, 40, 300000, NULL),
('fency', 'f', 'patel', 'Female', NULL, 'fatehnagar', '9228183186', 'fency@yahoo.com', NULL, 'shyam', 1, 41, 400000, NULL),
('nency', 'n', 'shah', 'Female', NULL, 'ramnagar', '9376822145', 'nency@gmail.com', NULL, 'shyam', 2, 42, 500000, NULL),
('nency', 'n', 'shah', 'Female', NULL, 'ramnagar', '9376822145', 'nency@gmail.com', NULL, 'shyam', 2, 43, 500000, NULL),
('Yogeshbhai', 'J', 'Joshi', 'Male', NULL, 'Kundan Apartment ', '9016625525', 'yogesh@gmail.com', NULL, 'shyam', 1, 44, 700000, NULL),
('Jaiminbhai', 'K', 'Patel', 'Male', NULL, 'Varachha Road', '9016654254', 'jaimin@yahoo.com', NULL, 'shyam', 3, 45, 800000, NULL),
('Bhaveshbhai', 'B', 'Prajapati', 'Male', NULL, 'Kalupur', '9016622222', 'bhavesh@gmail.com', NULL, 'shyam', 1, 46, 900000, NULL),
('Bhaveshbhai', 'B', 'Prajapati', 'Male', NULL, 'Kalupur', '9016622222', 'bhavesh@gmail.com', NULL, 'shyam', 1, 47, 900000, NULL),
('Rameshbhai', 'D', 'Patel', 'Male', NULL, 'Kundan Apartment\r\nDiv-A', '9909099090', 'ramesh@gmail.com', NULL, 'shyam', 1, 48, 380380, NULL),
('Mahesh', 'K', 'Patel', 'Male', NULL, 'Kundan Aprtment\r\nDiv-B', '9909099091', 'mahesh@yahoo.com', NULL, 'shyam', 1, 49, 380380, NULL),
('Nareshbhai', 'H', 'Patel', 'Male', NULL, 'Kundan Apartment\r\nDiv-C', '9909099092', 'naresh@yahoo.com', NULL, 'shyam', 1, 50, 380380, NULL),
('Helly', 'h', 'thakkar', 'Female', NULL, 'karelibag', '9376822145', 'h@yahoo.com', NULL, 'shyam', 2, 51, 400000, NULL),
('rena', 'm', 'patel', 'Female', NULL, 'shastrinagar', '9228183186', 'rn@yahoo.com', NULL, 'shyam', 1, 52, 538987, NULL),
('sweta', 's', 'tiwari', 'Female', NULL, 'navrangpura', '9998027555', 's@yahoo.com', NULL, 'shyam', 1, 53, 436567, NULL),
('sweta', 's', 'tiwari', 'Female', NULL, 'navrangpura', '9998027555', 's@yahoo.com', NULL, 'shyam', 1, 54, 436567, NULL),
('aaa', 'a', 'aaa', 'Female', NULL, 'paladi', '9427630171', 'a@yahoo.com', NULL, 'shyam', 1, 55, 100000, NULL),
('isaiah', 'nundu', 'akello', '', '2016-03-09 00:00:00', 'nairobi', '0719151975', 'isaiah_akello@yahoo.com', 'upload/295124_10200308937474256_1075274379_n.', 'isaiah', 1, 56, 233333, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fir_details`
--
ALTER TABLE `fir_details`
  ADD CONSTRAINT `FK_fir_details_1` FOREIGN KEY (`crime_id`) REFERENCES `mstr_crimetype` (`crime_id`),
  ADD CONSTRAINT `FK_fir_details_2` FOREIGN KEY (`reg_id`) REFERENCES `mstr_profile` (`id`),
  ADD CONSTRAINT `FK_fir_details_3` FOREIGN KEY (`claim_id`) REFERENCES `mstr_profile` (`id`),
  ADD CONSTRAINT `FK_fir_details_4` FOREIGN KEY (`victim_id`) REFERENCES `mstr_profile` (`id`),
  ADD CONSTRAINT `FK_fir_details_5` FOREIGN KEY (`area_id`) REFERENCES `mstr_area` (`area_id`);

--
-- Constraints for table `fir_forward`
--
ALTER TABLE `fir_forward`
  ADD CONSTRAINT `FK_fir_forward_1` FOREIGN KEY (`username`) REFERENCES `mstr_login` (`username`),
  ADD CONSTRAINT `FK_fir_forward_2` FOREIGN KEY (`from`) REFERENCES `mstr_login` (`username`);

--
-- Constraints for table `mstr_area`
--
ALTER TABLE `mstr_area`
  ADD CONSTRAINT `FK_mstr_area_1` FOREIGN KEY (`city_id`) REFERENCES `mstr_city` (`city_id`);

--
-- Constraints for table `mstr_missingcitizens`
--
ALTER TABLE `mstr_missingcitizens`
  ADD CONSTRAINT `FK_mstr_missingcitizens_3` FOREIGN KEY (`username`) REFERENCES `mstr_login` (`username`),
  ADD CONSTRAINT `FK_mstr_missingcitizens_1` FOREIGN KEY (`city_id`) REFERENCES `mstr_city` (`city_id`),
  ADD CONSTRAINT `FK_mstr_missingcitizens_2` FOREIGN KEY (`area_id`) REFERENCES `mstr_area` (`area_id`);

--
-- Constraints for table `mstr_officer`
--
ALTER TABLE `mstr_officer`
  ADD CONSTRAINT `FK_mstr_officer_1` FOREIGN KEY (`username`) REFERENCES `mstr_login` (`username`),
  ADD CONSTRAINT `FK_mstr_officer_2` FOREIGN KEY (`desi_id`) REFERENCES `mstr_designation` (`desi_id`),
  ADD CONSTRAINT `FK_mstr_officer_3` FOREIGN KEY (`poilcestation_id`) REFERENCES `mstr_policestation` (`poilcestation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mstr_policestation`
--
ALTER TABLE `mstr_policestation`
  ADD CONSTRAINT `FK_mstr_policestation_1` FOREIGN KEY (`area_id`) REFERENCES `mstr_area` (`area_id`),
  ADD CONSTRAINT `FK_mstr_policestation_2` FOREIGN KEY (`city_id`) REFERENCES `mstr_city` (`city_id`);

--
-- Constraints for table `mstr_profile`
--
ALTER TABLE `mstr_profile`
  ADD CONSTRAINT `FK_mstr_profile_1` FOREIGN KEY (`username`) REFERENCES `mstr_login` (`username`),
  ADD CONSTRAINT `FK_mstr_profile_2` FOREIGN KEY (`city_id`) REFERENCES `mstr_city` (`city_id`),
  ADD CONSTRAINT `FK_mstr_profile_3` FOREIGN KEY (`area_id`) REFERENCES `mstr_area` (`area_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
