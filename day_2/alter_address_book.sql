
create Table: create table `wp_options` (
	`option_id` bigint(20) unsigned not null auto_increment,
	`option_name` varchar(64) not null default '',
	`option_value` longtext not null,
	`autoload` varchar(20) not null default 'yes',
	primary key (`option_id`),
	unique key `option_name` (`option_name`)
	) engine=myisam auto_increment=1203 default charset=utf8;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ': create table `wp_options` (
	`option_id` bigint(20) unsigned not null auto_in' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
create Table: create table `wp_options` (
	`option_id` bigint(20) unsigned not null auto_increment,
	`option_name` varchar(64) not null default '',
	`option_value` longtext not null,
	`autoload` varchar(20) not null default 'yes',
	primary key (`option_id`),
	unique key `option_name` (`option_name`)
	) engine=myisam auto_increment=1203 default charset=utf8;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ': create table `wp_options` (
	`option_id` bigint(20) unsigned not null auto_in' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
create table `wp_options` (
	`option_id` bigint(20) unsigned not null auto_increment,
	`option_name` varchar(64) not null default '',
	`option_value` longtext not null,
	`autoload` varchar(20) not null default 'yes',
	primary key (`option_id`),
	unique key `option_name` (`option_name`)
	) engine=myisam auto_increment=1203 default charset=utf8;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
show table status;
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
/*테이블 조회*/

show tables;
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
create table tmp (
	num int,
	name verchar(10)
	);
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'verchar(10)
	)' at line 3 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
create table tmp (
	num int,
	name varchar(10)
	);
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.031 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
drop table tmp;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.016 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 6  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
create table tmp(
	no int,
	name varchar(10)
	);
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.031 sec. */
show tables;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
rename table tmp to tmp_table;
show tables;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 2 쿼리: 0.016 sec. */
-- 테이블 변경
;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
alter table address_book add gender char(2) not null;
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.063 sec. */
desc address_book;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
alter table address_book drop gender;
desc address_book;
/* 영향 받은 행: 0  찾은 행: 4  경고: 0  지속 시간 2 쿼리: 0.078 sec. */
alter table address_book add gender char(2) not null default '남' after name;
desc address_book;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 2 쿼리: 0.063 sec. */
alter table address_book change no aid int(8);
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 1 쿼리: 0.078 sec. */
desc address_book;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
alter table address_book change aid aid int unsigned not null auto_increment;
desc address_book;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 2 쿼리: 0.078 sec. */
alter table address_book change nickname address varchar(40);
desc address_book;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 2 쿼리: 0.016 sec. */
alter table address_book modify tel after address;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'after address' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 2 쿼리: 0.000 sec. */
alter table address_book modify tel varchar(14) after address;
desc address_book;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 2 쿼리: 0.062 sec. */
alter table address_book modify tel varchar(14) first;
desc address_book;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 2 쿼리: 0.094 sec. */
alter table address_book modify tel varchar(14) after gender;
desc address_book;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 2 쿼리: 0.046 sec. */