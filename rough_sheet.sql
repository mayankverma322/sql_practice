create database rough;
use rough;
create table student(
id int auto_increment,
stu_name varchar(30) not null,
phone_number bigint unique,
course varchar(30),
primary key (id));
insert into student(stu_name, phone_number, course) value 
('Mohan', 9999999999, 'Web development'),
('Sohan', 9898989898, 'Python'),
('Pandey', 9696969696, 'Ethical Hacking');

create table course_details(
stu_id int auto_increment,
id int,
price int not null,
primary key(stu_id),
date_of_purchase varchar(30) not null,
foreign key(id) references student(id));
insert into course_details(id, price, date_of_purchase) value(2, 1000, "september");
select * from student as st inner join course_details as cd on st.id=cd.id;