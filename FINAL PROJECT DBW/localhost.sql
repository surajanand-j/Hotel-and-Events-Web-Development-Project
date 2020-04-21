-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 15, 2019 at 03:32 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `ADMIN`
--

CREATE TABLE `ADMIN` (
  `ADMIN_ID` varchar(25) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `ADDRESS` text NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `POSITION` varchar(30) NOT NULL,
  `MOBILE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ADMIN`
--

INSERT INTO `ADMIN` (`ADMIN_ID`, `FNAME`, `LNAME`, `PASSWORD`, `ADDRESS`, `EMAIL`, `POSITION`, `MOBILE`) VALUES
('arpit12', 'ARPIT', 'SRIVASTAVA', 'arpit123', '485 PRADAHAN PAYING GUEST SULTANPUR NOIDA', 'awesomearpit12@gmail.com', 'FOUNDER', 1924756325),
('harshit12', 'HARSHIT', 'GARG', 'harshit123', '256 INDRA COLONY ROORKEE ROAD MUZAFFARNAGAR', 'sdpsharshitgarg10b@gmail.com', 'PRESIDENT AND CO FOUNDER', 1956454694),
('tanish12', 'TANISH', 'JAIN', 'tanish123', '420 SAROJINI MARKET TIKHAMGARH MADHYA PRADESH', 'tanishjain12@gmail.com', 'CHAIRPERSON', 1478523690),
('vishal12', 'VISHAL', 'AGRAHARI', 'vishal123', '785 NEAR BASTI LOKHANDWALA GORAKHPUR', 'vagrahari875@gmail.com', 'MANAGING DIRECTOR', 1587419635);

-- --------------------------------------------------------

--
-- Table structure for table `CANDIDATES`
--

CREATE TABLE `CANDIDATES` (
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `MOBILE` int(11) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `ADDRESS` text NOT NULL,
  `USER_ID` varchar(20) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CANDIDATES`
--

INSERT INTO `CANDIDATES` (`FNAME`, `LNAME`, `MOBILE`, `EMAIL`, `ADDRESS`, `USER_ID`, `PASSWORD`) VALUES
('KARTIK', 'AGRAWAL', 1423697582, 'kartikagrawal12@gmail.com', 'RAJ PAYING GUEST SULTANPUR SECTOR 128 NOIDA 201304', 'kartik12', 'kartik123'),
('MANTHAN', 'BANSAL', 1257849616, 'manthanbansal12@gmail.com', '234 PRADHAN PAYING GUEST SECTOR 128 NOIDA', 'manthan12', 'manthan123');

-- --------------------------------------------------------

--
-- Table structure for table `DEPARTMENT`
--

CREATE TABLE `DEPARTMENT` (
  `DEPT_ID` int(11) NOT NULL,
  `DLOCATION` varchar(30) NOT NULL,
  `ADMIN_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEPARTMENT`
--

INSERT INTO `DEPARTMENT` (`DEPT_ID`, `DLOCATION`, `ADMIN_ID`) VALUES
(1, 'NOIDA', 'harshit12'),
(2, 'KERALA', 'vishal12'),
(3, 'UTTARAKHAND', 'tanish12'),
(4, 'GUJARAT', 'arpit12');

-- --------------------------------------------------------

--
-- Table structure for table `NEEDY_PERSONS`
--

CREATE TABLE `NEEDY_PERSONS` (
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `ADDRESS` text NOT NULL,
  `PROBLEM` text NOT NULL,
  `MOBILE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PARTNERS`
--

CREATE TABLE `PARTNERS` (
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `MOBILE` int(11) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `ID` varchar(25) NOT NULL,
  `PASSWORD` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PROJECTS`
--

CREATE TABLE `PROJECTS` (
  `PNAME` varchar(30) NOT NULL,
  `PID` int(11) NOT NULL,
  `DID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `VOLUNTEERS`
--

CREATE TABLE `VOLUNTEERS` (
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `MOBILE` int(11) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `ADDRESS` text NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `DEPT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VOLUNTEERS`
--

INSERT INTO `VOLUNTEERS` (`FNAME`, `LNAME`, `MOBILE`, `EMAIL`, `ADDRESS`, `USER_ID`, `PASSWORD`, `DEPT_ID`) VALUES
('CHARANDEEP', 'SINGH', 1234567890, 'charandeep12@gmail.com', 'RAHIM APARTMENTS, JASWANTGARH HISAR-167613', 'charandeep12', 'charandeep123', 1),
('FAISAL', 'SAVANT', 1234789560, 'faisal12@gmail.com', 'AABHA SOCIETY, BABITA NAGAR BIKANER-340345', 'faisal12', 'faisal123', 1),
('GEETANJALI', 'JAIN', 1203456789, 'geetanjali12@gmail.com', 'AMRIT HEIGHTS, BORIVALI VADODARA -163342', 'geetanjali12', 'geetanjali123', 3),
('HIMESH ', 'NORI', 1234567809, 'himesh12@gmail.com', 'MARLO SOCIETY,WAFAGARH AGRA-445086', 'himesh12', 'himesh123', 1),
('KALPIT', 'DAD', 1245637890, 'kalpit12@gmail.com', 'VIRAR, INDORE-225105', 'kalpit12', 'kalpit123', 2),
('KARTIK', 'KUMER', 1234567456, 'kartik12@gmail.com', 'ZAHIR SOCIETY, AAYUSHMANGUNJ PILANI-438671', 'kartik12', 'kartik123', 2),
('MANJARI', 'SANDHU', 1234056789, 'manjari12@gmail.com', 'CHURCHGATE, VISHAKHAPATNAM-312793', 'manjari12', 'manjari123', 2),
('MAYAWATI', 'SRINIVAS', 1203456789, 'mayawati12@gmail.com', 'ANDHERI, RATLAM-329165', 'mayawati12', 'mayawati123', 3),
('NEERENDRA', 'ATWAL', 1234567589, 'neerendra12@gmail.com', 'ROSEY HEIGHTS, DECCAN GYMKHANA JABALPUR-393811', 'neerendra12', 'neerendra123', 4),
('NIKITA', 'MUTTI', 1230456789, 'nikita12@gmail.com', 'MOTI HEIGHTS, CHANDPOLE CHENNAI-136527', 'nikita12', 'nikita123', 3),
('NIKITA', 'SOM', 1234578890, 'nikita12@gmail.com', 'BANDRA, CHENNAI-338304', 'nikitaSom12', 'nikitaSom123', 1),
('NILAM', 'SEKHON', 1234506789, 'nilam12@gmail.com', 'CYBER CITY, GURGAON-594719', 'nilam12', 'nilam123', 2),
('NIRMAL', 'GANGULY', 1234567089, 'nirmal12@gmail.com', 'ZEESHAN NAGAR,PONDICHERRY-279848', 'nirmal12', 'nirmal123', 1),
('NUPOOR', 'CHAR', 1234567987, 'nupoor12@gmail.com', 'KORMANGALA, MYSORE-215458', 'nupoor12', 'nupoor123', 4),
('PRASOON', 'SANI', 1234560789, 'prasoon12@gmail.com', 'ZEENATPUR, PATNA -394697', 'prasoon12', 'prasoon123', 2),
('PRESHITA', 'JAIN', 1234567980, 'preshita12@gmail.com', 'AMIR HEIGHTS, MALAD MEERUT-398739', 'preshita12', 'preshita123', 4),
('RATAN', 'GOLLA', 1452367890, 'ratan12@gmail.com', 'ZAAD VILLAS, RAKHIGUNJ NAGPUR-265866', 'ratan12', 'ratan123', 4),
('SAMIR', 'BASSI', 1234567998, 'samir12@gmail.com', 'KUSHAL APARTMENTS, VIVEK NAGAR SRINAGAR-223042', 'samir12', 'samir123', 4),
('TANUJA', 'APTE', 1023456789, 'tanuja12@gmail.com', 'HABIB HEIGHTS, SODALA THIRUVANTHAPURAM-434333', 'tanuja12', 'tanuja123', 3),
('VARUN', 'SESHADARI', 1245637891, 'varun12@gmaiL.com', 'GULZAR HEIGHTS, MARATHAHALLI CHENNAI-308212', 'varun12', 'varun123', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADMIN`
--
ALTER TABLE `ADMIN`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `CANDIDATES`
--
ALTER TABLE `CANDIDATES`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `DEPARTMENT`
--
ALTER TABLE `DEPARTMENT`
  ADD PRIMARY KEY (`DEPT_ID`),
  ADD KEY `ADMIN_ID` (`ADMIN_ID`);

--
-- Indexes for table `PARTNERS`
--
ALTER TABLE `PARTNERS`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PROJECTS`
--
ALTER TABLE `PROJECTS`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `DID` (`DID`);

--
-- Indexes for table `VOLUNTEERS`
--
ALTER TABLE `VOLUNTEERS`
  ADD PRIMARY KEY (`USER_ID`),
  ADD KEY `DEPT_ID` (`DEPT_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DEPARTMENT`
--
ALTER TABLE `DEPARTMENT`
  ADD CONSTRAINT `DEPARTMENT_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `ADMIN` (`ADMIN_ID`);

--
-- Constraints for table `PROJECTS`
--
ALTER TABLE `PROJECTS`
  ADD CONSTRAINT `PROJECTS_ibfk_1` FOREIGN KEY (`DID`) REFERENCES `DEPARTMENT` (`DEPT_ID`);

--
-- Constraints for table `VOLUNTEERS`
--
ALTER TABLE `VOLUNTEERS`
  ADD CONSTRAINT `VOLUNTEERS_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `DEPARTMENT` (`DEPT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
