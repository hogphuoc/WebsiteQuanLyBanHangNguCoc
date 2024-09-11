CREATE DATABASE DORSET
USE DORSET

Create table KHACHHANG
(
	MaKH nchar (40) NOT NULL,
	TenKH nvarchar (50),
	NgaySinhKH date,
	DiaChi nvarchar (50),
	SDTKH nchar (10),
	PRIMARY KEY (MaKH)
)

CREATE TABLE LOAISP
(
	MaLoaiSP nchar (5) NOT NULL,
	TenLoaiSP nvarchar (50) NOT NULL,
	PRIMARY KEY (MaLoaiSP)
)

CREATE TABLE SANPHAM 
(	
	MaSP nchar (20) NOT NULL,
	TenSP nvarchar (50),
	DVT nvarchar (10),
	DonGia float,
	MoTa nvarchar (100),
	NgaySX date,
	HanSD nvarchar (10),
	MaLoaiSP nchar(5),
	Hinhanh nvarchar(50),
	PRIMARY KEY (MaSP),
	CONSTRAINT FK_MLSP_SP FOREIGN KEY (MaLoaiSP) REFERENCES LOAISP (MaLoaiSP),
)

CREATE TABLE KHUVUC
(
	MaKV nchar (5) NOT NULL,
	TenKV nvarchar (50),
	PRIMARY KEY (MaKV)
)

CREATE TABLE NHANVIEN 
(
	MaNV nchar (5) NOT NULL,
	TenNV nvarchar (50) ,
	SoDTNV nchar (10),
	MaKV nchar (5),
	NgayVaoLam date,
	PRIMARY KEY (MaNV),
	CONSTRAINT FK_MKV_NV FOREIGN KEY (MaKV) REFERENCES KHUVUC (MaKV)
)

CREATE TABLE CUAHANG
(
	MaCH nchar (5) NOT NULL,
	MaKV nchar (5) ,
	TenCH nvarchar (100),
	DiaChiCH nvarchar (100),
	SDTLienHe nchar (10)
	PRIMARY KEY (MaCH),
	CONSTRAINT FK_MKV_CH FOREIGN KEY (MaKV) REFERENCES KHUVUC (MaKV)
)

CREATE TABLE NHACUNGCAP
(
	MaNCC nchar (5) NOT NULL,
	TenNCC nvarchar (100),
	MaSP nchar (20),
	MaLoaiSP nchar (5),
	DiaChi nvarchar (50),
	MaKV nchar (5),
	PRIMARY KEY (MaNCC),
	CONSTRAINT FK_MSP_NCC FOREIGN KEY (MaSP) REFERENCES SANPHAM (MaSP),
	CONSTRAINT FK_MKV_NCC FOREIGN KEY (MaKV) REFERENCES KHUVUC (MaKV),
	CONSTRAINT FK_MLSP_NCC FOREIGN KEY (MaLoaiSP) REFERENCES LOAISP (MaLoaiSP)
)

CREATE TABLE DONDATHANG
(
	MaDDH nchar (40) NOT NULL,
	MaNV nchar (5) ,
	MaKH nchar (40),
	Ngaylap date,
	DiachiGH nvarchar(100),
	Ghichu nvarchar (50),
	PRIMARY KEY (MaDDH),
	CONSTRAINT FK_MNV_DDH FOREIGN KEY (MaNV) REFERENCES NHANVIEN (MaNV),
	CONSTRAINT FK_MKH_DDH FOREIGN KEY (MaKH) REFERENCES KHACHHANG (MaKH)
)

CREATE TABLE CTDDH 
(
	MaDDH nchar (40) NOT NULL,
	MaSP nchar (20) NOT NULL,
	Soluong int,
	TinhTrang nvarchar (20),
	PRIMARY KEY (MaDDH,MaSP),
	CONSTRAINT FK_MSP_CTDDH FOREIGN KEY (MaSP) REFERENCES SANPHAM (MaSP),
	CONSTRAINT FK_MDDH_CTDDH FOREIGN KEY (MaDDH) REFERENCES DONDATHANG (MaDDH)
)

CREATE TABLE HANGTONKHO
(
	MaCH nchar (5) NOT NULL,
	MaSP nchar (20) NOT NULL,
	SLTon int,
	CONSTRAINT FK_MSP_HTK FOREIGN KEY (MaSP) REFERENCES SANPHAM (MaSP),
	CONSTRAINT FK_MCH_HTK FOREIGN KEY (MaCH) REFERENCES CUAHANG (MaCH),
	PRIMARY KEY (MaCH, MaSP)
)

INSERT INTO SANPHAM
VALUES  ('SP001',N'Ngũ cốc hạt phỉ giòn và chocolate',N'Hộp','350000',N'hạt phỉ nướng giòn tan, sô cô la đen phủ ngũ cốc','2023-12-12',N'18 tháng','LOAI3','~\\Image_sanpham\\mueslicr1.png'),
		('SP002',N'Ngũ cốc hạt giòn và trái cây',N'Hộp','350000',N'nho khô vàng óng, hạt điều bơ và chà là thơm ngon','2023-12-01',N'18 tháng','LOAI3','~\\Image_sanpham\\mueslicr2.png'),
		('SP003',N'Ngũ cốc hạt hạnh nhân và hồ đào',N'Hộp','350000',N'hồ đào caramen phong và hạnh nhân ngọt ngào','2023-12-05',N'18 tháng','LOAI3','~\\Image_sanpham\\mueslicr3.png'),
		('SP004',N'Granola hạt hướng dương',N'Hộp','320000',N'sự kết hợp của các miếng cuộn và nướng với đu đủ khô và hạt hướng dương','2023-12-05',N'18 tháng','LOAI1','~\\Image_sanpham\\u_granola1.png'),
		('SP005',N'Ngũ cốc mix hạt',N'Hộp','250000',N'hỗn hợp các loại bánh nướng với quả phỉ, hạnh nhân, quả hạch Brazil và hạt hướng dương','2023-12-11',N'18 tháng','LOAI2','~\\Image_sanpham\\s_muesli0.png'),
		('SP006',N'Ngũ cốc simply',N'Hộp','250000',N'một sự pha trộn đơn giản của mảnh với trái cây sấy khô, hạt hướng dương và các loại hạt','2023-12-14',N'18 tháng','LOAI2','~\\Image_sanpham\\s_muesli1.png'),
		('SP007',N'Ngũ cốc nướng ngon',N'Hộp','300000',N'hỗn hợp các loại bánh cuộn và nướng với trái cây sấy khô, các loại hạt và hạt bí ngô','2023-11-28',N'18 tháng','LOAI2','~\\Image_sanpham\\s_muesli2.png'),
		('SP008',N'Ngũ cốc trái cây tuyệt vời',N'Hộp','270000',N'sự pha trộn của yến mạch cán với trái cây','2023-12-02',N'18 tháng','LOAI2','~\\Image_sanpham\\u_muesli1.png'),
		('SP009',N'Ngũ cốc quả hạch và hạt',N'Hộp',N'250000',N'sự pha trộn của yến mạch cán với trái cây, hạt và quả hạch khô và đông lạnh','2023-12-10',N'18 tháng','LOAI2','~\\Image_sanpham\\u_muesli2.png'),
		('SP010',N'Ngũ cốc dâu và anh đào',N'Hộp','300000',N'sự kết hợp của các loại bánh cuộn và nướng với nho khô, các loại quả mọng và anh đào khô đông lạnh','2023-11-30',N'18 tháng','LOAI2','~\\Image_sanpham\\u_muesli3.png'),
		('SP011',N'Ngũ cốc hạt hấp dẫn',N'Hộp','320000',N'sự kết hợp nướng hạnh nhân nguyên hạt, hạt điều, hạt phỉ rang cùng trái cây và hạt khô','2023-12-01',N'18 tháng','LOAI2','~\\Image_sanpham\\u_muesli4.png'),
		('SP012',N'Ngũ cốc hữu cơ',N'Hộp','270000',N'sự kết hợp của các loại bột hữu cơ và nướng với trái cây, các loại hạt và hạt hữu cơ','2023-12-03',N'18 tháng','LOAI2','~\\Image_sanpham\\u_muesli_5.png'),
		('SP013',N'Granola yến mạch',N'Hộp','300000',N'Yến mạch vàng giòn và hạt hướng dương thơm ngon khó cưỡng','2023-12-07',N'18 tháng','LOAI1','~\\Image_sanpham\\u_muesli6.png'),
		('SP014',N'Granola mật ong',N'Hộp','270000',N'sự kết hợp tuyệt vời giữa quả hồ đào giòn và hạnh nhân, yến mạch và lúa mạch đen và mật ong','2023-12-15',N'18 tháng','LOAI1','~\\Image_sanpham\\s_granola.png'),
		('SP015',N'Granola quả mọng',N'Hộp','350000',N'sự kết hợp tuyệt vời giữa quả mâm xôi và quả mâm xôi, được nướng dẻo','2023-12-12',N'18 tháng','LOAI1','~\\Image_sanpham\\u_granola2.png'),
		('SP016',N'Granola chocolate',N'Hộp','270000',N'sự kết hợp hấp dẫn của sô cô la đen, quả anh đào và các loại hạt, được nướng siro vàng','2023-12-14',N'18 tháng','LOAI1','~\\Image_sanpham\\u_granola3.png'),
		('SP017',N'Granola mix hạt',N'Hộp','310000',N'nướng với hạnh nhân giòn, quả phỉ và hạt điều, để tạo ra món granola hạt khá đặc biệt','2023-12-06',N'18 tháng','LOAI1','~\\Image_sanpham\\u_granola4.png')


INSERT INTO LOAISP  
VALUES  ('LOAI1','GRANOLA'),
		('LOAI2','MUESLI'),
		('LOAI3','CRUNCH MUESLI')


INSERT INTO KHACHHANG
VALUES  ('KH001',N'Nguyễn Đức Trí','2005-01-24','365/8A Lạc Long Quân, Quận 3','0378952364'),
		('KH002',N'Nguyễn Hoàng Lê Anh','1993-03-05','23 Thảo Điền, Quận 2','0378952364'),
		('KH003',N'Võ Thị Bích Huyền','2005-01-24','02/12A Lê Văn Việt, Thủ Đức','0378952364'),
		('KH004',N'Lê Thị Tươi','2005-01-24','Hẻm 34 số 34 ','0378952364'),
		('KH005',N'Hoàng Chí Dũng','2005-01-24','Số 6 Hẻm 32 D2, Bình Thạnh','0378952364'),
		('KH006',N'Tạ Minh Nghĩa','2005-01-24','14/7 Hẻm 24 Phan Xích Long','0378952364'),
		('KH007',N'Lê Anh Sơn','2005-01-24','145 Hồ Xuân Hương Hà Nội','0378952364'),
		('KH008',N'Vũ Huy Hoàng','2005-01-24','139 Huỳnh Đăng Thơ Biên Hòa','0378952364'),
		('KH009',N'Lê Cẩm Vân','2005-01-24','125 Quang Trung Gò Vấp','0378952364'),
		('KH010',N'Hoàng Minh Tường','2005-01-24','69/4 Âu Cơ Đồng Nai','0378952364')


INSERT INTO NHANVIEN	
VALUES  ('NV001',N'Hồ Mạnh Hùng','0215472369','KV001','2015-12-30'),
		('NV002',N'Tống Thị Thu Hoa','0215472369','KV001','2015-12-30'),
		('NV003',N'Nguyễn Khánh Trình','0215472369','KV001','2015-12-30'),
		('NV004',N'Lê Minh Hoàng','0215472369','KV001','2015-12-30'),
		('NV005',N'Đặng Nguyên Anh','0215472369','KV002','2015-12-30'),
		('NV006',N'Châu Đăng Khoa','0215472369','KV002','2015-12-30'),
		('NV007',N'Hoàng Mạnh','0215472369','KV002','2015-12-30'),
		('NV008',N'Đỗ Quyên','0215472369','KV002','2015-12-30'),
		('NV009',N'Hoàng Trọng Thủy','0215472369','KV002','2015-12-30'),
		('NV010',N'Vương Hoàng Oanh','0215472369','KV003','2015-12-30'),
		('NV011',N'Mai Nghĩa','0215472369','KV003','2015-12-30'),
		('NV012',N'Mai Trân','0215472369','KV003','2015-12-30'),
		('NV013',N'Hồ Vũ Trọng','0215472369','KV003','2015-12-30'),
		('NV014',N'Dương Quang Sang','0215472369','KV003','2015-12-30'),
		('NV015',N'Lê Tùng','0215472369','KV004','2015-12-30'),
		('NV016',N'Nguyễn Khắc Việt','0215472369','KV004','2015-12-30'),
		('NV017',N'Hoài An','0215472369','KV004','2015-12-30'),
		('NV018',N'Minh Tâm','0215472369','KV004','2015-12-30'),
		('NV019',N'Ánh Dương','0215472369','KV005','2015-12-30'),
		('NV020',N'Mạnh Cường','0215472369','KV005','2015-12-30'),
		('NV021',N'Tiến Dũng','0215472369','KV005','2015-12-30'),
		('NV022',N'Khánh An','0215472369','KV005','2015-12-30'),
		('NV023',N'Hoàng Trọng Tùng','0215472369','KV005','2015-12-30'),
		('NV024',N'Đào Minh Quân','0215472369','KV006','2015-12-30'),
		('NV025',N'Ngô Yến Nhi','0215472369','KV006','2015-12-30'),
		('NV026',N'Nguyễn Kha','0215472369','KV006','2015-12-30'),
		('NV027',N'Nguyễn Bắc Tuấn','0215472369','KV006','2015-12-30'),



INSERT INTO KHUVUC
VALUES  ('KV001',N'Thành Phố Thủ Đức'),
		('KV002',N'Quận 3, Thành phố Hồ Chí Minh'),
		('KV003',N'Quận 1, Thành phố Hồ Chí Minh'),
		('KV004',N'Quận 5, Thành phố Hồ Chí Minh'),
		('KV005',N'Quận 7, Thành phố Hồ Chí Minh'),
		('KV006',N'Hồ Hoàn Kiếm, Hà Nội')

INSERT INTO DONDATHANG
VALUES ('DH001','NV001','KH001','2023-11-12',N'2 Hoa Hồng, Phú Nhuận','')


INSERT INTO CTDDH
VALUES ('DH001','SP002','2','')

INSERT INTO CUAHANG
VALUES  ('CH001','KV001',N'DORSET CEREALS',N'147 Lê Văn Việt','0356055255'),
		('CH002','KV002',N'DORSET CEREALS',N'96 Tú Xương','0356055255'),
		('CH003','KV003',N'DORSET CEREALS',N'147 Pasteur','0356055255'),
		('CH004','KV004',N'DORSET CEREALS',N'66/14A Lê Quang Định','0356055255'),
		('CH005','KV005',N'DORSET CEREALS',N'17 Nguyễn Kiệm','0356055255'),
		('CH006','KV006',N'DORSET CEREALS',N'25 Hoàng Hoa Thám','0356055255'),
		('CH007','KV001',N'DORSET CEREALS',N'52 Võ Văn Ngân','0356055255'),

INSERT INTO HANGTONKHO
VALUES  ('CH001','SP001','20'),
		('CH001','SP002','37'),
		('CH001','SP003','29'),
		('CH001','SP004','55'),
		('CH001','SP005','36'),
		('CH002','SP001','51'),
		('CH002','SP016','73'),
		('CH002','SP015','54'),
		('CH002','SP011','49'),
		('CH003','SP006','36'),
		('CH003','SP007','55'),
		('CH003','SP008','12'),
		('CH003','SP009','66'),
		('CH004','SP002','27'),
		('CH004','SP001','39'),
		('CH004','SP011','30'),
		('CH004','SP017','58'),
		('CH004','SP013','26'),
		('CH005','SP001','96'),
		('CH005','SP002','72'),
		('CH005','SP005','36'),
		('CH005','SP006','14'),
		('CH005','SP012','24'),

INSERT INTO NHACUNGCAP
VALUES  ('NCC01',N'Nhà cung cấp 1','SP001','LOAI3',N'227/14 Xa lộ Hà Nội, Thủ Đức','KV006'),
		('NCC01',N'Nhà cung cấp 2','SP002','LOAI3',N'227/14 Xa lộ Hà Nội, Thủ Đức','KV001'),
		('NCC01',N'Nhà cung cấp 3','SP002','LOAI3',N'227/14 Xa lộ Hà Nội, Thủ Đức','KV002'),
		('NCC01',N'Nhà cung cấp 4','SP002','LOAI3',N'227/14 Xa lộ Hà Nội, Thủ Đức','KV003'),
		('NCC01',N'Nhà cung cấp 5','SP002','LOAI3',N'227/14 Xa lộ Hà Nội, Thủ Đức','KV005')
