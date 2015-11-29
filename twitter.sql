-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2015 at 10:59 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `twitter`
--
CREATE DATABASE IF NOT EXISTS `twitter` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `twitter`;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE IF NOT EXISTS `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text NOT NULL,
  `tweet` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `email`, `tweet`) VALUES
(1, 'btistaa@gmail.com', 'this is my tweet'),
(2, '13besewraza@seecs.edu.pk', 'this is my tweet'),
(3, '13besewraza@seecs.edu.pk', 'this is my tweet'),
(4, 'btistaa@gmail.com', 'this is my tweet'),
(5, 'btistaa@gmail.com', 'this is my tweet'),
(6, 'btistaa@gmail.com', 'this is my tweet'),
(11, 'btistaa@gmail.com', 'this is my tweet'),
(12, 'btistaa@gmail.com', 'gta 5'),
(13, 'btistaa@gmail.com', 'gta 5'),
(14, 'btistaa@gmail.com', 'DSLR'),
(15, 'btistaa@gmail.com', 'DSLR'),
(16, 'btistaa@gmail.com', 'DSLR'),
(17, 'btistaa@gmail.com', 'DSLR'),
(18, '13besewraza@seecs.edu.pk', 'Valaar Magholis'),
(19, '13besewraza@seecs.edu.pk', 'Valaar Magholis'),
(20, '13besewraza@seecs.edu.pk', 'Valaar Magholis'),
(22, 'waqasraza123@gmail.com', 'first valid tweet'),
(23, 'waqasraza123@gmail.com', 'first valid tweet'),
(24, 'btistaa@gmail.com', 'through'),
(25, 'jxq58370@foxja.com', 'alina'),
(26, 'jxq58370@foxja.com', 'alina'),
(27, 'jxq58370@foxja.com', 'alina'),
(28, 'btistaa@gmail.com', 'raza'),
(29, 'btistaa@gmail.com', 'chawal'),
(30, 'btistaa@gmail.com', 'chawal'),
(31, 'btistaa@gmail.com', 'helarious'),
(32, 'btistaa@gmail.com', 'new he'),
(33, 'btistaa@gmail.com', 'new he'),
(34, 'btistaa@gmail.com', 'hitlerhitlerhitlerhitler');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
