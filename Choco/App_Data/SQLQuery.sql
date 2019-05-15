create database Thechoco
go
use Thechoco
go

--table
create table admin(		id int primary key identity(1,1),
						tenadmin nvarchar(50),
						tendn varchar(50),
						matkhau varchar(50));

create table sanpham(	masp varchar(10) primary key,
						tensp nvarchar(50),
						gia int);

create table anhsanpham(	id int primary key identity(1,1),
							masp varchar(10) foreign key references sanpham(masp),
							hinh varchar(max),
							ngaythem datetime);

create table khachhang(	makh int primary key identity(1,1),
						tenkh nvarchar(50),
						diachikh nvarchar(200),
						sdt int,
						email varchar(50),
						tendn varchar(50),
						matkhau varchar(50));

create table donhang(	madh int primary key identity(1,1),
						makh int foreign key references khachhang(makh),
						ngaydh date,
						trigia int,
						);

create table ctdonhang(	madh int foreign key references donhang(madh),
						masp varchar(10) foreign key references sanpham(masp),
						soluong int,
						gia int,
						thanhtien int);

						
--add values
insert into admin(tenadmin, tendn, matkhau) values (N'Nguyễn Tiến Lên', 'admin', 'admin');