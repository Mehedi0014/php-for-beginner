-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 08:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'JavaScript'),
(3, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(9) NOT NULL,
  `comment_post_id` int(9) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(25) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(21, 1, 'Md. Mehedi Hassan', 'mehedi@gmail.com', ' Wow I really like this CMS.  ---- 2', 'Approved', '2021-09-26'),
(26, 1, 'Md. Mehedi Hassan', 'mehedi@gmail.com', 'Mehedis PHP CMS is awesome', 'Approved', '2021-09-27'),
(32, 1, 'Md. Mehedi Hassan', 'mehedi@gmail.com', 'afsdaf', 'Approved', '2021-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(5) NOT NULL,
  `post_category_id` int(5) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(1, 1, 'Mehedis PHP CMS is awesome - 1', 'Mehedi Hassan', '', '2021-11-10', 'mehediOne.jpg', 'Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. ', 'Mehedi, JavaScript, PHP', 8, 'published', 6),
(2, 1, 'JavaScript Course - 2', 'Mehedi Hassan', '', '2021-11-10', 'groupOne.JPG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.', 'Mehedi, PHP, CMS', 2, 'published', 0),
(4, 1, 'Mehedi Youtube Channel - 3', 'Mehedi', '', '2021-11-10', '20210212_170833.jpg', 'Nothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing Importent', 'WP, PHP', 4, 'published', 0),
(22, 1, 'boom - 4', 'boom', '', '2021-11-10', '20210212_170833.jpg', 'boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom \r\nboom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom \r\nboom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom \r\nboom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom \r\nboom boom boom boom boom boom boom boom boom boom boom boom boom boom ', 'boom', 0, 'published', 0),
(25, 1, 'Mehedis PHP CMS is awesome - 5', 'Mehedi Hassan', '', '2021-11-10', 'mehediOne.jpg', 'Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. ', 'Mehedi, JavaScript, PHP', 0, 'published', 0),
(26, 1, 'JavaScript Course - 6', 'Mehedi Hassan', '', '2021-11-10', 'groupOne.JPG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.', 'Mehedi, PHP, CMS', 0, 'published', 0),
(27, 1, 'Mehedis PHP CMS is awesome - 7', 'Mehedi Hassan', '', '2021-11-10', 'mehediOne.jpg', 'Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. ', 'Mehedi, JavaScript, PHP', 0, 'published', 0),
(28, 1, 'JavaScript Course - 8', 'Mehedi Hassan', '', '2021-11-10', 'groupOne.JPG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.', 'Mehedi, PHP, CMS', 0, 'published', 0),
(29, 1, 'Mehedi Youtube Channel - 9', 'Mehedi', '', '2021-11-10', '20210212_170833.jpg', 'Nothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing Importent', 'WP, PHP', 0, 'published', 0),
(30, 1, 'boom - 10', 'boom', '', '2021-11-10', '20210212_170833.jpg', 'boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom \r\nboom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom \r\nboom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom \r\nboom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom boom \r\nboom boom boom boom boom boom boom boom boom boom boom boom boom boom ', 'boom', 0, 'published', 0),
(31, 1, 'Mehedis PHP CMS is awesome - 11', 'Mehedi Hassan', '', '2021-11-10', 'mehediOne.jpg', 'Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. ', 'Mehedi, JavaScript, PHP', 0, 'published', 0),
(32, 1, 'JavaScript Course - 12', 'Mehedi Hassan', '', '2021-11-10', 'groupOne.JPG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.', 'Mehedi, PHP, CMS', 0, 'published', 0),
(33, 1, 'JavaScript Course - 13', 'Mehedi Hassan', '', '2021-11-11', 'groupOne.JPG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.', 'Mehedi, PHP, CMS', 0, 'published', 14),
(40, 1, 'Test User 1', '', 'Sima', '2022-03-13', 'Savings Club banner.jpeg', 'wpsdkj skdfj ksdjf ', 'WP, PHP', 0, 'published', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrengs22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(29, 'Mehedi', '$2y$10$lwI.w4AKrfBeQ3lFLHrg9uegqkrqTtloXz7OgZ5h8h56/wnnhDOJm', 'Md. Mehedi Hassan', 'Sharif', 'mehedi0014@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrengs22'),
(36, 'Mehedi', '$2y$10$4NidVZCZIlhfXgN76wuur.FomNvdKzA6K2HpZtJERDcIcCxEZ337a', 'Md. Sohag', 'Hassan arif', 'tesdddd@g.com', '', 'subscriber', '$2y$10$iusesomecrazystrengs22'),
(37, 'Mehedi', '$2y$10$mSLb6.FczeY5A4cTuYZ84.r9n46PktWLW4snafH3J0apN05Lsib4u', 'Rabeya Akter', 'Sima', 'mahatab@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrengs22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, 'iabbam4m6mffko6copf1399muc', 1636829992),
(2, 'd0gq0li35iht3ovac7tti9rhpm', 1637001098),
(3, '7iol5cohmlvp5dbt4mv44lph1d', 1636914517),
(4, 'r7m8sraheaee6linvjq7akudbh', 1637001093),
(5, 'mor2qk2qha7s8cqad5oj0k9l4g', 1637608093),
(6, '0ttioehljh60ljpjpj720qhbev', 1637780749),
(7, 'ql2d3qdo1q2g17mj8skv603tgr', 1638382186),
(8, 'fej023u6jgktns7ng8v9ug4jjd', 1638558452),
(9, '818ivbifprkq6rp1lncrb0jkss', 1638810691),
(10, 'iluoujr116ou9lf6a8utji5u9o', 1646765220),
(11, 'hd388211qhgnn11qqglocidbea', 1647112177),
(12, 'l446pd9re28qsgt7fhc5iqg983', 1647193188),
(13, 'pru76vl5m5rqp46r44mmdmq4fl', 1649180489);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
