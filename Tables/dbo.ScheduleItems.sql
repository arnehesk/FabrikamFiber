CREATE TABLE [dbo].[ScheduleItems]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[EmployeeID] [int] NOT NULL,
[ServiceTicketID] [int] NOT NULL,
[Start] [datetime] NOT NULL,
[WorkHours] [int] NOT NULL,
[AssignedOn] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ScheduleItems] ADD CONSTRAINT [PK__Schedule__3214EC2785DD831A] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ScheduleItems] ADD CONSTRAINT [ScheduleItem_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScheduleItems] ADD CONSTRAINT [ScheduleItem_ServiceTicket] FOREIGN KEY ([ServiceTicketID]) REFERENCES [dbo].[ServiceTickets] ([ID]) ON DELETE CASCADE
GO
