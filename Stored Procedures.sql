-- stored procedure

SELECT * 
From 	employee_salary
where salary >= 50000
;


CREATE PROCEDURE large_salaries()
SELECT * 
From 	employee_salary
where salary >= 50000
;
CALL large_salaries();


DELIMITER $$
CREATE PROCEDURE large_salaries4()
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT * 
	FROM 	employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries4()
;


DELIMITER $$
CREATE PROCEDURE large_salaries6(employee_id_param int)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = employee_id_param;
END $$
DELIMITER ;

CALL large_salaries6(2)



