
desc song;
/* 영향 받은 행: 0  찾은 행: 3  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
SHOW CREATE TABLE `world`.`address_book`;SHOW CREATE TABLE `world`.`city`;SHOW CREATE TABLE `world`.`citycopy`;SHOW CREATE TABLE `world`.`country`;SHOW CREATE TABLE `world`.`countrylanguage`;SHOW CREATE TABLE `world`.`eagles`;SHOW CREATE TABLE `world`.`tmp_table`;SHOW CREATE TABLE `world`.`wp_options`;
select gg.name, gg.debut, s.name from girl_group as gg
	inner join song as s
	where gg.debut between '2009-01-01' and '2009-12-31';
/* SQL 오류 (1054): Unknown column 's.name' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select gg.name, gg.debut, s.title from girl_group as gg
	inner join song as s
	where gg.debut between '2009-01-01' and '2009-12-31';
/* 영향 받은 행: 0  찾은 행: 80  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select gg.name, gg.debut, s.title from girl_group as gg
	inner join song as s
	on s._id = gg.hit_song_id
	where gg.debut between '2009-01-01' and '2009-12-31';
/* 영향 받은 행: 0  찾은 행: 3  경고: 0  지속 시간 1 쿼리: 0.000 sec. */