WITH SUBMISSION_HIERARCHY(EMPLOYEE_ID, EMAIL, MANAGER_ID) AS
(
-- INITIAL SUBQUERY
SELECT E1.EMPLOYEE_ID, E1.EMAIL, E1.MANAGER_ID
FROM EMPLOYEES E1
WHERE MANAGER_ID IS NULL
UNION ALL
-- RECURSIVE SUBQUERY
SELECT E2.EMPLOYEE_ID , E2.EMAIL, E2.MANAGER_ID
FROM EMPLOYEES E2
JOIN SUBMISSION_HIERARCHY SH ON E2.MANAGER_ID = SH.EMPLOYEE_ID
)
SELECT * FROM SUBMISSION_HIERARCHY;
--SELECT MANAGER_ID, COUNT(EMPLOYEE_ID) FROM SUBMISSION_HIERARCHY
--GROUP BY MANAGER_ID
--ORDER BY COUNT(EMPLOYEE_ID) DESC;