CREATE PROCEDURE CHECK_LOI
AS
BEGIN
SELECT HOPDONG.CUS_CODE, HOPDONG.SERVICE_CODE, LOI.ERROR_DESC
FROM HOPDONG
FULL JOIN LOI ON HOPDONG.CUS_CODE = LOI.CUSCODE
WHERE ((LOI.TE_CODE LIKE 'L1%') AND (HOPDONG.SERVICE_CODE LIKE 'DV1%'))
OR ((LOI.TE_CODE LIKE 'L2%') AND (HOPDONG.SERVICE_CODE LIKE 'DV2%'))
OR ((LOI.TE_CODE LIKE 'L3%') AND (HOPDONG.SERVICE_CODE LIKE 'DV3%'))
OR ((LOI.TE_CODE LIKE 'L4%') AND (HOPDONG.SERVICE_CODE LIKE 'DV4%'))
OR ((LOI.TE_CODE LIKE 'L5%') AND (HOPDONG.SERVICE_CODE LIKE 'DV5%'))
END;
EXEC CHECK_LOI