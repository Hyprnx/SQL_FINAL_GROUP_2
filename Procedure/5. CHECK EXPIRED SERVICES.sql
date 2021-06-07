CREATE OR ALTER PROCEDURE update_contract
AS
BEGIN
DECLARE @reg_end as DATETIME
DECLARE @reg_payment as NVARCHAR(25)
DECLARE @reg_code as NVARCHAR(10)
DECLARE @contract_code as NVARCHAR(5)
DECLARE @dur as DATETIME
DECLARE @today as DATETIME

SET @today = GETDATE()
SET @dur = dateadd(day,-1,@today)
DECLARE update_contract CURSOR FOR
SELECT REG_CODE, CONTRACT_CODE, REG_END, REG_PAYMENT FROM CTDK

OPEN update_contract
FETCH NEXT FROM update_contract
	INTO @reg_code,@contract_code, @reg_end, @reg_payment
WHILE @@FETCH_STATUS = 0
BEGIN
IF @reg_end <= @dur and @reg_payment = N'COMPLETED'
BEGIN
	UPDATE HOPDONG SET CONTRACT_STATUS = 'INACTIVE' WHERE CONTRACT_CODE= @contract_code
	UPDATE CTDK SET REG_PAYMENT = 'PASS' WHERE CURRENT OF update_contract
END
ELSE
FETCH NEXT FROM update_contract
	INTO  @reg_code, @contract_code, @reg_end, @reg_payment
END
CLOSE update_contract
DEALLOCATE update_contract
END;

EXEC update_contract