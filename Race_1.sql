SELECT 
    "Race", 
    "Number of Deaths" 
FROM (
    SELECT
        CASE 
	        WHEN race = 18 THEN "Asian Indian"
            WHEN race = 28 THEN "Korean"
            WHEN race = 38 THEN "Samoan"
            WHEN race = 48 THEN "Vietnamese"
            WHEN race = 58 THEN "Guamanian"
            WHEN race = 68 THEN "Other Asian or Pacific Islander in areas reporting codes 18-58"
            WHEN race = 78 THEN "Combined other Asian or Pacific Islander, includes codes 18-68"
            WHEN race = 01 THEN "White"
            WHEN race = 02 THEN "Black"
            WHEN race = 03 THEN "American Indian (includes Aleuts and Eskimos)"
            WHEN race = 04 THEN "Chinese"
            WHEN race = 05 THEN "Japanese"
            WHEN race = 06 THEN "Hawaiian"
            WHEN race = 07 THEN "Filipino"
            WHEN race = 00 THEN "Other races"
            WHEN race = 08 THEN "Other Asian or Pacific Islander"
        END AS "Race",
        COUNT(*) AS "Number of Deaths"
    FROM DB
    GROUP BY "Race"
    ORDER BY "Number of Deaths" DESC);
    
   SELECT 
    "Race_1", 
    "Number of Deaths" 
FROM (
    SELECT
        CASE
            WHEN race_recode_3 = 1 THEN "White"
            WHEN race_recode_3 = 2 THEN "Other"
            WHEN race_recode_3 = 3 THEN "Black"
        END AS "Race_1",
        COUNT(*) AS "Number of Deaths"
    FROM DB
    GROUP BY "Race_1"
    ORDER BY "Number of Deaths" DESC);
    
      SELECT 
    "Race_1", 
    "Number of Deaths" 
FROM (
    SELECT
        CASE
            WHEN race_recode_3 = 1 THEN "White"
            WHEN race_recode_3 = 2 THEN "Other"
            WHEN race_recode_3 = 3 THEN "Black"
        END AS "Race_1",
        COUNT(*) AS "Number of Deaths"
    FROM DB
    GROUP BY "Race_1"
    ORDER BY "Number of Deaths" DESC);