-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2021 at 02:30 AM
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
(29, 'Bootstrap 5.0');

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
(1, 1, 'Mehedi\'s PHP CMS is awesome', 'Mehedi Hassan', '2021-04-01', 'mehediOne.jpg', 'Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. Wow I really like this CMS. ', 'Mehedi, JavaScript, PHP', 1, 'draft'),
(2, 2, 'JavaScript Course', 'Mehedi Hassan', '2021-04-29', 'groupOne.JPG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit.', 'Mehedi, PHP, CMS', 2, 'draft'),
(3, 2, 'PHP Course', 'Mahamudul Hassan', '2021-04-28', 'mehediTwo.JPG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel metus mi. Morbi mollis ut mi ac posuere. Praesent ac gravida mauris. Fusce condimentum mi ex, non aliquam nulla maximus et. Integer hendrerit, nibh id lobortis commodo, ligula nisl fringilla purus, a tincidunt libero sem eu lacus. Morbi turpis arcu, tincidunt ut efficitur non, mattis id lacus. Vivamus elit magna, commodo et pellentesque sed, ultricies id massa. Phasellus in orci interdum, ultricies dui et, sodales est. Vivamus vulputate finibus suscipit. ', 'Mahamudul, php, cms', 5, 'draft');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

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
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
