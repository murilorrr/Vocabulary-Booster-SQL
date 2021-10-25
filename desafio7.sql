SELECT 
*,
UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) 'Nome completo',
START_DATE AS "Data de início"
-- AS 'Salário'
FROM hr.job_history AS h
LEFT JOIN hr.employees AS e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (1,2,3);