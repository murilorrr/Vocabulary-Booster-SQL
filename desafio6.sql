SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) 'Nome completo',
JOB_TITLE AS Cargo,
START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON j.JOB_ID = jh.JOB_ID
INNER JOIN hr.departments AS d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;

-- SRC: utilizei o repositorio do Fernando para me ajudar a entender o que estava acontecendo https://github.com/tryber/sd-013-a-mysql-vocabulary-booster/pull/10/commits/a42c0ed5095bf7387061737582875931d937a864
