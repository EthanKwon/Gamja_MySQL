/* 구분자를 ";" 으(로) 변경 */
/* 지금 세션 로그 파일에 기록 중: C:\Users\714-000\AppData\Roaming\HeidiSQL\Sessionlogs\000005.log */
/* 127.0.0.1 에 MySQL (TCP/IP) 을(를) 통해 연결 중, 사용자 이름 "javauser", 암호 사용: Yes… */
SELECT CONNECTION_ID();
/* 연결됨. 스레드-ID: 2 */
/* 문자 집합: utf8mb4 */
SHOW STATUS;
SHOW VARIABLES;
SHOW DATABASES;
/* "Localhost" 세션 시작 */
USE `world`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='world';
SHOW TABLE STATUS FROM `world`;
SHOW FUNCTION STATUS WHERE `Db`='world';
SHOW PROCEDURE STATUS WHERE `Db`='world';
SHOW TRIGGERS FROM `world`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='information_schema';
SHOW TABLE STATUS FROM `information_schema`;
SHOW FUNCTION STATUS WHERE `Db`='information_schema';
SHOW PROCEDURE STATUS WHERE `Db`='information_schema';
SHOW TRIGGERS FROM `information_schema`;
SHOW EVENTS FROM `information_schema`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='world';
use world;
create table date_table (
	id int auto_increment primary key,
	datetime datetime default now()
) auto_increment=101;
insert into date_table (datetime) values
	('2017-08-28 17:40:34'),('2014-04-23 16:47:56'),
	('2017-06-23 15:35:24'),('2012-03-16 13:48:23');
insert into date_table values (default, default);
/* 영향 받은 행: 5  찾은 행: 0  경고: 0  지속 시간 4 쿼리: 0.031 sec. */
desc date_table';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
desc date_table;
/* 영향 받은 행: 0  찾은 행: 2  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from date_table;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select date_format(datetime, '%y-%m-%d') from date_table where id=101;
select * from date_table;
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
select date_format(datetime, '%Y-%m-%d') from date_table where id=101;
select * from date_table;
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
select date_format(datetime, '%Y-%m-%d') from date_table where id=101;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select date_format(datetime, '%p %h:%i:%s') from date_table where id=103;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select date_format(datetime, '%p %h:%i:%s') from date_table where id=103;
select date_format(datetime, '%r') from date_table where id=102;
/* 영향 받은 행: 0  찾은 행: 2  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
select now(), curdate(), curtime();
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select date_add(now(), interval 2 month);
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select date_sub(now(), interval 5 day);
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select to_days('2019-11-14') - to_days(now());
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select dayofweek(datetime) from date_table;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc countrylanguage;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
SHOW CREATE TABLE `world`.`countrylanguage`;
SHOW COLLATION;
SHOW CREATE TABLE `world`.`country`;
select countrylanguage.*, country.name from countrylanguage
	inner join country on countrylanguage.countrycode = country.Code
	where language = 'korean';
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 1 쿼리: 0.015 sec. */
select countrylanguage.*, country.name from countrylanguage as cl
	inner join country on countrylanguage.countrycode = country.Code
	where language = 'korean';
/* SQL 오류 (1051): Unknown table 'countrylanguage' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select cl.*, country.name from countrylanguage as cl
	inner join country on cl.countrycode = country.Code
	where language = 'korean';
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select cl.*, country.name from countrylanguage as cl
	inner join country as co on cl.countrycode = co.Code
	where language = 'korean';
/* SQL 오류 (1054): Unknown column 'country.name' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select cl.*, co.name from countrylanguage as cl
	inner join country as co on cl.countrycode = co.Code
	where language = 'korean';
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.*, country.name from city left outer join country
	on city.countrycode=country.code where city.countrycode ='kor';
/* 영향 받은 행: 0  찾은 행: 72  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.*, co.name from city left outer join country as co
	on city.countrycode=co.code where city.countrycode ='kor';
/* 영향 받은 행: 0  찾은 행: 72  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
create table girl_group (
	_id int primary key auto_increment,
	name varchar(32) not null,
	debet Date not null,
	hit_song_id int
) default charset=uf8;
/* SQL 오류 (1115): Unknown character set: 'uf8' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
create table girl_group (
	_id int primary key auto_increment,
	name varchar(32) not null,
	debet Date not null,
	hit_song_id int
) default charset=utf8;
create table song (
	_id int primary key auto_increment,
	title varchar(32) not null,
	lyrics varchar(32)
) default charshe=utf8;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'charshe=utf8' at line 5 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 of 2 쿼리: 0.031 sec. */
create table girl_group (
	_id int primary key auto_increment,
	name varchar(32) not null,
	debet Date not null,
	hit_song_id int
) default charset=utf8;
/* SQL 오류 (1050): Table 'girl_group' already exists */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
create table song (
	_id int primary key auto_increment,
	title varchar(32) not null,
	lyrics varchar(32)
) default charset=utf8;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.031 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 13  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
insert into song (_id, title, lyricts)
	values (101, 'Tell Me', 'tell me tell me tetetete tel me');
/* SQL 오류 (1054): Unknown column 'lyricts' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
insert into song (_id, title, lyrics)
	values (101, 'Tell Me', 'tell me tell me tetetete tel me');
insert into song (title, lytics)
	values('Gee','Gee Gee Gee Gee Baby Baby'),
	('미스터', '이름이 뭐야 미스터'),
	('Abracadabra', '이러다 미쳐 내가 여리여리'),
	('8282','Give me a call Baby Baby'),
	('기대해','기대해'),
	('I don\'t care', '다른 여가들의 다리를'),
	('Bad Girl Good Gril', '앞에선 한 마디 말도'),
	('피노키오', '뉴예삐오'),
	('별빛달빛','너는 내 별빛 내 마음의 별빛'),
	('A','A 워오우 워오우워 우우우'),
	('나혼자','나 혼자 밥을 먹고 나 혼자 영화 보고'),
	('LUV','설레이나요'),
	('짧은 치마','짧은 치마를 입고 내가 길을 걸으면'),
	('위아래','위 아래 위 위 아래'),
	('Dumb Dumb','너 땜에 하루종일');
/* SQL 오류 (1054): Unknown column 'lytics' in 'field list' */
/* 영향 받은 행: 1  찾은 행: 0  경고: 0  지속 시간 1 of 2 쿼리: 0.000 sec. */
desc song;
/* 영향 받은 행: 0  찾은 행: 3  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
insert into song (_id, title, lyrics)
	values (101, 'Tell Me', 'tell me tell me tetetete tel me');
/* SQL 오류 (1062): Duplicate entry '101' for key 'PRIMARY' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
select * from song;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
insert into song (title, lyrics)
	values('Gee','Gee Gee Gee Gee Baby Baby'),
	('미스터', '이름이 뭐야 미스터'),
	('Abracadabra', '이러다 미쳐 내가 여리여리'),
	('8282','Give me a call Baby Baby'),
	('기대해','기대해'),
	('I don\'t care', '다른 여가들의 다리를'),
	('Bad Girl Good Gril', '앞에선 한 마디 말도'),
	('피노키오', '뉴예삐오'),
	('별빛달빛','너는 내 별빛 내 마음의 별빛'),
	('A','A 워오우 워오우워 우우우'),
	('나혼자','나 혼자 밥을 먹고 나 혼자 영화 보고'),
	('LUV','설레이나요'),
	('짧은 치마','짧은 치마를 입고 내가 길을 걸으면'),
	('위아래','위 아래 위 위 아래'),
	('Dumb Dumb','너 땜에 하루종일');
/* 영향 받은 행: 15  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
INSERT INTO girl_group (name, debut, hit_song_id) 
	VALUES ('원더걸스', '2007-09-12', 101),
	('소녀시대', '2009-06-03', 102), ('카라', '2009-07-30', 103),
	('브라운아이드걸스', '2008-01-17', 104), ('다비치', '2009-02-27', 105),
	('2NE1', '2009-07-08', 107), ('f(x)', '2011-04-20', 109),
	('시크릿', '2011-01-06', 110), ('레인보우', '2010-08-12', 111),
	('에프터 스쿨', '2009-11-25'), ('포미닛', '2009-08-28');
/* SQL 오류 (1054): Unknown column 'debut' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
desc girl_group;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
alter table girl_group change debet debut;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
alter table girl_group change debet debut date not null;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
desc girl_group;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
INSERT INTO girl_group (name, debut, hit_song_id)
VALUES ('원더걸스', '2007-02-10', 101);
select * from girl_group;
/* 영향 받은 행: 1  찾은 행: 1  경고: 0  지속 시간 2 쿼리: 0.000 sec. */

INSERT INTO girl_group (name, debut, hit_song_id)
VALUES ('소녀시대', '2007-08-02', 102), 
	('카라', '2009-07-30', 103),
	('브라운아이드걸스', '2008-01-17', 104), 
	('다비치', '2009-02-27', 105),
	('2NE1', '2009-07-08', 107), 
	('f(x)', '2011-04-20', 109),
	('시크릿', '2011-01-06', 110), 
	('레인보우', '2010-08-12', 111);
select * from girl_group;
/* 영향 받은 행: 8  찾은 행: 9  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
INSERT INTO girl_group (name, debut, hit_song_id)
VALUES 
	('에프터스쿨', '2009-11-25'), 
	('포미닛', '2009-08-28');
/* SQL 오류 (1136): Column count doesn't match value count at row 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
select * from girl_group;
select * from song;
/* 영향 받은 행: 0  찾은 행: 25  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
desc girl_group;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
insert into girl_group(name, debut) 
	VALUES ('에프터 스쿨', '2009-11-25'), 
	('포미닛', '2009-08-28');
/* 영향 받은 행: 2  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select * from girl_group;
/* 영향 받은 행: 0  찾은 행: 11  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select gg._id, gg.name, s.title
	from girl_group as gg
	inner join song as s
	on s._id = gg.hit_song_id;
/* 영향 받은 행: 0  찾은 행: 9  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select gg._id, gg.name, s.title
	from girl_group as gg
	left outer join song as s
	on s._id = gg.hit_song_id;
/* 영향 받은 행: 0  찾은 행: 11  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select gg._id, gg.name, s.title
	from girl_group as gg
	right outer join song as s
	on s._id = gg.hit_song_id;
/* 영향 받은 행: 0  찾은 행: 16  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select s._id, s.title, gg.name
	from girl_group as gg
	right outer join song as s
	on s._id = gg.hit_song_id;
/* 영향 받은 행: 0  찾은 행: 16  경고: 0  지속 시간 1 쿼리: 0.000 sec. */