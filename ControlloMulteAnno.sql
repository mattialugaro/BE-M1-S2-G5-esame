-- 1) Una SP parametrica che, ricevendo in input un anno, visualizzi l’elenco delle contravvenzioni effettuate in un quel determinato anno

CREATE PROCEDURE ControlloMulteAnno (@AnnoViolazione INT)
AS
BEGIN
    SELECT * FROM Verbale
    WHERE YEAR(Verbale.DataViolazione) = @AnnoViolazione
	ORDER BY DataViolazione
END
GO
