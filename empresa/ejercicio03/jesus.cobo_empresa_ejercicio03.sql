
SELECT (presu/9) AS presupuesto, numde
FROM tdepto
WHERE (presu/9) < 0.5
AND (presu/9) * 10 / 4 IN  (
    SELECT ((presu/9)*10 + 100) + (presu/9)  / 4 AS incremento  
    FROM tdepto
);

SELECT (presu/9) AS presupuesto, numde
FROM tdepto
WHERE (presu/9) < 0.5
AND ((presu/9) * 10 / 4) IN (
    SELECT (((presu/9) * 10) / 100) + ((presu/9) / 4) AS procentaje, (porcentaje + presupuesto)/4
    FROM tdepto
);

select presu from tdepto