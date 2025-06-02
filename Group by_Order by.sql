-- Group By (Groups rows and columns)

Select * 
FROM employee_demographics;

Select gender
FROM employee_demographics
Group by gender;

Select first_name
FROM employee_demographics
Group by gender;

Select gender, AVG(age)
FROM employee_demographics
Group by gender;

Select occupation, salary
FROM employee_salary
Group by occupation , salary
;

Select gender, AVG(age), max(age), min(age), count(age)
FROM employee_demographics
Group by gender;

-- Order BY (sorts the results in either ascending or descending order)

select * 
from employee_demographics
order by first_name ASC;

select * 
from employee_demographics
order by first_name desc;

select * 
from employee_demographics
order by gender, age 
;

select * 
from employee_demographics
order by gender, age DESC 
;

