USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo TEXT)
BEGIN
SELECT ROUND(AVG(t1.SALARY), 2) AS `Média salarial`
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
WHERE JOB_TITLE = cargo
GROUP BY t2.JOB_TITLE;
END $$
