-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2020 lúc 04:29 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `the_coffee_house`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `hienthi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `img`, `hienthi`) VALUES
(1, 'VỀ THE COFFEE HOUSE', '“Cà phê nhé\" - Một lời hẹn rất riêng của người Việt. Một lời ngỏ mộc mạc để mình ngồi lại bên nhau và sẻ chia câu chuyện của riêng mình.\r\n\r\nTại The Coffee House, chúng tôi luôn trân trọng những câu chuyện và đề cao giá trị Kết nối con người. Chúng tôi mong muốn The Coffee House sẽ trở thành “Nhà Cà Phê\", nơi mọi người xích lại gần nhau và tìm thấy niềm vui, sự sẻ chia thân tình bên những tách cà phê đượm hương, chất lượng.', 'about.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(10) NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `showcontent` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `main` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `img`, `title`, `showcontent`, `content`, `main`, `hienthi`) VALUES
(1, 'blog-1.png', 'ĐÊM HỘI PHÁ CỖ: NHÀ KỂ CHUYỆN TRĂNG', 'Trung Thu mỗi năm mỗi khác và không còn vẹn tròn như xưa, nhất là với một năm nhiều biến động và âu lo này thì ý nghĩa đêm trăng lại càng trở nên khó tìm hơn. Nhưng không phải vì thế mà yêu thương không được lan toả,&nbsp;những cảm xúc háo hức và vui tươi một lần nữa được trở lại tại Nhà với “ĐÊM HỘI PHÁ CỖ\".', '<div class=\"article_content\"><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Trung Thu mỗi năm mỗi khác và không còn vẹn tròn như xưa, nhất là với một năm nhiều biến động và âu lo này thì ý nghĩa đêm trăng lại càng trở nên khó tìm hơn. Nhưng không phải vì thế mà yêu thương không được lan toả,&nbsp;những cảm xúc háo hức và vui tươi một lần nữa được trở lại tại Nhà với “ĐÊM HỘI PHÁ CỖ\".</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Gác lại âu lo, Nhà và các bạn đã có một đêm phá cỗ đầy ý nghĩa cùng:</span></p><ul><li><span style=\"font-size: 12pt;\">- Câu chuyện Trăng - về những điều bình dị chỉ mùa trăng mới có.</span></li><li><span style=\"font-size: 12pt;\">- Sống lại tuổi thơ với&nbsp;thước phim The Tale Of Cuội đầy hiện đại của Nhà.</span></li><li><span style=\"font-size: 12pt;\">- Cùng nhau phá cỗ quanh chiếc bàn cà phê - có bánh Trung Thu, trà thơm lừng và âm nhạc đậm vị đêm trăng.</span></li><li><span style=\"font-size: 12pt;\">- Đắm mình trong những bản nhạc Trung Thu quen thuộc, được phối theo phong cách hiện đại từ band nhạc.</span></li><li><span style=\"font-size: 12pt;\">- Những thức quà được Nhà chăm chút tỉ mỉ, cùng chút gửi gắm yêu thương sum vầy đến những người bạn chung vui cùng Nhà.</span><span style=\"font-size: 12pt;\"><br></span></li></ul><p><span style=\"font-size: 12pt;\"><span>Cảm ơn bạn đã cùng Nhà làm nên 1 mùa trăng đặc biệt, hãy cùng nhìn ngắm lại những hình ảnh Nhà đã góp nhặt được suốt đêm hội. Nhà chúc bạn có mùa Trung Thu thiệt ấm bên người mình thương nha!</span></span></p><p><img src=\"https://file.hstatic.net/1000075078/file/120218829_2787114898229185_9023696531051349651_o_f4559eb8066e46c0948f24b1f5ee8ab5.jpg\"></p><p><img src=\"https://file.hstatic.net/1000075078/file/120232099_2787114844895857_1580514897623461670_o_4ef942675a3e492b9c4241f21424b869.jpg\"></p><p><img src=\"https://file.hstatic.net/1000075078/file/120322048_2787114654895876_2336020085883874324_o_d49e28b462f042e38ba49ea205da76bc.jpg\"></p><p><img src=\"https://file.hstatic.net/1000075078/file/120309199_2787114534895888_724022330950013130_o_2613c60226434ba7aab7b5ef264c80e6.jpg\"><br></p><p><img src=\"https://file.hstatic.net/1000075078/file/120348526_2787114648229210_8898000306417492858_o_b122901bf52b40b791913e72b7d187e8.jpg\"></p><p><img src=\"https://file.hstatic.net/1000075078/file/120453518_2787114971562511_2870693613502265851_o_f08494c93a9e439cbad46855fe2453ca.jpg\"><br></p><p><img src=\"https://file.hstatic.net/1000075078/file/120427565_2787115008229174_9127196726664381827_o_24339321f61f4be0b96bd20c50c9f98e.jpg\"></p><p><img src=\"https://file.hstatic.net/1000075078/file/120560660_2787114378229237_7264499155511064990_o_c9cadcda606b4ea08f09f1e1cc10e981.jpg\"></p><p><img src=\"https://file.hstatic.net/1000075078/file/120571232_2787115091562499_2829002300319325067_o_ad0eeb96d778431f89655485979a6295.jpg\"></p><p><img src=\"https://file.hstatic.net/1000075078/file/120573340_2787114791562529_7923868584976885363_o_e462e22a750e40ce9088ded4c91cd2dd.jpg\"></p><p><img src=\"https://file.hstatic.net/1000075078/file/120602952_2787114611562547_4392665066338763641_o_77ec030ff0464172be4c34658a985532.jpg\"></p></div>', 0, 1),
(2, 'blog-2.png', 'CÙNG NHÀ THƯỞNG THỨC PHIM THE TALE OF CUỘI 2020 VÀ ĐÓN MÙA TRĂNG SUNG TÚC', 'Thời gian trôi qua, mỗi năm một khác, câu chuyện Trung Thu cũng vì thế mà khó được trọn vẹn như xưa, đặc biệt trong những ngày nhiều biến động, lo âu này. Nhưng điều đó lại càng thôi thúc The Coffee House mang những cảm xúc háo hức, vui tươi của mùa Trăng tuổi thơ trở lại.', '<div class=\"article_content\"><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\"><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Thời gian trôi qua, mỗi năm một khác, câu chuyện Trung Thu cũng vì thế mà khó được trọn vẹn như xưa, đặc biệt trong những ngày nhiều biến động, lo âu này. Nhưng điều đó lại càng thôi thúc The Coffee House mang những cảm xúc háo hức, vui tươi của mùa Trăng tuổi thơ trở lại.</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Mùa Trung Thu năm nay, The Coffee House không chỉ mang đến những chiếc bánh nướng thơm lừng, đậm đà hương vị thơm ngon mà còn nỗ lực chăm chút món ăn tinh thần gửi đến khán giả thông qua những thước phim kể về cuộc phiêu lưu của Cuội - The Tale Of Cuội 2020.</span></div><div style=\"text-align: justify;\"><br></div></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"text-align: justify;\"><div><span style=\"font-size: 12pt;\">The Tale Of Cuội là câu chuyện lấy cảm hứng từ cổ tích dân gian, với niềm tự hào về giá trị văn hóa Việt Nam, khoác lên một cái nhìn trẻ trung, hiện đại. Đây không chỉ là một câu chuyện Trung Thu, mà còn là một lời nhắn nhủ tới tuổi thơ trong mỗi người. Hay đúng hơn là một lời tâm tình rằng, dù vũ trụ có quay cuồng đến đâu thì mỗi chúng ta luôn có một nơi trở về cùng những người yêu thương đón một mùa Trăng sung túc.</span></div><div><br></div></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"text-align: justify;\"><div><span style=\"font-size: 12pt;\">Hãy mở phim và cùng thưởng thức nhé.</span></div><div><br></div><div style=\"text-align: center;\"><span class=\"mce-preview-object mce-object-iframe\" style=\"font-size: 12pt;\"><span class=\"mce-preview-object mce-object-iframe\"><span class=\"mce-preview-object mce-object-iframe\"><span class=\"mce-preview-object mce-object-iframe\"><iframe src=\"//www.youtube.com/embed/c14-ozU1hqY\" allowfullscreen=\"allowfullscreen\" width=\"560\" height=\"314\" frameborder=\"0\"></iframe><span class=\"mce-shim\"></span></span><span class=\"mce-shim\"></span></span><span class=\"mce-shim\"></span></span><span class=\"mce-shim\"></span></span></div></div></div>', 1, 0),
(3, 'blog-3.png', 'KHÁM PHÁ \"CUỘC PHIÊU LƯU\" BÊN TRONG HỘP BÁNH TRUNG THU THE COFFEE HOUSE', 'Không khí Trung Thu đã tràn ngập không gian Nhà. Hãy cùng Nhà khám phá cuộc phiêu lưu của chú Cuội phiên bản \"xịn sò\", đắm chìm trong sắc màu tuổi thơ và hạnh phúc khi biết rằng Tết Trung Thu là Tết của mọi người, không chỉ dành riêng cho trẻ con.', '<div class=\"article_content\"><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong>Không khí Trung Thu đã tràn ngập không gian Nhà. Hãy cùng Nhà khám phá cuộc phiêu lưu của chú Cuội phiên bản \"xịn sò\", đắm chìm trong sắc màu tuổi thơ và hạnh phúc khi biết rằng Tết Trung Thu là Tết của mọi người, không chỉ dành riêng cho trẻ con.</strong></span><br></p><p><img src=\"https://file.hstatic.net/1000075078/file/toc_slider1_70b65f475f1e44b8818be44b88858c08.jpg\"></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Khi tháng 8 vừa sang, khắp phố phường đã len lỏi không khí háo hức chờ đợi một mùa Trăng tròn mới. Bạn có đồng ý với Nhà rằng không ai có thể thờ ơ với Tết Trung Thu, thờ ơ những chiếc bánh nướng thơm lừng hay buổi sum họp đoàn viên cùng gia đình, đúng không!</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Nếu vẫn đắn đo lựa chọn quà tặng cho gia đình, người thân trong dịp Tết Đoàn viên, vậy hãy cùng Nhà khám phá 3 hộp bánh Trung Thu được Nhà hết lòng chăm chút.&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt; color: #ff6600;\"><strong>The Tale of Cuội</strong></span></p><p><img src=\"https://file.hstatic.net/1000075078/file/toc_slider2_599d0ed72b1e451eab43c2b5e7fa23b3.jpg\"></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Lần đầu xuất hiện năm 2018, câu chuyện về cuộc phiêu lưu của Cuội đã nhận được sự yêu thích nồng nhiệt từ khách hàng. Năm nay, Cuội trở lại rực rỡ hơn trong hình dạng một quyển sách. Lật mở từng trang sách, bạn sẽ từng bước khám phá câu chuyện cổ tích&nbsp;<strong><span style=\"color: #ff6600;\">The Tale of Cuội</span></strong></span><span style=\"font-size: 12pt;\"><span style=\"color: #ff6600;\"><span style=\"color: #000000;\"><span>.</span></span></span></span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Không chỉ đơn giản gửi gắm câu chuyện cổ tích giữa đời thường, Nhà&nbsp;</span><span style=\"font-size: 12pt;\"><span style=\"color: #ff6600;\"><span style=\"color: #000000;\"><span>khao khát mang đến một Trung Thu đậm chất dân gian thông qua sự thể hiện hiện đại của công nghệ Thực tế ảo (AR). Mong bạn cùng Nhà trải nghiệm để cùng</span></span></span></span><span style=\"font-size: 12pt;\"><span style=\"color: #ff6600;\"><span style=\"color: #000000;\"><span>&nbsp;chạm đến Trung Thu, chạm đến kí ức tuổi thơ đôi lần bị bỏ lỡ.</span></span></span></span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><span style=\"color: #ff6600;\"><span style=\"color: #000000;\"><span>Bên cạnh chuyến phiêu lưu của Cuội, mùa Trăng năm nay The Coffee House lần đầu giới thiệu đến bạn 2 hộp bánh <span style=\"color: #ff6600;\"><strong>Rằm Song Phúc</strong></span> và <strong><span style=\"color: #ff6600;\">Rằm Tứ Quý</span></strong> đa dạng thêm sự lựa chọn quà tặng dành cho người thân thương.</span></span></span></span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: #ff6600;\">Rằm Song Phúc</span></strong></span></p><p><img src=\"https://file.hstatic.net/1000075078/file/ram2_slider3_3beadfd096e442149960e601186b9803.jpg\"></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><span style=\"color: #ff6600;\"><span style=\"color: #000000;\"><span>Hộp quà hiện đại và tròn đầy cho một gia đình nhỏ thưởng Trăng mang màu sắc thanh nhã và ấn tượng với sắc xanh cổ vịt, hòa trộn giữa gam của sắc trời và cỏ cây, cộng hưởng với sự biến tấu in vân dập nổi và phủ nhũ để mang đến một tổng thể không kém phần sang trọng và bắt mắt.<br></span></span></span></span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: #ff6600;\">Rằm Tứ Quý</span></strong></span></p><p><img src=\"https://file.hstatic.net/1000075078/file/box__den__set_design_3_df315916652d47ff9fb31f4dcc4aa67e.jpg\"></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><span style=\"color: #ff6600;\"><span style=\"color: #000000;\"><span>Món quà thích hợp dành tặng đối tác, người thân hay bạn bè với vẻ sang trọng từ những chi tiết in vân dập nổi công phu, những họa tiết tinh tế,&nbsp;kết hợp phủ nhũ tạo điểm nhấn nổi bật giữa các gam họa sắc trong một đêm trăng vàng&nbsp;phú quý.</span></span></span></span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><span style=\"color: #ff6600;\"><span style=\"color: #000000;\"><span>Sẵn sàng khám phá những thức quà Trung thu từ The Coffee House nhé!</span></span></span></span></p><p><span><em>(*) Mọi thông tin chi tiết và chính sách dành cho khách hàng có nhu cầu mua số lượng lớn vui lòng xem thêm&nbsp;</em></span><span><em><i><a href=\"https://www.thecoffeehouse.com/banh-trung-thu\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>tại đây</strong></a></i></em></span><br></p></div>', 0, 1),
(4, 'blog-4.png', 'Trải nghiệm tính năng Pick Up - Chủ động đến lấy và không chờ đợi', 'Bạn đã sẵn sàng trải nghiệm tính năng PICK UP mới nhất tại app The Coffee House?', '<div class=\"article_content\"><div>Bạn đã sẵn sàng trải nghiệm tính năng PICK UP mới nhất tại app The Coffee House?</div><div><br></div><div>Từ ngày 09/05, bạn đã có thể đặt món tiện lợi hơn, chủ động hơn và không cần phải xếp hàng chờ đợi khi chọn PICK UP.</div><div><br></div><div><p><img src=\"https://file.hstatic.net/1000075078/file/social-02_f8bd357aa1654d47aa4fc86096bd611e_grande.jpg\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p></div><p>- Đặt hàng chủ động tiện lợi hơn khi bạn có thể chọn cửa hàng và thời gian đến lấy theo nhu cầu.</p><p>- Tiết kiệm thời gian và không phải xếp hàng chờ đợi tại cửa hàng. &nbsp;&nbsp;</p><p>- Thanh toán trước tiện lợi, không cần tiền mặt&nbsp;</p><p>- Không lo phí ship.&nbsp;</p><div><br></div><div>Trải nghiệm cà phê xịn sò và chủ động hơn cùng tính năng PICK UP, hãy cập nhật ngay phiên bản app mới nhất hoặc tải ngay <span style=\"color: rgb(255, 153, 0);\"><a href=\"tch.page.link/download\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"color: rgb(255, 153, 0);\"><strong>tại đây</strong></a></span>&nbsp;</div><div>Không phải chờ đợi, PICK UP thôi!&nbsp;</div></div>', 0, 1),
(5, 'blog-5.png', 'The Coffee House giảm 60% ánh sáng tại hệ thống hưởng ứng Giờ Trái Đất 2020', 'Cùng The Coffe House hành động nhỏ cho những thay đổi tích cực hơn.The Coffee House tin rằng, có những tác động lớn lao đến từ những hành động và thay đổi nhỏ, chỉ cần chúng ta cùng nhau chung tay làm điều ý nghĩa ngay hôm nay.', '<div class=\"article_content\"><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Cùng The Coffe House hành động nhỏ cho những thay đổi tích cực hơn</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">The Coffee House tin rằng, có những tác động lớn lao đến từ những hành động và thay đổi nhỏ, chỉ cần chúng ta cùng nhau chung tay làm điều ý nghĩa ngay hôm nay.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Và với mong muốn được góp phần lan toả tinh thần Go Green, tác động tích cực đến Trái đất bằng việc tiết kiệm năng lượng, The Coffee House sẽ cùng hưởng ứng hoạt động Giờ Trái Đất do WWF - Việt Nam tổ chức, cụ thể:</p><div class=\"text_exposed_show\"><ul><li data-mce-style=\"text-align: justify;\" style=\"text-align: justify;\">Tối ngày 28/03 (20h - 20h30), toàn bộ hệ thống The Coffee House sẽ giảm bớt 60% ánh sáng để tiết kiệm năng lượng.</li></ul><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Đặc biệt, từ khung giờ 19h30 - 20h30 ngày 28/03 Nhà còn có ưu đãi FREE UPSIZE - cho tất cả các món Trà trái cây bạn yêu thích, để “cuộc hẹn xanh” thêm tươi mát.</p><p style=\"text-align: justify;\" data-mce-style=\"text-align: justify;\">Bạn sẽ hẹn hò cùng ai trong sự kiện đặc biệt này? Hãy đến cửa hàng gần nhất và cho nhau cuộc hẹn hò đặc biệt hơn mọi ngày, cùng nhau lan tỏa tinh thần “yêu trái đất” nhé!<br></p></div></div>', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'CÀ PHÊ VIỆT NAM'),
(2, 'CÀ PHÊ MÁY'),
(3, 'COLD BREW'),
(4, 'TRÀ TRÁI CÂY'),
(5, 'TRÀ SỮA MACCHIATO'),
(6, 'CÀ PHÊ ĐÁ XAY'),
(7, 'THỨC UỐNG TRÁI CÂY'),
(8, 'MATCHA - SÔCÔLA'),
(9, 'BÁNH & SNACK'),
(10, 'CÀ PHÊ GÓI'),
(11, 'MERCHANDISE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `id_cat` int(10) NOT NULL,
  `tensanpham` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(10) NOT NULL,
  `giakhuyenmai` int(10) NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `hinh` text COLLATE utf8_unicode_ci NOT NULL,
  `hienthi` int(11) NOT NULL,
  `noibat` int(10) NOT NULL,
  `moi` int(10) NOT NULL,
  `banchay` int(10) NOT NULL,
  `khuyenmai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `id_cat`, `tensanpham`, `tenkhongdau`, `gia`, `giakhuyenmai`, `mota`, `hinh`, `hienthi`, `noibat`, `moi`, `banchay`, `khuyenmai`) VALUES
(1, 1, 'BẠC SỈU', 'bac-siu', 32000, 0, 'Theo chân những người gốc Hoa đến định cư tại Sài Gòn, Bạc sỉu là cách gọi tắt của \"Bạc tẩy sỉu phé\" trong tiếng Quảng Đông, chính là: Ly sữa trắng kèm một chút cà phê.', 'bacsiu.png', 1, 0, 0, 0, 0),
(2, 1, 'CÀ PHÊ ĐEN', 'ca-phe-den', 32000, 0, 'Một tách cà phê đen thơm ngào ngạt, phảng phất mùi cacao là món quà tự thưởng tuyệt vời nhất cho những ai mê đắm tinh chất nguyên bản nhất của cà phê. Một tách cà phê trầm lắng, thi vị giữa dòng đời vồn vã.', 'capheden.png', 1, 0, 0, 0, 0),
(3, 1, 'CÀ PHÊ SỮA', 'ca-phe-sua', 32000, 0, 'Cà phê phin kết hợp cũng sữa đặc là một sáng tạo đầy tự hào của người Việt, được xem món uống thương hiệu của Việt Nam.', 'caphephin.png', 0, 0, 0, 0, 0),
(4, 2, 'AMERICANO', 'americano-1', 39000, 0, 'Americano được pha chế bằng cách thêm nước vào một hoặc hai shot Espresso để pha loãng độ đặc của cà phê, từ đó mang lại hương vị nhẹ nhàng, không gắt mạnh và vẫn thơm nồng nàn.', 'americano.png', 1, 0, 0, 0, 0),
(5, 2, 'CAPPUCCINO', 'cappuccino-1', 45000, 0, 'Cappuccino được gọi vui là thức uống \"một-phần-ba\" - 1/3 Espresso, 1/3 Sữa nóng, 1/3 Foam.', 'cappuccino.png', 1, 0, 0, 0, 0),
(6, 2, 'CARAMEL MACCHIATO', 'caramel-macchiato', 55000, 0, 'Vị thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát của cà phê Espresso hảo hạng, và vị ngọt đậm của sốt caramel.', 'caramel_macchiato.png', 0, 0, 0, 0, 0),
(7, 2, 'ESPRESSO', 'espresso-1', 35000, 0, 'Một cốc Espresso nguyên bản được bắt đầu bởi những hạt Arabica chất lượng, phối trộn với tỉ lệ cân đối hạt Robusta, cho ra vị ngọt caramel, vị chua dịu và sánh đặc. Để đạt được sự kết hợp này, chúng tôi xay tươi hạt cà phê cho mỗi lần pha.', 'espresso.png', 0, 0, 0, 0, 0),
(8, 2, 'LATTE', 'latte', 45000, 0, 'Khi chuẩn bị Latte, cà phê Espresso và sữa nóng được trộn lẫn vào nhau, bên trên vẫn là lớp foam nhưng mỏng và nhẹ hơn Cappucinno.', 'latte.png', 0, 0, 0, 0, 0),
(9, 2, 'MOCHA', 'mocha', 49000, 0, 'Cà phê Mocha được ví von đơn giản là Sốt Sô cô la được pha cùng một tách Espresso.', 'mocha.png', 0, 0, 0, 0, 0),
(10, 3, 'COLD BREW TRUYỀN THỐNG', 'cold-brew-truyen-thong', 45000, 0, 'Mất 24 tiếng để ngâm ủ cà phê trong nước lạnh, Cold Brew được ủ và phục vụ mỗi ngày từ 100% hạt Arabica Cầu Đất với hương gỗ thông, hạt dẻ, nốt sô-cô-la đặc trưng, thoang thoảng hương khói nhẹ giúp Cold Brew giữ nguyên vị tươi mới', 'classic_cold_brew.png', 0, 0, 0, 0, 0),
(11, 3, 'COLD BREW CAM VÀNG', 'cold-brew-cam-vang', 50000, 0, 'Sự kết hợp vừa quen vừa lạ giữa cà phê ngâm lạnh (100% Arabica Cầu Đất) với nước ép cam tươi và sả ngâm cho vị cân bằng, tươi mát quyện trong hương vị cà phê tròn đầy. Cam sả - cái tên quen thuộc đưa bạn đến gần với Nhà ngày nào, giờ được khoác lên mình dáng vẻ mới lạ cùng Cold Brew, 1 hương vị bạn khó lòng bỏ qua khi ghé Nhà trong mùa hè này.', 'cold_brew_cam_vang.png', 0, 1, 1, 0, 0),
(12, 3, 'COLD BREW SỮA TƯƠI MACCHIATO', 'cold-brew-sua-tuoi-macchiato', 50000, 0, 'Cold Brew Sữa Tươi Macchiato - hương vị cà phê vừa quen vừa lạ. Quen bởi vị đăng đắng và ngọt dịu của Cold Brew, thức uống \"Signature\" của Nhà. Lạ bởi phong vị ngọt ngào của lớp sữa tươi và lớp foam macchiato beo béo được đánh lên sánh mịn.', 'cold_brew_macchiato.png', 0, 0, 0, 0, 0),
(13, 3, 'COLD BREW PHÚC BỒN TỬ', 'cold-brew-phuc-bon-tu', 50000, 0, 'Một sự kết hợp đầy thuyết phục cho những người thích cà phê nhưng lại muốn thay đổi vị.\r\nVị chua ngọt của trái phúc bồn tử, làm dậy lên hương vị trái cây tự nhiên vốn sẵn có trong hạt cà phê, hòa quyện thêm vị đăng đắng, ngọt dịu nhẹ nhàng của Cold Brew để mang đến một cách thưởng thức cà phê hoàn toàn mới, vừa thơm lừng hương cà phê quen thuộc, vừa nhẹ nhàng và thanh mát bởi hương trái cây đầy thú vị.', 'cold_brew_pbt.png', 0, 0, 0, 0, 0),
(14, 3, 'COLD BREW SỮA TƯƠI', 'cold-brew-sua-tuoi', 50000, 0, 'Thanh mát và cân bằng với hương vị cà phê nguyên bản 100% Arabica Cầu Đất cùng sữa tươi thơm béo cho từng ngụm tròn vị, hấp dẫn.', 'cold_brew_sua_tuoi.png', 1, 0, 0, 0, 0),
(15, 4, 'TRÀ OOLONG VẢI', 'tra-oolong-vai-nhu-y', 45000, 0, 'Là thức uống \"bắt vị\" được lấy cảm hứng từ trái Vải - thức quả tròn đầy, quen thuộc trong cuộc sống người Việt - kết hợp cùng Trà Oolong làm từ những lá trà tươi hảo hạng.\r\nLy Trà Oolong Vải Như Ý là mong ước năm mới sắp tới sẽ là một năm tràn đầy những điều ngọt ngào, như ý với tất cả mọi người.', 'tra_vai.png', 0, 0, 0, 0, 0),
(16, 4, 'TRÀ OOLONG HẠT SEN', 'tra-oolong-sen-an-nhien', 45000, 0, 'Sự kết hợp của Trà Oolong hương thơm nhẹ, vị nồng hậu cùng Hạt sen tươi mềm có vị ngọt, sáp, vừa ngon miệng vừa có tác dụng an thần, tốt cho cơ thể.\r\nSẽ thật tuyệt vời nếu bạn mời những người thân trong gia đình mình một tách Trà Oolong Sen An Nhiên thay cho lời tri ân và lời chúc năm mới an nhiên tràn sức khoẻ.\r\nĐặc biệt, lớp kem sữa phô mai được phủ lên bề mặt ly sẽ cho bạn một trải nghiệm cân bằng hơn về hương vị.', 'tra_sen.png', 0, 0, 0, 0, 0),
(17, 4, 'TRÀ ĐÀO CAM SẢ', 'tra-dao-cam-sa', 45000, 0, 'Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này. Sản phẩm hiện có 2 phiên bản Nóng và Lạnh phù hợp cho mọi thời gian trong năm.', 'tra_dao.png', 0, 0, 0, 1, 0),
(18, 4, 'TRÀ OOLONG BƯỞI MẬT ONG', 'tra-buoi-mat-ong', 50000, 0, 'Lớp trà oolong đã man mát, nhưng sẽ vị càng thêm vị khi có hương bưởi cùng những tép bưởi mọng nước đi kèm - cho bạn 1 cách thưởng thức đầy thú vị. Cùng đánh thức vị giác, khởi động 1 ngày tươi tắn cùng hương vị mới lạ này nhé!', 'tr_cam_buoi.png', 1, 0, 0, 0, 0),
(19, 4, 'TRÀ OOLONG PHÚC BỒN TỬ', 'tra-phuc-bon-tu', 50000, 0, 'Một sự kết hợp đầy hoàn hảo giữa thanh mát và bổ dưỡng.\r\nLần đầu tiên Trà Oolong và trái \"Phúc Bồn Tử\" hoàn toàn tự nhiên, được các barista của chúng tôi kết hợp một cách tinh tế để tạo ra một dư vị hoàn toàn tươi mới.\r\nNhấp ngay một ngụm là thấy mát lạnh ngay tức khắc, đọng lại mãi nơi cuốn họng là hương vị trà thơm lừng và vị ngọt thanh, chua dịu khó quên của trái phúc bồn tử.', 'tra_pbt.png', 1, 0, 0, 1, 0),
(20, 5, 'TRÀ LÀI MACCHIATO', 'tra-lai-macchiato', 42000, 0, 'Ngay ngụm đầu tiên chính là vị beo béo ngọt dịu của lớp macchiato, sau đó được cân bằng lại bởi lớp thanh mát từ nền trà oolong hảo hạng - 1 hương vị tươi mới cho team hảo ngọt nhưng thích thanh mát.', 'tra_lai_macchiato.png', 0, 0, 0, 0, 0),
(21, 5, 'TRÀ ĐEN MACCHIATO', 'tra-den-macchiato', 42000, 0, 'Trà đen được ủ mới mỗi ngày, giữ nguyên được vị chát mạnh mẽ đặc trưng của lá trà, phủ bên trên là lớp Macchiato \"homemade\" bồng bềnh quyến rũ vị phô mai mặn mặn mà béo béo.', 'tra_den_macchiato.png', 0, 0, 0, 1, 0),
(22, 5, 'TRÀ SỮA MẮC CA TRÂN CHÂU TRẮNG', 'tra-sua-mac-ca-tran-chau-trang', 45000, 0, 'Mỗi ngày với Nhà sẽ là điều tươi mới hơn với sữa hạt mắc ca thơm ngon, bổ dưỡng quyện cùng nền trà Oolong cho vị cân bằng, ngọt dịu. Trân châu trắng giòn dai được thêm sẵn, mang lại cho bạn cảm giác \"đã\" trong từng ngụm, thoả cơn thèm trà sữa ngay.', 'tra_sua_macca.png', 0, 0, 0, 1, 0),
(23, 5, 'TRÀ MATCHA MACCHIATO', 'matcha-macchiato', 45000, 0, 'Bột trà xanh Matcha thơm lừng hảo hạng cùng lớp Macchiato béo ngậy là một sự kết hợp tuyệt vời.', 'tra_matcha_macchiato.png', 0, 0, 0, 0, 0),
(24, 5, 'TRÀ XOÀI MACCHIATO', 'tra-xoai-macchiato', 55000, 0, 'Mang trên mình sắc vàng óng ánh của hương xoài thơm lừng, hòa cùng lớp thanh mát của vị trà đen tinh túy, phía trên được phủ thêm 1 lớp foam macchiato béo ngậy, để mang đến cho bạn 1 hòa vị đỉnh cao của sự thanh mát, cùng chút beo béo và dư vị ngọt ngào miễn chê.\r\nMột ngày thật là vàng tươi và tràn đầy sức sống cùng Trà Xoài Macchiato, tại sao không?', 'tra_xoai_macchiato.png', 0, 0, 0, 0, 0),
(25, 6, 'TRÀ CÀ PHÊ ĐÁ XAY', 'tra-ca-phe-da-xay', 59000, 0, 'Hấp dẫn trên từng nấc hương vị, là nốt hương đầu thanh thoát của lớp cà phê espresso hảo hạng, tiếp theo sau đó là thanh vị tươi mát đọng mãi nơi cuống họng bởi lớp trà oolong đi kèm - 1 vị cà phê mới lạ nhưng lại chiều lòng những tâm hồn yêu cà phê dù là khó tính nhất.', 'tra_caphe_daxay.png', 1, 0, 0, 0, 0),
(26, 6, 'CÀ PHÊ ĐÁ XAY', 'ca-phe-da-xay', 59000, 0, 'Một phiên bản \"upgrade\" từ ly cà phê sữa quen thuộc, nhưng lại đầy tỉnh táo và tươi mát hơn bởi lớp đá xay mát lạnh đi kèm. Nhấp 1 ngụm là thấy đã, ngụm thứ hai thêm tỉnh táo và cứ thế lôi cuốn bạn đến giọt cuối cùng.', 'caphe_daxay.png', 0, 0, 0, 0, 0),
(27, 7, 'CHANH SẢ ĐÁ XAY', 'chanh-sa-da-xay', 49000, 0, 'Sự kết hợp hài hoà giữa những nguyên liệu mộc mạc rất đỗi quen thuộc đối với người Việt cho một thức uống thanh mát, giải nhiệt lại tốt cho sức khoẻ.', 'chanh_sa_daxay.png', 0, 0, 0, 0, 0),
(28, 7, 'PHÚC BỒN TỬ CAM ĐÁ XAY', 'phuc-bon-tu-cam-da-xay', 59000, 0, 'Tê tái ngay đầu lưỡi bởi sự mát lạnh của đá xay.\r\nHòa quyện thêm hương vị chua chua, ngọt ngọt từ trái cam tươi và trái phúc bồn tử 100% tự nhiên, để cho ra một hương vị thanh mát, kích thích vị giác đầy thú vị ngay từ lần đầu thưởng thức.\r\nLại thêm một lựa chọn mới cho \"team đá xay\" và \"team trái cây\", còn chần chờ gì nữa mà không thử ngay thôi!', 'cam_pbt_daxay.png', 0, 0, 0, 0, 0),
(29, 7, 'SINH TỐ CAM XOÀI', 'sinh-to-cam-xoai', 59000, 0, 'Vị mứt cam xoài hòa trộn độc đáo với sữa chua, cho cảm giác chua ngọt rất sướng. Điểm nhấn là những mẩu bánh cookie giòn tan giúp sự thưởng thức thêm thú vị.', 'sinh_to_cam_xoai.png', 0, 0, 0, 0, 0),
(30, 7, 'SINH TỐ VIỆT QUẤT', 'sinh-to-viet-quat', 59000, 0, 'Mứt Việt Quất chua thanh, ngòn ngọt, phối hợp nhịp nhàng với dòng sữa chua bổ dưỡng. Là món sinh tố thơm ngon mà cả đầu lưỡi và làn da đều thích.', 'sinh_to_viet_quat.png', 0, 0, 0, 0, 0),
(31, 8, 'SÔ-CÔ-LA ĐÁ', 'so-co-la-da', 55000, 0, 'Cacao nguyên chất hoà cùng sữa tươi béo ngậy. Vị ngọt tự nhiên, không gắt cổ, để lại một chút đắng nhẹ, cay cay trên đầu lưỡi.', 'socola_da.png', 0, 0, 0, 0, 0),
(32, 8, 'SÔ-CÔ-LA ĐÁ XAY', 'so-co-la-da-xay', 59000, 0, 'Vị đắng của cà phê kết hợp cùng vị cacao ngọt ngàocủa sô-cô-la, vị sữa tươi ngọt béo, đem đến trải nghiệm vị giác cực kỳ thú vị.', 'socola_daxay.png', 0, 0, 0, 0, 0),
(33, 8, 'MATCHA ĐÁ XAY', 'matcha-da-xay', 59000, 0, 'Matcha thanh, nhẫn, và đắng nhẹ được nhân đôi sảng khoái khi uống lạnh. Nhấn nhá thêm những nét bùi béo của kem và sữa. Gây thương nhớ vô cùng!', 'matcha_daxay.png', 0, 0, 0, 0, 0),
(34, 8, 'MATCHA LATTE', 'tra-matcha-latte', 59000, 0, 'Với màu xanh mát mắt của bột trà Matcha, vị ngọt nhẹ nhàng, pha trộn cùng sữa tươi và lớp foam mềm mịn, Matcha Latte là thức uống yêu thích của tất cả mọi người khi ghé The Coffee House.', 'matcha_latte.png', 0, 0, 0, 0, 0),
(35, 9, 'BÁNH BÔNG LAN TRỨNG MUỐI', 'banh-bong-lan-trung-muoi', 29000, 0, 'Chắc chắn bạn sẽ không thể cưỡng lại chiếc bánh bông lan tơi xốp, mềm mịn, vị ngọt dịu kết hợp với trứng muối và chà bông đậm đà, cân bằng vị giác.', 'banh_trung_muoi.png', 0, 0, 0, 0, 0),
(36, 9, 'BÁNH CHOCOLATE', 'banh-chocolate', 29000, 0, 'Từng lớp bánh mịn ngọt ngào đậm vị chiều lòng người yêu thích hương vị sô cô la. Sẽ ngon hơn nếu bạn kết hợp cùng món trà trái cây thanh mát.', 'banh_choccolate.png', 0, 0, 0, 0, 0),
(37, 9, 'BÁNH GẤU CHOCOLATE', 'banh-gau-chocolate', 39000, 0, 'Với vẻ ngoài đáng yêu và hương vị ngọt ngào, thơm béo nhất định bạn phải thử ít nhất 1 lần.', 'banh_gau_choccolate.png', 0, 0, 0, 0, 0),
(38, 9, 'BÁNH MATCHA', 'banh-matcha', 29000, 0, 'Khám phá từng tầng vị trà xanh thơm lừng xen kẽ lớp kéo béo dịu với đậu đỏ.', 'banh_matcha.png', 0, 0, 0, 0, 0),
(39, 9, 'BÁNH MÌ CHÀ BÔNG PHÔ MAI', 'banh-mi-cha-bong-pho-mai', 32000, 0, 'Bạn không thể bỏ lỡ chiếc bánh với lớp phô mai vàng sánh mịn bên trong, được bọc ngoài lớp vỏ xốp mềm thơm lừng. Thêm lớp chà bông mằn mặn hấp dẫn bên trên.', 'banh_mi_phomai_chabong.png', 0, 0, 0, 0, 0),
(40, 9, 'BÁNH PASSION CHEESE', 'banh-passion-cheese', 29000, 0, 'Tận hưởng chiếc bánh mát lạnh với sự kết hợp hoàn hảo của vị béo ngậy của nhân kem phô mai, cân bằng với vị chua thanh từ chanh dây.', 'banh_cheese_chanhday.png', 0, 0, 0, 0, 0),
(41, 9, 'BÁNH TIRAMISU', 'banh-tiramisu', 29000, 0, 'Hương vị dễ ghiền được tạo nên bởi chút đắng nhẹ của cà phê, lớp kem trứng béo ngọt dịu hấp dẫn.', 'banh_tiramisu.png', 0, 0, 0, 0, 0),
(42, 10, 'CÀ PHÊ ARABICA', 'ca-phe-arabica', 100000, 0, 'Nhà gửi bạn hương vị cà phê từ 100% hạt Arabica, được chọn lọc kỹ lưỡng tại vùng Cầu Đất, với độ cao 1650m.\r\nVới vị đắng nhẹ, hậu vị chua thanh, ngọt dịu, cà phê Arabica từ Nhà sẽ giúp bạn tạo ra những tách cà phê máy hay hand brew đậm đà yêu thích của riêng mình.', 'caphe_arabiga.png', 0, 0, 0, 0, 0),
(43, 10, 'CÀ PHÊ PHIN', 'ca-phe-phin', 100000, 0, 'Cà phê Phin của The Coffee House được phối trộn theo tỉ lệ hoàn hảo giữa hạt Robusta và hạt Arabica được hái chín đến 95%.\r\nThe Coffee House áp dụng kĩ thuật rang xay hiện đại để tạo ra hương vị cân bằng tròn vị giữa những nốt hương đặc trưng, vị chua nhẹ, nhưng vẫn giữ được hậu vị đậm đà khi thưởng thức, \"đúng gu\" cà phê Việt.', 'caphe_phin.png', 0, 0, 0, 0, 0),
(44, 10, 'CÀ PHÊ PHIN ĐẮK NÔNG x CẦU ĐẤT', 'Một chất nguyên bản mạnh mẽ của Robusta, từ vùng Đắk Nông nắng gắt mưa nhiều.\r\nMột chất nguyên bản nhẹ nhàng, thanh tao của nơi Cầu Đất sương mù bao phủ, nơi hạt Arabica được đất đai và khí hậu ưu ái vỗ về.\r\n2 chất riêng kết hợp cùng nhau với tỉ lệ đ', 110000, 0, '- Một chất nguyên bản mạnh mẽ của Robusta, từ vùng Đắk Nông nắng gắt mưa nhiều.\r\n- Một chất nguyên bản nhẹ nhàng, thanh tao của nơi Cầu Đất sương mù bao phủ, nơi hạt Arabica được đất đai và khí hậu ưu ái vỗ về.\r\n- 2 chất riêng kết hợp cùng nhau với tỉ lệ đã được nghệ nhân của Nhà cân chỉnh tỉ mỉ, cho bạn trải nghiệm khác biệt và đượm vị say mê.', 'caphe_phin_dak_nong.png', 0, 0, 0, 0, 0),
(45, 11, 'Bình Giữ Nhiệt Inox Con Thuyền', 'binh-giu-nhiet-inox-con-thuyen', 300000, 0, 'Xách bình đi khắp thế gian, với thiết kế xịn sò, màu sắc nổi bật, người bạn mới này sẽ nhắc bạn uống nước mỗi ngày ngon hơn, đều đặn hơn nha.\r\n- Dung tích: 500ml\r\n- Chất liệu: Inox', 'binh_con_thuyen.png', 0, 0, 0, 0, 0),
(46, 11, 'Bình Giữ Nhiệt Inox Quả Dứa', 'binh-giu-nhiet-inox-qua-dua', 300000, 0, 'Xách bình đi khắp thế gian, với thiết kế xịn sò, màu sắc nổi bật, người bạn mới này sẽ nhắc bạn uống nước mỗi ngày ngon hơn, đều đặn hơn nha.\r\n- Dung tích: 500ml\r\n- Chất liệu: Inox', 'binh_qua_dua.png', 0, 0, 0, 0, 0),
(47, 11, 'Bình Giữ Nhiệt Inox The Coffee House (Đen)', 'binh-giu-nhiet-inox-the-coffee-house-den', 300000, 0, 'Tình như chiếc bình của Nhà. Mua chiếc bình mới, gọi món mới để mỗi ngày là một cảm hứng, trải nghiệm mới nha.\r\n- Dung tích: 500ml\r\n- Chất liệu: Inox ', 'binh_inox_den.png', 0, 0, 0, 0, 0),
(48, 11, 'Bộ Ống Hút Inox', 'bo-ong-hut-inox', 79000, 0, 'Yêu môi trường hơn cùng ống hút vừa xịn vừa xinh từ Nhà.\r\nBộ ống hút gồm: Ống hút to dùng để uống Trà sữa Trân châu + Ống hút nhỏ dạng thẳng và dạng cong + cọ vệ sinh ống hút.\r\n- Chất liệu: Inox', 'ong_hut_inox.png', 0, 0, 0, 0, 0),
(49, 11, 'Cốc Sứ The Coffee House Đà Nẵng', 'coc-su-the-coffee-house-da-nang', 120000, 0, 'Lấy cảm hứng từ những biểu tượng quen thuộc của Đà Nẵng, hiện đại và dễ thương, đây sẽ là món quà đặc biệt mà bất cứ ai cũng sẽ yêu thích, hôm nay bạn cũng có thể tự tặng món quà này cho mình.\r\n- Dung tích: 450ml\r\n- Chất liệu: Sứ', 'coc_danang.png', 0, 0, 0, 0, 0),
(50, 11, 'Cốc Sứ The Coffee House Gợn Sóng', 'coc-su-the-coffee-house-gon-song', 100000, 0, 'Một chiếc ly mới, mang lại cảm hứng mới mỗi ngày cho bạn hoặc cho ai đó khi nhận được món quà xịn sò này.\r\n- Dung tích: 450 ml\r\n- Chất liệu: Sứ', 'coc_gon_song.png', 0, 0, 0, 0, 0),
(51, 11, 'Cốc Sứ The Coffee House Hà Nội', 'coc-su-the-coffee-house-ha-noi', 120000, 0, 'Lấy cảm hứng từ những biểu tượng quen thuộc của Hà Nội, cổ kính, thân thương, đây sẽ là món quà đặc biệt mà bất cứ ai cũng sẽ yêu thích, hôm nay bạn cũng có thể tự tặng món quà này cho mình.\r\n- Dung tích: 450ml\r\n- Chất liệu: Sứ', 'coc_hanoi.png', 0, 0, 0, 0, 0),
(52, 11, 'Cốc Sứ The Coffee House Sọc Ngang', 'coc-su-the-coffee-house-soc-ngang', 100000, 0, 'Một chiếc ly mới, mang lại cảm hứng mới mỗi ngày cho bạn hoặc cho ai đó khi nhận được món quà xịn sò này.\r\n- Dung tích: 420 ml\r\n- Chất liệu: Sứ', 'coc_soc_ngang.png', 0, 0, 0, 0, 0),
(53, 11, 'Cốc Sứ The Coffee House TPHCM', 'coc-su-the-coffee-house-tphcm', 120000, 0, 'Lấy cảm hứng từ những biểu tượng quen thuộc của Sài Gòn, nhộn nhịp và gần gũi, đây sẽ là món quà đặc biệt mà bất cứ ai cũng sẽ yêu thích, hôm nay bạn cũng có thể tự tặng món quà này cho mình.\r\n- Dung tích: 450ml\r\n- Chất liệu: Sứ', 'coc_saigon.png', 0, 0, 0, 0, 0),
(54, 11, 'Ly Farm to Cup (Cao)', 'ly-farm-to-cup-cao', 150000, 0, 'Lấy cảm hứng từ vùng đất cà phê Việt Nam, ly sứ Farm to cup sẽ cho bạn trải nghiệm đầy cảm hứng với món yêu thích tại nhà, tại nơi làm việc mỗi ngày.\r\n- Dung tích ly: 400ml\r\n- Thành phần: Cao lanh, đất sét, tráng thạch, men màu.', 'ly_farm_cao.png', 0, 0, 0, 0, 0),
(55, 11, 'Ly Farm to Cup (Thấp)', 'ly-farm-to-cup-thap', 120000, 0, 'Lấy cảm hứng từ vùng đất cà phê Việt Nam, ly sứ Farm to cup sẽ cho bạn trải nghiệm đầy cảm hứng với món yêu thích tại nhà, tại nơi làm việc mỗi ngày.\r\n- Dung tích ly: 300ml\r\n- Thành phần: Cao lanh, đất sét, tráng thạch, men màu.', 'ly_farm_thap.png', 0, 0, 0, 0, 0),
(56, 11, 'Ly Giữ Nhiệt Inox The Cofffee House (Xám)', 'ly-giu-nhiet-inox-the-cofffee-house-xam', 250000, 0, 'Một chiếc ly mới, mang lại cảm hứng mới mỗi ngày cho bạn hoặc cho ai đó khi nhận được món quà xịn sò này.\r\n- Dung tích: 500ml\r\n- Chất liệu: Inox', 'binh_inox_xam.png', 0, 0, 0, 0, 0),
(57, 11, 'Ly Inox Ống Hút Đen Nhám', 'ly-inox-ong-hut-den-nham', 280000, 0, 'Màu đen ngày nào cũng được khen- Chiếc ly inbox kèm ống hút mang sắc đen ngầu này sẽ là người bạn đồng hành may mắn mỗi ngày bên bạn, nước ngon hơn, nhiều cảm hứng hơn.\r\n- Dung tích: 500ml\r\n- Chất liệu: Inox, nhựa', 'ly_inox_onghut_den.png', 0, 0, 0, 0, 0),
(58, 11, 'Ly Inox Ống Hút Hồng Xanh', 'ly-inox-ong-hut-hong-xanh', 280000, 0, 'Màu hồng xanh may mắn tới nhanh - Chiếc ly inbox kèm ống hút mang sắc xanh này sẽ là người bạn đồng hành may mắn mỗi ngày bên bạn, nước ngon hơn, nhiều cảm hứng hơn.\r\n- Dung tích: 500ml\r\n- Chất liệu: Inox, nhựa', 'ly_innox_onghut_hongxanh.png', 0, 0, 0, 0, 0),
(59, 11, 'Ly Inox Ống Hút Xanh Biển', 'ly-inox-ong-hut-xanh-bien', 280000, 0, 'Màu xanh \"chốt\" gì cũng nhanh - Chiếc ly inbox kèm ống hút mang sắc xanh này sẽ là người bạn đồng hành may mắn mỗi ngày bên bạn, nước ngon hơn, nhiều cảm hứng hơn.\r\n- Dung tích: 500ml\r\n- Chất liệu: Inox, nhựa', 'ly_inox_onghut_xanh.png', 0, 0, 0, 0, 0),
(60, 11, 'Ly Nhựa 2 Lớp Con Thuyền', 'ly-nhua-2-lop-con-thuyen', 180000, 0, 'Một người bạn \"go green\" mới sẽ mang lại nguồn cảm hứng mới cho món quen mỗi ngày của bạn.\r\n- Dung tích ly: 450ml\r\n- Chất liệu: Inox, nhựa 2 lớp', 'ly_nhua_conthuyen.png', 0, 0, 0, 0, 0),
(61, 11, 'Ly Nhựa 2 Lớp Quả Dứa', 'ly-nhua-2-lop-qua-dua', 180000, 0, 'Một người bạn \"Go green\" mới sẽ mang lại nguồn cảm hứng mới cho món quen mỗi ngày của bạn.\r\n- Dung tích ly: 450ml\r\n- Chất liệu: Inox, nhựa 2 lớp', 'ly_nhua_quadua.png', 0, 0, 0, 0, 0),
(62, 11, 'Sổ Rước đèn đón trăng', 'so-ruoc-den-don-trang', 79000, 0, 'Cuốn sổ nhỏ, giúp bạn \"nhớ\" những điều hay quên - Là mùa Trung thu ấm, công việc, từ mới, ý tưởng,...hay chỉ đơn giản là nhắc nhở chính mình \"Bớt chút bận rộn, để về nhà trông trăng với người mình thương\".\r\n- Chất liệu: Giấy ford kem\r\n- Số trang: 192 trang.\r\n- Kích thước: 19 cm x 13 cm', 'so_ruoc_den.png', 0, 0, 1, 0, 0),
(63, 11, 'Sticker The Tale of Cuội', 'sticker-the-tale-of-cuoi', 29000, 0, 'Chị Hằng, chú Cuội, Thỏ ngọc,.. và nhiều hình ảnh xinh xinh của mùa Trung Thu đều ở trên miếng dán \"sticker\" này. Cứ \"dán\" lên đâu đó bạn thích, là thấy Trung Thu về liền đó nha!\r\n- Chất liệu: Decal\r\n\r\n', 'sticker_ruoc_den.png', 0, 0, 1, 0, 0),
(64, 11, 'Túi Canvas Đà Nẵng', 'tui-canvas-da-nang', 79000, 0, 'Đựng cả thế giới với túi vải của Nhà. Một Đà Nẵng hiện đại và dễ thương được khắc hoạ trên chiếc túi xinh thiệt xinh này. Cùng mang túi đi khắp thế gian thôi!', 'tui_canvas_danang.png', 0, 0, 0, 0, 0),
(65, 11, 'Túi Canvas Hà Nội', 'tui-canvas-ha-noi', 79000, 0, 'Đựng cả thế giới với túi vải của Nhà. Một Hà Nội cổ kính, thân thương được khắc hoạ trên chiếc túi xinh thiệt xinh này. Cùng mang túi đi khắp thế gian thôi!', 'tui_canvas_hanoi.png', 0, 0, 0, 0, 0),
(66, 11, 'Túi Canvas Sài Gòn', 'tui-canvas-sai-gon', 79000, 0, 'Đựng cả thế giới với túi vải của Nhà. Một Sài Gòn nhộn nhịp và gần gũi được khắc hoạ trên chiếc túi xinh thiệt xinh này. Cùng mang túi đi khắp thế gian thôi!', 'tui_canvas_saigon.png', 0, 0, 0, 0, 0),
(67, 11, 'Túi canvas Trăng Nhà Sung Túc', 'tui-canvas-trang-nha-sung-tuc', 79000, 0, 'Đựng cả thế giới với túi vải của Nhà. Một trung thu hiện đại nhưng quen thuộc, gần gũi được khắc hoạ trên chiếc túi xinh thiệt xinh này. Cùng mang túi đi khắp thế gian thôi!\r\n- Chất liệu: Canvas, cotton\r\n- Kích thước: 38 cm x 38 cm', 'tui_canvas_ruoctrang.png', 0, 1, 1, 0, 0),
(68, 1, 'Cà Phê Sữa Trứng Muối', 'ca-phe-sua-trung-muoi', 55000, 0, '1 phiên bản cà phê đặc biệt, được kết hợp bởi 1 shot espresso đượm vị, kết hợp với lớp sữa tươi và foam trứng muối mặn nhẹ, beo béo - cho cảm giác \"phê\" đúng nghĩa, tỉnh táo đầy mới lạ.', 'caphe_sua_trungmuoi.png', 0, 0, 1, 0, 0),
(69, 5, 'Trà Sữa Khoai Môn', 'tra-sua-khoai-mon', 42000, 0, 'Vị khoai môn thơm ngon quyện cùng nền trà lài hảo hạng - tạo nên ly Trà sữa \"huyền thoại\" ngọt bùi đầy cân bằng. Có sẵn \"khoai môn thiệt\" mềm mềm cho từng ngụm thiệt đã.', 'tra_sua_khoaimon.png', 0, 0, 1, 0, 0),
(70, 4, 'Trà Lài Sen Trứng Muối', 'tra-lai-sen-trung-muoi', 45000, 0, 'Nghe vô lý nhưng lại ngon thuyết phục. Nền trà hảo hạng cùng hạt sen và lớp foam trứng muối beo béo - cho hương vị tươi mát, ngon bất ngờ chỉ từ ngụm đầu tiên.', 'tra_sen_trung_muoi.png', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `product_view`
-- (See below for the actual view)
--
CREATE TABLE `product_view` (
`id_cat` int(10)
,`tensanpham` varchar(225)
,`tenkhongdau` varchar(250)
,`cat_id` int(10)
,`cat_name` varchar(250)
,`hinh` text
,`gia` int(10)
,`hienthi` int(11)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `slide` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `slide`) VALUES
(1, 'slide1.png'),
(2, 'slide2.png'),
(3, 'slide3.png'),
(4, 'slide4.png');

-- --------------------------------------------------------

--
-- Cấu trúc cho view `product_view`
--
DROP TABLE IF EXISTS `product_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_view`  AS  select `product`.`id_cat` AS `id_cat`,`product`.`tensanpham` AS `tensanpham`,`product`.`tenkhongdau` AS `tenkhongdau`,`category`.`cat_id` AS `cat_id`,`category`.`cat_name` AS `cat_name`,`product`.`hinh` AS `hinh`,`product`.`gia` AS `gia`,`product`.`hienthi` AS `hienthi` from (`product` join `category` on(`product`.`id_cat` = `category`.`cat_id`)) ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
