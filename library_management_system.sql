-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 11:08 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `genre` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `publisher` varchar(300) NOT NULL,
  `edition` int(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `pages` int(100) NOT NULL,
  `date_issued` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `user_id`, `genre`, `title`, `author`, `publisher`, `edition`, `isbn`, `pages`, `date_issued`) VALUES
(1, 5, 'Horror', 'Ibyino by’Umuzimu', 'Niyomugabo Jean', 'Inkoranya y’u Rwanda', 3, 'jfklsgsdlg5qw7q87w', 800, '2018-07-10'),
(3, 4, 'Adventure', 'Indirimbo y’Umuriro n’Amazi', 'Gasana Eric', 'Ibitabo by’Ubukerarugendo', 8, 'has23dadh123427', 1200, '2018-07-11'),
(4, 5, 'Adventure', 'Harikari na Umuhanga w’Umutima', 'Uwase Marie', 'Ibitabo bya Harikari', 1, '31ghf1jk24kjb3l4l1gjh', 667, '2018-07-10'),
(5, 2, 'Adventure', 'Harikari n’Ibyaha by’Icyatsi', 'Uwase Marie', 'Ibitabo bya Harikari', 2, 'agsh32gqkj12bkl134', 798, '2018-07-10'),
(7, 0, 'Mystery', 'Ibyago by’Icyumba cy’Abazungu', 'Mukamana Alice', 'Ibitabo by’Ibyago', 2, '4zgdhdv2dfh81v31sdgj', 669, '0000-00-00'),
(10, 0, 'Modern Literature', 'Gushaka Igihe Cyahindutse', 'Niyonsenga Patrick', 'Ibitabo by’Ubuhanga', 8, '2j3nsd235habh3dfkj', 4215, '2018-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `books_request`
--

CREATE TABLE `books_request` (
  `request_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `genre` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `edition` int(10) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_request`
--

INSERT INTO `books_request` (`request_id`, `user_id`, `genre`, `title`, `author`, `edition`, `isbn`, `date`) VALUES
(1, 2, 'Mystery', 'Ibyago ku Gari ya Moshi', 'Mukamana Alice', 3, '12gf3gj1jhr3jklj1ugjkb', '2018-07-10'),
(2, 5, 'Mystery', 'Ibyago by’Icyumba cy’Abazungu', 'Mukamana Alice', 3, '4zgdhdv2dfh81v31sdgj', '2018-07-10'),
(3, 4, 'Mystery', 'Ibyago by’Icyumba cy’Abazungu', 'Mukamana Alice', 3, '4zgdhdv2dfh81v31sdgj', '2018-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `issue_date`
--

CREATE TABLE `issue_date` (
  `issue_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_date`
--

INSERT INTO `issue_date` (`issue_id`, `book_id`, `user_id`, `date`) VALUES
(1, 1, 2, '2024-12-10'),
(2, 5, 2, '2024-12-10'),
(3, 3, 2, '2024-12-10'),
(4, 4, 5, '2024-12-10'),
(5, 1, 2, '2024-12-10'),
(6, 5, 5, '2024-12-10'),
(7, 1, 5, '2024-12-10'),
(8, 4, 5, '2024-12-10'),
(9, 3, 5, '2024-12-10'),
(10, 5, 5, '2024-12-10'),
(11, 3, 5, '2024-12-10'),
(12, 3, 5, '2024-12-10'),
(13, 3, 5, '2024-12-10'),
(14, 3, 5, '2024-12-10'),
(15, 3, 4, '2024-12-10'),
(16, 1, 5, '2024-12-10'),
(17, 3, 5, '2024-12-10'),
(18, 5, 2, '2024-12-10'),
(19, 3, 4, '2024-12-11'),
(20, 7, 4, '2024-12-11'),
(21, 7, 5, '2024-12-12'),
(22, 3, 4, '2024-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `password` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `gender` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `phone`, `email`, `is_admin`, `password`, `address`, `gender`) VALUES
(1, 'Imaniriyo', '07811568524', 'imani@gmail.com', 1, '1234', 'Kigali, Nyarugenge', 'Female'),
(2, 'Ntwali', '07864431859', 'ntwali@gmail.com', 0, 'yellow', 'Kigali, Gasabo', 'Male'),
(4, 'Uwase', '07824184941', 'uwase.ryan.07@outlook.com', 0, 'horse', 'Kigali, Kicukiro', 'Female'),
(5, 'Mugisha', '07823645289', 'mugisha@gmail.com', 0, 'abcd', 'Rubavu, Gisenyi', 'Male'),
(6, 'Keza', '07882963175', 'keza@gmail.com', 0, 'qwerty', 'Musanze, Kinigi', 'Female'),
(7, 'Hirwa', '07832478293', 'hirwa@gmail.com', 0, 'hirwa123', 'Nyagatare, Rwimiyaga', 'Male'),
(8, 'Dushimimana', '07826972364', 'dushimimana@gmail.com', 0, 'dushimimana', 'Huye, Ngoma', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `books_request`
--
ALTER TABLE `books_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `issue_date`
--
ALTER TABLE `issue_date`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `books_request`
--
ALTER TABLE `books_request`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `issue_date`
--
ALTER TABLE `issue_date`
  MODIFY `issue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
