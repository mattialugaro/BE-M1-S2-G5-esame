-- 1. Conteggio verbali trascritti
-- SELECT COUNT(*) AS VerbaliTrascritti FROM Verbale 
-- WHERE DataTrascrizioneVerbale < GETDATE()

-- 2. Conteggio verbali trascritti raggruppati per anagrafe
-- SELECT DataTrascrizioneVerbale, Nome, Cognome, COUNT(*) AS VerbaliTrascritti
-- FROM Anagrafica AS A INNER JOIN Verbale AS V ON A.IDVerbale = V.IDVerbale 
-- GROUP BY DataTrascrizioneVerbale, Nome, Cognome

-- 3. Conteggio verbali trascritti raggruppati per tipo di violazione
-- SELECT Descrizione, COUNT(*) AS VerbaliTrascritti
-- FROM TipoViolazione AS TV INNER JOIN Verbale AS V ON TV.IDViolazione = V.IDViolazione 
-- GROUP BY Descrizione

-- 4. Totale punti decurtati per ogni anagrafe
-- SELECT Nome, Cognome, SUM(DecurtamentoPunti) AS TotalePuntiDecurtati
-- FROM Anagrafica AS A INNER JOIN Verbale AS V ON A.IDVerbale = V.IDVerbale 
-- GROUP BY DecurtamentoPunti, Nome, Cognome

-- 5. Cognome, Nome, Data violazione, Indirizzo violazione, importo e punti decurtati per tutti gli anagrafici residenti a Palermo
-- SELECT Nome, Cognome, Citta, DataViolazione, IndirizzoViolazione, Importo, DecurtamentoPunti
-- FROM Anagrafica AS A INNER JOIN Verbale AS V ON A.IDVerbale = V.IDVerbale 
-- WHERE Citta = 'Palermo'

-- 6. Cognome, Nome, Indirizzo, Data violazione, importo e punti decurtati per le violazioni fatte tra il febbraio 2009 e luglio 2009
-- SELECT Nome, Cognome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti
-- FROM Anagrafica AS A INNER JOIN Verbale AS V ON A.IDVerbale = V.IDVerbale 
-- WHERE DataViolazione BETWEEN '2009-02-01' AND '2009-07-31'

-- 7. Totale degli importi per ogni anagrafico
-- SELECT Nome, Cognome, SUM(Importo) AS TotaleImportoSanzioni
-- FROM Anagrafica AS A INNER JOIN Verbale AS V ON A.IDVerbale = V.IDVerbale
-- GROUP BY Nome, Cognome

-- 8. Visualizzazione di tutti gli anagrafici residenti a Palermo
-- SELECT * FROM Anagrafica WHERE Citta = 'Palermo'

-- 10. Conteggio delle violazioni contestate raggruppate per Nominativo dell’agente di Polizia
-- SELECT NominativoAgente, COUNT(*) AS TotaleMulteEffettuate
-- FROM Verbale AS V INNER JOIN TipoViolazione AS TV ON V.IDViolazione = TV.IDViolazione
-- GROUP BY NominativoAgente ORDER BY TotaleMulteEffettuate DESC

-- 11. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino il decurtamento di 5 punti
-- SELECT Nome, Cognome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti
-- FROM Anagrafica AS A INNER JOIN Verbale AS V ON A.IDVerbale = V.IDVerbale 
-- WHERE DecurtamentoPunti > 5

-- 12. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino l’importo di 400 euro
-- SELECT Nome, Cognome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti
-- FROM Anagrafica AS A INNER JOIN Verbale AS V ON A.IDVerbale = V.IDVerbale 
-- WHERE Importo > 400