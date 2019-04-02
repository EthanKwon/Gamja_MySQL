
desc country;
/* 영향 받은 행: 0  찾은 행: 15  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country limit 5;
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select count(*), sum(GNP), avg(GNP) from country
	group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.015 sec. */
select countinent,count(*), sum(GNP), avg(GNP) from country
	group by continent;
/* SQL 오류 (1054): Unknown column 'countinent' in 'field list' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select continent,count(*), sum(GNP), avg(GNP) from country
	group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent,count(*), sum(GNP), avg(GNP.group by name) from country
	group by continent;
/* SQL 오류 (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by name) from country
	group by continent' at line 1 */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select continent,count(*), sum(GNP), avg(GNP) from country
	group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select name, gnp from country 
where continunt = 'antarctica';
/* SQL 오류 (1054): Unknown column 'continunt' in 'where clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select name, gnp from country 
where continent = 'antarctica';
/* 영향 받은 행: 0  찾은 행: 5  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select continent,count(*), sum(GNP), avg(GNP) from country
	group by continent;
/* 영향 받은 행: 0  찾은 행: 7  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
desc country;
/* 영향 받은 행: 0  찾은 행: 15  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from country;
/* 영향 받은 행: 0  찾은 행: 239  경고: 0  지속 시간 1 쿼리: 0.000 sec. */
select * from city;
/* 영향 받은 행: 0  찾은 행: 4,081  경고: 0  지속 시간 1 쿼리: 0.016 sec. (+ 0.015 sec. network) */
SHOW CREATE TABLE `world`.`city`;
select c.continent, c.name, city.Name, city.Population from country as c
	inner join city on c.Code = city.CountryCode
	where c.continent = asia
	order by city.Population desc;
/* SQL 오류 (1054): Unknown column 'asia' in 'where clause' */
/* 영향 받은 행: 0  찾은 행: 0  경고: 0  지속 시간 0 of 1 쿼리: 0.000 sec. */
select c.continent, c.name, city.Name, city.Population from country as c
	inner join city on c.Code = city.CountryCode
	where c.continent = 'asia'
	order by city.Population desc;
/* 영향 받은 행: 0  찾은 행: 1,768  경고: 0  지속 시간 1 쿼리: 0.015 sec. */
select c.continent, c.name, city.Name, city.Population from country as c
	inner join city on c.Code = city.CountryCode
	where c.continent = 'asia'
	order by city.Population desc limit 10;
/* 영향 받은 행: 0  찾은 행: 10  경고: 0  지속 시간 1 쿼리: 0.000 sec. */