CREATE OR ALTER VIEW BLACKLIST_VIEW AS
SELECT KHACHHANG.CUS_CODE, KHACHHANG.CUS_NAME, KHACHHANG.CUS_STATUS
FROM  KHACHHANG
WHERE CUS_STATUS = 'BLACKLIST' OR CUS_STATUS = 'Black_list' OR CUS_STATUS = 'BLACK_LIST'

SELECT * FROM BLACKLIST_VIEW;