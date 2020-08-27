/*
when rounded to the next integer
*/
select ceiling(avg(salary) - avg(replace(salary, '0', '')))
from employees

/*
select round(avg(salary) - avg(replace(salary, '0', '')),0)
from employees
*/
