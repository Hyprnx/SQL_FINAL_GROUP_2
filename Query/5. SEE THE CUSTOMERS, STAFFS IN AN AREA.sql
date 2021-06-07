SELECT KHACHHANG.BRANCH_CODE, COUNT(CUS_CODE) AS NUMBER
FROM KHACHHANG
GROUP BY BRANCH_CODE
HAVING COUNT(CUS_CODE) > 8
ORDER BY COUNT(CUS_CODE) DESC