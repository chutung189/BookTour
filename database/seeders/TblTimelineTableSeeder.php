<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TblTimelineTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tbl_timeline')->delete();
        
        \DB::table('tbl_timeline')->insert(array (
            0 => 
            array (
                'timeLineId' => 5,
                'tourId' => 10,
                'title' => 'Ngày 1',
                'description' => '<p>TP. Hồ Ch&iacute; Minh &ndash; C&agrave; Mau</p>',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'timeLineId' => 6,
                'tourId' => 10,
                'title' => 'Ngày 2',
                'description' => '<p>Tham quan Đất Mũi &ndash; Rừng U Minh Hạ</p>',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            2 => 
            array (
                'timeLineId' => 7,
                'tourId' => 10,
                'title' => 'Ngày 3',
                'description' => '<p>Chợ nổi C&agrave; Mau &ndash; Mua sắm đặc sản &ndash; Trở về</p>',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            3 => 
            array (
                'timeLineId' => 8,
                'tourId' => 11,
                'title' => 'Ngày 1: Hà Nội – Hạ Long – Du thuyền trên Vịnh',
                'description' => '<ul>
<li>
<p><strong>S&aacute;ng:</strong></p>

<ul>
<li>
<p>07h30: Xe đ&oacute;n đo&agrave;n tại điểm hẹn ở H&agrave; Nội, khởi h&agrave;nh đi Hạ Long.</p>
</li>
<li>
<p>11h30: Đến bến t&agrave;u Tuần Ch&acirc;u, l&agrave;m thủ tục l&ecirc;n du thuyền.</p>
</li>
<li>
<p>12h00: Ăn trưa tr&ecirc;n du thuyền, thưởng thức hải sản tươi sống.</p>
</li>
</ul>
</li>
<li>
<p><strong>Chiều:</strong></p>

<ul>
<li>
<p>Du thuyền bắt đầu h&agrave;nh tr&igrave;nh qua c&aacute;c điểm nổi tiếng: <strong>H&ograve;n Trống M&aacute;i</strong>, <strong>H&ograve;n Ch&oacute; Đ&aacute;</strong>, <strong>L&agrave;ng ch&agrave;i Cửa Vạn</strong>.</p>
</li>
<li>
<p>Tham quan <strong>Động Thi&ecirc;n Cung</strong> hoặc <strong>Hang Sửng Sốt</strong> &ndash; nơi c&oacute; hệ thống thạch nhũ rực rỡ, huyền ảo.</p>
</li>
</ul>
</li>
<li>
<p><strong>Tối:</strong></p>

<ul>
<li>
<p>19h00: Ăn tối tr&ecirc;n t&agrave;u, ngắm ho&agrave;ng h&ocirc;n bu&ocirc;ng xuống mặt biển.</p>
</li>
<li>
<p>Tự do tham gia c&aacute;c hoạt động buổi tối như c&acirc;u mực, h&aacute;t karaoke hoặc ngắm sao tr&ecirc;n boong t&agrave;u.</p>
</li>
<li>
<p><strong>Ngủ đ&ecirc;m tr&ecirc;n du thuyền.</strong></p>
</li>
</ul>
</li>
</ul>',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            4 => 
            array (
                'timeLineId' => 9,
                'tourId' => 11,
                'title' => 'Ngày 2: Khám phá Vịnh – Chèo kayak – Tắm biển',
                'description' => '<ul>
<li>
<p><strong>S&aacute;ng:</strong></p>

<ul>
<li>
<p>Dậy sớm ngắm b&igrave;nh minh tr&ecirc;n Vịnh, tập thể dục nhẹ hoặc thưởng thức c&agrave; ph&ecirc;.</p>
</li>
<li>
<p>Ăn s&aacute;ng tr&ecirc;n t&agrave;u.</p>
</li>
</ul>
</li>
<li>
<p><strong>Trưa:</strong></p>

<ul>
<li>
<p>Tham gia <strong>ch&egrave;o kayak</strong> hoặc <strong>bơi lội</strong> ở khu vực Vịnh Luồn hoặc đảo Titop.</p>
</li>
<li>
<p>Ăn trưa tr&ecirc;n du thuyền.</p>
</li>
</ul>
</li>
<li>
<p><strong>Chiều:</strong></p>

<ul>
<li>
<p>Du thuyền đưa đo&agrave;n đến b&atilde;i biển <strong>Titop</strong> &ndash; nơi du kh&aacute;ch c&oacute; thể leo l&ecirc;n đỉnh n&uacute;i để ngắm to&agrave;n cảnh Vịnh Hạ Long.</p>
</li>
<li>
<p>Trở lại du thuyền, nghỉ ngơi v&agrave; d&ugrave;ng bữa tối.</p>
</li>
<li>
<p><strong>Ngủ đ&ecirc;m tr&ecirc;n du thuyền.</strong></p>
</li>
</ul>
</li>
</ul>',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            5 => 
            array (
                'timeLineId' => 10,
                'tourId' => 11,
                'title' => 'Ngày 3: Hạ Long – Hà Nội',
                'description' => '<ul>
<li>
<p><strong>S&aacute;ng:</strong></p>

<ul>
<li>
<p>Ăn s&aacute;ng tr&ecirc;n t&agrave;u, du ngoạn quanh Vịnh lần cuối, ngắm nh&igrave;n những đảo đ&aacute; kỳ vĩ dưới &aacute;nh nắng sớm.</p>
</li>
<li>
<p>10h00: Trở lại bến, l&agrave;m thủ tục rời t&agrave;u.</p>
</li>
</ul>
</li>
<li>
<p><strong>Trưa:</strong></p>

<ul>
<li>
<p>Ăn trưa tại nh&agrave; h&agrave;ng địa phương.</p>
</li>
</ul>
</li>
<li>
<p><strong>Chiều:</strong></p>

<ul>
<li>
<p>L&ecirc;n xe khởi h&agrave;nh về H&agrave; Nội, kết th&uacute;c tour, chia tay đo&agrave;n trong niềm vui v&agrave; lưu luyến.</p>
</li>
</ul>
</li>
</ul>',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            6 => 
            array (
                'timeLineId' => 11,
                'tourId' => 12,
                'title' => 'Ngày 1: Đà Nẵng – Cầu Rồng – Biển Mỹ Khê',
                'description' => '<ul>
<li>
<p><strong>S&aacute;ng:</strong></p>

<ul>
<li>
<p>Đ&oacute;n kh&aacute;ch tại s&acirc;n bay hoặc ga Đ&agrave; Nẵng.</p>
</li>
<li>
<p>Nhận ph&ograve;ng kh&aacute;ch sạn, nghỉ ngơi.</p>
</li>
</ul>
</li>
<li>
<p><strong>Chiều:</strong></p>

<ul>
<li>
<p>Tham quan <strong>Cầu T&igrave;nh Y&ecirc;u</strong>, <strong>Tượng C&aacute; Ch&eacute;p H&oacute;a Rồng</strong>, <strong>Cầu Rồng</strong> &ndash; biểu tượng độc đ&aacute;o của th&agrave;nh phố.</p>
</li>
<li>
<p>Dạo biển <strong>Mỹ Kh&ecirc;</strong>, tắm biển, chụp ảnh ho&agrave;ng h&ocirc;n tuyệt đẹp.</p>
</li>
</ul>
</li>
<li>
<p><strong>Tối:</strong></p>

<ul>
<li>
<p>Thưởng thức <strong>hải sản tươi sống</strong> tại c&aacute;c nh&agrave; h&agrave;ng ven biển.</p>
</li>
<li>
<p>Dạo phố đ&ecirc;m, ngắm <strong>Cầu Rồng phun lửa v&agrave; phun nước</strong> (thường diễn ra v&agrave;o tối thứ Bảy, Chủ nhật).</p>
</li>
</ul>
</li>
</ul>',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            7 => 
            array (
                'timeLineId' => 12,
                'tourId' => 13,
                'title' => 'Ngày 1',
                'description' => '<ul>
<li>
<p><strong>S&aacute;ng:</strong></p>

<ul>
<li>
<p>Khởi h&agrave;nh từ TP. Hồ Ch&iacute; Minh theo cao tốc Trung Lương, hướng về miền T&acirc;y Nam Bộ.</p>
</li>
<li>
<p>Đến <strong>Mỹ Tho</strong>, du kh&aacute;ch tham quan <strong>ch&ugrave;a Vĩnh Tr&agrave;ng</strong> &ndash; ng&ocirc;i ch&ugrave;a cổ nổi tiếng với kiến tr&uacute;c kết hợp Đ&ocirc;ng &ndash; T&acirc;y độc đ&aacute;o.</p>
</li>
<li>
<p>L&ecirc;n thuyền tham quan <strong>C&ugrave; Lao Thới Sơn</strong>, kh&aacute;m ph&aacute; s&ocirc;ng Tiền, nghe đờn ca t&agrave;i tử Nam Bộ.</p>
</li>
<li>
<p>Dừng ch&acirc;n tại <strong>nh&agrave; d&acirc;n Bến Tre</strong>, thưởng thức tr&aacute;i c&acirc;y miệt vườn, uống tr&agrave; mật ong v&agrave; xem quy tr&igrave;nh l&agrave;m kẹo dừa thủ c&ocirc;ng.</p>
</li>
<li>
<p>Đi <strong>xuồng ch&egrave;o len lỏi trong rạch dừa nước</strong>, cảm nhận kh&ocirc;ng kh&iacute; m&aacute;t l&agrave;nh của miền s&ocirc;ng nước.</p>
</li>
</ul>
</li>
<li>
<p><strong>Trưa:</strong></p>

<ul>
<li>
<p>D&ugrave;ng bữa tại nh&agrave; h&agrave;ng địa phương với c&aacute;c m&oacute;n đặc sản: c&aacute; tai tượng chi&ecirc;n x&ugrave;, t&ocirc;m kho t&agrave;u, canh chua c&aacute; l&oacute;c, rau vườn...</p>
</li>
</ul>
</li>
<li>
<p><strong>Chiều:</strong></p>

<ul>
<li>
<p>Tiếp tục h&agrave;nh tr&igrave;nh đến <strong>Cần Thơ</strong>, nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi.</p>
</li>
<li>
<p>Buổi tối tự do kh&aacute;m ph&aacute; <strong>Bến Ninh Kiều</strong>, thưởng thức đặc sản miền T&acirc;y như b&aacute;nh x&egrave;o, hủ tiếu Sa Đ&eacute;c, lẩu mắm...</p>
</li>
</ul>
</li>
</ul>',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            8 => 
            array (
                'timeLineId' => 13,
                'tourId' => 13,
                'title' => 'Ngày 2',
                'description' => '<ul>
<li>
<p><strong>S&aacute;ng sớm:</strong></p>

<ul>
<li>
<p>L&ecirc;n thuyền tham quan <strong>chợ nổi C&aacute;i Răng</strong> &ndash; n&eacute;t văn h&oacute;a đặc trưng của miền T&acirc;y, nơi thương hồ mua b&aacute;n n&ocirc;ng sản tr&ecirc;n s&ocirc;ng.</p>
</li>
<li>
<p>Gh&eacute; <strong>l&ograve; hủ tiếu truyền thống</strong>, xem quy tr&igrave;nh l&agrave;m hủ tiếu thủ c&ocirc;ng, thưởng thức c&agrave; ph&ecirc; ven s&ocirc;ng.</p>
</li>
</ul>
</li>
<li>
<p><strong>Trưa:</strong></p>

<ul>
<li>
<p>Ăn trưa tại nh&agrave; h&agrave;ng, sau đ&oacute; khởi h&agrave;nh về TP. Hồ Ch&iacute; Minh.</p>
</li>
<li>
<p>Tr&ecirc;n đường về, dừng ch&acirc;n mua qu&agrave; đặc sản như kẹo dừa Bến Tre, b&aacute;nh p&iacute;a S&oacute;c Trăng, nem Lai Vung.</p>
</li>
</ul>
</li>
<li>
<p><strong>Chiều:</strong></p>

<ul>
<li>
<p>Xe đưa đo&agrave;n về điểm hẹn ban đầu.</p>
</li>
<li>
<p>Kết th&uacute;c tour, chia tay v&agrave; hẹn gặp lại trong h&agrave;nh tr&igrave;nh sau.</p>
</li>
</ul>
</li>
</ul>',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}