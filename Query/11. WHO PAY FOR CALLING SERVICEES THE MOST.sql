SELECT KHACHHANG.CUS_CODE, CUS_NAME, CUS_PHONE, SUM(HOATDONG_PRICE) AS TOTAL
FROM KHACHHANG JOIN HOATDONG ON KHACHHANG.CUS_CODE = HOATDONG.CUS_CODE
WHERE HOATDONG_DESC = 'TELE'
GROUP BY KHACHHANG.CUS_CODE, CUS_NAME, CUS_PHONE
ORDER BY SUM(HOATDONG_PRICE) DESC