USE master;
GO

IF DB_ID('Poseidon') IS NOT NULL
	DROP DATABASE Poseidon;
GO

IF @@ERROR = 3702 
   RAISERROR('�� ������ ������� ��-�� �������� ����������.', 127, 127) WITH NOWAIT, LOG;