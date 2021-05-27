USE Poseidon
GO

CREATE TABLE Poseidon.dbo.Records (
	ID			UNIQUEIDENTIFIER ROWGUIDCOL		NOT NULL		UNIQUE,
	DID			INTEGER							NOT NULL		PRIMARY KEY,
	FILENAME	NVARCHAR(250)					NOT NULL,
	LOCAL		VARBINARY(MAX) FILESTREAM		NOT NULL
)
GO

INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 1, 'filetest1', CAST('Seismic Data1' AS VARBINARY(MAX)));
INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 2, 'filetest2', CAST('Seismic Data2' AS VARBINARY(MAX)));
INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 3, 'filetest3', CAST('Seismic Data3' AS VARBINARY(MAX)));
INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 4, 'filetest4', CAST('Seismic Data' AS VARBINARY(MAX)));
INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 5, 'filetest5', CAST('Seismic Data5' AS VARBINARY(MAX)));
INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 6, 'filetest6', CAST('Seismic Dat6' AS VARBINARY(MAX)));
INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 7, 'filetest7', CAST('Seismic Data7' AS VARBINARY(MAX)));
INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 8, 'filetest8', CAST('Seismic Data8' AS VARBINARY(MAX)));
INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 9, 'filetest9', CAST('Seismic Data9' AS VARBINARY(MAX)));
INSERT INTO Poseidon.dbo.Records
	VALUES (NEWID(), 10, 'filetest10', CAST('Seismic Data10' AS VARBINARY(MAX)));