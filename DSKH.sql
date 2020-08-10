USE DSKH
GO
create table Khach
(
	MaKhach int identity(1,1) not null primary key,
	TenKH nvarchar(50),
	Email nvarchar(50),
	MatKhau nvarchar(50),
	DiaChi nvarchar(50),
	SDT char(11),
	Quyen char(50)
)
insert into Khach values(N'Phạm Song Toàn',N'ashlynrae245@gmail.com',N'160420PsT',N'TPHCM','0948757277','admin')
insert into Khach values(N'Lê Hoài Phong',N'phongle0505@gmail.com',N'2001181259',N'Bình Dương','0948484848','user')
insert into Khach values(N'Võ Thanh Quy',N'thanhquy12@gmail.com',N'123456789',N'Bình Phước','0123456789','user')

create proc DK 
(
	@TenKH nvarchar(50),
	@Email nvarchar(50),
	@MatKhau nvarchar(50),
	@SDT int,
	@DiaChi nvarchar(50)
)
as
begin
	insert into Khach
	values(@TenKH,@Email,@MatKhau,@DiaChi,@SDT,'user')
end
go

