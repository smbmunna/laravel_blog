-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2019 at 05:42 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_02_22_171041_create_roles_table', 1),
(26, '2019_02_24_090506_add_photo_id_to_users', 1),
(27, '2019_02_24_142000_create_photos_table', 1),
(28, '2019_03_26_161231_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `created_at`, `updated_at`) VALUES
(11, '15528327105518.jpg', '2019-03-17 08:25:10', '2019-03-17 08:25:10'),
(12, '1552832768field-192179_1280.jpg', '2019-03-17 08:26:08', '2019-03-17 08:26:08'),
(13, '155283280052668821_1171029919744293_4422497957488623616_n.jpg', '2019-03-17 08:26:40', '2019-03-17 08:26:40'),
(14, '155283282252845376_1195438093966133_6282485960802304000_n.jpg', '2019-03-17 08:27:02', '2019-03-17 08:27:02'),
(15, '155514048310612783_688080287950495_3805011694939584205_n (1).jpg', '2019-04-13 01:28:03', '2019-04-13 01:28:03'),
(16, '15551679351078544_937958156296039_1682247429858679029_o.jpg', '2019-04-13 09:05:36', '2019-04-13 09:05:36'),
(17, '15551679851078544_937958156296039_1682247429858679029_o.jpg', '2019-04-13 09:06:25', '2019-04-13 09:06:25'),
(18, '15551683971078544_937958156296039_1682247429858679029_o.jpg', '2019-04-13 09:13:17', '2019-04-13 09:13:17'),
(19, '15551686571078544_937958156296039_1682247429858679029_o.jpg', '2019-04-13 09:17:37', '2019-04-13 09:17:37'),
(20, '15551687561078544_937958156296039_1682247429858679029_o.jpg', '2019-04-13 09:19:16', '2019-04-13 09:19:16'),
(21, '15551688151078544_937958156296039_1682247429858679029_o.jpg', '2019-04-13 09:20:15', '2019-04-13 09:20:15'),
(22, '1555168866dawn-3764991_1920.jpg', '2019-04-13 09:21:06', '2019-04-13 09:21:06'),
(23, '1555168998NEW.jpg', '2019-04-13 09:23:18', '2019-04-13 09:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `photo_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 9, 0, 0, 'First Post', 'Learning laravel is fun', '2019-04-01 18:00:00', '2019-04-08 18:00:00'),
(2, 11, 0, 0, 'second post', 'Content of the second post', '2019-04-02 18:00:00', '2019-04-04 18:00:00'),
(3, 9, NULL, 21, 'post', 'This is the post content.', '2019-04-13 09:20:15', '2019-04-13 09:20:15'),
(4, 9, NULL, 22, 'Demo Title', 'This is the demo post title. This is the demo post title. This is the demo post title. This is the demo post title. This is the demo post title. This is the demo post title.', '2019-04-13 09:21:06', '2019-04-13 09:21:06'),
(5, 9, NULL, 23, 'New Post', 'New post title.New post title.New post title.New post title.New post title.New post title.New post title.', '2019-04-13 09:23:18', '2019-04-13 09:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', NULL, NULL),
(2, 'subscriber', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(9, 1, 1, 'Munna', 'smbmunna@gmail.com', '$2y$10$BdZku.JDT7YC./ZCIUiEiuy6ZXjbQXk3UQK84o/pA8R7Ij0K8xs7.', 'WhDyLsKUAz5qRieIu0zx5Oz8uQpbIvJb9M8W7h1sCEZdSJSia7MIo2dOkrO0', '2019-03-17 08:24:18', '2019-03-17 08:25:10', '11'),
(10, 2, 1, 'Tamim Iqbal', 'tamim@yahoo.com', '$2y$10$8ehHVH4o9DrolbEDlahm.O7JPNnVho3l2okJ7ORR.FArZrIyFZB0i', 'BuhGmZ7cri4WnJDRgkB7ORNUafZYWlmOdYvkC8uteizWHiBpCjqysO2tnYSn', '2019-03-17 08:26:08', '2019-03-17 08:26:08', '12'),
(11, 2, 0, 'Imrul Kayes', 'kayes11@gmail.com', '$2y$10$EXLTauG2HZiJbcgSx0Rqc.jSYADK/lFkV1Unwg6dFF9hy8Y4hXvNO', '0XxyT6MA5TGDgCth8VkORPEUMzMxthS0BkaMLfoBo9dYVcJ5GnCsw9UQJg0g', '2019-03-17 08:26:41', '2019-03-17 08:26:41', '13'),
(12, 2, 1, 'Rasel', 'rasel1122@gmail.com', '$2y$10$wBLvDZ6vSNLnGdal.7d0vOpJG0e9.LRYdQlkohCt/ZtXTtIEXxmky', NULL, '2019-04-13 01:28:03', '2019-04-13 01:28:03', '15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_photo_id_index` (`photo_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
