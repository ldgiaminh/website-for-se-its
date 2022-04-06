Create database MiniProject

use MiniProject
go

create table Admin(
	Id varchar(50) not null primary key,
	Name nvarchar(200),
	Email varchar(100)
)

--drop table Admin

--create table Intro(
--	Id varchar(50) not null primary key,
--	Title nvarchar(1000),
--	Des nvarchar(2000),
--	Img varchar(3000)
--)

--drop table Intro

create table CategorySubject(
	Id varchar(50) not null primary key,
	Name varchar(100),
)

--drop table CategorySubject

create table Subject(
	Id varchar(50) not null primary key,
	Title nvarchar(1000),
	Name nvarchar(500),
	Des nvarchar(3000),
	Img char(3000),
	CreatedDate varchar(100),
	CateSubjId varchar(50) foreign key references CategorySubject(Id)
)

--drop table Subject

create table Lecturer(
	Id varchar(50) not null primary key,
	Name nvarchar(200),
	Img varchar(3000),
	Des nvarchar(3000),
	CreatedDate varchar(100),
	Quotes nvarchar(2000),
	SubjectId varchar(50) foreign key references Subject(Id)
)

drop table Lecturer

create table CategoryBook(
	Id varchar(50) not null primary key,
	Name nvarchar(100),
	SubjectId varchar(50) foreign key references Subject(Id) On Delete cascade
)

--drop table CategoryBook

create table Book(
	Id varchar(50) not null primary key,
	Name nvarchar(500),
	Img varchar(2000),
	Author varchar(3000),
	Url varchar(2000),
	CreatedDate varchar(100),	
	CateBookId varchar(50) foreign key references CategoryBook(Id) On Delete cascade
)

drop table Book

create table CategoryNews(
	Id varchar(50) not null primary key,
	Name nvarchar(100)
)

--drop table CategoryNews

create table News(
	Id varchar(50) not null primary key,
	Img varchar(2000),
	Title nvarchar(1000),
	Des nvarchar(3000),
	Url varchar(2000),
	CreatedDate varchar(100),
	CateNewsId varchar(50) foreign key references CategoryNews(Id)
)

--drop table News

--create table CategorySchedule(
--	Id varchar(50) not null primary key,
--	Name varchar(100)
--)

--drop table CategorySchedule

create table Skill(
	Id varchar(50) not null primary key,
	Title nvarchar(2000),
	Des nvarchar(3000),
	Img varchar(2000),
	CreatedDate varchar(100),
	SubjectId varchar(50) foreign key references Subject(Id)
)

create table Career(
	Id varchar(50) not null primary key,
	Title nvarchar(2000),
	Des nvarchar(3000),
	Img varchar(2000),
	CreatedDate varchar(100),
	SubjectId varchar(50) foreign key references Subject(Id)
)

insert into Skill(Id, Title, Des, Img, CreatedDate, SubjectId)
values
(
	'SESkl',
	N'BỘ MÔN SE', 
	N'Viết code và lập trình(Programming &amp; coding).&nbsp;
	<br>Nền tảng của ngành khoa học máy tính.
	<br>Thiết kế và kiến trúc phần mềm.
	<br>Giải thuật và cấu trúc dữ liệu.
	<br>Phân tích thông tin, yêu cầu.
	<br>Tìm kiếm và sửa lỗi (debugging) phần mềm.
	<br>Kiểm thử (testing) phần mềm, đảm bảo phần mềm chạy đúng yêu cầu, được tối ưu hóa và không bị lỗi.',
	'https://lh3.googleusercontent.com/tRHx6IX35y5fJI7qln-9sYAnCMrwXAQC8Mo_xVLwzf_POCk-Iry5o19ZWBadOjKo1orjlt8=s151',
	'14-03-2022',
	'SE01'

)

insert into Skill(Id, Title, Des, Img, CreatedDate, SubjectId)
values
(
	'ITsSkl',
	N'BỘ MÔN ITS', 
	N'Kỹ năng phân tích và thiết kế các hệ thống thông minh, các hệ cơ sở tri thức, hệ chuyên gia.
	<br>Kỹ năng lập trình, phát triển công nghệ, đặc biệt là công nghệ tri thức
	<br>Kỹ năng tư duy, lập luận, giải quyết vấn đề.
	<br>Luôn nghĩ đến tính khả thi trong tương lai của mỗi phần mềm khi phát triển chúng<br>',
	'https://lh3.googleusercontent.com/4wcleLCvKRJ9EwIVGntcvk5HLD_HXN2XVwyb5a5eo2QRjPKLPhIntMWPOZioU724xsZOcXA=s149',
	'14-03-2022',
	'ITS01'

)

insert into Career(Id, Title, Des, Img, CreatedDate, SubjectId)
values
(
	'SECa',
	N'BỘ MÔN SE', 
	N'Sau khi tốt nghiệp ngành Kỹ thuật phần mềm bạn cũng có thể tham khảo một số vị trí như:
	<br>Giám đốc kỹ thuật<br>Quản lý dự án (PM)
	<br>Lập trình viên (Coder)
	<br>Kỹ sư cầu nối (BrSE)
	<br>Kiểm thử phần mềm (Tester)
	<br>Kỹ sư đảm bảo chất lượng phần mềm
	<br>Quản lý dự án Công nghệ Thông tin
	<br>Quản lý kỹ thuật
	<br>Quản trị viên dự án phần mềm và CNTT',
	'https://lh3.googleusercontent.com/tRHx6IX35y5fJI7qln-9sYAnCMrwXAQC8Mo_xVLwzf_POCk-Iry5o19ZWBadOjKo1orjlt8=s151',
	'14-03-2022',
	'SE01'

)

insert into Career(Id, Title, Des, Img, CreatedDate, SubjectId)
values
(
	'ITsCa',
	N'BỘ MÔN ITS', 
	N'Đối với các bạn chuyên ngành&nbsp;công nghệ tri thức và máy học:&nbsp;&nbsp;lập trình viên tại các doanh nghiệp về CNTT; chuyên viên nghiên cứu và phát triển các công nghệ tri thức...
	<br>Đối với các bạn chuyên ngành Thị giác máy tính và đa phương tiện:lập trình đồ họa game, chuyên viên xử lý ảnh...
	<br>Đối với các bạn chuyên ngành Xử lý ngôn ngữ tự nhiên: chuyên viên nghiên cứu và phát triển các công nghệ, đặc biệt là các sản phẩm liên quan đến xử lý ngôn ngữ tự nhiên như: trợ lý ảo, từ điển, dịch tự động,…',
	'https://lh3.googleusercontent.com/4wcleLCvKRJ9EwIVGntcvk5HLD_HXN2XVwyb5a5eo2QRjPKLPhIntMWPOZioU724xsZOcXA=s149',
	'14-03-2022',
	'ITS01'

)


drop table Events

create table CategoryEvents(
	Id varchar(50) not null primary key,
	Name nvarchar(100),
);

create table Events(
	Id varchar(50) not null primary key,
	Title nvarchar(2000),
	Img varchar(1000),
	Des nvarchar(3000),
	Content nvarchar(4000),
	CreatedDate varchar(100),
	Quotes nvarchar(200),
	CateEventId varchar(50) foreign key references CategoryEvents(Id)
)
drop table CategoryEvents

Insert Into CategorySubject(Id, Name) Values('SE', 'Software Engineering');
Insert Into CategorySubject(Id, Name) Values('ITS', 'Information Technology Security');

Insert into Subject(Id, Title, Name, Des, Img, CreatedDate, CateSubjId) Values('SE01', N'BỘ MÔN',
N'KỸ THUẬT PHẦN MỀM', N'Với sự hỗ trợ của phần mềm, các quy trình hoạt động tối ưu hóa, con người được giải
phóng khỏi những công việc thủ công nhàm chán, giảm thiểu sai sót, nâng cao năng suất và hiệu quả công việc.
Khi phần mềm được ứng dụng rộng và trở thành “hạt nhân” cho sự phát triển của đời sống, sinh viên ngành Kỹ
thuật Phần mềm trở thành nhân tố được săn đón hàng đầu trên thị trường lao động','http://www.lgm.ac-grenoble.fr/wordpress/wp-content/uploads/2022/02/bts_snir_sn_informatique_meylan2.jpg' ,
'4-3-2021', 'SE');

--Delete From [Subject] Where Id = 'S01'

Insert into Subject(Id, Title, Name, Des, Img, CreatedDate, CateSubjId) Values('ITS01', N'BỘ MÔN',
N'ITS', N'Trong một thế giới chạy bằng công nghệ, các chuyên gia CNTT hay còn gọi là chuyên gia công nghệ thông tin
là điều mà mọi tổ chức không bao giờ có đủ. Các chuyên gia CNTT này phục vụ cho các nhu cầu kỹ thuật của doanh nghiệp.
Định nghĩa chuyên gia CNTT là một chuyên gia kỹ thuật chịu trách nhiệm triển khai, giám sát và bảo trì hệ thống CNTT', 
'https://media-exp1.licdn.com/dms/image/C5112AQFfg9iVBjZtsw/article-cover_image-shrink_720_1280/0/1544511416067?e=1651708800&v=beta&t=l702D1YlPB1rvey6J9WMattKxoRHIW76VIICTyzTMhc', 
'22-10-2022', 'ITS');

--Delete From [Subject] Where Id = 'S02'

Insert into Lecturer(Id, Name, Img, Des, CreatedDate, Quotes, SubjectId)
values('LT01', N'NGUYỄN THẾ HOÀNG', 'https://uni.fpt.edu.vn/Data/Sites/1/media/ng%C6%B0%E1%BB%9Di-truy%E1%BB%81n-l%E1%BB%ADa/gi%C3%A1o-l%C3%A0ng-nguy%E1%BB%85n-th%E1%BA%BF-ho%C3%A0ng/123835423_107646594490275_3866158663278802293_o.jpg', 
N'Chuyên ngành giảng dạy:
- Một người giáo làng của tất cả sinh viên FPT, một người có tâm với việc giảng dạy cũng như với nghề.
- Luôn mang đến cho sinh viên những kiến thức không chỉ trong phạm vi môn học, mà còn ở những khía cạnh đời thường khác.', 
'22-2-2022', N'"HAPPY CODE
	HAPPY MONEY HAPPY LIFE"', 'SE01');

--Delete From Lecturer Where Id = 'LT04'

Insert into Lecturer(Id, Name, Img, Des, CreatedDate, Quotes, SubjectId)
values('LT02', N'LÂM HỮU KHÁNH PHƯƠNG', 'https://scontent-hkg4-2.xx.fbcdn.net/v/t31.18172-8/1397269_4891879513708_637320706_o.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=UXB3HSXPXQEAX_BPhEs&_nc_ht=scontent-hkg4-2.xx&oh=00_AT9UoYXPqcLfD4hFmWq4Cbng1lXRjg8JlAfNxNAeKMkwuA&oe=6267E9F2',N'Chuyên ngành giảng dạy:
Không chỉ là người thầy của hàng trăm sinh viên Đại học FPT, thầy Lâm Hữu Khánh Phương còn là “sếp”, 
là “đàn anh” và là “chủ đầu tư” của rất nhiều sinh viên trong trường, cả sinh viên đã tốt nghiệp và chưa tốt nghiệp.', 
'22-02-2022', N'"Các bạn chính là hạt giống để mình đặt niềm tin vào chất lượng nhân sự để phát triển các hệ thống kinh doanh”', 
'SE01');

Insert into Lecturer(Id, Name, Img, Des, CreatedDate, Quotes, SubjectId)
values('LT03', N'PHẠM CÔNG THÀNH', 'http://img.tobebetter.info/khanhkt/About/AboutTHANHPC_files/image001.jpg', N'Chuyên ngành giảng dạy: ITS
Lý do thầy trở thành giảng viên cũng rất tình cờ, khi thầy đang phân vân giữa 2 lựa chọn: trở thành bác sĩ 
trong quân đội hoặc về FPTU HCM giảng dạy. Đúng lúc đã có một vị tiền bối dẫn đường cho thầy, khuyên thầy về 
FPTU HCM phát triển sự nghiệp giảng dạy với mong muốn truyền thụ thật nhiều kiến thức hay ho cho sinh viên nên 
thầy đã quyết định về công tác tại Đại học FPT.', '22-01-2021', N'“Luyện tập thường xuyên để biến nó thành thói quen"', 'ITS01');

Insert into Lecturer(Id, Name, Img, Des, CreatedDate, Quotes, SubjectId)
values('LT04', N'KIỀU TRỌNG KHÁNH', 'https://hcmuni.fpt.edu.vn/Data/Sites/1/News/74/1kieu-trong-khanh.jpg', 
N'Chuyên ngành giảng dạy:
Bachelor of Engineer in Information Technology - Software Engineer
Master of Engineer in Computer Science
Kinh nghiệm giảng dạy:
2001 - 2004: Software Engineering - Trung tâm Tin học Đại học Khoa học - Tự nhiên
2002 - 2004: Khoa CNTT - Trường Đại học Kỹ Thuật Công Nghệ - HUTECH
2006 - 2008: HK4 - năm 2 - FPT Aptech
2008 - nay: Trường Đại học FPT - HCM','01-01-2021', N'“Tôi không muốn các bạn sinh viên như tôi?”', 'SE01');

--drop table Lecturer

Insert Into CategoryBook(Id, Name, SubjectId)
Values('CB01', N'Phần Mềm', 'SE01');

Insert Into CategoryBook(Id, Name, SubjectId)
Values('CB02', N'Toán Học', 'ITS01');

Insert Into CategoryBook(Id, Name, SubjectId)
Values('CB03', N'Lập Trình', 'SE01');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B01', 'Software Testing 2nd Edition', 
'https://m.media-amazon.com/images/P/0672327988.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Ron Patton&nbsp;(Author)', 
'https://books.google.com.vn/books?id=MTEiAQAAIAAJ&q=software+testing&dq=software+testing&hl=vi&sa=X&redir_esc=y',
'01-10-2021', 
'CB01');
Delete Book Where Id = 'B01'

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId)
Values('B02', 'Software Requirements (Developer Best Practices) 3rd Edition', 
'https://m.media-amazon.com/images/P/0735679665.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Karl Wiegers (Author),&nbsp;Joy Beatty (Author)', 
'https://books.google.com.vn/books?id=MTEiAQAAIAAJ&q=software+testing&dq=software+testing&hl=vi&sa=X&redir_esc=y', 
'01-01-2021', 
'CB01');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B03', 'An Introduction to Software Engineering Kindle Edition', 
'https://m.media-amazon.com/images/P/B00E8NEKN8.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Anthony Croft&nbsp;(Author),&nbsp;Robert Davison&nbsp;(Author)', 
'https://books.google.com.vn/books?id=y7_MoAEACAAJ&dq=an+introduction+of+software+engineering+laurie+william&hl=vi&sa=X&redir_esc=y', 
'21-12-2021', 
'CB01');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B04', 'Mathematics for Engineers', 
'https://m.media-amazon.com/images/P/B083P3TMVM.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Dr Laurie A Williams&nbsp;(Author)', 
'https://books.google.com.vn/books?id=DgCDDwAAQBAJ&dq=mathematics+for+engineers+anthony+croft&hl=vi&sa=X&redir_esc=y', 
'12-01-2022', 
'CB02');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B05 ', 'Programming with Mobile Applications: Android, iOS, and Windows Phone 7', 
'https://m.media-amazon.com/images/P/1133628133.01._SCLZZZZZZZ_SX500_.jpg',  
'by&nbsp;Thomas J. Duffy&nbsp;(Author)', 
'https://books.google.com.vn/books?id=ywTTwAEACAAJ&dq=programming+with+mobile+app+thomas&hl=vi&sa=X&redir_esc=y', 
'11-12-2020', 
'CB03');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B06', 'Fundamentals of Software Architecture: An Engineering Approach', 
'https://m.media-amazon.com/images/P/1492043451.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Mark Richards&nbsp;(Author),&nbsp;Neal Ford&nbsp;(Author)',
'https://books.google.com.vn/books?id=xa7MDwAAQBAJ&printsec=frontcover&dq=fundamental+of+software+architecture&hl=vi&sa=X&redir_esc=y#v=onepage&q=fundamental%20of%20software%20architecture&f=false',
'01-01-2021', 
'CB03');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B07', 'Computer Organization and Architecture', 
'https://images-na.ssl-images-amazon.com/images/I/51eKx-iqXYL._SX384_BO1,204,203,200_.jpg', 
'by&nbsp;William Stallings (Author)', 
'https://books.google.com.vn/books?id=BtnKrQEACAAJ&dq=computer%20organization%20and%20architecture%20williams%20stalling&hl=vi&source=gbs_book_other_versions', 
'11-10-2021', 
'CB01');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B08', 'Connecting with Computer Science', 
'https://m.media-amazon.com/images/P/B00B6DQAVS.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Greg Anderson (Author),&nbsp;David Ferro (Author),&nbsp;Robert Hilton&nbsp;(Author)', 
'https://books.google.com.vn/books?id=EwAKzgEACAAJ&dq=connecting+with+computer+science&hl=vi&sa=X&redir_esc=y', 
'11-11-2020', 'CB01');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B09', 'Data Structures and Algorithms in Java', 
'https://m.media-amazon.com/images/P/1118771338.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Michael T. Goodrich&nbsp;&nbsp;(Author),&nbsp;Roberto Tamassia&nbsp;(Author),&nbsp;Michael H. Goldwasser&nbsp;(Author)', 
'https://books.google.com.vn/books?id=UqmYAgAAQBAJ&printsec=frontcover&hl=vi#v=onepage&q&f=false', 
'21-12-2021', 
'CB03');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B10', 'Introduction to Probability, Statistics, and Random Processes', 
'https://m.media-amazon.com/images/P/0990637204.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Hossein Pishro-Nik (Author)', 
'https://books.google.com.vn/books?id=3yq_oQEACAAJ&dq=introduction+to+probability,+statistic&hl=vi&sa=X&redir_esc=y', 
'10-01-2021', 
'CB02');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B11', 'Discrete Mathematics with Applications', 
'https://m.media-amazon.com/images/P/1337694193.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Susanna S. Epp (Author)', 
'https://books.google.com.vn/books?id=58K6uwEACAAJ&dq=discrete+mathematics+with+application&hl=vi&sa=X&redir_esc=y', 
'01-01-2021', 
'CB02');

Insert Into Book(Id, Name, Img, Author, Url, CreatedDate, CateBookId) 
Values('B12', 'Operating Systems Design and Implementation', 
'https://m.media-amazon.com/images/P/B009TELWBE.01._SCLZZZZZZZ_SX500_.jpg', 
'by&nbsp;Andrew Tanenbaum&nbsp;(Author),&nbsp;Albert Woodhull&nbsp;(Author)', 
'https://books.google.com.vn/books?id=KZ8uAAAAQBAJ&dq=operating+systems+design+and+implementation&hl=vi&sa=X&redir_esc=y', 
'01-04-2021', 
'CB01');

insert into dbo.CategoryNews
(Id,Name)
values
('CN01',N'Tin tức Hot')

insert into dbo.CategoryNews
(Id,Name)
values
('CN02',N'Tin tức AI')

insert into dbo.CategoryNews
(Id,Name)
values
('CN03',N'Tin số hóa')


insert into News(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N01',
	'https://i1-sohoa.vnecdn.net/2022/02/18/bitcoin-8860-1645153248.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=GVX11nrvdUpFG8VbqvewCA',
	N'Ukraine hợp pháp hóa Bitcoin',
	N'Quốc hội Ukraine bỏ phiếu thông qua dự luật sửa đổi, trong đó hợp pháp hóa Bitcoin và các loại tiền điện tử.',
	'https://vnexpress.net/ukraine-hop-phap-hoa-bitcoin-4428986.html',
	'18-02-2022',
	'CN01'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N02',
	'https://i1-sohoa.vnecdn.net/2022/02/16/107014716-1644927011317-107014-2152-7049-1645003637.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=39E5fQwfBzocIDu153Gykw',
	N'Mất hơn 100.000 USD Bitcoin vì bị bot lừa',
	N'Tháng trước, khi bác sĩ Anders Apgar và gia đình đi ăn tối ở một nhà hàng, điện thoại của ông không ngừng đổ chuông.',
	'https://vnexpress.net/mat-hon-100-000-usd-bitcoin-vi-bi-bot-lua-4428283.html',
	'17-02-2022',
	'CN03'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N03',
	'https://i1-sohoa.vnecdn.net/2022/02/18/bitcoin-2-JPG-7272-1645197950.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=GDXjaGzpzh-cUa1sBxwdug',
	N'Nỗi ám ảnh khi chơi tiền số',
	N'Nhiều người đã gặp khủng hoảng tâm lý trầm trọng sau khi dồn hết tài sản tích lũy vào tiền điện tử như Bitcoin, meme coin.',
	'https://vnexpress.net/noi-am-anh-khi-choi-tien-so-4429301.html',
	'19-02-2022',
	'CN03'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N04',
	'https://i1-sohoa.vnecdn.net/2022/02/16/elon-musk-master-plan-copy-8599-1644985520.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=I3umjG7mQQTjf3TonTFRIQ',
	N'Công ty chip não của Elon Musk bị tố ngược đãi khỉ',
	N'Một nhóm bảo vệ động vật chỉ trích những con khỉ được Neuralink sử dụng trong các thử nghiệm 2017-2020 phải chịu đựng "sự đau khổ tột cùng".',
	'https://vnexpress.net/cong-ty-chip-nao-cua-elon-musk-bi-to-nguoc-dai-khi-4428155.html',
	'16-02-2022',
	'CN03'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N05',
	'https://i1-sohoa.vnecdn.net/2022/02/16/Tien-dien-tu-lua-dao-8231-1645019886.png?w=680&h=0&q=100&dpr=1&fit=crop&s=H8RAPY1Qf8x9oWY7d1T6kg',
	N'Tiền điện tử tiếp tay cho tội phạm mạng làm giàu',
	N'Thị trường tiền điện tử tăng giá khiến tài sản của tội phạm mạng tăng từ 3 tỷ USD vào năm 2020 lên 11 tỷ USD vào năm 2021.',
	'https://vnexpress.net/tien-dien-tu-tiep-tay-cho-toi-pham-mang-lam-giau-4428417.html',
	'17-02-2022',
	'CN03'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N06',
	'https://i1-sohoa.vnecdn.net/2022/03/11/7e57151e-m1ultrahea44derscaled-6588-1235-1646992214.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=qtxz0mB1ixxwzMQSu_umGw',
	N'Các hãng công nghệ tăng đặt cược vào CPU',
	N'Việc Apple, Google... tự sản xuất CPU cho sản phẩm của mình có thể mở đường cho các công ty công nghệ khác làm điều tương tự.',
	'https://vnexpress.net/cac-hang-cong-nghe-tang-dat-cuoc-vao-cpu-4437564.html',
	'12-03-2022',
	'CN03'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N07',
	'https://wiki.tino.org/wp-content/uploads/2021/05/blockchain-1000x570-1.jpg',
	N'5 chuyên gia blockchain chia sẻ bí quyết đầu tư tiền mã hoá',
	N'GT Sophy, AI do Sony phát triển, vượt qua những game thủ giỏi nhất khi tham gia trò chơi đua xe Gran Turismo trên PlayStation.',
	'https://vnexpress.net/5-chuyen-gia-blockchain-chia-se-bi-quyet-dau-tu-tien-ma-hoa-4437797.html',
	'12-03-2022',
	'CN03'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N08',
	'https://i1-sohoa.vnecdn.net/2022/03/11/nokia-booth-mwc-2022-675w-380h-6474-2113-1646975923.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=dg35n5OnNKFm4f19BKG6gg',
	N'Nokia từ bỏ mảng smartphone cao cấp',
	N'HMD Global xác nhận sẽ không còn smartphone thương hiệu Nokia ở phân khúc cao cấp, thay vào đó là các mẫu giá rẻ và tầm trung.',
	'https://vnexpress.net/5-chuyen-gia-blockchain-chia-se-bi-quyet-dau-tu-tien-ma-hoa-4437797.html',
	'27-01-2022',
	'CN02'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N09',
	'https://i1-sohoa.vnecdn.net/2022/02/24/6216a2a045889c0019d2000d-jpeg-6539-1645672392.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=9nfTfFMgwnnUzinaHkYaYw',
	N'Meta dùng AI "cấp độ con người" cho metaverse',
	N'Meta vừa công bố Project CAIRaoke, dự án đưa AI lên mức thông minh "cấp độ con người" với khả năng tự học hỏi, đọc tình huống và hành động.',
	'https://vnexpress.net/meta-dung-ai-cap-do-con-nguoi-cho-metaverse-4431347.html',
	'04-02-2022',
	'CN02'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N10',
	'https://i1-sohoa.vnecdn.net/2022/02/18/620c4717b20df700180a0f54-jpeg-6342-1645192946.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=IgaECFPt65WVM3EaEjU8zg',
	N'Google tạo AI kiểm soát lò phản ứng hạt nhân',
	N'Công ty DeepMind của Google đã phát triển thành công AI có thể tạo và điều khiển tia plasma siêu nóng bên trong lò phản ứng tổng hợp hạt nhân.',
	'https://vnexpress.net/google-tao-ai-kiem-soat-lo-phan-ung-hat-nhan-4429286.html',
	'19-02-2022',
	'CN02'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N11',
	'https://i1-sohoa.vnecdn.net/2022/02/10/https-3A-2F-2Fs3-ap-northeast-6304-1838-1644468481.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=KZcofi8FmmL7YBT7sGE2kg',
	N'AI của Sony đánh bại game thủ đua xe giỏi nhất',
	N'GT Sophy, AI do Sony phát triển, vượt qua những game thủ giỏi nhất khi tham gia trò chơi đua xe Gran Turismo trên PlayStation.',
	'https://vnexpress.net/ai-cua-sony-danh-bai-game-thu-dua-xe-gioi-nhat-4425926.html',
	'10-02-2022',
	'CN02'
)

insert into News
(Id,Img,Title,Des,Url,CreatedDate,CateNewsId)
values
(
	'N12',
	'https://i1-sohoa.vnecdn.net/2022/02/03/https-d1e00ek4ebabms-cloudfron-1514-5141-1643861768.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=_tVGa5osT48JKtBHS1GyTw',
	N'Google AI tự viết code như lập trình viên',
	N'AlphaCode, công cụ AI do DeepMind của Google sản xuất, có thể tự lập trình với "chuyên môn của một lập trình viên bình thường".',
	'https://vnexpress.net/google-ai-tu-viet-code-nhu-lap-trinh-vien-4423767.html',
	'04-02-2022',
	'CN02'
)

insert into CategoryEvents(Id, Name)
values('HV', N'Tin tức Hot')

insert into CategoryEvents(Id, Name)
values('BV', N'Tin tức lớn')

insert into CategoryEvents(Id, Name)
values('NV', N'Tin tức cũ')


insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E01',
	N'Hoa hậu Nguyễn Thúc Thuỳ Tiên sẽ là diễn giả tại TEDxFPTUniversityHCMC',
	'https://daihoc.fpt.edu.vn/wp-content/uploads/2022/02/273486723_10165896908205062_2142981729898094565_n-768x935.jpeg',
	N'Trong TEDxFPTUniversityHCMC do FPTU TP. HCM tổ chức vào ngày 20/2 tới đây, nhiều diễn giả nổi tiếng như Chủ tịch FPT Telecom Hoàng Nam Tiến, Nghệ sĩ Bạch Tuyết và Hoa hậu Nguyễn Thúc Thuỳ Tiên sẽ có tham dự và mang đến những chia sẻ xoay quanh chủ đề “Value Transition – Tiếp nối giá trị”.',
	N'Nhắc đến niềm tự hào của Việt Nam là không thể không nhắc đến Hoa Hậu Thùy Tiên. Với tài năng, sắc đẹp và kiến thức của mình, Hoa Hậu Thùy Tiên đã lan toả hình ảnh của đất nước, đặc biệt là những ấn tượng tốt đẹp về người con gái Việt Nam đến bạn bè quốc tế.
	Nguyễn Thúc Thùy Tiên đã nỗ lực vượt qua mọi khó khăn để có thể mang vinh quang về cho nước nhà. Là một Tân Hoa Hậu Hoà Bình Quốc Tế, Thùy Tiên cũng chính là niềm tự hào, niềm kiêu hãnh của Việt Nam xuyên suốt chặng đường chinh phục Miss Grand International 2021 trong hành trình vươn xa hơn đến tương lai.
	Trước đó, Thùy Tiên đã từng đạt giải Người đẹp Nhân Ái và lọt vào Top 5 Hoa hậu Việt Nam 2018. Ngoài ra, người đẹp còn từng tham gia cuộc thi Miss International 2018 – Hoa hậu Quốc tế 2018. Sự kiện Thùy Tiên trở thành Miss Grand International – Hoa hậu Hòa bình Quốc tế 2021 tại Thái Lan thực sự là một cột mốc khó quên trong lòng người hâm mộ cả nước. Hoa hậu Thùy Tiên không chỉ truyền cảm hứng bằng những câu chuyện cuộc sống đời thường của bản thân mình mà còn thông qua sự nỗ lực không quản ngại gian khổ để có được thành công như ngày hôm nay.
	Việc kế thừa và phát huy những giá trị tinh tuý của dân tộc nghe thật to lớn, nhưng thực chất lại bắt nguồn từ những điều vô cùng gần gũi, bé nhỏ, đôi khi chỉ đơn thuần là những giọt nước mắt bật khóc từ nỗi nhớ nhà, nhớ quê hương, những bước chân đầy tự tin trên đấu trường quốc tế với hàng triệu ánh nhìn dõi theo từ khán giả nước nhà, những tà áo dài chở đầy bản sắc dân tộc. Thuỳ Tiên chắc chắn sẽ định hướng cho thế hệ trẻ trên hành trình tiếp nối những kết tinh, những di sản văn hoá Việt.',
	'11-02-2022',
	N'"Hoa hậu Nguyễn Thúc Thuỳ Tiên”',
	'HV'
)
--Delete From Events Where Id = 'E01'

insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E02',
	N'Webinar “Future Foundation” mùa thứ 2 với chủ đề Virtualization',
	'https://daihoc.fpt.edu.vn/media/2020/12/Talkshow-1-800x670.jpg',
	N'Webinar “Future Foundation” là chuỗi hội thảo cung cấp những kiến thức nền tảng và thực tế về lập trình dành cho sinh viên Ngành CNTT',
	N'Webinar “Future Foundation” là chuỗi hội thảo cung cấp những kiến thức nền tảng và thực tế về lập trình dành cho sinh viên Ngành CNTT, do trường ĐH FPT TP. HCM phối hợp cùng Công ty TNHH Phần mềm tổ chức theo định hướng Industry Relavant (Việc đào tạo theo định hướng của doanh nghiệp trong thực tiễn) với mục tiêu cung cấp hành trang cho các bạn trong tương lai.',
	'18-12-2020',
	N'"HD Expertise - Huỳnh Ngọc Dũng”',
	'BV'
)


insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E03',
	N'Chính thức khởi động cuộc thi lập trình vì Động vật hoang dã Zoohackthon Vietnam 2021',
	'https://daihoc.fpt.edu.vn/media/2021/10/245571633_364720028782929_7459735635692779712_n-768x512.png',
	N'Zoohackathon – cuộc thi lập trình và sáng tạo toàn cầu, với sự tham gia của nhiều quốc gia trên thế giới, trong đó có Việt Nam',
	N'Zoohackathon – cuộc thi lập trình và sáng tạo toàn cầu, với sự tham gia của nhiều quốc gia trên thế giới, trong đó có Việt Nam, với tên gọi Zoohackathon Vietnam 2021 – đã chính thức mở đơn đăng ký! Đây là nơi hội tụ và kết nối của tất cả các bạn sinh viên tài năng và nhiệt huyết từ các trường đại học tại TP.HCM và Hà Nội, cùng kiến tạo những giải pháp công nghệ đột phá giúp giải quyết các vấn đề liên quan đến mua bán các loài động vật hoang dã trái phép tại Việt Nam.
	Trong thời đại 4.0, công nghệ đã và đang trở thành công cụ đắc lực giúp con người trong mọi lĩnh vực, đặc biệt trong cuộc chiến chống lại nạn buôn bán động vật hoang dã (ĐVHD) trái phép. Hơn bao giờ hết, đây là cơ hội để mô hình hackathon phát huy thế mạnh của mình: kết nối cộng đồng công nghệ trẻ tại hai miền đất nước và cùng tìm kiếm những giải pháp sáng tạo trên hành trình bảo vệ ĐVHD.
	Cuộc thi lập trình Zoohackthon Vietnam 2021 được sự đồng ý và tài trợ từ Bộ Ngoại giao Hoa Kỳ, CHANGE phối hợp cùng WildAid, Trường Đại học FPT và VietSeeds Foundation tổ chức.',
	'26-10-2021',
	N'Zoohackthon Vietnam 2021',
	'BV'
)

insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E04',
	N'Đường đua FPT Uni Secathon mùa 4 chính thức quay trở lại',
	'https://daihoc.fpt.edu.vn/media/2021/10/243919661_4364056140347865_481127046081379432_n-768x960.jpeg',
	N'Là sân chơi kiến thức chuyên sâu về bảo mật máy tính, được tổ chức theo mô hình: tấn công/khai thác ứng dụng, khai thác lỗ hổng phần mềm,…',
	N'FPT Uni SecAthon là sân chơi kiến thức chuyên sâu về bảo mật máy tính, được tổ chức theo mô hình: tấn công/khai thác ứng dụng, khai thác lỗ hổng phần mềm, mật mã, dịch ngược phần mềm, điều tra số, teamwork…
– Đối tượng dự thi: Sinh viên Trường Đại học FPT các cơ sở: Hà Nội, Đà Nẵng, TP Hồ Chí Minh, Cần Thơ

– Hình thức thi đấu: Đấu loại trực tiếp giữa các đội thi
Giải thưởng:

– 1 Giải nhất: 3.000.000 VNĐ.
– 1 Giải nhì: 2.000.000 VNĐ
– 1 Giải ba: 1.000.000 VNĐ
– 2 Giải khuyến khích: 500.000 VNĐ
– 3 Giải phụ gồm đội submit nhiều nhất/đầu tiên/cuối cùng: 500.000 VNĐ/ giải

Thể lệ lệ cuộc thi:

– Đội thi có tối thiểu 3 thành viên và tối đa 4 thành viên
– Trong suốt quá trình cuộc thi diễn ra, các thí sinh không được phép rời khỏi khu vực dự thi. Các trường hợp còn lại đều phải có ý kiến của BTC
– Đội thi có hành động sao chép hoặc gian lận sẽ lập tức bị loại khỏi cuộc thi
– Quyết định của BTC là quyết định cuối cùng

Tiêu chí chấm điểm:
FPT Uni SecAthon 2021 sẽ thi theo hình thức thi CTF, nên sẽ chấm điểm theo phương pháp: Bộ đề gồm 4 mảng (Web, RE, Pwn, Misc), mỗi mảng lại có nhiều câu với số điểm khác nhau. Sau khi hoàn thành sẽ gửi lại cho hệ thống chấm điểm (CTF Scoreboard). Nếu đúng sẽ được tính điểm.

FPT Uni SecAthon 2021 không chỉ nhằm mục đích tạo ra sân chơi lành mạnh bổ ích khuyến khích tinh thần học tập cho các bạn sinh viên mà còn nhân cơ hội này tìm kiếm những tài năng để tham gia cuộc thi An toàn thông tin cấp quốc gia.',
	'04-10-2021',
	N'"FPT Uni Secathon - Mùa 4 ”',
	'BV'
)

insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E05',
	N'Career Talk: Cơ hội thực tập tại FPT Software dành cho sinh viên ĐH FPT',
	'https://daihoc.fpt.edu.vn/media/2021/08/220983180_4165780560175425_2356631793386617119_n-768x451.png',
	N'Bạn muốn tìm cơ hội thực tập và làm việc trong một môi trường chuyên nghiệp và có tính cạnh tranh cao? Giải đáp các thắc mắc trong quá trình thực tập tại FPT Software?',
	N'FPT Software được đánh giá là một trong những công ty công nghệ hàng đầu Việt Nam, là địa chỉ làm việc đáng tin cậy của nhiều sinh viên trong kỳ thực tập và mới ra trường.

Bạn muốn tìm cho mình cơ hội thực tập và làm việc trong một môi trường chuyên nghiệp và có tính cạnh tranh cao?
Bạn muốn giải đáp các thắc mắc trong quá trình thực tập tại FPT Software?

𝐂𝐚𝐫𝐞𝐞𝐫 𝐓𝐚𝐥𝐤: 𝐈𝐧𝐭𝐞𝐫𝐧𝐬𝐡𝐢𝐩 𝐎𝐩𝐩𝐨𝐫𝐭𝐮𝐧𝐢𝐭𝐢𝐞𝐬 𝐚𝐭 𝐅𝐏𝐓 𝐒𝐨𝐟𝐭𝐰𝐚𝐫𝐞 sẽ là điểm đến lý tưởng dành cho bạn nhằm giải đáp tất cả các thắc mắc, nguyện vọng khi thực tập tại F-Soft và những tiêu chí giúp bạn có thể thực tập tại đây trong tương lai.
Với sự xuất hiện của các khách mời – những người đang trực tiếp làm việc tại F-Soft sẽ mang đến cho bạn một cái nhìn chân thực nhất về văn hóa, kỹ năng làm việc, những yếu tố cần thiết khi thực tập tại F-Soft
Ms Hồng Liên: Quản lý chương trình thực tập – FPT Software
Mr Minh Chuyên: Chuyên viên chương trình thực tập – FPT Software

Thời gian: 19:50 – 21:00 Thứ Tư (04/08/2021)
Nền tảng: Zoom

Link đăng ký tham gia: https://forms.gle/skb4z9eZ491R8Dk37

Career Talk là chuỗi sự kiện về hướng nghiệp dành cho sinh viên Trường Đại học FPT được thực hiện bởi phòng Công tác sinh viên Đại học FPT Hà Nội.
Thông tin chi tiết xin vui lòng liên hệ:
Email: Sro.hn@fpt.edu.vn
Điện thoại liên hệ: 024.6680.5915',
	'04-08-2021',
	N'"Internship Opportunities at FPT Software ”',
	'BV'
)

insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E06',
	N'Cùng sinh viên trường F đi tìm lời giải cho câu hỏi: 
	“How to get started in UI/UX Design?”',
	'https://mona.media/wp-content/uploads/2017/05/thi%E1%BA%BFt-k%E1%BA%BF-ui-ux.jpg',
	N'Với mong muốn giúp sinh viên ngành Công nghệ thông tin có cái nhìn rõ hơn về UI/UX, từ đó định hướng và phát triển niềm đam mê với lĩnh vực này, ngày 19/12/2020, Đại học FPT Đà Nẵng sẽ tổ chức Talkshow “How to get started in UI/UX Design?”.',
	N'Với mong muốn giúp sinh viên ngành Công nghệ thông tin có cái nhìn rõ hơn về UI/UX, từ đó định hướng và phát triển niềm đam mê với lĩnh vực này, ngày 19/12/2020, Đại học FPT Đà Nẵng sẽ tổ chức Talkshow “How to get started in UI/UX Design?”.

	Chương trình đặc biệt phù hợp dành cho sinh viên ngành Công nghệ thông tin với những định hướng, chia sẻ về công nghệ và những yêu cầu tuyển dụng của doanh nghiệp.
	Công nghệ thiết kế UI, UX là một trong các công nghệ thiết kế website phổ biến được sử dụng để làm website cho các doanh nghiệp. UI, UX là cách gọi tắt của User Interface (giao diện người dùng) và User Experience (trải nghiệm người dùng). Đây là 2 yếu tố rất quan trọng trong việc thiết kế một website.

	Tham gia chương trình, các bạn sẽ được tìm hiểu rõ hơn về các nội dung: UI/UX là gì?, Sự khác nhau giữa UI & UX, Quá trình tự học & phát triển UI/UX cũng như xu hướng trong thiết kế UI/UX trong năm 2021.

	Thời gian: 10h00 ngày 19 tháng 12 năm 2020.
	Địa điểm: Đại học FPT Đà Nẵng
	Link đăng ký: https://forms.gle/5SGPCQG9MF53nmLt9
	Link vào group để tham gia chương trình: https://www.facebook.com/groups/1034269113741766',
	'12-11-2020',
	'"User Interface/User Experience Design”',
	'NV'
)

insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E07',
	N'Diễn đàn Công nghệ FPT Techday 2020 
	sắp tổ chức tại TP.HCM',
	'https://daihoc.fpt.edu.vn/wp-content/uploads/2020/11/khonggiantrienlamtaifpttechday2020_02_snbm-2.jpg',
	N'Diễn đàn Công nghệ FPT Techday 2020 (FPT Techday 2020) với chủ đề: “Hợp lực khai phá hiệu suất”, với hàng loạt xu hướng công nghệ mới sẽ được chia sẻ.',
	N'Diễn đàn Công nghệ FPT Techday 2020 (FPT Techday 2020) với chủ đề: “Hợp lực khai phá hiệu suất”, sẽ chính thức được tổ chức vào ngày 19.11 tới tại TP.HCM, với hàng loạt xu hướng công nghệ mới sẽ được chia sẻ.
	FPT Techday 2020 sẽ được tổ chức trên hai hình thức: tổ chức trực tiếp tại GEM Center (TP.HCM) và xem sự kiện trực tuyến. Sinh viên Đại học FPT cập nhật thông tin sự kiện và đăng ký và tham gia trưc tuyến tại đây.

	FPT Techday 2020 hứa hẹn sẽ quy tụ những xu hướng, công nghệ mới giúp định hình, kiến tạo tương lai từ các chuyên gia đầu ngành trong và ngoài nước; đồng thời mang đến những bài học, kinh nghiệm và giải pháp thực tiễn giúp doanh nghiệp, tổ chức, quốc gia nhanh chóng chuyển đổi sang mô hình số của tương lai. Sự kiện được tổ chức với 4 hoạt động chính: Hội thảo chuyên sâu dành cho các doanh nghiệp, cộng đồng công nghệ; Triển lãm hệ sinh thái toàn diện các sản phẩm – giải pháp chuyển đổi số; Tư vấn chuyển đổi số 1:1 cùng chuyên gia và Đấu trường công nghệ.

	Diễn đàn Công nghệ FPT Techday là sự kiện công nghệ thường niên do Tập đoàn FPT tổ chức với quy mô lớn tại Việt Nam. Thông qua mỗi sự kiện, FPT mong muốn mang đến cho người tham dự những góc nhìn tiên phong và đột phá về cách thức công nghệ có thể thay đổi, kiến tạo nên một thế giới mới, tốt đẹp và thân thiện với con người, hỗ trợ và giúp con người khai mở những tiềm năng vốn có.
	Chủ tịch HĐQT FPT, ông Trương Gia Bình chia sẻ: “Chúng ta đang bước vào một kỷ nguyên số mới, nơi mọi biến số đều bất định, khó nắm bắt đòi hỏi sự linh hoạt, bứt phá và chuyển đổi tốc độ nhanh chóng của doanh nghiệp, tổ chức. Chuyển đổi số đã và đang đóng vai trò kiến tạo nên những trạng thái bình thường mới mà cốt lõi chính là quá trình hội tụ, hợp tác thông minh giữa trí tuệ con người và trí tuệ máy để khai phá những tiềm năng, cơ hội mới. Đó cũng là chủ đề và xu hướng chủ đạo mà FPT mong muốn đem đến Diễn đàn Công nghệ FPT Techday 2020 năm nay”.',
	'19-11-2020',
	N'"Talkshow Kỹ sư phần mềm: Con đường và sự nghiệp”',
	'NV'
)

--Delete From Events where Id = 'E07'

insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E08',
	N'Talkshow kỹ sư phần mềm: Con đường và sự nghiệp dành cho sinh viên ĐH FPT',
	'https://daihoc.fpt.edu.vn/media/2020/09/dhfpttalkshow-768x432.jpg',
	N'Sinh viên Công nghệ thông tin bỡ ngỡ khi bước vào kỳ chuyên ngành? Cách để học tập hiệu quả ở bậc đại học? Làm sao để thành công sau khi ra trường?',
	N'Sinh viên Công nghệ thông tin bỡ ngỡ khi bước vào kỳ chuyên ngành? Cách để học tập hiệu quả ở bậc đại học? Làm sao để thành công sau khi ra trường?

	Đến với Talkshow “Kỹ sư phần mềm: Con đường và sự nghiệp”, sinh viên CNTT – ĐH FPT TP.HCM sẽ được giải đáp những vướng mắc trên.
	Chương trình có sự tham gia của các khách mời nổi tiếng, uy tín gồm:

Mr. Phí Anh Tuấn, Phó Chủ tịch Hội tin học TPHCM (HCA), giám đốc công ty PAT và Mr. Trần Nguyễn Đăng Khoa, Manager of Solution & Technology Unit, FPT Software HCM. Với sự dẫn dắt của MC là Ms.Thân Thị Ngọc Vân, Giảng viên CNTT, ĐH FPT TP.HCM.

Đặc biệt, với 1 trong 2 diễn giả là cựu sinh viên của ĐH FPT, tốt nghiệp thủ khoa, hiện là chuyên gia công nghệ cấp cao, talkshow hứa hẹn đem đến những chia sẻ thực tế và hấp dẫn nhất dành cho SV ĐH FPT TP.HCM.

THÔNG TIN TALKSHOW:

Chủ đề: Kinh nghiệm học trên giảng đường & tạo dựng sự nghiệp của một cựu SV ĐH FPT
Thời gian: 9:00 – 11:00, Thứ 7 ngày 5/9
Địa điểm: Hội trường & Phát trực tiếp tại Fanpage FPT University HCM
Đối tượng: SV chuyên ngành 1 IT và tất cả SV khối ngành IT',
	'12-10-2019',
	N'"Talkshow Kỹ sư phần mềm: Con đường và sự nghiệp”',
	'NV'
)

insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E09',
	N'Lần đầu tiên Việt Nam tổ chức hội nghị quốc tế về ngôn ngữ học máy tính',
	'https://daihoc.fpt.edu.vn/media/2019/10/Pacling-16.jpg',
	N'Việc tổ chức PACLING 2019 là nỗ lực của Đại học FPT trong việc thúc đẩy phong trào nghiên cứu khoa học trong nhà trường cũng như khẳng định vị thế của trường đối với cộng đồng học thuật quốc tế.',
	N'Việc tổ chức PACLING 2019 là nỗ lực của Đại học FPT trong việc thúc đẩy phong trào nghiên cứu khoa học trong nhà trường cũng như khẳng định vị thế của trường đối với cộng đồng học thuật quốc tế.

	Ngày 11-10, tại Hà Nội đã khai mạc Hội nghị quốc tế về ngôn ngữ học máy tính – PACLING 2019. Đây là lần đầu tiên hội nghị có quy mô và uy tín lớn nhất khu vực châu Á – Thái Bình Dương về lĩnh vực này được tổ chức tại Việt Nam và do Đại học FPT đăng cai tổ chức.

	PACLING lần thứ 16 quy tụ gần 100 nhà khoa học thuộc hàng chục trường đại học, viện nghiên cứu, các doanh nghiệp hàng đầu châu Á – Thái Bình Dương (Nhật Bản, Canada, Ấn Độ, Australia, Trung Quốc,…) cùng nhiều diễn giả uy tín đến từ các nước có nền khoa học cơ bản phát triển mạnh như Anh, Pháp, Ireland….

	Trong khuôn khổ sự kiện, các nhà khoa học sẽ thảo luận xoay quanh 16 chủ đề chính của ngôn ngữ học máy tính gồm ngữ âm học, phân tích hình thái, ngôn ngữ nói và đối thoại, tài nguyên ngôn ngữ, dịch máy, xử lý ngôn ngữ dựa trên Corpora và Corpus,…
	Tại hội nghị này, các chuyên gia công nghệ, giảng viên FPT cùng các giáo sư, chuyên gia đến từ các trường đại học danh tiếng trình bày hơn 40 bài báo cáo chuyên sâu về những nghiên cứu mới nhất trong lĩnh vực ngôn ngữ học máy tính được các tác giả công bố sau quá trình nghiên cứu và thực nghiệm lâu dài.

	Các báo cáo nghiên cứu giá trị này sẽ góp phần thúc đẩy ứng dụng ngành Ngôn ngữ học máy tính trong các lĩnh vực kinh tế, xã hội, khoa học, giáo dục… Cụ thể như thiết kế hệ thống nhận diện giọng nói, hệ thống trả lời giọng nói tự động, công cụ tìm kiếm web, trình soạn thảo văn bản, tài liệu giảng dạy về ngôn ngữ…

	Cùng phần triển lãm trình diễn các sáng kiến, giải pháp công nghệ hấp dẫn, PACLING 2019 giúp cộng đồng khoa học công nghệ Việt Nam được cập nhật những xu hướng mới của thế giới, các nghiên cứu chuyên sâu có giá trị cho sự phát triển của nền khoa học công nghệ Việt Nam.',
	'11-10-2019',
	N'"Các thành viên chủ chốt Ban Tổ chức PACLING 16 tại phiên khai mạc hội nghị sáng 11-10”',
	'NV'
)

insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E10',
	N'Tìm hiểu về Trí Tuệ Nhân Tạo (AI) – Công nghệ đột phá và dẫn dầu trong cuộc CMCN 4.0',
	'https://daihoc.fpt.edu.vn/media/2019/07/4-e1563866193590-768x407.png',
	N'Là một trong những chuyên ngành mới tại Đại học FPT, Trí Tuệ Nhân Tạo (AI) thu hút sự quan tâm của không ít sinh viên đam mê công nghệ và mong muốn đón đầu xu thế 4.0.',
	N'Là một trong những chuyên ngành mới tại Đại học FPT, Trí Tuệ Nhân Tạo (AI) thu hút sự quan tâm của không ít sinh viên đam mê công nghệ và mong muốn đón đầu xu thế 4.0. Để giúp các bạn sinh viên có cơ hội tiếp xúc những kiến thức về AI, CLB FCode – Phòng PDP Đại học FPT đã tổ chức buổi workshop mang tên: “Smart TESTING using A.I” với nhiều thông tin hữu ích.
	Công nghệ AI (viết tắt của Artificial Intelligence) hoặc trí thông minh nhân tạo là công nghệ mô phỏng các quá trình suy nghĩ và học tập của con người cho máy móc, đặc biệt là các hệ thống máy tính. Các quá trình này bao gồm việc học tập (thu thập thông tin và các quy tắc sử dụng thông tin), lập luận (sử dụng các quy tắc để đạt được kết luận gần đúng hoặc xác định), và tự sửa lỗi. Các ứng dụng đặc biệt của AI bao gồm các hệ thống chuyên gia, nhận dạng tiếng nói và thị giác máy tính (nhận diện khuôn mặt, vật thể hoặc chữ viết).

	Xuất hiện lần đầu vào những năm 50 của thế kỷ trước, hiện tại AI trở nên ngày càng nổi tiếng, quan tâm hơn và được ứng dụng nhiều hơn trong cuộc sống. Các ngành nghề liên quan tới Trí tuệ nhân tạo ngày càng “hot” nhưng đòi hỏi nguồn nhân lực có trình độ và kiến thức tốt.
	Phần trọng điểm mà diễn giả trình bày là về quá trình điều tra nguyên nhân lỗi trong kiểm thử phần mềm với việc sử dụng A.I. Qua đó những lỗi mà testing đã rà soát được qua việc testing sẽ được đưa tới module A.I để xử lý. Module A.I trước khi có thể thực thi việc chẩn đoán cần được các chuyên gia chuẩn bị các kiến thức cần trong việc điều tra nguyên nhân lỗi và sau đó module A.I sẽ học những kiến thức này để phục vụ cho quá trình chuẩn đoán lỗi. Việc chuẩn đoán lỗi sẽ được A.I thực thi thông qua ma trận kiểm tra (execution matrix), ma trận này được tạo nên từ những dấu vết gây lỗi quan sát được từ testing trước đó. Việc điều tra lỗi sẽ đưa ra những tổ hợp đang mâu thuẫn với nhau, với mỗi tổ hợp lỗi có ít nhất 1 chức năng đang gặp lỗi.',
	'23-07-2019',
	N'"Buổi workshop Smart TESTING using A.I”',
	'NV'
)

insert into Events
(Id,Title,Img,Des,Content,CreatedDate,Quotes,CateEventId)
values
(
	'E11',
	N'Tháng 11 này, FPTU Career Fair 2021 sẽ trở lại và hứa hẹn mang tới nhiều cơ hội việc làm cực hấp dẫn ở các doanh nghiệp hàng đầu trong và ngoài nước cho sinh viên Đại học FPT.',
	'https://daihoc.fpt.edu.vn/media/2021/11/JOB-FAIR_COVER-FB-01-768x298.png',
	N'Là một trong những chuyên ngành mới tại Đại học FPT, Trí Tuệ Nhân Tạo (AI) thu hút sự quan tâm của không ít sinh viên đam mê công nghệ và mong muốn đón đầu xu thế 4.0.',
	N'Tháng 11 này, FPTU Career Fair 2021 sẽ trở lại và hứa hẹn mang tới nhiều cơ hội việc làm cực hấp dẫn ở các doanh nghiệp hàng đầu trong và ngoài nước cho sinh viên Đại học FPT. 

	FPTU Career Fair 2021 – Sự kiện ngày hội việc làm lớn nhất trong năm của trường Đại học FPT sẽ diễn ra ngay trong tháng 11 với sự tham gia của 27 doanh nghiệp hàng đầu trong và ngoài nước ở nhiều lĩnh vực khác nhau.

	FPTU Career Fair 2021 hứa hẹn sẽ mang đến nhiều cơ hội hấp dẫn cho các bạn sinh viên như: Tiếp cận hàng trăm vị trí công việc; Tham gia phỏng vấn trực tiếp ngay trong thời gian diễn ra sự kiện; Tham dự Webinar lắng nghe các chia sẻ tâm huyết từ các anh chị Cựu sinh viên và Khách mời nổi tiếng…
	Với chủ đề “Let Passion Drive Your Career”, FPTU Career Fair chắc chắn sẽ là một điểm đến thú vị với tất cả các bạn sinh viên Trường Đại học FPT, là điểm khởi đầu giúp các bạn lựa chọn công việc và sự nghiệp trong tương lai xuất phát từ chính niềm đam mê của bản thân.

	Gần 200 cơ hội việc làm trên nhiều lĩnh vực như: Công nghệ thông tin, Kinh tế / Tài chính, Marketing / Truyền thông, Thiết kế mỹ thuật số… đến từ 27 doanh nghiệp đang chờ đón bạn tại FPTU Career Fair 2021.

	Để thúc đẩy tinh thần và truyền cảm hứng tới các bạn sinh viên, FPTU Career Fair 2021 còn mang đến nhiều kiến thức, kinh nghiệm của những người đi trước thông qua 2 Webinar vô cùng thú vị là “Let Passion Drive Your Career” và “Fuel Your Passion”.

	Chương trình sẽ diễn ra trong 3 ngày liên tiếp: 10,11 và 12/11/2021.',
	'12-11-2021',
	N'"FPTU Career Fair 2021”',
	'NV'
)

create table HomePage
(
	Id varchar(50) not null primary key,
	Title nvarchar(500),
	Des nvarchar(4000),
	Img varchar(4000)
)

insert into HomePage(Id, Title, Des, Img)
values
(
	'HP01',
	N'BƯỚC ĐỆM CHO TƯƠNG LAI CHINH PHỤC CÔNG NGHỆ',
	N'Môi trường Internet càng phát triển, xã hội càng cần các ứng dụng hoặc phần mềm để giải quyết các vấn đề trong cuộc sống. Vì thế nhu cầu việc làm luôn ở mức cao. 
	Tại Đại học FPT, nội dung môn học được biên soạn theo thực tế vì có sự hỗ trợ góp ý của chuyên gia, doanh nghiệp phần mềm nên sinh viên có thể bắt kịp nhanh chóng sau khi ra trường...',
	'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRomfRaz-cgwsMaviSiJTaJWTiLCSBz9oaGewD6Vpb5Z3pjIdftLdo8HCmkJn4rYUHqSKs&usqp=CAU'
)

insert into Admin
(Id, Name, Email)
values
('109769196132916670777',N'Hiếu Trung','trungtdhse151132@fpt.edu.vn')

insert into Admin
(Id, Name, Email)
values
('10976919613291667033',N'Anh Linh','linhdase151281@fpt.edu.vn')

Select * From Lecturer where Id = 'LT01'

/*Create table Tag(
	Id varchar(50) Primary Key,
	Name varchar(50)
);

drop table Tag

Select * From Book
Where CateBookId = 'CB03'
*/

