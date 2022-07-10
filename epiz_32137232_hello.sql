-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql105.byetcluster.com
-- Waktu pembuatan: 10 Jul 2022 pada 05.22
-- Versi server: 10.3.27-MariaDB
-- Versi PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_32137232_hello`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id_cart`, `user_id`, `product_id`, `banyak`, `total`) VALUES
(81, 16, 38, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`) VALUES
(1, 'Sweater', 'sweater'),
(2, 'Kaos', 'kaos'),
(3, 'Celana', 'celana'),
(4, 'Sepatu', 'sepatu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `drivers`
--

CREATE TABLE `drivers` (
  `id_driver` int(11) NOT NULL,
  `name_driver` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `no_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `drivers`
--

INSERT INTO `drivers` (`id_driver`, `name_driver`, `email`, `password`, `phone_number`, `jurusan`, `no_pegawai`) VALUES
(7, 'Anggoro', 'tgranggoro@gmail.com', '$2y$10$4uXd6J/mltdj5QuwUzfhf.rHDUrsAiwCo9jvrdjt/.1QiQjZ6G4u2', '08573027383030', 'JAKARTA', 12344);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `unit`, `price`, `descriptions`, `category_id`, `stock`) VALUES
(1, 'Sweater Adidas', 50, '120000', '<p>Sweater Adida original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '49000'),
(2, 'Jeans', 40, '80000', '<p>Jeans&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '50000'),
(3, 'Kaos', 20, '110000', '<p>Kaos original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '0'),
(4, 'Sepatu', 10, '200000', '<p>Sepatu original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '50000'),
(15, 'Kaos Couple', 18, '80000', '<p>Kaos Puma&nbsp;&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '50000'),
(16, 'Kaos V neck', 20, '70000', '<p>Kaos V Neck&nbsp;Polos, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai/p>\r\n', 2, '49000'),
(17, 'Kaos Polos', 30, '90000', '<p>Kaos Polos&nbsp;&nbsp; dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai </p>\r\n', 2, '50000'),
(19, 'Baju Berkerah', 40, '1200000', '<p>Baju Berkerah&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '50000'),
(20, 'Topi Polos', 11, '150000', '<p>Topi Polos&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '50000'),
(21, 'Sepatu Nike', 25, '2500000', '<p>Sepatu Nike&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '49000'),
(22, 'Sepatu Adidas', 40, '350000', '<p>Sepatu Adidas&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '50000'),
(23, 'Sepatu EA7', 50, '180000', '<p>Sepatu EA7&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '50000'),
(24, 'Sepatu Kulit', 55, '210000', '<p>Sepatu Caterpillar&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '50000'),
(25, 'Sepatu Converse Putih', 20, '350000', '<p>Sepatu Converse Putihh&nbsp;original, dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '50000'),
(26, 'Celana Kulot Polos', 14, '200000', '<p>Celana Kulot Polos&nbsp;original, ddengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '50000'),
(27, 'Celana Jean Bolong', 22, '140000', '<p>Celana Jean Bolong&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '50000'),
(28, 'Celana Bahan Polos', 44, '130000', '<p>Celana Bahan Polos&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '50000'),
(29, 'Tas Polos', 23, '110000', '<p>Tas Polos&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '50000'),
(30, 'Sweater Kartun', 5, '90000', '<p>Sweater Kartun&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '50000'),
(31, 'Sweater Rajut', 7, '135000', '<p>Sweater Rajut&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '50000'),
(32, 'Sweater Polos', 10, '110000', '<p>Sweater Polos&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '50000'),
(33, 'Celana Training Polos', 23, '120000', '<p>Celana Training Polos&nbsp;dengan desain pribadi dan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '50000'),
(34, 'Sweater Batik', 1000, '110000', '<p>Sweater Batik&nbsp;Original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '241');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_galleries`
--

CREATE TABLE `products_galleries` (
  `id_gallery` int(11) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products_galleries`
--

INSERT INTO `products_galleries` (`id_gallery`, `photos`, `product_id`) VALUES
(1, '62b8ada1853dc.jpg', 1),
(12, 'jeans.jpg', 2),
(22, '62b8bae596694.jpg', 3),
(23, 'brand-sepatu-lokal-unisex-4.jpeg', 4),
(33, 'e59c4745721ad5e8f7a2ea1f53fcc064.jpg', 13),
(34, 'images.jpg', 14),
(35, 'a578c310dc9281cbfe3748edb66f49d9.jpg', 15),
(36, '2899349_cfce471d-0955-4976-a423-dff3fdecc69e.jpg', 16),
(37, 'kaos.png', 17),
(38, '932322125.jpg', 18),
(39, 'ho-21-navy-.1638154171.jpg', 19),
(40, '163299131815144233876155785605e606155785605e63.jpg', 20),
(41, 'Sepatu Nike Pria Casual Sport Olahraga Code-8.jpg', 21),
(42, 'Adidas.jpg', 22),
(43, 'Sf78a7eef2799434bb67533ab79dd592bN.jpg', 23),
(44, 'download.jpg', 24),
(45, '1bf88ac685d2f86c10e0bda8dc317ed0.png', 25),
(46, 'no_brand_kulot_polos_celana_panjang_wanita_full21_e8ke7gid.jpg', 26),
(47, '0603f874-58fc-4e36-a087-6cfe8e59d181_169.jpeg', 27),
(48, '62b8be004bc6c.jpg', 28),
(49, 'Tote_Bag_sexy_girl.jpg', 29),
(50, 'kisspng-sweater-cartoon-clip-art-vector-creative-christmas-sweater-5aa1f1e0275e56.1639008315205626561613.jpg', 30),
(51, 'Sweater-Rajut-Wanita-Dewasa-Terbaik.jpg', 31),
(52, '683094_XKB72_9750_001_100_0000_Light-Gucci-Pineapple-cotton-sweater.jpg', 32),
(53, 'a6e92727-a928-4444-b451-4c488bfba90e.jpg', 33),
(54, 'sweater_batik_1593306911_7f9b0cc7_progressive.jpg', 34);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening_numbers`
--

CREATE TABLE `rekening_numbers` (
  `id_rekening` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `rekening_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rekening_numbers`
--

INSERT INTO `rekening_numbers` (`id_rekening`, `bank_name`, `number`, `rekening_name`) VALUES
(1, 'BCA', '0831939783', 'Wawan Santoso'),
(2, 'Mandiri', '081775288291', 'Bambang Dermawan'),
(3, 'BNI', '0002816512', 'Sarah Menanti'),
(5, 'BRI', '09297267187', 'Jessica');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rekening_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `weight_total` int(11) NOT NULL,
  `delivered` int(11) NOT NULL,
  `photo_transaction` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `time_arrived` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id_transaction`, `user_id`, `total_price`, `city`, `rekening_id`, `transaction_status`, `weight_total`, `delivered`, `photo_transaction`, `code`, `receiver`, `time_arrived`, `created_at`) VALUES
(1, 3, 260000, 'JAKARTA', 3, 'TERKIRIM', 4000, 0, '600d9b95c0711.jpg', 'EZM-57924', '', NULL, '2021-01-25 04:08:32'),
(2, 6, 200000, 'JAKARTA', 1, 'TERKIRIM', 4000, 0, '600d9c6b4e0d8.jpg', 'EZM-9366', '', NULL, '2021-01-25 04:12:13'),
(3, 9, 560000, 'JAKARTA', 1, 'KONFIRMASI', 3000, 0, '600e62cb73e61.png', 'EZM-86335', '', NULL, '2021-01-25 18:17:49'),
(4, 6, 100000, 'JAKARTA', 2, 'KONFIRMASI', 1000, 0, '600eba552a23c.png', 'EZM-81471', '', NULL, '2021-01-26 00:31:43'),
(5, 3, 218000, 'JAKARTA', 2, 'BELUM KONFIRMASI', 6000, 0, '6010cc60e12da.png', 'EZM-51571', '', NULL, '2021-01-26 01:06:50'),
(6, 9, 370000, 'JAKARTA', 1, 'TERKIRIM', 10000, 1, '6010ce5c5fc7f.png', 'EZM-98816', 'Mumun', '2021-01-27 17:26:45', '2021-01-27 14:21:26'),
(7, 14, 120000, 'TANGERANG', 5, 'TERKIRIM', 1000, 0, '62b8decd6d96a.jpg', 'EZM-10471', 'kontrakan', '2022-06-27 09:36:20', '2022-06-27 09:29:52'),
(8, 14, 200000, 'DEPOK', 1, 'TERKIRIM', 1000, 0, '62b8e1b73497c.png', 'EZM-669', 'kontrakan', '2022-06-27 09:49:26', '2022-06-27 09:45:46'),
(9, 14, 80000, 'DEPOK', 1, 'TERKIRIM', 1000, 0, '62b8e2f6dffee.jpg', 'EZM-25919', 'aji', '2022-06-27 09:54:27', '2022-06-27 09:51:15'),
(10, 13, 30000, 'JAKARTA', 1, 'TERKONFIRMASI', 1000, 0, '62b8e63de35a5.jpg', 'EZM-79048', '', NULL, '2022-06-27 10:05:08'),
(11, 17, 70000, 'JAKARTA', 1, 'BELUM KONFIRMASI', 0, 0, '', 'EZM-70399', '', NULL, '2022-07-10 07:48:34'),
(12, 17, 120000, 'JAKARTA', 1, 'BELUM KONFIRMASI', 0, 0, '', 'EZM-93867', '', NULL, '2022-07-10 07:50:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions_details`
--

CREATE TABLE `transactions_details` (
  `id_transaction_detail` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `code_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions_details`
--

INSERT INTO `transactions_details` (`id_transaction_detail`, `transaction_id`, `product_id`, `price`, `banyak`, `code_product`) VALUES
(1, 1, 1, 50000, 2, 'PRD-12943'),
(2, 1, 2, 80000, 2, 'PRD-12943'),
(3, 2, 1, 50000, 2, 'PRD-13113'),
(4, 2, 1, 50000, 2, 'PRD-13113'),
(5, 3, 2, 80000, 2, 'PRD-40981'),
(6, 3, 6, 400000, 1, 'PRD-40981'),
(7, 4, 3, 100000, 1, 'PRD-60879'),
(8, 5, 5, 20000, 2, 'PRD-71011'),
(9, 5, 10, 75000, 2, 'PRD-71011'),
(10, 5, 12, 14000, 2, 'PRD-71011'),
(11, 6, 4, 36000, 5, 'PRD-94186'),
(12, 6, 1, 30000, 1, 'PRD-94186'),
(13, 6, 2, 40000, 4, 'PRD-94186'),
(14, 7, 1, 120000, 1, 'PRD-39116'),
(15, 8, 4, 200000, 1, 'PRD-75635'),
(16, 9, 2, 80000, 1, 'PRD-36698'),
(17, 10, 1, 120000, 1, 'PRD-81050'),
(18, 11, 16, 70000, 1, 'PRD-48579'),
(19, 12, 1, 120000, 1, 'PRD-12728');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `postal_code` varchar(191) NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `address`, `phone_number`, `postal_code`, `roles`) VALUES
(11, 'admin123', 'admin123@gmail.com', '$2y$10$B8sCWiTy0FGPO/v2x7ctjeIF2K9H1kiIvcFzm9fs/F2cgIYEgheeC', '', '098765414', '', 'ADMIN'),
(16, 'hola', 'hola@gmail.com', '$2y$10$LDZoDGbbg8xWHjBzdAlnKOVWXhZGQjvalg0pbrYq0fuh5RkrXegym', '', '12304854', '12345', 'ADMIN'),
(17, 'purwa', 'purwa@gmail.com', '$2y$10$mBXtRfI.2eXD8sSIHxyzFejVGdA2TPRcX.vmTc2RkkUttEvFPNXNW', '<p>Jalan pegangsaan timur</p>\r\n', '12334455551312', '12344', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id_driver`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `products_galleries`
--
ALTER TABLE `products_galleries`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indeks untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  ADD PRIMARY KEY (`id_transaction_detail`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id_driver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `products_galleries`
--
ALTER TABLE `products_galleries`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  MODIFY `id_transaction_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
