USE hr
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN job VARCHAR(45))
BEGIN
  SELECT	CAST(AVG(SALARY) AS DECIMAL(9,2)) AS "Média salarial"
  FROM hr.jobs AS jobs
  LEFT JOIN hr.employees AS employees
  ON jobs.JOB_ID = employees.JOB_ID
  WHERE JOB_TITLE = job
    GROUP BY job;

END $$

DELIMITER ; 

CALL buscar_media_por_cargo('Programmer');
