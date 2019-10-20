CREATE DATABASE Electro;

DROP TABLE IF EXISTS CATEGORY;
CREATE TABLE CATEGORY (
	ma_loai_san_pham INT NOT NULL PRIMARY KEY,
	ten_loai_san_pham NVARCHAR(255) NULL,
	mo_ta NVARCHAR(255) NULL,
);

DROP TABLE IF EXISTS PRODUCT;
CREATE TABLE PRODUCT (
	ma_san_pham INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	ma_loai_san_pham INT NOT NULL,
	ten_san_pham NVARCHAR(255) NOT NULL,
	hinh_anh_1 VARBINARY(MAX) NOT NULL,
	hinh_anh_2 VARBINARY(MAX) NOT NULL,
	hinh_anh_3 VARBINARY(MAX) NOT NULL,
	hinh_anh_4 VARBINARY(MAX) NOT NULL,
	hinh_anh_5 VARBINARY(MAX) NOT NULL,
	gia_ban FLOAT NOT NULL,
	FOREIGN KEY (ma_loai_san_pham) REFERENCES CATEGORY(ma_loai_san_pham),
);

DROP TABLE IF EXISTS USER_ELECTRO;
CREATE TABLE USER_ELECTRO (
	ma_nguoi_dung INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	user__name NVARCHAR(255) NOT NULL,
	pass_word NVARCHAR(255) NOT NULL,
	ngay_sinh DATE NULL,
	gioi_tinh NVARCHAR(10) NULL,
	email NVARCHAR(255) NULL,
	sdt NVARCHAR(20) NULL,
	dia_chi NVARCHAR(255) NULL,
	ro_le NVARCHAR(255) NULL,
);

--mot bang order chung cho tat ca nguoi dung
DROP TABLE IF EXISTS CART;
CREATE TABLE CART (
	id_cart INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	ma_nguoi_dung INT NOT NULL,
	ma_san_pham INT NOT NULL,
	ngay_mua DATETIME NOT NULL,
	so_luong INT NOT NULL,
	thanh_tien FLOAT NOT NULL,
	FOREIGN KEY (ma_nguoi_dung) REFERENCES USER_ELECTRO(ma_nguoi_dung),
	FOREIGN KEY (ma_san_pham) REFERENCES PRODUCT(ma_san_pham)
);

--mot bang wishlist chung cho tat ca nguoi dung
DROP TABLE IF EXISTS WISHLIST;
CREATE TABLE WISHLIST (
	id_wishlist INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	ma_nguoi_dung INT NOT NULL,
	ma_san_pham INT NOT NULL,
	FOREIGN KEY (ma_nguoi_dung) REFERENCES USER_ELECTRO(ma_nguoi_dung),
	FOREIGN KEY (ma_san_pham) REFERENCES PRODUCT(ma_san_pham)
)
-- SET IDENTITY_INSERT TENQUANHE ON/OFF => chèn bản ghi vs quan hệ có identity --
INSERT INTO CATEGORY VALUES ('1', 'SMARTPHONE', N'Điện thoại di động');
INSERT INTO CATEGORY VALUES ('2', 'TV', N'Ti vi');
INSERT INTO CATEGORY VALUES ('3', 'LAPTOP', N'Lap top');
INSERT INTO CATEGORY VALUES ('4', 'CAMERA', N'Máy ảnh');
INSERT INTO CATEGORY VALUES ('5', 'TABLET', N'Máy tính bảng');

--CAMERA 24--
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Canon EOS 2000D DSLR Camera Black With 18-55mm IS II Lens Kit',
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\1.1.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\1.2.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\1.3.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\1.4.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\1.5.png', SINGLE_BLOB) rs),
	'1000');

INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Nikon D750 DSLR Camera Black + 24-120mm VR Lens + Lexar LSD16GBBEU300 Premium II SDHC Card 16GB + Tripod + Nikon Premium Membership Card Promotion',
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\2.1.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\2.2.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\2.3.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\2.4.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\2.5.png', SINGLE_BLOB) rs),
	'2000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Sony DSCWX800 Compact Camera Black',
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\3.1.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\3.2.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\3.3.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\3.4.png', SINGLE_BLOB) rs),
	(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\3.5.png', SINGLE_BLOB) rs),
	'200000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'REMON 3D Camera Lens Red',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\4.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\4.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\4.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\4.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\4.5.png', SINGLE_BLOB) rs),
'300000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'PS4 CUHZEY2X Camera',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\5.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\5.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\5.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\5.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\5.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Nikon D3500 DSLR Camera Black + AF-P 18-55mm VR Lens + AF-P 70-300mm + 16GB Memory Card',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\6.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\6.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\6.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\6.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\6.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Nikon D5300 DSLR Camera Black + AF-P 18-55mm VR Lens + AF-P 70-300mm Lens + 16GB SD Card + 5x NikonSchool',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\7.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\7.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\7.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\7.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\7.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Nikon D850 DSLR Camera With AF-S NIKKOR 24-120mm f/4G ED VR Lens',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\8.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\8.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\8.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\8.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\8.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Canon EOS 77D DSLR Camera Black With EFS 18-135mm IS USM Lens',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\9.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\9.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\9.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\9.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\9.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Sony HDRAS300R 4K Action Camera White W/ Live View Remote',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\10.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\10.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\10.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\10.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\10.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Canon IXUS 185 Digital Camera Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\11.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\11.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\11.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\11.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\11.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Canon ZOEMINI C Instant Camera With Printer Seaside Blue',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\12.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\12.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\12.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\12.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\12.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Canon ZOEMINI S Instant Camera With Printer Matte Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\13.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\13.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\13.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\13.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\13.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Ring 8SF1P7WEU0 Flood Light Camera White',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\14.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\14.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\14.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\14.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\14.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Canon EOS M50 Mirrorless Digital Camera Black With EF-M 15-45mm f/3.5-6.3 IS STM Lens',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\15.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\15.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\15.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\15.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\15.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Canon EOS R Mirrorless Digital Camera Body Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\16.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\16.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\16.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\16.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\16.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Sony Alpha a6400 Mirrorless Digital Camera ILCE-6400 Silver With E 16-50mm f/3.5-5.6 OSS Lens',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\17.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\17.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\17.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\17.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\17.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Canon EOS RP Mirrorless Digital Camera Black With RF 24-105mm f/4L IS USM Lens + EF-EOS R Mount Adapter',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\18.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\18.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\18.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\18.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\18.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Sony ILCE7RM4 a7R IV Mirrorless Digital Camera Body Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\19.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\19.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\19.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\19.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\19.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Dlink DCS8000LH Mini HD Wi-Fi Camera',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\20.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\20.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\20.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\20.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\20.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Canon ZOEMINI S Instant Camera With Printer Rose Gold',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\21.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\21.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\21.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\21.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\21.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Netgear Arlo Pro Smart Security System With 1 Camera',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\22.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\22.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\22.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\22.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\22.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Eklasse 4K Action Camera With WiFi & Live Streaming Black – EKAC02EG',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\23.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\23.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\23.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\23.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\23.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('4', 'Nikon Z6 Digital Mirrorless Camera Black + 24-70MM F/4 Lens + FTZ Adapter',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\24.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\24.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\24.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\24.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Camera\24.5.png', SINGLE_BLOB) rs),
'400000');

--SMARTPHONE 24--
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Apple iPhone 7 32GB Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\1.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\1.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\1.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\1.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\1.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Apple iPhone XR 128GB Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\2.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\2.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\2.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\2.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\2.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Apple iPhone Xs 64GB Space Grey',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\3.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\3.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\3.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\3.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\3.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Samsung Galaxy S10+ 128GB Prism Black SM-G975F 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\4.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\4.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\4.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\4.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\4.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Samsung Galaxy S10 128GB Prism Black SM-G973F 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\5.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\5.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\5.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\5.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\5.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Samsung Galaxy A30 64GB Black 4G Dual Sim Smartphone SM-A305F',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\6.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\6.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\6.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\6.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\6.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Honor 8X 128GB Red 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\7.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\7.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\7.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\7.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\7.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Nokia 9 128GB Midnight Blue 4G Dual Sim Smartphone TA-1087',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\8.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\8.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\8.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\8.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\8.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Nokia 8110 4G LTE Dual Sim Mobile Phone Yellow TA-1059',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\9.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\9.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\9.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\9.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\9.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Nokia 110 Black Dual Sim Mobile TA-1192',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\10.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\10.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\10.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\10.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\10.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Nokia 2.2 16GB Black TA-1188 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\11.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\11.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\11.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\11.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\11.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Nokia 3.2 16GB Steel 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\12.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\12.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\12.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\12.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\12.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Huawei P30 Pro 256GB Black 4G Dual Sim Smartphone VOG-L29',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\13.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\13.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\13.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\13.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\13.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Huawei P30 Pro 256GB Breathing Crystal 4G Dual Sim Smartphone VOG-L29',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\14.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\14.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\14.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\14.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\14.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Huawei Mate 20 Pro 128GB Black 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\15.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\15.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\15.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\15.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\15.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Honor 10i 128GB Black HRYLX1T 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\16.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\16.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\16.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\16.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\16.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'BlackBerry Keyone 64GB Bronze + Ferrari Watch',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\17.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\17.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\17.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\17.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\17.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Oppo Reno Z 128GB Jet Black CPH1979 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\18.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\18.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\18.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\18.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\18.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Oppo Reno Z 128GB Aurora Purple CPH1979 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\19.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\19.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\19.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\19.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\19.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Oppo Reno 256GB Jet Black CPH1917 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\20.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\20.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\20.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\20.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\20.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Oppo Reno 256GB Ocean Green CPH1917 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\21.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\21.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\21.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\21.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\21.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Oppo A5s 32GB Red CPH1909 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\22.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\22.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\22.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\22.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\22.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Oppo A5s 32GB Blue CPH1909 4G Dual Sim Smartphone',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\23.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\23.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\23.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\23.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\23.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('1', 'Oppo A9 (2020) 128GB Space Purple 4G Dual Sim Smartphone Green CPH1937',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\24.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\24.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\24.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\24.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Smartphone\24.5.png', SINGLE_BLOB) rs),
'400000');



--TV--
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('2', 'Sony 49X7077F 4K HDR Smart LED Television 49inch',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\1.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\1.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\1.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\1.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\1.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('2', 'Apple TV 4K 64GB Black MP7P2AE/A',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\2.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\2.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\2.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\2.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\2.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('2', 'Sony KD65X8577G 4K HDR Android Television 65inch',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\3.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\3.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\3.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\3.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\3.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('2', 'Sony 85X9500G 4K UHD Android LED Television 85inch',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\4.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\4.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\4.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\4.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\4.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('2', 'Sony 55X7500F 4K HDR Android LED Television 55inch',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\5.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\5.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\5.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\5.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\5.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('2', 'Sony 98Z9G 8K HDR Android LED Television 98inch',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\6.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\6.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\6.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\6.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\6.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('2', 'Sony 49X8000G 4K Ultra HDR Smart Android Television 49inch',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\7.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\7.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\7.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\7.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\7.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('2', 'Sony 65A8G 4K HDR Android OLED Television 65inch',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\8.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\8.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\8.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\8.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\TV\8.5.png', SINGLE_BLOB) rs),
'400000');


--LAPTOP--
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('3', 'Asus Laptop 14 X409 Laptop – Core i5 1.6GHz 4GB 1TB Shared Win10 14inch FHD Slate Grey',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\1.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\1.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\1.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\1.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\1.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('3', 'Asus Laptop 14 X409 Laptop – Core i3 2.1GHz 4GB 1TB Shared Win10 14inch FHD Slate Grey',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\2.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\2.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\2.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\2.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\2.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('3', 'Microsoft Surface Laptop – Core i7 2.5GHz 16GB 1TB Shared Win10s 13.5inch UHD Platinum',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\3.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\3.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\3.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\3.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\3.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('3', 'HP 15-DA1016NE Laptop – Core i5 1.6GHz 8GB 1TB 4GB Win10 15.6inch FHD Natural Silver',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\4.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\4.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\4.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\4.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\4.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('3', 'Lenovo IdeaPad S145 Laptop – Core i3 2.3GHz 4GB 256GB Shared Win10 14inch HD Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\5.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\5.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\5.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\5.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\5.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('3', 'Lenovo IdeaPad C340 Laptop – Core i3 2.1GHz 4GB 256GB Shared Win10 14inch FHD Abyss Blue',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\6.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\6.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\6.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\6.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\6.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('3', 'Acer Aspire 3 Laptop – Core i3 2.3GHz 4GB 128GB Shared Win10 15.6inch HD Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\7.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\7.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\7.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\7.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\7.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('3', 'HP 15-DW0002NE Laptop – Core i5 1.6GHz 8GB 256GB 2GB Win10 15.6inch FHD Natural Silver',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\8.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\8.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\8.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\8.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Laptop\8.5.png', SINGLE_BLOB) rs),
'400000');



--TABLET--
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('5', 'Wintouch Q75S Tablet – Android WiFi 8GB 512MB 7inch Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\1.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\1.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\1.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\1.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\1.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('5', 'Huawei MediaPad T5 Tablet – Android WiFi+4G 32GB 3GB 10.1inch Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\2.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\2.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\2.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\2.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\2.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('5', 'Huawei MediaPad T3 10 Tablet – Android WiFi+4G 16GB 2GB 9.6inch Space Grey',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\3.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\3.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\3.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\3.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\3.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('5', 'Apple iPad Mini 4 Tablet – iOS WiFi+Cellular 128GB 2GB 7.9inch Space Grey',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\4.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\4.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\4.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\4.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\4.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('5', 'Samsung Galaxy Tab A 10.5 (2018) Tablet – Android WiFi+4G 32GB 3GB 10.5inch Grey',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\5.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\5.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\5.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\5.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\5.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('5', 'Lenovo Folio Case and Film For Tab M10 Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\6.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\6.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\6.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\6.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\6.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('5', 'Lenovo Tab E7 TB-7104F Tablet – Android WiFi 8GB 1GB 7inch Slate Black',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\7.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\7.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\7.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\7.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\7.5.png', SINGLE_BLOB) rs),
'400000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) VALUES ('5', 'Maxguard BP-IPA Tempered Glass Screen Protector IPad 9.7 + Airpod Case',
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\8.1.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\8.2.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\8.3.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\8.4.png', SINGLE_BLOB) rs),
(SELECT * FROM OPENROWSET(BULK N'C:\Users\ducpb\Documents\NetBeansProjects\Electro\web\image\Tablet\8.5.png', SINGLE_BLOB) rs),
'400000');


--USER--
INSERT INTO USER_ELECTRO(user__name, pass_word, ngay_sinh, gioi_tinh, email, sdt, dia_chi, ro_le) VALUES ('test1', 'test1', '2015-05-04', 'Nam', 'ducpb1@gmail.com', '1111111111', 'HN', '2');
INSERT INTO USER_ELECTRO(user__name, pass_word, ngay_sinh, gioi_tinh, email, sdt, dia_chi, ro_le) VALUES ('test2', 'test2', '2015-05-11', 'Nam', 'ducpb2@gmail.com', '1111111111', 'HCM', '2');

--CART--
SET IDENTITY_INSERT CART OFF;
INSERT INTO CART(ma_nguoi_dung, ma_san_pham, ngay_mua, so_luong, thanh_tien) VALUES ('1', '2', '2015-05-17 14:55:17', '1', '100000');
INSERT INTO CART(ma_nguoi_dung, ma_san_pham, ngay_mua, so_luong, thanh_tien) VALUES ('1', '3', '2015-05-17 14:55:18', '2', '200000');

--WISHLIST--
SET IDENTITY_INSERT WISHLIST OFF;
INSERT INTO WISHLIST(ma_nguoi_dung, ma_san_pham) VALUES ('1', '4');
INSERT INTO WISHLIST(ma_nguoi_dung, ma_san_pham) VALUES ('1', '5');

