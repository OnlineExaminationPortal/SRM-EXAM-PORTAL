-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 07:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sm1839@gmail.com', '123987'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('607c5203ecfd1', '607c520404324'),
('607eec45f22a4', '607eec460cc95'),
('607eec4645d25', '607eec464b5f2');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('607c0208d364d', 'soumya', '123@gmail.com', 'c++', 'good questions', '2021-04-18', '11:55:20am'),
('607c36109ec9f', 'Liya', 'liya123@yahoo.com', 'Operating System', 'tecnical questions available.', '2021-04-18', '03:37:20pm'),
('607c365436495', 'Roy', 'Roy123456@gmail.com', 'Operation Research', 'very hard examination.', '2021-04-18', '03:38:28pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('sd123@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2021-04-18 13:45:27'),
('sm555@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2021-04-18 13:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('607c5203ecfd1', 'cout', '607c520404310'),
('607c5203ecfd1', 'cin', '607c520404322'),
('607c5203ecfd1', 'printf', '607c520404323'),
('607c5203ecfd1', 'scanf', '607c520404324'),
('607eec45f22a4', '12', '607eec460cc95'),
('607eec45f22a4', '10', '607eec460cc9d'),
('607eec45f22a4', '5', '607eec460cca0'),
('607eec45f22a4', '6', '607eec460cca4'),
('607eec4645d25', 'inheritence and encapsulation', '607eec464b5f2'),
('607eec4645d25', 'inheritence', '607eec464b5fd'),
('607eec4645d25', 'local variable', '607eec464b601'),
('607eec4645d25', 'none of these', '607eec464b606');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('607c51b1f04fb', '607c5203ecfd1', 'What is the input statement  in C?', 4, 1),
('607eeb2827a53', '607eec45f22a4', 'c = ++a + b\r\na =5 , b = 6.', 4, 1),
('607eeb2827a53', '607eec4645d25', 'Which of these are the features in c++?', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 09:09:03'),
('607c51b1f04fb', 'C', 5, 1, 1, 1, 'W', 'Q1', '2021-04-18 15:35:13'),
('607eeb2827a53', 'Gk', 10, 1, 2, 2, '', '#gk', '2021-04-20 14:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('sd123@gmail.com', 4, '2021-04-18 13:45:28'),
('sm555@gmail.com', 4, '2021-04-18 13:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Riya', 'F', 'SRM university', 'admin@admin.com', 9685315452, 'f3eafd4a897d8c10fcbce0d7f498ed6b'),
('Nisarg', 'M', 'SRM university', 'nd234@gmail.com', 9686753245, '0c74179d906b22da6c9471a4772637e8'),
('Soumyoneel', 'M', 'SRM university', 'sd123@gmail.com', 9686752386, '10ffb58e5d0b0e43748ed9f4c2f19b55'),
('Soumya Mohanty', 'F', 'SRM university', 'sm555@gmail.com', 9685742583, '9eed20a1845d31b3d065065c58cb4612'),
('Soumya', 'F', 'SRM university', 'sm6839@gmail.com', 9536456824, 'e5caf1393759d72d0f1c81e225b0ce92'),
('Tiyasha', 'F', 'SRM university', 'ts523@gmail.com', 8659752398, '28aad56a59a6348784ad992defc672ab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
