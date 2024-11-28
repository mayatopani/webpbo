-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Sep 2022 pada 09.54
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sipp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `KD_KATEGORI` char(5) NOT NULL,
  `NM_KATEGORI` varchar(50) NOT NULL,
  `FLAG_AKTIF` char(1) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`KD_KATEGORI`, `NM_KATEGORI`, `FLAG_AKTIF`, `ROWID`, `USER_ENTRY`, `TGL_ENTRY`, `USER_UPDATE`, `TGL_UPDATE`) VALUES
('01', 'AC', 'Y', 1, 'SYS', '2022-06-12 00:00:00', '', '2022-06-12 00:00:00'),
('02', 'SOFTWARE', 'Y', 2, 'SYS', '2022-07-27 10:02:50', '', '2022-07-27 10:02:50'),
('03', 'LAPTOP', 'Y', 3, 'SYS', '2022-07-27 10:02:50', '', '2022-07-27 10:02:50'),
('04', 'ATK', 'Y', 10, 'SYS', '2022-08-08 01:40:37', 'SYS', '2022-08-08 01:40:37'),
('05', 'HARDWARE', 'Y', 13, 'SYS', '2022-09-20 09:03:49', 'SYS', '2022-09-20 09:03:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `KD_BARANG` varchar(20) NOT NULL,
  `KD_KATEGORI` char(5) NOT NULL,
  `NM_BARANG` varchar(255) NOT NULL,
  `HARGA` decimal(18,2) NOT NULL,
  `IMAGE` varchar(191) NOT NULL,
  `JUMLAH` int(18) NOT NULL,
  `FLAG_AKTIF` char(1) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`KD_BARANG`, `KD_KATEGORI`, `NM_BARANG`, `HARGA`, `IMAGE`, `JUMLAH`, `FLAG_AKTIF`, `ROWID`, `USER_ENTRY`, `TGL_ENTRY`, `USER_UPDATE`, `TGL_UPDATE`) VALUES
('B0001', '01', 'Sharp', '4800000.00', '73sharp.jpg', 5, 'Y', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('B0002', '03', 'LENOVO', '15000000.00', '45len.jpg', 10, 'Y', 2, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('B0003', '05', 'Printer', '850000.00', '443-64.jpg', 5, 'Y', 9, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('B0004', '04', 'Pulpen', '200000.00', 'pulpen.jpg', 100, 'Y', 17, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('B0005', '03', 'ASUS', '100000.00', 'asus2.jpg', 23, 'Y', 18, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('B0006', '03', 'ASDAS', '150000.00', 'asus1.jpg', 10, 'Y', 19, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_in`
--

CREATE TABLE `product_in` (
  `KD_BARANG` varchar(20) NOT NULL,
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PENERIMAAN` char(20) NOT NULL,
  `NO_BARIS` decimal(18,0) UNSIGNED NOT NULL,
  `KD_DEPT` char(10) NOT NULL,
  `TANGGAL` datetime NOT NULL,
  `JUMLAH` decimal(18,0) NOT NULL,
  `FLAG_AKTIF` char(1) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(20) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(20) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_out`
--

CREATE TABLE `product_out` (
  `KD_BARANG` varchar(20) NOT NULL,
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PENGELUARAN` varchar(20) NOT NULL,
  `NO_BARIS` decimal(18,0) UNSIGNED NOT NULL,
  `TANGGAL` datetime NOT NULL,
  `JUMLAH` decimal(18,0) NOT NULL,
  `FLAG_AKTIF` char(1) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `KD_SUPPLIER` char(10) NOT NULL,
  `NM_SUPPLIER` varchar(100) NOT NULL,
  `ALAMAT` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `TELEPON` varchar(100) NOT NULL,
  `FLAG_AKTIF` char(1) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_dtl_issues`
--

CREATE TABLE `trx_dtl_issues` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PERMINTAAN` char(20) NOT NULL,
  `NO_PENGELUARAN` char(20) NOT NULL,
  `KD_BARANG` varchar(20) NOT NULL,
  `NO_BARIS` decimal(18,0) NOT NULL,
  `JML_KELUAR` decimal(10,2) NOT NULL,
  `HRG_KELUAR` decimal(18,2) NOT NULL,
  `CATATAN` varchar(200) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(20) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(20) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_dtl_receipts`
--

CREATE TABLE `trx_dtl_receipts` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PENERIMAAN` char(20) NOT NULL,
  `NO_PO` char(20) NOT NULL,
  `NO_PR` char(20) NOT NULL,
  `KD_BARANG` varchar(20) NOT NULL,
  `NO_BARIS` decimal(18,0) NOT NULL,
  `KD_DEPT` char(10) NOT NULL,
  `KD_SATUAN` char(20) NOT NULL,
  `HRG_BARANG` decimal(18,2) NOT NULL,
  `JML_DISKON` decimal(18,2) NOT NULL,
  `KD_PAJAK` char(10) NOT NULL,
  `JML_PAJAK` decimal(18,0) NOT NULL,
  `JML_TERIMA` decimal(18,2) NOT NULL,
  `CATATAN` varchar(200) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_issues`
--

CREATE TABLE `trx_issues` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PENGELUARAN` char(20) NOT NULL,
  `TGL_KELUAR` datetime NOT NULL,
  `KD_GUDANG` char(10) NOT NULL,
  `KD_DEPT` char(10) NOT NULL,
  `KD_DEPT_TUJUAN` char(10) NOT NULL,
  `DITERIMA_OLEH` varchar(50) NOT NULL,
  `CATATAN` varchar(200) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_pos`
--

CREATE TABLE `trx_pos` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PO` char(20) NOT NULL,
  `KD_SUPPLIER` char(10) NOT NULL,
  `KD_GUDANG` char(10) NOT NULL,
  `KD_PAJAK` char(10) NOT NULL,
  `TGL_PO` datetime NOT NULL,
  `TGL_DATANG` datetime NOT NULL,
  `KD_KURS` char(3) NOT NULL,
  `NILAI_KURS` decimal(10,2) NOT NULL,
  `JML_PAJAK` decimal(18,2) NOT NULL,
  `TOTAL_PO` decimal(18,2) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `TGL_APPROVE` datetime NOT NULL,
  `USER_APPROVE` varchar(50) NOT NULL,
  `CATATAN` varchar(255) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_pos_dtl`
--

CREATE TABLE `trx_pos_dtl` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PO` char(20) NOT NULL,
  `NO_PR` char(20) NOT NULL,
  `KD_BARANG` varchar(20) NOT NULL,
  `NO_BARIS` decimal(18,0) NOT NULL,
  `KD_SATUAN` char(20) NOT NULL,
  `KONVERSI` decimal(15,2) NOT NULL,
  `JML_PO` decimal(10,2) NOT NULL,
  `JML_TERIMA` decimal(10,2) NOT NULL,
  `HRG_BARANG` decimal(18,2) NOT NULL,
  `DISC` decimal(18,2) NOT NULL,
  `KD_PAJAK` char(10) NOT NULL,
  `JML_PAJAK` decimal(18,2) NOT NULL,
  `CATATAN` varchar(200) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(20) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(20) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_prs`
--

CREATE TABLE `trx_prs` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PR` char(20) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `TGL_PR` datetime NOT NULL,
  `TGL_BUTUH` datetime NOT NULL,
  `KD_DEPT` char(10) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `TGL_APPROVE` datetime NOT NULL,
  `USER_APPROVE` char(20) NOT NULL,
  `TGL_BUDGET` datetime NOT NULL,
  `USER_BUDGET` char(20) NOT NULL,
  `TGL_PIC` datetime NOT NULL,
  `USER_PIC` char(20) NOT NULL,
  `TGL_ASSIGN` datetime NOT NULL,
  `USER_ASSIGN` char(20) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_prs_dtl`
--

CREATE TABLE `trx_prs_dtl` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PR` char(20) NOT NULL,
  `KD_BARANG` varchar(20) NOT NULL,
  `NO_BARIS` decimal(18,2) NOT NULL,
  `JML_DIMINTA` decimal(10,2) NOT NULL,
  `JML_DISETUJUI` decimal(10,2) NOT NULL,
  `JML_PO` decimal(10,2) NOT NULL,
  `JML_TERIMA` decimal(10,2) NOT NULL,
  `FLAG_BUDGET` char(1) NOT NULL,
  `CATATAN` text NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(20) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(20) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_receipts`
--

CREATE TABLE `trx_receipts` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PENERIMAAN` char(20) NOT NULL,
  `TGL_TERIMA` datetime NOT NULL,
  `KD_GUDANG` char(10) NOT NULL,
  `KD_SUPPLIER` char(10) NOT NULL,
  `KD_KURS` char(3) NOT NULL,
  `NILAI_KURS` decimal(10,4) NOT NULL,
  `TOTAL_TERIMA` decimal(18,2) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `TGL_APPROVE` datetime NOT NULL,
  `USER_APPROVE` varchar(50) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_request_dtl_items`
--

CREATE TABLE `trx_request_dtl_items` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PERMINTAAN` char(20) NOT NULL,
  `KD_BARANG` varchar(20) NOT NULL,
  `NO_BARIS` decimal(18,0) NOT NULL,
  `JML_DIMINTA` decimal(10,2) NOT NULL,
  `JML_DIKIRIM` decimal(10,2) NOT NULL,
  `CATATAN` varchar(200) NOT NULL,
  `ROWID` int(11) NOT NULL,
  `USER_ENTRY` varchar(20) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(20) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_request_items`
--

CREATE TABLE `trx_request_items` (
  `KD_PERUSAHAAN` char(5) NOT NULL,
  `NO_PERMINTAAN` char(20) NOT NULL,
  `TGL_MINTA` datetime NOT NULL,
  `TGL_BUTUH` datetime NOT NULL,
  `KD_DEPT` char(10) NOT NULL,
  `KD_GUDANG` char(10) NOT NULL,
  `CATATAN` varchar(100) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `TGL_APPROVE` datetime NOT NULL,
  `USER_APPROVE` varchar(50) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trx_taxs`
--

CREATE TABLE `trx_taxs` (
  `KD_PAJAK` char(10) NOT NULL,
  `NM_PAJAK` varchar(30) NOT NULL,
  `TIPE` char(1) NOT NULL,
  `JML_PPN` decimal(18,2) NOT NULL,
  `JML_PPH` decimal(18,2) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','staff','head','purchasing','fa','ga') NOT NULL DEFAULT 'staff',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Tiyan', 'septiyan_reswina@summarecon.com', '$2y$10$5Q2wJn8gCjM/GoLXrf1cwundKp90HTmvHCYa0/Pjmb6C5YuBoJB52', 'staff', '2022-07-28 21:32:48', '2022-07-28 21:32:48'),
(5, 'Fahmi', 'fahmi@gmail.com', '$2y$10$raYDrGD/k75WR7NE5X3pBul8ew0n8Q/RLQ5V6wH7vhZjMS1fT8d4i', 'staff', '2022-08-03 21:19:07', '2022-08-03 21:19:07'),
(6, 'Dimas', 'dimas@gmail.com', '$2y$10$ut4z9ZAM6aLS4x6CPzGj/ulQ0L0fOzEv6Rq3asThPwGJdWGXFvOuK', 'staff', '2022-08-03 21:19:34', '2022-08-03 21:19:34'),
(7, 'Rizki', 'rizki@gmail.com', '$2y$10$KTjvtpt/F2FyYpmnuaGz7OkfIPeM.fAGxAtdQxDXGbIRZnIzgk4WO', 'staff', '2022-08-03 21:19:59', '2022-08-03 21:19:59'),
(12, 'Selly Christina', 'selly@yahoo.com', '$2y$10$tcYrhkxOTWGZs.fs3rPL/ekVZNu1jp.96mhKsAlgPC6PP6V0.Ix1q', 'staff', '2022-08-07 18:46:05', '2022-08-07 18:46:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warehouses`
--

CREATE TABLE `warehouses` (
  `KD_GUDANG` char(10) NOT NULL,
  `NM_GUDANG` varchar(50) NOT NULL,
  `FLAG_AKTIF` char(1) NOT NULL,
  `ROWID` int(18) NOT NULL,
  `USER_ENTRY` varchar(50) NOT NULL,
  `TGL_ENTRY` datetime NOT NULL,
  `USER_UPDATE` varchar(50) NOT NULL,
  `TGL_UPDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`KD_KATEGORI`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`KD_BARANG`),
  ADD UNIQUE KEY `ROWID` (`ROWID`),
  ADD KEY `KD_KATEGORI` (`KD_KATEGORI`);

--
-- Indeks untuk tabel `product_in`
--
ALTER TABLE `product_in`
  ADD PRIMARY KEY (`KD_BARANG`),
  ADD UNIQUE KEY `ROWID` (`ROWID`),
  ADD KEY `NO_PENERIMAAN` (`NO_PENERIMAAN`),
  ADD KEY `KD_PERUSAHAAN` (`KD_PERUSAHAAN`),
  ADD KEY `NO_BARIS` (`NO_BARIS`);

--
-- Indeks untuk tabel `product_out`
--
ALTER TABLE `product_out`
  ADD PRIMARY KEY (`KD_BARANG`),
  ADD UNIQUE KEY `ROWID` (`ROWID`),
  ADD KEY `KD_PERUSAHAAN` (`KD_PERUSAHAAN`),
  ADD KEY `NO_PENGELUARAN` (`NO_PENGELUARAN`),
  ADD KEY `NO_BARIS` (`NO_BARIS`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`KD_SUPPLIER`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `trx_dtl_issues`
--
ALTER TABLE `trx_dtl_issues`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PERMINTAAN`,`NO_BARIS`),
  ADD UNIQUE KEY `NO_PENGELUARAN` (`NO_PENGELUARAN`),
  ADD UNIQUE KEY `KD_BARANG` (`KD_BARANG`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `trx_dtl_receipts`
--
ALTER TABLE `trx_dtl_receipts`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PENERIMAAN`),
  ADD UNIQUE KEY `NO_PO` (`NO_PO`),
  ADD UNIQUE KEY `NO_PR` (`NO_PR`),
  ADD UNIQUE KEY `NO_BARIS` (`NO_BARIS`),
  ADD UNIQUE KEY `ROWID` (`ROWID`),
  ADD UNIQUE KEY `KD_BARANG` (`KD_BARANG`);

--
-- Indeks untuk tabel `trx_issues`
--
ALTER TABLE `trx_issues`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PENGELUARAN`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `trx_pos`
--
ALTER TABLE `trx_pos`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PO`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `trx_pos_dtl`
--
ALTER TABLE `trx_pos_dtl`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PO`,`NO_PR`,`KD_BARANG`,`NO_BARIS`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `trx_prs`
--
ALTER TABLE `trx_prs`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PR`),
  ADD UNIQUE KEY `ROWID` (`ROWID`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `trx_prs_dtl`
--
ALTER TABLE `trx_prs_dtl`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PR`),
  ADD UNIQUE KEY `KD_BARANG` (`KD_BARANG`),
  ADD UNIQUE KEY `NO_BARIS` (`NO_BARIS`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `trx_receipts`
--
ALTER TABLE `trx_receipts`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PENERIMAAN`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `trx_request_dtl_items`
--
ALTER TABLE `trx_request_dtl_items`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PERMINTAAN`,`NO_BARIS`),
  ADD UNIQUE KEY `KD_BARANG` (`KD_BARANG`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `trx_request_items`
--
ALTER TABLE `trx_request_items`
  ADD PRIMARY KEY (`KD_PERUSAHAAN`,`NO_PERMINTAAN`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `trx_taxs`
--
ALTER TABLE `trx_taxs`
  ADD PRIMARY KEY (`KD_PAJAK`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`KD_GUDANG`),
  ADD UNIQUE KEY `ROWID` (`ROWID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `product_in`
--
ALTER TABLE `product_in`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_out`
--
ALTER TABLE `product_out`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_dtl_issues`
--
ALTER TABLE `trx_dtl_issues`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_dtl_receipts`
--
ALTER TABLE `trx_dtl_receipts`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_issues`
--
ALTER TABLE `trx_issues`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_pos`
--
ALTER TABLE `trx_pos`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_pos_dtl`
--
ALTER TABLE `trx_pos_dtl`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_prs`
--
ALTER TABLE `trx_prs`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_prs_dtl`
--
ALTER TABLE `trx_prs_dtl`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_receipts`
--
ALTER TABLE `trx_receipts`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_request_dtl_items`
--
ALTER TABLE `trx_request_dtl_items`
  MODIFY `ROWID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_request_items`
--
ALTER TABLE `trx_request_items`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trx_taxs`
--
ALTER TABLE `trx_taxs`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `ROWID` int(18) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
