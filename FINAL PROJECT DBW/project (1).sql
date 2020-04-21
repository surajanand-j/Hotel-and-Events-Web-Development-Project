-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2019 at 12:50 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
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
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `FNAME`, `LNAME`, `PASSWORD`, `ADDRESS`, `EMAIL`, `POSITION`, `MOBILE`) VALUES
('arpit12', 'ARPIT', 'SRIVASTAVA', 'arpit123', '485 PRADAHAN PAYING GUEST SULTANPUR NOIDA', 'awesomearpit12@gmail.com', 'FOUNDER', 1924756325),
('harshit12', 'HARSHIT', 'GARG', 'harshit123', '256 INDRA COLONY ROORKEE ROAD MUZAFFARNAGAR', 'sdpsharshitgarg10b@gmail.com', 'PRESIDENT AND CO FOUNDER', 1956454694),
('tanish12', 'TANISH', 'JAIN', 'tanish123', '420 SAROJINI MARKET TIKHAMGARH MADHYA PRADESH', 'tanishjain12@gmail.com', 'CHAIRPERSON', 1478523690),
('vishal12', 'VISHAL', 'AGRAHARI', 'vishal123', '785 NEAR BASTI LOKHANDWALA GORAKHPUR', 'vagrahari875@gmail.com', 'MANAGING DIRECTOR', 1587419635);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `MOBILE` int(11) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `ADDRESS` text NOT NULL,
  `USER_ID` varchar(20) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`FNAME`, `LNAME`, `MOBILE`, `EMAIL`, `ADDRESS`, `USER_ID`, `PASSWORD`) VALUES
('Arpit', 'Srivastava', 2147483647, 'arpitsrivastava@gmail.com', 'sec-128,noida', 'arpitsri', 'arpit123'),
('dhramveer', 'singh', 2147483647, 'dhramveer@gmail.com', 'sec-62,noida', 'dhram', 'dhram123'),
('KARTIK', 'AGRAWAL', 1423697582, 'kartikagrawal12@gmail.com', 'RAJ PAYING GUEST SULTANPUR SECTOR 128 NOIDA 201304', 'kartik12', 'kartik123'),
('MANTHAN', 'BANSAL', 1257849616, 'manthanbansal12@gmail.com', '234 PRADHAN PAYING GUEST SECTOR 128 NOIDA', 'manthan12', 'manthan123'),
('Ujjwal', 'mandhani', 2147483647, 'ujjwalmand@gmail.com', 'sec-128,noida', 'ujjwal', 'ujjwal123');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `DLOCATION` varchar(30) NOT NULL,
  `ADMIN_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `DLOCATION`, `ADMIN_ID`) VALUES
(1, 'NOIDA', 'harshit12'),
(2, 'KERALA', 'vishal12'),
(3, 'UTTARAKHAND', 'tanish12'),
(4, 'GUJARAT', 'arpit12');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `EventID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Time` time NOT NULL DEFAULT current_timestamp(),
  `Venue` varchar(100) NOT NULL,
  `Did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`EventID`, `Name`, `Date`, `Time`, `Venue`, `Did`) VALUES
(109, 'Cleanliness Drive', '2019-11-18', '24:13:19', 'Kovalam Beach,Kerala', 2),
(110, 'blood Donation Camp', '2019-11-20', '15:10:10', 'Jiit-128,Noida', 1),
(111, 'Education Drive', '2019-11-23', '17:20:00', 'Surat,Gujarat', 4),
(112, 'Self Defence Training', '2019-11-25', '08:00:00', 'IIT delhi', 1),
(115, 'Marathon', '2019-11-23', '23:00:00', 'Jaypee greens,Noida', 1);

-- --------------------------------------------------------

--
-- Table structure for table `needy_persons`
--

CREATE TABLE `needy_persons` (
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `MOBILE` int(11) NOT NULL,
  `ADDRESS` text NOT NULL,
  `PROBLEM` text NOT NULL,
  `DETAILS` text NOT NULL,
  `VOLUNTEER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `needy_persons`
--

INSERT INTO `needy_persons` (`FNAME`, `LNAME`, `MOBILE`, `ADDRESS`, `PROBLEM`, `DETAILS`, `VOLUNTEER`) VALUES
('Ujjwal', 'mandhani', 2147483647, 'sec-128,noida', 'Cyber Crime', 'My snapchat Id is hacked', 'faisal12'),
('dhramveer', 'singh', 2147483647, 'sec-62,noida', 'Education', 'need support for a education drive ', 'kalpit12');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `PID` int(11) NOT NULL,
  `ORGANISATION` varchar(150) NOT NULL,
  `MOBILE` int(11) NOT NULL,
  `EMAIL` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`PID`, `ORGANISATION`, `MOBILE`, `EMAIL`) VALUES
(100, 'TATA FOUNDATION', 1234567456, 'tatafoundation.org'),
(110, 'Bill Gates foundation', 1234567456, 'billgates.org');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `PNAME` varchar(30) NOT NULL,
  `PID` int(11) NOT NULL,
  `DID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `MOBILE` int(11) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `ADDRESS` text NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `Team` varchar(150) NOT NULL,
  `DEPT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`FNAME`, `LNAME`, `MOBILE`, `EMAIL`, `ADDRESS`, `USER_ID`, `PASSWORD`, `Team`, `DEPT_ID`) VALUES
('CHARANDEEP', 'SINGH', 1234567890, 'charandeep12@gmail.com', 'RAHIM APARTMENTS, JASWANTGARH HISAR-167613', 'charandeep12', 'charandeep123', 'Animal Welfare', 1),
('FAISAL', 'SAVANT', 1234789560, 'faisal12@gmail.com', 'AABHA SOCIETY, BABITA NAGAR BIKANER-340345', 'faisal12', 'faisal123', 'Cyber Crime', 1),
('GEETANJALI', 'JAIN', 1203456789, 'geetanjali12@gmail.com', 'AMRIT HEIGHTS, BORIVALI VADODARA -163342', 'geetanjali12', 'geetanjali123', 'Child Labour', 3),
('HIMESH ', 'NORI', 1234567809, 'himesh12@gmail.com', 'MARLO SOCIETY,WAFAGARH AGRA-445086', 'himesh12', 'himesh123', 'Sexual Harassment', 1),
('KALPIT', 'DAD', 1245637890, 'kalpit12@gmail.com', 'VIRAR, INDORE-225105', 'kalpit12', 'kalpit123', 'Education', 2),
('KARTIK', 'KUMER', 1234567456, 'kartik12@gmail.com', 'ZAHIR SOCIETY, AAYUSHMANGUNJ PILANI-438671', 'kartik12', 'kartik123', 'Climate Change', 2),
('MANJARI', 'SANDHU', 1234056789, 'manjari12@gmail.com', 'CHURCHGATE, VISHAKHAPATNAM-312793', 'manjari12', 'manjari123', 'Sexual Harassment', 2),
('MAYAWATI', 'SRINIVAS', 1203456789, 'mayawati12@gmail.com', 'ANDHERI, RATLAM-329165', 'mayawati12', 'mayawati123', 'Cyber Crime', 3),
('NEERENDRA', 'ATWAL', 1234567589, 'neerendra12@gmail.com', 'ROSEY HEIGHTS, DECCAN GYMKHANA JABALPUR-393811', 'neerendra12', 'neerendra123', 'Healthcare', 4),
('NIKITA', 'MUTTI', 1230456789, 'nikita12@gmail.com', 'MOTI HEIGHTS, CHANDPOLE CHENNAI-136527', 'nikita12', 'nikita123', 'Climate Change', 3),
('NIKITA', 'SOM', 1234578890, 'nikita12@gmail.com', 'BANDRA, CHENNAI-338304', 'nikitaSom12', 'nikitaSom123', 'Crime Against Women', 1),
('NILAM', 'SEKHON', 1234506789, 'nilam12@gmail.com', 'CYBER CITY, GURGAON-594719', 'nilam12', 'nilam123', 'Education', 2),
('NIRMAL', 'GANGULY', 1234567089, 'nirmal12@gmail.com', 'ZEESHAN NAGAR,PONDICHERRY-279848', 'nirmal12', 'nirmal123', 'Waste Management', 1),
('NUPOOR', 'CHAR', 1234567987, 'nupoor12@gmail.com', 'KORMANGALA, MYSORE-215458', 'nupoor12', 'nupoor123', 'Blood Donation', 4),
('PRASOON', 'SANI', 1234560789, 'prasoon12@gmail.com', 'ZEENATPUR, PATNA -394697', 'prasoon12', 'prasoon123', 'Others', 2),
('PRESHITA', 'JAIN', 1234567980, 'preshita12@gmail.com', 'AMIR HEIGHTS, MALAD MEERUT-398739', 'preshita12', 'preshita123', 'Healthcare', 4),
('RATAN', 'GOLLA', 1452367890, 'ratan12@gmail.com', 'ZAAD VILLAS, RAKHIGUNJ NAGPUR-265866', 'ratan12', 'ratan123', 'Crime Against Women', 4),
('SAMIR', 'BASSI', 1234567998, 'samir12@gmail.com', 'KUSHAL APARTMENTS, VIVEK NAGAR SRINAGAR-223042', 'samir12', 'samir123', 'Animal Welfare', 4),
('TANUJA', 'APTE', 1023456789, 'tanuja12@gmail.com', 'HABIB HEIGHTS, SODALA THIRUVANTHAPURAM-434333', 'tanuja12', 'tanuja123', 'Others', 3),
('VARUN', 'SESHADARI', 1245637891, 'varun12@gmaiL.com', 'GULZAR HEIGHTS, MARATHAHALLI CHENNAI-308212', 'varun12', 'varun123', 'Child Labour', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`),
  ADD KEY `ADMIN_ID` (`ADMIN_ID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `Did` (`Did`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `DID` (`DID`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`USER_ID`),
  ADD KEY `DEPT_ID` (`DEPT_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `DEPARTMENT_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`Did`) REFERENCES `department` (`DEPT_ID`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `PROJECTS_ibfk_1` FOREIGN KEY (`DID`) REFERENCES `department` (`DEPT_ID`);

--
-- Constraints for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD CONSTRAINT `VOLUNTEERS_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `department` (`DEPT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
