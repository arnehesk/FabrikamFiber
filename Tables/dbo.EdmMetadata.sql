CREATE TABLE [dbo].[EdmMetadata]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ModelHash] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[EdmMetadata] ADD CONSTRAINT [PK__EdmMetad__3214EC0702B403E7] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
