# SQL ASSIGNMENT'S

/*
The CITY table is described as follows:
*/

create table CITY(
sr_no int auto_increment unique,
ID int,
CITY_NAME varchar(30),
COUNTRYCODE varchar(30),
DISTRICT VARCHAR(30),
POPULATION INT);

insert into CITY(id,city_name,countrycode,district,population) value ('6','Rotterdam','NLD','Zuid-Holland',null),
('19','Zaanstad','NLD','Noord-Holland','135621') ,
('214','Porto Alegre','BRA','Rio Grande do Sul','1314032') ,
('397','Lauro de Freitas','BRA','Bahia','109236') ,
('547','Dobric','BGR','Varna','100399') ,
('552','Bujumbura','BDI','Bujumbura','300000') ,
('554','Santiago de Chile','CHL','Santiago','4703954') ,
('626','al-Minya','EGY','al-Minya','201360') ,
('646','Santa Ana','SLV','Santa Ana','139389') ,
('762','Bahir','Dar','ETH Amhara','96140') ,
('796','Baguio','PHL','CAR','252386') ,
('896','Malungon','PHL','Southern Mindanao','93232') ,
('904','Banjul','GMB','Banjul','42326') ,
('924','Villa','Nueva','GTM','101295') ,
('990','Waru','IDN','East Java','124300') ,
('1155','Latur','IND','Maharashtra','197408') ,
('1222','Tenali','IND','Andhra Pradesh','143726') ,
('1235','Tirunelveli','IND','Tamil Nadu','135825') ,
('1256','Alandur','IND','Tamil Nadu','125244') ,
('1279','Neyveli','IND','Tamil Nadu','118080') ,
('1293','Pallavaram','IND','Tamil Nadu','111866') ,
('1350','Dehri','IND','Bihar','94526') ,
('1383','Tabriz','IRN','East Azerbaidzan','1191043') ,
('1385','Karaj','IRN','Teheran','940968') ,
('1508','Bolzano','ITA','Trentino-Alto Adige','97232') ,
('1520','Cesena','ITA','Emilia-Romagna','89852') ,
('1613','Neyagawa','JPN','Osaka','257315') ,
('1630','Ageo','JPN','Saitama','209442') ,
('1661','Sayama','JPN','Saitama','162472') ,
('1681','Omuta','JPN','Fukuoka','142889') ,
('1739','Tokuyama','JPN','Yamaguchi','107078') ,
('1793','Novi Sad','YUG','Vojvodina','179626') ,
('1857','Kelowna','CAN','British Colombia','89442') ,
('1895','Harbin','CHN','Heilongjiang','4289800') ,
('1900','Changchun','CHN','Jilin','2812000') ,
('1913','Lanzhou','CHN','Gansu','1565800') ,
('1947','Changzhou','CHN','Jiangsu','530000') ,
('2070','Dezhou','CHN','Shandong','195485') ,
('2081','Heze','CHN','Shandong','189293') ,
('2111','Chenzhou','CHN','Hunan','169400') ,
('2153','Xianning','CHN','Hubei','136811') ,
('2192','Lhasa','CHN','Tibet','120000') ,
('2193','Lianyuan','CHN','Hunan','118858') ,
('2227','Xingcheng','CHN','Liaoning','102384') ,
('2273','Villavicencio','COL','Meta','273140') ,
('2384','Tong-yong','KOR','Kyongsangnam','131717') ,
('2386','Yongju','KOR','Kyongsangbuk','131097') ,
('2387','Chinhae','KOR','Kyongsangnam','125997') ,
('2388','Sangju','KOR','Kyongsangbuk','124116') ,
('2406','Herakleion','GRC','Crete','116178') ,
('2440','Monrovia','LBR','Montserrado','850000') ,
('2462','Lilongwe','MWI','Lilongwe','435964') ,
('2505','Taza','MAR','Taza-Al Hoceima-Taou','92700') ,
('2555','Xalapa','MEX','Veracruz','390058') ,
('2602','Ocosingo','MEX','Chiapas','171495') ,
('2609','Nogales','MEX','Sonora','159103') ,
('2670','San Pedro Cholula','MEX','Puebla','99734') ,
('2689','Palikir','FSM','Pohnpei','8600') ,
('2706','Tete','MOZ','Tete','101984') ,
('2716','Sittwe (Akyab)','MMR','Rakhine','137600') ,
('2922','Carolina','PRI','Carolina','186076') ,
('2967','Grudziadz','POL','Kujawsko-Pomorskie','102434') ,
('2972','Malabo','GNQ','Bioko','40000') ,
('3073','Essen','DEU','Nordrhein-Westfalen','599515') ,
('3169','Apia','WSM','Upolu','35900') ,
('3198','Dakar','SEN','Cap-Vert','785071') ,
('3253','Hama','SYR','Hama','343361') ,
('3288','Luchou','TWN','Taipei','160516') ,
('3309','Tanga','TZA','Tanga','137400') ,
('3353','Sousse','TUN','Sousse','145900') ,
('3377','Kahramanmaras','TUR','Kahramanmaras','245772') ,
('3430','Odesa','UKR','Odesa','1011000') ,
('3581','St Petersburg','RUS','Pietari','4694000') ,
('3770','Hanoi','VNM','Hanoi','1410000') ,
('3815','El Paso','USA','Texas','563662') ,
('3878','Scottsdale','USA','Arizona','202705') ,
('3965','Corona','USA','California','124966') ,
('3973','Concord','USA','California','121780') ,
('3977','Cedar Rapids','USA','Iowa','120758') ,
('3982','Coral Springs','USA','Florida','117549') ,
('4054','Fairfield','USA','California','92256') ,
('4058','Boulder','USA','Colorado','91238') ,
('4061','Fall River','USA','Massachusetts','90555') ;


select * from city where countrycode= 'usa' and population>100000;
select CITY_NAME from city where COUNTRYCODE = 'usa' and POPULATION > 120000;
select * from city;
select * from city where id =1661;
select * from city where COUNTRYCODE = 'jpn';
select CITY_NAME from city where COUNTRYCODE = 'jpn';

#_________________________________________________________________________________________#


create table Station (
id int,
city varchar(30),
state varchar(30),
lat_n int,
long_w int);

insert into Station(id,city,state,lat_n,long_w) values
(794,"Kissee_Mills","MO",139,73),
(824,"Loma_Mar","CA",48,130),
(603,"Sandy_Hook","CT",72,148),
(478,"Tipton","IN",33,97),
(619,"Arlington","CO",75,92),
(711,"Turner","AR",50,101),
(839,"Slidell","LA",85,151),
(411,"Negreet","LA",98,105),
(588,"Glencoe","KY",46,136),
(665,"Chelsea","IA",98,59),
(342,"Chignik_Lagoon","AK",103,153),
(733,"Pelahatchie","MS",38,28),
(441,"Hanna_City","IL",50,136),
(811,"Dorrance","KS",102,121),
(698,"Albany","CA",49,80),
(325,"Monument","KS",70,141),
(414,"Manchester","MD",73,37),
(113,"Prescott","IA",39,65),
(971,"Graettinger","IA",94,150),
(266,"Cahone","CO",116,127),
(617,"Sturgis","MS",36,126),
(495,"Upperco","MD",114,29),
(473,"Highwood","IL",27,150),
(959,"Waipahu","HI",106,33),
(438,"Bowdon","GA",88,78),
(571,"Tyler","MN",133,58),
(92,"Watkins","CO",83,96),
(399,"Republic","MI",75,130),
(426,"Millville","CA",32,145),
(844,"Aguanga","CA",79,65),
(321,"Bowdon_Junction","GA",85,33),
(606,"Morenci","AZ",104,110),
(957,"South_El Monte","CA",74,79),
(833,"Hoskinston","KY",65,65),
(843,"Talbert","KY",39,58),
(166,"Mccomb","MS",74,42),
(339,"Kirk","CO",141,136),
(909,"Carlock","IL",117,84),
(829,"Seward","IL",72,90),
(766,"Gustine","CA",111,140),
(392,"Delano","CA",126,91),
(555,"Westphalia","MI",32,143),
(33,"Saint_Elmo","AL",27,50),
(728,"Roy","MT",41,51),
(656,"Pattonsburg","MO",138,32),
(394,"Centertown","MO",133,93),
(366,"Norvell","MI",125,93),
(96,"Raymondville","MO",70,148),
(867,"Beaver_Island","MI",81,164),
(977,"Odin","IL",53,115),
(741,"Jemison","AL",62,25),
(436,"West_Hills","CA",68,73),
(323,"Barrigada","GU",60,147),
(3,"Hesperia","CA",106,71),
(814,"Wickliffe","KY",80,46),
(375,"Culdesac","ID",47,78),
(467,"Roselawn","IN",87,51),
(604,"Forest_Lakes","AZ",144,114),
(551,"San_Simeon","CA",37,28),
(706,"Little_Rock","AR",122,121),
(647,"Portland","AR",83,44),
(25,"New_Century","KS",135,79),
(250,"Hampden","MA",76,26),
(124,"Pine_City","MN",119,129),
(547,"Sandborn","IN",55,93),
(701,"Seaton","IL",128,78),
(197,"Milledgeville","IL",90,113),
(613,"East_China","MI",108,42),
(630,"Prince_Frederick","MD",104,57),
(767,"Pomona_Park","FL",100,163),
(679,"Gretna","LA",75,142),
(896,"Yazoo_City","MS",95,85),
(403,"Zionsville","IN",57,36),
(519,"Rio_Oso","CA",29,105),
(482,"Jolon","CA",66,52),
(252,"Childs","MD",92,104),
(600,"Shreveport","LA",136,38),
(14,"Forest","MS",120,50),
(260,"Sizerock","KY",116,112),
(65,"Buffalo_Creek","CO",47,148),
(753,"Algonac","MI",118,80),
(174,"Onaway","MI",108,55),
(263,"Irvington","IL",96,68),
(253,"Winsted","MN",68,72),
(557,"Woodbury","GA",102,93),
(897,"Samantha","AL",75,35),
(98,"Hackleburg","AL",119,120),
(423,"Soldier","KS",77,152),
(361,"Arrowsmith","IL",28,109),
(409,"Columbus","GA",67,46),
(312,"Bentonville","AR",36,78),
(854,"Kirkland","AZ",86,57),
(160,"Grosse_Pointe","MI",102,91),
(735,"Wilton","ME",56,157),
(608,"Busby","MT",104,29),
(122,"Robertsdale","AL",97,85),
(93,"Dale","IN",69,34),
(67,"Reeds","MO",30,42),
(906,"Hayfork","CA",35,116),
(34,"Mcbrides","MI",74,35),
(921,"Lee_Center","IL",95,77),
(401,"Tennessee","IL",55,155),
(536,"Henderson","IA",77,77),
(953,"Udall","KS",112,59),
(370,"Palm_Desert","CA",106,145),
(614,"Benedict","KS",138,95),
(998,"Oakfield","ME",47,132),
(805,"Tamms","IL",59,75),
(235,"Haubstadt","IN",27,32),
(820,"Chokio","MN",81,134),
(650,"Clancy","MT",45,164),
(791,"Scotts_Valley","CA",119,90),
(324,"Norwood","MN",144,34),
(442,"Elkton","MD",103,156),
(633,"Bertha","MN",39,105),
(109,"Bridgeport","MI",50,79),
(780,"Cherry","IL",68,46),
(492,"Regina","KY",131,90),
(965,"Griffin","GA",38,151),
(778,"Pine_Bluff","AR",60,145),
(337,"Mascotte","FL",121,146),
(259,"Baldwin","MD",81,40),
(955,"Netawaka","KS",109,119),
(752,"East_Irvine","CA",106,115),
(886,"Pony","MT",99,162),
(200,"Franklin","LA",82,31),
(384,"Amo","IN",103,159),
(518,"Vulcan","MO",108,91),
(188,"Prairie_Du Rocher","IL",75,70),
(161,"Alanson","MI",90,72),
(486,"Delta","LA",136,49),
(406,"Carver","MN",45,122),
(940,"Paron","AR",59,104),
(237,"Winchester","ID",38,80),
(465,"Jerome","AZ",121,34),
(591,"Baton_Rouge","LA",129,71),
(570,"Greenview","CA",80,57),
(429,"Lucerne_Valley","CA",35,48),
(278,"Cromwell","MN",128,53),
(927,"Quinter","KS",59,25),
(59,"Whitewater","MO",82,71),
(218,"Round_Pond","ME",127,124),
(291,"Clarkdale","AZ",58,73),
(668,"Rockton","IL",116,86),
(682,"Pheba","MS",90,127),
(775,"Eleele","HI",80,152),
(527,"Auburn","IA",95,137),
(108,"North_Berwick","ME",70,27),
(190,"Oconee","GA",92,119),
(232,"Grandville","MI",38,70),
(405,"Susanville","CA",128,80),
(273,"Rosie","AR",72,161),
(813,"Verona","MO",109,152),
(444,"Richland","GA",105,113),
(899,"Fremont","MI",54,150),
(738,"Philipsburg","MT",95,72),
(215,"Kensett","IA",55,139),
(743,"De_Tour Village","MI",25,25),
(377,"Koleen","IN",137,110),
(727,"Winslow","IL",113,38),
(363,"Reasnor","IA",41,162),
(117,"West_Grove","IA",127,99),
(420,"Frankfort_Heights","IL",71,30),
(888,"Bono","AR",133,150),
(784,"Biggsville","IL",85,138),
(413,"Linthicum_Heights","MD",127,67),
(695,"Amazonia","MO",45,148),
(609,"Marysville","MI",85,132),
(471,"Cape_Girardeau","MO",73,90),
(649,"Pengilly","MN",25,154),
(946,"Newton_Center","MA",48,144),
(380,"Crane_Lake","MN",72,43),
(383,"Newbury","MA",128,85),
(44,"Kismet","KS",99,156),
(433,"Canton","ME",98,105),
(283,"Clipper_Mills","CA",113,56),
(474,"Grayslake","IL",61,33),
(233,"Pierre_Part","LA",52,90),
(990,"Bison","KS",132,74),
(502,"Bellevue","KY",127,121),
(327,"Ridgway","CO",77,110),
(4,"South_Britain","CT",65,33),
(228,"Rydal","GA",35,78),
(642,"Lynnville","KY",25,146),
(885,"Deerfield","MO",40,35),
(539,"Montreal","MO",129,127),
(202,"Hope","MN",140,43),
(593,"Aliso_Viejo","CA",67,131),
(521,"Gowrie","IA",130,127),
(938,"Andersonville","GA",141,72),
(919,"Knob_Lick","KY",135,33),
(528,"Crouseville","ME",36,81),
(331,"Cranks","KY",55,27),
(45,"Rives_Junction","MI",94,116),
(944,"Ledyard","CT",134,143),
(949,"Norway","ME",83,88),
(88,"Eros","LA",95,58),
(878,"Rantoul","KS",31,118),
(35,"Richmond_Hill","GA",39,113),
(17,"Fredericktown","MO",105,112),
(447,"Arkadelphia","AR",98,49),
(498,"Glen_Carbon","IL",60,140),
(351,"Fredericksburg","IN",44,78),
(774,"Manchester","IA",129,123),
(116,"Mc_Henry","MD",93,112),
(963,"Eriline","KY",93,65);

select city,state from station;
select count( distinct city) from station where id%2 = 0;

select count(distinct city - city)  from station;
select (count(city) - count(distinct city)) as
'CityCount-DistCityCount' from station;

(select city, length(city) from station order by length(city) , city limit 1)
union
(select city, length(city) from station order by length(city) desc, city limit 1);

select distinct city from station where city regexp '^[aeiouAEIOU]' order by city;

select distinct city from station where left(city,1) in ('a','e','i','o','u') and 
right(city,1) in ('a', 'e','i', 'o','u') order by city;

select distinct city from station where right(city,1) in ('a','e','i','o','u');

 
select distinct city from station where not left(city,1) in ('a','e', 'i','o','u');

select distinct city from station where left(city,1) not in
('a','e','i','o','u');c

(select distinct city from station where not right(city ,1) in ('a','e','i','o','u'))
union
(select distinct city from station where not left(city,1) in ('a','e','i','o','u'));

#15

select distinct city from station where left(city,1)  not in
('a','e','i','o','u') or right(city,1) not in
('a','e','i','o','u') order by city;

#16
select distinct city from station where not  
right(city,1) regexp '^[aeiouAEIOU]' 
and 
not left(city,1) regexp '^[aeiouAEIOU]' order by city;

#17 ismey only word laga hua hai to iska dhyan rakhna hai
create table Product(
product_id int,
product_name  varchar(30),
unit_price int,
primary key(product_id));

insert into product value (1,'S8',1000),(2 ,'G4 ',800), (3,'iPhone',1400);

create table Sales(
seller_id int,
product_id int,
buyer_id int,
sale_date date,
quantity int,
price int,
foreign key(product_id) references product(product_id));

insert into sales value (1,1,1,'2019-01-21',2,2000),
(1,2,2,'2019-02-17',1,800),
(2,2,3,'2019-06-02',1,800),
(3,3,4,'2019-05-13',2,2800);

select p.product_id, p.product_name,s.sale_date 
from Product as p right join sales as s on 
p.product_id=s.product_id where  s.sale_date<'2019-03-31' and p.product_id not in 
(select p.product_id from product as p right join sales as s 
on p.product_id= s.product_id where s.sale_date >'2019-03-31');


select p.product_id, p.product_name FROM
Product as p
INNER JOIN
Sales as s
on p.product_id = s.product_id
where s.sale_date >= '2019-01-01' and s.sale_date <= '2019-03-31'  
except
(select p.product_id, p.product_name FROM
Product as p
INNER JOIN
Sales as s
on p.product_id = s.product_id
where  s.sale_date > '2019-03-31');

select p.product_id, p.product_name 
from product as p 
right join sales as s on p.product_id= s.product_id 
where s.sale_date between '2019-01-01' and '2019-03-31' and p.product_id not in
(select p.product_id from product as p right join sales as s 
on p.product_id= s.product_id where s.sale_date >'2019-03-31');


#18
CREATE TABLE ArticleViews (
    article_id INT,
    author_id INT,
    viewer_id INT,
    view_date DATE
);

INSERT INTO ArticleViews (article_id, author_id, viewer_id, view_date)
VALUES
    (1, 3, 5, '2019-08-01'),
    (1, 3, 6, '2019-08-02'),
    (2, 7, 7, '2019-08-01'),
    (2, 7, 6, '2019-08-02'),
    (4, 7, 1, '2019-07-22'),
    (3, 4, 4, '2019-07-21'),
    (3, 4, 4, '2019-07-21');

select distinct author_id from articleviews where 
author_id = viewer_id order by author_id asc;

#19

CREATE TABLE orders (
    delivery_id INT,
    customer_id INT,
    order_date DATE,
    customer_pref_delivery_date DATE
);
INSERT INTO orders (delivery_id, customer_id, order_date, customer_pref_delivery_date)
VALUES
    (1, 1, '2019-08-01', '2019-08-02'),
    (2, 5, '2019-08-02', '2019-08-02'),
    (3, 1, '2019-08-11', '2019-08-11'),
    (4, 3, '2019-08-24', '2019-08-26'),
    (5, 4, '2019-08-21', '2019-08-22'),
    (6, 2, '2019-08-11', '2019-08-13');
        
SELECT 
    round(COUNT(CASE WHEN order_date = customer_pref_delivery_date THEN 1 end) / COUNT(*) * 100,2 )
    AS percentage_of_immediate_order
FROM orders;

select round((select count(*) from delivery where order_date =
customer_pref_delivery_date)/count(*)*100,2) as immediate_percentage from
delivery;

#20

CREATE TABLE ad_actions (
    ad_id INT,
    user_id INT,
    action ENUM('Clicked', 'Viewed', 'Ignored'),
    primary key(ad_id,user_id)
);
INSERT INTO ad_actions (ad_id, user_id, action) VALUES
    (1, 1, 'Clicked'),
    (2, 2, 'Clicked'),
    (3, 3, 'Viewed'),
    (5, 5, 'Ignored'),
    (1, 7, 'Ignored'),
    (2, 7, 'Viewed'),
    (3, 5, 'Clicked'),
    (1, 4, 'Viewed'),
    (2, 11, 'Viewed'),
    (1, 2, 'Clicked');
    
# my code
select distinct ad_id, coalesce(round(count(case when action='clicked' then true end )*100 / 
(count(case when action='clicked' then true end )+
count(case when action='viewed' then true end )),2),0) as 
CTR from ad_actions group by ad_id order by ctr desc;

#chat gpt code
SELECT ad_id, COALESCE(ROUND((COUNT(CASE WHEN action = 'Clicked' THEN 1 END) * 100.0) / 
COUNT(CASE WHEN action IN ('Clicked', 'Viewed') THEN 1 END),2),0) AS CTR
FROM ad_actions GROUP BY ad_id ORDER BY CTR DESC;

SELECT ad_id, COALESCE( ROUND((COUNT(CASE WHEN action = 'Clicked' THEN 1 END) * 100.0) / 
NULLIF(COUNT(CASE WHEN action IN ('Clicked', 'Viewed') THEN 1 END), 0), 2), 0) AS CTR
FROM ad_actions GROUP BY ad_id ORDER BY CTR DESC;

#21

CREATE TABLE Employee (
    employee_id INT,
    team_id INT,
    primary key(employee_id)
);

Insert Into Employee Value (1,8),(2,8),(3,8),(4,7),(5,9),(6,9);

select employee_id,count(team_id) over (partition by team_id) as team_size from
employee order by employee_id;


create table sales_id (
salesperson_id int,
amount int,
sale_date date);
insert into sales_id value
(1, 100,'2023-10-01'),
(2,150,'2023-10-01'),
(1,200,'2023-10-02'),
(1,300,'2023-10-02'),
(2,120,'2023-10-03');
select distinct salesperson_id, sum(amount) as total from sales_id group by salesperson_id;
select distinct sale_date, salesperson_id ,
sum(amount) as total_sale from sales_id group by sale_date, salesperson_id;


#22

create table Countries (
	Country_ID int,
	Country_Name varchar(30),
	primary key(Country_id)
);

INSERT INTO Countries (country_id, country_name) VALUES
(2, 'USA'), 
(3, 'Australia'), 
(7, 'Peru'), 
(5, 'China'), 
(8, 'Morocco'), 
(9, 'Spain');

CREATE TABLE Weather (
    country_id INT,
    weather_state INT,
    day DATE,
    primary key(country_id,day),
    foreign key(country_id) references countries(country_id)
);

INSERT INTO Weather (country_id, weather_state, day) VALUES
(2, 15, '2019-11-01'),
(2, 12, '2019-10-28'),
(2, 12, '2019-10-27'),
(3, -2, '2019-11-10'),
(3, 0, '2019-11-11'),
(3, 3, '2019-11-12'),
(5, 16, '2019-11-07'),
(5, 18, '2019-11-09'),
(5, 21, '2019-11-23'),
(7, 25, '2019-11-28'),
(7, 22, '2019-12-01'),
(7, 20, '2019-12-02'),
(8, 25, '2019-11-05'),
(8, 27, '2019-11-15'),
(8, 31, '2019-11-25'),
(9, 7, '2019-10-23'),
(9, 3, '2019-12-23');

# My solution
select country_name,  
(case when avg(weather_state)<=15 then 'Cold' 
when avg(weather_state)>=25 then 'Hot' 
else 'Warm' end)  
as Weather_type from
countries inner join weather on countries.Country_ID = weather.country_id where 
day between '2019-11-1' and '2019-11-30'group by Country_Name ;

# iNeuron solution

select c.country_name, case
when avg(weather_state) <= 15 then 'Cold'
when avg(weather_state) >= 25 then 'Hot'
else 'Warm'
end as weather_state
from
countries c
left join
weather w
on c.country_id = w.country_id
where month(day) = 11
group by c.country_name;

#23

CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price INT,
    PRIMARY KEY (product_id, start_date, end_date)
);
INSERT INTO Prices (product_id, start_date, end_date, price) 
VALUES 
    (1, '2019-02-17', '2019-02-28', 5),
    (1, '2019-03-01', '2019-03-22', 20),
    (2, '2019-02-01', '2019-02-20', 15),
    (2, '2019-02-21', '2019-03-31', 30);
    
CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT,
    foreign key(product_id) references prices(product_id)
);
INSERT INTO UnitsSold (product_id, purchase_date, units) 
VALUES 
    (1, '2019-02-25', 100),
    (1, '2019-03-01', 15),
    (2, '2019-02-10', 200),
    (2, '2019-03-22', 30);

SELECT p.product_id, ROUND(SUM(p.price * us.units) / SUM(us.units), 2) AS average_unit
FROM Prices p LEFT JOIN UnitsSold us ON p.product_id = us.product_id
WHERE us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id ORDER BY p.product_id;

#24

CREATE TABLE PlayerGames (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    PRIMARY KEY (player_id, event_date));
INSERT INTO PlayerGames (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-05-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);
insert into playergames value (3, 5, '2018-07-04', 1);
select player_id, min(event_date) as first_login  from PlayerGames group by player_id;

select t.player_id, event_date as first_login from (select player_id,
event_date, row_number() over(partition by player_id order by event_date) as num
from playergames)t where t.num = 1; 

SELECT player_id,
       event_date,
       ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date) AS num
FROM playergames;
 
 #25
 
 CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    primary key(player_id,event_date)
);
INSERT INTO activity (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-05-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);
    
select Player_id, device_id from (select player_id, device_id , row_number() over 
(partition by player_id order by device_id) as num from activity)as t where num =1;

#26

CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(30),
    product_category VARCHAR(30),
    primary key(product_id)
);
INSERT INTO Products (product_id, product_name, product_category)
VALUES
    (1, 'Leetcode Solutions', 'Book' ),
    (2, 'Jewels of Stringology',' Book'),
    (3, 'HP',' Laptop'),
    (4, 'Lenovo',' Laptop'),
    (5, 'Leetcode Kit ','T-shirt');

CREATE TABLE Orders (
    product_id INT,
    order_date DATE,
    unit INT,
    foreign key(product_id) references products(product_id)
);
INSERT INTO Orders (product_id, order_date, unit)
VALUES
    (1, '2020-02-05', 60),
    (1, '2020-02-10', 70),
    (2, '2020-01-18', 30),
    (2, '2020-02-11', 80),
    (3, '2020-02-17', 2),
    (3, '2020-02-24', 3),
    (4, '2020-03-01', 20),
    (4, '2020-03-04', 30),
    (4, '2020-03-04', 60),
    (5, '2020-02-25', 50),
    (5, '2020-02-27', 50),
    (5, '2020-03-01', 50);

# my solution
select p.product_name, sum(o.unit)  as Unit 
from products as p inner join orders as o on p.product_id=o.product_id
where o.order_date between '2020-02-1' and '2020-02-28'  
group by product_name having sum(o.unit)>=100 ;

#27

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(255),
    mail VARCHAR(255)
);
INSERT INTO Users (user_id, name, mail)
VALUES
    (1, 'Winston', 'winston@leetcode.com'),
    (2, 'Jonathan', 'jonathanisgreat'),
    (3, 'Annabelle', 'bella-@leetcode.com'),
    (4, 'Sally', 'sally.come@leetcode.com'),
    (5, 'Marwan', 'quarz#2020@leetcode.com'),
    (6, 'David', 'david69@gmail.com'),
    (7, 'Shapiro', '.shapo@leetcode.com');
    
select * from users 
where 
	mail regexp '@leetcode.com' 
    and mail not regexp '#' 
    and not mail regexp '^\\.' ;


# kuch regexp ki condition
SELECT * FROM Users WHERE name REGEXP 'Jo*n';
SELECT * FROM Users WHERE name REGEXP '[a-z]onathan';
SELECT * FROM Users WHERE mail REGEXP '_';
SELECT * FROM Users WHERE name REGEXP BINARY 'David'; -- Case-sensitive
SELECT * FROM Users WHERE name REGEXP '(?i)david';    -- Case-insensitive

#28

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(255)
);
CREATE TABLE Product (
	Product_id INT primary key,
    Discription VARCHAR(255),
    price int
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Insert data into Customers table
INSERT INTO Customers (customer_id, name, country)
VALUES
    (1, 'Winston', 'USA'),
    (2, 'Jonathan', 'Peru'),
    (3, 'Moustafa', 'Egypt');

-- Insert data into Product table
INSERT INTO Product (product_id, discription, price)
VALUES
    (10, 'LC Phone', 300),
    (20, 'LC T-Shirt', 10),
    (30, 'LC Book', 45),
    (40, 'LC Keychain', 2);

-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, product_id, order_date, quantity)
VALUES
    (1, 1, 10, '2020-06-10', 1),
    (2, 1, 20, '2020-07-01', 1),
    (3, 1, 30, '2020-07-08', 2),
    (4, 2, 10, '2020-06-15', 2),
    (5, 2, 40, '2020-07-01', 10),
    (6, 3, 20, '2020-06-24', 2),
    (7, 3, 30, '2020-06-25', 2),
    (9, 3, 30, '2020-05-08', 3);

select t.customer_id , t.name from (select 
	c.customer_id, c.name, 
    sum(case when month(o.order_date) = 6 then p.price*o.quantity end) as june_exp,
    sum(case when month(o.order_date)=7 then p.price*o.quantity end) as july_exp from 
    customers as c left join orders as o on c.customer_id=o.customer_id left join
    product as p on p.product_id = o.product_id group by customer_id)t where
    june_exp>=100 and july_exp>=100;
    
select * from product as p left join orders as o on p.product_id=o.product_id left join customers as c
on c.customer_id = o.customer_id order by o.order_date;

#29

CREATE TABLE TVProgram (
	content_id int,
    program_date DATE,
    channel VARCHAR(255),
    primary key(content_id, program_date)
);
CREATE TABLE Content (
    content_id int,
    title VARCHAR(255),
    Kids_content ENUM('Y', 'N'),
    content_type VARCHAR(255),
    FOREIGN KEY (content_id) REFERENCES TVProgram (content_id)
);
-- Insert data into TVProgram table
INSERT INTO TVProgram (content_id, program_date, channel)
VALUES
    ('1', '2020-06-10', 'LC-Channel'),
    ('2', '2020-05-11', 'LC-Channel'),
    ('3', '2020-05-12', 'LC-Channel'),
    ('4', '2020-05-13', 'Disney Ch'),
    ('5', '2020-06-18', 'Disney Ch'),
    ('6', '2020-07-15', 'Disney Ch');


-- Insert data into Content table
INSERT INTO Content (content_id, title, Kids_content, content_type)
VALUES
    (1, 'Leetcode Movie', 'N', 'Movies'),
    (2, 'Alg. for Kids', 'Y', 'Series'),
    (3, 'Database Sols', 'N', 'Series'),
    (4, 'Aladdin', 'Y', 'Movies'),
    (5, 'Cinderella', 'Y', 'Movies');

select distinct title from content as c right join tvprogram as t on c.content_id = t.content_id 
where content_type = 'movies' and month(t.program_date) = 6 and c.Kids_content = 'y';
    
#30    

CREATE TABLE NPV (
    id INT,
    year INT,
    npv INT,
    PRIMARY KEY (id, year)
);

CREATE TABLE Queries (
    id INT,
    year INT,
    PRIMARY KEY (id, year),
    foreign key(id) references npv(id)
);

INSERT INTO NPV (id, year, npv) VALUES
    (1, 2018, 100),
    (7, 2020, 30),
    (13, 2019, 40),
    (1, 2019, 113),
    (2, 2008, 121),
    (3, 2009, 12),
    (11, 2020, 99),
    (7, 2019, 0);

INSERT INTO Queries (id, year) VALUES
    (1, 2019),
    (2, 2008),
    (3, 2009),
    (7, 2018),
    (7, 2019),
    (7, 2020),
    (13, 2019);
    
select q.id,  q.year, case when not (q.year = n.year) = 0 then n.npv else 0 end   as NPV 
from queries as q left join npv as n on q.id=n.id and q.year = n.year;

SELECT Q.id, Q.year, IFNULL(N.npv, 0) AS npv
FROM Queries Q
LEFT JOIN NPV N
ON Q.id = N.id AND Q.year = N.year;

#31

CREATE TABLE NPV (
    id INT,
    year INT,
    npv INT,
    primary key(id,year)
);
CREATE TABLE Queries (
    id INT,
    year INT,
    primary key(id,year)
);

INSERT INTO NPV (id, year, npv) VALUES
    (1, 2018, 100),
    (7, 2020, 30),
    (13, 2019, 40),
    (1, 2019, 113),
    (2, 2008, 121),
    (3, 2009, 12),
    (11, 2020, 99),
    (7, 2019, 0);
    
INSERT INTO Queries (id, year) VALUES
    (1, 2019),
    (2, 2008),
    (3, 2009),
    (7, 2018),
    (7, 2019),
    (7, 2020),
    (13, 2019);

select q.id,q.year, ifnull(n.npv, 0) from queries as q left join npv as n on q.id=n.id and 
n.year = q.year;

#32 

CREATE TABLE Employees (
    id INT,
    name VARCHAR(255),
    primary key(id)
);
CREATE TABLE EmployeeUNI (
    id INT,
    unique_id INT,
    primary key(id,unique_id)
);
INSERT INTO Employees (id, name) VALUES
    (1, 'Alice'),
    (7, 'Bob'),
    (11, 'Meir'),
    (90, 'Winston'),
    (3, 'Jonathan');
INSERT INTO EmployeeUNI (id, unique_id) VALUES
    (3, 1),
    (11, 2),
    (90, 3);

select e.name, ifnull(u.unique_id, 'Null') as Unique_ID from Employees as e left join Employeeuni 
as u on e.id = u.id;

#33

CREATE TABLE Users (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);
CREATE TABLE Rides (
    id INT PRIMARY KEY,
    user_id INT,
    distance INT,
    foreign key(user_id) references users(id)
);
INSERT INTO Users (id, name) VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Alex'),
    (4, 'Donald'),
    (7, 'Lee'),
    (13, 'Jonathan'),
    (19, 'Elvis');
INSERT INTO Rides (id, user_id, distance) VALUES
    (1, 1, 120),
    (2, 2, 317),
    (3, 3, 222),
    (4, 7, 100),
    (5, 13, 312),
    (6, 19, 50),
    (7, 7, 120),
    (8, 19, 400),
    (9, 7, 230);

select u.name, coalesce(sum(case when r.user_id = u.id then distance end),0) as Total_distance
from users as u left join rides as r on u.id = r.user_id 
group by u.name order by total_distance desc, u.name;

#34

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    product_category VARCHAR(255)
);
CREATE TABLE Orders (
    product_id INT,
    order_date DATE,
    unit INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Products (product_id, product_name, product_category) VALUES
    (1, 'Leetcode Solutions', 'Book'),
    (2, 'Jewels of Stringology', 'Book'),
    (3, 'HP', 'Laptop'),
    (4, 'Lenovo', 'Laptop'),
    (5, 'Leetcode Kit', 'T-shirt');
INSERT INTO Orders (product_id, order_date, unit) VALUES
    (1, '2020-02-05', 60),
    (1, '2020-02-10', 70),
    (2, '2020-01-18', 30),
    (2, '2020-02-11', 80),
    (3, '2020-02-17', 2),
    (3, '2020-02-24', 3),
    (4, '2020-03-01', 20),
    (4, '2020-03-04', 30),
    (4, '2020-03-04', 60),
    (5, '2020-02-25', 50),
    (5, '2020-02-27', 50),
    (5, '2020-03-01', 50);

select p.product_name, 
sum(case when o.order_date between '2020-02-01' and '2020-02-28' then o.unit else 0 end )
as total_unit from products as p inner join orders as o on p.product_id= o.product_id 
group by p.product_name having total_unit >=100;

#35

-- Create the Movies table
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255)
);

-- Create the Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the MovieRating table
CREATE TABLE MovieRating (
    movie_id INT,
    user_id INT,
    rating INT,
    created_at DATE,
    PRIMARY KEY (movie_id, user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Insert values into the Movies table
INSERT INTO Movies (movie_id, title)
VALUES
    (1, 'Avengers'),
    (2, 'Frozen 2'),
    (3, 'Joker');

-- Insert values into the Users table
INSERT INTO Users (user_id, name)
VALUES
    (1, 'Daniel'),
    (2, 'Monica'),
    (3, 'Maria'),
    (4, 'James');

-- Insert values into the MovieRating table
INSERT INTO MovieRating (movie_id, user_id, rating, created_at)
VALUES
    (1, 1, 3, '2020-01-12'),
    (1, 2, 4, '2020-02-11'),
    (1, 3, 2, '2020-02-12'),
    (1, 4, 1, '2020-01-01'),
    (2, 1, 5, '2020-02-17'),
    (2, 2, 2, '2020-02-01'),
    (2, 3, 2, '2020-03-01'),
    (3, 1, 3, '2020-02-22'),
    (3, 2, 4, '2020-02-25');

(select t.name as Results from (select u.name, sum(mr.rating) as Total_Rating  from users as u 
inner join movierating as mr on u.user_id=mr.user_id  group by  u.name 
having Total_Rating order by Total_Rating desc limit 1)t) 
union
(select t.title as Results from (select m.title, sum(mr.rating) as Total_Rating from 
movies as m left join movierating as mr 
on m.movie_id=mr.movie_id where mr.created_at between '2020-02-01'  and '2020-02-28'
group by m.title  
having Total_Rating order by Total_Rating desc limit 1)t) ;

(select t1.name as Results from
(select u.name, count(u.user_id), dense_rank() over(order by count(user_id)
desc, u.name) as r1 FROM Users u left join MovieRating m on u.user_id = m.user_id
group by u.user_id) t1 where r1 = 1)
union
(select t2.title as Results from
(select mo.title, avg(m.rating), dense_rank() over(order by avg(m.rating)desc,
mo.title) as r2 from Movies mo left join MovieRating m on mo.movie_id = m.movie_id
where month(m.created_at) = 2 and year(m.created_at) = 2020 group by m.movie_id) t2
where r2 = 1);

#36

-- Create the Users table
CREATE TABLE Users (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create the Rides table
CREATE TABLE Rides (
    id INT PRIMARY KEY,
    user_id INT,
    distance INT,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);
-- Insert values into the Users table
INSERT INTO Users (id, name)
VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Alex'),
    (4, 'Donald'),
    (7, 'Lee'),
    (13, 'Jonathan'),
    (19, 'Elvis');

-- Insert values into the Rides table
INSERT INTO Rides (id, user_id, distance)
VALUES
    (1, 1, 120),
    (2, 2, 317),
    (3, 3, 222),
    (4, 7, 100),
    (5, 13, 312),
    (6, 19, 50),
    (7, 7, 120),
    (8, 19, 400),
    (9, 7, 230);
    
    select u.name, ifNull(sum(r.distance),0) as Total_Distance from 
    users as u left join Rides as r on u.id=r.user_id group by u.name 
    order by Total_Distance desc, u.name;

# 37

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);
CREATE TABLE EmployeeUNI (
    id INT,
    unique_id INT,
    PRIMARY KEY (id, unique_id),
    foreign key(id) references employees(id)
);
-- Insert data into the Employees table
INSERT INTO Employees (id, name)
VALUES
    (1, 'Alice'),
    (7, 'Bob'),
    (11, 'Meir'),
    (90, 'Winston'),
    (3, 'Jonathan');

-- Insert data into the EmployeeUNI table
INSERT INTO EmployeeUNI (id, unique_id)
VALUES
    (3, 1),
    (11, 2),
    (90, 3);
select  e.name,ifnull(eu.unique_id, 'Null') as Unique_id from 
employees as e left join employeeuni as eu on e.id=eu.id;

#38

CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department_id INT  ,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

INSERT INTO Departments (id, name)
VALUES
    (1, 'Electrical Engineering'),
    (7, 'Computer Engineering'),
    (13, 'Business Administration');

-- yha per department_id foreign key or hamari id 1,7,13 hai to hamari department id bhi 1,7,13 honi 
-- chahiye lekin yha per alag hai to hum yha per foreign key check ko disable and enable karenge

set foreign_key_checks=0;
INSERT INTO Students (id, name, department_id)
VALUES
    (23, 'Alice', 1),
    (1, 'Bob', 7),
    (5, 'Jennifer', 13),
    (2, 'John', 14),
    (4, 'Jasmine', 77),
    (3, 'Steve', 74),
    (6, 'Luis', 1),
    (8, 'Jonathan', 7),
    (7, 'Daiana', 33),
    (11, 'Madelynn', 1);
set foreign_key_checks = 1;

SELECT s.id, s.name , (s.department_id = d.id) as equality_check
FROM Students s
LEFT JOIN Departments d ON s.department_id = d.id
WHERE d.id IS NULL;

#39

CREATE TABLE Calls (
    from_id INT,
    to_id INT,
    duration INT
);
INSERT INTO Calls (from_id, to_id, duration)
VALUES
    (1, 2, 59),
    (2, 1, 11),
    (1, 3, 20),
    (3, 4, 100),
    (3, 4, 200),
    (3, 4, 200),
    (4, 3, 499);

select case when from_id<to_id then from_id else to_id end as Person_1,
case when from_id<to_id then to_id else from_id end as Person_2, count(*) as call_count,
sum(duration) as total_duration from calls group by person_1, person_2;

#40

CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price INT,
    primary key(product_id,start_date, end_date)
);

CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT,
    foreign key(product_id) references prices(product_id)
);

-- Insert data into the Prices table
INSERT INTO Prices (product_id, start_date, end_date, price)
VALUES
    (1, '2019-02-17', '2019-02-28', 5),
    (1, '2019-03-01', '2019-03-22', 20),
    (2, '2019-02-01', '2019-02-20', 15),
    (2, '2019-02-21', '2019-03-31', 30);

-- Insert data into the UnitsSold table
INSERT INTO UnitsSold (product_id, purchase_date, units)
VALUES
    (1, '2019-02-25', 100),
    (1, '2019-03-01', 15),
    (2, '2019-02-10', 200),
    (2, '2019-03-22', 30);

# self written

select distinct p.product_id, 
round(sum(p.price*us.units)/ sum(us.units),2) as Average_price from
prices as p right join unitssold as us on p.product_id=us.product_id where
us.purchase_date between p.start_date and p.end_date group by p.product_id ;

select p.product_id, round(sum(u.units*p.price)/sum(u.units),2) as average_price
from prices p left join unitssold u on p.product_id = u.product_id
where u.purchase_date >= start_date and u.purchase_date <= end_date
group by product_id order by product_id;

#41

/* 
yha per whare hosue table me primary key ke ander to keys di hai isiliye hum yha per 
foreign key ni laga pa rahe hai agar primary key m sirf product_id hoti to hum yha per 
foreign key ka use kar saktey they but ab humko yha per index ko batana hoga ki index value
kaunse hai index ka use karke
*/

CREATE TABLE Warehouse (
    name VARCHAR(255),
    product_id INT,
    units INT,
    primary key(name,product_id),
    index idx_product_id(product_id)
    );

CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(255),
    Width INT,
    Length INT,
    Height INT,
    primary key(product_id),
    foreign key (product_id) references Warehouse(product_id)
    );

-- Insert data into the Warehouse table
INSERT INTO Warehouse (Name, product_id, units)
VALUES
    ('LCHouse1', 1, 1),
    ('LCHouse1', 2, 10),
    ('LCHouse1', 3, 5),
    ('LCHouse2', 1, 2),
    ('LCHouse2', 2, 2),
    ('LCHouse3', 4, 1);

-- Insert data into the Products table
INSERT INTO Products (product_id, product_name, Width, Length, Height)
VALUES
    (1, 'LC-TV', 5, 50, 40),
    (2, 'LC-KeyChain', 5, 5, 5),
    (3, 'LC-Phone', 2, 10, 10),
    (4, 'LC-T-Shirt', 4, 10, 20);

#self

select w.name, sum(p.width*p.length*p.height*w.units) as Volume
from warehouse as w right join products as p on w.product_id = p.product_id group by
w.name order by w.name;

select w.name as warehouse_name, sum(p.width*p.length*p.height*w.units) as
volume from warehouse w left join products p on w.product_id = p.product_id
group by w.name order by w.name;

#42
/* jab hum enum ka use kartey hai to uske baad humko uske aagey bracqet m kuch data likhna hota hai
hum usko blank ni xode saktey hai or jo data hum bracqet ke ander type karenge enum sirf usi 
data ko accept karga agar humney kuch or data type kiya insert value m to vo us data ko accept ni karega */

CREATE TABLE Sales (
    sale_date DATE,
    fruit ENUM ('apples','oranges'),
    sold_num INT,
    primary key(sale_date, fruit)
);
INSERT INTO Sales (sale_date, fruit, sold_num)
VALUES
    ('2020-05-01', 'apples', 10),
    ('2020-05-01', 'oranges', 8),
    ('2020-05-02', 'apples', 15),
    ('2020-05-02', 'oranges', 15),
    ('2020-05-03', 'apples', 20),
    ('2020-05-03', 'oranges', 0),
    ('2020-05-04', 'apples', 15),
    ('2020-05-04', 'oranges', 16);

SELECT sale_date,
       SUM(CASE WHEN fruit = 'apples' THEN sold_num  END) -
       SUM(CASE WHEN fruit = 'oranges' THEN sold_num END) AS diff
FROM Sales
GROUP BY sale_date
ORDER BY sale_date;

#43

CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    primary key(player_id, event_date)
);
-- Inserting data into the Activity table
INSERT INTO Activity (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-03-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);

select round(t.player_id / (select count(distinct player_id)from activity),2  ) as fracction
from (select 
distinct player_id,  datediff(event_date, lead(event_date ,1) over (partition by player_id
order by event_date) ) as diff
from activity)t where diff = -1
;



select round(t.player_id/(select count(distinct player_id) from activity),2) as
fraction from(select distinct player_id,
datediff(event_date, lead(event_date, 1) over(partition by player_id order by
event_date)) as diff from activity ) t where diff = -1;

#44

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    managerId INT
);
-- Inserting data into the Employee table
INSERT INTO Employee (id, name, department, managerId)
VALUES
  (101, 'John', 'A', NULL),
  (102, 'Dan', 'A', 101),
  (103, 'James', 'A', 101),
  (104, 'Amy', 'A', 101),
  (105, 'Anne', 'A', 101),
  (106, 'Ron', 'B', 101);

select count(id) from employee;
SELECT name
FROM (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(id) = 5 
    /* 
    yah per having count(id)=5 isiliye lagaya hai kyoki
    jaisey humney yha per managerId ko count provide karwaye hai to yha per 101 ko 1,2,3,4,5
    rank di h to yah per having count m jiski rank 5 m wo wali manager id dikhaega
    or niche humney join lagar manager id ko id ki equla kar diya hai to ab jaise yah per 5 rank ki
    manager id 101 hai to 101 vi id per jhon hai isiliye yha per john aa rha hai*/
)t
JOIN Employee on t.managerId = id;

#45

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    gender VARCHAR(10),
    dept_id INT,
    index idx_dept_id(dept_id)
);
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(255),
    foreign key(dept_id) references student(dept_id)
);

INSERT INTO Student (student_id, student_name, gender, dept_id)
VALUES
    (1, 'Jack', 'M', 1),
    (2, 'Jane', 'F', 1),
    (3, 'Mark', 'M', 2);

set foreign_key_checks =1;

INSERT INTO Department (dept_id, dept_name)
VALUES
    (1, 'Engineering'),
    (2, 'Science'),
    (3, 'Law');

select d.dept_name , count(s.dept_id) as total_students from 
student s right join department d on s.dept_id=d.dept_id
group by d.dept_name order by total_students desc;

#46

CREATE TABLE Customer (
    customer_id INT,
    product_key INT,
    index idx_product_key(product_key)
);
CREATE TABLE Product (
    product_key INT primary key,
    foreign key (product_key) references customer(product_key)
);

INSERT INTO Customer (customer_id, product_key)
VALUES
    (1, 5),
    (2, 6),
    (3, 5),
    (3, 6),
    (1, 6);
    
INSERT INTO Product (product_key)
VALUES
    (5),
    (6);

select customer_id from customer group by customer_id
having count(distinct product_key)=(select count(*) from product);

select count(*) from product;
select count(distinct product_key) from customer;

#47

CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    primary key(project_id, employee_id),
    index idx_employee_id(employee_id)
);
CREATE TABLE Employee (
    employee_id INT,
    name VARCHAR(255),  
    experience_years INT,
    foreign key(employee_id) references project(employee_id)
);

INSERT INTO Project (project_id, employee_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);
INSERT INTO Employee (employee_id, name, experience_years)
VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 3),
(4, 'Doe', 2);
select distinct employee_id, count(project_id) total_project from project group by employee_id;

WITH RankedEmployees AS (
    SELECT p.project_id, e.employee_id, e.name, e.experience_years,
	DENSE_RANK() OVER (PARTITION BY p.project_id ORDER BY e.experience_years DESC) 
	AS employee_rank FROM Project p
    JOIN Employee e ON p.employee_id = e.employee_id)
SELECT project_id, employee_id, name, experience_years
FROM RankedEmployees
WHERE employee_rank = 1;

select t.project_id, t.employee_id from
(select p.project_id, e.employee_id, dense_rank() over(partition by p.project_id
order by e.experience_years desc) as r from
project p left join employee e
on p.employee_id = e.employee_id) t
where r = 1 order by t.project_id;

SELECT project_id, employee_id, name, experience_years
FROM (
    SELECT
        p.project_id,
        e.employee_id,
        e.name,
        e.experience_years,
        DENSE_RANK() OVER (PARTITION BY p.project_id ORDER BY e.experience_years DESC) AS employee_rank
    FROM Project p
    JOIN Employee e ON p.employee_id = e.employee_id
) AS RankedEmployees
WHERE employee_rank = 1;
