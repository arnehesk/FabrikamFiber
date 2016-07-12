CREATE TABLE [dbo].[Alerts]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Created] [datetime] NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alerts] ADD CONSTRAINT [PK__Alerts__3214EC27D4834206] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
