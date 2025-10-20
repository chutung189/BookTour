-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2025 at 07:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nptour`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `role` enum('SuperAdmin','Moderator') DEFAULT 'Moderator',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `username`, `fullName`, `password`, `email`, `address`, `phone`, `phoneNumber`, `avatar`, `createdDate`, `role`, `created_at`, `updated_at`) VALUES
(3, 'chutung', 'chutung', 'e10adc3949ba59abbe56e057f20f883e', 'chutung@gmail.com', NULL, NULL, NULL, NULL, NULL, 'SuperAdmin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `bookingId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `tourId` int(11) DEFAULT NULL,
  `numAdults` int(11) DEFAULT 0,
  `numChildren` int(11) DEFAULT 0,
  `bookingDate` date DEFAULT NULL,
  `totalPrice` double DEFAULT NULL,
  `specialRequest` text DEFAULT NULL,
  `bookingStatus` enum('Pending','Confirmed','Cancelled') DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checkoutId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`bookingId`, `userId`, `address`, `fullName`, `email`, `phoneNumber`, `tourId`, `numAdults`, `numChildren`, `bookingDate`, `totalPrice`, `specialRequest`, `bookingStatus`, `created_at`, `updated_at`, `checkoutId`) VALUES
(1, 5, 'Thanh Xuan Bac', 'Chu Tùng', '22010841@st.phenikaa-uni.edu.vn', '0912345678', 10, 2, 1, NULL, 23000000, NULL, 'Pending', NULL, NULL, NULL),
(2, 5, 'Thanh Xuan Bac', 'Chu Tùng', '22010841@st.phenikaa-uni.edu.vn', '0912345678', 10, 2, 1, NULL, 23000000, NULL, 'Pending', NULL, NULL, NULL),
(3, 5, 'Thanh Xuan Bac', 'Chu Tùng', '22010841@st.phenikaa-uni.edu.vn', '0912345678', 10, 2, 1, NULL, 23000000, NULL, 'Pending', NULL, NULL, NULL),
(4, 5, 'Thanh Tri', 'Pham Viet Phuong', '22010465@st.phenikaa-uni.edu.vn', '0129395483', 13, 2, 1, NULL, 33000000, NULL, 'Pending', NULL, NULL, NULL),
(5, 5, 'Thanh Tri', 'Pham Viet Phuong', '22010465@st.phenikaa-uni.edu.vn', '0129395483', 13, 2, 1, NULL, 33000000, NULL, 'Pending', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `chatId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `adminId` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isRead` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkout`
--

CREATE TABLE `tbl_checkout` (
  `checkoutId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `paymentMethod` enum('Credit Card','PayPal','Cash','Bank Transfer','office - payment') DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `paymentStatus` char(1) DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_checkout`
--

INSERT INTO `tbl_checkout` (`checkoutId`, `userId`, `bookingId`, `paymentMethod`, `amount`, `paymentDate`, `paymentStatus`) VALUES
(1, NULL, 1, 'Cash', 23000000, NULL, 'U'),
(2, NULL, 1, 'Cash', 23000000, NULL, 'y'),
(3, NULL, 3, NULL, 23000000, NULL, 'n'),
(4, NULL, 5, 'Cash', 33000000, NULL, 'U');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `userId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activation_token` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contactId` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `isReply` enum('y','n') DEFAULT 'n',
  `replyMessage` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contactId`, `fullName`, `phoneNumber`, `email`, `subject`, `message`, `isReply`, `replyMessage`, `created_at`, `updated_at`) VALUES
(1, 'Pham Viet Phuong', '0912345678', '22010465@st.phenikaa-uni.edu.vn', NULL, 'gg', 'n', NULL, '2025-10-19 22:57:19', '2025-10-19 22:57:19'),
(2, 'Pham Viet Phuong', '0912345678', '22010465@st.phenikaa-uni.edu.vn', NULL, 'aaa', 'n', NULL, '2025-10-19 22:59:30', '2025-10-19 22:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history`
--

CREATE TABLE `tbl_history` (
  `historyId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `tourId` int(11) DEFAULT NULL,
  `actionType` varchar(50) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `imageId` int(11) NOT NULL,
  `tourId` int(11) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `uploadDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`imageId`, `tourId`, `imageUrl`, `description`, `uploadDate`, `created_at`, `updated_at`) VALUES
(9, 10, 'screenshot_1732899322_1732899362_1760796303.png', 'screenshot_1732899322_1732899362', NULL, NULL, NULL),
(10, 10, 'screenshot_1732898520_1732898694_1760796304.png', 'screenshot_1732898520_1732898694', NULL, NULL, NULL),
(11, 10, 'screenshot_1732898508_1732898694_1760796305.png', 'screenshot_1732898508_1732898694', NULL, NULL, NULL),
(12, 10, 'screenshot_1732899330_1732899364_1760796305.png', 'screenshot_1732899330_1732899364', NULL, NULL, NULL),
(13, 10, 'screenshot_1732898531_1732898696_1760796305.png', 'screenshot_1732898531_1732898696', NULL, NULL, NULL),
(14, 11, 'halong5_1760882813.jpg', 'halong5', NULL, NULL, NULL),
(15, 11, 'halong1_1760882814.jpg', 'halong1', NULL, NULL, NULL),
(16, 11, 'halong2_1760882814.jpg', 'halong2', NULL, NULL, NULL),
(17, 11, 'vinh-ha-long-quang-ninh_1735834627_1760882814.jpg', 'vinh-ha-long-quang-ninh_1735834627', NULL, NULL, NULL),
(18, 11, 'vinh-ha-long_1732896698_1760882048_1760882814.png', 'vinh-ha-long_1732896698_1760882048', NULL, NULL, NULL),
(19, 12, 'bien-my-khe_1732895854_1760886866.jpg', 'bien-my-khe_1732895854', NULL, NULL, NULL),
(20, 12, 'cau-rong-da-nang_1732897880_1760886866.png', 'cau-rong-da-nang_1732897880', NULL, NULL, NULL),
(21, 12, 'ben-trong-ba-na-hills-da-nang_1732896301_1760886866.png', 'ben-trong-ba-na-hills-da-nang_1732896301', NULL, NULL, NULL),
(22, 12, 'ba-na-hill-da-nang-1_1732896298_1760886866.png', 'ba-na-hill-da-nang-1_1732896298', NULL, NULL, NULL),
(23, 12, 'cau-vang-da-nang_1732896303_1760886867.png', 'cau-vang-da-nang_1732896303', NULL, NULL, NULL),
(24, 13, 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-2_1732938419_1760889091.jpg', 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-2_1732938419', NULL, NULL, NULL),
(25, 13, 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-3_1732938419_1760889091.jpg', 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-3_1732938419', NULL, NULL, NULL),
(26, 13, 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-tet_1732938420_1760889092.jpg', 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-tet_1732938420', NULL, NULL, NULL),
(27, 13, 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-4_1732938419_1760889092.jpg', 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-4_1732938419', NULL, NULL, NULL),
(28, 13, 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-5_1732938420_1760889092.jpg', 'du-lich-mien-tay-my-tho-ben-tre-can-tho-2n1d-5_1732938420', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `invoiceId` int(11) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotion`
--

CREATE TABLE `tbl_promotion` (
  `promotionId` int(11) NOT NULL,
  `promoCode` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `reviewId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `tourId` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `reviewDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `id` int(11) NOT NULL,
  `tourId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `rating` decimal(2,1) NOT NULL CHECK (`rating` >= 0 and `rating` <= 5),
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeline`
--

CREATE TABLE `tbl_timeline` (
  `timeLineId` int(11) NOT NULL,
  `tourId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_timeline`
--

INSERT INTO `tbl_timeline` (`timeLineId`, `tourId`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, 10, 'Ngày 1', '<p>TP. Hồ Ch&iacute; Minh &ndash; C&agrave; Mau</p>', NULL, NULL),
(6, 10, 'Ngày 2', '<p>Tham quan Đất Mũi &ndash; Rừng U Minh Hạ</p>', NULL, NULL),
(7, 10, 'Ngày 3', '<p>Chợ nổi C&agrave; Mau &ndash; Mua sắm đặc sản &ndash; Trở về</p>', NULL, NULL),
(8, 11, 'Ngày 1: Hà Nội – Hạ Long – Du thuyền trên Vịnh', '<ul>\r\n	<li>\r\n	<p><strong>S&aacute;ng:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>07h30: Xe đ&oacute;n đo&agrave;n tại điểm hẹn ở H&agrave; Nội, khởi h&agrave;nh đi Hạ Long.</p>\r\n		</li>\r\n		<li>\r\n		<p>11h30: Đến bến t&agrave;u Tuần Ch&acirc;u, l&agrave;m thủ tục l&ecirc;n du thuyền.</p>\r\n		</li>\r\n		<li>\r\n		<p>12h00: Ăn trưa tr&ecirc;n du thuyền, thưởng thức hải sản tươi sống.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chiều:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Du thuyền bắt đầu h&agrave;nh tr&igrave;nh qua c&aacute;c điểm nổi tiếng: <strong>H&ograve;n Trống M&aacute;i</strong>, <strong>H&ograve;n Ch&oacute; Đ&aacute;</strong>, <strong>L&agrave;ng ch&agrave;i Cửa Vạn</strong>.</p>\r\n		</li>\r\n		<li>\r\n		<p>Tham quan <strong>Động Thi&ecirc;n Cung</strong> hoặc <strong>Hang Sửng Sốt</strong> &ndash; nơi c&oacute; hệ thống thạch nhũ rực rỡ, huyền ảo.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tối:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>19h00: Ăn tối tr&ecirc;n t&agrave;u, ngắm ho&agrave;ng h&ocirc;n bu&ocirc;ng xuống mặt biển.</p>\r\n		</li>\r\n		<li>\r\n		<p>Tự do tham gia c&aacute;c hoạt động buổi tối như c&acirc;u mực, h&aacute;t karaoke hoặc ngắm sao tr&ecirc;n boong t&agrave;u.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Ngủ đ&ecirc;m tr&ecirc;n du thuyền.</strong></p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>', NULL, NULL),
(9, 11, 'Ngày 2: Khám phá Vịnh – Chèo kayak – Tắm biển', '<ul>\r\n	<li>\r\n	<p><strong>S&aacute;ng:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Dậy sớm ngắm b&igrave;nh minh tr&ecirc;n Vịnh, tập thể dục nhẹ hoặc thưởng thức c&agrave; ph&ecirc;.</p>\r\n		</li>\r\n		<li>\r\n		<p>Ăn s&aacute;ng tr&ecirc;n t&agrave;u.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Trưa:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Tham gia <strong>ch&egrave;o kayak</strong> hoặc <strong>bơi lội</strong> ở khu vực Vịnh Luồn hoặc đảo Titop.</p>\r\n		</li>\r\n		<li>\r\n		<p>Ăn trưa tr&ecirc;n du thuyền.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chiều:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Du thuyền đưa đo&agrave;n đến b&atilde;i biển <strong>Titop</strong> &ndash; nơi du kh&aacute;ch c&oacute; thể leo l&ecirc;n đỉnh n&uacute;i để ngắm to&agrave;n cảnh Vịnh Hạ Long.</p>\r\n		</li>\r\n		<li>\r\n		<p>Trở lại du thuyền, nghỉ ngơi v&agrave; d&ugrave;ng bữa tối.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Ngủ đ&ecirc;m tr&ecirc;n du thuyền.</strong></p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>', NULL, NULL),
(10, 11, 'Ngày 3: Hạ Long – Hà Nội', '<ul>\r\n	<li>\r\n	<p><strong>S&aacute;ng:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Ăn s&aacute;ng tr&ecirc;n t&agrave;u, du ngoạn quanh Vịnh lần cuối, ngắm nh&igrave;n những đảo đ&aacute; kỳ vĩ dưới &aacute;nh nắng sớm.</p>\r\n		</li>\r\n		<li>\r\n		<p>10h00: Trở lại bến, l&agrave;m thủ tục rời t&agrave;u.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Trưa:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Ăn trưa tại nh&agrave; h&agrave;ng địa phương.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chiều:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>L&ecirc;n xe khởi h&agrave;nh về H&agrave; Nội, kết th&uacute;c tour, chia tay đo&agrave;n trong niềm vui v&agrave; lưu luyến.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>', NULL, NULL),
(11, 12, 'Ngày 1: Đà Nẵng – Cầu Rồng – Biển Mỹ Khê', '<ul>\r\n	<li>\r\n	<p><strong>S&aacute;ng:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Đ&oacute;n kh&aacute;ch tại s&acirc;n bay hoặc ga Đ&agrave; Nẵng.</p>\r\n		</li>\r\n		<li>\r\n		<p>Nhận ph&ograve;ng kh&aacute;ch sạn, nghỉ ngơi.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chiều:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Tham quan <strong>Cầu T&igrave;nh Y&ecirc;u</strong>, <strong>Tượng C&aacute; Ch&eacute;p H&oacute;a Rồng</strong>, <strong>Cầu Rồng</strong> &ndash; biểu tượng độc đ&aacute;o của th&agrave;nh phố.</p>\r\n		</li>\r\n		<li>\r\n		<p>Dạo biển <strong>Mỹ Kh&ecirc;</strong>, tắm biển, chụp ảnh ho&agrave;ng h&ocirc;n tuyệt đẹp.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tối:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Thưởng thức <strong>hải sản tươi sống</strong> tại c&aacute;c nh&agrave; h&agrave;ng ven biển.</p>\r\n		</li>\r\n		<li>\r\n		<p>Dạo phố đ&ecirc;m, ngắm <strong>Cầu Rồng phun lửa v&agrave; phun nước</strong> (thường diễn ra v&agrave;o tối thứ Bảy, Chủ nhật).</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>', NULL, NULL),
(12, 13, 'Ngày 1', '<ul>\r\n	<li>\r\n	<p><strong>S&aacute;ng:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Khởi h&agrave;nh từ TP. Hồ Ch&iacute; Minh theo cao tốc Trung Lương, hướng về miền T&acirc;y Nam Bộ.</p>\r\n		</li>\r\n		<li>\r\n		<p>Đến <strong>Mỹ Tho</strong>, du kh&aacute;ch tham quan <strong>ch&ugrave;a Vĩnh Tr&agrave;ng</strong> &ndash; ng&ocirc;i ch&ugrave;a cổ nổi tiếng với kiến tr&uacute;c kết hợp Đ&ocirc;ng &ndash; T&acirc;y độc đ&aacute;o.</p>\r\n		</li>\r\n		<li>\r\n		<p>L&ecirc;n thuyền tham quan <strong>C&ugrave; Lao Thới Sơn</strong>, kh&aacute;m ph&aacute; s&ocirc;ng Tiền, nghe đờn ca t&agrave;i tử Nam Bộ.</p>\r\n		</li>\r\n		<li>\r\n		<p>Dừng ch&acirc;n tại <strong>nh&agrave; d&acirc;n Bến Tre</strong>, thưởng thức tr&aacute;i c&acirc;y miệt vườn, uống tr&agrave; mật ong v&agrave; xem quy tr&igrave;nh l&agrave;m kẹo dừa thủ c&ocirc;ng.</p>\r\n		</li>\r\n		<li>\r\n		<p>Đi <strong>xuồng ch&egrave;o len lỏi trong rạch dừa nước</strong>, cảm nhận kh&ocirc;ng kh&iacute; m&aacute;t l&agrave;nh của miền s&ocirc;ng nước.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Trưa:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>D&ugrave;ng bữa tại nh&agrave; h&agrave;ng địa phương với c&aacute;c m&oacute;n đặc sản: c&aacute; tai tượng chi&ecirc;n x&ugrave;, t&ocirc;m kho t&agrave;u, canh chua c&aacute; l&oacute;c, rau vườn...</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chiều:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Tiếp tục h&agrave;nh tr&igrave;nh đến <strong>Cần Thơ</strong>, nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi.</p>\r\n		</li>\r\n		<li>\r\n		<p>Buổi tối tự do kh&aacute;m ph&aacute; <strong>Bến Ninh Kiều</strong>, thưởng thức đặc sản miền T&acirc;y như b&aacute;nh x&egrave;o, hủ tiếu Sa Đ&eacute;c, lẩu mắm...</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>', NULL, NULL),
(13, 13, 'Ngày 2', '<ul>\r\n	<li>\r\n	<p><strong>S&aacute;ng sớm:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>L&ecirc;n thuyền tham quan <strong>chợ nổi C&aacute;i Răng</strong> &ndash; n&eacute;t văn h&oacute;a đặc trưng của miền T&acirc;y, nơi thương hồ mua b&aacute;n n&ocirc;ng sản tr&ecirc;n s&ocirc;ng.</p>\r\n		</li>\r\n		<li>\r\n		<p>Gh&eacute; <strong>l&ograve; hủ tiếu truyền thống</strong>, xem quy tr&igrave;nh l&agrave;m hủ tiếu thủ c&ocirc;ng, thưởng thức c&agrave; ph&ecirc; ven s&ocirc;ng.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Trưa:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Ăn trưa tại nh&agrave; h&agrave;ng, sau đ&oacute; khởi h&agrave;nh về TP. Hồ Ch&iacute; Minh.</p>\r\n		</li>\r\n		<li>\r\n		<p>Tr&ecirc;n đường về, dừng ch&acirc;n mua qu&agrave; đặc sản như kẹo dừa Bến Tre, b&aacute;nh p&iacute;a S&oacute;c Trăng, nem Lai Vung.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chiều:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Xe đưa đo&agrave;n về điểm hẹn ban đầu.</p>\r\n		</li>\r\n		<li>\r\n		<p>Kết th&uacute;c tour, chia tay v&agrave; hẹn gặp lại trong h&agrave;nh tr&igrave;nh sau.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tours`
--

CREATE TABLE `tbl_tours` (
  `tourId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `imageList` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `domain` enum('b','t','n') DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `priceAdult` double DEFAULT NULL,
  `priceChild` double DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `availableSlots` int(11) DEFAULT NULL,
  `rating` double DEFAULT 0,
  `availability` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tours`
--

INSERT INTO `tbl_tours` (`tourId`, `title`, `description`, `imageList`, `location`, `domain`, `destination`, `priceAdult`, `priceChild`, `time`, `startDate`, `endDate`, `quantity`, `availableSlots`, `rating`, `availability`, `created_at`, `updated_at`) VALUES
(5, 'Mũi Cà Mau', '<p><strong>Tour du lịch C&agrave; Mau</strong> l&agrave; h&agrave;nh tr&igrave;nh đưa du kh&aacute;ch đến v&ugrave;ng đất tận c&ugrave;ng của Tổ quốc &ndash; nơi &ldquo;rừng v&agrave;ng, biển bạc&rdquo;, nơi con người hiền h&ograve;a v&agrave; cảnh vật đậm đ&agrave; bản sắc miền T&acirc;y Nam Bộ.<br />\nTrong chuyến đi n&agrave;y, du kh&aacute;ch sẽ được chi&ecirc;m ngưỡng <strong>hệ sinh th&aacute;i rừng ngập mặn độc đ&aacute;o</strong>, kh&aacute;m ph&aacute; <strong>Mũi C&agrave; Mau &ndash; điểm cực Nam thi&ecirc;ng li&ecirc;ng của đất nước</strong>, v&agrave; thưởng thức <strong>đặc sản miền s&ocirc;ng nước</strong> như t&ocirc;m kh&ocirc; Rạch Gốc, cua C&agrave; Mau, lẩu mắm U Minh,...</p>', NULL, NULL, 'n', 'Cà Mau', 10000000, 3000000, '8 ngày 7 đêm', '2025-11-22', '2025-11-30', 5, NULL, 0, 0, NULL, NULL),
(6, 'Mũi Cà Mau', '<p><strong>Tour du lịch C&agrave; Mau</strong> l&agrave; h&agrave;nh tr&igrave;nh đưa du kh&aacute;ch đến v&ugrave;ng đất tận c&ugrave;ng của Tổ quốc &ndash; nơi &ldquo;rừng v&agrave;ng, biển bạc&rdquo;, nơi con người hiền h&ograve;a v&agrave; cảnh vật đậm đ&agrave; bản sắc miền T&acirc;y Nam Bộ.<br />\nTrong chuyến đi n&agrave;y, du kh&aacute;ch sẽ được chi&ecirc;m ngưỡng <strong>hệ sinh th&aacute;i rừng ngập mặn độc đ&aacute;o</strong>, kh&aacute;m ph&aacute; <strong>Mũi C&agrave; Mau &ndash; điểm cực Nam thi&ecirc;ng li&ecirc;ng của đất nước</strong>, v&agrave; thưởng thức <strong>đặc sản miền s&ocirc;ng nước</strong> như t&ocirc;m kh&ocirc; Rạch Gốc, cua C&agrave; Mau, lẩu mắm U Minh,...</p>', NULL, NULL, 'n', 'Cà Mau', 10000000, 3000000, '157 ngày 156 đêm', '2025-11-22', '2026-04-28', 5, NULL, 0, 0, NULL, NULL),
(7, 'Mũi Cà Mau', '<p><strong>Tour du lịch C&agrave; Mau</strong> l&agrave; h&agrave;nh tr&igrave;nh đưa du kh&aacute;ch đến v&ugrave;ng đất tận c&ugrave;ng của Tổ quốc &ndash; nơi &ldquo;rừng v&agrave;ng, biển bạc&rdquo;, nơi con người hiền h&ograve;a v&agrave; cảnh vật đậm đ&agrave; bản sắc miền T&acirc;y Nam Bộ.<br />\nTrong chuyến đi n&agrave;y, du kh&aacute;ch sẽ được chi&ecirc;m ngưỡng <strong>hệ sinh th&aacute;i rừng ngập mặn độc đ&aacute;o</strong>, kh&aacute;m ph&aacute; <strong>Mũi C&agrave; Mau &ndash; điểm cực Nam thi&ecirc;ng li&ecirc;ng của đất nước</strong>, v&agrave; thưởng thức <strong>đặc sản miền s&ocirc;ng nước</strong> như t&ocirc;m kh&ocirc; Rạch Gốc, cua C&agrave; Mau, lẩu mắm U Minh,...</p>', NULL, NULL, 'n', 'Cà Mau', 10000000, 3000000, '8 ngày 7 đêm', '2025-11-22', '2025-11-30', 5, NULL, 0, 0, NULL, NULL),
(8, 'Mũi Cà Mau', '<p><strong>Tour du lịch C&agrave; Mau</strong> l&agrave; h&agrave;nh tr&igrave;nh đưa du kh&aacute;ch đến v&ugrave;ng đất tận c&ugrave;ng của Tổ quốc &ndash; nơi &ldquo;rừng v&agrave;ng, biển bạc&rdquo;, nơi con người hiền h&ograve;a v&agrave; cảnh vật đậm đ&agrave; bản sắc miền T&acirc;y Nam Bộ.<br />\nTrong chuyến đi n&agrave;y, du kh&aacute;ch sẽ được chi&ecirc;m ngưỡng <strong>hệ sinh th&aacute;i rừng ngập mặn độc đ&aacute;o</strong>, kh&aacute;m ph&aacute; <strong>Mũi C&agrave; Mau &ndash; điểm cực Nam thi&ecirc;ng li&ecirc;ng của đất nước</strong>, v&agrave; thưởng thức <strong>đặc sản miền s&ocirc;ng nước</strong> như t&ocirc;m kh&ocirc; Rạch Gốc, cua C&agrave; Mau, lẩu mắm U Minh,...</p>', NULL, NULL, 'n', 'Cà Mau', 10000000, 3000000, '8 ngày 7 đêm', '2025-11-22', '2025-11-30', 5, NULL, 0, 0, NULL, NULL),
(9, 'Mũi Cà Mau', '<p><strong>Tour du lịch C&agrave; Mau</strong> l&agrave; h&agrave;nh tr&igrave;nh đưa du kh&aacute;ch đến v&ugrave;ng đất tận c&ugrave;ng của Tổ quốc &ndash; nơi &ldquo;rừng v&agrave;ng, biển bạc&rdquo;, nơi con người hiền h&ograve;a v&agrave; cảnh vật đậm đ&agrave; bản sắc miền T&acirc;y Nam Bộ.<br />\nTrong chuyến đi n&agrave;y, du kh&aacute;ch sẽ được chi&ecirc;m ngưỡng <strong>hệ sinh th&aacute;i rừng ngập mặn độc đ&aacute;o</strong>, kh&aacute;m ph&aacute; <strong>Mũi C&agrave; Mau &ndash; điểm cực Nam thi&ecirc;ng li&ecirc;ng của đất nước</strong>, v&agrave; thưởng thức <strong>đặc sản miền s&ocirc;ng nước</strong> như t&ocirc;m kh&ocirc; Rạch Gốc, cua C&agrave; Mau, lẩu mắm U Minh,...</p>', NULL, NULL, 'n', 'Cà Mau', 10000000, 3000000, '8 ngày 7 đêm', '2025-11-22', '2025-11-30', 5, NULL, 0, 0, NULL, NULL),
(10, 'Mũi Cà Mau', '<p><strong>Tour du lịch C&agrave; Mau</strong> l&agrave; h&agrave;nh tr&igrave;nh đưa du kh&aacute;ch đến v&ugrave;ng đất tận c&ugrave;ng của Tổ quốc &ndash; nơi &ldquo;rừng v&agrave;ng, biển bạc&rdquo;, nơi con người hiền h&ograve;a v&agrave; cảnh vật đậm đ&agrave; bản sắc miền T&acirc;y Nam Bộ.<br />\nTrong chuyến đi n&agrave;y, du kh&aacute;ch sẽ được chi&ecirc;m ngưỡng <strong>hệ sinh th&aacute;i rừng ngập mặn độc đ&aacute;o</strong>, kh&aacute;m ph&aacute; <strong>Mũi C&agrave; Mau &ndash; điểm cực Nam thi&ecirc;ng li&ecirc;ng của đất nước</strong>, v&agrave; thưởng thức <strong>đặc sản miền s&ocirc;ng nước</strong> như t&ocirc;m kh&ocirc; Rạch Gốc, cua C&agrave; Mau, lẩu mắm U Minh,...</p>', NULL, NULL, 'n', 'Cà Mau', 10000000, 3000000, '8 ngày 7 đêm', '2025-11-22', '2025-11-30', 2, NULL, 0, 1, NULL, NULL),
(11, 'Hạ Long Bay', '<p>Tour du lịch <strong>Vịnh Hạ Long</strong> l&agrave; h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; một trong những kỳ quan thi&ecirc;n nhi&ecirc;n nổi tiếng nhất của Việt Nam, được UNESCO c&ocirc;ng nhận l&agrave; <strong>Di sản Thi&ecirc;n nhi&ecirc;n Thế giới</strong>, đưa du kh&aacute;ch tham quan những h&ograve;n đảo đ&aacute; v&ocirc;i h&ugrave;ng vĩ, những hang động kỳ ảo v&agrave; tận hưởng kh&ocirc;ng kh&iacute; trong l&agrave;nh của biển khơi.</p>\n\n<p>Khởi h&agrave;nh từ <strong>H&agrave; Nội</strong>, du kh&aacute;ch di chuyển đến Hạ Long bằng &ocirc; t&ocirc; hoặc xe du lịch. Khi đến nơi, đo&agrave;n l&ecirc;n du thuyền bắt đầu h&agrave;nh tr&igrave;nh giữa h&agrave;ng ng&agrave;n đảo đ&aacute; với đủ h&igrave;nh th&ugrave; độc đ&aacute;o như <strong>H&ograve;n Trống M&aacute;i</strong>, <strong>H&ograve;n Ch&oacute; Đ&aacute;</strong>, hay <strong>H&ograve;n G&agrave; Chọi</strong> &ndash; biểu tượng của Vịnh Hạ Long.</p>', NULL, NULL, 'b', 'Hạ Long', 10000000, 3000000, '3 ngày 2 đêm', '2025-12-10', '2025-12-13', 3, NULL, 0, 1, NULL, NULL),
(12, 'Đà Nẵng', '<p>Đ&agrave; Nẵng &ndash; th&agrave;nh phố biển xinh đẹp nằm giữa miền Trung Việt Nam, nổi tiếng với <strong>b&atilde;i biển Mỹ Kh&ecirc; quyến rũ</strong>, <strong>những c&acirc;y cầu hiện đại</strong>, v&agrave; <strong>con người hiền h&ograve;a, mến kh&aacute;ch</strong>. Tour du lịch Đ&agrave; Nẵng sẽ đưa bạn đến với <strong>thi&ecirc;n nhi&ecirc;n tuyệt đẹp</strong>, <strong>ẩm thực đặc sắc</strong>, v&agrave; <strong>nền văn h&oacute;a đậm đ&agrave; bản sắc miền Trung</strong>.</p>', NULL, NULL, 't', 'Đà Nẵng', 8000000, 2000000, '1 ngày 0 đêm', '2025-12-08', '2025-12-09', 7, NULL, 0, 1, NULL, NULL),
(13, 'Du Lịch Miền Tây', '<p>Kh&aacute;m ph&aacute; vẻ đẹp mộc mạc, tr&ugrave; ph&uacute; của v&ugrave;ng <strong>s&ocirc;ng nước Miền T&acirc;y</strong> qua h&agrave;nh tr&igrave;nh 2 ng&agrave;y 1 đ&ecirc;m đầy th&uacute; vị.<br />\nTour đưa bạn về với <strong>miệt vườn tr&aacute;i c&acirc;y</strong>, <strong>những d&ograve;ng s&ocirc;ng hiền h&ograve;a</strong>, thưởng thức <strong>đờn ca t&agrave;i tử Nam Bộ</strong>, v&agrave; đặc biệt l&agrave; <strong>trải nghiệm chợ nổi C&aacute;i Răng</strong> &ndash; n&eacute;t văn h&oacute;a đặc trưng của miền T&acirc;y Việt Nam.<br />\nC&ugrave;ng tận hưởng kh&ocirc;ng kh&iacute; y&ecirc;n b&igrave;nh, gần gũi v&agrave; kh&aacute;m ph&aacute; cuộc sống của người d&acirc;n miền s&ocirc;ng nước qua những chuyến xuồng ba l&aacute;, những vườn dừa xanh ng&aacute;t v&agrave; những m&oacute;n ăn d&acirc;n d&atilde;, đậm đ&agrave; hương vị qu&ecirc; hương.</p>', NULL, NULL, 't', 'Mỹ Tho, Bến Tre, Cần Thơ', 15000000, 3000000, '2 ngày 1 đêm', '2025-12-16', '2025-12-18', 6, NULL, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `role` enum('Customer','Admin','Staff') DEFAULT 'Customer',
  `activation_token` varchar(255) DEFAULT NULL,
  `isActive` char(1) DEFAULT 'n',
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `username`, `password`, `name`, `fullName`, `email`, `phone`, `phoneNumber`, `address`, `gender`, `role`, `activation_token`, `isActive`, `avatar`, `created_at`, `updated_at`, `status`) VALUES
(5, 'chutung3', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 'taolatung04ok@gmail.com', NULL, NULL, NULL, NULL, 'Customer', NULL, 'y', '1760880277.jpg', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`bookingId`),
  ADD KEY `fk_booking_user` (`userId`),
  ADD KEY `fk_booking_tour` (`tourId`);

--
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`chatId`),
  ADD KEY `fk_chat_user` (`userId`),
  ADD KEY `fk_chat_admin` (`adminId`);

--
-- Indexes for table `tbl_checkout`
--
ALTER TABLE `tbl_checkout`
  ADD PRIMARY KEY (`checkoutId`),
  ADD KEY `fk_checkout_booking` (`bookingId`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD PRIMARY KEY (`historyId`),
  ADD KEY `fk_history_user` (`userId`),
  ADD KEY `fk_history_tour` (`tourId`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`imageId`),
  ADD KEY `fk_images_tours` (`tourId`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`invoiceId`),
  ADD KEY `fk_invoice_booking` (`bookingId`);

--
-- Indexes for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  ADD PRIMARY KEY (`promotionId`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`reviewId`),
  ADD KEY `userID` (`userId`),
  ADD KEY `tourID` (`tourId`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reviews_tour` (`tourId`),
  ADD KEY `fk_reviews_user` (`userId`);

--
-- Indexes for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  ADD PRIMARY KEY (`timeLineId`),
  ADD KEY `fk_timeline_tour` (`tourId`);

--
-- Indexes for table `tbl_tours`
--
ALTER TABLE `tbl_tours`
  ADD PRIMARY KEY (`tourId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `chatId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_checkout`
--
ALTER TABLE `tbl_checkout`
  MODIFY `checkoutId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_history`
--
ALTER TABLE `tbl_history`
  MODIFY `historyId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `imageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `invoiceId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  MODIFY `promotionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `reviewId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  MODIFY `timeLineId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_tours`
--
ALTER TABLE `tbl_tours`
  MODIFY `tourId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD CONSTRAINT `fk_booking_tour` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_booking_user` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_booking_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`),
  ADD CONSTRAINT `tbl_booking_ibfk_2` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`);

--
-- Constraints for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD CONSTRAINT `fk_chat_admin` FOREIGN KEY (`adminId`) REFERENCES `tbl_admin` (`adminId`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_chat_user` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_chat_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`),
  ADD CONSTRAINT `tbl_chat_ibfk_2` FOREIGN KEY (`adminId`) REFERENCES `tbl_admin` (`adminId`);

--
-- Constraints for table `tbl_checkout`
--
ALTER TABLE `tbl_checkout`
  ADD CONSTRAINT `fk_checkout_booking` FOREIGN KEY (`bookingId`) REFERENCES `tbl_booking` (`bookingId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_checkout_ibfk_1` FOREIGN KEY (`bookingId`) REFERENCES `tbl_booking` (`bookingId`);

--
-- Constraints for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD CONSTRAINT `fk_history_tour` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_history_user` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_history_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`),
  ADD CONSTRAINT `tbl_history_ibfk_2` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`);

--
-- Constraints for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD CONSTRAINT `fk_images_tour` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_images_tours` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_images_ibfk_1` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`);

--
-- Constraints for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD CONSTRAINT `fk_invoice_booking` FOREIGN KEY (`bookingId`) REFERENCES `tbl_booking` (`bookingId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_invoice_ibfk_1` FOREIGN KEY (`bookingId`) REFERENCES `tbl_booking` (`bookingId`);

--
-- Constraints for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD CONSTRAINT `tbl_review_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`),
  ADD CONSTRAINT `tbl_review_ibfk_2` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`);

--
-- Constraints for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD CONSTRAINT `fk_reviews_tour` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reviews_user` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  ADD CONSTRAINT `fk_timeline_tour` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
