
SELECT 
    CASE
        WHEN hispanic_originrace_recode IN (1, 2, 3, 4, 5, 9) THEN 'Hispanic'
        WHEN race_recode_5 = 1 THEN 'White'
        WHEN race_recode_5 = 2 THEN 'Black'
        WHEN race_recode_5 = 3 THEN 'American Indian'
        WHEN race_recode_5 = 4 THEN 'Asian or Pacific Islander'
        ELSE 'Other'
    END AS "Race",
    COUNT(*) AS "Number of Deaths"
FROM DB
GROUP BY 1
ORDER BY "Number of Deaths" DESC;

         SELECT 
    "Race_3", 
    "Number of Deaths",
    "Number of People"
FROM (
    SELECT
        CASE
            WHEN hispanic_originrace_recode IN (1,2,3,4,5,9) THEN "Hispanic"
            WHEN hispanic_originrace_recode = 6 THEN "Non - Hispanic white"
            WHEN hispanic_originrace_recode = 7 THEN "Non - Hispanic black"
            WHEN hispanic_originrace_recode = 8 THEN "Non - Hispanic other races"
        END AS "Race_3",
        CASE
            WHEN hispanic_originrace_recode IN (1,2,3,4,5,9) THEN 56500000
            WHEN hispanic_originrace_recode = 6 THEN 197900000 
            WHEN hispanic_originrace_recode = 7 THEN 42000000
            WHEN hispanic_originrace_recode = 8 THEN 33500000
        END AS "Number of People",
        COUNT(*) AS "Number of Deaths"
    FROM DB
    GROUP BY "Race_3"
    ORDER BY "Number of Deaths" DESC);