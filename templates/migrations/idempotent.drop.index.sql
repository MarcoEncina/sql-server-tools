
--========================================================================
-- Dropando �ndice <index>
--========================================================================

IF EXISTS (SELECT name FROM sys.indexes WHERE name = '<index>') 
BEGIN 
  PRINT N'Dropando �ndice <index>'
  DROP INDEX <index>
END 
GO
