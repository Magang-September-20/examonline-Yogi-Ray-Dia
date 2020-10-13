-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 05:34 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id` int(11) NOT NULL,
  `code` varchar(9) NOT NULL,
  `expired_date` datetime NOT NULL,
  `is_sent` tinyint(1) NOT NULL DEFAULT '0',
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `user` int(10) NOT NULL,
  `module` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id`, `code`, `expired_date`, `is_sent`, `is_used`, `user`, `module`) VALUES
(1, 'JAV001', '0000-00-00 00:00:00', 1, 1, 1, 'JAV'),
(2, 'CPP001', '0000-00-00 00:00:00', 1, 1, 2, 'CPP'),
(3, 'JAV002', '0000-00-00 00:00:00', 1, 0, 1, 'JAV');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(10) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `score` int(3) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `has_passed` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `code` varchar(9) NOT NULL,
  `user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `start`, `end`, `score`, `grade`, `has_passed`, `date`, `code`, `user`) VALUES
(1, '2020-10-11 20:00:00', '2020-10-11 22:00:00', 74, 'B', 1, '2020-10-11 19:00:00', 'JAV001001', 1),
(2, '2020-10-12 19:00:00', '2020-10-12 21:00:00', 97, 'A', 1, '2020-10-12 18:00:00', 'CPP002001', 2),
(3, '2020-10-12 20:00:00', '2020-10-12 22:00:00', 23, 'F', 0, '2020-10-12 19:00:00', 'JAV001002', 1);

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
(1, 'Sintaks java untuk melakukan kompilasi terhadap berkas program adalah :', 'java', 'javac', 'javaclass', 'javax', 'b', 1, 'JAV'),
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
(60, 'Berikut ini adalah syarat pembuatan identifier yang harus kita perhatikan, kecuali...', 'C++ bersifat case sensitive', 'Tidak boleh diawali dengan angka', 'Harus menggunakan spasi', 'Tidak boleh menggunakan symbol (!@#$%^&*, dll', 'c', 1, 'CPP');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `is_active`) VALUES
(1, 'Albert Enstein', 'alenstein@gmail.com', 1),
(2, 'Thomas Alva Edison', 'edison@gmail.com', 1),
(3, 'Ayana', 'ayana@gmail.com', 1),
(4, 'Groovy', 'groovy@gmail.com', 1);

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
(1, 'a', 1, 1),
(2, 'c', 2, 1),
(3, 'd', 3, 1),
(4, 'a', 4, 1),
(5, 'c', 5, 1),
(6, 'a', 6, 1),
(7, 'd', 7, 1),
(8, 'b', 8, 1),
(9, 'b', 9, 1),
(10, 'a', 10, 1),
(11, 'd', 11, 1),
(12, 'a', 12, 1),
(13, 'c', 13, 1),
(14, 'd', 14, 1),
(15, 'a', 15, 1),
(16, 'a', 16, 1),
(17, 'b', 17, 1),
(18, 'b', 18, 1),
(19, 'd', 19, 1),
(20, 'c', 20, 1),
(21, 'a', 21, 2),
(22, 'b', 22, 2),
(23, 'd', 23, 2),
(24, 'c', 24, 2),
(25, 'a', 25, 2),
(26, 'b', 26, 2),
(27, 'c', 27, 2),
(28, 'a', 28, 2),
(29, 'd', 29, 2),
(30, 'a', 30, 2),
(31, 'b', 31, 2),
(32, 'c', 32, 2),
(33, 'c', 33, 2),
(34, 'c', 34, 2),
(35, 'a', 35, 2),
(36, 'b', 36, 2),
(37, 'c', 37, 2),
(38, 'a', 38, 2),
(39, 'd', 39, 2),
(40, 'd', 40, 2),
(41, 'c', 41, 3),
(42, 'd', 42, 3),
(43, 'd', 43, 3),
(44, 'a', 44, 3),
(45, 'c', 45, 3),
(46, 'b', 46, 3),
(47, 'c', 47, 3),
(48, 'a', 48, 3),
(49, 'b', 49, 3),
(50, 'c', 50, 3),
(51, 'a', 51, 3),
(52, 'a', 52, 3),
(53, 'b', 53, 3),
(54, 'd', 54, 3),
(55, 'd', 55, 3),
(56, 'a', 56, 3),
(57, 'c', 57, 3),
(58, 'b', 58, 3),
(59, 'a', 59, 3),
(60, 'c', 60, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
