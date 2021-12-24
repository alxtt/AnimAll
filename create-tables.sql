SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[animals](
	[id] [uniqueidentifier] NOT NULL,
	[species] [varchar](32) NOT NULL,
	[breed] [varchar](32) NULL,
	[gender] [bit] NOT NULL,
	[age] [int] NULL,
	[infirm] [bit] NULL,
	[vaccinated] [bit] NULL,
	[shelter_id] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[animals] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[animals]  WITH CHECK ADD  CONSTRAINT [shelter_id] FOREIGN KEY([shelter_id])
REFERENCES [dbo].[shelters] ([id])
GO
ALTER TABLE [dbo].[animals] CHECK CONSTRAINT [shelter_id]
GO
​
CREATE TABLE [dbo].[users](
	[id] [uniqueidentifier] NOT NULL,
	[user_login] [varchar](32) NOT NULL,
	[user_password] [varchar](32) NOT NULL,
	[is_shelter] [bit] NOT NULL,
	[is_admin] [bit] NOT NULL,
	[user_name] [varchar](32) NULL,
	[user_location] [varchar](32) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[users] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE TABLE [dbo].[shelters](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NOT NULL,
	[shelter_name] [varchar](64) NOT NULL,
	[adress] [varchar](128) NOT NULL,
	[email] [varchar](128) NULL,
	[phone] [varchar](32) NULL,
	[website] [varchar](128) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[shelters] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[shelters]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO

CREATE TABLE [dbo].[likes](
	[user_id] [uniqueidentifier] NOT NULL,
	[animal_id] [uniqueidentifier] NOT NULL,
	[likes] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD FOREIGN KEY([animal_id])
REFERENCES [dbo].[animals] ([id])
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO

CREATE TABLE [dbo].[comments](
	[user_id] [uniqueidentifier] NOT NULL,
	[animal_id] [uniqueidentifier] NOT NULL,
	[content] [text] NOT NULL,
	[timedate] [timestamp] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([animal_id])
REFERENCES [dbo].[animals] ([id])
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
