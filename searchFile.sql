USE Poseidon
GO

DBCC TRACEON(5556, -1)
GO

/*
DBCC TRACEOFF(5556, -1)
*/

SELECT TOP (1000) [GUID]
      ,[DORID]
      ,[FILENAME]
      ,[CONTENT].PhysicalPathName() as FileStreamLocal
FROM [Poseidon].[dbo].[Records]
WHERE [CONTENT].PhysicalPathName() LIKE '%NAME_YOUR_FILE' OR
	  [CONTENT].PhysicalPathName() LIKE '%NAME_YOUR_FILE' OR
	  [CONTENT].PhysicalPathName() LIKE '%NAME_YOUR_FILE'
GO