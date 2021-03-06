USE [HRDB]
GO
/****** Object:  Table [dbo].[EducationStatus]    Script Date: 5/6/2021 11:48:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EducationStatusName] [nvarchar](max) NULL,
 CONSTRAINT [PK_EducationStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School]    Script Date: 5/6/2021 11:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [nvarchar](max) NULL,
 CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolDepartments]    Script Date: 5/6/2021 11:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolDepartments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolDepartmentName] [nvarchar](max) NULL,
	[SchoolId] [int] NOT NULL,
 CONSTRAINT [PK_SchoolDepartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SchoolDepartments]  WITH CHECK ADD  CONSTRAINT [FK_SchoolDepartments_School_SchoolId] FOREIGN KEY([SchoolId])
REFERENCES [dbo].[School] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SchoolDepartments] CHECK CONSTRAINT [FK_SchoolDepartments_School_SchoolId]
GO
