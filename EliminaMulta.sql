-- 3) Una SP che consenta di eliminare un determinato verbale identificandolo con il proprio identificativo

CREATE PROCEDURE EliminaMulta (@IDMulta int)
AS
BEGIN
	DELETE FROM Verbale WHERE IDVerbale = @IDMulta
END
GO
