

/* ==========================================================
Migra��o: <MajorRelease,,02>.<MinorRelease,,01>.<PointRelease,,00XX>
Altera��es: <Altera��es>
Motiva��o: <Motivos>
CR: <N�mero do CR,, N�o informado>
 ========================================================== */

IF NOT EXISTS (
  SELECT * FROM Versionamento.MigracoesSchema WHERE MajorRelease = '<MajorRelease,,02>' AND 
    MinorRelease = '<MinorRelease,,01>' AND PointRelease = '<PointRelease>')
  BEGIN
    EXEC Versionamento.USP_AtualizaVersaoSchema '<MajorRelease,,02>', '<MinorRelease,,01>', '<PointRelease>', '<Sufixo Arquivo>'
  END
GO
