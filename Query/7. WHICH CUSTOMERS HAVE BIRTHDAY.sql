-- ADJUST THE NUMBER TO CHANGE TO DIFFERENT MONTH
SELECT CUS_CODE, CUS_NAME, CUS_BIRTH 
FROM KHACHHANG
WHERE MONTH(CUS_BIRTH) = 6