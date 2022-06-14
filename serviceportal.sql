-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 يونيو 2022 الساعة 23:05
-- إصدار الخادم: 10.4.8-MariaDB
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
-- Database: `serviceportal`
--

-- --------------------------------------------------------

--
-- بنية الجدول `filenames`
--

CREATE TABLE `filenames` (
  `ID` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `filename` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `filenames`
--

INSERT INTO `filenames` (`ID`, `user_id`, `filename`) VALUES
(1, 1, 'Internet_2021-03-16 07-03-03(0).docx'),
(2, 2, 'Orion_2021-03-16 07-07-13(0).pdf'),
(3, 3, 'Orion_2021-03-16 07-25-59(0).jpg'),
(4, 3, 'Orion_2021-03-16 07-25-59(1).png'),
(5, 3, 'Other_2021-03-18 11-51-10(0).png'),
(6, 3, 'Email_2021-03-18 12-50-07(0).png'),
(7, 2, 'Orion_2021-03-30 06-54-26(0).jpg'),
(8, 2, 'Orion_2021-03-30 06-54-26(1).png'),
(15, 2, 'Orion_2021-03-30 06-54-26(3).png'),
(16, 3, 'Orion_2021-04-08 03-19-25(0).pdf'),
(17, 3, 'Orion_2021-04-08 03-24-32(0).jpg'),
(18, 3, 'Other_2021-04-08 03-40-36(0).docx'),
(19, 3, 'Hardware_2021-04-08 03-53-28(0).docx'),
(39, 2, 'Email_2021-04-11 08-40-10(0).png'),
(40, 2, 'Email_2021-04-11 08-40-10(1).png'),
(42, 3, 'Orion_2021-04-13 06-31-27(0).jpg'),
(43, 3, 'Orion_2021-04-13 06-31-27(1).jpg');

-- --------------------------------------------------------

--
-- بنية الجدول `service`
--

CREATE TABLE `service` (
  `ID` int(20) NOT NULL,
  `user_ID` int(20) NOT NULL,
  `service` varchar(35) NOT NULL,
  `description` varchar(180) DEFAULT NULL,
  `status` varchar(35) NOT NULL,
  `timestamp` datetime NOT NULL,
  `File_uploaded` int(15) NOT NULL,
  `adminUser` varchar(35) DEFAULT NULL,
  `adminComments` varchar(180) DEFAULT NULL,
  `solution` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `service`
--

INSERT INTO `service` (`ID`, `user_ID`, `service`, `description`, `status`, `timestamp`, `File_uploaded`, `adminUser`, `adminComments`, `solution`) VALUES
(11, 1, 'Internet', ' blahblahblahblahblahblah 2021-03-16 07-03-03', 'Complete', '2021-03-16 07:03:03', 1, 'Asma', 'done', ''),
(12, 2, 'Orion', 'error help .. ', 'Pending', '2021-03-16 07:07:13', 1, NULL, NULL, NULL),
(13, 2, 'Other', 'telephone is not working helpppppp ', 'Complete', '2021-03-16 07:21:55', 0, 'Asma', '', ''),
(15, 3, 'Orion', 'fix this please', 'Complete', '2021-03-16 07:25:59', 2, 'Rawyah', 'please check now ', NULL),
(16, 3, 'Other', 'telephone problem ', 'Complete', '2021-03-16 07:26:34', 0, 'Asma', 'done', NULL),
(17, 3, 'Hardware', 'I need cartages for the printer it is not printing\r\n', 'Complete', '2021-03-17 10:20:50', 0, NULL, NULL, NULL),
(18, 3, 'Other', 'i want batteries for my mouse  ', 'Complete', '2021-03-18 11:51:10', 1, 'Asma', NULL, NULL),
(19, 3, 'Email', 'not working', 'Complete', '2021-03-18 12:50:07', 1, 'Asma', NULL, NULL),
(21, 2, 'Orion', 'it keep showing this error ', 'Complete', '2021-03-30 06:54:26', 3, 'Rawyah', 'done, check again. ', ' '),
(22, 2, 'Printers', 'paper is stuck ', 'Complete', '2021-03-31 08:49:41', 0, 'Asma', NULL, NULL),
(23, 3, 'Orion', 'check the file for the closing the pending transactions ', 'Complete', '2021-04-08 03:19:25', 1, 'Rawyah', 'done ', ''),
(24, 3, 'Orion', 'error why ? ', 'Complete', '2021-04-08 03:24:32', 1, 'Rawyah', 'check blahahahah ', ''),
(29, 3, 'Other', 'test', 'Pending', '2021-04-08 03:40:36', 1, NULL, NULL, NULL),
(30, 3, 'Orion', 'bbbb', 'Complete', '2021-04-08 03:41:54', 0, 'Rawyah', '', ''),
(31, 3, 'Internet', 'test', 'Complete', '2021-04-08 03:45:51', 0, 'Rawyah', 'refresh or login again', ''),
(32, 3, 'Email', 'dddd', 'Complete', '2021-04-08 03:47:09', 0, 'Asma', '', ''),
(33, 3, 'Orion', '', 'Complete', '2021-04-08 03:48:08', 0, 'Asma', NULL, ''),
(34, 3, 'Hardware', '', 'Complete', '2021-04-08 03:53:28', 1, 'Rawyah', NULL, NULL),
(35, 1, 'Orion', 'this and this ', 'Complete', '2021-04-09 05:19:27', 0, 'Rawyah', NULL, ''),
(42, 2, 'Email', 'check attachment', 'Complete', '2021-04-11 08:40:10', 2, 'Asma', NULL, ''),
(43, 3, 'Orion', '', 'Pending', '2021-04-13 06:31:27', 2, NULL, NULL, NULL),
(44, 3, 'Other', '', 'Pending', '2021-04-30 06:42:02', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `service_type`
--

CREATE TABLE `service_type` (
  `ID` int(15) NOT NULL,
  `ServiceName` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `service_type`
--

INSERT INTO `service_type` (`ID`, `ServiceName`) VALUES
(1, 'Email'),
(2, 'Internet'),
(3, 'Hardware'),
(4, 'Orion'),
(5, 'Printers'),
(6, 'Other');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `ID` int(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `department` varchar(35) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`ID`, `username`, `department`, `password`, `email`) VALUES
(1, 'Rawyah', 'IT', '371200205', 'raw@unilubeco.com'),
(2, 'Shahad', 'Procurement', '112233', ''),
(3, 'Alaa', 'Sales', 'a111', ''),
(4, 'Asma', 'IT', 'a1234', 'aak@unilubeco.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filenames`
--
ALTER TABLE `filenames`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filenames`
--
ALTER TABLE `filenames`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `filenames`
--
ALTER TABLE `filenames`
  ADD CONSTRAINT `filenames_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`);

--
-- القيود للجدول `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
