-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2017 at 02:00 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `id_parent`, `is_active`, `date_create`, `slug`, `image`) VALUES
(1, 'VANS ', 'Giày Vans từ đẹp đến siêu đẹp, chỉ thế thôi ', NULL, 1, '2017-06-01 11:48:30', '', ''),
(2, 'CONVERSE ', 'Giày Converse siêu đẹp', NULL, 1, '2017-06-01 00:00:00', '', ''),
(3, 'NIKE ', 'Giày Nike', NULL, 1, '2017-06-01 00:00:00', 'giay-the-thao', ''),
(4, 'ADIDAS ', 'Giày Adidas siêu bền', NULL, 1, '2017-06-01 00:00:00', '', ''),
(5, 'BEGINNING ', 'Giày all start siêu để thương', 2, 1, '2017-06-01 00:00:00', '', ''),
(6, 'THROWBACK ', 'Throwback mang rất em chân', 2, 1, '2017-06-01 00:00:00', '', ''),
(7, 'SEQUEL ', 'Sequel siêu cute', 2, 1, '2017-06-01 00:00:00', '', ''),
(8, 'YEEZY ', 'Giày bóng đá', 4, 1, '2017-06-01 00:00:00', '', ''),
(9, 'ULTRA BOOST ', 'Ultra boost siêu sinh điển', 4, 1, '2017-06-01 00:00:00', '', ''),
(10, 'STAN MITH ', 'Stan mith huyền thoại', 4, 1, '2017-06-01 00:00:00', '', ''),
(11, 'HUARACHE ', 'Huarache đẹp lạnh lùng', 3, 1, '2017-06-01 00:00:00', '', ''),
(12, 'AIR FORCE ', 'Air force bước nhẹ như bay', 3, 1, '2017-06-01 00:00:00', '', ''),
(13, 'ZOOM ', 'Zoom max đẹp', 3, 1, '2017-06-01 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fullname` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `state` text COLLATE utf8_unicode_ci,
  `response` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `address`, `email`, `phone`, `title`, `detail`, `is_active`, `date_create`, `state`, `response`) VALUES
(1, 'Hoàng Ngọc Hạnh', 'Thành phồ Hồ Chí Minh', 'hngochanh@mgail.com', '0909999999', 'Yêu cầu hỗ trợ', 'Vui lòng liên hệ lại...', 0, '2017-06-22 00:00:00', 'nonereply', 'Chúng tôi r?t hân h?nh ???c ph?c v? quý kháchChúng tôi r?t hân h?nh ???c ph?c v? quý khách'),
(2, 'Cấn Hoàng hải', 'Thành phồ Hồ Chí Minh', 'canhaonghai@mgail.com', '0909999999', 'Yêu cầu hỗ trợ', 'Vui lòng liên hệ lại...', 0, '2017-06-22 00:00:00', 'reply', 'Chúng tôi r?t hân h?nh ???c ph?c v? quý kháchChúng tôi r?t hân h?nh ???c ph?c v? quý khách'),
(3, 'Nguyễn Quốc Bảo', 'Thành phồ Hồ Chí Minh', 'quocbao@mgail.com', '0909999999', 'Yêu cầu hỗ trợ', 'Vui lòng liên hệ lại...', 0, '2017-06-22 00:00:00', 'new', 'Pháº¡m Ngá»?c Linh Ä?Ã£ response vÃ o ngÃ y 25 thÃ¡ng 10'),
(4, 'Quách Tỉnh', 'Thành phồ Hồ Chí Minh', 'asdadsads@mgail.com', '0909999999', 'Yêu cầu hỗ trợ', 'Vui lòng liên hệ lại...', 0, '2017-06-22 00:00:00', 'deleted', NULL),
(5, 'Quốc Bảo', 'Thành phồ Hồ Chí Minh', 'asdasdasd@mgail.com', '0909999999', 'Yêu cầu hỗ trợ', 'Vui lòng liên hệ lại...', 0, '2017-06-22 00:00:00', 'new', NULL),
(6, 'Thị Nỡ', 'Thành phồ Hồ Chí Minh', 'qweqweqweqwe@mgail.com', '0909999999', 'Yêu cầu hỗ trợ', 'Vui lòng liên hệ lại...', 0, '2017-06-22 00:00:00', 'reply', NULL),
(7, 'Tuấn Tú', 'Thành phồ Hồ Chí Minh', 'wqerwerewr@mgail.com', '0909999999', 'Yêu cầu hỗ trợ', 'Vui lòng liên hệ lại...', 0, '2017-06-22 00:00:00', 'new', NULL),
(8, 'Duy Lương', 'Thành phồ Hồ Chí Minh', 'asfadasd@mgail.com', '0909999999', 'Yêu cầu hỗ trợ', 'Vui lòng liên hệ lại...', 0, '2017-06-22 00:00:00', 'reply', NULL),
(9, 'Duy Lương', 'Thành phồ Hồ Chí Minh', 'af2etrewf@mgail.com', '0909999999', 'Yêu cầu hỗ trợ', 'Vui lòng liên hệ lại...', 0, '2017-06-22 00:00:00', 'deleted', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `short_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `long_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_create` datetime NOT NULL COMMENT 'Thời gian khởi tạo',
  `date_update` datetime NOT NULL COMMENT 'Thời gian cập nhật gần đây nhất',
  `is_savedraft` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `id_user`, `title`, `short_detail`, `long_detail`, `image`, `is_active`, `date_create`, `date_update`, `is_savedraft`, `views`) VALUES
(1, 1, 'Thời trang thể thao gắn liền với cuộc sống', 'Với dây chuyên sản xuất hiện đại bậc asdassasd asdasasd', 'Với dây chuyên sản xuất hiện đại bậc nhất được nhập khẩu từ CHLB Đức, quy trình sản xuất tuân thủ nghiêm ngặt theo tiêu chuẩn Quốc tế ISO 9001 : 2008. DONEX luôn cam kết sẽ mang đến cho Quý khách hàng những sản phẩm tốt nhất, chất lượng tốt nhất, và luôn cố gắng nỗ lực hết mình vì sứ mệnh phục vụ khách hàng.', '1.png', 1, '2017-06-02 11:49:12', '2017-06-01 11:49:11', 0, 1200),
(2, 1, 'Thời trang thể thao gắn liền với cuộc sống', 'Với dây chuyên sản xuất hiện đại bậc asdassasd asdasasd', 'Với dây chuyên sản xuất hiện đại bậc nhất được nhập khẩu từ CHLB Đức, quy trình sản xuất tuân thủ nghiêm ngặt theo tiêu chuẩn Quốc tế ISO 9001 : 2008. DONEX luôn cam kết sẽ mang đến cho Quý khách hàng những sản phẩm tốt nhất, chất lượng tốt nhất, và luôn cố gắng nỗ lực hết mình vì sứ mệnh phục vụ khách hàng.', '2.png', 1, '2017-06-01 11:49:14', '2017-06-01 11:49:11', 0, 1200),
(3, 1, 'Thời trang thể thao gắn liền với cuộc sống', 'Với dây chuyên sản xuất hiện đại bậc asdassasd asdasasd', 'Với dây chuyên sản xuất hiện đại bậc nhất được nhập khẩu từ CHLB Đức, quy trình sản xuất tuân thủ nghiêm ngặt theo tiêu chuẩn Quốc tế ISO 9001 : 2008. DONEX luôn cam kết sẽ mang đến cho Quý khách hàng những sản phẩm tốt nhất, chất lượng tốt nhất, và luôn cố gắng nỗ lực hết mình vì sứ mệnh phục vụ khách hàng.', '3.png', 1, '2017-06-03 11:49:11', '2017-06-01 11:49:11', 0, 1200),
(4, 1, 'Thời trang thể thao gắn liền với cuộc sống', 'Với dây chuyên sản xuất hiện đại bậc asdassasd asdasasd', 'Với dây chuyên sản xuất hiện đại bậc nhất được nhập khẩu từ CHLB Đức, quy trình sản xuất tuân thủ nghiêm ngặt theo tiêu chuẩn Quốc tế ISO 9001 : 2008. DONEX luôn cam kết sẽ mang đến cho Quý khách hàng những sản phẩm tốt nhất, chất lượng tốt nhất, và luôn cố gắng nỗ lực hết mình vì sứ mệnh phục vụ khách hàng.', '4.png', 1, '2017-06-05 11:49:15', '2017-06-01 11:49:11', 0, 1100),
(5, 1, 'Thời trang thể thao gắn liền với cuộc sống', 'Với dây chuyên sản xuất hiện đại bậc asdassasd asdasasd', 'Với dây chuyên sản xuất hiện đại bậc nhất được nhập khẩu từ CHLB Đức, quy trình sản xuất tuân thủ nghiêm ngặt theo tiêu chuẩn Quốc tế ISO 9001 : 2008. DONEX luôn cam kết sẽ mang đến cho Quý khách hàng những sản phẩm tốt nhất, chất lượng tốt nhất, và luôn cố gắng nỗ lực hết mình vì sứ mệnh phục vụ khách hàng.', '5.png', 1, '2017-06-08 11:49:09', '2017-06-01 11:49:11', 0, 500),
(6, 1, 'Thời trang thể thao gắn liền với cuộc sống', 'Với dây chuyên sản xuất hiện đại bậc asdassasd asdasasd', 'Với dây chuyên sản xuất hiện đại bậc nhất được nhập khẩu từ CHLB Đức, quy trình sản xuất tuân thủ nghiêm ngặt theo tiêu chuẩn Quốc tế ISO 9001 : 2008. DONEX luôn cam kết sẽ mang đến cho Quý khách hàng những sản phẩm tốt nhất, chất lượng tốt nhất, và luôn cố gắng nỗ lực hết mình vì sứ mệnh phục vụ khách hàng.', '6.png', 1, '2017-06-10 11:49:11', '2017-06-01 11:49:11', 0, 12000),
(7, 1, 'Thời trang thể thao gắn liền với cuộc sống', 'Với dây chuyên sản xuất hiện đại bậc asdassasd asdasasd', 'Với dây chuyên sản xuất hiện đại bậc nhất được nhập khẩu từ CHLB Đức, quy trình sản xuất tuân thủ nghiêm ngặt theo tiêu chuẩn Quốc tế ISO 9001 : 2008. DONEX luôn cam kết sẽ mang đến cho Quý khách hàng những sản phẩm tốt nhất, chất lượng tốt nhất, và luôn cố gắng nỗ lực hết mình vì sứ mệnh phục vụ khách hàng.', '7.png', 1, '2017-06-11 11:49:11', '2017-06-01 11:49:11', 0, 500),
(8, 1, 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '8.png', 1, '2017-06-03 00:50:13', '2017-06-03 00:50:13', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `fullname` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `ship_address` text COLLATE utf8_unicode_ci NOT NULL,
  `ship_name` text COLLATE utf8_unicode_ci NOT NULL,
  `ship_phone` text COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `total_amount` double NOT NULL,
  `total_amount_real` double NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `fullname`, `address`, `phone`, `email`, `ship_address`, `ship_name`, `ship_phone`, `date_create`, `date_delivery`, `note`, `total_amount`, `total_amount_real`, `is_active`) VALUES
(1, 'Cao Cau', 'ádadd adsdasda ádasd ádasd', '0351213843', '132463513213', 'ádadd adsdasda ádasd ádasd', 'Cao Cau', '0351213843', '2017-06-04 20:15:06', NULL, NULL, 8052000, 8857200, 0),
(2, 'Lam Xung', 'adasdasd adad asdasda asdsd', '036132468', 'asdsd2@sdasd', 'adasdasd adad asdasda asdsd', 'Lam Xung', '036132468', '2017-06-04 20:27:02', NULL, NULL, 2444000, 2688400, 0),
(3, 'Duong Chi', '32463513463 131384321. 3.431324313.46 .43234532.5', '46137651', '3432134632', '32463513463 131384321. 3.431324313.46 .43234532.5', 'Duong Chi', '46137651', '2017-06-04 20:33:59', NULL, NULL, 1536000, 1689600, 0),
(4, 'Quách tỉnh', 'asds sadsd asasd asdas', 'asdasd', 'asdas', 'asds sadsd asasd asdas', 'asdasd', 'asdasd', '2017-06-04 20:36:10', NULL, NULL, 82000, 90200, 0),
(5, 'Hoàng Dung', 'asd asdasd asdas asdasd', 'asdasd', 'asdas', 'asd asdasd asdas asdasd', 'dadasd', 'asdasd', '2017-06-04 20:38:56', NULL, NULL, 232000, 255200, 0),
(6, 'Tiều Cái', 'sấd ádasd ádas ádasd', 'ádasd', 'ádasd', 'sấd ádasd ádas ádasd', 'ádasd', 'ádasd', '2017-06-04 20:47:05', NULL, NULL, 0, 0, 0),
(7, 'Ga', '435468132 351303513 3.431.513.13.5 354131384631.35', '13.21351.2163', '321.21035413', '435468132 351303513 3.431.513.13.5 354131384631.35', 'Ga', '13.21351.2163', '2017-06-04 20:50:59', NULL, NULL, 4552000, 5007200, 0),
(8, 'Sửu Nhi', 'sds sadsa ádas ádas', 'ádsa', 'ádas', 'sds sadsa ádas ádas', 'sdasd', 'ádsa', '2017-06-04 20:56:26', NULL, NULL, 3636000, 3999600, 0),
(9, 'ádasd', 'âsd ádasd asd áddas', 'áddas', 'sád', 'âsd ádasd asd áddas', 'ádasd', 'áddas', '2017-06-04 21:04:08', NULL, NULL, 3598000, 3957800, 0),
(10, 'ádas', 'ádas sad áds âsd', 'sấd', 'âsd', 'ádas sad áds âsd', 'ádas', 'sấd', '2017-06-04 21:09:08', NULL, NULL, 205000, 225500, 0),
(11, 'Chu bá thông', '113 CSC? Nh?n H?nh An Nh?n Bình ??nh', '0123456789', 'abc@gmail.com', '113 CSC? Nh?n H?nh An Nh?n Bình ??nh', 'Danh Nguyen', '0123456789', '2017-06-07 14:18:32', NULL, NULL, 24000, 26400, 0),
(12, 'Độc cô cầu bại', '132 ?ông Hòa T? HCM', '0123456789', 'acb@gmail.com', '132 ?ông Hòa T? HCM', 'Danh Nguyen', '0123456789', '2017-06-09 10:54:47', NULL, NULL, 20000, 22000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `price_promotion` datetime DEFAULT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_order`, `id_product`, `quantity`, `price`, `price_promotion`, `total`) VALUES
(1, 1, 6, 2000, 4000, NULL, 8000000),
(2, 1, 4, 13, 4000, NULL, 52000),
(3, 2, 3, 600, 4000, NULL, 2400000),
(4, 2, 4, 5, 4000, NULL, 20000),
(5, 2, 6, 6, 4000, NULL, 24000),
(6, 3, 4, 3, 4000, NULL, 12000),
(7, 3, 7, 300, 5000, NULL, 1500000),
(8, 3, 3, 6, 4000, NULL, 24000),
(9, 4, 3, 8, 4000, NULL, 32000),
(10, 4, 4, 5, 4000, NULL, 20000),
(11, 4, 7, 6, 5000, NULL, 30000),
(12, 5, 3, 8, 4000, NULL, 32000),
(13, 5, 9, 50, 4000, NULL, 200000),
(14, 7, 2, 8, 4000, NULL, 32000),
(15, 7, 7, 900, 5000, NULL, 4500000),
(16, 7, 6, 5, 4000, NULL, 20000),
(17, 8, 9, 900, 4000, NULL, 3600000),
(18, 8, 3, 6, 4000, NULL, 24000),
(19, 8, 4, 3, 4000, NULL, 12000),
(20, 9, 4, 90, 4000, NULL, 360000),
(21, 9, 6, 800, 4000, NULL, 3200000),
(22, 9, 1, 6, 5000, NULL, 30000),
(23, 9, 11, 2, 4000, NULL, 8000),
(24, 10, 5, 40, 4000, NULL, 160000),
(25, 10, 4, 5, 4000, NULL, 20000),
(26, 10, 7, 5, 5000, NULL, 25000),
(27, 11, 2, 6, 4000, NULL, 24000),
(28, 12, 11, 1, 4000, NULL, 4000),
(29, 12, 3, 4, 4000, NULL, 16000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `price` double NOT NULL,
  `price_promotion` double DEFAULT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` double DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_savedraft` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL,
  `purchase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `code`, `id_category`, `id_account`, `price`, `price_promotion`, `images`, `title`, `alias`, `description`, `quantity`, `date_create`, `date_update`, `is_active`, `is_savedraft`, `views`, `purchase`) VALUES
(40, '1', 13, 2, 500000, 480000, '40.png', 'NIKE AIR ZOOM PEGASUS 33 iD', 'NIKE AIR ZOOM PEGASUS 33 iD', 'NIKE AIR ZOOM PEGASUS 33 iD', 0, '2017-06-02 22:31:59', '2017-06-02 22:31:59', 1, 0, 0, 0),
(41, '2', 13, 2, 500000, 500000, '41.png', 'NIKECOURT ZOOM VAPOR 9.5 TOUR iD ', 'NIKECOURT ZOOM VAPOR 9.5 TOUR iD ', 'NIKECOURT ZOOM VAPOR 9.5 TOUR iD ', 0, '2017-06-02 22:34:22', '2017-06-02 22:34:22', 1, 0, 0, 0),
(42, '3', 8, 2, 750000, 860000, '42.png', 'GIÀY YEEZY BOOST 350 V2 ALL WHITE', 'GIÀY YEEZY BOOST 350 V2 ALL WHITE', 'GIÀY YEEZY BOOST 350 V2 ALL WHITE', 0, '2017-06-02 22:36:59', '2017-06-02 22:36:59', 1, 0, 0, 0),
(43, '4', 8, 2, 650000, 500000, '43.png', 'YEEZY Boost 350 \"PINK\"', 'YEEZY Boost 350 \"PINK\"', 'YEEZY Boost 350 \"PINK\"', 0, '2017-06-02 22:37:57', '2017-06-02 22:37:57', 1, 0, 0, 0),
(44, '5', 8, 2, 655000, 485000, '44.png', 'adidas Yeezy 350 Boost V2 Red Stripe', 'adidas Yeezy 350 Boost V2 Red Stripe', 'adidas Yeezy 350 Boost V2 Red Stripe', 0, '2017-06-02 22:39:13', '2017-06-02 22:39:13', 1, 0, 0, 0),
(45, 'aa', 8, 2, 456000, 456000, '45.png', 'GIÀY Yeezy 350 Triple Black F1', 'GIÀY Yeezy 350 Triple Black F1', 'GIÀY Yeezy 350 Triple Black F1', 0, '2017-06-02 22:40:10', '2017-06-02 22:40:10', 1, 0, 0, 0),
(46, '123', 8, 2, 123456, 123132, '46.png', 'Yeezy Boost 350 V2 Black', 'Yeezy Boost 350 V2 Black', 'Yeezy Boost 350 V2 Black', 0, '2017-06-02 22:42:21', '2017-06-02 22:42:21', 1, 0, 0, 0),
(47, '9', 8, 2, 654321, 123456, '47.png', 'Yeezy Boost 350 V2 Grey Orange', 'Yeezy Boost 350 V2 Grey Orange', 'Yeezy Boost 350 V2 Grey Orange', 0, '2017-06-02 22:43:19', '2017-06-02 22:43:19', 1, 0, 0, 0),
(48, '11', 9, 2, 234567, 234567, '48.png', 'GIÀY ULTRA BOOST ?Ô', 'GIÀY ULTRA BOOST ?Ô', 'GIÀY ULTRA BOOST ?Ô', 0, '2017-06-02 22:44:43', '2017-06-02 22:44:43', 1, 0, 0, 0),
(49, '12', 9, 2, 800000, 700000, '49.png', 'GIÀY ULTRA BOOST ?EN GÓT ?EN', 'GIÀY ULTRA BOOST ?EN GÓT ?EN', 'GIÀY ULTRA BOOST ?EN GÓT ?EN', 0, '2017-06-02 22:45:50', '2017-06-02 22:45:50', 1, 0, 0, 0),
(50, '14', 9, 2, 600000, 600000, '50.png', 'GIÀY ULTRA BOOST XÁM', 'GIÀY ULTRA BOOST XÁM', 'GIÀY ULTRA BOOST XÁM', 0, '2017-06-02 22:46:48', '2017-06-02 22:46:48', 1, 0, 0, 0),
(51, '16', 6, 2, 456789, 123456, '51.png', 'Chuck Taylor All Star 70', 'Chuck Taylor All Star 70', 'Chuck Taylor All Star 70', 0, '2017-06-02 22:50:28', '2017-06-02 22:50:28', 1, 0, 0, 0),
(52, '19', 6, 2, 467540, 123456, '52.png', 'Chuck Taylor All Star 70', 'Chuck Taylor All Star 70', 'Chuck Taylor All Star 70', 0, '2017-06-02 22:52:31', '2017-06-02 22:52:31', 1, 0, 0, 0),
(53, '22', 10, 2, 456, 123, '53.png', 'Giày Stan Smith All Black', 'Giày Stan Smith All Black', 'Giày Stan Smith All Black', 0, '2017-06-02 22:53:31', '2017-06-02 22:53:31', 1, 0, 0, 0),
(54, '21', 10, 2, 465789, 123456, '54.png', 'Giày Stan Smith Green/White SF', 'Giày Stan Smith Green/White SF', 'Giày Stan Smith Green/White SF', 0, '2017-06-02 22:54:16', '2017-06-02 22:54:16', 1, 0, 0, 0),
(55, '23', 10, 2, 650000, 650000, '55.png', 'Giày Stan Smith Baby Pink', 'Giày Stan Smith Baby Pink', 'Giày Stan Smith Baby Pink', 0, '2017-06-02 22:55:46', '2017-06-02 22:55:46', 1, 0, 0, 0),
(57, '321', 7, 2, 789789, 789789, '57.png', 'Chuck Taylor All Star II', 'Chuck Taylor All Star II', 'Chuck Taylor All Star II', 0, '2017-06-02 23:10:50', '2017-06-02 23:10:50', 1, 0, 0, 0),
(58, '44', 7, 2, 456654, 456654, '58.png', 'Chuck Taylor All Star II', 'Chuck Taylor All Star II', 'Chuck Taylor All Star II', 0, '2017-06-02 23:12:06', '2017-06-02 23:12:06', 1, 0, 0, 0),
(59, '40', 11, 2, 650000, 500000, '59.png', 'HUARACHE ALL RED', 'HUARACHE ALL RED', 'HUARACHE ALL RED', 0, '2017-06-02 23:13:01', '2017-06-02 23:13:01', 1, 0, 0, 0),
(60, '88', 11, 2, 540000, 500000, '60.png', 'HUARACHE ALOHA SF', 'HUARACHE ALOHA SF', 'HUARACHE ALOHA SF', 0, '2017-06-02 23:13:45', '2017-06-02 23:13:45', 1, 0, 0, 0),
(61, '70', 11, 2, 450000, 400000, '61.png', 'HUARACHE BLACK WHITE SF', 'HUARACHE BLACK WHITE SF', 'HUARACHE BLACK WHITE SF', 0, '2017-06-02 23:15:14', '2017-06-02 23:15:14', 1, 0, 0, 0),
(62, '1a', 12, 2, 123131, 123311, '62.png', 'Giày Air Force 1 SF', 'Giày Air Force 1 SF', 'Giày Air Force 1 SF', 0, '2017-06-02 23:16:07', '2017-06-02 23:16:07', 1, 0, 0, 0),
(63, '2j', 12, 2, 222222, 222222, '63.png', 'Giày Air Force 1 F1', 'Giày Air Force 1 F1', 'Giày Air Force 1 F1', 0, '2017-06-02 23:16:55', '2017-06-02 23:16:55', 1, 0, 0, 0),
(64, '121', 12, 2, 123456, 123456, '64.png', 'Giày Air Force 1 F1', 'Giày Air Force 1 F1', 'Giày Air Force 1 F1', 0, '2017-06-03 00:07:45', '2017-06-03 00:07:45', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `request_contact`
--

CREATE TABLE `request_contact` (
  `id` int(11) NOT NULL,
  `fullname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `is_repsonse` bit(1) NOT NULL,
  `date_create` datetime NOT NULL COMMENT 'Thời gian khởi tạo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `request_contact`
--

INSERT INTO `request_contact` (`id`, `fullname`, `email`, `content`, `is_repsonse`, `date_create`) VALUES
(1, 'sadas', 'ádasd', 'âsđ', b'0', '2017-06-04 22:12:01'),
(2, 'ádasd', 'sadasasd', 'ádasdasd', b'0', '2017-06-04 22:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `fullname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `id_role` bit(1) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `email`, `id_role`, `is_active`) VALUES
(1, 'hngochanh', '1', 'test', 'hngochanh@abc.com', b'1', 1),
(3, 'canhoanghai', 'aaa', 'tao', 'aaa', b'1', 0),
(4, 'baonguyen', '123456', 'Bảo Nguyễn', 'baonguyen@gmail.com', b'1', 1),
(5, 'duongqua', '123456', 'Dương Quá', 'duongqua@gmail.com', b'1', 1),
(6, 'quachtinh', '123456', 'Quách Tỉnh', 'quachtinh@gmail.com', b'1', 1),
(7, 'hoangduocsu', '123456', 'Hoàng Dược Sư', 'hoangduocsu@gmail.com', b'1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `request_contact`
--
ALTER TABLE `request_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `request_contact`
--
ALTER TABLE `request_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
