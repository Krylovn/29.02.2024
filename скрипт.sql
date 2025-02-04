USE [Proektnaya organizaciya]
GO
/****** Object:  Table [dbo].[Dogovor]    Script Date: 29.02.2024 10:57:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dogovor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Contractnumber] [int] NOT NULL,
	[Date] [nvarchar](255) NOT NULL,
	[Organizaciyaid] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Dogovor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 29.02.2024 10:57:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](100) NOT NULL,
	[Otdelid] [int] NOT NULL,
	[Polid] [int] NOT NULL,
	[Adres] [nvarchar](255) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Post] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizaciya]    Script Date: 29.02.2024 10:57:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizaciya](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Typeofactivity] [nvarchar](255) NOT NULL,
	[Country] [nvarchar](255) NOT NULL,
	[City] [nvarchar](255) NOT NULL,
	[Adres] [nvarchar](255) NOT NULL,
	[FIODirector] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Organizaciya] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 29.02.2024 10:57:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Floor] [int] NOT NULL,
	[Phone] [decimal](11, 0) NOT NULL,
	[Chief] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Otdel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pol]    Script Date: 29.02.2024 10:57:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Pol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proektnierabot]    Script Date: 29.02.2024 10:57:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proektnierabot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Startdate] [date] NOT NULL,
	[Enddate] [date] NOT NULL,
	[Dogovorid] [int] NOT NULL,
	[Otdelid] [int] NOT NULL,
 CONSTRAINT [PK_Proektnierabot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dogovor] ON 

INSERT [dbo].[Dogovor] ([id], [Contractnumber], [Date], [Organizaciyaid], [Price]) VALUES (1, 1, N'29.02.2024', 1, 25000)
INSERT [dbo].[Dogovor] ([id], [Contractnumber], [Date], [Organizaciyaid], [Price]) VALUES (2, 2, N'01.02.2024', 2, 183000)
SET IDENTITY_INSERT [dbo].[Dogovor] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([id], [FIO], [Otdelid], [Polid], [Adres], [Birthday], [Post]) VALUES (13, N'Федорчук Максим Александрович', 1, 1, N'372528, Свердловская область, город Щёлково, проезд Косиора, 98', CAST(N'1993-08-15' AS Date), N'Конструктор')
INSERT [dbo].[Employee] ([id], [FIO], [Otdelid], [Polid], [Adres], [Birthday], [Post]) VALUES (14, N'Голубева Татьяна Александровна', 1, 2, N'940504, Ивановская область, город Балашиха, проезд Славы, 26', CAST(N'2004-01-25' AS Date), N'Инженер')
INSERT [dbo].[Employee] ([id], [FIO], [Otdelid], [Polid], [Adres], [Birthday], [Post]) VALUES (15, N'Шаклатов Дмитрий Евгеньевич', 2, 1, N'628004, Новгородская область, город Наро-Фоминск, пр. Космонавтов, 62', CAST(N'1983-02-10' AS Date), N'Техник')
INSERT [dbo].[Employee] ([id], [FIO], [Otdelid], [Polid], [Adres], [Birthday], [Post]) VALUES (16, N'Захаров Виктор Алекаксандрович', 2, 1, N'457214, Иркутская область, город Зарайск, наб. Космонавтов, 58', CAST(N'2002-10-10' AS Date), N'Лаборант')
INSERT [dbo].[Employee] ([id], [FIO], [Otdelid], [Polid], [Adres], [Birthday], [Post]) VALUES (17, N'Перевезенцев Вовчик Хлебович', 1, 1, N'683553, Омская область, город Ногинск, проезд Чехова, 47', CAST(N'1965-08-31' AS Date), N'Техничка')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Organizaciya] ON 

INSERT [dbo].[Organizaciya] ([id], [Name], [Typeofactivity], [Country], [City], [Adres], [FIODirector]) VALUES (1, N'ProxiTech', N'Прогрмамирование', N'Россия', N'Свердловск', N'372528, Свердловская область, город Щёлково, проезд Косиора, 98', N'Шемарулин Александр Константинович')
INSERT [dbo].[Organizaciya] ([id], [Name], [Typeofactivity], [Country], [City], [Adres], [FIODirector]) VALUES (2, N'Impacta', N'Проекты', N'Россия', N'Ивановск', N'940504, Ивановская область, город Балашиха, проезд Славы, 26', N'Калякин Евгений Владимирович')
SET IDENTITY_INSERT [dbo].[Organizaciya] OFF
GO
SET IDENTITY_INSERT [dbo].[Otdel] ON 

INSERT [dbo].[Otdel] ([id], [Name], [Floor], [Phone], [Chief]) VALUES (1, N'Программы', 1, CAST(89302536902 AS Decimal(11, 0)), N'Иванов Иван Иванович')
INSERT [dbo].[Otdel] ([id], [Name], [Floor], [Phone], [Chief]) VALUES (2, N'Компы', 2, CAST(83962435896 AS Decimal(11, 0)), N'Петров Пётр Петрович')
SET IDENTITY_INSERT [dbo].[Otdel] OFF
GO
SET IDENTITY_INSERT [dbo].[Pol] ON 

INSERT [dbo].[Pol] ([id], [Name]) VALUES (1, N'Муж')
INSERT [dbo].[Pol] ([id], [Name]) VALUES (2, N'Жен')
SET IDENTITY_INSERT [dbo].[Pol] OFF
GO
SET IDENTITY_INSERT [dbo].[Proektnierabot] ON 

INSERT [dbo].[Proektnierabot] ([id], [Startdate], [Enddate], [Dogovorid], [Otdelid]) VALUES (1, CAST(N'2024-02-01' AS Date), CAST(N'2024-02-29' AS Date), 1, 1)
INSERT [dbo].[Proektnierabot] ([id], [Startdate], [Enddate], [Dogovorid], [Otdelid]) VALUES (2, CAST(N'2023-11-10' AS Date), CAST(N'2024-02-01' AS Date), 2, 2)
SET IDENTITY_INSERT [dbo].[Proektnierabot] OFF
GO
ALTER TABLE [dbo].[Dogovor]  WITH CHECK ADD  CONSTRAINT [FK_Dogovor_Organizaciya] FOREIGN KEY([Organizaciyaid])
REFERENCES [dbo].[Organizaciya] ([id])
GO
ALTER TABLE [dbo].[Dogovor] CHECK CONSTRAINT [FK_Dogovor_Organizaciya]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Otdel] FOREIGN KEY([Otdelid])
REFERENCES [dbo].[Otdel] ([id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Otdel]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Pol] FOREIGN KEY([Polid])
REFERENCES [dbo].[Pol] ([id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Pol]
GO
ALTER TABLE [dbo].[Proektnierabot]  WITH CHECK ADD  CONSTRAINT [FK_Proektnierabot_Dogovor] FOREIGN KEY([Dogovorid])
REFERENCES [dbo].[Dogovor] ([id])
GO
ALTER TABLE [dbo].[Proektnierabot] CHECK CONSTRAINT [FK_Proektnierabot_Dogovor]
GO
ALTER TABLE [dbo].[Proektnierabot]  WITH CHECK ADD  CONSTRAINT [FK_Proektnierabot_Otdel] FOREIGN KEY([Otdelid])
REFERENCES [dbo].[Otdel] ([id])
GO
ALTER TABLE [dbo].[Proektnierabot] CHECK CONSTRAINT [FK_Proektnierabot_Otdel]
GO
