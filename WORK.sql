WITH SUBMISSION_HIERARCHY(EMP_ID, MAN_ID, GENERATION) AS
(
-- INITIAL SUBQUERY
SELECT E1.EMP_ID, E1.MAN_ID, 0
FROM EMP E1
WHERE E1.MAN_ID IS NULL
UNION ALL
-- RECURSIVE SUBQUERY
SELECT E2.EMP_ID, E2.MAN_ID, SH.GENERATION+1
FROM EMP E2
JOIN SUBMISSION_HIERARCHY SH ON E2.MAN_ID = SH.EMP_ID
)
SELECT * FROM SUBMISSION_HIERARCHY;
--SELECT MANAGER_ID, COUNT(EMPLOYEE_ID) FROM SUBMISSION_HIERARCHY
--GROUP BY MANAGER_ID
--ORDER BY COUNT(EMPLOYEE_ID) DESC;