SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
a.JOB_TITLE AS Cargo,
h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
LEFT JOIN hr.jobs AS a
ON e.JOB_ID = a.JOB_ID
RIGHT JOIN hr.job_history as h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
LEFT JOIN hr.departments as d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;

-- SRC: utilizei o repositorio do Fernando para me ajudar a entender o que estava acontecendo https://github.com/tryber/sd-013-a-mysql-vocabulary-booster/pull/10/commits/a42c0ed5095bf7387061737582875931d937a864
