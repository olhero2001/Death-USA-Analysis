SELECT 
	CASE 
    WHEN d.sex = "M" THEN "Male"
    WHEN d.sex = "F" THEN "Female"
    END AS "Sex", 
    CASE 
    WHEN d.marital_status = "M" THEN "Married"
    WHEN d.marital_status = "W" THEN "Widowed"
    WHEN d.marital_status = "D" THEN "Divorced"
    WHEN d.marital_status = "S" THEN "Single"
    WHEN d.marital_status = "U" THEN "Unknown"
    END AS "Marital Status", 
    CASE 
    WHEN d.age_recode_12 = 01 THEN "Under 1 Year"
    WHEN d.age_recode_12 = 02 THEN "1 to 4 Years"
    WHEN d.age_recode_12 = 03 THEN "5 to 14 Years"
    WHEN d.age_recode_12 = 04 THEN "15 to 24 Years"
    WHEN d.age_recode_12 = 05 THEN "25 to 34 Years"
    WHEN d.age_recode_12 = 06 THEN "35 to 44 Years"
    WHEN d.age_recode_12 = 07 THEN "45 to 54 Years"
    WHEN d.age_recode_12 = 08 THEN "55 to 64 Years"
    WHEN d.age_recode_12 = 09 THEN "65 to 74 Years"
    WHEN d.age_recode_12 = 10 THEN "75 to 84 Years"
    WHEN d.age_recode_12 = 11 THEN ">= 85 Years"
    WHEN d.age_recode_12 = 12 THEN "Age not stated"
    END AS "Age Group", 
    COUNT(*) AS "Number of Deaths"
FROM 
    DB d
GROUP BY 
    d.sex, d.marital_status, d.age_recode_12
HAVING 
    (d.age_recode_12, COUNT(*)) IN (
        SELECT 
            age_recode_12, MAX(NumberOfDeaths)
        FROM (
            SELECT 
                age_recode_12, sex, marital_status, COUNT(*) AS NumberOfDeaths 
            FROM 
                DB 
            GROUP BY 
                age_recode_12, sex, marital_status
        ) AS InnerQuery
        GROUP BY 
            age_recode_12
    )
ORDER BY 
    d.age_recode_12, "Number of Deaths" DESC;