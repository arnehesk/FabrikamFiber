CREATE TABLE [dbo].[Employees]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address_Street] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address_City] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address_State] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address_Zip] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Identity] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ServiceAreas] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [PK__Employee__3214EC2776C9FF06] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
