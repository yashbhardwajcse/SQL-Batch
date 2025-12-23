select database();
use world;

show databases;
use world;

show databases;

show tables;
describe city;
 -- to print data of table alter
 select * from city;
 
 select name,population from city;
select district,population from city; -- kisi bhi order me column print kr sakte hai

select name,population+10 from city;  -- output kaise bhi nikal sakte hai jese har value me 10 add hogaya pr origina

-- query can be weriten in multiple line
-- sql is not case sensitive language
 select name,
	population,
    district from city;
    
-- "alias" used to give nickname to cloumn

select name,population,population+10+5 as 'newpopulation' from country;

use sakila;
describe actor;
select * from actor;
select * from actor where actor_id=5 ;
select * from actor where actor_id!=3;
select * from actor where actor_id>5 ;
select * from actor where actor_id<>5 ;
-- between in like 
-- between within range
select * from actor where actor_id between 3 and 7 ;
select * from actor where actor_id not in(3,7); -- not include 3 and 7 in table

describe city;
show tables;
select * from city ;

-- where clause is used to filter  daTA


use world;
describe city;
select * from city;
Select * from city where countrycode='ARG';
Select * from city where district='Zuid-Holland';

-- 6 more than 6 lakh population
select * from city where population>600000; 
-- != or <> are include in not equal
Select * from city where countrycode<>'ARG';

-- in operator is used to filter data in specific value;
Select * from country;
Select * from country where continent in('Europe','North America','Asia');

-- in only given value indepyear 
select name,continent from country where indepyear in (1901,1960);

-- not in 
select name,continent,indepyear from country where indepyear not in (1901,1960);

select* from country;

-- between - range of value 
select name,continent,indepyear from country where indepyear between 1901 and 1960;

-- not between
select name,continent,indepyear from country where indepyear not between 1901 and 1960;

-- que 1
select name,region from country where region not in ('Middle East');

-- que 2
select name,indepyear,population,population+population*0.1 as expected_population from country ;
select name,indepyear,population,population*1.1 as expected_population from country ;

-- que 3
select * from country where lifeexpectancy in (38.3,66.4);

-- que 4
select name,continent,population from country where population not between 5000 and 200000;

-- Like opertor 
-- like ==> pattern search karna

select name,continent from country where continent='Asia';

-- to meet with pattern
-- % we are finding zero or more character
-- Asian A%

-- a% mtlb last me a ho
select name,continent from country where name like 'a%';

-- %a mtlb last me a hona chahiye name me
select name,continent from country where name like '%a';

-- %a% mtlb name me akahi pr bhi ho
select name,continent from country where name like '%a%';

select name,continent from country where name like '%ad%';

-- _underscore  ==> 1 character 
select name,continent from country where name like 'Ir__';



