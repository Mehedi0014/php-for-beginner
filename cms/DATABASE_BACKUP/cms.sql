-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 08:09 PM
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
(3, 'PHP'),
(4, 'JAVA'),
(25, 'Sohag Mama'),
(29, 'Bootstrap 5.0'),
(30, 'Example Categories');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` int(9) NOT NULL,
  `comments_post_id` int(9) NOT NULL,
  `comments_author` varchar(255) NOT NULL,
  `comments_email` varchar(255) NOT NULL,
  `comments_content` text NOT NULL,
  `comments_status` varchar(25) NOT NULL,
  `comments_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comments_id`, `comments_post_id`, `comments_author`, `comments_email`, `comments_content`, `comments_status`, `comments_date`) VALUES
(1, 10, 'Md. Mehedi Hassan', 'mehedi@gmail.com', 'This is just a example comments. Thank you.', 'Approved', '2021-09-23'),
(20, 4, 'Md. Mehedi Hassan', 'mehedi@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio,', 'Approved', '2021-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(5) NOT NULL,
  `post_category_id` int(5) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(1, 1, 'Mehedis PHP CMS is awesome', 'Mehedi Hassan', '2021-09-20', 'mehediOne.jpg', 'Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. ', 'Mehedi, JavaScript, PHP', 1, 'draft'),
(2, 1, 'JavaScript Course', 'Mehedi Hassan', '2021-09-20', 'groupOne.JPG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.', 'Mehedi, PHP, CMS', 2, 'draft'),
(4, 1, 'Mehedi Youtube Channel', 'Mehedi', '2021-09-20', '20210212_170833.jpg', 'Nothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing  ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing ImportentNothing Importent', 'WP, PHP', 4, 'Draft'),
(5, 1, 'Real Id', 'shairf', '2021-09-20', 'signature_300_80.png', '6nd Post', 'WP, PHP, Note dd', 4, 'Publish'),
(6, 3, 'make a title', 'make a author', '2021-09-20', 'signature_300_80.png', 'lorem imsum', 'php, java', 4, 'Trast'),
(8, 0, 'Mehedi Youtube Channel', 'Mehedi', '2016-09-21', 'use_300_300.jpg', 'sdfsdf', 'WP, PHP', 4, 'Draft'),
(9, 0, 'Mehedi Youtube Channel', 'Mehedi', '2016-09-21', 'use_300_300.jpg', 'sdfsdf', 'WP, PHP', 4, 'Draft'),
(10, 0, 'Mehedi Youtube Channel', 'Mehedi', '2016-09-21', 'use_300_300.jpg', 'sdfsdf', 'WP, PHP', 4, 'Draft'),
(11, 0, 'Mehedi Youtube Channel', 'Mehedi', '2016-09-21', 'use_300_300.jpg', 'sdfsdf', 'WP, PHP', 4, 'Draft'),
(12, 30, 'Our Post Title Gose Here', 'Md. Mehedi Hassan shairf', '2021-09-19', 'One.jpg', 'Loerm Ipsum 4', 'WP', 4, 'Publish'),
(19, 25, 'hello', 'hello', '2018-09-21', 'signature_300_80.png', 'hello', 'hello', 4, 'hello');

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
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

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
  MODIFY `comments_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
