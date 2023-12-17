-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 17, 2023 at 01:44 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_seo` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `album_name`, `album_seo`, `photo`, `is_active`) VALUES
(17, 'Album 1', 'album-1', 'album-1-1581343722711.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `photo`) VALUES
(5, 'Home', '999a6fae9968a1b4ef9c498c502c0d83.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`, `is_active`) VALUES
(6, 'Technology', 'technology', 'Y'),
(7, 'Gaming', 'gaming', 'Y'),
(8, 'Movie', 'movie', 'Y'),
(10, 'Science', 'science', 'Y'),
(11, 'Health', 'health', 'Y'),
(12, 'Finance', 'finance', 'Y'),
(13, 'Programming', 'programming', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `description`) VALUES
(1, 'About Me', 'Online news and article portal project, which aims to help programmers understand in the creation of projects as well as mastery of programming languages, libraries and frameworks.');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `gallery_seo` varchar(100) NOT NULL,
  `information` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `id_album`, `gallery_name`, `gallery_seo`, `information`, `photo`, `is_active`) VALUES
(9, 17, 'Galeri 2', 'galeri-2', 'LIfe is Strange', 'galeri-2-15815614412.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_address` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `web_name`, `web_address`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, 'ITS News Media', 'its_news_media.com', 'Latest Indonesia and World News Today, the Latest Most Complete Daily News Regarding Politics, Economy, Travel, Technology, Automotive, ...', 'its_news_media.com', 'c551664b65bad27d6b56ac71bfdd016f.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 'Setting Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 'Menu Setting', '', 'fas fa-fw fa-sliders-h', 'Y'),
(3, 'Article Management', '', 'fas fa-fw fa-newspaper', 'Y'),
(4, 'Media', '', 'fas fa-fw fa-photo-video', 'Y'),
(5, 'Visit Site', 'home', 'fas fa-fw fa-home', 'Y'),
(6, 'Logout', 'auth/logout', 'fa fa-power-off', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured` char(1) NOT NULL,
  `choice` char(1) NOT NULL,
  `thread` char(1) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `is_active`, `date`) VALUES
(100, '4 Tips Belajar Bahasa Inggris pakai ChatGPT buat Anak-anak', '4-tips-belajar-bahasa-inggris-pakai-chatgpt-buat-anak-anak', 'ChatGPT, sebuah chatbot yang ditenagai oleh kecerdasan buatan (AI), dapat digunakan untuk membantu anak-anak belajar Bahasa Inggris. Disarankan untuk menggunakan pertanyaan sederhana dalam Bahasa Inggris untuk bertanya kepada ChatGPT tentang hal-hal seperti cuaca dan hari-hari dalam seminggu. Anak-anak juga dapat berlatih menggunakan bentuk kata kerja, tata bahasa, dan kosakata dengan ChatGPT. Contohnya adalah dengan meminta ChatGPT untuk mencantumkan kata-kata kosakata untuk suatu topik atau memperbaiki contoh kalimat. Chatbot ini memberikan umpan balik tentang tata bahasa, ejaan, dan saran penggunaan kata. Ini memungkinkan anak-anak belajar secara interaktif sambil bersenang-senang saat berbicara. Orang tua disarankan untuk membimbing dan menemani anak-anak mereka selama pembelajaran Bahasa Inggris menggunakan ChatGPT.', 'N', 'N', 'N', 6, 'ab42717f74721d507b1f248ce8fad73b.png', 'Y', '2023-12-17'),
(101, 'Tecno Spark 20 Pro Meluncur dengan Kamera 108 MP dan Helio G99', 'tecno-spark-20-pro-meluncur-dengan-kamera-108-mp-dan-helio-g99', 'Tecno, merek smartphone di bawah Transsion Holdings, telah meluncurkan smartphone baru bernama Tecno Spark 20 Pro di pasar global. Spark 20 Pro hadir dengan spesifikasi yang lebih baik dibandingkan dengan ponsel seri Spark 20 lainnya seperti Spark 20C dan Spark 20 reguler. Perbedaan kunci adalah chipset - Spark 20 Pro menggunakan chip MediaTek Helio G99 6nm yang lebih kuat dibandingkan dengan Helio G85 pada Spark 20 reguler. Ini juga dilengkapi dengan kamera utama 108MP yang memiliki resolusi lebih tinggi dibandingkan dengan kamera 50MP pada Spark 20. Kedua ponsel ini memiliki baterai 5.000mAh. Spark 20 Pro hadir dalam empat warna dan memiliki harga 5.599 peso Filipina, sekitar $100.', 'N', 'N', 'N', 6, 'c56c112a56b18b5e7feadc2e5369c924.jpg', 'Y', '2023-12-17'),
(102, 'DJI Rilis Ronin 4D-8K, Kamera Sinema 8K dengan Gimbal dan LiDAR', 'dji-rilis-ronin-4d-8k-kamera-sinema-8k-dengan-gimbal-dan-lidar', 'DJI baru-baru ini memperkenalkan Ronin 4D-8K, kamera sinema all-in-one yang mengintegrasikan semua komponen dalam satu paket, mulai dari badan kamera, lensa, penyimpanan, pegangan, monitor hingga gimbal. Ronin 4D-8K bukanlah sepenuhnya baru karena merupakan kelanjutan dari Ronin 4D-6K yang diluncurkan pada Oktober 2021. Perbedaannya adalah gimbal kamera Zenmuse X9-8K yang ditingkatkan, yang kini dapat merekam video hingga 8K 75 fps. Selain unit kamera yang lebih baru, fitur Ronin 4D-8K identik dengan model sebelumnya. Ini dilengkapi dengan gimbal terintegrasi, fokus otomatis, filter ND, perekaman SSD, dan mendukung berbagai mount lensa. Harga kamera Zenmuse X9-8K saja mencapai $3,599, sementara paket lengkap Ronin 4D-8K dijual seharga $12,838.', 'N', 'N', 'N', 6, '42dc337a7152467a305492cacadf9638.jpg', 'Y', '2023-12-17'),
(103, '3 Fitur Baru Google Maps, Hapus Location History Lebih Leluasa', '3-fitur-baru-google-maps-hapus-location-history-lebih-leluasa', 'Google Maps sedang memperkenalkan tiga fitur baru yang memberikan pengguna lebih banyak kendali atas data dan privasi mereka. Pembaruan ini mencakup penyimpanan data timeline secara langsung pada perangkat pengguna daripada server Google, memudahkan penghapusan riwayat lokasi tertentu, dan memberikan lebih banyak kontrol atas fitur \"Blue Dot\" yang menunjukkan lokasi saat ini pengguna. Fitur timeline dan penghapusan bertujuan memberikan kendali kepada pengguna terhadap data mereka dengan memungkinkan penyimpanan pada perangkat dan penghapusan riwayat lokasi individu. Pembaruan Blue Dot akan memungkinkan pengguna untuk langsung mengaktifkan atau menonaktifkan layanan lokasi dan pelacakan riwayat dari dalam Maps. Fitur-fitur baru ini akan diperkenalkan secara bertahap di Android dan iOS tahun depan.', 'Y', 'N', 'Y', 6, '316d42c3b2687e1d714968f0a9267606.jpg', 'Y', '2023-12-17'),
(104, 'iOS 17.3 Bakal Bikin Maling iPhone Kerepotan', 'ios-17-3-bakal-bikin-maling-iphone-kerepotan', 'Apple telah merilis versi beta iOS 17.3 kepada para pengembang, memperkenalkan fitur keamanan baru yang disebut \"Perlindungan Perangkat yang Dicuri\" untuk mencegah pencuri iPhone. Lapisan keamanan tambahan ini memerlukan pengguna untuk mengautentikasi dengan Face ID atau Touch ID untuk tindakan seperti mengakses kata sandi iCloud atau mengaktifkan mode hilang ketika ponsel dicuri. Untuk tindakan yang sensitif seperti mengganti kata sandi Apple ID, fitur ini menambahkan penundaan satu jam setelah otentikasi. Ini bertujuan untuk mencegah pencuri mereset kata sandi atau menonaktifkan fitur keamanan jika mereka mencuri ponsel. Fitur ini diinspirasi oleh laporan kasus pencuri yang memata-matai korban untuk mempelajari kata sandi mereka sebelum mencuri iPhone mereka.', 'N', 'N', 'Y', 6, 'b597857b5d9be18b13be26ab444ea4ed.jpg', 'Y', '2023-12-17'),
(105, 'Geger! Developer Rusia Rilis Game yang Diejek Sedunia Lalu Gulung Tikar', 'geger-developer-rusia-rilis-game-yang-diejek-sedunia-lalu-gulung-tikar', 'Fntastic, pengembang game asal Rusia, mengumumkan penutupan operasinya setelah kegagalan game terbarunya, The Day Before. Game ini mendapat ulasan sangat negatif dari pemain karena masalah seperti tingkat yang rusak dan masalah server. Fntastic mengakui bahwa seluruh pendapatan yang diterima hanya mencukupi untuk membayar utang kepada mitra, dan mereka tidak mendapat keuntungan dari penjualan The Day Before. Mereka telah bekerja sama dengan penerbit Mytona dan Steam untuk memberikan pengembalian dana kepada pemain. Perusahaan meminta maaf karena tidak memenuhi ekspektasi, tetapi mengatakan bahwa membuat game sangat menantang. Ini merupakan pukulan setelah respons buruk terhadap The Day Before, dengan lebih dari 20.000 ulasan negatif di Steam karena dianggap sebagai penipuan. Masa depan The Day Before dan game lainnya sekarang tidak diketahui.', 'N', 'N', 'Y', 7, 'f7e3836ccf807dc664838c12ae52a23a.png', 'Y', '2023-12-17'),
(106, 'Trailer GTA 6 Akan Dirilis dalam Hitungan Hari, Catat Tanggalnya!', 'trailer-gta-6-akan-dirilis-dalam-hitungan-hari-catat-tanggalnya', 'Grand Theft Auto (GTA) 6 adalah salah satu game yang paling dinantikan. Setelah satu dekade menunggu, para penggemar GTA akhirnya akan dapat melihat rilis GTA 6 dalam waktu dekat. Rockstar Games, pengembang seri GTA, baru-baru ini mengumumkan bahwa trailer pertama untuk GTA 6 akan ditayangkan pada 5 Desember 2023 pukul 21.00 WIB. Meskipun Rockstar belum mengungkap tanggal rilis, rumor menyarankan bahwa pra-pemesanan mungkin dibuka pada tanggal 12 Desember. Trailer tersebut mungkin menampilkan Vice City dengan cara yang lebih mendalam. Bocoran juga mengindikasikan bahwa GTA 6 akan menyertakan protagonis perempuan untuk pertama kalinya. Rockstar telah mengembangkan GTA 6 selama beberapa tahun tetapi mengonfirmasikannya pada Februari 2022.', 'Y', 'Y', 'Y', 7, '0401a38d1ba0e16408a078a95def4613.jpeg', 'Y', '2023-12-17'),
(107, 'Ubisoft Rilis Update New Game Plus untuk Assassin\'s Creed: Mirage', 'ubisoft-rilis-update-new-game-plus-untuk-assassin-s-creed-mirage', 'Ubisoft mengumumkan bahwa pembaruan New Game Plus untuk Assassin\'s Creed: Mirage akan segera hadir. Meskipun mode permadeath ditunda hingga 2024, pemain masih dapat menikmati kisah Basim dengan perkembangan dan hadiah baru. Pembaruan ini memungkinkan pemain untuk melanjutkan perjalanan mereka dengan tingkatan level dan tantangan yang disesuaikan, memungkinkan penemuan detail tersembunyi dan eksplorasi yang lebih dalam. Tidak ada konten baru yang dijelajahi, tetapi hadiah baru seperti senjata, pakaian, dan barang koleksi menarik bagi pemain. Pembaruan New Game Plus dari Ubisoft memberikan kesempatan bagi pemain untuk lebih mendalami cerita yang kompleks dan dunia yang indah. Ini juga memberikan pengalaman yang lebih memuaskan untuk menjelajahi kembali dunia Mirage.', 'N', 'Y', 'Y', 7, '5710d1097812855c297e224ac119ec87.png', 'Y', '2023-12-17'),
(108, '10 Chambers Garap Game Heist Co-Op Den of Wolves, Bakal Rilis Duluan di PC', '10-chambers-garap-game-heist-co-op-den-of-wolves-bakal-rilis-duluan-di-pc', 'Pengembang game asal Swedia, 10 Chambers, sedang mengerjakan game perampokan kooperatif yang disebut Den of Wolves. Studio ini, yang dikenal melalui game seperti Payday: The Heist dan Payday 2, didirikan oleh Ulf Andersson, pencipta franchise Payday. Trailer untuk Den of Wolves dipamerkan di acara The Game Awards 2023, dengan kehadiran Andersson di atas panggung. Game ini juga akan menampilkan unsur fiksi ilmiah, memungkinkan pemain untuk meningkatkan kemampuan mereka.', 'N', 'N', 'N', 7, 'd52850e52d73b99ec974b6f4d78bd4a4.jpeg', 'Y', '2023-12-17'),
(109, 'Fntastic Tutup Usai Rilis The Day Before, Game MMO yang Gagal Penuhi Ekspektasi Gamer', 'fntastic-tutup-usai-rilis-the-day-before-game-mmo-yang-gagal-penuhi-ekspektasi-gamer', 'Fntastic, sebuah studio yang berbasis di Singapura, mengumumkan penutupannya setelah merilis game terbarunya, The Day Before. Perusahaan mengakui kegagalan finansial dan kekurangan dana untuk melanjutkan pengembangan game. Meskipun sangat dinantikan, The Day Before dengan cepat mendapatkan ulasan negatif dari para pemain, menyebabkan peringkatnya di Steam merosot. Fntastic telah berusaha untuk mengembangkan game tersebut, tetapi akhirnya harus menghentikan operasinya setelah delapan tahun.', 'N', 'N', 'N', 7, '7401729fc0e897c2c5033bfefe119aa4.png', 'Y', '2023-12-17'),
(110, 'Barbie dan Oppenheimer Jadi Film Paling Dicari 2023', 'barbie-dan-oppenheimer-jadi-film-paling-dicari-2023', 'Barbie dan Oppenheimer adalah dua film yang paling banyak dicari secara global pada tahun 2023, menurut laporan Year in Search dari Google. Ini tidak mengherankan karena kedua film tersebut telah menjadi fenomena global yang dikenal sebagai Barbeinheimer. Barbie menduduki peringkat teratas dalam daftar film yang paling banyak dicari di Google secara global tahun ini, diikuti oleh Oppenheimer, Jawan, Sound of Freedom, John Wick: Chapter 4, Avatar The Way of Water, Everything Everywhere All at Once, Gadar 2, Creed III, dan Pathaan. Laporan ini lebih lanjut menyoroti kesuksesan Barbie, yang sebelumnya dinobatkan sebagai film dengan pendapatan tertinggi pada tahun 2023, mengungguli The Super Mario Bros.', 'Y', 'N', 'Y', 8, '1e7ad953c3c8cf334f9a83f8b456f406.jpeg', 'Y', '2023-12-17'),
(111, 'Penantian Berakhir: Trailer Resmi Film Horor \'Ketika Malam Tiba\' Dirilis', 'penantian-berakhir-trailer-resmi-film-horor-ketika-malam-tiba-dirilis', 'Bagi pecinta film horor, kabar baik telah datang. Trailer resmi untuk film horor mendebarkan, \"Ketika Malam Tiba,\" baru saja dirilis, dan telah menimbulkan berbagai spekulasi dan antisipasi di kalangan penggemar. Dengan atmosfer yang gelap dan ketegangan yang terbangun dengan baik, film ini diharapkan menjadi salah satu film horor terbaik tahun ini. Para penggemar sudah tidak sabar untuk menyaksikan kisah misterius yang akan menghantui layar lebar.', 'N', 'N', 'N', 8, 'cdd3b7eeba2e0968a6cef04b417a4820.jpeg', 'Y', '2023-12-17'),
(112, 'Film Aksi Terbaru \'Pertarungan Abadi\' Mengguncang Box Office Dunia', 'film-aksi-terbaru-pertarungan-abadi-mengguncang-box-office-dunia', 'Film aksi terbaru, \"Pertarungan Abadi,\" mencuri perhatian penonton di seluruh dunia. Dengan koreografi aksi yang memukau dan cerita yang menghanyutkan, film ini berhasil meraih posisi puncak dalam tangga box office sejak hari pertama rilis. Para kritikus memuji penyutradaraan yang brilian dan penampilan gemilang para aktor utamanya. \"Pertarungan Abadi\" dianggap sebagai pencapaian besar dalam dunia perfilman aksi dan telah menjadi pembicaraan hangat di kalangan pecinta film.', 'N', 'N', 'N', 8, '8d98b341fe346b7f172155a859e85de7.jpg', 'Y', '2023-12-17'),
(113, 'Rahasia Produksi Film Animasi \'Petualangan Magis\' Terungkap', 'rahasia-produksi-film-animasi-petualangan-magis-terungkap', 'Belakangan ini, para penggemar film animasi mendapatkan wawasan eksklusif tentang produksi film terbaru, \"Petualangan Magis.\" Melalui wawancara dengan tim produksi, diketahui bahwa film ini memakan waktu lebih dari dua tahun untuk selesai, dengan penggunaan teknologi animasi terkini. Tim seniman dan animator bekerja keras untuk membawa karakter-karakter yang unik dan dunia fantasi yang memukau ke layar lebar. \"Petualangan Magis\" diharapkan menjadi puncak pencapaian dalam genre animasi dan menjadi favorit bagi semua kalangan penonton.', 'N', 'N', 'N', 8, 'dd008a7941d1556c9bd3a5b73d31d375.jpg', 'Y', '2023-12-17'),
(114, 'Avatar 3 Tayang 2025, James Cameron Beber Persiapan Film ke-4', 'avatar-3-tayang-2025-james-cameron-beber-persiapan-film-ke-4', 'Sutradara James Cameron telah mengungkapkan bahwa Avatar 3 akan dirilis sesuai jadwal pada Desember 2025. Ia menyatakan bahwa ini memungkinkan karena pengambilan gambar untuk film ketiga dilakukan secara bersamaan dengan Avatar: The Way of Water. Cameron juga menyebutkan bahwa rencana untuk Avatar 4 sedang dikembangkan, dengan fokus pada karakter-karakter muda yang akan mengalami lonjakan waktu yang signifikan dalam film keempat.', 'N', 'N', 'N', 8, '2d4d7a68b7a1841fc52f4989036f0a77.jpg', 'Y', '2023-12-17'),
(115, 'Penemuan Baru: Ilmuwan Temukan Planet Mirip Bumi di Galaksi Terdekat', 'penemuan-baru-ilmuwan-temukan-planet-mirip-bumi-di-galaksi-terdekat', 'Ilmuwan astronomi telah mengumumkan penemuan menarik: planet yang mirip dengan Bumi ditemukan di galaksi terdekat. Dengan ukuran dan kondisi atmosfer yang mendukung kehidupan, eksoplanet ini menjadi sorotan dalam penelitian astronomi. Para peneliti berharap bahwa penemuan ini dapat membuka jalan bagi pemahaman lebih lanjut tentang kemungkinan keberadaan kehidupan di luar tata surya kita.', 'N', 'N', 'N', 10, '8496b8c5c251d74e50dce4ba1ff76cab.jpg', 'Y', '2023-12-17'),
(116, 'Terobosan dalam Penelitian Kanker: Obat Baru Menunjukkan Efektivitas yang Menjanjikan', 'terobosan-dalam-penelitian-kanker-obat-baru-menunjukkan-efektivitas-yang-menjanjikan', 'Dalam sebuah langkah revolusioner, peneliti medis mengumumkan pengembangan obat baru yang menunjukkan efektivitas yang menjanjikan dalam pengobatan kanker. Melalui uji klinis awal, obat ini berhasil menghambat pertumbuhan sel kanker tanpa efek samping yang signifikan. Temuan ini diharapkan membuka jalan untuk pengobatan kanker yang lebih efektif dan kuratif di masa depan.', 'N', 'N', 'N', 10, '43b4a8b0728a812d94f82430098cd7f0.jpg', 'Y', '2023-12-17'),
(117, 'Eksplorasi Terbaru di Mars: Penemuan Jejak Air yang Membuka Misteri', 'eksplorasi-terbaru-di-mars-penemuan-jejak-air-yang-membuka-misteri', 'Rover terbaru yang dikirim ke Mars telah mengungkap temuan luar biasa: jejak air yang dapat mengindikasikan adanya kehidupan di masa lalu. Penemuan ini membawa kita satu langkah lebih dekat dalam mencari tahu apakah planet merah ini memiliki sejarah kehidupan yang lebih kompleks. Para ilmuwan sangat bersemangat dengan temuan ini dan merencanakan lebih banyak eksplorasi untuk mengungkap misteri Mars.', 'N', 'N', 'N', 10, '90dd2416b278cb6a5ad90089cd145d79.jpg', 'Y', '2023-12-17'),
(118, 'Inovasi Baru dalam Energi Terbarukan: Sel Surya Fleksibel yang Mampu Menyimpan Energi Lebih Banyak', 'inovasi-baru-dalam-energi-terbarukan-sel-surya-fleksibel-yang-mampu-menyimpan-energi-lebih-banyak', 'Dalam terobosan terbaru di bidang energi terbarukan, para peneliti mengumumkan pengembangan sel surya fleksibel yang tidak hanya efisien dalam menghasilkan energi, tetapi juga mampu menyimpan energi lebih banyak daripada teknologi sebelumnya. Inovasi ini diharapkan dapat mempercepat adopsi energi terbarukan di seluruh dunia dan mengurangi ketergantungan pada sumber daya energi fosil.', 'N', 'N', 'N', 10, '8a83092e262d8aefd3d8454c8e0d077e.jpg', 'Y', '2023-12-17'),
(119, 'Perangkat AI Terbaru Mampu Memprediksi Perubahan Cuaca dengan Tingkat Akurasi 99%', 'perangkat-ai-terbaru-mampu-memprediksi-perubahan-cuaca-dengan-tingkat-akurasi-99', 'Dalam terobosan yang mengagumkan, peneliti di bidang kecerdasan buatan mengembangkan perangkat AI canggih yang mampu memprediksi perubahan cuaca dengan tingkat akurasi mencapai 99%. Dengan menggunakan data besar dan model pembelajaran mendalam, perangkat ini diharapkan dapat memberikan peringatan dini untuk bencana alam dan membantu masyarakat lebih baik menghadapi perubahan cuaca ekstrem.', 'Y', 'N', 'N', 10, 'a6d0de7b05a4b621511fb3e2206b15da.jpg', 'Y', '2023-12-17'),
(120, 'Terapi Gen: Menembus Batas Baru dalam Pengobatan Penyakit Genetik Langka', 'terapi-gen-menembus-batas-baru-dalam-pengobatan-penyakit-genetik-langka', 'Dalam perkembangan medis terkini, terapi gen telah berhasil menunjukkan keberhasilan luar biasa dalam pengobatan penyakit genetik langka. Pasien-pasien yang sebelumnya tidak memiliki opsi pengobatan kini melihat harapan baru dalam terapi gen yang dapat memperbaiki kerusakan genetik secara langsung. Temuan ini menjadi tonggak penting dalam upaya mencari solusi untuk penyakit genetik yang sulit diobati.', 'N', 'N', 'N', 11, 'a54366df7ce2e20d67b8bdbc7931484d.jpg', 'Y', '2023-12-17'),
(121, 'Pentingnya Olahraga untuk Kesehatan Mental: Studi Ungkap Hubungan Positif', 'pentingnya-olahraga-untuk-kesehatan-mental-studi-ungkap-hubungan-positif', 'Studi terbaru dalam bidang kesehatan mental menyoroti hubungan positif antara olahraga dan kesejahteraan mental. Penelitian menunjukkan bahwa aktivitas fisik secara signifikan dapat mengurangi risiko gangguan mental dan meningkatkan kesehatan otak. Informasi ini diharapkan dapat meningkatkan kesadaran masyarakat akan pentingnya menjaga kesehatan fisik dan mental secara bersamaan.', 'Y', 'N', 'Y', 11, '7e0417686fd7650521e26ad817b9dfb6.jpg', 'Y', '2023-12-17'),
(122, 'Perkembangan Vaksin Terbaru: Perlindungan Efektif Terhadap Varian Virus yang Berkembang', 'perkembangan-vaksin-terbaru-perlindungan-efektif-terhadap-varian-virus-yang-berkembang', 'Dalam langkah besar dalam mengatasi pandemi, peneliti telah mengumumkan pengembangan vaksin terbaru yang efektif melawan varian-viran virus yang berkembang. Klinis awal menunjukkan bahwa vaksin ini mampu memberikan perlindungan yang kuat dan dapat membantu mengurangi dampak pandemi secara global. Para ahli berharap bahwa vaksin ini dapat menjadi senjata utama dalam melawan perubahan virus yang terus-menerus.', 'N', 'N', 'N', 11, '56d97aa18e8dd06ce81bc079075e03b5.jpg', 'Y', '2023-12-17'),
(123, 'Ketahui Manfaat Senam Kaki Diabetes dan Cara Melakukannya', 'ketahui-manfaat-senam-kaki-diabetes-dan-cara-melakukannya', 'Menurut Kementerian Kesehatan RI, senam kaki diabetes melitus adalah latihan yang disarankan untuk para penderita diabetes agar meminimalisir terjadinya luka pada kaki. Saat melakukan senam kaki diabetes, Anda akan merangsang aliran darah menjadi lebih lancar, sehingga nutrisi dapat menyebar ke jaringan kaki dengan lebih baik. Latihan ini juga dapat memperkuat otot-otot kecil kaki dan mencegah terjadinya kelainan bentuk kaki (deformitas) Alhasil, senam kaki diabetes akan meminimalisir terjadi luka dan mempercepat penyembuhan luka yang sudah ada.', 'N', 'N', 'N', 11, '38ba65f6aade7c30413866761f149b85.jpg', 'Y', '2023-12-17'),
(124, 'Ahli Jelaskan Gejala Covid-19 Terbaru Mirip Flu', 'ahli-jelaskan-gejala-covid-19-terbaru-mirip-flu', 'akar dari Perhimpunan Dokter Spesialis Paru Indonesia Prof. Dr. dr. Erlina Burhan, Msc, Sp.P (K) menyebutkan gejala Covid-19 terbaru mirip dengan penyakit flu yang biasa menyerang di musim pancaroba.  Hal itu disampaikan dokter yang akrab disapa Erlina ini saat berbincang di siaran langsung siniar Kementerian Kesehatan berjudul Sudah Muncul Mycoplasma Pneumonia, Disusul Kasus Covid Naik.', 'N', 'N', 'N', 11, '62b46c0799f06a4faf090f4215deda48.png', 'Y', '2023-12-17'),
(125, 'Tingkatkan Literasi Keuangan, Nanovest Ajak Penyandang Disabilitas', 'tingkatkan-literasi-keuangan-nanovest-ajak-penyandang-disabilitas', 'Penyedia platform investasi, PT Tumbuh Bersama Nano (Nanovest) mengundang 53 orang penyandang disabilitas berusia produktif antara 17 hingga 32 tahun untuk berbagi ilmu tentang personal branding, content creation, dan mindfulness dalam acara Nanobilites Unleashed. Acara itu dalam rangka memperingati Hari Disabilitas Internasional, dan berlangsung pada tanggal 2 dan 9 Desember 2023 di Jakarta. Kegiatan ini bertujuan bukan hanya untuk memberikan pengetahuan baru, tetapi diharapkan juga turut serta membantu memberdayakan peserta dengan pengetahuan praktis yang relevan untuk karier dan kehidupan sehari-hari.', 'N', 'N', 'Y', 12, '058af39613fa15442fd12ef1970eb6c8.jpg', 'Y', '2023-12-17'),
(126, 'Tips Manifestasikan Uang di Kehidupan agar Kaya', 'tips-manifestasikan-uang-di-kehidupan-agar-kaya', 'Manifestasi adalah alat yang ampuh yang memungkinkan Anda memanfaatkan pikiran, niat, dan tindakan untuk menarik kekayaan ke dalam hidup Anda. Prosesnya dimulai dengan perubahan pola pikir atau percaya pada kemungkinan mencapai kekayaan dan menyadari bahwa hal itu sudah dekat. Anda bisa mengubah situasi keuangan Anda dan menyelaraskan Anda dengan kelimpahan yang Anda inginkan.', 'N', 'N', 'Y', 12, 'b6cc8e290853258f99f038b9ac26bf4d.jpg', 'Y', '2023-12-17'),
(127, 'TIFA Perkirakan Bisnis Pembiayaan Lesu di 2019', 'tifa-perkirakan-bisnis-pembiayaan-lesu-di-2019', 'PT Tifa Finance Tbk (TIFA) menargetkan pertumbuhan pembiayaan moderat di tahun depan, hanya berkisar 5%-10% sama dengan target pertumbuhan di tahun ini. Alasannya, industri pembiayaan diperkirakan melambat di tahun depan. Direktur Utama Tifa Finance Bernard Thien Ted Nam mengatakan sepanjang semester pertama tahun depan akan terjadi pelemahan pembiayaan, salah satunya karena faktor ketidakpastian ekonomi.', 'N', 'N', 'N', 12, '94d38e1ca828a41d9a34cce1f7c368d5.jpeg', 'Y', '2023-12-17'),
(128, 'Dongkrak Kinerja, Bank BCA (BBCA) Perkuat Performa SDM', 'dongkrak-kinerja-bank-bca-bbca-perkuat-performa-sdm', 'PT Bank Central Asia Tbk. (BBCA) memperkuat performa sumber daya manusia (SDM) untuk mendongkrak kinerja perusahaan. Executive Vice President Human Capital Management BCA Rudi Lim mengatakan pihaknya mendorong pertumbuhan dan menggali potensi terbaik SDM, agar setiap individu dapat mencapai puncak potensinya sehingga memberikan pelayanan terbaik bagi nasabah.', 'N', 'N', 'N', 12, '04aba0da14eec0387c30197e9919e455.jpg', 'Y', '2023-12-17'),
(129, 'Main Judi Online? Siap-siap Rekeningnya Diblokir Bank!', 'main-judi-online-siap-siap-rekeningnya-diblokir-bank', 'Bisnis ilegal judi online di dalam negeri masih sangat marak terjadi. Karena itu, Otoritas Jasa Keuangan (OJK) meminta bank memblokir rekening yang ketahuan menyetor uang dari aktivitas judi online. Kepala Eksekutif Pengawas Perbankan OJK Dian Ediana Rae mengatakan dalam tiga bulan terakhir pihaknya sudah meminta bank memblokir ribuan rekening yang berkaitan dengan judi online. OJK juga meminta bank lebih waspada terhadap aktivitas transaksi yang berkaitan dengan judi online.', 'Y', 'Y', 'Y', 12, '3b71a2d19f78337175902888345f924f.jpg', 'Y', '2023-12-17'),
(130, 'Cerita Putri, Peraih IPK 4 dari ITS yang Dulu Tak Paham Coding Sama Sekali', 'cerita-putri-peraih-ipk-4-dari-its-yang-dulu-tak-paham-coding-sama-sekali', 'Mendapatkan Indeks Prestasi Kumulatif (IPK) sempurna bisa jadi merupakan keinginan dari setiap mahasiswa. Hal tersebut berhasil diraih oleh Dyah Putri Nariswari, wisudawan Institut Teknologi Sepuluh Nopember (ITS) yang berhasil mendapat IPK 4,00. Mahasiswa yang akrab disapa Putri ini menjadi wisudawan terbaik di wisuda ITS ke-128. Walau akhirnya meraih IPK sempurna, Putri mengaku tertinggal dari teman-temannya di masa awal perkuliahan.', 'Y', 'N', 'N', 13, '41b07c0981e4a007339e06172d35997a.jpeg', 'Y', '2023-12-17'),
(131, 'Mau RI Jadi Negara Maju? Anak Harus Ngerti Bahasa Coding', 'mau-ri-jadi-negara-maju-anak-harus-ngerti-bahasa-coding', 'Indonesia mempunyai cita-cita bisa merayakan hari jadi ke-100 tahun dengan menyandang sebagai Negara Maju pada 2045. Salah satu cara tercepat untuk meraih itu, menurut pemerintah adalah dengan mengenalkan anak-anak sejak dini bahasa pemrograman atau coding. Menteri Perencanaan Pembangunan Nasional/Kepala Bappenas Suharso Monoarfa mengatakan, cara paling cepat untuk bisa mencapai Indonesia menjadi negara maju adalah dengan mematangkan konsep pembangunan green economy dan tak kalah penting adalah menyiapkan sumber daya manusia (SDM).', 'N', 'Y', 'Y', 13, '889779e603953cb0159bd9ff1d11feae.jpeg', 'Y', '2023-12-17'),
(132, 'Tertarik Menjadi Programmer tapi Tidak Punya Latar Belakang IT? Onetwocode Punya Solusinya', 'tertarik-menjadi-programmer-tapi-tidak-punya-latar-belakang-it-onetwocode-punya-solusinya', 'Sistem bekerja dari jarak jauh (remote working), baik work from home (WFH) maupun work from anywhere (WFA), telah menjadi tren selama dua tahun terakhir. Situasi ini menyadarkan banyak orang bahwa bekerja tidak harus dari kantor. Terlebih lagi, pada era digital saat ini, kecanggihan teknologi semakin memudahkan seseorang untuk menyelesaikan pekerjaan dari mana saja. Era digital dan tren remote working membawa efek domino berupa peningkatan minat untuk menjadi freelancer.', 'N', 'N', 'N', 13, '2c38cd85ddc96feff42369184f3fec6b.jpg', 'Y', '2023-12-17'),
(133, 'Phyton Jadi Bahasa Programming Paling Populer di Dunia', 'phyton-jadi-bahasa-programming-paling-populer-di-dunia', 'Perusahaan yang mengkhususkan diri untuk menilai dan melacak kualitas kode software, Tiobe merilis peringkat 10 bahasa pemograman paling populer di dunia untuk  Oktober 2021. Dalam laporan bertajuk \"Tiobe Programming Community index\", Phyton dinobatkan sebagai bahasa programming terpopuler di dunia saat ini. Mengalahkan bahasa pemrograman C, Java, C++, C#, dan lainnya. Bagi Tiobe, hasil tersebut tergolong menarik. Sebab, selama ini perusahaannya melihat bahasa pemrograman selalu didominasi oleh Java dan C, dalam beberapa tahun terakhir ini.', 'N', 'N', 'N', 13, '0aa9480bbaa7d6b823ea6204cdd89b8e.jpg', 'Y', '2023-12-17'),
(134, 'Belajar Sambil Bermain, Pengalaman Coding Interaktif untuk Anak ala SPE Solution', 'belajar-sambil-bermain-pengalaman-coding-interaktif-untuk-anak-ala-spe-solution', 'PT Solusi Pembayaran Elektronik (SPE Solution) menyelenggarakan acara “Coding For Kids” pada Minggu (26/11/2023) bertempat di Hotel Mercure Alam Sutera. Rangkaian kegiatan yang diisi dengan pengenalan coding melalui games interaktif untuk anak–anak ini bertujuan memberikan kesempatan kepada peserta untuk belajar coding melalui metode belajar sambil bermain. Pada era digital saat ini pemahaman akan teknologi telah menjadi bagian integral dari kehidupan sehari hari tidak hanya untuk orang dewasa bahkan untuk dikenalkan kepada anak–anak. Pengenalan akan konsep coding sebagai bahasa pemrograman menjadi salah satu upaya dalam memberikan pemahaman kepada anak-anak tentang bagaimana teknologi beroperasi di sekitar mereka.', 'N', 'N', 'Y', 13, '113470e817dd35d319888b430ed99f44.jpg', 'Y', '2023-12-17'),
(135, 'Belajar Sambil Bermain, Pengalaman Coding Interaktif untuk Anak ala SPE Solution', 'belajar-sambil-bermain-pengalaman-coding-interaktif-untuk-anak-ala-spe-solution', 'PT Solusi Pembayaran Elektronik (SPE Solution) menyelenggarakan acara “Coding For Kids” pada Minggu (26/11/2023) bertempat di Hotel Mercure Alam Sutera. Rangkaian kegiatan yang diisi dengan pengenalan coding melalui games interaktif untuk anak–anak ini bertujuan memberikan kesempatan kepada peserta untuk belajar coding melalui metode belajar sambil bermain. Pada era digital saat ini pemahaman akan teknologi telah menjadi bagian integral dari kehidupan sehari hari tidak hanya untuk orang dewasa bahkan untuk dikenalkan kepada anak–anak. Pengenalan akan konsep coding sebagai bahasa pemrograman menjadi salah satu upaya dalam memberikan pemahaman kepada anak-anak tentang bagaimana teknologi beroperasi di sekitar mereka.', 'N', 'N', 'Y', 13, '3c4950a2bd4dc3350b9fcdec33576efe.jpg', 'Y', '2023-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `id_menu`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Web Identity', 'admin/identity', 'Y'),
(2, 1, 'Contact', 'admin/contact', 'Y'),
(3, 2, 'Main Menu', 'admin/menu', 'Y'),
(4, 2, 'Sub Menu', 'admin/submenu', 'Y'),
(5, 3, 'Category', 'admin/category', 'Y'),
(6, 3, 'Add Post', 'admin/posting', 'Y'),
(7, 4, 'Album', 'admin/album', 'N'),
(8, 4, 'Photo Gallery', 'admin/gallery', 'N'),
(10, 4, 'Banner', 'admin/banner', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$QUM2OeQCZclQqJIhZKKMt.Aq8dA3Y7eIzjtXsyr.xuE0kDjfj8SLS', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1702819674, 1, 'Will', 'Williams', 'CodeAstro', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(37, 1, 1),
(38, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
