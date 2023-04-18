
create table vattu(
MaVTU int primary key auto_increment,
TenVTU varchar(250)
);

create table nhacc(
MaNCC int primary key auto_increment,
TenNCC varchar(250),
DiaChi varchar(250),
SĐT int
);

create table dondh(
SoDH int primary key auto_increment,
ngayDH date,
SLNhap int,
DGNhap float,
maVtu int references vattu(MaVTU),
maNCC int references nhacc(MaNCC)
);

create table phieunhap(
SoPN int primary key auto_increment,
NgayNhap date,
DGxuat float,
SLxuat int,
maVtu int references vattu(MaVTU)
);

create table phieuxuat(
SoPX int primary key auto_increment,
NgayXuat date
);