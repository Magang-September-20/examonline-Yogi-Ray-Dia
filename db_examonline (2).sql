-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 05:30 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_examonline`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `expiredUpdate` (IN `@code` VARCHAR(50))  BEGIN
UPDATE db_examonline.code SET code.is_used = '1' WHERE code.code = `@code`;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `code` varchar(20) NOT NULL,
  `expired_date` timestamp NULL DEFAULT NULL,
  `is_sent` tinyint(1) NOT NULL DEFAULT '0',
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `user` int(10) NOT NULL,
  `module` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`code`, `expired_date`, `is_sent`, `is_used`, `user`, `module`) VALUES
('CPP53dtj3JOn37LlHCgX', '2020-10-21 12:36:46', 1, 1, 28, 'CPP'),
('CPP5fy5NnPY5BrKNJgHb', '2020-10-27 16:16:50', 1, 1, 4, 'CPP'),
('CPPcX1pgETeeCFVeFVMf', '2020-11-01 14:26:00', 0, 1, 25, 'CPP'),
('CPPfUfJ0kSM8ZXOXIbQU', '2020-10-27 16:20:25', 1, 1, 28, 'CPP'),
('CPPgz8hdHs4zMuAffoiD', '2020-10-26 23:24:06', 1, 1, 28, 'CPP'),
('CPPKRrui5RXLlRvaqYqd', '2020-10-21 04:37:29', 1, 1, 28, 'CPP'),
('CPPlvkh9Jg32eIeVQW6z', '2020-10-20 12:22:30', 1, 1, 27, 'CPP'),
('CPPod2knIX7120ZMpV9I', '2020-10-22 14:47:25', 1, 1, 28, 'CPP'),
('CPPTvfiAaz024TWle4Ml', '2020-10-23 18:57:44', 1, 1, 28, 'CPP'),
('CPPujIzQHLGY36MVloln', NULL, 0, 0, 28, 'CPP'),
('CPPVcEREBrcMBSy82bF0', '2020-11-23 16:45:35', 1, 1, 41, 'CPP'),
('CPPWMA9zgUjfrioplZqO', NULL, 0, 0, 35, 'CPP'),
('DOTOiNR8ZrROs0uQq5oY', NULL, 0, 0, 28, 'DOT'),
('HTM2Dg85n5MJFkQXpRkH', '2020-10-21 07:10:09', 1, 1, 28, 'HTM'),
('HTM4va5YKqzE3hKQ1ieO', NULL, 0, 0, 25, 'HTM'),
('HTMaC3F5045Xys7o8RhO', '2020-10-22 14:56:39', 1, 1, 28, 'HTM'),
('HTManrEu2LRFe6QYUTdA', '2020-10-20 12:11:28', 1, 1, 27, 'HTM'),
('HTMLvdQkMMrslrC86Gjf', '2020-10-20 12:17:40', 1, 1, 27, 'HTM'),
('HTMpIWPjJ9AT84zSCSjK', NULL, 0, 0, 28, 'HTM'),
('JAV0pW0csESBuzaCneCN', NULL, 0, 0, 35, 'JAV'),
('JAV1Hc2Q6hSsYsvxzXpy', '2020-11-01 11:21:15', 1, 1, 39, 'JAV'),
('JAV1hf7M4FCaDOtkWF7a', '2020-11-23 14:44:53', 1, 1, 41, 'JAV'),
('JAV6KhsSjJIYrEu9BQM4', '2020-11-01 16:29:32', 1, 1, 39, 'JAV'),
('JAV9oOSZxVnydqKOr4kj', '2020-10-21 07:12:59', 1, 1, 28, 'JAV'),
('JAVAG7RiHdEd90kkfu97', '2020-10-21 07:01:54', 1, 1, 28, 'JAV'),
('JAVhOUlE2kurMFXP8ids', NULL, 0, 0, 27, 'JAV'),
('JAVjjqfy9tholJH6mnCE', '2020-11-23 13:55:33', 1, 1, 41, 'JAV'),
('JAVOon68pzsNohxZxzxp', '2020-10-21 09:17:57', 1, 1, 28, 'JAV'),
('JAVoyS9WYH30diQWxq5C', NULL, 1, 0, 28, 'JAV'),
('JAVUDt8OR6ED8tuiPqCC', '2020-10-20 20:44:48', 1, 1, 28, 'JAV'),
('JAVW2OqJ5sbnHre3uXYQ', '2020-11-16 18:46:29', 1, 1, 40, 'JAV'),
('JAVX8e8oQMKCTRoJeODv', '2020-10-27 17:32:48', 1, 1, 28, 'JAV'),
('JAVY3d9ddZPzMKz7g7qs', '2020-10-20 12:30:29', 1, 1, 27, 'JAV'),
('JAVybe27dmzBEOUQnpxm', '2020-10-21 07:50:54', 1, 1, 28, 'JAV'),
('REAdrr2nZqMlAfsflO4j', NULL, 0, 0, 28, 'REA'),
('REAe5QeflhY6qPYBWWiN', '2020-10-23 16:53:33', 1, 1, 28, 'REA');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(10) NOT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `score` float DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `has_passed` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `code` varchar(20) DEFAULT NULL,
  `user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `start`, `end`, `score`, `grade`, `has_passed`, `date`, `code`, `user`) VALUES
(22, '2020-10-22 16:15:24', '2020-10-21 08:03:02', 90, 'A', 1, '2020-10-18 14:15:09', 'JAVoyS9WYH30diQWxq5C', 28),
(23, '2020-10-21 08:34:43', '2020-10-21 08:34:59', 90, 'A', 1, '2020-10-18 14:15:22', 'CPPcX1pgETeeCFVeFVMf', 25),
(24, NULL, NULL, NULL, NULL, 0, '2020-10-18 14:15:32', 'HTM4va5YKqzE3hKQ1ieO', 25),
(25, '2020-10-26 16:21:13', '2020-10-26 16:22:15', 10, 'F', 0, '2020-10-18 14:24:31', 'CPPfUfJ0kSM8ZXOXIbQU', 28),
(26, NULL, NULL, NULL, NULL, 0, '2020-10-18 14:24:40', 'DOTOiNR8ZrROs0uQq5oY', 28),
(27, '2020-10-23 06:21:43', '2020-10-21 08:31:35', 90, 'A', 1, '2020-10-19 12:10:34', 'HTManrEu2LRFe6QYUTdA', 27),
(28, '2020-10-19 12:20:32', NULL, NULL, NULL, 0, '2020-10-19 12:17:10', 'HTMLvdQkMMrslrC86Gjf', 27),
(29, '2020-10-19 12:23:31', NULL, NULL, NULL, 0, '2020-10-19 12:22:08', 'CPPlvkh9Jg32eIeVQW6z', 27),
(30, '2020-10-22 19:21:32', '2020-10-22 19:21:38', 40, 'F', 0, '2020-10-19 12:30:13', 'JAVY3d9ddZPzMKz7g7qs', 27),
(31, NULL, NULL, NULL, NULL, 0, '2020-10-19 17:31:20', 'JAVhOUlE2kurMFXP8ids', 27),
(32, '2020-10-19 20:45:35', NULL, NULL, NULL, 0, '2020-10-19 20:44:10', 'JAVUDt8OR6ED8tuiPqCC', 28),
(33, NULL, NULL, NULL, NULL, 0, '2020-10-20 04:31:20', 'HTMpIWPjJ9AT84zSCSjK', 28),
(34, '2020-10-23 06:20:47', '2020-10-23 06:21:00', 0, 'F', 0, '2020-10-20 04:37:07', 'CPPKRrui5RXLlRvaqYqd', 28),
(35, NULL, NULL, NULL, NULL, 0, '2020-10-20 07:00:35', 'JAVAG7RiHdEd90kkfu97', 28),
(36, NULL, NULL, NULL, NULL, 0, '2020-10-20 07:09:24', 'HTM2Dg85n5MJFkQXpRkH', 28),
(37, '2020-10-21 15:11:38', '2020-10-21 15:11:45', 90, 'A', 1, '2020-10-20 07:12:40', 'JAV9oOSZxVnydqKOr4kj', 28),
(38, '2020-10-20 07:52:43', NULL, NULL, NULL, 0, '2020-10-20 07:49:59', 'JAVybe27dmzBEOUQnpxm', 28),
(39, NULL, NULL, NULL, NULL, 0, '2020-10-20 08:00:26', 'CPPWMA9zgUjfrioplZqO', 35),
(40, NULL, NULL, NULL, NULL, 0, '2020-10-20 08:00:34', 'JAV0pW0csESBuzaCneCN', 35),
(41, '2020-10-20 09:19:18', NULL, NULL, NULL, 0, '2020-10-20 09:16:41', 'JAVOon68pzsNohxZxzxp', 28),
(42, '2020-10-20 12:43:23', NULL, NULL, NULL, 0, '2020-10-20 12:36:24', 'CPP53dtj3JOn37LlHCgX', 28),
(43, '2020-10-21 14:48:29', '2020-10-21 14:51:55', 90, 'A', 1, '2020-10-21 14:47:08', 'CPPod2knIX7120ZMpV9I', 28),
(44, '2020-10-21 14:57:23', '2020-10-21 15:01:12', 90, 'A', 1, '2020-10-21 14:56:11', 'HTMaC3F5045Xys7o8RhO', 28),
(45, '2020-10-22 16:54:08', '2020-10-23 16:54:15', 90, 'A', 1, '2020-10-22 16:53:10', 'REAe5QeflhY6qPYBWWiN', 28),
(46, '2020-10-22 18:59:24', '2020-10-22 19:05:22', 5, 'F', 0, '2020-10-22 18:34:29', 'CPPTvfiAaz024TWle4Ml', 28),
(47, NULL, NULL, NULL, NULL, 0, '2020-10-23 07:00:44', 'REAdrr2nZqMlAfsflO4j', 28),
(48, '2020-10-26 01:29:06', '2020-10-26 06:24:10', 5, 'F', 0, '2020-10-25 23:15:44', 'CPPgz8hdHs4zMuAffoiD', 28),
(49, '2020-10-26 16:17:24', '2020-10-26 16:18:28', 10, 'F', 0, '2020-10-26 16:15:50', 'CPP5fy5NnPY5BrKNJgHb', 4),
(50, NULL, NULL, NULL, NULL, 0, '2020-10-26 16:19:19', 'CPPujIzQHLGY36MVloln', 28),
(51, '2020-10-26 17:33:24', '2020-10-26 17:40:03', 70, 'B', 1, '2020-10-26 17:30:50', 'JAVX8e8oQMKCTRoJeODv', 28),
(52, '2020-10-31 11:21:35', '2020-10-31 11:23:14', 30, 'F', 0, '2020-10-31 11:19:05', 'JAV1Hc2Q6hSsYsvxzXpy', 39),
(53, '2020-10-31 16:30:03', '2020-10-31 16:31:32', 15, 'F', 0, '2020-10-31 16:29:08', 'JAV6KhsSjJIYrEu9BQM4', 39),
(54, '2020-11-15 19:15:50', '2020-11-15 19:16:37', 30, 'F', 0, '2020-11-15 18:43:03', 'JAVW2OqJ5sbnHre3uXYQ', 40),
(55, '2020-11-22 13:55:59', '2020-11-22 13:58:50', 25, 'F', 0, '2020-11-22 13:55:11', 'JAVjjqfy9tholJH6mnCE', 41),
(56, '2020-11-22 14:45:35', '2020-11-22 14:45:50', 0, 'F', 0, '2020-11-22 14:44:16', 'JAV1hf7M4FCaDOtkWF7a', 41),
(57, '2020-11-22 16:45:52', '2020-11-22 16:47:11', 45, 'F', 0, '2020-11-22 16:45:06', 'CPPVcEREBrcMBSy82bF0', 41);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` varchar(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `passing_score` int(3) NOT NULL,
  `number_of_question` int(3) NOT NULL,
  `duration` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `passing_score`, `number_of_question`, `duration`) VALUES
('CPP', 'C++', 70, 20, 40),
('DOT', '.NET', 70, 20, 40),
('HTM', 'HTML', 70, 20, 40),
('JAV', 'Java', 70, 20, 40),
('REA', 'REACT', 70, 20, 40);

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE `parameter` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `subtext` varchar(550) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `title`, `subtext`) VALUES
(1, 'jumbotron', '<h1><strong>EASY START YOUR EXAM</strong></h1>\n'),
(2, 'jumbotron-sub', '<h2>best exam online service in the world</h2>\n'),
(3, 'about-title', '<h1><strong><span style="color:#2980b9">ONLINE EXAM</span></strong></h1>\n'),
(4, 'about-sub', '<h3>Prepare candidates to perform extraordinarily with an easy to use highly interactive platform and simplify the assessment cycle.</h3>\n'),
(5, 'about-right-sub', 'One-stop-destination for examination, preparation, recruitment, and more. Specially designed online examination system to solve all your preparation worries. The platform is smooth to use with a translational flow of information.'),
(6, 'about-right-point', '<ol>\n	<li>\n	<p><span style="color:#2980b9">Highly Interactive Interface</span></p>\n	</li>\n	<li>\n	<p><span style="color:#2980b9">Advanced Reporting System</span></p>\n	</li>\n	<li>\n	<p><span style="color:#2980b9">Easy to Learn and Use</span></p>\n	</li>\n</ol>\n'),
(7, 'about-right-italic', '<p>Go wherever you want to and practice whenever you want, using the next level online exam platform. Create &amp; assign tests and quiz from anywhere at any time. Experience a lag-free synchronized performance of think exam on your mobile devices</p>\n'),
(8, 'category-sub', 'information about the categories in the exam'),
(9, 'java', 'Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.'),
(10, 'html', 'Hypertext Markup Language (HTML) is the standard markup language for documents designed to be displayed in a web browser.'),
(11, 'c++', 'C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or "C with Classes".'),
(12, 'react', 'React is a declarative, efficient, and flexible JavaScript library for building user interfaces.'),
(13, '.net', 'NET is a free, cross-platform, open-source developer platform. .NET has languages, editors, and libraries to build for web, mobile, desktop, games, and IoT.'),
(14, 'phyton', 'Python is an interpreted, object-oriented, high-level programming language with dynamic semantics.'),
(15, 'team-sub', 'information about team'),
(16, 'contact-sub', 'For more information please contact us'),
(17, 'link-map', 'https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d3960.2299352009004!2d110.40659041431783!3d-6.982170670312785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x2e708b4f19af0393%3A0x11304de4230ded0d!2sLawang%20Sewu%2C%20Jl.%20Pemuda%2C%20Sekayu%2C%20Kec.%20Semarang%20Tengah%2C%20Kota%20Semarang%2C%20Jawa%20Tengah%2050132!3m2!1d-6.9839658!2d110.4107483!5e0!3m2!1sid!2sid!4v1603727183065!5m2!1sid!2sid'),
(18, 'location', '<p>PT. Mitra Integrasi Informatika<br />\nKota Jakarta Barat 11470</p>\n'),
(19, 'email', '<p>info@metrodata.com<br />\nmii@metrodata.com</p>\n'),
(20, 'call', '<p>+622129345777<br />\n+6287880783139</p>\n'),
(21, 'footer-title', '<h2>PT. Mitra Integrasi Informatika</h2>\n'),
(22, 'footer-sub', '<p>If you believe you can do anything, we&#39;re here to help you do it</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `d` varchar(50) NOT NULL,
  `answer` enum('a','b','c','d') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `module` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `a`, `b`, `c`, `d`, `answer`, `is_active`, `module`) VALUES
(1, 'Sintaks java untuk melakukan kompilasi terhadap berkas program adalah ...', 'java', 'javac', 'javaclass', 'javax', 'b', 1, 'JAV'),
(2, 'Diantara perintah untuk mencetak berikut, yang benar adalah...', 'System.out.println(“Hello world”);', 'System.Out.println(“Hello world ”);', 'System.out.Println(“Hello world ”);', 'System.Out.Println(Hello world ”);', 'a', 1, 'JAV'),
(3, 'System yang berguna untuk mengirim keluaran ke layar adalah...', 'System.in.', 'System.out.', 'System.err', 'System.exit', 'b', 1, 'JAV'),
(4, 'Hasil kompilasi dari berkas java adalah...', 'File BAK', 'File Bytecode', 'File executable', 'File class', 'b', 1, 'JAV'),
(5, 'Fungsi method System.in dalam java adalah…', 'Mengirimkan keluaran ke layar', 'Menangani suatu objek', 'Menampilkan pesan kesalahan', 'Menangani pembacaan dari keyboard', 'd', 1, 'JAV'),
(6, 'Diantara pernyataan berikut, konsep yang tidak ada di dalam pemrograman Java adalah…', 'Polymorphisme', 'Encapsulation', 'Multiple inheritance', 'Single Inheritance', 'c', 1, 'JAV'),
(7, 'Arsitektur java yang dipakai untuk wireless device / mobile device, disebut dengan…', 'J2SE', 'J2ME', 'J2EE', 'J2EM', 'b', 1, 'JAV'),
(8, 'Berikut adalah penamaan class pada java yang diperbolehkan, kecuali…', '3_One', 'O_3ne', 'S13h', 'B3_Ta', 'a', 1, 'JAV'),
(9, 'Method yang digunakan untuk mengkonversi nilai string ke integer dalam Java adalah :', 'praseInt()', 'converseInt()', 'Cint()', 'ChangeInt()', 'a', 1, 'JAV'),
(10, 'Diantara pernyataan berikut, penulisan sintaks BbufferredReader yang benar adalah', 'int data =BufferedReader = new BufferedReader(new ', 'int data =BufferedReader = new BufferedReader(new ', 'int data=(new Integer((new BufferedReader = new Bu', 'int data = (new Integer( (new BufferedReader (new ', 'd', 1, 'JAV'),
(11, 'Berikut ini yang termasuk tipe data primitive adalah…', 'Boolean', 'Character', 'Byte', 'Double', 'c', 1, 'JAV'),
(12, 'Berikut ini yang termasuk tipe data reference adalah...', 'Float', 'Character', 'Short', 'Int', 'b', 1, 'JAV'),
(13, 'Keyword yang digunakan untuk membuat nilai tetap dan tidak dapat berubah adalah…', 'protected', 'private', 'public', 'final', 'd', 1, 'JAV'),
(14, 'Berikut adalah cara inisialisasi variabel bertipe class string, kecuali:', 'String me = new String(“Inisialisasi 1”);', 'String me; me = new string "inisialisasi 1";', 'String me; me = new string("inisialisasi 1");', 'String me; me = "inisialisasi 1";', 'b', 1, 'JAV'),
(15, 'Method yang digunakan untuk membandingkan dua buah data string adalah …', 'equal()', 'concat()', 'length()', 'equals()', 'd', 1, 'JAV'),
(16, 'Keyword yang digunakan dalam deklarasi metode, kelas atau bidang, kelas umum metode, dan bidang dapat diakses oleh anggota dari setiap kelas adalah...', 'public', 'private', 'protected', 'static', 'a', 1, 'JAV'),
(17, 'Symbol untuk menuliskan komentar pada java adalah sebagai berikut, kecuali:', '//komentar', '/*komentar*/', 'Jawaban a dan b benar', 'Jawaban a dan b salah', 'd', 1, 'JAV'),
(18, 'Beberapa ekspresi untuk menguji hasil suatu perbandingan pada JAVA adalah sebagai berikut, kecuali:', '==', '=', '!=', '<=', 'b', 1, 'JAV'),
(19, 'Keyword yang ditambahkan dalam J2SE 1,4, digunakan untuk membuat pernyataan yang programmer percyaa selalu benar di titik dalam program adalah...', 'Assert', 'Abstract', 'Catch', 'Extends', 'a', 1, 'JAV'),
(20, 'Keutamaan Java dibanding bahasa pemrograman lain adalah:', 'Cross platform, dengan adanya Java Virtual Machine', 'Pengembangannya didukung oleh programmer secara lu', 'Autimatic Garbage Collection, membebaskan programm', 'Benar semua', 'd', 1, 'JAV'),
(21, 'HTML Merupakan singkatan dari...', 'Hyper Link Markup Leaguage', 'Hyper Text Markup Laguage', 'Hyper Tool Markup Laguage', 'Hyper Test Markup Laguage', 'b', 1, 'HTM'),
(22, 'Berikut ini yang menjadi standarisasi Web adalah:', 'ECMAN (uropean Computer Manufacturers Association)', 'W3C (World Wide Web Consortium)', 'Google', 'PSR (PHP Standars Recommendation)', 'b', 1, 'HTM'),
(23, 'Berikut ini tag untuk membuat heading, kecuali', '<h4>', '<h5>', '<h6>', '<h7>', 'd', 1, 'HTM'),
(24, 'Untuk membuat baris baru menggunakan tag...', '<br>', '<newline>', '<break>', '<hr>', 'a', 1, 'HTM'),
(25, 'Tag untuk membuat garis datar (horizontal) adalah...', '<br>', '<newline>', '<break>', '<hr>', 'd', 1, 'HTM'),
(26, 'Sintak yang benar untuk menambah warna latar belakang adalah...', '<body =’background:green’>', '<body style=’background-color:green’>', '<body color=’green’>', '<background>green</background>', 'b', 1, 'HTM'),
(27, 'Tag untuk membuat huruf tebal adalah...', '<bold>', '<b>', '<i>', '<important>', 'b', 1, 'HTM'),
(28, 'Karakter yang digunakan untuk tag akhir?', '<>', '/', '*', '\\', 'b', 1, 'HTM'),
(29, 'Untuk membuat tabel menggunakan tag?', '<table>', '<tables>', '<tb>', '<tab>', 'a', 1, 'HTM'),
(30, 'Saat membuat tabel tag <tr> berfungsi untuk?', 'Membuat baris', 'Membuat kolom', 'Membuat header tabel', 'membuat body tabel', 'a', 1, 'HTM'),
(31, 'Tag <ol> digunakan untuk membuat list...', 'List terurut', 'List Tidak terurut', 'List Tunggal', 'List Jamak', 'a', 1, 'HTM'),
(32, 'Terdapat 2 jenis list di HTML yaitu order list dan unordered list!', 'Benar', 'Salah', 'Jawaban a dan b benar', 'Semua jawaban salah', 'a', 1, 'HTM'),
(33, 'Untuk membuat checkbox menggunakan sintak?', '<checkbox>', '<input type=’checkbox’>', '<input type=’check’>', '<input type=’check_box’>', 'b', 1, 'HTM'),
(34, 'Untuk membuat radio button mengunakan sintak?', '<radio>', '<input type=’radio_button’>', '<input type=radio’>', '<radio_button>', 'c', 1, 'HTM'),
(35, 'Untuk membuat drop-down list menggunakan tag?', '<input type=’drop-down’>', '<drop-down>', '<select>', '<list>', 'c', 1, 'HTM'),
(36, 'Text area dapat dibuat menggunakan tag?', '<textarea>', '<input type=’textarea’>', '<text>', 'Semua jawaban salah', 'a', 1, 'HTM'),
(37, 'Sintak yang benar untuk memasukan gambar adalah...', '<img href=’https://kelasprogrammer.com’ alt=’Kelas', '<img src=’kelasprogrammer.png’ alt=’Kelas Programm', '<image src=’kelasprogrammer.jpg’ alt=’Kelas Progra', '<img type=’kelasprogrammer.gif’>', 'b', 1, 'HTM'),
(38, 'Atribut alt pada tag <img> berfungsi untuk?', 'Menampilkan alternatif teks ketika gambar tidak bi', 'Membuat gambar dengan animasi', 'Mengatur ukuran gambar', 'Mengatur jarak gambar dengan elemen lain', 'a', 1, 'HTM'),
(39, 'Untuk membuat komentar di HTML adalah', 'dimulai dengan <!– diakhiri dengan –>', 'dimulai dengan <? diakhiri dengan ?>', 'dimulai dengan // diakhiri dengan *//', 'dimulai dengan # diakhiri dengan #', 'a', 1, 'HTM'),
(40, 'Untuk mendefinisikan judul menggunakan tag?', '<head>', '<body>', '<footer>', '<title>', 'd', 1, 'HTM'),
(41, 'Keuntungan memakai fungsi pada C++ adalah...', 'Menguraikan tugas pemrograman rumit menjadi langka', 'Mengurangi duplikasi kode (kode yang sama ditulis ', 'Dapat menggunakan kode yang ditulis dalam berbagai', 'Tipe data nama fungsi(daftar parameter)', 'd', 1, 'CPP'),
(42, 'Pernyataan a = 7 % 4 akan menghasilkan a = ...', '3', '4', '5', '6', 'a', 1, 'CPP'),
(43, 'Fungsi dari operator % sebagai...', 'Mencari sisa pembagian 2 bilangan', 'Prosentase bilangan', 'Pembagian 2 bilangan', 'Membagi perseratus persen', 'a', 1, 'CPP'),
(44, 'Perintah yang menggunakan untuk menampilkan suatu informasi ke piranti output (layar) adalah...', 'cin', 'cout', 'getch()', 'stdio.h', 'b', 1, 'CPP'),
(45, 'Operator logika yang menyatakan “atau” dalam lambang berikut ini adalah...', '&&', '!', '||', '=', 'c', 1, 'CPP'),
(46, 'Operator yang digunakan dalam operasi yang melibatkan tiga buah operand adalah...', 'Operator Unary', 'Operator Bitwise', 'Operator Logika', 'Operator Ternary', 'd', 1, 'CPP'),
(47, 'Operator logika && adalah...', 'And', 'Nand', 'Or', 'Not And', 'a', 1, 'CPP'),
(48, '"++" dan "--" merupakan operator...', 'Operator aritmetika', 'Operator Increment dan Decrement', 'Operator Majemuk', 'Operator Relasional', 'b', 1, 'CPP'),
(49, 'Perintah menginput suatu nilai dari suatu piranti masukan (keyboard) untuk diproses oleh program adalah...', 'cin', 'getch()', 'getche()', 'cout', 'a', 1, 'CPP'),
(50, 'Compiler C++ yang telah beredar di pasaran antara lain, kecuali...', 'Microsoft C / C++', 'Visual C++', 'Turbo C++', 'Pascal C++', 'd', 1, 'CPP'),
(51, 'Pernyataan yang sesuai untuk mendefinisikan tipe data bilangan bulat adalah...', 'Tipe data yang berfungsi menampung data yang memil', 'Tipe data yang digunakan untuk angka yang tidak me', 'Tipe data yang yang menyimpan lebih dari satu vari', 'Tipe data yang mempresentasikan data yang hanya me', 'c', 1, 'CPP'),
(52, 'Perintah Cin pada Program C++ digunakan untuk...', 'Menampilkan data pada layar', 'Menginput suatu nilai dari suatu piranti masukan (', 'Pendeklarasian variabel', 'Mengulang proses looping pada program', 'b', 1, 'CPP'),
(53, 'Misalkan suatu variabel string katakanlah kalimat [30] akan diberi nilai "SAYA BELAJAR C++", maka perintah yang benar adalah...', 'char kalimat [30] = "SAYA BELAJAR C++"', 'char kalimat [30] = "SAYA BELAJAR C++";', 'charter kalimat[30] = "SAYA BELAJAR C++"', 'charter kalimat [30] = "SAYA BELAJAR C++";', 'b', 1, 'CPP'),
(54, 'Pengertian dari konstanta adalah...', 'Suatu nilai yang dapat diubah selama program berla', 'Suatu nilai yang berubah-ubah selama program berla', 'Suatu nilai yang tidak dapat diubah selama program', 'Suatu nilai yang tidak pernah berubah meskipun pro', 'c', 1, 'CPP'),
(55, 'Penggunaan operator aritmatika yang benar dalam C++ yaitu...', 'While(i<=30);', 'T = x + angka;', 'I++;', 'T = x + angka', 'b', 1, 'CPP'),
(56, 'Bilangan yang mengandung pecahan, paling sedikit harus ada satu digit angka sebelum dan sesudah titik desimal termasuk dalam tipe data...', 'Riil', 'Boolean', 'Integer', 'Longint', 'a', 1, 'CPP'),
(57, 'Yang termasuk operator logika lingkaran adalah...', '&&', '<>', '!', '||', 'c', 1, 'CPP'),
(58, 'double angka; . kode program disamping merupakan tipe data...', 'Bilangan Bulat', 'Logika', 'Bilangan Riil', 'Struktur', 'c', 1, 'CPP'),
(59, 'Penulisan variabel dalam C++ bersifat Case Sensitive artinya...', 'Tanda spasi diperhitungkan', 'Huruf besar dan kecil diperhitungkan', 'Tanda spasi diubah dengan underscore', 'Tanda spasi diubah dengan tanda titik', 'b', 1, 'CPP'),
(60, 'Berikut ini adalah syarat pembuatan identifier yang harus kita perhatikan, kecuali...', 'C++ bersifat case sensitive', 'Tidak boleh diawali dengan angka', 'Harus menggunakan spasi', 'Tidak boleh menggunakan symbol (!@#$%^&*, dll', 'c', 1, 'CPP'),
(61, 'Sintaks java untuk melakukan kompilasi terhadap berkas program adalah :', 'java', 'javac', 'javaclass', 'javax', 'b', 1, 'JAV'),
(62, 'Diantara perintah untuk mencetak berikut, yang benar adalah...', 'System.out.println(“Hello world”);', 'System.Out.println(“Hello world ”);', 'System.out.Println(“Hello world ”);', 'System.Out.Println(Hello world ”);', 'a', 1, 'JAV'),
(63, 'System yang berguna untuk mengirim keluaran ke layar adalah...', 'System.in.', 'System.out.', 'System.err', 'System.exit', 'b', 1, 'JAV'),
(64, 'Hasil kompilasi dari berkas java adalah...', 'File BAK', 'File Bytecode', 'File executable', 'File class', 'b', 1, 'JAV'),
(65, 'Fungsi method System.in dalam java adalah…', 'Mengirimkan keluaran ke layar', 'Menangani suatu objek', 'Menampilkan pesan kesalahan', 'Menangani pembacaan dari keyboard', 'd', 1, 'JAV'),
(66, 'Diantara pernyataan berikut, konsep yang tidak ada di dalam pemrograman Java adalah…', 'Polymorphisme', 'Encapsulation', 'Multiple inheritance', 'Single Inheritance', 'c', 1, 'JAV'),
(67, 'Arsitektur java yang dipakai untuk wireless device / mobile device, disebut dengan…', 'J2SE', 'J2ME', 'J2EE', 'J2EM', 'b', 1, 'JAV'),
(68, 'Berikut adalah penamaan class pada java yang diperbolehkan, kecuali…', '3_One', 'O_3ne', 'S13h', 'B3_Ta', 'a', 1, 'JAV'),
(69, 'Method yang digunakan untuk mengkonversi nilai string ke integer dalam Java adalah :', 'praseInt()', 'converseInt()', 'Cint()', 'ChangeInt()', 'a', 1, 'JAV'),
(70, 'Diantara pernyataan berikut, penulisan sintaks BbufferredReader yang benar adalah', 'int data =BufferedReader = new BufferedReader(new ', 'int data =BufferedReader = new BufferedReader(new ', 'int data=(new Integer((new BufferedReader = new Bu', 'int data = (new Integer( (new BufferedReader (new ', 'd', 1, 'JAV'),
(71, 'Berikut ini yang termasuk tipe data primitive adalah…', 'Boolean', 'Character', 'Byte', 'Double', 'c', 1, 'JAV'),
(72, 'Berikut ini yang termasuk tipe data reference adalah...', 'Float', 'Character', 'Short', 'Int', 'b', 1, 'JAV'),
(73, 'Keyword yang digunakan untuk membuat nilai tetap dan tidak dapat berubah adalah…', 'protected', 'private', 'public', 'final', 'd', 1, 'JAV'),
(74, 'Berikut adalah cara inisialisasi variabel bertipe class string, kecuali:', 'String me = new String(“Inisialisasi 1”);', 'String me; me = new string "inisialisasi 1";', 'String me; me = new string("inisialisasi 1");', 'String me; me = "inisialisasi 1";', 'b', 1, 'JAV'),
(75, 'Method yang digunakan untuk membandingkan dua buah data string adalah …', 'equal()', 'concat()', 'length()', 'equals()', 'd', 1, 'JAV'),
(76, 'Keyword yang digunakan dalam deklarasi metode, kelas atau bidang, kelas umum metode, dan bidang dapat diakses oleh anggota dari setiap kelas adalah...', 'public', 'private', 'protected', 'static', 'a', 1, 'JAV'),
(77, 'Symbol untuk menuliskan komentar pada java adalah sebagai berikut, kecuali:', '//komentar', '/*komentar*/', 'Jawaban a dan b benar', 'Jawaban a dan b salah', 'd', 1, 'JAV'),
(78, 'Beberapa ekspresi untuk menguji hasil suatu perbandingan pada JAVA adalah sebagai berikut, kecuali:', '==', '=', '!=', '<=', 'b', 1, 'JAV'),
(79, 'Keyword yang ditambahkan dalam J2SE 1,4, digunakan untuk membuat pernyataan yang programmer percyaa selalu benar di titik dalam program adalah...', 'Assert', 'Abstract', 'Catch', 'Extends', 'a', 1, 'JAV'),
(80, 'Keutamaan Java dibanding bahasa pemrograman lain adalah:', 'Cross platform, dengan adanya Java Virtual Machine', 'Pengembangannya didukung oleh programmer secara lu', 'Autimatic Garbage Collection, membebaskan programm', 'Benar semua', 'd', 1, 'JAV'),
(81, 'HTML Merupakan singkatan dari...', 'Hyper Link Markup Leaguage', 'Hyper Text Markup Laguage', 'Hyper Tool Markup Laguage', 'Hyper Test Markup Laguage', 'b', 1, 'HTM'),
(82, 'Berikut ini yang menjadi standarisasi Web adalah:', 'ECMAN (uropean Computer Manufacturers Association)', 'W3C (World Wide Web Consortium)', 'Google', 'PSR (PHP Standars Recommendation)', 'b', 1, 'HTM'),
(83, 'Berikut ini tag untuk membuat heading, kecuali', '<h4>', '<h5>', '<h6>', '<h7>', 'd', 1, 'HTM'),
(84, 'Untuk membuat baris baru menggunakan tag...', '<br>', '<newline>', '<break>', '<hr>', 'a', 1, 'HTM'),
(85, 'Tag untuk membuat garis datar (horizontal) adalah...', '<br>', '<newline>', '<break>', '<hr>', 'd', 1, 'HTM'),
(86, 'Sintak yang benar untuk menambah warna latar belakang adalah...', '<body =’background:green’>', '<body style=’background-color:green’>', '<body color=’green’>', '<background>green</background>', 'b', 1, 'HTM'),
(87, 'Tag untuk membuat huruf tebal adalah...', '<bold>', '<b>', '<i>', '<important>', 'b', 1, 'HTM'),
(88, 'Karakter yang digunakan untuk tag akhir?', '<>', '/', '*', '\\', 'b', 1, 'HTM'),
(89, 'Untuk membuat tabel menggunakan tag?', '<table>', '<tables>', '<tb>', '<tab>', 'a', 1, 'HTM'),
(90, 'Saat membuat tabel tag <tr> berfungsi untuk?', 'Membuat baris', 'Membuat kolom', 'Membuat header tabel', 'membuat body tabel', 'a', 1, 'HTM'),
(91, 'Tag <ol> digunakan untuk membuat list...', 'List terurut', 'List Tidak terurut', 'List Tunggal', 'List Jamak', 'a', 1, 'HTM'),
(92, 'Terdapat 2 jenis list di HTML yaitu order list dan unordered list!', 'Benar', 'Salah', 'Jawaban a dan b benar', 'Semua jawaban salah', 'a', 1, 'HTM'),
(93, 'Untuk membuat checkbox menggunakan sintak?', '<checkbox>', '<input type=’checkbox’>', '<input type=’check’>', '<input type=’check_box’>', 'b', 1, 'HTM'),
(94, 'Untuk membuat radio button mengunakan sintak?', '<radio>', '<input type=’radio_button’>', '<input type=radio’>', '<radio_button>', 'c', 1, 'HTM'),
(95, 'Untuk membuat drop-down list menggunakan tag?', '<input type=’drop-down’>', '<drop-down>', '<select>', '<list>', 'c', 1, 'HTM'),
(96, 'Text area dapat dibuat menggunakan tag?', '<textarea>', '<input type=’textarea’>', '<text>', 'Semua jawaban salah', 'a', 1, 'HTM'),
(97, 'Sintak yang benar untuk memasukan gambar adalah...', '<img href=’https://kelasprogrammer.com’ alt=’Kelas', '<img src=’kelasprogrammer.png’ alt=’Kelas Programm', '<image src=’kelasprogrammer.jpg’ alt=’Kelas Progra', '<img type=’kelasprogrammer.gif’>', 'b', 1, 'HTM'),
(98, 'Atribut alt pada tag <img> berfungsi untuk?', 'Menampilkan alternatif teks ketika gambar tidak bi', 'Membuat gambar dengan animasi', 'Mengatur ukuran gambar', 'Mengatur jarak gambar dengan elemen lain', 'a', 1, 'HTM'),
(99, 'Untuk membuat komentar di HTML adalah', 'dimulai dengan <!– diakhiri dengan –>', 'dimulai dengan <? diakhiri dengan ?>', 'dimulai dengan // diakhiri dengan *//', 'dimulai dengan # diakhiri dengan #', 'a', 1, 'HTM'),
(100, 'Untuk mendefinisikan judul menggunakan tag?', '<head>', '<body>', '<footer>', '<title>', 'd', 1, 'HTM'),
(101, 'Keuntungan memakai fungsi pada C++ adalah...', 'Menguraikan tugas pemrograman rumit menjadi langka', 'Mengurangi duplikasi kode (kode yang sama ditulis ', 'Dapat menggunakan kode yang ditulis dalam berbagai', 'Tipe data nama fungsi(daftar parameter)', 'd', 1, 'CPP'),
(102, 'Pernyataan a = 7 % 4 akan menghasilkan a = ...', '3', '4', '5', '6', 'a', 1, 'CPP'),
(103, 'Fungsi dari operator % sebagai...', 'Mencari sisa pembagian 2 bilangan', 'Prosentase bilangan', 'Pembagian 2 bilangan', 'Membagi perseratus persen', 'a', 1, 'CPP'),
(104, 'Perintah yang menggunakan untuk menampilkan suatu informasi ke piranti output (layar) adalah...', 'cin', 'cout', 'getch()', 'stdio.h', 'b', 1, 'CPP'),
(105, 'Operator logika yang menyatakan “atau” dalam lambang berikut ini adalah...', '&&', '!', '||', '=', 'c', 1, 'CPP'),
(106, 'Operator yang digunakan dalam operasi yang melibatkan tiga buah operand adalah...', 'Operator Unary', 'Operator Bitwise', 'Operator Logika', 'Operator Ternary', 'd', 1, 'CPP'),
(107, 'Operator logika && adalah...', 'And', 'Nand', 'Or', 'Not And', 'a', 1, 'CPP'),
(108, '"++" dan "--" merupakan operator...', 'Operator aritmetika', 'Operator Increment dan Decrement', 'Operator Majemuk', 'Operator Relasional', 'b', 1, 'CPP'),
(109, 'Perintah menginput suatu nilai dari suatu piranti masukan (keyboard) untuk diproses oleh program adalah...', 'cin', 'getch()', 'getche()', 'cout', 'a', 1, 'CPP'),
(110, 'Compiler C++ yang telah beredar di pasaran antara lain, kecuali...', 'Microsoft C / C++', 'Visual C++', 'Turbo C++', 'Pascal C++', 'd', 1, 'CPP'),
(111, 'Pernyataan yang sesuai untuk mendefinisikan tipe data bilangan bulat adalah...', 'Tipe data yang berfungsi menampung data yang memil', 'Tipe data yang digunakan untuk angka yang tidak me', 'Tipe data yang yang menyimpan lebih dari satu vari', 'Tipe data yang mempresentasikan data yang hanya me', 'c', 1, 'CPP'),
(112, 'Perintah Cin pada Program C++ digunakan untuk...', 'Menampilkan data pada layar', 'Menginput suatu nilai dari suatu piranti masukan (', 'Pendeklarasian variabel', 'Mengulang proses looping pada program', 'b', 1, 'CPP'),
(113, 'Misalkan suatu variabel string katakanlah kalimat [30] akan diberi nilai "SAYA BELAJAR C++", maka perintah yang benar adalah...', 'char kalimat [30] = "SAYA BELAJAR C++"', 'char kalimat [30] = "SAYA BELAJAR C++";', 'charter kalimat[30] = "SAYA BELAJAR C++"', 'charter kalimat [30] = "SAYA BELAJAR C++";', 'b', 1, 'CPP'),
(114, 'Pengertian dari konstanta adalah...', 'Suatu nilai yang dapat diubah selama program berla', 'Suatu nilai yang berubah-ubah selama program berla', 'Suatu nilai yang tidak dapat diubah selama program', 'Suatu nilai yang tidak pernah berubah meskipun pro', 'c', 1, 'CPP'),
(115, 'Penggunaan operator aritmatika yang benar dalam C++ yaitu...', 'While(i<=30);', 'T = x + angka;', 'I++;', 'T = x + angka', 'b', 1, 'CPP'),
(116, 'Bilangan yang mengandung pecahan, paling sedikit harus ada satu digit angka sebelum dan sesudah titik desimal termasuk dalam tipe data...', 'Riil', 'Boolean', 'Integer', 'Longint', 'a', 1, 'CPP'),
(117, 'Yang termasuk operator logika lingkaran adalah...', '&&', '<>', '!', '||', 'c', 1, 'CPP'),
(118, 'double angka; . kode program disamping merupakan tipe data...', 'Bilangan Bulat', 'Logika', 'Bilangan Riil', 'Struktur', 'c', 1, 'CPP'),
(119, 'Penulisan variabel dalam C++ bersifat Case Sensitive artinya...', 'Tanda spasi diperhitungkan', 'Huruf besar dan kecil diperhitungkan', 'Tanda spasi diubah dengan underscore', 'Tanda spasi diubah dengan tanda titik', 'b', 1, 'CPP'),
(120, 'Berikut ini adalah syarat pembuatan identifier yang harus kita perhatikan, kecuali...', 'C++ bersifat case sensitive', 'Tidak boleh diawali dengan angka', 'Harus menggunakan spasi', 'Tidak boleh menggunakan symbol (!@#$%^&*, dll', 'c', 1, 'CPP'),
(121, 'fungsi param array adalah', 'menunjukkan program', 'menghitung proram', 'menghitung jumlah parameter untuk prosedur', 'meperbanyak parameter', 'c', 1, 'DOT'),
(122, 'if-then-else yang bentuknya datar/horisontal disebut struktur', 'IIF', 'IAF', 'AFF', 'FAF', 'a', 1, 'DOT'),
(123, 'Struktur select-case berfungsi untuk', 'Menjalankan', 'Menghentikan program', 'Menjalankan satu blok perintah yang jumlahnya bany', 'Menjalankan satu blok perintah tak bertingkat', 'c', 1, 'DOT'),
(124, 'Fungsi select case yang paling sering dijumpai adalah', 'Mesin pencari', 'Mesin pencuri', 'Translator', 'Mesin kasir', 'c', 1, 'DOT'),
(125, 'Struktur perualangan atau loop digunakan untuk...', 'Mengulang suatu blok perintah sampai kondisi terte', 'Mengulang satu blok perintah sampai kondisi kedua', 'Mengulang suatu blok perintah sampai kondisi terak', 'Mengulang dua blok perintah sampai kondisi tertent', 'a', 1, 'DOT'),
(126, 'Struktur yang digunakan untuk mengulang blok perintah dalam jumlah yang ditentukan disebut..', 'For-next', 'For-you', 'For-four', 'For-repeat', 'a', 1, 'DOT'),
(127, 'Struktur apa yang digunakan untuk melakukan perulangan terus menerus selama kondisi memenuhi syarat.', 'Do while loop', 'Do until loop', 'While-end while', 'Do-loop until', 'a', 1, 'DOT'),
(128, 'Struktur yang sama persis dengan do while loop.', 'Do while loop', 'Do until loop', 'While-end while', 'Do-loop until', 'c', 1, 'DOT'),
(129, 'NET Framework memperkenalkan teknologi yang di kenal dengan', 'ADO.NET', 'ALDO.NET', 'ADI.NET', 'IDO.NET', 'a', 1, 'DOT'),
(130, 'Fungsi manage provider/Data provider dalam NET Frame work adalah sebagai', 'Penghubung jaringan', 'Penghubung aplikasi seseorang', 'Penghubung aplikasi dan data source', 'Penghubung data source dan pemakai', 'c', 1, 'DOT'),
(131, 'Pengertian data base adalah', 'Kumpulan data yang disimpan dalam komputer dan dap', 'Kumpulan data yang disimpan dalam komputer dan dap', 'Kumpulan data yang disimpan dalam kertas dan dapat', 'Kumpulan data yang tidak disimpan dalam komputer d', 'a', 1, 'DOT'),
(132, 'Datast adalah', 'Himpunan kelas yang mempresentasikan collector dat', 'Himpunan kelas yang mempresentasikan basis data di', 'Himpunan kapasitor yang mempresentasikan basis dat', 'Kelas yang mempresentasikan data didalam memori', 'b', 1, 'DOT'),
(133, 'Dalam kegiatan belajar 10 siswa di fokuskan data provider untuk', 'OLE DB', 'OLE DA', 'OLE DC', ' OLE AC', 'a', 1, 'DOT'),
(134, 'Struktur Yang Digunakan Untuk Menjalankan 1 Blok Perintah Yang Jumlahnya Banyak Adalah ?', 'Struktur Select – Case\r\n', 'Struktur IIF', 'Struktur For – Next', 'Struktur String', 'a', 1, 'DOT'),
(135, 'Dalam Tes_Ekspresi Berisi ?', 'Nilai Pertama', 'Nilai Numeric', 'Nilai Ekspresi', 'Nilai Kedua', 'b', 1, 'DOT'),
(136, 'Struktur Yang Digunakan Untuk Mengulang Blok Perintah Dalam Jumlah Yang Di Tentukan Adalah ?', 'Struktur IIF', 'Struktur For – Next', 'Struktur String', 'Struktur While – End While', 'b', 1, 'DOT'),
(137, 'Perulangan For Next Diletakkan Struktur Next Lainnya, Bentuk Semacam Ini Disebut ?', 'Struktur IIF', 'Nested For – Next', 'Struktur String', 'Struktur While – End While', 'b', 1, 'DOT'),
(138, 'Struktur Yang Digunakan Untuk Melakukan Perulangan Terus Menerus Selama Kondisi Bernilai True Adalah ?', 'Struktur Selec – Case', 'Struktur String', 'Struktur While – End While', 'Do While Loop', 'd', 1, 'DOT'),
(139, 'Apa Perbedaan Struktur While End While Dengan Struktur Do While Loop?', 'Bentuknya', 'Kerjanya', 'Penulisannya', 'Kontrolnya', 'c', 1, 'DOT'),
(140, 'Struktur Do-Loop While Merupakan Perulangan Dari Struktur?', 'While – End While', 'Loop While End', 'Do Until Loop', 'Do While-Loop', 'd', 1, 'DOT'),
(141, 'Struktur Do-Loop Until Dalam Pengulangan Akan Berhenti Jika Memenuhi Syarat, Yaitu?', 'False', 'True', 'Loop', 'While', 'b', 1, 'DOT'),
(142, 'Bila diketahui Jono mendapatkan nilai 50 kemudian dinyatakan tidak lulus, setelah itu Lono mendapat nilai 70 dinyatakan lulus, diketahui kkm 70. Dalam project tersebut menggunukan operator retional…', '>= 60', '>=70', '<=70', '>=50', 'b', 1, 'DOT'),
(143, 'Diketahui suatu project jika suatu kondisi tidak terpenuhi namun ekspresi yang lainnya dikerjakan merupakan struktur kondisi ?', 'If then after', 'If then', 'If then before', 'If then else', 'd', 1, 'DOT'),
(144, 'Branch Structure sering juga disebut struktur kondisi', 'If then', 'IF THEN ELSE', 'If then before', 'If then last', 'a', 1, 'DOT'),
(145, 'Berapakah jumlah operator relational ', '5', '7', '6', '8', 'c', 1, 'DOT'),
(146, 'Suatu logika jika dikerjakan dengan logika yang benar (true) keduanya mengahasilkan nilai False atau sebaliknya merupakan operator logika', 'Or', 'And', 'Xor', 'Not', 'd', 1, 'DOT'),
(147, 'Operator yang digunakan untuk menggabungkan dua buah ekspresi nilai atau lebih adalah', 'And', 'Or', 'Xor', 'Not', 'a', 1, 'DOT'),
(148, 'Operator ini akan menghasilkan nilai true apabila salah satu ekspresi bernilai true atau sebaliknya. Penjelasan tersebut merupakan operator logika ?', 'And', 'Or', 'Xor', 'Not', 'b', 1, 'DOT'),
(149, 'Operator yang menghasilkan nilai true apabila beberapa ekspresi nilai yang dibandingkan bersifat benar atau salah adalah', 'Or', 'Xor', 'And', 'Not', 'b', 1, 'DOT'),
(150, 'Sebuah parameter formal dapat dipanggil dengan..', 'ByRef', 'ByRefal', 'Bye', 'Byform', 'a', 1, 'DOT'),
(151, 'Untuk membuat teks menjadi seperti angka 2 pada X2 dalam HTML digunakan perintah', 'X<superscript>2</superscript>', 'X<subscript>2</subscript>', '<superscript>X2</superscript>', 'X<sub>2</sub>', 'c', 1, 'REA'),
(152, 'Perl pada awalnya dikembangkan sebagai tujuan umum Unix bahasa scripting untuk membuat pengolahan laporan lebih mudah Oleh', 'Larry Wall (1987)', 'William Walace (1978)', 'Bill Jone (1992)', 'Semua jawaban salah', 'a', 1, 'REA'),
(153, 'sebuah standar yang mendefinisikan bagaimana web server perangkat lunak dapat mendelegasikan generasi dari halaman web ke berbasis teks aplikasi adalah', 'Perl dan CGI', 'CGI', 'Perl', 'semua jawaban salah', 'b', 1, 'REA'),
(154, 'Manakah yang merupakan servert spesicic variable pada CGI dibwah ini yang benar', 'SERVER_PROTOCOL', 'GATEWAY_INTERFACE', 'REQUEST_METHOD', 'PATH_INFO', 'b', 1, 'REA'),
(155, 'Format penilisan sintaks CSS yang benar adalah..', 'Selector {Property: value;}', 'Property {Selector: value;}', 'Value {Property: selector;}', 'Selector {value: property;}', 'a', 1, 'REA'),
(156, 'Fungsi sebuah tag <a href="https://www.nafaskuda.com"> NafasKuda Network </a> adalah...', 'Untuk memberikan teks nafaskuda.com pada halaman w', 'Untuk memberikan tulisan pada nafaskuda.com', 'Untuk memberikan tombol/link menuju ke halaman htt', 'Untuk memberikan penomoran pada tulisan NafasKuda ', 'c', 1, 'REA'),
(157, 'Perintah unordered dengan Type Square digunakan untuk mendeskripsikan...', 'Bullet kotak', 'Bullet titik', 'Bullet lingkaran', 'Bullet segitiga', 'a', 1, 'REA'),
(158, ' Kumpulan dari method-method yang belum terdapat operasi di dalam tubuh method tersebut disebut ...', 'Abstract class', 'Inheritance', 'Interface', 'Implements', 'c', 1, 'REA'),
(159, 'Super class tertinggi adalah ...', 'Class throwable', 'Php', 'Metode', 'Throw', 'a', 1, 'REA'),
(160, 'Keyword yang digunakan dalam suatu block program adalah ...', 'Try', 'Throw', 'Throws', 'Catch', 'a', 1, 'REA'),
(161, 'Keyword penting dalam java dalam hal exception handing adalah ...', 'Try', 'Catch', 'Finally', 'Semua jawaban benar', 'd', 1, 'REA'),
(162, 'Class yang menyediakan beberapa flied dan method bermanfaat disebut', 'Class system', 'Class math', 'Class string', 'Class wrapper', 'a', 1, 'REA'),
(163, 'Berikut ini yang termasuk tipe data wrapper adalah ..', 'Boolean', 'Byte', 'Character', 'Semua jawaban benar', 'd', 1, 'REA'),
(164, 'Method yang menghasilkan nilai mutlak adalah ...', 'Publik static double max (double a, b)', 'Publik static double cell (double a)', 'Publik static double abs (double a)', 'Publik static double floor (double a)', 'c', 1, 'REA'),
(165, 'Class yang digunakan menggunakan array dan character disebut ...', 'Class math', 'Class string', 'Class string buffer', 'Class wrapper', 'b', 1, 'REA'),
(166, 'Nama lain dari istilah pewarisan adalah ...', 'Inheritance', 'Interface', 'Overriding', 'Overloading', 'a', 1, 'REA'),
(167, 'Tabel merupakan...', 'Informasi dalam bentuk baris dan kolom', 'Tulisan berjalan', 'Teks berjalan', 'Background', 'a', 1, 'REA'),
(168, 'Salah satu contoh dari web server adalah .', 'Apache dan HTML', 'HTML dan Xampp', 'Apache dan Xampp', 'Lightpad dan PHP', 'c', 1, 'REA'),
(169, ' Server, data base MY SQL, dan modul PHP merupakan beberapa paket dari ...', 'HTTP', 'PHP', 'SGML', 'HTML', 'b', 1, 'REA'),
(170, 'Server web yang digunakan dalam pemograman web berbasis server adalah ...', 'Apache ', 'Tag', 'Script', 'Xampp', 'a', 1, 'REA'),
(171, 'Implementasi sistem modul dari NodeJS merupakan fungsi dari ...', 'Username', 'Request', 'Require', 'Require', 'c', 1, 'REA');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `user` int(11) NOT NULL,
  `profession` varchar(100) NOT NULL DEFAULT 'web developer',
  `subtext` varchar(550) NOT NULL DEFAULT 'Very good application, easy to use, and user friendly.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`user`, `profession`, `subtext`) VALUES
(1, 'Web Developer', 'Very good application, easy to use, and user friendly.'),
(2, 'web developer', 'Very good application, easy to use, and user friendly.'),
(3, 'web developer', 'Very good application, easy to use, and user friendly.'),
(4, 'web developer', 'Very good application, easy to use, and user friendly.'),
(5, 'web developer', 'Very good application, easy to use, and user friendly.'),
(6, 'web developer', 'Very good application, easy to use, and user friendly.'),
(7, 'web developer', 'Very good application, easy to use, and user friendly.'),
(8, 'Mobile Developer', 'Interesting'),
(28, 'unemployment', 'Amazing Website');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `is_active`) VALUES
(1, 'Nathaniel Ray Raharjo', 'nathaniel.raharjo@gmail.com', 1),
(2, 'Yosefa Oktaviana Dia', 'yosefadia27@gmail.com', 1),
(3, 'Olivia Michelle', 'michelleolivia301@gmail.com', 1),
(4, 'Novi Panna Vira', 'novipannavira@gmail.com', 1),
(5, 'Gunawan Zega', 'faktagunawanzega@gmail.com', 1),
(6, 'Jonathan Purnama Halim', 'jonathanpurnama13@gmail.com', 1),
(7, 'Willy Chrisna', 'willychrisna77@gmail.com', 1),
(8, 'Herul Syahwandi S', 'herul.syah@gmail.com', 1),
(9, 'Bachtiar Nur Yogi P', 'bachtiarnuryogipratama@gmail.com', 1),
(10, 'Muhamad Irfan Bernadius ', 'muhamadi7696@gmail.com', 1),
(11, 'Thomas Alva Edison', 'edison@gmail.com', 0),
(12, 'Albert Enstein', 'yosefadia27@gmail.com', 0),
(13, 'Ayana', 'ayana@gmail.com', 1),
(14, 'Groovy', 'groovy@gmail.com', 1),
(17, 'qwe', 'qwe@gmail.com', 0),
(25, 'User', 'user@example.com', 0),
(26, 'percobaan', 'percobaan@gmail.co', 0),
(27, 'Ahmad', 'pratamyogiyogi1@gmail.com', 0),
(28, 'David Disini', 'bachtiarnuryogipratama1@gmail.com', 1),
(29, 'apa', 'apa@gmail.com', 1),
(30, 'p', 'p@gmail.com', 0),
(31, 'qq', 'q@gmail.com', 1),
(32, 'halo', 'halo@gmail.com', 1),
(33, 'Aji', 'pratamyogiyogi2gmail.com', 1),
(34, 'Namaku Yogi', 'yogi12@gmail.com', 0),
(35, 'Sumanto', 'sumanto@gmail.com', 1),
(36, 'akusiapa', 'akukjhkhkh@gmail.com', 0),
(39, 'sapaaja', 'kkk@gmail.com', 1),
(40, 'test register', 'yosefadia20@gmail.com', 1),
(41, 'cobain lagi', 'yosefadia22@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(10) NOT NULL,
  `user_answer` enum('a','b','c','d') DEFAULT NULL,
  `question` int(10) NOT NULL,
  `exam` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `user_answer`, `question`, `exam`) VALUES
(1, 'b', 6, 30),
(2, 'a', 66, 30),
(3, 'a', 66, 30),
(4, NULL, 6, 30),
(5, 'a', 66, 30),
(6, 'b', 6, 30),
(7, 'a', 64, 30),
(8, NULL, 19, 30),
(9, 'a', 64, 30),
(10, 'c', 19, 30),
(11, 'b', 11, 30),
(12, 'd', 8, 30),
(13, 'a', 7, 30),
(14, 'b', 10, 30),
(15, 'd', 16, 30),
(16, 'd', 5, 30),
(17, 'c', 2, 30),
(18, 'b', 4, 30),
(19, 'a', 1, 30),
(20, 'c', 9, 30),
(21, 'c', 17, 30),
(22, 'd', 12, 30),
(23, NULL, 3, 30),
(24, 'd', 20, 30),
(25, 'a', 54, 43),
(26, 'c', 52, 43),
(27, 'b', 52, 43),
(28, 'c', 52, 43),
(29, 'a', 54, 43),
(30, NULL, 56, 43),
(31, 'b', 56, 43),
(32, NULL, 48, 43),
(33, 'a', 48, 43),
(34, 'b', 56, 43),
(35, 'c', 52, 43),
(36, 'a', 54, 43),
(37, 'b', 46, 43),
(38, 'b', 53, 43),
(39, 'c', 50, 43),
(40, 'c', 59, 43),
(41, 'c', 41, 43),
(42, 'c', 58, 43),
(43, 'c', 49, 43),
(44, 'd', 55, 43),
(45, 'c', 43, 43),
(46, 'c', 42, 43),
(47, 'b', 51, 43),
(48, 'b', 47, 43),
(49, NULL, 45, 43),
(50, 'a', 57, 43),
(51, 'a', 60, 43),
(52, 'b', 44, 43),
(53, 'a', 60, 43),
(54, 'a', 30, 44),
(55, 'b', 37, 44),
(56, 'd', 23, 44),
(57, 'd', 40, 44),
(58, 'c', 35, 44),
(59, 'b', 33, 44),
(60, 'b', 27, 44),
(61, 'b', 22, 44),
(62, 'a', 28, 44),
(63, 'b', 26, 44),
(64, 'a', 24, 44),
(65, 'b', 32, 44),
(66, 'd', 63, 44),
(67, 'a', 31, 44),
(68, 'a', 36, 44),
(69, 'a', 39, 44),
(70, 'd', 25, 44),
(71, 'b', 21, 44),
(72, 'a', 29, 44),
(73, 'a', 38, 44),
(74, NULL, 16, 37),
(75, NULL, 7, 37),
(76, NULL, 4, 30),
(77, NULL, 14, 30),
(78, 'c', 45, 46),
(79, 'a', 53, 46),
(80, NULL, 45, 46),
(81, NULL, 53, 46),
(82, NULL, 45, 46),
(83, NULL, 53, 46),
(84, 'b', 50, 46),
(85, 'a', 54, 46),
(86, NULL, 46, 46),
(87, 'c', 52, 46),
(88, 'a', 59, 46),
(89, NULL, 41, 46),
(90, NULL, 49, 46),
(91, NULL, 48, 46),
(92, NULL, 46, 46),
(93, 'a', 59, 46),
(94, 'a', 46, 46),
(95, NULL, 41, 46),
(96, NULL, 48, 46),
(97, 'a', 54, 46),
(98, 'b', 41, 46),
(99, NULL, 8, 30),
(100, NULL, 15, 30),
(101, NULL, 12, 30),
(102, NULL, 16, 30),
(103, NULL, 10, 30),
(104, NULL, 14, 30),
(105, NULL, 60, 34),
(106, NULL, 53, 34),
(107, NULL, 52, 34),
(108, NULL, 52, 48),
(109, NULL, 56, 48),
(110, NULL, 56, 48),
(111, 'c', 51, 48),
(112, 'a', 52, 48),
(113, 'a', 41, 49),
(114, NULL, 43, 49),
(115, NULL, 55, 49),
(116, 'c', 58, 49),
(117, NULL, 56, 49),
(118, 'b', 53, 49),
(119, NULL, 43, 49),
(120, NULL, 50, 49),
(121, NULL, 55, 49),
(122, NULL, 45, 49),
(123, 'a', 50, 25),
(124, NULL, 44, 25),
(125, 'a', 49, 25),
(126, NULL, 57, 25),
(127, NULL, 53, 25),
(128, 'a', 53, 25),
(129, 'a', 57, 25),
(130, NULL, 52, 25),
(131, 'a', 47, 25),
(132, 'a', 9, 51),
(133, 'd', 20, 51),
(134, 'd', 15, 51),
(135, 'b', 3, 51),
(136, 'd', 13, 51),
(137, 'a', 2, 51),
(138, NULL, 19, 51),
(139, 'a', 8, 51),
(140, NULL, 6, 51),
(141, 'c', 19, 51),
(142, 'c', 6, 51),
(143, 'd', 5, 51),
(144, NULL, 7, 51),
(145, 'c', 6, 51),
(146, 'a', 7, 51),
(147, 'd', 66, 51),
(148, 'd', 4, 51),
(149, 'a', 16, 51),
(150, 'c', 12, 51),
(151, 'b', 1, 51),
(152, 'd', 4, 51),
(153, 'a', 64, 51),
(154, NULL, 1, 51),
(155, 'c', 10, 51),
(156, 'd', 11, 51),
(157, 'c', 10, 51),
(158, 'b', 18, 51),
(159, 'd', 11, 51),
(160, 'a', 20, 52),
(161, 'd', 7, 52),
(162, 'c', 19, 52),
(163, 'b', 16, 52),
(164, 'b', 4, 52),
(165, 'c', 11, 52),
(166, 'c', 1, 52),
(167, 'd', 2, 52),
(168, 'd', 6, 52),
(169, 'c', 8, 52),
(170, 'c', 10, 52),
(171, 'd', 15, 52),
(172, 'd', 66, 52),
(173, 'c', 13, 52),
(174, 'b', 5, 52),
(175, 'c', 3, 52),
(176, 'c', 17, 52),
(177, 'b', 12, 52),
(178, 'b', 18, 52),
(179, 'a', 9, 52),
(180, 'c', 16, 53),
(181, 'd', 15, 53),
(182, 'd', 7, 53),
(183, 'd', 64, 53),
(184, 'd', 9, 53),
(185, 'd', 11, 53),
(186, 'c', 17, 53),
(187, 'c', 3, 53),
(188, 'c', 66, 53),
(189, 'd', 1, 53),
(190, 'c', 20, 53),
(191, 'b', 13, 53),
(192, 'b', 18, 53),
(193, 'b', 10, 53),
(194, 'c', 5, 53),
(195, 'b', 6, 53),
(196, 'c', 4, 53),
(197, 'c', 8, 53),
(198, 'a', 19, 53),
(199, 'b', 2, 53),
(200, 'c', 3, 54),
(201, 'b', 10, 54),
(202, 'b', 80, 54),
(203, 'a', 14, 54),
(204, 'c', 71, 54),
(205, 'b', 78, 54),
(206, 'c', 61, 54),
(207, 'c', 9, 54),
(208, 'a', 75, 54),
(209, 'd', 70, 54),
(210, 'd', 12, 54),
(211, 'c', 69, 54),
(212, 'a', 18, 54),
(213, 'd', 5, 54),
(214, 'd', 4, 54),
(215, 'd', 15, 54),
(216, 'a', 13, 54),
(217, 'c', 8, 54),
(218, 'c', 16, 54),
(219, 'd', 17, 54),
(220, 'b', 80, 55),
(221, 'b', 78, 55),
(222, 'c', 65, 55),
(223, 'b', 18, 55),
(224, 'c', 20, 55),
(225, 'a', 73, 55),
(226, 'c', 1, 55),
(227, 'c', 11, 55),
(228, 'd', 17, 55),
(229, 'd', 6, 55),
(230, 'c', 66, 55),
(231, 'b', 62, 55),
(232, 'd', 8, 55),
(233, 'c', 14, 55),
(234, 'd', 76, 55),
(235, 'c', 63, 55),
(236, 'c', 19, 55),
(237, 'c', 10, 55),
(238, 'c', 77, 55),
(239, 'b', 79, 55),
(240, NULL, 10, 56),
(241, NULL, 4, 56),
(242, NULL, 77, 56),
(243, NULL, 62, 56),
(244, 'c', 7, 56),
(245, 'c', 70, 56),
(246, NULL, 65, 56),
(247, NULL, 74, 56),
(248, NULL, 9, 56),
(249, NULL, 78, 56),
(250, NULL, 74, 56),
(251, NULL, 1, 56),
(252, 'c', 59, 57),
(253, 'a', 46, 57),
(254, 'b', 52, 57),
(255, 'd', 58, 57),
(256, 'c', 48, 57),
(257, 'c', 45, 57),
(258, 'c', 54, 57),
(259, 'c', 108, 57),
(260, 'c', 47, 57),
(261, 'c', 112, 57),
(262, 'c', 117, 57),
(263, 'c', 114, 57),
(264, 'c', 42, 57),
(265, 'd', 118, 57),
(266, 'd', 101, 57),
(267, 'd', 41, 57),
(268, 'd', 109, 57),
(269, 'd', 106, 57),
(270, 'd', 50, 57),
(271, 'd', 60, 57);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`code`),
  ADD KEY `user` (`user`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`user`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question` (`question`),
  ADD KEY `exam` (`exam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `code`
--
ALTER TABLE `code`
  ADD CONSTRAINT `code_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `code_ibfk_2` FOREIGN KEY (`module`) REFERENCES `module` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_3` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `exam_ibfk_4` FOREIGN KEY (`code`) REFERENCES `code` (`code`) ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`module`) REFERENCES `module` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD CONSTRAINT `testimonial_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD CONSTRAINT `user_answer_ibfk_2` FOREIGN KEY (`exam`) REFERENCES `exam` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_answer_ibfk_3` FOREIGN KEY (`question`) REFERENCES `question` (`id`) ON UPDATE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `expired_code` ON SCHEDULE EVERY 1 SECOND STARTS '2020-11-01 00:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE code SET is_used = 1 WHERE expired_date <= CURRENT_TIMESTAMP$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
