
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