-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2024 pada 11.24
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fullstack_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Ngakak', '2024-01-24 16:20:13', '2024-01-24 16:20:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `collectionbooks`
--

CREATE TABLE `collectionbooks` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `release_year` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `total_page` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `thickness` varchar(255) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `collectionbooks`
--

INSERT INTO `collectionbooks` (`id`, `uuid`, `title`, `description`, `image`, `release_year`, `price`, `total_page`, `category_id`, `thickness`, `userId`, `createdAt`, `updatedAt`) VALUES
(6, 'a1be08a8-64ed-466e-9581-bd899e51a511', 'Harry potters', 'Mantap', 'https://cdn.gramedia.com/uploads/items/9786020386201_Harry-Potter-.jpg', 2021, 'Rp.20.000', 200, 1, 'sedang', 4, '2024-01-25 02:09:49', '2024-01-25 07:51:51'),
(7, '890765b1-de6a-498b-bb4d-52813432c436', 'Amalan2 Sakti Penyelamat Siksa Kubur', 'Test', 'https://cdn.gramedia.com/uploads/items/9786023001811.jpg', 2013, 'Rp.50.000', 200, 1, 'sedang', 4, '2024-01-25 02:13:14', '2024-01-25 03:52:14'),
(8, '20a61483-032b-411d-b882-23255db7962e', 'Fullmetal Alchemist (Premium) 7', 'Fullmetal Alchemist adalah serial manga karya Hiromu Arakawa. Serial manga ini pertama kali diterbitkan dalam majalah manga Monthly Shonen Gangan sejak tahun 2002 dan dalam bentuk tankobon oleh Square Enix. Di Indonesia, komik ini diterbitkan Elex Media K', 'https://cdn.gramedia.com/uploads/items/9786020459387_Fullmetal-Alchemist-Premium-07.jpg', 2021, 'Rp.20.000', 200, 1, 'sedang', 4, '2024-01-25 02:47:20', '2024-01-25 02:47:20'),
(20, '43a2ac56-888a-4ebb-b8bb-3029eb3454c8', 'TESTs', 'TEST', 'https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D', 2020, 'Rp.30.000', 211, 1, 'tebal', 12, '2024-01-25 07:53:20', '2024-01-25 10:23:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-e7GjFKjZUqgjDUarGR65LkZDYkz1IFm', '2024-01-26 03:50:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:50:36', '2024-01-25 03:50:36'),
('-pC1HugJF6Pjqvxpj96A3yJr4IFjCcL3', '2024-01-26 01:26:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:26:39', '2024-01-25 01:26:39'),
('-y0IRtcTG-J8u4CmDVTzJydtn-GTvcgC', '2024-01-26 06:32:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:32:00', '2024-01-25 06:32:00'),
('029HrYtLKrgXEUh9284NKINd1nppZtxe', '2024-01-25 22:46:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 22:46:23', '2024-01-24 22:46:23'),
('0nvhL_lVd1ScNDkd6kkOqhjFVWYqy9qr', '2024-01-26 09:43:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:43:15', '2024-01-25 09:43:15'),
('0ruA35mQH7q_Jew1EIOk0iuzXmSclTWu', '2024-01-26 03:05:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:05:03', '2024-01-25 03:05:03'),
('0vs-8Ek8dkseXoEeeW-mXBM2M1okbxqD', '2024-01-26 03:04:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:04:59', '2024-01-25 03:04:59'),
('0y54fd2k952vhElh1OflBt_MPzh-6xUd', '2024-01-26 02:09:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:09:41', '2024-01-25 02:09:41'),
('0zUyvi5pslwSK0kFaC-aMkhhKQidW2rL', '2024-01-26 07:09:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:09:56', '2024-01-25 07:09:56'),
('1eHRUGfigkElZ05LNHyH5GtbTN0NlvAE', '2024-01-26 03:04:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:04:59', '2024-01-25 03:04:59'),
('1QhPGAbzj-RyjjjURFwY_6A1yQM42Vdr', '2024-01-26 06:42:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:42:41', '2024-01-25 06:42:41'),
('1vIk4d5ONoWm0Vazi5hOaEPGAPhuo0ud', '2024-01-25 15:55:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:55:21', '2024-01-24 15:55:21'),
('1X3C4pbECB1gLjwlPaPa_O5Qr3wXBEb9', '2024-01-26 04:08:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:08:40', '2024-01-25 04:08:40'),
('2-FnNuvvOTF_XMaNrDHZK1XTXjCeYZH_', '2024-01-26 02:31:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:31:28', '2024-01-25 02:31:28'),
('2-YJE3-l7m6yBF9qJAlRBTdmkXOpSjlO', '2024-01-26 07:09:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:09:48', '2024-01-25 07:09:48'),
('2IgO9mJz8ybMzzRNmVagKhFgMIrsajn6', '2024-01-26 01:32:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:32:20', '2024-01-25 01:32:20'),
('2pkRXj5IAI6s0loRES_aTBLaeDi339z1', '2024-01-26 07:43:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:43:04', '2024-01-25 07:43:04'),
('32SLAPlytGkVWXcrdwmgfTOd5FHa6IHc', '2024-01-26 07:35:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:35:56', '2024-01-25 07:35:56'),
('33-nYew6FO7tn6_pP6f3UKuMvfXnNIIO', '2024-01-26 04:47:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:47:37', '2024-01-25 04:47:37'),
('339yFzNA2u6T07_UOPQpAYwkrbLvbnJk', '2024-01-26 03:03:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:03:11', '2024-01-25 03:03:11'),
('3FRcyt4i8ABLjjFA0Z0xEjf9cMJ3_VZW', '2024-01-26 10:22:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:22:40', '2024-01-25 10:22:40'),
('3WcNgB4j4XrgRBmi64TK8sPv-jrbfCFj', '2024-01-26 04:28:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:28:52', '2024-01-25 04:28:52'),
('494fMwHK4uPTqAUUnrvHoHzF7F6XGA6r', '2024-01-26 03:03:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:03:55', '2024-01-25 03:03:55'),
('49soWnCxPmk-RK_cjpLfetc54ynpdIjp', '2024-01-26 00:27:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:27:16', '2024-01-25 00:27:16'),
('4mcwhviTkBrclxSb7v7tHxO_NL0ZzCTc', '2024-01-25 16:02:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 16:02:26', '2024-01-24 16:02:26'),
('4V3YzaM-NZQoZYiXVbJs8o5cMXdP_lUA', '2024-01-26 07:53:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:53:25', '2024-01-25 07:53:25'),
('4vAA_q5A_UeQdhkP5hi3kv8iGKqGxtce', '2024-01-26 07:28:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:28:41', '2024-01-25 07:28:41'),
('4wpniKPNBuVT3fDDoFoxNtFVqlbkwzxF', '2024-01-26 07:51:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:51:46', '2024-01-25 07:51:46'),
('4_moCodl9Jsfk0cnonDZDd6Ci0ZgWwfO', '2024-01-26 00:44:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:44:23', '2024-01-25 00:44:23'),
('51BFIDFXcJeCcBh2vilOwAnllCzd1P4d', '2024-01-26 01:30:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:30:25', '2024-01-25 01:30:25'),
('58OIeHHnMyCLvNT9XCHuh27o4SA0t0c3', '2024-01-25 14:56:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 14:56:55', '2024-01-24 14:56:55'),
('5ucc4AOH_6IJXk2ss9uB9IqLEr4uFh4l', '2024-01-26 02:34:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:34:32', '2024-01-25 02:34:32'),
('6TMZEO-9GOHOZMh5V1c0SZbPXEt1WdSp', '2024-01-25 23:45:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:45:15', '2024-01-24 23:45:15'),
('73CraS-F6ILiwaUaXVt0ICGRg1oV5--B', '2024-01-26 04:44:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:44:57', '2024-01-25 04:44:57'),
('77hZ6K_NY7_cwny1jasSOuopbcw_wwPK', '2024-01-26 09:58:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:58:30', '2024-01-25 09:58:30'),
('7kB3DmRRyz8Ngbd4f7G2w49EK6q233NG', '2024-01-26 03:46:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"013bd8a1-e44a-47b4-9f7b-f9394a53a4a6\"}', '2024-01-25 03:37:50', '2024-01-25 03:46:14'),
('84Y4ELWUiMoObYGjgHPSeDbLuJEGTWA0', '2024-01-26 03:04:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:04:09', '2024-01-25 03:04:09'),
('86xocgcFUVJMFfn0qG9m6v7Cgxsco1zu', '2024-01-26 07:12:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:12:07', '2024-01-25 07:12:07'),
('8hidgG7jhLPjcVAeejFnqBQsx3XvJX1K', '2024-01-26 07:36:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:36:02', '2024-01-25 07:36:02'),
('8kyhfNZl6K9FQal1n6_UFyy4tGqU9g6A', '2024-01-26 09:03:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:03:50', '2024-01-25 09:03:50'),
('8YwqShjZImLoSX26JbkIF1NPeYqbGYRo', '2024-01-26 07:43:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:43:55', '2024-01-25 07:43:55'),
('9bMc7G5bys23wfo-QVy-sYzQ69o96Jbm', '2024-01-26 06:35:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:35:11', '2024-01-25 06:35:11'),
('9CxSCaiDLJl0XH0KFUzvxXiGES58lzKD', '2024-01-26 00:57:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:57:20', '2024-01-25 00:57:20'),
('9JylWi-6eZII83cfTEqCb4i7KMUv5wFB', '2024-01-26 03:02:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:02:43', '2024-01-25 03:02:43'),
('9lrSBtKLZyN_HyZRnlMojzAbVHA2vAyt', '2024-01-26 02:47:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:47:20', '2024-01-25 02:47:20'),
('9MJ0QE35QUFp1s9HED9pATYUs29hoxBt', '2024-01-26 03:52:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:52:29', '2024-01-25 03:52:29'),
('9NljR1LCVY1AvKeL22N3yw8I96yY3eJ-', '2024-01-26 03:02:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:02:28', '2024-01-25 03:02:28'),
('9zL1usjN7AqiN4U61GyFaRK2MPHU-v6l', '2024-01-26 06:52:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:52:56', '2024-01-25 06:52:56'),
('a2uoWFmc-AghuXm0JOrQPy23pLSGDMhJ', '2024-01-26 03:01:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:01:47', '2024-01-25 03:01:47'),
('A4py-Sr6zSxeAAsymr71dnLf4JrM_bT7', '2024-01-26 03:50:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:50:28', '2024-01-25 03:50:28'),
('aizBTg4HQci2HAmdlTR6VLn3EFpBT4PR', '2024-01-26 01:32:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:32:01', '2024-01-25 01:32:01'),
('AluElvVs65sN-j0wbNXgyD94iUzrqCAc', '2024-01-26 00:57:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:57:27', '2024-01-25 00:57:27'),
('axrqfbgxgFBHLH3ALFBaWUSgw4bRzcp-', '2024-01-26 07:17:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:17:04', '2024-01-25 07:17:04'),
('b-hlSTrjapFn9fj-NfXfSJFXNIw_2L5Y', '2024-01-26 10:22:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:22:17', '2024-01-25 10:22:17'),
('B6j44ax0gdFAICFbFit_RLzcz8brET2J', '2024-01-26 03:03:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:03:03', '2024-01-25 03:03:03'),
('bez3xgCQOMdmlYPXKMAf1FgJo8TY15h5', '2024-01-26 07:17:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:17:07', '2024-01-25 07:17:07'),
('BjF3zGpjr3eU68lwJAobosP9irTdbDfJ', '2024-01-26 04:48:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:48:13', '2024-01-25 04:48:13'),
('BN4a9CQWS1KfLw9b_irdnXi275wBZChJ', '2024-01-26 07:29:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:29:29', '2024-01-25 07:29:29'),
('BN7ga6vQMdhDCb1cxRkS-7hmibkgr5pF', '2024-01-26 07:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:16:40', '2024-01-25 07:16:40'),
('BvjJ7fTiI-buAlvasNrKj_EPp5MW46Is', '2024-01-26 06:52:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:52:50', '2024-01-25 06:52:50'),
('bvphEOCuLHpgc_ez7WKK8dcokoGtiETh', '2024-01-26 00:40:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:40:08', '2024-01-25 00:40:08'),
('Bwc8Hi03BEFRnIV1NohHzgIuczvjJpHD', '2024-01-26 06:35:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:35:19', '2024-01-25 06:35:19'),
('bY20qb3QMBHYRE1iP3UjFQo0ZQrjpv9G', '2024-01-26 02:12:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:12:24', '2024-01-25 02:12:24'),
('C0LKn3NLxZt1jCaLzCC3nWN2CJddKOgb', '2024-01-26 02:57:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:57:52', '2024-01-25 02:57:52'),
('C2sEb8yyH4OV2mVmd6iq5eQkofrENO98', '2024-01-25 23:37:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:37:21', '2024-01-24 23:37:21'),
('C6QMdRmulxpDBm9lxkxQCjvFuFNlhKcl', '2024-01-26 00:23:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:23:28', '2024-01-25 00:23:28'),
('CgwqNtbaDNvDKVkjxdEScxklYV6rEbKx', '2024-01-25 23:38:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:38:33', '2024-01-24 23:38:33'),
('CMS-RqRtutfzZIMcLbJoih26bHu1-Y7F', '2024-01-26 04:08:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:08:56', '2024-01-25 04:08:56'),
('cP1_vWD79UtTrvLNEGnnxsWYdlsNmbZq', '2024-01-26 04:45:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:45:12', '2024-01-25 04:45:12'),
('cSu3Ou5_Lu9YZ6QrVn7WvsZGG6D4VUZZ', '2024-01-26 10:23:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:23:20', '2024-01-25 10:23:20'),
('csVa-TbiYdfymJvlyYaY-ceLnz3kfe5Z', '2024-01-26 00:29:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:29:19', '2024-01-25 00:29:19'),
('CxqCgizEqTDd4_SMFWDjG-vkLc0X58Tc', '2024-01-26 00:30:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:30:40', '2024-01-25 00:30:40'),
('d2NS5_vSy3_-7a61hlds9YhbHzzkuAgS', '2024-01-26 00:44:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:44:42', '2024-01-25 00:44:42'),
('d4EjNqXFef_gbDE05xFvLX8vEqv7s8qm', '2024-01-26 06:42:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:42:50', '2024-01-25 06:42:50'),
('D6a_ciF11i8G-FjLCBKRzJqABawR7R4s', '2024-01-26 08:18:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"013bd8a1-e44a-47b4-9f7b-f9394a53a4a6\"}', '2024-01-25 08:18:19', '2024-01-25 08:18:56'),
('dEdo7daHvtj1WLlFke_6Sn-BgMwxWpL5', '2024-01-26 06:42:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:42:27', '2024-01-25 06:42:27'),
('DHf8BdvVhxo0j6eBUXjJ8oR635iR812V', '2024-01-26 02:13:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:13:14', '2024-01-25 02:13:14'),
('diBYyBEEWOK0NOuvxBMi8F2NOHn2YDye', '2024-01-26 03:52:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:52:04', '2024-01-25 03:52:04'),
('dj0Cz3zYKezFNTnIjYBJVj4xeigvNS-D', '2024-01-26 02:19:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:19:59', '2024-01-25 02:19:59'),
('DJHrtvawDcML6cct5x34BkTGYF_sYtWC', '2024-01-25 22:56:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"3c144a6f-cc15-4d22-8f31-6e09855f3824\"}', '2024-01-24 22:31:14', '2024-01-24 22:56:48'),
('dKp03WgqtbidCOzyPZJ_iHMFbbJeypEG', '2024-01-26 02:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:34:27', '2024-01-25 02:34:27'),
('dqRwXMpFofIwrGf8_HUo6NWd81q_r233', '2024-01-25 14:55:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 14:55:44', '2024-01-24 14:55:44'),
('dtVaP9i1ornqtMPR6wNTYinwVWir8HpC', '2024-01-26 07:16:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:16:00', '2024-01-25 07:16:00'),
('dvEeLDK7j6GF_8cXtlvbi_VRaJK4YDlf', '2024-01-26 07:31:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:31:00', '2024-01-25 07:31:00'),
('DWhckjzIdp0BxUgAdakqSRjCl21sK_ae', '2024-01-25 23:48:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:48:17', '2024-01-24 23:48:17'),
('DwrE0wkzrTG8uuNJq9jr6EnZkT_Tl23C', '2024-01-26 02:26:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:26:20', '2024-01-25 02:26:20'),
('dzryv8JynUnuLDEzEH8TxZJV9Z5HXCCE', '2024-01-26 06:32:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:32:17', '2024-01-25 06:32:17'),
('E9lFMWq98IS6ZioLLygKflxRsnsABaAS', '2024-01-26 04:56:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"013bd8a1-e44a-47b4-9f7b-f9394a53a4a6\"}', '2024-01-25 04:56:03', '2024-01-25 04:56:46'),
('EaxmBBGw8_buaLWL_pRHKT8U0CT2rOky', '2024-01-26 10:19:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:19:36', '2024-01-25 10:19:36'),
('eei5oneGTw92iouSgzsvW0YiJt-E3FxW', '2024-01-26 07:12:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:12:11', '2024-01-25 07:12:11'),
('EjCihrBxvt9uVjeFfsice76j4D5ipYaq', '2024-01-26 08:38:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 08:38:01', '2024-01-25 08:38:01'),
('eNgTrvcRnYhwit7yXFhaBu_Lp0-7C063', '2024-01-25 16:41:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"3c144a6f-cc15-4d22-8f31-6e09855f3824\"}', '2024-01-24 16:41:32', '2024-01-24 16:41:43'),
('Ep0gCP-_RizluRgL7KZhirpqWmf_d0Py', '2024-01-25 23:48:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:48:10', '2024-01-24 23:48:10'),
('EPjzzIQE3KncQVHsv4L8yTAg791RexTe', '2024-01-26 01:42:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:42:13', '2024-01-25 01:42:13'),
('EqqLAH9noiBsDJzxdjtl_XnN6JJxbq66', '2024-01-26 06:31:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:31:48', '2024-01-25 06:31:48'),
('ESKX-Tav4Oz3JuGe6d8nDqETbjCzNHcB', '2024-01-26 08:55:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 08:55:26', '2024-01-25 08:55:26'),
('eysRdo309CT8UXLIsEUSxfR3KR9YLMg1', '2024-01-26 02:51:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:51:54', '2024-01-25 02:51:54'),
('fDiRVrHTJsPyw3zykNkR0r88K8QiM9UD', '2024-01-26 04:43:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:43:26', '2024-01-25 04:43:26'),
('FDLXFE9GNnCuy3nElIRpN7n9tJv1W4qj', '2024-01-26 07:11:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:11:50', '2024-01-25 07:11:50'),
('fINGHDKs-sM8MqITlqEf9HFDWgzzLcH-', '2024-01-26 04:46:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:46:46', '2024-01-25 04:46:46'),
('fM1uAemwfDDkW-goUwMUd4vs2ogR_vbp', '2024-01-26 10:23:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:23:24', '2024-01-25 10:23:24'),
('fproILPlQR10DNd-bAbDWoDLX0uaD6BF', '2024-01-26 03:05:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:05:20', '2024-01-25 03:05:20'),
('FpsR26vv4yt3exgPQDvf8ZNtcAWSsEHF', '2024-01-26 01:26:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:26:36', '2024-01-25 01:26:36'),
('FSZW-ofKiHIAaf6t5bv40aKwZF4S-6Zv', '2024-01-25 22:49:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 22:49:49', '2024-01-24 22:49:49'),
('fUu1TR-KjTw8jCAaZpLmF_HCKkUUkGrc', '2024-01-25 23:37:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:37:50', '2024-01-24 23:37:50'),
('FyosJ5PxYrCRqD9RI2aAz39PoqdY48c1', '2024-01-26 04:44:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:44:22', '2024-01-25 04:44:22'),
('f_4rBLDJ2ODZpYNL8fPnnaHmQvllZVvT', '2024-01-26 02:16:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:16:30', '2024-01-25 02:16:30'),
('g9RuyR43TrD6Qm5i9g-E3kMFRaQpGAh0', '2024-01-26 02:25:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:25:55', '2024-01-25 02:25:55'),
('GeRFWW9Dq8EQ18zAobB1uVF0xKnrjZgp', '2024-01-26 03:53:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:53:17', '2024-01-25 03:53:17'),
('GfZxh3TX660RN-1KjFaKS_yXCc2PwlNf', '2024-01-26 04:09:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:09:30', '2024-01-25 04:09:30'),
('gPoV7vjne_AfqksmNTZUkIg5HBEfLidU', '2024-01-26 07:49:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:49:37', '2024-01-25 07:49:37'),
('gxmEjwPl-IzIoMJfLlSOVk4wJswHkSaS', '2024-01-26 02:51:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:51:39', '2024-01-25 02:51:39'),
('gyUufM-9QVCzAzFiOiR_9qkkGkZSC1ZL', '2024-01-26 09:37:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:37:10', '2024-01-25 09:37:10'),
('GzoMsSGfYKLd61c11YW5DFsjRzF5jzkp', '2024-01-26 02:23:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:23:42', '2024-01-25 02:23:42'),
('h-N_zCmxEQL7eFqqyDpvRLOfy6kV91Ln', '2024-01-25 15:59:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:59:16', '2024-01-24 15:59:16'),
('HEFb1u-sFWHjiF3OmMDEChKuv3L6yogZ', '2024-01-26 04:46:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:46:49', '2024-01-25 04:46:49'),
('hFglQ1T3g2g14ciOw5zsIvhqMB8HWFMh', '2024-01-25 15:23:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:23:42', '2024-01-24 15:23:42'),
('hkwM5wAp5DHwUUn0bcDaxgsxXYNUYn-N', '2024-01-25 12:27:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 12:27:07', '2024-01-24 12:27:07'),
('hlEGDvVaXpIR51rB9FGsqUi-M_y3JAtX', '2024-01-25 16:02:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 16:02:19', '2024-01-24 16:02:19'),
('HRt79gICfBdCVfbNpYlskgYWL-tink9u', '2024-01-26 02:49:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:49:36', '2024-01-25 02:49:36'),
('htWvyccwvZn3rdRAVrPQhPKdUAMZRtnv', '2024-01-26 06:43:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:43:13', '2024-01-25 06:43:13'),
('hyH4gLYBx4gmf4cvw4Ehch20Xb6AYoUc', '2024-01-25 15:40:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:40:12', '2024-01-24 15:40:12'),
('HyvHet1ju1_ZeKZgc81y-s1f_zqc941p', '2024-01-26 04:28:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:28:58', '2024-01-25 04:28:58'),
('I1nOJLIkZbBD2KM-ksW6k25bm0SDFfJH', '2024-01-25 23:37:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:37:21', '2024-01-24 23:37:21'),
('i3kjV6B33rZMi7uH2sP9AbXv6jzgjWD5', '2024-01-26 04:23:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:23:14', '2024-01-25 04:23:14'),
('IbUOfr5CNbmAnSY-vXGHIYMKSQol2ewl', '2024-01-26 07:13:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:13:28', '2024-01-25 07:13:28'),
('iF5DF0Qb4bngCfBrCN8MaqDS9QKGnsRb', '2024-01-26 02:25:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:25:47', '2024-01-25 02:25:47'),
('ifgYlq5VK_rxhZ2Ri53wzEKLVPkYsYv8', '2024-01-26 07:51:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:51:40', '2024-01-25 07:51:40'),
('iGQsPzaJw8ANixtAaUhyXCGrBag7omPB', '2024-01-26 01:30:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:30:33', '2024-01-25 01:30:33'),
('Inji7LOjvbVc9g8rsdebOn5cW87qxlLM', '2024-01-26 07:42:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:42:24', '2024-01-25 07:42:24'),
('iuXVI8HxqSLVwr04GJ9bJVEwBP0G9YZO', '2024-01-26 06:47:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:47:36', '2024-01-25 06:47:36'),
('IVPhu8yafZEWbQqYYJCyNlttkSoBCwwq', '2024-01-26 10:21:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:21:02', '2024-01-25 10:21:02'),
('IW0OvJ7PKYXWuJcXGvC4AxTD3vp95gGJ', '2024-01-26 02:45:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:45:50', '2024-01-25 02:45:50'),
('IwBytU_i8pVCrJLudhCZGCmAlsFHMLTl', '2024-01-25 23:37:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:37:21', '2024-01-24 23:37:21'),
('J-86Ii7qCDTr0so_MYZagturAbyLAS3s', '2024-01-25 15:00:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:00:22', '2024-01-24 15:00:22'),
('jEOOS5ae2ChngCYNpMdmyjcRe42Xgf8a', '2024-01-26 01:32:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:32:04', '2024-01-25 01:32:04'),
('JqJkm8DQk99rJCaw-KZeIQrzpefcrYqg', '2024-01-26 02:46:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:46:24', '2024-01-25 02:46:24'),
('JqObfILvVbAIhaivGnOUlpzJjpMEvjwy', '2024-01-26 02:57:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:57:36', '2024-01-25 02:57:36'),
('jugIZeblLPcr0cznRDhUMHo0-QpXydfK', '2024-01-26 09:37:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:37:13', '2024-01-25 09:37:13'),
('JwgOFcJ9Kw5lMJeIKa3Hhic6kI8qhO8i', '2024-01-26 00:37:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:37:38', '2024-01-25 00:37:38'),
('JYOy5CpxaW1t83Fb3lolU7SYOyZ1nZXQ', '2024-01-26 06:31:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:31:15', '2024-01-25 06:31:15'),
('k4VfGESn_WiXRAITFCnH66kBsPqBKcI8', '2024-01-26 07:09:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:09:41', '2024-01-25 07:09:41'),
('kaHZtn5-JNSYEXTt3wnzh4snVo2K9XiY', '2024-01-26 04:43:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:43:45', '2024-01-25 04:43:45'),
('kaq647kohzEs1JLlv6rDE1ll1diD2nb1', '2024-01-25 16:41:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 16:41:21', '2024-01-24 16:41:21'),
('KESwBjEdMJpk7KHqutR6kr01_2R4Boc9', '2024-01-26 03:51:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:51:24', '2024-01-25 03:51:24'),
('KfShmdLaAOMXxKgGVnZi6aBxoXGJnr8u', '2024-01-26 03:58:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:58:55', '2024-01-25 03:58:55'),
('kWXcw57p4g63Mozme2MDrt24WcIQaqqM', '2024-01-26 01:32:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:32:12', '2024-01-25 01:32:12'),
('kZnGEy4BcYEYytK0W1VXUVnESHTDoDno', '2024-01-26 02:16:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:16:50', '2024-01-25 02:16:50'),
('L5bsW3WwZnsOZCBbD19V5Gr1VfXgCWxd', '2024-01-26 04:43:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:43:59', '2024-01-25 04:43:59'),
('l6ionsDa15QIlYSAxuMgQrEH62GDF_7l', '2024-01-26 10:21:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:21:45', '2024-01-25 10:21:45'),
('l97tGeDxRaK6q085vXDifgJmj5Hsk-mJ', '2024-01-26 03:41:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:41:53', '2024-01-25 03:41:53'),
('LdZOA-ncgaBOQpuJojSyhnrQ6SwM-VPw', '2024-01-26 06:29:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:29:03', '2024-01-25 06:29:03'),
('ll0TXxM9rXWhkXYSLQChwUO9jk2uuqus', '2024-01-26 03:02:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:02:18', '2024-01-25 03:02:18'),
('lm7-DHBvA2faXnFzcSWsmSpMpzP7ETSk', '2024-01-25 16:43:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"3c144a6f-cc15-4d22-8f31-6e09855f3824\"}', '2024-01-24 16:13:53', '2024-01-24 16:43:48'),
('LrNH253Rff1gZjKOTr1TkHVgsZT2e3iN', '2024-01-25 15:19:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:19:10', '2024-01-24 15:19:10'),
('lSKZ7-amCNFtp7A8BoveOWYHRdggFOBd', '2024-01-26 01:32:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:32:15', '2024-01-25 01:32:15'),
('lt0RqsPC6NATn8h1KJO1bn9-LqjwKQgV', '2024-01-26 03:52:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:52:14', '2024-01-25 03:52:14'),
('lveG2Zy4jrJzIgKIOlxwuuOC0pTQVxju', '2024-01-26 09:03:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:03:58', '2024-01-25 09:03:58'),
('m2sccx4pMl3b2D0xjCxXi3a3BHpK6vp6', '2024-01-26 07:53:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:53:20', '2024-01-25 07:53:20'),
('m4uXMUKlJRp2fxHpCUqqkZVeWLpBfNWg', '2024-01-26 10:24:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:24:13', '2024-01-25 10:24:13'),
('m4vTSGqvDri7fMAFhIuPUnuwz6FGY3JN', '2024-01-25 22:50:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 22:50:07', '2024-01-24 22:50:07'),
('MGtqdajvFflWOa9wwmnPg56MxHE7U335', '2024-01-25 14:59:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 14:59:29', '2024-01-24 14:59:29'),
('mXms4tO5zYN-fpd90WRgJSfduBE187AU', '2024-01-26 02:16:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:16:25', '2024-01-25 02:16:25'),
('NANrgQ8ZfyG6W7kIloJAjSQYkwZYNvVS', '2024-01-26 04:09:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:09:26', '2024-01-25 04:09:26'),
('NDmSx-KlcF5NSYpYd6b0942iBvI4o4S-', '2024-01-26 07:51:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:51:21', '2024-01-25 07:51:21'),
('NeoF-XMHCxzZ39RvQ_QU7mmR-QMvhSVb', '2024-01-26 09:37:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:37:29', '2024-01-25 09:37:29'),
('nlX2-qBhf6XZWMdnnC5UzVr0A0tJHSAq', '2024-01-25 15:49:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:49:37', '2024-01-24 15:49:37'),
('No1gQT6OqCpJp0z7nnIQAdS1-BJIvHD1', '2024-01-26 03:41:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:41:46', '2024-01-25 03:41:46'),
('nqa-yCTukxTeOQ75cadX5i-XMZ7g2K9N', '2024-01-26 06:47:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:47:25', '2024-01-25 06:47:25'),
('nQxxU022DJAKGGxVlHFa6kw-GGkR7Rju', '2024-01-26 06:32:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:32:17', '2024-01-25 06:32:17'),
('Nyq9kQcXOW_fr5If56UeNszkaUq5f9Lg', '2024-01-26 03:53:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:53:10', '2024-01-25 03:53:10'),
('nZTvJwZjU-Ioz6xeA8Xcm-NrvripG3gH', '2024-01-26 07:09:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:09:25', '2024-01-25 07:09:25'),
('OCNi3_owLQuhnnR57yS0tOoqi_vzBSGI', '2024-01-26 02:57:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:57:43', '2024-01-25 02:57:43'),
('oL4wQnro9U6eXSdU3R3W2LLafVFjcbFc', '2024-01-26 02:51:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:51:32', '2024-01-25 02:51:32'),
('oqU4376xmVchbOIg7GKqL1cdSMdmbnyw', '2024-01-26 08:50:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 08:50:15', '2024-01-25 08:50:15'),
('OzkO8-QHCRQ8Q8viUjKT9JfIWSpKs1bS', '2024-01-25 23:37:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"3c144a6f-cc15-4d22-8f31-6e09855f3824\"}', '2024-01-24 23:37:21', '2024-01-24 23:37:55'),
('paOJC2fmqGA9zR9pFYZsh9QjrTocBcwF', '2024-01-26 03:04:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:04:36', '2024-01-25 03:04:36'),
('PjF51M7DUz8VL44BUs_gpU9ZNcKG_Qg-', '2024-01-26 08:50:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 08:50:05', '2024-01-25 08:50:05'),
('pKchWcNamOpCkIKjb1FhZ4vTsDFT5wwG', '2024-01-25 15:49:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:49:36', '2024-01-24 15:49:36'),
('pqU4ephMNWpjPmKyhbZl9q8_dawwsN8x', '2024-01-26 02:47:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:47:13', '2024-01-25 02:47:13'),
('PuN9Q6gUaHG1Z55G_sYeSAqXUnJ3lXiI', '2024-01-26 08:45:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 08:45:36', '2024-01-25 08:45:36'),
('pVIRcGX183_efSMvzhxp5b17L4esR3cR', '2024-01-26 05:04:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 05:04:59', '2024-01-25 05:04:59'),
('pZj2u1F3xjrhaIvvS205DDo8vZPKIjiZ', '2024-01-26 00:44:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:44:29', '2024-01-25 00:44:29'),
('QiE8HaR4nLkPNcF3ySRpyA32BvozD5Vy', '2024-01-26 07:50:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:50:38', '2024-01-25 07:50:38'),
('qkfqZ_QXmMcjpfti1nISpDaPlWwjlNwG', '2024-01-26 03:35:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:35:23', '2024-01-25 03:35:23'),
('QKzOX3oOo82rxwYCg8bN6foBAQ-dYH8j', '2024-01-26 06:46:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:46:49', '2024-01-25 06:46:49'),
('QLNjJl4kz06MXGaXpfFT9lTkCxyU3HPO', '2024-01-26 05:06:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"013bd8a1-e44a-47b4-9f7b-f9394a53a4a6\"}', '2024-01-25 04:28:59', '2024-01-25 05:06:47'),
('QpaB2ilo_3Ox3mOq14OodsDUkAyQh58M', '2024-01-26 07:50:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:50:45', '2024-01-25 07:50:45'),
('qr3P1baVVv6Eu-ZZoa5wg-K0-Q7RoKsb', '2024-01-26 06:42:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:42:36', '2024-01-25 06:42:36'),
('QTxLNnXIGIPCra62tHKNP3dC2_Hj6Hcf', '2024-01-26 02:20:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:20:34', '2024-01-25 02:20:34'),
('QUTUrfixll71LEZLK2jmAF3l1Lqm2tRf', '2024-01-26 07:16:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:16:32', '2024-01-25 07:16:32'),
('QW47V7vubEQ-MijniNo2H6SDBkv3Qfxu', '2024-01-26 06:43:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:43:06', '2024-01-25 06:43:06'),
('QYPmLfh5as5n6wNSWqVDdO1Q-A0PmTZc', '2024-01-25 23:35:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:35:17', '2024-01-24 23:35:17'),
('q_XdxtasH0eNbcpdR0bbYd0FMzapGZks', '2024-01-26 10:20:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:20:55', '2024-01-25 10:20:55'),
('r0b0_PttHC9Upo_avVlW8qQ4zOGdWDBB', '2024-01-26 05:06:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 05:06:49', '2024-01-25 05:06:49'),
('r1RS_XjKwLG9KfA_vXYcCW7VL_duePbs', '2024-01-26 04:44:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:44:39', '2024-01-25 04:44:39'),
('R20HPNTaVgAyHjZWCJVvEs2jxvsPFOGi', '2024-01-26 04:59:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:59:30', '2024-01-25 04:59:30'),
('R25QGVVFaObSubkGPyOmLAp1MHPJe7r9', '2024-01-26 02:17:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:17:54', '2024-01-25 02:17:54'),
('RMtKDz32Hxq9iJPgj3Eapn0K03mJUkRg', '2024-01-26 10:04:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:04:27', '2024-01-25 10:04:27'),
('rVIeijix-pldD6BGAlXRDXBghQ0l_JfQ', '2024-01-26 09:37:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:37:21', '2024-01-25 09:37:21'),
('ryf3gxBRLMf5UGx6peoD6UwbstaAYJX0', '2024-01-26 06:28:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:28:52', '2024-01-25 06:28:52'),
('S2Yz3z5zKhNc3HP6mc96-BJOHUdizL_W', '2024-01-26 04:23:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:23:07', '2024-01-25 04:23:07'),
('SApZDE3TWTUfjbRLz-1wBMlrYM_3wS6l', '2024-01-26 00:45:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:45:28', '2024-01-25 00:45:28'),
('sdFvYiIsgJ64Ys-tAxgi8FexU2dySt4W', '2024-01-26 07:52:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:52:28', '2024-01-25 07:52:28'),
('Sdvg6QBJWB4xmJ5PeZzv4RieY1LoYFGn', '2024-01-25 15:49:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:49:24', '2024-01-24 15:49:24'),
('seWGAymOQSi_X1yKo1osZZ2jyu2eEZN9', '2024-01-26 04:23:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:23:18', '2024-01-25 04:23:18'),
('SEZjjp_EQAotFg65rffrFbAHfGidpSAE', '2024-01-26 06:31:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:31:41', '2024-01-25 06:31:41'),
('SkDtbtdkWMVoNMHu8FvFRUvosCee9xhq', '2024-01-26 07:53:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:53:31', '2024-01-25 07:53:31'),
('sLnSCUWuCT4hyfN-aTu-IY-v3w_WMe0V', '2024-01-26 06:32:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:32:17', '2024-01-25 06:32:17'),
('sL_LSg4aEUAyrvO0EFKNsj0NhXnkJqrs', '2024-01-26 02:55:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:55:52', '2024-01-25 02:55:52'),
('SrDbegmDN85gLU8iu3pjI8AEq1LoBQwX', '2024-01-26 10:05:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:05:35', '2024-01-25 10:05:35'),
('t1ZpmRuQ8eCE0Uu12K9rQHp9QCpz8zao', '2024-01-26 08:50:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 08:50:11', '2024-01-25 08:50:11'),
('Ta0OACsduK-GQrQGQCwsrTYtq10Ve2Zh', '2024-01-26 01:28:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:28:08', '2024-01-25 01:28:08'),
('tgWu48ZqqZhYH_jwGKd_DWXyfRomSLFs', '2024-01-26 04:09:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:09:31', '2024-01-25 04:09:31'),
('Tig76vXzxBo2GRxJUNHhK2HEPjMq2cDf', '2024-01-26 05:03:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 05:03:35', '2024-01-25 05:03:35'),
('tvSnDuBhEq5cc1hCnplAbXUy2ZHIOzTg', '2024-01-26 00:30:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:30:46', '2024-01-25 00:30:46'),
('tweRS-dtmvZWhpRIRTc5pvq0sYF59ZIc', '2024-01-26 06:46:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:46:44', '2024-01-25 06:46:44'),
('twsbzZCVI-KdNtuu7xwyNluNXgoltwlH', '2024-01-25 15:00:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:00:02', '2024-01-24 15:00:02'),
('UA-DZ4pSs7Pq4bRQajBVgQIg6gV0h3EE', '2024-01-26 10:21:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:21:31', '2024-01-25 10:21:31'),
('uAAWnubFX2IscnwOnoPlc5-1rvr3OLuL', '2024-01-26 02:09:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:09:49', '2024-01-25 02:09:49'),
('USASNYe9hd25y_ji4FkwCohTxTNY4RAG', '2024-01-25 23:37:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:37:29', '2024-01-24 23:37:29'),
('vcdtq6o1Pjn4WlQ9qu8_Jk3yrqZZOpFG', '2024-01-26 02:55:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:55:44', '2024-01-25 02:55:44'),
('Vf9ckMU1Q4csXrOXeQni-05hKh0ueKMp', '2024-01-26 07:51:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:51:51', '2024-01-25 07:51:51'),
('VJHdKVs8gYo2z_P4OzvGrAyOaWZHZTCM', '2024-01-25 23:35:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 23:35:10', '2024-01-24 23:35:10'),
('VmKvOyTvWeJTesoiQz8GBiciPHcLKnC7', '2024-01-26 03:37:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:37:08', '2024-01-25 03:37:08'),
('voEo7YY8yAlS5uC_Q0T-lTP-uOFM8IHP', '2024-01-25 12:32:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"3c144a6f-cc15-4d22-8f31-6e09855f3824\"}', '2024-01-24 12:31:05', '2024-01-24 12:32:21'),
('VZ8XkJuEdmSkXA-jN93GtfZFOYE5VRtq', '2024-01-26 03:52:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:52:38', '2024-01-25 03:52:38'),
('V_eHxvNEhhBQ10vfriY5-HMwZP7HM80c', '2024-01-25 15:39:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:39:45', '2024-01-24 15:39:45'),
('w6m-VigdHDH_zi7z1ZQif9w0KMA9jY2H', '2024-01-25 15:59:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:59:28', '2024-01-24 15:59:28'),
('w6SZA-1PgqKFvo7EB4UO2idtPhi8tlG1', '2024-01-26 07:42:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:42:35', '2024-01-25 07:42:35'),
('waJQ3ayK5pzB89jOeZZ2LfC0sK4oMN6g', '2024-01-26 07:44:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:44:01', '2024-01-25 07:44:01');
INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('wAmNlx_K5LFabfbWlRJVzBZsDUfaoEbn', '2024-01-26 00:40:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:40:01', '2024-01-25 00:40:01'),
('WDm1pINB4cNzQsOMxFkKGdj-8kaceRWj', '2024-01-26 07:52:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:52:35', '2024-01-25 07:52:35'),
('WphAceQNyqz8tXbYkPQT0p37J2SfgRC3', '2024-01-26 00:44:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:44:36', '2024-01-25 00:44:36'),
('wPkToYfTNzq0qQPBD-z0cj_1OzWWU1B4', '2024-01-26 00:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:30:53', '2024-01-25 00:30:53'),
('wrqIPvt2LGCdsfOaQGvhpNElw2kc6z1u', '2024-01-26 07:11:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:11:54', '2024-01-25 07:11:54'),
('WsXDbbcibCT9iZMY1C0uK59nx0LC33OR', '2024-01-26 06:32:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:32:08', '2024-01-25 06:32:08'),
('wVI2kcuAWAVzmkbwAcUxIdeLtxLHOdR6', '2024-01-26 03:05:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:05:10', '2024-01-25 03:05:10'),
('WXW93u7hbApwtXdz9z1JKe_RoM2scCO-', '2024-01-26 06:53:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:53:05', '2024-01-25 06:53:05'),
('X7JrH9muyNAPV0vG9gvGeglaCbx91sOt', '2024-01-25 14:57:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 14:57:03', '2024-01-24 14:57:03'),
('x8Xvov5UwWXzV52ZBczWx2fgBDZBIW_K', '2024-01-26 03:35:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:35:13', '2024-01-25 03:35:13'),
('xKHXM7Z4DaihaLsXbkjw_2S3Q0Ephx0-', '2024-01-26 03:51:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:51:05', '2024-01-25 03:51:05'),
('Xusq3cjfNbptVcDPXRhwWTaVQE-a_Z9_', '2024-01-26 03:11:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:11:08', '2024-01-25 03:11:08'),
('xvtcsFtRoqfHDrrEJl6XDdUv9vdK1_l-', '2024-01-26 02:17:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:17:29', '2024-01-25 02:17:29'),
('XWdTT6II-s0w0sReYBlHRQ60BfNfkxNc', '2024-01-26 06:42:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:42:21', '2024-01-25 06:42:21'),
('XwraQI8ZhWJECTJwXg0haLHbI_oxuOco', '2024-01-26 10:22:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:22:23', '2024-01-25 10:22:23'),
('xWT_Y1IadQK3Y4u5Z3ZPvIaybg4UWbow', '2024-01-26 02:51:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:51:46', '2024-01-25 02:51:46'),
('xXh6h32VaTCnR0mlMfyIPPWoqBykYx9t', '2024-01-25 15:49:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:49:20', '2024-01-24 15:49:20'),
('xyXWsOrT1SpGSlHvBVwkRE4YMSQskGp8', '2024-01-26 10:19:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 10:19:42', '2024-01-25 10:19:42'),
('YBdQpm05F3ZvH02GfTeFPlHg3yTWXOkS', '2024-01-25 15:23:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 15:23:17', '2024-01-24 15:23:17'),
('ycbkHbGipnp8ndbVy6nJqpHv-pxhOZ4G', '2024-01-25 16:41:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 16:41:32', '2024-01-24 16:41:32'),
('ydqcpgFLpnlOihe1AZMAQqjylttJ2v0k', '2024-01-26 06:47:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:47:19', '2024-01-25 06:47:19'),
('YFJS7CaYotBWjbhTeZ1rHr4ZXY9gsVsy', '2024-01-26 02:17:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:17:22', '2024-01-25 02:17:22'),
('yNiGyvvMGJlv5hd-v8LewXtdP2-NyaH-', '2024-01-26 02:50:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:50:35', '2024-01-25 02:50:35'),
('yqNSpguZM0IUx8inLrDA4zbw4tg8g-CX', '2024-01-25 22:51:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 22:51:19', '2024-01-24 22:51:19'),
('YRKLeMOd1ygWcFcTjGI4WeeSOivc6ugS', '2024-01-26 01:35:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 01:35:38', '2024-01-25 01:35:38'),
('yTblMpPPRSssh2sW4p9OklvOwzn7Bpxw', '2024-01-26 07:16:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:16:09', '2024-01-25 07:16:09'),
('yW-2D_YXvUMhJB-MwOSRPdP7q-7t-SeA', '2024-01-26 03:58:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:58:50', '2024-01-25 03:58:50'),
('Z50lksXyUQ1DEqc0RgP-XQ0Ks_P5CGPG', '2024-01-26 00:30:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 00:30:33', '2024-01-25 00:30:33'),
('z5kpeFzsZMe3elVNTz8Rq7XpcHIdQdXO', '2024-01-26 06:31:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:31:23', '2024-01-25 06:31:23'),
('zgojeHpT6zbFaCD-AB4lMFJ1Ivi7oXfY', '2024-01-26 02:19:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:19:50', '2024-01-25 02:19:50'),
('ZthF7UFAPJAz64IV75mdC-3KsgMpH-VG', '2024-01-26 07:51:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:51:27', '2024-01-25 07:51:27'),
('ZtIlSGmcQ_T0dM6UxY9Z1bUHrcoGM3pk', '2024-01-26 02:36:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:36:03', '2024-01-25 02:36:03'),
('Zut_SZaD2wk_uxGamyLypi_fB1LMK7Hh', '2024-01-26 02:23:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 02:23:48', '2024-01-25 02:23:48'),
('ZWFLKEZll0JjO-hfmrxyOYUTAYyPe-t6', '2024-01-26 07:43:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 07:43:14', '2024-01-25 07:43:14'),
('ZWtcLpOyVC4QUvTao_TWyCUw6qS68wwi', '2024-01-25 12:30:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-24 12:30:09', '2024-01-24 12:30:28'),
('zYZfpPAEUwgMNiW2jaqAD5SOxieRBeqL', '2024-01-26 03:52:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 03:52:52', '2024-01-25 03:52:52'),
('_0wfrDX1MnQnoTlOoW09zNjTnQieJOn1', '2024-01-26 04:47:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 04:47:15', '2024-01-25 04:47:15'),
('_E9eE954jW2a2eBbLrd_feJsThy0lfi9', '2024-01-26 09:05:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:05:19', '2024-01-25 09:05:19'),
('_Q8Ojq---j6OWiwKtEFM28IpVQkh0klN', '2024-01-26 09:04:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 09:04:08', '2024-01-25 09:04:08'),
('_zffVQ7dJ4_CB-ImC-Fx58JiKGuILX-V', '2024-01-26 06:53:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-01-25 06:53:03', '2024-01-25 06:53:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(4, '013bd8a1-e44a-47b4-9f7b-f9394a53a4a6', 'ADMIN', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$aHuCjvNrs4IdJB0bmujKzQ$D+YV5+b8oZcyucHCs2QuAODcMp898wftdM4C7UMOl8A', 'admin', '2024-01-25 00:37:17', '2024-01-25 06:42:36'),
(12, '870a031f-318e-430c-91b7-46f87b54920e', 'MEMBER', 'member@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$9nAFf81Gkd46ZX9NV6vyag$Y7jbCczqegP5CZ2tQhy1NWLGqLWNoKZGX2C89F6Z738', 'user', '2024-01-25 06:31:41', '2024-01-25 06:42:50'),
(14, 'f0607ea6-aa1e-47a4-bc2c-eacc6cf69dab', 'Yuma', 'yumana@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$waxMU4/O88EpN7aMlWqQWA$Wt6kjwdHgwoQLzzrxbHWQWJYxovFGHDY3PmZ3nDY6D4', 'user', '2024-01-25 07:16:32', '2024-01-25 07:16:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `collectionbooks`
--
ALTER TABLE `collectionbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `collectionbooks`
--
ALTER TABLE `collectionbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `collectionbooks`
--
ALTER TABLE `collectionbooks`
  ADD CONSTRAINT `collectionbooks_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `collectionbooks_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
