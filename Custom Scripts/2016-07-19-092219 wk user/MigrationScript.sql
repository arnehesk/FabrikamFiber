/*
This migration script replaces uncommitted changes made to these objects:
Clients

Use this script to make necessary schema and data changes for these objects only. Schema changes to any other objects won't be deployed.

Schema changes and migration scripts are deployed in the order they're committed.
*/

ALTER TABLE dbo.Clients ADD FullName VARCHAR(100) NULL

GO

UPDATE dbo.Clients
SET     FullName = first_name + ' ' + last_name

GO

ALTER TABLE dbo.Clients ALTER COLUMN FullName VARCHAR(100) NOT NULL;
 
ALTER TABLE dbo.Clients DROP COLUMN first_name;

ALTER TABLE dbo.Clients DROP COLUMN last_name;
 
GO
