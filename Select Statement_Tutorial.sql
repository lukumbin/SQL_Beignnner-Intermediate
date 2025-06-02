SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
birth_date,
age,
(age + 10)  * 10
FROM parks_and_recreation.employee_demographics;

# PEMDAS(Parenthesis, Exponent, Multiplication, Divison, Addition, Subtraction)

SELECT distinct gender
From parks_and_recreation.employee_demographics;

SELECT distinct first_name, gender
From parks_and_recreation.employee_demographics;

