select database();
use sakila;
select database();
show databases;
show tables;
select * from actor ;
select actor_id, first_name from ACTOR;
select * from actor where FIRST_NAME='JOE';
SELECT * FROM ACTOR WHERE first_name='ED' and actor_id>140;
SELECT * FROM ACTOR WHERE first_name='ED' or actor_id>140;
select * from actor where actor_id>15 and actor_id<50;
select * from actor where actor_id between 11 and 50;
select * from actor where actor_id  in (2,8);
-- like ==> pattern par kaam karega
-- like  ==> % [zero or more characater]   _ ==> [only 1 character]
select * from actor where first_name like 'Nick';
select * from actor where first_name like '__E%';
-- distinct, count
select distinct(last_name) from actor;
select count(distinct(last_name) ) from actor;
-- function
--  string function
-- scalar function           -- multi line function
select first_name,lower(first_name), upper(lower (first_name)),
length(first_name)  from actor;
select first_name, substr(first_name, 3,7) from actor;
select first_name, instr(first_name,'J') FROM ACTOR;
select first_name, last_name, concat(first_name,'-', last_name)
 from actor;
select first_name, last_name, concat_ws( "-",first_name, last_name, '$')
 from actor;
select first_name, trim(length (' hay      ') )
from actor;
select first_name,  rpad(first_name,6,'&') from actor;
-- number,date
-- dual table
select 5*34 from dual;
select sysdate(), curdate(), curtime(),now()  from dual;
select now(),adddate(now(), 2) from dual;
-- extract 
select now(), date_format( now(), 'This year is %Y' ) FROM DUAL;

select 98765, replace( 98765,7, "9") from dual
-- join