SELECT CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS `Nome completo`,
CONCAT(
IF(DAY(t2.START_DATE) > 9, DAY(t2.START_DATE), CONCAT(0, DAY(t2.START_DATE))), '/' ,
IF(MONTH(t2.START_DATE) > 9, MONTH(t2.START_DATE), CONCAT(0, MONTH(t2.START_DATE))),
'/' , YEAR(t2.START_DATE)
)
AS `Data de início`,
DATE_FORMAT(t2.END_DATE, "%d/%m/%Y")
AS `Data de rescisão`,
FORMAT(DATEDIFF(t2.END_DATE, t2.START_DATE) / 365, 2)  AS `Anos trabalhados`
FROM hr.employees AS t1
INNER JOIN hr.job_history AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados` ASC;
