select *
from parks_and_recreation.employee_salary;

Select * 
from parks_and_recreation.employee_salary
where first_name = 'Leslie';

Select * 
from parks_and_recreation.employee_salary
where salary > 50000;

Select * 
from parks_and_recreation.employee_salary
where salary >= 50000;

Select * 
from parks_and_recreation.employee_salary
where salary < 50000;

Select * 
from parks_and_recreation.employee_demographics
where gender = 'Female';

Select * 
from parks_and_recreation.employee_demographics
where gender != 'Female';

Select * 
from parks_and_recreation.employee_demographics
where birth_date >  '1985-01-01';

-- AND OR NOT -- LOGICAL OPERATORS 

Select * 
from parks_and_recreation.employee_demographics
where birth_date >  '1985-01-01'
and gender = 'male';      -- AND Requires both statements to be true and will only return values which meet both parameters

Select * 
from parks_and_recreation.employee_demographics
where birth_date >  '1985-01-01'  -- OR Requires one statement to be true to retrun values which meet one statement 
or gender = 'male';  

Select * 
from parks_and_recreation.employee_demographics
where birth_date >  '1985-01-01'  
or not gender = 'male';  

Select * 
from parks_and_recreation.employee_demographics
where (first_name = 'Leslie' AND age = 44) OR age > 55;

-- LIKE Statement 
-- % and _
Select *
From parks_and_recreation.employee_demographics
where first_name Like 'Jer%' ; 

Select *
From parks_and_recreation.employee_demographics
where first_name Like 'a%' ; 

Select *
From parks_and_recreation.employee_demographics
where first_name Like 'a__' ; 

Select *
From parks_and_recreation.employee_demographics
where first_name Like 'a_%' ; 

Select *
From parks_and_recreation.employee_demographics
where birth_date Like '1989%' ; 