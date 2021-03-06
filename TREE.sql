SELECT EMP.EMP_ID, COUNT(EMP_PATH.PATH) AS SUBS_COUNT
FROM EMP
JOIN (
    SELECT WITH_PATH.EMP_ID, WITH_PATH.PATH
    FROM (
            WITH TREE(EMP_ID, PATH)
            AS
            (
                    SELECT EMP.EMP_ID, ','||EMP.EMP_ID||','
                    FROM EMP
                    WHERE EMP.MAN_ID IS NULL
                UNION ALL
                    SELECT EMP.EMP_ID, TREE.PATH||EMP.EMP_ID||','
                    FROM EMP
                    JOIN TREE ON TREE.EMP_ID = EMP.MAN_ID
            )
            SELECT TREE.EMP_ID, TREE.PATH
            FROM TREE
        ) WITH_PATH
) EMP_PATH
ON EMP_PATH.PATH LIKE '%,'||EMP.EMP_ID||',%'
GROUP BY EMP.EMP_ID
ORDER BY SUBS_COUNT DESC;