-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 11, 2020 at 02:38 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truongtoi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `title`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'DNT', 'dangngoctan2012@gmail.com', NULL, 'Super Admin', '$2y$10$1PZTwIuBzWpdGaZh7EHyUOxBgtSZN4tPTebxvgYAaO91vD.Oh4Ll2', NULL, '2020-07-09 09:16:04', '2020-07-09 09:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `created_at`, `updated_at`) VALUES
(5, NULL, 'Nhóm ngành', '2020-07-09 11:13:30', '2020-07-09 11:13:30'),
(6, 5, 'Khoa học - Kỹ thuật', '2020-07-09 11:13:39', '2020-07-09 11:13:39'),
(7, 5, 'Xã hội - Nhân văn', '2020-07-09 11:13:56', '2020-07-09 11:13:56'),
(8, NULL, 'Tin tức', '2020-07-10 05:30:59', '2020-07-10 05:30:59'),
(9, 8, 'Tuyển sinh', '2020-07-10 05:31:08', '2020-07-10 05:31:08'),
(11, 8, 'Tin khác', '2020-07-10 05:31:34', '2020-07-10 08:23:16'),
(12, NULL, 'Thảo luận', '2020-07-10 08:33:15', '2020-07-10 08:33:15'),
(13, 5, 'Kinh tế - Quản lý', '2020-07-10 08:36:59', '2020-07-10 08:36:59'),
(14, 5, 'Chính trị - Quân sự', '2020-07-10 08:37:07', '2020-07-10 08:37:07'),
(15, 5, 'Năng khiếu', '2020-07-10 08:37:14', '2020-07-10 08:37:14'),
(16, 5, 'Y tế - Sức khoẻ', '2020-07-10 08:37:23', '2020-07-10 08:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thành phố Hồ Chí Minh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `name`) VALUES
(1, 'Khoa học - Kỹ thuật'),
(2, 'Xã hội - Nhân văn'),
(3, 'Kinh tế - Quản lý'),
(4, 'Chính trị - Quân sự'),
(5, 'Năng khiếu'),
(6, 'Y học - Sức khoẻ');

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
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_06_17_161500_create_posts_table', 1),
(25, '2020_06_17_161500_create_universities_table', 1),
(26, '2020_06_19_041612_create_admins_table', 1),
(27, '2020_06_25_104459_create_categories_table', 1),
(28, '2020_06_25_104459_create_majors_table', 1),
(29, '2020_06_25_110318_add_category_id_to_posts', 1),
(30, '2020_06_25_110318_add_majors_id_to_universities', 1),
(31, '2020_07_08_044156_create_comments_table', 1),
(32, '2020_07_08_094321_create_ratings_table', 1),
(33, '2020_07_08_095941_create_location_table', 1),
(34, '2020_07_08_100756_add_location_id_to_universities', 1),
(35, '2014_10_12_000000_create_users_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Nameless',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `feature_img`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'ĐẠI HỌC BÁCH KHOA - ĐẠI HỌC QUỐC GIA TP.HCM', '<p>Đại học BK l&agrave; một trường đại học g&igrave; g&igrave; đ&oacute; nhưng m&agrave; n&oacute; l&agrave; c&aacute;i g&igrave; đ&oacute;.&nbsp;</p>', 'https://petrotimes.vn/stores/news_dataimages/thienthanh/102018/03/10/dhqg-tphcm-trien-khai-mo-hinh-tu-chu-dai-hoc-theo-hai-giai-doan.jpg', '2020-07-10 05:45:19', '2020-07-10 06:23:24', 9),
(2, 'ĐH Công nghệ Thông tin (ĐH Quốc gia TP.HCM) tuyển sinh 2020: Điểm sàn dự kiến 17 điểm', '<p><strong>ĐH C&ocirc;ng nghệ Th&ocirc;ng tin (ĐH Quốc gia TP.HCM) vừa c&ocirc;ng bố th&ocirc;ng tin tuyển sinh 2020 dự kiến với nhiều điểm đ&aacute;ng ch&uacute; &yacute;.&nbsp;</strong></p>\r\n<h2>I, Phương thức tuyển sinh 2020</h2>\r\n<p><strong>1, Phương thức 1: Tuyển thẳng v&agrave; ưu ti&ecirc;n x&eacute;t tuyển theo quy định của Bộ GD&amp;ĐT (tối đa 5% chỉ ti&ecirc;u)</strong></p>\r\n<p>Th&iacute; sinh nộp hồ sơ đăng k&yacute; tại Sở GD&amp;ĐT. Thời gian theo kế hoạch tuyển sinh của Bộ GD&amp;ĐT.</p>\r\n<p><strong>2, Phương thức 2: Ưu ti&ecirc;n x&eacute;t tuyển theo quy định của ĐHQG-HCM (tối đa 18% chỉ ti&ecirc;u).</strong></p>\r\n<p><strong>- Đối tượng:&nbsp;</strong>Học sinh của c&aacute;c trường chuy&ecirc;n, năng khiếu của c&aacute;c trường đại học thuộc c&aacute;c tỉnh, th&agrave;nh tr&ecirc;n to&agrave;n quốc; học sinh của c&aacute;c trường phổ th&ocirc;ng thuộc nh&oacute;m 100 trường c&oacute; điểm trung b&igrave;nh thi THPT cao nhất cả nước trong c&aacute;c năm 2017, 2018, 2019 (theo danh s&aacute;ch do ĐHQG-HCM c&ocirc;ng bố) thỏa c&aacute;c điều kiện:</p>\r\n<p>C&oacute; hạnh kiểm tốt trong 3 năm lớp 10, lớp 11 v&agrave; lớp 12 v&agrave; đ&aacute;p ứng một trong c&aacute;c điều kiện sau:</p>\r\n<ul style=\"list-style-type: none;\">\r\n<li>Học sinh của c&aacute;c trường chuy&ecirc;n, năng khiếu của c&aacute;c trường đại học thuộc c&aacute;c tỉnh, th&agrave;nh tr&ecirc;n to&agrave;n quốc đạt tối thiểu 2 năm học sinh giỏi trong c&aacute;c năm học ở bậc THPT (lớp 10, 11, 12).</li>\r\n<li>Học sinh của c&aacute;c trường phổ th&ocirc;ng thuộc nh&oacute;m 100 trường c&oacute; điểm trung b&igrave;nh thi THPT cao nhất cả nước trong c&aacute;c năm 2017, 2018, 2019 (theo danh s&aacute;ch do ĐHQG-HCM c&ocirc;ng bố) đạt danh hiệu học sinh giỏi 3 năm ở bậc THPT (lớp 10, 11, 12).</li>\r\n<li>L&agrave; th&agrave;nh vi&ecirc;n đội tuyển của trường hoặc tỉnh th&agrave;nh tham dự kỳ thi học sinh giỏi quốc gia.</li>\r\n</ul>\r\n<p><strong>- Đăng k&yacute;:</strong>&nbsp;Th&iacute; sinh đăng k&yacute; trực tuyến tại Cổng đăng k&yacute; x&eacute;t tuyển của ĐHQG-HCM, đồng thời nộp hồ sơ đăng k&yacute; tại Trường Đại học C&ocirc;ng nghệ</p>\r\n<p><strong>- Thời gian:</strong>&nbsp;Theo kế hoạch tuyển sinh của ĐHQG-HCM (dự kiến th&aacute;ng 7-8/2020).</p>\r\n<p><strong>3, Phương thức 3: X&eacute;t tuyển dựa tr&ecirc;n kết quả kỳ thi đ&aacute;nh gi&aacute; năng lực do ĐHQG-HCM tổ chức năm 2020 (tối đa 50% chỉ ti&ecirc;u)</strong></p>\r\n<p><strong>4, Phương thức 4: X&eacute;t tuyển dựa tr&ecirc;n kết quả kỳ thi tốt nghiệp THPT năm 2020 (tối thiểu 25% chỉ ti&ecirc;u).</strong></p>\r\n<p>- Ngưỡng đảm bảo chất lượng đầu v&agrave;o (điểm s&agrave;n): Dự kiến 17 điểm cho tất cả c&aacute;c ng&agrave;nh v&agrave; tổ hợp x&eacute;t tuyển.</p>\r\n<p><strong>5, Phương thức 5: X&eacute;t tuyển dựa tr&ecirc;n kết quả của c&aacute;c kỳ thi quốc tế uy t&iacute;n (tối đa 2% chỉ ti&ecirc;u)</strong></p>\r\n<p><strong>- Đối tượng:</strong></p>\r\n<ul style=\"list-style-type: none;\">\r\n<li>Nh&oacute;m đối tượng 1 (x&eacute;t tuyển v&agrave;o tất cả c&aacute;c ng&agrave;nh): Th&iacute; sinh người Việt Nam tốt nghiệp THPT Việt Nam hoặc nước ngo&agrave;i</li>\r\n<li>Nh&oacute;m đối tượng 2 (chỉ x&eacute;t tuyển v&agrave;o chương tr&igrave;nh ti&ecirc;n tiến ng&agrave;nh Hệ thống Th&ocirc;ng tin - học bằng tiếng Anh): Th&iacute; sinh người nước ngo&agrave;i tốt nghiệp THPT nước ngo&agrave;i.</li>\r\n</ul>\r\n<p><strong>- Điều kiện chung:</strong></p>\r\n<ul style=\"list-style-type: none;\">\r\n<li>C&oacute; hạnh kiểm tốt trong c&aacute;c năm học ở THPT.</li>\r\n<li>C&oacute; chứng chỉ quốc tế thỏa một trong những điều kiện sau</li>\r\n<li>Chứng chỉ SAT c&oacute; điểm từ 510 trở l&ecirc;n cho mỗi phần thi.</li>\r\n<li>Chứng chỉ ACT c&oacute; điểm trung b&igrave;nh từ 21 trở l&ecirc;n.</li>\r\n<li>AS/A level c&oacute; điểm từ C-A cho mỗi m&ocirc;n thi.</li>\r\n<li>T&uacute; t&agrave;i quốc tế (IB) c&oacute; tổng điểm từ 21 trở l&ecirc;n.</li>\r\n</ul>\r\n<p><strong>- Đăng k&yacute;:&nbsp;</strong>Th&iacute; sinh nộp hồ sơ trực tiếp tại Trường ĐH.CNTT (theo th&ocirc;ng b&aacute;o tuyển sinh của Trường ĐH.CNTT).</p>\r\n<p><strong>- Thời gian:&nbsp;</strong>Dự kiến th&aacute;ng 6-8/2020.</p>\r\n<p><strong>6, Phương thức 6: X&eacute;t tuyển theo ti&ecirc;u ch&iacute; ri&ecirc;ng của chương tr&igrave;nh li&ecirc;n kết với ĐH Birmingham City &ndash; Anh Quốc, do ĐH Birmingham City cấp bằng (kh&ocirc;ng t&iacute;nh v&agrave;o tổng chỉ ti&ecirc;u)</strong></p>\r\n<p>&bull; Ng&agrave;nh Khoa học m&aacute;y t&iacute;nh: 60 chỉ ti&ecirc;u.<br />&bull; Ng&agrave;nh Mạng m&aacute;y t&iacute;nh v&agrave; an to&agrave;n th&ocirc;ng tin: 60 chỉ ti&ecirc;u.</p>\r\n<p>Lưu &yacute;: chỉ ti&ecirc;u của từng phương thức c&oacute; thể được điều chỉnh t&ugrave;y theo t&igrave;nh h&igrave;nh tuyển sinh thực tế.</p>\r\n<h2>II, C&aacute;c ng&agrave;nh tuyển sinh 2020</h2>\r\n<p><img src=\"https://tuyensinhso.vn/images/files/tuyensinhso.vn/dh%20cong%20nghe%20thong%20tin%20(dh%20quoc%20gia%20tphcm)%20tuyen%20sinh%202020%20(1).jpg\" alt=\"\" width=\"660\" height=\"1064\" /></p>\r\n<p><img src=\"https://tuyensinhso.vn/images/files/tuyensinhso.vn/dh%20cong%20nghe%20thong%20tin%20(dh%20quoc%20gia%20tphcm)%20tuyen%20sinh%202020%20(2).jpg\" alt=\"\" width=\"664\" height=\"413\" /></p>', 'https://www.uit.edu.vn/sites/vi/files/uploads/images/thumbs/202003/89062519_2773455316080324_7932830829372243968_o.png', '2020-07-10 06:47:05', '2020-07-10 06:47:05', 9),
(3, 'ĐẠI HỌC BÁCH KHOA - ĐẠI HỌC QUỐC GIA TP.HCM', '<p>fsfdsfds</p>', 'https://petrotimes.vn/stores/news_dataimages/thienthanh/102018/03/10/dhqg-tphcm-trien-khai-mo-hinh-tu-chu-dai-hoc-theo-hai-giai-doan.jpg', '2020-07-10 08:20:40', '2020-07-10 08:20:40', 11),
(4, 'Công nghệ thông tin là gì? Các chuyên ngành của công nghệ thông ti', '<p dir=\"ltr\"><strong>C&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;l&agrave; một trong những ng&agrave;nh rất ph&aacute;t triển hiện nay. L&agrave; xu hướng ph&aacute;t triển của tương lai. Với nhu cầu nh&acirc;n lực ng&agrave;y một tăng l&ecirc;n, c&oacute; nhiều cơ hội khi ra trường n&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin thu h&uacute;t kh&ocirc;ng &iacute;t học sinh v&agrave; sinh vi&ecirc;n theo học.&nbsp;</p>\r\n<div>\r\n<p>Tuy nhi&ecirc;n kh&ocirc;ng &iacute;t người vẫn đang băn khoăn c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; g&igrave;? C&oacute; những chuy&ecirc;n ng&agrave;nh g&igrave;? Cơ hội việc l&agrave;m ra trường ra sao? C&ugrave;ng Greenwich t&igrave;m hiểu những th&ocirc;ng tin li&ecirc;n quan về ng&agrave;nh ph&aacute;t triển mũi nhọn tr&ecirc;n to&agrave;n cầu hiện nay.</p>\r\n<h2><strong>C&ocirc;ng nghệ th&ocirc;ng tin l&agrave; g&igrave;? Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; g&igrave;?</strong></h2>\r\n<p><strong>C&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;hay c&ograve;n gọi l&agrave;&nbsp;<strong>IT</strong>&nbsp;(<strong>Information&nbsp;Technology</strong>) l&agrave; thuật ngữ bao gồm phần mềm, mạng lưới internet, hệ thống m&aacute;y t&iacute;nh sử dụng cho ph&acirc;n phối v&agrave; xử l&yacute; dữ liệu cũng như trao đổi, lưu giữ v&agrave; sử dụng th&ocirc;ng tin.</p>\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/diem-chuan-nganh-quan-tri-kinh-doanh-n1067.html\"><strong>C&aacute;c trường đại học chuy&ecirc;n ng&agrave;nh quản trị kinh doanh</strong></a></p>\r\n<p><img style=\"width: 600px; height: 388px;\" src=\"https://greenwich.edu.vn/upload_images/images/cong-nghe-thong-tin(1).JPG\" alt=\"C&ocirc;ng nghệ th&ocirc;ng tin\" /></p>\r\n<p>Trong doanh nghiệp c&aacute;c nh&acirc;n vi&ecirc;n IT lu&ocirc;n đ&oacute;ng vai tr&ograve; rất quan trọng trong việc quản l&yacute;, truyền dẫn, lưu trữ v&agrave; xử l&yacute; c&aacute;c th&ocirc;ng tin, hệ thống v&agrave; d&acirc;y chuyền sản xuất. CNTT được sử dụng trong nhiều lĩnh vực. Gi&uacute;p vận h&agrave;nh từ: qu&aacute; tr&igrave;nh kinh doanh, kết nối kh&aacute;ch h&agrave;ng,...</p>\r\n<p><strong>Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>: &ldquo;L&agrave; tập hợp c&aacute;c phương ph&aacute;p khoa học, c&aacute;c phương tiện v&agrave; c&ocirc;ng cụ kỹ thuật hiện đại - chủ yếu l&agrave; kỹ thuật m&aacute;y t&iacute;nh v&agrave; viễn th&ocirc;ng - nhằm tổ chức khai th&aacute;c v&agrave; sử dụng c&oacute; hiệu quả c&aacute;c nguồn t&agrave;i nguy&ecirc;n th&ocirc;ng tin rất phong ph&uacute; v&agrave; tiềm năng trong mọi lĩnh vực hoạt động của con người v&agrave; x&atilde; hội&rdquo;.</p>\r\n<p><em>Theo: Nghị quyết Ch&iacute;nh phủ 49/CP ng&agrave;y 4 th&aacute;ng 8 năm 1993</em></p>\r\n<h2><strong>Tư vấn ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong></h2>\r\n<p>C&ocirc;ng nghệ th&ocirc;ng tin phổ biến v&agrave; ứng dụng mọi nơi trong cuộc sống hiện đại ng&agrave;y nay. Quen thuộc l&agrave; thế nhưng để hiểu r&otilde; thực sự về ng&agrave;nh n&agrave;y th&igrave; kh&ocirc;ng phải ai cũng biết được. Kh&ocirc;ng &iacute;t c&aacute;c y&ecirc;u cầu&nbsp;<strong>tư vấn ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;với c&aacute;c c&acirc;u hỏi như: C&oacute; n&ecirc;n&nbsp;<strong>học c&ocirc;ng nghệ th&ocirc;ng tin</strong>? L&agrave;m c&ocirc;ng nghệ th&ocirc;ng tin cần c&oacute; tố chất g&igrave;? Liệu t&ocirc;i c&oacute; ph&ugrave; hợp với ng&agrave;nh CNTT? C&aacute;c chuy&ecirc;n ng&agrave;nh trong c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; g&igrave;?&nbsp;<strong>Học c&ocirc;ng nghệ th&ocirc;ng tin ra l&agrave;m g&igrave;</strong>?...</p>\r\n<h3><strong>Học ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin cần c&oacute; những tố chất g&igrave;?</strong></h3>\r\n<p>Trước ti&ecirc;n ch&uacute;ng ta sẽ c&ugrave;ng t&igrave;m hiểu c&aacute;c tố chất cần c&oacute; nếu muốn theo&nbsp;<strong>học ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>. Những tố chất khi bạn cần c&oacute; đ&oacute; l&agrave;:</p>\r\n<ul>\r\n<li>T&iacute;nh cẩn thận:&nbsp;<strong>Học nghề c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;đ&ograve;i hỏi t&iacute;nh cẩn thận tuyệt đối bởi chỉ cần sai s&oacute;t 1 ch&uacute;t trong m&atilde; lệnh lập tr&igrave;nh, hay đơn giản hơn l&agrave; chỉ cần 1 lỗi nhỏ xảy ra cũng sẽ ảnh hưởng lớn đến cả hệ thống.</li>\r\n<li>T&iacute;nh ki&ecirc;n tr&igrave;: L&agrave;m việc trong ng&agrave;nh n&agrave;y phải đối mặt thường xuy&ecirc;n với những b&agrave;i to&aacute;n kh&oacute;. Ki&ecirc;n tr&igrave; v&agrave; nhẫn nại lu&ocirc;n l&agrave; &ldquo;kim chỉ nam&rdquo; đối với người l&agrave;m IT.&nbsp;</li>\r\n<li>Khả năng tự học v&agrave; t&igrave;m t&ograve;i: C&ocirc;ng nghệ th&ocirc;ng tin được cập nhật v&agrave; thay đổi li&ecirc;n tục. V&igrave; thế nếu bạn l&agrave; người chủ động, lu&ocirc;n cố gắng n&acirc;ng cao khả năng tự học v&agrave; t&igrave;m t&ograve;i th&igrave; mới kh&ocirc;ng bị tụt hậu.</li>\r\n<li>Khả năng ngoại ngữ: Nếu l&agrave; người kh&ocirc;ng giỏi ngoại ngữ th&igrave; bạn cần đầu tư v&agrave;o học tiếng Anh ngay b&acirc;y giờ. Bởi c&ocirc;ng nghệ th&ocirc;ng tin mang t&iacute;nh to&agrave;n cầu v&agrave; muốn đọc hiểu được t&agrave;i liệu li&ecirc;n quan th&igrave; học tiếng Anh rất quan trọng.</li>\r\n<li>Khả năng l&agrave;m việc nh&oacute;m: L&agrave;m việc nh&oacute;m hiệu quả gi&uacute;p bạn giải quyết những c&ocirc;ng việc rắc rối tốt nhất. Kỹ năng l&agrave;m việc nh&oacute;m l&agrave; một trong những tố chất rất quan trọng.</li>\r\n<li>Đam m&ecirc; với c&ocirc;ng nghệ th&ocirc;ng tin: Đ&acirc;y l&agrave; tố chất quan trọng nhất. Nếu kh&ocirc;ng c&oacute; niềm đam m&ecirc; bạn sẽ kh&ocirc;ng thể sống v&agrave; l&agrave;m việc c&ugrave;ng với ng&agrave;nh l&acirc;u d&agrave;i.&nbsp;</li>\r\n</ul>\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-cong-nghe-thong-tin-co-kho-khong-n584.html\"><strong>C&aacute;c m&ocirc;n học ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong></a></p>\r\n<p><img style=\"width: 598px; height: 393px;\" src=\"https://greenwich.edu.vn/upload_images/images/hoc-nganh-cong-nghe-thong-tin-to-chat.JPG\" alt=\"C&aacute;c tố chất một người học c&ocirc;ng nghệ th&ocirc;ng tin cần c&oacute;\" /></p>\r\n<p><em>C&ocirc;ng nghệ th&ocirc;ng tin đ&ograve;i hỏi nhiều tố chất nhất định - H&atilde;y r&egrave;n luyện n&oacute; mỗi ng&agrave;y</em></p>\r\n<h2><strong>Khoa c&ocirc;ng nghệ th&ocirc;ng tin hiện nay</strong></h2>\r\n<p><strong>Khoa c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;hiện nay được nhiều trường đại học mở ra v&agrave; coi l&agrave; ng&agrave;nh ph&aacute;t triển mũi nhọn. C&aacute;c trường&nbsp;<a href=\"https://greenwich.edu.vn/cac-truong-co-nganh-cong-nghe-thong-tin-o-viet-nam-n449.html\"><strong>đại học c&ocirc;ng nghệ th&ocirc;ng tin</strong></a>&nbsp;hiện nay được đầu tư trang thiết bị hiện đại, đội ngũ giảng vi&ecirc;n chất lượng. Khoa c&ocirc;ng nghệ th&ocirc;ng tin với nhiều chuy&ecirc;n ng&agrave;nh kh&aacute;c nhau gi&uacute;p đ&agrave;o tạo sinh vi&ecirc;n c&oacute; nền tảng cơ bản vững chắc. Cho đến việc đảm bảo đ&agrave;o tạo chuy&ecirc;n s&acirc;u nghiệp vụ của từng chuy&ecirc;n ng&agrave;nh.</p>\r\n<h3><strong>Giới thiệu ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin | C&aacute;c chuy&ecirc;n ng&agrave;nh của c&ocirc;ng nghệ th&ocirc;ng tin&nbsp;</strong></h3>\r\n<p>Để&nbsp;<strong>giới thiệu ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;tổng qu&aacute;t nhất ch&uacute;ng t&ocirc;i đ&atilde; tổng hợp những th&ocirc;ng tin quan trọng ngay dưới đ&acirc;y. V&igrave; c&ocirc;ng nghệ th&ocirc;ng tin c&oacute; thể ứng dụng trong nhiều lĩnh vực n&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh đ&agrave;o tạo kh&aacute; đa dạng.&nbsp;</p>\r\n<p><img style=\"width: 597px; height: 397px;\" src=\"https://greenwich.edu.vn/upload_images/images/gioi-thieu-nganh-cong-nghe-thong-tin.JPG\" alt=\"Giới thiệu về ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin\" /></p>\r\n<p>Mục đ&iacute;ch của&nbsp;<strong>c&aacute;c trường đ&agrave;o tạo ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;x&acirc;y dựng chương tr&igrave;nh đ&agrave;o tạo đ&oacute; l&agrave; nhằm ph&aacute;t triển khả năng của sinh vi&ecirc;n như: Sửa chữa, tạo mới v&agrave; sử dụng hệ thống c&aacute;c thiết bị v&agrave; m&aacute;y t&iacute;nh. Bao gồm c&aacute;c phần cứng v&agrave; phần mềm để cung cấp những giải ph&aacute;p xử l&yacute; th&ocirc;ng tin tr&ecirc;n nền c&ocirc;ng nghệ c&aacute; nh&acirc;n, cũng như tổ chức doanh nghiệp c&oacute; y&ecirc;u cầu.</p>\r\n<h3><strong>Th&ocirc;ng tin về ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong></h3>\r\n<p><strong>Th&ocirc;ng tin về ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;hiện nay c&oacute; rất nhiều kh&iacute;a cạnh. Tuy nhi&ecirc;n, th&ocirc;ng tin m&agrave; đa số học sinh, phụ huynh quan t&acirc;m khi quyết định lựa chọn c&oacute; theo học hay kh&ocirc;ng c&oacute; thể kể đến như c&oacute; những chuy&ecirc;n ng&agrave;nh n&agrave;o trong c&ocirc;ng nghệ th&ocirc;ng tin? Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin học g&igrave;? Triển vọng mỗi chuy&ecirc;n ng&agrave;nh? N&ecirc;n lựa chọn học chuy&ecirc;n ng&agrave;nh n&agrave;o?&nbsp;</p>\r\n<h3><strong>C&ocirc;ng nghệ th&ocirc;ng tin gồm những chuy&ecirc;n ng&agrave;nh n&agrave;o? Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin học g&igrave;?</strong></h3>\r\n<p><strong>C&ocirc;ng nghệ th&ocirc;ng tin gồm những chuy&ecirc;n ng&agrave;nh n&agrave;o</strong>?&nbsp;<strong>C&ocirc;ng nghệ th&ocirc;ng tin học những g&igrave;</strong>?&nbsp;&nbsp;L&agrave; c&acirc;u hỏi m&agrave; ch&uacute;ng t&ocirc;i nhận được rất nhiều. C&ugrave;ng t&igrave;m hiểu những chuy&ecirc;n ng&agrave;nh CNTT được giảng dạy ở nhiều trường đại học hiện nay.</p>\r\n<h4><strong>C&aacute;c ng&agrave;nh trong c&ocirc;ng nghệ th&ocirc;ng tin</strong></h4>\r\n<p><strong>C&aacute;c ng&agrave;nh trong ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;kh&aacute; đa dạng.&nbsp;<strong>C&aacute;c trường đ&agrave;o tạo c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;hiện nay đang x&acirc;y dựng v&agrave; ph&aacute;t triển nhiều chuy&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin. C&aacute;c bạn c&oacute; thể tham khảo một trong số những chuy&ecirc;n ng&agrave;nh sau:</p>\r\n<h5><strong>Chuy&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin | C&ocirc;ng nghệ th&ocirc;ng tin c&oacute; những chuy&ecirc;n ng&agrave;nh n&agrave;o?</strong></h5>\r\n<p><strong>C&aacute;c chuy&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;c&ograve;n c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; hệ thống th&ocirc;ng tin hay quản l&yacute; hệ thống. Những người học chuy&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin sử dụng hệ điều h&agrave;nh, cũng như phần mềm v&agrave; ứng dụng để tạo hệ thống giải quyết c&aacute;c vấn đề cụ thể. C&aacute;c sinh vi&ecirc;n sẽ được học v&agrave; nghi&ecirc;n cứu về mạng. B&ecirc;n cạnh đ&oacute; l&agrave; thiết kế cơ sở dữ liệu theo chiều s&acirc;u. Cũng như tiếp thu c&aacute;c l&yacute; thuyết to&aacute;n cơ bản v&agrave; to&aacute;n cao cấp.</p>\r\n<h5><strong>Nh&oacute;m ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin khoa học m&aacute;y t&iacute;nh</strong></h5>\r\n<p><strong>C&ocirc;ng nghệ th&ocirc;ng tin l&agrave; học những g&igrave;?&nbsp;&nbsp;Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;khoa học m&aacute;y t&iacute;nh l&agrave; ng&agrave;nh nghi&ecirc;n cứu c&aacute;c cơ sở l&yacute; thuyết cũng như t&iacute;nh to&aacute;n sự thực hiện v&agrave; ứng dụng trong c&aacute;c hệ thống m&aacute;y t&iacute;nh. Khoa học m&aacute;y t&iacute;nh l&agrave; ứng dụng c&aacute;c tiếp cận khoa học v&agrave; thực tiễn để ứng dụng v&agrave; nghi&ecirc;n cứu c&oacute; hệ thống về t&iacute;nh khả thi, cấu tr&uacute;c, biểu hiện,...Để l&agrave;m cơ sở cho việc thu thập, xử l&yacute;, lưu trữ, truyền th&ocirc;ng, truy cập th&ocirc;ng tin.&nbsp;</p>\r\n<p><img style=\"width: 598px; height: 399px;\" src=\"https://greenwich.edu.vn/upload_images/images/nhom-nganh-cong-nghe-thong-tin(1).JPG\" alt=\"Nh&oacute;m ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin khoa học m&aacute;y t&iacute;nh\" /></p>\r\n<p>Với những người học chuy&ecirc;n ng&agrave;nh khoa học m&aacute;y t&iacute;nh c&oacute; khả năng &ldquo;n&oacute;i chuyện với m&aacute;y t&iacute;nh&rdquo;. Khả năng sử dụng thuật to&aacute;n đến cấu tr&uacute;c dữ liệu v&agrave; to&aacute;n cao cấp. V&igrave; thế cho n&ecirc;n sinh vi&ecirc;n sẽ được học về c&aacute;c nguy&ecirc;n tắc cơ bản về ng&ocirc;n ngữ lập tr&igrave;nh kh&aacute;c nhau. Cho đến việc thiết kế v&agrave; ph&aacute;t triển phần mềm kh&aacute;c nhau.</p>\r\n<h5><strong>C&ocirc;ng nghệ th&ocirc;ng tin n&ecirc;n học chuy&ecirc;n ng&agrave;nh n&agrave;o? Mạng m&aacute;y t&iacute;nh v&agrave; truyền th&ocirc;ng dữ liệu</strong></h5>\r\n<p><strong>Học ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;mạng m&aacute;y t&iacute;nh v&agrave; truyền th&ocirc;ng dữ liệu l&agrave; ng&agrave;nh nghi&ecirc;n cứu những nguy&ecirc;n l&yacute; mạng từ mạng nội bộ cho đến những mạng diện rộng. Ngo&agrave;i ra, ng&agrave;nh n&agrave;y c&ograve;n cung cấp cho người học c&oacute; những kỹ năng trong việc ph&aacute;t triển ứng dụng tr&ecirc;n hệ thống của m&aacute;y t&iacute;nh nối mạng. Từ trung cho đến cao cấp.</p>\r\n<p><img style=\"width: 598px; height: 358px;\" src=\"https://greenwich.edu.vn/upload_images/images/hoc-nganh-cong-nghe-thong-tinh-an-ninh-mang.JPG\" alt=\"Học ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin mạng an ninh v&agrave; truyền th&ocirc;ng\" /></p>\r\n<p>Sinh vi&ecirc;n theo học ng&agrave;nh n&agrave;y sẽ được đ&agrave;o tạo v&agrave; cung cấp c&aacute;c kiến thức nền tảng về c&ocirc;ng nghệ th&ocirc;ng. Đồng thời, được đ&agrave;o tạo về c&aacute;c kiến thức chuy&ecirc;n s&acirc;u trong lĩnh vực như giải quyết c&aacute;c vấn đề thuộc quản trị mạng, an ninh mạng, lưu trữ dữ liệu,...Ng&agrave;nh học n&agrave;y, người học sẽ được đ&agrave;o tạo về c&aacute;ch l&agrave;m chủ được những c&ocirc;ng nghệ mạng phổ biến như:</p>\r\n<ul>\r\n<li>Thư t&iacute;n điện từ</li>\r\n<li>Truyền tải tập tin</li>\r\n<li>Truyền th&ocirc;ng th&ocirc;ng tin</li>\r\n<li>B&ecirc;n cạnh đ&oacute; l&agrave; những nền c&ocirc;ng nghệ tiến tiến như:</li>\r\n<li>Điện to&aacute;n đ&aacute;m m&acirc;y</li>\r\n<li>T&iacute;nh to&aacute;n lưới</li>\r\n<li>T&Iacute;nh to&aacute;n di động</li>\r\n<li>X&acirc;y dựng v&agrave; vận h&agrave;nh data center</li>\r\n<li>An to&agrave;n v&agrave; bảo mật th&ocirc;ng tin</li>\r\n</ul>\r\n<h4><strong>C&aacute;c mảng trong ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong></h4>\r\n<p><strong>C&aacute;c mảng trong ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;bạn c&oacute; thể lựa chọn khi theo học tại c&aacute;c trường đại học ngo&agrave;i khoa học m&aacute;y t&iacute;nh đ&oacute; l&agrave;:</p>\r\n<p><img style=\"width: 600px; height: 393px;\" src=\"https://greenwich.edu.vn/upload_images/images/cac-mang-trong-cong-nghe-thong-tin(1).JPG\" alt=\"C&aacute;c mảng trong c&ocirc;ng nghệ th&ocirc;ng tin\" /></p>\r\n<ul>\r\n<li>Kỹ thuật m&aacute;y t&iacute;nh (Computer Engineering): L&agrave; ng&agrave;nh kết hợp hai lĩnh vực gồm CNTT v&agrave; Điện tử. Nhằm nghi&ecirc;n cứu c&aacute;c nguy&ecirc;n l&yacute;, phương ph&aacute;p để ph&aacute;t triển c&aacute;c hệ thống bao gồm cả phần cứng v&agrave; phần mềm phục vụ cho c&aacute;c thiết bị phần cứng n&agrave;y. Theo khảo s&aacute;t đ&acirc;y l&agrave; mảng ng&agrave;nh đang trong t&igrave;nh trạng thiếu nguồn nh&acirc;n lực trầm trọng. Nh&agrave; nước đang l&ecirc;n c&aacute;c ch&iacute;nh s&aacute;ch cũng như dự &aacute;n cụ thể nhằm ưu ti&ecirc;n ph&aacute;t triển ng&agrave;nh v&agrave; đưa ng&agrave;nh th&agrave;nh ng&agrave;nh chủ lực kinh tế của Việt Nam.</li>\r\n<li>Hệ thống th&ocirc;ng tin (Computer System): Đ&acirc;y l&agrave; sự kết hợp giữa phần cứng, phần mềm, mạng truyền th&ocirc;ng. Sử dụng để l&agrave;m nhiệm vụ thu thập, xử l&yacute;, lưu trữ, ph&acirc;n phối th&ocirc;ng tin v&agrave; c&aacute;c dữ liệu nhằm thực hiện mục ti&ecirc;u ban đầu. Sinh vi&ecirc;n sẽ được đ&agrave;o tạo để lĩnh hội tư duy về thuật to&aacute;n, hệ thống, cũng như c&aacute;c kỹ năng thiết kế, tối ưu h&oacute;a cơ sở dữ liệu. B&ecirc;n cạnh đ&oacute; l&agrave; vận h&agrave;nh, bảo tr&igrave;, ph&aacute;t triển hệ thống th&ocirc;ng tin.</li>\r\n<li>Kỹ thuật phần mềm (Software Engineering): Mục ti&ecirc;u đ&agrave;o tạo của ng&agrave;nh n&agrave;y l&agrave; đ&agrave;o tạo được sinh vi&ecirc;n trở th&agrave;nh c&aacute;c kỹ sư nắm được những kiến thức cơ bản về tổ chức v&agrave; quản l&yacute; c&ocirc;ng nghệ phần mềm. Sinh vi&ecirc;n c&oacute; thể x&acirc;y dựng m&ocirc; h&igrave;nh &aacute;p dụng c&aacute;c nguy&ecirc;n tắc c&ocirc;ng nghệ phần mềm v&agrave;o thực tế. Ngo&agrave;i ra, ch&uacute; trọng đ&agrave;o tạo sinh vi&ecirc;n c&oacute; năng lực x&acirc;y dựng c&aacute;c dự &aacute;n phần mềm, c&oacute; thể tham mưu, tư vấn v&agrave; thực hiện c&aacute;c c&ocirc;ng việc trong lĩnh vực kỹ thuật phần mềm.</li>\r\n</ul>\r\n<h3><strong>N&ecirc;n học ng&agrave;nh g&igrave; trong c&ocirc;ng nghệ th&ocirc;ng tin để dễ xin việc</strong></h3>\r\n<p><strong>N&ecirc;n học ng&agrave;nh g&igrave; trong c&ocirc;ng nghệ th&ocirc;ng tin</strong>? Đ&acirc;y l&agrave; thắc mắc của c&aacute;c học sinh khi đưa ra quyết định chọn ng&agrave;nh, chọn nghề trong tương lai. Sự ph&aacute;t triển của c&ocirc;ng nghệ th&ocirc;ng tin trong thời điểm hiện tại cho thấy. C&aacute;c chuy&ecirc;n ng&agrave;nh trong c&ocirc;ng nghệ th&ocirc;ng tin đều ph&aacute;t triển v&agrave; được ứng dụng ng&agrave;y c&agrave;ng mạnh mẽ. Bạn cần t&igrave;m hiểu thật kỹ m&igrave;nh y&ecirc;u th&iacute;ch chuy&ecirc;n ng&agrave;nh n&agrave;o, để đưa ra lựa chọn ph&ugrave; hợp nhất.</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-cong-nghe-thong-tin-co-kho-khong-n584.html\"><strong>C&ocirc;ng nghệ th&ocirc;ng tin học những g&igrave;</strong></a>?</p>\r\n<h4><strong>Triển vọng ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin | Cơ hội ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong></h4>\r\n<p><strong>Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin c&oacute; dễ xin việc kh&ocirc;ng</strong>? N&oacute;i về&nbsp;<strong>triển vọng ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;th&igrave; tốc độ ph&aacute;t triển trong những năm trở lại đ&acirc;y rất ấn tượng. Khi ng&agrave;nh n&agrave;y c&oacute; đ&oacute;ng g&oacute;p kh&ocirc;ng nhỏ v&agrave; nền tăng trưởng GDP cũng như ng&acirc;n s&aacute;ch nh&agrave; nước. Nh&agrave; nước x&aacute;c định CNTT sẽ l&agrave; một trong những ng&agrave;nh c&ocirc;ng nghiệp mũi nhọn để ph&aacute;t triển.</p>\r\n<h5><strong>Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin n&agrave;o đang hot | Việc l&agrave;m CNTT sau khi ra trường&nbsp; &nbsp; &nbsp;</strong></h5>\r\n<p><strong>Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin đang hot</strong>,&nbsp;<strong>cơ hội việc l&agrave;m ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;khi sinh vi&ecirc;n ra trường với mức lương khủng c&oacute; thể kể đến đ&oacute; l&agrave;:</p>\r\n<ul>\r\n<li>Lập tr&igrave;nh ứng dụng điện thoại</li>\r\n<li>Quản trị cơ sở dữ liệu</li>\r\n<li>Kỹ sư phần mềm</li>\r\n<li>Thiết kế game</li>\r\n<li>Quản trị mạng</li>\r\n<li>Chuy&ecirc;n gia bảo mật</li>\r\n<li>Chuy&ecirc;n gia ph&acirc;n t&iacute;ch hệ thống m&aacute;y t&iacute;nh</li>\r\n<li>Thiết kế v&agrave; ph&aacute;t triển website</li>\r\n<li>Quản l&yacute; c&ocirc;ng nghệ&hellip;</li>\r\n</ul>\r\n<h4><strong>Tương lai ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin | Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin trong tương lai</strong></h4>\r\n<p>Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin trong tương lai đến sẽ vẫn rất ph&aacute;t triển. Nhiều đất nước kh&ocirc;ng chỉ ở Việt Nam đ&atilde; x&aacute;c định sẽ đầu tư rất nhiều việc đ&agrave;o tạo nguồn nh&acirc;n lực giỏi. Ch&iacute;nh phủ đ&atilde; ban h&agrave;nh nhiều ch&iacute;nh s&aacute;ch trong đề &aacute;n ph&aacute;t triển CNTT đ&oacute; l&agrave; tăng trưởng GDP cao gấp 2-3 lần. Đồng thời, ph&aacute;t triển nguồn nh&acirc;n lực c&oacute; tr&igrave;nh độ đạt chuẩn quốc tế. Thiết lập hạ tầng viễn th&ocirc;ng băng rộng tr&ecirc;n cả nước. Tương lai ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin hiện nay l&agrave; xu hướng v&agrave; ph&aacute;t triển kh&ocirc;ng ngừng. L&agrave; cơ hội cho nhiều học sinh v&agrave; sinh vi&ecirc;n theo học ng&agrave;nh n&agrave;y trong tương lai.</p>\r\n<p><strong>C&aacute;c trường c&oacute; ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;hiện nay cũng đầu tư rất nhiều v&agrave;o cơ sở vật chất, x&acirc;y dựng gi&aacute;o tr&igrave;nh giảng dạy chất lượng. Ngo&agrave;i ra c&ograve;n li&ecirc;n kết với&nbsp;<strong>c&aacute;c trường c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;quốc tế để mở rộng c&aacute;c chương tr&igrave;nh trao đổi sinh vi&ecirc;n nằm mục đ&iacute;ch cho sinh vi&ecirc;n được học hỏi nhiều điều mới mẻ.</p>\r\n<p><img style=\"width: 596px; height: 376px;\" src=\"https://greenwich.edu.vn/upload_images/images/tuong-lai-cong-nghe-thong-tin(1).JPG\" alt=\"Tương lai c&ocirc;ng nghệ th&ocirc;ng tin\" /></p>\r\n<p><strong>Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin gồm những ng&agrave;nh n&agrave;o</strong>? C&ocirc;ng nghệ th&ocirc;ng tin l&agrave; ng&agrave;nh học nghi&ecirc;n cứu c&aacute;c kh&iacute;a cạnh&nbsp;phần mềm, lập tr&igrave;nh sử dụng&nbsp;li&ecirc;n quan đến m&aacute;y t&iacute;nh.&nbsp;<strong>C&aacute;c ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;được dễ hiểu hơn được chia ra th&agrave;nh từng ng&agrave;nh nhỏ như: khoa học m&aacute;y t&iacute;nh, kỹ thuật phần mềm, hệ thống th&ocirc;ng tin, truyền th&ocirc;ng v&agrave; mạng m&aacute;y t&iacute;nh,...&nbsp;</p>\r\n<p><strong>Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin ra l&agrave;m g&igrave;</strong>? Đ&acirc;y l&agrave; c&acirc;u hỏi của rất nhiều bạn sinh muốn giải đ&aacute;p. Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin sau khi ra trường sẽ l&agrave;m hầu hết tất cả c&aacute;c mảng li&ecirc;n quan đến m&aacute;y t&iacute;nh. T&ugrave;y thuộc v&agrave;o từng ng&agrave;nh m&agrave; bạn học tr&ecirc;n trường đại học được chia nhỏ ra như ph&iacute;a tr&ecirc;n ch&uacute;ng t&ocirc;i đ&atilde; để cập.&nbsp;</p>\r\n<p><strong>Ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin học trường n&agrave;o? C&ocirc;ng nghệ th&ocirc;ng tin&nbsp;trường n&agrave;o tốt nhất</strong>?&nbsp;<strong>Học c&ocirc;ng nghệ th&ocirc;ng tin trường n&agrave;o tốt nhất</strong>?&nbsp;Tại đại học Greenwich đ&agrave;o tạo c&ocirc;ng nghệ th&ocirc;ng tin với với mục đ&iacute;ch trang bị cho sinh vi&ecirc;n c&aacute;c kiến thức, kỹ năng, kinh nghiệm l&agrave;m việc thực tế. Trường tạo m&ocirc;i trường học tập, l&agrave;m việc với những c&ocirc;ng ty c&ocirc;ng nghệ h&agrave;ng đầu tại Việt Nam. Sinh vi&ecirc;n được hướng dẫn v&agrave; triển khai c&aacute;c dự &aacute;n như thiết kế ứng dụng, phần mềm,...Chương tr&igrave;nh học CNTT tại&nbsp;</p>\r\n<p>Greenwich -&nbsp;<strong>trường đại học c&oacute; ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong>&nbsp;được chia ra 2 giai đoạn l&agrave; giai đoạn đ&agrave;o tạo khối kiến thức ng&agrave;nh. Giai đoạn 2 đ&agrave;o tạo khối kiến thức chuy&ecirc;n s&acirc;u. Đảm bảo sinh vi&ecirc;n ra trường c&oacute; nền tảng vững chắc, kỹ năng thuần thục v&agrave; c&oacute; thể đảm nhận được nhiều vị tr&iacute; kh&aacute;c nhau.</p>\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; tổng hợp những th&ocirc;ng tin về c&ocirc;ng nghệ th&ocirc;ng tin. Nếu bạn thật sự y&ecirc;u th&iacute;ch ng&agrave;nh học n&agrave;y th&igrave; đừng ngần ngại m&agrave; kh&ocirc;ng theo đuổi n&oacute;. Mọi th&ocirc;ng tin chi tiết hay y&ecirc;u cầu tư vấn xin vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo địa chỉ sau.&nbsp;<em>Tr&acirc;n trọng cảm ơn!</em></p>\r\n<p><strong>Đại học Greenwich</strong></p>\r\n<p><em><strong>Cơ sở H&agrave; Nội</strong></em></p>\r\n<p>T&ograve;a nh&agrave; DETECH -Số 8 T&ocirc;n Thất Thuyết-P.Mỹ Đ&igrave;nh 2-Q.Nam Từ Li&ecirc;m</p>\r\n<p>024.7300.2266</p>\r\n<p>0981.558.080 | 0971.274.545</p>\r\n<p><strong><em>Cơ sở TP. Hồ Ch&iacute; Minh</em></strong></p>\r\n<p>CS1: Số 142-146 Phạm Ph&uacute; Thứ - Phường 4 - Quận 6 (Cuối đường 3/2)</p>\r\n<p>028.7300.2266</p>\r\n<p>0933.108.554 | 0971.294.545</p>\r\n<p><em><strong>Cơ sở Tp.Hồ Ch&iacute; Minh - CS2</strong></em></p>\r\n<p>205 Nguyễn X&iacute;, Phường 26, B&igrave;nh Thạnh</p>\r\n<p>028.7300.2266</p>\r\n<p>0933.108.554 | 0971.294.545</p>\r\n<p><strong><em>Cơ sở Đ&agrave; Nẵng</em></strong></p>\r\n<p>658 Ng&ocirc; Quyền, quận Sơn Tr&agrave;, TP Đ&agrave; Nẵng</p>\r\n<p>0236.730.2266</p>\r\n<p>0934.892.687</p>\r\n<p><em><strong>Cơ sở Cần Thơ</strong></em></p>\r\n<p>Số 160 đường 30/4, phường An ph&uacute;, quận Ninh Kiều - TP. Cần Thơ</p>\r\n<p>0292.730.0068</p>\r\n<p>0968.670.804 | 0936.600.861</p>\r\n</div>', 'https://greenwich.edu.vn/upload_images/images/cong-nghe-thong-tin(1).JPG', '2020-07-10 08:55:17', '2020-07-10 08:55:17', 6);
INSERT INTO `posts` (`id`, `title`, `body`, `feature_img`, `created_at`, `updated_at`, `category_id`) VALUES
(5, 'Cách Ôn Thi Đại Học Hiệu Quả (27 Điểm Trong 3 Tháng)', '<div>\r\n<p data-css=\"tve-u-1704ce82133\"><strong>TRONG 3 TH&Aacute;NG &Ocirc;N THI ĐẠT 27 ĐIỂM?</strong><br /><strong>THẬT HAY Đ&Ugrave;A?</strong></p>\r\n</div>\r\n<div>\r\n<p data-css=\"tve-u-16a2b4aa0fa\">Bạn c&oacute; biết rằng hiện nay, hệ thống Gi&aacute;o dục của ch&uacute;ng ta thay đổi v&agrave; cập nhật li&ecirc;n tục h&agrave;ng ng&agrave;y kh&ocirc;ng? Thậm ch&iacute; l&agrave; từng gi&acirc;y...</p>\r\n<p data-css=\"tve-u-16a2b4aa0fb\">Đ&atilde; bao giờ bạn tự hỏi rằng: &ldquo;<em>L&agrave;m thế n&agrave;o để học giỏi hơn khi nền gi&aacute;o dục m&agrave; ch&uacute;ng ta đang sống n&oacute; thay đổi nhiều như vậy?</em>&rdquo;.</p>\r\n</div>\r\n<div data-css=\"tve-u-1704cf181ff\"><img style=\"height: auto; width: 724px;\" title=\"33548c5e7de2b46d0f43f46c4f1141d7-1450172811569\" src=\"https://tuhoc365.vn/wp-content/uploads/2020/02/33548c5e7de2b46d0f43f46c4f1141d7-1450172811569.gif\" alt=\"Bế tắc\" width=\"500\" height=\"216\" data-id=\"78302\" data-css=\"tve-u-1704cf1820a\" /></div>\r\n<div>\r\n<p data-css=\"tve-u-16a2b4aa0fc\"><strong>C&oacute; phải bạn đang bế tắc</strong>&nbsp;v&igrave; kh&ocirc;ng biết phương ph&aacute;p, chiến lược &ocirc;n thi đại học hiệu quả nhất kh&ocirc;ng?</p>\r\n</div>\r\n<div>\r\n<p data-css=\"tve-u-16a2b4aa0fe\"><em>C&oacute; thể bạn đ&atilde; nghe h&agrave;ng triệu &yacute; kiến kh&aacute;c nhau v&agrave; một v&agrave;i lời khuy&ecirc;n l&agrave;m bạn trở n&ecirc;n rối hơn bao giờ hết&hellip;</em></p>\r\n<p data-css=\"tve-u-16a2b4aa0fe\"><strong>C&oacute; phải bạn đang hoang mang v&agrave; khao kh&aacute;t</strong>&nbsp;t&igrave;m được hướng đi đ&uacute;ng đắn để tăng nhanh điểm số trong thời gian ngắn.</p>\r\n<p data-css=\"tve-u-16a2b4aa0ff\">Vậy th&igrave; bạn đ&atilde; ở đ&uacute;ng nơi rồi đấy,&nbsp;<strong>đ&oacute; ch&iacute;nh x&aacute;c l&agrave; l&yacute; do</strong>&nbsp;t&ocirc;i viết b&agrave;i viết n&agrave;y!</p>\r\n<p data-css=\"tve-u-16a2b4aa100\">Chỉ v&agrave;i ph&uacute;t tới đ&acirc;y, bạn sẽ c&oacute; được b&iacute; k&iacute;p của t&ocirc;i&hellip; b&iacute; k&iacute;p chắc chắn gi&uacute;p bạn tăng điểm thi đại học như t&ocirc;i đ&atilde; từng tăng 9 điểm/m&ocirc;n chỉ trong 3 th&aacute;ng cuối c&ugrave;ng &ocirc;n thi.</p>\r\n<p data-css=\"tve-u-1704ce8b8d4\">H&atilde;y đọc thật kỹ c&acirc;u chuyện của t&ocirc;i&hellip; bạn sẽ t&igrave;m thấy c&acirc;u trả lời.</p>\r\n</div>\r\n<div>\r\n<p data-css=\"tve-u-16aeeefc7ce\">T&ocirc;i đ&atilde; từng mất định hướng, mắc kẹt ở mức trung b&igrave;nh kể cả trong học tập v&agrave; cuộc sống. Nhờ khả năng tự nhận thức t&ocirc;i đ&atilde; l&agrave;m n&ecirc;n một cuộc c&aacute;ch mạng bản th&acirc;n.</p>\r\n<p data-css=\"tve-u-16aeeefc7cf\">T&ocirc;i thực sự muốn bạn th&agrave;nh c&ocirc;ng, muốn bạn đạt được số điểm mục ti&ecirc;u của m&igrave;nh, muốn bạn đậu v&agrave;o trường đại học bạn mơ ước. Đ&oacute; ch&iacute;nh l&agrave; l&yacute; do v&igrave; sao t&ocirc;i ở đ&acirc;y c&ugrave;ng Tự Học 365 v&agrave; gia đ&igrave;nh học sinh Ngoại Hạng.</p>\r\n<p data-css=\"tve-u-16aeeefc7d0\">Đồng h&agrave;nh c&ugrave;ng t&ocirc;i nh&eacute; !</p>\r\n</div>\r\n<div data-css=\"tve-u-166d8e93cf7\" data-tag=\"h1\">\r\n<h1 style=\"list-style-type: none;\" data-css=\"tve-u-166d8e90735\"><strong>BẮT ĐẦU H&Agrave;NH TR&Igrave;NH \"C&Aacute;CH &Ocirc;N THI ĐẠI HỌC HIỆU QUẢ\"</strong></h1>\r\n</div>\r\n<div>\r\n<p data-css=\"tve-u-16aeef0a424\"><br />Thời điểm m&agrave; t&ocirc;i c&ograve;n ham chơi ở năm lớp 12, l&uacute;c đ&oacute; mọi người ai ai cũng n&oacute;i t&ocirc;i kh&ocirc;ng c&oacute; khả năng đậu đại học huống chi l&agrave; đậu v&agrave;o những trường Top như t&ocirc;i mong muốn.</p>\r\n<p data-css=\"tve-u-16aeef0a425\">Bạn biết kh&ocirc;ng, hồi ấy th&iacute;ch lắm cơ, t&ocirc;i rất th&iacute;ch đến trường. Để l&agrave;m g&igrave; ư? C&oacute; phải l&agrave;m &ldquo;con ngoan tr&ograve; giỏi kh&ocirc;ng&rdquo; 😉 ?</p>\r\n<p data-css=\"tve-u-16aeef0a426\">T&ocirc;i th&iacute;ch đến trường chỉ v&igrave; ngắm crush, được tr&ograve; chuyện c&ugrave;ng crush&hellip; cả ng&ocirc;i trường v&agrave; tương lai thu b&eacute; lại vừa bằng crush.</p>\r\n<p data-css=\"tve-u-16aeef0a428\">Hồi ấy t&ocirc;i ng&acirc;y thơ lắm, t&ocirc;i muốn cả thế giới n&agrave;y v&igrave; t&igrave;nh y&ecirc;u m&atilde;nh liệt của t&ocirc;i m&agrave; thay đổi một ch&uacute;t&hellip; nhưng giấc mơ chỉ m&atilde;i l&agrave; mộng tưởng, t&ocirc;i phải trở lại với thực tế ngay khi chỉ c&ograve;n 3 th&aacute;ng cuối.</p>\r\n<p data-css=\"tve-u-16aeef0a429\">T&ocirc;i dự t&iacute;nh t&iacute;nh thi khối A - To&aacute;n L&yacute; H&oacute;a. V&igrave; crush, v&igrave; mải ham chơi với lũ bạn n&ecirc;n điểm số dậm ch&acirc;n tại chỗ một thời gian.. sau đ&oacute; thả dốc kh&ocirc;ng phanh. Thời điểm tồi tệ l&agrave; c&aacute;i ng&agrave;y t&ocirc;i bị mời phụ huynh &ldquo;chỉ v&igrave;&rdquo; đội sổ lớp chuy&ecirc;n l&yacute;.</p>\r\n<p data-css=\"tve-u-16aeef0a42a\">C&oacute; phải phụ huynh bị xấu hổ l&agrave;&nbsp;<a href=\"https://tuhoc365.vn/3-buoc-tu-hoc-on-thi-dai-hoc-o-nha-van-thanh-thu-khoa/\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration: underline;\">động lực để t&ocirc;i thay đổi kh&ocirc;ng?</span></a></p>\r\n<p data-css=\"tve-u-16aeef0a42b\">C&oacute; thể n&oacute; đ&uacute;ng với bạn, nhưng với t&ocirc;i th&igrave; kh&ocirc;ng?</p>\r\n<p data-css=\"tve-u-16aeef0a42c\">Bạn c&oacute; đang t&ograve; m&ograve; tự hỏi tại sao t&ocirc;i quyết t&acirc;m đậu đại học&hellip; để rồi từ cuối lớp trở th&agrave;nh TOP đầu của ng&ocirc;i trường? V&agrave; đ&ocirc;i khi chỉ cần bạn biết được l&yacute; do, bạn c&oacute; thể BỨC PH&Aacute; điểm số nhanh ch&oacute;ng trong thời gian ngắn tới?</p>\r\n<p data-css=\"tve-u-16aeef0a42d\">Ng&agrave;y t&ocirc;i bắt đầu cuộc h&agrave;nh tr&igrave;nh chinh phục c&aacute;nh cửa đại học, t&ocirc;i tr&agrave;n đầy &yacute; ch&iacute;, động lực v&agrave; quyết t&acirc;m&hellip; như bạn b&acirc;y giờ vậy.</p>\r\n<p data-css=\"tve-u-16aeef0a42e\">Ng&agrave;y ấy l&agrave; một ng&agrave;y đầy đau buồn&hellip; bạn c&oacute; hiểu được cảm gi&aacute;c người m&igrave;nh thương, thương người kh&aacute;c hay kh&ocirc;ng?</p>\r\n<p data-css=\"tve-u-16aeef0a42f\">T&ocirc;i đ&atilde; tự giam m&igrave;nh trong căn ph&ograve;ng nhỏ, kh&oacute;a tr&aacute;i cửa, v&agrave; kh&ocirc;ng ăn g&igrave;&hellip;</p>\r\n<p data-css=\"tve-u-16aeef0a431\">T&ocirc;i đ&atilde; g&agrave;o l&ecirc;n với 4 bức tường như một người đi&ecirc;n&hellip; &ldquo;Thằng đ&oacute; th&igrave; c&oacute; g&igrave; hơn tao&hellip; tại sao em lại theo n&oacute;!&rdquo;</p>\r\n<p data-css=\"tve-u-16aeef0a432\">T&ocirc;i dần tỉnh t&aacute;o, v&agrave; nh&igrave;n nhận lại một c&aacute;ch r&otilde; r&agrave;ng&hellip; n&oacute; c&oacute; g&igrave; hơn t&ocirc;i chứ? Uhm&hellip; th&igrave;.. đẹp trai hơn, biết chơi ảo thuật, h&aacute;t rap hay, đ&agrave;n piano giỏi, rich kid&hellip;. nhưng điều quan trọng hơn hết n&oacute; thi thử được 27 điểm&hellip; c&ograve;n t&ocirc;i chỉ được 17 điểm...</p>\r\n<p data-css=\"tve-u-16aeef0a433\">Ngay ch&iacute;nh thời khắc ấy&hellip; t&ocirc;i quyết định bỏ crush. Nhưng đ&oacute; chưa phải l&agrave; tất cả: T&ocirc;i sẽ thay đổi, học giỏi, đậu đại học ngoại thương v&agrave; t&ocirc;i sẽ th&agrave;nh c&ocirc;ng trong tương lai.</p>\r\n</div>\r\n<div>\r\n<p data-css=\"tve-u-166d8ebbc50\"><span data-css=\"tve-u-16a2b6519f2\"><br /></span><strong><span data-css=\"tve-u-16a2b6519f4\">Ph&aacute;t s&uacute;ng đầu ti&ecirc;n cho h&agrave;nh tr&igrave;nh &ocirc;n thi Đại Học hiệu quả</span></strong></p>\r\n</div>\r\n<div>\r\n<p data-css=\"tve-u-16a2b60cebe\">22/2/2016 - T&ocirc;i vẫn c&ograve;n nhớ như in c&aacute;i ng&agrave;y đ&oacute;. Hừng hực kh&iacute; thế, t&ocirc;i mở kh&oacute;a v&agrave; r&uacute; max ga bằng chiếc xe Wave RS đến nh&agrave; s&aacute;ch Phương Nam. T&acirc;m tr&iacute;, suy nghĩ, thể x&aacute;c - tất cả h&ograve;a l&agrave;m một, hướng tới một mục ti&ecirc;u duy nhất - chỉ một mục ti&ecirc;u&hellip;</p>\r\n<p data-css=\"tve-u-16a2b60cebf\"><strong>T&Igrave;M KIẾM C&Acirc;U TRẢ LỜI &ldquo;L&Agrave;M SAU ĐẬU ĐẠI HỌC?&rdquo;</strong></p>\r\n<p data-css=\"tve-u-16a2b60cec1\">N&oacute; c&agrave;ng gấp r&uacute;t hơn khi t&ocirc;i chỉ c&ograve;n chưa đầy 3 th&aacute;ng&hellip; phải l&agrave; một c&aacute;ch &ocirc;n thi đại học hiệu quả nhất.</p>\r\n<p data-css=\"tve-u-16a2b60cec2\">T&ocirc;i lấy thẻ xe, tiến chậm r&atilde;i như nghe từng nhịp thở&hellip; Trước mặt t&ocirc;i l&agrave; c&aacute;nh cửa nh&agrave; s&aacute;ch, t&ocirc;i kh&aacute; hồi hộp.</p>\r\n<p data-css=\"tve-u-16a2b60cec3\">Bạn biết kh&ocirc;ng? Đ&acirc;y ch&iacute;nh l&agrave; lần đầu ti&ecirc;n t&ocirc;i đi nh&agrave; s&aacute;ch trong suốt 18 năm qua&hellip; kh&ocirc;ng biết bạn đ&atilde; đi lần n&agrave;o chưa nhỉ?</p>\r\n<p data-css=\"tve-u-16a2b60cec4\">Bạn c&oacute; cảm nhận được luồng kh&iacute; lạnh lạnh thổi v&agrave;o người ngay khi ta mở nhẹ cửa&hellip; như chạm v&agrave;o từng tế b&agrave;o của cơ thể&hellip; C&oacute; lẽ đ&acirc;y l&agrave; c&aacute;i ấm &aacute;p của &ldquo;tri thức&rdquo; - nơi bắt đầu của mọi sự thay đổi.</p>\r\n<p data-css=\"tve-u-16a2b60cec5\">Wow&hellip; t&ocirc;i chưa bao giờ thấy nhiều quyển s&aacute;ch như vậy, c&agrave;ng bất ngờ hơn khi n&oacute; được sắp xếp r&otilde; r&agrave;ng, chi tiết v&agrave; cẩn thận.</p>\r\n<p data-css=\"tve-u-16a2b60cec6\">N&agrave;o l&agrave; s&aacute;ch văn học, s&aacute;ch nấu ăn, s&aacute;ch thiếu nhi&hellip; T&ocirc;i đảo mắt, nh&igrave;n quanh v&agrave;i v&ograve;ng&hellip; rồi nhắm thẳng quầy s&aacute;ch &ldquo;&Ocirc;n thi đại học&rdquo; v&agrave; lao thẳng v&agrave;o&hellip;</p>\r\n<p data-css=\"tve-u-16a2b60cec7\">T&ocirc;i nghĩ bụng: &ldquo;Đ&acirc;y ch&iacute;nh l&agrave; nơi gi&uacute;p t&ocirc;i c&oacute; chiến lược &ocirc;n thi đại học hiệu quả rồi.&rdquo;</p>\r\n<p data-css=\"tve-u-16a2b60cec8\">Bấy giờ, niềm tin trong t&ocirc;i c&agrave;ng lớn, như c&oacute; d&ograve;ng điện chạy dọc sống lưng&hellip; t&ocirc;i biết m&igrave;nh&nbsp;<strong>CHẮC CHẮN ĐẬU ĐẠI HỌC.</strong></p>\r\n<p data-css=\"tve-u-16a2b60cec9\">Mất rất l&acirc;u t&ocirc;i mới chọn được những cuốn s&aacute;ch ưng &yacute;&hellip; v&igrave; c&oacute; qu&aacute; nhiều&hellip;</p>\r\n<p data-css=\"tve-u-16a2b60ceca\">&ldquo;&hellip; vậy m&agrave; l&uacute;c trước mấy đứa bạn m&igrave;nh cứ bảo kh&ocirc;ng c&oacute; t&agrave;i liệu &ocirc;n thi&hellip; Thật nực cười&rdquo; - T&ocirc;i thầm nghĩ</p>\r\n<p data-css=\"tve-u-16a2b60cecb\">Kh&aacute; h&agrave;i l&ograve;ng với quyết định ấy, t&ocirc;i nhảy ch&acirc;n s&aacute;o đến quầy t&iacute;nh tiền&hellip; nhưng&hellip; t&ocirc;i đột ngột dừng lại&hellip; t&ocirc;i kh&ocirc;ng biết tại sao?</p>\r\n<p data-css=\"tve-u-16a2b60cecd\"><strong>Một cảm gi&aacute;c rất lạ.</strong></p>\r\n<p data-css=\"tve-u-16a2b60cece\">T&ocirc;i dừng lại ngay tại khu trưng b&agrave;y những cuốn s&aacute;ch b&aacute;n chạy nhất tuần. Một b&igrave;a s&aacute;ch l&agrave;m t&ocirc;i xao xuyến với h&igrave;nh ảnh kh&aacute; bắt mắt v&agrave; tinh nghịch, t&ocirc;i lập tức rời khỏi h&agrave;ng đang đứng đi ngay đến cuốn s&aacute;ch ấy. Cuốn s&aacute;ch tựa đề: &ldquo;T&ocirc;i t&agrave;i giỏi, bạn cũng thế&rdquo;</p>\r\n<p data-css=\"tve-u-16a2b60cecf\">T&ocirc;i muốn mua&hellip; nhưng t&uacute;i tiền kh&ocirc;ng cho ph&eacute;p&hellip; giờ phải l&agrave;m sao đ&acirc;y?</p>\r\n<p data-css=\"tve-u-16a2b60ced0\">Thế l&agrave; t&ocirc;i về nh&agrave; với 2 cuốn s&aacute;ch, n&oacute; kh&ocirc;ng phải l&agrave; s&aacute;ch luyện thi m&agrave; l&agrave; 2 cuốn s&aacute;ch của diễn giả nổi tiếng Adam Khoo &ldquo;T&ocirc;i t&agrave;i giỏi, bạn cũng thế&rdquo;. T&ocirc;i m&atilde;i m&ecirc; đọc n&oacute; trong v&ograve;ng 5 ng&agrave;y liền, v&agrave; t&ocirc;i cảm thấy đ&oacute; l&agrave; điều TUYỆT VỜI nhất m&agrave; t&ocirc;i từng l&agrave;m.</p>\r\n<p data-css=\"tve-u-16a2b60ced1\">Bạn biết kh&ocirc;ng, cuốn s&aacute;ch ấy đ&atilde; gi&uacute;p t&ocirc;i v&agrave; nhiều bạn học sinh học giỏi hơn như cuốn s&aacute;ch&nbsp;<a href=\"https://tuhoc365.vn/toi-lai-may-bay-den-dai-hoc\" target=\"_blank\" rel=\"noopener\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration: underline;\">T&ocirc;i l&aacute;i m&aacute;y bay đến đại</span><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration: underline;\">&nbsp;học</span></a>&nbsp;vậy. Nhưng l&uacute;c đ&oacute;, cuốn TLMBDDH đ&atilde; ra đời đ&acirc;u 😉</p>\r\n<p data-css=\"tve-u-16a2b60ced2\"><strong>Tối ng&agrave;y 27/2/2016</strong>&nbsp;- Thời khắc m&agrave; t&ocirc;i kh&ocirc;ng bao giờ qu&ecirc;n!</p>\r\n<p data-css=\"tve-u-16a2b60ced3\">T&ocirc;i viết thật to - thật r&otilde; - t&ocirc; đi t&ocirc; lại nhiều lần bằng tất cả niềm tin, quyết t&acirc;m v&agrave; &yacute; ch&iacute;, một d&ograve;ng chữ:</p>\r\n<p data-css=\"tve-u-1704d0c1343\">Đậu v&agrave;o&nbsp;<strong>trường đại học Ngoại Thương HCM</strong>&nbsp;với số điểm 27!</p>\r\n<p data-css=\"tve-u-16a2b60ced7\">Mục ti&ecirc;u m&agrave; khi đ&atilde; đạt được t&ocirc;i vẫn kh&ocirc;ng nghĩ đ&oacute; l&agrave; sự thật.</p>\r\n<p data-css=\"tve-u-16a2b60ced8\">Những ng&agrave;y đầu ti&ecirc;n của cuộc h&agrave;nh tr&igrave;nh mang t&ecirc;n &ocirc;n thi đại học hiệu quả&hellip;</p>\r\n<p data-css=\"tve-u-16a2b60ced9\">Chỉ nh&igrave;n v&agrave;o mục ti&ecirc;u ấy th&ocirc;i cũng khiến t&ocirc;i ph&igrave; cười v&agrave; nghĩ vu vơ, nghi ngờ bản th&acirc;n m&igrave;nh &ldquo;Chả biết c&oacute; l&agrave;m được hay kh&ocirc;ng nữa?&rdquo;</p>\r\n<p data-css=\"tve-u-16a2b60ceda\">Khi t&ocirc;i n&oacute;i với những người bạn của m&igrave;nh, ai cũng bảo t&ocirc;i đi&ecirc;n, ảo tưởng sức mạnh. Một số cười thẳng v&agrave;o mặt t&ocirc;i bảo rằng &ldquo;h&ocirc;m nay m&agrave;y qu&ecirc;n uống thuốc&rdquo; , &ldquo;lắp n&atilde;o v&agrave;o rồi n&oacute;i chuyện với tao nh&aacute;&rdquo;</p>\r\n<p data-css=\"tve-u-16a2b60cedb\">Bạn thử đo&aacute;n xem, việc tiếp theo t&ocirc;i sẽ l&agrave;m l&agrave; g&igrave;? C&oacute; phải bắt tay v&agrave; &ldquo;c&agrave;y ng&agrave;y c&agrave;y đ&ecirc;m&rdquo; như hầu hết những người kh&aacute;c&gt;</p>\r\n<p data-css=\"tve-u-16a2b60cedc\">Đ&oacute; l&agrave; một c&aacute;ch kh&aacute; hay&hellip; nhưng chưa thật sự th&ocirc;ng minh.</p>\r\n<p data-css=\"tve-u-16a2b60cedd\">Trong 2 ng&agrave;y đầu ti&ecirc;n t&ocirc;i &nbsp;bắt tay l&ecirc;n chiến lược &ocirc;n thi đại học hiệu quả, &nbsp;lập&nbsp;<a href=\"https://tuhoc365.vn/huong-dan-lap-va-hoan-thanh-thoi-gian-bieu-hoc-tap/\" target=\"_blank\" rel=\"noopener\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration: underline;\">thời gian biểu học tập</span>.</a></p>\r\n<p data-css=\"tve-u-16a2b60cede\">T&ocirc;i tự hỏi m&igrave;nh đang ở đ&acirc;y, rồi nh&igrave;n về ph&iacute;a mục ti&ecirc;u, xem liệu m&igrave;nh cần l&agrave;m g&igrave; để đạt được n&oacute;. M&igrave;nh c&ograve;n yếu m&ocirc;n n&agrave;o, chuy&ecirc;n đề n&agrave;o, c&ocirc;ng thức n&agrave;o hay qu&ecirc;n. M&igrave;nh sẽ học t&agrave;i liệu n&agrave;o, kiến thức n&agrave;o trước, kiến thức n&agrave;o sau...</p>\r\n<p data-css=\"tve-u-16a2b60cedf\">Những việc t&ocirc;i đ&atilde; l&agrave;m trong 2 ng&agrave;y đ&oacute; c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; &ldquo;bản đồ ngầm đậu đại học mơ ước&rdquo; &nbsp;- t&ecirc;n chương 6 của cuốn s&aacute;ch T&ocirc;i l&aacute;i m&aacute;y bay đến đại học.</p>\r\n<p data-css=\"tve-u-16a2b60cee0\">Đ&acirc;y chưa phải l&agrave; tất cả những g&igrave; t&ocirc;i muốn n&oacute;i với bạn. H&agrave;nh tr&igrave;nh m&agrave; t&ocirc;i chia sẻ cho bạn c&aacute;ch &ocirc;n thi hiệu quả chỉ mới bắt đầu.</p>\r\n</div>\r\n<div data-tag=\"h1\">\r\n<h1 style=\"list-style-type: none;\" data-css=\"tve-u-16a2b626a2a\"><strong>PH&Aacute;T S&Uacute;NG THỨ HAI CHO H&Agrave;NH TR&Igrave;NH &Ocirc;N THI ĐẠI HỌC HIỆU QUẢ</strong></h1>\r\n</div>\r\n<div data-css=\"tve-u-166d8ec3e44\">\r\n<div>&nbsp;</div>\r\n<div>\r\n<div>\r\n<p data-css=\"tve-u-16aeef3498c\"><br />Bạn cần phải người bạn đồng h&agrave;nh hoặc một nh&oacute;m học tập c&ugrave;ng nhau. Tại sao điều n&agrave;y lại quan trọng?</p>\r\n<p data-css=\"tve-u-16aeef3498e\">Bởi lẽ, ch&iacute;nh ta rất dễ rơi v&agrave;o sức &igrave; của bản th&acirc;n, kh&ocirc;ng kỉ luật được. Nhưng nếu c&oacute; bạn đồng h&agrave;nh, người bạn m&agrave; c&ugrave;ng quyết t&acirc;m, nhiệt huyết giống như bạn, chắc chắn hai bạn sẽ lu&ocirc;n khuy&ecirc;n bảo v&agrave; nỗ lực c&ugrave;ng nhau.</p>\r\n<p data-css=\"tve-u-16aeef3498f\">Đầu ti&ecirc;n, t&ocirc;i t&igrave;m đến Bảo &ndash; một học sinh xuất sắc của lớp v&agrave; cũng l&agrave; người bạn th&acirc;n của m&igrave;nh. Bảo gi&uacute;p t&ocirc;i liệt k&ecirc; tất cả c&aacute;c c&aacute;c kiến thức nền tảng của những m&ocirc;n t&ocirc;i thi &ndash; To&aacute;n L&yacute; H&oacute;a. Từ đ&oacute;, t&ocirc;i&nbsp;<a href=\"https://tuhoc365.vn/8-loi-khuyen-tap-trung-hoc-tap-hieu-qua-nhanh/\" target=\"_blank\" rel=\"noopener\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration: underline;\">tập trung học</span></a>&nbsp;hết tất cả c&aacute;c kiến thức nền tảng của những m&ocirc;n n&agrave;y.</p>\r\n<p data-css=\"tve-u-16aeef34990\">Đ&acirc;y l&agrave; kiến thức cốt l&otilde;i, đặt nền tảng cho những dạng kh&oacute; hơn sau n&agrave;y. T&ocirc;i học l&yacute; thuyết, c&ocirc;ng thức cơ bản thật s&acirc;u, hiểu r&otilde; bản chất của n&oacute;. &nbsp;</p>\r\n<p data-css=\"tve-u-16aeef34991\">Sau đ&oacute; t&ocirc;i l&agrave;m bộ đề thi thử, l&uacute;c n&agrave;y mỗi m&ocirc;n t&ocirc;i cũng đ&atilde; đạt được 6 điểm. &nbsp;L&agrave;m c&agrave;ng nhiều t&ocirc;i c&agrave;ng nhận thấy những bộ đề &ocirc;n thi lu&ocirc;n c&oacute; những phần nền tảng, rất cơ bản để m&igrave;nh được 6 - 7 điểm.<br /><br /></p>\r\n</div>\r\n<div data-css=\"tve-u-16a2b62d160\" data-tag=\"h2\">\r\n<h2 style=\"list-style-type: none;\" data-css=\"tve-u-16aeef3a505\"><strong>PH&Aacute;T S&Uacute;NG THỨ BA CHO H&Agrave;NH TR&Igrave;NH &Ocirc;N THI ĐẠI HỌC HIỆU QUẢ</strong></h2>\r\n</div>\r\n<div>\r\n<p data-css=\"tve-u-16aeef42527\"><br />Bước tiếp theo để &ocirc;n thi đại học hiệu quả, bạn cần c&oacute; một bộ đề m&agrave; gi&uacute;p cho bạn ph&aacute;t triển khả năng l&agrave;m đề của bạn.</p>\r\n<p data-css=\"tve-u-16aeef42529\">Bản th&acirc;n t&ocirc;i l&uacute;c đ&oacute;, đối với m&ocirc;n H&oacute;a, t&ocirc;i lấy độ đề 8 điểm của thầy L&ecirc; Đăng Khương để luyện. Theo phương ph&aacute;p của thầy, t&ocirc;i bắt đầu l&agrave;m đi l&agrave;m lại đến khi đạt 30s/c&acirc;u.</p>\r\n<p data-css=\"tve-u-16aeef4252a\">Đối với m&ocirc;n L&yacute;, t&ocirc;i l&agrave;m những b&agrave;i tập của thầy Đỗ Ngọc H&agrave;, thầy Chu Văn Bi&ecirc;n.</p>\r\n<p data-css=\"tve-u-16aeef4252b\">C&ograve;n To&aacute;n th&igrave; sao?? Những bộ đề của thầy Lưu Huy Thưởng v&agrave; L&ecirc; B&aacute; Trần Phương l&agrave; lựa chọn của t&ocirc;i.</p>\r\n<p data-css=\"tve-u-16aeef4252d\">Đ&acirc;y l&agrave; ba bước m&agrave; đ&atilde; gi&uacute;p t&ocirc;i cải thiện rất nhanh c&ocirc;ng việc học tập của m&igrave;nh v&agrave; n&oacute; cũng sẽ gi&uacute;p bạn rất nhanh, thậm ch&iacute; l&agrave; nhanh hơn cả t&ocirc;i nữa. T&ocirc;i biết bạn đ&atilde; nhận ra nhiều điều tuyệt vời để n&acirc;ng cao điểm số của m&igrave;nh rồi phải kh&ocirc;ng?</p>\r\n<p data-css=\"tve-u-16aeef4252e\">V&agrave; b&acirc;y giờ, bạn c&oacute; thể l&agrave;m những b&agrave;i tập kh&oacute; hơn với mục ti&ecirc;u của bạn. Thật ra, khi bạn đ&atilde; th&agrave;nh thạo những b&agrave;i tập ở dạng trung b&igrave;nh th&igrave; bạn đ&atilde; đi thi được 8-9 điểm l&agrave; điều tất yếu. &nbsp;</p>\r\n<p data-css=\"tve-u-16aeef4252f\">V&agrave; c&ograve;n một điều m&agrave; t&ocirc;i muốn chia sẻ với bạn đ&oacute; l&agrave; sự căng thẳng khi đi thi mặc d&ugrave; kiến thức của m&igrave;nh kh&aacute; ổn về mọi mặt.</p>\r\n<p data-css=\"tve-u-16aeef42531\">Đ&acirc;y cũng l&agrave; một phần cũng kh&ocirc;ng k&eacute;m quan trọn để bạn &ocirc;n thi một c&aacute;ch hiệu quả nhất v&agrave; số điểm của m&igrave;nh nằm ở khoảng n&agrave;o&hellip;</p>\r\n<p data-css=\"tve-u-16aeef42532\">T&ocirc;i với Bảo lập ra một ph&ograve;ng thi m&agrave; ch&uacute;ng t&ocirc;i gọi đ&acirc;y l&agrave; &ldquo;ph&ograve;ng thi ảo&rdquo; - ở đấy, ch&uacute;ng t&ocirc;i thi thử như thi thật gi&uacute;p r&egrave;n luyện t&acirc;m l&yacute; ph&ograve;ng thi để đạt được phong độ cao nhất.</p>\r\n<p data-css=\"tve-u-16aeef42533\">Thực ra đ&oacute; l&agrave; ph&ograve;ng của t&ocirc;i, c&oacute; hai chiếc b&agrave;n học, một cho t&ocirc;i, một cho Bảo. Chiếc đồng hồ cỡ lớn để canh thời gian, c&ugrave;ng bộ đề thi thử chất lượng.</p>\r\n<p data-css=\"tve-u-16aeef42534\">T&ocirc;i bắt đầu&nbsp;<strong>l&agrave;m đi l&agrave;m lại&nbsp;</strong>đề từ năm 2015 trở lại của Bộ gi&aacute;o dục. T&ocirc;i lu&ocirc;n canh thời gian ch&iacute;nh x&aacute;c theo quy định của đề - kh&ocirc;ng hơn kh&ocirc;ng k&eacute;m.</p>\r\n<p data-css=\"tve-u-16aeef42536\">V&agrave; bạn phải hiểu điều n&agrave;y, n&oacute; rất quan trọng:</p>\r\n<p data-css=\"tve-u-16aeef42537\">L&uacute;c mới bắt đầu luyện những đề đầu ti&ecirc;n, điểm cực thấp...rồi dần dần n&oacute; tăng tỷ lệ thuận với số đề l&agrave;m được. Ch&uacute;ng t&ocirc;i cố gắng l&agrave;m v&agrave; tranh đua với nhau xem ai được điểm cao nhất. Mỗi cuộc đua đầy cảm x&uacute;c v&agrave; h&agrave;o hứng lắm.</p>\r\n<p data-css=\"tve-u-16aeef42538\">Đ&oacute; l&agrave; b&agrave;i học, phần thưởng lớn chỉ d&agrave;nh cho những người ki&ecirc;n tr&igrave;, l&agrave;m đều đặn từ đề n&agrave;y sang để kh&aacute;c, học hỏi từ sai lầm v&agrave; tiến l&ecirc;n.</p>\r\n<p data-css=\"tve-u-16aeef42539\">Kỳ thi đến, khi gi&aacute;m thị đọc đế số b&aacute;o danh của m&igrave;nh, t&ocirc;i bước những bước đầy tự tin v&agrave;o vị tr&iacute;. T&ocirc;i đ&atilde; nắm 30% chiến thắng rồi, bạn hiểu điều đ&oacute; khi nh&igrave;n những vẻ mặt lo lắng của những sĩ tử kh&aacute;c&hellip;&nbsp;<br /><br /></p>\r\n</div>\r\n<div data-tag=\"h2\">\r\n<h2 style=\"list-style-type: none;\" data-css=\"tve-u-16a64efc9fe\"><strong>Kết quả tuyệt vời của qu&aacute; tr&igrave;nh \"&ocirc;n thi đại học hiệu quả\"</strong></h2>\r\n</div>\r\n<div>\r\n<p data-css=\"tve-u-16aeef4c0f0\"><br />Chiến lược &ocirc;n thi đại học hiệu quả của t&ocirc;i đ&atilde; th&agrave;nh c&ocirc;ng vang dội. Tuy kh&ocirc;ng đạt được 27 những 26 cũng l&agrave; một kỳ t&iacute;ch phải kh&ocirc;ng? V&agrave; điều quan trọng hơn với bạn, t&ocirc;i đ&atilde; từng mải chơi, mất gốc, kh&ocirc;ng th&iacute;ch học. Thậm ch&iacute;, 3 th&aacute;ng trước khi thi t&ocirc;i chỉ mới học lực trung b&igrave;nh 17 điểm 3 m&ocirc;n. T&ocirc;i đ&atilde; viết n&ecirc;n ph&eacute;p nhiệm m&agrave;u cho ch&iacute;nh m&igrave;nh &ldquo;tăng 9 điểm trong v&ograve;ng 3 th&aacute;ng&rdquo;</p>\r\n<p data-css=\"tve-u-16aeef4c0f2\">B&acirc;y giờ, đến lượt bạn&hellip; chỉ cần bạn TIN v&agrave; QUYẾT T&Acirc;M bạn sẽ l&agrave;m được!</p>\r\n<p data-css=\"tve-u-16aeef4c0f3\">Khi bạn đọc đến d&ograve;ng chữ n&agrave;y, t&ocirc;i tin chắc rằng bạn đ&atilde; biết m&igrave;nh phải l&agrave;m g&igrave; trong những ng&agrave;y th&aacute;ng tiếp theo để học giỏi hơn.</p>\r\n<p data-css=\"tve-u-16aeef4c0f5\">Nhưng liệu đ&oacute; c&oacute; phải l&agrave; tất cả những g&igrave; t&ocirc;i muốn chia sẻ hay kh&ocirc;ng? Liệu đ&oacute; c&oacute; phải l&agrave; c&aacute;ch &ocirc;n thi đại học hiệu quả m&agrave; t&ocirc;i muốn tiết lộ hay kh&ocirc;ng?</p>\r\n<p data-css=\"tve-u-16aeef4c0f6\">C&oacute; rất nhiều phương ph&aacute;p học tập, nhưng đ&acirc;u mới l&agrave; c&aacute;ch &ocirc;n thi đại học hiệu quả nhất?</p>\r\n<p data-css=\"tve-u-16aeef4c0f8\">Đ&oacute; l&agrave; điều t&ocirc;i muốn gửi gắm trong ng&agrave;y h&ocirc;m nay&hellip;.</p>\r\n<p data-css=\"tve-u-16aeef4c0f9\">T&ocirc;i sắp &nbsp;chia sẻ cho bạn một b&iacute; mật! B&iacute; mật về đ&acirc;u l&agrave; c&aacute;ch &ocirc;n thi đại học hiệu quả nhất gi&uacute;p bạn đột ph&aacute; điểm đại học như t&ocirc;i, thậm ch&iacute; c&ograve;n hơn cả t&ocirc;i nữa.</p>\r\n<p data-css=\"tve-u-16aeef4c100\">V&acirc;ng, bạn kh&ocirc;ng nghe nhầm đ&acirc;u, v&agrave; b&iacute; mật l&agrave;:</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div data-tve-style=\"1\">\r\n<div>\r\n<p>Thrive Leads Shortcode could not be rendered, please check it in Thrive Leads Section!</p>\r\n</div>\r\n</div>\r\n<div data-tag=\"h3\">\r\n<h3 style=\"list-style-type: none;\" data-unit=\"px\" data-css=\"tve-u-16a2b63899a\"><strong>SỰ LẶP LẠI</strong></h3>\r\n</div>\r\n<div>\r\n<p data-css=\"tve-u-16aeef54301\"><br />T&ocirc;i kh&ocirc;ng biết bạn l&agrave; ai, bạn sẽ l&agrave;m g&igrave;! Nhưng nếu t&ocirc;i l&agrave; bạn, t&ocirc;i sẽ viết thật to 3 chữ ấy v&agrave;o một tờ giấy&hellip; nhớ như in mỗi khi bắt đầu học&hellip;</p>\r\n<p data-css=\"tve-u-16aeef54302\">H&atilde;y l&agrave;m đ&uacute;ng như vậy! Bởi v&igrave; 3 chữ ấy l&agrave; b&iacute; k&iacute;p &ocirc;n thi đại học hiệu quả nhất của t&ocirc;i.</p>\r\n<p data-css=\"tve-u-16aeef54304\">Như bạn thấy đấy, t&ocirc;i kh&ocirc;ng học những kiến thức mới, kh&oacute; v&agrave; lạ. C&aacute;i m&agrave; t&ocirc;i học ở đ&acirc;y ch&iacute;nh l&agrave; những kiến thức cốt l&otilde;i v&agrave; nền tảng. T&ocirc;i ki&ecirc;n định học đi &nbsp;học lại từng ng&agrave;y, c&oacute; khi v&agrave;i ng&agrave;y chỉ một c&ocirc;ng thức duy nhất - đến nỗi nuốt từng c&ocirc;ng thức, từng định luật v&agrave; từng sự biến đổi của n&oacute;.</p>\r\n<p data-css=\"tve-u-16aeef54305\">Đến một l&uacute;c khi bạn đ&atilde; nhuần nhuyễn những c&ocirc;ng thức, l&yacute; thuyết nền tảng rồi, bạn sẽ l&agrave;m được những b&agrave;i tập kh&oacute; hơn một ch&uacute;t, biết nhận định dạng b&agrave;i để l&agrave;m, hệ thống được c&aacute;c bước l&agrave;m. V&agrave; một điều rất đặc biệt l&agrave; bạn đ&atilde; d&agrave;nh được 6 -7 điểm trong kỳ thi THPT Quốc Gia rồi đấy.</p>\r\n<p data-css=\"tve-u-16aeef54306\">Tiếp đến bạn h&atilde;y bắt đầu học những c&ocirc;ng thức v&agrave; những dạng b&agrave;i kh&oacute; hơn. L&uacute;c n&agrave;y bạn sẽ cảm thấy thật dễ d&agrave;ng khi &ldquo;ăn&rdquo; trọn c&aacute;c dạng n&agrave;y.</p>\r\n<p data-css=\"tve-u-16aeef54307\">B&ecirc;n cạnh đ&oacute;, trong h&agrave;nh tr&igrave;nh &ocirc;n thi đại học hiệu quả, bạn phải cải thiện tốc độ l&agrave;m b&agrave;i của m&igrave;nh. L&agrave;m thế n&agrave;o để c&oacute; thẻ l&agrave;m ch&iacute;nh x&aacute;c với tốc độ một một vận động vi&ecirc;n đua xe tốc độ cao. Đơn giản chỉ l&agrave; việc bạn lặp lại b&agrave;i tập đ&oacute; nhiều nhất c&oacute; thể, nhiều đến nỗi m&agrave; bạn c&oacute; thể chỉ cần nh&igrave;n v&agrave;o dạng b&agrave;i ấy v&agrave; cầm m&aacute;y t&iacute;nh bấm kh&ocirc;ng cần viết ra nh&aacute;p.</p>\r\n<p data-css=\"tve-u-16aeef54308\">H&atilde;y tưởng tượng, bạn nh&igrave;n v&agrave;o b&agrave;i tập m&ocirc;n H&oacute;a, dạng kiềm t&aacute;c dụng với axit, bạn c&oacute; thể nhẩm ngay ra đ&aacute;p &aacute;n m&agrave; kh&ocirc;ng cần phải viết phương tr&igrave;nh. Thật tuyệt vời phải kh&ocirc;ng?</p>\r\n<p data-css=\"tve-u-16aeef54309\">H&atilde;y tưởng tượng bạn nh&igrave;n v&agrave;o chương điện xoay chiều, nh&igrave;n v&agrave;o đoạn mạch của n&oacute; v&agrave; nhẩm ngay ra I, U. Bạn cảm thấy thế n&agrave;o?</p>\r\n<p data-css=\"tve-u-16aeef5430b\">T&ocirc;i biết bạn đang rất h&agrave;o hứng, m&ocirc;i bạn vừa mỉm một nụ cười khi đạt được những điều m&agrave; t&ocirc;i vừa n&oacute;i. Trong l&ograve;ng bạn dường như vừa c&oacute; một luồng kh&iacute; n&oacute;ng chạy qua khiến bạn rạo rực đ&uacute;ng chứ?</p>\r\n<p data-css=\"tve-u-16aeef5430c\">Đ&acirc;y l&agrave; những g&igrave; m&agrave; t&ocirc;i muốn chia sẻ với bạn. C&oacute; thể phương ph&aacute;p tr&ecirc;n ph&ugrave; hợp với t&ocirc;i, nhưng chưa chắc ph&ugrave; hợp với bạn.</p>\r\n<p data-css=\"tve-u-16aeef5430d\">T&ocirc;i biết rằng bạn đ&atilde; thử nhiều c&aacute;ch để l&ecirc;n chiến học &ocirc;n thi đại học hiệu quả nhưng chưa th&agrave;nh c&ocirc;ng. Đ&oacute; kh&ocirc;ng phải l&agrave; lỗi của bạn. C&oacute; thể những giải ph&aacute;p m&agrave; bạn đ&atilde; từng thử chưa được cấu tr&uacute;c một c&aacute;ch đ&uacute;ng đắn, c&oacute; thể đ&oacute; l&agrave; điều khiển bạn chưa h&agrave;i l&ograve;ng với việc học tập của m&igrave;nh. Nếu bạn lo lắng, v&igrave; m&igrave;nh kh&oacute; c&oacute; thể học tốt l&ecirc;n được, điều đ&oacute; kh&ocirc;ng đ&uacute;ng. Bạn chỉ cần một người đ&uacute;ng đắn để hướng dẫn bạn. C&oacute; thể những người kh&aacute;c chia sẻ cho bạn chỉ bởi v&igrave; muốn bạn trả tiền th&ecirc;m cho họ n&ecirc;n họ c&ograve;n giữ lại điều g&igrave; đ&oacute;. T&ocirc;i hiểu điều đ&oacute;, t&ocirc;i biết bạn đang nghĩ như thế.</p>\r\n<p data-css=\"tve-u-16aeef5430e\">T&ocirc;i kh&aacute;c với tất cả họ. T&ocirc;i thực sự muốn bạn th&agrave;nh c&ocirc;ng, muốn bạn đạt được số điểm mục ti&ecirc;u của m&igrave;nh, muốn bạn đậu v&agrave;o trường đại học bạn mơ ước. Đ&oacute; ch&iacute;nh l&agrave; l&yacute; do v&igrave; sao t&ocirc;i ở đ&acirc;y c&ugrave;ng Tự Học 365 v&agrave; gia đ&igrave;nh học sinh Ngoại Hạng.</p>\r\n<p data-css=\"tve-u-16aeef5430f\">Việc t&ocirc;i n&oacute;i với bạn những điều n&agrave;y cũng sẽ v&ocirc; dụng nếu như bạn kh&ocirc;ng bắt tay v&agrave;o h&agrave;nh động ngay. T&ocirc;i hiểu r&otilde; được việc những bước đầu ti&ecirc;n trong h&agrave;nh tr&igrave;nh &ocirc;n thi đại học hiệu quả sẽ kh&oacute; khăn thế n&agrave;o, bạn phải kỷ luật bạn th&acirc;n ra sao. Bởi v&igrave; t&ocirc;i đ&atilde; từng giống bạn, thậm ch&iacute; c&ograve;n tệ hơn bạn nữa.</p>\r\n<p data-css=\"tve-u-16aeef54310\">H&atilde;y d&aacute;n tờ mục ti&ecirc;u của m&igrave;nh l&ecirc;n tr&ecirc;n b&agrave;n học để n&oacute; l&agrave;m kim chỉ nam để hướng bạn tới v&ugrave;ng đất của những người th&agrave;nh c&ocirc;ng.</p>\r\n<p data-css=\"tve-u-16aeef54312\">T&ocirc;i đợi tin tốt l&agrave;nh từ bạn.</p>\r\n<p data-css=\"tve-u-16aeef54313\">Nguyễn Đức Huy</p>\r\n<p data-css=\"tve-u-16aeef61d2c\"><strong><span data-css=\"tve-u-1704d09335d\">P.S.</span></strong><span data-css=\"tve-u-1704d093364\">&nbsp;Nếu bạn đ&atilde; đọc đến hết b&agrave;i viết n&agrave;y, h&atilde;y gi&uacute;p t&ocirc;i lan tỏa n&oacute; đến với những người bạn của bạn, những người đang mắc kẹt trong học tập v&agrave; cần được sự trợ gi&uacute;p thật sự.</span></p>\r\n<p data-css=\"tve-u-16bfeb4a0f3\"><span data-css=\"tve-u-1704d09336b\">Vậy l&agrave;, bạn đ&atilde; biết được c&aacute;ch &ocirc;n thi đại học hiệu quả rồi, bắt tay v&agrave;o h&agrave;nh động ngay th&ocirc;i!</span></p>\r\n</div>', 'https://tuhoc365.vn/wp-content/uploads/2018/10/B%C3%AD-K%C3%ADp-%C3%94n-Thi-%C4%90%E1%BA%A1i-H%E1%BB%8Dc-T%C4%83ng-9-%C4%90i%E1%BB%83m-Trong-3-Th%C3%A1ng-650x391.jpg', '2020-07-10 09:45:47', '2020-07-10 09:45:47', 12),
(6, 'Ôn thi THPT quốc gia theo chiến lược nào?', '<p>Để đạt hiệu quả cao trong kỳ thi THPT quốc gia cần c&oacute; chiến lược học tập ph&ugrave; hợp. Sau đ&acirc;y l&agrave; 4 giai đoạn quan trọng m&agrave; mỗi học sinh n&ecirc;n x&acirc;y dựng.</p>\r\n<div>\r\n<p><strong>Khởi động - nắm chắc kiến thức s&aacute;ch gi&aacute;o khoa<br /></strong></p>\r\n<p>Mỗi học sinh n&ecirc;n ghi nhớ &ldquo;S&aacute;ch gi&aacute;o khoa lu&ocirc;n đ&uacute;ng&rdquo;, hay &iacute;t nhất nội dung trong đề thi của Bộ GD&amp;ĐT đều nằm trong s&aacute;ch gi&aacute;o khoa. V&igrave; vậy, trước khi bước v&agrave;o cuộc đua đến c&aacute;c trường đại học, cao đẳng, bạn phải c&oacute; bước khởi động kỹ, &ocirc;n lại kiến thức lớp 10, 11 đồng thời học v&agrave; nắm được c&aacute;c kiến thức cơ bản lớp 12.</p>\r\n<p>C&aacute;c bạn kh&ocirc;ng n&ecirc;n qu&aacute; hấp tấp, vội v&agrave;ng, đốt ch&aacute;y giai đoạn bắt đầu &ocirc;n thi đại học lu&ocirc;n. Như vậy, bạn sẽ rất dễ nản v&igrave; c&ugrave;ng l&uacute;c phải nhận một lượng kiến thức qu&aacute; lớn, mất phương hướng v&agrave; qu&aacute; tr&igrave;nh luyện thi đại học sẽ kh&ocirc;ng hiệu quả.</p>\r\n<table style=\"width: 660px;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div><img style=\"height: auto; width: 660px;\" title=\"null\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/Ycgmvlbp/2015_04_22/chien_luoc_on_thi_1.jpg\" alt=\"Chiến lược &ocirc;ng thi qua h&igrave;nh vẽ.\" data-title=\"null\" /></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Chiến lược &ocirc;n thi qua h&igrave;nh vẽ.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Chạy bền - trang bị kiến thức &ocirc;n thi THPT quốc gia</strong></p>\r\n<p>Sau khi khởi động, bạn đ&atilde; nắm được c&aacute;c kiến thức cơ bản, c&oacute; thể chuyển sang giai đoạn chạy bền, trang bị to&agrave;n diện kiến thức v&agrave; kỹ năng cần thiết để vượt qua kỳ thi THPT quốc gia năm 2015.</p>\r\n<p>Đ&acirc;y l&agrave; giai đoạn bước đầu trong thời kỳ &ocirc;n luyện vất vả. Trước hết, bạn cần &ocirc;n lại từng phần kiến thức được tiếp thu ở giai đoạn 1 theo mỗi chuy&ecirc;n đề tương ứng cấu tr&uacute;c đề thi THPT quốc gia của Bộ GD&amp;ĐT. Đồng thời, d&agrave;nh nhiều thời gian để giải c&aacute;c b&agrave;i tập để r&egrave;n luyện th&ecirc;m về phương ph&aacute;p, cũng như r&uacute;t ra những kinh nghiệm cho bản th&acirc;n. Cuối mỗi chuy&ecirc;n đề, bạn cần tự kiểm tra, đ&aacute;nh gi&aacute; lại kiến thức.</p>\r\n<p>Đặc biệt, trong giai đoạn n&agrave;y, học sinh ch&uacute; &yacute; kh&ocirc;ng n&ecirc;n học nhồi nh&eacute;t qu&aacute; nhiều kiến thức. N&ecirc;n học từ từ, học đến đ&acirc;u chắc đến đ&oacute; để biết c&aacute;ch vận dụng kiến thức v&agrave;o giải quyết b&agrave;i tập.</p>\r\n<p><strong>Tăng tốc- r&egrave;n luyện phương ph&aacute;p, kỹ năng</strong></p>\r\n<p>Trong qu&aacute; tr&igrave;nh &ocirc;n thi THPT quốc gia, việc tăng tốc l&agrave; điều tất yếu v&agrave; quan trọng. Nếu bạn đ&atilde; nắm được kiến thức, hiểu v&agrave; &aacute;p dụng v&agrave;o giải quyết b&agrave;i tập th&igrave; đ&atilde; đến l&uacute;c bạn cần tăng tốc, ho&agrave;n thiện th&ecirc;m về kỹ năng l&agrave;m b&agrave;i của bản th&acirc;n, tiếp cận v&agrave; l&agrave;m quen những dạng b&agrave;i kh&aacute;c nhau.</p>\r\n<p>Người học n&ecirc;n tập trung luyện c&aacute;c đề thi chất lượng được bi&ecirc;n soạn theo cấu tr&uacute;c quy định của Bộ GD&amp;ĐT trong khung giờ quy định v&agrave; nắm được c&aacute;c phương ph&aacute;p điển h&igrave;nh để giải những dạng b&agrave;i tập thường gặp.</p>\r\n<p>Ngo&agrave;i ra, nếu bạn mong muốn đạt 9 đến 10 điểm/m&ocirc;n, cần phải học, bổ sung phương ph&aacute;p, tư duy đặc biệt để giải nhanh, ch&iacute;nh x&aacute;c c&aacute;c dạng b&agrave;i tập trong đề thi.</p>\r\n<p><strong>Về đ&iacute;ch - tối đa h&oacute;a điểm số dựa tr&ecirc;n năng lực</strong></p>\r\n<p>Theo ph&acirc;n t&iacute;ch của c&aacute;c gi&aacute;o vi&ecirc;n, kinh nghiệm những người đ&atilde; vượt vũ m&ocirc;n, th&aacute;ng cuối c&ugrave;ng trước cuộc thi rất quan trọng. Đ&acirc;y ch&iacute;nh l&agrave; giai đoạn để c&aacute;c bạn tối đa h&oacute;a điểm số dựa tr&ecirc;n năng lực v&agrave;o thời điểm hiện tại.</p>\r\n<p>C&aacute;c bạn chỉ n&ecirc;n bắt đầu giai đoạn về đ&iacute;ch trong khoảng thời gian 45 đến 60 ng&agrave;y trước kỳ thi. Nếu về đ&iacute;ch qu&aacute; sớm sẽ l&agrave;m ảnh hưởng hiệu quả &ocirc;n luyện v&agrave; &ldquo;điểm rơi phong độ&rdquo;. Ngược lại, về đ&iacute;ch qu&aacute; muộn cũng khiến kh&ocirc;ng kịp hệ thống kiến thức, lấp lỗ hổng ở c&aacute;c chuy&ecirc;n đề c&ograve;n yếu.</p>\r\n<p>Đồng thời, trong giai đoạn về đ&iacute;ch, với mỗi mục ti&ecirc;u điểm số ri&ecirc;ng, c&aacute;c bạn cần c&oacute; phương ph&aacute;p học, ch&uacute; trọng những chuy&ecirc;n đề tương ứng.</p>\r\n<p>Với những người học lực trung b&igrave;nh, n&ecirc;n học lại to&agrave;n bộ phần l&yacute; thuyết, kiến thức căn bản trong s&aacute;ch gi&aacute;o khoa, tập trung l&agrave;m c&aacute;c b&agrave;i tập dễ v&agrave; trung b&igrave;nh thuộc nội dung kiến thức ở mức độ nhận biết, th&ocirc;ng hiểu trong cấu tr&uacute;c đề thi THPT quốc gia.</p>\r\n<p>Những bạn học lực kh&aacute;, cần r&agrave; so&aacute;t, &ocirc;n tập lại phần l&yacute; thuyết, kiến thức căn bản. B&ecirc;n cạnh đ&oacute;, nắm được c&aacute;c phương ph&aacute;p giải b&agrave;i tập kh&oacute; v&agrave; lưu &yacute; tr&aacute;nh mất điểm ở b&agrave;i tập dễ, trung b&igrave;nh.</p>\r\n<p>Ngo&agrave;i ra, để l&agrave;m được c&aacute;c c&acirc;u hỏi thuộc mức độ vận dụng cao, bạn cần phải nắm thật chắc kiến thức căn bản.</p>\r\n<p>Những th&ocirc;ng tin tr&ecirc;n được thầy c&ocirc; tại trung t&acirc;m&nbsp;<em>Học m&atilde;i</em>&nbsp;đ&uacute;c r&uacute;t kinh nghiệm.</p>\r\n</div>', 'https://znews-photo.zadn.vn/w660/Uploaded/Ycgmvlbp/2015_04_22/chien_luoc_on_thi_1.jpg', '2020-07-10 09:58:55', '2020-07-10 09:58:55', 12);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Nameless',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avg_mark` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `major_id` int(10) UNSIGNED DEFAULT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `title`, `body`, `feature_img`, `avg_mark`, `created_at`, `updated_at`, `major_id`, `location_id`) VALUES
(1, 'ĐẠI HỌC BÁCH KHOA - ĐẠI HỌC QUỐC GIA TP.HCM', '<p>sdffffffffffffffffffffff</p>', 'https://edu2review.com/upload/article-images/2018/08/8360/1920x1080_hoc-phi-dai-hoc-bach-khoa-thanh-pho-ho-chi-minh-cover.jpg', 23, '2020-07-09 10:28:14', '2020-07-09 10:28:14', 1, 1),
(2, 'Đại học Công Nghệ Thông Tin - Đại Học Quốc Gia TPHCM', '<p>321</p>', 'https://dean2020.edu.vn/wp-content/uploads/2019/03/cong-nghe-thong-tin.jpg', 21, '2020-07-09 10:47:25', '2020-07-09 10:47:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dang Ngoc Tan', 'dangngoctan2012@gmail.com', NULL, '$2y$10$CXU2w/raHFNcOnvxMIjmiu55DMphDbxPlCalvT4WRsHzd8Wiu14j6', '1594380828.jpg', NULL, '2020-07-10 04:10:14', '2020-07-10 04:33:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
