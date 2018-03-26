-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2018 at 01:22 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci-grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_groups`
--

DROP TABLE IF EXISTS `admin_groups`;
CREATE TABLE IF NOT EXISTS `admin_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES
(1, 'webmaster', 'Webmaster'),
(2, 'admin', 'Administrator'),
(3, 'manager', 'Manager'),
(4, 'staff', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_attempts`
--

DROP TABLE IF EXISTS `admin_login_attempts`;
CREATE TABLE IF NOT EXISTS `admin_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES
(1, '127.0.0.1', 'support', '$2y$08$/X5gzWjesYi78GqeAv5tA.dVGBVP7C1e1PzqnYCVe5s1qhlDIPPES', NULL, 'saidfuad91@gmail.com', NULL, NULL, NULL, NULL, 1451900190, 1522052711, 1, 'Support', NULL),
(2, '127.0.0.1', 'admin', '$2y$08$7Bkco6JXtC3Hu6g9ngLZDuHsFLvT7cyAxiz1FzxlX5vwccvRT7nKW', NULL, NULL, NULL, NULL, NULL, NULL, 1451900228, 1521360130, 1, 'Administrator', ''),
(3, '127.0.0.1', 'manager', '$2y$08$snzIJdFXvg/rSHe0SndIAuvZyjktkjUxBXkrrGdkPy1K6r5r/dMLa', NULL, NULL, NULL, NULL, NULL, NULL, 1451900430, 1465489585, 1, 'Manager', ''),
(4, '127.0.0.1', 'staff', '$2y$08$NigAXjN23CRKllqe3KmjYuWXD5iSRPY812SijlhGeKfkrMKde9da6', NULL, NULL, NULL, NULL, NULL, NULL, 1451900439, 1519884096, 1, 'Staff', ''),
(10, '::1', 'registry', '$2y$08$FJW4k9/SFQwjLkCwl6OAF.fCncw0.uOLXfLUq8q2uE8LmwpJQYTQ6', NULL, NULL, NULL, NULL, NULL, NULL, 1521994779, 1522052679, 1, 'Registry', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_groups`
--

DROP TABLE IF EXISTS `admin_users_groups`;
CREATE TABLE IF NOT EXISTS `admin_users_groups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users_groups`
--

INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 4),
(6, 6, 3),
(7, 7, 3),
(8, 8, 4),
(9, 9, 2),
(10, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `amemos`
--

DROP TABLE IF EXISTS `amemos`;
CREATE TABLE IF NOT EXISTS `amemos` (
  `m_name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `file_url` varchar(255) NOT NULL,
  PRIMARY KEY (`m_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amemos`
--

INSERT INTO `amemos` (`m_name`, `description`, `file_url`) VALUES
('Internal Memo ', '<p>\r\n	Assessment of office furnitures to be done by 12th February 2019</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `api_access`
--

DROP TABLE IF EXISTS `api_access`;
CREATE TABLE IF NOT EXISTS `api_access` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
CREATE TABLE IF NOT EXISTS `api_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, 'anonymous', 1, 1, 0, NULL, 1463388382);

-- --------------------------------------------------------

--
-- Table structure for table `api_limits`
--

DROP TABLE IF EXISTS `api_limits`;
CREATE TABLE IF NOT EXISTS `api_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

DROP TABLE IF EXISTS `api_logs`;
CREATE TABLE IF NOT EXISTS `api_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_desc`) VALUES
(0, 'Land - Chief Officer', ''),
(0, 'Land - Planning', 'This is the physical planning category'),
(0, 'Lands - CECM', ''),
(1, 'Land - Administration', 'This is the Administration section of the administration index'),
(2, 'Land - Housing', 'This is Housing Categories');

-- --------------------------------------------------------

--
-- Table structure for table `cletters`
--

DROP TABLE IF EXISTS `cletters`;
CREATE TABLE IF NOT EXISTS `cletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `record_index` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `record_type` enum('Internal','External') NOT NULL,
  `Status` enum('Pending','Awaiting Action','Completed','On Process') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cletters`
--

INSERT INTO `cletters` (`id`, `title`, `ref_no`, `record_index`, `file_url`, `created_at`, `record_type`, `Status`) VALUES
(13, 'test letter', 'ADM/001/8099', '17', 'e6e05-assets.xlsx', '2018-03-19 14:48:12', 'Internal', '');

-- --------------------------------------------------------

--
-- Table structure for table `cmemos`
--

DROP TABLE IF EXISTS `cmemos`;
CREATE TABLE IF NOT EXISTS `cmemos` (
  `m_name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `file_url` varchar(255) NOT NULL,
  PRIMARY KEY (`m_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecletters`
--

DROP TABLE IF EXISTS `ecletters`;
CREATE TABLE IF NOT EXISTS `ecletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `record_index` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `record_type` enum('Internal','External') NOT NULL,
  `Status` enum('Pending','Awaiting Action','Completed','On Process') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecmemos`
--

DROP TABLE IF EXISTS `ecmemos`;
CREATE TABLE IF NOT EXISTS `ecmemos` (
  `m_name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `file_url` varchar(255) NOT NULL,
  PRIMARY KEY (`m_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'Members', 'General User'),
(2, 'Admins', 'Administrators');

-- --------------------------------------------------------

--
-- Table structure for table `hletters`
--

DROP TABLE IF EXISTS `hletters`;
CREATE TABLE IF NOT EXISTS `hletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `record_index` enum('Administration','Attachment','Staff General','Office Space General','Welfare','Allowance General','Airtime Allowance','Medical Cover','Finance General') NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `record_type` enum('Internal','External') NOT NULL,
  `Status` enum('On Hold','Awaiting Action','Completed','On Process') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hletters`
--

INSERT INTO `hletters` (`id`, `title`, `ref_no`, `record_index`, `file_url`, `created_at`, `record_type`, `Status`) VALUES
(1, 'Housing Funds', 'dasdas', '', '', '2018-03-12 00:00:00', 'External', 'Awaiting Action'),
(2, 'asdas', '', '', '', '2018-03-18 00:00:00', 'External', 'Completed'),
(5, 'test date', 'date test ', 'Staff General', '', '2018-03-16 00:00:00', 'External', 'On Process');

-- --------------------------------------------------------

--
-- Table structure for table `hmemos`
--

DROP TABLE IF EXISTS `hmemos`;
CREATE TABLE IF NOT EXISTS `hmemos` (
  `m_name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `file_url` varchar(255) NOT NULL,
  PRIMARY KEY (`m_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

DROP TABLE IF EXISTS `letters`;
CREATE TABLE IF NOT EXISTS `letters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `record_index` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `record_type` enum('Internal','External') NOT NULL,
  `Status` enum('Pending','Awaiting Action','Completed','On Process') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `title`, `ref_no`, `record_index`, `file_url`, `created_at`, `record_type`, `Status`) VALUES
(4, 'Admin for Staff', 'LND/GEN/002/2018', '', '9adec-copy-2-of-cpol-modification.docx', '2018-03-01 00:00:00', 'External', 'Completed'),
(13, 'test letter', 'ADM/001/8099', '17', 'e6e05-assets.xlsx', '2018-03-19 14:48:12', 'Internal', ''),
(28, 'eewrew', 'ewrewrew', '', '', '2018-03-26 16:16:27', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `memos`
--

DROP TABLE IF EXISTS `memos`;
CREATE TABLE IF NOT EXISTS `memos` (
  `m_name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `file_url` varchar(255) NOT NULL,
  PRIMARY KEY (`m_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memos`
--

INSERT INTO `memos` (`m_name`, `description`, `file_url`) VALUES
('test memo', '<p>\r\n	test</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `pletters`
--

DROP TABLE IF EXISTS `pletters`;
CREATE TABLE IF NOT EXISTS `pletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `record_index` enum('Administration','Attachment','Staff General','Office Space General','Welfare','Allowance General','Airtime Allowance','Medical Cover','Finance General') NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `record_type` enum('Internal','External') NOT NULL,
  `Status` enum('On Hold','Awaiting Action','Completed','On Process') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pletters`
--

INSERT INTO `pletters` (`id`, `title`, `ref_no`, `record_index`, `file_url`, `created_at`, `record_type`, `Status`) VALUES
(2, 'Planning', 'PL/LND/002/2018', 'Staff General', '', '0000-00-00', 'External', 'Awaiting Action');

-- --------------------------------------------------------

--
-- Table structure for table `pmemos`
--

DROP TABLE IF EXISTS `pmemos`;
CREATE TABLE IF NOT EXISTS `pmemos` (
  `m_name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `file_url` varchar(255) NOT NULL,
  PRIMARY KEY (`m_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmemos`
--

INSERT INTO `pmemos` (`m_name`, `description`, `file_url`) VALUES
('Planning for audit ', '<p>\r\n	Dear all, the attached memo refers to the ongoing audit. Prepare all audit procedures for efficient planning</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `reports_id` int(11) NOT NULL AUTO_INCREMENT,
  `reports_name` varchar(50) NOT NULL,
  `reports_desc` text NOT NULL,
  `supporting_document` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `report_type` enum('Action Report','Summary Reports','Miscellenous Reports') NOT NULL,
  `status` enum('On Hold','Awaiting Action','Completed','On Process') NOT NULL,
  PRIMARY KEY (`reports_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `s_a_categories`
--

DROP TABLE IF EXISTS `s_a_categories`;
CREATE TABLE IF NOT EXISTS `s_a_categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_index` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_a_categories`
--

INSERT INTO `s_a_categories` (`cat_id`, `record_index`) VALUES
(1, '1-1 Staff General'),
(2, '1-2 Planning'),
(3, '1-3 Housing'),
(4, '1-4 Lands'),
(5, '1-5 Administration'),
(6, '1-6 Attachment'),
(7, '1-7 Sectional Staff Meeting'),
(8, '1-8 Office Space General'),
(9, '1-9 Welfare'),
(10, '1-10 Sick Sheet'),
(11, '2-1 Allowance General'),
(12, '2-2 Airtime Allowance'),
(13, '2-3 Leave Roster / Allowance'),
(14, '2-4 Acting Allowance'),
(15, '2-5 Medical Cover'),
(16, '2-6 Per diem'),
(17, '2-7 House Allowance');

-- --------------------------------------------------------

--
-- Table structure for table `s_categories`
--

DROP TABLE IF EXISTS `s_categories`;
CREATE TABLE IF NOT EXISTS `s_categories` (
  `sub_cat` varchar(30) NOT NULL,
  `s_cat_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`sub_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `s_h_categories`
--

DROP TABLE IF EXISTS `s_h_categories`;
CREATE TABLE IF NOT EXISTS `s_h_categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_index` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_h_categories`
--

INSERT INTO `s_h_categories` (`cat_id`, `record_index`) VALUES
(1, '1-1 Housing General'),
(2, '1-2 Buxton Estate'),
(3, '1-3 Mzizima Estate'),
(4, '1-4 Nyerere Estate'),
(5, '1-5 Kizingo Estate'),
(6, '1-6 Likoni EState'),
(7, '1-7 Khadija Estate'),
(8, '1-8 Changamwe Estate'),
(9, '1-9 Tudor Estate'),
(10, '1-10 Kaa Chonjo Estate'),
(11, '2-1 Housing Development General'),
(12, '2-2 Chaani'),
(13, '2-3 Mikindani'),
(14, '2-4 Miritini'),
(15, '3-1 World Bank'),
(16, '3-2 UN Habitat'),
(17, '3-3  Kisip');

-- --------------------------------------------------------

--
-- Table structure for table `s_p_categories`
--

DROP TABLE IF EXISTS `s_p_categories`;
CREATE TABLE IF NOT EXISTS `s_p_categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_p_categories`
--

INSERT INTO `s_p_categories` (`cat_id`, `cat_name`) VALUES
(1, '1-1 Planning General'),
(2, '1-2 Change of User'),
(3, '1-3 Sub Division'),
(4, '1-4 Extension of User'),
(5, '1-5 Extension of Lease'),
(6, '1-6 Consolidation'),
(7, '2-1 Development Application'),
(8, '2-2 Development Approvals'),
(9, '2-3 Development Not Approved'),
(10, '2-4 Building & Constructions'),
(11, '2-5 Illegal/Unauthorized Structure'),
(12, '2-6 Development Control'),
(13, '3-1 Architectural'),
(14, '3-2 Project Submission Sheet'),
(15, '4-1 E-Construction/License'),
(16, '4-2 CB/Field Inspection Report'),
(17, '4-3 Strategic Plan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'member', '$2y$08$kkqUE2hrqAJtg.pPnAhvL.1iE7LIujK5LZ61arONLpaBBWh/ek61G', NULL, 'member@member.com', NULL, NULL, NULL, NULL, 1451903855, 1451905011, 1, 'Member', 'One', NULL, NULL),
(2, '::1', 'halima.idd', '$2y$08$NPTSlHsHsM5mif6aQsQzFuo2p4Xk4/blOMpQ5ex7yy6omoe21g5ke', NULL, 'halima@gmail.com', NULL, NULL, NULL, NULL, 1519882658, NULL, 1, 'Halima', 'Iddi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
