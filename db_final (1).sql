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
-- Database: `db_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`) VALUES
(1, 'ray', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(2, 'dia', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(3, 'oliv', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(4, 'panna', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(5, 'gunawan', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(6, 'nathan', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(7, 'chrisna', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(8, 'herul', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(9, 'yogi', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(10, 'irfan', '$2a$10$HVF0czY2.lCKhduosamNHuCdldHEzb4a2XT3nOz/134MF8mQsz/.2'),
(11, 'thomas', '$2a$10$dN7aq6rMr1UBuKB8imjA0.PT4/gvw2uW8nx5sH0miIgBlpt7KuPpC'),
(12, 'enstein', '$2a$10$meNLoAApsIaal5BHZaXGxew0mGc/8C4Ou37a7QUKbzhNbn96G4EUe'),
(13, 'ayana', '$2a$10$WeY3YIIs5Yx0ahOM7B6tLOzVKzmzLTNuTXd377tGdcIigW1kikLJK'),
(15, 'groovy', '$2a$10$Nh4GaPoRnf7tSLl.1GNIluG1ikGGVbjGWesQiXyiBWcoSHRXxOlhC'),
(16, 'diaaa', '$2a$10$Mnb73qA6zopr2cdrTw6b0OnaS8h.GSOViFuCrGHE3E17Ex4IU/mhe'),
(17, 'yogigan', '$2a$10$LMfpMdAFC44ZB6ZauZ2ZW.bcazmi.0fTkNaifNd5QfHOi2.kc9yCu'),
(18, 'siapa1', '$2a$10$9VpWsxTcD1X5nnGuOTLiI.rNcrBGyBVGOzMxt5dudpyAQ7ejelVcC'),
(19, 'siapa2', '$2a$10$KF7x4MS.s3n3mizW9LyM0utE9YgJPFLQ6zs/WYsd4yn.N9I4CEb7m'),
(20, 'burjoudinus', '$2a$10$v3g/rWOAkLvqKgoLzC6si.GbDRtXvVIytPhg3xe2zlvlL8A8bOxZy'),
(21, 'siapa3', '$2a$10$YDlek1Dt68M5IV518jjaQext11PLbLHQ6lYhbYNC8EcMeDAWPdzca'),
(22, 'siapa4', '$2a$10$.LKUcfbTnfaH.dJwbv4my.oI1SUd54cQFgoMSJ1Upl2Bdj03bcjqu'),
(23, 'kadangbener', '$2a$10$IgemGjz3rquJgsFBz4TofOE2dimKzr0znSTRagbne8RHpbU0M/ZES'),
(24, 'ngetes', '$2a$10$V4kQk5wdBPZCmjKMrXKteOttQH8i.8lq54RLXeMnzIjBT4JoCFu0a'),
(25, 'user', '$2a$10$7rueLSqA7nxfeRxhH3Go2.ohiv930DMnWqbcXXefyiU8.TmhfCO0K'),
(26, 'percobaan', '$2a$10$/QvhVdluMbkpvY.vmrDsCe29bdwNSlKR5BuZm4/IEAa9ABARLGNda'),
(27, 'ahmad', '$2a$10$uK6OuSfelcrNZEC2LbHoKOeZIRiXMdx/FlGV2vc362pyouGoco6.a'),
(28, 'david', '$2a$10$cCJ7v/ytPdF.OhifT45see04VgKllHUyeile1kSmQDfwjMsR12Eq6'),
(29, 'apa', '$2a$10$B0Cz.BZ0tnY/1uTYHcfZp.Y7AuDVacW4V7ST8/nf5V3gJn3rdqFcS'),
(30, 'p', '$2a$10$FXs0EX5hrY2ccx9yvwSQK.iaB3Z1BPlFC8j4G0E2mvP5ykSk8Vo5K'),
(31, 'q', '$2a$10$xrxPP8rkVAAdBuVMw6raAe8K/VlW/UjMc7XA9OWgd0a8rZ9CmN.Ku'),
(32, 'halo', '$2a$10$CoPsWcGGycv/UDEAwJehvO5XwlfFrYcPru6XtlkI20eh7I4BOaogO'),
(33, 'aji', '$2a$10$U028FkDVdXHZ/VdM2xs8SeOhUfTKx9syFtdJ/002sc.k8O3RpKHo6'),
(34, 'namaku', '$2a$10$LRI23K2rci27vm/eq5vyce0DXYPL78CSagOKLrdyaRbstxK.6NqHe'),
(35, 'sumanto', '$2a$10$JY0ytUvPJdTfPlOjo8jpDOA3Vc3SG5v1F5KJ3jI95krEYTD1LCQpa'),
(36, 'akusiapa', '$2a$10$2n2qPp/jMk3foIUTyEKKF.W5S5lN85RyYgPcBmZUmCH1JKCCmqZ1G'),
(37, 'cobacoba', '$2a$10$4K5FXqE1kD2XtsWzjY//uuR4eSsSqJUpJqtEe1iMvL1vrtt97fOJy'),
(38, 'siapa', '$2a$10$TODWYuwFzMiMHMmcsWQskeHnwXe8IrlrHSs0JWfT.ddshJavODO4y'),
(39, 'sapawe', '$2a$10$G/XYL1007Irztuv6g/cc4eak1nZBGE7LcjCXM.h7.cq74v.uXtTxa'),
(40, 'test', '$2a$10$hYnrguePqsyGvRhACChQMORivdzz0xH7WSuMe.p.hcbJeh4uCDlXW'),
(41, 'cobacobain', '$2a$10$RTcLbWApIvnegU6DZt624OdLtBC5.E7QPDSy4fe8na9pq2TfeSlyK');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `a` varchar(250) NOT NULL,
  `b` varchar(250) NOT NULL,
  `c` varchar(250) NOT NULL,
  `d` varchar(250) NOT NULL,
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
(60, 'Berikut ini adalah syarat pembuatan identifier yang harus kita perhatikan, kecuali...', 'C++ bersifat case sensitive', 'Tidak boleh diawali dengan angka', 'Harus menggunakan spasi', 'Tidak boleh menggunakan symbol (!@#$%^&*, dll', 'c', 1, 'CPP'),
(61, 'fungsi param array adalah', 'menunjukkan program', 'menghitung proram', 'menghitung jumlah parameter untuk prosedur', 'meperbanyak parameter', 'c', 1, 'DOT'),
(62, 'if-then-else yang bentuknya datar/horisontal disebut struktur', 'IIF', 'IAF', 'AFF', 'FAF', 'a', 1, 'DOT'),
(63, 'Struktur select-case berfungsi untuk', 'Menjalankan', 'Menghentikan program', 'Menjalankan satu blok perintah yang jumlahnya banyak ataubertingkat', 'Menjalankan satu blok perintah tak bertingkat', 'c', 1, 'DOT'),
(64, 'Fungsi select case yang paling sering dijumpai adalah', 'Mesin pencari', 'Mesin pencuri', 'Translator', 'Mesin kasir', 'c', 1, 'DOT'),
(65, 'Struktur perualangan atau loop digunakan untuk...', 'Mengulang suatu blok perintah sampai kondisi tertentu', 'Mengulang satu blok perintah sampai kondisi kedua', 'Mengulang suatu blok perintah sampai kondisi terakhir', 'Mengulang dua blok perintah sampai kondisi tertentu', 'a', 1, 'DOT'),
(66, 'Struktur yang digunakan untuk mengulang blok perintah dalam jumlah yang ditentukan disebut..', 'For-next', 'For-you', 'For-four', 'For-repeat', 'a', 1, 'DOT'),
(67, 'Struktur apa yang digunakan untuk melakukan perulangan terus menerus selama kondisi memenuhi syarat.', 'Do while loop', 'Do until loop', 'While-end while', 'Do-loop until', 'a', 1, 'DOT'),
(68, 'Struktur yang sama persis dengan do while loop.', 'Do while loop', 'Do until loop', 'While-end while', 'Do-loop until', 'c', 1, 'DOT'),
(69, 'NET Framework memperkenalkan teknologi yang di kenal dengan', 'ADO.NET', 'ALDO.NET', 'ADI.NET', 'IDO.NET', 'a', 1, 'DOT'),
(70, 'Fungsi manage provider/Data provider dalam NET Frame work adalah sebagai', 'Penghubung jaringan', 'Penghubung aplikasi seseorang', 'Penghubung aplikasi dan data source', 'Penghubung data source dan pemakai', 'c', 1, 'DOT'),
(71, 'Pengertian data base adalah', 'Kumpulan data yang disimpan dalam komputer dan dapat diolah dengan perangkat lunak', 'Kumpulan data yang disimpan dalam komputer dan dapat diolah dengan perangkat keras', 'Kumpulan data yang disimpan dalam kertas dan dapat diolah dengan perangkat lunak', 'Kumpulan data yang tidak disimpan dalam komputer dan dapat diolah dengan perangkat lunak', 'a', 1, 'DOT'),
(72, 'Datast adalah', 'Himpunan kelas yang mempresentasikan collector data didalam memori', 'Himpunan kelas yang mempresentasikan basis data didalam memori', 'Himpunan kapasitor yang mempresentasikan basis data didalam memori', 'Kelas yang mempresentasikan data didalam memori', 'b', 1, 'DOT'),
(73, 'Dalam kegiatan belajar 10 siswa di fokuskan data provider untuk', 'OLE DB', 'OLE DA', 'OLE DC', ' OLE AC', 'a', 1, 'DOT'),
(74, 'Struktur Yang Digunakan Untuk Menjalankan 1 Blok Perintah Yang Jumlahnya Banyak Adalah ?', 'Struktur Select – Case\r\n', 'Struktur IIF', 'Struktur For – Next', 'Struktur String', 'a', 1, 'DOT'),
(75, 'Dalam Tes_Ekspresi Berisi ?', 'Nilai Pertama', 'Nilai Numeric', 'Nilai Ekspresi', 'Nilai Kedua', 'b', 1, 'DOT'),
(76, 'Struktur Yang Digunakan Untuk Mengulang Blok Perintah Dalam Jumlah Yang Di Tentukan Adalah ?', 'Struktur IIF', 'Struktur For – Next', 'Struktur String', 'Struktur While – End While', 'b', 1, 'DOT'),
(77, 'Perulangan For Next Diletakkan Struktur Next Lainnya, Bentuk Semacam Ini Disebut ?', 'Struktur IIF', 'Nested For – Next', 'Struktur String', 'Struktur While – End While', 'b', 1, 'DOT'),
(78, 'Struktur Yang Digunakan Untuk Melakukan Perulangan Terus Menerus Selama Kondisi Bernilai True Adalah ?', 'Struktur Selec – Case', 'Struktur String', 'Struktur While – End While', 'Do While Loop', 'd', 1, 'DOT'),
(79, 'Apa Perbedaan Struktur While End While Dengan Struktur Do While Loop?', 'Bentuknya', 'Kerjanya', 'Penulisannya', 'Kontrolnya', 'c', 1, 'DOT'),
(80, 'Struktur Do-Loop While Merupakan Perulangan Dari Struktur?', 'While – End While', 'Loop While End', 'Do Until Loop', 'Do While-Loop', 'd', 1, 'DOT'),
(81, 'Struktur Do-Loop Until Dalam Pengulangan Akan Berhenti Jika Memenuhi Syarat, Yaitu?', 'False', 'True', 'Loop', 'While', 'b', 1, 'DOT'),
(82, 'Bila diketahui Jono mendapatkan nilai 50 kemudian dinyatakan tidak lulus, setelah itu Lono mendapat nilai 70 dinyatakan lulus, diketahui kkm 70. Dalam project tersebut menggunukan operator retional…', '>= 60', '>=70', '<=70', '>=50', 'b', 1, 'DOT'),
(83, 'Diketahui suatu project jika suatu kondisi tidak terpenuhi namun ekspresi yang lainnya dikerjakan merupakan struktur kondisi ?', 'If then after', 'If then', 'If then before', 'If then else', 'd', 1, 'DOT'),
(84, 'Branch Structure sering juga disebut struktur kondisi', 'If then', 'IF THEN ELSE', 'If then before', 'If then last', 'a', 1, 'DOT'),
(85, 'Berapakah jumlah operator relational ', '5', '7', '6', '8', 'c', 1, 'DOT'),
(86, 'Suatu logika jika dikerjakan dengan logika yang benar (true) keduanya mengahasilkan nilai False atau sebaliknya merupakan operator logika', 'Or', 'And', 'Xor', 'Not', 'd', 1, 'DOT'),
(87, 'Operator yang digunakan untuk menggabungkan dua buah ekspresi nilai atau lebih adalah', 'And', 'Or', 'Xor', 'Not', 'a', 1, 'DOT'),
(88, 'Operator ini akan menghasilkan nilai true apabila salah satu ekspresi bernilai true atau sebaliknya. Penjelasan tersebut merupakan operator logika ?', 'And', 'Or', 'Xor', 'Not', 'b', 1, 'DOT'),
(89, 'Operator yang menghasilkan nilai true apabila beberapa ekspresi nilai yang dibandingkan bersifat benar atau salah adalah', 'Or', 'Xor', 'And', 'Not', 'b', 1, 'DOT'),
(90, 'Sebuah parameter formal dapat dipanggil dengan..', 'ByRef', 'ByRefal', 'Bye', 'Byform', 'a', 1, 'DOT'),
(91, 'Untuk membuat teks menjadi seperti angka 2 pada X2 dalam HTML digunakan perintah', 'X<superscript>2</superscript>', 'X<subscript>2</subscript>', '<superscript>X2</superscript>', 'X<sub>2</sub>', 'c', 1, 'REA'),
(92, 'Perl pada awalnya dikembangkan sebagai tujuan umum Unix bahasa scripting untuk membuat pengolahan laporan lebih mudah Oleh', 'Larry Wall (1987)', 'William Walace (1978)', 'Bill Jone (1992)', 'Semua jawaban salah', 'a', 1, 'REA'),
(93, 'sebuah standar yang mendefinisikan bagaimana web server perangkat lunak dapat mendelegasikan generasi dari halaman web ke berbasis teks aplikasi adalah', 'Perl dan CGI', 'CGI', 'Perl', 'semua jawaban salah', 'b', 1, 'REA'),
(94, 'Manakah yang merupakan servert spesicic variable pada CGI dibwah ini yang benar', 'SERVER_PROTOCOL', 'GATEWAY_INTERFACE', 'REQUEST_METHOD', 'PATH_INFO', 'b', 1, 'REA'),
(95, 'Format penilisan sintaks CSS yang benar adalah..', 'Selector {Property: value;}', 'Property {Selector: value;}', 'Value {Property: selector;}', 'Selector {value: property;}', 'a', 1, 'REA'),
(96, 'Fungsi sebuah tag <a href="https://www.nafaskuda.com"> NafasKuda Network </a> adalah...', 'Untuk memberikan teks nafaskuda.com pada halaman web', 'Untuk memberikan tulisan pada nafaskuda.com', 'Untuk memberikan tombol/link menuju ke halaman https://www.nafaskuda.com', 'Untuk memberikan penomoran pada tulisan NafasKuda Network', 'c', 1, 'REA'),
(97, 'Perintah unordered dengan Type Square digunakan untuk mendeskripsikan...', 'Bullet kotak', 'Bullet titik', 'Bullet lingkaran', 'Bullet segitiga', 'a', 1, 'REA'),
(98, ' Kumpulan dari method-method yang belum terdapat operasi di dalam tubuh method tersebut disebut ...', 'Abstract class', 'Inheritance', 'Interface', 'Implements', 'c', 1, 'REA'),
(99, 'Super class tertinggi adalah ...', 'Class throwable', 'Php', 'Metode', 'Throw', 'a', 1, 'REA'),
(100, 'Keyword yang digunakan dalam suatu block program adalah ...', 'Try', 'Throw', 'Throws', 'Catch', 'a', 1, 'REA'),
(101, 'Keyword penting dalam java dalam hal exception handing adalah ...', 'Try', 'Catch', 'Finally', 'Semua jawaban benar', 'd', 1, 'REA'),
(102, 'Class yang menyediakan beberapa flied dan method bermanfaat disebut', 'Class system', 'Class math', 'Class string', 'Class wrapper', 'a', 1, 'REA'),
(103, 'Berikut ini yang termasuk tipe data wrapper adalah ..', 'Boolean', 'Byte', 'Character', 'Semua jawaban benar', 'd', 1, 'REA'),
(104, 'Method yang menghasilkan nilai mutlak adalah ...', 'Publik static double max (double a, b)', 'Publik static double cell (double a)', 'Publik static double abs (double a)', 'Publik static double floor (double a)', 'c', 1, 'REA'),
(105, 'Class yang digunakan menggunakan array dan character disebut ...', 'Class math', 'Class string', 'Class string buffer', 'Class wrapper', 'b', 1, 'REA'),
(106, 'Nama lain dari istilah pewarisan adalah ...', 'Inheritance', 'Interface', 'Overriding', 'Overloading', 'a', 1, 'REA'),
(107, 'Tabel merupakan...', 'Informasi dalam bentuk baris dan kolom', 'Tulisan berjalan', 'Teks berjalan', 'Background', 'a', 1, 'REA'),
(108, 'Salah satu contoh dari web server adalah .', 'Apache dan HTML', 'HTML dan Xampp', 'Apache dan Xampp', 'Lightpad dan PHP', 'c', 1, 'REA'),
(109, ' Server, data base MY SQL, dan modul PHP merupakan beberapa paket dari ...', 'HTTP', 'PHP', 'SGML', 'HTML', 'b', 1, 'REA'),
(110, 'Server web yang digunakan dalam pemograman web berbasis server adalah ...', 'Apache ', 'Tag', 'Script', 'Xampp', 'a', 1, 'REA'),
(111, 'Implementasi sistem modul dari NodeJS merupakan fungsi dari ...', 'Username', 'Request', 'Require', 'Require', 'c', 1, 'REA');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_HR'),
(3, 'ROLE_INTERVIEWER'),
(4, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`) VALUES
(1, 'Nathaniel Ray Raharjo', 'nathaniel.raharjo@gmail.com'),
(2, 'Yosefa Oktaviana Dia', 'yosefadia27@gmail.com'),
(3, 'Olivia Michelle', 'michelleolivia301@gmail.com'),
(4, 'Novi Panna Vira', 'novipannavira@gmail.com'),
(5, 'Gunawan Zega', 'faktagunawanzega@gmail.com'),
(6, 'Jonathan Purnama Halim', 'jonathanpurnama13@gmail.com'),
(7, 'Willy Chrisna', 'willychrisna77@gmail.com'),
(8, 'Herul Syahwandi S', 'herul.syah@gmail.com'),
(9, 'Bachtiar Nur Yogi P', 'bachtiarnuryogipratama@gmail.com'),
(10, 'Muhamad Irfan Bernadius ', 'muhamadi7696@gmail.com'),
(11, 'Thomas Alva Edison', 'edison@gmail.com'),
(12, 'Albert Enstein', 'alenstein@gmail.com'),
(13, 'Ayana', 'ayana@gmail.com'),
(14, 'Groovy', 'groovy@gmail.com'),
(15, 'test name 2', 'test2222@email.com'),
(16, 'diaa', 'diadiadia@gmail.com'),
(17, 'yogigan', 'siapa@gmail.com'),
(18, 'siapa1', 'siapa1@gmail.com'),
(19, 'siapa2', 'siapa2@gmail.com'),
(20, 'burjoudinus', 'burjoudinus@gmail.com'),
(21, 'siapa3', 'siapa3@gmail.com'),
(22, 'siapa4', 'siapa4@gmail.com'),
(23, 'Kadang Bener', 'kadangbener@gmail.com'),
(24, 'ngetes', 'ngetes@gmail.com'),
(25, 'User', 'user@example.com'),
(26, 'percobaan', 'percobaan@gmail.co'),
(27, 'Ahmad', 'pratamyogiyogi1@gmail.com'),
(28, 'David Disini', 'bachtiarnuryogipratama1@gmail.com'),
(29, 'apa', 'apa@gmail.com'),
(30, 'p', 'p@gmail.com'),
(31, 'qq', 'q@gmail.com'),
(32, 'halo', 'halo@gmail.com'),
(33, 'Aji', 'pratamyogiyogi3@gmail.com'),
(34, 'Namaku Yogi', 'yogi12@gmail.com'),
(35, 'Sumanto', 'sumanto@gmail.com'),
(36, 'akusiapa', 'akukjhkhkh@gmail.com'),
(37, 'apa ya', 'darkchoco1008@gmail.com'),
(38, 'ini siapa', 'yosefadiaa20@gmail.com'),
(39, 'sapaaja', 'kkk@gmail.com'),
(40, 'test register', 'yosefadia20@gmail.com'),
(41, 'cobain lagi', 'yosefadia22@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(5) NOT NULL,
  `user` int(5) NOT NULL,
  `role` int(5) NOT NULL DEFAULT '4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user`, `role`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 4),
(5, 5, 3),
(6, 6, 2),
(7, 7, 1),
(8, 8, 2),
(9, 9, 1),
(10, 10, 4),
(11, 6, 1),
(12, 12, 4),
(13, 13, 4),
(14, 15, 4),
(15, 11, 4),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 4),
(22, 22, 4),
(23, 23, 4),
(24, 24, 4),
(25, 25, 4),
(26, 26, 4),
(27, 27, 4),
(28, 28, 4),
(29, 29, 4),
(30, 30, 4),
(31, 31, 4),
(32, 32, 4),
(33, 33, 4),
(34, 34, 4),
(35, 35, 4),
(36, 36, 4),
(37, 37, 4),
(38, 38, 4),
(39, 39, 4),
(40, 40, 4),
(41, 41, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_account` (`user`),
  ADD KEY `fk_role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
