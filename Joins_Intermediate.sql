-- Joins 

Select * 
FROM employee_demographics;

Select *
FROM employee_salary;

Select * 
FROM employee_demographics as dem
Inner Join employee_salary as sal
	ON  dem.employee_id = sal.employee_id;   -- inner joins requires one unique identifier from both tables 
    
Select dem.employee_id, age, occupation
FROM employee_demographics as dem
Inner Join employee_salary as sal
	ON  dem.employee_id = sal.employee_id;
    
-- Outer Joins 
Select *
FROM employee_demographics as dem
LEFT Join employee_salary as sal
	ON  dem.employee_id = sal.employee_id; -- Left joins takes everything from the left table (even if there is no unique ID) 
												-- and will only return matches on the right table
Select *
FROM employee_demographics as dem
Right Join employee_salary as sal
	ON  dem.employee_id = sal.employee_id;

-- Self Join (join where you tie the table to itself) 

Select * 
From employee_salary emp1
Join employee_salary emp2
	ON emp1.employee_id = emp2.employee_id
    ;
    
Select * 
From employee_salary emp1
Join employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id
    ;

Select emp1.employee_id as emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS last_name_emp,
emp2.last_name AS last_name_emp
From employee_salary emp1
Join employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id
    ;

-- Joining multiple tables 

Select *
FROM employee_demographics AS dem
Inner Join employee_salary AS sal
	ON  dem.employee_id = sal.employee_id  -- unique id is most to join multiple tables 
Inner Join parks_departments as pd
	on sal.dept_id = pd.department_id;
    
Select * 
From parks_departments;