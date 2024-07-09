-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 05:23 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `meta_field` text DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`meta_field`, `meta_value`) VALUES
('mobile', '09770774164'),
('email', 'keithjohngonzales2@gmail.com'),
('facebook', 'https://facebook.com/profile'),
('twitter', 'https://twitter.com/BrianGr_1?t=jS9fT6CFEQNusZAm41QijA&s=09'),
('github', 'https://github.com'),
('youtube', 'https://www.youtube.com/@xstream7542'),
('language', 'English, Spanish'),
('address', 'Philippines, Zamboanga City');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(30) NOT NULL,
  `school` text DEFAULT NULL,
  `degree` text DEFAULT NULL,
  `month` varchar(50) NOT NULL,
  `year` int(10) NOT NULL,
  `description` text DEFAULT NULL,
  `order_by` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `school`, `degree`, `month`, `year`, `description`, `order_by`) VALUES
(1, 'Sta. Maria Central School', 'High School', 'April', 2016, '&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;I&#039;ve spend 6 years at Sta. Maria Central School&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0),
(2, 'Pilar College', 'Senior High School', 'April', 2018, '&lt;p&gt;&lt;font color=&quot;#ffffff&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#ffffff&quot;&gt;I&#039;ve spend 2 years at Pilar College and the strand that i have chosen is ABM&lt;/font&gt;&lt;/p&gt;', 0),
(3, ' Sta. Maria Central School', 'Elementary', 'April', 2012, '&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;I&#039;ve spend 6 years at Sta. Maria Central School&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `client` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `summary`, `description`, `banner`, `client`) VALUES
(2, 'Take-a-Bite', 'Are food that can be fancy as well as pricy. It also make your apetite healthy\r\n', '&lt;p&gt;&lt;span style=&quot;font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;Is a a boneless thick or thin slice of red meat, cut across the grain of a large single muscle and which can be cooked quickly over high heat.&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1683298980_close-up-view-tasty-steak-with-sauce-male-s-hands-begin-cut-slice.jpg', ''),
(3, 'Pastry Delicacy', 'are baked goods that are typically sweet and made from dough or batter, often layered or filled with various ingredients such as fruit, chocolate, cream.\r\nis a dessert or sweet treat made primarily from flour, butter, sugar, and other ingredients such as eggs, milk.', '&lt;p&gt;&lt;font color=&quot;#ffffff&quot;&gt;are baked goods that are typically sweet and made from dough or batter, often layered or filled with various ingredients such as fruit, chocolate, cream.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#ffffff&quot;&gt;is a dessert or sweet treat made primarily from flour, butter, sugar, and other ingredients such as eggs, milk.&lt;/font&gt;&lt;/p&gt;', 'uploads/1683299160_delicious-cake-with-fruits-cream.jpg', ''),
(4, 'Anime', 'Your Name (Japanese: 君の名は。, Hepburn: Kimi no Na wa) is a 2016 Japanese animated romantic fantasy film produced by CoMix Wave Films and distributed by Toho. In the film, high school students Taki Tachibana and Mitsuha Miyamizu suddenly begin to swap bodies, despite having never met.', '&lt;p&gt;&lt;font color=&quot;#ffffff&quot;&gt;Your Name (Japanese: 君の名は。, Hepburn: Kimi no Na wa) is a 2016 Japanese animated romantic fantasy film produced by CoMix Wave Films and distributed by Toho. In the film, high school students Taki Tachibana and Mitsuha Miyamizu suddenly begin to swap bodies, despite having never met.&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1683297180_anime-anime-girls-landscape-kimi-no-na-wa-wallpaper-preview.jpg', 'Kimi no Nawa'),
(6, 'Wizard', 'A kid who is the daughter of a wizard king and possesses the power to protect its love one\'s\r\nA fantasy anime that stark colorful graphics depicting vibrant characters in action-filled plots often with fantastic or futuristic themes.', '&lt;p&gt;&lt;font color=&quot;#ffffff&quot;&gt;A kid who is the daughter of a wizard king and possesses the power to protect its love one&#039;s&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#ffffff&quot;&gt;A fantasy anime that stark colorful graphics depicting vibrant characters in action-filled plots often with fantastic or futuristic themes.&lt;/font&gt;&lt;/p&gt;', 'uploads/1683299580_kiki_s_delivery_service_by_seerlight_dd1qkh9-pre.jpg', 'Anime');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'A Web Designer'),
(2, 'address', 'Philippines'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(6, 'short_name', 'Portfolio'),
(9, 'logo', 'uploads/1616118180_aclc.jpg'),
(11, 'welcome_message', 'Im a Web Designer, who love to design websites with their desirable color.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'Keith', 'Gonzales', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1683295560_homepic.png', NULL, '2021-01-20 14:02:37', '2023-05-05 22:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(30) NOT NULL,
  `company` text DEFAULT NULL,
  `position` text DEFAULT NULL,
  `started` varchar(250) NOT NULL,
  `ended` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `order_by` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `company`, `position`, `started`, `ended`, `description`, `order_by`) VALUES
(2, 'WMSU', 'Web Developer', 'January_2020', 'January_2023', '&lt;p&gt;&lt;span style=&quot;font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;As a web developer and web designer, your work involves creating and maintaining websites. Web design involves creating the visual elements of a website, such as the layout, color scheme, and typography, while web development involves coding and programming the website to make it functional.&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
