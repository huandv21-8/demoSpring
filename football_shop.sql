-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 05:18 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `football_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_topic_blog` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `id_topic` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `id_topic`, `id_user`, `name_category`, `image_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Asernal', 'https://scontent.fhan2-3.fna.fbcdn.net/v/t1.0-9/123845780_10158586909297713_4897629088675961030_o.jpg?_nc_cat=108&ccb=2&_nc_sid=730e14&_nc_ohc=nVXh47R_h1wAX9VhN4I&_nc_ht=scontent.fhan2-3.fna&oh=a2b6ad58449f62e2c2d54be8e61de16f&oe=5FCCC842', 0, '2020-10-01 22:54:49', '2020-10-01 22:54:49'),
(2, 1, 2, 'Chelsea', 'https://scontent.fhan2-3.fna.fbcdn.net/v/t1.0-9/120301001_10159035115667259_556070956408622432_o.jpg?_nc_cat=108&_nc_sid=730e14&_nc_ohc=aRH_gA31vd0AX9_uiFp&_nc_ht=scontent.fhan2-3.fna&oh=d1ce8dc85d2fde51ac4d5227d3108846&oe=5F9C4FD8', 0, '2020-07-23 16:52:34', '2020-08-03 15:04:36'),
(3, 2, 2, 'Tuyển Anh', 'https://media.bongda.com.vn/files/ngocanh.nguyen/2018/06/15/harry-kane-1907.jpg', 0, '2020-07-25 21:38:37', '2020-07-26 10:24:29'),
(4, 2, 2, 'Tuyển Đức', 'https://dothethao.net.vn/wp-content/uploads/2019/11/tong-hop-ao-bong-da-cac-doi-tuyen-quoc-gia-euro-2020-6.jpg', 0, '2020-08-23 21:05:42', '2020-09-28 21:11:49'),
(5, 3, 2, 'Áo Polo', 'https://dothethao.net.vn/wp-content/uploads/2020/08/ao-bong-da-polo-tuyen-italia-euro-2020-7-768x768.jpg', 0, '2020-08-03 15:04:36', '2020-08-03 15:04:36'),
(6, 3, 2, 'Áo Riki', 'https://dothethao.net.vn/wp-content/uploads/2020/08/ao-bong-da-riki-quator-xanh-bich-4-768x768.jpg', 0, '2020-08-03 15:04:36', '2020-08-03 15:04:36'),
(7, 4, 2, 'Giày Mira', 'https://dothethao.net.vn/wp-content/uploads/2020/08/giay-da-bong-mira-lux-20-3-mau-xanh-ngoc-phoi-den-1-768x768.jpg', 0, '2020-08-03 15:04:36', '2020-08-03 15:04:36'),
(8, 4, 2, 'Giày Kamito', 'https://dothethao.net.vn/wp-content/uploads/2019/09/giay-bong-da-kamito-quang-hai-mau-xanh-3-768x768.png', 0, '2020-09-28 21:11:49', '2020-09-28 21:11:49'),
(9, 5, 2, 'Quả bóng dá size 3', 'https://dothethao.net.vn/wp-content/uploads/2020/04/qua-bong-da-ngoai-hang-anh-2020-768x768.jpg', 0, '2020-09-28 21:11:49', '2020-09-28 21:11:49'),
(10, 5, 2, 'Quả bóng đá size 4', 'https://dothethao.net.vn/wp-content/uploads/2020/03/qua-bong-da-serie-a-2020-mau-4-768x768.jpg', 0, '2020-08-23 14:51:09', '2020-09-28 21:11:49'),
(11, 5, 2, 'Quả bóng đá size 5', 'https://dothethao.net.vn/wp-content/uploads/2020/04/qua-bong-da-champion-league-1-1-768x768.png', 0, '2020-08-25 09:30:07', '2020-09-28 21:11:49'),
(12, 6, 2, 'Găng tay thủ môn', 'https://dothethao.net.vn/wp-content/uploads/2020/07/gang-tay-thu-mon-adidas-predator-20-urg-2-0-mau-3-1-768x768.jpg', 0, '2020-07-23 16:52:34', '2020-07-31 15:25:53'),
(13, 6, 2, 'Vớ, tất bóng đá', 'https://dothethao.net.vn/wp-content/uploads/2019/09/tat-bong-da-chong-tron-chong-truot-mau-do-768x768.jpg', 0, '2020-07-25 21:38:37', '2020-08-03 15:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `link_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id_image`, `id_product`, `link_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://dothethao.net.vn/wp-content/uploads/2020/06/ao_bong_da_arsenal_2020_san_khach_hang_thailand_1-1.jpg', '2020-11-02 19:57:01', '2020-11-02 19:57:06'),
(2, 1, 'https://dothethao.net.vn/wp-content/uploads/2020/06/ao_bong_da_arsenal_2020_san_khach_hang_thailand_6-1.jpg', NULL, NULL),
(3, 1, 'https://dothethao.net.vn/wp-content/uploads/2020/06/ao_bong_da_arsenal_2020_san_khach_hang_thailand_3-1.jpg', NULL, NULL),
(6, 4, 'https://dothethao.net.vn/wp-content/uploads/2020/05/ao-bong-da-tuyen-anh-euro-2020-san-nha-hang-thailand-5-100x100.jpg', NULL, NULL),
(7, 4, 'https://dothethao.net.vn/wp-content/uploads/2020/05/ao-bong-da-tuyen-anh-euro-2020-san-nha-hang-thailand-7-100x100.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total_money` float NOT NULL,
  `delivery_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total_price` float NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id_position` int(11) NOT NULL,
  `name_position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id_position`, `name_position`) VALUES
(1, 'admin'),
(2, 'employee'),
(3, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_topic` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_product` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_category`, `id_topic`, `id_user`, `name_product`, `description`, `price`, `image`, `sale`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'ÃÂÃÂO BÃÂÃÂNG ÃÂÃÂÃÂÃÂ ARSENAL SÃÂÃÂN KHÃÂÃÂCH 2020 2021 ÃÂ¢ÃÂÃÂ HÃÂÃÂNG THAILAND', 'BÃÂ¡ÃÂ»ÃÂ ÃÂÃÂ¡o bÃÂÃÂ³ng ÃÂÃÂÃÂÃÂ¡ Arsenal sÃÂÃÂ¢n khÃÂÃÂ¡ch 2020 2021 ÃÂÃÂÃÂÃÂ£ ÃÂÃÂÃÂÃÂ°ÃÂ¡ÃÂ»ÃÂ£c ra mÃÂ¡ÃÂºÃÂ¯t. ÃÂÃÂo cÃÂÃÂ³ cÃÂ¡ÃÂ»ÃÂ trÃÂÃÂ²n vÃÂÃÂ  kiÃÂ¡ÃÂ»ÃÂu dÃÂÃÂ¡ng ÃÂÃÂuÃÂÃÂ´i tÃÂÃÂ´m giÃÂÃÂºp tÃÂ¡ÃÂºÃÂ¡o ra sÃÂ¡ÃÂ»ÃÂ± trÃÂ¡ÃÂºÃÂ» trung vÃÂÃÂ  nam tÃÂÃÂ­nh cho ngÃÂÃÂ°ÃÂ¡ÃÂ»ÃÂi mÃÂ¡ÃÂºÃÂ·c. ChÃÂ¡ÃÂºÃÂ¥t liÃÂ¡ÃÂ»ÃÂu vÃÂ¡ÃÂºÃÂ£i Thailand sÃÂ¡ÃÂºÃÂ½ khÃÂÃÂ´ng lÃÂÃÂ m bÃÂ¡ÃÂºÃÂ¡n thÃÂ¡ÃÂºÃÂ¥t vÃÂ¡ÃÂ»ÃÂng khi lÃÂ¡ÃÂ»ÃÂ±a chÃÂ¡ÃÂ»ÃÂn.MÃÂ¡ÃÂºÃÂ«u ÃÂÃÂ¡o sÃÂÃÂ¢n khÃÂÃÂ¡ch mÃÂ¡ÃÂ»ÃÂi cÃÂ¡ÃÂ»ÃÂ§a PhÃÂÃÂ¡o thÃÂ¡ÃÂ»ÃÂ§ cÃÂÃÂ³ thiÃÂ¡ÃÂºÃÂ¿t kÃÂ¡ÃÂºÃÂ¿ khÃÂÃÂ¡ mÃÂ¡ÃÂ»ÃÂi lÃÂ¡ÃÂºÃÂ¡, cÃÂÃÂ¡c ÃÂÃÂÃÂÃÂ°ÃÂ¡ÃÂ»ÃÂng sÃÂ¡ÃÂ»ÃÂc nÃÂÃÂ¢u ÃÂÃÂÃÂ¡ÃÂ»ÃÂ trÃÂ¡ÃÂºÃÂ£i dÃÂÃÂ i trÃÂÃÂªn nÃÂ¡ÃÂ»ÃÂn ÃÂÃÂ¡o mÃÂÃÂ u trÃÂ¡ÃÂºÃÂ¯ng tÃÂ¡ÃÂºÃÂ¡o nÃÂÃÂªn cÃÂÃÂ¡c ÃÂÃÂÃÂÃÂ°ÃÂ¡ÃÂ»ÃÂng nÃÂÃÂ©t chÃÂÃÂ©o uÃÂ¡ÃÂ»ÃÂn khÃÂÃÂºc. MÃÂ¡ÃÂ»ÃÂt sÃÂ¡ÃÂ»ÃÂ chi tiÃÂ¡ÃÂºÃÂ¿t khÃÂÃÂ¡c nhÃÂÃÂ° logo Arsenal hay logo nhÃÂÃÂ  tÃÂÃÂ i trÃÂ¡ÃÂ»ÃÂ£ ÃÂÃÂÃÂ¡ÃÂ»ÃÂu cÃÂÃÂ³ mÃÂÃÂ u ÃÂÃÂen. CÃÂÃÂ©ng giÃÂ¡ÃÂ»ÃÂng nhÃÂÃÂ° ÃÂÃÂa phÃÂ¡ÃÂºÃÂ§n nhÃÂ¡ÃÂ»ÃÂ¯ng chiÃÂ¡ÃÂºÃÂ¿c ÃÂÃÂ¡o do Adidas sÃÂ¡ÃÂºÃÂ£n xuÃÂ¡ÃÂºÃÂ¥t, bÃÂ¡ÃÂ»ÃÂ ÃÂÃÂ¡o ÃÂÃÂÃÂ¡ÃÂºÃÂ¥u nÃÂÃÂ y cÃÂÃÂ©ng cÃÂÃÂ³ 3 sÃÂ¡ÃÂ»ÃÂc kÃÂ¡ÃÂºÃÂ» mÃÂÃÂ u ÃÂÃÂen ÃÂ¡ÃÂ»ÃÂ 2 bÃÂÃÂªn vai ÃÂÃÂ¡o. HoÃÂÃÂ n thiÃÂ¡ÃÂ»ÃÂn bÃÂ¡ÃÂ»ÃÂ ÃÂÃÂ¡o ÃÂÃÂÃÂ¡ÃÂºÃÂ¥u nÃÂÃÂ y lÃÂÃÂ  quÃÂ¡ÃÂºÃÂ§n short mÃÂÃÂ u tÃÂÃÂ­m than cÃÂÃÂ¹ng 3 sÃÂ¡ÃÂ»ÃÂc kÃÂ¡ÃÂºÃÂ» trÃÂ¡ÃÂºÃÂ¯ng ÃÂ¡ÃÂ»ÃÂ hai bÃÂÃÂªn.', 124000, 'https://dothethao.net.vn/wp-content/uploads/2020/06/ao_bong_da_arsenal_2020_san_khach_hang_thailand_6-1.jpg', NULL, 0, '2020-10-03 18:54:03', '2020-10-03 18:54:03'),
(2, 2, 1, 1, 'ÁO BÓNG ĐÁ CHELSEA 2020 2021 SÂN NHÀ – THUN LẠNH CAO CẤP', 'Mới đây, bộ áo bóng đá Chelsea sân nhà 2020 2021 đã được ra mắt. Áo có cổ tròn và kiểu dáng suông đem đến sự thoải mái và che đi những khuyết điểm của người mặc. Chất liệu vải thun lạnh cao cấp đem lại sự mát mẻ cũng như khả năng thấm hút tốt khi chơi thể thao.\r\n\r\nNgay khi ra mắt chiếc áo này đã đem đến nhiều câu chuyện dở khóc dở cười. Hình ảnh số 3 của nhà tài trợ đội bóng đã trở thành chủ đề của nhiều câu chuyện khi Chelsea dù phong độ bấp bênh nhưng vẫn đứng khá lâu ở vị trí thứ 3 ngoại hạng Anh. Hay những trận thắng thua với 3 bàn thắng. Về chi tiết, bộ áo đấu mới này có phần đơn giản hơn mẫu áo của mùa giải 2019 2020. Ngoài màu xanh truyền thống, bộ áo này sẽ có phần cổ và tay áo màu đen cùng với những họa tiết in chìm khá đơn giản.', 120000, 'https://dothethao.net.vn/wp-content/uploads/2020/03/ao-bong-da-chelsea-2020-2021-phien-ban-fan-mau-3-3.jpg', 2, 0, '2020-10-03 18:55:46', '2020-10-03 18:55:46'),
(3, 3, 2, 1, 'ÁO BÓNG ĐÁ TUYỂN ANH EURO 2020 SÂN NHÀ – HÀNG THAILAND', 'Mới đây, bộ áo bóng đá tuyển Anh Euro 2020 sân nhà đã được ra mắt. Áo có cổ tròn và kiểu dáng suông trẻ trung và thoải mái khi vạn động. Chất liệu vải Thailand cao cấp có độ bền cao và khả năng thấm hút rất tuyệt vời.\r\n\r\nMùa giải 2020 đội tuyển Anh sử dụng 2 bộ trang phục truyền thống của mình là: áo trắng quần xanh trên sân nhà và áo đỏ quần trắng trên sân khách. Trước đây, tuyển Anh sử dụng bộ đồ sân khách màu xanh lam và xám. Tuy nhiên 2 màu này đều không được người hâm mộ ưa chuộng bằng màu đỏ như hiện nay. Bộ đồ sân khách đôi khi cũng được tuyển Anh sử dụng trên sân nhà để ra mắt.\r\nVề bộ trang phục sân nhà năm nay của đội tuyển Anh được đánh giá khá thú vị, khi biểu tượng Tam sư màu xanh sáng và nhà tài trợ Nike được được ở chính giữa ngực áo. Màu xanh tối và màu đỏ được sử dụng để trang trí các đường kẻ ở cổ áo và họa tiết zigzag hai bên sườn. Trên bề mặt áo Anh Euro 2020 có các thiết kế chìm để chiếc áo trở nên bắt mắt hơn', 180000, 'https://dothethao.net.vn/wp-content/uploads/2020/05/ao-bong-da-tuyen-anh-euro-2020-san-nha-hang-thailand-3.jpg', NULL, 0, NULL, NULL),
(4, 3, 2, 1, 'ÁO BÓNG ĐÁ TUYỂN ANH EURO 2020 PHIÊN BẢN FAN – THUN LẠNH CAO CẤP', 'Áo bóng đá tuyển Anh Euro 2020 phiên bản Fan đã được ra mắt. Áo có cổ tròn và kiểu dáng suông trẻ trung và thoải mái khi vạn động. Chất liệu vải thun lạnh cao cấp đem lại cảm giác mát mẻ khi mặc và khả năng thấm hút tốt khi chơi thể thao\r\n\r\nMùa giải 2020 đội tuyển Anh sử dụng 2 bộ trang phục truyền thống của mình là: áo trắng quần xanh trên sân nhà và áo đỏ quần trắng trên sân khách. Trước đây, tuyển Anh sử dụng bộ đồ sân khách màu xanh lam và xám. Tuy nhiên 2 màu này đều không được người hâm mộ ưa chuộng bằng màu đỏ như hiện nay. Bộ đồ sân khách đôi khi cũng được tuyển Anh sử dụng trên sân nhà để ra mắt.', 120000, 'https://dothethao.net.vn/wp-content/uploads/2020/02/ao-tuyen-anh-euro-2020-san-khach-5.jpg', 1, 0, '2020-11-01 09:11:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `size_list`
--

CREATE TABLE `size_list` (
  `id_size` int(11) NOT NULL,
  `size_number` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size_list`
--

INSERT INTO `size_list` (`id_size`, `size_number`, `created_at`, `updated_at`) VALUES
(1, 'S', NULL, NULL),
(2, 'M', NULL, NULL),
(3, 'L', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `size_product`
--

CREATE TABLE `size_product` (
  `id_size_product` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `goods_sold` int(11) NOT NULL,
  `inventory` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size_product`
--

INSERT INTO `size_product` (`id_size_product`, `id_size`, `id_product`, `goods_sold`, `inventory`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 12, 10, NULL, NULL),
(2, 2, 1, 11, 4, NULL, NULL),
(3, 3, 1, 34, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id_topic` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id_topic`, `id_user`, `name_topic`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Áo câu lạc bộ', 0, '2020-10-01 22:51:20', '2020-10-01 22:51:20'),
(2, 2, 'Áo đội tuyển quốc gia', 0, '2020-10-01 22:51:20', '2020-10-01 22:51:20'),
(3, 2, 'Áo không logo', 0, '2020-10-01 22:51:20', '2020-10-01 22:51:20'),
(4, 2, 'Giày đá bóng ', 0, '2020-10-01 22:51:20', '2020-10-01 22:51:20'),
(5, 2, 'Quả bóng đá', 0, '2020-10-01 22:51:20', '2020-10-01 22:51:20'),
(6, 2, 'Phụ kiện khác', 0, '2020-10-01 22:51:20', '2020-10-01 22:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `topic_blog`
--

CREATE TABLE `topic_blog` (
  `id_topic_blog` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_topic_blog` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '123456789'),
(2, 'employee@gmail.com', '123456789'),
(7, 'huandvdxz@gmail.com', '432a4ce20e4bd49006141227867b79fb'),
(8, 'huandv@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'h@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(10, 'huan@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_topic_blog` (`id_topic_blog`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order_detail`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id_position`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_topic` (`id_topic`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `size_list`
--
ALTER TABLE `size_list`
  ADD PRIMARY KEY (`id_size`);

--
-- Indexes for table `size_product`
--
ALTER TABLE `size_product`
  ADD PRIMARY KEY (`id_size_product`),
  ADD KEY `id_size` (`id_size`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id_topic`),
  ADD KEY `topic_ibfk_1` (`id_user`);

--
-- Indexes for table `topic_blog`
--
ALTER TABLE `topic_blog`
  ADD PRIMARY KEY (`id_topic_blog`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id_position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `size_list`
--
ALTER TABLE `size_list`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `size_product`
--
ALTER TABLE `size_product`
  MODIFY `id_size_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id_topic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topic_blog`
--
ALTER TABLE `topic_blog`
  MODIFY `id_topic_blog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `blog_ibfk_2` FOREIGN KEY (`id_topic_blog`) REFERENCES `topic_blog` (`id_topic_blog`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `category_ibfk_2` FOREIGN KEY (`id_topic`) REFERENCES `topic` (`id_topic`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`id_topic`) REFERENCES `topic` (`id_topic`),
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `size_product`
--
ALTER TABLE `size_product`
  ADD CONSTRAINT `size_product_ibfk_1` FOREIGN KEY (`id_size`) REFERENCES `size_list` (`id_size`),
  ADD CONSTRAINT `size_product_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `topic_blog`
--
ALTER TABLE `topic_blog`
  ADD CONSTRAINT `topic_blog_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
