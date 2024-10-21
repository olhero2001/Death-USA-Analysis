SELECT 
	CASE 
    WHEN marital_status = "M" THEN "Married"
    WHEN marital_status = "W" THEN "Widowed	"
    WHEN marital_status = "D" THEN "Divorced"
    WHEN marital_status = "S" THEN "Single"
    WHEN marital_status = "U" THEN "Unknown"
    END AS "Marital Status",
    COUNT(*) AS "Number of Deaths"
FROM 
    DB
GROUP BY 
    marital_status
ORDER BY 
    COUNT(*) DESC;