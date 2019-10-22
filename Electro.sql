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
	hinh_anh_1 NVARCHAR(255) NOT NULL,
	hinh_anh_2 NVARCHAR(255) NOT NULL,
	hinh_anh_3 NVARCHAR(255) NOT NULL,
	hinh_anh_4 NVARCHAR(255) NOT NULL,
	hinh_anh_5 NVARCHAR(255) NOT NULL,
	gia_ban INT NOT NULL,
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
	thanh_tien INT NOT NULL,
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
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Canon EOS 2000D DSLR Camera Black', '1.1.png', '1.2.png', '1.3.png', '1.4.png', '1.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Nikon D750 DSLR Camera Black', '2.1.png', '2.2.png', '2.3.png', '2.4.png', '2.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Sony DSCWX800 Compact Camera Black', '3.1.png', '3.2.png', '3.3.png', '3.4.png', '3.5.png', '1000'); 
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'REMON 3D Camera Lens Red', '4.1.png', '4.2.png', '4.3.png', '4.4.png', '4.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'PS4 CUHZEY2X Camera', '5.1.png', '5.2.png', '5.3.png', '5.4.png', '5.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Nikon D3500 DSLR Camera Black', '6.1.png', '6.2.png', '6.3.png', '6.4.png', '6.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Nikon D5300 DSLR Camera Black', '7.1.png', '7.2.png', '7.3.png', '7.4.png', '7.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Nikon D850 DSLR Camera With AF-S NIKKOR', '8.1.png', '8.2.png', '8.3.png', '8.4.png', '8.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Canon EOS 77D DSLR Camera Black', '9.1.png', '9.2.png', '9.3.png', '9.4.png', '9.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Sony HDRAS300R 4K Action Camera White', '10.1.png', '10.2.png', '10.3.png', '10.4.png', '10.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Canon IXUS 185 Digital Camera Black', '11.1.png', '11.2.png', '11.3.png', '11.4.png', '11.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Canon ZOEMINI C Instant Camera With Printer Seaside Blue', '12.1.png', '12.2.png', '12.3.png', '12.4.png', '12.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Canon ZOEMINI S Instant Camera With Printer Matte Black', '13.1.png', '13.2.png', '13.3.png', '13.4.png', '13.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Ring 8SF1P7WEU0 Flood Light Camera White', '14.1.png', '14.2.png', '14.3.png', '14.4.png', '14.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Canon EOS M50 Mirrorless Digital Camera Black', '15.1.png', '15.2.png', '15.3.png', '15.4.png', '15.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Canon EOS R Mirrorless Digital Camera Body Black', '16.1.png', '16.2.png', '16.3.png', '16.4.png', '16.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Sony Alpha a6400 Mirrorless Digital Camera ILCE-6400 Silver', '17.1.png', '17.2.png', '17.3.png', '17.4.png', '17.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Canon EOS RP Mirrorless Digital Camera Black', '18.1.png', '18.2.png', '18.3.png', '18.4.png', '18.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('4', 'Sony ILCE7RM4 a7R IV Mirrorless Digital Camera Body Black', '19.1.png', '19.2.png', '19.3.png', '19.4.png', '19.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban)
	VALUES ('4', 'Dlink DCS8000LH Mini HD Wi-Fi Camera', '20.1.png', '20.2.png', '20.3.png', '20.4.png', '20.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
VALUES ('4', 'Canon ZOEMINI S Instant Camera With Printer Rose Gold', '21.1.png', '21.2.png', '21.3.png', '21.4.png', '21.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
VALUES ('4', 'Netgear Arlo Pro Smart Security System With 1 Camera','22.1.png', '22.2.png', '22.3.png', '22.4.png', '22.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
VALUES ('4', 'Eklasse 4K Action Camera', '23.1.png', '23.2.png', '23.3.png', '23.4.png', '23.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
VALUES ('4', 'Nikon Z6 Digital Mirrorless Camera Black', '24.1.png', '24.2.png', '24.3.png', '24.4.png', '24.5.png', '1000');

--SMARTPHONE 24--
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Apple iPhone 7 32GB Black ', '1.1.png', '1.2.png', '1.3.png', '1.4.png', '1.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Apple iPhone XR 128GB Black', '2.1.png', '2.2.png', '2.3.png', '2.4.png', '2.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Apple iPhone Xs 64GB Space Grey', '3.1.png', '3.2.png', '3.3.png', '3.4.png', '3.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Samsung Galaxy S10+ 128GB Prism Black', '4.1.png', '4.2.png', '4.3.png', '4.4.png', '4.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Samsung Galaxy S10 128GB Prism Black', '5.1.png', '5.2.png', '5.3.png', '5.4.png', '5.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Samsung Galaxy A30 64GB Black', '6.1.png', '6.2.png', '6.3.png', '6.4.png', '6.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Honor 8X 128GB Red 4G Dual Sim Smartphone', '7.1.png', '7.2.png', '7.3.png', '7.4.png', '7.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Nokia 9 128GB Midnight Blue', '8.1.png', '8.2.png', '8.3.png', '8.4.png', '8.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban)
	VALUES ('1', 'Nokia 8110 4G LTE Dual Sim', '9.1.png', '9.2.png', '9.3.png', '9.4.png', '9.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Nokia 110 Black Dual Sim Mobile TA-1192', '10.1.png', '10.2.png', '10.3.png', '10.4.png', '10.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Nokia 2.2 16GB Black', '11.1.png', '11.2.png', '11.3.png', '11.4.png', '11.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Nokia 3.2 16GB Steel', '12.1.png', '12.2.png', '12.3.png', '12.4.png', '12.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Huawei P30 Pro 256GB Black', '13.1.png', '13.2.png', '13.3.png', '13.4.png', '13.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Huawei P30 Pro 256GB', '14.1.png', '14.2.png', '14.3.png', '14.4.png', '14.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Huawei Mate 20 Pro 128GB Black', '15.1.png', '15.2.png', '15.3.png', '15.4.png', '15.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Honor 10i 128GB Black', '16.1.png', '16.2.png', '16.3.png', '16.4.png', '16.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'BlackBerry Keyone 64GB Bronze + Ferrari Watch', '17.1.png', '17.2.png', '17.3.png', '17.4.png', '17.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Oppo Reno Z 128GB Jet Black', '18.1.png', '18.2.png', '18.3.png', '18.4.png', '18.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Oppo Reno Z 128GB Aurora Purple', '19.1.png', '19.2.png', '19.3.png', '19.4.png', '19.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Oppo Reno 256GB Jet Black', '20.1.png', '20.2.png', '20.3.png', '20.4.png', '20.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban)
	VALUES ('1', 'Oppo Reno 256GB Ocean Green', '21.1.png', '21.2.png', '21.3.png', '21.4.png', '21.5.png', '1000'); 
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Oppo A5s 32GB Red', '22.1.png', '22.2.png', '22.3.png', '22.4.png', '22.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Oppo A5s 32GB Blue', '23.1.png', '23.2.png', '23.3.png', '23.4.png', '23.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('1', 'Oppo A9 (2020) 128GB Space Purple', '24.1.png', '24.2.png', '24.3.png', '24.4.png', '24.5.png', '1000');

--TV--
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('2', 'Sony 49X7077F 4K HDR Smart', '1.1.png', '1.2.png', '1.3.png', '1.4.png', '1.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('2', 'Apple TV 4K 64GB Black MP7P2AE/A', '2.1.png', '2.2.png', '2.3.png', '2.4.png', '2.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban)
	VALUES ('2', 'Sony KD65X8577G 4K HDR Android', '3.1.png', '3.2.png', '3.3.png', '3.4.png', '3.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('2', 'Sony 85X9500G 4K UHD Android', '4.1.png', '4.2.png', '4.3.png', '4.4.png', '4.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
VALUES ('2', 'Sony 55X7500F 4K HDR Android', '5.1.png', '5.2.png', '5.3.png', '5.4.png', '5.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('2', 'Sony 98Z9G 8K HDR Android', '6.1.png', '6.2.png', '6.3.png', '6.4.png', '6.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('2', 'Sony 49X8000G 4K Ultra HDR Smart', '7.1.png', '7.2.png', '7.3.png', '7.4.png', '7.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('2', 'Sony 65A8G 4K HDR Android', '8.1.png', '8.2.png', '8.3.png', '8.4.png', '8.5.png', '1000');

--LAPTOP--
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('3', 'Asus Laptop 14 X409 Laptop', '1.1.png', '1.2.png', '1.3.png', '1.4.png', '1.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('3', 'Asus Laptop 14 X409 Laptop', '2.1.png', '2.2.png', '2.3.png', '2.4.png', '2.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban)
	VALUES ('3', 'Microsoft Surface Laptop', '3.1.png', '3.2.png', '3.3.png', '3.4.png', '3.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('3', 'HP 15-DA1016NE Laptop', '4.1.png', '4.2.png', '4.3.png', '4.4.png', '4.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('3', 'Lenovo IdeaPad S145 Laptop', '5.1.png', '5.2.png', '5.3.png', '5.4.png', '5.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('3', 'Lenovo IdeaPad C340 Laptop', '6.1.png', '6.2.png', '6.3.png', '6.4.png', '6.5.png', '1000');
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban)
	VALUES ('3', 'Acer Aspire 3 Laptop','7.1.png', '7.2.png', '7.3.png', '7.4.png', '7.5.png', '1000')  
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('3', 'HP 15-DW0002NE Laptop', '8.1.png', '8.2.png', '8.3.png', '8.4.png', '8.5.png', '1000')

--TABLET--
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('5', 'Wintouch Q75S Tablet', '1.1.png', '1.2.png', '1.3.png', '1.4.png', '1.5.png', '1000')
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('5', 'Huawei MediaPad T5 Tablet', '2.1.png', '2.2.png', '2.3.png', '2.4.png', '2.5.png', '1000')
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('5', 'Huawei MediaPad T3 10 Tablet', '3.1.png', '3.2.png', '3.3.png', '3.4.png', '3.5.png', '1000')
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('5', 'Apple iPad Mini 4 Tablet', '4.1.png', '4.2.png', '4.3.png', '4.4.png', '4.5.png', '1000')
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('5', 'Samsung Galaxy Tab A 10.5 (2018)', '5.1.png', '5.2.png', '5.3.png', '5.4.png', '5.5.png', '1000')
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('5', 'Lenovo Folio Case and Film For Tab M10 Black', '6.1.png', '6.2.png', '6.3.png', '6.4.png', '6.5.png', '1000')
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('5', 'Lenovo Tab E7 TB-7104F Tablet', '7.1.png', '7.2.png', '7.3.png', '7.4.png', '6.5.png', '1000')
INSERT INTO PRODUCT(ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban) 
	VALUES ('5', 'Maxguard BP-IPA', '8.1.png', '8.2.png', '8.3.png', '8.4.png', '8.5.png', '1000')

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

