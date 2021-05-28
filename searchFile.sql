USE Poseidon
GO

DBCC TRACEON(5556, -1)
GO

/*
DBCC CHECKDB()
GO
*/

/*
DBCC TRACEOFF(5556, -1)
*/

SELECT TOP (10) [GUID]
      ,[DORID]
      ,[FILENAME]
      ,[CONTENT].PhysicalPathName() as FileStreamLocal
FROM [Poseidon].[dbo].[Records]
WHERE [CONTENT].PhysicalPathName() LIKE '%00000022-00000100-0002' OR
	  [CONTENT].PhysicalPathName() LIKE '%00000022-00000118-0002' OR
	  [CONTENT].PhysicalPathName() LIKE '%00000022-00000128-0002'
GO