-- 2) Una SP parametrica che, ricevendo in input una data, visualizzi il totale dei punti decurtati in quella determinata data

CREATE PROCEDURE SommaPuntiData (@Data nvarchar(10))
AS
BEGIN
	SELECT DataViolazione, SUM(DecurtamentoPunti) AS TotalePuntiDecurtatiInData
	FROM Verbale
	WHERE DataViolazione = @Data
	GROUP BY DataViolazione
END
GO
