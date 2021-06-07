SELECT MONTH(HOATDONG_DAY) AS MONTH, SUM(HOATDONG_PRICE) AS DOANHTHU
FROM HOATDONG
WHERE HOATDONG_PRICE>0 AND YEAR(HOATDONG_DAY) = 2021
GROUP BY MONTH(HOATDONG_DAY)