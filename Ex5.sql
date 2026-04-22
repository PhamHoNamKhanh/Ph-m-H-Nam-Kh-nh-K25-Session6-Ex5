/*
Khắc phục lỗi null: 
sử dụng left join kết hợp với is null 
*/
create database Inventory;
use inventory;
create table rooms(
room_id int primary key auto_increment,
room_name varchar(50) not null
);
create table bookings(
room_id int,
foreign key(room_id) references rooms(room_id),
id int primary key auto_increment,
descriptions varchar(50)
);
INSERT INTO rooms (room_name) VALUES 
('Phòng A'), ('Phòng B'), ('Phòng C'), ('Phòng D');
INSERT INTO bookings (room_id, descriptions) VALUES 
(1, 'Booking 1'),
(1, 'Booking 2'),
(2, 'Booking 3'),
(1, 'Booking 4'),
(NULL, 'Booking ẩn danh 1'),
(NULL, 'Booking ẩn danh 2');
select *
from rooms as r left join bookings as b
on r.room_id = b.room_id
where b.room_id is null;
