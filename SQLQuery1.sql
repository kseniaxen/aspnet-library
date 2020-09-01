CREATE TABLE [dbo].[Library](
	[id] [int] NOT NULL PRIMARY KEY IDENTITY,
	[name] [nvarchar](25) NULL,
	[author] [nvarchar](25) NULL,
	[datePublishing] [date] NULL,
	[publishing] [nvarchar](25) NULL,
	[pages] [int] NULL,
	[amount] [int] NULL
) ON [PRIMARY]

