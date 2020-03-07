-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2020 at 04:40 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atp3_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(15) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `teacher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `credit`, `teacher_id`, `teacher_name`) VALUES
(10, 'atp 3', '3', '12', 'kawser'),
(11, 'atp 2', '3', '12', 'kawser'),
(12, 'java', '5', '15', 'kawser');

-- --------------------------------------------------------

--
-- Table structure for table `student-courses`
--

CREATE TABLE `student-courses` (
  `id` int(15) NOT NULL,
  `std_username` varchar(200) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `course_teacher` varchar(200) NOT NULL,
  `tchr_username` varchar(200) NOT NULL,
  `credit` int(10) NOT NULL,
  `semester` varchar(200) NOT NULL,
  `gpa` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(15) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `user_id`, `address`, `email`, `password`, `job`) VALUES
(1, 'omar', 'kawser', 'omar123', 'Basundhara R/A, Dhaka', 'omar@gmail.com', '1234', 'admin'),
(14, 'onie', ' onie', 'oni123', 'dhaka', 'onie@gmail.com', '1234', 'student'),
(15, 'kawser', 'kawser', 'kawser123', 'dhaka', 'kawser@gmail.com', '1234', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `user_notice`
--

CREATE TABLE `user_notice` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `notice` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notice`
--

INSERT INTO `user_notice` (`id`, `username`, `subject`, `notice`) VALUES
(53, 'omar123', 'atp 3', '  hi'),
(54, 'oni123', 'atp 3', '  hi'),
(55, 'kawser123', 'atp 3', '  hi'),
(56, 'omar123', 'java', '  gggggggggg'),
(57, 'oni123', 'java', '  gggggggggg'),
(58, 'kawser123', 'java', '  gggggggggg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student-courses`
--
ALTER TABLE `student-courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notice`
--
ALTER TABLE `user_notice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student-courses`
--
ALTER TABLE `student-courses`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_notice`
--
ALTER TABLE `user_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
