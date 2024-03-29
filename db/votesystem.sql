-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 06:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--
CREATE DATABASE IF NOT EXISTS `votesystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `votesystem`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `admin`:
--

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'mohan', 'mohan.sjbit', 'Mohan', 'Gowda T', 'boy-admin.jpg', '2024-02-28'),
(2, 'nithu', 'nithu.sjbit', 'Nithu', 'Shree', 'girl-admin.jpg', '2024-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `candidates`:
--

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(19, 8, 'Ethan', 'Wilson', 'candidate-1.jpg', '> Platform: Enhancing Student Engagement. \r\n\r\n> Goals:\r\nIncrease participation in extracurricular activities by organizing more events and clubs.\r\nImplement a feedback system to address student concerns and suggestions effectively.\r\nPromote diversity and inclusivity through cultural exchange programs and awareness campaigns.'),
(20, 8, 'Noah', 'Thompson', 'candidate-2.jpg', '> Platform: Academic Excellence and Support.  \r\n> Goals:\r\nEstablish tutoring programs to support students struggling with coursework.\r\nAdvocate for increased access to educational resources and materials.\r\nWork with faculty to implement innovative teaching methods and promote academic success.'),
(21, 8, 'Olivia', 'Martinez', 'candidate-3.jpg', '> Platform: Campus Sustainability and Environmental Initiatives.  \r\n> Goals:\r\nReduce campus carbon footprint by implementing recycling programs and promoting energy efficiency.\r\nExpand green spaces and community gardens to promote environmental awareness.\r\nAdvocate for sustainable practices in campus facilities and transportation.'),
(22, 8, 'Emma', 'Taylor', 'candidate-4.jpg', '> Platform: Communication and Transparency.  \r\n> Goals:\r\nImprove communication between student body and administration through regular updates and newsletters.\r\nImplement an online platform for students to voice their opinions and concerns.\r\nEnhance transparency in student government proceedings and decision-making processes.'),
(23, 10, 'Liam', 'Harris', 'candidate-5.jpg', '> Platform: Student Wellness and Mental Health Support.  \r\n> Goals:\r\nExpand counseling services and resources to support student mental health and well-being.\r\nOrganize stress-relief events and mindfulness workshops to promote a healthy campus lifestyle.\r\nAdvocate for destigmatizing mental health issues and increasing awareness about available resources.'),
(24, 10, 'Ava', 'White', 'candidate-6.jpg', '> Platform: Diversity and Inclusion.  \r\n> Goals:\r\nFoster a more inclusive campus community through cultural awareness events and diversity celebrations.\r\nAdvocate for the establishment of affinity groups and support networks for underrepresented student populations.\r\nWork with administration to ensure equitable access to resources and opportunities for all students.'),
(25, 11, 'Sofia', 'Brown', 'candidate-7.jpg', '> Platform: Fiscal Responsibility and Financial Aid Accessibility.  \r\n> Goals:\r\nEnsure responsible allocation of student funds to benefit all aspects of campus life.\r\nAdvocate for increased financial aid and scholarship opportunities to alleviate student financial burdens.\r\nPromote financial literacy programs to educate students about budgeting and managing expenses.'),
(26, 11, 'Mason', 'Carter', 'candidate-8.jpg', '> Platform: Campus Infrastructure and Facilities Enhancement.  \r\n> Goals:\r\nImprove campus infrastructure by renovating outdated facilities and enhancing technology resources.\r\nImplement sustainable practices to reduce operating costs and allocate savings towards campus improvements.\r\nEnhance accessibility and safety measures to create a more welcoming and secure environment for all students.');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `positions`:
--

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'President', 2, 1),
(10, 'Secretary', 1, 2),
(11, 'Treasurer', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `voters`:
--

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(6, '4I2FS', 'balaji', 'Balaji', 'K N', 'balaji.jpg'),
(7, '62WME', 'indhu', 'Indhu', 'Shriya', 'indhu.jpg'),
(8, 'Z5UV7', 'will', 'Will', 'Smith', 'will.jpg'),
(9, 'M6BNE', 'ethan', 'Ethan', 'Smith', 'user-1.jpg'),
(10, 'SJA3C', 'lucas', 'Lucas', 'Nguyen', 'user-2.jpg'),
(11, 'DCNGV', 'liam', 'Liam', 'Patel', 'user-3.jpg'),
(12, '96P23', 'olivia', 'Olivia', 'Kim', 'user-4.jpg'),
(13, 'OGMLU', 'oliver', 'Oliver', 'Chen', 'user-5.jpg'),
(14, '2WYVQ', 'william', 'William', 'Garcia', 'user-6.jpg'),
(15, 'EUZLC', 'james', 'James', 'Kumar', 'user-13.jpg'),
(16, 'DF9LN', 'isabella', 'Isabella', 'Chang', 'user-7.jpg'),
(18, 'PZBK3', 'daniel', 'Daniel', 'Martinez', 'user-9.jpg'),
(19, 'N42A6', 'natalie', 'Natalie', 'Lee', 'user-11.jpg'),
(20, 'X3MA1', 'jackson', 'Jackson', 'Zhao', 'user-10.jpg'),
(21, 'W7RJI', 'henry', 'Henry', 'Kenzo', 'user-12.jpg'),
(22, 'MGUC3', 'sebastian', 'Sebastian', 'Patel', 'user-14.jpg'),
(23, 'GT25I', 'mohan', 'fddh', 'dfydf', 'IMG_20221004_191510.jpg'),
(25, 'TUJLH', '123', 'xyz', 'abc', 'photo.jpg'),
(26, 'CKR9X', '123', 'shru', 'kkoi', 'PB1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `votes`:
--

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(89, 6, 19, 8),
(90, 6, 20, 8),
(91, 6, 24, 10),
(92, 6, 26, 11),
(93, 7, 20, 8),
(94, 7, 21, 8),
(95, 7, 24, 10),
(96, 7, 25, 11),
(97, 16, 19, 8),
(98, 16, 20, 8),
(99, 16, 24, 10),
(100, 16, 26, 11),
(101, 13, 20, 8),
(102, 13, 22, 8),
(103, 13, 23, 10),
(104, 13, 25, 11),
(105, 17, 20, 8),
(106, 17, 21, 8),
(107, 17, 23, 10),
(108, 17, 26, 11),
(109, 14, 20, 8),
(110, 14, 21, 8),
(111, 14, 23, 10),
(112, 14, 26, 11),
(113, 12, 21, 8),
(114, 12, 22, 8),
(115, 12, 24, 10),
(116, 12, 26, 11),
(117, 18, 19, 8),
(118, 18, 22, 8),
(119, 18, 23, 10),
(120, 18, 26, 11),
(125, 25, 19, 8),
(126, 25, 20, 8),
(127, 25, 24, 10),
(128, 25, 25, 11),
(129, 26, 20, 8),
(130, 26, 21, 8),
(131, 26, 24, 10),
(132, 26, 26, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
