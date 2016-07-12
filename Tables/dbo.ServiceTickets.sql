CREATE TABLE [dbo].[ServiceTickets]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StatusValue] [int] NOT NULL,
[EscalationLevel] [int] NOT NULL,
[Opened] [datetime] NULL,
[Closed] [datetime] NULL,
[CustomerID] [int] NULL,
[CreatedByID] [int] NULL,
[AssignedToID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServiceTickets] ADD CONSTRAINT [PK__ServiceT__3214EC2759EDA5E5] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServiceTickets] ADD CONSTRAINT [ServiceTicket_AssignedTo] FOREIGN KEY ([AssignedToID]) REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[ServiceTickets] ADD CONSTRAINT [ServiceTicket_CreatedBy] FOREIGN KEY ([CreatedByID]) REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[ServiceTickets] ADD CONSTRAINT [ServiceTicket_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Clients] ([ID])
GO
