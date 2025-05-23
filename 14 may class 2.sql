USE SAKILA;
SELECT * FROM actor where first_name like '%A%';
SELECT DISTINCT (first_name) from actor;
select count(first_name) from actor;

-- function
-- scalar junction
-- scalar function=each row result
-- multi row function--- 
select first_name,lower(first_name) from actor;
select first_name,lower(first_name),upper(lower(first_name)),
length(first_name) from actor;
select first_name, substr(first_name,5) from actor;
select first_name,substr(first_name,2,5) from actor;
--numbers,date
--dual
select 9*1547 from dual;
--now()
select sysdate(), crudate(), curtime(), current_timestamp(),now() from dual;
select now(),adddate( now(),3) from dual;
select datediff('2025-05-16 17:15:45', '2025-05-19 17:15:45') from dual;
select last_day(now() ),year(now() )from dual;
select extract(year from now()) from dual;
select extract(month from mow() )from dual;
select now(), date_format( now(), 'This year is %Y ') from dual;
-- round(), truncate(), pow,floor() ,ceil
select 24.3435, round(24.3435), round(24.3435,2) from dual;
select round(364.43 ,-2) from dual;
select round(364.43 ,1), truncate(364.43 ,1) from dual;

select first_name, last_name, actor_id, 
if(actor_id%2=0,(concat(first_name, last_name)) 
use sakila;
select * from actor;
select actor_id, =first_name,
case
    when mod(actor_id,2)=0 then "yes"
    when actor_id=5 then "####yes####"
    else