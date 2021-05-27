USE master
GO

IF DB_ID('Poseidon') IS NOT NULL
	DROP DATABASE Poseidon;
GO

/*
IF @@ERROR = 3702 
   RAISERROR('If connect to DB open You will not be able to delete!', 127, 127) WITH NOWAIT, LOG;
GO
*/

CREATE DATABASE Poseidon 
ON 
PRIMARY ( NAME = Poseidon1,
	FILENAME = 'Ñ:\sql\DB\Poseidon\Poseidon1.mdf'),
FILEGROUP FileStreamG1 CONTAINS FILESTREAM ( NAME = PosFSG1,
	FILENAME = 'Ñ:\sql\DB\Poseidon\FS1\')
LOG ON ( NAME = PoseidonLog1,
	FILENAME = 'Ñ:\sql\DB\Poseidon\LOG\PoseidonLog1.ldf')
GO