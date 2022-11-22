-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 23, 2022 lúc 07:04 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sale`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name_admin` text NOT NULL,
  `email_admin` text NOT NULL,
  `pass_admin` text NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name_admin`, `email_admin`, `pass_admin`, `level`) VALUES
(1, 'Bảo Sơn', 'toilaone12@gmail.com', '25f9f97067956c307c379a0c1990b50b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name_cart` text NOT NULL,
  `quantity_cart` int(11) NOT NULL,
  `price_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cate_id`, `name`, `image`) VALUES
(1, 'Moblie Android', 'http://192.168.43.42/FricaShop/admin/img/android.png'),
(5, 'Back-end', 'http://192.168.43.42/FricaShop/admin/img/BE.png'),
(6, 'Front-end', 'http://192.168.43.42/FricaShop/admin/img/FE.png'),
(21, 'IOS Developer', 'http://192.168.43.42/FricaShop/admin/img/IOS.jpeg'),
(22, 'Lập trình nhúng (IoT)', 'http://192.168.43.42/FricaShop/admin/img/IoT.jpeg'),
(23, 'Framework', 'http://192.168.43.42/FricaShop/admin/img/Framework.png'),
(24, 'Tester', 'http://192.168.43.42/FricaShop/admin/img/tester.jpeg'),
(25, 'BA', 'http://192.168.43.42/FricaShop/admin/img/BA.jpeg'),
(26, 'Designer', 'http://192.168.43.42/FricaShop/admin/img/designer.jpeg'),
(27, 'AI', 'http://192.168.43.42/FricaShop/admin/img/Ai.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_fb`
--

CREATE TABLE `comment_fb` (
  `id` int(11) NOT NULL,
  `blog_id` text NOT NULL,
  `img_blog` text NOT NULL,
  `name_blog` text NOT NULL,
  `detail_blog` text NOT NULL,
  `date_blog` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment_fb`
--

INSERT INTO `comment_fb` (`id`, `blog_id`, `img_blog`, `name_blog`, `detail_blog`, `date_blog`) VALUES
(1, '1', 'http://192.168.43.42/FricaShop/webservice/images/1796504173_1651593989.jpeg', 'Sơn', 'Sản phẩm tốt đáng sử dụng', '2022-05-27 08:42:17'),
(2, '3', 'http://192.168.43.42/fricashop/webservice/images/16482080391648208037915.png', 'Nguyễn Viết Nam', 'Sản phẩm ưu chuộng năm 2022', '2022-06-10 03:27:21'),
(3, '3', 'http://192.168.43.42/fricashop/webservice/images/16482080391648208037915.png', 'Nguyễn Viết Nam', 'Tôi rất thích sản phẩm này', '2022-06-10 11:20:21'),
(15, '3', 'http://192.168.43.42/fricashop/webservice/images/16482080391648208037915.png', 'Nguyễn Viết Nam', 'Hay', '2022-06-10 05:07:15'),
(53, '1', 'http://192.168.43.42/fricashop/webservice/images/16482080391648208037915.png', 'Kiều Đặng Bảo Sơn', 'i Like it!', '2022-06-10 23:35:23'),
(55, '1', 'http://192.168.43.42/fricashop/webservice/images/16482080391648208037915.png', 'Kiều Đặng Bảo Sơn', 'i like it every thing', '2022-06-11 01:06:11'),
(57, '1', 'http://192.168.43.42/fricashop/webservice/images/16482079901648207988928.png', 'Kiều Đặng Bảo Sơn', 'brilliant, good', '2022-06-11 02:04:54'),
(58, '1', 'http://192.168.43.42/fricashop/webservice/images/16482079901648207988928.png', 'Kiều Đặng Bảo Sơn', 'aaa', '2022-06-11 11:34:13'),
(59, '2', 'http://192.168.43.42/fricashop/webservice/images/16482079901648207988928.png', 'Kiều Đặng Bảo Sơn', 'xuat sac tuyet voi', '2022-06-11 13:26:38'),
(64, '1', 'http://192.168.43.42/FricaShop/webservice/images/151430008_1654955628.jpeg', 'Kiều Đặng Bảo Sơn', 'abc', '2022-06-14 23:17:02'),
(65, '1', 'http://192.168.43.42/FricaShop/webservice/images/151430008_1654955628.jpeg', 'Kiều Đặng Bảo Sơn', 'aaa', '2022-06-14 23:17:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_product`
--

CREATE TABLE `comment_product` (
  `id_comment` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name_comment` text NOT NULL,
  `desc_comment` text NOT NULL,
  `time_comment` date NOT NULL,
  `blog_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment_product`
--

INSERT INTO `comment_product` (`id_comment`, `product_id`, `name_comment`, `desc_comment`, `time_comment`, `blog_id`) VALUES
(73, 1, 'Hải', 'Hài lòng!', '2022-05-31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id_lh` int(11) NOT NULL,
  `ten_lh` text NOT NULL,
  `email_lh` text NOT NULL,
  `sdt_lh` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id_lh`, `ten_lh`, `email_lh`, `sdt_lh`) VALUES
(1, 'Kiều Đặng Bảo Sơn', 'kdbs3005@gmail.com', '0399569112');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `hinh_anh` text NOT NULL,
  `ten_khach_hang` varchar(100) NOT NULL,
  `tuoi` int(11) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `hinh_anh`, `ten_khach_hang`, `tuoi`, `sdt`, `email`, `diachi`, `matkhau`) VALUES
(1, 'http://192.168.43.42/FricaShop/webservice/images/1511109606.jpeg', 'Kiều Đặng Bảo Son', 21, '0386278998', 'toilaone12@gmail.com', 'Hà Nội', 'f42f8e34130e8e4b685091bceb692b86'),
(4, 'http://192.168.43.42/fricashop/admin/img/astronaut3.png', 'Nguyễn Viết Nam', 25, '0399569112', 'bokazem69@gmail.com', 'Nam Định', '2fac92d5dd6459faf2281529d8f84df8'),
(6, 'http://192.168.43.42/FricaShop/admin/img/white_background.jpeg', 'Phan Nhật Ánh', 22, '84331123315', 'son3005@gmail.com', 'Thái Nguyên', 'bean2001'),
(7, 'http://192.168.43.42/FricaShop/admin/img/white_background.jpeg', 'Tuấn', 25, '0333123445', 'abc@gmail.com', 'Nghệ An', 'f42f8e34130e8e4b685091bceb692b86'),
(8, 'http://192.168.43.42/fricashop/admin/img/astronaut3.png', 'Mai Nam Hà', 34, '0384433123', 'aaa33@gmail.com', 'Thái Nguyên', 'f42f8e34130e8e4b685091bceb692b86');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_cart`
--

CREATE TABLE `detail_cart` (
  `id_cart_detail` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `image_cart` text NOT NULL,
  `ten_sp` text NOT NULL,
  `so_luong` int(11) NOT NULL,
  `gia_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `detail_cart`
--

INSERT INTO `detail_cart` (`id_cart_detail`, `id_cart`, `image_cart`, `ten_sp`, `so_luong`, `gia_sp`) VALUES
(843, 49, 'http://192.168.43.42/FricaShop/admin/img/html,css.jpeg', 'HTML,CSS Basic', 1, 5699000),
(844, 49, 'http://192.168.43.42/FricaShop/admin/img/java_android.jpeg', 'Android (Ngôn ngữ Java)', 1, 3999000),
(845, 49, 'http://192.168.43.42/FricaShop/admin/img/Laravel.png', 'Laravel', 1, 3599000),
(846, 11, 'http://192.168.43.42/FricaShop/admin/img/Laravel.png', 'Laravel', 1, 3599000),
(847, 11, 'http://192.168.43.42/FricaShop/admin/img/flutter.png', 'Flutter', 1, 2999000),
(848, 11, 'http://192.168.43.42/FricaShop/admin/img/html,css.jpeg', 'HTML,CSS Basic', 1, 5699000),
(849, 58, 'http://192.168.43.42/FricaShop/admin/img/html,css.jpeg', 'HTML,CSS Basic', 1, 5699000),
(850, 58, 'http://192.168.43.42/FricaShop/admin/img/java_android.jpeg', 'Android (Ngôn ngữ Java)', 3, 11997000),
(851, 99, 'http://192.168.43.42/FricaShop/admin/img/PHP.jpeg', 'PHP Advanced', 2, 17998000),
(852, 99, 'http://192.168.43.42/FricaShop/admin/img/Laravel.png', 'Laravel', 1, 3599000),
(853, 11, 'http://192.168.43.42/FricaShop/admin/img/flutter.png', 'Flutter', 1, 2999000),
(854, 11, 'http://192.168.43.42/FricaShop/admin/img/PHP.jpeg', 'PHP Advanced', 1, 8999000),
(855, 81, 'http://192.168.43.42/FricaShop/admin/img/ReactNative.png', 'React Native cơ bản', 10, 53990000),
(856, 65, 'http://192.168.43.42/FricaShop/admin/img/html,css.jpeg', 'HTML,CSS Basic', 1, 5699000),
(857, 35, 'http://192.168.43.42/FricaShop/admin/img/flutter.png', 'Flutter', 1, 2999000),
(858, 53, 'http://192.168.43.42/FricaShop/admin/img/flutter.png', 'Flutter', 5, 2999000),
(859, 53, 'http://192.168.43.42/FricaShop/admin/img/PHP.jpeg', 'PHP Advanced', 1, 8999000),
(860, 53, 'http://192.168.43.42/FricaShop/admin/img/C++++.png', 'C# dành cho đa nền tảng', 1, 1999000),
(861, 3, 'http://192.168.43.42/FricaShop/admin/img/html,css.jpeg', 'HTML,CSS Basic', 1, 5699000),
(862, 44, 'http://192.168.43.42/FricaShop/admin/img/flutter.png', 'Flutter', 1, 2999000),
(863, 85, 'http://192.168.43.42/FricaShop/admin/img/PHP.jpeg', 'PHP Advanced', 1, 8999000),
(864, 17, 'http://192.168.43.42/FricaShop/admin/img/PHP.jpeg', 'PHP Advanced', 1, 8999000),
(865, 57, 'http://192.168.43.42/FricaShop/admin/img/java_android.jpeg', 'Android (Ngôn ngữ Java)', 1, 3999000),
(866, 61, 'http://192.168.43.42/FricaShop/admin/img/Ruby.png', 'Khóa học Ruby cơ bản', 2, 2999000),
(867, 17, 'http://192.168.43.42/FricaShop/admin/img/swift.jpeg', 'Swift cơ bản', 3, 8997000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id_fb` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `bai_viet` text NOT NULL,
  `hinh_anh_bai_viet` text NOT NULL,
  `so_luot_thich` int(11) NOT NULL,
  `so_luot_binh_luan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id_fb`, `id_kh`, `bai_viet`, `hinh_anh_bai_viet`, `so_luot_thich`, `so_luot_binh_luan`) VALUES
(1, 1, 'Sản phẩm mới nhất của chúng tôi!', 'http://192.168.43.42/FricaShop/webservice/images/151430008_1654955628.jpeg', 4, 63),
(3, 4, 'Sản phẩm ưu chuộng năm 2022', 'http://192.168.43.42/fricashop/images/16482080391648208037915.png', 2, 1),
(20, 1, 'khoa hoc yeu thich trong thang 6 nam 2022', 'http://192.168.43.42/FricaShop/webservice/images/1213565331_1654955918.jpeg', 0, 0),
(21, 1, 'Sản phẩm đáng đc đánh giá cao ', 'http://192.168.43.42/FricaShop/webservice/images/1684398644_1654407845.jpeg', 0, 0),
(28, 1, 'Nhung khoa hoc duoc uu chuong nhat', 'http://192.168.43.42/FricaShop/webservice/images/1989067445_1655353322.jpeg', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `image_news` text NOT NULL,
  `title_news` text NOT NULL,
  `desc_news` text NOT NULL,
  `time_news` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_news`, `image_news`, `title_news`, `desc_news`, `time_news`) VALUES
(1, 'http://192.168.55.103/FricaShop/admin/img/naver.png', 'Tập đoàn Naver lập nhóm lập trình AI tại VN', 'Naver hợp tác với Đại học Bách khoa Hà Nội, Học viện Công nghệ Bưu chính Viễn Thông Hà Nội lập nhóm lập trình và nghiên cứu về AI.\r\n\r\nCuối tháng 2, tập đoàn công nghệ lớn của Hàn Quốc là Naver chính thức khai trương Trung tâm Lập trình Naver Việt Nam tại TP HCM. Dự kiến, từ nay đến 2023, trung tâm sẽ tuyển dụng hơn 300 nhân sự tại Việt Nam cho những dự án của mình.\r\n\r\nÔng Song Min Cheol - Giám đốc Trung tâm Lập trình Naver Việt Nam mới đây, đã có những chia sẻ về các dự án của tập đoàn, nguồn nhân lực IT tại Việt Nam cùng kế hoạch hợp tác với Đại học Bách khoa Hà Nội (HUST), và Học viện Công nghệ Bưu chính Viễn thông Hà Nội (PTIT).\r\n</br>\r\n- Các lập trình viên tại trung tâm đang và sẽ thực hiện các dự án gì?\r\n</br>\r\n- Hiện tại, các lập trình viên tại trung tâm đang tham gia vào các dự án phát triển dịch vụ hướng đến thị trường toàn cầu của Naver, như VLive (nền tảng giải trí phát sóng trực tuyến, kết nối nghệ sĩ và người hâm mộ), Vibe (nền tảng âm nhạc lớn tại Hàn Quốc), Webtoon (truyện tranh mạng), Work (nền tảng công cụ làm việc tích hợp nhiều tiện ích: email, calender, drive...)\r\n</br>\r\nTôi kỳ vọng trong tương lai các lập trình viên tại trung tâm sẽ không chỉ đơn thuần đảm nhận việc lập trình cho những dịch vụ vốn có của Naver, mà còn có thể tự đưa ra ý tưởng cải thiện tính năng cho dịch vụ, trực tiếp lên kế hoạch phát triển, chủ động tạo ra những dịch vụ tốt hơn.\r\n</br>\r\n- Dự án trọng điểm hiện tại của trung tâm là gì?\r\n</br>\r\n- Hiện tại, Trung tâm lập trình Naver Việt Nam vẫn đang trong giai đoạn đầu sau khi thành lập nên chúng tôi vẫn chưa chọn ra các dự án trọng điểm. Tuy nhiên, sắp tới, trong số các dự án phát triển dịch vụ hướng đến thị trường toàn cầu, chúng tôi sẽ chọn lựa ra dự án \"đinh\" của trung tâm để đẩy mạnh đầu tư, nghiên cứu và giúp tập đoàn nhanh chóng chiếm ưu thế trên thị trường toàn cầu.\r\n</br>\r\nThêm vào đó, chúng tôi dự kiến sẽ hợp tác cùng hai trung tâm nghiên cứu AI đặt tại Đại học Bách Khoa Hà Nội (HUST) và Học viện Công nghệ Bưu chính Viễn thông Hà Nội (PTIT) để thành lập nhóm lập trình trí tuệ nhân tạo (AI), đồng thời tập trung đầu tư cho các dự án nghiên cứu về AI. Nhóm sẽ hoạt động chính thức tại văn phòng Naver Việt Nam ở Hà Nội.\r\n</br>\r\n- Naver có kế hoạch triển khai phát triển sản phẩm dành riêng cho thị trường Việt Nam thế nào?\r\n</br>\r\n- Ngay từ khi quyết định \"lấn sân\" sang thị trường Việt Nam, ban lãnh đạo tập đoàn cũng đã muốn phát triển dịch vụ cho người dùng tại đây. Đặc biệt là khi CEO mới nhậm chức, tập đoàn càng đẩy mạnh phát triển ở thị trường toàn cầu, trong đó có Việt Nam. Hiện tại, chúng tôi đang tuyển thêm nhiều nhân sự am hiểu sở thích và nhu cầu của người dùng sở tại để phát triển dịch vụ dành riêng cho thị trường Việt Nam.\r\n</br>\r\nKhông những vậy, với xuất phát điểm là thị trường Việt Nam, tôi mong muốn dịch vụ này sẽ tiếp tục vươn đến thị trường Châu Á và tiến ra toàn cầu. Mục tiêu của chúng tôi là giúp trung tâm trở thành đơn vị lập trình số một Châu Á về nghiên cứu AI.\r\n</br>\r\n- Ông đánh giá như thế nào về chất lượng nhân sự tại Việt Nam?\r\n</br>\r\n- Trong thời gian qua, tôi đã có cơ hội làm việc với các lập trình viên đến từ khắp nơi trên thế giới như: Hàn Quốc, Nhật Bản, Thái Lan, Đài Loan, Mỹ, Indonesia và hiện giờ là Việt Nam.\r\n</br>\r\nTôi cảm thấy điểm khác biệt của các lập trình viên Việt Nam là họ đều rất trẻ, năng động và đặc biệt thông minh. Thông thường, lập trình viên được chia làm hai nhóm. Nhóm đầu tiên là những người trẻ, có khả năng học hỏi, tiếp thu nhiều lĩnh vực một cách nhanh chóng. Nhóm thứ hai tập hợp những người dành nhiều năm nghiên cứu chuyên sâu và trở thành chuyên gia một lĩnh vực nào đó.\r\n</br>\r\nQuan sát thực tế ở Việt Nam cho tôi biết, lập trình viên là một nghề rất có triển vọng. Tuy nhiên, theo tôi nhận thấy, các lập trình viên \"nhảy việc\" khá nhiều thay vì làm việc lâu dài ở một đơn vị. Do vậy, nhân lực chủ yếu được xếp vào nhóm thứ nhất. Tôi hy vọng rằng trong tương lai sẽ có nhiều lập trình viên trong nhóm hai hơn. Bản thân tôi cũng sẽ nỗ lực để đưa Trung tâm Lập trình Naver thành nơi các lập trình viên Việt Nam có thể học hỏi, trau dồi những thế mạnh của mình và gắn bó lâu dài.\r\n</br>\r\n- Các lập trình viên sẽ được gì khi làm việc tại Trung tâm Lập trình Naver Việt Nam?\r\n</br>\r\n- Naver là một Tập đoàn Công nghệ với bề dày phát triển hơn 20 năm và tích lũy được rất nhiều tài nguyên công nghệ mà rất nhiều các công ty khác mong muốn. Các lập trình viên tại Việt Nam gia nhập đội ngũ Naver cũng sẽ được tiếp cận, sử dụng các tài nguyên đó.\r\n</br>\r\nNgoài ra, Naver Việt Nam được xây dựng theo phong cách một công ty khởi nghiệp ở Thung Lũng Silicon, cho phép nhân viên tự tạo ra văn hóa làm việc của riêng mình cũng như tham gia đóng góp vào sự phát triển của Trung tâm. Chính vì vậy, tại Việt Nam, chúng tôi để chính các bạn nhân viên tự tạo nên văn hóa doanh nghiệp của riêng mình, tạo thành tiền đề để các thế hệ sau noi theo. Việc nhân viên tự suy nghĩ, tự xây dựng nên văn hóa công ty cũng là một loại kinh nghiệm có thể giúp ích rất nhiều cho sự phát triển của bản thân họ.\r\n</br>\r\nNgoài ra, với mong muốn được trau dồi thêm kiến thức chuyên môn của mọi người, chúng tôi sẽ tổ chức các buổi hội thảo, trao đổi đào tạo chuyên sâu đa dạng.\r\n</br>\r\nMới đây, trong cuộc họp nội bộ, ban lãnh đạo cũng như đội ngũ nhân việc đã cùng nhau thảo luận về hệ thống phúc lợi, phương pháp làm việc linh hoạt tại nhà và công ty trong giai đoạn dịch Covid-19 diễn biến phức tạp. Các chế độ đều được thông qua dựa trên mong muốn của nhân viên.\r\n</br>\r\n- Trung tâm có kế hoạch công bố các kết quả nghiên cứu?\r\n</br>\r\n- Dĩ nhiên là có. Chúng tôi có kế hoạch tổ chức Hội nghị về Công nghệ để công bố những kết quả nghiên cứu ra bên ngoài. Tuy nhiên, vì dịch Covid-19 còn nhiều hạn chế nên chúng tôi cần phải cân nhắc thêm. Có lẽ thời điểm thích hợp là vào nửa cuối năm nay.\r\n</br>\r\n- Chiến lược tuyển dụng nhân sự của trung tâm như thế nào?\r\n</br>\r\n- Từ nay đến năm 2023, chúng tôi dự định sẽ tuyển dụng trên 300 nhân sự làm việc tại Trung tâm Lập trình Naver Việt Nam. Trong đó, chúng tôi đang tập trung tìm kiếm các vị trí Backend Engineer (Java), Frontend Engineer (ReactJS/VueJS), Windows Engineer (C/C++), Windows Engineer (C#), iOS Engineer (Swift), UI Frontend Engineer (HTML/CSS).\r\n</br>\r\nĐể tìm kiếm nhân tài, chúng tôi chú trọng đến ba yếu tố gồm tự chủ, thử thách và làm việc nhóm. Những người Naver đang tìm kiếm, bên cạnh khả năng về chuyên môn, là những người có trách nhiệm, tính tự giác cao, có thể tạo ra một văn hóa làm việc cho riêng mình. Họ thể hiện được sự thử thách không ngừng với đam mê của bản thân và nỗ lực hết mình để đạt được thành công.\r\n</br>\r\nHơn hết, họ phải thể hiện được tinh thần đồng đội tốt, có thể cộng tác với đồng nghiệp nhằm tạo nên sức mạnh tổng hòa, đem lại hiệu quả cao nhất.', '2022-06-22 01:04:03'),
(3, 'http://192.168.55.103/FricaShop/admin/img/VTI.png', 'Cơ hội trở thành lập trình viên tại Nhật cùng VTI Education', 'VTI Education vừa ký kết hợp tác với Học viện máy tính Kyoto (KCG), mở ra cơ hội cho sinh viên du học, làm việc ngành CNTT tại Nhật sau một đến hai năm.\r\n</br>\r\nTại lễ ký kết, ông Nguyễn Hải Dương - COO của VTI Japan - người đại diện cho Tập đoàn VTI và VTI Education chia sẻ: \"Với truyền thống và bề dày đào tạo về công nghệ thông tin của trường KCG, việc liên kết sẽ mở ra nhiều cơ hội cho sinh viên VTI được đào tạo, học tập một cách bài bản, chuẩn mực và có nhiều hỗ trợ để tìm công việc tốt khi ra trường\".\r\n</br>\r\nChia sẻ thêm về lý do lựa chọn Học viện máy tính Kyoto (KCG) làm đối tác trong Chương trình đào tạo liên kết Việt Nam - Nhật Bản, ông Dương cho biết, KCG là một trường chuyên dạy về máy tính và công nghệ thông tin lâu đời ở Nhật, được thành lập bởi các giáo sư đầu ngành của Đại học Kyoto (một trong những trường đại học hàng đầu thế giới và có nhiều giáo sư đoạt giải Nobel ở Nhật).\r\n</br>\r\nKhông chỉ nội dung giảng dạy cập nhật, phù hợp với thời đại mới, trang thiết bị tại đây cũng được nhà trường đầu tư mạnh - trường cung cấp máy tính cá nhân cho từng sinh viên từ những năm 80 của thế kỷ trước. Kế thừa truyền thống đó, trường luôn cung cấp môi trường học tập tốt cho sinh viên, với các cơ sở vật chất khang trang, giáo trình giảng dạy hiện đại. Ngoài ra, KCG còn có hệ đào tạo Master liên thông chuyên ngành về IT, thuận lợi cho các bạn muốn học lên cao hơn.\r\n</br>\r\nÔng Dương cũng từng cùng Chủ tịch Hội đồng quản trị VTI Group - ông Trần Xuân Khôi ghé thăm trường KCG ở Kyoto để trải nghiệm cuộc sống sinh viên trước khi lễ ký kết diễn ra. \"Khuôn viên của trường nằm ở các vị trí thuận tiện cho đi lại, sinh hoạt và làm việc. Khuôn viên của du học sinh Việt Nam hay sử dụng chỉ cách ga Kyoto có 5 phút đi bộ\", ông Dương kể lại.\r\n</br>\r\nSinh viên khi tham dự chương trình đào tạo liên kết Việt Nam - Nhật Bản của VTI Education mất từ một năm học chuyên ngành tại Nhật (bình thường mất 2-4 năm với chi phí khoảng 320-720 triệu đồng). Nếu tính cả chi phí học tiếng Nhật, chương trình này đã giúp sinh viên tiết kiệm khoảng 40-60% chi phí du học so với các con đường khác, đại diện VTI Education chia sẻ. Cũng theo vị đại diện này, sau khi tốt nghiệp, 100% sinh viên VTI Education được cam kết giới thiệu việc làm tại Nhật với mức lương từ 2.000-4.000 USD mỗi tháng, có cơ hội sinh sống và định cư lâu dài tại Nhật.\r\n</br>\r\nBên cạnh đó, sinh viên còn được cam kết hỗ trợ, đón đầu từ phía trường KCG và VTI Education, sẵn sàng đồng hành với sinh viên từ lúc đáp máy bay sang Nhật, đến khi ra trường và giới thiệu việc làm. Ngoài ra, sau khi tốt nghiệp sinh viên sẽ được cấp bằng cao đẳng chuyên môn của trường KCG, chứng minh thực lực bản thân và được săn đón bởi các doanh nghiệp tại cả Việt Nam và Nhật Bản.\r\n</br>\r\nÔng Dương đồng thời nhấn mạnh vai trò và sự hỗ trợ của VTI Japan cho sinh viên VTI Education: \"VTI Japan tham gia tích cực vào quá trình hỗ trợ học tập cho học sinh tham gia Chương trình đào tạo liên kết Việt Nam - Nhật Bản. Chúng tôi có hệ thống các gói học bổng, hỗ trợ thực tập cho sinh viên Việt Nam, cũng cũng như cam kết tuyển dụng các bạn ứng viên phù hợp với các tiêu chí của VTI, hoặc giới thiệu việc làm với mức lương cao cho mạng lưới đối tác của VTI tại Nhật Bản\".', '2022-06-23 17:26:14'),
(4, 'http://192.168.55.103/FricaShop/admin/img/block_chain.jpeg', 'Chàng trai Đà Nẵng trở thành lập trình viên blockchain ở tuổi 30', 'Tốt nghiệp ngành Quản lý xây dựng, Trần Khải Hoàng (30 tuổi) rẽ ngang sang lĩnh vực IT và trở thành lập trình viên blockchain sau 5 tháng học online tại FUNiX.\r\n</br>\r\nCó công việc ổn định trong một cơ quan nhà nước trong suốt 5 năm, anh vẫn trăn trở vì chưa thể đi làm theo đúng đam mê. Anh muốn thay đổi để tìm kiếm một lối đi phù hợp hơn, phát triển những điểm mạnh của bản thân và đón đầu xu hướng mới trong cuộc sống. Với lợi thế nguồn thu nhập thụ động từ đầu tư, anh quyết định học thêm để chuyển nghề.\r\n</br>\r\n\r\nKhoảng hai năm trước, trong thời điểm cảm thấy bí bách và thiếu hướng phát triển nhất, Khải Hoàng nhớ tới IT - ngành bản thân quan tâm, yêu thích từ lâu. Từ đó, anh quyết định đăng ký học văn bằng hai ngành công nghệ thông tin. Đến nay, anh tiếp tục phát triển thêm với khóa học sâu hơn về lập trình blockchain. Theo anh, blockchain là một trong những công nghệ đang lên bởi gắn liền với những chủ đề nóng như tiền số hay game, những lĩnh vực tiềm năng trong tương lai, có tính ứng dụng cao trong đời sống, đồng thời, mở thêm các cơ hội đầu tư.', '2022-06-23 17:35:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `ten_khach_hang` text NOT NULL,
  `sdt` text NOT NULL,
  `email` text NOT NULL,
  `dia_chi` text NOT NULL,
  `phuong_thuc_thanh_toan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`payment_id`, `id_cart`, `ten_khach_hang`, `sdt`, `email`, `dia_chi`, `phuong_thuc_thanh_toan`) VALUES
(14, 49, 'Kiều Đặng Bảo Sơn', 'toilaone12@gmail.com', '0386278998', 'số nhà b4 khu tập thể viện khoa học nông nghiệp', 'Thanh toán khi nhận hàng'),
(15, 11, 'Trần Tuấn Anh', 'anh@gmail.com', '0967883268', 'Hà Nội', 'Thanh toán khi nhận hàng'),
(21, 58, 'Thái', '0388344122', 'b@gmail.com', 'HN', 'Thanh toán khi nhận hàng'),
(22, 99, 'Nam', '0386278998', 'toiln12@gmail.com', 'Hà Nội', 'Thanh toán bằng thẻ ngân hàng'),
(23, 11, 'Son', '0331234421', 'toilaone12@gmail.com', 'Ha Noi', 'Thanh toán khi nhận hàng'),
(24, 81, 'Son', '0386278998', 'toilaone12@gmail.com', 'Ha Noi', 'Thanh toán khi nhận hàng'),
(25, 65, 'Son', '0386278998', 'toilaone12@gmail.com', 'Ha Noi', 'Thanh toán khi nhận hàng'),
(26, 35, 'son', '0386278998', 'toilaone12@gmail.com', 'Ha Noi', 'Thanh toán bằng thẻ ngân hàng'),
(27, 53, '', '', '', '', 'Thanh toán khi nhận hàng'),
(28, 3, 'Sơn', '0386278998', 'toilaone12@gmail.com', 'Ha Noi', 'Thanh toán bằng VNPAY'),
(29, 66, 'Sơn', '0386278998', 'toilaone12@gmail.com', 'HN', 'Thanh toán bằng VNPAY'),
(30, 44, 'Trần Tuấn Anh', '0338221331', 'tuananh@gmail.com', 'Thai Lan', 'Thanh toán bằng VNPAY'),
(31, 94, 'Trần Tuấn Anh', '0331233312', 'anh@gmail.com', 'Ha Noi', 'Thanh toán bằng VNPAY'),
(32, 85, 'Trần Tuấn Anh', '0331233312', 'anh@gmail.com', 'Ha Noi', 'Thanh toán bằng VNPAY'),
(33, 17, 'Kiều Đặng Bảo Sơn', '0386221333', 'bokazem69@gmail.com', 'Nam Dinh', 'Thanh toán bằng MoMo'),
(34, 57, 'Mai Nam Hà', '0381223111', 'ha@gmail.com', 'Ha Noi', 'Thanh toán bằng MoMo'),
(35, 61, 'Trần Tuấn Anh', '0331233312', 'anh@gmail.com', 'Lam Dong', 'Thanh toán bằng VNPAY'),
(36, 17, 'Tran Nam', '0331233312', 'nam@gmail.com', 'Lao Cai', 'Thanh toán bằng MoMo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `name_pr` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image_pr` text NOT NULL,
  `link_ytb` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `cate_id`, `name_pr`, `quantity`, `price`, `image_pr`, `link_ytb`, `description`) VALUES
(1, 1, 'Flutter', 13, 2999000, 'http://192.168.43.42/FricaShop/admin/img/flutter.png', 'IXT4htMhnc0', 'Khóa học Flutter chất lượng cao do giảng viên top đầu Hà Nội'),
(6, 6, 'HTML,CSS Basic', 15, 5699000, 'http://192.168.43.42/FricaShop/admin/img/html,css.jpeg', 'O-QUBZuZlXM', 'Khóa học thiết kế HTML,CSS cơ bản dành cho người mới bắt đầu'),
(8, 1, 'PHP Advanced', 2, 8999000, 'http://192.168.43.42/FricaShop/admin/img/PHP.jpeg', 'JzFeAHU2Yvo', 'Mô tả về khóa học PHP chất lượng tốt'),
(10, 23, 'Laravel', 1, 3599000, 'http://192.168.43.42/FricaShop/admin/img/Laravel.png', 'AEGrKfMXVT8', 'Mô tả khóa học Framework chất lương tốt, các kiến thức cơ bản về Lavarel mà bạn cần phải biết để phát triển ứng dụng web'),
(13, 1, 'Android (Ngôn ngữ Java)', 12, 3999000, 'http://192.168.43.42/FricaShop/admin/img/java_android.jpeg', '576XrVef8CI', 'Khóa học từ cơ bản đến nâng cao, nhằm hiểu biết rõ về cách thức hoạt động của Android, đồng thời hiểu rõ hơn về ngôn ngữ lập trình bậc cao Java trong việc ứng dụng vào Android'),
(15, 1, 'C# dành cho đa nền tảng', 5, 1999000, 'http://192.168.43.42/FricaShop/admin/img/C++++.png', 'CKDXVqlewUQ', 'Khóa học chất lượng dành cho ai muốn học cả đa nền tảng'),
(16, 1, 'C++ (Android,IOS,Window,Linux,...)', 5, 2599000, 'http://192.168.43.42/FricaShop/admin/img/C++.png', 'CKDXVqlewUQ', 'Khóa học đa nền tảng C++'),
(17, 1, 'Khóa học Ruby cơ bản', 10, 2999000, 'http://192.168.43.42/FricaShop/admin/img/Ruby.png', 'UYm0kfnRTJk', 'Khóa học Ruby dạy cho những người bắt đầu đến các kiến thức cơ bản'),
(18, 1, 'Python cơ bản', 5, 5599000, 'http://192.168.43.42/FricaShop/admin/img/python.png', 'x7X9w_GIm1s', 'Khóa học về Python cơ bản đến nâng cao'),
(19, 26, 'Photoshop', 3, 10999000, 'http://192.168.43.42/FricaShop/admin/img/Ps.png', 'xYR03V2leaY', 'Khóa học cơ bản về photoshop, các kỹ năng cơ bản cần biết về phần mềm Photoshop, Lightroom, Illustrator, Premiere hoặc các phần mềm Adobe'),
(20, 21, 'React Native cơ bản', 10, 5399000, 'http://192.168.43.42/FricaShop/admin/img/ReactNative.png', 'gvkqT_Uoahw', 'Khóa học React Native cơ bản dành cho các bạn đam mê với hệ điều hành IOS và Android, trải nghiệm các app (ứng dụng, game,...)'),
(21, 26, 'Ui/Ux Designer', 5, 3999000, 'http://192.168.43.42/FricaShop/admin/img/Ui_Ux.jpeg', 'gO-I0d-w2Jo', 'Hôm nay chúng ta sẽ xem xét các khóa học UX / UI mới hàng đầu mà bạn chưa biết. Ngoài ra, google có một chứng chỉ thiết kế UX mà bạn chưa biết.'),
(22, 24, 'Công nghệ phần mềm', 2, 1599000, 'http://192.168.43.42/FricaShop/admin/img/CNPM.jpeg', 'eQfCx8ifAk8', 'Trong chương trình học, sinh viên sẽ cung cấp các kiến thức nền tảng về Công nghệ Thông tin như: Quản trị mạng, Thiết kế định hướng người dùng, Phát triển phần mềm cho thiết bị di động.\r\n\r\nNgoài ra, sinh viên cũng sẽ được đào tạo về phát triển và quản lý các dự án phần mềm. Các bạn cũng sẽ được cung cấp những kiến thức chuyên môn. Có thể kể đến: Kiểm thử phần mềm, Lập trình IoT, Trí tuệ nhân tạo, Quản trị dữ liệu lớn.'),
(23, 21, 'Swift cơ bản', 11, 2999000, 'http://192.168.43.42/FricaShop/admin/img/swift.jpeg', 'nAchMctX4YA', 'Swift is a modern programming language developed by Apple. It is commonly used to code apps for iOS and MacOS, but is open-source and can be used outside of Apple’s walled garden.'),
(24, 6, 'JavaScript cơ bản', 5, 8999000, 'http://192.168.43.42/FricaShop/admin/img/Javascrip.png', 'DHjqpvDnNGE', 'JavaScript is the the programming language that built the web. Learn how it evolved into a powerful tool for building websites, servers with Node.js, mobile apps, desktop software, and more'),
(25, 6, 'JavaScript nâng cao', 8, 10999000, 'http://192.168.43.42/FricaShop/admin/img/Javascrip.png', 'DHjqpvDnNGE', 'JavaScript is the the programming language that built the web. Learn how it evolved into a powerful tool for building websites, servers with Node.js, mobile apps, desktop software, and more'),
(27, 23, 'VueJS', 8, 3399000, 'http://192.168.43.42/FricaShop/admin/img/VueJS.jpeg', 'nhBVL41-_Cw', 'Là framework khá phổ biến dành cho ai thích học Javascript, phát triển bản thân ở những lĩnh vực mới'),
(28, 23, 'ReactJS', 7, 2799000, 'http://192.168.43.42/FricaShop/admin/img/reactJs.png', 'HyWYpM_S-2c', 'React is the most popular JS framework ever, but some web developers out there say it sucks. Let\'s take a look at the criticisms and hate directed towards React.js.'),
(29, 27, 'Machine Learning', 9, 12999000, 'http://192.168.43.42/FricaShop/admin/img/ML.png', 'PeMlggyqz0Y', 'Machine Learning is the process of teaching a computer how perform a task with out explicitly programming it. The process feeds algorithms with large amounts of data to gradually improve predictive performance.'),
(30, 27, 'Deep Learning', 12, 9999000, 'http://192.168.43.42/FricaShop/admin/img/DL.jpeg', '6M5VXKLf4D4', 'This video on &quot;What is Deep Learning&quot; provides a fun and simple introduction to its concepts. We learn about where Deep Learning is implemented and move on to how it is different from machine learning and artificial intelligence. We will also look at what neural networks are and how they are trained to recognize digits written by hand. We further look at some popular applications of Deep Learning. So, let’s dive into the world of Deep Learning with this video.'),
(31, 27, 'Python cơ bản dành cho AI', 3, 7999000, 'http://192.168.43.42/FricaShop/admin/img/python.png', 'x7X9w_GIm1s', 'Python is arguably the world\'s most popular programming language. It is easy to learn, yet suitable in professional software like web applications, data science, and server-side scripts.'),
(32, 22, 'Khóa học Arduino', 6, 5699000, 'http://192.168.43.42/FricaShop/admin/img/arduino.png', 'nL34zDTPkcs', 'The ultimate Arduino tutorial for beginners. Learn how to choose an Arduino, dim LEDs, build a motor speed controller and more.'),
(33, 25, 'Phân tích TKHT', 12, 3999000, 'http://192.168.43.42/FricaShop/admin/img/PTTKHT.jpeg', 'SR4MzMsrASQ', 'First of the Systems Analysis and Design Lecture Series'),
(34, 24, 'Automation Tester', 3, 1999000, 'http://192.168.43.42/FricaShop/admin/img/automation.jpeg', 'bC_DZhYGJ4U', 'Hướng dẫn các công nghệ và kỹ thuật để trở thành một automation tester. Hiểu được roadmap để trở thành một automation tester là như thế nào?');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `name_slider` varchar(100) NOT NULL,
  `image_slider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id_slider`, `name_slider`, `image_slider`) VALUES
(21, 'Khóa học mới nhất trong năm 2022', 'http://192.168.43.42/FricaShop/admin/img/qc1.jpeg'),
(22, 'Quảng cáo 2', 'http://192.168.43.42/FricaShop/admin/img/qc2.jpeg'),
(23, 'Quảng cáo 3', 'http://192.168.43.42/FricaShop/admin/img/qc3.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `comment_fb`
--
ALTER TABLE `comment_fb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  ADD PRIMARY KEY (`id_comment`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_lh`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_cart`
--
ALTER TABLE `detail_cart`
  ADD PRIMARY KEY (`id_cart_detail`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_fb`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `comment_fb`
--
ALTER TABLE `comment_fb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id_lh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `detail_cart`
--
ALTER TABLE `detail_cart`
  MODIFY `id_cart_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=868;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_fb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
