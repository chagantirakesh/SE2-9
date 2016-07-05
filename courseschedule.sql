-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2016 at 11:12 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `courseschedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(512) DEFAULT NULL,
  `couseid` varchar(255) DEFAULT NULL,
  `coursedescription` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7248 ;

-- --------------------------------------------------------

--
-- Table structure for table `courseparticulars`
--

CREATE TABLE IF NOT EXISTS `courseparticulars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseid` varchar(255) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=235 ;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(512) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE IF NOT EXISTS `instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `cousespersemester` int(11) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=288 ;

-- --------------------------------------------------------

--
-- Table structure for table `instructorteachings`
--

CREATE TABLE IF NOT EXISTS `instructorteachings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instructorname` varchar(512) NOT NULL,
  `required` int(11) NOT NULL,
  `courseid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=152 ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `term` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `sectionname` varchar(512) DEFAULT NULL,
  `meetinginfo` varchar(1024) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `available` varchar(50) DEFAULT NULL,
  `credits` varchar(30) DEFAULT NULL,
  `academiclevel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3598 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(255) DEFAULT NULL,
  `deptid` varchar(255) NOT NULL,
  `year` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=545 ;

-- --------------------------------------------------------

--
-- Table structure for table `studentcourses`
--

CREATE TABLE IF NOT EXISTS `studentcourses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `courseid` varchar(255) DEFAULT NULL,
  `attr` varchar(50) NOT NULL,
  `deptid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5415 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
