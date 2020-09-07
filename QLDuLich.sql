use master
Create database DuLichASP
use DuLichASP
Create table danhmucchinh
(
maDanhMuc char(10) not null primary key,
tenDanhMuc Nvarchar(50),
moTaNgan NvarChar(1000),
moTaDai NvarChar(4000),
)
Create table danhmucphu
(
maDanhMucPhu char(10) not null primary key,
maDanhMuc char(10),
tenDanhMucPhu Nvarchar(50) not null,
linkAnh Nvarchar(200),
moTaNgan NvarChar(1000),
moTaDai NvarChar(4000),
)
Create table tour 
(
maTour char(10) not null primary key,
maDanhMucPhu char(10) not null,
tenTour Nvarchar(50) not null,
diemXuatPhat nvarchar(50),
diemDenCuoi nvarchar(50),
dichVu nvarchar(50),
thoiGianTour nvarchar(50),
ngayKhoiHanh date,
linkAnh Nvarchar(200),
moTaNgan NvarChar(1000),
moTaDai NvarChar(4000),
giaTour int
)

Create table xethue
(
maXeThue char(10) not null primary key,
maDanhMucPhu char(10) not null,
tenXeThue NvarChar(50),
soCho int,
donGia int,
linkAnh Nvarchar(200),
moTaNgan NvarChar(1000),
moTaDai NvarChar(4000),
)
Create table sukien
(
maSuKien char(10) not null primary key,
maDanhMucPhu char(10) not null,
maTour char(10),
tenSuKien NvarChar(50),
linkAnh Nvarchar(200),
moTaNgan NvarChar(1000),
moTaDai NvarChar(4000),
)
Create table lichtrinh
(
maLichTrinh char(10) not null primary key,
maTour char(10),
tenNoiDung Nvarchar(200),
noiDung NvarChar(4000)
)

Create table booked
(
maBooked INT IDENTITY(1,1) PRIMARY KEY,
maTour char(10) not null,
tenKhachHang Nvarchar(50) not null,
ngaySinh date,
gioiTinh nvarchar(10),
soDienThoai varchar(20),
gmail nvarchar(50),
diaChi nvarchar(20),
ngayDatTour date,
ngayKhoiHanh date,
soVe int,
tongTien int
)
Create table taikhoan
(
tenTaiKhoan char(50) not null primary key,
matKhau char(50) not null,
loaiTaiKhoan nvarchar(50) not null
)