-- 9. Query parametrica che visualizzi Data violazione, Importo e decurtamento punti relativi ad una certa data

CREATE PROCEDURE ControlloData (@Data nvarchar(10))
AS
BEGIN
	SELECT DataViolazione, Importo, DecurtamentoPunti
	FROM Verbale
	WHERE DataViolazione = @Data
END
GO
