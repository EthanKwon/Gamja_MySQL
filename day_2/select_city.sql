
-- 데이터 조작;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc city;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city limit 5;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select * from city desc limit 5;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc limit 5' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city limit desc 5;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc 5' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city order by id desc limit 5;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where contrycode='kor';
/* SQL 오류 (1054): Unknown column 'contrycode' in 'where clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where contrycode='kor';
/* SQL 오류 (1054): Unknown column 'contrycode' in 'where clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where countrycode='kor';
/* 영향 받은 행: 0  찾은 행: 70  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where district = 'kyonggi';
/* 영향 받은 행: 0  찾은 행: 18  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select name,population from city where district = 'kyonggi';
/* 영향 받은 행: 0  찾은 행: 18  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where district = 'kyonggi' and population>=500000;
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select district from city where countrycode ='kor';
/* 영향 받은 행: 0  찾은 행: 70  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select distinct district from city where countrycode ='kor';
/* 영향 받은 행: 0  찾은 행: 15  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='mysql';
SHOW TABLE STATUS FROM `mysql`;
SHOW FUNCTION STATUS WHERE `Db`='mysql';
SHOW PROCEDURE STATUS WHERE `Db`='mysql';
SHOW TRIGGERS FROM `mysql`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='mysql';
SHOW CREATE TABLE `mysql`.`columns_priv`;SHOW CREATE TABLE `mysql`.`db`;SHOW CREATE TABLE `mysql`.`engine_cost`;SHOW CREATE TABLE `mysql`.`event`;SHOW CREATE TABLE `mysql`.`func`;SHOW CREATE TABLE `mysql`.`general_log`;SHOW CREATE TABLE `mysql`.`gtid_executed`;SHOW CREATE TABLE `mysql`.`help_category`;SHOW CREATE TABLE `mysql`.`help_keyword`;SHOW CREATE TABLE `mysql`.`help_relation`;SHOW CREATE TABLE `mysql`.`help_topic`;SHOW CREATE TABLE `mysql`.`innodb_index_stats`;SHOW CREATE TABLE `mysql`.`innodb_table_stats`;SHOW CREATE TABLE `mysql`.`ndb_binlog_index`;SHOW CREATE TABLE `mysql`.`plugin`;SHOW CREATE TABLE `mysql`.`proc`;SHOW CREATE TABLE `mysql`.`procs_priv`;SHOW CREATE TABLE `mysql`.`proxies_priv`;SHOW CREATE TABLE `mysql`.`servers`;SHOW CREATE TABLE `mysql`.`server_cost`;SHOW CREATE TABLE `mysql`.`slave_master_info`;SHOW CREATE TABLE `mysql`.`slave_relay_log_info`;SHOW CREATE TABLE `mysql`.`slave_worker_info`;SHOW CREATE TABLE `mysql`.`slow_log`;SHOW CREATE TABLE `mysql`.`tables_priv`;SHOW CREATE TABLE `mysql`.`time_zone`;SHOW CREATE TABLE `mysql`.`time_zone_leap_second`;SHOW CREATE TABLE `mysql`.`time_zone_name`;SHOW CREATE TABLE `mysql`.`time_zone_transition`;SHOW CREATE TABLE `mysql`.`time_zone_transition_type`;SHOW CREATE TABLE `mysql`.`user`;
select * from mysql.help_keyword;
/* 영향 받은 행: 0  찾은 행: 699  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where district ='chollanam' or district='chollabuk' or district = 'kwangju';
/* 영향 받은 행: 0  찾은 행: 12  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select * from city where
	countrycode='kor' and population >1000000 and population%2=0;
/* 영향 받은 행: 0  찾은 행: 3  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
update city set population= 2000000 where id =2335;
/* 영향 받은 행: 1  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
update city set population= 1425835 where id =2335;
/* 영향 받은 행: 1  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where countryvode ='kor' and name like 'tae%';
/* SQL 오류 (1054): Unknown column 'countryvode' in 'where clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where countryvode ='kor' and name like 'tae%';
/* SQL 오류 (1054): Unknown column 'countryvode' in 'where clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where countrycode ='kor' and name like 'tae%';
/* 영향 받은 행: 0  찾은 행: 2  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where countrycode ='kor' and population > 1000000 and not name like 'tae'%;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where countrycode ='kor' and population > 1000000 and not name like 'tae'%;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where countrycode ='kor' and population > 1000000 and not name like 'tae%';
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city district='kyonggi' order by name;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='kyonggi' order by name' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where district='kyonggi' order by name;
/* 영향 받은 행: 0  찾은 행: 18  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where district='kyonggi' order by population desc ;
/* 영향 받은 행: 0  찾은 행: 18  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where district='kyonggi' order by population desc limit 1;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where countrycode='kor' order by district;
/* 영향 받은 행: 0  찾은 행: 70  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where countrycode='kor' order by district desc, population desc;
/* 영향 받은 행: 0  찾은 행: 70  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select count(*) from city where countrycode ='kor';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select sum(population) from city where countrycode ='kor';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select avg(population) from city where countrycode ='kor';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select max(population) from city where countrycode ='kor';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select min(population) from city where countrycode ='kor';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where population ='min(population)';
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city where population =min(population);
/* SQL 오류 (1111): Invalid use of group function */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where countrycode = 'kor' order by popluation limit 1;
/* SQL 오류 (1054): Unknown column 'popluation' in 'order clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where countrycode = 'kor' order by popluation limit 1;
/* SQL 오류 (1054): Unknown column 'popluation' in 'order clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from city where countrycode = 'kor' order by population limit 1;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select sum(populatrion),avg(populatrion),max(populatrion),min(populatrion) 
	from city where countrycode = 'kor' order by population limit 1;
/* SQL 오류 (1054): Unknown column 'populatrion' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select sum(populatrion),avg(populatrion),max(populatrion),min(populatrion) 
	from city where countrycode = 'kor' order by population limit 1;
/* SQL 오류 (1054): Unknown column 'populatrion' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select sum(population),avg(population),max(population),min(population) 
	from city where countrycode = 'kor' order by population limit 1;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select group-concat(name)
	from city where countrycode = 'kor' order by population limit 1;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'group-concat(name)
	from city where countrycode = 'kor' order by population lim' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select group-concat(name)
	from city where district='chungchongnam';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'group-concat(name)
	from city where district='chungchongnam'' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select group-concat(name)
	from city where district='chungchongbug';
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'group-concat(name)
	from city where district='chungchongbug'' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select group_concat(name)
	from city where district='chungchongbug';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select group_concat(name)
	from city where district='chungchongbuk';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select group_concat(name)
	from city where name=district;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select group_concat(name)
	from city where countrycode='kor' and name=district;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select group_concat(distinct district)
	from city where countrycode='kor' and name=district;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select group_concat(distinct district)
	from city where countrycode='kor';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select distric, count(*) from city
	where countrycode='kor' group by district;
/* SQL 오류 (1054): Unknown column 'distric' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select district, count(*) from city
	where countrycode='kor' group by district;
/* 영향 받은 행: 0  찾은 행: 15  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select count(*) from city
	where countrycode='kor' group by district having count(*)=6;
/* 영향 받은 행: 0  찾은 행: 2  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select destrict count(*) from city
	where countrycode='kor' group by district having count(*)=6;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count(*) from city
	where countrycode='kor' group by district having count(*)=6' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select destrict,count(*) from city
	where countrycode='kor' group by district having count(*)=6;
/* SQL 오류 (1054): Unknown column 'destrict' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select district,count(*) from city
	where countrycode='kor' group by district having count(*)=6;
/* 영향 받은 행: 0  찾은 행: 2  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select district,count(*) from city
	where countrycode='kor' group by district having count(*)>=6 order by count(*) desc;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select countrycode, count(*) from city
	group by countrycode having count(*) >=50;
/* 영향 받은 행: 0  찾은 행: 20  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select countrycode, count(*) from city
	group by countrycode having count(*) >=50 order by count(*) desc;
/* 영향 받은 행: 0  찾은 행: 20  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc country;
/* 영향 받은 행: 0  찾은 행: 15  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country limit 10 order by code;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order by code' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select * from country order by code  limit 10 ;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc countrylanguage;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.015 sec. */
SHOW CREATE TABLE `world`.`city`;
SHOW COLLATION;
select city.Name, city.Population, country.name form city
	inner join country on city.countrycode = country.code;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city
	inner join country on city.countrycode = country.code' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select city.Name, city.Population, country.name from city
	inner join country on city.countrycode = country.code;
/* 영향 받은 행: 0  찾은 행: 4,079  경고: 0  지속 시간 1 쿼리: 0.000 sec. (+ 0.015 sec. network) */
select city.Name, city.Population, country.name from city
	inner join country on city.countrycode = country.code order by desc city.Population limit 10;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc city.Population limit 10' at line 2 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select city.Name, city.Population, country.name from city
	inner join country on city.countrycode = country.code order by city.Population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select city.Name, city.Population, country.name from city
	inner join country on city.countrycode = country.code where city.countrycode='kor';
/* 영향 받은 행: 0  찾은 행: 70  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name, city.Population, country.name from city
	inner join country on city.countrycode = country.code where city.countrycode='jpn';
/* 영향 받은 행: 0  찾은 행: 248  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name, city.Population, country.name from city
	inner join country on city.countrycode = country.code where city.population >7000000;
/* 영향 받은 행: 0  찾은 행: 14  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name from city
	where city.name ='A%';
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select city.Name from city
	where country.name ='A%';
/* SQL 오류 (1054): Unknown column 'country.name' in 'where clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select Name from country
	where name ='A%';
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select count(*) from country
	where continent ='Asia';
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select count(*) from country limit 10;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select avg(surfacearea) from country group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select name, avg(surfacearea) from country group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent, avg(surfacearea) from country group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent, sum(surfacearea) from country group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select Continent, sum(SurfaceArea) from country group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select Continent, sum(SurfaceArea) from country group by continent 
 order by sum(surfaceArea) desc limit 1;
/* 영향 받은 행: 0  찾은 행: 1  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select Continent, sum(SurfaceArea) from country group by continent 
 order by sum(surfaceArea) desc;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city;
/* 영향 받은 행: 0  찾은 행: 4,079  경고: 0  지속 시간 1 쿼리: 0.000 sec. (+ 0.016 sec. network) */
select * from city group by countrycode order by population;
/* 영향 받은 행: 0  찾은 행: 232  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city group by countrycode order by population desc;
/* 영향 받은 행: 0  찾은 행: 232  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select * from city group by countrycode order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
SHOW CREATE TABLE `world`.`city`;
SHOW CREATE TABLE `world`.`country`;
select country.Name, city.name, city.Population from city
	inner join country on city.CountryCode = country.Code
 	group by countrycode order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select country.Name, city.name, city.sum(Population) from city
	inner join country on city.CountryCode = country.Code
 	group by countrycode order by population desc limit 10;
/* SQL 오류 (1630): FUNCTION city.sum does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select country.Name, city.name, city.sum(Population) from city
	inner join country on city.CountryCode = country.Code
 	group by countrycode order by sum(population) desc limit 10;
/* SQL 오류 (1630): FUNCTION city.sum does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select country.Name, city.name, city.Population from city
	inner join country on city.CountryCode = country.Code
 	group by countrycode order by population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select countrycode, sum(population) from city
	group by countrycode
	order by sum(population) desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
select country.Name, sum(city.Population) from city
	inner join country to city 
	group by city.countrycode
	order by sum(city.Population) desc limit 10;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to city 
	group by city.countrycode
	order by sum(city.Population) desc limit ' at line 2 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select country.Name, sum(city.Population) from city
	inner join country on city 
	group by city.countrycode
	order by sum(city.Population) desc limit 10;
/* SQL 오류 (1054): Unknown column 'city' in 'on clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select country.Name, sum(city.Population) from city
	inner join country on city.Countrycode = country.Name
	group by city.countrycode
	order by sum(city.Population) desc limit 10;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select country.Name, sum(city.Population) from city
	inner join country on city.Countrycode = country.code
	group by city.countrycode
	order by sum(city.Population) desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.016 sec. */