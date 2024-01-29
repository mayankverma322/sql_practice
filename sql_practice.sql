create database sql_practice;
use sql_practice;
show databases;

select table_name;
show tables;

#___________________________________________________________________________________________#

## question 1

create table AI_Tools(
Id int not null,
Technology varchar(30) not null);
insert into ai_tools value
(1,'DS'),
(1, 'PowerBI'),
(1, 'Python'),
(1, 'SQL'),
(2, 'PowerBI'),
(2, 'Python'),
(2, 'SQL'),
(3, 'PowerBI'),
(3, 'Python'),
(3, 'SQL');


select (id) from ai_tools where technology in ("ds","python","sql");
select count(id) from ai_tools where technology in ("ds","python","sql") group by  Technology;
select technology from ai_tools where id in (2,3);

#___________________________________________________________________________________________#


create table technology(
	id int,
    technology varchar(30));
insert into technology value
(1,'DS'),
(1, 'PowerBI'),
(1, 'Python'),
(1, 'SQL'),
(2, 'PowerBI'),
(2, 'Python'),
(2, 'SQL'),
(3, 'PowerBI'),
(3, 'Python'),
(3, 'SQL');

select id
from Technology
where Technology = "DS"
and id in (
select id
from Technology
where Technology = "Python"
and id in (
select id
from Technology
where Technology = "SQL"
)
);


SELECT id
FROM Technology
WHERE technology IN ('DS', 'Python', 'SQL')
GROUP BY id
HAVING COUNT(DISTINCT technology) = 3;


#___________________________________________________________________________________________#


create table technology1(
	id varchar(10),
    technology varchar(30));
insert into technology1 value
('a','DS'),
('a', 'PowerBI'),
('a', 'Python'),
('a', 'SQL'),
('b', 'PowerBI'),
('b', 'Python'),
('b', 'SQL'),
('c', 'PowerBI'),
('c','Python'),
('c','SQL');

select count(technology) from technology1;

SELECT id
FROM Technology1
WHERE technology IN ('DS', 'Python', 'SQL')
GROUP BY id
HAVING COUNT(technology) = 3;

#___________________________________________________________________________________________#

create table Product_Info(
Product_id int unique,
Product_name varchar(30)
);
insert into product_info value
(1001, 'Blog'),
(1002, 'YouTube'),
(1003, 'Education');
select * from product_info;

create table Product_Info_Page(
User_id int,
Product_id int,
Like_date varchar(30),
foreign key (Product_id) references product_info (Product_id)
);
insert into product_info_page value
(1,1001,'19/08/2023'),
(2,1003,'20/08/2023');



select * from product_info as pi inner join product_info_Page as pg  on
 product_info_page and product_info; 

SELECT Pi.Product_id 
FROM Product_Info as pi left JOIN Product_Info_Page as pg 
ON pi.Product_id = pg.Product_id
WHERE pg.Product_id IS NULL;












