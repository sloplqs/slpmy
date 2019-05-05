CREATE DATABASE db_jey_user;

USE db_jey_user;

CREATE TABLE t_user_done (myfield VARCHAR(20));

INSERT INTO t_user_done VALUES ('hy'), ('Dolly');


-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql2.freemysqlhosting.net
-- Generation Time: Apr 28, 2019 at 03:45 PM
-- Server version: 5.5.54-0ubuntu0.12.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql2289841`
--
CREATE DATABASE IF NOT EXISTS `sql2289841` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql2289841`;

-- --------------------------------------------------------

--
-- Table structure for table `t_user_done`
--

CREATE TABLE `t_user_done` (
  `user_id` int(11) NOT NULL,
  `user_key` varchar(80) NOT NULL,
  `user_status` varchar(80) NOT NULL,
  `user_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_done`
--

CREATE TABLE `user_done` (
  `user_id` int(11) DEFAULT NULL,
  `user_key` varchar(80) NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_user_done`
--
ALTER TABLE `t_user_done`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_user_done`
--
ALTER TABLE `t_user_done`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
