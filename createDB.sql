USE master;
GO

IF DB_ID('Poseidon') IS NOT NULL
	DROP DATABASE Poseidon;
GO

IF @@ERROR = 3702 
   RAISERROR('БД нельзя удалить из-за открытых соединений.', 127, 127) WITH NOWAIT, LOG;
GO

CREATE DATABASE Poseidon 
ON 
PRIMARY ( NAME = poseidon1,
	FILENAME = 'D:\SQL\DB\Poseidon'),
FILEGROUP FileStreamG1 CONTAINS FILESTREAM ( NAME = PosFSG1,
	FILENAME = 'D:\SQL\DB\Poseidon\FS1')
LOG ON ( NAME = PosLog1,
	FILENAME = 'D:\SQL\DB\Poseidon\LOG\PoseidonLog1.ldf')
GO