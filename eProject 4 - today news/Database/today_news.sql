-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 08:21 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE `today_news` character set UTF8 collate utf8_general_ci;
USE `today_news`;


CREATE TABLE `article` (
  `id` int(2) NOT NULL,
  `title` varchar(500) NOT NULL,
  `id_category` int(2) NOT NULL,
  `id_user` int(2) DEFAULT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `feature` int(2) DEFAULT NULL,
  `feature_image` varchar(100) DEFAULT NULL,
  `publish` int(2) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `id_category`, `id_user`, `thumbnail`, `content`, `feature`, `feature_image`, `publish`, `date`) VALUES
(5, 'Hai cựu Phó chủ tịch UBND TP HCM bị đề nghị kỷ luật', 1, 1, '_thumb11', '<p>Ủy ban Kiểm tra Trung ương đề nghị Ban Bí thư xem xét, kỷ luật hai cựu Phó chủ tịch UBND TP HCM Nguyễn Thành Tài, Trần Vĩnh Tuyến.</p>\r\n\r\n<p>Tại kỳ họp thứ năm (từ 2 đến 4/8), Ủy ban Kiểm tra Trung ương đã xem xét báo cáo đề nghị thi hành kỷ luật các tổ chức đảng và đảng viên vi phạm liên quan 4 vụ án xảy ra trên địa bàn TP HCM.</p>\r\n\r\n<p>Theo đó, cơ quan kiểm tra quyết định cảnh cáo Đảng ủy Công ty IPC nhiệm kỳ 2015-2020; Chi bộ Công ty SADECO các nhiệm kỳ 2015-2017, 2017-2020; Chi bộ Công ty Tân Thuận các nhiệm kỳ 2015-2017, 2017-2020 và Đảng ủy Cơ quan Văn phòng Thành ủy TP HCM nhiệm kỳ 2015-2020.</p>\r\n\r\n<p>Các ông&nbsp;<strong>Nguyễn Hoài Nam</strong>&nbsp;(nguyên Bí thư Quận ủy Quận 2, nguyên Phó giám đốc Sở Tài nguyên và Môi trường),&nbsp;<strong>Lê Tấn Hùng</strong>&nbsp;(nguyên Tổng giám đốc Tổng Công ty Nông nghiệp Sài Gòn - SAGRI),&nbsp;<strong>Tề Trí Dũng&nbsp;</strong>(nguyên Tổng Giám đốc Công ty IPC) bị khai trừ Đảng.</p>\r\n\r\n<p>Ủy ban Kiểm tra Trung ương đề nghị Ban Bí thư xem xét, thi hành kỷ luật các ông&nbsp;<strong>Nguyễn Thành Tài</strong>&nbsp;(nguyên Phó chủ tịch UBND TP HCM),&nbsp;<strong>Trần Vĩnh Tuyến</strong>&nbsp;(nguyên Phó chủ tịch UBND TP HCM),&nbsp;<strong>Trần Trọng Tuấn</strong>&nbsp;(nguyên Giám đốc Sở Xây dựng TP HCM).</p>\r\n', 1, NULL, 1, '2021-07-25'),
(6, 'Mỹ viện trợ Việt Nam 4,5 triệu USD phòng chống Covid-19', 1, 1, '_flickr2', '<p>Chính phủ Mỹ đồng ý viện trợ Việt Nam 4,5 triệu USD nhằm hỗ trợ thực hiện tiêm chủng và nâng cao năng lực hệ thống y tế trong phòng chống Covid-19.</p>\r\n\r\n<p>Theo tin chiều 4/8 từ Bộ Y tế, đại diện Trung tâm Kiểm soát Bệnh tật (CDC) Mỹ và Cơ quan Phát triển Quốc tế Mỹ (USAID) cho biết như trên trong cuộc làm việc với Bộ trưởng Nguyễn Thanh Long chiều hôm trước.</p>\r\n\r\n<p>Trước mắt, dự kiến đầu tháng 9, 77 tủ cấp đông âm sâu (-75 độ C) để bảo quản vaccine, do&nbsp;<a href=\"https://vnexpress.net/chu-de/my-712\">Mỹ</a>&nbsp;viện trợ sẽ về Việt Nam. Đây là số tủ cấp đông âm sâu được Bộ trưởng Quốc phòng Mỹ trong chuyến thăm Việt Nam tháng 7 thông báo viện trợ.</p>\r\n\r\n<p>Covid-19 đang diễn biến hết sức phức tạp với khả năng lây lan nhanh và mạnh của biến thể Delta. Số ca nhiễm tăng cao gây áp lực lớn với hệ thống y tế, hệ thống hồi sức tích cực (ICU) trở nên quá tải. Bộ Y tế đang thiết lập các trung tâm ICU lớn tại TP HCM và một số tỉnh phía Nam. Bộ Y tế đề xuất USAID và CDC Mỹ hỗ trợ máy thở, bồn chứa oxy và các trang thiết bị để điều trị tích cực cho các bệnh nhân nặng, hạn chế tử vong.</p>\r\n\r\n<p><strong>Việt Nam hiện rất cần thêm nguồn cung ứng vaccine</strong>, Bộ trưởng Long chia sẻ.&nbsp;<a href=\"https://vnexpress.net/chu-de/viet-nam-450\">Việt Nam</a>&nbsp;đã ký hợp đồng mua 31 triệu liều vaccine Pfizer và đang đàm phán mua thêm 20 triệu liều nữa. Tuy nhiên, tới quý 4, khoảng 47 triệu liều vaccine Pfizer mới về Việt Nam. Bộ trưởng mong muốn USAID tiếp tục vận động với Chính phủ Mỹ để Việt Nam sớm nhận được thêm vaccine viện trợ ngay trong tháng 8, 9.</p>\r\n\r\n<p>\"Đây là vấn đề ưu tiên giúp ứng phó tình hình dịch Covid-19 diễn biến phức tạp và sự thiếu hụt nghiêm trọng của nguồn vaccine tại Việt Nam\", ông Long nói.</p>\r\n\r\n<p>Hiện Chính phủ Mỹ đã hoàn tất hợp đồng với hãng Pfizer và cam kết hỗ trợ 500 triệu liều vaccine Pfizer để thúc đẩy nỗ lực tiêm chủng trên toàn cầu.</p>\r\n', 0, NULL, 1, '2021-07-24'),
(7, 'Nghệ sĩ Giang Còi qua đời', 1, 1, '_flickr3', '<p>Nghệ sĩ Giang Còi qua đời hôm 4/8, sau thời gian điều trị ung thư họng, hưởng dương 59 tuổi.</p>\r\n\r\n<p>Diễn viên Trà My - bạn thân của Giang Còi - cho biết anh mất lúc gần 23h tại nhà riêng. Trên fanpage của anh, con trai thông báo tin buồn, đăng cùng câu bố thường nói khi còn sống: \"Sống dài ngắn không quan trọng, quan trọng là sống như thế nào\".</p>\r\n\r\n<p>Những ngày cuối đời, anh điều trị ở Bệnh viện Phổi Trung ương, bệnh tình&nbsp;<a href=\"https://vnexpress.net/nghe-si-giang-coi-tro-benh-nang-4304981.html\">trở nặng</a>. Anh ăn, ngủ kém, khó thở, phải dùng ống truyền dịch nhưng giữ tinh thần chiến đấu lạc quan.</p>\r\n\r\n<p><a href=\"https://vnexpress.net/tag/giang-coi-228099\">Giang Còi</a>&nbsp;phát hiện mắc ung thư hạ họng hồi đầu năm, khi bệnh đã ở giai đoạn ba. Khi đó, bác sĩ nói khối u của anh đã di căn, chỉ còn sống được khoảng hai năm. Anh từ chối điều trị bằng hóa chất. Mất giọng nói, anh ở nhà vui thú điền viên. Thỉnh thoảng, diễn viên vẫn tự lái xe đến trường quay ôn kỷ niệm cùng bạn bè. Hồi tháng 5, nghệ sĩ ngất xỉu trên đường đi chơi,&nbsp;<a href=\"https://vnexpress.net/nghe-si-giang-coi-nhap-vien-4273411.html\">cấp cứu</a>&nbsp;ở Bệnh viện Bạch Mai. Ngoài ung thư, anh còn mắc nhiều bệnh nền như xơ gan, xuất huyết dạ dày.</p>\r\n', 0, NULL, 1, '2021-07-26'),
(8, 'Hậu trường hài hước của \'Cây táo nở hoa\'', 3, 1, '_flickr4', '<p><em><a href=\"https://vnexpress.net/tag/cay-tao-no-hoa-1401807\">Cây táo nở hoa</a>&nbsp;</em>do Võ Thạch Thảo đạo diễn, Việt hóa từ tác phẩm&nbsp;<em>What’s wrong, Poong Sang&nbsp;</em>từng gây tiếng vang của Hàn Quốc. Chuyện phim xoay quanh cuộc sống của vợ chồng Ngọc (Thái Hòa) - Hạnh (Hồng Ánh) và bốn người em với rất nhiều mâu thuẫn, sóng gió.</p>\r\n\r\n<p>Phim hiện chiếu 54 trên tổng 67 tập, bị chê nặng bi kịch, lê thê. Điểm cộng của phim là diễn xuất ấn tượng của dàn nghệ sĩ tên tuổi như&nbsp;<a href=\"https://vnexpress.net/chu-de/thai-hoa-2461\">Thái Hòa</a>,&nbsp;<a href=\"https://vnexpress.net/giai-tri/hong-anh-toi-kiet-suc-voi-cay-tao-no-hoa-4275557.html\">Hồng Ánh</a>,&nbsp;<a href=\"https://vnexpress.net/giai-tri/quoc-trong-dien-vien-nhu-hong-anh-thai-hoa-rat-quy-4276872.html\">Quốc Trọng</a>, Lan Hương. Các diễn viên trẻ như Nhã Phương,&nbsp;<a href=\"https://vnexpress.net/giai-tri/truong-the-vinh-toi-phai-dieu-chinh-tam-ly-sau-vai-nga-4297438.html\">Trương Thế Vinh</a>,&nbsp;<a href=\"https://vnexpress.net/giai-tri/thuy-ngan-toi-bi-tat-sung-mat-khi-dong-cay-tao-no-hoa-4277969.html\">Thúy Ngân</a>, Song Luân... làm tròn vai.</p>\r\n', 0, NULL, 1, '2021-07-26'),
(9, 'Cẩm Vân và con gái hát ở bệnh viện dã chiến', 3, 1, '_thumb01', '<p>Chị thể hiện ca khúc&nbsp;<em>Thành phố tình yêu và nỗi nhớ</em>&nbsp;(sáng tác: Phạm Minh Tuấn, lời: Nguyễn Nhật Ánh), và song ca cùng con gái. Nhiều khán giả trên tầng cao của bệnh viện dã chiến thu dung điều trị Covid-19 số 11, thành phố Thủ Đức, vẫy tay, hát theo các tiết mục. Danh ca cho biết: \"Tôi chưa bao giờ nghĩ có ngày mình mặc đồ bảo hộ để hát như thế này. Tôi xúc động khi nhiều tháng nay, các điều dưỡng, y bác sĩ chưa được về nhà. Lúc này, tôi tin mọi người cùng chung một nhịp đập, hướng đến âm nhạc như liều thuốc tinh thần cho những khó khăn\".</p>\r\n\r\n<p>CeCe Trương thể hiện bài<em>&nbsp;Ở trọ</em>&nbsp;(Trịnh Công Sơn),&nbsp;<em>Gánh mẹ</em>&nbsp;(Quách Beem). Giọng ca trẻ nói háo hức muốn làm điều gì đó để động viên tinh thần lực lượng tuyến đầu khi tình hình dịch căng thẳng. Cô cho biết: \"Sau đêm diễn, về nhà, cảm xúc \'nổi da gà\' vẫn còn đọng lại trong tôi, nhất là khi nhớ lại cảnh nhiều khán giả gõ nồi, chảo, hò hét cổ vũ ca sĩ\".</p>\r\n\r\n<p>Đêm nhạc còn có các gương mặt hoạt động thường xuyên trong đội tình nguyện viên như:&nbsp;<a href=\"https://vnexpress.net/phuong-thanh-cat-toc-cho-luc-luong-chong-dich-4309609.html\">Phương Thanh</a>, Quốc Đại, Lê Minh... Ca sĩ Tóc Tiên lần đầu tham gia vào hoạt động tình nguyện. Ca sĩ thể hiện hai nhạc phẩm&nbsp;<em>Ngày mai</em>&nbsp;(Lưu Thiên Hương) và&nbsp;<em>Có ai thương em như anh</em>&nbsp;(Bùi Công Nam).</p>\r\n', 0, NULL, 1, '2021-07-27'),
(10, 'Mối tình giúp Yves Saint Laurent thăng hoa', 3, 1, '_flickr6', '<p>Vốn nhút nhát, nhà thiết kế Yves Saint Laurent vẫn tạo nên đế chế thời trang nhờ sự hỗ trợ của người tình trọn đời - doanh nhân Pierre Bergé.</p>\r\n\r\n<p>Hôm 1/8, loạt tạp chí thời trang ca ngợi huyền thoại&nbsp;<a href=\"https://vnexpress.net/tag/yves-saint-laurent-140127\">Yves Saint Laurent</a>&nbsp;- một trong những tên tuổi vĩ đại của ngành thời trang Pháp thế kỷ 20 - nhân kỷ niệm 85 năm ngày sinh của ông. Khi nói tới thành công của Saint Laurent, một cái tên khác luôn được nhắc cùng:&nbsp;<a href=\"https://vnexpress.net/cuu-ceo-cua-yves-saint-laurent-qua-doi-3638779.html\">Pierre Bergé</a>&nbsp;- người tình và cộng sự hơn nửa thế kỷ của nhà thiết kế.</p>\r\n\r\n<p>Tờ&nbsp;<em>WWD</em>&nbsp;viết: \"Tên tuổi Pierre Bergé và Yves Saint Laurent vĩnh viễn gắn với nhau giữa dòng chảy của lịch sử thời trang\". Nhiều chuyên gia nhận định Saint Laurent khó đạt được thành công lớn nếu không có sự hỗ trợ từ người tình cả trong công việc lẫn đời sống.</p>\r\n\r\n<p>Tháng 10/1957, Saint Laurent và Pierre Bergé cùng viếng tang huyền thoại&nbsp;<a href=\"https://vnexpress.net/christian-dior-huyen-thoai-say-hoa-4228924.html\">Christian Dior</a>&nbsp;nhưng chưa có duyên chạm mặt. Thuở đó, Saint Laurent mới 21 tuổi, là học trò duy nhất của Dior. Giới mộ điệu<strong>&nbsp;</strong>nghi ngờ khả năng thành công của người thừa kế non trẻ khi phải gánh trên vai thương hiệu hàng đầu làng mốt. Pierre Bergé là nhà sưu tập nghệ thuật có tiếng, chơi thân với nhiều tên tuổi như Christian Dior,&nbsp;<a href=\"https://vnexpress.net/cristobal-balenciaga-vua-thoi-trang-cao-cap-4223413.html\">Balenciaga</a>. Tuy nhiên, Bergé có chút khinh thường giới thiết kế bởi cho rằng thời trang không phải nghệ thuật mà chỉ là thứ kiếm tiền. Suy nghĩ này đã thay đổi khi ông lần đầu chiêm ngưỡng sáng tạo của Saint Laurent, vài tháng sau khi Dior qua đời.</p>\r\n\r\n<p>Bergé nói lại với&nbsp;<em>The Talks</em>: \"Trong buổi trình diễn bộ sưu tập đầu tiên của cậu ấy (Yves Saint Laurent) tại Dior, tôi đã nhận ra mình thật ngu ngốc. Tôi yêu những gì nhìn thấy và biết rằng cậu ấy sẽ là một nhà thiết kế thời trang tuyệt vời\".</p>\r\n\r\n<p>Năm 1958, cả hai lần đầu gặp nhau trong buổi tiệc tối do Marie-Louise Bousquet - tổng biên tập tạp chí&nbsp;<em>Harper\'s Bazaar&nbsp;</em>thời đó - tổ chức. Bergé đi cùng bạn tình - nghệ sĩ Bernard Buffet, nhưng lại bị thu hút bởi dáng người mảnh mai, vẻ nhút nhát ẩn dưới mái tóc dày và cặp kính cận của Saint Laurent. Vốn đã thầm cảm mến từ trước nên sau ngày hôm ấy, ông chia tay người yêu lâu năm để đến với nhà thiết kế. Bergé gọi khoảnh khắc đó là tình yêu sét đánh.</p>\r\n', 0, NULL, 1, '2021-07-27'),
(11, 'Vua cờ Carlsen bị loại ở bán kết Cup Thế giới', 2, 1, '_thumb02', '<p>Hành trình đoạt Cup Thế giới đầu tiên của Magnus Carlsen bị đối thủ Ba Lan Jan-Krzysztof Duda chặn đứng ở bán kết tối 3/8.</p>\r\n\r\n<p>Sau khi hoà cả hai ván cờ tiêu chuẩn, Carlsen và Duda phân thắng bại bằng loạt cờ nhanh tối 3/8. Duda cầm quân trắng ở ván cờ nhanh đầu tiên, nhưng chỉ hoà. Đến ván thứ hai dù cầm quân đen, kỳ thủ số một Ba Lan bất ngờ thắng trong tàn cuộc tượng cùng màu. Chiến thắng giúp Duda vào chung kết gặp Sergey Karjakin, còn Vua cờ người Na Uy tranh giải ba cùng Vladimir Fedoseev.</p>\r\n\r\n<p>\"Thất bại này thật đau\", Carlsen viết lên&nbsp;<em>Twitter</em>. \"Nhưng tôi cũng chúc mừng Duda và Karjakin vì đã vào chung kết. Tôi cũng hài lòng với sự tiến bộ của mình ở giải này. Điều đó sẽ giúp ích nhiều cho trận bảo vệ ngôi Vua cờ vào cuối năm\".</p>\r\n\r\n<p>Carlsen tiếp tục vô duyên với Cup Thế giới, khi chưa từng vào chung kết ở giải đấu thể thức loại trực tiếp này. Qua 11 kỳ Cup Thế giới, Carlsen mới bốn lần dự vào năm 2005, 2007, 2017 và 2021. Thành tích tốt nhất của anh là bán kết năm 2007 và 2021. Còn năm 2017, anh bị loại Bốc Tường Chí (Trung Quốc) loại ngay vòng 1/16.</p>\r\n\r\n<p>Duda cũng không phải đối thủ dễ chơi với Carlsen. Chính kỳ thủ Ba Lan 23 tuổi đã&nbsp;<a href=\"https://vnexpress.net/vua-co-carlsen-dut-mach-125-van-bat-bai-4174770.html\">dứt mạch 125 ván bất bại</a>&nbsp;của Carlsen tháng 10/2020. Khi đó Duda thắng Carlsen ở ván thứ năm siêu giải Na Uy. Anh được coi là đối thủ thách thức ngôi Vua cờ trong tương lai.</p>\r\n\r\n<p>Vào chung kết Cup Thế giới, Duda và Karjakin cũng kiếm được suất dự giải Candidates 2022. Giải đấu này sẽ chọn ra người thắng để tranh ngôi Vua cờ. Tại Candidates 2020, vốn bị hoãn sang năm 2021, Ian Nepomniachtchi về nhất và sẽ&nbsp;<a href=\"https://vnexpress.net/nepomniachtchi-tranh-ngoi-vua-co-voi-carlsen-4268775.html\">thách đấu Carlsen</a>&nbsp;cuối năm nay.</p>\r\n\r\n<p>Cup Cờ vua Thế giới diễn ra hai năm một lần, quy tụ 128 kỳ thủ đấu loại trực tiếp. Mỗi trần gồm hai ván cờ tiêu chuẩn, đổi màu quân. Nếu hoà, hai kỳ thủ lần lượt đấu thêm hai ván cờ nhanh, rồi hai ván cờ chớp.</p>\r\n\r\n<p>Cup Thế giới 2021 diễn ra từ 12/7 đến 6/8 tại Sochi, Nga. Việt Nam có hai suất nhưng không tham dự.</p>\r\n', 0, NULL, 1, '2021-07-28'),
(12, 'Kenya tiếp tục thống trị đường chạy 800m nam', 2, 1, '_thumb03', '<p>Kenya lần thứ tư liên tiếp giành HCV 800m nam môn điền kinh ở Olympic, khi Emmanuel Korir về nhất với thời gian 1 phút 45 giây 06, hôm 4/8.</p>\r\n\r\n<p>Chấn thương của David Rudisha, kỷ lục gia Olympic và thế giới, không ảnh hưởng đến tham vọng giành HC vàng của Kenya. Hai đồng hương của anh, Korir và Cheruiyot Rotich lần lượt về nhất và nhì ở chung kết 800m nam. Kenya, nhờ tấm HC vàng đầu tiên, vươn lên thứ 38 trên bảng tổng sắp HC Olympic.</p>\r\n\r\n<p>Korir đạt 1 phút 45 giây 06, trong khi Rotich chậm hơn 17 phần trăm giây và giành HC bạc. Peter Bol (Australia) dẫn đầu từ sớm, nhưng chỉ về thứ tư. HC đồng thuộc về Patryk Dobek (Ba Lan), người mới chuyển từ 400m rào sang tập 800m hồi đầu năm.</p>\r\n\r\n<p>\"Anh chàng Australia tăng tốc sớm, và điều đó thúc đẩy tôi\", Korir nói sau khi giành HC vàng. \"Hôm nay là ngày của tôi. Tôi luôn cầu nguyện để được đến Olympic. Một ngày nào đó, tôi sẽ chinh phục kỷ lục thế giới\".</p>\r\n', 0, NULL, 1, '2021-07-29'),
(13, 'Thái Lan muốn đăng cai AFF Cup 2020', 2, 1, '_thumb05', '<p>Liên đoàn Bóng đá Thái Lan muốn đăng cai AFF Cup năm nay để các tuyển thủ không phải cách ly và tránh ảnh hưởng đến lịch đấu của Thai League.</p>\r\n\r\n<p>AFF Cup 2020 theo kế hoạch ban đầu diễn ra từ 23/11/2020 đến 31/12/2020. Nhưng do Covid-19, Ban tổ chức phải&nbsp;<a href=\"https://vnexpress.net/aff-cup-2020-doi-lich-4138777.html\">dời sang năm 2021</a>. Liên đoàn Bóng đá Đông Nam Á AFF hôm 17/12/2020 xác nhận, giải sẽ diễn ra&nbsp;<a href=\"https://vnexpress.net/aff-cup-lai-lui-lich-4202867.html\">từ ngày 5/12/2021 đến 1/1/2022</a>, nhưng chưa chốt phương án về địa điểm.</p>\r\n\r\n<p>FAT dự định sẽ đăng cai, nếu AFF điều chỉnh thể thức và chuyển sang thi đấu tập trung ở một quốc gia trong khu vực. Patit Suphaphong, Tổng thư ký FAT, chia sẻ với&nbsp;<em>Siamsport</em>&nbsp;sáng 4/8: \"Công ty tổ chức Thai League cùng các CLB thành viên đã họp để tính toán cho mùa giải mới. Lịch trình có thể bị ảnh hưởng bởi lịch thi đấu của đội tuyển quốc gia. Thái Lan sẵn sàng tổ chức tập trung AFF Cup để giảm bớt áp lực về thời gian cách ly với các cầu thủ. Nếu điều này thành hiện thực, tôi tin các CLB sẽ sẵn sàng nhả người cho ĐTQG\".</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thái Lan mới đây đã tổ chức thành công các trận AFC Champions League, áp dụng quy tắc \"bong bóng\" theo yêu cầu của Liên đoàn Bóng đá châu Á (AFC). Thái Lan cũng có nhiều sân bóng đạt tiêu chuẩn quốc tế.</p>\r\n\r\n<p>Cũng vì Covid-19, AFF từng một lần điều thể thức thi đấu. 10 đội được chia vào hai bảng, đá ở hai quốc gia khác nhau. Bán kết và chung kết sẽ không diễn ra theo hình thức lượt đi - lượt về trên sân nhà - sân khách, mà đấu loại trực tiếp một lượt tại một quốc gia được chọn.</p>\r\n\r\n<p>AFF&nbsp;<a href=\"https://vnexpress.net/viet-nam-thai-lan-khong-cung-bang-o-aff-cup-2021-4328963.html\">đã phân nhóm hạt giống</a>&nbsp;dựa trên thành tích ba kỳ giải gần nhất. Đương kim vô địch Việt Nam nằm ở nhóm hạt giống số một cùng Thái Lan. Điều này đồng nghĩa với việc hai đội sẽ chỉ có thể gặp nhau ở vòng knock-out.</p>\r\n\r\n<p>Nhóm hạt giống số hai gồm đương kim Á quân Malaysia và Indonesia. Nhóm hạt giống số ba là Philippines và Myanmar. Nhóm hạt giống số bốn có Singapore và Campuchia. Timor Leste và Brunei thuộc nhóm cuối.</p>\r\n\r\n<p>Lễ bốc thăm chia bảng sẽ diễn ra ngày 10/8.</p>\r\n', 0, NULL, 1, '2021-07-30'),
(14, 'Làm gì khi test nhanh Covid-19 lên hai vạch?', 1, 1, '_thumb11', '<p>Nhỏ giọt mẫu dịch mũi vào bộ kit test nhanh, kết quả hiện \"hai vạch\", tức là dấu hiệu dương tính. Bác sĩ khuyến cáo test nhanh dương tính thì không chắc chắn đã mắc Covid-19, cần bình tĩnh xử trí phù hợp.</p>\r\n\r\n<p>Tiến sĩ, bác sĩ Lê Quốc Hùng, Trưởng Khoa Bệnh Nhiệt đới, Bệnh viện Chợ Rẫy, cho biết test nhanh là một xét nghiệm tầm soát chứ chưa phải là xét nghiệm khẳng định Covid-19. Khi test nhanh dương tính, khả năng người đó đã mắc&nbsp;<a href=\"https://vnexpress.net/covid-19/tin-tuc\">Covid-19</a>&nbsp;nhưng không phải chắc chắn hoàn toàn, vẫn có thể là dương tính giả. Những trường hợp này phải xét nghiệm lại bằng phương pháp PCR mang tính khẳng định.</p>\r\n\r\n<p>Nhiều người tự mua các bộ kit test nhanh Covid-19 về sử dụng, khi có kết quả \"hai vạch\", tức dương tính thì lo âu, khó thở. Theo bác sĩ Hùng, bất kỳ người nào khi đối diện với một nguy cơ mà bản thân không mong muốn, cơ thể có thể phát sinh phản ứng hồi hộp, lo lắng và khó thở. Do đó, trước hết cần giữ bình tĩnh.</p>\r\n\r\n<p>Test nhanh dương tính, tức bản thân có nguy cơ, cần có ý thức bảo vệ người xung quanh. Lập tức cách ly với người thân, người trong cơ quan, tránh tiếp xúc với mọi người. Thông báo nhân viên y tế địa phương để có thể xác định lại tính chính xác của kết quả test nhanh, giúp xác định người test có mắc Covid-19 không hay chỉ là kết quả dương tính giả, cũng như được hướng dẫn những bước xử trí tiếp theo.</p>\r\n\r\n<p>\"Bạn cảm thấy lo lắng, khó thở là phản ứng tự nhiên của cơ thể khi phải đối mặt với những yếu tố nguy cơ cao. Sau một khoảng thời gian ngắn, bản thân sẽ có thể điều hòa lại nhịp thở, hô hấp\", bác sĩ Hùng nói.</p>\r\n\r\n<p>Trong thời gian chờ xét nghiệm khẳng định PCR, bạn tiến hành các biện pháp tự cách ly như đã nhiễm. Theo dõi sát diễn biến sức khỏe của mình để có cách xử trí phù hợp, như có khó thở không, sốt, ho hay không và sốt, ho như thế nào...</p>\r\n\r\n<p>Bác sĩ Hùng khuyến cáo, muốn xác định có khó thở thật sự hay không thì cần kiểm tra sau mỗi 15 phút đến 30 phút. Trường hợp nhà có thiết bị đo SpO2 thì cần lưu ý chỉ số dưới 95% trong điều kiện thở khí trời là dấu hiệu cảnh báo thiếu oxy máu.</p>\r\n\r\n<p>Có thể đếm nhịp thở và nhịp tim. Nếu nhịp thở tăng lên trên 20 lần một phút trong điều kiện nghỉ ngơi thì đó là biểu hiện có thể cảnh báo nguy cơ. Cần liên hệ với nhân viên y tế để kiểm tra lại, vì cũng có những trường hợp người có nhịp thở nhanh hơn người bình thường, như người có bệnh phổi trước đó.</p>\r\n\r\n<p>Nhịp tim thông thường ở mức 80-100 lần mỗi phút. Nếu nhịp thở trên 20 lần một phút, nhịp tim trên 100 lần một phút là dấu hiệu nguy cơ, kết hợp cùng các biểu hiện khác của bệnh Covid-19. Khi ấy, nên liên hệ với y tế địa phương để xác định đúng tình trạng của bản thân và có những hướng xử trí phù hợp.</p>\r\n', 0, NULL, 1, '2021-07-23'),
(15, 'WHO: Việt Nam đang chống dịch đúng hướng', 4, 1, '_thumb07', '<p>Tiến sĩ Kidong Park, Trưởng đại diện Tổ chức Y tế Thế giới (WHO) tại Việt Nam, đánh giá đợt dịch này rất khó khăn song các ứng phó của Việt Nam đã \"đi đúng hướng\".</p>\r\n\r\n<p>Làm việc với Bộ trưởng Y tế Nguyễn Thanh Long chiều 3/8, ông Park nói rằng Việt Nam khẩn trương thành lập các Trung tâm ICU tại TP HCM và các tỉnh phía Nam để điều trị bệnh nhân Covid-19 nặng và nguy kịch nhằm giảm tỷ lệ tử vong, \"là cần thiết\".</p>\r\n\r\n<p>Đợt bùng phát dịch lần này đã kéo rất dài, đến nay là 100 ngày, kể từ hôm 27/4. Tổng số ca nhiễm hơn 170.000, ở 62 tỉnh thành, tính đến sáng 4/8. Ông Park nhìn nhận \"có rất nhiều khó khăn\". Tỷ lệ nhiễm, khả năng lây truyền, tốc độ lây lan của biến chủng Delta rất cao, là đặc thù đợt dịch này.</p>\r\n\r\n<p>\"Biến chủng Delta khiến đợt dịch hiện nay rất khác biệt với các đợt dịch trước.&nbsp;<a href=\"https://vnexpress.net/covid-19/tin-tuc\">Covid-19</a>&nbsp;kéo dài, khó kiểm soát\", Bộ trưởng Long nói với ông Park.</p>\r\n\r\n<p>Việt Nam đã áp dụng các biện pháp mạnh mẽ hơn các đợt dịch trước, gồm giãn cách xã hội, cách ly xã hội, không cho người dân ra ngoài trong một khung giờ nhất định, theo ông Long. Các ca nhiễm tăng nhanh trong thời gian ngắn với nhiều bệnh nhân nặng đã gây áp lực lớn cho hệ thống y tế, đặc biệt trong công tác điều trị và hồi sức tích cực (ICU).</p>\r\n\r\n<p>Trước thực tế này, song song với việc hướng dẫn các cơ sở y tế thực hiện phân tầng điều trị theo tình trạng bệnh nhân, Bộ Y tế thành lập các Trung tâm ICU tại các tỉnh phía Nam do các bệnh viện Trung ương đảm nhiệm với các chuyên gia hàng đầu, giúp địa phương chăm sóc, điều trị bệnh nhân. Ví dụ tại TP HCM, hiện có 5 trung tâm hồi sức với công suất 2.700 giường ICU.</p>\r\n\r\n<p>\"Có thể nói, chúng tôi đã&nbsp;<strong>huy động tổng lực ngành y tế cho điều trị hồi sức tích cực</strong>&nbsp;ở TP HCM\", Bộ trưởng nói. Tại Hà Nội, giới chức cũng đang gấp rút xây dựng trung tâm ICU và chuẩn bị cơ số giường cấp cứu, dự kiến sẽ hoàn thành sớm.</p>\r\n\r\n<p>Song song với nỗ lực cứu chữa bệnh nhân nặng, hạn chế tử vong, Bộ Y tế đang tiếp cận tất cả các nguồn có thể&nbsp;<strong>cung ứng vaccine một cách nhanh nhất</strong>&nbsp;để tiêm chủng sớm nhất cho người dân, tăng độ bao phủ vaccine. Tuy nhiên, nguồn cung ứng vaccine vẫn đang là thách thức rất lớn, nhất là trong tháng 8-9.</p>\r\n', 0, NULL, 1, '2021-07-31'),
(16, 'Tất cả F1 TP HCM sẽ cách ly tại nhà', 4, 1, '_thumb06', '<p>Sở Y tế TP HCM đề xuất TP Thủ Đức và các quận huyện đồng loạt triển khai cách ly y tế tại nhà cho tất cả F1.</p>\r\n\r\n<p>Đề xuất trên được nêu tại Hội nghị sơ kết trực tuyến về việc triển khai cách ly y tế tại nhà cho F1 trên địa bàn, ngày 3/8, theo Trung tâm Kiểm soát Bệnh tật Thành phố (HCDC).</p>\r\n\r\n<p>Bác sĩ Nguyễn Hữu Hưng, Phó giám đốc Sở Y tế cho biết, TP HCM triển khai cách ly y tế tại nhà cho F1 trong giai đoạn hiện nay là biện pháp cấp bách, đòi hỏi sự chung sức của tất cả lực lượng chức năng và người cách ly.</p>\r\n\r\n<p>Sở Y tế đề xuất các địa phương khi triển khai cách ly y tế tại nhà cho F1 tổ chức lực lượng giám sát. F1 vi phạm quy định phòng dịch khi&nbsp;<a href=\"https://vnexpress.net/covid-19/huong-dan-f0-cach-ly-tai-nha\">cách ly tại nhà</a>&nbsp;sẽ bị lập biên bản nhắc nhở, đưa đi cách ly tập trung hoặc xử phạt.</p>\r\n\r\n<p>Như vậy, sau hơn nửa tháng thí điểm cả F0 và F1 được&nbsp;<a href=\"https://vnexpress.net/thoi-su/covid-24h-tp-hcm-rut-ngan-thoi-gian-cach-ly-f0-ha-noi-siet-phong-dich-4328518.html\">rút ngắn</a>&nbsp;thời gian cách ly tập trung, cách ly tại nhà, nay mở rộng phạm vi áp dụng cho tất cả F1 toàn thành phố</p>\r\n\r\n<p>Trong đợt dịch bùng phát từ ngày 27/4 đến nay, TP HCM nhiều lần thay đổi hình thức cách ly F1 cho phù hợp với tình hình thực tế. Trước đây, F1 bắt buộc cách ly tập trung 14 hoặc 21 ngày, sau đó theo dõi sức khoẻ tại nhà. Đầu tháng 5, dịch bùng phát dữ dội do biến chủng Delta (phát hiện lần đầu tại Ấn Độ), thành phố tăng thời gian cách ly tập trung lên&nbsp;<a href=\"https://vnexpress.net/thoi-su/keo-dai-thoi-gian-cach-ly-tap-trung-len-21-ngay-4273224.html\">21 ngày</a>&nbsp;theo quyết định của Bộ Y tế. F1 sau khi hoàn thành cách ly tập trung sẽ theo dõi tại nhà thêm 7 ngày. Tổng cộng là 28 ngày cách ly.</p>\r\n\r\n<p>Sau đó, đến giữa tháng 6, thành phố bắt đầu&nbsp;<a href=\"https://vnexpress.net/thoi-su/tp-hcm-nghien-cuu-cach-ly-f1-tai-nha-4294189.html\">nghiên cứu</a>&nbsp;cách ly F1 tại nhà để giảm tải cho khu cách ly tập trung. Đầu tháng 7, khi số ca mắc Covid-19 ghi nhận tại TP HCM lên tới gần 7.000, hơn 14.000 người cách ly tập trung khiến các khu cách ly tập trung quá tải, Sở Y tế thí điểm cách ly tại nhà 28 ngày đối với F1 ở&nbsp;<a href=\"https://vnexpress.net/thoi-su/tp-hcm-de-xuat-cach-ly-f1-tai-nha-o-8-quan-huyen-4304790.html\">8 quận huyện nguy cơ</a>&nbsp;cao. Thành phố cũng thí điểm cho F1 cách ly tại nhà theo&nbsp;<a href=\"https://vnexpress.net/thoi-su/tp-hcm-thi-diem-cach-ly-f1-tai-nha-theo-cong-thuc-14-14-4304292.html\">công thức</a>&nbsp;14 ngày tập trung + 14 ngày tại nhà, theo hướng dẫn của Bộ Y tế.</p>\r\n', 0, NULL, 1, '2021-08-02'),
(17, 'Thêm 4.271 ca Covid-19', 4, 1, '_flickr1', '<p>Bộ Y tế sáng 4/8 công bố Hệ thống Quốc gia quản lý ca bệnh Covid-19 ghi nhận 4 ca nhập cảnh và 4.267 ca ở 17 tỉnh thành, trong đó có 1.044 ca cộng đồng.</p>\r\n\r\n<p>4.267 ca ghi nhận tại: TP HCM (2.365), Bình Dương (1.032), Tây Ninh (194), Đồng Nai (164), Long An (146), Đà Nẵng (93), Bình Thuận (77), Vĩnh Long (60), Cần Thơ (37), Phú Yên (28), An Giang (24), Bình Định (23), Đồng Tháp (14), Bạc Liêu (4), Đăk Nông (4), Lâm Đồng (1), Lạng Sơn (1).</p>\r\n\r\n<p>Như vậy, số ca nhiễm sáng nay tăng 704 so với sáng qua. Trong đó, 3.223 ca được phát hiện ở khu cách ly hoặc khu đã được phong tỏa (tăng 347 ca), 1.044 ca đang điều tra dịch tễ (tăng 357 ca).</p>\r\n', 0, NULL, 1, '2021-08-03');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(2) NOT NULL,
  `category_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Thời Sự'),
(2, 'Thể Thao'),
(3, 'Giải Trí'),
(4, 'Sức Khỏe');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(2) NOT NULL,
  `id_article` int(2) NOT NULL,
  `user_id` int(2) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `id_article`, `user_id`, `content`) VALUES
(9, 5, 1, 'Phải kỷ luật'),
(10, 5, 1, 'Chính xác'),
(11, 17, 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non nisi in est dignissim ultrices. In et velit ut metus tincidunt dignissim. Donec iaculis lectus sed neque dictum, sit amet imperdiet eros aliquam. Integer scelerisque nisl ut lobortis posuere. Nullam luctus maximus luctus. Maecenas sed leo sit amet dolor suscipit gravida. Aenean sodales nunc in venenatis lobortis.\r\n'),
(12, 17, 11, ' elementum non. Fusce bibendum nisi id sollicitudin tincidunt. Praesent et viverra diam. Ut ultrices eleifend vehicula. Sed mattis purus eget diam finibus malesuada.'),
(13, 16, 12, ' Praesent et viverra diam. Ut ultrices eleifend vehicula. Sed mattis purus eget diam finibus malesuada.'),
(14, 16, 13, ' Fusce bibendum nisi id sollicitudin tincidunt. Praesent et viverra diam. Ut ultrices eleifend vehicula. Sed mattis purus eget diam finibus malesuada.'),
(15, 15, 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non nisi in est dignissim ultrices. In et velit ut metus tincidunt dignissim.'),
(16, 15, 15, 'Fusce bibendum nisi id sollicitudin tincidunt. Praesent et viverra diam. Ut ultrices eleifend vehicula. Sed mattis purus eget diam finibus malesuada.'),
(17, 12, 1, 'Fusce rutrum tincidunt pellentesque. Praesent nec dapibus felis. Etiam varius turpis non orci bibendum maximus venenatis quis quam.'),
(18, 12, 1, 'vestibulum non nibh. Vestibulum iaculis a nunc posuere fermentum. Aliquam non felis metus. Etiam ut magna rhoncus erat aliquet scelerisque.'),
(19, 11, 1, ' Etiam ut magna rhoncus erat aliquet scelerisque.'),
(20, 8, 16, 'Rat hay'),
(21, 8, 17, 'Buon cuoi qua'),
(22, 8, 18, 'Hoan ho'),
(23, 8, 19, 'Morbi vitae lectus a magna maximus dignissim. Morbi vel elit at risus pellentesque bibendum ut non dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas consequat nulla urna, nec porta augue elementum non. Fusce bibendum nis'),
(24, 17, 20, 'Nullam luctus maximus luctus. Maecenas sed leo sit amet dolor suscipit gravida. Aenean sodales nunc in venenatis lobortis.');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(2) NOT NULL,
  `caption` varchar(50) NOT NULL,
  `link` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_web`
--

CREATE TABLE `user_web` (
  `id` int(2) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(300) DEFAULT NULL,
  `role` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_web`
--

INSERT INTO `user_web` (`id`, `username`, `password`, `role`) VALUES
(1, 'vutran', '123', 1),
(2, 'aaaaaa', NULL, 3),
(3, 'vu', NULL, 3),
(4, '', NULL, 3),
(5, 'f', NULL, 3),
(6, 'adadad', NULL, 3),
(7, 'some', NULL, 3),
(8, 'dâdaad', NULL, 3),
(9, 'vutran1', '123', 3),
(10, 'Alan', NULL, 3),
(11, 'Yuri', NULL, 3),
(12, 'Fine', NULL, 3),
(13, 'Ido', NULL, 3),
(14, 'It', NULL, 3),
(15, 'Myself', NULL, 3),
(16, 'Chinh', NULL, 3),
(17, 'Hung', NULL, 3),
(18, 'Linh', NULL, 3),
(19, 'Huong', NULL, 3),
(20, 'posuere', NULL, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_web`
--
ALTER TABLE `user_web`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_web`
--
ALTER TABLE `user_web`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `id_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `user_web` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `id_article` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_web` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
