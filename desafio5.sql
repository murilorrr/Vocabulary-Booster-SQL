SELECT
JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
CAST(MIN_SALARY as DECIMAL(9,2)) AS 'Média mínima mensal',
CAST(MAX_SALARY as DECIMAL(9,2)) AS 'Média Máxima mensal'
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY), Cargo;