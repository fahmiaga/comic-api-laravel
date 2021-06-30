-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2021 pada 04.49
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comic`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comics`
--

CREATE TABLE `comics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `synopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comic_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drop_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comic_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comics`
--

INSERT INTO `comics` (`id`, `title`, `slug`, `genre`, `synopsis`, `comic_image`, `drop_image`, `comic_name`, `drop_name`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'One Punch Man', 'one-punch-man', 'Comedy', 'is a Japanese superhero franchise created by the artist ONE. It tells the story of Saitama, a superhero who can defeat any opponent with a single punch but seeks to find a worthy opponent after growing bored by a lack of challenge due to his overwhelming strength. ONE wrote the original webcomic version in early 2009.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622899967/mmrqhd2bvjrf1wnf4nne.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622899969/wofcssg7bhaji4465ksb.jpg', 'mmrqhd2bvjrf1wnf4nne', 'wofcssg7bhaji4465ksb', '4.7', '2021-05-28 01:30:13', '2021-06-23 00:15:56'),
(4, 'One Piece', 'one-piece', 'Action', 'One Piece (stylized as ONE PIECE), is a Japanese manga series written and illustrated by Eiichiro Oda. It has been serialized in Shueisha\'s shōnen manga magazine Weekly Shōnen Jump since July 1997, with its individual chapters compiled into 99 tankōbon volumes as of February 2021.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1623982974/hekwymbiu3a9jo0abafl.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1623982976/hbkx1yytxzbzy3hyw4q4.jpg', 'hekwymbiu3a9jo0abafl', 'hbkx1yytxzbzy3hyw4q4', '5', '2021-05-31 20:19:42', '2021-06-28 20:21:58'),
(5, 'Attack on Titan', 'attack-on-titan', 'Drama', 'Japanese manga series written by Riichiro Inagaki and illustrated by Yusuke Murata. The series tells the story of Sena Kobayakawa, an introverted boy who joins an American football club as a secretary, but after being coerced by quarterback Yoichi Hiruma, becomes the team\'s running back, whilst wearing an eyeshield and the number 21, under the pseudonym of \"Eyeshield 21\". Inagaki chose American football as a central subject of Eyeshield 21 after realizing that it fit perfectly with his idea for the series.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1623924555/rblwl7vnbggexu3fwo6w.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1623924557/bkxeju5h2d8n2fovxusp.jpg', 'rblwl7vnbggexu3fwo6w', 'bkxeju5h2d8n2fovxusp', '5', '2021-05-31 20:24:36', '2021-06-23 02:58:39'),
(19, 'Eyeshield 21', 'eyeshield-21', 'Comedy', 'Japanese manga series written by Riichiro Inagaki and illustrated by Yusuke Murata. The series tells the story of Sena Kobayakawa, an introverted boy who joins an American football club as a secretary, but after being coerced by quarterback Yoichi Hiruma, becomes the team\'s running back, whilst wearing an eyeshield and the number 21, under the pseudonym of \"Eyeshield 21\". Inagaki chose American football as a central subject of Eyeshield 21 after realizing that it fit perfectly with his idea for the series.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622889475/dfmhn76uu1f5athk4tix.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622889479/k4dkknuk1lrf2halud3j.png', 'dfmhn76uu1f5athk4tix', 'k4dkknuk1lrf2halud3j', '5', '2021-06-05 03:38:00', '2021-06-23 02:55:50'),
(24, 'Naruto', 'naruto', 'Action', 'Naruto (Japanese: NARUTOナルト) is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village. The story is told in two parts – the first set in Naruto\'s pre-teen years, and the second in his teens. The series is based on two one-shot manga by Kishimoto: Karakuri (1995), which earned Kishimoto an honorable mention in Shueisha\'s monthly Hop Step Award the following year, and Naruto (1997).', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1623926075/szbdnmgxuohqr49lmyfu.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1623926077/um4ak9di9ytwg3gz1fev.jpg', 'szbdnmgxuohqr49lmyfu', 'um4ak9di9ytwg3gz1fev', '4.5', '2021-06-17 03:33:55', '2021-06-26 19:58:46'),
(25, 'Bleach', 'bleach', 'Horror', 'Bleach (stylized as BLEACH) is a Japanese manga series written and illustrated by Tite Kubo. Bleach follows the adventures of the hotheaded teenager Ichigo Kurosaki, who inherits his parents\' destiny after he obtains the powers of a Soul Reaper—a death personification similar to the Grim Reaper—from another Soul Reaper, Rukia Kuchiki.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243310/peyw39uha8zixpx0usuc.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243314/ueyureutxduvtc4hqisp.jpg', 'peyw39uha8zixpx0usuc', 'ueyureutxduvtc4hqisp', '4', '2021-06-20 19:41:56', '2021-06-23 06:32:44'),
(26, 'Fairy Tail', 'fairy-tail', 'Comedy', 'Fairy Tail (stylized as FAIRY TAIL) is a Japanese manga series written and illustrated by Hiro Mashima. It was serialized in Kodansha\'s Weekly Shōnen Magazine from August 2006 to July 2017, with the individual chapters collected and published into 63 tankōbon volumes.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243430/vwlztcs0kp5hhdxclh2k.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243434/ip95pkhdqdy2usgeerfb.jpg', 'vwlztcs0kp5hhdxclh2k', 'ip95pkhdqdy2usgeerfb', '0', '2021-06-20 19:43:55', '2021-06-20 19:43:55'),
(27, 'Nanatsu No Taizai', 'nanatsu-no-taizai', 'Horror', 'The Seven Deadly Sins (Japanese: 七つの大罪, Hepburn: Nanatsu no Taizai) is a Japanese fantasy manga series written and illustrated by Nakaba Suzuki. It was serialized in Kodansha\'s Weekly Shōnen Magazine from October 2012 to March 2020, with the chapters collected into forty-one tankōbon volumes. The manga features a setting similar to the European Middle Ages, with its titular group of knights representing the seven deadly sins.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243613/vujyfowrmjgfacqpzndr.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243615/fckl76bvz5wdyju3e2zt.jpg', 'vujyfowrmjgfacqpzndr', 'fckl76bvz5wdyju3e2zt', '5', '2021-06-20 19:46:57', '2021-06-23 03:28:29'),
(28, 'jojo\'s bizarre adventure', 'jojos-bizarre-adventure', 'Action', 'JoJo\'s Bizarre Adventure (Japanese: ジョジョの奇妙な冒険, Hepburn: JoJo no Kimyō na Bōken) is a Japanese manga series written and illustrated by Hirohiko Araki. It was originally serialized in Shueisha\'s Weekly Shōnen Jump magazine from 1987 to 2004, and was transferred to the monthly seinen magazine Ultra Jump in 2005.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243793/sp6rxtfdddasxo9blloz.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243795/kir7fm5fblx3doe3fqto.jpg', 'sp6rxtfdddasxo9blloz', 'kir7fm5fblx3doe3fqto', '5', '2021-06-20 19:49:56', '2021-06-23 06:29:17'),
(29, 'Detective Conan', 'detective-conan', 'Drama', 'Case Closed, also known as Detective Conan (Japanese: 名探偵コナン, Hepburn: Meitantei Konan), is a Japanese detective manga series written and illustrated by Gosho Aoyama. It has been serialized in Shogakukan\'s Weekly Shōnen Sunday since January 1994, with its chapters collected in 99 tankōbon volumes as of April 2021.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243907/t65miqja86jsmty6mfkm.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624243909/vvb36lfkvl7pczpymzsl.jpg', 't65miqja86jsmty6mfkm', 'vvb36lfkvl7pczpymzsl', '5', '2021-06-20 19:51:50', '2021-06-23 03:18:41'),
(30, 'TEST', 'test', 'Comedy', 'TEST', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624854715/uxf6cvzwrvyrvbzetw4b.jpg', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624854717/wowkg2lohkyvxnzh7oqy.jpg', 'uxf6cvzwrvyrvbzetw4b', 'wowkg2lohkyvxnzh7oqy', '0', '2021-06-27 21:31:58', '2021-06-27 21:31:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comic_genres`
--

CREATE TABLE `comic_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_comic` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comic_genres`
--

INSERT INTO `comic_genres` (`id`, `id_comic`, `id_genre`, `created_at`, `updated_at`) VALUES
(2, 18, 1, '2021-06-04 21:42:39', '2021-06-04 21:42:39'),
(3, 18, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_episode` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `id_episode`, `id_user`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'this episode so amazing', '2021-05-16 19:56:31', '2021-05-16 19:56:31'),
(2, 4, 1, 'can\'t wait for next episode', '2021-05-16 19:58:34', '2021-05-16 19:58:34'),
(3, 4, 2, 'wow awesome', '2021-05-16 20:45:36', '2021-05-16 20:45:36'),
(4, 4, 4, 'i can\'t breath, this so amazing, keep it up author!', '2021-05-31 19:41:17', '2021-05-31 19:41:17'),
(5, 4, 1, 'uuuuu yeahhh', '2021-06-24 19:35:43', '2021-06-24 19:35:43'),
(17, 4, 1, 'asas', '2021-06-24 20:00:02', '2021-06-24 20:00:02'),
(18, 10, 1, 'keep it up', '2021-06-24 20:00:37', '2021-06-24 20:00:37'),
(19, 1, 1, 'wrong comic', '2021-06-24 20:11:30', '2021-06-24 20:11:30'),
(20, 10, 9, 'oke', '2021-06-27 21:30:21', '2021-06-27 21:30:21'),
(21, 10, 9, 'cool', '2021-06-28 21:13:10', '2021-06-28 21:13:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `days`
--

INSERT INTO `days` (`id`, `day`, `created_at`, `updated_at`) VALUES
(1, 'Sunday', '2021-06-19 02:48:58', '2021-06-19 02:48:58'),
(2, 'Monday', '2021-06-19 02:49:24', '2021-06-19 02:49:24'),
(3, 'Tuesday', '2021-06-19 02:49:41', '2021-06-19 02:49:41'),
(4, 'Wednesday', '2021-06-19 02:49:52', '2021-06-19 02:49:52'),
(5, 'Thursday', '2021-06-19 02:50:01', '2021-06-19 02:50:01'),
(6, 'Friday', '2021-06-19 02:50:18', '2021-06-19 02:50:18'),
(7, 'Saturday', '2021-06-19 02:50:28', '2021-06-19 02:50:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `episodes`
--

CREATE TABLE `episodes` (
  `id_episode` bigint(20) UNSIGNED NOT NULL,
  `id_comic` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `episodes`
--

INSERT INTO `episodes` (`id_episode`, `id_comic`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Eps 01', 'one-punch-man', '2021-05-14 20:16:55', '2021-05-14 20:57:06'),
(2, 2, 'Eps 1', 'one-piece', '2021-05-14 20:18:28', '2021-05-14 20:18:28'),
(5, 1, 'Eps 02', 'one-punch-man', '2021-06-17 07:38:50', '2021-06-17 07:38:50'),
(6, 1, 'Eps 03', 'one-punch-man', '2021-06-17 07:39:25', '2021-06-17 07:58:06'),
(8, 24, 'Eps 01', 'naruto', '2021-06-17 19:24:13', '2021-06-17 19:24:13'),
(9, 19, 'Eps 01', 'eyeshield-21', '2021-06-17 21:10:06', '2021-06-17 21:10:06'),
(10, 4, 'Eps 01', 'one-piece', '2021-06-17 21:10:31', '2021-06-17 21:10:31'),
(11, 5, 'Eps 01', 'attack-on-titan', '2021-06-17 21:10:44', '2021-06-17 21:10:44'),
(12, 29, 'Eps 01', 'detective-conan', '2021-06-23 07:36:23', '2021-06-23 07:36:23'),
(13, 30, 'Eps 01', 'test', '2021-06-27 21:32:18', '2021-06-27 21:32:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `genres`
--

INSERT INTO `genres` (`id`, `genre`, `created_at`, `updated_at`) VALUES
(1, 'Comedy', '2021-06-04 20:10:45', '2021-06-04 20:10:45'),
(2, 'Horror', '2021-06-04 20:13:01', '2021-06-04 20:26:57'),
(4, 'Action', '2021-06-15 20:23:09', '2021-06-15 20:23:09'),
(20, 'Drama', '2021-06-16 02:45:42', '2021-06-16 02:45:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_episode` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `id_episode`, `image`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622343479/g8aebtpofah3wckfpplv.jpg', 'g8aebtpofah3wckfpplv', '2021-05-29 19:37:24', '2021-05-29 19:57:59'),
(2, 1, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622342245/qvwifmhfsdtajnmjhkbf.jpg', 'qvwifmhfsdtajnmjhkbf', '2021-05-29 19:37:26', '2021-05-29 19:37:26'),
(3, 1, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622342248/vbi5ikoxwovnuyo6cfxb.jpg', 'vbi5ikoxwovnuyo6cfxb', '2021-05-29 19:37:28', '2021-05-29 19:37:28'),
(4, 2, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622342763/pyhdtn1lknnho0ajydbz.jpg', 'pyhdtn1lknnho0ajydbz', '2021-05-29 19:46:04', '2021-05-29 19:46:04'),
(5, 2, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622342765/wep9cb1dsjedqvbdpdeq.jpg', 'wep9cb1dsjedqvbdpdeq', '2021-05-29 19:46:06', '2021-05-29 19:46:06'),
(6, 2, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622342771/ltmhflsd1lns4lmltvpk.jpg', 'ltmhflsd1lns4lmltvpk', '2021-05-29 19:46:13', '2021-05-29 19:46:13'),
(7, 2, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622342775/rssbeubkt90av8p8voph.jpg', 'rssbeubkt90av8p8voph', '2021-05-29 19:46:15', '2021-05-29 19:46:15'),
(8, 2, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622342777/x6pweqiqp45y9opihoxt.jpg', 'x6pweqiqp45y9opihoxt', '2021-05-29 19:46:18', '2021-05-29 19:46:18'),
(12, 1, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624024226/m2rgut3r44kfwhdy9ouc.jpg', 'm2rgut3r44kfwhdy9ouc', '2021-06-18 06:50:26', '2021-06-18 06:50:26'),
(13, 1, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624026499/dvhnfzxqtax1cxbxpc0j.jpg', 'dvhnfzxqtax1cxbxpc0j', '2021-06-18 07:01:03', '2021-06-18 07:28:19'),
(15, 10, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624027562/deduvftyc7qmke9ja4vo.jpg', 'deduvftyc7qmke9ja4vo', '2021-06-18 07:39:58', '2021-06-18 07:46:01'),
(16, 10, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624027961/fgf03z8asq1csees06bb.jpg', 'fgf03z8asq1csees06bb', '2021-06-18 07:41:48', '2021-06-18 07:52:41'),
(17, 10, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624027992/wrrnrb6zsja4srpq8s50.jpg', 'wrrnrb6zsja4srpq8s50', '2021-06-18 07:53:11', '2021-06-18 07:53:11'),
(18, 10, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624027994/cimt5zatxxzwkvprofta.jpg', 'cimt5zatxxzwkvprofta', '2021-06-18 07:53:14', '2021-06-18 07:53:14'),
(19, 10, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624028001/m5zvsxotgjbiik3kzeje.jpg', 'm5zvsxotgjbiik3kzeje', '2021-06-18 07:53:21', '2021-06-18 07:53:21'),
(20, 13, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624854795/xfk1xflaan8fbsujtygv.jpg', 'xfk1xflaan8fbsujtygv', '2021-06-27 21:33:16', '2021-06-27 21:33:16'),
(21, 13, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624854797/ggcdspnktpqqmtp0l97k.jpg', 'ggcdspnktpqqmtp0l97k', '2021-06-27 21:33:18', '2021-06-27 21:33:18'),
(22, 13, 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624854803/fxubhj5zv4kaxhlwsn5s.jpg', 'fxubhj5zv4kaxhlwsn5s', '2021-06-27 21:33:24', '2021-06-27 21:33:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(35, '2014_10_12_000000_create_users_table', 1),
(36, '2014_10_12_100000_create_password_resets_table', 1),
(37, '2019_08_19_000000_create_failed_jobs_table', 1),
(38, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(39, '2021_05_10_140207_create_comics_table', 1),
(40, '2021_05_15_024044_create_episodes_table', 1),
(41, '2021_05_15_092758_create_images_table', 2),
(42, '2021_05_16_022857_create_images_table', 3),
(43, '2021_05_17_021503_create_comments_table', 3),
(44, '2021_05_31_021413_create_rates_table', 4),
(45, '2021_06_01_024855_create_days_table', 5),
(46, '2021_06_01_025912_create_schedules_table', 5),
(47, '2021_06_05_025706_create_genres_table', 6),
(48, '2021_06_05_025851_create_comic_genres_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'token', 'f948a3bc4b022746db820a87d0232ad7bd2bc94147313a5c2e6fcaaa2128bcd8', '[\"*\"]', '2021-06-17 07:34:50', '2021-05-14 20:09:31', '2021-06-17 07:34:50'),
(3, 'App\\Models\\User', 1, 'token', '67785bbbc3820a948074551489aa918726d428fb24b6722fe570bf250e02b883', '[\"*\"]', '2021-05-29 19:46:02', '2021-05-15 02:42:39', '2021-05-29 19:46:02'),
(4, 'App\\Models\\User', 2, 'token', '8802bc1721c02d3bff84337102f4472dab8692a0d5217828bebeba31136b5322', '[\"*\"]', NULL, '2021-05-16 19:19:22', '2021-05-16 19:19:22'),
(5, 'App\\Models\\User', 2, 'token', 'a1ceaced17810f20dab3d84134866e90b44c4a8e47646745002aab267f6cd4d3', '[\"*\"]', '2021-05-16 20:45:36', '2021-05-16 20:44:35', '2021-05-16 20:45:36'),
(6, 'App\\Models\\User', 2, 'token', 'e00490e77057eb59f6802c642052636776b1dbab0ec23031629ba228fa03090e', '[\"*\"]', '2021-06-04 20:30:54', '2021-05-27 19:39:54', '2021-06-04 20:30:54'),
(7, 'App\\Models\\User', 3, 'token', 'bd4dde1d4d8665683d0632dbddf41b1dcfabb76c839fcfe0466c88a059d32ebb', '[\"*\"]', NULL, '2021-05-30 19:57:05', '2021-05-30 19:57:05'),
(8, 'App\\Models\\User', 3, 'token', 'd250f7b5b594faf8b648971d4db13675fd51871e448531392468a8935cf5ca88', '[\"*\"]', NULL, '2021-05-30 19:57:57', '2021-05-30 19:57:57'),
(9, 'App\\Models\\User', 3, 'token', '6b00929255a368dc9fdb7e77ea1ea1cd4f1f0fd4938419ca1d8cd38f28aebada', '[\"*\"]', NULL, '2021-05-30 20:04:19', '2021-05-30 20:04:19'),
(10, 'App\\Models\\User', 3, 'token', '230852d84228bb22593c8269710aabb9b47edcf708f8371cc7113b585d698c94', '[\"*\"]', NULL, '2021-05-30 20:07:11', '2021-05-30 20:07:11'),
(11, 'App\\Models\\User', 3, 'token', '6d34a23bd055a342a0c43d79cad21c29cd714b18315a2acf8989466e642ad2e7', '[\"*\"]', '2021-05-30 20:10:17', '2021-05-30 20:09:43', '2021-05-30 20:10:17'),
(12, 'App\\Models\\User', 4, 'token', '4cef1b0c3e3d317f5ff69093f48bf574933ac781146ba033d89d37febe89f3ad', '[\"*\"]', NULL, '2021-05-30 20:11:34', '2021-05-30 20:11:34'),
(13, 'App\\Models\\User', 4, 'token', '8fb048b851e47b5976d3615ae158647f7f99328d3fb0590f997b73a70419f54c', '[\"*\"]', '2021-06-24 18:54:01', '2021-05-30 20:11:49', '2021-06-24 18:54:01'),
(14, 'App\\Models\\User', 3, 'token', 'f02b3ade9700000fe01ce57e01e1bff638d3e9f4dbc5a15de4c579d79b71ea2a', '[\"*\"]', '2021-05-30 20:32:19', '2021-05-30 20:32:03', '2021-05-30 20:32:19'),
(15, 'App\\Models\\User', 2, 'token', 'fedff01b28d9b2c85ce70f1c1f0ba82e843acb363c93f58ffb0a38999a4aea76', '[\"*\"]', '2021-05-30 20:53:15', '2021-05-30 20:32:41', '2021-05-30 20:53:15'),
(16, 'App\\Models\\User', 1, 'token', 'd17d951f7315b1a18a4811e816a97f6e28f9b7541cf8d3a242a0b407cf42cd23', '[\"*\"]', '2021-05-30 21:08:11', '2021-05-30 20:53:38', '2021-05-30 21:08:11'),
(17, 'App\\Models\\User', 1, 'token', '7209771a7d5d93b0344c5efcee2bd8b913d494f0360dab91af84057fe28e3f5c', '[\"*\"]', NULL, '2021-06-14 07:38:59', '2021-06-14 07:38:59'),
(18, 'App\\Models\\User', 1, 'token', '00f129044fe53703d0c9647833f92de613964f7e7fc1b5c831279690ebb2c227', '[\"*\"]', NULL, '2021-06-14 20:10:53', '2021-06-14 20:10:53'),
(19, 'App\\Models\\User', 1, 'token', 'f3a83b7ce70e03cb2d32ea46e530ec56fc07e7cd683169285f3cd71579f4834f', '[\"*\"]', NULL, '2021-06-14 20:11:30', '2021-06-14 20:11:30'),
(20, 'App\\Models\\User', 1, 'token', '292a8cf841d9777e1c1ef048261a3e0f30ffadacffefc9b79de2983f495d8b60', '[\"*\"]', NULL, '2021-06-14 20:13:41', '2021-06-14 20:13:41'),
(21, 'App\\Models\\User', 1, 'token', '8b0ada0490dffc6b3a5c579f66e58476d997c8155258b1dbb9557aab147de483', '[\"*\"]', NULL, '2021-06-14 20:15:27', '2021-06-14 20:15:27'),
(22, 'App\\Models\\User', 1, 'token', '6c6e328b55c4ad74731757a08c71729b10abae6bc4d2c769cc38f7c11bbfcb2a', '[\"*\"]', NULL, '2021-06-14 20:16:08', '2021-06-14 20:16:08'),
(23, 'App\\Models\\User', 1, 'token', '93f1da02d18eff02e478d827f263347e6c9e8dd7ea9e1249631ab67ea4f954c2', '[\"*\"]', NULL, '2021-06-14 20:16:51', '2021-06-14 20:16:51'),
(24, 'App\\Models\\User', 1, 'token', '75704bce6931b8706936148f30f66559bc22c28c8e9ddba0afb7229758ac631c', '[\"*\"]', NULL, '2021-06-14 20:19:09', '2021-06-14 20:19:09'),
(25, 'App\\Models\\User', 1, 'token', '334d34b54ed070dcc2d08ac1e6505cf5dff7e682f56b6029041b4ff6aa4caff6', '[\"*\"]', NULL, '2021-06-14 20:24:31', '2021-06-14 20:24:31'),
(26, 'App\\Models\\User', 5, 'token', '4f19a86aea27d3c25405202e385f57ab46e20623abc4cb3acea5b4989e1de8a8', '[\"*\"]', NULL, '2021-06-14 20:27:10', '2021-06-14 20:27:10'),
(27, 'App\\Models\\User', 1, 'token', '248491d92d12f7b52c5fca5e1817f1fa7b7a0caee65681a8272f4127c30aa60d', '[\"*\"]', NULL, '2021-06-14 20:30:48', '2021-06-14 20:30:48'),
(28, 'App\\Models\\User', 5, 'token', '6adcf401e953a5f8846cd6818b34af1f91d63678b45223215ef999e6ce2e8dcc', '[\"*\"]', NULL, '2021-06-14 20:37:18', '2021-06-14 20:37:18'),
(29, 'App\\Models\\User', 5, 'token', '3253ea7d94423ddaabd172f7e514f7db5b8901f77ccf26bdad843860a29a78a8', '[\"*\"]', NULL, '2021-06-14 20:41:53', '2021-06-14 20:41:53'),
(30, 'App\\Models\\User', 5, 'token', 'b3022df497f90e6de4731201ef551a2a4c8b21693d7391f9812e3f92e8ddaacc', '[\"*\"]', NULL, '2021-06-14 20:43:42', '2021-06-14 20:43:42'),
(31, 'App\\Models\\User', 5, 'token', '499303263a3260ccd3aa0675304a1083d051cadbba302631912f8f680ea03461', '[\"*\"]', NULL, '2021-06-14 20:43:57', '2021-06-14 20:43:57'),
(32, 'App\\Models\\User', 1, 'token', '43bd06891e7d0b1375dd032ebeac1349999cde347313e1a5dd8b99780674ac7d', '[\"*\"]', NULL, '2021-06-14 20:45:41', '2021-06-14 20:45:41'),
(33, 'App\\Models\\User', 1, 'token', '3be80432a8c68be3a8c60cc54e267934a9fde59c86f3007e18b3c14353d4900d', '[\"*\"]', NULL, '2021-06-14 20:48:27', '2021-06-14 20:48:27'),
(34, 'App\\Models\\User', 1, 'token', '09fe8af3ce7f340b2fef8076c3d9c38f969db82270f56f0e3c5064706574850b', '[\"*\"]', NULL, '2021-06-14 20:53:20', '2021-06-14 20:53:20'),
(35, 'App\\Models\\User', 1, 'token', '57ccda670076b09fcd2e8488842800371fcf4c1620ea165a69d5bffea10265e9', '[\"*\"]', NULL, '2021-06-14 20:56:25', '2021-06-14 20:56:25'),
(36, 'App\\Models\\User', 6, 'token', 'a567bb8ca1071cefa3ff4dc9f24f712a8bd85da174c99deb8858c96964ab7791', '[\"*\"]', NULL, '2021-06-14 20:57:26', '2021-06-14 20:57:26'),
(37, 'App\\Models\\User', 7, 'token', '234b781be3f06875272edbba0f70f78de8ce0c11f3ac0bb3786018e214b0c5df', '[\"*\"]', NULL, '2021-06-14 20:59:15', '2021-06-14 20:59:15'),
(38, 'App\\Models\\User', 6, 'token', '034506bcebcf75142724ec26973fb4d751304bbf33426980869a9eb280793d07', '[\"*\"]', NULL, '2021-06-14 20:59:31', '2021-06-14 20:59:31'),
(39, 'App\\Models\\User', 1, 'token', '0059288336735ffb4aacea05734a451aa3bc6c2e421bc6c4300cf39becdb246b', '[\"*\"]', NULL, '2021-06-15 02:32:19', '2021-06-15 02:32:19'),
(40, 'App\\Models\\User', 1, 'token', '4c172a77858f281c558077b5aecc8556fa37856147838e9214232a7f98e58505', '[\"*\"]', NULL, '2021-06-15 02:48:41', '2021-06-15 02:48:41'),
(44, 'App\\Models\\User', 1, 'token', '9239c4c4cfdf1dd941d3e69b28f5fd42b5d7c9fcb1beb0c5a0bf4c812575e2eb', '[\"*\"]', NULL, '2021-06-15 03:22:39', '2021-06-15 03:22:39'),
(45, 'App\\Models\\User', 5, 'token', 'dceaeea1d78e35e4855538c13c38504d595eabf03469956c941c4cabf9891507', '[\"*\"]', NULL, '2021-06-15 04:07:36', '2021-06-15 04:07:36'),
(46, 'App\\Models\\User', 1, 'token', '8d72e3377b40c5727b59f8982f5771eff81476490edd331be786d6edaeeabb60', '[\"*\"]', NULL, '2021-06-15 07:11:53', '2021-06-15 07:11:53'),
(47, 'App\\Models\\User', 1, 'token', 'b52ed682373e94409c8a35bdba1235c293fef16164ee754c796de5d6a9024dac', '[\"*\"]', NULL, '2021-06-15 07:43:29', '2021-06-15 07:43:29'),
(49, 'App\\Models\\User', 3, 'token', 'd123a71a4d3fdfe9f0e54ef67aae00f3e77ab8c12407cc4f0e0603c7c3a515e4', '[\"*\"]', '2021-06-23 00:14:49', '2021-06-23 00:12:58', '2021-06-23 00:14:49'),
(50, 'App\\Models\\User', 5, 'token', 'a35e816b8b20d27ba1ffcc03f2836ce82e97c70ac726a5c73590b88f4bbf4100', '[\"*\"]', '2021-06-23 00:15:55', '2021-06-23 00:15:26', '2021-06-23 00:15:55'),
(51, 'App\\Models\\User', 4, 'token', 'f29a4ae0afc9153457300a3d01da55c6bea1463b49593055c31531451e2e1476', '[\"*\"]', '2021-06-23 00:32:23', '2021-06-23 00:17:49', '2021-06-23 00:32:23'),
(52, 'App\\Models\\User', 8, 'token', '2983ead3b47c923e80f808c6c9a92ebbfd1f4ed7aac4622817c8d4dc88026366', '[\"*\"]', NULL, '2021-06-26 19:57:27', '2021-06-26 19:57:27'),
(53, 'App\\Models\\User', 8, 'token', '6c89339db3d633700de43f185060934dd41640d1e62a8fc463df345444035d78', '[\"*\"]', '2021-06-26 19:59:19', '2021-06-26 19:57:45', '2021-06-26 19:59:19'),
(54, 'App\\Models\\User', 8, 'token', '10c234e825697e3427ac97a5716fd5199ec7731f10d09c063917b21e8208d2b1', '[\"*\"]', '2021-06-27 21:23:27', '2021-06-26 20:01:34', '2021-06-27 21:23:27'),
(55, 'App\\Models\\User', 9, 'token', '00bfe8a515b01790eef5fd40aa05460eda59c248942314c1c17dba96002d7908', '[\"*\"]', NULL, '2021-06-27 21:27:44', '2021-06-27 21:27:44'),
(56, 'App\\Models\\User', 9, 'token', '23f2dc45839d1ab3d0560392dd9129f98bc2c1769722b96bfe8de1f40a4304a6', '[\"*\"]', '2021-06-28 20:02:22', '2021-06-27 21:28:32', '2021-06-28 20:02:22'),
(57, 'App\\Models\\User', 9, 'token', '4f23542e080de236495c393ca2131548905e8232fd821781f9a67cd5abb2297a', '[\"*\"]', '2021-06-28 21:19:53', '2021-06-28 20:15:35', '2021-06-28 21:19:53'),
(58, 'App\\Models\\User', 9, 'token', 'baca5a9db48e833806bd3a4780c17a48691a1ff901915e2d2c44726429785283', '[\"*\"]', '2021-06-28 21:37:10', '2021-06-28 21:20:05', '2021-06-28 21:37:10'),
(59, 'App\\Models\\User', 1, 'token', '354670f6cef326c287c64d647adde8ae3db4ddbe3e5e4b09cf9e5c3d423e4e35', '[\"*\"]', '2021-06-28 21:40:26', '2021-06-28 21:39:21', '2021-06-28 21:40:26'),
(60, 'App\\Models\\User', 9, 'token', '558d303e7c86e2b003f4eacf0936fb93300f7f7b99e8b3813e3ddc22005ecf2b', '[\"*\"]', '2021-06-28 21:40:41', '2021-06-28 21:40:38', '2021-06-28 21:40:41'),
(61, 'App\\Models\\User', 1, 'token', 'a87f8f6f6a83910b9be6df81f5702993a488a7bc14e2c6f1d1409109e6f0ec9f', '[\"*\"]', '2021-06-29 19:33:46', '2021-06-28 21:40:53', '2021-06-29 19:33:46'),
(62, 'App\\Models\\User', 9, 'token', 'dbee4c771f7581796404e89940cc57710dc76e8a6e856857dddc85b950b0dafb', '[\"*\"]', '2021-06-29 19:35:45', '2021-06-29 19:34:00', '2021-06-29 19:35:45'),
(63, 'App\\Models\\User', 1, 'token', '45b01ec25e2514d16d1be7911a2f8f7f78ecac4538dfd7edd66d96ec32b45300', '[\"*\"]', '2021-06-29 19:39:43', '2021-06-29 19:36:02', '2021-06-29 19:39:43'),
(64, 'App\\Models\\User', 9, 'token', '86db77e1163cebddf204357d2182a773ce224fbcc0c951fc57bb0df9881d6f23', '[\"*\"]', '2021-06-29 19:40:04', '2021-06-29 19:39:53', '2021-06-29 19:40:04'),
(65, 'App\\Models\\User', 1, 'token', 'f1aebd49982fa21862549568b02568cdc87104875bc4dadeff82b40da1dfc2b5', '[\"*\"]', '2021-06-29 19:40:48', '2021-06-29 19:40:16', '2021-06-29 19:40:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comic_id` int(11) NOT NULL,
  `user_id` int(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rates`
--

INSERT INTO `rates` (`id`, `comic_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, '2021-06-22 08:14:30', '2021-06-22 08:14:30'),
(2, 1, 3, 5, '2021-06-23 00:14:49', '2021-06-23 00:14:49'),
(3, 1, 5, 5, '2021-06-23 00:15:56', '2021-06-23 00:15:56'),
(4, 4, 4, 5, '2021-06-23 00:18:25', '2021-06-23 00:18:25'),
(5, 4, 1, 5, '2021-06-23 00:41:12', '2021-06-23 00:41:12'),
(6, 19, 1, 5, '2021-06-23 02:55:49', '2021-06-23 02:55:49'),
(7, 5, 1, 5, '2021-06-23 02:58:39', '2021-06-23 02:58:39'),
(8, 29, 1, 5, '2021-06-23 03:18:40', '2021-06-23 03:18:40'),
(9, 24, 1, 4, '2021-06-23 03:24:15', '2021-06-23 03:24:15'),
(10, 27, 1, 5, '2021-06-23 03:28:29', '2021-06-23 03:28:29'),
(11, 28, 1, 5, '2021-06-23 06:29:16', '2021-06-23 06:29:16'),
(12, 25, 1, 4, '2021-06-23 06:32:44', '2021-06-23 06:32:44'),
(13, 24, 8, 5, '2021-06-26 19:58:46', '2021-06-26 19:58:46'),
(14, 4, 9, 5, '2021-06-28 20:21:58', '2021-06-28 20:21:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedules`
--

CREATE TABLE `schedules` (
  `id_schedule` bigint(20) UNSIGNED NOT NULL,
  `id_comic` int(11) NOT NULL,
  `id_day` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schedules`
--

INSERT INTO `schedules` (`id_schedule`, `id_comic`, `id_day`, `created_at`, `updated_at`) VALUES
(4, 24, 0, '2021-06-20 03:08:39', '2021-06-20 03:08:39'),
(5, 4, 0, '2021-06-20 03:10:00', '2021-06-20 03:10:00'),
(7, 24, 1, '2021-06-20 03:27:27', '2021-06-20 03:27:27'),
(8, 4, 5, '2021-06-20 03:27:42', '2021-06-20 03:27:42'),
(12, 19, 0, '2021-06-20 05:57:04', '2021-06-20 05:57:04'),
(13, 5, 0, '2021-06-20 06:29:18', '2021-06-20 06:29:18'),
(14, 28, 1, '2021-06-20 21:03:51', '2021-06-20 21:03:51'),
(15, 26, 1, '2021-06-20 21:04:10', '2021-06-20 21:04:10'),
(16, 29, 2, '2021-06-20 21:04:22', '2021-06-20 21:04:22'),
(17, 26, 2, '2021-06-20 21:04:40', '2021-06-20 21:04:40'),
(18, 25, 3, '2021-06-20 21:04:55', '2021-06-20 21:04:55'),
(19, 29, 3, '2021-06-20 21:05:03', '2021-06-20 21:05:03'),
(20, 1, 3, '2021-06-20 21:05:10', '2021-06-20 21:05:10'),
(21, 28, 4, '2021-06-20 21:05:21', '2021-06-20 21:05:21'),
(22, 27, 4, '2021-06-20 21:05:28', '2021-06-20 21:05:28'),
(23, 25, 4, '2021-06-20 21:07:44', '2021-06-20 21:07:44'),
(25, 24, 6, '2021-06-20 21:08:07', '2021-06-20 21:08:07'),
(26, 4, 6, '2021-06-20 21:08:14', '2021-06-20 21:08:14'),
(27, 28, 6, '2021-06-20 21:08:24', '2021-06-20 21:08:24'),
(28, 5, 6, '2021-06-20 21:08:32', '2021-06-20 21:08:32'),
(29, 26, 6, '2021-06-20 21:08:41', '2021-06-20 21:08:41'),
(30, 24, 5, '2021-06-22 23:59:56', '2021-06-22 23:59:56'),
(31, 28, 5, '2021-06-23 00:00:26', '2021-06-23 00:00:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_image`, `image_name`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fahmi', 'fahmi@gmail.com', NULL, '$2y$10$9zRrJlA1tO/PxmhSZKCjvuqYcfFshWANhMPyEHBdz7b16F1nt0FyK', 'default.jpg', '', 1, NULL, '2021-05-14 20:09:19', '2021-05-14 20:09:19'),
(2, 'Fahmi Aga A', 'galih@gmail.com', NULL, '$2y$10$6g.vi/KPmLqMmPQQQBpSRe7pIBpdpyH8T0caFvQNQBjaaa5nSOnXK', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1622170796/g97bg6yolduvhetzgvgk.jpg', 'g97bg6yolduvhetzgvgk', 2, NULL, '2021-05-16 19:19:22', '2021-05-27 19:59:56'),
(3, 'Adina Sahira', 'Adina@gmail.com', NULL, '$2y$10$sqJ3oi0UPHVa5Ycjcwad8u5Ct76kxKG/A56lGMJpQeuY7AuS4avTG', 'default.jpg', NULL, 2, NULL, '2021-05-30 19:57:05', '2021-05-30 19:57:05'),
(4, 'Andre Budi', 'andre@gmail.com', NULL, '$2y$10$b.DSHfYgRB7YgdvoB9Lm3eVL.RjrYd1gHFB7DcK52RKgjuerdPDYe', 'default.jpg', NULL, 2, NULL, '2021-05-30 20:11:34', '2021-05-30 20:11:34'),
(5, 'Hulaevi', 'levi@gmail.com', NULL, '$2y$10$nzF6tps5mhAAuvnQAzcBMOk7P3d/Urj4bmZy.3mcv9XeEdgzpqOwS', 'default.jpg', NULL, 2, NULL, '2021-06-14 20:27:10', '2021-06-14 20:27:10'),
(6, 'Freddy Krueger', 'freddy@gmail.com', NULL, '$2y$10$mDhIv3.BHcrPRWLzfMfBVeFb55da6JhGSN76ferjQ6HwWZMAsIx5C', 'default.jpg', NULL, 2, NULL, '2021-06-14 20:57:26', '2021-06-14 20:57:26'),
(7, 'Freddy Krueger', 'freddy1@gmail.com', NULL, '$2y$10$7Q.k5a5PzZW0KJPyTy9e2.gaOIOLmOCxX7xw5RJvyYmlKrGI0X.eO', 'default.jpg', NULL, 2, NULL, '2021-06-14 20:59:15', '2021-06-14 20:59:15'),
(8, 'Kamen Rider', 'kamen@gmail.com', NULL, '$2y$10$th5ff8e.vSBXRRHkRpUlXuGSAFBasj.cEBnOOyRalZcRFA8/7WfXy', 'default.jpg', NULL, 2, NULL, '2021-06-26 19:57:26', '2021-06-26 19:57:26'),
(9, 'Freddy Krueger', 'Test4@gmail.com', NULL, '$2y$10$rvjHFQ/gN061bSKT3gT1heOyCl9WP6iYdMcMH6TzgJh0fD2GxHAN.', 'https://res.cloudinary.com/dqsbhrjjx/image/upload/v1624941264/xnd06vh9qw9j29nybd1j.jpg', 'xnd06vh9qw9j29nybd1j', 2, NULL, '2021-06-27 21:27:43', '2021-06-28 21:34:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comic_genres`
--
ALTER TABLE `comic_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id_episode`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id_schedule`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comics`
--
ALTER TABLE `comics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `comic_genres`
--
ALTER TABLE `comic_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id_episode` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id_schedule` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
