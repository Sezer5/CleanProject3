-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Eyl 2026, 19:34:00
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `example6backend`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'old-men', 'Old Men', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(2, 'old-women', 'Old Women', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(3, 'women', 'Women', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(4, 'men', 'Men', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(5, 'kids', 'Kids', '2026-09-02 16:24:47', '2026-09-02 16:24:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `colors`
--

INSERT INTO `colors` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'black', 'Black', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(2, 'white', 'White', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(3, 'red', 'Red', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(4, 'blue', 'Blue', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(5, 'green', 'Green', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(6, 'yellow', 'Yellow', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(7, 'gray', 'Gray', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(8, 'brown', 'Brown', '2026-09-02 16:24:47', '2026-09-02 16:24:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `color_product`
--

CREATE TABLE `color_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `color_product`
--

INSERT INTO `color_product` (`id`, `color_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 7, 1, NULL, NULL),
(3, 4, 2, NULL, NULL),
(4, 5, 2, NULL, NULL),
(5, 1, 3, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 2, 5, NULL, NULL),
(8, 3, 5, NULL, NULL),
(9, 8, 5, NULL, NULL),
(10, 1, 6, NULL, NULL),
(11, 6, 6, NULL, NULL),
(12, 5, 7, NULL, NULL),
(13, 3, 8, NULL, NULL),
(14, 5, 8, NULL, NULL),
(15, 8, 9, NULL, NULL),
(16, 3, 10, NULL, NULL),
(17, 3, 11, NULL, NULL),
(18, 5, 12, NULL, NULL),
(19, 8, 12, NULL, NULL),
(20, 3, 13, NULL, NULL),
(21, 6, 13, NULL, NULL),
(22, 6, 14, NULL, NULL),
(23, 2, 15, NULL, NULL),
(24, 6, 15, NULL, NULL),
(25, 7, 16, NULL, NULL),
(26, 2, 17, NULL, NULL),
(27, 3, 17, NULL, NULL),
(28, 7, 17, NULL, NULL),
(30, 3, 19, NULL, NULL),
(31, 4, 20, NULL, NULL),
(32, 5, 20, NULL, NULL),
(33, 7, 20, NULL, NULL),
(34, 7, 18, NULL, NULL),
(35, 8, 18, NULL, NULL),
(36, 6, 19, NULL, NULL),
(37, 7, 19, NULL, NULL),
(38, 8, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` varchar(255) NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` smallint(5) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_09_02_105752_create_roles_table', 1),
(5, '2026_09_02_105801_create_roleusers_table', 1),
(6, '2026_09_02_105812_create_sizes_table', 1),
(7, '2026_09_02_105825_create_colors_table', 1),
(8, '2026_09_02_105837_create_categories_table', 1),
(9, '2026_09_02_105848_create_products_table', 1),
(10, '2026_09_02_110920_create_color_product_table', 1),
(11, '2026_09_02_111102_create_product_size_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `slug`, `name`, `category_id`, `price`, `quantity`, `description`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'temporibus-aut-placeat', 'Temporibus aut placeat', 1, 872.50, 4, 'Odio eaque perferendis hic consequatur at id. Doloribus dolore animi fugiat ab illum dignissimos. Est fuga enim soluta neque ab quaerat nisi vel. Voluptatum consequatur odio rerum quibusdam odio quo facere.', 'storage/images/product/DRM6T7Gur9bnMdF9MEqpejZlFq7rTaEuheUvIAj7.jpg', '2026-09-02 16:24:47', '2026-09-02 16:25:53'),
(2, 'rerum-sint-rerum', 'Rerum sint rerum', 4, 4590.82, 63, 'Vel explicabo id dolorem provident. Provident libero inventore aliquid. Cupiditate perferendis magni facilis id voluptatem aut. Et est et nam ipsum aut accusamus mollitia.', 'storage/images/product/oIFAPfV3jppko5w6rDq3Psb3ZA5pemgWXA14q5TW.jpg', '2026-09-02 16:24:47', '2026-09-02 16:26:01'),
(3, 'consequatur-eum-quibusdam', 'Consequatur eum quibusdam', 5, 494.18, 30, 'Eum magnam deleniti dolores. Quia et quidem modi fugit est architecto et eligendi. Ad rerum aliquid nihil labore veritatis. Consequatur sunt facilis ex aut.', 'storage/images/product/855GDAPW1IyhDFK3PDE1ExOGOgZbzRFXNrZZ3lGE.jpg', '2026-09-02 16:24:47', '2026-09-02 16:26:08'),
(4, 'quam-doloribus-magni', 'Quam doloribus magni', 4, 3227.40, 46, 'Est laborum nihil qui libero tenetur ad culpa qui. Autem et praesentium ullam non aliquid. Voluptatem sint voluptatum sed iusto nostrum rerum quis.', 'storage/images/product/vH3lppuCB58h3aLoX6HvtW7HtmIrvozOSHM2V1Jj.jpg', '2026-09-02 16:24:47', '2026-09-02 16:26:15'),
(5, 'et-delectus-numquam', 'Et delectus numquam', 5, 2438.20, 62, 'Beatae itaque minima non optio. Repellendus id atque ducimus debitis qui cum aut. Deserunt maiores nihil suscipit voluptas facere ullam quod. Distinctio earum quo praesentium qui quibusdam.', 'storage/images/product/2TWpuVQ8lc6Q6kMpulH9AAUxqrbPmV0Za6NLm7S3.jpg', '2026-09-02 16:24:47', '2026-09-02 16:26:25'),
(6, 'et-perferendis-officiis', 'Et perferendis officiis', 4, 136.99, 60, 'Eos sed dolorem repellat aspernatur optio aliquid. Itaque et autem fuga excepturi suscipit. Occaecati ipsam aliquam repudiandae rem.', 'storage/images/product/AbNJPfDXUdEisVwUTPBEp7gtINMa7fstspETRPYl.jpg', '2026-09-02 16:24:47', '2026-09-02 16:26:34'),
(7, 'nam-suscipit-ea', 'Nam suscipit ea', 5, 2448.56, 54, 'Et ut commodi autem vitae quidem ad. Accusantium officia laudantium officia accusantium architecto ipsam. Molestiae magnam alias et sapiente.', 'storage/images/product/AAMTmq1PpSHDem8CwcB5agoy3YXuCKzoWPkGXi19.jpg', '2026-09-02 16:24:47', '2026-09-02 16:26:43'),
(8, 'dolor-ducimus-perspiciatis', 'Dolor ducimus perspiciatis', 2, 305.45, 79, 'Labore quasi eos reprehenderit perferendis nobis eius. Inventore culpa numquam et omnis iure ut. Doloremque possimus est asperiores id. Et numquam nihil aut provident ea sed maxime omnis.', 'storage/images/product/HRw32oDwlGc4XNpETRFy0PSRWiZdxG64O8mmVjSZ.jpg', '2026-09-02 16:24:47', '2026-09-02 16:26:51'),
(9, 'dolorem-explicabo-nemo', 'Dolorem explicabo nemo', 1, 846.40, 61, 'Eum sequi ratione quo dolorem non laboriosam illo. Et porro enim odit expedita. Nisi est veritatis eos iusto placeat amet et at. Aspernatur eos vel quidem architecto.', 'storage/images/product/Kx3tzGYbSchZfY6hDec6HcmfbNVGNkRx5cd3Rz2E.jpg', '2026-09-02 16:24:47', '2026-09-02 16:27:00'),
(10, 'praesentium-aut-fuga', 'Praesentium aut fuga', 4, 2896.62, 41, 'Dolor saepe autem consectetur dignissimos voluptatem. Quia consequatur corporis pariatur consequatur culpa fugit.', 'storage/images/product/2qsbRmx47uzD6A2X0X6OfEgc7VFf3RoCd4n4PKv0.jpg', '2026-09-02 16:24:47', '2026-09-02 16:27:10'),
(11, 'sit-ut-voluptas', 'Sit ut voluptas', 4, 2329.26, 49, 'Eos maxime adipisci est error suscipit. Qui quisquam dolore provident veniam voluptate voluptas. Odio cupiditate omnis dolorem exercitationem.', 'storage/images/product/jEhLhGLotXOcQVaFWia3YoURSUgYzVX7aszY4mT5.jpg', '2026-09-02 16:24:47', '2026-09-02 16:27:22'),
(12, 'quis-et-voluptate', 'Quis et voluptate', 4, 4034.13, 25, 'Dolorem a non rerum. Quas consequatur earum quia laboriosam illum sapiente. Ad autem numquam soluta quia dolores eaque excepturi.', 'storage/images/product/2OyKpEgfnOOWHfE1IcHi1WNYvdDJqpHscqrVwk4I.jpg', '2026-09-02 16:24:47', '2026-09-02 16:27:31'),
(13, 'quia-iure-explicabo', 'Quia iure explicabo', 3, 2017.88, 73, 'Ipsa blanditiis inventore explicabo omnis necessitatibus at. Accusantium esse quas aut maiores commodi. Non id quam reiciendis quae. Rerum eaque consectetur sit inventore vero unde magnam. Eligendi consequuntur nobis reprehenderit sint molestias ipsa quo.', 'storage/images/product/wFG5zup8LoJ8ncTyf99eQGouQ5OMl4CofIrTXhJw.jpg', '2026-09-02 16:24:47', '2026-09-02 16:27:40'),
(14, 'consequuntur-iste-eveniet', 'Consequuntur iste eveniet', 4, 4048.72, 42, 'Quasi temporibus veniam quo architecto sed in eligendi est. Est fugiat quis commodi labore ut sapiente commodi. Nostrum voluptatibus quidem placeat voluptatem quae. Quia cupiditate aliquid omnis laudantium.', 'storage/images/product/14aRomJAcToMKzrh1W3NaQLV5F80WycaKKNARRs7.jpg', '2026-09-02 16:24:47', '2026-09-02 16:27:50'),
(15, 'rerum-quidem-quis', 'Rerum quidem quis', 1, 2251.28, 75, 'Officiis non amet impedit laudantium. Voluptas eaque odio ex id voluptatem quia fugiat. Corrupti sit optio dolor rerum quidem. Consequatur harum neque nemo recusandae cupiditate ipsa.', 'storage/images/product/tYqHaokYSUQGWeYdWE7u618Sz1gSk0IJg80zktH5.jpg', '2026-09-02 16:24:47', '2026-09-02 16:28:00'),
(16, 'blanditiis-saepe-beatae', 'Blanditiis saepe beatae', 2, 2984.06, 41, 'Praesentium non dolores iure. Esse voluptatum sed corrupti dolorum nulla nulla. Consequuntur veritatis a corrupti quia et. Rerum in in consequuntur dolor ea. Qui quia aliquam sed.', 'storage/images/product/rQDJJDZmEG8eFxK7sXA7jVNw1f6bN38QjcquFjW9.jpg', '2026-09-02 16:24:47', '2026-09-02 16:28:10'),
(17, 'molestiae-reiciendis-eum', 'Molestiae reiciendis eum', 1, 1044.90, 93, 'Molestiae sunt illo voluptatem qui aliquam earum. Quae enim maxime rerum hic dolorem ea consequatur. Ea et autem pariatur magni aspernatur voluptatem minima.', 'storage/images/product/zlaEZi2Z7vHgnF3vQVciMt77GBN3bqegjIABDKBA.jpg', '2026-09-02 16:24:47', '2026-09-02 16:28:19'),
(18, 'voluptatem-repellendus-maxime', 'Voluptatem repellendus maxime', 1, 1410.28, 90, 'Et ut cumque iste eum qui. Aperiam dolore omnis eos id similique doloremque et. Velit aut praesentium sunt est.', 'storage/images/product/KFjOAqmMC8Na4DONjyeMIImrkMTxt8edMt4Zki8e.jpg', '2026-09-02 16:24:47', '2026-09-02 16:28:32'),
(19, 'quis-ipsam-voluptatum', 'Quis ipsam voluptatum', 4, 2957.80, 61, 'Hic aut autem neque nisi ipsum in. Ut qui architecto et adipisci rerum. Rerum neque voluptatibus aliquam hic cumque.', 'storage/images/product/PCcs5eJii3idrTZESSRfeQjNDB6UitHKTXi9XJ4M.jpg', '2026-09-02 16:24:47', '2026-09-02 16:28:50'),
(20, 'sunt-ut-et', 'Sunt ut et', 1, 246.05, 56, 'Consequatur non rerum commodi eaque. Modi excepturi distinctio consequatur pariatur. Quia quod asperiores rerum enim quis dolor. Itaque nobis id fugiat est eos veniam natus repudiandae. Aperiam reprehenderit et ut tempora aliquam aliquam repellendus ea.', 'storage/images/product/RAWmPJiwnojOcjvmDi38sE5f05SpdFGf1I1XDezQ.jpg', '2026-09-02 16:24:47', '2026-09-02 16:29:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 4, NULL, NULL),
(4, 1, 5, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 3, 5, NULL, NULL),
(7, 3, 6, NULL, NULL),
(8, 4, 2, NULL, NULL),
(9, 4, 6, NULL, NULL),
(10, 5, 3, NULL, NULL),
(11, 6, 1, NULL, NULL),
(12, 6, 3, NULL, NULL),
(13, 7, 3, NULL, NULL),
(14, 7, 4, NULL, NULL),
(15, 7, 5, NULL, NULL),
(16, 8, 3, NULL, NULL),
(17, 8, 4, NULL, NULL),
(18, 8, 5, NULL, NULL),
(19, 9, 2, NULL, NULL),
(20, 9, 3, NULL, NULL),
(21, 10, 1, NULL, NULL),
(22, 10, 2, NULL, NULL),
(23, 10, 4, NULL, NULL),
(24, 11, 2, NULL, NULL),
(25, 11, 4, NULL, NULL),
(26, 11, 5, NULL, NULL),
(27, 12, 2, NULL, NULL),
(28, 12, 3, NULL, NULL),
(29, 12, 4, NULL, NULL),
(30, 12, 5, NULL, NULL),
(31, 13, 2, NULL, NULL),
(32, 14, 1, NULL, NULL),
(33, 14, 2, NULL, NULL),
(34, 14, 3, NULL, NULL),
(35, 14, 6, NULL, NULL),
(36, 15, 2, NULL, NULL),
(37, 16, 1, NULL, NULL),
(38, 16, 2, NULL, NULL),
(39, 16, 3, NULL, NULL),
(40, 16, 4, NULL, NULL),
(41, 17, 5, NULL, NULL),
(42, 18, 1, NULL, NULL),
(43, 18, 2, NULL, NULL),
(44, 18, 4, NULL, NULL),
(45, 18, 6, NULL, NULL),
(46, 19, 1, NULL, NULL),
(47, 19, 5, NULL, NULL),
(48, 19, 6, NULL, NULL),
(49, 20, 2, NULL, NULL),
(50, 20, 5, NULL, NULL),
(51, 20, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2026-09-02 16:24:46', '2026-09-02 16:24:46'),
(2, 'user', '2026-09-02 16:24:46', '2026-09-02 16:24:46');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 2, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3pIpyfv5XmMuqsY8KqvuiTls7BAvOAeVGXv22dfJ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJQb25iNTFrWWFtQWhPYnQyblB1ZHh1ZTkxOXhHZ0VGamNPRFRRaUZ4IiwiX2ZsYXNoIjp7Im5ldyI6W10sIm9sZCI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL2FkbWluXC9wcm9kdWN0Iiwicm91dGUiOiJhZG1pbi5wcm9kdWN0LmluZGV4In0sImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjoxfQ==', 1788377345);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sizes`
--

INSERT INTO `sizes` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'xs', 'XS', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(2, 's', 'S', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(3, 'm', 'M', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(4, 'l', 'L', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(5, 'xl', 'XL', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(6, 'xxl', 'XXL', '2026-09-02 16:24:47', '2026-09-02 16:24:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `profile_completed` int(11) NOT NULL DEFAULT 0,
  `profile_image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone`, `profile_completed`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@email.com', '2026-09-02 16:24:47', '$2y$12$ytZF2.6biPsck4yxAg46d.sspAU5iT48JQKKf52dH1ieDfSZiH7TO', NULL, NULL, 0, NULL, NULL, '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(2, 'Bert Kessler', 'collier.aglae@example.org', '2026-09-02 16:24:47', '$2y$12$pULF1QZ.iSsTk1HM3EQEKO/DRYOfB5IzQaUC19IqjKfdwuVQrm8Oi', NULL, NULL, 0, NULL, '4vgwrelvvd', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(3, 'Prof. Rose Hauck V', 'joe61@example.net', '2026-09-02 16:24:47', '$2y$12$pULF1QZ.iSsTk1HM3EQEKO/DRYOfB5IzQaUC19IqjKfdwuVQrm8Oi', NULL, NULL, 0, NULL, 'jir1ZHN76W', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(4, 'Francis Tillman', 'mortimer27@example.net', '2026-09-02 16:24:47', '$2y$12$pULF1QZ.iSsTk1HM3EQEKO/DRYOfB5IzQaUC19IqjKfdwuVQrm8Oi', NULL, NULL, 0, NULL, 'NwbQyNuW6u', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(5, 'Miss Albertha Smitham III', 'rodolfo.dicki@example.net', '2026-09-02 16:24:47', '$2y$12$pULF1QZ.iSsTk1HM3EQEKO/DRYOfB5IzQaUC19IqjKfdwuVQrm8Oi', NULL, NULL, 0, NULL, 'umEMaJJWx8', '2026-09-02 16:24:47', '2026-09-02 16:24:47'),
(6, 'Prof. Alexander Rosenbaum MD', 'yadira93@example.com', '2026-09-02 16:24:47', '$2y$12$pULF1QZ.iSsTk1HM3EQEKO/DRYOfB5IzQaUC19IqjKfdwuVQrm8Oi', NULL, NULL, 0, NULL, 'AMPVQPOuWH', '2026-09-02 16:24:47', '2026-09-02 16:24:47');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Tablo için indeksler `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_product_color_id_foreign` (`color_id`),
  ADD KEY `color_product_product_id_foreign` (`product_id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Tablo için indeksler `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Tablo için indeksler `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
