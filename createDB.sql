USE master;
GO

IF DB_ID('Poseidon') IS NOT NULL
	DROP DATABASE Poseidon;
GO

IF @@ERROR = 3702 
   RAISERROR('БД нельзя удалить из-за открытых соединений.', 127, 127) WITH NOWAIT, LOG;