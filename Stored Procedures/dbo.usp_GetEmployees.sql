SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO

CREATE PROCEDURE [dbo].[usp_GetEmployees]
	--@parameter_name AS scalar_data_type ( = default_value ), ...
-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
AS
    BEGIN
        SET NOCOUNT ON;
        SELECT  FirstName ,
                LastName ,
                Address_Street ,
                Address_Zip ,
                Address_State ,
                ID ,
                [Identity]
        FROM    dbo.Employees;
    END;
GO
