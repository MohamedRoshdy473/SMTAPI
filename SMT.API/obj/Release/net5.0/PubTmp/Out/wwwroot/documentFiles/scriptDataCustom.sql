USE [HRDB]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 4/1/2021 9:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacultyName] [nvarchar](max) NULL,
	[UniversityID] [int] NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacultyDepartments]    Script Date: 4/1/2021 9:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacultyDepartments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacultyDepartmentName] [nvarchar](max) NULL,
	[FacultyId] [int] NOT NULL,
 CONSTRAINT [PK_FacultyDepartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositionLevels]    Script Date: 4/1/2021 9:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionLevels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](max) NULL,
 CONSTRAINT [PK_PositionLevels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 4/1/2021 9:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PositionName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professions]    Script Date: 4/1/2021 9:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ManagerID] [int] NOT NULL,
 CONSTRAINT [PK_Professions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universities]    Script Date: 4/1/2021 9:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UniversityName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Universities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD  CONSTRAINT [FK_Faculties_Universities_UniversityID] FOREIGN KEY([UniversityID])
REFERENCES [dbo].[Universities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Faculties] CHECK CONSTRAINT [FK_Faculties_Universities_UniversityID]
GO
ALTER TABLE [dbo].[FacultyDepartments]  WITH CHECK ADD  CONSTRAINT [FK_FacultyDepartments_Faculties_FacultyId] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FacultyDepartments] CHECK CONSTRAINT [FK_FacultyDepartments_Faculties_FacultyId]
GO
ALTER TABLE [dbo].[Professions]  WITH CHECK ADD  CONSTRAINT [FK_Professions_Employees_ManagerID] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Professions] CHECK CONSTRAINT [FK_Professions_Employees_ManagerID]
GO
