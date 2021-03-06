USE [master]
GO
/****** Object:  Database [SMTDB]    Script Date: 5/10/2021 10:31:41 AM ******/
CREATE DATABASE [SMTDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SMTDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SMTDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SMTDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SMTDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SMTDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SMTDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SMTDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SMTDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SMTDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SMTDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SMTDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SMTDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SMTDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SMTDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SMTDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SMTDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SMTDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SMTDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SMTDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SMTDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SMTDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SMTDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SMTDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SMTDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SMTDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SMTDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SMTDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SMTDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SMTDB] SET RECOVERY FULL 
GO
ALTER DATABASE [SMTDB] SET  MULTI_USER 
GO
ALTER DATABASE [SMTDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SMTDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SMTDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SMTDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SMTDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SMTDB', N'ON'
GO
ALTER DATABASE [SMTDB] SET QUERY_STORE = OFF
GO
USE [SMTDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SMTDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/10/2021 10:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/10/2021 10:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/10/2021 10:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/10/2021 10:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/10/2021 10:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/10/2021 10:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/10/2021 10:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/10/2021 10:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignedProject]    Script Date: 5/10/2021 10:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignedProject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
 CONSTRAINT [PK_AssignedProject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Arrival] [datetime2](7) NOT NULL,
	[Departure] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Certificate1] [nvarchar](max) NULL,
	[CertificateDate] [datetime2](7) NOT NULL,
	[CertificatePlace] [nvarchar](max) NULL,
	[EmployeeId] [int] NOT NULL,
 CONSTRAINT [PK_Certificate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compensation]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compensation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Compensation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contractors]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contractors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractorName] [nvarchar](max) NULL,
	[ContactName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[RelevantPhone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contractors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NULL,
	[TrainingTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CvBank]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CvBank](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ProfessionId] [int] NOT NULL,
	[Cv] [nvarchar](max) NULL,
	[Accepted] [bit] NOT NULL,
 CONSTRAINT [PK_CvBank] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataSheets]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSheets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentLink] [nvarchar](max) NULL,
	[OfferId] [int] NOT NULL,
 CONSTRAINT [PK_DataSheets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentsCategories]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_DocumentsCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[ProfessionId] [int] NULL,
	[Gender] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[DateOfBirth] [nvarchar](max) NULL,
	[MaritalStatus] [nvarchar](max) NULL,
	[GraduatioYear] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[RelevantPhone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[HiringDateHiringDate] [nvarchar](max) NULL,
	[AllowedLeaveDays] [int] NOT NULL,
	[Mobile] [nvarchar](max) NULL,
	[EmailCompany] [nvarchar](max) NULL,
	[NationalId] [nvarchar](max) NULL,
	[PositionId] [int] NOT NULL,
	[PositionlevelId] [int] NOT NULL,
	[FacultyDepartmentId] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeDocument]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDocument](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentName] [nvarchar](max) NULL,
	[EmployeeId] [int] NOT NULL,
	[FileName] [nvarchar](max) NULL,
 CONSTRAINT [PK_EmployeeDocument] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EndUsers]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[ContactName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[RelevantPhone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_EndUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[EvaluationProfessionId] [int] NOT NULL,
	[EvaluationDegreee] [decimal](18, 2) NOT NULL,
	[EvaluationDate] [datetime2](7) NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvaluationProfession]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluationProfession](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfessionId] [int] NOT NULL,
	[EvaluationTypeId] [int] NOT NULL,
 CONSTRAINT [PK_EvaluationProfession] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvaluationType]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluationType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_EvaluationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Excuse]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excuse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Time] [nvarchar](max) NULL,
	[Hours] [int] NOT NULL,
	[Approved] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Excuse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacultyName] [nvarchar](max) NULL,
	[UniversityId] [int] NOT NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacultyDepartment]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacultyDepartment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacultyDepartmentName] [nvarchar](max) NULL,
	[FacultyId] [int] NOT NULL,
 CONSTRAINT [PK_FacultyDepartment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Governorates]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Governorates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GovernorateName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Governorates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstructorName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[HiringDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveFile]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveFile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[LeaveRequestId] [int] NOT NULL,
 CONSTRAINT [PK_LeaveFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveRequest]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[LeaveTypeId] [int] NOT NULL,
	[Start] [datetime2](7) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Days] [int] NOT NULL,
	[AlternativeEmpId] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[AlternativeAddress] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_LeaveRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeavesType]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeavesType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_LeavesType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MissionRequest]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MissionRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Start] [datetime2](7) NOT NULL,
	[End] [datetime2](7) NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_MissionRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NeedsCategory]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NeedsCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_NeedsCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NeedsRequest]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NeedsRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[NeedRequestDate] [datetime2](7) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_NeedsRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferDescriptions]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferDescriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DescriptionDate] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[OffersId] [int] NOT NULL,
 CONSTRAINT [PK_OfferDescriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferDocuments]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentName] [nvarchar](max) NULL,
	[DocumentFile] [nvarchar](max) NULL,
	[OfferId] [int] NOT NULL,
 CONSTRAINT [PK_OfferDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OfferCreationDate] [datetime2](7) NOT NULL,
	[OfferStatusId] [int] NOT NULL,
	[ProjectCostsId] [int] NOT NULL,
	[ProjectsId] [int] NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferStatus]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OfferStatusName] [nvarchar](max) NULL,
 CONSTRAINT [PK_OfferStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PositionName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositionLevel]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionLevel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](max) NULL,
 CONSTRAINT [PK_PositionLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profession]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profession](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ManagerId] [int] NULL,
 CONSTRAINT [PK_Profession] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectComponents]    Script Date: 5/10/2021 10:31:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectComponents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectComponentName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectComponents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectCosts]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectCosts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cost] [int] NOT NULL,
 CONSTRAINT [PK_ProjectCosts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectDescriptions]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDescriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DescriptionDate] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ProjectId] [int] NOT NULL,
	[ProjectUpdateId] [int] NULL,
 CONSTRAINT [PK_ProjectDescriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectDocuments]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentFile] [nvarchar](max) NULL,
	[ProjectId] [int] NOT NULL,
	[DocumentsCategoryId] [int] NOT NULL,
	[ProjectUpdateId] [int] NULL,
 CONSTRAINT [PK_ProjectDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NULL,
	[Rank] [int] NOT NULL,
	[ProjectCreationDate] [datetime2](7) NOT NULL,
	[ProjectStatusId] [int] NOT NULL,
	[ContractorsId] [int] NOT NULL,
	[EndUsersId] [int] NOT NULL,
	[ProjectComponentsId] [int] NOT NULL,
	[GovernoratesId] [int] NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectStatus]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectStatusName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projectUpdates]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projectUpdates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DueDate] [datetime2](7) NOT NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_projectUpdates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Training]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Training](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[Certified] [nvarchar](max) NULL,
	[TrainingPlace] [nvarchar](max) NULL,
	[EmployeeId] [int] NOT NULL,
	[InstructorId] [int] NOT NULL,
	[TrainingProfessionId] [int] NOT NULL,
 CONSTRAINT [PK_Training] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingProfession]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingProfession](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfessionId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_TrainingProfession] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingType]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrainingTypeName] [nvarchar](max) NULL,
 CONSTRAINT [PK_TrainingType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[University]    Script Date: 5/10/2021 10:31:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[University](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UniversityName] [nvarchar](max) NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210418121045_db', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210419072955_db2', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210419082124_db3', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210420091540_addProjectUpdateId', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210420125343_addgovernorate', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210420125458_addgovernoratess', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210420130118_addgovernorates2', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210428092701_nulableprojectupdateId', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210510074137_EditInOfferDocuments', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210510080048_EditInOffers', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210510082146_EditInOffers1', N'5.0.5')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0da69533-efbd-435e-a090-c4e40231d3af', N'CEO', N'CEO', N'f1568902-80a5-4601-8c7a-815e0c3634fd')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4a479ea5-6e11-47a1-9996-d7f126991f49', N'PreSalesManager', N'PRESALESMANAGER', N'e03e1b2b-5a1b-4389-81a4-dda8d8876103')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b3ef0089-66ec-42ed-bba9-90b9b7db0f5e', N'PreSales', N'PRESALES', N'a863297c-24ab-476b-940e-917ef1860783')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cfc07764-ce23-4172-8ab9-1c95deeb16a5', N'Admin', N'ADMIN', N'4612eead-203e-43e3-920d-f2894ef5d2de')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f297db29-cec8-4483-9f9e-981440981cd6', N'Sales', N'SALES', N'29303faa-0dba-45d0-9275-1bee086e869a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fd2e5a6a-e634-4f2f-bea0-6fc57ca867e2', N'SalesManager', N'SALESMANAGER', N'fb6ce615-585a-46f7-a296-dba3d4ba9d0b')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3042, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3043, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3044, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3045, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'129a2047-a2e1-4072-94e6-3277d6e60bc1')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3046, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3047, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3048, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3049, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3050, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'ac491e5b-5449-4750-b7c7-758bf6517cbe')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3051, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3052, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3053, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3054, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3055, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'8fc02e8a-c1af-4821-aead-927601419db4')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3056, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3057, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3058, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3059, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3060, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'2eab01e6-0653-4ce7-909f-5d1f9065782a')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3061, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3062, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3063, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3064, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3065, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'126e769c-1fd5-46f1-9776-0742f85408a2')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3066, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3067, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3068, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3069, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3070, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'f59b42f8-0a52-4563-811d-90242635bd83')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3071, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3072, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mohamed_Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3073, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'mhmdrshdy29@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3074, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3075, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'jti', N'a639f46f-a30a-4a3b-803a-572df16519e4')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3076, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3077, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3078, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3079, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3080, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'090457de-24f4-46cd-a697-2f280fc3d152')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3081, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3082, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3083, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3084, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3085, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'468ee8e8-c069-4ec2-894c-a730fad3e585')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3086, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3087, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mohamed_Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3088, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'mhmdrshdy29@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3089, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3090, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'jti', N'391cc5e6-94ff-4c03-b3c3-2bb5df2e50a6')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3091, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3092, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mohamed_Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3093, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'mhmdrshdy29@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3094, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3095, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'jti', N'c4146e63-32c6-4cb9-8285-917e9539b917')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3096, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3097, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mohamed_Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3098, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'mhmdrshdy29@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3099, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3100, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'jti', N'b6c9625a-e9ea-4d8b-a98b-21e811dbfe17')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3101, N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4047, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4048, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4049, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4050, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'20a5709a-c69b-4c6f-ae96-cde1b0c0fa8b')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4051, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4052, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4053, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4054, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4055, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'ef6c3b08-7313-4662-92ad-0b2fc3593d4a')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4056, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4057, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4058, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4059, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4060, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'ce30080c-3bf2-4f7a-a53d-c01dbbfe86a8')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4061, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4062, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4063, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4064, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4065, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'37d5d3ec-7a8b-4ccb-ac06-3972d279490f')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4066, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4067, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4068, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4069, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4070, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'8216c6a4-3d29-43ab-9ad1-ce6464a123f9')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4071, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'73346948-6995-4bc5-bc34-1d7d04b01e71', N'0da69533-efbd-435e-a090-c4e40231d3af')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0803e98a-b787-4018-988e-19b053db9b79', N'cfc07764-ce23-4172-8ab9-1c95deeb16a5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'cfc07764-ce23-4172-8ab9-1c95deeb16a5')
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0803e98a-b787-4018-988e-19b053db9b79', N'ApplicationUser', N'Roshdy', N'ROSHDY', N'Roshdy@gmail.com', N'ROSHDY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELA6t/mDo6SHAP9r4NA7uq6i+o9qPjON1nZaaXcttHJxklqMUqlO7CwnHUGTrajMcA==', N'XJGH5MZKWL6N5KV6UFEY2XYNVCS5L7EG', N'75cbbcc0-1760-4ced-9990-afd399396539', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3c9ce5a3-0582-42d4-bb5e-45c1f58236b7', N'ApplicationUser', N'Mohamed_Roshdy', N'MOHAMED_ROSHDY', N'mhmdrshdy29@gmail.com', N'MHMDRSHDY29@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPqryK95KIapIYnaMf6UUGc4ziArCN7+atB2pleIxKuOenz76OvkgTvkOiv5Bp8IQw==', N'W2D35ZIMULVW7T6O5253AVFWMRZDIANJ', N'08270e85-4157-4c70-bfb8-7dac9827e728', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'73346948-6995-4bc5-bc34-1d7d04b01e71', N'ApplicationUser', N'shahynaz', N'SHAHYNAZ', N'shahynazhanfy@gmail.com', N'SHAHYNAZHANFY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDw/kG1q+N/vk9LS/kqL2lMIvAgdmKbbyfhb6in4ita53MdftZSIEYZsjKmuoKPyHw==', N'X6SAYLWAVG4FPKB4PIYCYWMVJXMVNHTV', N'd5381299-ae19-4ac3-8895-015a91217301', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Contractors] ON 

INSERT [dbo].[Contractors] ([ID], [ContractorName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (1, N'Value', N'Value', N'01010536968', N'01010536968', N'Value@gmail.com')
INSERT [dbo].[Contractors] ([ID], [ContractorName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (2, N'Korra', N'Korra', N'01010536968', N'01010536968', N'Korra@gmail.com')
INSERT [dbo].[Contractors] ([ID], [ContractorName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (3, N'Leeds', N'Leeds', N'01010536968', N'01010536968', N'Leeds@gmail.com')
INSERT [dbo].[Contractors] ([ID], [ContractorName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (1002, N'City Stars Mall', N'Roshdy', N'01115609350', N'01010536968', N'Roshdy@gmail.com')
SET IDENTITY_INSERT [dbo].[Contractors] OFF
SET IDENTITY_INSERT [dbo].[DocumentsCategories] ON 

INSERT [dbo].[DocumentsCategories] ([Id], [CategoryName]) VALUES (1, N'BoQ')
INSERT [dbo].[DocumentsCategories] ([Id], [CategoryName]) VALUES (2, N'Drawing')
INSERT [dbo].[DocumentsCategories] ([Id], [CategoryName]) VALUES (3, N'Any Queries')
INSERT [dbo].[DocumentsCategories] ([Id], [CategoryName]) VALUES (4, N'Spec.')
SET IDENTITY_INSERT [dbo].[DocumentsCategories] OFF
SET IDENTITY_INSERT [dbo].[EndUsers] ON 

INSERT [dbo].[EndUsers] ([ID], [CompanyName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (1, N'Kenoz', N'Kenoz', N'01010536968', N'01010536968', N'Kenoz@gmail.com')
INSERT [dbo].[EndUsers] ([ID], [CompanyName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (2, N'Peugeot', N'Peugeot', N'01010536968', N'01010536968', N'Peugeot@gmail.com')
INSERT [dbo].[EndUsers] ([ID], [CompanyName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (3, N'Grand Square Mall', N'Grand Square Mall', N'01010536968', N'01010536968', N'GrandSquareMall@gmail.com')
SET IDENTITY_INSERT [dbo].[EndUsers] OFF
SET IDENTITY_INSERT [dbo].[Governorates] ON 

INSERT [dbo].[Governorates] ([Id], [GovernorateName]) VALUES (1, N'Alex')
INSERT [dbo].[Governorates] ([Id], [GovernorateName]) VALUES (2, N'Cairo')
INSERT [dbo].[Governorates] ([Id], [GovernorateName]) VALUES (3, N'Giza')
INSERT [dbo].[Governorates] ([Id], [GovernorateName]) VALUES (4, N'Minia')
SET IDENTITY_INSERT [dbo].[Governorates] OFF
SET IDENTITY_INSERT [dbo].[OfferStatus] ON 

INSERT [dbo].[OfferStatus] ([Id], [OfferStatusName]) VALUES (1, N'Accept')
INSERT [dbo].[OfferStatus] ([Id], [OfferStatusName]) VALUES (2, N'Refused')
SET IDENTITY_INSERT [dbo].[OfferStatus] OFF
SET IDENTITY_INSERT [dbo].[ProjectComponents] ON 

INSERT [dbo].[ProjectComponents] ([Id], [ProjectComponentName]) VALUES (1, N'CCTV')
INSERT [dbo].[ProjectComponents] ([Id], [ProjectComponentName]) VALUES (6, N'Active Data')
INSERT [dbo].[ProjectComponents] ([Id], [ProjectComponentName]) VALUES (7, N'Passive Data')
SET IDENTITY_INSERT [dbo].[ProjectComponents] OFF
SET IDENTITY_INSERT [dbo].[ProjectDescriptions] ON 

INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1, N'Test', CAST(N'2021-05-09T10:01:57.3760000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1002)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (2, N'Test', CAST(N'2021-05-09T10:01:57.3760000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1002)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (3, N'Test BoQ', CAST(N'2021-05-09T10:02:49.5800000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1004)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (4, N'Test Spec', CAST(N'2021-05-09T10:04:08.4940000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1005)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (5, N'Test Spec', CAST(N'2021-05-09T10:04:08.4940000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1005)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (6, N'Test Spec', CAST(N'2021-05-09T10:04:08.4940000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1005)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (7, N'Drawing', CAST(N'2021-05-09T10:13:47.9720000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1008)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (8, N'Any Queries', CAST(N'2021-05-09T10:15:14.0930000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1009)
SET IDENTITY_INSERT [dbo].[ProjectDescriptions] OFF
SET IDENTITY_INSERT [dbo].[ProjectDocuments] ON 

INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1, N'Test1', 5, 1, 4)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2, N'Test2', 5, 2, 4)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1002, N'CleanArch.txt', 1, 2, 1002)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1003, N'BioMedicalEquipment.csv', 1, 1, 1004)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1004, N'BioMedicalEquipment.csv', 1, 4, 1005)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1005, N'horizon.jpg', 1, 2, 1008)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1006, N'car.jpg', 1, 3, 1009)
SET IDENTITY_INSERT [dbo].[ProjectDocuments] OFF
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId], [GovernoratesId]) VALUES (1, N'Zaha Mall', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 1, 1, 1, 1, 1)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId], [GovernoratesId]) VALUES (5, N'Four Season Hotel', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 3, 3, 3, 6, 2)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId], [GovernoratesId]) VALUES (6, N'Alex Factory', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 3, 2, 2, 7, 3)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId], [GovernoratesId]) VALUES (7, N'Light Of World', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 2, 3, 1, 7, 4)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId], [GovernoratesId]) VALUES (10, N'Light Of World 2', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 2, 3, 1, 7, 4)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [ProjectComponentsId], [GovernoratesId]) VALUES (11, N'Light Of World 2', 9, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 2, 3, 1, 7, 4)
SET IDENTITY_INSERT [dbo].[Projects] OFF
SET IDENTITY_INSERT [dbo].[ProjectStatus] ON 

INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (1, N'New')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (2, N'Offered')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (3, N'Hold')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (4, N'Refused')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (5, N'Win')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (6, N'Lose')
SET IDENTITY_INSERT [dbo].[ProjectStatus] OFF
SET IDENTITY_INSERT [dbo].[projectUpdates] ON 

INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1, CAST(N'2020-03-29T13:34:00.0000000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (3, CAST(N'2021-03-29T13:34:00.0000000' AS DateTime2), 5)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (4, CAST(N'2022-03-29T13:34:00.0000000' AS DateTime2), 5)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1002, CAST(N'2021-05-09T10:01:57.3760000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1004, CAST(N'2021-05-09T10:02:49.5800000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1005, CAST(N'2021-05-09T10:04:08.4940000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1008, CAST(N'2021-05-09T10:13:47.9720000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1009, CAST(N'2021-05-09T10:15:14.0930000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[projectUpdates] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignedProject_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_AssignedProject_EmployeeId] ON [dbo].[AssignedProject]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignedProject_ProjectId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_AssignedProject_ProjectId] ON [dbo].[AssignedProject]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Attendance_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Attendance_EmployeeId] ON [dbo].[Attendance]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Certificate_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Certificate_EmployeeId] ON [dbo].[Certificate]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Compensation_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Compensation_EmployeeId] ON [dbo].[Compensation]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Course_TrainingTypeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Course_TrainingTypeId] ON [dbo].[Course]
(
	[TrainingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CvBank_ProfessionId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_CvBank_ProfessionId] ON [dbo].[CvBank]
(
	[ProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DataSheets_OfferId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_DataSheets_OfferId] ON [dbo].[DataSheets]
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_FacultyDepartmentId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_FacultyDepartmentId] ON [dbo].[Employee]
(
	[FacultyDepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_PositionId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_PositionId] ON [dbo].[Employee]
(
	[PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_PositionlevelId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_PositionlevelId] ON [dbo].[Employee]
(
	[PositionlevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_ProfessionId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_ProfessionId] ON [dbo].[Employee]
(
	[ProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeDocument_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeDocument_EmployeeId] ON [dbo].[EmployeeDocument]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Evaluation_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Evaluation_EmployeeId] ON [dbo].[Evaluation]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Evaluation_EvaluationProfessionId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Evaluation_EvaluationProfessionId] ON [dbo].[Evaluation]
(
	[EvaluationProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EvaluationProfession_EvaluationTypeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_EvaluationProfession_EvaluationTypeId] ON [dbo].[EvaluationProfession]
(
	[EvaluationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EvaluationProfession_ProfessionId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_EvaluationProfession_ProfessionId] ON [dbo].[EvaluationProfession]
(
	[ProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Excuse_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Excuse_EmployeeId] ON [dbo].[Excuse]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Faculty_UniversityId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Faculty_UniversityId] ON [dbo].[Faculty]
(
	[UniversityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FacultyDepartment_FacultyId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FacultyDepartment_FacultyId] ON [dbo].[FacultyDepartment]
(
	[FacultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveFile_LeaveRequestId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveFile_LeaveRequestId] ON [dbo].[LeaveFile]
(
	[LeaveRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveRequest_AlternativeEmpId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveRequest_AlternativeEmpId] ON [dbo].[LeaveRequest]
(
	[AlternativeEmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveRequest_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveRequest_EmployeeId] ON [dbo].[LeaveRequest]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveRequest_LeaveTypeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveRequest_LeaveTypeId] ON [dbo].[LeaveRequest]
(
	[LeaveTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MissionRequest_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_MissionRequest_EmployeeId] ON [dbo].[MissionRequest]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NeedsRequest_CategoryId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_NeedsRequest_CategoryId] ON [dbo].[NeedsRequest]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NeedsRequest_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_NeedsRequest_EmployeeId] ON [dbo].[NeedsRequest]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NeedsRequest_SubCategoryId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_NeedsRequest_SubCategoryId] ON [dbo].[NeedsRequest]
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferDescriptions_OffersId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDescriptions_OffersId] ON [dbo].[OfferDescriptions]
(
	[OffersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OfferDescriptions_UserId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDescriptions_UserId] ON [dbo].[OfferDescriptions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferDocuments_OfferId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDocuments_OfferId] ON [dbo].[OfferDocuments]
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_OfferStatusId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_OfferStatusId] ON [dbo].[Offers]
(
	[OfferStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_ProjectCostsId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_ProjectCostsId] ON [dbo].[Offers]
(
	[ProjectCostsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_ProjectsId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_ProjectsId] ON [dbo].[Offers]
(
	[ProjectsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Profession_ManagerId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Profession_ManagerId] ON [dbo].[Profession]
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDescriptions_ProjectId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDescriptions_ProjectId] ON [dbo].[ProjectDescriptions]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDescriptions_ProjectUpdateId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDescriptions_ProjectUpdateId] ON [dbo].[ProjectDescriptions]
(
	[ProjectUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProjectDescriptions_UserId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDescriptions_UserId] ON [dbo].[ProjectDescriptions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDocuments_DocumentsCategoryId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDocuments_DocumentsCategoryId] ON [dbo].[ProjectDocuments]
(
	[DocumentsCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDocuments_ProjectId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDocuments_ProjectId] ON [dbo].[ProjectDocuments]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDocuments_ProjectUpdateId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDocuments_ProjectUpdateId] ON [dbo].[ProjectDocuments]
(
	[ProjectUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_ContractorsId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_ContractorsId] ON [dbo].[Projects]
(
	[ContractorsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_EndUsersId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_EndUsersId] ON [dbo].[Projects]
(
	[EndUsersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_GovernoratesId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_GovernoratesId] ON [dbo].[Projects]
(
	[GovernoratesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_ProjectComponentsId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_ProjectComponentsId] ON [dbo].[Projects]
(
	[ProjectComponentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_ProjectStatusId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_ProjectStatusId] ON [dbo].[Projects]
(
	[ProjectStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_projectUpdates_ProjectId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_projectUpdates_ProjectId] ON [dbo].[projectUpdates]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubCategory_CategoryId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_SubCategory_CategoryId] ON [dbo].[SubCategory]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Training_EmployeeId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Training_EmployeeId] ON [dbo].[Training]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Training_InstructorId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Training_InstructorId] ON [dbo].[Training]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Training_TrainingProfessionId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Training_TrainingProfessionId] ON [dbo].[Training]
(
	[TrainingProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingProfession_CourseId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingProfession_CourseId] ON [dbo].[TrainingProfession]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingProfession_ProfessionId]    Script Date: 5/10/2021 10:31:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingProfession_ProfessionId] ON [dbo].[TrainingProfession]
(
	[ProfessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AssignedProject] ADD  DEFAULT ((0)) FOR [EmployeeId]
GO
ALTER TABLE [dbo].[OfferDocuments] ADD  DEFAULT ((0)) FOR [OfferId]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT ((0)) FOR [GovernoratesId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AssignedProject]  WITH CHECK ADD  CONSTRAINT [FK_AssignedProject_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AssignedProject] CHECK CONSTRAINT [FK_AssignedProject_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[AssignedProject]  WITH CHECK ADD  CONSTRAINT [FK_AssignedProject_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AssignedProject] CHECK CONSTRAINT [FK_AssignedProject_Projects_ProjectId]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[Certificate]  WITH CHECK ADD  CONSTRAINT [FK_Certificate_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Certificate] CHECK CONSTRAINT [FK_Certificate_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[Compensation]  WITH CHECK ADD  CONSTRAINT [FK_Compensation_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Compensation] CHECK CONSTRAINT [FK_Compensation_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_TrainingType_TrainingTypeId] FOREIGN KEY([TrainingTypeId])
REFERENCES [dbo].[TrainingType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_TrainingType_TrainingTypeId]
GO
ALTER TABLE [dbo].[CvBank]  WITH CHECK ADD  CONSTRAINT [FK_CvBank_Profession_ProfessionId] FOREIGN KEY([ProfessionId])
REFERENCES [dbo].[Profession] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CvBank] CHECK CONSTRAINT [FK_CvBank_Profession_ProfessionId]
GO
ALTER TABLE [dbo].[DataSheets]  WITH CHECK ADD  CONSTRAINT [FK_DataSheets_Offers_OfferId] FOREIGN KEY([OfferId])
REFERENCES [dbo].[Offers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DataSheets] CHECK CONSTRAINT [FK_DataSheets_Offers_OfferId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_FacultyDepartment_FacultyDepartmentId] FOREIGN KEY([FacultyDepartmentId])
REFERENCES [dbo].[FacultyDepartment] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_FacultyDepartment_FacultyDepartmentId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position_PositionId] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position_PositionId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_PositionLevel_PositionlevelId] FOREIGN KEY([PositionlevelId])
REFERENCES [dbo].[PositionLevel] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_PositionLevel_PositionlevelId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Profession_ProfessionId] FOREIGN KEY([ProfessionId])
REFERENCES [dbo].[Profession] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Profession_ProfessionId]
GO
ALTER TABLE [dbo].[EmployeeDocument]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDocument_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeDocument] CHECK CONSTRAINT [FK_EmployeeDocument_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_EvaluationProfession_EvaluationProfessionId] FOREIGN KEY([EvaluationProfessionId])
REFERENCES [dbo].[EvaluationProfession] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_EvaluationProfession_EvaluationProfessionId]
GO
ALTER TABLE [dbo].[EvaluationProfession]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationProfession_EvaluationType_EvaluationTypeId] FOREIGN KEY([EvaluationTypeId])
REFERENCES [dbo].[EvaluationType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EvaluationProfession] CHECK CONSTRAINT [FK_EvaluationProfession_EvaluationType_EvaluationTypeId]
GO
ALTER TABLE [dbo].[EvaluationProfession]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationProfession_Profession_ProfessionId] FOREIGN KEY([ProfessionId])
REFERENCES [dbo].[Profession] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EvaluationProfession] CHECK CONSTRAINT [FK_EvaluationProfession_Profession_ProfessionId]
GO
ALTER TABLE [dbo].[Excuse]  WITH CHECK ADD  CONSTRAINT [FK_Excuse_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Excuse] CHECK CONSTRAINT [FK_Excuse_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[Faculty]  WITH CHECK ADD  CONSTRAINT [FK_Faculty_University_UniversityId] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Faculty] CHECK CONSTRAINT [FK_Faculty_University_UniversityId]
GO
ALTER TABLE [dbo].[FacultyDepartment]  WITH CHECK ADD  CONSTRAINT [FK_FacultyDepartment_Faculty_FacultyId] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FacultyDepartment] CHECK CONSTRAINT [FK_FacultyDepartment_Faculty_FacultyId]
GO
ALTER TABLE [dbo].[LeaveFile]  WITH CHECK ADD  CONSTRAINT [FK_LeaveFile_LeaveRequest_LeaveRequestId] FOREIGN KEY([LeaveRequestId])
REFERENCES [dbo].[LeaveRequest] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaveFile] CHECK CONSTRAINT [FK_LeaveFile_LeaveRequest_LeaveRequestId]
GO
ALTER TABLE [dbo].[LeaveRequest]  WITH CHECK ADD  CONSTRAINT [FK_LeaveRequest_Employee_AlternativeEmpId] FOREIGN KEY([AlternativeEmpId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaveRequest] CHECK CONSTRAINT [FK_LeaveRequest_Employee_AlternativeEmpId]
GO
ALTER TABLE [dbo].[LeaveRequest]  WITH CHECK ADD  CONSTRAINT [FK_LeaveRequest_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[LeaveRequest] CHECK CONSTRAINT [FK_LeaveRequest_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[LeaveRequest]  WITH CHECK ADD  CONSTRAINT [FK_LeaveRequest_LeavesType_LeaveTypeId] FOREIGN KEY([LeaveTypeId])
REFERENCES [dbo].[LeavesType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaveRequest] CHECK CONSTRAINT [FK_LeaveRequest_LeavesType_LeaveTypeId]
GO
ALTER TABLE [dbo].[MissionRequest]  WITH CHECK ADD  CONSTRAINT [FK_MissionRequest_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MissionRequest] CHECK CONSTRAINT [FK_MissionRequest_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[NeedsRequest]  WITH CHECK ADD  CONSTRAINT [FK_NeedsRequest_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NeedsRequest] CHECK CONSTRAINT [FK_NeedsRequest_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[NeedsRequest]  WITH CHECK ADD  CONSTRAINT [FK_NeedsRequest_NeedsCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[NeedsCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NeedsRequest] CHECK CONSTRAINT [FK_NeedsRequest_NeedsCategory_CategoryId]
GO
ALTER TABLE [dbo].[NeedsRequest]  WITH CHECK ADD  CONSTRAINT [FK_NeedsRequest_SubCategory_SubCategoryId] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategory] ([Id])
GO
ALTER TABLE [dbo].[NeedsRequest] CHECK CONSTRAINT [FK_NeedsRequest_SubCategory_SubCategoryId]
GO
ALTER TABLE [dbo].[OfferDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_OfferDescriptions_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OfferDescriptions] CHECK CONSTRAINT [FK_OfferDescriptions_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OfferDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_OfferDescriptions_Offers_OffersId] FOREIGN KEY([OffersId])
REFERENCES [dbo].[Offers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OfferDescriptions] CHECK CONSTRAINT [FK_OfferDescriptions_Offers_OffersId]
GO
ALTER TABLE [dbo].[OfferDocuments]  WITH CHECK ADD  CONSTRAINT [FK_OfferDocuments_Offers_OfferId] FOREIGN KEY([OfferId])
REFERENCES [dbo].[Offers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OfferDocuments] CHECK CONSTRAINT [FK_OfferDocuments_Offers_OfferId]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_OfferStatus_OfferStatusId] FOREIGN KEY([OfferStatusId])
REFERENCES [dbo].[OfferStatus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_OfferStatus_OfferStatusId]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_ProjectCosts_ProjectCostsId] FOREIGN KEY([ProjectCostsId])
REFERENCES [dbo].[ProjectCosts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_ProjectCosts_ProjectCostsId]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_Projects_ProjectsId] FOREIGN KEY([ProjectsId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_Projects_ProjectsId]
GO
ALTER TABLE [dbo].[Profession]  WITH CHECK ADD  CONSTRAINT [FK_Profession_Employee_ManagerId] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Profession] CHECK CONSTRAINT [FK_Profession_Employee_ManagerId]
GO
ALTER TABLE [dbo].[ProjectDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDescriptions_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProjectDescriptions] CHECK CONSTRAINT [FK_ProjectDescriptions_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProjectDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDescriptions_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectDescriptions] CHECK CONSTRAINT [FK_ProjectDescriptions_Projects_ProjectId]
GO
ALTER TABLE [dbo].[ProjectDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDescriptions_projectUpdates_ProjectUpdateId] FOREIGN KEY([ProjectUpdateId])
REFERENCES [dbo].[projectUpdates] ([Id])
GO
ALTER TABLE [dbo].[ProjectDescriptions] CHECK CONSTRAINT [FK_ProjectDescriptions_projectUpdates_ProjectUpdateId]
GO
ALTER TABLE [dbo].[ProjectDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDocuments_DocumentsCategories_DocumentsCategoryId] FOREIGN KEY([DocumentsCategoryId])
REFERENCES [dbo].[DocumentsCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectDocuments] CHECK CONSTRAINT [FK_ProjectDocuments_DocumentsCategories_DocumentsCategoryId]
GO
ALTER TABLE [dbo].[ProjectDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDocuments_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectDocuments] CHECK CONSTRAINT [FK_ProjectDocuments_Projects_ProjectId]
GO
ALTER TABLE [dbo].[ProjectDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDocuments_projectUpdates_ProjectUpdateId] FOREIGN KEY([ProjectUpdateId])
REFERENCES [dbo].[projectUpdates] ([Id])
GO
ALTER TABLE [dbo].[ProjectDocuments] CHECK CONSTRAINT [FK_ProjectDocuments_projectUpdates_ProjectUpdateId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Contractors_ContractorsId] FOREIGN KEY([ContractorsId])
REFERENCES [dbo].[Contractors] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Contractors_ContractorsId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_EndUsers_EndUsersId] FOREIGN KEY([EndUsersId])
REFERENCES [dbo].[EndUsers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_EndUsers_EndUsersId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Governorates_GovernoratesId] FOREIGN KEY([GovernoratesId])
REFERENCES [dbo].[Governorates] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Governorates_GovernoratesId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_ProjectComponents_ProjectComponentsId] FOREIGN KEY([ProjectComponentsId])
REFERENCES [dbo].[ProjectComponents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_ProjectComponents_ProjectComponentsId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_ProjectStatus_ProjectStatusId] FOREIGN KEY([ProjectStatusId])
REFERENCES [dbo].[ProjectStatus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_ProjectStatus_ProjectStatusId]
GO
ALTER TABLE [dbo].[projectUpdates]  WITH CHECK ADD  CONSTRAINT [FK_projectUpdates_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[projectUpdates] CHECK CONSTRAINT [FK_projectUpdates_Projects_ProjectId]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_NeedsCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[NeedsCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_NeedsCategory_CategoryId]
GO
ALTER TABLE [dbo].[Training]  WITH CHECK ADD  CONSTRAINT [FK_Training_Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Training] CHECK CONSTRAINT [FK_Training_Employee_EmployeeId]
GO
ALTER TABLE [dbo].[Training]  WITH CHECK ADD  CONSTRAINT [FK_Training_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Training] CHECK CONSTRAINT [FK_Training_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Training]  WITH CHECK ADD  CONSTRAINT [FK_Training_TrainingProfession_TrainingProfessionId] FOREIGN KEY([TrainingProfessionId])
REFERENCES [dbo].[TrainingProfession] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Training] CHECK CONSTRAINT [FK_Training_TrainingProfession_TrainingProfessionId]
GO
ALTER TABLE [dbo].[TrainingProfession]  WITH CHECK ADD  CONSTRAINT [FK_TrainingProfession_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrainingProfession] CHECK CONSTRAINT [FK_TrainingProfession_Course_CourseId]
GO
ALTER TABLE [dbo].[TrainingProfession]  WITH CHECK ADD  CONSTRAINT [FK_TrainingProfession_Profession_ProfessionId] FOREIGN KEY([ProfessionId])
REFERENCES [dbo].[Profession] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrainingProfession] CHECK CONSTRAINT [FK_TrainingProfession_Profession_ProfessionId]
GO
USE [master]
GO
ALTER DATABASE [SMTDB] SET  READ_WRITE 
GO
