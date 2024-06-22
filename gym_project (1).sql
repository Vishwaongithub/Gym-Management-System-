-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 09:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `username` varchar(110) NOT NULL,
  `password` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`) VALUES
(1, 'vs@gmail.com', 'vs');

-- --------------------------------------------------------

--
-- Table structure for table `gym_add_acc`
--

CREATE TABLE `gym_add_acc` (
  `ID` int(2) NOT NULL,
  `Gym_name` varchar(20) NOT NULL,
  `Gym_mob` bigint(20) NOT NULL,
  `Gym_tele` bigint(20) NOT NULL,
  `Gym_email` varchar(65) NOT NULL,
  `Gym_open` time(6) NOT NULL,
  `Gym_close` time(6) NOT NULL,
  `Gym_city` varchar(20) NOT NULL,
  `Gym_address` varchar(75) NOT NULL,
  `Owner_name` varchar(60) NOT NULL,
  `Owner_mob` bigint(20) NOT NULL,
  `Owner_email` varchar(65) NOT NULL,
  `Owner_city` varchar(20) NOT NULL,
  `Owner_address` varchar(75) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gym_add_acc`
--

INSERT INTO `gym_add_acc` (`ID`, `Gym_name`, `Gym_mob`, `Gym_tele`, `Gym_email`, `Gym_open`, `Gym_close`, `Gym_city`, `Gym_address`, `Owner_name`, `Owner_mob`, `Owner_email`, `Owner_city`, `Owner_address`, `uname`, `pass`) VALUES
(1, 'Body Factory ', 9785569622, 238225000, 'bodyfactory@gmail.com', '06:00:00.000000', '21:00:00.000000', 'Latur', 'Gandhi Chowk,Latur,Maharashtra', 'Shivprasad Mane', 8010813621, 'shivprasadmane01@gmail.com', 'Latur', 'Mane Niwas,Khalangri,Latur', 'bodyfactory', 'bodyfactory@123'),
(2, 'Kronos Fitness', 9996660087, 238225112, 'kronosfitness@gmail.com', '05:00:00.000000', '21:00:00.000000', 'Latur', 'Kridasankul, Ausa Road,Latur', 'Vishwa Khelage', 9970877284, 'vishwakhelage1703@gmail.com', 'Latur', 'Pratik Gems,Ausa Road,Latur', 'vishwak', 'vishwa@01'),
(3, 'Fitness CluB', 123457892, 23382215445, 'fitnessclub@gmail.com', '06:00:00.000000', '22:00:00.000000', 'latur', 'layur', 'mane', 7894561230, 'mane@gmail.com', 'latur', 'latur', 'mane', 'mane@123');

-- --------------------------------------------------------

--
-- Table structure for table `gym_equip`
--

CREATE TABLE `gym_equip` (
  `ID` int(3) NOT NULL,
  `Equip_name` varchar(100) NOT NULL,
  `Equip_qty` varchar(50) NOT NULL,
  `OID` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gym_equip`
--

INSERT INTO `gym_equip` (`ID`, `Equip_name`, `Equip_qty`, `OID`, `image`) VALUES
(1, 'Dumbbells-10kg', '20', 2, 'upload/1_equipment.png'),
(2, 'Leg Press Machine.', '5', 2, 'upload/2_equipment.png'),
(3, 'Chest Press Machine', '', 2, 'upload/3_equipment.png'),
(4, 'Treadmil', '', 2, 'upload/4_equipment.png');

-- --------------------------------------------------------

--
-- Table structure for table `gym_facili`
--

CREATE TABLE `gym_facili` (
  `ID` int(11) NOT NULL,
  `Facili_name` varchar(300) NOT NULL,
  `Facili_price` int(6) NOT NULL,
  `OID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gym_facili`
--

INSERT INTO `gym_facili` (`ID`, `Facili_name`, `Facili_price`, `OID`) VALUES
(1, 'Luxurious Changing Room', 500, 2),
(2, 'Member Lounge', 500, 2),
(3, 'Personal Training Counter', 2000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gym_service`
--

CREATE TABLE `gym_service` (
  `ID` int(3) NOT NULL,
  `name_service` varchar(50) NOT NULL,
  `service_info` varchar(300) NOT NULL,
  `OID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gym_service`
--

INSERT INTO `gym_service` (`ID`, `name_service`, `service_info`, `OID`) VALUES
(1, 'Aerobics/Zumba', ' Energize your mornings and come train and workout with our personal trainers at Kronos Gym. Join our Aerobics Yoga and Zumba lessons and have fun while exercising.                     ', 2),
(2, 'CrossFit Trianing', 'Train with the best of the best in an intense workout session under the expert guidance of our personal trainers only at Kronos Gym.                      ', 2),
(3, 'Cardio Training', 'Work on your abs and core with state-of-the-art equipments specially brought to you by the best gym in Latur,Kronos                      ', 2),
(4, 'Endurance Training', 'Improve your stamina and workout with your friends while listening to trendy tune at one of the hottest gyms in Latur,Kronos               ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gym_type`
--

CREATE TABLE `gym_type` (
  `ID` int(11) NOT NULL,
  `gym_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mem_attendance`
--

CREATE TABLE `mem_attendance` (
  `ID` int(11) NOT NULL,
  `mem_id` int(100) NOT NULL,
  `In_time` varchar(100) NOT NULL,
  `out_time` varchar(100) NOT NULL,
  `OID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mem_attendance`
--

INSERT INTO `mem_attendance` (`ID`, `mem_id`, `In_time`, `out_time`, `OID`) VALUES
(1, 1, '2022-05-09 00:09:46', '2022-05-09 00:10:09', 2),
(2, 2, '2022-05-09 00:09:53', '2022-05-09 00:10:05', 2),
(3, 3, '2022-05-09 00:09:58', '2022-05-09 00:10:14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `ID` int(3) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`ID`, `uname`, `pass`) VALUES
(1, 'shiv@gmail.com', 'shiv');

-- --------------------------------------------------------

--
-- Table structure for table `owner_add_mem`
--

CREATE TABLE `owner_add_mem` (
  `ID` int(3) NOT NULL,
  `Firstname` varchar(30) NOT NULL,
  `Lastname` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `Occupation` varchar(60) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Emergency_mobile` bigint(20) NOT NULL,
  `Health_issue` varchar(100) NOT NULL,
  `Email` varchar(65) NOT NULL,
  `In_time` time(6) NOT NULL,
  `Out_time` time(6) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `OID` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner_add_mem`
--

INSERT INTO `owner_add_mem` (`ID`, `Firstname`, `Lastname`, `DOB`, `Occupation`, `Mobile`, `Emergency_mobile`, `Health_issue`, `Email`, `In_time`, `Out_time`, `City`, `Address`, `Gender`, `OID`, `image`) VALUES
(1, 'Saif', 'Dakhani', '2003-05-02', 'Student', 8564894514, 8787465445, 'None', 'safidakhani@gmail.com', '07:00:00.000000', '08:00:00.000000', 'Latur', 'Murud,Latur,Maharashtra', 'Male', 2, 'upload/1_member.png'),
(2, 'Shiv', 'Mane', '2004-04-01', 'student', 8010813688, 1234567890, 'None', 'shivmane@gmail.com', '18:00:00.000000', '19:00:00.000000', 'Latur', 'Latur,Maharashtra', 'Male', 2, 'upload/2_member.png'),
(3, 'Vedant', 'Potdar', '2003-03-12', 'Business', 8486384995, 1234567892, 'None', 'vedantp@gmail.com', '10:00:00.000000', '11:00:00.000000', 'Latur', 'Bhui galli,Latur,Maharashtra', 'Male', 2, 'upload/3_member.png'),
(4, 'Shreya', 'Chavan', '2001-05-05', 'student', 7785466456, 7894561230, 'None', 'shreyac123@gmail.com', '08:00:00.000000', '09:00:00.000000', 'Latur', 'Latur', 'Female', 2, 'upload/4_member.png');

-- --------------------------------------------------------

--
-- Table structure for table `owner_add_staff`
--

CREATE TABLE `owner_add_staff` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `DOB` date NOT NULL,
  `Work` varchar(60) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `emergency mob` bigint(20) NOT NULL,
  `experience` varchar(10) NOT NULL,
  `email` varchar(65) NOT NULL,
  `duty start` time NOT NULL,
  `duty end` time NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `OID` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner_add_staff`
--

INSERT INTO `owner_add_staff` (`ID`, `firstname`, `lastname`, `DOB`, `Work`, `mobile`, `emergency mob`, `experience`, `email`, `duty start`, `duty end`, `city`, `address`, `gender`, `OID`, `image`) VALUES
(1, 'Adam', 'Jones', '1987-02-04', 'Manager', 8756216898, 4567891230, '10yrs', 'adamjones@gmail.com', '09:00:00', '21:00:00', 'Latur', 'Latur', 'Male', 2, 'upload/5_staff.png'),
(2, 'Mahesh', 'Patil', '1988-06-05', 'Co-manager', 7895461230, 1234567890, '5yrs', 'maheshp@gmail.com', '08:00:00', '21:00:00', 'Latur', 'Latur', 'Male', 2, 'upload/5_staff.png'),
(3, 'Neha', 'Sharma', '1998-07-08', 'Personal Trainer', 1234567890, 7894561230, '2yrs', 'nehafitness@gmail.com', '15:00:00', '21:00:00', 'Latur', 'Latur', 'Female', 2, 'upload/5_staff.png');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `ID` int(11) NOT NULL,
  `staff_id` int(100) NOT NULL,
  `In_time` varchar(100) NOT NULL,
  `out_time` varchar(100) NOT NULL,
  `OID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gym_add_acc`
--
ALTER TABLE `gym_add_acc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gym_equip`
--
ALTER TABLE `gym_equip`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gym_facili`
--
ALTER TABLE `gym_facili`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gym_service`
--
ALTER TABLE `gym_service`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gym_type`
--
ALTER TABLE `gym_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mem_attendance`
--
ALTER TABLE `mem_attendance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `owner_add_mem`
--
ALTER TABLE `owner_add_mem`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `owner_add_staff`
--
ALTER TABLE `owner_add_staff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gym_add_acc`
--
ALTER TABLE `gym_add_acc`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gym_equip`
--
ALTER TABLE `gym_equip`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gym_facili`
--
ALTER TABLE `gym_facili`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gym_service`
--
ALTER TABLE `gym_service`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gym_type`
--
ALTER TABLE `gym_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mem_attendance`
--
ALTER TABLE `mem_attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `owner_add_mem`
--
ALTER TABLE `owner_add_mem`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `owner_add_staff`
--
ALTER TABLE `owner_add_staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
