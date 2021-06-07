CREATE OR ALTER PROCEDURE INVOICE_COLLECTION_DEADLINE @day DATE
AS
BEGIN
IF DAY(@day) = 5
	BEGIN 
	SELECT * FROM CTDK 
	WHERE  (DAY(REG_END) <= 5 AND MONTH(REG_END) = MONTH(@day)) 
	AND (REG_PAYMENT = N'NOT COMPLETED' OR REG_PAYMENT = 'LATE 10 DAY')
	END
ELSE IF DAY(@day) = 15
	BEGIN 
	SELECT * FROM CTDK 
	WHERE  (DAY(REG_END) <= 15 AND MONTH(REG_END) = MONTH(@day)) 
	AND (REG_PAYMENT = N'NOT COMPLETED' OR REG_PAYMENT = 'LATE 10 DAY')
	END
ELSE IF DAY(@day) = 25
	BEGIN 
	SELECT * FROM CTDK 
	WHERE  (DAY(REG_END) <= 25 AND MONTH(REG_END) = MONTH(@day)) 
	AND (REG_PAYMENT = N'NOT COMPLETED' OR REG_PAYMENT = 'LATE 10 DAY')
	END
END

EXEC INVOICE_COLLECTION_DEADLINE '2021-06-15'

--CHECK HOA_DON QUA NGAY
EXEC MEET_DEADLINE_STATUS

SELECT * FROM CTDK