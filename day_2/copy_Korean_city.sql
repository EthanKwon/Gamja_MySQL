
update city set name='siheung'
	where countrycode='kor' and name ='shihung';
select * from city where countrycode='kor' and name like 's%';
/* 영향 받은 행: 1  찾은 행: 8  경고: 0  지속 시간 2 쿼리: 0.015 sec. */
update city set population = 153000
	where ID = 2383;
select * from city where countrycode='kor' and name like 's%';
/* 영향 받은 행: 1  찾은 행: 8  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
select * from eagles;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
alter table eagles add salary int;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.109 sec. */
select * from eagles;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
insert into eagles ('salary') value(3000) where back_no = 30;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''salary') value(3000) where back_no = 30' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 10 쿼리: 0.000 sec. */
insert into eagles (salary) value(3000) where back_no = 30;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where back_no = 30' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 10 쿼리: 0.000 sec. */
update eagles set salary=3000 where back_no = 30;
update eagles set salary=5000 where back_no = 52;
update eagles set salary=3000 where back_no = 30;
update eagles set salary=5000 where back_no = 52;
update eagles set salary=3000 where back_no = 30;
update eagles set salary=5000 where back_no = 52;
update eagles set salary=3000 where back_no = 30;
update eagles set salary=5000 where back_no = 52;
update eagles set salary=3000 where back_no = 30;
update eagles set salary=5000 where back_no = 52;
select * from eagles

;
/* 영향 받은 행: 2  찾은 행: 10  경고: 0  지속 시간 11 쿼리: 0.032 sec. */
update eagles set salary=51000 where back_no = 30;
update eagles set salary=55000 where back_no = 52;
update eagles set salary=32000 where back_no = 8;
update eagles set salary=40000 where back_no = 15;
update eagles set salary=33000 where back_no = 57;
update eagles set salary=51000 where back_no = 7;
update eagles set salary=31000 where back_no = 50;
update eagles set salary=52000 where back_no = 22;
update eagles set salary=30000 where back_no = 46;
update eagles set salary=10000 where back_no = 24;
select * from eagles;
/* 영향 받은 행: 10  찾은 행: 10  경고: 0  지속 시간 11 쿼리: 0.016 sec. */
update eagles set salary=140000 where back_no = 30;
update eagles set salary=150000 where back_no = 52;
update eagles set salary=70000 where back_no = 8;
update eagles set salary=40000 where back_no = 15;
update eagles set salary=120000 where back_no = 57;
update eagles set salary=25000 where back_no = 7;
update eagles set salary=32000 where back_no = 50;
update eagles set salary=15000 where back_no = 22;
update eagles set salary=25000 where back_no = 46;
update eagles set salary=25000 where back_no = 24;
select * from eagles;
/* 영향 받은 행: 9  찾은 행: 10  경고: 0  지속 시간 11 쿼리: 0.016 sec. */
update eagles set salary=1400000 where back_no = 30;
update eagles set salary=1500000 where back_no = 52;
update eagles set salary=700000 where back_no = 8;
update eagles set salary=400000 where back_no = 15;
update eagles set salary=1200000 where back_no = 57;
update eagles set salary=250000 where back_no = 7;
update eagles set salary=320000 where back_no = 50;
update eagles set salary=150000 where back_no = 22;
update eagles set salary=250000 where back_no = 46;
update eagles set salary=250000 where back_no = 24;
select * from eagles;
/* 영향 받은 행: 10  찾은 행: 10  경고: 0  지속 시간 11 쿼리: 0.015 sec. */
update eagles set salary=(1400000*1.132) where back_no = 30;
update eagles set salary=1500000 where back_no = 52;
update eagles set salary=700000 where back_no = 8;
update eagles set salary=400000 where back_no = 15;
update eagles set salary=1200000 where back_no = 57;
update eagles set salary=250000 where back_no = 7;
update eagles set salary=320000 where back_no = 50;
update eagles set salary=150000 where back_no = 22;
update eagles set salary=250000 where back_no = 46;
update eagles set salary=250000 where back_no = 24;
select * from eagles;
/* 영향 받은 행: 1  찾은 행: 10  경고: 0  지속 시간 11 쿼리: 0.015 sec. */
insert into city (default, 'Gimpo','KOR','Kyonggi',200001);
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'default, 'Gimpo','KOR','Kyonggi',200001)' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
insert into city values (default, 'Gimpo','KOR','Kyonggi',200001);
select * from city where district ='Kyonggi';
/* 영향 받은 행: 1  찾은 행: 19  경고: 0  지속 시간 2 쿼리: 0.016 sec. */
insert into city(default, 'Gimpo','KOR','Kyonggin',200001) values (default, 'Gimpo','KOR','Kyonggi',200001);
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'default, 'Gimpo','KOR','Kyonggin',200001) values (default, 'Gimpo','KOR','Kyongg' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
insert into city(default, 'Gimpo','KOR','Kyonggi',200001) values (default, 'Gimpo','KOR','Kyonggi',200001);
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'default, 'Gimpo','KOR','Kyonggi',200001) values (default, 'Gimpo','KOR','Kyonggi' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
insert into city(name, countrycode, district, population) values (default, 'Gimpo','KOR','Kyonggi',200001);
/* SQL 오류 (1136): Column count doesn't match value count at row 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
create table citycopy like city;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.031 sec. */
desc citycopy;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select * from citycopy;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
insert into citycopy select * from city;
select * from citycopy;
/* 영향 받은 행: 4,080  찾은 행: 4,080  경고: 0  지속 시간 2 쿼리: 0.140 sec. */
insert into  city (name, countrycode, district, population)
	values('Osan','KOR','Kyonggi',201234),
	('Pochon','KOR','Kyonggi','312345');
select * from city order by id desc limit 5;
/* 영향 받은 행: 2  찾은 행: 5  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
delete from city where id = 4082;
select * from city order by id desc limit 5;
/* 영향 받은 행: 1  찾은 행: 5  경고: 0  지속 시간 2 쿼리: 0.000 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 8  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
create view LargeCity as select * from city
	where population >7000000 with check option;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.015 sec. */
select * from LargeCity;
/* 영향 받은 행: 0  찾은 행: 14  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 9  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
SHOW DATABASES;
/* "Localhost" 세션 시작 */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='world';
SHOW TABLE STATUS FROM `world`;
SHOW FUNCTION STATUS WHERE `Db`='world';
SHOW PROCEDURE STATUS WHERE `Db`='world';
SHOW TRIGGERS FROM `world`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='world';
create view Koreancity as select id, name, district, populatrion
 from city where countrycode = 'kor';
/* SQL 오류 (1054): Unknown column 'populatrion' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
create view Koreancity as select id, name, district, population
 from city where countrycode = 'kor';
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.015 sec. */
select * from koreancity;
/* 영향 받은 행: 0  찾은 행: 72  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc koreancity;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
drop view koreancity;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
create view Koreancity as select id, name, district, population 
	from city where countrycode = 'kor' check options;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'check options' at line 2 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
create view Koreancity as select id, name, district, population 
	from city where countrycode = 'kor' with check option;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
desc koreancity;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from Koreancity;
/* 영향 받은 행: 0  찾은 행: 72  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select district, name, population from koreancity as c1
	where population > (select avg(population) from koreancity as c2
	where c1.district = c2.district group by district);
/* 영향 받은 행: 0  찾은 행: 25  경고: 0  지속 시간 1 쿼리: 0.031 sec. */