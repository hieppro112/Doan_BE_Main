-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 21, 2024 lúc 03:14 AM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhangdienmay1`
--
CREATE DATABASE IF NOT EXISTS `banhangdienmay1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `banhangdienmay1`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Tivi'),
(2, 'Tủ lạnh'),
(3, 'Máy Giặc'),
(4, 'Máy lạnh'),
(5, 'Điện Thoại');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

DROP TABLE IF EXISTS `tbl_sanpham`;
CREATE TABLE IF NOT EXISTS `tbl_sanpham` (
  `sanpham_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_Mota` varchar(255) NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int NOT NULL,
  `sanpham_hot` int NOT NULL,
  `sanpham_soluong` int NOT NULL,
  `sanpham_image` varchar(100) NOT NULL,
  PRIMARY KEY (`sanpham_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_Mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(1, 5, 'Điện Thoại Sam Sung j7 prime (3/64gb)', '', '3.000.000', '2.999.999', 1, 1, 100, 'm2.jpg'),
(2, 5, 'Điện Thoại Nokia prime (3/64gb)', '', '1.000.000', '999.999', 1, 0, 100, 'mk2.jpg'),
(3, 5, 'Điện Thoại Iphone 6s(3/64gb)', '', '4.000.000', '2.000.000', 1, 1, 100, 'mk3.jpg'),
(4, 4, 'Máy lạnh panasonic ', '', '7.000.000', '4.000.000', 1, 1, 100, 'maylanh2.jpg'),
(5, 4, 'Máy lạnh Carser', '', '10.000.000', '7.000.000', 1, 0, 100, 'maylanh1.jpg'),
(6, 3, 'Máy lạnh Daikin Inverter', 'Loại máy:\r\n1 chiều (chỉ làm lạnh)\r\nInverter:\r\nCó Inverter\r\nCông suất làm lạnh:\r\n1 HP - 9.200 BTU\r\nPhạm vi làm lạnh hiệu quả:\r\nDưới 15m² (từ 30 đến 45m³)\r\nLưu lượng gió lạnh (m³/phút):\r\n9.9/8.4/7.1/4.8\r\nĐộ ồn trung bình:\r\nDàn lạnh: 19/36 dB - Dàn nóng: 40/', '6.000.000', '4.000.000', 1, 1, 100, 'ml4.jpg'),
(7, 3, 'Tủ lạnh Toshiba Inverter', '', '8.000.000', '4.000.000', 1, 1, 100, 'tl2.jpg'),
(8, 2, 'Tủ lạnh Vsmart', '', '10.000.000', '9.000.000', 1, 1, 100, 'tl1.jpg'),
(9, 2, 'Tủ lạnh Carser', '', '10.000.000', '7.000.000', 1, 0, 100, 'tl3.jpg'),
(10, 1, 'Tivi LG 100inch', '', '16.000.000', '10.000.000', 1, 1, 100, 'm4.jpg'),
(11, 1, 'Tivi Samsung ', '', '19.000.000', '15.000.000', 1, 1, 100, 'tv2.jpg'),
(12, 1, 'Smart Tivi Samsung 4K Crystal UHD', 'Smart Tivi\r\nKích cỡ màn hình:55 inch\r\nĐộ phân giải:4K (Ultra HD)\r\nLoại màn hình:\r\nĐèn nền: LED viền (Edge LED), Tấm nền: VA LCD\r\nHệ điều hành:Tizen™\r\nChất liệu chân đế:Nhựa\r\nChất liệu viền tivi:Nhựa\r\nNơi sản xuất:Việt Nam\r\nNăm ra mắt:2022', '10000000', '9000000', 1, 0, 12, 'tv3.jpg'),
(13, 5, 'Điện thoại Xiaomi Redmi 13 6GB/128GB', 'Cấu hình & Bộ nhớ\r\nHệ điều hành:Android 14\r\nChip xử lý (CPU):MediaTek Helio G91 Ultra 8 nhân\r\nTốc độ CPU:2 GHz\r\nChip đồ họa (GPU):Mali-G52 MC2\r\nRAM:6 GB\r\nDung lượng lưu trữ:128 GB\r\nDung lượng còn lại (khả dụng) khoảng:113 GB', '4000000', '3500000', 1, 0, 15, 'dt1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `slider_id` int NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(100) NOT NULL,
  `slider_active` int NOT NULL DEFAULT '1',
  `slider_caption` text NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_active`, `slider_caption`) VALUES
(1, 'b2.jpg', 1, 'Slider Khuyến Mãi'),
(2, 'b3.jpg', 0, 'Slider sale 50%');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
