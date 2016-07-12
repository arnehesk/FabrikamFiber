CREATE TABLE [dbo].[ServiceLogEntries]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[CreatedAt] [datetime] NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedByID] [int] NULL,
[ServiceTicketID] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServiceLogEntries] ADD CONSTRAINT [PK__ServiceL__3214EC27A49646DF] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServiceLogEntries] ADD CONSTRAINT [ServiceLogEntry_CreatedBy] FOREIGN KEY ([CreatedByID]) REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[ServiceLogEntries] ADD CONSTRAINT [ServiceLogEntry_ServiceTicket] FOREIGN KEY ([ServiceTicketID]) REFERENCES [dbo].[ServiceTickets] ([ID]) ON DELETE CASCADE
GO
