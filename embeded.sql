-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2022 at 06:38 AM
-- Server version: 10.3.34-MariaDB-log-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futuolgq_embeded`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'banner.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `heading`, `description`, `category`, `author`, `price`, `publisher`, `link`, `banner`, `created_at`, `updated_at`) VALUES
(3, 'Embedded Systems IOT Learning Path', '3 courses | 36+ hours | Complete Source Code Included | Bluetooth Low Energy | Embedded WIFI | IOT Design.', 'Learning Paths', 'asfd', 'asdf', 'asdf', 'https://study.embeddedexpert.io/p/embedded-systems-iot-learn-path', '3.jpg', '2022-04-07 21:33:35', '2022-05-10 21:58:31'),
(6, 'Bare-Metal C/C++ Learning Path', '3 Courses | 47+ hours | Complete Source Code,1. Modern Bare-Metal Embedded-C From Ground Up (STM32F4) 2. Modern Bare-Metal Embedded-C++', 'Learning Paths', 'fesw', '20', 'vdsdsv', 'https://study.embeddedexpert.io/p/bare-metal-c-c-learning-path', '6.jpg', '2022-05-05 18:02:37', '2022-05-09 23:05:07'),
(8, 'STM32 Development Learning Path', '8 courses | 90+ hours | Complete Source Code Included | STM32F4 | STM32F7 | STM32F3 | STM32L4 | STM32L0 | STM32 HALL | STM32 LL | STM32 CUBEMX.', 'Learning Paths', 'sohan', '20', 'sohan', 'https://study.embeddedexpert.io/p/stm32-development-learning-path', '8.jpg', '2022-05-07 22:18:54', '2022-05-09 23:04:31'),
(10, 'ARM Assembly Programming Mastery Pack', 'Build Assembly Programs - ARM Instruction Set, Algorithms, Write Assembly Peripheral Drivers : ARM Cortex, ADC,UART,TIMERS, GPIO.', 'Learning Paths', 'Ninsaw', '20', 'sohan', 'https://study.embeddedexpert.io/p/modern-bare-metal-embedded-c-programming-from-ground-up1', '10.jpg', '2022-05-10 11:35:22', '2022-05-10 11:35:23'),
(11, 'Bluetooth Low Energy (BLE) From Ground Up™', 'Build BLE Firmware for Microcontrollers. Practices on STM32 boards.', 'Learning Paths', 'Ninsaw', '20', 'sohan', 'https://study.embeddedexpert.io/p/bluetooth-low-energy-ble-from-ground-up_new', '11.jpg', '2022-05-10 11:36:28', '2022-05-10 11:36:28'),
(12, 'Embedded Wifi Bare-Metal Development From Ground Up™', 'Connect Your Embedded Device to the Internet : STM32, Web Server, Web Client, Cloud Storage etc.', 'Learning Paths', 'Ninsaw', '20', 'sohan', 'https://study.embeddedexpert.io/p/embedded-wifi-bare-metal-development-from-ground-up', '12.jpg', '2022-05-10 11:38:43', '2022-05-10 11:38:44'),
(13, 'Extreme Embedded Firmware Engineering Learning Path', 'Embedded Build Systems with GNU Tools and Makefiles | Modern Bare-Metal Embedded C++ | Embedded Systems Design Patterns.', 'Learning Paths', 'Ninsaw', '20', 'sohan', 'https://study.embeddedexpert.io/p/extreme_bare_metal-lp', '13.jpg', '2022-05-10 11:40:05', '2022-05-10 11:40:05'),
(14, 'Realtime Operating Systems (RTOS) Learning Path', '1. FreeRTOS from Ground Up\r\n\r\n2. Arm Assembly Programming from Ground Up 1\r\n\r\n3. Build Your Own Realtime OS (RTOS) from Ground Up 1\r\n\r\n4. Build Your Own Realtime OS (RTOS) from Ground Up 2', 'Learning Paths', 'Ninsaw', '20', 'sohan', 'https://study.embeddedexpert.io/p/realtime-operating-systems-rtos-learning-path', '14.jpg', '2022-05-10 11:41:10', '2022-05-10 11:41:10'),
(15, 'Embedded Ethernet Firmware Development Learning Path', 'Build Embedded Ethernet Firmware : UDP, TCP, HTTP, SSI, CGI etc. | 3 courses | 43+ hours | Complete Source Code Included.', 'Learning Paths', 'Ninsaw', '20', 'sohan', 'https://study.embeddedexpert.io/p/ethernet_lp', '15.jpg', '2022-05-10 11:44:29', '2022-05-10 11:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `name`, `link`, `thumbnail`, `created_at`, `updated_at`) VALUES
(90, 1, 'ARM GNU Assembly Programming From Ground Up™', 'https://study.embeddedexpert.io/p/arm-gnu-assembly-programming-from-ground-up', '90.jpg', '2022-05-10 11:49:50', '2022-05-10 11:49:50'),
(91, 1, 'Embedded Ethernet Essential Training with CubeMX', 'https://study.embeddedexpert.io/p/ethe_cubemx', '91.jpg', '2022-05-10 11:50:18', '2022-05-10 11:50:18'),
(92, 1, 'Embedded Systems Bare-Metal Programming Ground Up™ (STM32F4)', 'https://study.embeddedexpert.io/p/modern-bare-metal-embedded-c-programming-from-ground-up111', '92.jpg', '2022-05-10 11:51:10', '2022-05-10 11:51:10'),
(93, 1, 'Embedded Systems STM32 HAL APIs Driver Development', 'https://study.embeddedexpert.io/p/embedded-systems-stm32-hal-apis-driver-development', '93.jpg', '2022-05-10 11:56:30', '2022-05-10 11:56:30'),
(94, 1, 'Embedded Systems STM32 Low-Layer APIs(LL) Driver Development', 'https://study.embeddedexpert.io/p/embedded-systems-stm32-low-layer-apis-ll-driver-development', '94.jpg', '2022-05-10 11:57:25', '2022-05-10 11:57:25'),
(95, 1, 'Mastering STM32CubeMX 5 and CubeIDE - Embedded Systems', 'https://study.embeddedexpert.io/p/mastering-stm32cubemx-5-and-cubeide-embedded-systems', '95.jpg', '2022-05-10 11:58:13', '2022-05-10 11:58:13'),
(96, 1, 'STM32 Development Learning Path', 'https://study.embeddedexpert.io/p/stm32-development-learning-path', '96.jpg', '2022-05-10 11:59:05', '2022-05-10 11:59:05'),
(97, 92, '{C++}Build Your Own Realtime OS (RTOS) From Ground Up™ on ARM', 'https://study.embeddedexpert.io/p/c-build-your-own-realtime-os-rtos-from-ground-up-on-arm', '97.jpg', '2022-05-10 12:08:10', '2022-05-10 12:08:10'),
(98, 92, 'Embedded Amazon AWS Connectivity', 'https://study.embeddedexpert.io/', '98.jpg', '2022-05-10 12:09:24', '2022-05-10 12:09:25'),
(99, 92, 'Embedded Google Cloud Connectivity', 'https://study.embeddedexpert.io/', '99.jpg', '2022-05-10 12:09:57', '2022-05-10 12:09:58'),
(100, 92, 'Embedded Microsoft Azure Connectivity', 'https://study.embeddedexpert.io/', '100.jpg', '2022-05-10 12:10:22', '2022-05-10 12:10:22'),
(101, 92, 'Embedded System loT Systems Design', 'https://study.embeddedexpert.io/p/modern-bare-metal-embedded-c-programming-from-ground-up11', '101.jpg', '2022-05-10 12:12:05', '2022-05-10 21:56:05'),
(102, 92, 'Embedded Systems Bare-Metal Ethernet Programming', 'https://study.embeddedexpert.io/p/embedded-systems-bare-metal-ethernet-programming', '102.jpg', '2022-05-10 12:13:03', '2022-05-10 12:13:03'),
(103, 92, 'Embedded Systems Cellular Firmware Development(GSM)', 'https://study.embeddedexpert.io/p/embedded-systems-cellular-firmware-development-gsm', '103.jpg', '2022-05-10 12:13:27', '2022-05-10 12:13:27'),
(104, 92, 'Embedded Systems Design Patterns From Ground Up™', 'https://study.embeddedexpert.io/p/embedded-systems-design-patterns-from-ground-up', '104.jpg', '2022-05-10 12:14:00', '2022-05-10 12:14:01'),
(105, 92, 'Embedded Wifi Bare-Metal Development From Ground Up™', 'https://study.embeddedexpert.io/p/embedded-wifi-bare-metal-development-from-ground-up', '105.jpg', '2022-05-10 12:14:35', '2022-05-10 12:14:36'),
(106, 92, 'MQTT From GroundUp', 'https://study.embeddedexpert.io/', '106.jpg', '2022-05-10 12:15:14', '2022-05-10 12:15:15'),
(107, 93, 'Bluetooth Low Energy (BLE) From Ground Up™', 'https://study.embeddedexpert.io/p/bluetooth-low-energy-ble-from-ground-up_new', '107.jpg', '2022-05-10 12:16:58', '2022-05-10 12:16:58'),
(108, 93, 'Build Your Own RealTime OS (RTOS 1) From Ground Up™ on ARM 1', 'https://study.embeddedexpert.io/p/rtos1', '108.jpg', '2022-05-10 12:17:53', '2022-05-10 12:17:53'),
(109, 93, 'Build Your Own RealTime OS (RTOS 2) From Ground Up™ on ARM 2', 'https://study.embeddedexpert.io/p/rtos2', '109.jpg', '2022-05-10 12:19:21', '2022-05-10 12:19:21'),
(110, 93, 'Deep Learning on ARM Processors - From Ground Up™', 'https://study.embeddedexpert.io/p/deep-learning-on-arm-processors-from-ground-up', '110.jpg', '2022-05-10 12:20:15', '2022-05-10 12:20:15'),
(111, 93, 'Embedded Ethernet Programming with HAL', 'https://study.embeddedexpert.io/p/eth_hal', '111.jpg', '2022-05-10 12:20:45', '2022-05-10 12:20:45'),
(112, 93, 'Embedded Systems Object-Oriented Programming in C', 'https://study.embeddedexpert.io/p/embedded-systems-object-oriented-programming', '112.jpg', '2022-05-10 12:21:16', '2022-05-10 12:21:16'),
(113, 93, 'FreeRTOS From Ground Up™ on ARM Processors', 'https://study.embeddedexpert.io/p/freertos-from-ground-up-on-arm-processors_new', '113.jpg', '2022-05-10 12:22:37', '2022-05-10 12:22:37'),
(114, 93, 'Modern Bare-Metal Embedded C++ Training Pack', 'https://study.embeddedexpert.io/', '114.jpg', '2022-05-10 12:24:13', '2022-05-10 12:24:13'),
(115, 94, '{C++}Build Your Own Realtime OS (RTOS) From Ground Up™ on ARM', 'https://study.embeddedexpert.io/p/c-build-your-own-realtime-os-rtos-from-ground-up-on-arm', '115.jpg', '2022-05-10 12:26:18', '2022-05-10 12:26:18'),
(116, 94, 'Build Your Own RealTime OS (RTOS 1) From Ground Up™ on ARM 1', 'https://study.embeddedexpert.io/p/rtos1', '116.jpg', '2022-05-10 12:26:49', '2022-05-10 12:26:49'),
(117, 94, 'Build Your Own RealTime OS (RTOS 2) From Ground Up™ on ARM 2', 'https://study.embeddedexpert.io/p/rtos2', '117.jpg', '2022-05-10 12:27:33', '2022-05-10 12:27:34'),
(118, 94, 'FreeRTOS From Ground Up™ on ARM Processors', 'https://study.embeddedexpert.io/p/freertos-from-ground-up-on-arm-processors_new', '118.jpg', '2022-05-10 12:28:28', '2022-05-10 12:28:28'),
(119, 94, 'Realtime Operating Systems (RTOS) Learning Path', 'https://study.embeddedexpert.io/p/realtime-operating-systems-rtos-learning-path', '119.jpg', '2022-05-10 12:29:05', '2022-05-10 12:29:05'),
(120, 95, 'Embedded Amazon AWS Connectivity', 'https://study.embeddedexpert.io/', '120.jpg', '2022-05-10 12:30:30', '2022-05-10 12:30:30'),
(121, 95, 'Embedded Google Cloud Connectivity', 'https://study.embeddedexpert.io/', '121.jpg', '2022-05-10 12:30:53', '2022-05-10 12:30:53'),
(122, 95, 'Embedded Microsoft Azure Connectivity', 'https://study.embeddedexpert.io/', '122.jpg', '2022-05-10 12:31:10', '2022-05-10 12:31:10'),
(123, 95, 'MQTT From GroundUp', 'https://study.embeddedexpert.io/', '123.jpg', '2022-05-10 12:31:41', '2022-05-10 12:31:41'),
(124, 96, 'Bluetooth Low Energy (BLE) From Ground Up™', 'https://study.embeddedexpert.io/p/bluetooth-low-energy-ble-from-ground-up_new', '124.jpg', '2022-05-10 12:33:08', '2022-05-10 12:33:08'),
(125, 96, 'Embedded Systems Cellular Firmware Development(GSM)', 'https://study.embeddedexpert.io/p/embedded-systems-cellular-firmware-development-gsm', '125.jpg', '2022-05-10 12:33:57', '2022-05-10 12:33:57'),
(126, 96, 'Embedded Wifi Bare-Metal Development From Ground Up™', 'https://study.embeddedexpert.io/p/embedded-wifi-bare-metal-development-from-ground-up', '126.jpg', '2022-05-10 12:34:29', '2022-05-10 12:34:30'),
(127, 97, 'ARM Assembly Language From Ground Up™ 1', 'https://study.embeddedexpert.io/p/arm-assem-1', '127.jpg', '2022-05-10 12:36:00', '2022-05-10 12:36:00'),
(128, 97, 'ARM Assembly Language From Ground Up™ 2', 'https://study.embeddedexpert.io/p/arm-assembly-language-from-ground-up-2', '128.jpg', '2022-05-10 12:37:15', '2022-05-10 12:37:15'),
(129, 97, 'ARM Assembly Programming Mastery Pack', 'https://study.embeddedexpert.io/p/modern-bare-metal-embedded-c-programming-from-ground-up1', '129.jpg', '2022-05-10 12:37:58', '2022-05-10 12:37:58'),
(130, 97, 'ARM GNU Assembly Programming From Ground Up™', 'https://study.embeddedexpert.io/p/arm-gnu-assembly-programming-from-ground-up', '130.jpg', '2022-05-10 12:38:34', '2022-05-10 12:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Start Here', '2022-05-07 20:15:45', '2022-05-09 22:40:38'),
(92, 'Expert', '2022-05-09 22:58:49', NULL),
(93, 'Intermediate', '2022-05-09 22:59:13', NULL),
(94, 'RTOS Programming', '2022-05-09 22:59:27', NULL),
(95, 'Cloud Connectivity', '2022-05-09 22:59:39', NULL),
(96, 'Wireless Programming', '2022-05-09 22:59:48', NULL),
(97, 'Assembly Programming', '2022-05-09 22:59:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `logo`, `created_at`, `updated_at`) VALUES
(1, '1.png', '2022-01-25 08:47:44', '2022-01-25 07:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_26_120926_create_categories_table', 1),
(7, '2022_01_23_145348_create_banners_table', 2),
(8, '2022_01_23_074104_create_books_table', 3),
(9, '2022_01_25_084525_create_logos_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `role` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `photo`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$0QmXpvmQ0acKU7W2mY3L5Omtuh5RMVYt6p9z2nR1l6w6OIhRVU.Te', '1.jpg', 1, 'QF6JXqpCP8RaimpFyKP8g5EB39tsHzB5DJPpSwzSnTHHrzi1mlEhIz2Mt9HJ', '2022-01-23 05:06:50', '2022-01-23 06:11:27'),
(2, 'sohan', 'sohan@gmail.com', '$2y$10$PpM5fU5d.4Jn.Yb/6ZcO4eHnOod7mRJD/qpTw0YvmmI9E7ngn/bQm', 'default.png', 1, NULL, '2022-04-09 14:14:37', '2022-04-09 14:14:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
