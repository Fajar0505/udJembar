-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jul 2023 pada 13.57
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ud_jember`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(4) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `alamat`, `no_hp`, `status`) VALUES
('1276', 'RURI', '1276', 'JAKARTA', '0898676876823', 'KARYAWAN'),
('1294', 'FAJAR', '1234', 'JAKARTA', '0895367582357', 'BOSS'),
('2313', 'ALDI', '1288', 'JAKARTA', '09834273423', 'BOSS'),
('3123', 'RICKY', '3232', 'CIRACAS', '08883242342', 'KARYAWAN'),
('3213', 'HANDIKA', '1295', 'DEPOK', '088827646723', 'KARYAWAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id_employees` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `status` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id_employees`, `nama`, `umur`, `status`, `jabatan`, `alamat`) VALUES
(2112, 'ELON WASKITA', '25', 'SINGLE', 'SHOPKEEPER', 'GG. BAIDURI NO. 787, MOJOKERTO 42980, SULTRA'),
(2132, 'TASMIN MAHENDRA', '23', 'SINGLE', 'SHOPKEEPER', 'JR. LAKSAMANA NO. 705, BIMA 36414, JABAR'),
(2342, 'KASIM', '33', 'MARRIED', 'SHOPKEEPER', 'DK. SUDIRMAN NO. 175, YOGYAKARTA 91316, BALI'),
(2709, 'PARIS NURDIYANTI', '22', 'MARRIED', 'SHOPKEEPER', 'GG. JAMIKA NO. 474, YOGYAKARTA 27850, NTT'),
(8147, 'DINDA LAKSMIWATI', '23', 'SINGLE', 'MANAGER', 'GG. VILLA NO. 361, SUNGAI PENUH 67350, SULTRA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_keuangan`
--

CREATE TABLE `laporan_keuangan` (
  `date` varchar(11) NOT NULL,
  `modal` varchar(50) NOT NULL,
  `omset` varchar(50) NOT NULL,
  `profit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_keuangan`
--

INSERT INTO `laporan_keuangan` (`date`, `modal`, `omset`, `profit`) VALUES
('06-2022', '2630000', '3860000', '1230000'),
('07-2022', '2270000', '4912000', '2642000'),
('07-2023', '1500000', '62000', '-1438000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id_members` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id_members`, `nama`, `no_hp`, `alamat`) VALUES
(2040, 'PUTI SURYATMI', '85739285351', 'JLN. BASUKI RAHMAT  NO. 869, BATU 16445, NTB'),
(3881, 'WADI SINAGA', '89867264318', 'JLN. SUHARSO NO. 542, TASIKMALAYA 81748, JABAR'),
(4688, 'INTA', '08977866543', 'KP RAMBUTAN RT09/07'),
(9790, 'BAKTI PRAKASA', '093493164048', 'DS. YOS NO. 511, BUKITTINGGI 33618, BENGKULU'),
(9840, 'VANYA WIJAYANTI', '02389915494', 'KI. SUPOMO NO. 296, SUKABUMI 30026, JATENG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modal_teb`
--

CREATE TABLE `modal_teb` (
  `date` varchar(20) NOT NULL,
  `date2` varchar(50) NOT NULL,
  `modal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `modal_teb`
--

INSERT INTO `modal_teb` (`date`, `date2`, `modal`) VALUES
('06-2022', '2022-06-23', '2630000'),
('07-2022', '2022-07-23', '2270000'),
('07-2023', '2023-07-21', '1500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `omset`
--

CREATE TABLE `omset` (
  `date_omset` varchar(11) NOT NULL,
  `omsett` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `omset`
--

INSERT INTO `omset` (`date_omset`, `omsett`) VALUES
('06-2022', 3860000),
('07-2022', 4912000),
('07-2023', 62000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `Id_order` int(4) NOT NULL,
  `Nama_barang` varchar(50) NOT NULL,
  `Tipe_barang` varchar(50) NOT NULL,
  `Ukuran_barang` varchar(50) NOT NULL,
  `Jumlah` varchar(50) NOT NULL,
  `Harga_beli` varchar(50) NOT NULL,
  `Harga_jual` varchar(50) NOT NULL,
  `Tempo` varchar(50) NOT NULL,
  `Tanggal_order` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`Id_order`, `Nama_barang`, `Tipe_barang`, `Ukuran_barang`, `Jumlah`, `Harga_beli`, `Harga_jual`, `Tempo`, `Tanggal_order`) VALUES
(273, 'RING BESI PIPA', 'TAPAK', '3 INCHI', '100', '190000', '6000', '3 BULAN', '2022-07-23'),
(1469, 'CAT', 'CAT', '5 LITER', '10', '1000000', '100000', 'LUNAS', '2023-07-21'),
(1550, 'RODA BESI', 'RODA', '3 INCI', '40', '500000', '50000', '3 bulan', '2023-07-21'),
(5243, 'RODA BESI', 'STANDAR', '8 CM', '100', '2000000', '30000', '3 BULAN', '2022-07-23'),
(5938, 'RING BESI PIPA', 'TAPAK', '1 INCHI', '100', '50000', '1600', '3 bulan', '2022-06-23'),
(6065, 'REL HENDERSON ', 'ATAS', '3 M ', '1', '180000', '250000', '1 minggu', '2022-06-23'),
(7370, 'RODA BESI ', 'SUPER', '8 CM', '100', '2400000', '50000', '3 BULAN', '2022-06-23'),
(7798, 'RING BESI PIPA', 'TAPAK', '2 INCHI', '100', '80000', '2000', '2', '2022-07-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `selling`
--

CREATE TABLE `selling` (
  `id_transaksi` int(4) NOT NULL,
  `history` text NOT NULL,
  `harga_total` varchar(50) NOT NULL,
  `tanggal_transaksi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `selling`
--

INSERT INTO `selling` (`id_transaksi`, `history`, `harga_total`, `tanggal_transaksi`) VALUES
(432, '  4 REL HENDERSON  ATAS 3 M  | 60 RING BESI PIPA TAPAK 3 INCHI | 10 REL HENDERSON  ATAS 3 M  | 200 RING BESI PIPA TAPAK 3 INCHI | 4 REL HENDERSON  ATAS 3 M  | 5 RODA BESI SUPER 8 CM | 40 RODA BESI STANDAR 8 CM', '1450000', '2022-07-07'),
(1056, '  4 REL HENDERSON  ATAS 3 M  | 60 RING BESI PIPA TAPAK 3 INCHI', '1360000', '2022-06-07'),
(1530, '  2 RING BESI PIPA TAPAK 3 INCHI | 1 RODA BESI SUPER 8 CM', '62000', '2023-07-21'),
(1750, '  2 RING BESI PIPA TAPAK 3 INCHI | 2 REL HENDERSON  ATAS 3 M ', '512000', '2022-07-08'),
(4810, '  4 REL HENDERSON  ATAS 3 M  | 60 RING BESI PIPA TAPAK 3 INCHI | 10 REL HENDERSON  ATAS 3 M  | 200 RING BESI PIPA TAPAK 3 INCHI | 4 REL HENDERSON  ATAS 3 M  | 5 RODA BESI SUPER 8 CM | 40 RODA BESI STANDAR 8 CM | 2 REL HENDERSON  ATAS 3 M ', '500000', '2022-07-07'),
(5195, '  4 REL HENDERSON  ATAS 3 M  | 60 RING BESI PIPA TAPAK 3 INCHI | 10 REL HENDERSON  ATAS 3 M ', '2500000', '2022-06-07'),
(6239, '  2 RING BESI PIPA TAPAK 3 INCHI | 2 REL HENDERSON  ATAS 3 M  | 1 REL HENDERSON  ATAS 3 M ', '250000', '2022-07-08'),
(8555, '  4 REL HENDERSON  ATAS 3 M  | 60 RING BESI PIPA TAPAK 3 INCHI | 10 REL HENDERSON  ATAS 3 M  | 200 RING BESI PIPA TAPAK 3 INCHI | 4 REL HENDERSON  ATAS 3 M ', '2200000', '2022-07-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocks`
--

CREATE TABLE `stocks` (
  `Id_barang` int(4) NOT NULL,
  `Nama_barang` varchar(50) NOT NULL,
  `Ukuran_barang` varchar(50) NOT NULL,
  `Tipe_barang` varchar(50) NOT NULL,
  `Jumlah` varchar(50) NOT NULL,
  `Harga_jual` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stocks`
--

INSERT INTO `stocks` (`Id_barang`, `Nama_barang`, `Ukuran_barang`, `Tipe_barang`, `Jumlah`, `Harga_jual`) VALUES
(273, 'RING BESI PIPA', '3 INCHI', 'TAPAK', '100', '6000'),
(1469, 'CAT', '5 LITER', 'CAT', '10', '100000'),
(1550, 'RODA BESI', '3 INCI', 'RODA', '40', '50000'),
(5243, 'RODA BESI', '8 CM', 'STANDAR', '100', '30000'),
(5938, 'RING BESI PIPA', '1 INCHI', 'TAPAK', '100', '1600'),
(6065, 'REL HENDERSON ', '3 M ', 'ATAS', '1', '250000'),
(7370, 'RODA BESI ', '8 CM', 'SUPER', '100', '50000'),
(7798, 'RING BESI PIPA', '2 INCHI', 'TAPAK', '100', '2000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `id_suppliers` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_barang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`id_suppliers`, `nama`, `no_hp`, `alamat`, `jenis_barang`) VALUES
(2127, 'FAJAR', '12312341121', 'JAKARTA', 'RODA BESI'),
(7249, 'DANU MARBUN', '045609059861', 'GG. BACANG NO. 789, BANDAR LAMPUNG 77454, KALTENG', 'RODA BESI SUPER'),
(9195, 'FARHUNNISA PURWANTI', '02799610474', 'DK. ULUWATU NO. 549, SOLOK 18342, BALI', 'RING HOLO'),
(9269, 'AFIF', '089766325738', 'GG NANGKA RT07/09', 'RODA'),
(9390, 'WADI RAMADAN', '03398178595', 'DS. SETIABUDHI NO. 94, GUNUNGSITOLI 81501, KALUT', 'REL ANDERSON');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_employees`);

--
-- Indeks untuk tabel `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`date`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id_members`);

--
-- Indeks untuk tabel `modal_teb`
--
ALTER TABLE `modal_teb`
  ADD PRIMARY KEY (`date`);

--
-- Indeks untuk tabel `omset`
--
ALTER TABLE `omset`
  ADD PRIMARY KEY (`date_omset`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id_order`);

--
-- Indeks untuk tabel `selling`
--
ALTER TABLE `selling`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`Id_barang`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id_suppliers`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id_employees` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8751;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id_members` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9841;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `Id_order` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9830;

--
-- AUTO_INCREMENT untuk tabel `stocks`
--
ALTER TABLE `stocks`
  MODIFY `Id_barang` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9830;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
