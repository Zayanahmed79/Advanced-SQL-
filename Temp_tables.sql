CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
)


SELECT *
FROM temp_table
;

INSERT INTO temp_table
VALUE("Zayan","Ahmed","Unbroken")
;

SELECT *
FROM temp_table
;

SELECT *
FROM employee_salary
;

CREATE TEMPORARY TABLE salaries_over_50k_1
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM salaries_over_50k_1
;


