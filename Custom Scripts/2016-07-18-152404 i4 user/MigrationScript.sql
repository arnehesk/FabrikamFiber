/*
This migration script replaces uncommitted changes made to these objects:
Clients

Use this script to make necessary schema and data changes for these objects only. Schema changes to any other objects won't be deployed.

Schema changes and migration scripts are deployed in the order they're committed.
*/

ALTER TABLE dbo.Clients ADD First_Name VARCHAR(25) NULL, Last_Name VARCHAR(25) NULL;

GO

UPDATE  dbo.Clients
SET     First_Name = SUBSTRING(FullName, 1, CHARINDEX(' ', FullName) - 1) ,
        Last_Name = SUBSTRING(FullName, CHARINDEX(' ', FullName) + 1, LEN(FullName));

GO

ALTER TABLE dbo.Clients ALTER COLUMN First_Name VARCHAR(25) NOT NULL;
 
ALTER TABLE dbo.Clients ALTER COLUMN Last_Name  VARCHAR(25) NOT NULL;
 
ALTER TABLE dbo.Clients DROP COLUMN FullName;

 
GO
