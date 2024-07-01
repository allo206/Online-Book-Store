-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 06:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_book_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Allo Rani Malakar', 'allo@gmail.com', '$2y$10$Nqq/y251QX2Ccvb1Ax7hUuMqQSkG3yRLCxN2KPdetnSP3oaXVH70a');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(11, 'Carlo Collodi'),
(12, ' Leo Tolstoy'),
(13, ' William Shakespeare '),
(14, 'Paul Stewart'),
(15, 'Agatha Christie'),
(16, 'Charles Dickens'),
(20, 'Carlo Collodi'),
(21, 'Lucy Maud Montgomery');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `description`, `category_id`, `cover`, `file`) VALUES
(11, 'The Adventure Of Pinocchio', 11, 'The book describes the hectic journey that will take Pinocchio to unthinkable places and situations along with a variety of characters who accompany him during his odyssey, which besides wanting to return home is the persistent desire to become a real boy.  Cataloged as one of the most widely read books worldwide and with a great variety of adaptations both in cinema and theater, it is a work that beyond its fantasy conception evokes the consideration of honesty, obedience, and respect as values and attitudes to be followed.', 8, '667dc87ed2d1c4.77015287.jpg', '667dc87ed38502.34288550.pdf'),
(12, ' War and peace', 12, ' War and Peace is a novel that Tolstoy began writing during a period of convalescence after breaking his arm by falling off a horse at a hunting party in 1864.   It was first published as magazine installments (1865-1869). War and Peace is considered to be the author’s crowning work along with his other later work, “Anna Karenina” This is one of the crowning works of Russian literature and undoubtedly of world literature. In it, Tolstoy wanted to narrate the vicissitudes of numerous characters of all kinds and conditions throughout some fifty years of Russian history, from the Napoleonic wars to beyond the mid-nineteenth century.', 6, '667dc9e6af99a8.13945160.jpg', '667dc9e6affce4.12267247.pdf'),
(13, 'The complete sonnets and poems', 13, ' Shakespeare\'s Sonnets are among the most complex and beautiful poems ever written. Their exploration of love, praise, homo- and hetero-sexual desire is enacted in the richest, densest writing in English. And the first printed work to which Shakespeare\'s name was attached was the erotic narrative poem, Venus and Adonis, which developed a sumptuous vocabulary in which to explore love, praise of the beloved, sexual desire, and the power of rhetoric. That poem was so popular that most of Shakespeare\'s contemporaries thought of him as primarily a poet, rather than a playwright. Yet despite the power of Shakespeare\'s poems, and their foundational place within his oeuvre, modern readers have seldom been encouraged to engage with his non-dramatic works as a whole. This new edition explains how this state of affairs has arisen, and why it needs to be changed. The volume contains the complete Sonnets and poems with a full commentary. An extensive and lively introduction explores Shakespeare\'s poetic development, and shows how the poems relate to each other and to his dramatic works. The Sonnets are freshly interpreted, not as cryptic fragments of autobiography, but as works which ask their readers to think about relationships between lyric poems and the historical circumstances which may have given rise to them. The narrative poems Venus and Adonis and Lucrece are placed where they belong, at the origin of Shakespeare\'s thinking about what it means to desire and to be desired. The edition responds to the most recent scholarly work on the interpretation and dating of Shakespeare\'s poems and Sonnets. It also explores what the poems may have meant to their earliest readers. For this reason it also includes poems attributed to Shakespeare in the seventeenth century, as well as those printed under his name in The Passionate Pilgrim in 1599.', 9, '667dca7db63ab1.03777401.jpg', '667dca7db6abc9.91252020.pdf'),
(14, 'Brown Eyes', 14, ' Every year, Peter and Susan go to Lea-on-Sea for their every year they stay at the Hotel Vista. This year things start to go wrong. A man is pretending to be Peter. But why? Is he friendly or dangerous - what does he want? Will this, their thirteenth visit to Lea-on-Sea be their last? A thrilling and compelling mystery. Recommended for younger learners.', 7, '667dcb777ed516.60468015.jpg', '667dcb777f3749.01442760.pdf'),
(15, 'The Mysterious Affair at Styles', 15, 'The Mysterious Affair at Styles is the first detective novel by British writer Agatha Christie, introducing her fictional detective Hercule Poirot. It was written in the middle of the First World War, in 1916, and first published by John Lane in the United States in October 1920[1] and in the United Kingdom by The Bodley Head (John Lane\'s UK company) on 21 January 1921.', 8, '667dcbe31c3bf3.15036534.jpg', '667dcbe31c9d46.53802424.pdf'),
(20, 'Anne of Green Gables', 21, 'Anne of Green Gables is a 1908 novel by Canadian author Lucy Maud Montgomery (published as L. M. Montgomery). Written for all ages, it has been considered a classic children\'s novel since the mid-20th century.', 16, '6681211cd979e3.14365038.jpg', '6681211cda8f05.06112561.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(7, 'Story'),
(8, 'Novel'),
(9, 'Poetry'),
(16, 'fiction'),
(17, 'fiction');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
