WITH temp (n, fact) AS 
(SELECT 0, 1 from dual-- Initial Subquery
  UNION ALL 
 SELECT n+1, (n+1)*fact FROM temp -- Recursive Subquery 
        WHERE n < 10)
SELECT * FROM temp;