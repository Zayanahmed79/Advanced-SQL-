-- CTE 

WITH CTE_EXAMPLE AS
(
SELECT gender , avg(salary) as avg_salary , min(salary) as min_salary , max(salary) max_salary , count(salary) count_salary
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender 
)
SELECT avg(avg_salary)
FROM CTE_EXAMPLE
;



SELECT avg(avg_salary)
FROM (
SELECT gender , avg(salary) as avg_salary , min(salary) as min_salary , max(salary) max_salary , count(salary) count_salary
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender 
) AS example_subquries
;


WITH CTE_EXAMPLE AS
(
SELECT employee_id , gender, birth_date
FROM employee_demographics AS dem 
WHERE birth_date > '1985-01-01'
),
CTE_EXAMPLE2 AS
(
SELECT employee_id , salary
FROM employee_salary AS sal 
WHERE salary  >  50000
)
SELECT *
FROM CTE_EXAMPLE 
JOIN CTE_EXAMPLE2
	ON CTE_EXAMPLE.employee_id = CTE_EXAMPLE2.employee_id
;


