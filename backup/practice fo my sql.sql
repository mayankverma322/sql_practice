# PRACTICE OF MY SQL NOTE'S 

/* SQL DATABASE- Sabse phle hum sql m databse create kartey hai or phir use command chalakar usko use 
kartey hai or uskey baad hum usmey koi bhi table banakar uskey under apna work start kartey hai.*/

/* SHORTCUT KEY:-
ctrl+enter - execute the line

*/

#___________________________________________________________________________________________#

## How to create my sql data base

create database My_SQL;
use My_SQL;
show databases;

#___________________________________________________________________________________________#

## How to create table

create table Test (
emp_id int,
first_name varchar(50),
last_name varchar(50),
salary int,
age int);

insert into Test values(1, "manish", "pal", 25000, 25);
insert into Test values(2, "rahul", "singh", 22000, 28);
insert into Test values(3, "hehe", "bal", 28000, 29);
insert into Test values(4, "chal", "bay", 1000000, 100);

select * from Test;

#___________________________________________________________________________________________#

## How to delete any row 

create table Test1 (
emp_id int,
first_name varchar(50),
last_name varchar(50),
salary int,
age int);

insert into Test1 values(1, "manish", "pal", 25000, 25);
insert into Test1 values(2, "rahul", "singh", 22000, 28);
insert into Test1 values(3, "hehe", "bal", 28000, 29);
insert into Test1 values(4, "chal", "bay", 1000000, 100);

select * from Test1;

set sql_safe_updates=0;
delete from Test1 where emp_id=4;
set sql_safe_updates=1;

select * from Test1;

#___________________________________________________________________________________________#

## Some commands for checking information - agar kisi row ka data nikaalna hai to.

create table Test2 (
emp_id int,
first_name varchar(50),
last_name varchar(50),
salary int,
age int);

insert into Test2 values(1, "manish", "pal", 25000, 25);
insert into Test2 values(2, "rahul", "singh", 22000, 28);
insert into Test2 values(3, "hehe", "bal", 28000, 29);
insert into Test2 values(4, "chal", "bay", 1000000, 100);

select first_name, last_name, salary from Test2;
select * from Test2 where first_name = "rahul" or emp_id=3;
select * from Test2 where first_name = "rahul" and emp_id=2;

#___________________________________________________________________________________________#

## How to add new column and change the data.

create table Test3 (
emp_id int,
first_name varchar(50),
last_name varchar(50),
salary int,
age int);

insert into Test3 values(1, "manish", "pal", 25000, 25);
insert into Test3 values(2, "rahul", "singh", 22000, 28);
insert into Test3 values(3, "hehe", "bal", 28000, 29);
insert into Test3 values(4, "chal", "bay", 1000000, 100);

alter table Test3 add client_id int;
set sql_safe_updates = 0;
update test3 set client_id = 12 where emp_id=1;
set sql_safe_updates = 1;
select * from test3;

#___________________________________________________________________________________________#

## How to delete table

create table Test4 (
emp_id int,
first_name varchar(50),
last_name varchar(50),
salary int,
age int);

select * from test4;
drop table test4;

#___________________________________________________________________________________________#

# How to check additional table details

create table Test5 (
emp_id int,
first_name varchar(50),
last_name varchar(50),
salary int,
age int);

desc test5;

#___________________________________________________________________________________________#

## How to add custom features like - null, auto incremeant, unique, biginit, primery key

create table Test6 (
emp_id int auto_increment,
emp_name varchar(50),
phone_no bigint unique not null,
age int not null,
primary key (emp_id));

desc test6;
insert into test6(emp_name,phone_no,age) value
('modi',9898989898, 23),
('adani', 9393939393, 38),
('virat',9238293928, 30);
select * from test6;

/* jo id hum phle se create kar chukey hai usme se koi change kaise karey jaise ki null 
ko kaise hataye ya auto increment ko kaise hataye*/

desc test6;
alter table test6 modify phone_no bigint unique null;
desc test6;

#___________________________________________________________________________________________#

## Agar (insert into) m hum koi null values create kartey h to usko kaise change kartey hai

create table Test7 (
emp_id int,
first_name varchar(50),
last_name varchar(50),
salary int,
age int);

insert into test7 value
(1,'Bhoot', 'Das', 2300, null);

select * from test7;

set sql_safe_updates = 0;
update test7 set age = 5 where emp_id = 1;

select * from test7;

#___________________________________________________________________________________________#

## How to add new contraints Index in a table or multiple file ko ek sath unique kaise banaye

/* Example agar hum 2 colums ka ek unique constraints banatey hai to iska mtlab hai ke ab un dono ka 
pair hum puri table m repeat ni kar saktey hai*/

create table test8(
id int,
pan_card int unique,
house_number int unique,
first_name varchar(30),
last_name varchar(30),
salary int,
primary key(id));

desc test8;
alter table test8 add constraint new_file unique(first_name, last_name);

alter table test8 modify salary int null;

insert into test8(id, first_name, last_name) value(1, "rakesh", "kumar");

insert into test8(id, first_name, last_name) value(2, "mohan", "kumar");

/* is line ko sql duplicat entry bata rha h or jo index humney create kiya hai 
first_name or last_name ko combine karke humney unique index new_file ke naam se create kiya hai usko 
refer kar rha hai*/

insert into test8(id, first_name, last_name) value(3, "rakesh", "kumar");

#___________________________________________________________________________________________#

## How two drop present index or constraints

create table test9(
first_name varchar(30) not null,
last_name varchar(30) not null);

alter table test9 add constraint test9_method unique (first_name, last_name);

alter table test9
drop constraint test9_method;

#___________________________________________________________________________________________#

## Two colums ko combine karke 1 primary key ko kaise create karey

/* hum 2 primary key ek sath create kar saktey hai lekin ussey phle agar koi single primary key 
phle se table m hai to phley usko humko drop karna hoga or phir hum alter method se combine key
ko create kar saktey hai */

create table test10(
id int,
Emp_Name varchar(30) not null,
salary int not null,
primary key(id));

desc test10;

alter table test10
drop primary key;

alter table test10 add primary key (id, salary);

desc test10;

#___________________________________________________________________________________________#

## How to use foriegn key or issey hum 1 table key primary key ko dusre table m use kar satke hai

/* ismey hum inner join ke help se data ko connect kartey hai*/

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

#___________________________________________________________________________________________#

## Left joint and right joint ki help se data ko kaise compare karey

create table test11(
id int auto_increment,
first_name varchar(30) not null,
last_name varchar(30) not null,
primary key(id));

insert into test11(first_name, last_name) value 
("Rahul" ,"bal"), 
("kala", "kachaa"),
("safed", "baal");

select * from test11;

create table test12(
id int,
phone_number bigint unique,
email_id varchar(50) unique,
foreign key(id) references test11(id));

insert into test12 value
(3, 9898989898, "safedbaal@baal.com");

select * from test11 as t11 left join test12 as t12 on t11.id = t12.id;
select * from test11 as t11 right join test12 as t12 on t11.id = t12.id;

/* agar humko ascending or descending order bhi lagana hai to */
select * from test11 as t11 left join test12 as t12 on t11.id = t12.id order by email_id desc;












