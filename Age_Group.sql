SELECT 
    "Age Group", 
    SUM("Number of Deaths") AS "Number of Deaths", 
    SUM("Number of Deaths - Male") AS "Number of Deaths - Male", 
    SUM("Number of Deaths - Female") AS "Number of Deaths - Female",
    age_recode_27
FROM (
    -- Total de Mortes por Faixa Etária
    SELECT
        CASE 
            WHEN age_recode_27 = 10 THEN '20 to 24 years'
            WHEN age_recode_27 = 11 THEN '25 to 29 years'
            WHEN age_recode_27 = 12 THEN '30 to 34 years'
            WHEN age_recode_27 = 13 THEN '35 to 39 years'
            WHEN age_recode_27 = 14 THEN '40 to 44 years'
            WHEN age_recode_27 = 15 THEN '45 to 49 years'
            WHEN age_recode_27 = 16 THEN '50 to 54 years'
            WHEN age_recode_27 = 17 THEN '55 to 59 years'
            WHEN age_recode_27 = 18 THEN '60 to 64 years'
            WHEN age_recode_27 = 19 THEN '65 to 69 years'
            WHEN age_recode_27 = 20 THEN '70 to 74 years'
            WHEN age_recode_27 = 21 THEN '75 to 79 years'
            WHEN age_recode_27 = 22 THEN '80 to 84 years'
            WHEN age_recode_27 = 23 THEN '85 to 89 years'
            WHEN age_recode_27 = 24 THEN '90 to 94 years'
            WHEN age_recode_27 = 25 THEN '95 to 99 years'
            WHEN age_recode_27 = 26 THEN '100 years or more'
            WHEN age_recode_27 = 27 THEN 'Age not identified'
            WHEN age_recode_27 = 1 THEN 'Less than 1 month'
            WHEN age_recode_27 = 2 THEN '1 to 11 months'
            WHEN age_recode_27 = 3 THEN '1 year'
            WHEN age_recode_27 = 4 THEN '2 years'
            WHEN age_recode_27 = 5 THEN '3 years'
            WHEN age_recode_27 = 6 THEN '4 years'
            WHEN age_recode_27 = 7 THEN '5 a 9 years'
            WHEN age_recode_27 = 8 THEN '10 a 14 years'
            WHEN age_recode_27 = 9 THEN '15 a 19 years'
        END AS "Age Group",
        COUNT(*) AS "Number of Deaths",
        0 AS "Number of Deaths - Male",
        0 AS "Number of Deaths - Female",
        age_recode_27
    FROM DB
    GROUP BY "Age Group"
    
    UNION ALL
    
    -- Mortes Masculinas por Faixa Etária
    SELECT
        CASE 
            WHEN age_recode_27 = 10 THEN '20 to 24 years'
            WHEN age_recode_27 = 11 THEN '25 to 29 years'
            WHEN age_recode_27 = 12 THEN '30 to 34 years'
            WHEN age_recode_27 = 13 THEN '35 to 39 years'
            WHEN age_recode_27 = 14 THEN '40 to 44 years'
            WHEN age_recode_27 = 15 THEN '45 to 49 years'
            WHEN age_recode_27 = 16 THEN '50 to 54 years'
            WHEN age_recode_27 = 17 THEN '55 to 59 years'
            WHEN age_recode_27 = 18 THEN '60 to 64 years'
            WHEN age_recode_27 = 19 THEN '65 to 69 years'
            WHEN age_recode_27 = 20 THEN '70 to 74 years'
            WHEN age_recode_27 = 21 THEN '75 to 79 years'
            WHEN age_recode_27 = 22 THEN '80 to 84 years'
            WHEN age_recode_27 = 23 THEN '85 to 89 years'
            WHEN age_recode_27 = 24 THEN '90 to 94 years'
            WHEN age_recode_27 = 25 THEN '95 to 99 years'
            WHEN age_recode_27 = 26 THEN '100 years or more'
            WHEN age_recode_27 = 27 THEN 'Age not identified'
            WHEN age_recode_27 = 1 THEN 'Less than 1 month'
            WHEN age_recode_27 = 2 THEN '1 to 11 months'
            WHEN age_recode_27 = 3 THEN '1 year'
            WHEN age_recode_27 = 4 THEN '2 years'
            WHEN age_recode_27 = 5 THEN '3 years'
            WHEN age_recode_27 = 6 THEN '4 years'
            WHEN age_recode_27 = 7 THEN '5 a 9 years'
            WHEN age_recode_27 = 8 THEN '10 a 14 years'
            WHEN age_recode_27 = 9 THEN '15 a 19 years'
        END AS "Age Group",
        0 AS "Number of Deaths",
        COUNT(*) AS "Number of Deaths - Male",
        0 AS "Number of Deaths - Female",
        age_recode_27
    FROM DB
    WHERE sex = 'M'
    GROUP BY "Age Group"
    
    UNION ALL
    
    -- Mortes Femininas por Faixa Etária
    SELECT
        CASE 
            WHEN age_recode_27 = 10 THEN '20 to 24 years'
            WHEN age_recode_27 = 11 THEN '25 to 29 years'
            WHEN age_recode_27 = 12 THEN '30 to 34 years'
            WHEN age_recode_27 = 13 THEN '35 to 39 years'
            WHEN age_recode_27 = 14 THEN '40 to 44 years'
            WHEN age_recode_27 = 15 THEN '45 to 49 years'
            WHEN age_recode_27 = 16 THEN '50 to 54 years'
            WHEN age_recode_27 = 17 THEN '55 to 59 years'
            WHEN age_recode_27 = 18 THEN '60 to 64 years'
            WHEN age_recode_27 = 19 THEN '65 to 69 years'
            WHEN age_recode_27 = 20 THEN '70 to 74 years'
            WHEN age_recode_27 = 21 THEN '75 to 79 years'
            WHEN age_recode_27 = 22 THEN '80 to 84 years'
            WHEN age_recode_27 = 23 THEN '85 to 89 years'
            WHEN age_recode_27 = 24 THEN '90 to 94 years'
            WHEN age_recode_27 = 25 THEN '95 to 99 years'
            WHEN age_recode_27 = 26 THEN '100 years or more'
            WHEN age_recode_27 = 27 THEN 'Age not identified'
            WHEN age_recode_27 = 1 THEN 'Less than 1 month'
            WHEN age_recode_27 = 2 THEN '1 to 11 months'
            WHEN age_recode_27 = 3 THEN '1 year'
            WHEN age_recode_27 = 4 THEN '2 years'
            WHEN age_recode_27 = 5 THEN '3 years'
            WHEN age_recode_27 = 6 THEN '4 years'
            WHEN age_recode_27 = 7 THEN '5 a 9 years'
            WHEN age_recode_27 = 8 THEN '10 a 14 years'
            WHEN age_recode_27 = 9 THEN '15 a 19 years'
        END AS "Age Group",
        0 AS "Number of Deaths",
        0 AS "Number of Deaths - Male",
        COUNT(*) AS "Number of Deaths - Female",
        age_recode_27
    FROM DB
    WHERE sex = 'F'
    GROUP BY "Age Group"
) AS combined
GROUP BY "Age Group"
ORDER BY age_recode_27;