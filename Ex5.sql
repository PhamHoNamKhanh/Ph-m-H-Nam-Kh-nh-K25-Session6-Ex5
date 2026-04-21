create database marketing;
use marketing;

create table Users(
	cus_name varchar (100) not null ,
    cus_mail varchar (100) primary key,
    cus_total_orders int check (cus_total_orders > 0) not null 
);
INSERT INTO Users (cus_name, cus_mail, cus_total_orders) VALUES
('Nguyễn Văn An',     'an.nguyen@gmail.com',      50),
('Trần Thị Bích',     'bich.tran@yahoo.com',       120),
('Lê Hoàng Nam',      'nam.le@outlook.com',         300),
('Phạm Minh Châu',    'chau.pham@gmail.com',        800),
('Hoàng Thị Dung',    'dung.hoang@hotmail.com',     10000),
('Vũ Quốc Hùng',      'hung.vu@gmail.com',          200),
('Đặng Thị Lan',      'lan.dang@yahoo.com',          70),
('Bùi Văn Mạnh',      'manh.bui@gmail.com',          40),
('Ngô Thị Hoa',       'hoa.ngo@outlook.com',         150),
('Trịnh Công Sơn',    'son.trinh@gmail.com',          90);
select cus_name,
	case 
		when cus_total_orders < 100 then 'Bac'
        when cus_total_orders between 100 and 500 then 'Vang'
        else 'Kim cuong'
        end as cus_rank
from users 

/*
- ràng buộc orders dạng int kèm điều kiện lớn hơn 0 và không trống
*/