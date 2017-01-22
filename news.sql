-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2017 at 02:55 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tema` varchar(200) NOT NULL,
  `tema_seo` varchar(200) NOT NULL,
  `isi_agenda` text NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `username`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `gambar`) VALUES
(1, 'admin', 'Avril Lavigne Tour 2014', 'avril-lavigne-tour-2014', '<p>Avril Lavigne berencana menggelar konser di Ibu Kota pada Maret 2014. Meski masih beberapa bulan lagi, Marygops selaku promotor konser sudah mengumumkan kabar tersebut.</p>\r\n<p>Avril Ramona Lavigne atau Avril Lavigne merupakan penyanyi kelahiran Kanada yang memulai debut kariernya di dunia musik pada 2002 silam. Ia melejit lewat lagu-lagu populernya seperti I&rsquo;m With You dan SK8er Boy. Sukses melanjutkan kariernya di indsutri musik dunia, Avril terus melahirkan single yang mudah diterima oleh pendengar, seperti When You&rsquo;re Gone, Keep Holding On, dan Wish You Were Here.</p>\r\n<p>Kedatangannya ke Indonesia menjadi istimewa karena Lavigne akan membawakan lagu-lagu teranyarnya. Lagu-lagu terbarunya antara lain berjudul Rock and Roll dan juga Let Me Go, lagu yang dinyanyikan duet dengan suaminya, Chad Kroeger yang dinikahinya Juli 2013 lalu. Lagu-lagu tersebut baru saja dirilis pada 4 November 2013 kemarin.</p>', 'Istora Senayan Jakarta', 'Indra (081843092580)', '2014-03-23', '2014-03-23', '2014-03-20', '20.00 WIB s/d Selesai', '9avril.jpg'),
(2, 'admin', 'Workshop Rahasia Inti Master PHP dan MySQLi (improved)', 'workshop-rahasia-inti-master-php-dan-mysqli-improved', '<p>Materi workshop diambil dari buku BEST SELLER Rahasia Inti Master PHP dan MySQLi (improved) yang dibawakan langsung oleh penulisnya, yaitu Lukmanul Hakim.</p>', 'Inixindo Jogja', 'Enda (08192839849)', '2014-04-14', '2014-04-16', '2014-03-20', '08.00 s/d 12.00 WIB', '93rahasiainti.jpg'),
(3, 'admin', 'Taylor Swift RED Tour Concert', 'taylor-swift-red-tour-concert', '<p>Konser perdana Taylor Swift di Indonesia adalah bagian dari Taylor Swift RED Tour Concert di Asia Tenggara. Taylor akan memainkan berbagai alat musik, mengenakan kostum unik serta tampil di berbagai berbeda di dalam lokasi konser.</p>\r\n<p>Kunjungan Taylor Swift ke Indonesia, sebagai tanda resmi peluncuran rasa baru es krim Walls Cornetto, yaitu Cornetto Black Forest RED.</p>', 'Istora Senayan Jakarta', 'Dira (08539045890)', '2014-06-04', '2014-06-04', '2014-03-29', '20.00 WIB s/d Selesai', '45Taylor-Swift.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(3) NOT NULL,
  `nama_album` varchar(100) NOT NULL,
  `album_seo` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `album_seo`, `gambar`, `aktif`) VALUES
(1, 'Bayi Imut', 'bayi-imut', '10imutbayi.jpg', 'Y'),
(2, 'Koleksi Kartun', 'koleksi-kartun', '97X-men-wolverine-Minion1.jpg', 'Y'),
(3, 'Funny Picture', 'funny-picture', '41fishface.jpg', 'Y'),
(4, 'Amazing Picture', 'amazing-picture', '92iceskating.jpg', 'Y'),
(5, 'Mobil Mewah', 'mobil-mewah', '67ferrari.jpg', 'Y'),
(6, 'Bangunan Bersejarah', 'bangunan-bersejarah', '85taj.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(3) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `link`, `aktif`, `gambar`) VALUES
(3, 'Teras Kreasi', 'http://teraskreasi.com', 'Y', '87teraskreasi.jpg'),
(4, 'Cauza Multimedia Creatifa', 'http://cauza.web.id', 'Y', '24cauza-multimedia-creatifa.jpg'),
(5, 'Pelangi Samudera International', 'http://bukulokomedia.com', 'Y', '89pelangi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `BeritaId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`BeritaId`, `title`, `category`, `image`, `Content`) VALUES
(1, 'asdasdsadsa', 'Hype', 'photo/20161222120745AM_pexel3.jpg', 'asssssssssssssssssss'),
(2, 'admin', 'tech', 'photo/20161222120745AM_pexel3.jpg', 'aaaaaaaaaaaaaaaaaaaaa'),
(3, 'admin4', 'sport', 'photo/20161222120745AM_pexel3.jpg', 'qqqqqqqqqqqqqqqqqqqq'),
(4, 'admin3', 'Hype', 'photo/20161222120745AM_pexel3.jpg', 'aaaaaaaaaaa'),
(5, 'admin2', 'sport', 'photo/20161222120745AM_pexel3.jpg', 'asdsdadsadsadsada'),
(6, 'admin1', 'life', 'photo/20161222120745AM_pexel3.jpg', 'qq'),
(7, 'asdasdsadsa', 'sport', 'photo/20161222120745AM_pexel3.jpg', 'asdasdsadsads'),
(8, 'asdasdad', 'tech', 'photo/20161222120745AM_pexel3.jpg', 'asdsad'),
(15, 'asdasdad', 'sport', 'photo/20161222012728AM_pexel3.jpg', 'asdadasdsad'),
(16, 'qqqqqqqqqq', 'tech', 'photo/20161222014015AM_pexel2.jpg', 'qqqqqqqqqqqqqqqqqqqqqqq'),
(17, 'aaaaaaaaaaaaa', 'Hype', 'photo/20161222014015AM_pexel2.jpg', 'qqq'),
(18, 'asdasd12', 'Hype', 'photo/20161222014015AM_pexel2.jpg', 'asdadasdasdas');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserId` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL DEFAULT 'Member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `firstname`, `email`, `password`, `Role`) VALUES
(1, 'henry', 'henry@gmail.com', 'asd', 'Member'),
(2, 'admin', 'admin@admin.com', 'asdasd', 'Admin'),
(3, 'asd', 'asdasd@gmail.com', 'asd', 'Admin'),
(4, 'hendry123', 'hendry123@gmail.com', 'asd123', 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`BeritaId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `BeritaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
