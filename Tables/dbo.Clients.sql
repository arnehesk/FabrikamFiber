CREATE TABLE [dbo].[Clients]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Address_Street] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address_City] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address_State] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address_Zip] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients] ADD CONSTRAINT [PK__Customer__3214EC27A1E533D6] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
