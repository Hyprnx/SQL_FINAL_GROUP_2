SELECT MONTH(INV_DAY) AS MONTH, SUM(INV_TOTAL) AS DOANHTHU
FROM HOADON
WHERE YEAR(INV_DAY)=2021
GROUP BY MONTH(INV_DAY)