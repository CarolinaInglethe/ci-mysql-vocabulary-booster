SELECT JO.`JOB_TITLE` AS `Cargo`, 
ROUND(EM.`SALARY` / 2 ,2) AS `Média salarial`,
CASE
WHEN  ROUND(`SALARY` / 2 ,2) BETWEEN  2000 AND 5800 THEN 'Júnior'
WHEN  ROUND(`SALARY` / 2 ,2) BETWEEN  5801 AND 7500 THEN 'Pleno'
WHEN  ROUND(`SALARY` / 2 ,2) BETWEEN  7501 AND 10500 THEN 'Sênior'
WHEN  ROUND(EM.`SALARY` / 2 ,2) > 10500 THEN 'CEO'
ELSE NULL
END AS `Senioridade`
FROM hr.employees AS EM
JOIN hr.jobs AS JO
ON JO.`JOB_ID` = EM.`JOB_ID`
ORDER BY `Média salarial`, `Cargo`;
