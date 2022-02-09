SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
DATE(jobHistory.START_DATE) AS `Data de início`, employees.SALARY AS Salário
FROM hr.employees AS employees
INNER JOIN hr.job_history AS jobHistory
ON employees.EMPLOYEE_ID = jobHistory.EMPLOYEE_ID
WHERE MONTH(DATE(jobHistory.START_DATE)) IN (01, 02, 03)
ORDER BY `Nome Completo`, `Data de início` ASC;
