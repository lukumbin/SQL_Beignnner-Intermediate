-- HAVING vs Where

select gender, AVG(age)
from employee_demographics
group by gender
having avg(age) > 40
;

Select occupation, AVG(salary) 
from employee_salary                  -- Average salary per ocupation 
group by occupation;

Select occupation, Avg(salary)
from employee_salary
where occupation like '%manager%'    -- Filters for managers who earn more than 75000
group by occupation
having avg(salary) > 75000
;