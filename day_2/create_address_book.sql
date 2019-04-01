/* 구분자를 ";" 으(로) 변경 */
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
drop table address_book;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 2 쿼리: 0.015 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
SHOW CREATE TABLE `world`.`address_book`;SHOW CREATE TABLE `world`.`city`;SHOW CREATE TABLE `world`.`country`;SHOW CREATE TABLE `world`.`countrylanguage`;SHOW CREATE TABLE `world`.`eagles`;
/* SQL 오류 (1146): Table 'world.address_book' doesn't exist */
create table if not exists address_book (
	no int unsigned not null auto_increment,
	name varchar(10) not null,
	tel varchar(14),
	nickname varchar(20) default,
	primary key(no)
	) auto_increment=10001 default charset=utf8;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '
	primary key(no)
	) auto_increment=10001 default charset=utf8' at line 5 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
create table if not exists address_book (
	no int unsigned not null auto_increment,
	name varchar(10) not null,
	tel varchar(14),
	nickname varchar(20),
	primary key(no)
	) auto_increment=10001 default charset=utf8;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.031 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc address_book;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
/* 지금 세션 로그 파일에 기록 중: C:\Users\714-000\AppData\Roaming\HeidiSQL\Sessionlogs\000001.log */